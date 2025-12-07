uint64_t sub_1B8ECE508(void *a1, void *a2)
{
  v213 = type metadata accessor for Tvpb_Parent(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v210 = v6;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD850, &qword_1B9663FC0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v208 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C8, &qword_1B9663DB0);
  v11 = OUTLINED_FUNCTION_183(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44_0();
  v211 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v214 = &v208 - v14;
  v218 = type metadata accessor for Tvpb_CommonSense(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  v215 = v16;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD858, &qword_1B9663FC8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  v219 = &v208 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7C0, &qword_1B9663DA8);
  v20 = OUTLINED_FUNCTION_183(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  v216 = v21;
  MEMORY[0x1EEE9AC00](v22);
  v220 = &v208 - v23;
  type metadata accessor for Tvpb_ContentRating(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_21();
  v221 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD860, &unk_1B9663FD0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_79();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD7B8, &qword_1B9663DA0);
  v29 = OUTLINED_FUNCTION_183(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_44_0();
  v222 = v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v208 - v32;
  OUTLINED_FUNCTION_521((a1 + 2), v298);
  v35 = a1[2];
  v34 = a1[3];
  OUTLINED_FUNCTION_521((a2 + 2), v297);
  v36 = v35 == a2[2] && v34 == a2[3];
  if (!v36 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521((a1 + 4), v296);
  v37 = a1[4];
  v38 = a1[5];
  OUTLINED_FUNCTION_521((a2 + 4), v295);
  v39 = v37 == a2[4] && v38 == a2[5];
  if (!v39 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521((a1 + 6), v294);
  v40 = a1[6];
  v41 = a1[7];
  OUTLINED_FUNCTION_521((a2 + 6), v293);
  v42 = v40 == a2[6] && v41 == a2[7];
  if (!v42 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_521((a1 + 8), &v292);
  v43 = a1[8];
  v44 = a1[9];
  OUTLINED_FUNCTION_521((a2 + 8), &v291);
  v45 = v43 == a2[8] && v44 == a2[9];
  if (!v45 && (OUTLINED_FUNCTION_150_1() & 1) == 0)
  {
    return 0;
  }

  v208 = v9;
  v209 = a2;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating, &v290);
  v46 = v209;
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v46 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__contentRating, &v289);
  v47 = *(v26 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v36)
  {

    sub_1B8D9207C(v33, &qword_1EBABD7B8, &qword_1B9663DA0);
    OUTLINED_FUNCTION_37_0(v2 + v47);
    if (v36)
    {
      v48 = sub_1B8D9207C(v2, &qword_1EBABD7B8, &qword_1B9663DA0);
      goto LABEL_43;
    }

    goto LABEL_29;
  }

  v49 = v222;
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v47);
  if (v50)
  {

    sub_1B8D9207C(v33, &qword_1EBABD7B8, &qword_1B9663DA0);
    sub_1B8ECF904(v49, type metadata accessor for Tvpb_ContentRating);
LABEL_29:
    v51 = &qword_1EBABD860;
    v52 = &unk_1B9663FD0;
    v53 = v2;
LABEL_30:
    sub_1B8D9207C(v53, v51, v52);
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_3_16();
  v54 = v221;
  sub_1B8ECF854();
  v55 = *v49 == *v54 && v49[1] == v54[1];
  if (!v55 && (sub_1B964C9F0() & 1) == 0 || (v49[2] == v54[2] ? (v56 = v49[3] == v54[3]) : (v56 = 0), !v56 && (sub_1B964C9F0() & 1) == 0))
  {

    sub_1B8ECF904(v54, type metadata accessor for Tvpb_ContentRating);
    sub_1B8D9207C(v33, &qword_1EBABD7B8, &qword_1B9663DA0);
    sub_1B8ECF904(v49, type metadata accessor for Tvpb_ContentRating);
    v53 = OUTLINED_FUNCTION_246();
    v52 = &qword_1B9663DA0;
    goto LABEL_30;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_10_11();
  sub_1B8CD2180(v57, v58, MEMORY[0x1E69AAC10]);

  OUTLINED_FUNCTION_33_4();
  v59 = sub_1B964C850();
  sub_1B8ECF904(v54, type metadata accessor for Tvpb_ContentRating);
  sub_1B8D9207C(v33, &qword_1EBABD7B8, &qword_1B9663DA0);
  sub_1B8ECF904(v49, type metadata accessor for Tvpb_ContentRating);
  v46 = v209;
  v48 = sub_1B8D9207C(v2, &qword_1EBABD7B8, &qword_1B9663DA0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_100;
  }

LABEL_43:
  v60 = a1;
  v61 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__thumbnail;
  v62 = OUTLINED_FUNCTION_26_6(v48, &v288);
  v63 = *(v61 + 1);
  OUTLINED_FUNCTION_26_6(v62, &v287);
  OUTLINED_FUNCTION_63();
  v65 = v36 && v63 == v64;
  if (!v65 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  v66 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres, &v286);
  v67 = *(a1 + v66);
  v68 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres;
  OUTLINED_FUNCTION_521(v46 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__genres, &v285);
  if ((sub_1B8D6123C(v67, *(v46 + v68)) & 1) == 0)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities, &v284);
  OUTLINED_FUNCTION_521(v46 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__availabilities, &v283);

  v69 = OUTLINED_FUNCTION_543();
  sub_1B8D8AAA8(v69, v70);
  OUTLINED_FUNCTION_143_1();

  if ((v63 & 1) == 0)
  {
    goto LABEL_100;
  }

  v71 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors, &v282);
  v72 = *(a1 + v71);
  v73 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors;
  OUTLINED_FUNCTION_521(v46 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__actors, &v281);
  v74 = sub_1B8D6123C(v72, *(v46 + v73));
  if ((v74 & 1) == 0)
  {
    goto LABEL_100;
  }

  v75 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premieredNetwork;
  v76 = OUTLINED_FUNCTION_26_6(v74, &v280);
  v77 = *(v75 + 1);
  OUTLINED_FUNCTION_26_6(v76, &v279);
  OUTLINED_FUNCTION_63();
  if (!v36 || v77 != v79)
  {
    v78 = OUTLINED_FUNCTION_120_0();
    if ((v78 & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  v81 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__premiereDate;
  v82 = OUTLINED_FUNCTION_26_6(v78, &v278);
  v83 = *(v81 + 1);
  OUTLINED_FUNCTION_26_6(v82, &v277);
  OUTLINED_FUNCTION_63();
  if (!v36 || v83 != v85)
  {
    v84 = OUTLINED_FUNCTION_120_0();
    if ((v84 & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  v87 = a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__finaleDate;
  v88 = OUTLINED_FUNCTION_26_6(v84, &v276);
  v89 = *(v87 + 1);
  OUTLINED_FUNCTION_26_6(v88, &v275);
  OUTLINED_FUNCTION_63();
  v91 = v36 && v89 == v90;
  if (!v91 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense, &v274);
  v92 = v220;
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v46 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__commonSense, &v273);
  v93 = *(v217 + 48);
  v94 = v219;
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v94, 1, v218) == 1)
  {
    sub_1B8D9207C(v92, &qword_1EBABD7C0, &qword_1B9663DA8);
    OUTLINED_FUNCTION_37_0(v93 + v94);
    if (!v36)
    {
      goto LABEL_74;
    }

    sub_1B8D9207C(v94, &qword_1EBABD7C0, &qword_1B9663DA8);
  }

  else
  {
    v95 = v216;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v93 + v94);
    if (v36)
    {
      sub_1B8D9207C(v220, &qword_1EBABD7C0, &qword_1B9663DA8);
      sub_1B8ECF904(v95, type metadata accessor for Tvpb_CommonSense);
LABEL_74:
      v96 = &qword_1EBABD858;
      v97 = &qword_1B9663FC8;
      v98 = v94;
LABEL_75:
      sub_1B8D9207C(v98, v96, v97);
LABEL_100:

      return 0;
    }

    v99 = v215;
    sub_1B8ECF854();
    v100 = *v95 == *v99 && v95[1] == v99[1];
    if (!v100 && (sub_1B964C9F0() & 1) == 0 || (v95[2] == v99[2] ? (v101 = v95[3] == v99[3]) : (v101 = 0), !v101 && (sub_1B964C9F0() & 1) == 0))
    {
      sub_1B8ECF904(v99, type metadata accessor for Tvpb_CommonSense);
      sub_1B8D9207C(v220, &qword_1EBABD7C0, &qword_1B9663DA8);
      sub_1B8ECF904(v95, type metadata accessor for Tvpb_CommonSense);
      v98 = v94;
      v96 = &qword_1EBABD7C0;
      v97 = &qword_1B9663DA8;
      goto LABEL_75;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_10_11();
    sub_1B8CD2180(v102, v103, MEMORY[0x1E69AAC10]);
    v104 = sub_1B964C850();
    sub_1B8ECF904(v99, type metadata accessor for Tvpb_CommonSense);
    v93 = &qword_1EBABD7C0;
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v105, v106, v107);
    sub_1B8ECF904(v95, type metadata accessor for Tvpb_CommonSense);
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v108, v109, v110);
    if ((v104 & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  v111 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal, &v272);
  LODWORD(v111) = *(a1 + v111);
  v112 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal;
  OUTLINED_FUNCTION_521(v46 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__appleOriginal, &v271);
  if (v111 != *(v46 + v112))
  {
    goto LABEL_100;
  }

  v113 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes, &v270);
  LODWORD(v113) = *(a1 + v113);
  v114 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes;
  OUTLINED_FUNCTION_521(v46 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__runtimeInMinutes, &v269);
  if (v113 != *(v46 + v114))
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children, &v268);
  OUTLINED_FUNCTION_521(v46 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__children, &v267);

  v115 = OUTLINED_FUNCTION_543();
  sub_1B8D8AC84(v115, v116);
  OUTLINED_FUNCTION_143_1();

  if ((v93 & 1) == 0)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521(a1 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent, &v266);
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  v117 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent;
  OUTLINED_FUNCTION_521(v46 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parent, &v265);
  v118 = *(v212 + 48);
  v119 = v208;
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  OUTLINED_FUNCTION_33_4();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v119, 1, v213) == 1)
  {
    sub_1B8D9207C(v214, &qword_1EBABD7C8, &qword_1B9663DB0);
    OUTLINED_FUNCTION_37_0(v119 + v118);
    if (!v36)
    {
      goto LABEL_99;
    }

    sub_1B8D9207C(v119, &qword_1EBABD7C8, &qword_1B9663DB0);
  }

  else
  {
    v120 = v211;
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v119 + v118);
    if (v36)
    {
      sub_1B8D9207C(v214, &qword_1EBABD7C8, &qword_1B9663DB0);
      sub_1B8ECF904(v120, type metadata accessor for Tvpb_Parent);
LABEL_99:
      sub_1B8D9207C(v119, &qword_1EBABD850, &qword_1B9663FC0);
      goto LABEL_100;
    }

    v122 = v210;
    sub_1B8ECF854();
    v123 = static Tvpb_Parent.== infix(_:_:)(v120);
    sub_1B8ECF904(v122, type metadata accessor for Tvpb_Parent);
    v117 = v119;
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v124, v125, v126);
    sub_1B8ECF904(v120, type metadata accessor for Tvpb_Parent);
    OUTLINED_FUNCTION_112_1();
    sub_1B8D9207C(v127, v128, v129);
    if ((v123 & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  v130 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber, &v264);
  LODWORD(v130) = *(v60 + v130);
  v131 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__seasonNumber;
  v132 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v132, &v263);
  if (v130 != *(v117 + v131))
  {
    goto LABEL_100;
  }

  v133 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber, &v262);
  LODWORD(v133) = *(v60 + v133);
  v134 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumber;
  v135 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v135, &v261);
  if (v133 != *(v117 + v134))
  {
    goto LABEL_100;
  }

  v136 = v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type;
  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type, &v260);
  v137 = *v136;
  v138 = v136[8];
  v139 = (v209 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type);
  OUTLINED_FUNCTION_521(v209 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__type, &v259);
  if (!sub_1B8D92198(v137, v138, *v139))
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__coverArt, &v258);
  v140 = OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521(v140, &v257);
  OUTLINED_FUNCTION_79_3();

  v141 = OUTLINED_FUNCTION_543();
  sub_1B8D758CC(v141, v142);
  OUTLINED_FUNCTION_143_1();

  if ((v139 & 1) == 0)
  {
    goto LABEL_100;
  }

  v143 = (v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat, &v256);
  v144 = *v143;
  v145 = (v209 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat);
  v146 = OUTLINED_FUNCTION_521(v209 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__episodeNumberFloat, &v255);
  if (v144 != *v145)
  {
    goto LABEL_100;
  }

  v147 = v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__wikiID;
  OUTLINED_FUNCTION_26_6(v146, &v254);
  v148 = *(v147 + 1);
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_26_6(v149, &v253);
  OUTLINED_FUNCTION_63();
  if (!v36 || v148 != v151)
  {
    v150 = OUTLINED_FUNCTION_120_0();
    if ((v150 & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  v153 = v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__imdbID;
  OUTLINED_FUNCTION_26_6(v150, &v252);
  v154 = *(v153 + 1);
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_26_6(v155, &v251);
  OUTLINED_FUNCTION_63();
  if (!v36 || v154 != v157)
  {
    v156 = OUTLINED_FUNCTION_120_0();
    if ((v156 & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  v159 = v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__rottenTomatoesURL;
  OUTLINED_FUNCTION_26_6(v156, &v250);
  v160 = *(v159 + 1);
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_26_6(v161, &v249);
  OUTLINED_FUNCTION_63();
  if (!v36 || v160 != v163)
  {
    v162 = OUTLINED_FUNCTION_120_0();
    if ((v162 & 1) == 0)
    {
      goto LABEL_100;
    }
  }

  v165 = v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__parentSeasonName;
  OUTLINED_FUNCTION_26_6(v162, &v248);
  v166 = *(v165 + 1);
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_26_6(v167, &v247);
  OUTLINED_FUNCTION_63();
  v169 = v36 && v166 == v168;
  if (!v169 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__localizedGenres, &v246);
  v170 = OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521(v170, &v245);
  OUTLINED_FUNCTION_79_3();

  v171 = OUTLINED_FUNCTION_543();
  sub_1B8D8AEE0(v171, v172);
  OUTLINED_FUNCTION_143_1();

  if ((v166 & 1) == 0)
  {
    goto LABEL_100;
  }

  v173 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0];
  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0], &v244);
  v174 = *(v173 + v60);
  v175 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__characterNames[0];
  v176 = OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521(v176, &v243);
  v177 = sub_1B8D6123C(v174, *(&qword_1ED9CC000 + v175));
  if ((v177 & 1) == 0)
  {
    goto LABEL_100;
  }

  v178 = v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__siribaseID;
  OUTLINED_FUNCTION_26_6(v177, &v242);
  v179 = *(v178 + 1);
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_26_6(v180, &v241);
  OUTLINED_FUNCTION_63();
  v182 = v36 && v179 == v181;
  if (!v182 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_100;
  }

  v183 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0];
  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0], &v240);
  v184 = *(v183 + v60);
  v185 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__directors[0];
  v186 = OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521(v186, &v239);
  if ((sub_1B8D6123C(v184, *(&qword_1ED9CC000 + v185)) & 1) == 0)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__trailersV2, &v238);
  v187 = OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521(v187, &v237);
  OUTLINED_FUNCTION_79_3();

  v188 = OUTLINED_FUNCTION_543();
  sub_1B8D8A3CC(v188, v189);
  OUTLINED_FUNCTION_143_1();

  if ((v179 & 1) == 0)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__castAndCrew, &v236);
  v190 = OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521(v190, &v235);
  OUTLINED_FUNCTION_79_3();

  v191 = OUTLINED_FUNCTION_543();
  sub_1B8D8A5D4(v191, v192);
  OUTLINED_FUNCTION_143_1();

  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__boost, &v234);
  v193 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v193, &v233);
  OUTLINED_FUNCTION_78_0();
  if (!v36)
  {
    goto LABEL_100;
  }

  v194 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0];
  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0], &v232);
  v195 = *(v194 + v60);
  v196 = OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__engTokens[0];
  v197 = OUTLINED_FUNCTION_49_5();
  OUTLINED_FUNCTION_521(v197, &v231);
  if ((sub_1B8D6123C(v195, *(&qword_1ED9CC000 + v196)) & 1) == 0)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isAnnTier, &v230);
  v198 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v198, &v229);
  OUTLINED_FUNCTION_78_0();
  if (!v36)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isIm, &v228);
  v199 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v199, &v227);
  OUTLINED_FUNCTION_78_0();
  if (!v36)
  {
    goto LABEL_100;
  }

  OUTLINED_FUNCTION_521(v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__isStereo, &v226);
  v200 = OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_521(v200, &v225);
  OUTLINED_FUNCTION_78_0();
  if (!v36)
  {
    goto LABEL_100;
  }

  v202 = v60 + OBJC_IVAR____TtCV10PegasusAPI23Snippetpb_TvShowSnippetP33_D70FE862903FE5E47C8CDBBE4823B86F13_StorageClass__kgInternalID;
  OUTLINED_FUNCTION_26_6(v201, &v224);
  v203 = *(v202 + 1);
  OUTLINED_FUNCTION_53_3();
  OUTLINED_FUNCTION_26_6(v204, &v223);
  OUTLINED_FUNCTION_63();
  if (v36 && v203 == v205)
  {
  }

  else
  {
    v207 = OUTLINED_FUNCTION_120_0();

    if ((v207 & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1B8ECF854()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8ECF8AC()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8ECF904(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t Snippetpb_TvShowSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_TvShowSnippet(0);
  sub_1B8CD2180(&qword_1EBABD7F0, type metadata accessor for Snippetpb_TvShowSnippet, protocol conformance descriptor for Snippetpb_TvShowSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8ECFA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2180(&qword_1EBABD808, type metadata accessor for Snippetpb_TvShowSnippet, protocol conformance descriptor for Snippetpb_TvShowSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8ECFAC0(uint64_t a1)
{
  v2 = sub_1B8CD2180(&qword_1EBABAFE0, type metadata accessor for Snippetpb_TvShowSnippet, protocol conformance descriptor for Snippetpb_TvShowSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8ECFB30(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2180(&qword_1EBABAFE0, type metadata accessor for Snippetpb_TvShowSnippet, protocol conformance descriptor for Snippetpb_TvShowSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8ECFCF8(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Snippetpb_TvShowSnippet._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8ECFD84(uint64_t a1)
{
  sub_1B8ECFF68(319, &qword_1ED9CD868, type metadata accessor for Tvpb_ContentRating);
  if (v1 <= 0x3F)
  {
    sub_1B8ECFF68(319, &qword_1ED9CD8B0, type metadata accessor for Tvpb_CommonSense);
    if (v2 <= 0x3F)
    {
      sub_1B8ECFF68(319, &qword_1ED9CDAF0, type metadata accessor for Tvpb_Parent);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8ECFF68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B8ECFFBC()
{
  result = qword_1EBABD820;
  if (!qword_1EBABD820)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvType, &type metadata for Tvpb_TvType, v0, v1);
    atomic_store(result, &qword_1EBABD820);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_29(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Snippetpb_TvShowSnippet(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_1_26(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 56) = v2;
  result = type metadata accessor for Snippetpb_TvShowSnippet(0);
  *(a1 + 64) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 72) = v2;
  return type metadata accessor for Snippetpb_TvShowSnippet(0);
}

uint64_t OUTLINED_FUNCTION_12_11()
{
  type metadata accessor for Snippetpb_TvShowSnippet._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_17_9()
{
  type metadata accessor for Snippetpb_TvShowSnippet(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_29_10(uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_79_3()
{
}

uint64_t Snippetpb_Visual3PSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = xmmword_1B9652FE0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0xE000000000000000;
  type metadata accessor for Snippetpb_Visual3PSnippet(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Snippetpb_Visual3PSnippet(uint64_t a1)
{
  result = qword_1ED9CCBF8;
  if (!qword_1ED9CCBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Snippetpb_Visual3PSnippet.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1BFADC060](a1[4], a1[5], a2[4], a2[5]) & 1) == 0)
  {
    return 0;
  }

  v6 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[8] == a2[8] && a1[9] == a2[9];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Snippetpb_Visual3PSnippet(0);
  sub_1B964C2B0();
  sub_1B8CD21C8(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Snippetpb_Visual3PSnippet.objectID.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Snippetpb_Visual3PSnippet.imageURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippetpb_Visual3PSnippet.metadata.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_Visual3PSnippet.metadata.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Snippetpb_Visual3PSnippet.thumbnailURL.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Snippetpb_Visual3PSnippet.thumbnailTableName.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Snippetpb_Visual3PSnippet.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_Visual3PSnippet(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Snippetpb_Visual3PSnippet.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Snippetpb_Visual3PSnippet(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B8ED0774()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD868);
  __swift_project_value_buffer(v0, qword_1EBABD868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "object_id";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "image_url";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "metadata";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "thumbnail_url";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "thumbnail_table_name";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Snippetpb_Visual3PSnippet._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6588 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD868);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Snippetpb_Visual3PSnippet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
        sub_1B964C530();
        break;
      case 3:
        sub_1B964C470();
        break;
      default:
        continue;
    }
  }
}

uint64_t Snippetpb_Visual3PSnippet.traverse<A>(visitor:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  if (!v3 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v2))
  {
    OUTLINED_FUNCTION_1();
    if (!v5 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v2))
    {
      if (sub_1B8D99EA8(*(v1 + 32), *(v1 + 40)) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v2))
      {
        OUTLINED_FUNCTION_1();
        if (!v6 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v2))
        {
          OUTLINED_FUNCTION_1();
          if (!v7 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v2))
          {
            type metadata accessor for Snippetpb_Visual3PSnippet(0);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

uint64_t Snippetpb_Visual3PSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_Visual3PSnippet(0);
  sub_1B8CD21C8(&qword_1EBABD880, type metadata accessor for Snippetpb_Visual3PSnippet, protocol conformance descriptor for Snippetpb_Visual3PSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8ED0D68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD21C8(&qword_1EBABD898, type metadata accessor for Snippetpb_Visual3PSnippet, protocol conformance descriptor for Snippetpb_Visual3PSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8ED0DE8(uint64_t a1)
{
  v2 = sub_1B8CD21C8(&qword_1EBABAFA8, type metadata accessor for Snippetpb_Visual3PSnippet, protocol conformance descriptor for Snippetpb_Visual3PSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8ED0E58(uint64_t a1, uint64_t a2)
{
  sub_1B8CD21C8(&qword_1EBABAFA8, type metadata accessor for Snippetpb_Visual3PSnippet, protocol conformance descriptor for Snippetpb_Visual3PSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8ED1020(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Snippetpb_WebImagesSnippet.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  if (qword_1EBAB65A0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBABD8D8;
}

uint64_t static Snippetpb_WebImagesSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_3_17();
  if (*(v1 + v2) != *(v0 + v2))
  {

    sub_1B8ED6DA4();
    v4 = v3;

    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_7_16();
  sub_1B8CD2210(v5, v6, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_288();
  return sub_1B964C850() & 1;
}

unint64_t Snippetpb_ImageSearchProvider.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8ED1258@<X0>(uint64_t *a1@<X8>)
{
  result = Snippetpb_ImageSearchProvider.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8ED128C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8ED8E28();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Snippetpb_ImageSearchProvider.allCases.setter(void *a1)
{
  OUTLINED_FUNCTION_18(&off_1EBABD8A0, v3);
  off_1EBABD8A0 = a1;
}

uint64_t (*static Snippetpb_ImageSearchProvider.allCases.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_288();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B8ED13BC@<X0>(uint64_t *a1@<X8>)
{
  result = static Snippetpb_ImageSearchProvider.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.imageURL.getter()
{
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_WebImagesSnippet.imageURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_16();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ED4C58(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.imageURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 16);
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED152C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_WebImagesSnippet.imageURL.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8ED4C58(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_WebImagesSnippet.title.getter()
{
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 32, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_WebImagesSnippet.title.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_16();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ED4C58(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v2;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.title.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  v6 = *(v5 + 40);
  *(v1 + 48) = *(v5 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED1708()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_WebImagesSnippet.title.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8ED4C58(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_WebImagesSnippet.webPageURL.getter()
{
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 48, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_WebImagesSnippet.webPageURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_16();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ED4C58(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 48, v5);
  *(v6 + 48) = v2;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.webPageURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 48);
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED18E4()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_WebImagesSnippet.webPageURL.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8ED4C58(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 48);
    *(v7 + 48) = v3;
    *(v7 + 56) = v2;
  }

  free(v0);
}

uint64_t Snippetpb_WebImagesSnippet.publishTimestamp.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 64, v3);
  return *(v2 + 64);
}

uint64_t Snippetpb_WebImagesSnippet.publishTimestamp.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ED4C58(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = a1;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.publishTimestamp.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 64);
  *(v1 + 72) = *(v4 + 64);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED1A7C()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_177_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 64) = v2;

  free(v0);
}

uint64_t Snippetpb_WebImagesSnippet.fetchTimestamp.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 72, v3);
  return *(v2 + 72);
}

uint64_t Snippetpb_WebImagesSnippet.fetchTimestamp.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ED4C58(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 72, v5);
  *(v6 + 72) = a1;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.fetchTimestamp.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 72);
  *(v1 + 72) = *(v4 + 72);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED1C04()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_177_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 72) = v2;

  free(v0);
}

uint64_t Snippetpb_WebImagesSnippet.imageWidth.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 80, v3);
  return *(v2 + 80);
}

uint64_t Snippetpb_WebImagesSnippet.imageWidth.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ED4C58(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 80, v5);
  *(v6 + 80) = a1;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.imageWidth.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 80);
  *(v1 + 80) = *(v5 + 80);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED1D88()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_135_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 80) = v2;

  free(v0);
}

uint64_t Snippetpb_WebImagesSnippet.imageHeight.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 84, v3);
  return *(v2 + 84);
}

uint64_t Snippetpb_WebImagesSnippet.imageHeight.setter(int a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ED4C58(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 84, v5);
  *(v6 + 84) = a1;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.imageHeight.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 84) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 84);
  *(v1 + 80) = *(v5 + 84);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED1F0C()
{
  OUTLINED_FUNCTION_86_1();
  v4 = OUTLINED_FUNCTION_135_3();
  v5 = *(v3 + v1);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8ED4C58(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 84) = v2;

  free(v0);
}

uint64_t Snippetpb_WebImagesSnippet.relatedImages.getter()
{
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 88, v2);
}

uint64_t Snippetpb_WebImagesSnippet.relatedImages.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ED4C58(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 88, v5);
  *(v6 + 88) = a1;
}

uint64_t Snippetpb_WebImagesSnippet.relatedImages.modify()
{
  v2 = __swift_coroFrameAllocStub(0x48uLL);
  *(OUTLINED_FUNCTION_99(v2) + 56) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 64) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 88);
  *(v1 + 48) = *(v4 + 88);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED20D4(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Snippetpb_WebImagesSnippet.relatedImages.setter(v4);
  }

  else
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 64);
      v10 = *(v2 + 56);
      OUTLINED_FUNCTION_6_8();
      v11 = OUTLINED_FUNCTION_40_0();
      v8 = sub_1B8ED4C58(v11);
      *(v10 + v9) = v8;
    }

    OUTLINED_FUNCTION_59_3(v8 + 88);
    *(v8 + 88) = v3;
  }

  free(v2);
}

uint64_t Snippetpb_WebImagesSnippet.isDetail.getter()
{
  OUTLINED_FUNCTION_3_17();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 96, v3);
  return *(v2 + 96);
}

uint64_t Snippetpb_WebImagesSnippet.isDetail.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_24_8();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ED4C58(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 96, v5);
  *(v6 + 96) = a1 & 1;
  return result;
}

uint64_t Snippetpb_WebImagesSnippet.isDetail.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 96);
  *(v1 + 84) = *(v5 + 96);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED2288(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ED4C58(v8);
    OUTLINED_FUNCTION_168(v9);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 96) = v5;

  free(v2);
}

uint64_t Snippetpb_WebImagesSnippet.thumbnailTableName.getter()
{
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 104, v2);

  return OUTLINED_FUNCTION_432();
}

void Snippetpb_WebImagesSnippet.thumbnailTableName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_16();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ED4C58(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 104, v5);
  *(v6 + 104) = v2;
  *(v6 + 112) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.thumbnailTableName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 104);
  v6 = *(v5 + 112);
  *(v1 + 48) = *(v5 + 104);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED2468()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_WebImagesSnippet.thumbnailTableName.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_6_8();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8ED4C58(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 104);
    *(v7 + 104) = v3;
    *(v7 + 112) = v2;
  }

  free(v0);
}

void Snippetpb_WebImagesSnippet.imageEmbedding.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v11[2] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_60_1(v13, xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABD8F8, &qword_1B9664190);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_11();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Snippetpb_WebImagesSnippet.visualTokens.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD900, &qword_1B9664198);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12[-v5 - 8];
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_521(*(v1 + v7) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__visualTokens, v12);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v9 = MEMORY[0x1E69E7CC0];
    a1[4] = MEMORY[0x1E69E7CC0];
    a1[5] = v9;
    a1[6] = v9;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v6, &qword_1EBABD900, &qword_1B9664198);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_17();
    return sub_1B8ED7CE8();
  }

  return result;
}

