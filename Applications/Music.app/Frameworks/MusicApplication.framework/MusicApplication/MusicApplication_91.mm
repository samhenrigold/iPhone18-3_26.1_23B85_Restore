BOOL InlineProfileEditingView.Context.canValidate.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  v0 = String.trim()();

  v1 = (v0._object >> 56) & 0xF;
  if ((v0._object & 0x2000000000000000) == 0)
  {
    v1 = v0._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  return v1 != 0;
}

uint64_t InlineProfileEditingView.Context.userName.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v2);

  countAndFlagsBits = String.trim()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t InlineProfileEditingView.Context.hasRemovedImage.getter()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  return *(v0 + v1);
}

void InlineProfileEditingView.Context.hasRemovedImage.setter(char a1)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_8478F0@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(a1);

  return result;
}

uint64_t InlineProfileEditingView.Context.userImage.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v2 = (&v7 - v1);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  if (*(v0 + v3))
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v2);

  v4 = sub_AB8A60();
  v5 = (*(*(v4 - 8) + 48))(v2, 1, v4);
  sub_12E1C(v2, &unk_E1BA30, &unk_B2A510);
  if (v5 != 1)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v7);

  return v7;
}

uint64_t InlineProfileEditingView.Context.deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA50, &qword_B30AD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA48, &qword_B30AC8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40, &qword_B30AC0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t InlineProfileEditingView.Context.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__artwork;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA50, &qword_B30AD0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__name;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA48, &qword_B30AC8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context__image;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA40, &qword_B30AC0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_847D3C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  result = sub_AB54A0();
  *a1 = result;
  return result;
}

uint64_t property wrapper backing initializer of InlineProfileEditingView.context(uint64_t a1)
{
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_84C3A8();

  return sub_AB5B50();
}

uint64_t InlineProfileEditingView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  sub_AB35C0();
  __chkstk_darwin();
  v77 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_AB9250();
  v75 = *(v4 - 8);
  v76 = v4;
  __chkstk_darwin();
  v74 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v73 = v66 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA88, &qword_B30BC8) - 8;
  __chkstk_darwin();
  v9 = v66 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA90, &qword_B30BD0) - 8;
  __chkstk_darwin();
  v12 = v66 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BA98, &qword_B30BD8) - 8;
  __chkstk_darwin();
  v15 = v66 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BAA0, &qword_B30BE0);
  v66[2] = v16;
  __chkstk_darwin();
  v79 = v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BAA8, &qword_B30BE8);
  v71 = *(v18 - 8);
  v72 = v18;
  __chkstk_darwin();
  v70 = v66 - v19;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BAB0, &qword_B30BF0);
  __chkstk_darwin();
  v81 = v66 - v20;
  *v9 = sub_AB62E0();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BAB8, &qword_B30BF8);
  sub_848760(v2, &v9[*(v21 + 44)]);
  v22 = [objc_opt_self() quaternarySystemFillColor];
  v23 = sub_AB7510();
  v24 = sub_AB6AA0();
  v25 = &v9[*(v7 + 44)];
  *v25 = v23;
  v25[8] = v24;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v9, v12, &qword_E1BA88, &qword_B30BC8);
  v26 = &v12[*(v10 + 44)];
  v27 = v91;
  *(v26 + 4) = v90;
  *(v26 + 5) = v27;
  *(v26 + 6) = v92;
  v28 = v87;
  *v26 = v86;
  *(v26 + 1) = v28;
  v29 = v89;
  *(v26 + 2) = v88;
  *(v26 + 3) = v29;
  sub_AB7A30();
  sub_AB5E90();
  sub_36B0C(v12, v15, &qword_E1BA90, &qword_B30BD0);
  v30 = &v15[*(v13 + 44)];
  v31 = v98;
  *(v30 + 4) = v97;
  *(v30 + 5) = v31;
  *(v30 + 6) = v99;
  v32 = v94;
  *v30 = v93;
  *(v30 + 1) = v32;
  v33 = v96;
  *(v30 + 2) = v95;
  *(v30 + 3) = v33;
  v34 = *(v16 + 36);
  v35 = v79;
  v36 = &v79[v34];
  v37 = *(sub_AB5E60() + 20);
  v38 = enum case for RoundedCornerStyle.continuous(_:);
  v39 = sub_AB63A0();
  (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
  __asm { FMOV            V0.2D, #16.0 }

  *v36 = _Q0;
  *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BAC0, &qword_B30990) + 36)] = 256;
  sub_36B0C(v15, v35, &qword_E1BA98, &qword_B30BD8);
  v84 = 0;
  v85 = 0xE000000000000000;
  v45 = v67;
  v83 = *(v67 + 16);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7660();
  v66[1] = v66;
  v82 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BAD0, &qword_B30C00);
  sub_84C408();
  v46 = sub_7ABE60();
  sub_36A00(&qword_E1BB08, &qword_E1BAD0, &qword_B30C00, &protocol conformance descriptor for TupleView<A>);
  v69 = v46;
  v47 = v70;
  v48 = v79;
  sub_AB7190();
  v49 = v73;
  v50 = v45;

  v51 = v74;

  v52 = v75;
  sub_12E1C(v48, &qword_E1BAA0, &qword_B30BE0);
  v53 = sub_AB7A30();
  v55 = v54;
  v56 = v81;
  v57 = &v81[*(v80 + 36)];
  sub_84B044(v50, v57);
  v58 = (v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BB10, &qword_B30C18) + 36));
  *v58 = v53;
  v58[1] = v55;
  v59 = v76;
  (*(v71 + 32))(v56, v47, v72);
  sub_AB91E0();
  (*(v52 + 16))(v51, v49, v59);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v60 = qword_E73660;
  sub_AB3550();
  v61 = sub_AB9320();
  v63 = v62;
  (*(v52 + 8))(v49, v59);
  v84 = v61;
  v85 = v63;
  v83 = *(v50 + 48);
  sub_AB7660();
  v79 = v66;
  __chkstk_darwin();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BB18, &qword_B30C20);
  sub_84C68C();
  sub_36A00(&qword_E1BB30, &qword_E1BB18, &qword_B30C20, &protocol conformance descriptor for TupleView<A>);
  v64 = v81;
  sub_AB7280();

  return sub_12E1C(v64, &qword_E1BAB0, &qword_B30BF0);
}

uint64_t sub_848760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v235 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD38, &qword_B30DE8);
  v231 = *(v3 - 8);
  v232 = v3;
  __chkstk_darwin();
  v212 = v188 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD40, &unk_B30DF0);
  __chkstk_darwin();
  v234 = v188 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v233 = v188 - v6;
  sub_AB35C0();
  __chkstk_darwin();
  v227 = v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_AB9250();
  v226 = *(v228 - 8);
  __chkstk_darwin();
  v239 = v188 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v240 = v188 - v9;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB00, &qword_B2F7B0);
  __chkstk_darwin();
  v208 = v188 - v10;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD50, &qword_B30E00);
  __chkstk_darwin();
  v224 = (v188 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD58, &qword_B30E08);
  __chkstk_darwin();
  v230 = v188 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v241 = v188 - v13;
  v14 = sub_AB7540();
  v210 = *(v14 - 8);
  v211 = v14;
  __chkstk_darwin();
  v209 = v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD60, &qword_B30E10);
  __chkstk_darwin();
  v220 = (v188 - v16);
  v236 = sub_AB89C0();
  v217 = *(v236 - 8);
  __chkstk_darwin();
  v204 = v188 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_AB4820();
  v206 = *(v18 - 8);
  v207 = v18;
  __chkstk_darwin();
  v213 = v188 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v203 = v188 - v20;
  __chkstk_darwin();
  v205 = v188 - v21;
  __chkstk_darwin();
  v215 = v188 - v22;
  v216 = sub_AB4780();
  v214 = *(v216 - 8);
  __chkstk_darwin();
  v238 = v188 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AB60, &qword_B2D450);
  __chkstk_darwin();
  v199 = v188 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v194 = v188 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v197 = v188 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v196 = v188 - v27;
  __chkstk_darwin();
  v193 = (v188 - v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  __chkstk_darwin();
  v198 = v188 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v195 = v188 - v30;
  __chkstk_darwin();
  v237 = v188 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD78, &unk_B30E18);
  v201 = *(v32 - 8);
  v202 = v32;
  __chkstk_darwin();
  v200 = v188 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD80, &qword_B30920);
  __chkstk_darwin();
  v36 = v188 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B8A8, &qword_B30878);
  __chkstk_darwin();
  v39 = v188 - v38;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD90, &qword_B30880);
  __chkstk_darwin();
  v41 = v188 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = v188 - v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD98, &qword_B30E28);
  __chkstk_darwin();
  v223 = v188 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v221 = v188 - v45;
  Int.seconds.getter(54);
  Int.seconds.getter(10);
  v229 = a1;
  v46 = *(a1 + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v245);

  v242 = v46;
  if (v245._countAndFlagsBits)
  {
    v238 = v245._countAndFlagsBits;
    sub_AB7520();
    v48 = v209;
    v47 = v210;
    v49 = v211;
    (*(v210 + 13))(v209, enum case for Image.ResizingMode.stretch(_:), v211);
    v237 = sub_AB7590();

    (*(v47 + 8))(v48, v49);
    sub_AB7A30();
    sub_AB5970();
    v50 = v253;
    v51 = v254;
    v52 = v255;
    v53 = v256;
    v55 = v257;
    v54 = v258;
    LOBYTE(v245._countAndFlagsBits) = v254;
    LOBYTE(v243[0]) = v256;
    LOBYTE(v47) = sub_AB6AA0();
    sub_AB5690();
    v244 = 0;
    v245._countAndFlagsBits = v237;
    v245._object = v50;
    LOBYTE(v246._countAndFlagsBits) = v51;
    v246._object = v52;
    LOBYTE(v247._countAndFlagsBits) = v53;
    v247._object = v55;
    v248._countAndFlagsBits = v54;
    LOWORD(v248._object) = 256;
    *(&v248._object + 2) = v251;
    HIWORD(v248._object) = WORD2(v251);
    LOBYTE(v249._countAndFlagsBits) = v47;
    HIDWORD(v249._countAndFlagsBits) = *(v243 + 3);
    *(&v249._countAndFlagsBits + 1) = v243[0];
    v249._object = v56;
    *&v250[0] = v57;
    *(&v250[0] + 1) = v58;
    *&v250[1] = v59;
    BYTE8(v250[1]) = 0;
    v60 = v248;
    v61 = v250[0];
    v62 = v220;
    v220[4] = v249;
    v62[5] = v61;
    *(v62 + 89) = *(v250 + 9);
    v63 = v246;
    v64 = v247;
    *v62 = v245;
    v62[1] = v63;
    v62[2] = v64;
    v62[3] = v60;
    swift_storeEnumTagMultiPayload();
    sub_15F84(&v245, v243, &qword_E1BDA8, &qword_B30E30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BDA8, &qword_B30E30);
    sub_84CC04();
    sub_84CDF0();
    v65 = v221;
    sub_AB6610();

    sub_12E1C(&v245, &qword_E1BDA8, &qword_B30E30);
    v66 = v239;
    goto LABEL_18;
  }

  v190 = v37;
  v191 = v41;
  v192 = v34;
  v209 = v36;
  v210 = v39;
  v211 = v43;
  swift_getKeyPath();
  swift_getKeyPath();
  v67 = v193;
  sub_AB5510(v193);

  v68 = v194;
  v188[0] = *(v217 + 56);
  v188[1] = v217 + 56;
  (v188[0])(v194, 1, 1, v236);
  v69 = sub_AB8A60();
  v70 = *(v69 - 8);
  v71 = (*(v70 + 48))(v67, 1, v69);
  v189 = v69;
  if (v71 == 1)
  {
    sub_12E1C(v68, &qword_E1AB60, &qword_B2D450);
    sub_12E1C(v67, &unk_E1BA30, &unk_B2A510);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    v73 = v237;
    (*(*(v72 - 8) + 56))(v237, 1, 1, v72);
  }

  else
  {
    v73 = v237;
    (*(v70 + 32))(v237, v67, v69);
    v72 = type metadata accessor for ArtworkImage.ViewModel(0);
    sub_36B0C(v68, v73 + *(v72 + 20), &qword_E1AB60, &qword_B2D450);
    (*(*(v72 - 8) + 56))(v73, 0, 1, v72);
  }

  v74 = v238;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v245);

  v75 = String.trim()();

  (*(v214 + 104))(v74, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v216);
  *(swift_allocObject() + 16) = v75;
  v76 = v195;
  sub_15F84(v73, v195, &qword_E1BD70, &qword_B285C0);
  type metadata accessor for ArtworkImage.ViewModel(0);
  v77 = *(*(v72 - 8) + 48);
  if (v77(v76, 1, v72) == 1)
  {
    sub_12E1C(v76, &qword_E1BD70, &qword_B285C0);
    v78 = 1;
    v79 = v196;
    v80 = v197;
    v81 = v189;
  }

  else
  {
    v79 = v196;
    v81 = v189;
    (*(v70 + 16))(v196, v76, v189);
    sub_84D07C(v76, type metadata accessor for ArtworkImage.ViewModel);
    v78 = 0;
    v80 = v197;
  }

  (*(v70 + 56))(v79, v78, 1, v81);
  sub_15F84(v79, v80, &unk_E1BA30, &unk_B2A510);
  sub_AB4810();
  sub_12E1C(v79, &unk_E1BA30, &unk_B2A510);
  sub_AB47B0();
  v82 = v198;
  sub_15F84(v237, v198, &qword_E1BD70, &qword_B285C0);
  v83 = v77(v82, 1, v72);
  v84 = v207;
  if (v83 == 1)
  {
    sub_12E1C(v82, &qword_E1BD70, &qword_B285C0);
    v85 = v199;
    (v188[0])(v199, 1, 1, v236);
    v66 = v239;
    v86 = v206;
    v87 = v217;
LABEL_12:
    v90 = v204;
    if (qword_E16A58 != -1)
    {
      swift_once();
    }

    v88 = v236;
    v91 = __swift_project_value_buffer(v236, static Artwork.CropStyle.fallback);
    (*(v87 + 16))(v90, v91, v88);
    v92 = (*(v87 + 48))(v85, 1, v88) == 1;
    v93 = v85;
    v94 = v90;
    v95 = v87;
    if (!v92)
    {
      sub_12E1C(v93, &qword_E1AB60, &qword_B2D450);
    }

    goto LABEL_17;
  }

  v85 = v199;
  sub_15F84(v82 + *(v72 + 20), v199, &qword_E1AB60, &qword_B2D450);
  sub_84D07C(v82, type metadata accessor for ArtworkImage.ViewModel);
  v87 = v217;
  v88 = v236;
  v89 = (*(v217 + 48))(v85, 1, v236);
  v66 = v239;
  v86 = v206;
  if (v89 == 1)
  {
    goto LABEL_12;
  }

  v96 = v85;
  v94 = v204;
  (*(v87 + 32))(v204, v96, v88);
  v95 = v87;
LABEL_17:
  v97 = v203;
  v98 = v213;
  sub_AB4790();
  (*(v95 + 8))(v94, v88);
  v99 = *(v86 + 8);
  v99(v98, v84);
  v100 = v205;
  sub_AB47C0();
  v99(v97, v84);
  sub_7FDAA4();
  v101 = v200;
  sub_AB47A0();

  v99(v100, v84);
  v99(v215, v84);
  (*(v214 + 8))(v238, v216);
  sub_12E1C(v237, &qword_E1BD70, &qword_B285C0);
  sub_AB7A30();
  sub_AB5970();
  v102 = v209;
  (*(v201 + 32))(v209, v101, v202);
  v103 = (v102 + *(v192 + 36));
  v104 = v243[1];
  *v103 = v243[0];
  v103[1] = v104;
  v103[2] = v243[2];
  v105 = v210;
  sub_36B0C(v102, v210, &unk_E1BD80, &qword_B30920);
  *(v105 + *(v190 + 36)) = 256;
  LOBYTE(v102) = sub_AB6AA0();
  sub_AB5690();
  v107 = v106;
  v109 = v108;
  v111 = v110;
  v113 = v112;
  v114 = v191;
  sub_36B0C(v105, v191, &qword_E1B8A8, &qword_B30878);
  v115 = v114 + *(v218 + 36);
  *v115 = v102;
  *(v115 + 8) = v107;
  *(v115 + 16) = v109;
  *(v115 + 24) = v111;
  *(v115 + 32) = v113;
  *(v115 + 40) = 0;
  v116 = v211;
  sub_36B0C(v114, v211, &qword_E1BD90, &qword_B30880);
  sub_15F84(v116, v220, &qword_E1BD90, &qword_B30880);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BDA8, &qword_B30E30);
  sub_84CC04();
  sub_84CDF0();
  v65 = v221;
  sub_AB6610();
  sub_12E1C(v116, &qword_E1BD90, &qword_B30880);
LABEL_18:
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v245);

  v117 = String.trim()();

  v118 = (v117._object >> 56) & 0xF;
  if ((v117._object & 0x2000000000000000) == 0)
  {
    v118 = v117._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v119 = &unk_E73000;
  if (v118)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510(&v245);

    v120 = String.trim()();

    v245 = v120;
    sub_7ABE60();
    v121 = sub_AB6F20();
    v123 = v122;
    v125 = v124;
    v126 = sub_AB6E70();
    v128 = v127;
    v129 = v65;
    v131 = v130;
    v133 = v132;
    sub_36B74(v121, v123, v125 & 1);

    v134 = v224;
    *v224 = v126;
    v134[1] = v128;
    v66 = v239;
    v135 = v131 & 1;
    v65 = v129;
    *(v134 + 16) = v135;
    v134[3] = v133;
    v119 = &unk_E73000;
    swift_storeEnumTagMultiPayload();
    sub_832820();
    sub_AB6610();
    v136 = v228;
  }

  else
  {
    v137 = v240;
    sub_AB91E0();
    v138 = v226;
    v136 = v228;
    (*(v226 + 16))(v66, v137, v228);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v139 = qword_E73660;
    sub_AB3550();
    v140 = sub_AB9320();
    v142 = v141;
    (*(v138 + 8))(v240, v136);
    v251 = v140;
    v252 = v142;
    v143 = swift_allocObject();
    v144 = v229;
    v145 = *(v229 + 48);
    v143[3] = *(v229 + 32);
    v143[4] = v145;
    v143[5] = v144[4];
    v146 = v144[1];
    v143[1] = *v144;
    v143[2] = v146;
    sub_844244(v144, &v245);
    sub_7ABE60();
    v147 = v208;
    sub_AB76E0();
    v148 = sub_AB74E0();
    KeyPath = swift_getKeyPath();
    v150 = v224;
    v151 = (v147 + *(v225 + 36));
    *v151 = KeyPath;
    v151[1] = v148;
    sub_15F84(v147, v150, &qword_E1AB00, &qword_B2F7B0);
    swift_storeEnumTagMultiPayload();
    sub_832820();
    sub_AB6610();
    sub_12E1C(v147, &qword_E1AB00, &qword_B2F7B0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v245);

  v152 = String.trim()();

  v153 = (v152._object >> 56) & 0xF;
  if ((v152._object & 0x2000000000000000) == 0)
  {
    v153 = v152._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (v153)
  {
    v154 = v240;
    sub_AB91E0();
    v155 = v226;
    (*(v226 + 16))(v66, v154, v136);
    if (qword_E16870 != -1)
    {
      swift_once();
    }

    v156 = v119[204];
    sub_AB3550();
    v157 = sub_AB9320();
    v159 = v158;
    (*(v155 + 8))(v240, v136);
    v251 = v157;
    v252 = v159;
    v160 = swift_allocObject();
    v161 = v229;
    v162 = *(v229 + 48);
    v160[3] = *(v229 + 32);
    v160[4] = v162;
    v160[5] = v161[4];
    v163 = v161[1];
    v160[1] = *v161;
    v160[2] = v163;
    sub_844244(v161, &v245);
    sub_7ABE60();
    v164 = v212;
    sub_AB76E0();
    LOBYTE(v160) = sub_AB6AF0();
    sub_AB5690();
    v166 = v165;
    v168 = v167;
    v170 = v169;
    v172 = v171;
    v173 = v164 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BE20, &qword_B30E48) + 36);
    *v173 = v160;
    *(v173 + 8) = v166;
    *(v173 + 16) = v168;
    *(v173 + 24) = v170;
    *(v173 + 32) = v172;
    *(v173 + 40) = 0;
    v174 = swift_getKeyPath();
    v175 = v164 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BE28, &qword_B30E80) + 36);
    *v175 = v174;
    *(v175 + 8) = 1;
    *(v175 + 16) = 0;
    v177 = v232;
    v176 = v233;
    *(v164 + *(v232 + 36)) = 0x3FF0000000000000;
    sub_36B0C(v164, v176, &qword_E1BD38, &qword_B30DE8);
    v178 = 0;
  }

  else
  {
    v178 = 1;
    v177 = v232;
    v176 = v233;
  }

  (*(v231 + 56))(v176, v178, 1, v177);
  v179 = v223;
  v180 = v65;
  sub_15F84(v65, v223, &qword_E1BD98, &qword_B30E28);
  v181 = v241;
  v182 = v230;
  sub_15F84(v241, v230, &qword_E1BD58, &qword_B30E08);
  v183 = v234;
  sub_15F84(v176, v234, &unk_E1BD40, &unk_B30DF0);
  v184 = v235;
  sub_15F84(v179, v235, &qword_E1BD98, &qword_B30E28);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BE30, &qword_B30E88);
  sub_15F84(v182, v184 + v185[12], &qword_E1BD58, &qword_B30E08);
  v186 = v184 + v185[16];
  *v186 = 0;
  *(v186 + 8) = 1;
  sub_15F84(v183, v184 + v185[20], &unk_E1BD40, &unk_B30DF0);
  sub_12E1C(v176, &unk_E1BD40, &unk_B30DF0);
  sub_12E1C(v181, &qword_E1BD58, &qword_B30E08);
  sub_12E1C(v180, &qword_E1BD98, &qword_B30E28);
  sub_12E1C(v183, &unk_E1BD40, &unk_B30DF0);
  sub_12E1C(v182, &qword_E1BD58, &qword_B30E08);
  return sub_12E1C(v179, &qword_E1BD98, &qword_B30E28);
}

