uint64_t SiriAudioSnippets.snippet.getter()
{
  v128 = type metadata accessor for SiriAudioMediaPlayerSnippet(0);
  __chkstk_darwin(v128);
  v127 = &v118 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_114F0();
  v126 = *(v129 - 8);
  __chkstk_darwin(v129);
  v125 = &v118 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for SiriAudioShazamSnippet(0);
  __chkstk_darwin(v123);
  v122 = &v118 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_115F0();
  v121 = *(v124 - 8);
  __chkstk_darwin(v124);
  v120 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for SiriAudioAlternativeSnippet(0);
  __chkstk_darwin(v134);
  v133 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_114C0();
  v132 = *(v135 - 8);
  __chkstk_darwin(v135);
  v131 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for SiriAudioSimpleTextSnippet(0);
  __chkstk_darwin(v140);
  v139 = &v118 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_11470();
  v138 = *(v141 - 8);
  __chkstk_darwin(v141);
  v137 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = type metadata accessor for SiriAudioDisambiguationSnippet(0);
  __chkstk_darwin(v145);
  v144 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_115D0();
  v143 = *(v146 - 8);
  __chkstk_darwin(v146);
  v142 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for SiriAudioActionButtonSnippet(0);
  __chkstk_darwin(v150);
  v149 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_11550();
  v148 = *(v151 - 8);
  __chkstk_darwin(v151);
  v147 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for ConfirmationSnippet(0);
  __chkstk_darwin(v152);
  v13 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_11670();
  v154 = *(v14 - 8);
  v155 = v14;
  v15 = __chkstk_darwin(v14);
  v119 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v118 = &v118 - v18;
  v19 = __chkstk_darwin(v17);
  v130 = &v118 - v20;
  v21 = __chkstk_darwin(v19);
  v136 = &v118 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v118 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v118 - v27;
  __chkstk_darwin(v26);
  v30 = &v118 - v29;
  v31 = sub_11580();
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v34 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_11450();
  v36 = *(v35 - 8);
  __chkstk_darwin(v35);
  v38 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v38, v153, v35);
  v39 = (*(v36 + 88))(v38, v35);
  if (v39 == enum case for SiriAudioSnippets.confirmation(_:))
  {
    (*(v36 + 96))(v38, v35);
    (*(v32 + 32))(v34, v38, v31);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v40 = v155;
    v41 = sub_3444(v155, qword_1DB08);
    v42 = v154;
    (*(v154 + 16))(v30, v41, v40);
    v43 = sub_11650();
    v44 = sub_11C00();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "SiriAudioSnippets#snippet create ConfirmationSnippet", v45, 2u);
    }

    (*(v42 + 8))(v30, v40);
    (*(v32 + 16))(v13, v34, v31);
    v46 = &v13[*(v152 + 20)];
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *v46 = sub_11760();
    v46[1] = v47;
    sub_3510(&qword_1C648, type metadata accessor for ConfirmationSnippet, &protocol conformance descriptor for ConfirmationSnippet);
    v48 = sub_118E0();
    sub_3558(v13, type metadata accessor for ConfirmationSnippet);
    (*(v32 + 8))(v34, v31);
    return v48;
  }

  if (v39 == enum case for SiriAudioSnippets.actionButton(_:))
  {
    (*(v36 + 96))(v38, v35);
    v50 = v147;
    v49 = v148;
    v51 = v151;
    (*(v148 + 32))(v147, v38, v151);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v52 = v155;
    v53 = sub_3444(v155, qword_1DB08);
    v54 = v154;
    (*(v154 + 16))(v28, v53, v52);
    v55 = sub_11650();
    v56 = sub_11C00();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "SiriAudioSnippets#snippet create SiriAudioActionButtonSnippet", v57, 2u);
    }

    (*(v54 + 8))(v28, v52);
    v58 = v149;
    (*(v49 + 16))(v149, v50, v51);
    v59 = (v58 + *(v150 + 20));
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *v59 = sub_11760();
    v59[1] = v60;
    sub_3510(&qword_1C640, type metadata accessor for SiriAudioActionButtonSnippet, &protocol conformance descriptor for SiriAudioActionButtonSnippet);
    v48 = sub_118E0();
    v61 = type metadata accessor for SiriAudioActionButtonSnippet;
LABEL_19:
    sub_3558(v58, v61);
    (*(v49 + 8))(v50, v51);
    return v48;
  }

  if (v39 == enum case for SiriAudioSnippets.disambiguation(_:))
  {
    (*(v36 + 96))(v38, v35);
    v50 = v142;
    v49 = v143;
    v51 = v146;
    (*(v143 + 32))(v142, v38, v146);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v62 = v155;
    v63 = sub_3444(v155, qword_1DB08);
    v64 = v154;
    (*(v154 + 16))(v25, v63, v62);
    v65 = sub_11650();
    v66 = sub_11C00();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_0, v65, v66, "SiriAudioSnippets#snippet create SiriAudioDisambiguationSnippet", v67, 2u);
    }

    (*(v64 + 8))(v25, v62);
    v58 = v144;
    (*(v49 + 16))(v144, v50, v51);
    v68 = (v58 + *(v145 + 20));
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *v68 = sub_11760();
    v68[1] = v69;
    sub_3510(&qword_1C638, type metadata accessor for SiriAudioDisambiguationSnippet, &unk_13160);
    v48 = sub_118E0();
    v61 = type metadata accessor for SiriAudioDisambiguationSnippet;
    goto LABEL_19;
  }

  if (v39 == enum case for SiriAudioSnippets.simpleText(_:))
  {
    (*(v36 + 96))(v38, v35);
    v70 = v138;
    v71 = v137;
    v72 = v141;
    (*(v138 + 32))(v137, v38, v141);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v73 = v155;
    v74 = sub_3444(v155, qword_1DB08);
    v75 = v154;
    v76 = v136;
    (*(v154 + 16))(v136, v74, v73);
    v77 = sub_11650();
    v78 = sub_11C00();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_0, v77, v78, "SiriAudioSnippets#snippet create Section Header standard view", v79, 2u);
    }

    (*(v75 + 8))(v76, v73);
    v80 = v139;
    (*(v70 + 16))(v139, v71, v72);
    v81 = &v80[*(v140 + 20)];
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *v81 = sub_11760();
    v81[1] = v82;
    sub_3510(&qword_1C630, type metadata accessor for SiriAudioSimpleTextSnippet, &unk_139CC);
    v48 = sub_118E0();
    v83 = type metadata accessor for SiriAudioSimpleTextSnippet;
LABEL_26:
    v84 = v83;
    v85 = v80;
LABEL_46:
    sub_3558(v85, v84);
    (*(v70 + 8))(v71, v72);
    return v48;
  }

  if (v39 == enum case for SiriAudioSnippets.alternatives(_:))
  {
    (*(v36 + 96))(v38, v35);
    v70 = v132;
    v71 = v131;
    v72 = v135;
    (*(v132 + 32))(v131, v38, v135);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v86 = v155;
    v87 = sub_3444(v155, qword_1DB08);
    v88 = v154;
    v89 = v130;
    (*(v154 + 16))(v130, v87, v86);
    v90 = sub_11650();
    v91 = sub_11C00();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "SiriAudioSnippets#snippet create Alternative Snippet", v92, 2u);
    }

    (*(v88 + 8))(v89, v86);
    v93 = v134;
    v94 = v133;
    (*(v70 + 16))(&v133[*(v134 + 28)], v71, v72);
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *v94 = sub_11760();
    *(v94 + 1) = v95;
    v96 = *(v93 + 20);
    *&v94[v96] = swift_getKeyPath();
    sub_34C8(&qword_1C620, &qword_133D0);
    swift_storeEnumTagMultiPayload();
    v97 = &v94[*(v93 + 24)];
    v156 = 0;
    sub_119C0();
    v98 = v158;
    *v97 = v157;
    *(v97 + 1) = v98;
    sub_3510(&qword_1C628, type metadata accessor for SiriAudioAlternativeSnippet, &unk_1330C);
    v48 = sub_118E0();
    v99 = type metadata accessor for SiriAudioAlternativeSnippet;
LABEL_45:
    v84 = v99;
    v85 = v94;
    goto LABEL_46;
  }

  if (v39 == enum case for SiriAudioSnippets.shazam(_:))
  {
    (*(v36 + 96))(v38, v35);
    v70 = v121;
    v71 = v120;
    v72 = v124;
    (*(v121 + 32))(v120, v38, v124);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v100 = v155;
    v101 = sub_3444(v155, qword_1DB08);
    v102 = v154;
    v103 = v118;
    (*(v154 + 16))(v118, v101, v100);
    v104 = sub_11650();
    v105 = sub_11C00();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      *v106 = 0;
      _os_log_impl(&dword_0, v104, v105, "SiriAudioSnippets#snippet create ShazamSnippet", v106, 2u);
    }

    (*(v102 + 8))(v103, v100);
    v80 = v122;
    (*(v70 + 16))(v122, v71, v72);
    v107 = &v80[*(v123 + 20)];
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *v107 = sub_11760();
    v107[1] = v108;
    sub_3510(&qword_1C618, type metadata accessor for SiriAudioShazamSnippet, &unk_13A58);
    v48 = sub_118E0();
    v83 = type metadata accessor for SiriAudioShazamSnippet;
    goto LABEL_26;
  }

  if (v39 == enum case for SiriAudioSnippets.mediaPlayer(_:))
  {
    (*(v36 + 96))(v38, v35);
    v70 = v126;
    v71 = v125;
    v72 = v129;
    (*(v126 + 32))(v125, v38, v129);
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v109 = v155;
    v110 = sub_3444(v155, qword_1DB08);
    v111 = v154;
    v112 = v119;
    (*(v154 + 16))(v119, v110, v109);
    v113 = sub_11650();
    v114 = sub_11C00();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_0, v113, v114, "SiriAudioSnippets#snippet create SiriAudioMediaPlayerSnippet", v115, 2u);
    }

    (*(v111 + 8))(v112, v109);
    v94 = v127;
    (*(v70 + 16))(&v127[*(v128 + 24)], v71, v72);
    *v94 = sub_C710;
    *(v94 + 1) = 0;
    v94[16] = 0;
    sub_11B90();
    sub_3510(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *(v94 + 3) = sub_11760();
    *(v94 + 4) = v116;
    sub_3510(&qword_1C610, type metadata accessor for SiriAudioMediaPlayerSnippet, &unk_1386C);
    v48 = sub_118E0();
    v99 = type metadata accessor for SiriAudioMediaPlayerSnippet;
    goto LABEL_45;
  }

  result = sub_11C80();
  __break(1u);
  return result;
}