uint64_t sub_1B8ED27D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1B8ED7D40();
  return a7(v11);
}

uint64_t Snippetpb_WebImagesSnippet.visualTokens.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD900, &qword_1B9664198);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_14_8() & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8ED4C58(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_8_17();
  sub_1B8ED7CE8();
  v5 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Snippetpb_WebImagesSnippet.visualTokens.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v11[4] = MEMORY[0x1E69E7CC0];
    v11[5] = v13;
    v11[6] = v13;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABD900, &qword_1B9664198);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_17();
    sub_1B8ED7CE8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8ED2ACC(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_1B8ED7D40();
    a3(v6);
    sub_1B8ED7D98();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t sub_1B8ED2BAC(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-v13 - 8];
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_521(*(v5 + v15) + *a3, v21);
  sub_1B8D92024();
  v16 = (a4)(0);
  OUTLINED_FUNCTION_178(v14, 1, v16);
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  sub_1B8D9207C(v14, v6, v4);
  return v18;
}

uint64_t sub_1B8ED2CB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_16();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v11 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v12 = OUTLINED_FUNCTION_40_0();
    *(v3 + v11) = sub_1B8ED4C58(v12);
  }

  v13 = a3(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v13);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Snippetpb_WebImagesSnippet.thirdPartyThumbnailURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  OUTLINED_FUNCTION_62_0(v5);
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_WebImagesSnippet.provider.getter@<X0>(uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_3_17();
  v5 = *(v2 + v4) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  result = OUTLINED_FUNCTION_521(v5, v8);
  v7 = *(v5 + 8);
  *a2 = *v5;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_1B8ED2EF4@<X0>(uint64_t a2@<X8>)
{
  result = Snippetpb_WebImagesSnippet.provider.getter(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

void Snippetpb_WebImagesSnippet.provider.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = OUTLINED_FUNCTION_14_8();
  v29 = *(v20 + v21);
  if ((v28 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v30 = OUTLINED_FUNCTION_40_0();
    v29 = sub_1B8ED4C58(v30);
    *(v24 + v21) = v29;
  }

  v31 = v29 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  OUTLINED_FUNCTION_18(v29 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider, &a10);
  *v31 = v26;
  *(v31 + 8) = v27;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.provider.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  OUTLINED_FUNCTION_62_0(v4);
  v5 = *(v4 + 8);
  *(v1 + 72) = *v4;
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED3074()
{
  OUTLINED_FUNCTION_86_1();
  v3 = *(v2 + 72);
  v4 = *(v0 + 84);
  v5 = *(v0 + 88);
  v6 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v0 + 84);
    v10 = *(v0 + 88);
    OUTLINED_FUNCTION_6_8();
    v11 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8ED4C58(v11);
    *(v10 + v9) = v8;
  }

  v12 = 48;
  if (v1)
  {
    v12 = 24;
  }

  v13 = v8 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  OUTLINED_FUNCTION_18(v13, v0 + v12);
  *v13 = v3;
  *(v13 + 8) = v6;

  free(v0);
}

uint64_t sub_1B8ED3138(void *a1)
{
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_521(*(v1 + v3) + *a1, v5);

  return OUTLINED_FUNCTION_288();
}

void sub_1B8ED31D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_193_0();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v27 = v21;
  OUTLINED_FUNCTION_16();
  v28 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v21 + v28);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v31 = OUTLINED_FUNCTION_40_0();
    v30 = sub_1B8ED4C58(v31);
    *(v27 + v28) = v30;
  }

  v32 = (v30 + *v26);
  OUTLINED_FUNCTION_18(v32, &a10);
  *v32 = v22;
  v32[1] = v20;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.docID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  OUTLINED_FUNCTION_62_0(v5);
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_WebImagesSnippet.thumbnailID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_27(v3);
  v5 = (*(v0 + v4) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  OUTLINED_FUNCTION_62_0(v5);
  v6 = v5[1];
  *(v1 + 48) = *v5;
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8ED33E0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    v6 = v4;
    OUTLINED_FUNCTION_191();
    v7 = OUTLINED_FUNCTION_461();
    v6(v7);
  }

  else
  {
    v8 = v3;
    v9 = *(v0 + 72);
    v10 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v0 + 72);
      v14 = *(v0 + 64);
      OUTLINED_FUNCTION_6_8();
      v15 = OUTLINED_FUNCTION_40_0();
      v12 = sub_1B8ED4C58(v15);
      *(v14 + v13) = v12;
    }

    v16 = (v12 + *v8);
    OUTLINED_FUNCTION_18(v16, v0 + 24);
    *v16 = v2;
    v16[1] = v1;
  }

  free(v0);
}