uint64_t sub_84A3B4@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD28, &qword_B30DD8);
  __chkstk_darwin();
  v76 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v92 = &v72 - v4;
  sub_AB35C0();
  __chkstk_darwin();
  v5 = sub_AB9250();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v72 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB10, &qword_B2F7B8);
  v81 = *(v82 - 8);
  __chkstk_darwin();
  v74 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v72 - v12;
  __chkstk_darwin();
  v85 = &v72 - v13;
  __chkstk_darwin();
  v80 = &v72 - v14;
  __chkstk_darwin();
  v88 = &v72 - v15;
  __chkstk_darwin();
  v91 = &v72 - v16;
  sub_AB91E0();
  v89 = *(v6 + 16);
  v90 = v5;
  v87 = v6 + 16;
  v89(v8, v10, v5);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v17 = qword_E73660;
  v18 = qword_E73660;
  sub_AB3550();
  v83 = v18;
  v19 = sub_AB9320();
  v84 = v8;
  v21 = v20;
  v22 = *(v6 + 8);
  v23 = v90;
  v22(v10, v90);
  v94 = v19;
  v95 = v21;
  v24 = swift_allocObject();
  v25 = v6 + 8;
  v26 = a1[3];
  v24[3] = a1[2];
  v24[4] = v26;
  v24[5] = a1[4];
  v27 = a1[1];
  v24[1] = *a1;
  v24[2] = v27;
  sub_844244(a1, v93);
  v28 = sub_7ABE60();
  sub_AB76E0();
  sub_AB91E0();
  v89(v84, v10, v23);
  sub_AB3550();
  v79 = v17;
  v29 = v22;
  v30 = sub_AB9320();
  v32 = v31;
  v78 = v25;
  v22(v10, v23);
  v94 = v30;
  v95 = v32;
  v33 = swift_allocObject();
  v34 = a1[3];
  v33[3] = a1[2];
  v33[4] = v34;
  v33[5] = a1[4];
  v35 = a1[1];
  v33[1] = *a1;
  v33[2] = v35;
  sub_844244(a1, v93);
  v36 = v88;
  v77 = v28;
  v37 = v84;
  sub_AB76E0();
  v38 = 1;
  if ([objc_opt_self() isSourceTypeAvailable:1])
  {
    v39 = v83;
    v73 = v29;
    v40 = v89;
    v41 = v90;
    v42 = [objc_opt_self() currentTraitCollection];
    v43 = [v42 userInterfaceIdiom];

    if (v43 == &dword_4 + 2)
    {
      v38 = 1;
      v36 = v88;
      v29 = v73;
    }

    else
    {
      sub_AB91E0();
      v40(v37, v10, v41);
      v44 = v39;
      sub_AB3550();
      v45 = sub_AB9320();
      v47 = v46;
      v29 = v73;
      v73(v10, v41);
      v94 = v45;
      v95 = v47;
      v48 = swift_allocObject();
      v49 = a1[3];
      v48[3] = a1[2];
      v48[4] = v49;
      v48[5] = a1[4];
      v50 = a1[1];
      v48[1] = *a1;
      v48[2] = v50;
      sub_844244(a1, v93);
      v51 = v80;
      sub_AB76E0();
      (*(v81 + 32))(v92, v51, v82);
      v38 = 0;
      v36 = v88;
    }
  }

  v52 = v81;
  v53 = v82;
  (*(v81 + 56))(v92, v38, 1, v82);
  sub_AB91E0();
  v54 = v90;
  v89(v37, v10, v90);
  v55 = v83;
  sub_AB3550();
  v56 = sub_AB9320();
  v58 = v57;
  v29(v10, v54);
  v94 = v56;
  v95 = v58;
  v59 = swift_allocObject();
  v60 = a1[3];
  v59[3] = a1[2];
  v59[4] = v60;
  v59[5] = a1[4];
  v61 = a1[1];
  v59[1] = *a1;
  v59[2] = v61;
  sub_844244(a1, v93);
  v62 = v80;
  sub_AB76E0();
  v63 = *(v52 + 16);
  v64 = v85;
  v63(v85, v91, v53);
  v65 = v86;
  v63(v86, v36, v53);
  v66 = v76;
  sub_15F84(v92, v76, &qword_E1BD28, &qword_B30DD8);
  v67 = v74;
  v63(v74, v62, v53);
  v68 = v75;
  v63(v75, v64, v53);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD30, &qword_B30DE0);
  v63((v68 + v69[12]), v65, v53);
  sub_15F84(v66, v68 + v69[16], &qword_E1BD28, &qword_B30DD8);
  v63((v68 + v69[20]), v67, v53);
  v70 = *(v52 + 8);
  v70(v62, v53);
  sub_12E1C(v92, &qword_E1BD28, &qword_B30DD8);
  v70(v88, v53);
  v70(v91, v53);
  v70(v67, v53);
  sub_12E1C(v66, &qword_E1BD28, &qword_B30DD8);
  v70(v86, v53);
  return (v70)(v85, v53);
}

uint64_t sub_84AE30(uint64_t a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD10, &qword_B30D90);
  sub_AB7650();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  return sub_AB7650();
}

void sub_84AEBC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v9 - v4;
  v6 = *(a1 + 8);
  sub_8469DC(0);
  v7 = sub_AB8A60();
  (*(*(v7 - 8) + 56))(v5, 1, 1, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(v5, v3, &unk_E1BA30, &unk_B2A510);

  sub_AB5520();
  sub_12E1C(v5, &unk_E1BA30, &unk_B2A510);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI24InlineProfileEditingView7Context_hasRemovedImage;
  swift_beginAccess();
  *(v6 + v8) = 1;
}

uint64_t sub_84B044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_84C3A8();
  sub_AB5B60();
  swift_getKeyPath();
  sub_AB5B70();

  v23 = *(&v30 + 1);
  v24 = v30;
  v6 = v31;
  v29 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BD10, &qword_B30D90);
  sub_AB7660();
  v7 = v26;
  v8 = v27;
  v9 = v28;
  v29 = *(a1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7660();
  v10 = v26;
  v11 = v27;
  v12 = v28;
  if (qword_E16B40 != -1)
  {
    swift_once();
  }

  v13 = static UIImagePickerController.profileImagePickerProperties;
  *v5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0, &qword_B315E0);
  swift_storeEnumTagMultiPayload();
  v14 = (v5 + v3[7]);
  v15 = v3[9];
  v16 = (v5 + v3[5]);
  *v16 = v24;
  v16[1] = v23;
  v16[2] = v6;
  v17 = v5 + v3[6];
  *v17 = v7;
  *(v17 + 1) = v8;
  v17[16] = v9;
  v18 = v5 + v3[8];
  *v18 = v10;
  *(v18 + 1) = v11;
  v18[16] = v12;
  *v14 = 0;
  v14[1] = 0;
  *(v5 + v15) = v13;

  sub_AB7A30();
  sub_AB5970();
  v19 = v25;
  sub_84CB1C(v5, v25);
  v20 = (v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD20, &qword_B30DD0) + 36));
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  v20[2] = v32;
  return sub_84D07C(v5, type metadata accessor for ImagePicker);
}

void sub_84B2E4(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v3);

  *a2 = v3;
}

uint64_t sub_84B364@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v83 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BCE0, &qword_B2F7D0);
  __chkstk_darwin();
  v80 = &v68 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AB10, &qword_B2F7B8);
  v92 = *(v4 - 8);
  v93 = v4;
  __chkstk_darwin();
  v82 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v68 - v6;
  __chkstk_darwin();
  v77 = &v68 - v7;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BCF0, &qword_B30D40);
  __chkstk_darwin();
  v90 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v68 - v9;
  __chkstk_darwin();
  v89 = &v68 - v10;
  sub_AB35C0();
  __chkstk_darwin();
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB9250();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v68 - v17;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BCF8, &qword_B30D48);
  v78 = *(v79 - 8);
  __chkstk_darwin();
  v88 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v94 = &v68 - v20;
  v81 = a1;
  v21 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  v84 = v21;
  sub_AB5510(&v95);

  v74 = v95;
  v73 = v96;
  sub_AB91E0();
  v22 = *(v14 + 16);
  v87 = v14 + 16;
  v86 = v22;
  v22(v16, v18, v13);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v23 = qword_E73660;
  v24 = qword_E73660;
  v68 = v12;
  sub_AB3550();
  v25 = v24;
  v69 = v16;
  v71 = v23;
  v26 = sub_AB9320();
  v28 = v27;
  v85 = *(v14 + 8);
  v85(v18, v13);
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_84C3A8();
  sub_AB5B60();
  swift_getKeyPath();
  sub_AB5B70();

  v97 = v26;
  v98 = v28;
  v72 = sub_7ABE60();
  sub_AB7B10();
  sub_AB91E0();
  v29 = v69;
  v70 = v13;
  v86(v69, v18, v13);
  sub_AB3550();
  v30 = sub_AB9320();
  v32 = v31;
  v85(v18, v13);
  v95 = v30;
  v96 = v32;
  v33 = v77;
  sub_AB76E0();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(&v95);

  v34 = String.trim()();

  v35 = (v34._object >> 56) & 0xF;
  if ((v34._object & 0x2000000000000000) == 0)
  {
    v35 = v34._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  v36 = v35 == 0;
  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  v39 = v92;
  v40 = v75;
  (*(v92 + 32))(v75, v33, v93);
  v41 = (v40 + *(v76 + 36));
  *v41 = KeyPath;
  v41[1] = sub_C8EC8;
  v41[2] = v38;
  v42 = v89;
  sub_36B0C(v40, v89, &qword_E1BCF0, &qword_B30D40);
  sub_AB91E0();
  v43 = v70;
  v86(v29, v18, v70);
  sub_AB3550();
  v44 = sub_AB9320();
  v46 = v45;
  v85(v18, v43);
  v97 = v44;
  v98 = v46;
  v47 = v80;
  sub_AB5670();
  v48 = sub_AB5680();
  (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
  v49 = swift_allocObject();
  v50 = v81;
  v51 = *(v81 + 3);
  *(v49 + 48) = *(v81 + 2);
  *(v49 + 64) = v51;
  *(v49 + 80) = v50[4];
  v52 = v50[1];
  *(v49 + 16) = *v50;
  *(v49 + 32) = v52;
  v53 = v73;
  *(v49 + 96) = v74;
  *(v49 + 104) = v53;
  sub_844244(v50, &v95);
  v54 = v91;
  sub_AB76C0();
  v55 = v78;
  v56 = *(v78 + 16);
  v57 = v88;
  v58 = v79;
  v56(v88, v94, v79);
  sub_15F84(v42, v90, &qword_E1BCF0, &qword_B30D40);
  v59 = *(v39 + 16);
  v60 = v82;
  v61 = v93;
  v59(v82, v54, v93);
  v62 = v83;
  v56(v83, v57, v58);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD00, &qword_B30D80);
  v64 = v90;
  sub_15F84(v90, &v62[*(v63 + 48)], &qword_E1BCF0, &qword_B30D40);
  v59(&v62[*(v63 + 64)], v60, v61);
  v65 = *(v92 + 8);
  v65(v91, v61);
  sub_12E1C(v89, &qword_E1BCF0, &qword_B30D40);
  v66 = *(v55 + 8);
  v66(v94, v58);
  v65(v60, v61);
  sub_12E1C(v64, &qword_E1BCF0, &qword_B30D40);
  return (v66)(v88, v58);
}

void sub_84BE70(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(v4);

  v3 = v4[1];
  *a2 = v4[0];
  a2[1] = v3;
}

uint64_t sub_84BEF0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_AB5520();
}

uint64_t sub_84BF74(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v6[2] = a2;
  v6[3] = a3;
  sub_15F84(&v7, v6, &qword_E1BD08, &qword_B30D88);

  return sub_AB5520();
}

double sub_84C05C@<D0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510(a2);

  return result;
}

uint64_t sub_84C0D8(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1BA30, &unk_B2A510);
  __chkstk_darwin();
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v8 - v5;
  sub_15F84(a1, &v8 - v5, &unk_E1BA30, &unk_B2A510);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_15F84(v6, v4, &unk_E1BA30, &unk_B2A510);

  sub_AB5520();
  return sub_12E1C(v6, &unk_E1BA30, &unk_B2A510);
}

uint64_t sub_84C208@<X0>(uint64_t a2@<X8>)
{
  sub_AB7630();
  sub_AB7630();
  sub_AB7630();
  sub_AB7630();
  type metadata accessor for InlineProfileEditingView.Context(0);
  sub_84C3A8();
  result = sub_AB5B50();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v5;
  *(a2 + 72) = v6;
  return result;
}

void sub_84C32C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_8469DC(v1);
}

uint64_t type metadata accessor for InlineProfileEditingView.Context(uint64_t a1)
{
  result = qword_E1BB60;
  if (!qword_E1BB60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_84C3A8()
{
  result = qword_E1BA80;
  if (!qword_E1BA80)
  {
    type metadata accessor for InlineProfileEditingView.Context(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BA80);
  }

  return result;
}

unint64_t sub_84C408()
{
  result = qword_E1BAD8;
  if (!qword_E1BAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BAA0, &qword_B30BE0);
    sub_84C51C(&qword_E1BAE0, &qword_E1BA98, &qword_B30BD8, sub_84C4EC);
    sub_36A00(&qword_E186A8, &unk_E1BAC0, &qword_B30990, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BAD8);
  }

  return result;
}

uint64_t sub_84C51C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_84C5A0()
{
  result = qword_E1BAF0;
  if (!qword_E1BAF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BA88, &qword_B30BC8);
    sub_36A00(&qword_E1BAF8, &qword_E1BB00, &qword_B30C08, &protocol conformance descriptor for HStack<A>);
    sub_36A00(&qword_E1B2E8, &qword_E1B2F0, &qword_B30C10, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BAF0);
  }

  return result;
}

unint64_t sub_84C68C()
{
  result = qword_E1BB20;
  if (!qword_E1BB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BAB0, &qword_B30BF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BAA0, &qword_B30BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BAD0, &qword_B30C00);
    sub_84C408();
    sub_7ABE60();
    sub_36A00(&qword_E1BB08, &qword_E1BAD0, &qword_B30C00, &protocol conformance descriptor for TupleView<A>);
    swift_getOpaqueTypeConformance2();
    sub_36A00(&qword_E1BB28, &qword_E1BB10, &qword_B30C18, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BB20);
  }

  return result;
}

void sub_84C830(uint64_t a1)
{
  sub_3641C(319, &qword_E1BB70, &unk_E1BA30, &unk_B2A510);
  if (v1 <= 0x3F)
  {
    sub_84C96C();
    if (v2 <= 0x3F)
    {
      sub_3641C(319, &unk_E1BB80, &qword_E175C0, &qword_B2A1E8);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_84C96C()
{
  if (!qword_E1BB78)
  {
    v0 = sub_AB5540();
    if (!v1)
    {
      atomic_store(v0, &qword_E1BB78);
    }
  }
}

uint64_t sub_84C9BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BAB0, &qword_B30BF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BB18, &qword_B30C20);
  sub_84C68C();
  sub_7ABE60();
  sub_36A00(&qword_E1BB30, &qword_E1BB18, &qword_B30C20, &protocol conformance descriptor for TupleView<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_84CAAC()
{

  return swift_deallocObject();
}

uint64_t sub_84CB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_84CBCC()
{

  return swift_deallocObject();
}

unint64_t sub_84CC04()
{
  result = qword_E1BDB0;
  if (!qword_E1BDB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BDA8, &qword_B30E30);
    sub_84CCBC(&qword_E1BDB8, &qword_E1BDC0, &qword_B30E38, sub_84CD6C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BDB0);
  }

  return result;
}

uint64_t sub_84CCBC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_36A00(&unk_E1B440, &qword_E1BDE0, &qword_B30360, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_84CD6C()
{
  result = qword_E1BDC8;
  if (!qword_E1BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E1BDD0, &qword_B30E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BDC8);
  }

  return result;
}

unint64_t sub_84CDF0()
{
  result = qword_E1BDE8;
  if (!qword_E1BDE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BD90, &qword_B30880);
    sub_84CCBC(&qword_E1BDF0, &qword_E1B8A8, &qword_B30878, sub_84CEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BDE8);
  }

  return result;
}

unint64_t sub_84CEA8()
{
  result = qword_E1BDF8;
  if (!qword_E1BDF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E1BD80, &qword_B30920);
    sub_7FDAA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BDF8);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{

  return swift_deallocObject();
}

uint64_t sub_84D07C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t HeightLimitedButtonTextView.init(action:body:trailingView:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  a3();
  v18[0] = a5;
  v18[1] = a6;
  v18[2] = a8;
  v18[3] = a9;
  v15 = type metadata accessor for HeightLimitedButtonTextView(0, v18);
  result = a4();
  v17 = (a7 + *(v15 + 56));
  *v17 = a1;
  v17[1] = a2;
  return result;
}

uint64_t HeightLimitedButtonTextView.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40, &qword_B30EC0);
  v31 = a1 + 5;
  v3 = a1[2];
  sub_AB5D50();
  sub_AB5D50();
  v29 = a1[3];
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB77D0();
  sub_AB5D50();
  WitnessTable = swift_getWitnessTable();
  v45 = &protocol witness table for _CompositingGroupEffect;
  v28 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v40 = sub_AB76F0();
  v41 = sub_AB5E20();
  v42 = swift_getWitnessTable();
  v43 = sub_84D750();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  v24[3] = swift_getWitnessTable();
  v24[0] = sub_AB5960();
  v27 = *(v24[0] - 8);
  __chkstk_darwin();
  v5 = v24 - v4;
  v6 = sub_AB5D50();
  v26 = *(v6 - 8);
  __chkstk_darwin();
  v8 = v24 - v7;
  v24[1] = swift_getWitnessTable();
  v24[2] = sub_AB5EA0();
  v9 = sub_AB5D50();
  v25 = *(v9 - 8);
  __chkstk_darwin();
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v24 - v12;
  v14 = a1[4];
  v15 = v30;
  sub_AB72B0();
  sub_AB6A70();
  *&v16 = v14;
  *(&v16 + 1) = *v31;
  *&v17 = v3;
  *(&v17 + 1) = v29;
  v33 = v17;
  v34 = v16;
  v35 = v15;
  sub_AB5950();
  sub_AB7A30();
  v18 = sub_84E524();
  v38 = v14;
  v39 = v18;
  v19 = swift_getWitnessTable();
  v20 = v24[0];
  sub_AB72F0();
  (*(v27 + 8))(v5, v20);
  (*(v26 + 8))(v8, v6);
  v21 = swift_getWitnessTable();
  v36 = v19;
  v37 = v21;
  swift_getWitnessTable();
  sub_7FF188();
  v22 = *(v25 + 8);
  v22(v11, v9);
  sub_7FF188();
  return (v22)(v13, v9);
}

unint64_t sub_84D750()
{
  result = qword_E1BE48;
  if (!qword_E1BE48)
  {
    sub_AB5E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BE48);
  }

  return result;
}