uint64_t sub_3308(uint64_t a1)
{
  v2 = sub_116F0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_11790();
}

uint64_t _s13AudioUIPlugin04SiriA19ActionButtonSnippetV8_context016_CFEA73E41E799A3I14F99E79EA469018LL7SwiftUI17EnvironmentObjectVy0fP07ContextCGvpfi_0()
{
  sub_11B90();
  sub_3510(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);

  return sub_11760();
}

uint64_t sub_3444(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_347C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_34C8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_3510(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_3558(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_35D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_115D0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_36AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_115D0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SiriAudioDisambiguationSnippet(uint64_t a1)
{
  result = qword_1C6A8;
  if (!qword_1C6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_37B0(uint64_t a1)
{
  sub_115D0();
  if (v1 <= 0x3F)
  {
    sub_3834(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3834(uint64_t a1)
{
  if (!qword_1C6B8)
  {
    sub_11B90();
    sub_57B4(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    v1 = sub_11770();
    if (!v2)
    {
      atomic_store(v1, &qword_1C6B8);
    }
  }
}

uint64_t sub_38E4(uint64_t a1)
{
  v2 = type metadata accessor for SiriAudioDisambiguationSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_5150(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_51B8(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_5150(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = swift_allocObject();
  sub_51B8(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v5);
  sub_11AE0();
  sub_34C8(&qword_1C6F8, &qword_131B8);
  sub_57B4(&qword_1C700, &type metadata accessor for PrimaryHeaderRichView, &protocol conformance descriptor for PrimaryHeaderRichView);
  sub_5330();
  return sub_11B40();
}

uint64_t sub_3B3C(uint64_t a1)
{
  v2 = type metadata accessor for SiriAudioDisambiguationSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v10[3] = sub_115B0();
  sub_5150(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_51B8(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_34C8(&qword_1C718, &unk_131C0);
  sub_34C8(&qword_1C720, &qword_13420);
  sub_5C5C(&qword_1C728, &qword_1C718, &unk_131C0, &protocol conformance descriptor for [A]);
  v7 = sub_11AC0();
  v8 = sub_57B4(&qword_1C710, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
  v10[1] = v7;
  v10[2] = v8;
  swift_getOpaqueTypeConformance2();
  sub_57B4(&qword_1C730, &type metadata accessor for SiriAudioDisambiguationItemModel, &protocol conformance descriptor for SiriAudioDisambiguationItemModel);
  return sub_11A10();
}

uint64_t sub_3D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v46 = a3;
  v4 = type metadata accessor for SiriAudioDisambiguationSnippet(0);
  v41 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v43 = v5;
  v45 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_11440();
  v6 = *(v42 - 8);
  __chkstk_darwin(v42);
  v38 = v7;
  v40 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_34C8(&qword_1C738, &qword_131D0);
  __chkstk_darwin(v8 - 8);
  v10 = &v36 - v9;
  v11 = sub_11300();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_11AC0();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_11410();
  v77 = &type metadata for String;
  v78 = &protocol witness table for String;
  v75 = v17;
  v76 = v18;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v19 = sub_11430();
  if (v20)
  {
    v21 = &protocol witness table for String;
    v22 = &type metadata for String;
  }

  else
  {
    v19 = 0;
    v22 = 0;
    v21 = 0;
    v69 = 0;
  }

  v67 = v19;
  v68 = v20;
  v70 = v22;
  v71 = v21;
  v66 = 0;
  v64 = 0u;
  v65 = 0u;
  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v60 = 0;
  v58 = 0u;
  v59 = 0u;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v23 = v44;
  if ((sub_11590() & 1) == 0)
  {
    sub_11420();
    v24 = sub_479C(v10);
    sub_5A90(v10, &qword_1C738, &qword_131D0);
    if (v24)
    {
      goto LABEL_6;
    }

LABEL_8:
    v26 = 0;
    v25 = 0;
    v48 = 0;
    v49 = 0;
    goto LABEL_9;
  }

  sub_11400();
  sub_112F0();
  v24 = sub_4A50(v14);

  (*(v12 + 8))(v14, v11);
  if (!v24)
  {
    goto LABEL_8;
  }

LABEL_6:
  v25 = &protocol witness table for AnyView;
  v26 = &type metadata for AnyView;
LABEL_9:
  v47 = v24;
  v50 = v26;
  v51 = v25;
  sub_11AB0();
  v27 = v40;
  v28 = a1;
  v29 = v42;
  (*(v6 + 16))(v40, v28, v42);
  v30 = v45;
  sub_5150(v23, v45);
  v31 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v32 = (v38 + *(v41 + 80) + v31) & ~*(v41 + 80);
  v33 = swift_allocObject();
  (*(v6 + 32))(v33 + v31, v27, v29);
  sub_51B8(v30, v33 + v32);
  sub_57B4(&qword_1C710, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
  v34 = v39;
  sub_11910();

  return (*(v37 + 8))(v16, v34);
}

uint64_t sub_42A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_11440();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v37[-v9];
  v11 = sub_11670();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v37[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v15 = sub_3444(v11, qword_1DB08);
  (*(v12 + 16))(v14, v15, v11);
  v42 = v11;
  v43 = v12;
  v16 = *(v5 + 16);
  v16(v10, a1, v4);
  v16(v8, a1, v4);
  v17 = sub_11650();
  v18 = sub_11C00();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = a1;
    v20 = v19;
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v20 = 136315394;
    v21 = sub_11400();
    v38 = v18;
    v23 = v22;
    v40 = a2;
    v24 = *(v5 + 8);
    v24(v10, v4);
    v25 = sub_9E78(v21, v23, v44);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = sub_11410();
    v28 = v27;
    v24(v8, v4);
    a2 = v40;
    v29 = sub_9E78(v26, v28, v44);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_0, v17, v38, "SiriAudioDisambiguationSnippet#body tapped on %s, itemTitle: %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    v30 = *(v5 + 8);
    v30(v8, v4);
    v30(v10, v4);
  }

  (*(v43 + 8))(v14, v42);
  v31 = *(a2 + *(type metadata accessor for SiriAudioDisambiguationSnippet(0) + 20));
  if (v31)
  {
    v32 = v31;
    sub_115A0();
    sub_34C8(&qword_1C750, &qword_131E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_13120;
    v44[0] = 0x64496D657469;
    v44[1] = 0xE600000000000000;
    sub_11C40();
    v34 = sub_11400();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v34;
    *(inited + 80) = v35;
    sub_5954(inited);
    swift_setDeallocating();
    sub_5A90(inited + 32, &qword_1C758, &qword_131E8);
    sub_11B80();
  }

  else
  {
    sub_11B90();
    sub_57B4(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    result = sub_11750();
    __break(1u);
  }

  return result;
}

uint64_t sub_479C(uint64_t a1)
{
  v2 = sub_11300();
  v17 = *(v2 - 8);
  v18 = v2;
  __chkstk_darwin(v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_34C8(&qword_1C738, &qword_131D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_112C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5BB0(a1, v10, &qword_1C738, &qword_131D0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_5A90(v10, &qword_1C738, &qword_131D0);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 56))(v8, 1, 1, v11);
    sub_112E0();
    sub_5A90(v8, &qword_1C738, &qword_131D0);
    v16 = sub_4A50(v4);
    (*(v17 + 8))(v4, v18);
    (*(v12 + 8))(v14, v11);
    return v16;
  }
}

uint64_t sub_4A50(char *a1)
{
  v2 = sub_11A40();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_34C8(&qword_1C740, &qword_131D8);
  v5 = *(v48 - 8);
  __chkstk_darwin(v48);
  v47 = &v37 - v6;
  v7 = sub_11300();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v44 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v37 - v11;
  v13 = sub_11670();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v17 = sub_3444(v13, qword_1DB08);
  (*(v14 + 16))(v16, v17, v13);
  v43 = v14;
  v18 = *(v8 + 16);
  v45 = a1;
  v49 = v18;
  v18(v12, a1, v7);
  v19 = v13;
  v20 = sub_11650();
  v42 = sub_11C00();
  if (os_log_type_enabled(v20, v42))
  {
    v21 = swift_slowAlloc();
    v41 = v2;
    v22 = v21;
    v37 = v21;
    v38 = swift_slowAlloc();
    v50 = v38;
    *v22 = 136315138;
    v39 = v19;
    v23 = v44;
    v49(v44, v12, v7);
    v51 = sub_11BB0();
    v52 = v24;
    v25 = sub_11BE0();
    v40 = v3;
    v26 = v5;
    v28 = v27;
    (*(v8 + 8))(v12, v7);
    v29 = sub_9E78(v25, v28, &v50);
    v5 = v26;
    v3 = v40;

    v30 = v37;
    *(v37 + 4) = v29;
    _os_log_impl(&dword_0, v20, v42, "SiriAudioDisambiguationSnippet#imageView building imageView: %s", v30, 0xCu);
    sub_57FC(v38);

    v2 = v41;

    (*(v43 + 8))(v16, v39);
  }

  else
  {

    (*(v8 + 8))(v12, v7);
    (*(v43 + 8))(v16, v19);
    v23 = v44;
  }

  v49(v23, v45, v7);
  v31 = v46;
  sub_11A50();
  v32 = sub_57B4(&qword_1C748, &type metadata accessor for RFImageView, &protocol conformance descriptor for RFImageView);
  v33 = v47;
  sub_11920();
  (*(v3 + 8))(v31, v2);
  v51 = v2;
  v52 = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v48;
  v35 = sub_118E0();
  (*(v5 + 8))(v33, v34);
  return v35;
}

uint64_t sub_5008(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_5150(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_51B8(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_34C8(&qword_1C6E8, &qword_131B0);
  sub_5C5C(&qword_1C6F0, &qword_1C6E8, &qword_131B0, &protocol conformance descriptor for DisambiguationStandardView<A, B>);
  return sub_11A70();
}

uint64_t sub_5150(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioDisambiguationSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_51B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioDisambiguationSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5234(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_52AC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SiriAudioDisambiguationSnippet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_5330()
{
  result = qword_1C708;
  if (!qword_1C708)
  {
    sub_5234(&qword_1C6F8, &qword_131B8);
    sub_11AC0();
    sub_57B4(&qword_1C710, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C708);
  }

  return result;
}

uint64_t sub_5414()
{
  v1 = (type metadata accessor for SiriAudioDisambiguationSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_115D0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_54FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SiriAudioDisambiguationSnippet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_3D70(a1, v6, a2);
}

uint64_t sub_557C()
{
  v1 = sub_11440();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (type metadata accessor for SiriAudioDisambiguationSnippet(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  (*(v2 + 8))(v0 + v4, v1);
  v11 = sub_115D0();
  (*(*(v11 - 8) + 8))(v0 + v8, v11);

  return _swift_deallocObject(v0, v8 + v9, v10 | 7);
}

uint64_t sub_56E8()
{
  v1 = *(sub_11440() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SiriAudioDisambiguationSnippet(0) - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_42A4(v0 + v2, v5);
}

uint64_t sub_57B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_57FC(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_5848(uint64_t a1)
{
  v2 = v1;
  v4 = sub_11C20(*(v2 + 40));

  return sub_588C(a1, v4);
}

unint64_t sub_588C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_5B00(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_11C30();
      sub_5B5C(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_5954(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_34C8(&qword_1C760, &qword_131F0);
    v3 = sub_11C70();
    v4 = a1 + 32;

    while (1)
    {
      sub_5BB0(v4, v13, &qword_1C758, &qword_131E8);
      result = sub_5848(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_5AF0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_5A90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_34C8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_5AF0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_5BB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_34C8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_5C5C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_5234(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SiriAudioActionButtonSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for SiriAudioActionButtonSnippet(0) + 20));
  sub_11B90();
  sub_6EAC(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  *v4 = sub_11760();
  v4[1] = v5;
  v6 = sub_11550();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2, a1, v6);
}

uint64_t type metadata accessor for SiriAudioActionButtonSnippet(uint64_t a1)
{
  result = qword_1C7D0;
  if (!qword_1C7D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriAudioActionButtonSnippet.body.getter()
{
  v1 = type metadata accessor for SiriAudioActionButtonSnippet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_66EC(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_6754(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  return sub_11A70();
}

uint64_t sub_5EE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v3 = sub_11500();
  v51 = *(v3 - 8);
  v52 = v3;
  __chkstk_darwin(v3);
  v49 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_11A30();
  v54 = *(v5 - 8);
  v55 = v5;
  __chkstk_darwin(v5);
  v53 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_11560();
  v7 = *(v41 - 8);
  __chkstk_darwin(v41);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_11A60();
  v44 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SiriAudioActionButtonSnippet(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v57 = sub_34C8(&qword_1C818, &qword_13540);
  v42 = *(v57 - 8);
  __chkstk_darwin(v57);
  v16 = &v40 - v15;
  v48 = sub_34C8(&qword_1C820, &qword_132B0);
  v45 = *(v48 - 8);
  __chkstk_darwin(v48);
  v18 = &v40 - v17;
  v19 = sub_34C8(&qword_1C828, &qword_132B8);
  v46 = *(v19 - 8);
  v47 = v19;
  __chkstk_darwin(v19);
  v43 = &v40 - v20;
  sub_66EC(a1, &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = swift_allocObject();
  sub_6754(&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
  v58 = a1;
  sub_34C8(&qword_1C830, &unk_132C0);
  sub_5C5C(&qword_1C838, &qword_1C830, &unk_132C0, &protocol conformance descriptor for Label<A, B>);
  sub_11A00();
  sub_11530();
  v23 = (*(v7 + 88))(v9, v41);
  if (v23 == enum case for SiriAudioActionButtonSnippetStyle.button(_:))
  {
    sub_117F0();
LABEL_5:
    v24 = v50;
    goto LABEL_8;
  }

  if (v23 == enum case for SiriAudioActionButtonSnippetStyle.buttonCircularIconOnly(_:))
  {
    sub_11800();
    goto LABEL_5;
  }

  v24 = v50;
  if (v23 != enum case for SiriAudioActionButtonSnippetStyle.buttonCircularIconAndTitle(_:))
  {
    sub_11C80();
    __break(1u);
    goto LABEL_16;
  }

  sub_11810();
LABEL_8:
  v25 = sub_5C5C(&qword_1C840, &qword_1C818, &qword_13540, &protocol conformance descriptor for Button<A>);
  v26 = sub_6EAC(&qword_1C848, &type metadata accessor for RFButtonStyle, &protocol conformance descriptor for RFButtonStyle);
  v27 = v57;
  sub_11970();
  (*(v44 + 8))(v11, v24);
  (*(v42 + 8))(v16, v27);
  v28 = v49;
  sub_11510();
  v29 = (*(v51 + 88))(v28, v52);
  if (v29 == enum case for SiriAudioActionButtonSnippetRole.standard(_:))
  {
    v30 = &enum case for ButtonItemButtonStyle.Role.standard(_:);
LABEL_14:
    v32 = v53;
    v31 = v54;
    v33 = v55;
    (*(v54 + 104))(v53, *v30, v55);
    v59 = v57;
    v60 = v24;
    v61 = v25;
    v62 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v35 = v43;
    v36 = v48;
    sub_118F0();
    (*(v31 + 8))(v32, v33);
    (*(v45 + 8))(v18, v36);
    v59 = v36;
    v60 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v37 = v47;
    v38 = sub_118E0();
    result = (*(v46 + 8))(v35, v37);
    *v56 = v38;
    return result;
  }

  if (v29 == enum case for SiriAudioActionButtonSnippetRole.preferred(_:))
  {
    v30 = &enum case for ButtonItemButtonStyle.Role.preferred(_:);
    goto LABEL_14;
  }

  if (v29 == enum case for SiriAudioActionButtonSnippetRole.preferredAndDestructive(_:))
  {
    v30 = &enum case for ButtonItemButtonStyle.Role.preferredAndDestructive(_:);
    goto LABEL_14;
  }

LABEL_16:
  result = sub_11C80();
  __break(1u);
  return result;
}

uint64_t sub_66EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioActionButtonSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6754(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioActionButtonSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_67D8(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for SiriAudioActionButtonSnippet(0) + 20));
  if (v1)
  {
    v2 = v1;
    v3 = sub_11540();
    sub_11B70();
  }

  else
  {
    sub_11B90();
    sub_6EAC(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    sub_11750();
    __break(1u);
  }
}

uint64_t sub_68A4@<X0>(uint64_t a1@<X8>)
{
  sub_11520();
  sub_6EFC();
  result = sub_118D0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_6904(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_66EC(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_6754(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  return sub_11A70();
}

uint64_t sub_6A20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_11550();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_6AFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_11550();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_6BB4(uint64_t a1)
{
  sub_11550();
  if (v1 <= 0x3F)
  {
    sub_3834(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_6C7C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for SiriAudioActionButtonSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_5EE0(v4, a1);
}

uint64_t sub_6CEC()
{
  v1 = (type metadata accessor for SiriAudioActionButtonSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_11550();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

void sub_6DD4()
{
  v1 = *(type metadata accessor for SiriAudioActionButtonSnippet(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_67D8(v2);
}

uint64_t sub_6EAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_6EFC()
{
  result = qword_1C850;
  if (!qword_1C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C850);
  }

  return result;
}

uint64_t sub_6F70(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_34C8(&qword_1C858, qword_132D0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 20);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_114C0();
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

void *sub_70C0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v8 = sub_34C8(&qword_1C858, qword_132D0);
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
      v13 = sub_114C0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for SiriAudioAlternativeSnippet(uint64_t a1)
{
  result = qword_1C8B8;
  if (!qword_1C8B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_723C(uint64_t a1)
{
  sub_3834(319);
  if (v1 <= 0x3F)
  {
    sub_72F0(319);
    if (v2 <= 0x3F)
    {
      sub_7348();
      if (v3 <= 0x3F)
      {
        sub_114C0();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_72F0(uint64_t a1)
{
  if (!qword_1C8C8)
  {
    sub_116F0();
    v1 = sub_11700();
    if (!v2)
    {
      atomic_store(v1, &qword_1C8C8);
    }
  }
}

void sub_7348()
{
  if (!qword_1C8D0)
  {
    v0 = sub_119F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1C8D0);
    }
  }
}

uint64_t sub_73B4@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v31 = sub_34C8(&qword_1C908, &qword_13360);
  v1 = *(v31 - 8);
  __chkstk_darwin(v31);
  v3 = &v28 - v2;
  v29 = sub_34C8(&qword_1C910, &qword_13368);
  __chkstk_darwin(v29);
  v5 = &v28 - v4;
  v6 = sub_34C8(&qword_1C918, &qword_13370);
  __chkstk_darwin(v6 - 8);
  v8 = (&v28 - v7);
  v9 = sub_34C8(&qword_1C920, &qword_13378);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_34C8(&qword_1C928, &qword_13380);
  v28 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  type metadata accessor for SiriAudioAlternativeSnippet(0);
  if (sub_11480())
  {
    sub_78EC(v11);
    KeyPath = swift_getKeyPath();
    v16 = &v11[*(v9 + 36)];
    v17 = *(sub_34C8(&qword_1C948, &qword_13388) + 28);
    v18 = enum case for ColorScheme.dark(_:);
    v19 = sub_116F0();
    (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
    *v16 = KeyPath;
    *v8 = sub_119A0();
    v20 = enum case for HostBackground.color(_:);
    v21 = sub_11A80();
    v22 = *(v21 - 8);
    (*(v22 + 104))(v8, v20, v21);
    (*(v22 + 56))(v8, 0, 1, v21);
    v23 = sub_9388();
    sub_11930();
    sub_5A90(v8, &qword_1C918, &qword_13370);
    sub_9474(v11);
    v24 = v28;
    (*(v28 + 16))(v5, v14, v12);
    swift_storeEnumTagMultiPayload();
    v32 = v9;
    v33 = v23;
    swift_getOpaqueTypeConformance2();
    sub_5C5C(&qword_1C938, &qword_1C908, &qword_13360, &protocol conformance descriptor for ExpandableStandardView<A, B>);
    sub_117E0();
    return (*(v24 + 8))(v14, v12);
  }

  else
  {
    sub_78EC(v3);
    v26 = v31;
    (*(v1 + 16))(v5, v3, v31);
    swift_storeEnumTagMultiPayload();
    v27 = sub_9388();
    v32 = v9;
    v33 = v27;
    swift_getOpaqueTypeConformance2();
    sub_5C5C(&qword_1C938, &qword_1C908, &qword_13360, &protocol conformance descriptor for ExpandableStandardView<A, B>);
    sub_117E0();
    return (*(v1 + 8))(v3, v26);
  }
}

uint64_t sub_78EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v36 = sub_11B50();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SiriAudioAlternativeSnippet(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v33 = v9;
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_34C8(&qword_1C950, &qword_133C0);
  v35 = *(v32 - 8);
  __chkstk_darwin(v32);
  v12 = &v29 - v11;
  v38 = sub_34C8(&qword_1C958, &qword_133C8);
  __chkstk_darwin(v38);
  v37 = &v29 - v13;
  sub_94DC(v2, v10);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_9544(v10, v15 + v14);
  sub_34C8(&qword_1C960, &qword_133D8);
  sub_95C0();
  sub_11A70();
  v16 = v36;
  (*(v3 + 104))(v5, enum case for ComponentStackBottomSpacing.none(_:), v36);
  v34 = &protocol conformance descriptor for ComponentStack<A>;
  v17 = sub_5C5C(&qword_1C9A8, &qword_1C950, &qword_133C0, &protocol conformance descriptor for ComponentStack<A>);
  v18 = v32;
  sub_11940();
  (*(v3 + 8))(v5, v16);
  (*(v35 + 8))(v12, v18);
  v19 = v30;
  v20 = v30 + *(v7 + 32);
  v21 = *v20;
  v22 = *(v20 + 8);
  v43 = v21;
  v44 = v22;
  sub_34C8(&qword_1C9B0, &qword_133F8);
  sub_119E0();
  v35 = v41;
  v36 = v40;
  v31 = v42;
  sub_94DC(v19, v10);
  v23 = swift_allocObject();
  sub_9544(v10, v23 + v14);
  sub_34C8(&qword_1C9B8, &qword_13400);
  v40 = v18;
  v41 = v17;
  swift_getOpaqueTypeConformance2();
  v24 = sub_5234(&qword_1C9C0, &qword_13408);
  v25 = sub_5234(&qword_1C9C8, &qword_13410);
  v26 = sub_5C5C(&qword_1C9D0, &qword_1C9C8, &qword_13410, v34);
  v40 = v25;
  v41 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v24;
  v41 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  return sub_11AF0();
}

uint64_t sub_7DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v23 = sub_11B50();
  v3 = *(v23 - 8);
  __chkstk_darwin(v23);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SiriAudioAlternativeSnippet(0);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_34C8(&qword_1C9C8, &qword_13410);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - v10;
  v22 = sub_34C8(&qword_1C9C0, &qword_13408);
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v21 - v13;
  sub_94DC(a1, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v16 = swift_allocObject();
  sub_9544(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  sub_34C8(&qword_1C9D8, &qword_13418);
  sub_9814();
  sub_11A70();
  v17 = v23;
  (*(v3 + 104))(v5, enum case for ComponentStackBottomSpacing.none(_:), v23);
  v18 = sub_5C5C(&qword_1C9D0, &qword_1C9C8, &qword_13410, &protocol conformance descriptor for ComponentStack<A>);
  sub_11940();
  (*(v3 + 8))(v5, v17);
  (*(v9 + 8))(v11, v8);
  v25 = v8;
  v26 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v22;
  sub_11980();
  return (*(v12 + 8))(v14, v19);
}

uint64_t sub_816C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v25 = sub_11B10();
  v3 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_34C8(&qword_1C978, &qword_133E0);
  __chkstk_darwin(v6);
  v8 = &v25 - v7;
  v9 = (a1 + *(type metadata accessor for SiriAudioAlternativeSnippet(0) + 24));
  v10 = *v9;
  v11 = *(v9 + 1);
  LOBYTE(v44) = v10;
  v45 = v11;
  sub_34C8(&qword_1C9B0, &qword_133F8);
  sub_119D0();
  if (v40)
  {
    v12 = 0;
    v13 = 0xE000000000000000;
  }

  else
  {
    v12 = sub_114B0();
  }

  v46 = &type metadata for String;
  v47 = &protocol witness table for String;
  v44 = v12;
  v45 = v13;
  v42 = &type metadata for String;
  v43 = &protocol witness table for String;
  v40 = 0;
  v41 = 0xE000000000000000;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v14 = sub_114A0();
  v32 = &type metadata for String;
  v33 = &protocol witness table for String;
  v30 = v14;
  v31 = v15;
  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  sub_11B00();
  KeyPath = swift_getKeyPath();
  (*(v3 + 32))(v8, v5, v25);
  v17 = &v8[*(v6 + 36)];
  *v17 = KeyPath;
  *(v17 + 1) = 1;
  v17[16] = 0;
  v18 = sub_34C8(&qword_1C960, &qword_133D8);
  v19 = v26;
  v20 = (v26 + *(v18 + 36));
  v21 = *(sub_34C8(&qword_1C9A0, &qword_133F0) + 28);
  v22 = enum case for Text.TruncationMode.tail(_:);
  v23 = sub_118C0();
  (*(*(v23 - 8) + 104))(v20 + v21, v22, v23);
  *v20 = swift_getKeyPath();
  return sub_A61C(v8, v19);
}

uint64_t sub_8444(uint64_t a1)
{
  v2 = type metadata accessor for SiriAudioAlternativeSnippet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v15 = sub_11490();
  sub_94DC(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_9544(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_34C8(&qword_1C9E8, &qword_13428);
  sub_34C8(&qword_1C9F0, &qword_13430);
  sub_5C5C(&qword_1C9F8, &qword_1C9E8, &qword_13428, &protocol conformance descriptor for [A]);
  v7 = sub_5234(&qword_1C720, &qword_13420);
  v8 = sub_11AC0();
  v9 = sub_A480(&qword_1C710, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
  v13 = v8;
  v14 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v7;
  v14 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_A480(&qword_1CA00, &type metadata accessor for SiriAudioAlternativeItemModel, &protocol conformance descriptor for SiriAudioAlternativeItemModel);
  return sub_11A10();
}

uint64_t sub_86C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a2;
  v46 = a3;
  v47 = sub_112D0();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SiriAudioAlternativeSnippet(0);
  v37 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v38 = v6;
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_113F0();
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_11AC0();
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_34C8(&qword_1C720, &qword_13420);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v13 = &v35 - v12;
  v14 = sub_113B0();
  v77 = &type metadata for String;
  v78 = &protocol witness table for String;
  v75 = v14;
  v76 = v15;
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  v16 = sub_113E0();
  v70 = &type metadata for String;
  v71 = &protocol witness table for String;
  v68 = v16;
  v69 = v17;
  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0;
  v59 = 0u;
  v60 = 0u;
  v18 = a1;
  v19 = v35;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v55 = 0;
  v53 = 0u;
  v54 = 0u;
  v20 = sub_8C28();
  if (v20)
  {
    v21 = &protocol witness table for AnyView;
    v22 = &type metadata for AnyView;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v49 = 0;
    v50 = 0;
  }

  v48 = v20;
  v51 = v22;
  v52 = v21;
  sub_11AB0();
  v23 = v36;
  (*(v7 + 16))(&v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v36);
  v24 = v40;
  sub_94DC(v19, v40);
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = (v8 + *(v37 + 80) + v25) & ~*(v37 + 80);
  v27 = swift_allocObject();
  (*(v7 + 32))(v27 + v25, v9, v23);
  sub_9544(v24, v27 + v26);
  v28 = sub_A480(&qword_1C710, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
  v29 = v42;
  sub_11910();

  (*(v39 + 8))(v11, v29);
  v31 = v44;
  v30 = v45;
  v32 = v47;
  (*(v45 + 104))(v44, enum case for SeparatorStyle.insetLeading(_:), v47);
  v75 = v29;
  v76 = v28;
  swift_getOpaqueTypeConformance2();
  v33 = v43;
  sub_11900();
  (*(v30 + 8))(v31, v32);
  return (*(v41 + 8))(v13, v33);
}

uint64_t sub_8C28()
{
  v0 = sub_11300();
  __chkstk_darwin(v0 - 8);
  v1 = sub_11A40();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_34C8(&qword_1C738, &qword_131D0);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = sub_112C0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_113D0();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_5A90(v10, &qword_1C738, &qword_131D0);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(v12 + 56))(v8, 1, 1, v11);
    sub_112E0();
    sub_5A90(v8, &qword_1C738, &qword_131D0);
    sub_11A50();
    sub_A480(&qword_1C748, &type metadata accessor for RFImageView, &protocol conformance descriptor for RFImageView);
    v16 = sub_118E0();
    (*(v2 + 8))(v4, v1);
    (*(v12 + 8))(v14, v11);
    return v16;
  }
}

void sub_8F54(uint64_t a1, id *a2)
{
  v4 = sub_113F0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v33[-v9];
  v11 = sub_11670();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v33[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v15 = sub_3444(v11, qword_1DB08);
  (*(v12 + 16))(v14, v15, v11);
  v38 = v11;
  v39 = v12;
  v16 = *(v5 + 16);
  v16(v10, a1, v4);
  v16(v8, a1, v4);
  v17 = sub_11650();
  v18 = sub_11C00();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v36 = a2;
    v20 = v19;
    v35 = swift_slowAlloc();
    v40 = v35;
    *v20 = 136315394;
    v21 = sub_113A0();
    v34 = v18;
    v23 = v22;
    v37 = a1;
    v24 = *(v5 + 8);
    v24(v10, v4);
    v25 = sub_9E78(v21, v23, &v40);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2080;
    v26 = sub_113B0();
    v28 = v27;
    v24(v8, v4);
    v29 = sub_9E78(v26, v28, &v40);

    *(v20 + 14) = v29;
    _os_log_impl(&dword_0, v17, v34, "AlternativeItemsView#body tapped on %s, itemTitle: %s", v20, 0x16u);
    swift_arrayDestroy();

    a2 = v36;
  }

  else
  {

    v30 = *(v5 + 8);
    v30(v8, v4);
    v30(v10, v4);
  }

  (*(v39 + 8))(v14, v38);
  if (*a2)
  {
    v31 = *a2;
    v32 = sub_113C0();
    sub_11B70();
  }

  else
  {
    sub_11B90();
    sub_A480(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    sub_11750();
    __break(1u);
  }
}

unint64_t sub_9388()
{
  result = qword_1C930;
  if (!qword_1C930)
  {
    sub_5234(&qword_1C920, &qword_13378);
    sub_5C5C(&qword_1C938, &qword_1C908, &qword_13360, &protocol conformance descriptor for ExpandableStandardView<A, B>);
    sub_5C5C(&qword_1C940, &qword_1C948, &qword_13388, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C930);
  }

  return result;
}

uint64_t sub_9474(uint64_t a1)
{
  v2 = sub_34C8(&qword_1C920, &qword_13378);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_94DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioAlternativeSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioAlternativeSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_95C0()
{
  result = qword_1C968;
  if (!qword_1C968)
  {
    sub_5234(&qword_1C960, &qword_133D8);
    sub_9678();
    sub_5C5C(&qword_1C998, &qword_1C9A0, &qword_133F0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C968);
  }

  return result;
}

unint64_t sub_9678()
{
  result = qword_1C970;
  if (!qword_1C970)
  {
    sub_5234(&qword_1C978, &qword_133E0);
    sub_A480(&qword_1C980, &type metadata accessor for SimpleItemStandardView, &protocol conformance descriptor for SimpleItemStandardView);
    sub_5C5C(&qword_1C988, &qword_1C990, &qword_133E8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C970);
  }

  return result;
}

uint64_t sub_9790(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SiriAudioAlternativeSnippet(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_9814()
{
  result = qword_1C9E0;
  if (!qword_1C9E0)
  {
    sub_5234(&qword_1C9D8, &qword_13418);
    sub_5234(&qword_1C720, &qword_13420);
    sub_11AC0();
    sub_A480(&qword_1C710, &type metadata accessor for SimpleItemRichView, &protocol conformance descriptor for SimpleItemRichView);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9E0);
  }

  return result;
}

uint64_t sub_993C()
{
  v1 = type metadata accessor for SiriAudioAlternativeSnippet(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  v6 = *(v1 + 20);
  sub_34C8(&qword_1C620, &qword_133D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_116F0();
    (*(*(v7 - 8) + 8))(v5 + v6, v7);
  }

  else
  {
  }

  v8 = *(v1 + 28);
  v9 = sub_114C0();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_9AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SiriAudioAlternativeSnippet(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_86C4(a1, v6, a2);
}

uint64_t sub_9B30()
{
  v1 = sub_113F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for SiriAudioAlternativeSnippet(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;

  v11 = *(v6 + 20);
  sub_34C8(&qword_1C620, &qword_133D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_116F0();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = *(v6 + 28);
  v14 = sub_114C0();
  (*(*(v14 - 8) + 8))(v10 + v13, v14);

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

void sub_9D28()
{
  v1 = *(sub_113F0() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for SiriAudioAlternativeSnippet(0) - 8);
  v5 = (v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80)));

  sub_8F54(v0 + v2, v5);
}

uint64_t sub_9E1C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_9E78(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_9E78(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_9F44(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_A420(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_57FC(v11);
  return v7;
}

unint64_t sub_9F44(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_A050(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_11C60();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_A050(uint64_t a1, unint64_t a2)
{
  v3 = sub_A09C(a1, a2);
  sub_A1CC(&off_18F40);
  return v3;
}

char *sub_A09C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_A2B8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_11C60();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_11BD0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_A2B8(v10, 0);
        result = sub_11C50();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_A1CC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_A32C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_A2B8(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_34C8(&qword_1CA08, &unk_13438);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_A32C(char *result, int64_t a2, char a3, char *a4)
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
    sub_34C8(&qword_1CA08, &unk_13438);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_A420(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_A480(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A4C8@<X0>(uint64_t a1@<X8>)
{
  result = sub_117C0();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_A550(uint64_t a1)
{
  v2 = sub_118C0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_117B0();
}

uint64_t sub_A61C(uint64_t a1, uint64_t a2)
{
  v4 = sub_34C8(&qword_1C978, &qword_133E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_A690()
{
  result = qword_1CA10;
  if (!qword_1CA10)
  {
    sub_5234(&qword_1CA18, &qword_134A8);
    sub_5234(&qword_1C920, &qword_13378);
    sub_9388();
    swift_getOpaqueTypeConformance2();
    sub_5C5C(&qword_1C938, &qword_1C908, &qword_13360, &protocol conformance descriptor for ExpandableStandardView<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA10);
  }

  return result;
}

uint64_t ConfirmationSnippet.init(model:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(type metadata accessor for ConfirmationSnippet(0) + 20));
  sub_11B90();
  sub_AF08(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
  *v4 = sub_11760();
  v4[1] = v5;
  v6 = sub_11580();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2, a1, v6);
}

uint64_t type metadata accessor for ConfirmationSnippet(uint64_t a1)
{
  result = qword_1CA80;
  if (!qword_1CA80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConfirmationSnippet.body.getter()
{
  v1 = type metadata accessor for ConfirmationSnippet(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1 - 8);
  sub_AE38(v0, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_AEA0(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_11AA0();
  sub_AF08(&qword_1CA20, &type metadata accessor for BinaryButtonView, &protocol conformance descriptor for BinaryButtonView);
  return sub_11A70();
}

uint64_t sub_A9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v27 = sub_11A30();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ConfirmationSnippet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = sub_34C8(&qword_1C818, &qword_13540);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - v11;
  v13 = sub_34C8(&qword_1CAC8, &unk_13548);
  v14 = *(v13 - 8);
  v25 = v13;
  v26 = v14;
  __chkstk_darwin(v13);
  v16 = &v25 - v15;
  v17 = sub_AF6C();
  v35 = &type metadata for AnyView;
  v36 = &protocol witness table for AnyView;
  v34 = v17;
  sub_AE38(a1, &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_AEA0(&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  v29 = a1;
  sub_34C8(&qword_1C830, &unk_132C0);
  sub_5C5C(&qword_1C838, &qword_1C830, &unk_132C0, &protocol conformance descriptor for Label<A, B>);
  sub_11A00();
  v20 = v27;
  (*(v3 + 104))(v5, enum case for ButtonItemButtonStyle.Role.standard(_:), v27);
  v21 = sub_5C5C(&qword_1C840, &qword_1C818, &qword_13540, &protocol conformance descriptor for Button<A>);
  sub_118F0();
  (*(v3 + 8))(v5, v20);
  (*(v10 + 8))(v12, v9);
  v30 = v9;
  v31 = v21;
  swift_getOpaqueTypeConformance2();
  v22 = v25;
  v23 = sub_118E0();
  (*(v26 + 8))(v16, v22);
  v33 = &protocol witness table for AnyView;
  v32 = &type metadata for AnyView;
  v30 = v23;
  return sub_11A90();
}

uint64_t sub_AE38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_AEA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConfirmationSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_AF08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_AF6C()
{
  v26 = sub_11A30();
  v1 = *(v26 - 8);
  __chkstk_darwin(v26);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ConfirmationSnippet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = sub_34C8(&qword_1C818, &qword_13540);
  v23 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v23 - v8;
  v10 = sub_34C8(&qword_1CAC8, &unk_13548);
  v11 = *(v10 - 8);
  v24 = v10;
  v25 = v11;
  __chkstk_darwin(v10);
  v13 = &v23 - v12;
  sub_AE38(v0, &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  sub_AEA0(&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v27 = v0;
  sub_34C8(&qword_1C830, &unk_132C0);
  sub_5C5C(&qword_1C838, &qword_1C830, &unk_132C0, &protocol conformance descriptor for Label<A, B>);
  sub_11A00();
  v16 = sub_11570();
  v17 = &enum case for ButtonItemButtonStyle.Role.preferredAndDestructive(_:);
  if ((v16 & 1) == 0)
  {
    v17 = &enum case for ButtonItemButtonStyle.Role.preferred(_:);
  }

  v18 = v26;
  (*(v1 + 104))(v3, *v17, v26);
  v19 = sub_5C5C(&qword_1C840, &qword_1C818, &qword_13540, &protocol conformance descriptor for Button<A>);
  sub_118F0();
  (*(v1 + 8))(v3, v18);
  (*(v23 + 8))(v9, v7);
  v28 = v7;
  v29 = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v24;
  v21 = sub_118E0();
  (*(v25 + 8))(v13, v20);
  return v21;
}

void sub_B378(uint64_t a1, const char *a2, uint64_t (*a3)(void))
{
  v6 = sub_11670();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v10 = sub_3444(v6, qword_1DB08);
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_11650();
  v12 = sub_11C00();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_0, v11, v12, a2, v13, 2u);
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(a1 + *(type metadata accessor for ConfirmationSnippet(0) + 20));
  if (v14)
  {
    v15 = v14;
    v16 = a3();
    sub_11B70();
  }

  else
  {
    sub_11B90();
    sub_AF08(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    sub_11750();
    __break(1u);
  }
}

uint64_t sub_B5B8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  a1();
  sub_6EFC();
  result = sub_118D0();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_B618(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_AE38(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_AEA0(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_11AA0();
  sub_AF08(&qword_1CA20, &type metadata accessor for BinaryButtonView, &protocol conformance descriptor for BinaryButtonView);
  return sub_11A70();
}

uint64_t sub_B76C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_11580();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_B848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_11580();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_B900(uint64_t a1)
{
  sub_11580();
  if (v1 <= 0x3F)
  {
    sub_3834(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_B9C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ConfirmationSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_A9F8(v4, a1);
}

uint64_t sub_BB00()
{
  v1 = (type metadata accessor for ConfirmationSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_11580();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_BD34()
{
  v0 = sub_11670();
  sub_C200(v0, qword_1DAF0);
  sub_3444(v0, qword_1DAF0);
  return sub_11660();
}

Swift::Int sub_BDC0()
{
  sub_11CE0();
  sub_11CF0(0);
  return sub_11D00();
}

Swift::Int sub_BE2C(uint64_t a1)
{
  sub_11CE0();
  sub_11CF0(0);
  return sub_11D00();
}

unint64_t sub_BEB4()
{
  result = qword_1CB68;
  if (!qword_1CB68)
  {
    sub_11450();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB68);
  }

  return result;
}

uint64_t sub_BF24@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_BF70(uint64_t a1, uint64_t a2)
{
  v2 = sub_11670();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C600 != -1)
  {
    swift_once();
  }

  v6 = sub_3444(v2, qword_1DAF0);
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_11650();
  v8 = sub_11C00();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v11 = sub_11BC0();
    v13 = sub_9E78(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "Plugin#view %s", v9, 0xCu);
    sub_57FC(v10);
  }

  (*(v3 + 8))(v5, v2);
  sub_C1AC();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_C1AC()
{
  result = qword_1CB70;
  if (!qword_1CB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB70);
  }

  return result;
}

uint64_t *sub_C200(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_C264(uint64_t a1)
{
  v3 = sub_11450();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v24 - v8;
  v10 = sub_11670();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C600 != -1)
  {
    swift_once();
  }

  v14 = sub_3444(v10, qword_1DAF0);
  (*(v11 + 16))(v13, v14, v10);
  v26 = v10;
  v27 = v11;
  v15 = *(v4 + 16);
  v28 = a1;
  v15(v9, a1, v3);
  v16 = sub_11650();
  v25 = sub_11C00();
  if (os_log_type_enabled(v16, v25))
  {
    v17 = swift_slowAlloc();
    v24[1] = v1;
    v18 = v17;
    v24[0] = swift_slowAlloc();
    v29 = v24[0];
    *v18 = 136315138;
    v15(v7, v9, v3);
    v19 = sub_11BB0();
    v21 = v20;
    (*(v4 + 8))(v9, v3);
    v22 = sub_9E78(v19, v21, &v29);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_0, v16, v25, "AudioUIPlugin#snippet %s", v18, 0xCu);
    sub_57FC(v24[0]);
  }

  else
  {

    (*(v4 + 8))(v9, v3);
  }

  (*(v27 + 8))(v13, v26);
  return SiriAudioSnippets.snippet.getter();
}

uint64_t getEnumTagSinglePayload for Plugin.Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Plugin.Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_C694()
{
  result = qword_1CB78;
  if (!qword_1CB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CB78);
  }

  return result;
}

uint64_t sub_C710()
{
  type metadata accessor for MediaPlayerHeightController(0);
  v0 = swift_allocObject();
  sub_116A0();
  return v0;
}

uint64_t sub_C770@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = type metadata accessor for SiriAudioAlternativeSnippet(0);
  v72 = *(v3 - 8);
  v73 = v3;
  __chkstk_darwin(v3);
  v61 = (v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_34C8(&qword_1CE80, &qword_138C8);
  __chkstk_darwin(v5 - 8);
  v7 = v59 - v6;
  v8 = sub_114C0();
  v68 = *(v8 - 8);
  v69 = v8;
  __chkstk_darwin(v8);
  v60 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_34C8(&qword_1CE88, &qword_138D0);
  v11 = __chkstk_darwin(v10 - 8);
  v71 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v70 = v59 - v13;
  v14 = sub_34C8(&qword_1CE90, &qword_138D8);
  __chkstk_darwin(v14 - 8);
  v16 = v59 - v15;
  v17 = sub_11620();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriAudioMediaPlayerSnippet(0);
  sub_114E0();
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_5A90(v16, &qword_1CE90, &qword_138D8);
    v21 = 0;
    v22 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v77 = 0;
    v78 = 0;
    v62 = 0;
    v63 = 0;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    v23 = 0;
  }

  else
  {
    v59[0] = v7;
    (*(v18 + 32))(v20, v16, v17);
    v79 = sub_11610();
    v80 = v24;
    v25 = sub_11600();
    v66 = v26;
    v67 = v25;
    v27 = a1[3];
    if (!v27)
    {
      sub_11B90();
      sub_E4F4(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
      result = sub_11750();
      __break(1u);
      return result;
    }

    v28 = v27;
    sub_11B60();
    v23 = v29;

    type metadata accessor for MediaPlayerHeightController(0);
    v59[1] = a1;
    sub_E4F4(&unk_1CE20, type metadata accessor for MediaPlayerHeightController, &unk_13834);
    sub_11710();
    v65 = sub_11740();
    v78 = v30;
    sub_11710();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_116B0();

    sub_11A20();
    sub_11730();
    (*(v18 + 8))(v20, v17);
    v76 = v103;
    v77 = v101;
    v75 = v104;
    v74 = v105;
    v62 = v106;
    v63 = v102;
    v21 = v79;
    v22 = v80;
    v7 = v59[0];
  }

  sub_114D0();
  v32 = v68;
  v31 = v69;
  v33 = (*(v68 + 48))(v7, 1, v69);
  v34 = v73;
  v80 = v22;
  if (v33 == 1)
  {
    sub_5A90(v7, &qword_1CE80, &qword_138C8);
    v35 = 1;
    v36 = v70;
    v37 = v22;
  }

  else
  {
    v38 = v21;
    v39 = v7;
    v40 = v60;
    (*(v32 + 32))(v60, v39, v31);
    v41 = v61;
    (*(v32 + 16))(v61 + v34[7], v40, v31);
    sub_11B90();
    sub_E4F4(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *v41 = sub_11760();
    v41[1] = v42;
    v43 = v34[5];
    *(v41 + v43) = swift_getKeyPath();
    sub_34C8(&qword_1C620, &qword_133D0);
    swift_storeEnumTagMultiPayload();
    v44 = v41 + v34[6];
    LOBYTE(v81) = 0;
    sub_119C0();
    v37 = v80;
    (*(v32 + 8))(v40, v31);
    v45 = v89;
    *v44 = v88;
    *(v44 + 1) = v45;
    v46 = v41;
    v21 = v38;
    v36 = v70;
    sub_EBA4(v46, v70, type metadata accessor for SiriAudioAlternativeSnippet);
    v35 = 0;
  }

  v79 = v21;
  (*(v72 + 56))(v36, v35, 1, v34);
  v47 = v71;
  sub_5BB0(v36, v71, &qword_1CE88, &qword_138D0);
  *&v81 = v21;
  *(&v81 + 1) = v37;
  v49 = v66;
  v48 = v67;
  *&v82 = v67;
  *(&v82 + 1) = v66;
  *&v83 = v23;
  v50 = v64;
  v51 = v65;
  *(&v83 + 1) = v65;
  *&v84 = v78;
  v52 = v62;
  v53 = v63;
  *(&v84 + 1) = v77;
  *&v85 = v63;
  *(&v85 + 1) = v76;
  *&v86 = v75;
  *(&v86 + 1) = v74;
  v87 = v62;
  *(v64 + 96) = v62;
  v54 = v86;
  v50[4] = v85;
  v50[5] = v54;
  v55 = v82;
  *v50 = v81;
  v50[1] = v55;
  v56 = v84;
  v50[2] = v83;
  v50[3] = v56;
  v57 = sub_34C8(&qword_1CE98, &qword_138E0);
  sub_5BB0(v47, v50 + *(v57 + 48), &qword_1CE88, &qword_138D0);
  sub_5BB0(&v81, &v88, &unk_1CEA0, &qword_138E8);
  sub_5A90(v36, &qword_1CE88, &qword_138D0);
  sub_5A90(v47, &qword_1CE88, &qword_138D0);
  v88 = v79;
  v89 = v80;
  v90 = v48;
  v91 = v49;
  v92 = v23;
  v93 = v51;
  v94 = v78;
  v95 = v77;
  v96 = v53;
  v97 = v76;
  v98 = v75;
  v99 = v74;
  v100 = v52;
  return sub_5A90(&v88, &unk_1CEA0, &qword_138E8);
}

uint64_t sub_CFD4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_E9CC(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_EBA4(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4, type metadata accessor for SiriAudioMediaPlayerSnippet);
  sub_34C8(&qword_1CE70, &qword_138C0);
  sub_5C5C(&qword_1CE78, &qword_1CE70, &qword_138C0, &protocol conformance descriptor for TupleView<A>);
  return sub_11A70();
}

uint64_t sub_D130()
{
  v0 = sub_11670();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v4 = sub_3444(v0, qword_1DB08);
  (*(v1 + 16))(v3, v4, v0);

  v5 = sub_11650();
  v6 = sub_11C00();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_116B0();

    *(v7 + 4) = v9[1];
    _os_log_impl(&dword_0, v5, v6, "snippetHeight#set value to %f", v7, 0xCu);
  }

  return (*(v1 + 8))(v3, v0);
}

double sub_D338()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_116B0();

  return v1;
}

uint64_t sub_D3AC()
{
  v1 = OBJC_IVAR____TtC13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267627MediaPlayerHeightController__snippetHeight;
  v2 = sub_34C8(&qword_1CED0, &qword_13988);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void sub_D47C(uint64_t a1)
{
  sub_D50C();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_D50C()
{
  if (!qword_1CC60)
  {
    v0 = sub_116D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1CC60);
    }
  }
}

uint64_t sub_D55C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MediaPlayerHeightController(0);
  result = sub_11690();
  *a2 = result;
  return result;
}

void sub_D59C(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = 0x4C41434F4CLL;
  v4 = sub_11670();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v37 - v9;
  v48 = *v2;
  v11 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_11;
  }

  v12 = v48;
  v13 = v48 == 0x45445F4C41434F4CLL && *(&v48 + 1) == 0xEC00000045434956;
  if (v13 || (sub_11C90() & 1) != 0)
  {
    goto LABEL_11;
  }

  v14 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v14 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
LABEL_11:
    v11 = 0xE500000000000000;
  }

  else
  {
    sub_5BB0(&v48, v46, &qword_1CEC0, &qword_13980);
    v3 = v12;
  }

  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v15 = sub_3444(v4, qword_1DB08);
  v16 = *(v5 + 16);
  v40 = v15;
  v39 = v16;
  (v16)(v10);

  sub_ED24(v2, v46);
  v43 = v10;
  v17 = sub_11650();
  v18 = sub_11C00();

  sub_ED5C(v2);
  v19 = os_log_type_enabled(v17, v18);
  v42 = v4;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v38 = v3;
    v45 = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_9E78(v38, v11, &v45);
    *(v20 + 12) = 2080;
    v46[0] = *(v2 + 16);
    v47 = *(v2 + 16);
    v37 = v8;
    sub_5BB0(v46, &v44, &qword_1CEC0, &qword_13980);
    sub_34C8(&qword_1CEC0, &qword_13980);
    v22 = sub_11BB0();
    v24 = sub_9E78(v22, v23, &v45);

    *(v20 + 14) = v24;
    v8 = v37;
    _os_log_impl(&dword_0, v17, v18, "MediaPlayerViewController#makeUIViewController with routeUID: %s bundleID: %s", v20, 0x16u);
    swift_arrayDestroy();
    v3 = v38;

    v4 = v42;
  }

  v25 = v43;
  v43 = *(v5 + 8);
  v43(v25, v4);
  v26 = sub_ED8C(*(v2 + 16), *(v2 + 24), v3, v11);
  v27 = [v26 view];
  if (v27)
  {
    v28 = v27;
    v47 = *(v2 + 40);
    [v27 sizeThatFits:{*(v2 + 32), 250.0}];
    v30 = v29;

    swift_getKeyPath();
    swift_getKeyPath();
    v44 = v30;

    sub_116C0();
    v39(v8, v40, v4);

    v31 = sub_11650();
    v32 = sub_11C00();
    sub_5A90(&v47, &qword_1CEB0, &qword_13970);
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134217984;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_116B0();

      *(v33 + 4) = v44;
      _os_log_impl(&dword_0, v31, v32, "snippetHeight#set value to %f", v33, 0xCu);
      v4 = v42;
    }

    v43(v8, v4);
    sub_34C8(&qword_1CEB8, &qword_13978);
    sub_118A0();
    v34 = v44;
    [v26 setDelegate:v44];

    v35 = [v26 view];
    if (v35)
    {

      LODWORD(v36) = 1148846080;
      [v35 setContentHuggingPriority:1 forAxis:v36];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_DBC4(void *a1, void (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v6 = v5;
  v12 = sub_11670();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    a2(v16);
    sub_F0C8(a2, a3);
  }

  result = [a1 view];
  if (result)
  {
    v18 = result;
    [result sizeThatFits:{*(v6 + OBJC_IVAR____TtCV13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267625MediaPlayerViewController11Coordinator_snippetWidth), 250.0}];
    v20 = v19;

    swift_getKeyPath();
    swift_getKeyPath();
    v27 = v20;

    sub_116C0();
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v21 = sub_3444(v12, qword_1DB08);
    (*(v13 + 16))(v15, v21, v12);

    v22 = sub_11650();
    v23 = sub_11C00();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      swift_getKeyPath();
      v26 = v15;
      swift_getKeyPath();
      sub_116B0();
      v15 = v26;

      *(v24 + 4) = v27;
      _os_log_impl(&dword_0, v22, v23, "snippetHeight#set value to %f", v24, 0xCu);
    }

    result = (*(v13 + 8))(v15, v12);
    if (a4)
    {

      a4(v25);
      return sub_F0C8(a4, a5);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_E05C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaPlayerViewController.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 sub_E128(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_E144(uint64_t a1, int a2)
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

uint64_t sub_E18C(uint64_t result, int a2, int a3)
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

uint64_t sub_E1FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_114F0();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_E2C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_114F0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_E38C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_E3C4(uint64_t a1)
{
  sub_E460(319);
  if (v1 <= 0x3F)
  {
    sub_3834(319);
    if (v2 <= 0x3F)
    {
      sub_114F0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_E460(uint64_t a1)
{
  if (!qword_1CE18)
  {
    type metadata accessor for MediaPlayerHeightController(255);
    sub_E4F4(&unk_1CE20, type metadata accessor for MediaPlayerHeightController, &unk_13834);
    v1 = sub_11720();
    if (!v2)
    {
      atomic_store(v1, &qword_1CE18);
    }
  }
}

uint64_t sub_E4F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_E548()
{
  v1 = v0;
  v2 = sub_11670();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1C608 != -1)
  {
    swift_once();
  }

  v6 = sub_3444(v2, qword_1DB08);
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_11650();
  v8 = sub_11C00();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_0, v7, v8, "MediaPlayerViewController#makeCoordinator creating MediaPlayer Coordinator", v9, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v10 = *(v1 + 32);
  v22 = *(v1 + 40);
  v11 = *(&v22 + 1);
  v12 = type metadata accessor for MediaPlayerViewController.Coordinator();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR____TtCV13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267625MediaPlayerViewController11Coordinator_parent];
  v16 = *(v1 + 16);
  v15 = *(v1 + 32);
  v17 = *v1;
  *(v14 + 6) = *(v1 + 48);
  *(v14 + 1) = v16;
  *(v14 + 2) = v15;
  *v14 = v17;
  *&v13[OBJC_IVAR____TtCV13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267625MediaPlayerViewController11Coordinator_snippetWidth] = v10;
  *&v13[OBJC_IVAR____TtCV13AudioUIPluginP33_20A183E58FC9C8C577EBBC3EDCE2267625MediaPlayerViewController11Coordinator_heightController] = v11;
  sub_5BB0(&v22, v21, &qword_1CEB0, &qword_13970);
  sub_ED24(v1, v21);
  v20.receiver = v13;
  v20.super_class = v12;
  return objc_msgSendSuper2(&v20, "init");
}

id sub_E7D4@<X0>(void *a1@<X8>)
{
  result = sub_E548();
  *a1 = result;
  return result;
}

uint64_t sub_E85C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_F074();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_E8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_F074();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_E924(uint64_t a1)
{
  sub_F074();
  sub_11880();
  __break(1u);
}

unint64_t sub_E950()
{
  result = qword_1CE68;
  if (!qword_1CE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CE68);
  }

  return result;
}

uint64_t sub_E9CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioMediaPlayerSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_EA30()
{
  v1 = (type metadata accessor for SiriAudioMediaPlayerSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  sub_EB24(*(v0 + v3), *(v0 + v3 + 8));

  v5 = v1[8];
  v6 = sub_114F0();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_EB2C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriAudioMediaPlayerSnippet(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_C770(v4, a1);
}

uint64_t sub_EBA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_EC0C@<D0>(double *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_116B0();

  result = v4;
  *a2 = v4;
  return result;
}

uint64_t sub_EC90(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_116C0();
  return sub_D130();
}

_BYTE **sub_ED14(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

id sub_ED8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_11670();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_11BA0();
  if (a2)
  {
    v10 = sub_11BA0();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(MRUNowPlayingViewController) initWithRouteUID:v9 client:v10 player:0];

  [v11 setLayout:4];
  [v11 setContext:5];
  v12 = objc_opt_self();
  v13 = [v11 traitCollection];
  v14 = [v13 userInterfaceStyle];

  v15 = [v12 _visualStylingProviderForRecipe:1 category:1 andUserInterfaceStyle:v14];
  v16 = [objc_allocWithZone(MRUVisualStylingProvider) initWithVisualStylingProvider:v15];
  if (v16)
  {
    v17 = v16;
    [v11 setStylingProvider:v16];
  }

  else
  {
    if (qword_1C608 != -1)
    {
      swift_once();
    }

    v18 = sub_3444(v5, qword_1DB08);
    (*(v6 + 16))(v8, v18, v5);
    v19 = sub_11650();
    v20 = sub_11C00();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_0, v19, v20, "MediaPlayerViewController#mediaController MRUVisualStyleProvider is undefined", v21, 2u);
    }

    else
    {
    }

    (*(v6 + 8))(v8, v5);
  }

  return v11;
}

unint64_t sub_F074()
{
  result = qword_1CEC8;
  if (!qword_1CEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CEC8);
  }

  return result;
}

uint64_t sub_F0C8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_F0D8()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_F170()
{
  v0 = sub_11670();
  sub_C200(v0, qword_1DB08);
  sub_3444(v0, qword_1DB08);
  sub_F208();
  sub_11C10();
  return sub_11680();
}

unint64_t sub_F208()
{
  result = qword_1CF50;
  if (!qword_1CF50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1CF50);
  }

  return result;
}

uint64_t sub_F268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_11470();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_F344(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_11470();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t type metadata accessor for SiriAudioSimpleTextSnippet(uint64_t a1)
{
  result = qword_1CFB0;
  if (!qword_1CFB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_F448(uint64_t a1)
{
  sub_11470();
  if (v1 <= 0x3F)
  {
    sub_3834(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_F578(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_F6B8(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_F804(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_11B30();
  sub_F8D8(&qword_1CFE8, &type metadata accessor for SummaryItemStandardView, &protocol conformance descriptor for SummaryItemStandardView);
  return sub_11A70();
}

uint64_t sub_F6B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioSimpleTextSnippet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F71C()
{
  v1 = (type metadata accessor for SiriAudioSimpleTextSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_11470();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_F804(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioSimpleTextSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_F868()
{
  type metadata accessor for SiriAudioSimpleTextSnippet(0);

  return sub_F4E8();
}

uint64_t sub_F8D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_F924()
{
  result = qword_1CFF0;
  if (!qword_1CFF0)
  {
    sub_5234(&qword_1CFF8, qword_13A20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CFF0);
  }

  return result;
}

uint64_t sub_FA34@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  matched = type metadata accessor for ShazamSuccessfulMatchView(0);
  __chkstk_darwin(matched);
  v28 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_11640();
  v29 = *(v32 - 8);
  __chkstk_darwin(v32);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_34C8(&qword_1D0C8, &qword_13AB8);
  __chkstk_darwin(v30);
  v5 = (&v28 - v4);
  v6 = sub_34C8(&qword_1D0D0, &qword_13AC0);
  __chkstk_darwin(v6);
  v8 = (&v28 - v7);
  v9 = sub_34C8(&qword_1D0A8, &qword_13AB0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_11390();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115E0();
  v16 = (*(v13 + 88))(v15, v12);
  if (v16 == enum case for ShazamSnippetRole.success(_:))
  {
    (*(v13 + 96))(v15, v12);
    v17 = v29;
    v19 = v31;
    v18 = v32;
    (*(v29 + 32))(v31, v15, v32);
    v20 = v28;
    (*(v17 + 16))(v28, v19, v18);
    v21 = (v20 + *(matched + 20));
    sub_11B90();
    sub_1052C(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
    *v21 = sub_11760();
    v21[1] = v22;
    sub_105E8(v20, v8, type metadata accessor for ShazamSuccessfulMatchView);
    swift_storeEnumTagMultiPayload();
    sub_104D8();
    sub_1052C(&qword_1D0B8, type metadata accessor for ShazamSuccessfulMatchView, &unk_13BA0);
    sub_117E0();
    sub_10650(v11, v5);
    swift_storeEnumTagMultiPayload();
    sub_1041C();
    sub_10594();
    sub_117E0();
    sub_106C0(v11);
    sub_10728(v20);
    return (*(v17 + 8))(v31, v32);
  }

  else
  {
    v32 = matched;
    if (v16 == enum case for ShazamSnippetRole.listening(_:))
    {
      sub_11B90();
      sub_1052C(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
      v24 = sub_11760();
      *v8 = v24;
      v8[1] = v25;
      swift_storeEnumTagMultiPayload();
      sub_104D8();
      sub_1052C(&qword_1D0B8, type metadata accessor for ShazamSuccessfulMatchView, &unk_13BA0);
      v26 = v24;
      sub_117E0();
      sub_10650(v11, v5);
      swift_storeEnumTagMultiPayload();
      sub_1041C();
      sub_10594();
      sub_117E0();

      return sub_106C0(v11);
    }

    else if (v16 == enum case for ShazamSnippetRole.noMatch(_:))
    {
      sub_11B90();
      sub_1052C(&unk_1CE30, &type metadata accessor for Context, &protocol conformance descriptor for Context);
      *v5 = sub_11760();
      v5[1] = v27;
      swift_storeEnumTagMultiPayload();
      sub_1041C();
      sub_10594();
      return sub_117E0();
    }

    else
    {
      result = sub_11C80();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100A4(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(a1 - 8);
  sub_105E8(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SiriAudioShazamSnippet);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_102BC(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  sub_34C8(&qword_1D090, &qword_13AA8);
  sub_10390();
  return sub_11A70();
}

uint64_t sub_101D4()
{
  v1 = (type metadata accessor for SiriAudioShazamSnippet(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_115F0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_102BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriAudioShazamSnippet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10320@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for SiriAudioShazamSnippet(0);

  return sub_FA34(a1);
}

unint64_t sub_10390()
{
  result = qword_1D098;
  if (!qword_1D098)
  {
    sub_5234(&qword_1D090, &qword_13AA8);
    sub_1041C();
    sub_10594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D098);
  }

  return result;
}

unint64_t sub_1041C()
{
  result = qword_1D0A0;
  if (!qword_1D0A0)
  {
    sub_5234(&qword_1D0A8, &qword_13AB0);
    sub_104D8();
    sub_1052C(&qword_1D0B8, type metadata accessor for ShazamSuccessfulMatchView, &unk_13BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D0A0);
  }

  return result;
}

unint64_t sub_104D8()
{
  result = qword_1D0B0;
  if (!qword_1D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D0B0);
  }

  return result;
}

uint64_t sub_1052C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10594()
{
  result = qword_1D0C0;
  if (!qword_1D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D0C0);
  }

  return result;
}

uint64_t sub_105E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10650(uint64_t a1, uint64_t a2)
{
  v4 = sub_34C8(&qword_1D0A8, &qword_13AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_106C0(uint64_t a1)
{
  v2 = sub_34C8(&qword_1D0A8, &qword_13AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10728(uint64_t a1)
{
  matched = type metadata accessor for ShazamSuccessfulMatchView(0);
  (*(*(matched - 8) + 8))(a1, matched);
  return a1;
}

__n128 sub_10784(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_107D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    v12 = v11 - 1;
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_108CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

void sub_109A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  a4(319, a2, a3);
  if (v4 <= 0x3F)
  {
    sub_3834(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10A28(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_10A84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10AE8()
{
  result = qword_1D168;
  if (!qword_1D168)
  {
    sub_5234(&qword_1D170, &qword_13B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D168);
  }

  return result;
}

uint64_t sub_10B68@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_11350();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_11380();
  swift_allocObject();
  sub_11370();
  *v5 = 0;
  (*(v3 + 104))(v5, enum case for MatchingFlowState.noMatch(_:), v2);
  sub_11360();

  sub_11340();
  LOBYTE(v2) = sub_118B0();
  sub_116E0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  result = sub_34C8(&qword_1D178, &qword_13C40);
  v15 = a1 + *(result + 36);
  *v15 = v2;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

uint64_t sub_10CF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v28 = a1;
  v27 = sub_11350();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_11330();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_11640();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_111A4();
  (*(v11 + 16))(v13, v2, v10);
  v14 = sub_11BF0();
  sub_11380();
  swift_allocObject();
  sub_11370();
  sub_11630();
  v15 = v14;
  sub_11320();
  sub_11310();
  (*(v7 + 16))(v5, v9, v6);
  (*(v3 + 104))(v5, enum case for MatchingFlowState.match(_:), v27);
  sub_11360();

  v16 = v28;
  sub_11340();
  LOBYTE(v10) = sub_118B0();
  sub_116E0();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  (*(v7 + 8))(v9, v6);
  result = sub_34C8(&qword_1D178, &qword_13C40);
  v26 = v16 + *(result + 36);
  *v26 = v10;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_11038@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_11350();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_11380();
  swift_allocObject();
  sub_11370();
  (*(v3 + 104))(v5, enum case for MatchingFlowState.listening(_:), v2);
  sub_11360();

  sub_11340();
  LOBYTE(v2) = sub_118B0();
  sub_116E0();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  result = sub_34C8(&qword_1D178, &qword_13C40);
  v15 = a1 + *(result + 36);
  *v15 = v2;
  *(v15 + 8) = v7;
  *(v15 + 16) = v9;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13;
  *(v15 + 40) = 0;
  return result;
}

unint64_t sub_111A4()
{
  result = qword_1D180;
  if (!qword_1D180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1D180);
  }

  return result;
}

unint64_t sub_111F4()
{
  result = qword_1D188;
  if (!qword_1D188)
  {
    sub_5234(&qword_1D178, &qword_13C40);
    sub_1052C(&unk_1D190, &type metadata accessor for MatchingFlowView, &protocol conformance descriptor for MatchingFlowView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1D188);
  }

  return result;
}