uint64_t Snippetpb_WebImagesSnippet.isE2I.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
  OUTLINED_FUNCTION_62_0(v5 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I);
  *(v1 + 84) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

uint64_t sub_1B8ED3548(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_17();
  v4 = *(v1 + v3);
  v5 = *a1;
  OUTLINED_FUNCTION_10_4(v4 + v5, v6);
  return *(v4 + v5);
}

void sub_1B8ED3594()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_14_8();
  v8 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8ED4C58(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  v11 = *v3;
  OUTLINED_FUNCTION_9_3(v8 + v11, v7);
  *(v8 + v11) = v5 & 1;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_WebImagesSnippet.disableRelatedImagesSearch.modify()
{
  v2 = OUTLINED_FUNCTION_18_3();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 72) = v0;
  OUTLINED_FUNCTION_3_17();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  v6 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
  OUTLINED_FUNCTION_62_0(v5 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch);
  *(v1 + 84) = *(v5 + v6);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8ED367C(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v4 + 80);
    v11 = *(v4 + 72);
    OUTLINED_FUNCTION_6_8();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8ED4C58(v12);
    *(v11 + v10) = v9;
  }

  v13 = *a3;
  OUTLINED_FUNCTION_11_4();
  *(v9 + v13) = v7;

  free(v4);
}

uint64_t Snippetpb_WebImagesSnippet.originalDomainInfo.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD908, &qword_1B96641A0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11[-v5 - 8];
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_521(*(v1 + v7) + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__originalDomainInfo, v11);
  OUTLINED_FUNCTION_39();
  type metadata accessor for Snippetpb_DomainInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v8)
  {
    *a1 = 0;
    *(a1 + 8) = 1;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v8)
    {
      return sub_1B8D9207C(v6, &qword_1EBABD908, &qword_1B96641A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_30();
    return sub_1B8ED7CE8();
  }

  return result;
}

uint64_t Snippetpb_WebImagesSnippet.originalDomainInfo.setter(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD908, &qword_1B96641A0);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  if ((OUTLINED_FUNCTION_14_8() & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v3 = OUTLINED_FUNCTION_40_0();
    v4 = sub_1B8ED4C58(v3);
    OUTLINED_FUNCTION_135(v4);
  }

  OUTLINED_FUNCTION_0_30();
  sub_1B8ED7CE8();
  v5 = type metadata accessor for Snippetpb_DomainInfo(0);
  OUTLINED_FUNCTION_65_1(v5);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Snippetpb_DomainInfo.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  type metadata accessor for Snippetpb_DomainInfo(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Snippetpb_WebImagesSnippet.originalDomainInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Snippetpb_DomainInfo(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[8] = 1;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABD908, &qword_1B96641A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_30();
    sub_1B8ED7CE8();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8ED3B38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD8F8, &qword_1B9664190);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7 - 8];
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_521(*(v2 + v9) + *a1, v14);
  sub_1B8D92024();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  OUTLINED_FUNCTION_9_2();
  if (!v10)
  {
    return sub_1B8ED7CE8();
  }

  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  v11 = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  *(a2 + 24) = xmmword_1B9652FE0;
  *(a2 + 40) = v11;
  *(a2 + 48) = xmmword_1B9652FE0;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  result = OUTLINED_FUNCTION_9_2();
  if (!v10)
  {
    return sub_1B8D9207C(v8, &qword_1EBABD8F8, &qword_1B9664190);
  }

  return result;
}

uint64_t sub_1B8ED3C84()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD8F8, &qword_1B9664190);
  OUTLINED_FUNCTION_183(v1);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - v3;
  v5 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_6_8();
    v6 = OUTLINED_FUNCTION_40_0();
    *(v0 + v5) = sub_1B8ED4C58(v6);
  }

  OUTLINED_FUNCTION_461();
  sub_1B8ED7CE8();
  v7 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Snippetpb_WebImagesSnippet.dedupEmbedding.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_160_1();
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_71(v6);
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(v7);
  OUTLINED_FUNCTION_59_1();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_187(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v1 + 48) = v11;
  OUTLINED_FUNCTION_3_17();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v12)
  {
    *v11 = 0;
    v11[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v11[2] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_60_1(v13, xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBABD8F8, &qword_1B9664190);
    }
  }

  else
  {
    OUTLINED_FUNCTION_29_11();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Snippetpb_WebImagesSnippet.unknownFields.getter()
{
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Snippetpb_WebImagesSnippet.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_288();

  return v1(v0);
}

void Snippetpb_DomainInfo.domain.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Snippetpb_DomainInfo.domain.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Snippetpb_DomainInfo.textQuery.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippetpb_DomainInfo.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_DomainInfo(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Snippetpb_DomainInfo.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Snippetpb_DomainInfo(v2) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Snippetpb_DomainInfo.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Snippetpb_DomainInfo(v0);
  return nullsub_1;
}

uint64_t sub_1B8ED421C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD8A8);
  __swift_project_value_buffer(v0, qword_1EBABD8A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "IMAGE_SEARCH_PROVIDER_UNKNOWN";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "IMAGE_SEARCH_PEGASUS";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "IMAGE_SEARCH_BING";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IMAGE_SEARCH_BAIDU";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8ED44A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD8C0);
  __swift_project_value_buffer(v0, qword_1EBABD8C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1B9661280;
  v4 = v47 + v3;
  v5 = v47 + v3 + v1[14];
  *(v47 + v3) = 1;
  *v5 = "image_url";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 4;
  *v11 = "web_page_url";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "publish_timestamp";
  *(v13 + 1) = 17;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "fetch_timestamp";
  *(v15 + 1) = 15;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 7;
  *v17 = "image_width";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 8;
  *v19 = "image_height";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 9;
  *v21 = "related_images";
  *(v21 + 1) = 14;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 10;
  *v23 = "is_detail";
  *(v23 + 1) = 9;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 11;
  *v25 = "thumbnail_table_name";
  *(v25 + 1) = 20;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 12;
  *v27 = "image_embedding";
  *(v27 + 1) = 15;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 13;
  *v29 = "visual_tokens";
  *(v29 + 1) = 13;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 14;
  *v31 = "third_party_thumbnail_url";
  *(v31 + 1) = 25;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 15;
  *v33 = "provider";
  *(v33 + 1) = 8;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 16;
  *v35 = "doc_id";
  *(v35 + 1) = 6;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 17;
  *v37 = "thumbnail_id";
  *(v37 + 1) = 12;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "is_e2i";
  *(v39 + 1) = 6;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "disable_related_images_search";
  *(v41 + 1) = 29;
  v41[16] = 2;
  v8();
  v42 = (v4 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "original_domain_info";
  *(v43 + 1) = 20;
  v43[16] = 2;
  v8();
  v44 = (v4 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "dedup_embedding";
  *(v45 + 1) = 15;
  v45[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8ED4AE4()
{
  OUTLINED_FUNCTION_6_8();
  result = sub_1B8ED4B14();
  qword_1EBABD8D8 = result;
  return result;
}

uint64_t sub_1B8ED4B14()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = 0;
  *(v0 + 88) = v1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__imageEmbedding;
  v3 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  __swift_storeEnumTagSinglePayload(v0 + v2, 1, 1, v3);
  v4 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__visualTokens;
  v5 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  v6 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = (v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch) = 0;
  v10 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__originalDomainInfo;
  v11 = type metadata accessor for Snippetpb_DomainInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__dedupEmbedding, 1, 1, v3);
  return v0;
}

uint64_t sub_1B8ED4C58(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD908, &qword_1B96641A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v72 = &v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD900, &qword_1B9664198);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v65 = &v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD8F8, &qword_1B9664190);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = &v55 - v8;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 80) = 0;
  v57 = (v1 + 80);
  *(v1 + 72) = 0;
  v56 = (v1 + 72);
  *(v1 + 56) = 0xE000000000000000;
  *(v1 + 64) = 0;
  *(v1 + 88) = MEMORY[0x1E69E7CC0];
  *(v1 + 96) = 0;
  v58 = (v1 + 88);
  v59 = (v1 + 96);
  *(v1 + 104) = 0;
  v60 = (v1 + 104);
  *(v1 + 112) = 0xE000000000000000;
  v9 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__imageEmbedding;
  v61 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__imageEmbedding;
  v10 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  __swift_storeEnumTagSinglePayload(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__visualTokens;
  v12 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  __swift_storeEnumTagSinglePayload(v1 + v11, 1, 1, v12);
  v13 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  v63 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  *v13 = 0;
  v13[1] = 0xE000000000000000;
  v14 = v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  v64 = v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  v66 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  *v15 = 0;
  v15[1] = 0xE000000000000000;
  v16 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  v67 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v68 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I) = 0;
  v69 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch) = 0;
  v17 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__originalDomainInfo;
  v70 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__originalDomainInfo;
  v18 = type metadata accessor for Snippetpb_DomainInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v71 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__dedupEmbedding;
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__dedupEmbedding, 1, 1, v10);
  swift_beginAccess();
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v20;
  *(v1 + 24) = v19;
  swift_beginAccess();
  v22 = *(a1 + 32);
  v21 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v22;
  *(v1 + 40) = v21;

  swift_beginAccess();
  v24 = *(a1 + 48);
  v23 = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v24;
  *(v1 + 56) = v23;

  swift_beginAccess();
  v25 = *(a1 + 64);
  swift_beginAccess();
  *(v1 + 64) = v25;
  swift_beginAccess();
  v26 = *(a1 + 72);
  v27 = v56;
  swift_beginAccess();
  *v27 = v26;
  swift_beginAccess();
  LODWORD(v26) = *(a1 + 80);
  v28 = v57;
  swift_beginAccess();
  *v28 = v26;
  swift_beginAccess();
  LODWORD(v26) = *(a1 + 84);
  swift_beginAccess();
  *(v1 + 84) = v26;
  swift_beginAccess();
  v29 = *(a1 + 88);
  v30 = v58;
  swift_beginAccess();
  *v30 = v29;

  swift_beginAccess();
  LOBYTE(v29) = *(a1 + 96);
  v31 = v59;
  swift_beginAccess();
  *v31 = v29;
  swift_beginAccess();
  v33 = *(a1 + 104);
  v32 = *(a1 + 112);
  v34 = v60;
  swift_beginAccess();
  *v34 = v33;
  *(v1 + 112) = v32;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v35 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  swift_beginAccess();
  v37 = *v35;
  v36 = v35[1];
  v38 = v63;
  swift_beginAccess();
  *v38 = v37;
  v38[1] = v36;

  v39 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider);
  swift_beginAccess();
  v40 = *v39;
  LOBYTE(v39) = *(v39 + 8);
  v41 = v64;
  swift_beginAccess();
  *v41 = v40;
  *(v41 + 8) = v39;
  v42 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  swift_beginAccess();
  v44 = *v42;
  v43 = v42[1];
  v45 = v66;
  swift_beginAccess();
  *v45 = v44;
  v45[1] = v43;

  v46 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  swift_beginAccess();
  v48 = *v46;
  v47 = v46[1];
  v49 = v67;
  swift_beginAccess();
  *v49 = v48;
  v49[1] = v47;

  v50 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
  swift_beginAccess();
  LOBYTE(v50) = *(a1 + v50);
  v51 = v68;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);
  v53 = v69;
  swift_beginAccess();
  *(v1 + v53) = v52;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

void *sub_1B8ED54F8()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__imageEmbedding, &qword_1EBABD8F8, &qword_1B9664190);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__visualTokens, &qword_1EBABD900, &qword_1B9664198);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__originalDomainInfo, &qword_1EBABD908, &qword_1B96641A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__dedupEmbedding, &qword_1EBABD8F8, &qword_1B9664190);
  return v0;
}

uint64_t sub_1B8ED5604()
{
  v0 = sub_1B8ED54F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Snippetpb_WebImagesSnippet.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Snippetpb_WebImagesSnippet(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Snippetpb_WebImagesSnippet._StorageClass(0);
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    *(v3 + v6) = sub_1B8ED4C58(v7);
  }

  v8 = OUTLINED_FUNCTION_57_4();
  return sub_1B8ED56F4(v8, v9, a2, a3);
}