uint64_t sub_84D7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a5;
  v68 = a3;
  v50 = a1;
  v72 = a6;
  v8 = sub_AB5E20();
  v60 = v8;
  v71 = *(v8 - 8);
  __chkstk_darwin();
  v70 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB77D0();
  v10 = sub_AB5D50();
  WitnessTable = swift_getWitnessTable();
  v87 = &protocol witness table for _CompositingGroupEffect;
  v54 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v66 = v10;
  v65 = swift_getWitnessTable();
  v11 = sub_AB76F0();
  v61 = v11;
  v67 = *(v11 - 8);
  __chkstk_darwin();
  v56 = &v48 - v12;
  v13 = swift_getWitnessTable();
  v59 = v13;
  v58 = sub_84D750();
  v82 = v11;
  v83 = v8;
  v84 = v13;
  v85 = v58;
  v62 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v63 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin();
  v55 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v57 = &v48 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40, &qword_B30EC0);
  v49 = a2;
  v16 = sub_AB5D50();
  v17 = *(v16 - 8);
  __chkstk_darwin();
  v19 = &v48 - v18;
  v20 = sub_AB5D50();
  v73 = *(v20 - 8);
  __chkstk_darwin();
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v24 = &v48 - v23;
  sub_AB7380();
  v25 = sub_84ED40();
  v81[4] = a4;
  v81[5] = v25;
  v26 = a4;
  v27 = swift_getWitnessTable();
  sub_AB7370();
  (*(v17 + 8))(v19, v16);
  v81[2] = v27;
  v81[3] = &protocol witness table for _FixedSizeLayout;
  v52 = swift_getWitnessTable();
  v28 = v24;
  v51 = v22;
  sub_7FF188();
  v53 = *(v73 + 8);
  v54 = (v73 + 8);
  v53(v22, v20);
  v29 = v49;
  v30 = v68;
  v82 = v49;
  v83 = v68;
  v31 = v69;
  v84 = v26;
  v85 = v69;
  type metadata accessor for HeightLimitedButtonTextView(0, &v82);
  v74 = v29;
  v75 = v30;
  v76 = v26;
  v77 = v31;
  v78 = v50;

  v32 = v56;
  sub_AB7690();
  v33 = v70;
  sub_AB5E10();
  v34 = v55;
  v35 = v61;
  v36 = v60;
  v37 = v59;
  v38 = v58;
  sub_AB6FB0();
  (*(v71 + 8))(v33, v36);
  (*(v67 + 8))(v32, v35);
  v82 = v35;
  v83 = v36;
  v84 = v37;
  v85 = v38;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v57;
  v41 = OpaqueTypeMetadata2;
  sub_7FF188();
  v42 = v63;
  v43 = *(v63 + 8);
  v44 = v34;
  v43(v34, v41);
  v45 = v51;
  (*(v73 + 16))(v51, v28, v20);
  v82 = v45;
  (*(v42 + 16))(v44, v40, v41);
  v83 = v44;
  v81[0] = v20;
  v81[1] = v41;
  v79 = v52;
  v80 = OpaqueTypeConformance2;
  sub_860684(&v82, 2uLL, v81);
  v43(v40, v41);
  v46 = v53;
  v53(v28, v20);
  v43(v44, v41);
  return v46(v45, v20);
}

uint64_t sub_84DFD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v19 = a2;
  v20 = a3;
  v21 = a1;
  v24 = a6;
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  v6 = sub_AB77D0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = sub_AB5D50();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v19 - v14;
  sub_AB6460();
  sub_AB62B0();
  v25 = v19;
  v26 = v20;
  v27 = v22;
  v28 = v23;
  v29 = v21;
  sub_AB77C0();
  WitnessTable = swift_getWitnessTable();
  sub_AB70E0();
  (*(v7 + 8))(v9, v6);
  v30 = WitnessTable;
  v31 = &protocol witness table for _CompositingGroupEffect;
  swift_getWitnessTable();
  sub_7FF188();
  v17 = *(v11 + 8);
  v17(v13, v10);
  sub_7FF188();
  return (v17)(v15, v10);
}

uint64_t sub_84E2AC@<X0>(char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a6;
  v9 = *(a3 - 1);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v25 - v12;
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v25 - v18;
  v26 = v20;
  sub_7FF188();
  v32 = a2;
  v33 = a3;
  v34 = a4;
  v21 = v27;
  v35 = v27;
  type metadata accessor for HeightLimitedButtonTextView(0, &v32);
  sub_7FF188();
  (*(v15 + 16))(v17, v19, a2);
  v32 = v17;
  (*(v9 + 16))(v11, v13, a3);
  v33 = v11;
  v31[0] = a2;
  v31[1] = a3;
  v29 = v26;
  v30 = v21;
  sub_860684(&v32, 2uLL, v31);
  v22 = *(v9 + 8);
  v22(v13, a3);
  v23 = *(v15 + 8);
  v23(v19, a2);
  v22(v11, a3);
  return (v23)(v17, a2);
}

unint64_t sub_84E524()
{
  result = qword_E1BE50[0];
  if (!qword_E1BE50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E1BE50);
  }

  return result;
}

unint64_t sub_84E5C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      result = sub_7FD734();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_84E66C(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_29;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = a2 - v10;
  v15 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = v14 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = *(a1 + v13);
      if (!v19)
      {
        goto LABEL_29;
      }
    }
  }

  else if (!v18 || (v19 = *(a1 + v13)) == 0)
  {
LABEL_29:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1);
    }

    v23 = (a1 + v11) & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v23, v8, v6);
    }

    v24 = *((v12 + v23) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    return (v24 + 1);
  }

  v21 = v19 - 1;
  if (v15)
  {
    v21 = 0;
    v22 = *a1;
  }

  else
  {
    v22 = 0;
  }

  return v10 + (v22 | v21) + 1;
}

_DWORD *sub_84E83C(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  v13 = v9 + v10;
  v14 = (v9 + v10) & ~v10;
  v15 = v11 + 7;
  v16 = ((v11 + 7 + v14) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v11 + 7 + v14) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v17 = a3 - v12 + 1;
  }

  else
  {
    v17 = 2;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v12 < a3)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (a2 > v12)
  {
    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = a2 - v12;
    }

    if (v16)
    {
      v22 = ~v12 + a2;
      v23 = result;
      bzero(result, v16);
      result = v23;
      *v23 = v22;
    }

    if (v20 > 1)
    {
      if (v20 == 2)
      {
        *(result + v16) = v21;
      }

      else
      {
        *(result + v16) = v21;
      }
    }

    else if (v20)
    {
      *(result + v16) = v21;
    }

    return result;
  }

  if (v20 > 1)
  {
    if (v20 != 2)
    {
      *(result + v16) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(result + v16) = 0;
  }

  else if (v20)
  {
    *(result + v16) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v6 == v12)
  {
    v24 = *(v5 + 56);

    return v24();
  }

  else
  {
    result = ((result + v13) & ~v10);
    if (v8 == v12)
    {
      v25 = *(v7 + 56);

      return v25(result);
    }

    else
    {
      v26 = ((result + v15) & 0xFFFFFFFFFFFFFFF8);
      if ((a2 & 0x80000000) != 0)
      {
        *v26 = a2 & 0x7FFFFFFF;
        v26[1] = 0;
      }

      else
      {
        *v26 = a2 - 1;
      }
    }
  }

  return result;
}

uint64_t sub_84EAA0(void *a1)
{
  sub_AB5D50();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40, &qword_B30EC0);
  sub_AB5D50();
  sub_AB5D50();
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB77D0();
  sub_AB5D50();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_AB76F0();
  sub_AB5E20();
  swift_getWitnessTable();
  sub_84D750();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_AB7B40();
  swift_getWitnessTable();
  sub_AB5960();
  swift_getWitnessTable();
  sub_AB5EA0();
  sub_AB5D50();
  sub_84E524();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_84ED40()
{
  result = qword_E1BED8;
  if (!qword_E1BED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BE40, &qword_B30EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BED8);
  }

  return result;
}

uint64_t MoreLabel.init(color:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for MoreLabel(0);
  v5 = *(v4 + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16D50, &unk_B2E340);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + *(v4 + 24);
  result = swift_getKeyPath();
  *v6 = result;
  v6[8] = 0;
  *a2 = a1;
  return result;
}

uint64_t type metadata accessor for MoreLabel(uint64_t a1)
{
  result = qword_E1BF98;
  if (!qword_E1BF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MoreLabel.body.getter@<X0>(uint64_t a1@<X8>)
{
  v83 = a1;
  v1 = sub_AB6EF0();
  v81 = *(v1 - 8);
  v82 = v1;
  __chkstk_darwin();
  v80 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_AB6240();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin();
  v72 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B858, &qword_B30790);
  v77 = v5;
  __chkstk_darwin();
  v7 = &v72 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BEE0, &qword_B30FB0);
  __chkstk_darwin();
  v78 = &v72 - v9;
  Int.seconds.getter(44);
  sub_AB6360();
  v10 = sub_AB6F00();
  v12 = v11;
  v75 = v13;
  v76 = v14;
  v15 = &v7[*(v5 + 36)];
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1B860, &qword_B30798) + 28);
  v17 = enum case for Text.Case.uppercase(_:);
  v18 = sub_AB6E60();
  v19 = *(v18 - 8);
  v20 = v17;
  v21 = v8;
  (*(v19 + 104))(v15 + v16, v20, v18);
  (*(v19 + 56))(v15 + v16, 0, 1, v18);
  *v15 = swift_getKeyPath();
  *v7 = v10;
  *(v7 + 1) = v12;
  v23 = v78;
  v22 = v79;
  v7[16] = v75 & 1;
  *(v7 + 3) = v76;
  sub_AB6C10();
  sub_84F9BC();
  sub_AB6F80();
  sub_12E1C(v7, &qword_E1B858, &qword_B30790);
  v24 = sub_AB6CB0();
  KeyPath = swift_getKeyPath();
  v26 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BEF8, &qword_B31018) + 36));
  *v26 = KeyPath;
  v26[1] = v24;
  v27 = *v22;
  v28 = swift_getKeyPath();
  v29 = (v23 + *(v21 + 36));
  *v29 = v28;
  v29[1] = v27;
  v30 = v22 + *(type metadata accessor for MoreLabel(0) + 24);
  v31 = *v30;
  if (v30[8] == 1)
  {
    v100 = v31 & 1;
  }

  else
  {

    sub_84FB24(v31, 0);
    v32 = sub_AB9F40();
    v33 = sub_AB6A40();
    sub_AB4A90(v32, &dword_0, v33, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    v34 = v72;
    sub_AB6230();
    swift_getAtKeyPath();
    v35 = sub_83315C(v31, 0);
    (*(v73 + 8))(v34, v74, v35);
  }

  v36 = v80;
  sub_AB6EE0();
  sub_84FB30();
  v37 = v83;
  sub_AB73C0();
  (*(v81 + 8))(v36, v82);
  sub_84FCDC(v23);
  v38 = sub_AB6AD0();
  sub_AB5690();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BF10, &qword_B31050) + 36);
  *v47 = v38;
  *(v47 + 8) = v40;
  *(v47 + 16) = v42;
  *(v47 + 24) = v44;
  *(v47 + 32) = v46;
  *(v47 + 40) = 0;
  v48 = sub_AB6AB0();
  sub_AB5690();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BF18, &qword_B31058) + 36);
  *v57 = v48;
  *(v57 + 8) = v50;
  *(v57 + 16) = v52;
  *(v57 + 24) = v54;
  *(v57 + 32) = v56;
  *(v57 + 40) = 0;
  v58 = sub_AB62E0();
  v92 = 0;
  sub_84F5CC(&v85);
  v95 = v87;
  v96 = v88;
  v97 = v89;
  v98 = v90;
  v93 = v85;
  v94 = v86;
  v99[2] = v87;
  v99[3] = v88;
  v99[4] = v89;
  v99[5] = v90;
  v99[0] = v85;
  v99[1] = v86;
  sub_15F84(&v93, &v84, &qword_E1BF20, &qword_B31060);
  sub_12E1C(v99, &qword_E1BF20, &qword_B31060);
  *&v91[39] = v95;
  *&v91[55] = v96;
  *&v91[71] = v97;
  *&v91[87] = v98;
  *&v91[7] = v93;
  *&v91[23] = v94;
  v59 = v92;
  v60 = v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BF28, &qword_B31068) + 36);
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BF30, &qword_B31070) + 36);
  v62 = enum case for BlendMode.destinationOut(_:);
  v63 = sub_AB7AC0();
  (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
  v64 = *&v91[32];
  *(v60 + 65) = *&v91[48];
  v65 = *&v91[80];
  *(v60 + 81) = *&v91[64];
  *(v60 + 97) = v65;
  v66 = *&v91[16];
  *(v60 + 17) = *v91;
  *(v60 + 33) = v66;
  *v60 = v58;
  *(v60 + 8) = 0;
  *(v60 + 16) = v59;
  *(v60 + 112) = *&v91[95];
  *(v60 + 49) = v64;
  v67 = sub_AB7A30();
  v69 = v68;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BF38, &qword_B31078);
  v71 = (v60 + *(result + 36));
  *v71 = v67;
  v71[1] = v69;
  return result;
}

uint64_t sub_84F5CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_AB5D20();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v20 - v7;
  type metadata accessor for MoreLabel(0);
  sub_7EF898(v8);
  (*(v4 + 104))(v6, enum case for LayoutDirection.rightToLeft(_:), v3);
  v9 = sub_AB5D10();
  v10 = *(v4 + 8);
  v10(v6, v3);
  v10(v8, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F0, &unk_B2BAB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_AF85F0;
  if (v9)
  {
    *(v11 + 32) = sub_AB7480();
    v12 = sub_AB7490();
  }

  else
  {
    *(v11 + 32) = sub_AB7490();
    v12 = sub_AB7480();
  }

  *(v11 + 40) = v12;
  sub_AB7990();
  sub_AB7BC0();
  sub_AB7BD0();
  sub_AB5B40();
  sub_AB7A30();
  sub_AB5970();
  v13 = sub_AB7480();
  v14 = v27;
  v20[2] = v26;
  v20[3] = v27;
  v15 = v28;
  v20[4] = v28;
  v16 = v29;
  v21 = v29;
  v17 = v24;
  v18 = v25;
  v20[0] = v24;
  v20[1] = v25;
  *(a1 + 32) = v26;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  *a1 = v17;
  *(a1 + 16) = v18;
  *(a1 + 80) = v16;
  *(a1 + 88) = v13;
  sub_15F84(v20, v22, &qword_E187B0, &qword_B2C788);
  v22[2] = v26;
  v22[3] = v27;
  v22[4] = v28;
  v23 = v29;
  v22[0] = v24;
  v22[1] = v25;
  return sub_12E1C(v22, &qword_E187B0, &qword_B2C788);
}

uint64_t sub_84F888@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6150();
  *a1 = result & 1;
  return result;
}

uint64_t sub_84F8B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_AB6150();
  *a1 = result & 1;
  return result;
}

uint64_t sub_84F910(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BFF8, &qword_B310F0);
  __chkstk_darwin();
  sub_15F84(a1, &v4 - v2, &qword_E1BFF8, &qword_B310F0);
  return sub_AB61C0();
}

unint64_t sub_84F9BC()
{
  result = qword_E1BEE8;
  if (!qword_E1BEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B858, &qword_B30790);
    sub_36A00(&qword_E1BEF0, &qword_E1B860, &qword_B30798, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BEE8);
  }

  return result;
}

uint64_t sub_84FA74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6160();
  *a1 = result;
  return result;
}

uint64_t sub_84FACC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_AB6020();
  *a1 = result;
  return result;
}

double sub_84FB24(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_84FB30()
{
  result = qword_E1BF00;
  if (!qword_E1BF00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BEE0, &qword_B30FB0);
    sub_84FBE8();
    sub_36A00(&unk_E1BE10, &unk_E1AB20, &unk_B2F7C0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BF00);
  }

  return result;
}

unint64_t sub_84FBE8()
{
  result = qword_E1BF08;
  if (!qword_E1BF08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BEF8, &qword_B31018);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1B858, &qword_B30790);
    sub_84F9BC();
    swift_getOpaqueTypeConformance2();
    sub_36A00(&unk_E1ACF0, &qword_E19188, &qword_B2E3B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BF08);
  }

  return result;
}

uint64_t sub_84FCDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BEE0, &qword_B30FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_84FD74(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19030, &qword_B2D168);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_84FE44(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19030, &qword_B2D168);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_84FEF4(uint64_t a1)
{
  sub_84FF88(319);
  if (v1 <= 0x3F)
  {
    sub_84FFE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_84FF88(uint64_t a1)
{
  if (!qword_E190B0)
  {
    sub_AB5D20();
    v1 = sub_AB57D0();
    if (!v2)
    {
      atomic_store(v1, &qword_E190B0);
    }
  }
}

void sub_84FFE0()
{
  if (!qword_E1AA40)
  {
    v0 = sub_AB57D0();
    if (!v1)
    {
      atomic_store(v0, &qword_E1AA40);
    }
  }
}

unint64_t sub_850034()
{
  result = qword_E1BFD8;
  if (!qword_E1BFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BF28, &qword_B31068);
    sub_8500EC();
    sub_36A00(&qword_E1BFF0, &qword_E1BF38, &qword_B31078, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BFD8);
  }

  return result;
}

unint64_t sub_8500EC()
{
  result = qword_E1BFE0;
  if (!qword_E1BFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BF18, &qword_B31058);
    sub_850178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BFE0);
  }

  return result;
}

unint64_t sub_850178()
{
  result = qword_E1BFE8;
  if (!qword_E1BFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BF10, &qword_B31050);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1BEE0, &qword_B30FB0);
    sub_84FB30();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1BFE8);
  }

  return result;
}

double Gradient.init(kind:colors:locations:interpolations:startPoint:endPoint:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *&v14 = a1;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  *&v16 = a6;
  *(&v16 + 1) = a7;
  *&v17 = a8;
  *(&v17 + 1) = a9;
  v18[0] = a1;
  v18[1] = a2;
  v18[2] = a3;
  v18[3] = a4;
  *&v18[4] = a6;
  *&v18[5] = a7;
  *&v18[6] = a8;
  *&v18[7] = a9;
  sub_8502C4(&v14, &v13);
  sub_8502FC(v18);
  v10 = v15;
  *a5 = v14;
  a5[1] = v10;
  result = *&v16;
  v12 = v17;
  a5[2] = v16;
  a5[3] = v12;
  return result;
}

char *sub_85032C(void *a1)
{
  v2 = v1;
  [a1 setType:*v1];
  v5 = *(v1 + 2);
  if (v5)
  {
    sub_7D8924(v5, v4);
    sub_13C80(0, &qword_E19E40, NSNumber_ptr);
    v6.super.isa = sub_AB9740().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  [a1 setLocations:v6.super.isa];

  isa = *(v2 + 3);
  if (isa)
  {
    sub_13C80(0, &qword_E1AD88, CAMediaTimingFunction_ptr);
    isa = sub_AB9740().super.isa;
  }

  [a1 setInterpolations:isa];

  v8 = *(v2 + 1);
  if (!v8)
  {
    goto LABEL_19;
  }

  if (v8 >> 62)
  {
    v9 = sub_ABB060();
  }

  else
  {
    v9 = *(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8));
  }

  if (!v9)
  {
LABEL_18:
    v8 = sub_AB9740().super.isa;

LABEL_19:
    [a1 setColors:v8];

    [a1 setStartPoint:{v2[4], v2[5]}];
    return [a1 setEndPoint:{v2[6], v2[7]}];
  }

  v21 = _swiftEmptyArrayStorage;
  result = sub_8A5768(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = 0;
    v12 = v21;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v13 = sub_ABAE20();
      }

      else
      {
        v13 = *(v8 + v11 + 4);
      }

      v14 = v13;
      v15 = [v13 CGColor];
      _s3__C7CGColorCMa_1(0);
      v20 = v16;

      *&v19 = v15;
      v21 = v12;
      v18 = v12[2];
      v17 = v12[3];
      if (v18 >= v17 >> 1)
      {
        sub_8A5768((v17 > 1), v18 + 1, 1);
        v12 = v21;
      }

      ++v11;
      v12[2] = v18 + 1;
      sub_9ACFC(&v19, &v12[4 * v18 + 4]);
    }

    while (v9 != v11);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

__int128 *Gradient.View.__allocating_init(configuration:)(__int128 *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[3];
  v8 = *a1;
  v7 = a1[1];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_8502C4(a1, v14);
  v13.receiver = v4;
  v13.super_class = v2;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_85032C(v11);

  sub_8502FC(a1);
  return v9;
}

