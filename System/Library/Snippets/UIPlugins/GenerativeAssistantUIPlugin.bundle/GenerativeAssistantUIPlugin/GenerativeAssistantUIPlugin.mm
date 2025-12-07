uint64_t sub_1324@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_1370(uint64_t a1)
{
  v92 = a1;
  v59 = sub_2390();
  v58 = *(v59 - 8);
  __chkstk_darwin(v59);
  v56 = &v52 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2350();
  v55 = *(v57 - 8);
  v2 = __chkstk_darwin(v57);
  v53 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v54 = &v52 - v4;
  v66 = sub_22E0();
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v63 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_2320();
  v62 = *(v64 - 8);
  v6 = __chkstk_darwin(v64);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v61 = &v52 - v8;
  v9 = sub_22C0();
  v72 = *(v9 - 8);
  v73 = v9;
  __chkstk_darwin(v9);
  v70 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_2300();
  v69 = *(v71 - 8);
  v11 = __chkstk_darwin(v71);
  v67 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v68 = &v52 - v13;
  v14 = sub_22A0();
  v75 = *(v14 - 8);
  v76 = v14;
  __chkstk_darwin(v14);
  v74 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_23E0();
  __chkstk_darwin(v16 - 8);
  v79 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23D0();
  v82 = *(v18 - 8);
  v83 = v18;
  __chkstk_darwin(v18);
  v80 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_2340();
  v78 = *(v81 - 8);
  __chkstk_darwin(v81);
  v77 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23B0();
  v89 = *(v21 - 8);
  v90 = v21;
  __chkstk_darwin(v21);
  v87 = &v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_22F0();
  v86 = *(v88 - 8);
  v23 = __chkstk_darwin(v88);
  v84 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v85 = &v52 - v25;
  v26 = sub_2370();
  v91 = *(v26 - 8);
  __chkstk_darwin(v26);
  v28 = &v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_2310();
  v30 = *(v29 - 8);
  v31 = __chkstk_darwin(v29);
  v33 = &v52 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v52 - v34;
  v36 = sub_2280();
  v37 = *(v36 - 8);
  __chkstk_darwin(v36);
  v39 = &v52 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v39, v92, v36);
  v40 = (*(v37 + 88))(v39, v36);
  if (v40 != enum case for GenerativeResultModels.GenerativeRichTextResultSnippet(_:))
  {
    if (v40 == enum case for GenerativeResultModels.GenerativeNoResultSnippet(_:))
    {
      (*(v37 + 96))(v39, v36);
      v43 = v85;
      v42 = v86;
      v44 = v88;
      (*(v86 + 32))(v85, v39, v88);
      (*(v42 + 16))(v84, v43, v44);
      v45 = v87;
      sub_23A0();
      sub_2238(&qword_8158, &type metadata accessor for DisabledResponseView, &protocol conformance descriptor for DisabledResponseView);
      v46 = v90;
      v41 = sub_23F0();
      v47 = v89;
LABEL_7:
      (*(v47 + 8))(v45, v46);
      (*(v42 + 8))(v43, v44);
      return v41;
    }

    if (v40 == enum case for GenerativeResultModels.GenerativeMediaConfirmationSnippet(_:))
    {
      (*(v37 + 96))(v39, v36);
      v43 = v77;
      v42 = v78;
      v44 = v81;
      (*(v78 + 32))(v77, v39, v81);
      sub_2330();
      v45 = v80;
      sub_23C0();
      sub_2238(&qword_8150, &type metadata accessor for AttachmentConfirmationView, &protocol conformance descriptor for AttachmentConfirmationView);
      v46 = v83;
      v41 = sub_23F0();
      v47 = v82;
      goto LABEL_7;
    }

    if (v40 == enum case for GenerativeResultModels.GenerativeDismissalSnippet(_:))
    {
      v49 = v74;
      sub_2290();
      sub_2238(&qword_8148, &type metadata accessor for GenerativeDismissalView, &protocol conformance descriptor for GenerativeDismissalView);
      v50 = v76;
      v41 = sub_23F0();
      (*(v75 + 8))(v49, v50);
LABEL_11:
      (*(v37 + 8))(v39, v36);
      return v41;
    }

    if (v40 == enum case for GenerativeResultModels.GenerativeRateLimitedSnippet(_:))
    {
      (*(v37 + 96))(v39, v36);
      v42 = v69;
      v43 = v68;
      v44 = v71;
      (*(v69 + 32))(v68, v39, v71);
      (*(v42 + 16))(v67, v43, v44);
      v45 = v70;
      sub_22B0();
      sub_2238(&qword_8140, &type metadata accessor for GenerativeRateLimitedView, &protocol conformance descriptor for GenerativeRateLimitedView);
      v46 = v73;
      v41 = sub_23F0();
      v47 = v72;
      goto LABEL_7;
    }

    if (v40 == enum case for GenerativeResultModels.GenerativeSearchWebButtonSnippet(_:))
    {
      (*(v37 + 96))(v39, v36);
      v42 = v62;
      v43 = v61;
      v44 = v64;
      (*(v62 + 32))(v61, v39, v64);
      (*(v42 + 16))(v60, v43, v44);
      v45 = v63;
      sub_22D0();
      sub_2238(&qword_8138, &type metadata accessor for GenerativeSearchWebButtonView, &protocol conformance descriptor for GenerativeSearchWebButtonView);
      v46 = v66;
      v41 = sub_23F0();
      v51 = &v93;
    }

    else
    {
      if (v40 != enum case for GenerativeResultModels.GenerativeAttributionSnippet(_:))
      {
        v41 = sub_23F0();
        goto LABEL_11;
      }

      (*(v37 + 96))(v39, v36);
      v42 = v55;
      v43 = v54;
      v44 = v57;
      (*(v55 + 32))(v54, v39, v57);
      (*(v42 + 16))(v53, v43, v44);
      v45 = v56;
      sub_2380();
      sub_2238(&qword_8130, &type metadata accessor for AttributionsTextView, &protocol conformance descriptor for AttributionsTextView);
      v46 = v59;
      v41 = sub_23F0();
      v51 = &v90;
    }

    v47 = *(v51 - 32);
    goto LABEL_7;
  }

  (*(v37 + 96))(v39, v36);
  (*(v30 + 32))(v35, v39, v29);
  (*(v30 + 16))(v33, v35, v29);
  sub_2360();
  sub_2238(&unk_8160, &type metadata accessor for TextGenerationView, &protocol conformance descriptor for TextGenerationView);
  v41 = sub_23F0();
  (*(v91 + 8))(v28, v26);
  (*(v30 + 8))(v35, v29);
  return v41;
}

uint64_t sub_2238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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