uint64_t sub_1B8ED56F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C(a2, a1);
        break;
      case 2:
        sub_1B8DC46F4(a2, a1);
        break;
      case 4:
        sub_1B8DC4778(a2, a1);
        break;
      case 5:
        sub_1B8ED59D8(a2, a1, a3, a4);
        break;
      case 6:
        sub_1B8ED5A5C(a2, a1, a3, a4);
        break;
      case 7:
        sub_1B8ED5AE0(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B8ED5B64(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B8ED5BE8(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B8ED5CB4(a2, a1, a3, a4);
        break;
      case 11:
        sub_1B8EC1004(a2, a1);
        break;
      case 12:
      case 21:
        sub_1B8ED5FFC();
        break;
      case 13:
        sub_1B8ED5D38(a2, a1, a3, a4);
        break;
      case 14:
      case 16:
      case 17:
        sub_1B8E17690();
        break;
      case 15:
        sub_1B8ED5E14(a2, a1, a3, a4);
        break;
      case 18:
      case 19:
        sub_1B8ED5EB0();
        break;
      case 20:
        sub_1B8ED5F20(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8ED59D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8ED5A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8ED5AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8ED5B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C4A0();
  return swift_endAccess();
}

uint64_t sub_1B8ED5BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Snippetpb_WebImagesSnippet(0);
  sub_1B8CD2210(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet, protocol conformance descriptor for Snippetpb_WebImagesSnippet);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B8ED5CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8ED5D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  sub_1B8CD2210(&qword_1EBABA868, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens, protocol conformance descriptor for Argos_Protos_Visualunderstandingpb_VisualTokens);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8ED5E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8ED8E28();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8ED5EB0()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_12();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8ED5F20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Snippetpb_DomainInfo(0);
  sub_1B8CD2210(&qword_1EBABD960, type metadata accessor for Snippetpb_DomainInfo, protocol conformance descriptor for Snippetpb_DomainInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B8ED5FFC()
{
  OUTLINED_FUNCTION_147_1();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  sub_1B8CD2210(&qword_1EBABA850, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding, protocol conformance descriptor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t Snippetpb_WebImagesSnippet.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Snippetpb_WebImagesSnippet(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B8ED6128(v5, v6, v7, a3);
  if (!v3)
  {
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8ED6128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD908, &qword_1B96641A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v56 = v50 - v9;
  v52 = type metadata accessor for Snippetpb_DomainInfo(0);
  MEMORY[0x1EEE9AC00](v52);
  v50[2] = v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD900, &qword_1B9664198);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v54 = v50 - v12;
  v55 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  MEMORY[0x1EEE9AC00](v55);
  v53 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD8F8, &qword_1B9664190);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v51 = v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v50 - v17;
  v59 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  v19 = MEMORY[0x1EEE9AC00](v59);
  v50[1] = v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  swift_beginAccess();
  v21 = *(a1 + 24);
  v22 = HIBYTE(v21) & 0xF;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v22)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  v23 = *(a1 + 40);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (!v24)
  {
    goto LABEL_11;
  }

  sub_1B964C700();
  if (v4)
  {
  }

LABEL_11:
  swift_beginAccess();
  v25 = *(a1 + 56);
  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 64) || (result = sub_1B964C6D0(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 72) || (result = sub_1B964C6D0(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 80) || (result = sub_1B964C6C0(), !v4))
      {
        swift_beginAccess();
        if (!*(a1 + 84) || (result = sub_1B964C6C0(), !v4))
        {
          v50[0] = a4;
          swift_beginAccess();
          if (*(*(a1 + 88) + 16))
          {
            type metadata accessor for Snippetpb_WebImagesSnippet(0);
            sub_1B8CD2210(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet, protocol conformance descriptor for Snippetpb_WebImagesSnippet);

            sub_1B964C730();
            if (v4)
            {
            }
          }

          swift_beginAccess();
          if (*(a1 + 96) != 1 || (result = sub_1B964C670(), !v4))
          {
            swift_beginAccess();
            v28 = *(a1 + 112);
            v29 = HIBYTE(v28) & 0xF;
            if ((v28 & 0x2000000000000000) == 0)
            {
              v29 = *(a1 + 104) & 0xFFFFFFFFFFFFLL;
            }

            if (v29)
            {

              sub_1B964C700();
              if (v4)
              {
              }
            }

            swift_beginAccess();
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v18, 1, v59) == 1)
            {
              sub_1B8D9207C(v18, &qword_1EBABD8F8, &qword_1B9664190);
            }

            else
            {
              sub_1B8ED7CE8();
              sub_1B8CD2210(&qword_1EBABA850, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding, protocol conformance descriptor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);
              sub_1B964C740();
              if (v4)
              {
                return sub_1B8ED7D98();
              }

              sub_1B8ED7D98();
            }

            swift_beginAccess();
            v30 = v54;
            sub_1B8D92024();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v55);
            v32 = v56;
            if (EnumTagSinglePayload == 1)
            {
              sub_1B8D9207C(v30, &qword_1EBABD900, &qword_1B9664198);
            }

            else
            {
              sub_1B8ED7CE8();
              sub_1B8CD2210(&qword_1EBABA868, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens, protocol conformance descriptor for Argos_Protos_Visualunderstandingpb_VisualTokens);
              sub_1B964C740();
              if (v4)
              {
                return sub_1B8ED7D98();
              }

              sub_1B8ED7D98();
              v32 = v56;
            }

            v33 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
            swift_beginAccess();
            v34 = *v33;
            v35 = v33[1];
            v36 = HIBYTE(v35) & 0xF;
            if ((v35 & 0x2000000000000000) == 0)
            {
              v36 = v34 & 0xFFFFFFFFFFFFLL;
            }

            if (!v36 || (, sub_1B964C700(), result = , !v5))
            {
              v37 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider);
              swift_beginAccess();
              if (!*v37 || (v38 = *(v37 + 8), v57 = *v37, v58 = v38, sub_1B8ED8E28(), result = sub_1B964C680(), !v5))
              {
                v39 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
                swift_beginAccess();
                v40 = *v39;
                v41 = v39[1];
                v42 = HIBYTE(v41) & 0xF;
                if ((v41 & 0x2000000000000000) == 0)
                {
                  v42 = v40 & 0xFFFFFFFFFFFFLL;
                }

                if (!v42 || (, sub_1B964C700(), result = , !v5))
                {
                  v43 = (a1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
                  swift_beginAccess();
                  v44 = *v43;
                  v45 = v43[1];
                  v46 = HIBYTE(v45) & 0xF;
                  if ((v45 & 0x2000000000000000) == 0)
                  {
                    v46 = v44 & 0xFFFFFFFFFFFFLL;
                  }

                  if (!v46 || (, sub_1B964C700(), result = , !v5))
                  {
                    v47 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
                    swift_beginAccess();
                    if (*(a1 + v47) != 1 || (result = sub_1B964C670(), !v5))
                    {
                      v48 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
                      swift_beginAccess();
                      if (*(a1 + v48) != 1 || (result = sub_1B964C670(), !v5))
                      {
                        swift_beginAccess();
                        sub_1B8D92024();
                        if (__swift_getEnumTagSinglePayload(v32, 1, v52) == 1)
                        {
                          sub_1B8D9207C(v32, &qword_1EBABD908, &qword_1B96641A0);
LABEL_66:
                          swift_beginAccess();
                          v49 = v51;
                          sub_1B8D92024();
                          if (__swift_getEnumTagSinglePayload(v49, 1, v59) == 1)
                          {
                            return sub_1B8D9207C(v49, &qword_1EBABD8F8, &qword_1B9664190);
                          }

                          sub_1B8ED7CE8();
                          sub_1B8CD2210(&qword_1EBABA850, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding, protocol conformance descriptor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);
                          sub_1B964C740();
                          return sub_1B8ED7D98();
                        }

                        sub_1B8ED7CE8();
                        sub_1B8CD2210(&qword_1EBABD960, type metadata accessor for Snippetpb_DomainInfo, protocol conformance descriptor for Snippetpb_DomainInfo);
                        sub_1B964C740();
                        result = sub_1B8ED7D98();
                        if (!v5)
                        {
                          goto LABEL_66;
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

  return result;
}

void sub_1B8ED6DA4()
{
  OUTLINED_FUNCTION_284();
  v1 = v0;
  v3 = v2;
  v119 = type metadata accessor for Snippetpb_DomainInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_21();
  v114 = v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD988, &qword_1B9664710);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v120 = &v111 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD908, &qword_1B96641A0);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44_0();
  v117 = v10;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v111 - v12;
  v124 = type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  v121 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD990, &qword_1B9664718);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v125 = &v111 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD900, &qword_1B9664198);
  v19 = OUTLINED_FUNCTION_183(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44_0();
  v122 = v20;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v111 - v22;
  v127 = type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_21();
  v123 = v25;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD998, &unk_1B9664720);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_44_0();
  v115 = v27;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v111 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBABD8F8, &qword_1B9664190);
  v32 = OUTLINED_FUNCTION_183(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44_0();
  v112 = v33;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v34);
  v113 = &v111 - v35;
  OUTLINED_FUNCTION_230();
  v37 = MEMORY[0x1EEE9AC00](v36);
  v39 = &v111 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v41 = &v111 - v40;
  OUTLINED_FUNCTION_521(v3 + 16, &v167);
  v43 = *(v3 + 16);
  v42 = *(v3 + 24);
  OUTLINED_FUNCTION_521(v1 + 16, &v166);
  v44 = v43 == *(v1 + 16) && v42 == *(v1 + 24);
  if (!v44)
  {
    OUTLINED_FUNCTION_200();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  OUTLINED_FUNCTION_521(v3 + 32, &v165);
  v45 = *(v3 + 32);
  v46 = *(v3 + 40);
  OUTLINED_FUNCTION_521(v1 + 32, &v164);
  if (v45 != *(v1 + 32) || v46 != *(v1 + 40))
  {
    OUTLINED_FUNCTION_57_4();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  OUTLINED_FUNCTION_521(v3 + 48, &v163);
  v48 = *(v3 + 48);
  v49 = *(v3 + 56);
  OUTLINED_FUNCTION_521(v1 + 48, &v162);
  if (v48 != *(v1 + 48) || v49 != *(v1 + 56))
  {
    OUTLINED_FUNCTION_57_4();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  OUTLINED_FUNCTION_521(v3 + 64, &v161);
  v51 = *(v3 + 64);
  OUTLINED_FUNCTION_521(v1 + 64, &v160);
  if (v51 != *(v1 + 64))
  {
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_521(v3 + 72, &v159);
  v52 = *(v3 + 72);
  OUTLINED_FUNCTION_521(v1 + 72, &v158);
  if (v52 != *(v1 + 72))
  {
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_521(v3 + 80, &v157);
  v53 = *(v3 + 80);
  OUTLINED_FUNCTION_521(v1 + 80, &v156);
  if (v53 != *(v1 + 80))
  {
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_521(v3 + 84, &v155);
  v54 = *(v3 + 84);
  OUTLINED_FUNCTION_521(v1 + 84, &v154);
  if (v54 != *(v1 + 84))
  {
    goto LABEL_48;
  }

  OUTLINED_FUNCTION_521(v3 + 88, &v153);
  OUTLINED_FUNCTION_521(v1 + 88, &v152);

  v55 = OUTLINED_FUNCTION_57_4();
  sub_1B8D8AF20(v55, v56);
  LODWORD(v111) = v57;

  if ((v111 & 1) == 0)
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_521(v3 + 96, &v151);
  v58 = *(v3 + 96);
  OUTLINED_FUNCTION_521(v1 + 96, &v150);
  if (v58 != *(v1 + 96))
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_521(v3 + 104, &v149);
  v59 = *(v3 + 104);
  v60 = *(v3 + 112);
  OUTLINED_FUNCTION_521(v1 + 104, &v148);
  if (v59 != *(v1 + 104) || v60 != *(v1 + 112))
  {
    OUTLINED_FUNCTION_57_4();
    if ((sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__imageEmbedding, &v147);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__imageEmbedding, &v146);
  v62 = *(v126 + 48);
  sub_1B8D92024();
  v111 = v62;
  sub_1B8D92024();
  v63 = v127;
  OUTLINED_FUNCTION_178(v30, 1, v127);
  if (v44)
  {
    sub_1B8D9207C(v41, &qword_1EBABD8F8, &qword_1B9664190);
    OUTLINED_FUNCTION_178(&v30[v111], 1, v63);
    if (v44)
    {
      sub_1B8D9207C(v30, &qword_1EBABD8F8, &qword_1B9664190);
      goto LABEL_37;
    }

LABEL_35:
    v65 = &qword_1EBABD998;
    v66 = &unk_1B9664720;
    v67 = v30;
    goto LABEL_46;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(&v30[v111], 1, v63);
  if (v64)
  {
    sub_1B8D9207C(v41, &qword_1EBABD8F8, &qword_1B9664190);
    OUTLINED_FUNCTION_27_6();
    sub_1B8ED7D98();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_28_8();
  sub_1B8ED7CE8();
  LODWORD(v111) = static Argos_Protos_Visualunderstandingpb_ImageEmbedding.== infix(_:_:)(v39);
  OUTLINED_FUNCTION_200();
  sub_1B8ED7D98();
  sub_1B8D9207C(v41, &qword_1EBABD8F8, &qword_1B9664190);
  sub_1B8ED7D98();
  sub_1B8D9207C(v30, &qword_1EBABD8F8, &qword_1B9664190);
  if ((v111 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_37:
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__visualTokens, &v145);
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__visualTokens, &v144);
  v68 = *(v15 + 48);
  v69 = v125;
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_52_2();
  v70 = v124;
  OUTLINED_FUNCTION_178(v69, 1, v124);
  if (v44)
  {
    sub_1B8D9207C(v23, &qword_1EBABD900, &qword_1B9664198);
    OUTLINED_FUNCTION_178(v69 + v68, 1, v70);
    if (v44)
    {
      sub_1B8D9207C(v69, &qword_1EBABD900, &qword_1B9664198);
      goto LABEL_50;
    }

LABEL_45:
    v65 = &qword_1EBABD990;
    v66 = &qword_1B9664718;
    v67 = v69;
    goto LABEL_46;
  }

  v71 = v122;
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v69 + v68, 1, v70);
  if (v72)
  {
    sub_1B8D9207C(v23, &qword_1EBABD900, &qword_1B9664198);
    sub_1B8ED7D98();
    goto LABEL_45;
  }

  sub_1B8ED7CE8();
  v73 = static Argos_Protos_Visualunderstandingpb_VisualTokens.== infix(_:_:)(v71);
  OUTLINED_FUNCTION_200();
  sub_1B8ED7D98();
  sub_1B8D9207C(v23, &qword_1EBABD900, &qword_1B9664198);
  sub_1B8ED7D98();
  sub_1B8D9207C(v69, &qword_1EBABD900, &qword_1B9664198);
  if ((v73 & 1) == 0)
  {
    goto LABEL_47;
  }

LABEL_50:
  v74 = (v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL, &v143);
  v75 = *v74;
  v76 = v74[1];
  v77 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL);
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thirdPartyThumbnailURL, &v142);
  v78 = v75 == *v77 && v76 == v77[1];
  if (!v78 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v79 = v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider;
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider, &v141);
  v80 = *v79;
  v81 = *(v79 + 8);
  v82 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider);
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__provider, &v140);
  if (!sub_1B8D92198(v80, v81, *v82))
  {
    goto LABEL_47;
  }

  v83 = (v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID, &v139);
  v84 = *v83;
  v85 = v83[1];
  v86 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID);
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__docID, &v138);
  v87 = v84 == *v86 && v85 == v86[1];
  if (!v87 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v88 = (v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID, &v137);
  v89 = *v88;
  v90 = v88[1];
  v91 = (v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID);
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__thumbnailID, &v136);
  v92 = v89 == *v91 && v90 == v91[1];
  if (!v92 && (OUTLINED_FUNCTION_120_0() & 1) == 0)
  {
    goto LABEL_47;
  }

  v93 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I, &v135);
  LODWORD(v93) = *(v3 + v93);
  v94 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I;
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__isE2I, &v134);
  if (v93 != *(v1 + v94))
  {
    goto LABEL_47;
  }

  v95 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch, &v133);
  LODWORD(v95) = *(v3 + v95);
  v96 = OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch;
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__disableRelatedImagesSearch, &v132);
  if (v95 != *(v1 + v96))
  {
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__originalDomainInfo, &v131);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__originalDomainInfo, &v130);
  v97 = *(v116 + 48);
  v98 = v120;
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_178(v98, 1, v119);
  if (!v44)
  {
    v101 = v120;
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v101 + v97, 1, v119);
    if (!v102)
    {
      OUTLINED_FUNCTION_0_30();
      v103 = v114;
      sub_1B8ED7CE8();
      if (sub_1B8D57FD0(*v117, *(v117 + 8), *v103, *(v103 + 8)))
      {
        v104 = *(v117 + 16) == *(v114 + 16) && *(v117 + 24) == *(v114 + 24);
        if (v104 || (sub_1B964C9F0() & 1) != 0)
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_7_16();
          sub_1B8CD2210(v105, v106, MEMORY[0x1E69AAC10]);
          v107 = sub_1B964C850();
          sub_1B8D9207C(v118, &qword_1EBABD908, &qword_1B96641A0);
          sub_1B8ED7D98();
          sub_1B8ED7D98();
          sub_1B8D9207C(v120, &qword_1EBABD908, &qword_1B96641A0);
          if (v107)
          {
            goto LABEL_73;
          }

LABEL_47:

          goto LABEL_48;
        }
      }

      sub_1B8D9207C(v118, &qword_1EBABD908, &qword_1B96641A0);
      sub_1B8ED7D98();
      sub_1B8ED7D98();
      v67 = v120;
      v65 = &qword_1EBABD908;
      v66 = &qword_1B96641A0;
LABEL_46:
      sub_1B8D9207C(v67, v65, v66);
      goto LABEL_47;
    }

    sub_1B8D9207C(v118, &qword_1EBABD908, &qword_1B96641A0);
    sub_1B8ED7D98();
LABEL_81:
    v65 = &qword_1EBABD988;
    v66 = &qword_1B9664710;
    v67 = v120;
    goto LABEL_46;
  }

  sub_1B8D9207C(v118, &qword_1EBABD908, &qword_1B96641A0);
  OUTLINED_FUNCTION_178(v120 + v97, 1, v119);
  if (!v44)
  {
    goto LABEL_81;
  }

  sub_1B8D9207C(v120, &qword_1EBABD908, &qword_1B96641A0);
LABEL_73:
  OUTLINED_FUNCTION_521(v3 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__dedupEmbedding, &v129);
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_521(v1 + OBJC_IVAR____TtCV10PegasusAPI26Snippetpb_WebImagesSnippetP33_11B0958B03DC94E5145AD8D0B1E940F513_StorageClass__dedupEmbedding, &v128);
  v99 = *(v126 + 48);
  v100 = v115;
  OUTLINED_FUNCTION_81_1();
  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_178(v100, 1, v127);
  if (!v44)
  {
    v108 = v115;
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v108 + v99, 1, v127);
    if (!v109)
    {
      OUTLINED_FUNCTION_28_8();
      v110 = v115;
      sub_1B8ED7CE8();
      static Argos_Protos_Visualunderstandingpb_ImageEmbedding.== infix(_:_:)(v112);

      OUTLINED_FUNCTION_200();
      sub_1B8ED7D98();
      sub_1B8D9207C(v113, &qword_1EBABD8F8, &qword_1B9664190);
      sub_1B8ED7D98();
      sub_1B8D9207C(v110, &qword_1EBABD8F8, &qword_1B9664190);
      goto LABEL_48;
    }

    sub_1B8D9207C(v113, &qword_1EBABD8F8, &qword_1B9664190);
    OUTLINED_FUNCTION_27_6();
    sub_1B8ED7D98();
LABEL_94:
    sub_1B8D9207C(v115, &qword_1EBABD998, &unk_1B9664720);
    goto LABEL_48;
  }

  sub_1B8D9207C(v113, &qword_1EBABD8F8, &qword_1B9664190);
  OUTLINED_FUNCTION_178(v115 + v99, 1, v127);
  if (!v44)
  {
    goto LABEL_94;
  }

  sub_1B8D9207C(v115, &qword_1EBABD8F8, &qword_1B9664190);
LABEL_48:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8ED7CE8()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8ED7D40()
{
  OUTLINED_FUNCTION_468();
  v1(0);
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_432();
  v3(v2);
  return v0;
}

uint64_t sub_1B8ED7D98()
{
  v1 = OUTLINED_FUNCTION_313();
  v2(v1);
  OUTLINED_FUNCTION_59_1();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1B8ED7EB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2210(&qword_1EBABD978, type metadata accessor for Snippetpb_WebImagesSnippet, protocol conformance descriptor for Snippetpb_WebImagesSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8ED7F30(uint64_t a1)
{
  v2 = sub_1B8CD2210(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet, protocol conformance descriptor for Snippetpb_WebImagesSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8ED7FA0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2210(&qword_1EBABAFC0, type metadata accessor for Snippetpb_WebImagesSnippet, protocol conformance descriptor for Snippetpb_WebImagesSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8ED803C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD8E0);
  __swift_project_value_buffer(v0, qword_1EBABD8E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text_query";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Snippetpb_DomainInfo.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_288();
      sub_1B8E8FC9C(v8, v9, a2, a3);
    }
  }

  return result;
}

uint64_t Snippetpb_DomainInfo.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1B8DEE788(), result = sub_1B964C680(), !v4))
  {
    v6 = v3[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_1B964C700(), !v4))
    {
      type metadata accessor for Snippetpb_DomainInfo(0);
      OUTLINED_FUNCTION_12();
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Snippetpb_DomainInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  if (!sub_1B8D57FD0(*v2, *(v1 + 8), *v0, *(v0 + 8)))
  {
    return 0;
  }

  v3 = *(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24);
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Snippetpb_DomainInfo(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_7_16();
  sub_1B8CD2210(v4, v5, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8ED84A8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD2210(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8ED8588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2210(&qword_1EBABD970, type metadata accessor for Snippetpb_DomainInfo, protocol conformance descriptor for Snippetpb_DomainInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8ED8608(uint64_t a1)
{
  v2 = sub_1B8CD2210(&qword_1EBABD960, type metadata accessor for Snippetpb_DomainInfo, protocol conformance descriptor for Snippetpb_DomainInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8ED8678(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2210(&qword_1EBABD960, type metadata accessor for Snippetpb_DomainInfo, protocol conformance descriptor for Snippetpb_DomainInfo);

  return sub_1B964C5D0();
}

unint64_t sub_1B8ED86FC()
{
  result = qword_1EBABD920;
  if (!qword_1EBABD920)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Snippetpb_ImageSearchProvider, &type metadata for Snippetpb_ImageSearchProvider, v0, v1);
    atomic_store(result, &qword_1EBABD920);
  }

  return result;
}

unint64_t sub_1B8ED8754()
{
  result = qword_1EBABD928;
  if (!qword_1EBABD928)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Snippetpb_ImageSearchProvider, &type metadata for Snippetpb_ImageSearchProvider, v0, v1);
    atomic_store(result, &qword_1EBABD928);
  }

  return result;
}

unint64_t sub_1B8ED87AC()
{
  result = qword_1EBABD930;
  if (!qword_1EBABD930)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Snippetpb_ImageSearchProvider, &type metadata for Snippetpb_ImageSearchProvider, v0, v1);
    atomic_store(result, &qword_1EBABD930);
  }

  return result;
}

unint64_t sub_1B8ED8804()
{
  result = qword_1EBABD938;
  if (!qword_1EBABD938)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABD940, &qword_1B9664290);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBABD938);
  }

  return result;
}