_OWORD *Gradient.View.init(configuration:)(_OWORD *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v2[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v6 = a1[1];
  *v5 = *a1;
  *(v5 + 1) = v6;
  v7 = a1[3];
  *(v5 + 2) = a1[2];
  *(v5 + 3) = v7;
  sub_8502C4(a1, v13);
  v12.receiver = v2;
  v12.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v9 = [v8 layer];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  sub_85032C(v10);

  sub_8502FC(a1);
  return v8;
}

double Gradient.View.typedConfiguration.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v10 = *v3;
  v11 = v4;
  v5 = v3[3];
  v12 = v3[2];
  v13 = v5;
  sub_8502C4(&v10, v9);
  v6 = v11;
  *a1 = v10;
  a1[1] = v6;
  result = *&v12;
  v8 = v13;
  a1[2] = v12;
  a1[3] = v8;
  return result;
}

uint64_t Gradient.View.typedConfiguration.setter(_OWORD *a1)
{
  v3 = &v1[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  swift_beginAccess();
  v4 = *(v3 + 1);
  v19[0] = *v3;
  v19[1] = v4;
  v5 = *(v3 + 3);
  v20 = *(v3 + 2);
  v21 = v5;
  v22[0] = v19[0];
  v22[1] = v4;
  v22[2] = v20;
  v22[3] = v5;
  v6 = a1[1];
  *v3 = *a1;
  *(v3 + 1) = v6;
  v7 = a1[3];
  *(v3 + 2) = a1[2];
  *(v3 + 3) = v7;
  sub_8502C4(v19, v18);
  sub_8502C4(a1, v18);
  sub_8502FC(v22);
  v8 = *(v3 + 1);
  v18[0] = *v3;
  v18[1] = v8;
  v9 = *(v3 + 3);
  v18[2] = *(v3 + 2);
  v18[3] = v9;
  sub_8502C4(v18, v17);
  v10 = _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v18, v19);
  sub_8502FC(v18);
  if (v10)
  {
    sub_8502FC(v19);
  }

  else
  {
    v11 = *(v3 + 1);
    v17[0] = *v3;
    v17[1] = v11;
    v12 = *(v3 + 3);
    v17[2] = *(v3 + 2);
    v17[3] = v12;
    sub_8502C4(v17, v16);
    v13 = [v1 layer];
    objc_opt_self();
    v14 = swift_dynamicCastObjCClassUnconditional();
    sub_85032C(v14);
    sub_8502FC(v19);
    sub_8502FC(a1);

    a1 = v17;
  }

  return sub_8502FC(a1);
}

void (*Gradient.View.typedConfiguration.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_8502C4(v4, (v4 + 16));
  return sub_850B48;
}

void sub_850B48(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 208);
  if (a2)
  {
    v2[4] = v2[12];
    v2[5] = v3;
    v4 = v2[15];
    v2[6] = v2[14];
    v2[7] = v4;
    sub_8502C4((v2 + 4), (v2 + 20));
    Gradient.View.typedConfiguration.setter(v2 + 4);
    v5 = v2[13];
    v2[16] = v2[12];
    v2[17] = v5;
    v6 = v2[15];
    v2[18] = v2[14];
    v2[19] = v6;
    sub_8502FC((v2 + 16));
  }

  else
  {
    v2[8] = v2[12];
    v2[9] = v3;
    v7 = v2[15];
    v2[10] = v2[14];
    v2[11] = v7;
    Gradient.View.typedConfiguration.setter(v2 + 8);
  }

  free(v2);
}

_OWORD *sub_850C70(_OWORD *a1)
{
  v3 = a1[1];
  v15[0] = *a1;
  v15[1] = v3;
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = objc_allocWithZone(v1);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v7 = a1[1];
  *v6 = *a1;
  *(v6 + 1) = v7;
  v8 = a1[3];
  *(v6 + 2) = a1[2];
  *(v6 + 3) = v8;
  sub_8502C4(v15, v14);
  v13.receiver = v5;
  v13.super_class = v1;
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v10 = [v9 layer];
  objc_opt_self();
  v11 = swift_dynamicCastObjCClassUnconditional();
  sub_85032C(v11);

  sub_8502FC(v15);
  return v9;
}

uint64_t sub_850D6C@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v6 = v3[3];
  v10 = v3[2];
  v5 = v10;
  v11 = v6;
  *a1 = v9[0];
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return sub_8502C4(v9, v8);
}

uint64_t sub_850DD8(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = a1[3];
  v4[2] = a1[2];
  v4[3] = v2;
  return Gradient.View.typedConfiguration.setter(v4);
}

void (*sub_850E0C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1A0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 408) = v1;
  v5 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v4[14] = v5[2];
  v4[15] = v11;
  v4[12] = v9;
  v4[13] = v10;
  sub_8502C4(v4, (v4 + 16));
  return sub_850B48;
}

uint64_t sub_850EC8@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for Gradient;
  a1[4] = sub_8518C0();
  v3 = swift_allocObject();
  *a1 = v3;
  v4 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v5 = v4[1];
  v10[0] = *v4;
  v10[1] = v5;
  v7 = v4[3];
  v11 = v4[2];
  v6 = v11;
  v12 = v7;
  v3[1] = v10[0];
  v3[2] = v5;
  v3[3] = v6;
  v3[4] = v7;
  return sub_8502C4(v10, v9);
}

uint64_t sub_850F6C(void *a1)
{
  sub_E8BA0(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17580, &unk_B2A1C0);
  swift_dynamicCast();
  v8[0] = v3;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  Gradient.View.typedConfiguration.setter(v8);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void (*sub_851000(void *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x198uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[50] = v1;
  v3[35] = &type metadata for Gradient;
  v3[36] = sub_8518C0();
  v5 = swift_allocObject();
  *(v4 + 256) = v5;
  v6 = (v1 + OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  *(v4 + 32) = v6[2];
  *(v4 + 48) = v9;
  *v4 = v7;
  *(v4 + 16) = v8;
  v10 = v6[1];
  v5[1] = *v6;
  v5[2] = v10;
  v11 = v6[3];
  v5[3] = v6[2];
  v5[4] = v11;
  sub_8502C4(v4, v4 + 192);
  return sub_8510EC;
}

void sub_8510EC(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_E8BA0(v2 + 256, v2 + 296);
    sub_E8BA0(v2 + 296, v2 + 336);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17580, &unk_B2A1C0);
    swift_dynamicCast();
    v3 = *(v2 + 208);
    *(v2 + 64) = *(v2 + 192);
    *(v2 + 80) = v3;
    v4 = *(v2 + 240);
    *(v2 + 96) = *(v2 + 224);
    *(v2 + 112) = v4;
    Gradient.View.typedConfiguration.setter((v2 + 64));
    __swift_destroy_boxed_opaque_existential_0((v2 + 296));
  }

  else
  {
    sub_E8BA0(v2 + 256, v2 + 296);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17580, &unk_B2A1C0);
    swift_dynamicCast();
    v5 = *(v2 + 208);
    *(v2 + 128) = *(v2 + 192);
    *(v2 + 144) = v5;
    v6 = *(v2 + 240);
    *(v2 + 160) = *(v2 + 224);
    *(v2 + 176) = v6;
    Gradient.View.typedConfiguration.setter((v2 + 128));
  }

  __swift_destroy_boxed_opaque_existential_0((v2 + 256));

  free(v2);
}

id sub_8511F8(uint64_t a1)
{
  v2 = v1[1];
  v16 = *v1;
  v17 = v2;
  v3 = v1[3];
  v18 = v1[2];
  v19 = v3;
  v4 = type metadata accessor for Gradient.View();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCV11MusicCoreUI8Gradient4View_typedConfiguration];
  v7 = v19;
  v9 = v16;
  v8 = v17;
  *(v6 + 2) = v18;
  *(v6 + 3) = v7;
  *v6 = v9;
  *(v6 + 1) = v8;
  sub_8502C4(&v16, v15);
  sub_8502C4(&v16, v15);
  v14.receiver = v5;
  v14.super_class = v4;
  v10 = objc_msgSendSuper2(&v14, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = [v10 layer];
  objc_opt_self();
  v12 = swift_dynamicCastObjCClassUnconditional();
  sub_85032C(v12);

  sub_8502FC(&v16);
  sub_8517FC(&qword_E1C058, &protocol conformance descriptor for Gradient.View);
  return v10;
}

uint64_t sub_851324@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[1];
  v7[0] = *v1;
  v7[1] = v2;
  v4 = v1[3];
  v8 = v1[2];
  v3 = v8;
  v9 = v4;
  *a1 = v7[0];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  return sub_8502C4(v7, &v6);
}

BOOL sub_851364(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v8);
}

double static Gradient.vertical(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_B28390;
  v13 = xmmword_B28290;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = 0x3FE0000000000000;
  v15 = xmmword_B283A0;
  v16 = 0x3FF0000000000000;

  v5 = kCAGradientLayerAxial;

  sub_8502C4(&v10, &v9);
  sub_8502FC(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

double static Gradient.horizontal(colors:locations:interpolations:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  *&v10 = kCAGradientLayerAxial;
  *(&v10 + 1) = a1;
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = xmmword_B283A0;
  v13 = xmmword_B283B0;
  v14[0] = kCAGradientLayerAxial;
  v14[1] = a1;
  v14[2] = a2;
  v14[3] = a3;
  v15 = xmmword_B283A0;
  v16 = xmmword_B283B0;

  v5 = kCAGradientLayerAxial;

  sub_8502C4(&v10, &v9);
  sub_8502FC(v14);
  v6 = v11;
  *a4 = v10;
  a4[1] = v6;
  result = *&v12;
  v8 = v13;
  a4[2] = v12;
  a4[3] = v8;
  return result;
}

Swift::Void __swiftcall Gradient.flip()()
{
  v1 = *(v0 + 32);
  *(v0 + 32) = *(v0 + 48);
  *(v0 + 48) = v1;
}

double Gradient.flipped()@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v4 = v1[2];
  v11 = v1[3];
  v12 = v4;
  sub_8502C4(v1, &v8);
  v5 = v10;
  *a1 = v9;
  a1[1] = v5;
  result = *&v11;
  v7 = v12;
  a1[2] = v11;
  a1[3] = v7;
  return result;
}

BOOL _s11MusicCoreUI8GradientV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, double *a2)
{
  v4 = sub_AB92A0();
  v6 = v5;
  if (v4 == sub_AB92A0() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_ABB3C0();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 1);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v12 = sub_810C50(v10, v11);

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 16);
  v14 = *(a2 + 2);
  if (v13)
  {
    if (!v14 || (sub_810C64(v13, v14) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v14)
  {
    return 0;
  }

  v15 = *(a1 + 24);
  v16 = *(a2 + 3);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = sub_810CC0(v15, v16);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  return *(a1 + 32) == a2[4] && *(a1 + 40) == a2[5] && *(a1 + 48) == a2[6] && *(a1 + 56) == a2[7];
}

unint64_t sub_85170C()
{
  result = qword_E1C010;
  if (!qword_E1C010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C010);
  }

  return result;
}

uint64_t sub_851760(uint64_t a1)
{
  result = sub_8517FC(&qword_E1C058, &protocol conformance descriptor for Gradient.View);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_8517FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Gradient.View();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_85183C(uint64_t a1)
{
  *(a1 + 8) = sub_85186C();
  result = sub_8518C0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_85186C()
{
  result = qword_E1C090;
  if (!qword_E1C090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C090);
  }

  return result;
}

unint64_t sub_8518C0()
{
  result = qword_E1C098;
  if (!qword_E1C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C098);
  }

  return result;
}

uint64_t sub_851924()
{

  return swift_deallocObject();
}

uint64_t static ArtworkImage.GridPreview.ViewModel.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_810350(a1, a4) & (a2 == a5);
  if (a3 == a6)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

BOOL sub_8519DC(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = sub_810350(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t ArtworkImage.GridPreview.Item.init(id:viewModel:placeholder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v9 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  sub_36B0C(a3, a5 + *(v9 + 20), &qword_E1BD70, &qword_B285C0);
  return sub_854C58(a4, a5 + *(v9 + 24), type metadata accessor for ArtworkImage.Placeholder);
}

void static ArtworkImage.with(_:gridPreviewViewModel:gridPreviewVariant:placeholder:size:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X8>)
{
  v77 = a3;
  v78 = a4;
  v72 = a2;
  v70 = a1;
  v76 = a8;
  v64 = *a7;
  v10 = *(a7 + 8);
  v11 = a7[2];
  v62 = a5;
  v63 = v11;
  v59 = *(a7 + 24);
  v60 = v10;
  v79 = a7[4];
  v58 = *(a7 + 40);
  v61 = *(a7 + 41);
  v67 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v12 = *(v67 + 64);
  __chkstk_darwin();
  v13 = sub_AB4780();
  v65 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AE80, &qword_B2FD08);
  v68 = *(v17 - 8);
  v69 = v17;
  __chkstk_darwin();
  v66 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C0C8, &qword_B31228) - 8;
  __chkstk_darwin();
  v21 = &v57 - v20;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C0D0, &qword_B31230);
  __chkstk_darwin();
  v75 = &v57 - v22;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C0D8, &qword_B31238);
  v23 = __chkstk_darwin();
  v73 = &v57 - v24;
  (*(v14 + 104))(v16, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v13, v23);
  v25 = a6;
  v26 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_854BF0(v25, v26, type metadata accessor for ArtworkImage.Placeholder);
  v27 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v28 = (v12 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  sub_854C58(v26, v29 + v27, type metadata accessor for ArtworkImage.Placeholder);
  v30 = (v29 + v28);
  v31 = *(a7 + 1);
  *v30 = *a7;
  v30[1] = v31;
  *(v30 + 26) = *(a7 + 26);
  v32 = v66;
  sub_7F0CE0(v70, sub_832CBC, v29, a7, v16, v66);

  (*(v14 + 8))(v16, v65);
  v33 = v72;
  if (v72)
  {
    v34 = 0.0;
  }

  else
  {
    v34 = 1.0;
  }

  (*(v68 + 32))(v21, v32, v69);
  *&v21[*(v19 + 44)] = v34;
  v35 = sub_AB7A30();
  v37 = v33;
  if (v33)
  {
    LOBYTE(v87[0]) = v60 & 1;
    LOBYTE(v81) = v59 & 1;
    v80[0] = v58 & 1;
    v38 = v60 & 1;
    v39 = v59 & 1;
    v40 = v58 & 1 | (v61 << 8);
    v41 = v63;
    v33 = v62 & 1;
    v42 = v77;
    v43 = v78;
    v44 = v64;
    v45 = v79;
  }

  else
  {
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v41 = 0;
    v45 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
  }

  v79 = v45;
  LODWORD(v68) = v40;
  *&v81 = v37;
  *(&v81 + 1) = v42;
  *&v82 = v43;
  *(&v82 + 1) = v33;
  *&v83 = v44;
  *(&v83 + 1) = v38;
  *&v84 = v41;
  *(&v84 + 1) = v39;
  *&v85 = v45;
  WORD4(v85) = v40;
  *&v86 = v35;
  *(&v86 + 1) = v36;
  v69 = v36;
  v70 = v35;
  v46 = v21;
  v47 = v75;
  v48 = v44;
  sub_36B0C(v46, v75, &qword_E1C0C8, &qword_B31228);
  v49 = (v47 + *(v71 + 36));
  v50 = v84;
  v49[2] = v83;
  v49[3] = v50;
  v51 = v86;
  v49[4] = v85;
  v49[5] = v51;
  v52 = v82;
  *v49 = v81;
  v49[1] = v52;
  v87[0] = v37;
  v87[1] = v42;
  v87[2] = v43;
  v87[3] = v33;
  v87[4] = v48;
  v87[5] = v38;
  v87[6] = v41;
  v87[7] = v39;
  v87[8] = v79;
  v88 = v68;
  v89 = v70;
  v90 = v69;

  sub_15F84(&v81, v80, &qword_E1C0E0, &qword_B31240);
  sub_12E1C(v87, &qword_E1C0E0, &qword_B31240);
  v53 = sub_AB7A80();
  v54 = v73;
  sub_36B0C(v47, v73, &qword_E1C0D0, &qword_B31230);
  v55 = (v54 + *(v74 + 36));
  *v55 = v53;
  v55[1] = v37;
  v56 = v78;
  v55[2] = v77;
  v55[3] = v56;
  sub_36B0C(v54, v76, &qword_E1C0D8, &qword_B31238);
}

void sub_852100(uint64_t a1@<X8>)
{
  v2 = 0.0;
  if ((*(v1 + 40) & 1) != 0 || (*(v1 + 56) & 1) != 0 || (v3 = *(v1 + 32), v3 <= 0.0) || (v4 = *(v1 + 48), v4 <= 0.0))
  {
LABEL_16:
    *a1 = v2;
    *(a1 + 8) = 0;
    *(a1 + 16) = v2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 513;
    return;
  }

  v5 = a1;
  v6 = *(v1 + 24);
  if (*(v1 + 24))
  {
    v7 = 18;
  }

  else
  {
    v7 = 7;
  }

  v8 = Int.seconds.getter(v7);
  v9 = *(v1 + 16);
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = v8;
    v11 = *(v1 + 8);
    v12 = Int.seconds.getter(v9 - 1);
    if (v6)
    {
      v13 = 14;
    }

    else
    {
      v13 = 4;
    }

    v14 = Int.seconds.getter(v13);
    v15 = Int.seconds.getter(v9);
    if (!__OFSUB__(v11, 1))
    {
      v16 = v4 - (v10 + v10);
      v17 = (v3 - (v10 + v10) - v12 * v14) / v15;
      v18 = Int.seconds.getter(v11 - 1);
      v19 = v16 - v18 * Int.seconds.getter(v13);
      v2 = v19 / Int.seconds.getter(v11);
      if (v2 >= v17)
      {
        v2 = v17;
      }

      a1 = v5;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_852240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  sub_AB66E0();
  __chkstk_darwin();
  v5 = sub_AB79A0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = (&v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_AB79B0();
  __chkstk_darwin();
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1D8, &qword_B31430);
  v11 = *(v31 - 8);
  __chkstk_darwin();
  v13 = &v31 - v12;
  v14 = *a1;
  if (*(a1 + 8))
  {
    v14 = 0.0;
  }

  *v8 = v14;
  (*(v6 + 104))(v8, enum case for GridItem.Size.fixed(_:), v5);
  v36 = *(a2 + 24);
  if (v36)
  {
    v15 = 14;
  }

  else
  {
    v15 = 4;
  }

  Int.seconds.getter(v15);
  sub_AB79C0();
  sub_852604(v10, *(a2 + 16), v16);
  Int.seconds.getter(v15);
  v33 = a2;
  v34 = a1;
  sub_AB6440();
  v35 = 0;
  sub_854A58(&unk_E19E10, &type metadata accessor for PinnedScrollableViews, &protocol conformance descriptor for PinnedScrollableViews);
  sub_ABB6C0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1E0, &qword_B31438);
  sub_854AA0();
  sub_AB7AD0();
  v17 = sub_AB6AA0();
  if (v36)
  {
    v18 = 18;
  }

  else
  {
    v18 = 7;
  }

  v19 = Int.seconds.getter(v18);
  v20 = _s7SwiftUI10EdgeInsetsV09MusicCoreB0E_6lengthAcA0C0O3SetV_0F8Graphics7CGFloatVtcfC_0(v17, v19);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_AB6AA0();
  v28 = v32;
  (*(v11 + 32))(v32, v13, v31);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1F8, &qword_B31440);
  v30 = v28 + *(result + 36);
  *v30 = v27;
  *(v30 + 8) = v20;
  *(v30 + 16) = v22;
  *(v30 + 24) = v24;
  *(v30 + 32) = v26;
  *(v30 + 40) = 0;
  return result;
}

char *sub_852604(char *result, uint64_t a2, __n128 a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      v5 = sub_AB79B0();
      v6 = sub_AB97D0();
      *(v6 + 2) = a2;
      v7 = *(v5 - 8);
      v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v9 = *(v7 + 16);
      v9(&v6[v8], v4, v5);
      v10 = a2 - 1;
      if (a2 != 1)
      {
        v11 = *(v7 + 72);
        v12 = &v6[v11 + v8];
        do
        {
          v9(v12, v4, v5);
          v12 += v11;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v6 = _swiftEmptyArrayStorage;
    }

    v13 = sub_AB79B0();
    (*(*(v13 - 8) + 8))(v4, v13);
    return v6;
  }

  return result;
}