uint64_t sub_1B8ED8AE0(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Snippetpb_WebImagesSnippet._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8ED8B8C(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8ED8C18(uint64_t a1)
{
  sub_1B8ED8DD4(319, &qword_1ED9C9518, type metadata accessor for Argos_Protos_Visualunderstandingpb_ImageEmbedding);
  if (v1 <= 0x3F)
  {
    sub_1B8ED8DD4(319, &qword_1ED9C99E0, type metadata accessor for Argos_Protos_Visualunderstandingpb_VisualTokens);
    if (v2 <= 0x3F)
    {
      sub_1B8ED8DD4(319, &qword_1ED9CD7C0, type metadata accessor for Snippetpb_DomainInfo);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1B8ED8DD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B8ED8E28()
{
  result = qword_1EBABD980;
  if (!qword_1EBABD980)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Snippetpb_ImageSearchProvider, &type metadata for Snippetpb_ImageSearchProvider, v0, v1);
    atomic_store(result, &qword_1EBABD980);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_27(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Snippetpb_WebImagesSnippet(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_8()
{
  type metadata accessor for Snippetpb_WebImagesSnippet._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_16()
{
  type metadata accessor for Snippetpb_WebImagesSnippet(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_14_8()
{
  type metadata accessor for Snippetpb_WebImagesSnippet(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_24_8()
{
  type metadata accessor for Snippetpb_WebImagesSnippet(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_29_11()
{

  return sub_1B8ED7CE8();
}

uint64_t OUTLINED_FUNCTION_52_2()
{

  return sub_1B8D92024();
}

uint64_t OUTLINED_FUNCTION_60_1@<X0>(uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *(v3 + 24) = a3;
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;

  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Tophitpb_TopHit.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for Tophitpb_TopHit(0);
  *(a1 + 9) = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Tophitpb_TopHit(uint64_t a1)
{
  result = qword_1ED9CD900;
  if (!qword_1ED9CD900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t Tophitpb_TopHitValue.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8ED9198@<X0>(uint64_t *a1@<X8>)
{
  result = Tophitpb_TopHitValue.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8ED91CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8ED9CE8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Tophitpb_TopHitValue.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABD9A0 = a1;
}

uint64_t sub_1B8ED9314@<X0>(uint64_t *a1@<X8>)
{
  result = static Tophitpb_TopHitValue.allCases.getter();
  *a1 = result;
  return result;
}

void Tophitpb_TopHit.hint.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Tophitpb_TopHit.hint.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Tophitpb_TopHit.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Tophitpb_TopHit(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Tophitpb_TopHit.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Tophitpb_TopHit(0) + 36);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B8ED9584()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD9A8);
  __swift_project_value_buffer(v0, qword_1EBABD9A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SHOULD_BE";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MUST_BE";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8ED97D4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD9C0);
  __swift_project_value_buffer(v0, qword_1EBABD9C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "hint";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "no_go_takeover";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "should_use_compact_display";
  *(v12 + 1) = 26;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "prefer_top_platter";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "bullseye_compatible";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tophitpb_TopHit.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8ED9B44(a1, v5, a2, a3);
        break;
      case 2:
      case 3:
      case 4:
      case 6:
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t Tophitpb_TopHit.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1B8ED9CE8(), result = sub_1B964C680(), !v4))
  {
    if (*(v3 + 9) != 1 || (result = OUTLINED_FUNCTION_0_31(1, 2), !v4))
    {
      if (*(v3 + 10) != 1 || (result = OUTLINED_FUNCTION_0_31(1, 3), !v4))
      {
        if (*(v3 + 11) != 1 || (result = OUTLINED_FUNCTION_0_31(1, 4), !v4))
        {
          if (*(v3 + 12) != 1 || (result = OUTLINED_FUNCTION_0_31(1, 6), !v4))
          {
            type metadata accessor for Tophitpb_TopHit(0);
            return sub_1B964C290();
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B8ED9CE8()
{
  result = qword_1EBABD9D8;
  if (!qword_1EBABD9D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tophitpb_TopHitValue, &type metadata for Tophitpb_TopHitValue, v0, v1);
    atomic_store(result, &qword_1EBABD9D8);
  }

  return result;
}

uint64_t static Tophitpb_TopHit.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) != 1)
  {
    if (v2 != v3)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (!v3)
  {
    if (!v2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v3 != 1)
  {
    if (v2 == 2)
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v2 != 1)
  {
    return 0;
  }

LABEL_11:
  if (*(a1 + 9) != *(a2 + 9) || *(a1 + 10) != *(a2 + 10) || *(a1 + 11) != *(a2 + 11) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  type metadata accessor for Tophitpb_TopHit(0);
  sub_1B964C2B0();
  sub_1B8CD2258(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Tophitpb_TopHit.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Tophitpb_TopHit(0);
  sub_1B8CD2258(&qword_1EBABD9E0, type metadata accessor for Tophitpb_TopHit, protocol conformance descriptor for Tophitpb_TopHit);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8ED9F48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2258(&qword_1EBABDA20, type metadata accessor for Tophitpb_TopHit, protocol conformance descriptor for Tophitpb_TopHit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8ED9FC8(uint64_t a1)
{
  v2 = sub_1B8CD2258(&qword_1EBABAF90, type metadata accessor for Tophitpb_TopHit, protocol conformance descriptor for Tophitpb_TopHit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EDA038(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2258(&qword_1EBABAF90, type metadata accessor for Tophitpb_TopHit, protocol conformance descriptor for Tophitpb_TopHit);

  return sub_1B964C5D0();
}

unint64_t sub_1B8EDA0B8()
{
  result = qword_1EBABD9E8;
  if (!qword_1EBABD9E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tophitpb_TopHitValue, &type metadata for Tophitpb_TopHitValue, v0, v1);
    atomic_store(result, &qword_1EBABD9E8);
  }

  return result;
}

unint64_t sub_1B8EDA110()
{
  result = qword_1EBABD9F0;
  if (!qword_1EBABD9F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tophitpb_TopHitValue, &type metadata for Tophitpb_TopHitValue, v0, v1);
    atomic_store(result, &qword_1EBABD9F0);
  }

  return result;
}

unint64_t sub_1B8EDA168()
{
  result = qword_1EBABD9F8;
  if (!qword_1EBABD9F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tophitpb_TopHitValue, &type metadata for Tophitpb_TopHitValue, v0, v1);
    atomic_store(result, &qword_1EBABD9F8);
  }

  return result;
}

unint64_t sub_1B8EDA1C0()
{
  result = qword_1EBABDA00;
  if (!qword_1EBABDA00)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABDA08, &qword_1B9664818);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBABDA00);
  }

  return result;
}

uint64_t sub_1B8EDA380(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_31(uint64_t a1, uint64_t a2)
{

  return sub_1B964C670();
}

uint64_t Trialpb_TrialExperiment.experimentNamespace.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Trialpb_TrialExperiment.experimentNamespace.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Trialpb_TrialExperiment.experimentID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Trialpb_TrialExperiment.experimentID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Trialpb_TrialExperiment.treatmentID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t Trialpb_TrialExperiment.treatmentID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void Trialpb_TrialExperiment.allocationStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t Trialpb_TrialExperiment.allocationStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Trialpb_TrialExperiment.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Trialpb_TrialExperiment(0) + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Trialpb_TrialExperiment.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Trialpb_TrialExperiment(0) + 40);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Trialpb_TrialExperiment.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 68) = 0;
  type metadata accessor for Trialpb_TrialExperiment(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8EDA820()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDA28);
  __swift_project_value_buffer(v0, qword_1EBABDA28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "experiment_namespace";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "experiment_id";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "treatment_id";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "deployment_id";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "allocation_status";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "compatibility_version";
  *(v18 + 1) = 21;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Trialpb_TrialExperiment._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB65C0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABDA28);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Trialpb_TrialExperiment.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 5:
        sub_1B8EDAC60(a1, v5, a2, a3);
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        continue;
    }
  }
}

uint64_t Trialpb_TrialExperiment.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  OUTLINED_FUNCTION_1();
  if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 1), (v5 = v4) == 0))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 2), (v5 = v4) == 0))
    {
      OUTLINED_FUNCTION_1();
      if (!v15 || (result = OUTLINED_FUNCTION_3(v13, v14, 3), (v5 = v4) == 0))
      {
        if (!*(v3 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), (v5 = v4) == 0))
        {
          if (!*(v3 + 56) || (sub_1B8EDB198(), v4 = v5, result = sub_1B964C680(), !v5))
          {
            if (!*(v3 + 68) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v4))
            {
              type metadata accessor for Trialpb_TrialExperiment(0);
              OUTLINED_FUNCTION_12();
              return sub_1B964C290();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Trialpb_TrialExperiment.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40);
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || a1[6] != *(a2 + 48) || !sub_1B8D92198(a1[7], *(a1 + 64), *(a2 + 56)) || *(a1 + 17) != *(a2 + 68))
  {
    return 0;
  }

  type metadata accessor for Trialpb_TrialExperiment(0);
  sub_1B964C2B0();
  sub_1B8CD22A0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t Trialpb_TrialExperiment.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Trialpb_TrialExperiment(0);
  sub_1B8CD22A0(&qword_1EBABDA48, type metadata accessor for Trialpb_TrialExperiment, protocol conformance descriptor for Trialpb_TrialExperiment);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EDB028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22A0(&qword_1EBABDA60, type metadata accessor for Trialpb_TrialExperiment, protocol conformance descriptor for Trialpb_TrialExperiment);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EDB0A8(uint64_t a1)
{
  v2 = sub_1B8CD22A0(&qword_1EBABDA58, type metadata accessor for Trialpb_TrialExperiment, protocol conformance descriptor for Trialpb_TrialExperiment);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EDB118(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22A0(&qword_1EBABDA58, type metadata accessor for Trialpb_TrialExperiment, protocol conformance descriptor for Trialpb_TrialExperiment);

  return sub_1B964C5D0();
}

unint64_t sub_1B8EDB198()
{
  result = qword_1EBABDA40;
  if (!qword_1EBABDA40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Trialpb_TreatmentAllocationStatus, &type metadata for Trialpb_TreatmentAllocationStatus, v0, v1);
    atomic_store(result, &qword_1EBABDA40);
  }

  return result;
}

uint64_t sub_1B8EDB334(uint64_t a1)
{
  result = sub_1B964C2B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t Trialpb_TreatmentAllocationStatus.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 4;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B8EDB418@<X0>(uint64_t *a1@<X8>)
{
  result = Trialpb_TreatmentAllocationStatus.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EDB44C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EDB198();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t static Trialpb_TreatmentAllocationStatus.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EBABDA68 = a1;
}

uint64_t sub_1B8EDB594@<X0>(uint64_t *a1@<X8>)
{
  result = static Trialpb_TreatmentAllocationStatus.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EDB5BC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDA70);
  __swift_project_value_buffer(v0, qword_1EBABDA70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "TREATMENT_ALLOCATION_STATUS_UNKNOWN";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "TREATMENT_ALLOCATION_STATUS_ALLOCATED";
  *(v10 + 8) = 37;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "TREATMENT_ALLOCATION_STATUS_ACTIVATED";
  *(v12 + 1) = 37;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TREATMENT_ALLOCATION_STATUS_DEACTIVATED";
  *(v14 + 1) = 39;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Trialpb_TreatmentAllocationStatus._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB65C8 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABDA70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B8EDB8A4()
{
  result = qword_1EBABDA88;
  if (!qword_1EBABDA88)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Trialpb_TreatmentAllocationStatus, &type metadata for Trialpb_TreatmentAllocationStatus, v0, v1);
    atomic_store(result, &qword_1EBABDA88);
  }

  return result;
}

unint64_t sub_1B8EDB8FC()
{
  result = qword_1EBABDA90;
  if (!qword_1EBABDA90)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Trialpb_TreatmentAllocationStatus, &type metadata for Trialpb_TreatmentAllocationStatus, v0, v1);
    atomic_store(result, &qword_1EBABDA90);
  }

  return result;
}

unint64_t sub_1B8EDB954()
{
  result = qword_1EBABDA98;
  if (!qword_1EBABDA98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Trialpb_TreatmentAllocationStatus, &type metadata for Trialpb_TreatmentAllocationStatus, v0, v1);
    atomic_store(result, &qword_1EBABDA98);
  }

  return result;
}

unint64_t sub_1B8EDB9AC()
{
  result = qword_1EBABDAA0;
  if (!qword_1EBABDAA0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBABDAA8, &qword_1B9664CE8);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EBABDAA0);
  }

  return result;
}

uint64_t sub_1B8EDBA74@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a1(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Tvpb_Parent.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  v1 = type metadata accessor for Tvpb_Parent(0);
  return OUTLINED_FUNCTION_101_2(v1);
}

uint64_t sub_1B8EDBB5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8ECFFBC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EDBC3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Tvpb_TvType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Tvpb_TvAvailability.id.getter()
{
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 16, v2);

  return OUTLINED_FUNCTION_432();
}

void Tvpb_TvAvailability.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 16, v5);
  *(v6 + 16) = v2;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 16);
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDBDF8()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.id.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EE04A0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 16);
    *(v7 + 16) = v3;
    *(v7 + 24) = v2;
  }

  free(v0);
}

uint64_t Tvpb_TvAvailability.startDateSeconds.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 32, v3);
  return *(v2 + 32);
}

uint64_t Tvpb_TvAvailability.startDateSeconds.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Tvpb_TvAvailability(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 32, v5);
  *(v6 + 32) = v0;
  return result;
}

uint64_t Tvpb_TvAvailability.startDateSeconds.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_12_12();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 32);
  *(v1 + 72) = *(v5 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDBFA4()
{
  OUTLINED_FUNCTION_7_14();
  v2 = *(v0 + 88);
  v3 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EE04A0(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 32) = v1;

  free(v0);
}

uint64_t Tvpb_TvAvailability.endDateSeconds.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 40, v3);
  return *(v2 + 40);
}