void *sub_852760(void *result, _OWORD *a2)
{
  v2 = result[1];
  v3 = result[2];
  v4 = v3 * v2;
  if ((v3 * v2) >> 64 == (v3 * v2) >> 63)
  {
    v6 = result;
    v7 = *result;
    v8 = *(*result + 16);
    if (v4 >= v8)
    {
      sub_854B74(result, v14);
      goto LABEL_6;
    }

    v9 = v8 - v4;
    if (!__OFSUB__(v8, v4))
    {
      sub_854B74(result, v14);
      sub_852A98(v9, v7);
LABEL_6:
      v10 = swift_allocObject();
      v11 = a2[1];
      v10[1] = *a2;
      v10[2] = v11;
      *(v10 + 42) = *(a2 + 26);
      v12 = v6[3];
      v10[6] = v6[2];
      v10[7] = v12;
      *(v10 + 122) = *(v6 + 58);
      v13 = v6[1];
      v10[4] = *v6;
      v10[5] = v13;
      sub_854B74(v6, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C200, &qword_B31448);
      _s11GridPreviewO8GridViewV8ItemViewVMa(0);
      sub_36A00(&qword_E1C208, &qword_E1C200, &qword_B31448, &protocol conformance descriptor for [A]);
      sub_854A58(&qword_E1C1F0, _s11GridPreviewO8GridViewV8ItemViewVMa, &unk_B314AC);
      sub_854A58(&qword_E1C210, type metadata accessor for ArtworkImage.GridPreview.Item, &protocol conformance descriptor for ArtworkImage.GridPreview.Item);
      return sub_AB78C0();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_852954@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_854BF0(a1, v9, type metadata accessor for ArtworkImage.GridPreview.Item);
  if (*(a3 + 24))
  {
    v10 = 0x4014000000000000;
  }

  else
  {
    v10 = 0x4000000000000000;
  }

  sub_854C58(v9, a4, type metadata accessor for ArtworkImage.GridPreview.Item);
  v11 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v12 = (a4 + v11[5]);
  v13 = a2[1];
  *v12 = *a2;
  v12[1] = v13;
  *(v12 + 26) = *(a2 + 26);
  v14 = a4 + v11[6];
  *v14 = v10;
  *(v14 + 8) = -1;
  *(v14 + 16) = 0;
  v15 = v11[7];
  *(a4 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CC0, &unk_B2D4C0);
  return swift_storeEnumTagMultiPayload();
}

void sub_852A98(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArtworkImage.GridPreview.Item(0);
  __chkstk_darwin();
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v25 - v7;
  if (a1 < 0)
  {
    goto LABEL_28;
  }

  if (a1)
  {
    v9 = *(a2 + 16);
    if (!v9)
    {
LABEL_24:

      return;
    }

    v10 = 0;
    v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v25[1] = a2;
    v12 = a2 + v11;
    v13 = *(v6 + 72);
    v14 = v9 - 1;
    v15 = _swiftEmptyArrayStorage;
    v16 = _swiftEmptyArrayStorage;
    v27 = v5;
    v28 = v11;
    v29 = v25 - v7;
    v26 = a1;
    while (1)
    {
      sub_854BF0(v12, v8, type metadata accessor for ArtworkImage.GridPreview.Item);
      v20 = v16[2];
      if (v20 < a1)
      {
        break;
      }

      if (v10 >= v20)
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        return;
      }

      sub_854BF0(v16 + v11 + v13 * v10, v5, type metadata accessor for ArtworkImage.GridPreview.Item);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v31 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_8A57E8(0, v15[2] + 1, 1);
        v5 = v27;
        v15 = v31;
      }

      v24 = v15[2];
      v23 = v15[3];
      if (v24 >= v23 >> 1)
      {
        sub_8A57E8((v23 > 1), v24 + 1, 1);
        v5 = v27;
        v15 = v31;
      }

      v15[2] = v24 + 1;
      v11 = v28;
      sub_854C58(v5, v15 + v28 + v24 * v13, type metadata accessor for ArtworkImage.GridPreview.Item);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_853FBC(v16);
      }

      v8 = v29;
      if (v10 >= v16[2])
      {
        goto LABEL_27;
      }

      sub_854CC0(v29, v16 + v11 + v13 * v10++);
      a1 = v26;
      if (v10 < v26)
      {
        goto LABEL_8;
      }

      if (!v14)
      {
        goto LABEL_24;
      }

      v10 = 0;
LABEL_9:
      --v14;
      v12 += v13;
    }

    v21 = swift_isUniquelyReferenced_nonNull_native();
    v30 = v16;
    if ((v21 & 1) == 0)
    {
      sub_8A57E8(0, v20 + 1, 1);
      v5 = v27;
      v16 = v30;
    }

    v18 = v16[2];
    v17 = v16[3];
    if (v18 >= v17 >> 1)
    {
      sub_8A57E8((v17 > 1), v18 + 1, 1);
      v5 = v27;
      v16 = v30;
    }

    v16[2] = v18 + 1;
    v11 = v28;
    v19 = v16 + v28 + v18 * v13;
    v8 = v29;
    sub_854C58(v29, v19, type metadata accessor for ArtworkImage.GridPreview.Item);
LABEL_8:
    if (!v14)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }
}

uint64_t sub_852DD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = sub_AB63D0();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin();
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0) - 8);
  v53 = *(v54 + 64);
  __chkstk_darwin();
  v49 = &v47 - v6;
  v7 = *(type metadata accessor for ArtworkImage.Placeholder(0) - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB4780();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v15 = *(v14 + 20);
  v16 = *(v14 + 24);
  v48 = _s11GridPreviewO8GridViewV8ItemViewVMa(0);
  v17 = (v2 + *(v48 + 20));
  v18 = *(v17 + 26);
  v19 = v17[1];
  v55 = *v17;
  v56[0] = v19;
  *(v56 + 10) = v18;
  (*(v11 + 104))(v13, enum case for ArtworkImage.ReusePolicy.reusableForDistinctItems(_:), v10);
  sub_854BF0(v2 + v16, v9, type metadata accessor for ArtworkImage.Placeholder);
  v20 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  sub_854C58(v9, v22 + v20, type metadata accessor for ArtworkImage.Placeholder);
  v23 = (v22 + v21);
  v24 = v56[0];
  *v23 = v55;
  v23[1] = v24;
  *(v23 + 26) = *(v56 + 10);
  v25 = v2 + v15;
  v26 = v50;
  sub_7F0CE0(v25, sub_837350, v22, &v55, v13, v50);

  (*(v11 + 8))(v13, v10);
  v27 = v48;
  v28 = v2;
  sub_7EFCA0(v5);
  v29 = v49;
  sub_7F4A90(v49);
  (*(v51 + 8))(v5, v52);
  v30 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  v31 = (v26 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AE48, &qword_B2FCF0) + 36));
  v32 = v26;
  v33 = *(type metadata accessor for PlaceholderStyleModifier(0) + 20);
  *(v31 + v33) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E16CB8, &qword_B28580);
  swift_storeEnumTagMultiPayload();
  v34 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v35 = swift_allocObject();
  sub_36B0C(v29, v35 + v34, &qword_E19250, &unk_B2D4D0);
  *v31 = sub_7FC3C8;
  v31[1] = v35;
  v36 = (v28 + *(v27 + 24));
  v37 = *v36;
  v38 = v36[1];
  v39 = *(v36 + 16);
  v40 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C2E8, &qword_B31528) + 36);
  *v40 = v37;
  *(v40 + 8) = v38;
  *(v40 + 16) = v39;
  if (qword_E16A10 != -1)
  {
    swift_once();
  }

  v41 = static Border.artwork;
  v42 = qword_E73A58;
  v43 = byte_E73A60;
  v44 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C2F0, &qword_B31530) + 36);
  *v44 = v41;
  *(v44 + 8) = v42;
  *(v44 + 16) = v43;
  *(v44 + 24) = v37;
  *(v44 + 32) = v38;
  *(v44 + 40) = v39;

  sub_AB59B0();
  sub_AB7A50();
  sub_AB59D0();

  sub_AB7BB0();
  sub_AB59A0();
  sub_AB7A50();
  sub_AB59D0();

  sub_AB7BB0();
  sub_AB59A0();
  sub_AB7A50();
  sub_AB59D0();

  sub_AB5990();

  v45 = sub_AB59C0();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C2F8, &qword_B31538);
  *(v32 + *(result + 36)) = v45;
  return result;
}

double sub_853490@<D0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v17[2] = v1[2];
  v18[0] = v3;
  *(v18 + 10) = *(v1 + 58);
  v4 = v1[1];
  v17[0] = *v1;
  v17[1] = v4;
  sub_852100(v15);
  v5 = [objc_opt_self() tertiarySystemFillColor];
  v6 = sub_AB7510();
  v7 = sub_AB7A10();
  v9 = v8;
  v10 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1C0, &qword_B31418) + 36);
  sub_852240(v15, v17, v10);
  v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1C8, &qword_B31420) + 36)];
  *v11 = v7;
  v11[1] = v9;
  *a1 = v6;
  sub_AB7A30();
  sub_AB5970();
  v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C1D0, &qword_B31428) + 36));
  v13 = v15[4];
  *v12 = v15[3];
  v12[1] = v13;
  result = *&v16;
  v12[2] = v16;
  return result;
}

void *sub_8535D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17068, &qword_B29C68);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060, &qword_B29C60) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17060, &qword_B29C60) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_8537C0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E185F0, &unk_B33020);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_8538D0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182F8, &unk_B2C410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_8539D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C230, &qword_B31498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_853AD8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E182E8, &qword_B2BAA8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_853BE4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C218, &qword_B31450);
  v10 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ArtworkImage.GridPreview.Item(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_853DBC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C228, &qword_B31490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_853EB0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C220, &qword_B31488);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11GridPreviewO4ItemV23__derived_struct_equalsySbAH_AHtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for ArtworkImage.ViewModel(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1AD70, &qword_B2FBE0);
  __chkstk_darwin();
  v12 = &v20 - v11;
  if (*a1 != *a2 && (sub_ABB3C0() & 1) == 0)
  {
    goto LABEL_9;
  }

  v20 = v7;
  v21 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v13 = *(v21 + 20);
  v14 = *(v10 + 48);
  sub_15F84(a1 + v13, v12, &qword_E1BD70, &qword_B285C0);
  sub_15F84(a2 + v13, &v12[v14], &qword_E1BD70, &qword_B285C0);
  v15 = *(v5 + 48);
  if (v15(v12, 1, v4) == 1)
  {
    if (v15(&v12[v14], 1, v4) == 1)
    {
      sub_12E1C(v12, &qword_E1BD70, &qword_B285C0);
LABEL_11:
      v16 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E11PlaceholderO21__derived_enum_equalsySbAF_AFtFZ_0(a1 + *(v21 + 24), a2 + *(v21 + 24));
      return v16 & 1;
    }

    goto LABEL_8;
  }

  sub_15F84(v12, v9, &qword_E1BD70, &qword_B285C0);
  if (v15(&v12[v14], 1, v4) == 1)
  {
    sub_854D28(v9);
LABEL_8:
    sub_12E1C(v12, &unk_E1AD70, &qword_B2FBE0);
    goto LABEL_9;
  }

  v17 = v20;
  sub_854C58(&v12[v14], v20, type metadata accessor for ArtworkImage.ViewModel);
  v18 = _s17_MusicKit_SwiftUI12ArtworkImageV0a4CoreD0E9ViewModelV23__derived_struct_equalsySbAF_AFtFZ_0(v9, v17);
  sub_854D28(v17);
  sub_854D28(v9);
  sub_12E1C(v12, &qword_E1BD70, &qword_B285C0);
  if (v18)
  {
    goto LABEL_11;
  }

LABEL_9:
  v16 = 0;
  return v16 & 1;
}

unint64_t sub_854300()
{
  result = qword_E1C0E8;
  if (!qword_E1C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C0E8);
  }

  return result;
}

unint64_t sub_854358()
{
  result = qword_E1C0F0;
  if (!qword_E1C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C0F0);
  }

  return result;
}

uint64_t sub_8543E0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
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
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_854524(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1BD70, &qword_B285C0);
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
      v13 = type metadata accessor for ArtworkImage.Placeholder(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_854654(uint64_t a1)
{
  sub_8550E0(319, &qword_E194F0, type metadata accessor for ArtworkImage.ViewModel, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ArtworkImage.Placeholder(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_85472C()
{
  result = qword_E1C190;
  if (!qword_E1C190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C0D8, &qword_B31238);
    sub_8547E4();
    sub_36A00(&qword_E1C1B0, &qword_E1C1B8, &qword_B31390, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C190);
  }

  return result;
}

unint64_t sub_8547E4()
{
  result = qword_E1C198;
  if (!qword_E1C198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C0D0, &qword_B31230);
    sub_85489C();
    sub_36A00(&qword_E1C1A8, &qword_E1C0E0, &qword_B31240, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C198);
  }

  return result;
}

unint64_t sub_85489C()
{
  result = qword_E1C1A0;
  if (!qword_E1C1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C0C8, &qword_B31228);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E197E8, &qword_B2D880);
    sub_7FD7E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C1A0);
  }

  return result;
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_854988(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 74))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_8549D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 74) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_854A58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_854AA0()
{
  result = qword_E1C1E8;
  if (!qword_E1C1E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C1E0, &qword_B31438);
    sub_854A58(&qword_E1C1F0, _s11GridPreviewO8GridViewV8ItemViewVMa, &unk_B314AC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C1E8);
  }

  return result;
}

uint64_t sub_854BAC()
{

  return swift_deallocObject();
}

uint64_t sub_854BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_854C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_854CC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_854D28(uint64_t a1)
{
  v2 = type metadata accessor for ArtworkImage.ViewModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_854D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 253)
  {
    v10 = *(a1 + *(a3 + 20) + 41);
    if (v10 <= 2)
    {
      v11 = 2;
    }

    else
    {
      v11 = *(a1 + *(a3 + 20) + 41);
    }

    v12 = v11 - 2;
    if (v10 >= 2)
    {
      return v12;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195F0, &qword_B2D838);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + *(a3 + 28);

    return v14(v15, a2, v13);
  }
}

uint64_t sub_854EE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ArtworkImage.GridPreview.Item(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 253)
  {
    *(a1 + *(a4 + 20) + 41) = a2 + 2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E195F0, &qword_B2D838);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_855014(uint64_t a1)
{
  type metadata accessor for ArtworkImage.GridPreview.Item(319);
  if (v1 <= 0x3F)
  {
    sub_8550E0(319, &unk_E19668, &type metadata accessor for ColorSchemeContrast, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_8550E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_855188(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_85520C()
{
  result = qword_E1C2D8;
  if (!qword_E1C2D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C1C0, &qword_B31418);
    sub_36A00(&qword_E1C2E0, &qword_E1C1C8, &qword_B31420, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C2D8);
  }

  return result;
}

uint64_t sub_8552E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19250, &unk_B2D4D0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  v4 = type metadata accessor for ArtworkImage.Placeholder.View.Style(0);
  if (!(*(*(v4 - 8) + 48))(v0 + v2, 1, v4))
  {
    if (*(v3 + 3))
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + v2));
    }

    if (*(v3 + 8))
    {
      __swift_destroy_boxed_opaque_existential_0(v3 + 5);
    }

    v5 = *(v4 + 24);
    v6 = sub_AB7AC0();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(&v3[v5], 1, v6))
    {
      (*(v7 + 8))(&v3[v5], v6);
    }
  }

  return swift_deallocObject();
}

unint64_t sub_855490()
{
  result = qword_E1C300;
  if (!qword_E1C300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C2F8, &qword_B31538);
    sub_855548();
    sub_36A00(&qword_E1C318, &qword_E1C320, &unk_B31540, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C300);
  }

  return result;
}

unint64_t sub_855548()
{
  result = qword_E1C308;
  if (!qword_E1C308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C2F0, &qword_B31530);
    sub_8555D4();
    sub_7D7A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C308);
  }

  return result;
}

unint64_t sub_8555D4()
{
  result = qword_E1C310;
  if (!qword_E1C310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C2E8, &qword_B31528);
    sub_834404();
    sub_7D7A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C310);
  }

  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 HitMyRectButton.hitRectAdjustment.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment;
  swift_beginAccess();
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  return result;
}

double HitMyRectButton.hitRect()()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for HitMyRectButton();
  objc_msgSendSuper2(&v17, "hitRect");
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = &v0[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  swift_beginAccess();
  v10 = *(v9 + 32);
  if (v10 != 255)
  {
    v12 = *v9;
    v11 = v9[1];
    if ((v10 & 1) == 0)
    {
      v18.origin.x = v2;
      v18.origin.y = v4;
      v18.size.width = v6;
      v18.size.height = v8;
      Width = CGRectGetWidth(v18);
      if (Width > v12)
      {
        v12 = Width;
      }

      v19.origin.x = v2;
      v19.origin.y = v4;
      v19.size.width = v6;
      v19.size.height = v8;
      v14 = v12 - CGRectGetWidth(v19);
      v20.origin.x = v2;
      v20.origin.y = v4;
      v20.size.width = v6;
      v20.size.height = v8;
      Height = CGRectGetHeight(v20);
      if (Height > v11)
      {
        v11 = Height;
      }

      v21.origin.x = v2;
      v21.origin.y = v4;
      v21.size.width = v6;
      v21.size.height = v8;
      v12 = (v11 - CGRectGetHeight(v21)) * -0.5;
      v11 = v14 * -0.5;
    }

    return UIEdgeInsetsInsetRect(v2, v4, v6, v8, v12, v11);
  }

  return v2;
}

void *HitMyRectButton.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if ((UIViewIgnoresTouchEvents() & 1) != 0 || ![v3 pointInside:a1 withEvent:{a2, a3}])
  {
    return 0;
  }

  v7 = v3;
  return v3;
}

BOOL HitMyRectButton.point(inside:with:)(CGFloat a1, CGFloat a2)
{
  [v2 hitRect];
  v6.x = a1;
  v6.y = a2;
  return CGRectContainsPoint(v7, v6);
}

UIAccessibilityTraits HitMyRectButton.accessibilityTraits.getter()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for HitMyRectButton();
  v1 = objc_msgSendSuper2(&v4, "accessibilityTraits");
  v2 = UIAccessibilityTraitButton;
  if ((UIAccessibilityTraitButton & ~v1) == 0)
  {
    v2 = 0;
  }

  return v2 | v1;
}

id HitMyRectButton.accessibilityTraits.setter(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v4, "setAccessibilityTraits:", a1);
}

id HitMyRectButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = -1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC11MusicCoreUI15HitMyRectButton_hitRectAdjustment];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = -1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for HitMyRectButton();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

id HitMyRectButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HitMyRectButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t HitMyRectStackView.useBoundsAsPointInside.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  return *(v0 + v1);
}

void HitMyRectStackView.useBoundsAsPointInside.setter(char a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

BOOL HitMyRectStackView.point(inside:with:)(uint64_t a1, CGFloat a2, CGFloat a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside;
  swift_beginAccess();
  if (*(v3 + v8) == 1)
  {
    [v3 bounds];
    v18.x = a2;
    v18.y = a3;
    return CGRectContainsPoint(v19, v18);
  }

  else
  {
    v17.receiver = v3;
    v17.super_class = ObjectType;
    if (objc_msgSendSuper2(&v17, "pointInside:withEvent:", a1, a2, a3))
    {
      return 1;
    }

    else
    {
      v10 = [v3 arrangedSubviews];
      sub_856380();
      v11 = sub_AB9760();

      if (v11 >> 62)
      {
LABEL_19:
        v12 = sub_ABB060();
      }

      else
      {
        v12 = *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8));
      }

      for (i = 0; v12 != i; ++i)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = sub_ABAE20();
        }

        else
        {
          if (i >= *(&dword_10 + (v11 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_18;
          }

          v14 = *(v11 + 8 * i + 32);
        }

        v15 = v14;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        [v14 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
        v16 = [v15 pointInside:a1 withEvent:?];

        if (v16)
        {

          return 1;
        }
      }

      return 0;
    }
  }
}

id HitMyRectStackView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v4[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

id HitMyRectStackView.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR____TtC11MusicCoreUI18HitMyRectStackView_useBoundsAsPointInside] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  return v4;
}

unint64_t sub_856380()
{
  result = qword_E1E050;
  if (!qword_E1E050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E1E050);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for HitMyRectButton.HitRectAdjustment(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t *UIImagePickerController.profileImagePickerProperties.unsafeMutableAddressor()
{
  if (qword_E16B40 != -1)
  {
    swift_once();
  }

  return &static UIImagePickerController.profileImagePickerProperties;
}

int *ImagePicker.init(pickedImage:sourceType:shouldPresent:didPickImage:editingControllerProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0, &qword_B315E0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for ImagePicker(0);
  v21 = (a9 + result[7]);
  v22 = result[9];
  v23 = (a9 + result[5]);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v24 = a9 + result[6];
  *v24 = a4;
  *(v24 + 1) = a5;
  v24[16] = a6;
  v25 = a9 + result[8];
  *v25 = a7;
  *(v25 + 1) = a8;
  v25[16] = a10;
  *v21 = a11;
  v21[1] = a12;
  *(a9 + v22) = a13;
  return result;
}

void sub_8566A4(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController____lazy_storage___presentationSource;
  swift_beginAccess();
  sub_85C870(v1 + v3, v4);
  if (v5 == 1)
  {
    sub_12E1C(v4, &qword_E1C6F8, &qword_B31898);
    memset(v6, 0, sizeof(v6));
    v7 = 0;
    v8 = xmmword_AF7710;
    PresentationSource.init(viewController:position:)(v1, v6, a1);
    sub_15F28(a1, v4);
    swift_beginAccess();
    sub_85C8E0(v4, v1 + v3);
    swift_endAccess();
  }

  else
  {
    sub_17704(v4, a1);
  }
}

id ImagePicker.makeUIViewController(context:)()
{
  v0 = objc_allocWithZone(type metadata accessor for ImagePicker.DummyImagePickerViewController());

  return [v0 init];
}

void ImagePicker.updateUIViewController(_:context:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v7 = static PresentationSource.topmostPresentedViewController(from:options:)(a1, *v6);
  v8 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild;
  v9 = [*&a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild] presentedViewController];
  if (!v9)
  {
    v10 = *&a1[v8];
    if (!v10)
    {
      v13 = 0;
      v12 = 0;
      goto LABEL_5;
    }

    v9 = v10;
  }

  sub_13C80(0, &qword_E1C3A0, UIViewController_ptr);
  v11 = v7;
  v12 = v9;
  v13 = sub_ABA790();

LABEL_5:
  v14 = v3 + *(type metadata accessor for ImagePicker(0) + 32);
  v15 = *v14;
  v16 = *(v14 + 8);
  LOBYTE(v14) = *(v14 + 16);
  v22[0] = v15;
  v22[1] = v16;
  v23 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
  sub_AB77F0();
  if (v24 != 1 || (v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress, (a1[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress] & 1) != 0) || (v13 & 1) != 0)
  {
  }

  else
  {
    v18 = sub_856A80(v3, a2, a1);
    a1[v17] = 1;
    sub_8566A4(v22);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = v18;
    v20 = a1;
    v21 = v18;
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v21, 1, 1, sub_85A7DC, v19);

    sub_1611C(v22);
  }
}

id sub_856A80(uint64_t a1, uint64_t a2, void *a3)
{
  v56 = a2;
  sub_AB3F10();
  __chkstk_darwin();
  v5 = sub_AB8EC0();
  v50 = *(v5 - 8);
  v51 = v5;
  __chkstk_darwin();
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C738, &qword_B318E0);
  __chkstk_darwin();
  v9 = &v49 - v8;
  v10 = sub_AB8EF0();
  v52 = *(v10 - 8);
  v53 = v10;
  __chkstk_darwin();
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v49 - v13;
  v55 = sub_AB4A70();
  v15 = *(v55 - 8);
  __chkstk_darwin();
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ImagePicker(0);
  v19 = *(v18 + 24);
  v54 = a1;
  v20 = a1 + v19;
  v21 = *v20;
  v22 = *(v20 + 8);
  LOBYTE(v20) = *(v20 + 16);
  v58 = v21;
  v59 = v22;
  v60 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3B8, &qword_B315E8);
  sub_AB77F0();
  if (v57 <= 1u)
  {
    if (!v57)
    {
      v23 = [objc_allocWithZone(UIImagePickerController) init];
      [v23 setSourceType:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C740, &qword_B318E8);
      sub_AB6A30();
      v24 = v58;
      [v23 setDelegate:v58];

      [v23 setAllowsEditing:1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3D0, &qword_B315F0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_AF4EC0;
      sub_AB4A60();
      v26 = sub_AB4A40();
      v28 = v27;
      (*(v15 + 8))(v17, v55);
      *(v25 + 32) = v26;
      *(v25 + 40) = v28;
      isa = sub_AB9740().super.isa;

      [v23 setMediaTypes:isa];

      v30._rawValue = *(v54 + *(v18 + 36));
      if (v30._rawValue)
      {
        UIImagePickerController.setProperties(_:)(v30);
      }

      return v23;
    }

    result = [a3 view];
    if (result)
    {
      v37 = result;
      v38 = [objc_opt_self() clearColor];
      [v37 setBackgroundColor:v38];

      v39 = [objc_opt_self() sharedPhotoLibrary];
      sub_AB8EB0();
      sub_AB8E60();
      v40 = sub_AB8E70();
      (*(*(v40 - 8) + 56))(v9, 0, 1, v40);
      sub_AB8EE0();
      (*(v50 + 104))(v7, enum case for PHPickerConfiguration.AssetRepresentationMode.current(_:), v51);
      sub_AB8ED0();
      sub_13C80(0, &qword_E1C750, PHPickerViewController_ptr);
      v42 = v52;
      v41 = v53;
      (*(v52 + 16))(v12, v14, v53);
      v43 = sub_ABA380();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C740, &qword_B318E8);
      sub_AB6A30();
      sub_85BACC(&qword_E1C758, type metadata accessor for ImagePicker.Coordinator, &protocol conformance descriptor for ImagePicker.Coordinator);
      sub_ABA390();
      v23 = v43;
      v44 = [v23 presentationController];
      if (v44)
      {
        v45 = v44;
        sub_AB6A30();
        v46 = v58;
        [v45 setDelegate:v58];
      }

      (*(v42 + 8))(v14, v41);
      return v23;
    }

    goto LABEL_16;
  }

  if (v57 == 2)
  {
    result = [a3 view];
    if (!result)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v32 = result;
    v33 = [objc_opt_self() clearColor];
    [v32 setBackgroundColor:v33];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C748, &qword_B318F0);
    *(swift_allocObject() + 16) = xmmword_AF4EC0;
    sub_AB4A60();
    v34 = objc_allocWithZone(UIDocumentPickerViewController);
    v35 = sub_AB9740().super.isa;

    v23 = [v34 initForOpeningContentTypes:v35 asCopy:1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C740, &qword_B318E8);
    sub_AB6A30();
    v36 = v58;
    [v23 setDelegate:v58];

    [v23 _setAutomaticallyDismissesAfterCompletion:0];
    return v23;
  }

  result = [a3 view];
  if (result)
  {
    v47 = result;
    v48 = [objc_opt_self() clearColor];
    [v47 setBackgroundColor:v48];

    sub_AB3EF0();
    v23 = sub_AB3EE0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C740, &qword_B318E8);
    sub_AB6A30();
    sub_AB3ED0();
    sub_AB3F00();
    sub_AB3EC0();
    return v23;
  }

LABEL_17:
  __break(1u);
  return result;
}

Swift::Void __swiftcall UIImagePickerController.setProperties(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = [v1 _properties];
  if (v4)
  {
    v5 = v4;
    v6 = sub_AB8FF0();
  }

  else
  {
    v6 = 0;
  }

  v7 = 1 << *(a1._rawValue + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1._rawValue + 8);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  while (1)
  {
    v13 = v6;
    if (!v9)
    {
      break;
    }

    v14 = v9;
LABEL_14:
    v6 = 0;
    v9 = (v14 - 1) & v14;
    if (v13)
    {
      v16 = __clz(__rbit64(v14)) | (v11 << 6);
      v17 = *(*(a1._rawValue + 7) + v16);
      v18 = *(*(a1._rawValue + 6) + 16 * v16 + 8);
      *&v35 = *(*(a1._rawValue + 6) + 16 * v16);
      *(&v35 + 1) = v18;

      sub_ABAD10();
      v36 = &type metadata for Bool;
      LOBYTE(v35) = v17;
      sub_9ACFC(&v35, v34);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = v13;
      v20 = sub_2EC004(v37);
      v22 = v13[2];
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        sub_ABB4C0();
        __break(1u);
        return;
      }

      v26 = v21;
      if (v13[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_20;
        }

        v31 = v20;
        sub_85B6FC();
        v20 = v31;
        v6 = v13;
        if (v26)
        {
          goto LABEL_7;
        }

LABEL_21:
        v6[(v20 >> 6) + 8] |= 1 << v20;
        v28 = v20;
        sub_9ACA0(v37, v6[6] + 40 * v20);
        sub_9ACFC(v34, (v6[7] + 32 * v28));
        sub_8085C(v37);
        v29 = v6[2];
        v24 = __OFADD__(v29, 1);
        v30 = v29 + 1;
        if (v24)
        {
          goto LABEL_31;
        }

        v6[2] = v30;
      }

      else
      {
        sub_85AEC4(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_2EC004(v37);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_32;
        }

LABEL_20:
        v6 = v13;
        if ((v26 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_7:
        v12 = (v6[7] + 32 * v20);
        __swift_destroy_boxed_opaque_existential_0(v12);
        sub_9ACFC(v34, v12);
        sub_8085C(v37);
      }
    }
  }

  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_30;
    }

    if (v15 >= v10)
    {
      break;
    }

    v14 = *(a1._rawValue + v15 + 8);
    ++v11;
    if (v14)
    {
      v11 = v15;
      goto LABEL_14;
    }
  }

  if (v6)
  {
    v32.super.isa = sub_AB8FD0().super.isa;
  }

  else
  {
    v32.super.isa = 0;
  }

  [v2 _setProperties:{v32.super.isa, v33}];
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerController(_:didFinishPickingMediaWithInfo:)(UIImagePickerController _, Swift::OpaquePointer didFinishPickingMediaWithInfo)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v53 - v9;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    goto LABEL_8;
  }

  v11 = sub_2EC28C(UIImagePickerControllerEditedImage);
  if (v12)
  {
    sub_808B0(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v11, &v58);
    sub_9ACFC(&v58, &v60);
    goto LABEL_9;
  }

  v13 = *(didFinishPickingMediaWithInfo._rawValue + 2);
  v58 = 0u;
  v59 = 0u;
  if (v13 && (v14 = sub_2EC28C(UIImagePickerControllerOriginalImage), (v15 & 1) != 0))
  {
    sub_808B0(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v14, &v60);
    if (*(&v59 + 1))
    {
      sub_12E1C(&v58, &qword_E1E0B0, &unk_B2A450);
    }
  }

  else
  {
LABEL_8:
    v60 = 0u;
    v61 = 0u;
  }

LABEL_9:
  if (!*(&v61 + 1))
  {
    sub_12E1C(&v60, &qword_E1E0B0, &unk_B2A450);
LABEL_16:
    *&v60 = 0;
    *(&v60 + 1) = 0xE000000000000000;
    sub_ABAD90(61);
    v63._countAndFlagsBits = 0xD00000000000002ALL;
    v63._object = 0x8000000000B764A0;
    sub_AB94A0(v63);
    _s3__C7InfoKeyVMa_0(0);
    sub_85BACC(&qword_E16FF0, _s3__C7InfoKeyVMa_0, &unk_B29BD0);
    v64._countAndFlagsBits = sub_AB9000();
    sub_AB94A0(v64);

    v65._object = 0x8000000000B764D0;
    v65._countAndFlagsBits = 0xD000000000000011;
    sub_AB94A0(v65);
    v28 = *(&v60 + 1);
    v29 = v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler;
    v30 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v30)
    {
      v31 = v60;
      v32 = *(v29 + 8);
      sub_85B8A0();
      v33 = swift_allocError();
      *v34 = v31;
      v34[1] = v28;

      v30(v33, 1);
      sub_17654(v30, v32);
    }

    else
    {
    }

    return;
  }

  sub_13C80(0, &qword_E1C3B0, UIImage_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v16 = v58;
  if (!*(didFinishPickingMediaWithInfo._rawValue + 2))
  {
    v35 = v58;
LABEL_20:
    v26 = 0uLL;
    v25 = 1;
    v27 = 0uLL;
    goto LABEL_21;
  }

  v17 = v58;
  v18 = sub_2EC28C(UIImagePickerControllerCropRect);
  if ((v19 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_808B0(*(didFinishPickingMediaWithInfo._rawValue + 7) + 32 * v18, &v60);
  sub_13C80(0, &qword_E1C3C0, NSValue_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v20 = v58;
  [v58 CGRectValue];
  v54 = v21;
  v55 = v22;
  v53 = v23;
  v56 = v24;

  *&v27 = v53;
  *&v26 = v54;
  v25 = 0;
  *(&v26 + 1) = v55;
  *(&v27 + 1) = v56;
LABEL_21:
  v60 = v26;
  v61 = v27;
  v62 = v25;
  v36 = UIImage.centerCropIfNeeded(imageRect:)(&v60);

  v37 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v37)
  {
    v38 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);

    v37(v36, 0);
    sub_17654(v37, v38);
  }

  v39 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_84CB1C(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v10);
  v40 = &v10[*(v6 + 24)];
  v41 = *v40;
  v42 = *(v40 + 1);
  LOBYTE(v40) = v40[16];
  *&v58 = v41;
  *(&v58 + 1) = v42;
  LOBYTE(v59) = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3B8, &qword_B315E8);
  sub_AB77F0();
  v43 = v57;
  sub_85B8F4(v10);
  if ((v43 - 1) > 2)
  {
    sub_84CB1C(v3 + v39, v8);
    v50 = &v8[*(v6 + 32)];
    v51 = *v50;
    v52 = *(v50 + 1);
    LOBYTE(v50) = v50[16];
    *&v58 = v51;
    *(&v58 + 1) = v52;
    LOBYTE(v59) = v50;
    v57 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
    sub_AB7800();
    [(objc_class *)_.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];

    goto LABEL_28;
  }

  v44 = [(objc_class *)_.super.super.super.super.isa presentingViewController];
  if (v44)
  {
    v45 = v44;
    v46 = [v44 presentingViewController];

    if (v46)
    {
      sub_84CB1C(v3 + v39, v8);
      v47 = &v8[*(v6 + 32)];
      v48 = *v47;
      v49 = *(v47 + 1);
      LOBYTE(v47) = v47[16];
      *&v58 = v48;
      *(&v58 + 1) = v49;
      LOBYTE(v59) = v47;
      v57 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
      sub_AB7800();
      [v46 dismissViewControllerAnimated:1 completion:0];

LABEL_28:
      sub_85B8F4(v8);
      return;
    }
  }
}

id UIImage.centerCropIfNeeded(imageRect:)(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [v1 size];
    v3 = v2;
    v5 = v4;
  }

  else
  {
    v3 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  if ((sub_AB38D0() & 1) == 0 || vabdd_f64(1.0, v3 / v5) <= 0.05 || (result = UIImage.byCroppingToUniformCenter()()) == 0)
  {

    return v7;
  }

  return result;
}

Swift::Void __swiftcall ImagePicker.Coordinator.imagePickerControllerDidCancel(_:)(UIImagePickerController a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  *&v5 = __chkstk_darwin().n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [(objc_class *)a1.super.super.super.super.isa presentingViewController];
  if (v8)
  {
    v9 = v8;
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = (v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      v12 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier + 8);
      if (v12)
      {
        v13 = *v11;
        v14 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3D0, &qword_B315F0);
        v15 = swift_allocObject();
        *(v15 + 16) = xmmword_AF4EC0;
        *(v15 + 32) = v13;
        *(v15 + 40) = v12;

        isa = sub_AB9740().super.isa;

        [v14 deselectAssetsWithIdentifiers:isa];

        *v11 = 0;
        v11[1] = 0;

        [v14 setModalInPresentation:0];
      }
    }
  }

  v17 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
  sub_84CB1C(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
  v18 = &v7[*(v4 + 24)];
  v19 = *v18;
  v20 = *(v18 + 1);
  LOBYTE(v18) = v18[16];
  v26 = v19;
  v27 = v20;
  v28 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3B8, &qword_B315E8);
  sub_AB77F0();
  v21 = HIBYTE(v25);
  sub_85B8F4(v7);
  if (v21)
  {
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  }

  else
  {
    sub_84CB1C(v2 + v17, v7);
    v22 = &v7[*(v4 + 32)];
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v22) = v22[16];
    v26 = v23;
    v27 = v24;
    v28 = v22;
    HIBYTE(v25) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
    sub_AB7800();
    [(objc_class *)a1.super.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_85B8F4(v7);
  }
}

Swift::Void __swiftcall ImagePicker.Coordinator.picker(_:didFinishPicking:)(PHPickerViewController _, Swift::OpaquePointer didFinishPicking)
{
  v5 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_AB8EA0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  sub_AB4A70();
  __chkstk_darwin();
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didFinishPicking._rawValue + 2))
  {
    v15 = *(v9 + 80);
    v16 = v2;
    isa = _.super.super.super.isa;
    v29 = v12;
    v17 = (v15 + 32) & ~v15;
    v30 = v11;
    v18 = sub_AB8E80();
    sub_AB4A60();
    (*(v9 + 16))(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), didFinishPicking._rawValue + v17, v8);
    v19 = swift_allocObject();
    v20 = isa;
    *(v19 + 16) = v16;
    *(v19 + 24) = v20;
    (*(v9 + 32))(v19 + v17, &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
    v21 = v16;
    v22 = v20;
    v23 = sub_AB9F70();

    (*(v29 + 8))(v14, v30);
  }

  else
  {
    sub_84CB1C(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
    v24 = &v7[*(v5 + 32)];
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v24) = v24[16];
    v32 = v25;
    v33 = v26;
    v34 = v24;
    v31 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
    sub_AB7800();
    [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
    sub_85B8F4(v7);
  }
}

double sub_8582A4(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v29 = a5;
  v11 = sub_AB8EA0();
  v27 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v28 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v15 = &v26 - v14;
  v16 = sub_AB9990();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v12 + 16))(&v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a6, v11);
  sub_AB9940();
  v17 = a1;
  v18 = a2;
  sub_9007C(a1, a2);
  v19 = a3;
  swift_errorRetain();
  v20 = a4;
  v21 = v29;
  v22 = sub_AB9930();
  v23 = (*(v12 + 80) + 72) & ~*(v12 + 80);
  v24 = swift_allocObject();
  *(v24 + 2) = v22;
  *(v24 + 3) = &protocol witness table for MainActor;
  *(v24 + 4) = v17;
  *(v24 + 5) = v18;
  *(v24 + 6) = v19;
  *(v24 + 7) = v20;
  *(v24 + 8) = v21;
  (*(v12 + 32))(&v24[v23], v28, v27);
  sub_7C7F60(0, 0, v15, &unk_B318C8, v24);

  return result;
}

uint64_t sub_8584F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v13;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  sub_AB9940();
  v8[9] = sub_AB9930();
  v10 = sub_AB98B0();

  return _swift_task_switch(sub_8585A0, v10, v9);
}

uint64_t sub_8585A0()
{
  v1 = *(v0 + 32);

  if (v1 >> 60 != 15)
  {
    v3 = *(v0 + 24);
    v2 = *(v0 + 32);
    v4 = objc_allocWithZone(UIImage);
    sub_90090(v3, v2);
    sub_90090(v3, v2);
    isa = sub_AB3250().super.isa;
    v6 = [v4 initWithData:isa];

    sub_466A4(v3, v2);
    if (v6)
    {
      v7 = *(v0 + 48);
      v8 = sub_AB8E90();
      v9 = (v7 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier);
      *v9 = v8;
      v9[1] = v10;

      v11 = UIImagePNGRepresentation(v6);
      if (v11)
      {
        v12 = v11;
        v13 = sub_AB3260();
        v15 = v14;

        v16 = UIImage.centeredSquareCropRect.getter();
        v18 = v17;
        v20 = v19;
        v22 = v21;
        type metadata accessor for ImageEditingViewController();
        v23 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v24 = sub_AB3250().super.isa;
        v25 = [v23 _initWithSourceImageData:v24 cropRect:{v16, v18, v20, v22}];

        if (v25)
        {
          v26 = *(v0 + 48);
          [v25 setDelegate:v26];
          [v25 setModalInPresentation:1];
          v27 = v26 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker;
          if (*(v27 + *(type metadata accessor for ImagePicker(0) + 36)))
          {

            UIImagePickerController.setProperties(_:)(v28);
          }

          v30 = *(v0 + 24);
          v29 = *(v0 + 32);
          [*(v0 + 56) presentViewController:v25 animated:1 completion:0];
          [v25 becomeFirstResponder];
          sub_466A4(v30, v29);
        }

        else
        {
          sub_466A4(*(v0 + 24), *(v0 + 32));
        }

        sub_466B8(v13, v15);
      }

      else
      {
        sub_466A4(*(v0 + 24), *(v0 + 32));
      }

      goto LABEL_17;
    }

    sub_466A4(*(v0 + 24), *(v0 + 32));
  }

  v31 = *(v0 + 40);
  v32 = *(v0 + 48);
  sub_ABAD90(49);

  *(v0 + 16) = v31;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C728, &qword_B318D0);
  v49._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v49);

  v33 = *(v32 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v33)
  {
    v34 = *(v32 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);
    sub_85B8A0();
    v35 = swift_allocError();
    *v36 = 0xD00000000000002FLL;
    v36[1] = 0x8000000000B76790;

    v33(v35, 1);
    sub_17654(v33, v34);
  }

  else
  {
  }

  v37 = *(v0 + 56);
  v38 = sub_859834();
  [v37 presentViewController:v38 animated:1 completion:0];

  v39 = sub_AB8E90();
  if (v40)
  {
    v41 = v39;
    v42 = v40;
    v43 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3D0, &qword_B315F0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_AF4EC0;
    *(v44 + 32) = v41;
    *(v44 + 40) = v42;
    v45 = sub_AB9740().super.isa;

    [v43 deselectAssetsWithIdentifiers:v45];
  }