uint64_t Tvpb_TvAvailability.endDateSeconds.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Tvpb_TvAvailability(v2) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 40, v5);
  *(v6 + 40) = v0;
  return result;
}

uint64_t Tvpb_TvAvailability.endDateSeconds.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_12_12();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0(v5 + 40);
  *(v1 + 72) = *(v5 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDC158()
{
  OUTLINED_FUNCTION_7_14();
  v2 = *(v0 + 88);
  v3 = *(v0 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EE04A0(v6);
    OUTLINED_FUNCTION_168(v7);
  }

  OUTLINED_FUNCTION_11_4();
  *(v5 + 40) = v1;

  free(v0);
}

void Tvpb_TvAvailability.tvOfferType.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 48, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 48));
}

void Tvpb_TvAvailability.tvOfferType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_15_10();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 48, v5);
  *(v6 + 48) = v1;
  *(v6 + 56) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.tvOfferType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0(v0 + 48);
  OUTLINED_FUNCTION_71_2(*(v0 + 48));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDC2FC()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v1;
  *(v6 + 56) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Tvpb_TvAvailability.webPunchoutURL.getter()
{
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 64, v2);

  return OUTLINED_FUNCTION_432();
}

void Tvpb_TvAvailability.webPunchoutURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 64, v5);
  *(v6 + 64) = v2;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.webPunchoutURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 64);
  v4 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDC4D0()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.webPunchoutURL.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EE04A0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 64);
    *(v7 + 64) = v3;
    *(v7 + 72) = v2;
  }

  free(v0);
}

uint64_t Tvpb_TvAvailability.webPlayURL.getter()
{
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 80, v2);

  return OUTLINED_FUNCTION_432();
}

void Tvpb_TvAvailability.webPlayURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 80, v5);
  *(v6 + 80) = v2;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.webPlayURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 80);
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDC6B4()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.webPlayURL.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EE04A0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 80);
    *(v7 + 80) = v3;
    *(v7 + 88) = v2;
  }

  free(v0);
}

uint64_t Tvpb_TvAvailability.appPunchoutURL.getter()
{
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 96, v2);

  return OUTLINED_FUNCTION_432();
}

void Tvpb_TvAvailability.appPunchoutURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 96, v5);
  *(v6 + 96) = v2;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.appPunchoutURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 96);
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDC898()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.appPunchoutURL.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EE04A0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 96);
    *(v7 + 96) = v3;
    *(v7 + 104) = v2;
  }

  free(v0);
}

uint64_t Tvpb_TvAvailability.appPlayURL.getter()
{
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 112, v2);

  return OUTLINED_FUNCTION_432();
}

void Tvpb_TvAvailability.appPlayURL.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 112, v5);
  *(v6 + 112) = v2;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.appPlayURL.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 112);
  v4 = *(v0 + 120);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDCA7C()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.appPlayURL.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EE04A0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 112);
    *(v7 + 112) = v3;
    *(v7 + 120) = v2;
  }

  free(v0);
}

void Tvpb_TvAvailability.tvMediaType.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 128, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 128));
}

void Tvpb_TvAvailability.tvMediaType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_15_10();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 128, v5);
  *(v6 + 128) = v1;
  *(v6 + 136) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.tvMediaType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0(v0 + 128);
  OUTLINED_FUNCTION_71_2(*(v0 + 128));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDCC18()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 128) = v1;
  *(v6 + 136) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Tvpb_TvAvailability.searchBrandID.getter()
{
  OUTLINED_FUNCTION_12_12();
  OUTLINED_FUNCTION_10_4(*(v0 + v1) + 144, v2);

  return OUTLINED_FUNCTION_432();
}

void Tvpb_TvAvailability.searchBrandID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_22_10();
  v6 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_135(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 144, v5);
  *(v6 + 144) = v2;
  *(v6 + 152) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.searchBrandID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_62_0(v0 + 144);
  v4 = *(v0 + 152);
  *(v1 + 48) = *(v0 + 144);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EDCDEC()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Tvpb_TvAvailability.searchBrandID.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      OUTLINED_FUNCTION_58_4();
      OUTLINED_FUNCTION_27_7();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B8EE04A0(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 144);
    *(v7 + 144) = v3;
    *(v7 + 152) = v2;
  }

  free(v0);
}

void Tvpb_TvAvailability.searchBrandState.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 160, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 160));
}

void Tvpb_TvAvailability.searchBrandState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_15_10();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 160, v5);
  *(v6 + 160) = v1;
  *(v6 + 168) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.searchBrandState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0(v0 + 160);
  OUTLINED_FUNCTION_71_2(*(v0 + 160));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDCF88()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 160) = v1;
  *(v6 + 168) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Tvpb_TvAvailability.platformIosState.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 176, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 176));
}

void Tvpb_TvAvailability.platformIosState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_15_10();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 176, v5);
  *(v6 + 176) = v1;
  *(v6 + 184) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.platformIosState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0(v0 + 176);
  OUTLINED_FUNCTION_71_2(*(v0 + 176));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD114()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 176) = v1;
  *(v6 + 184) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Tvpb_TvAvailability.platformTvosState.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 192, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 192));
}

void Tvpb_TvAvailability.platformTvosState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_15_10();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 192, v5);
  *(v6 + 192) = v1;
  *(v6 + 200) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.platformTvosState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0(v0 + 192);
  OUTLINED_FUNCTION_71_2(*(v0 + 192));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD2A0()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 192) = v1;
  *(v6 + 200) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Tvpb_TvAvailability.platformWebState.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 208, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 208));
}

void Tvpb_TvAvailability.platformWebState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_15_10();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 208, v5);
  *(v6 + 208) = v1;
  *(v6 + 216) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.platformWebState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0(v0 + 208);
  OUTLINED_FUNCTION_71_2(*(v0 + 208));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD42C()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 208) = v1;
  *(v6 + 216) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Tvpb_TvAvailability.isMccormickProvider.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 217, v3);
  return *(v2 + 217);
}

uint64_t Tvpb_TvAvailability.isMccormickProvider.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_67_4();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 217, v5);
  *(v6 + 217) = a1 & 1;
  return result;
}

uint64_t Tvpb_TvAvailability.isMccormickProvider.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_12_12();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 217);
  *(v1 + 84) = *(v4 + 217);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD5C4(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_84_3();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 217) = v3;

  free(v1);
}

void Tvpb_TvAvailability.videoQuality.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 224, v3);
  OUTLINED_FUNCTION_66_2(*(v2 + 224));
}

void Tvpb_TvAvailability.videoQuality.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_15_10();
  v6 = *(v0 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3(v6 + 224, v5);
  *(v6 + 224) = v1;
  *(v6 + 232) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Tvpb_TvAvailability.videoQuality.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_4_19(v2);
  OUTLINED_FUNCTION_62_0(v0 + 224);
  OUTLINED_FUNCTION_71_2(*(v0 + 224));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD7D0()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 224) = v1;
  *(v6 + 232) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Tvpb_TvAvailability.isStereoContent.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 233, v3);
  return *(v2 + 233);
}

uint64_t Tvpb_TvAvailability.isStereoContent.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_67_4();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 233, v5);
  *(v6 + 233) = a1 & 1;
  return result;
}

uint64_t Tvpb_TvAvailability.isStereoContent.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_12_12();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 233);
  *(v1 + 84) = *(v4 + 233);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDD968(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_84_3();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 233) = v3;

  free(v1);
}

uint64_t Tvpb_TvAvailability.isImmersiveContent.getter()
{
  OUTLINED_FUNCTION_12_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4(v2 + 234, v3);
  return *(v2 + 234);
}

uint64_t Tvpb_TvAvailability.isImmersiveContent.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_67_4();
  v6 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3(v6 + 234, v5);
  *(v6 + 234) = a1 & 1;
  return result;
}

uint64_t Tvpb_TvAvailability.isImmersiveContent.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_12_12();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0(v4 + 234);
  *(v1 + 84) = *(v4 + 234);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDDAFC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_84_3();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EE04A0(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 234) = v3;

  free(v1);
}

uint64_t Tvpb_TvAvailability.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v0 = OUTLINED_FUNCTION_432();

  return v1(v0);
}