LABEL_17:
  v46 = *(v0 + 8);

  return v46();
}

double UIImage.centeredSquareCropRect.getter()
{
  [v0 size];
  v2 = v1;
  [v0 size];
  v4 = v3;
  [v0 size];
  v6 = v5;
  [v0 size];
  v8 = v7;
  [v0 size];
  v10 = v9;
  v12 = v11;
  [v0 size];
  v14 = (v10 - v13) * 0.5 + 0.0;
  v16 = (v12 - v15) * 0.5 + 0.0;
  if (v6 < v8)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0.0;
  }

  if (v6 < v8)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v14;
  }

  if (v4 >= v2)
  {
    v19 = v2;
  }

  else
  {
    v19 = v4;
  }

  v20 = v19;
  v26 = CGRectIntegral(*(&v17 - 1));
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  CGRectGetWidth(v26);
  v27.origin.x = x;
  v27.origin.y = y;
  v27.size.width = width;
  v27.size.height = height;
  CGRectGetHeight(v27);
  return x;
}

Swift::Void __swiftcall ImagePicker.Coordinator.documentPicker(_:didPickDocumentsAt:)(UIDocumentPickerViewController _, Swift::OpaquePointer didPickDocumentsAt)
{
  v3 = v2;
  v6 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_AB31C0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin();
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(didPickDocumentsAt._rawValue + 2))
  {
    isa = _.super.super.super.isa;
    (*(v10 + 16))(v13, didPickDocumentsAt._rawValue + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v9, v11);
    sub_AB3160();
    v14 = objc_allocWithZone(UIImage);
    v15 = sub_AB9260();

    v16 = [v14 initWithContentsOfFile:v15];

    if (v16)
    {
      v17 = [(objc_class *)isa view];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      [v17 endEditing:1];

      v19 = UIImagePNGRepresentation(v16);
      if (v19)
      {
        v20 = v19;
        v21 = sub_AB3260();
        v23 = v22;

        v24 = UIImage.centeredSquareCropRect.getter();
        v26 = v25;
        v28 = v27;
        v30 = v29;
        type metadata accessor for ImageEditingViewController();
        v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v32 = sub_AB3250().super.isa;
        v33 = [v31 _initWithSourceImageData:v32 cropRect:{v24, v26, v28, v30}];

        if (v33)
        {
          [v33 setDelegate:v3];
          [v33 setModalInPresentation:1];
          if (*(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v6 + 36)))
          {

            UIImagePickerController.setProperties(_:)(v34);
          }

          [(objc_class *)isa presentViewController:v33 animated:1 completion:0];

          sub_466B8(v21, v23);
          (*(v10 + 8))(v13, v9);
          return;
        }

        (*(v10 + 8))(v13, v9);
        sub_466B8(v21, v23);
      }

      else
      {
        (*(v10 + 8))(v13, v9);
      }

      return;
    }

    (*(v10 + 8))(v13, v9);
    _.super.super.super.isa = isa;
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_ABAD90(59);
  v50._countAndFlagsBits = 0xD000000000000025;
  v50._object = 0x8000000000B764F0;
  sub_AB94A0(v50);
  v51._countAndFlagsBits = sub_AB9770();
  sub_AB94A0(v51);

  v52._object = 0x8000000000B76520;
  v52._countAndFlagsBits = 0xD000000000000014;
  sub_AB94A0(v52);
  v35 = v48;
  v36 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
  if (v36)
  {
    v37 = v47;
    v38 = *(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);
    sub_85B8A0();
    v39 = swift_allocError();
    *v40 = v37;
    v40[1] = v35;

    v36(v39, 1);
    sub_17654(v36, v38);
  }

  else
  {
  }

  sub_84CB1C(v3 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v8);
  v41 = &v8[*(v6 + 32)];
  v42 = *v41;
  v43 = *(v41 + 1);
  LOBYTE(v41) = v41[16];
  v47 = v42;
  v48 = v43;
  v49 = v41;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
  sub_AB7800();
  [(objc_class *)_.super.super.super.isa dismissViewControllerAnimated:1 completion:0];
  sub_85B8F4(v8);
}

void ImagePicker.Coordinator.imagePlaygroundViewController(_:didCreateImageAt:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImagePicker(0);
  __chkstk_darwin();
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(NSData);
  sub_AB30F0(v8);
  v10 = v9;
  v11 = [v7 initWithContentsOfURL:v9];

  if (v11)
  {
    v33 = v11;
    v12 = sub_AB3260();
    v14 = v13;

    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
    type metadata accessor for ImageEditingViewController();
    v18 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    isa = sub_AB3250().super.isa;
    v20 = [v18 _initWithSourceImageData:isa cropRect:{CGRectNull.origin.x, y, width, height}];

    if (v20)
    {
      [v20 setDelegate:v2];
      [v20 setModalInPresentation:1];
      if (*(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker + *(v4 + 36)))
      {

        UIImagePickerController.setProperties(_:)(v21);
      }

      sub_466B8(v12, v14);
      [a1 presentViewController:v20 animated:1 completion:0];
    }

    else
    {
      sub_466B8(v12, v14);
    }

    v28 = v33;
  }

  else
  {
    v35 = 0;
    v36 = 0xE000000000000000;
    sub_ABAD90(52);
    v39._object = 0x8000000000B76540;
    v39._countAndFlagsBits = 0xD000000000000031;
    sub_AB94A0(v39);
    sub_AB31C0();
    sub_85BACC(&qword_E1C3D8, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v40._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v40);

    v41._countAndFlagsBits = 46;
    v41._object = 0xE100000000000000;
    sub_AB94A0(v41);
    v22 = v36;
    v23 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler);
    if (v23)
    {
      v24 = v35;
      v25 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8);
      sub_85B8A0();
      v26 = swift_allocError();
      *v27 = v24;
      v27[1] = v22;

      v23(v26, 1);
      sub_17654(v23, v25);
    }

    else
    {
    }

    sub_84CB1C(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v6);
    v29 = &v6[*(v4 + 32)];
    v30 = *v29;
    v31 = *(v29 + 1);
    LOBYTE(v29) = v29[16];
    v35 = v30;
    v36 = v31;
    v37 = v29;
    v34 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
    sub_AB7800();
    [a1 dismissViewControllerAnimated:1 completion:0];
    sub_85B8F4(v6);
  }
}

uint64_t _s11MusicCoreUI11ImagePickerV11CoordinatorC08documentE12WasCancelledyySo010UIDocumentE14ViewControllerCF_0(void *a1)
{
  v3 = type metadata accessor for ImagePicker(0) - 8;
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_84CB1C(v1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v5);
  v6 = &v5[*(v3 + 40)];
  v7 = *v6;
  v8 = *(v6 + 1);
  LOBYTE(v6) = v6[16];
  v11 = v7;
  v12 = v8;
  v13 = v6;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
  sub_AB7800();
  [a1 dismissViewControllerAnimated:1 completion:0];
  return sub_85B8F4(v5);
}

void sub_85963C(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for ImagePicker(0) - 8;
  __chkstk_darwin();
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_84CB1C(a1 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker, v7);
  v8 = &v7[*(v5 + 40)];
  v9 = *v8;
  v10 = *(v8 + 1);
  LOBYTE(v8) = v8[16];
  v14 = v9;
  v15 = v10;
  v16 = v8;
  v13[7] = 0;
  v11 = a3;
  v12 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
  sub_AB7800();
  [v11 dismissViewControllerAnimated:1 completion:0];
  sub_85B8F4(v7);
}

Swift::Void __swiftcall ImagePicker.Coordinator.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  type metadata accessor for ImagePicker(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C390, &qword_B2C3A0);
  sub_AB7800();
}

id sub_859834()
{
  v1 = OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController;
  v2 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController);
  }

  else
  {
    v4 = sub_859894();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_859894()
{
  sub_AB35C0();
  __chkstk_darwin();
  v0 = sub_AB9250();
  v1 = *(v0 - 8);
  __chkstk_darwin();
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = v18 - v4;
  sub_AB91E0();
  v6 = *(v1 + 16);
  v6(v3, v5, v0);
  if (qword_E16870 != -1)
  {
    swift_once();
  }

  v7 = qword_E73660;
  v8 = qword_E73660;
  sub_AB3550();
  v9 = v8;
  v18[2] = v7;
  v18[0] = sub_AB9320();
  v10 = *(v1 + 8);
  v10(v5, v0);
  sub_AB91E0();
  v6(v3, v5, v0);
  sub_AB3550();
  sub_AB9320();
  v18[1] = v1 + 16;
  v10(v5, v0);
  v11 = sub_AB9260();
  v18[0] = v6;
  v12 = v11;

  v13 = sub_AB9260();

  v14 = [objc_opt_self() alertControllerWithTitle:v12 message:v13 preferredStyle:1];

  sub_AB91E0();
  (v18[0])(v3, v5, v0);
  sub_AB3550();
  sub_AB9320();
  v10(v5, v0);
  v15 = sub_AB9260();

  v16 = [objc_opt_self() actionWithTitle:v15 style:1 handler:0];

  [v14 addAction:v16];
  return v14;
}

id sub_859CD8(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

char *ImagePicker.makeCoordinator()()
{
  v1 = *(type metadata accessor for ImagePicker(0) - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  sub_84CB1C(v0, &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for ImagePicker.Coordinator(0);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = &v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_selectedPhotoIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator____lazy_storage___downloadFailureAlertController] = 0;
  sub_84CB1C(&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), &v4[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_imagePicker]);
  v14.receiver = v4;
  v14.super_class = v3;
  v7 = objc_msgSendSuper2(&v14, "init");
  sub_85B8F4(&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_84CB1C(v0, &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v9 = swift_allocObject();
  sub_85BCC4(&v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  v10 = &v7[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  v11 = *&v7[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler];
  v12 = *&v7[OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker11Coordinator_pickHandler + 8];
  *v10 = sub_85BD28;
  v10[1] = v9;
  sub_17654(v11, v12);
  return v7;
}

uint64_t sub_859F18(void *a1, char a2, uint64_t a3)
{
  v6 = sub_AB4BC0();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = Logger.playlistCovers.unsafeMutableAddressor();
    (*(v7 + 16))(v9, v10, v6);
    swift_errorRetain();
    v11 = sub_AB4BA0();
    v12 = sub_AB9F30();
    sub_21A5E8(a1, 1);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v28 = v14;
      *v13 = 136446210;
      v30 = a1;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C710, &qword_B309D0);
      v15 = sub_AB9350();
      v17 = sub_7AB3E0(v15, v16, &v28);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_0, v11, v12, "ImagePicker failed with error: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
    }

    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v19 = type metadata accessor for ImagePicker(0);
    v20 = (a3 + v19[5]);
    v21 = *v20;
    v22 = *(v20 + 2);
    v28 = v21;
    v29 = v22;
    v30 = a1;
    v23 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C718, &unk_B318B0);
    result = sub_AB7800();
    v24 = *(a3 + v19[7]);
    if (v24)
    {
      v25 = (a3 + v19[6]);
      v26 = *v25;
      v27 = v25[1];
      LOBYTE(v25) = *(v25 + 16);
      *&v28 = v26;
      *(&v28 + 1) = v27;
      LOBYTE(v29) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C3B8, &qword_B315E8);
      sub_AB77F0();
      return v24(v30);
    }
  }

  return result;
}

char *sub_85A1C8@<X0>(char **a1@<X8>)
{
  result = ImagePicker.makeCoordinator()();
  *a1 = result;
  return result;
}

uint64_t sub_85A1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_85BACC(&qword_E1C700, type metadata accessor for ImagePicker, &protocol conformance descriptor for ImagePicker);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_85A284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_85BACC(&qword_E1C700, type metadata accessor for ImagePicker, &protocol conformance descriptor for ImagePicker);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_85A318(uint64_t a1)
{
  sub_85BACC(&qword_E1C700, type metadata accessor for ImagePicker, &protocol conformance descriptor for ImagePicker);
  sub_AB6970();
  __break(1u);
}

id ImageEditingViewController.init(navigationBarClass:toolbarClass:)(uint64_t ObjCClassFromMetadata, uint64_t a2)
{
  v3 = a2;
  if (!ObjCClassFromMetadata)
  {
    v4 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for ImageEditingViewController();
  return objc_msgSendSuper2(&v6, "initWithNavigationBarClass:toolbarClass:", v4, v3);
}

id ImageEditingViewController.init(rootViewController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithRootViewController:", a1);

  return v3;
}

id ImageEditingViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ImageEditingViewController();
  v6 = objc_msgSendSuper2(&v8, "initWithNibName:bundle:", v5, a3);

  return v6;
}

id ImageEditingViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ImageEditingViewController();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_85A6F8()
{
  v0 = sub_7B6EB8(&off_D34DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C760, &qword_B318F8);
  result = swift_arrayDestroy();
  static UIImagePickerController.profileImagePickerProperties = v0;
  return result;
}

uint64_t sub_85A79C()
{

  return swift_deallocObject();
}

void sub_85A7DC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild);
  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_presentedChild) = v1;
  v4 = v1;

  *(v2 + OBJC_IVAR____TtCV11MusicCoreUI11ImagePicker30DummyImagePickerViewController_hasPresentationInProgress) = 0;
}

double static UIImagePickerController.profileImagePickerProperties.getter()
{
  if (qword_E16B40 != -1)
  {
    swift_once();
  }

  return result;
}

unint64_t sub_85A87C(uint64_t a1)
{
  sub_ABB5C0();
  PlaylistCovers.Cover.Representation.hash(into:)(v4);
  v2 = sub_ABB610();

  return sub_85A9A8(a1, v2);
}

unint64_t sub_85A8E8(uint64_t a1)
{
  v1 = a1;
  sub_ABB5C0();
  sub_AB93F0();

  v2 = sub_ABB610();

  return sub_85AA8C(v1, v2);
}