uint64_t Tvpb_TvAvailability.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t sub_1B8EDDC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EEA448();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EDDCF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EEA3F4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EDDD5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EEA3A0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EDDDC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EEA34C();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EDDE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EEA2F8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Tvpb_TvAvailability.init()@<X0>(uint64_t a2@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3 = *(type metadata accessor for Tvpb_TvAvailability(0) + 20);
  if (qword_1EBAB65E0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EBABDB20;
}

uint64_t sub_1B8EDDF80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Tvpb_TvAvailability.TvOfferType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8EDE030@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Tvpb_TvAvailability.TvMediaType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8EDE0E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Tvpb_TvAvailability.VideoQuality.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8EDE190@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Tvpb_TvAvailability.PlatformState.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B8EDE240@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Tvpb_TvAvailability.SearchBrandState.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Tvpb_CommonSense.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_CommonSense(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EDE360()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8EDE3E8()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Tvpb_ContentRating.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_ContentRating(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_Child.canonical.setter()
{
  OUTLINED_FUNCTION_16();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Tvpb_Child.title.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Tvpb_Child.thumbnail.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Tvpb_Child.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 56) = *result;
  *(v1 + 64) = v2;
  return result;
}

uint64_t Tvpb_Child.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_Child(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_Child.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 68) = 0;
  type metadata accessor for Tvpb_Child(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Tvpb_Parent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_Parent(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_CoverArt.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t Tvpb_CoverArt.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_CoverArt(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EDE94C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EE4BC8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Tvpb_CoverArt.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  type metadata accessor for Tvpb_CoverArt(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8EDEA74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Tvpb_CoverArt.AspectRatio.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Tvpb_Genre.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_Genre(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EDEC44()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8EDECCC()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Tvpb_TrailerV2.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_TrailerV2(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_TrailerV2.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  type metadata accessor for Tvpb_TrailerV2(0);
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Tvpb_CastAndCrew.personInfo.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  v7 = type metadata accessor for Tvpb_CastAndCrew(0);
  sub_1B8EE0AAC(v1 + *(v7 + 32), v6);
  v8 = type metadata accessor for Tvpb_Person(0);
  v9 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v9, v10, v8);
  if (!v11)
  {
    return sub_1B8EE0B3C(v6, a1);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = OUTLINED_FUNCTION_493();
  result = OUTLINED_FUNCTION_178(v12, v13, v8);
  if (!v11)
  {
    return sub_1B8D9207C(v6, &qword_1EBAB9260, &unk_1B9664DA0);
  }

  return result;
}

uint64_t sub_1B8EDEF04(uint64_t a1)
{
  v2 = type metadata accessor for Tvpb_Person(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8EE0BA0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Tvpb_CastAndCrew.personInfo.setter();
}

uint64_t Tvpb_CastAndCrew.personInfo.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Tvpb_CastAndCrew(v2) + 32);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB9260, &unk_1B9664DA0);
  sub_1B8EE0B3C(v0, v1 + v3);
  v4 = type metadata accessor for Tvpb_Person(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

uint64_t Tvpb_Person.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  type metadata accessor for Tvpb_Person(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Tvpb_CastAndCrew.personInfo.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Tvpb_Person(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Tvpb_CastAndCrew(0) + 32);
  *(v3 + 10) = v11;
  sub_1B8EE0AAC(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v12, v13, v7);
  if (v14)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v10[6] = 0;
    v10[7] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v15 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_178(v15, v16, v7);
    if (!v14)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9260, &unk_1B9664DA0);
    }
  }

  else
  {
    v17 = OUTLINED_FUNCTION_461();
    sub_1B8EE0B3C(v17, v18);
  }

  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EDF198()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 10);
  v2 = (*v0)[3];
  v3 = (*v0)[4];
  v4 = (*v0)[1];
  v5 = **v0;
  if (v6)
  {
    sub_1B8EE0BA0((*v0)[4], v2);
    sub_1B8D9207C(v5 + v1, &qword_1EBAB9260, &unk_1B9664DA0);
    sub_1B8EE0B3C(v2, v5 + v1);
    OUTLINED_FUNCTION_30_2();
    sub_1B8EE0C04(v3);
  }

  else
  {
    sub_1B8D9207C(v5 + v1, &qword_1EBAB9260, &unk_1B9664DA0);
    sub_1B8EE0B3C(v3, v5 + v1);
    OUTLINED_FUNCTION_30_2();
  }

  free(v3);
  free(v2);
  free(v4);
  OUTLINED_FUNCTION_242();

  free(v7);
}

uint64_t Tvpb_CastAndCrew.hasPersonInfo.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Tvpb_CastAndCrew(0);
  sub_1B8EE0AAC(v0 + *(v7 + 32), v6);
  type metadata accessor for Tvpb_Person(0);
  v8 = OUTLINED_FUNCTION_493();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_1B8D9207C(v6, &qword_1EBAB9260, &unk_1B9664DA0);
  return v12;
}

Swift::Void __swiftcall Tvpb_CastAndCrew.clearPersonInfo()()
{
  v1 = *(type metadata accessor for Tvpb_CastAndCrew(0) + 32);
  sub_1B8D9207C(v0 + v1, &qword_1EBAB9260, &unk_1B9664DA0);
  v2 = type metadata accessor for Tvpb_Person(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B8EDF3A4()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8EDF42C()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Tvpb_CastAndCrew.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_CastAndCrew(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_CastAndCrew.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_17_10(a1);
  v2 = type metadata accessor for Tvpb_CastAndCrew(0);
  OUTLINED_FUNCTION_101_2(v2);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for Tvpb_Person(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 1, 1, v4);
}

uint64_t Tvpb_Person.gender.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t sub_1B8EDF618()
{
  v0 = OUTLINED_FUNCTION_27();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B8EDF6A0()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Tvpb_Person.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_Person(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_ProgramSignal.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Tvpb_ProgramSignal.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_ProgramSignal(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EDF85C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EE72E0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Tvpb_ProgramSignal.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Tvpb_ProgramSignal(0);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return OUTLINED_FUNCTION_101_2(v2);
}

uint64_t sub_1B8EDF978@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Tvpb_ProgramSignal.ProgramSignalType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Tvpb_LastEpisodeOfSeason.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_LastEpisodeOfSeason(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Tvpb_LastSeasonOfShow.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Tvpb_LastSeasonOfShow(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EDFB70@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  v3 = a1(0);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return OUTLINED_FUNCTION_101_2(v3);
}

uint64_t sub_1B8EDFBAC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDAF0);
  __swift_project_value_buffer(v0, qword_1EBABDAF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MEDIA_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SHOWS";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EPISODES";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SEASONS";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EDFE2C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB08);
  __swift_project_value_buffer(v0, qword_1EBABDB08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1B96511A0;
  v4 = v43 + v3;
  v5 = v43 + v3 + v1[14];
  *(v43 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "start_date_seconds";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "end_date_seconds";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "tv_offer_type";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "web_punchout_url";
  *(v15 + 1) = 16;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "web_play_url";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "app_punchout_url";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "app_play_url";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "tv_media_type";
  *(v23 + 1) = 13;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "search_brand_id";
  *(v25 + 1) = 15;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "search_brand_state";
  *(v27 + 1) = 18;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "platform_ios_state";
  *(v29 + 1) = 18;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "platform_tvos_state";
  *(v31 + 1) = 19;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "platform_web_state";
  *(v33 + 1) = 18;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "is_mccormick_provider";
  *(v35 + 1) = 21;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "video_quality";
  *(v37 + 1) = 13;
  v37[16] = 2;
  v8();
  v38 = (v4 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "is_stereo_content";
  *(v39 + 1) = 17;
  v39[16] = 2;
  v8();
  v40 = (v4 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "is_immersive_content";
  *(v41 + 1) = 20;
  v41[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8EE03F8()
{
  type metadata accessor for Tvpb_TvAvailability._StorageClass();
  swift_allocObject();
  result = sub_1B8EE0438();
  qword_1EBABDB20 = result;
  return result;
}

uint64_t sub_1B8EE0438()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 1;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 1;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 224) = 0;
  *(v0 + 232) = 1;
  *(v0 + 233) = 0;
  return result;
}

uint64_t sub_1B8EE04A0(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  *(v1 + 136) = 1;
  *(v1 + 144) = 0;
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 176) = 0;
  *(v1 + 184) = 1;
  *(v1 + 192) = 0;
  *(v1 + 200) = 1;
  *(v1 + 208) = 0;
  *(v1 + 216) = 1;
  *(v1 + 224) = 0;
  *(v1 + 232) = 1;
  *(v1 + 233) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;
  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  LOBYTE(v3) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v7;
  *(v1 + 56) = v3;
  swift_beginAccess();
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v9;
  *(v1 + 72) = v8;

  swift_beginAccess();
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  swift_beginAccess();
  *(v1 + 80) = v11;
  *(v1 + 88) = v10;

  swift_beginAccess();
  v13 = *(a1 + 96);
  v12 = *(a1 + 104);
  swift_beginAccess();
  *(v1 + 96) = v13;
  *(v1 + 104) = v12;

  swift_beginAccess();
  v15 = *(a1 + 112);
  v14 = *(a1 + 120);
  swift_beginAccess();
  *(v1 + 112) = v15;
  *(v1 + 120) = v14;

  swift_beginAccess();
  v16 = *(a1 + 128);
  LOBYTE(v13) = *(a1 + 136);
  swift_beginAccess();
  *(v1 + 128) = v16;
  *(v1 + 136) = v13;
  swift_beginAccess();
  v18 = *(a1 + 144);
  v17 = *(a1 + 152);
  swift_beginAccess();
  *(v1 + 144) = v18;
  *(v1 + 152) = v17;

  swift_beginAccess();
  v19 = *(a1 + 160);
  LOBYTE(v13) = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 160) = v19;
  *(v1 + 168) = v13;
  swift_beginAccess();
  v20 = *(a1 + 176);
  LOBYTE(v13) = *(a1 + 184);
  swift_beginAccess();
  *(v1 + 176) = v20;
  *(v1 + 184) = v13;
  swift_beginAccess();
  v21 = *(a1 + 192);
  LOBYTE(v13) = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 192) = v21;
  *(v1 + 200) = v13;
  swift_beginAccess();
  v22 = *(a1 + 208);
  LOBYTE(v13) = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 208) = v22;
  *(v1 + 216) = v13;
  swift_beginAccess();
  LOBYTE(v22) = *(a1 + 217);
  swift_beginAccess();
  *(v1 + 217) = v22;
  swift_beginAccess();
  v23 = *(a1 + 224);
  LOBYTE(v13) = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 224) = v23;
  *(v1 + 232) = v13;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + 233);
  swift_beginAccess();
  *(v1 + 233) = v23;
  swift_beginAccess();
  LOBYTE(v23) = *(a1 + 234);

  swift_beginAccess();
  *(v1 + 234) = v23;
  return v1;
}

uint64_t sub_1B8EE0AAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EE0B3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tvpb_Person(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EE0BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tvpb_Person(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B8EE0C04(uint64_t a1)
{
  v2 = type metadata accessor for Tvpb_Person(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B8EE0CC0()
{

  return v0;
}

uint64_t sub_1B8EE0D08()
{
  v0 = sub_1B8EE0CC0();

  return MEMORY[0x1EEE6BDC0](v0, 235, 7);
}

uint64_t Tvpb_TvAvailability.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Tvpb_TvAvailability(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Tvpb_TvAvailability._StorageClass();
    OUTLINED_FUNCTION_27_7();
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B8EE04A0(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B8EE0DD4(v10, a1, a2, a3);
}

uint64_t sub_1B8EE0DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C(a2, a1);
        break;
      case 2:
        sub_1B8EA7230(a2, a1, a3, a4);
        break;
      case 3:
        sub_1B8EA72B4(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B8EE103C(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B8E16ACC(a2, a1);
        break;
      case 6:
        sub_1B8E16B50(a2, a1);
        break;
      case 7:
        sub_1B8E16BD4(a2, a1);
        break;
      case 8:
        sub_1B8E2F858(a2, a1);
        break;
      case 9:
        sub_1B8EE10D0(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B8E88CF0(a2, a1);
        break;
      case 11:
        sub_1B8EE1164(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B8EE11F8(a2, a1, a3, a4);
        break;
      case 13:
        sub_1B8EE128C(a2, a1, a3, a4);
        break;
      case 14:
        sub_1B8EE1320(a2, a1, a3, a4);
        break;
      case 15:
        sub_1B8EE13B4(a2, a1, a3, a4);
        break;
      case 16:
        sub_1B8EE1438(a2, a1, a3, a4);
        break;
      case 17:
        sub_1B8EE14CC(a2, a1, a3, a4);
        break;
      case 18:
        sub_1B8EE1550(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EE103C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EEA448();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE10D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EEA3F4();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE1164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EEA2F8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE11F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EEA34C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE128C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EEA34C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE1320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EEA34C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE13B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8EE1438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B8EEA3A0();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EE14CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8EE1550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t Tvpb_TvAvailability.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Tvpb_TvAvailability(0);
  OUTLINED_FUNCTION_12();
  result = sub_1B8EE1638(v5, v6, v7, a3);
  if (!v3)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8EE1638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {

    sub_1B964C700();
    if (v4)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 32) || (result = sub_1B964C6D0(), !v4))
  {
    swift_beginAccess();
    if (!*(a1 + 40) || (result = sub_1B964C6D0(), !v4))
    {
      swift_beginAccess();
      if (!*(a1 + 48) || (sub_1B8EEA448(), result = sub_1B964C680(), !v4))
      {
        swift_beginAccess();
        v9 = *(a1 + 72);
        v10 = HIBYTE(v9) & 0xF;
        if ((v9 & 0x2000000000000000) == 0)
        {
          v10 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v10)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v11 = *(a1 + 88);
        v12 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v12 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
        }

        if (v12)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v13 = *(a1 + 104);
        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        v15 = *(a1 + 120);
        v16 = HIBYTE(v15) & 0xF;
        if ((v15 & 0x2000000000000000) == 0)
        {
          v16 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
        }

        if (v16)
        {

          sub_1B964C700();
          if (v4)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 128) || (sub_1B8EEA3F4(), result = sub_1B964C680(), !v4))
        {
          swift_beginAccess();
          v17 = *(a1 + 152);
          v18 = HIBYTE(v17) & 0xF;
          if ((v17 & 0x2000000000000000) == 0)
          {
            v18 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
          }

          if (!v18 || (, sub_1B964C700(), result = , !v4))
          {
            swift_beginAccess();
            if (!*(a1 + 160) || (sub_1B8EEA2F8(), result = sub_1B964C680(), !v4))
            {
              swift_beginAccess();
              if (!*(a1 + 176) || (sub_1B8EEA34C(), result = sub_1B964C680(), !v4))
              {
                swift_beginAccess();
                if (!*(a1 + 192) || (sub_1B8EEA34C(), result = sub_1B964C680(), !v4))
                {
                  swift_beginAccess();
                  if (!*(a1 + 208) || (sub_1B8EEA34C(), result = sub_1B964C680(), !v4))
                  {
                    swift_beginAccess();
                    if (*(a1 + 217) != 1 || (result = sub_1B964C670(), !v4))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 224) || (sub_1B8EEA3A0(), result = sub_1B964C680(), !v4))
                      {
                        swift_beginAccess();
                        if (*(a1 + 233) != 1 || (result = sub_1B964C670(), !v4))
                        {
                          result = swift_beginAccess();
                          if (*(a1 + 234) == 1)
                          {
                            return sub_1B964C670();
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

  return result;
}

uint64_t static Tvpb_TvAvailability.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_12_12();
  if (*(v1 + v2) != *(v0 + v2) && (sub_1B8EE1D08() & 1) == 0)
  {
    return 0;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  sub_1B8CD22E8(v3, v4, MEMORY[0x1E69AAC10]);
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8EE1D08()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_521(v2 + 16, v84);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  OUTLINED_FUNCTION_521(v0 + 16, v83);
  v5 = v3 == *(v0 + 16) && v4 == *(v0 + 24);
  if (v5 || (OUTLINED_FUNCTION_22_8()) && (OUTLINED_FUNCTION_521(v1 + 32, v82), v6 = *(v1 + 32), OUTLINED_FUNCTION_521(v0 + 32, v81), v6 == *(v0 + 32)) && (OUTLINED_FUNCTION_521(v1 + 40, v80), v7 = *(v1 + 40), OUTLINED_FUNCTION_521(v0 + 40, v79), v7 == *(v0 + 40)) && (OUTLINED_FUNCTION_521(v1 + 48, v78), OUTLINED_FUNCTION_521(v0 + 48, v77), v8 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v8, v9, v10)) && ((OUTLINED_FUNCTION_521(v1 + 64, v76), v11 = *(v1 + 64), v12 = *(v1 + 72), OUTLINED_FUNCTION_521(v0 + 64, v75), v11 == *(v0 + 64)) ? (v13 = v12 == *(v0 + 72)) : (v13 = 0), (v13 || (OUTLINED_FUNCTION_22_8()) && ((OUTLINED_FUNCTION_521(v1 + 80, v74), v14 = *(v1 + 80), v15 = *(v1 + 88), OUTLINED_FUNCTION_521(v0 + 80, v73), v14 == *(v0 + 80)) ? (v16 = v15 == *(v0 + 88)) : (v16 = 0), (v16 || (OUTLINED_FUNCTION_22_8()) && ((OUTLINED_FUNCTION_521(v1 + 96, v72), v17 = *(v1 + 96), v18 = *(v1 + 104), OUTLINED_FUNCTION_521(v0 + 96, v71), v17 == *(v0 + 96)) ? (v19 = v18 == *(v0 + 104)) : (v19 = 0), (v19 || (OUTLINED_FUNCTION_22_8()) && ((OUTLINED_FUNCTION_521(v1 + 112, v70), v20 = *(v1 + 112), v21 = *(v1 + 120), OUTLINED_FUNCTION_521(v0 + 112, v69), v20 == *(v0 + 112)) ? (v22 = v21 == *(v0 + 120)) : (v22 = 0), (v22 || (OUTLINED_FUNCTION_22_8()) && (OUTLINED_FUNCTION_521(v1 + 128, v68), OUTLINED_FUNCTION_521(v0 + 128, v67), v23 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v23, v24, v25)) && ((OUTLINED_FUNCTION_521(v1 + 144, v66), v26 = *(v1 + 144), v27 = *(v1 + 152), OUTLINED_FUNCTION_521(v0 + 144, v65), v26 == *(v0 + 144)) ? (v28 = v27 == *(v0 + 152)) : (v28 = 0), (v28 || (OUTLINED_FUNCTION_22_8()) && (OUTLINED_FUNCTION_521(v1 + 160, v64), OUTLINED_FUNCTION_521(v0 + 160, v63), v29 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v29, v30, v31)) && (OUTLINED_FUNCTION_521(v1 + 176, v62), OUTLINED_FUNCTION_521(v0 + 176, v61), v32 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v32, v33, v34)) && (OUTLINED_FUNCTION_521(v1 + 192, v60), OUTLINED_FUNCTION_521(v0 + 192, v59), v35 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v35, v36, v37)) && (OUTLINED_FUNCTION_521(v1 + 208, v58), OUTLINED_FUNCTION_521(v0 + 208, v57), v38 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v38, v39, v40)) && (OUTLINED_FUNCTION_521(v1 + 217, v56), v41 = *(v1 + 217), OUTLINED_FUNCTION_521(v0 + 217, v55), v41 == *(v0 + 217)) && (OUTLINED_FUNCTION_521(v1 + 224, v54), OUTLINED_FUNCTION_521(v0 + 224, v53), v42 = OUTLINED_FUNCTION_303(), sub_1B8D92198(v42, v43, v44)) && (OUTLINED_FUNCTION_521(v1 + 233, v52), v45 = *(v1 + 233), OUTLINED_FUNCTION_521(v0 + 233, v51), v45 == *(v0 + 233))))))))
  {
    OUTLINED_FUNCTION_521(v1 + 234, v50);
    v48 = *(v1 + 234);
    OUTLINED_FUNCTION_521(v0 + 234, &v49);
    v46 = v48 ^ *(v0 + 234) ^ 1;
  }

  else
  {
    v46 = 0;
  }

  return v46 & 1;
}

uint64_t sub_1B8EE215C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE090, type metadata accessor for Tvpb_TvAvailability, protocol conformance descriptor for Tvpb_TvAvailability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE21DC(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD810, type metadata accessor for Tvpb_TvAvailability, protocol conformance descriptor for Tvpb_TvAvailability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE224C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABD810, type metadata accessor for Tvpb_TvAvailability, protocol conformance descriptor for Tvpb_TvAvailability);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE22CC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB28);
  __swift_project_value_buffer(v0, qword_1EBABDB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FREE";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RENT";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BUY";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SUBSCRIPTION";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PRE_ORDER";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "FREE_WITH_ACCOUNT";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "SERVICE";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "COMING_SOON";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE2660()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB40);
  __swift_project_value_buffer(v0, qword_1EBABDB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MEDIA_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SHOWS";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EPISODES";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SEASONS";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "MOVIES";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE2908()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB58);
  __swift_project_value_buffer(v0, qword_1EBABDB58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "QUALITY_UNKNOWN";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SD";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HD";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UHD";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE2B64()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB70);
  __swift_project_value_buffer(v0, qword_1EBABDB70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VOD_STATE_UNKNOWN";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VOD_SERVICE_ON";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VOD_SERVICE_OFF";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VOD_SERVICE_TEST_MODE";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE2DCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDB88);
  __swift_project_value_buffer(v0, qword_1EBABDB88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "STATE_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SEARCH_BRAND_LIVE";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SEARCH_BRAND_PENDING_APPLE_REVIEW";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE3010()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDBA0);
  __swift_project_value_buffer(v0, qword_1EBABDBA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "age";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE32CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE088, type metadata accessor for Tvpb_CommonSense, protocol conformance descriptor for Tvpb_CommonSense);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE334C(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD840, type metadata accessor for Tvpb_CommonSense, protocol conformance descriptor for Tvpb_CommonSense);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE33BC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABD840, type metadata accessor for Tvpb_CommonSense, protocol conformance descriptor for Tvpb_CommonSense);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE3454()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDBB8);
  __swift_project_value_buffer(v0, qword_1EBABDBB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content_rating_system";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content_rating_value";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE366C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = OUTLINED_FUNCTION_1_15();
  if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 1), !v4))
  {
    OUTLINED_FUNCTION_1();
    if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 2), !v4))
    {
      a4(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8EE3798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE080, type metadata accessor for Tvpb_ContentRating, protocol conformance descriptor for Tvpb_ContentRating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE3818(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD848, type metadata accessor for Tvpb_ContentRating, protocol conformance descriptor for Tvpb_ContentRating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE3888(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABD848, type metadata accessor for Tvpb_ContentRating, protocol conformance descriptor for Tvpb_ContentRating);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE3924()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDBD0);
  __swift_project_value_buffer(v0, qword_1EBABDBD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B964E4A0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "canonical";
  *(v5 + 8) = 9;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "title";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "thumbnail";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "number";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "type";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "number_float";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Tvpb_Child.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8EE3CC0(v3, v4, v5, v6);
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C490();
        break;
      default:
        continue;
    }
  }
}

uint64_t Tvpb_Child.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v0))
      {
        if (!*(v1 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
        {
          if (!*(v1 + 56) || (OUTLINED_FUNCTION_94_4(), sub_1B8ECFFBC(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v0))
          {
            if (*(v1 + 68) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6B0(), !v0))
            {
              type metadata accessor for Tvpb_Child(0);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Tvpb_Child.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 48) != *(v1 + 48) || !sub_1B8D92198(*(v2 + 56), *(v2 + 64), *(v1 + 56)) || *(v2 + 68) != *(v1 + 68))
  {
    return 0;
  }

  type metadata accessor for Tvpb_Child(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  v14 = sub_1B8CD22E8(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v14) & 1;
}

uint64_t sub_1B8EE3FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE078, type metadata accessor for Tvpb_Child, protocol conformance descriptor for Tvpb_Child);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE4054(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD818, type metadata accessor for Tvpb_Child, protocol conformance descriptor for Tvpb_Child);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE40C4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABD818, type metadata accessor for Tvpb_Child, protocol conformance descriptor for Tvpb_Child);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE4164()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDBE8);
  __swift_project_value_buffer(v0, qword_1EBABDBE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "canonical";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "title";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "thumbnail";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_Parent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Tvpb_Parent.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_1_15();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (result = OUTLINED_FUNCTION_3(v5, v6, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v10 || (result = OUTLINED_FUNCTION_3(v8, v9, 3), !v0))
      {
        type metadata accessor for Tvpb_Parent(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Tvpb_Parent.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v3 = v3 && v1 == v2;
  if (!v3 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v6 = v3 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v9 = v3 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Tvpb_Parent(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  v12 = sub_1B8CD22E8(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B8EE45F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE070, type metadata accessor for Tvpb_Parent, protocol conformance descriptor for Tvpb_Parent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE4670(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD838, type metadata accessor for Tvpb_Parent, protocol conformance descriptor for Tvpb_Parent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE46E0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABD838, type metadata accessor for Tvpb_Parent, protocol conformance descriptor for Tvpb_Parent);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE4784()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC00);
  __swift_project_value_buffer(v0, qword_1EBABDC00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "width";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_CoverArt.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8EE4A88(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t Tvpb_CoverArt.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
    {
      if (!*(v1 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
      {
        if (!*(v1 + 24) || (OUTLINED_FUNCTION_94_4(), sub_1B8EE4BC8(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v0))
        {
          type metadata accessor for Tvpb_CoverArt(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B8EE4BC8()
{
  result = qword_1EBABDD18;
  if (!qword_1EBABDD18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_CoverArt.AspectRatio, &type metadata for Tvpb_CoverArt.AspectRatio, v0, v1);
    atomic_store(result, &qword_1EBABDD18);
  }

  return result;
}

uint64_t static Tvpb_CoverArt.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 20) != *(v1 + 20) || !sub_1B8D92198(*(v2 + 24), *(v2 + 32), *(v1 + 24)))
  {
    return 0;
  }

  type metadata accessor for Tvpb_CoverArt(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  v8 = sub_1B8CD22E8(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B8EE4D84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE068, type metadata accessor for Tvpb_CoverArt, protocol conformance descriptor for Tvpb_CoverArt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE4E04(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt, protocol conformance descriptor for Tvpb_CoverArt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE4E74(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABD828, type metadata accessor for Tvpb_CoverArt, protocol conformance descriptor for Tvpb_CoverArt);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE4EF4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC18);
  __swift_project_value_buffer(v0, qword_1EBABDC18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIXTEEN_BY_NINE";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SQUARE";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE513C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC30);
  __swift_project_value_buffer(v0, qword_1EBABDC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localizedGenre";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "genreCategory";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE5384(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  v12 = sub_1B8CD22E8(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t sub_1B8EE54B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE060, type metadata accessor for Tvpb_Genre, protocol conformance descriptor for Tvpb_Genre);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE5534(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD830, type metadata accessor for Tvpb_Genre, protocol conformance descriptor for Tvpb_Genre);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE55A4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABD830, type metadata accessor for Tvpb_Genre, protocol conformance descriptor for Tvpb_Genre);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE5648()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC48);
  __swift_project_value_buffer(v0, qword_1EBABDC48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "canonical_id";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "thumbnail";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "title";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "availability_start";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "availability_end";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "order";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_TrailerV2.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Tvpb_TrailerV2.traverse<A>(visitor:)()
{
  v2 = OUTLINED_FUNCTION_1_15();
  if (!v4 || (result = OUTLINED_FUNCTION_3(v2, v3, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(v6, v7, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(v9, v10, 3), !v0))
      {
        if (!*(v1 + 48) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
        {
          if (!*(v1 + 56) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v0))
          {
            if (!*(v1 + 64) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v0))
            {
              type metadata accessor for Tvpb_TrailerV2(0);
              return OUTLINED_FUNCTION_8_1();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Tvpb_TrailerV2.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 48) != *(v1 + 48) || *(v2 + 56) != *(v1 + 56) || *(v2 + 64) != *(v1 + 64))
  {
    return 0;
  }

  type metadata accessor for Tvpb_TrailerV2(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  v14 = sub_1B8CD22E8(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v14) & 1;
}

uint64_t sub_1B8EE5C68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE058, type metadata accessor for Tvpb_TrailerV2, protocol conformance descriptor for Tvpb_TrailerV2);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE5CE8(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2, protocol conformance descriptor for Tvpb_TrailerV2);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE5D58(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABD6E8, type metadata accessor for Tvpb_TrailerV2, protocol conformance descriptor for Tvpb_TrailerV2);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE5DF0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC60);
  __swift_project_value_buffer(v0, qword_1EBABDC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "role";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "person_info";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_CastAndCrew.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B8EE60EC(v3, v4, v5, v6);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EE60EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Tvpb_CastAndCrew(0);
  type metadata accessor for Tvpb_Person(0);
  sub_1B8CD22E8(&qword_1EBABDD38, type metadata accessor for Tvpb_Person, protocol conformance descriptor for Tvpb_Person);
  return sub_1B964C580();
}

uint64_t Tvpb_CastAndCrew.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v21 - v4;
  v6 = type metadata accessor for Tvpb_Person(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_1();
  if (!v12 || (result = OUTLINED_FUNCTION_3(v10, v11, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v16 || (result = OUTLINED_FUNCTION_3(v14, v15, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v19 || (result = OUTLINED_FUNCTION_3(v17, v18, 3), !v0))
      {
        v20 = type metadata accessor for Tvpb_CastAndCrew(0);
        sub_1B8EE0AAC(v1 + *(v20 + 32), v5);
        if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
        {
          sub_1B8D9207C(v5, &qword_1EBAB9260, &unk_1B9664DA0);
        }

        else
        {
          v21[1] = v20;
          sub_1B8EE0B3C(v5, v9);
          sub_1B8CD22E8(&qword_1EBABDD38, type metadata accessor for Tvpb_Person, protocol conformance descriptor for Tvpb_Person);
          OUTLINED_FUNCTION_79_0();
          OUTLINED_FUNCTION_89_2();
          sub_1B964C740();
          result = sub_1B8EE0C04(v9);
          if (v0)
          {
            return result;
          }
        }

        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Tvpb_CastAndCrew.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v2 = type metadata accessor for Tvpb_Person(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9260, &unk_1B9664DA0);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9268, &unk_1B964DA50);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = *v1 == *v0 && v1[1] == v0[1];
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_84_1();
  v17 = v14 && v15 == v16;
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_40_5();
  v20 = v14 && v18 == v19;
  if (!v20 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_25;
  }

  v21 = *(type metadata accessor for Tvpb_CastAndCrew(0) + 32);
  v22 = *(v10 + 48);
  sub_1B8EE0AAC(v1 + v21, v13);
  sub_1B8EE0AAC(v0 + v21, &v13[v22]);
  OUTLINED_FUNCTION_178(v13, 1, v2);
  if (v14)
  {
    OUTLINED_FUNCTION_178(&v13[v22], 1, v2);
    if (v14)
    {
      sub_1B8D9207C(v13, &qword_1EBAB9260, &unk_1B9664DA0);
LABEL_28:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_32();
      v29 = sub_1B8CD22E8(v27, v28, MEMORY[0x1E69AAC10]);
      v24 = OUTLINED_FUNCTION_634(v29);
      return v24 & 1;
    }

    goto LABEL_24;
  }

  sub_1B8EE0AAC(v13, v9);
  OUTLINED_FUNCTION_178(&v13[v22], 1, v2);
  if (v23)
  {
    sub_1B8EE0C04(v9);
LABEL_24:
    sub_1B8D9207C(v13, &qword_1EBAB9268, &unk_1B964DA50);
    goto LABEL_25;
  }

  sub_1B8EE0B3C(&v13[v22], v5);
  v26 = static Tvpb_Person.== infix(_:_:)(v9);
  sub_1B8EE0C04(v5);
  sub_1B8EE0C04(v9);
  sub_1B8D9207C(v13, &qword_1EBAB9260, &unk_1B9664DA0);
  if (v26)
  {
    goto LABEL_28;
  }

LABEL_25:
  v24 = 0;
  return v24 & 1;
}

uint64_t sub_1B8EE66D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE050, type metadata accessor for Tvpb_CastAndCrew, protocol conformance descriptor for Tvpb_CastAndCrew);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE6758(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew, protocol conformance descriptor for Tvpb_CastAndCrew);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE67C8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABD6F0, type metadata accessor for Tvpb_CastAndCrew, protocol conformance descriptor for Tvpb_CastAndCrew);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE6868()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC78);
  __swift_project_value_buffer(v0, qword_1EBABDC78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "canonical_id";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "thumbnail";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "gender";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_Person.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Tvpb_Person.traverse<A>(visitor:)()
{
  v1 = OUTLINED_FUNCTION_1_15();
  if (!v3 || (result = OUTLINED_FUNCTION_3(v1, v2, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v7 || (result = OUTLINED_FUNCTION_3(v5, v6, 2), !v0))
    {
      OUTLINED_FUNCTION_1();
      if (!v10 || (result = OUTLINED_FUNCTION_3(v8, v9, 3), !v0))
      {
        OUTLINED_FUNCTION_1();
        if (!v13 || (result = OUTLINED_FUNCTION_3(v11, v12, 4), !v0))
        {
          type metadata accessor for Tvpb_Person(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Tvpb_Person.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v2 + 48) == *(v1 + 48) && *(v2 + 56) == *(v1 + 56);
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Tvpb_Person(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  v15 = sub_1B8CD22E8(v13, v14, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v15) & 1;
}

uint64_t sub_1B8EE6D8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE048, type metadata accessor for Tvpb_Person, protocol conformance descriptor for Tvpb_Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE6E0C(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABDD38, type metadata accessor for Tvpb_Person, protocol conformance descriptor for Tvpb_Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE6E7C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABDD38, type metadata accessor for Tvpb_Person, protocol conformance descriptor for Tvpb_Person);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE6F14()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDC90);
  __swift_project_value_buffer(v0, qword_1EBABDC90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "start";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "end";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Tvpb_ProgramSignal.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4B0();
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B8EE71B4(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t Tvpb_ProgramSignal.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_94_4(), sub_1B8EE72E0(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
    {
      if (!*(v2 + 24) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
      {
        type metadata accessor for Tvpb_ProgramSignal(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

unint64_t sub_1B8EE72E0()
{
  result = qword_1EBABDD50;
  if (!qword_1EBABDD50)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_ProgramSignal.ProgramSignalType, &type metadata for Tvpb_ProgramSignal.ProgramSignalType, v0, v1);
    atomic_store(result, &qword_1EBABDD50);
  }

  return result;
}

uint64_t static Tvpb_ProgramSignal.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  if (*(v1 + 16) == *(v0 + 16) && *(v1 + 24) == *(v0 + 24))
  {
    type metadata accessor for Tvpb_ProgramSignal(0);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_32();
    v8 = sub_1B8CD22E8(v6, v7, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_634(v8) & 1;
  }

  return 0;
}

uint64_t sub_1B8EE74B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE040, type metadata accessor for Tvpb_ProgramSignal, protocol conformance descriptor for Tvpb_ProgramSignal);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE7534(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABDF58, type metadata accessor for Tvpb_ProgramSignal, protocol conformance descriptor for Tvpb_ProgramSignal);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE75A4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABDF58, type metadata accessor for Tvpb_ProgramSignal, protocol conformance descriptor for Tvpb_ProgramSignal);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE7624()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABDCA8);
  __swift_project_value_buffer(v0, qword_1EBABDCA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNSPECIFIED";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PROGRAM_SIGNAL_BOOST";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UMC_PRIORITY_CONTENT_SIGNAL";
  *(v12 + 1) = 27;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EE7974(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE038, type metadata accessor for Tvpb_LastEpisodeOfSeason, protocol conformance descriptor for Tvpb_LastEpisodeOfSeason);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE79F4(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABDF70, type metadata accessor for Tvpb_LastEpisodeOfSeason, protocol conformance descriptor for Tvpb_LastEpisodeOfSeason);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE7A64(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABDF70, type metadata accessor for Tvpb_LastEpisodeOfSeason, protocol conformance descriptor for Tvpb_LastEpisodeOfSeason);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EE7B14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1B964C780();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B964EE60;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADE8];
  v15 = sub_1B964C750();
  OUTLINED_FUNCTION_59_1();
  v17 = *(v16 + 104);
  (v17)(v13, v14, v15);
  v18 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v18 = "start";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v17();
  v19 = (v12 + 2 * v9);
  v20 = v19 + v8[14];
  *v19 = 3;
  *v20 = "end";
  *(v20 + 1) = 3;
  v20[16] = 2;
  v17();
  return sub_1B964C760();
}

uint64_t sub_1B8EE7D50()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4B0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C400();
    }
  }

  return result;
}

uint64_t sub_1B8EE7DF8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  if (*v4 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v5))
  {
    if (!*(v6 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v5))
    {
      if (!*(v6 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v5))
      {
        a4(0);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B8EE7EC4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v5 + 8) != *(v6 + 8) || *(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v4(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_32();
  v9 = sub_1B8CD22E8(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t sub_1B8EE7FB4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, const char *a4)
{
  sub_1B964CA70();
  a1(0);
  v6 = OUTLINED_FUNCTION_461();
  sub_1B8CD22E8(v6, v7, a4);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EE807C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD22E8(&qword_1EBABE030, type metadata accessor for Tvpb_LastSeasonOfShow, protocol conformance descriptor for Tvpb_LastSeasonOfShow);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EE80FC(uint64_t a1)
{
  v2 = sub_1B8CD22E8(&qword_1EBABDF88, type metadata accessor for Tvpb_LastSeasonOfShow, protocol conformance descriptor for Tvpb_LastSeasonOfShow);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EE816C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD22E8(&qword_1EBABDF88, type metadata accessor for Tvpb_LastSeasonOfShow, protocol conformance descriptor for Tvpb_LastSeasonOfShow);

  return sub_1B964C5D0();
}

unint64_t sub_1B8EE81EC()
{
  result = qword_1EBABDD70;
  if (!qword_1EBABDD70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvType, &type metadata for Tvpb_TvType, v0, v1);
    atomic_store(result, &qword_1EBABDD70);
  }

  return result;
}

unint64_t sub_1B8EE8244()
{
  result = qword_1EBABDD78;
  if (!qword_1EBABDD78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvType, &type metadata for Tvpb_TvType, v0, v1);
    atomic_store(result, &qword_1EBABDD78);
  }

  return result;
}

unint64_t sub_1B8EE829C()
{
  result = qword_1EBABDD80;
  if (!qword_1EBABDD80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvType, &type metadata for Tvpb_TvType, v0, v1);
    atomic_store(result, &qword_1EBABDD80);
  }

  return result;
}

unint64_t sub_1B8EE8324()
{
  result = qword_1EBABDD98;
  if (!qword_1EBABDD98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvAvailability.TvOfferType, &type metadata for Tvpb_TvAvailability.TvOfferType, v0, v1);
    atomic_store(result, &qword_1EBABDD98);
  }

  return result;
}

unint64_t sub_1B8EE837C()
{
  result = qword_1EBABDDA0;
  if (!qword_1EBABDDA0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvAvailability.TvOfferType, &type metadata for Tvpb_TvAvailability.TvOfferType, v0, v1);
    atomic_store(result, &qword_1EBABDDA0);
  }

  return result;
}

unint64_t sub_1B8EE83D4()
{
  result = qword_1EBABDDA8;
  if (!qword_1EBABDDA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvAvailability.TvOfferType, &type metadata for Tvpb_TvAvailability.TvOfferType, v0, v1);
    atomic_store(result, &qword_1EBABDDA8);
  }

  return result;
}

unint64_t sub_1B8EE842C()
{
  result = qword_1EBABDDB0;
  if (!qword_1EBABDDB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvAvailability.TvMediaType, &type metadata for Tvpb_TvAvailability.TvMediaType, v0, v1);
    atomic_store(result, &qword_1EBABDDB0);
  }

  return result;
}

unint64_t sub_1B8EE8484()
{
  result = qword_1EBABDDB8;
  if (!qword_1EBABDDB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvAvailability.TvMediaType, &type metadata for Tvpb_TvAvailability.TvMediaType, v0, v1);
    atomic_store(result, &qword_1EBABDDB8);
  }

  return result;
}

unint64_t sub_1B8EE84DC()
{
  result = qword_1EBABDDC0;
  if (!qword_1EBABDDC0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvAvailability.TvMediaType, &type metadata for Tvpb_TvAvailability.TvMediaType, v0, v1);
    atomic_store(result, &qword_1EBABDDC0);
  }

  return result;
}

unint64_t sub_1B8EE8534()
{
  result = qword_1EBABDDC8;
  if (!qword_1EBABDDC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvAvailability.VideoQuality, &type metadata for Tvpb_TvAvailability.VideoQuality, v0, v1);
    atomic_store(result, &qword_1EBABDDC8);
  }

  return result;
}

unint64_t sub_1B8EE858C()
{
  result = qword_1EBABDDD0;
  if (!qword_1EBABDDD0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvAvailability.VideoQuality, &type metadata for Tvpb_TvAvailability.VideoQuality, v0, v1);
    atomic_store(result, &qword_1EBABDDD0);
  }

  return result;
}

unint64_t sub_1B8EE85E4()
{
  result = qword_1EBABDDD8;
  if (!qword_1EBABDDD8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Tvpb_TvAvailability.VideoQuality, &type metadata for Tvpb_TvAvailability.VideoQuality, v0, v1);
    atomic_store(result, &qword_1EBABDDD8);
  }

  return result;
}