unint64_t sub_85A9A8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      v6 = *(v2 + 48) + 56 * v4;
      v8 = *(v6 + 16);
      v7 = *(v6 + 32);
      v9 = *v6;
      v14 = *(v6 + 48);
      v13[1] = v8;
      v13[2] = v7;
      v13[0] = v9;
      sub_70B8A0(v13, v12);
      v10 = static PlaylistCovers.Cover.Representation.== infix(_:_:)();
      sub_85C600(v13);
      if (v10)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_85AA8C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v14 = ~v3;
    while (1)
    {
      v5 = *(*(v2 + 48) + v4);
      v6 = v5 == 1 ? 0xD000000000000014 : 0xD000000000000015;
      v7 = v5 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      v8 = *(*(v2 + 48) + v4) ? v6 : 0xD000000000000015;
      v9 = *(*(v2 + 48) + v4) ? v7 : "ntroller1XCroppedImage";
      if (a1)
      {
        v10 = a1 == 1 ? 0xD000000000000014 : 0xD000000000000015;
        v11 = a1 == 1 ? "cannedHeightAnimation" : "cannedWidthAnimation";
      }

      else
      {
        v10 = 0xD000000000000015;
        v11 = "ntroller1XCroppedImage";
      }

      if (v8 == v10 && (v9 | 0x8000000000000000) == (v11 | 0x8000000000000000))
      {
        break;
      }

      v12 = sub_ABB3C0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v14;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void sub_85AC08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A88, &qword_B2AC90);
  v34 = v4;
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v35 = *(*(v5 + 56) + v21);
      if ((v34 & 1) == 0)
      {

        sub_90090(v35, *(&v35 + 1));
      }

      sub_ABB5C0();
      sub_AB93F0();
      v25 = sub_ABB610();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v35;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_85AEC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C730, &qword_B318D8);
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_9ACFC((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_9ACA0(v23, &v37);
        sub_808B0(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_ABACF0(*(v7 + 40));
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_9ACFC(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_85B17C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C708, &unk_B318A0);
  v62 = v4;
  v6 = sub_ABB0A0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v60 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v23 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v26 = v23 | (v8 << 6);
      v27 = *(v5 + 48) + 56 * v26;
      if (v62)
      {
        v28 = *(v27 + 8);
        v29 = *(v27 + 24);
        v30 = *(v27 + 40);
        v31 = *v27;
        v32 = *(v5 + 56) + 136 * v26;
        v33 = *(v32 + 80);
        v79 = *(v32 + 64);
        v80 = v33;
        v34 = *(v32 + 112);
        v81 = *(v32 + 96);
        v82 = v34;
        v35 = *(v32 + 16);
        v75 = *v32;
        v76 = v35;
        v36 = *(v32 + 48);
        v77 = *(v32 + 32);
        v78 = v36;
        v37 = *(v32 + 128);
      }

      else
      {
        v61 = *(v27 + 8);
        v63 = *(v27 + 40);
        v64 = *(v27 + 24);
        v31 = *v27;
        v38 = *(v5 + 56) + 136 * v26;
        v66 = *v38;
        v39 = *(v38 + 64);
        v41 = *(v38 + 16);
        v40 = *(v38 + 32);
        v69 = *(v38 + 48);
        v70 = v39;
        v67 = v41;
        v68 = v40;
        v43 = *(v38 + 96);
        v42 = *(v38 + 112);
        v44 = *(v38 + 80);
        v74 = *(v38 + 128);
        v72 = v43;
        v73 = v42;
        v71 = v44;
        v37 = v74;
        v45 = v61;
        v46 = *(&v61 + 1);
        v47 = v64;
        v48 = *(&v64 + 1);
        v49 = v63;
        v50 = *(&v63 + 1);
        sub_85C360(&v66, v65);
        v30 = v63;
        v29 = v64;
        v28 = v61;
        v79 = v70;
        v80 = v71;
        v81 = v72;
        v82 = v73;
        v75 = v66;
        v76 = v67;
        v77 = v68;
        v78 = v69;
      }

      v83[0] = v31;
      *&v83[8] = v28;
      *&v83[24] = v29;
      *&v83[40] = v30;
      sub_ABB5C0();
      PlaylistCovers.Cover.Representation.hash(into:)(&v66);
      v51 = sub_ABB610();
      v52 = -1 << *(v7 + 32);
      v53 = v51 & ~v52;
      v54 = v53 >> 6;
      if (((-1 << v53) & ~*(v14 + 8 * (v53 >> 6))) == 0)
      {
        v55 = 0;
        v56 = (63 - v52) >> 6;
        while (++v54 != v56 || (v55 & 1) == 0)
        {
          v57 = v54 == v56;
          if (v54 == v56)
          {
            v54 = 0;
          }

          v55 |= v57;
          v58 = *(v14 + 8 * v54);
          if (v58 != -1)
          {
            v15 = __clz(__rbit64(~v58)) + (v54 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v53) & ~*(v14 + 8 * (v53 >> 6)))) | v53 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 56 * v15;
      v17 = *&v83[16];
      *v16 = *v83;
      *(v16 + 16) = v17;
      *(v16 + 32) = *&v83[32];
      *(v16 + 48) = *&v83[48];
      v18 = *(v7 + 56) + 136 * v15;
      v19 = v80;
      *(v18 + 64) = v79;
      *(v18 + 80) = v19;
      v20 = v82;
      *(v18 + 96) = v81;
      *(v18 + 112) = v20;
      v21 = v76;
      *v18 = v75;
      *(v18 + 16) = v21;
      v22 = v78;
      *(v18 + 32) = v77;
      *(v18 + 48) = v22;
      *(v18 + 128) = v37;
      ++*(v7 + 16);
    }

    v24 = v8;
    while (1)
    {
      v8 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v25 = v9[v8];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v12 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v62 & 1) == 0)
    {

      v3 = v60;
      goto LABEL_34;
    }

    v59 = 1 << *(v5 + 32);
    v3 = v60;
    if (v59 >= 64)
    {
      bzero((v5 + 64), ((v59 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v59;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_85B578()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E17A88, &qword_B2AC90);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        sub_90090(v22, *(&v22 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_85B6FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C730, &qword_B318D8);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_9ACA0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_808B0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        sub_9ACFC(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

unint64_t sub_85B8A0()
{
  result = qword_E1C3A8;
  if (!qword_E1C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C3A8);
  }

  return result;
}

uint64_t sub_85B8F4(uint64_t a1)
{
  v2 = type metadata accessor for ImagePicker(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_85B950()
{
  v1 = sub_AB8EA0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_85BA1C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *(sub_AB8EA0() - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  return sub_8582A4(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_85BACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_85BB34()
{
  v1 = type metadata accessor for ImagePicker(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E16CD0, &qword_B315E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB5A00();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = v3 + *(v1 + 20);

  if (*(v3 + *(v1 + 28)))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_85BCC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImagePicker(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_85BD28(void *a1, char a2)
{
  v5 = *(type metadata accessor for ImagePicker(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_859F18(a1, a2 & 1, v6);
}

unint64_t sub_85BDAC()
{
  result = qword_E1C3E8;
  if (!qword_E1C3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C3E8);
  }

  return result;
}

uint64_t sub_85BE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A610, &unk_B2F268);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_85BF3C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E1A610, &unk_B2F268);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_85C004(uint64_t a1)
{
  sub_85C18C(319);
  if (v1 <= 0x3F)
  {
    sub_85C230(319, &unk_E1C470, &qword_E175C0, &qword_B2A1E8, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_85C1E4(319, &unk_E1C480, &type metadata for ImagePicker.SourceType);
      if (v3 <= 0x3F)
      {
        sub_85C230(319, &qword_E19CD8, &qword_E1C490, &qword_B31780, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_85C1E4(319, &qword_E1C498, &type metadata for Bool);
          if (v5 <= 0x3F)
          {
            sub_85C230(319, &qword_E1C4A0, &unk_E1C4A8, &qword_B31788, &type metadata accessor for Optional);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_85C18C(uint64_t a1)
{
  if (!qword_E1A698)
  {
    sub_AB5A00();
    v1 = sub_AB57D0();
    if (!v2)
    {
      atomic_store(v1, &qword_E1A698);
    }
  }
}

void sub_85C1E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_AB7860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_85C230(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_85C29C(uint64_t a1)
{
  result = type metadata accessor for ImagePicker(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_85C3BC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C708, &unk_B318A0);
  v2 = *v0;
  v3 = sub_ABB090();
  v4 = v3;
  if (*(v2 + 16))
  {
    v49 = v1;
    v5 = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v7)
    {
      memmove(v5, (v2 + 64), 8 * v7);
    }

    v9 = 0;
    v50 = v2;
    v51 = v4;
    *(v4 + 16) = *(v2 + 16);
    v10 = 1 << *(v2 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v2 + 64);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v17 = v14 | (v9 << 6);
      v18 = 56 * v17;
      v19 = *(v2 + 56);
      v20 = *(v2 + 48) + 56 * v17;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      v25 = *(v20 + 24);
      v24 = *(v20 + 32);
      v27 = *(v20 + 40);
      v26 = *(v20 + 48);
      v17 *= 136;
      v28 = (v19 + v17);
      v30 = v28[1];
      v29 = v28[2];
      v31 = v28[4];
      v56 = v28[3];
      v57 = v31;
      v33 = v28[6];
      v32 = v28[7];
      v34 = v28[5];
      v61 = *(v28 + 16);
      v59 = v33;
      v60 = v32;
      v58 = v34;
      v53 = *v28;
      v54 = v30;
      v55 = v29;
      v35 = *(v51 + 48) + v18;
      *v35 = v21;
      *(v35 + 8) = v22;
      *(v35 + 16) = v23;
      *(v35 + 24) = v25;
      *(v35 + 32) = v24;
      *(v35 + 40) = v27;
      *(v35 + 48) = v26;
      v36 = *(v51 + 56) + v17;
      *v36 = v53;
      v37 = v54;
      v38 = v55;
      v39 = v57;
      *(v36 + 48) = v56;
      *(v36 + 64) = v39;
      *(v36 + 16) = v37;
      *(v36 + 32) = v38;
      v40 = v58;
      v41 = v59;
      v42 = v60;
      *(v36 + 128) = v61;
      *(v36 + 96) = v41;
      *(v36 + 112) = v42;
      *(v36 + 80) = v40;
      v43 = v22;
      v44 = v23;
      v2 = v50;
      v45 = v25;
      v46 = v24;
      v47 = v27;
      v48 = v26;
      sub_85C360(&v53, v52);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v1 = v49;
        v4 = v51;
        goto LABEL_21;
      }

      v16 = *(v6 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

uint64_t sub_85C654()
{
  v1 = sub_AB8EA0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();
  v4 = *(v0 + 40);
  if (v4 >> 60 != 15)
  {
    sub_466B8(*(v0 + 32), v4);
  }

  (*(v2 + 8))(v0 + ((v3 + 72) & ~v3), v1);

  return swift_deallocObject();
}

uint64_t sub_85C748(uint64_t a1)
{
  sub_AB8EA0();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_17BD0;

  return sub_8584F8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_85C870(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C6F8, &qword_B31898);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_85C8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C6F8, &qword_B31898);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double InteractionFeedbackLoadingView.body.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = a1;
  *a3 = sub_AB62E0();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C768, &qword_B31900);
  sub_85CA94(v5, a2, (a3 + *(v8 + 44)));
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = v5;
  *(v9 + 32) = a2;
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C770, &qword_B31908) + 36));
  *v10 = sub_85D198;
  v10[1] = v9;
  v10[2] = 0;
  v10[3] = 0;

  return result;
}

uint64_t sub_85CA94@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v40 = a2;
  v41 = a3;
  v4 = sub_AB62A0();
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin();
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v37 = &v34 - v6;
  v7 = sub_AB6850();
  v35 = *(v7 - 8);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1AC18, &qword_B2F918);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v34 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C790, &qword_B319D0);
  v14 = *(v42 - 8);
  __chkstk_darwin();
  v16 = &v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C798, &qword_B319D8);
  __chkstk_darwin();
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v20 = &v34 - v19;
  v44 = a1;
  v45 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7640();
  v21 = 1;
  if (v43 == 1)
  {
    sub_AB58D0();
    sub_AB6840();
    sub_36A00(&qword_E1AC10, &qword_E1AC18, &qword_B2F918, &protocol conformance descriptor for ProgressView<A, B>);
    sub_85D71C(&qword_E1C7A8, &type metadata accessor for CircularProgressViewStyle, &protocol conformance descriptor for CircularProgressViewStyle);
    sub_AB6F70();
    (*(v35 + 8))(v9, v7);
    (*(v11 + 8))(v13, v10);
    v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C7B0, &qword_B319E8) + 36)];
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C7B8, &qword_B319F0) + 28);
    v24 = enum case for ControlSize.large(_:);
    v25 = sub_AB57B0();
    (*(*(v25 - 8) + 104))(v22 + v23, v24, v25);
    *v22 = swift_getKeyPath();
    v26 = v37;
    sub_AB6290();
    v28 = v38;
    v27 = v39;
    (*(v38 + 16))(v36, v26, v39);
    sub_85D71C(&qword_E1C7C0, &type metadata accessor for OpacityTransition, &protocol conformance descriptor for OpacityTransition);
    v29 = sub_AB59E0();
    (*(v28 + 8))(v26, v27);
    *&v16[*(v42 + 36)] = v29;
    sub_85D764(v16, v20);
    v21 = 0;
  }

  (*(v14 + 56))(v20, v21, 1, v42);
  sub_85D554(v20, v18);
  v30 = v41;
  *v41 = 0;
  *(v30 + 8) = 1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C7A0, &qword_B319E0);
  sub_85D554(v18, v30 + *(v31 + 48));
  v32 = v30 + *(v31 + 64);
  *v32 = 0;
  v32[8] = 1;
  sub_85D5C4(v20);
  return sub_85D5C4(v18);
}

uint64_t sub_85D028(char a1, uint64_t a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = sub_AB9990();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a2;

  static Task<>.delayed(by:priority:task:)(v7, &unk_B319C8, v9, &type metadata for () + 8, a3);

  return sub_85D4EC(v7);
}

uint64_t sub_85D160()
{

  return swift_deallocObject();
}

uint64_t sub_85D1C4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 32) = a3;
  *(v3 + 41) = a2;
  return _swift_task_switch(sub_85D1E8, 0, 0);
}

uint64_t sub_85D1E8()
{
  *(v0 + 16) = *(v0 + 41);
  *(v0 + 24) = *(v0 + 32);
  *(v0 + 40) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E19218, &qword_B306A0);
  sub_AB7650();
  v1 = *(v0 + 8);

  return v1();
}

double sub_85D284@<D0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = v2[2];
  *a2 = sub_AB62E0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C768, &qword_B31900);
  sub_85CA94(v5, v6, (a2 + *(v7 + 44)));
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v5;
  *(v8 + 32) = v6;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C770, &qword_B31908) + 36));
  *v9 = sub_85D7DC;
  v9[1] = v8;
  v9[2] = 0;
  v9[3] = 0;

  return result;
}

unint64_t sub_85D37C()
{
  result = qword_E1C778;
  if (!qword_E1C778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C770, &qword_B31908);
    sub_36A00(&qword_E1C780, &qword_E1C788, &unk_B319B0, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C778);
  }

  return result;
}

uint64_t sub_85D434(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_17BD0;

  return sub_85D1C4(a1, v4, v5);
}

uint64_t sub_85D4EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C720, &qword_B309B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_85D554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C798, &qword_B319D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_85D5C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C798, &qword_B319D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_85D650(uint64_t a1)
{
  sub_AB57B0();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_AB5FD0();
}

uint64_t sub_85D71C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_85D764(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E1C790, &qword_B319D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_85D7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a6;
  v18[1] = a7;
  v13 = *(a3 - 8);
  __chkstk_darwin();
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB5860();
  v16 = __chkstk_darwin();
  (*(v13 + 16))(v15, v7, a3, v16);
  sub_AB5870();
  v18[4] = a3;
  v18[5] = a4;
  v18[6] = a5;
  v18[7] = v18[0];
  v18[8] = a1;
  v18[9] = a2;
  swift_getWitnessTable();
  return sub_AB5AF0();
}

int *LayoutProviderStack.init(layoutProvider:alignment:spacing:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11)
{
  (*(*(a8 - 8) + 32))(a9, a1, a8);
  v23 = a8;
  v24 = a10;
  v25 = a11;
  result = type metadata accessor for LayoutProviderStack(0, &v23);
  v20 = (a9 + result[13]);
  *v20 = a2;
  v20[1] = a3;
  v21 = a9 + result[14];
  *v21 = a4;
  *(v21 + 8) = a5 & 1;
  v22 = (a9 + result[15]);
  *v22 = a6;
  v22[1] = a7;
  return result;
}

uint64_t LayoutProviderStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C7C8, &qword_B31A30);
  v4 = *(a1 + 24);
  sub_85DDDC(&qword_E1C7D0, &protocol conformance descriptor for _LayoutRoot<A>);
  v5 = sub_AB5AE0();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin();
  v11 = v22 - v10;
  (*(*(a1 + 32) + 8))(v23, *(v2 + *(a1 + 52)), *(v2 + *(a1 + 52) + 8), *(v2 + *(a1 + 56)), *(v2 + *(a1 + 56) + 8), *(a1 + 16), v9);
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v12 = __chkstk_darwin();
  (*(v14 + 16))(v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  v22[4] = sub_AB7AB0();
  v15 = (v2 + *(a1 + 60));
  v16 = *v15;
  v17 = v15[1];
  v18 = sub_85DD88();
  v19 = *(a1 + 40);
  sub_85D7E0(v16, v17, &type metadata for AnyLayout, v4, v18, v19, v8);

  __swift_destroy_boxed_opaque_existential_0(v23);
  v22[2] = sub_85DDDC(&qword_E1C7E0, &protocol conformance descriptor for _LayoutRoot<A>);
  v22[3] = v19;
  swift_getWitnessTable();
  sub_7FF188();
  v20 = *(v6 + 8);
  v20(v8, v5);
  sub_7FF188();
  return (v20)(v11, v5);
}

unint64_t sub_85DD88()
{
  result = qword_E1C7D8;
  if (!qword_E1C7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C7D8);
  }

  return result;
}

uint64_t sub_85DDDC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C7C8, &qword_B31A30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t AxisStack.init(axis:alignment:spacing:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result & 1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5 & 1;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

double AxisStack.body.getter(uint64_t a1)
{
  v15[0] = *v1;
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  (*(*(&type metadata for Axis - 1) + 32))(v21, v15, &type metadata for Axis);
  v27 = &type metadata for Axis;
  *&v28 = v8;
  *(&v28 + 1) = &protocol witness table for Axis;
  v29 = v9;
  v10 = type metadata accessor for LayoutProviderStack(0, &v27);
  v11 = &v21[v10[13]];
  *v11 = v2;
  v11[1] = v3;
  v12 = &v21[v10[14]];
  *v12 = v4;
  v12[8] = v5;
  v13 = &v21[v10[15]];
  *v13 = v7;
  v13[1] = v6;
  v15[0] = v21[0];
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v27 = &type metadata for Axis;
  *&v28 = v8;
  *(&v28 + 1) = &protocol witness table for Axis;
  v29 = v9;
  type metadata accessor for LayoutProviderStack(0, &v27);
  swift_getWitnessTable();
  sub_7FF188();

  v21[0] = v27;
  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  sub_7FF188();

  return result;
}

unint64_t Axis.layout(alignment:spacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_85E080();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_85E0D4();
  }

  *(a6 + 24) = v10;
  *(a6 + 32) = result;
  *a6 = v12;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4 & 1;
  return result;
}

unint64_t sub_85E080()
{
  result = qword_E1C7E8;
  if (!qword_E1C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E1C7E8);
  }

  return result;
}

unint64_t sub_85E0D4()
{
  result = qword_E1C7F0[0];
  if (!qword_E1C7F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_E1C7F0);
  }

  return result;
}

unint64_t sub_85E1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  if (*v5)
  {
    v10 = &type metadata for VStackLayout;
    result = sub_85E080();
    v12 = a1;
  }

  else
  {
    v12 = a2;
    v10 = &type metadata for HStackLayout;
    result = sub_85E0D4();
  }

  *(a5 + 24) = v10;
  *(a5 + 32) = result;
  *a5 = v12;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4 & 1;
  return result;
}

void sub_85E228(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_7FCB50();
    if (v2 <= 0x3F)
    {
      sub_7FD734();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_85E2D0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_85E41C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_85E5F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_85E62C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_85E674(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_85E6D8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E1C7C8, &qword_B31A30);
  sub_85DDDC(&qword_E1C7D0, &protocol conformance descriptor for _LayoutRoot<A>);
  sub_AB5AE0();
  sub_85DDDC(&qword_E1C7E0, &protocol conformance descriptor for _LayoutRoot<A>);
  return swift_getWitnessTable();
}

uint64_t sub_85E7A0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4[0] = &type metadata for Axis;
  v4[1] = v1;
  v4[2] = &protocol witness table for Axis;
  v4[3] = v2;
  type metadata accessor for LayoutProviderStack(255, v4);
  return swift_getWitnessTable();
}

uint64_t sub_85E800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin();
  v10 = &v14 - v9;
  v11(v8);
  sub_7FF188();
  v12 = *(v5 + 8);
  v12(v7, a4);
  sub_7FF188();
  return (v12)(v10, a4);
}

char *LoadingView.__allocating_init(title:style:usesSubtitleTextColor:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = a4;
  v9 = objc_allocWithZone(v4);
  return LoadingView.init(title:style:usesSubtitleTextColor:)(a1, a2, a3 & 0xFFFFFFFFFFLL | (((a3 >> 40) & 1) << 40), v5);
}

char *LoadingView.init(title:style:usesSubtitleTextColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v9 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style];
  *v9 = 0;
  *(v9 + 2) = 256;
  v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition] = 1;
  v10 = &v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_title];
  *v10 = 0;
  v10[1] = 0;
  v11 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  *&v4[v11] = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v12 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  *&v4[v12] = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *&v4[OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar] = 0;
  swift_beginAccess();
  *v10 = a1;
  v10[1] = a2;

  swift_beginAccess();
  v9[4] = BYTE4(a3);
  *v9 = a3;
  v9[5] = BYTE5(a3) & 1;
  v29.receiver = v4;
  v29.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v29, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v14 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator;
  v15 = *&v13[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator];
  v16 = v13;
  [v15 setHidesWhenStopped:1];
  v17 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label;
  v18 = *&v16[OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label];
  if (a2)
  {
    v19 = sub_AB9260();
  }

  else
  {
    v19 = 0;
  }

  [v18 setText:v19];

  [*&v16[v17] setAdjustsFontForContentSizeCategory:1];
  v20 = qword_E16B48;
  v21 = *&v16[v17];
  if (v20 != -1)
  {
    swift_once();
  }

  [v21 setFont:qword_E1C8F8];

  [*&v16[v17] setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityMedium];
  [*&v16[v17] setNumberOfLines:0];
  [*&v16[v17] setTextAlignment:1];
  if (a4)
  {
    v22 = *&v16[v17];
    v23 = objc_opt_self();
    v24 = v22;
    v25 = [v23 secondaryLabelColor];
    [v24 setTextColor:v25];
  }

  sub_85ECF8();
  [v16 addSubview:*&v16[v17]];
  [v16 addSubview:*&v13[v14]];
  v26 = sub_85EE6C();
  [v16 addSubview:v26];

  return v16;
}

id sub_85ECF8()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  if (*(v1 + 5))
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v2 = sub_85EE6C();
    [v2 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:1];
  }

  else if (((*v1 | (*(v1 + 4) << 32)) & 0x100000000) != 0)
  {
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) startAnimating];
    v7 = sub_85EE6C();
    [v7 setHidden:1];

    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
  }

  else
  {
    v4 = *v1;
    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_activityIndicator) stopAnimating];
    v5 = sub_85EE6C();
    [v5 setHidden:0];

    [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_label) setHidden:0];
    LODWORD(v6) = v4;
    return [*(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar) setProgress:v6];
  }
}

id sub_85EE6C()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar;
  v2 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView____lazy_storage___progressBar);
  }

  else
  {
    v4 = [objc_allocWithZone(UIProgressView) initWithProgressViewStyle:1];
    v5 = [objc_opt_self() systemFillColor];
    [v4 setTrackTintColor:v5];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

unint64_t LoadingView.style.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  return *v1 | (*(v1 + 4) << 32) | (*(v1 + 5) << 40);
}

float LoadingView.style.setter(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style);
  swift_beginAccess();
  v5 = *(v3 + 4);
  v6 = *v3;
  v7 = *(v3 + 5);
  *v3 = a1;
  *(v3 + 4) = BYTE4(a1);
  *(v3 + 5) = BYTE5(a1) & 1;
  if ((a1 & 0x10000000000) != 0)
  {
    if (v7)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (v7)
  {
    goto LABEL_5;
  }

  v8 = v6 | (v5 << 32);
  if ((a1 & 0x100000000) != 0)
  {
    if ((v8 & 0x100000000) != 0)
    {
      return result;
    }

    goto LABEL_5;
  }

  if ((v8 & 0x100000000) != 0 || (result = *&a1, *&a1 != *&v8))
  {
LABEL_5:
    sub_85ECF8();
  }

  return result;
}

void (*LoadingView.style.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_style;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 4);
  v8 = *(v6 + 5);
  *(v4 + 40) = *v6;
  v4 += 40;
  *(v4 + 4) = v7;
  *(v4 + 5) = v8;
  return sub_85F104;
}

void sub_85F104(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = (*(*a1 + 24) + *(*a1 + 32));
  v4 = *(*a1 + 44);
  v5 = *(*a1 + 45);
  v6 = *v3 | (*(v3 + 4) << 32);
  v7 = *(v3 + 5);
  *v3 = v2;
  *(v3 + 4) = v4;
  *(v3 + 5) = v5;
  if (v5)
  {
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (v7)
  {
LABEL_5:
    sub_85ECF8();
    goto LABEL_6;
  }

  if (((v2 | (v4 << 32)) & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((v6 & 0x100000000) != 0 || *&v2 != *&v6)
  {
    goto LABEL_5;
  }

LABEL_6:

  free(v1);
}

uint64_t LoadingView.titlePosition.getter()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  return *(v0 + v1);
}

void LoadingView.titlePosition.setter(unsigned __int8 a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  swift_beginAccess();
  v4 = v1[v3];
  v1[v3] = a1;
  if (v4 != a1)
  {
    [v1 setNeedsLayout];
  }
}

void (*LoadingView.titlePosition.modify(uint64_t *a1))(id **a1)
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
  v5 = OBJC_IVAR____TtC11MusicCoreUI11LoadingView_titlePosition;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_85F2F0;
}