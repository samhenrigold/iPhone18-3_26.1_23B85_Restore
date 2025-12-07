uint64_t sub_1C6B5AC24(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B5AC80(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v4 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v5);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v67 - v10;
  sub_1C6B61994(0, &qword_1EC1D6CB0, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = &v67 - v14;
  v79 = sub_1C6D789A0();
  v15 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v16);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69AA900];
  sub_1C6B62540(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v7);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v67 - v21;
  sub_1C6B61994(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v18);
  v77 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v67 - v25;
  v82 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  MEMORY[0x1EEE9AC00](v82, v27);
  v84 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v67 - v32;
  v34 = *(a1 + 16);
  if (v34 != *(a2 + 16))
  {
LABEL_27:
    v61 = 0;
    return v61 & 1;
  }

  if (!v34 || a1 == a2)
  {
    v61 = 1;
    return v61 & 1;
  }

  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = a1 + v35;
  v37 = a2 + v35;
  v75 = (v15 + 48);
  v67 = (v15 + 32);
  v68 = (v15 + 8);
  v73 = (v4 + 48);
  v71 = *(v31 + 72);
  v80 = v11;
  v83 = &v67 - v32;
  v69 = v22;
  while (1)
  {
    result = sub_1C6B5F654(v36, v33, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    if (!v34)
    {
      break;
    }

    v39 = v84;
    sub_1C6B5F654(v37, v84, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    v40 = *(v82 + 24);
    v41 = *(v77 + 48);
    v42 = MEMORY[0x1E69AA900];
    sub_1C6B61A0C(&v33[v40], v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    sub_1C6B61A0C(v39 + v40, &v26[v41], &qword_1EDCE66F0, v42);
    v43 = *v75;
    v44 = v79;
    if ((*v75)(v26, 1, v79) == 1)
    {
      v45 = v43(&v26[v41], 1, v44);
      v46 = v78;
      if (v45 != 1)
      {
        goto LABEL_22;
      }

      sub_1C6B61A8C(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v47 = v80;
      v48 = v73;
    }

    else
    {
      v49 = v69;
      sub_1C6B61A0C(v26, v69, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v50 = v43(&v26[v41], 1, v44);
      v46 = v78;
      if (v50 == 1)
      {
        (*v68)(v49, v44);
LABEL_22:
        v63 = &qword_1EC1D6C50;
        v64 = &qword_1EDCE66F0;
        v65 = MEMORY[0x1E69AA900];
        v66 = v26;
LABEL_25:
        sub_1C6B624E4(v66, v63, v64, v65);
LABEL_26:
        sub_1C6B62664(v84, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
        sub_1C6B62664(v83, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
        goto LABEL_27;
      }

      v51 = v74;
      (*v67)(v74, &v26[v41], v44);
      sub_1C6B5F7C4(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v70 = sub_1C6D79560();
      v52 = *v68;
      (*v68)(v51, v44);
      v52(v49, v44);
      sub_1C6B61A8C(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v47 = v80;
      v48 = v73;
      if ((v70 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v53 = *(v76 + 48);
    sub_1C6B61A0C(v83, v46, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6B61A0C(v84, v46 + v53, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    v54 = *v48;
    if ((*v48)(v46, 1, v81) == 1)
    {
      if (v54(v46 + v53, 1, v81) != 1)
      {
        goto LABEL_24;
      }

      sub_1C6B61A8C(v46, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    }

    else
    {
      sub_1C6B61A0C(v46, v47, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      if (v54(v46 + v53, 1, v81) == 1)
      {
        sub_1C6B62664(v47, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
LABEL_24:
        v63 = &qword_1EC1D6CB0;
        v64 = qword_1EDCE3EB8;
        v65 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event;
        v66 = v46;
        goto LABEL_25;
      }

      v55 = v72;
      sub_1C6B5F6DC(v46 + v53, v72, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v56 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event.== infix(_:_:)(v80, v55);
      v57 = v55;
      v58 = v80;
      sub_1C6B62664(v57, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      sub_1C6B62664(v58, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      sub_1C6B61A8C(v46, qword_1EDCE3EB8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      if ((v56 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v59 = v83;
    v60 = v84;
    v61 = sub_1C6D79560();
    sub_1C6B62664(v60, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    sub_1C6B62664(v59, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    if (v61)
    {
      v37 += v71;
      v36 += v71;
      v62 = v34-- == 1;
      v33 = v83;
      if (!v62)
      {
        continue;
      }
    }

    return v61 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B5B5C4(uint64_t a1, uint64_t a2)
{
  sub_1C6B62430(0, &qword_1EC1D6C90, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v51 = &v47 - v6;
  v58 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  v7 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v8);
  v50 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B62540(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v47 - v12;
  sub_1C6B61994(0, &qword_1EC1D6CA0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v47 - v17;
  v57 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  MEMORY[0x1EEE9AC00](v57, v19);
  v21 = (&v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22, v23);
  v55 = &v47 - v25;
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
    goto LABEL_22;
  }

  if (!v26 || a1 == a2)
  {
    v43 = 1;
    return v43 & 1;
  }

  v48 = v15;
  v49 = v13;
  v27 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v28 = a1 + v27;
  v29 = a2 + v27;
  v53 = *(v24 + 72);
  v54 = (v7 + 48);
  v30 = v55;
  while (1)
  {
    result = sub_1C6B5F654(v28, v30, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    if (!v26)
    {
      __break(1u);
      return result;
    }

    sub_1C6B5F654(v29, v21, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    if (*v30 != *v21)
    {
      sub_1C6B62664(v21, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v44 = v30;
      goto LABEL_21;
    }

    v56 = v26;
    v32 = v21;
    v33 = *(v57 + 20);
    v34 = *(v15 + 48);
    sub_1C6B61A0C(v30 + v33, v18, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v35 = v32 + v33;
    v21 = v32;
    sub_1C6B61A0C(v35, &v18[v34], &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v36 = *v54;
    if ((*v54)(v18, 1, v58) == 1)
    {
      if (v36(&v18[v34], 1, v58) == 1)
      {
        sub_1C6B61A8C(v18, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
        goto LABEL_12;
      }

      sub_1C6B62664(v32, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v45 = v30;
      v46 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle;
LABEL_19:
      sub_1C6B62664(v45, v46);
      sub_1C6B624E4(v18, &qword_1EC1D6CA0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
      goto LABEL_22;
    }

    v37 = v49;
    sub_1C6B61A0C(v18, v49, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    if (v36(&v18[v34], 1, v58) == 1)
    {
      sub_1C6B62664(v32, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      sub_1C6B62664(v30, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v46 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata;
      v45 = v37;
      goto LABEL_19;
    }

    v38 = &v18[v34];
    v39 = v50;
    sub_1C6B5F6DC(v38, v50, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v40 = v51;
    v41 = *(v52 + 48);
    sub_1C6B5F654(v37, v51, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6B5F654(v39, v40 + v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v42 = static Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata.== infix(_:_:)(v40, v40 + v41);
    sub_1C6B62664(v39, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6B62664(v40 + v41, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    sub_1C6B62664(v40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
    v21 = v32;
    sub_1C6B62664(v37, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    sub_1C6B61A8C(v18, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
    v15 = v48;
    if ((v42 & 1) == 0)
    {
      break;
    }

LABEL_12:
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v30 = v55;
    v43 = sub_1C6D79560();
    sub_1C6B62664(v21, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    sub_1C6B62664(v30, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
    if (v43)
    {
      v26 = v56 - 1;
      v29 += v53;
      v28 += v53;
      if (v56 != 1)
      {
        continue;
      }
    }

    return v43 & 1;
  }

  sub_1C6B62664(v32, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
  v44 = v55;
LABEL_21:
  sub_1C6B62664(v44, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
LABEL_22:
  v43 = 0;
  return v43 & 1;
}

uint64_t sub_1C6B5BCD8(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event(0);
  v4 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v5);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v67 - v10;
  sub_1C6B61994(0, &qword_1EC1D6C60, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v78 = &v67 - v14;
  v79 = sub_1C6D789A0();
  v15 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v16);
  v74 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69AA900];
  sub_1C6B62540(0, &qword_1EDCE66F0, MEMORY[0x1E69AA900], v7);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v67 - v21;
  sub_1C6B61994(0, &qword_1EC1D6C50, &qword_1EDCE66F0, v18);
  v77 = v23;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v67 - v25;
  v82 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent(0);
  MEMORY[0x1EEE9AC00](v82, v27);
  v84 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v33 = &v67 - v32;
  v34 = *(a1 + 16);
  if (v34 != *(a2 + 16))
  {
LABEL_27:
    v61 = 0;
    return v61 & 1;
  }

  if (!v34 || a1 == a2)
  {
    v61 = 1;
    return v61 & 1;
  }

  v35 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v36 = a1 + v35;
  v37 = a2 + v35;
  v75 = (v15 + 48);
  v67 = (v15 + 32);
  v68 = (v15 + 8);
  v73 = (v4 + 48);
  v71 = *(v31 + 72);
  v80 = v11;
  v83 = &v67 - v32;
  v69 = v22;
  while (1)
  {
    result = sub_1C6B5F654(v36, v33, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
    if (!v34)
    {
      break;
    }

    v39 = v84;
    sub_1C6B5F654(v37, v84, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
    v40 = *(v82 + 24);
    v41 = *(v77 + 48);
    v42 = MEMORY[0x1E69AA900];
    sub_1C6B61A0C(&v33[v40], v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
    sub_1C6B61A0C(v39 + v40, &v26[v41], &qword_1EDCE66F0, v42);
    v43 = *v75;
    v44 = v79;
    if ((*v75)(v26, 1, v79) == 1)
    {
      v45 = v43(&v26[v41], 1, v44);
      v46 = v78;
      if (v45 != 1)
      {
        goto LABEL_22;
      }

      sub_1C6B61A8C(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v47 = v80;
      v48 = v73;
    }

    else
    {
      v49 = v69;
      sub_1C6B61A0C(v26, v69, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v50 = v43(&v26[v41], 1, v44);
      v46 = v78;
      if (v50 == 1)
      {
        (*v68)(v49, v44);
LABEL_22:
        v63 = &qword_1EC1D6C50;
        v64 = &qword_1EDCE66F0;
        v65 = MEMORY[0x1E69AA900];
        v66 = v26;
LABEL_25:
        sub_1C6B624E4(v66, v63, v64, v65);
LABEL_26:
        sub_1C6B62664(v84, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
        sub_1C6B62664(v83, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
        goto LABEL_27;
      }

      v51 = v74;
      (*v67)(v74, &v26[v41], v44);
      sub_1C6B5F7C4(&qword_1EC1D6C58, MEMORY[0x1E69AA900], MEMORY[0x1E69AA908]);
      v70 = sub_1C6D79560();
      v52 = *v68;
      (*v68)(v51, v44);
      v52(v49, v44);
      sub_1C6B61A8C(v26, &qword_1EDCE66F0, MEMORY[0x1E69AA900]);
      v47 = v80;
      v48 = v73;
      if ((v70 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v53 = *(v76 + 48);
    sub_1C6B61A0C(v83, v46, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    sub_1C6B61A0C(v84, v46 + v53, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    v54 = *v48;
    if ((*v48)(v46, 1, v81) == 1)
    {
      if (v54(v46 + v53, 1, v81) != 1)
      {
        goto LABEL_24;
      }

      sub_1C6B61A8C(v46, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
    }

    else
    {
      sub_1C6B61A0C(v46, v47, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      if (v54(v46 + v53, 1, v81) == 1)
      {
        sub_1C6B62664(v47, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
LABEL_24:
        v63 = &qword_1EC1D6C60;
        v64 = qword_1EDCE50F8;
        v65 = type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event;
        v66 = v46;
        goto LABEL_25;
      }

      v55 = v72;
      sub_1C6B5F6DC(v46 + v53, v72, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      v56 = static Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event.== infix(_:_:)(v80, v55);
      v57 = v55;
      v58 = v80;
      sub_1C6B62664(v57, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      sub_1C6B62664(v58, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      sub_1C6B61A8C(v46, qword_1EDCE50F8, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent.OneOf_Event);
      if ((v56 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v59 = v83;
    v60 = v84;
    v61 = sub_1C6D79560();
    sub_1C6B62664(v60, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
    sub_1C6B62664(v59, type metadata accessor for Com_Apple_News_Personalization_RecipeSessionEvent);
    if (v61)
    {
      v37 += v71;
      v36 += v71;
      v62 = v34-- == 1;
      v33 = v83;
      if (!v62)
      {
        continue;
      }
    }

    return v61 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B5C61C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C6B5C678(uint64_t a1, uint64_t a2)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
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
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_1C6B1CD10(v7, v6);
          sub_1C6B1CD10(v9, v8);
          v22 = sub_1C6D75BF0();
          if (v22)
          {
            v23 = sub_1C6D75C20();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          sub_1C6D75C10();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_1C6B1CD10(v7, v6);
        sub_1C6B1CD10(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_1C6B1CD10(v7, v6);
          sub_1C6B1CD10(v9, v8);
          v27 = sub_1C6D75BF0();
          if (v27)
          {
            v28 = sub_1C6D75C20();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          sub_1C6D75C10();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_1C6B5DAE8(v24, v25, v26, v33);
          sub_1C6B1C9F0(v9, v8);
          sub_1C6B1C9F0(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_1C6B1CD10(v7, v6);
        sub_1C6B1CD10(v9, v8);
      }

      sub_1C6B5DAE8(v33, v9, v8, &v32);
      sub_1C6B1C9F0(v9, v8);
      sub_1C6B1C9F0(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_1C6B5CA84(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1C6B5CAE0(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
  v4 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v5);
  v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v56 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v59 = &v56 - v14;
  sub_1C6B625A4(0, &qword_1EC1D6B90, &unk_1EC1D6B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v62 = a2;
  if (a1 != a2 && *(a1 + 16) == *(v62 + 16))
  {
    v57 = a1;
    v58 = &v56 - v19;
    v61 = v20;
    v21 = 0;
    v22 = *(a1 + 64);
    v56 = a1 + 64;
    v23 = 1 << *(a1 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v26 = (v23 + 63) >> 6;
    while (v25)
    {
      v63 = (v25 - 1) & v25;
      v27 = __clz(__rbit64(v25)) | (v21 << 6);
LABEL_16:
      v33 = (*(v57 + 48) + 16 * v27);
      v35 = *v33;
      v34 = v33[1];
      v36 = v59;
      sub_1C6B5F654(*(v57 + 56) + *(v4 + 72) * v27, v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      sub_1C6B625FC(0, &unk_1EC1D6B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v38 = v37;
      v39 = *(v37 + 48);
      v40 = v61;
      *v61 = v35;
      v40[1] = v34;
      v41 = v36;
      v30 = v40;
      sub_1C6B5F6DC(v41, v40 + v39, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      (*(*(v38 - 8) + 56))(v30, 0, 1, v38);

LABEL_17:
      v42 = v30;
      v43 = v58;
      sub_1C6B61924(v42, v58, &qword_1EC1D6B90, &unk_1EC1D6B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      sub_1C6B625FC(0, &unk_1EC1D6B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      if ((*(*(v38 - 8) + 48))(v43, 1, v38) == 1)
      {
        return;
      }

      v44 = v43;
      v45 = v7;
      v46 = *(v38 + 48);
      v47 = *v44;
      v48 = v44[1];
      sub_1C6B5F6DC(v44 + v46, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v49 = v47;
      v50 = v62;
      v51 = sub_1C6B5DEA8(v49, v48);
      v53 = v52;

      if ((v53 & 1) == 0)
      {
        goto LABEL_25;
      }

      v7 = v45;
      sub_1C6B5F654(*(v50 + 56) + *(v4 + 72) * v51, v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      if ((sub_1C6B58600(*v45, *v11) & 1) == 0)
      {
        sub_1C6B62664(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
LABEL_25:
        sub_1C6B62664(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
        return;
      }

      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v54 = sub_1C6D79560();
      sub_1C6B62664(v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      sub_1C6B62664(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v25 = v63;
      if ((v54 & 1) == 0)
      {
        return;
      }
    }

    if (v26 <= v21 + 1)
    {
      v28 = v21 + 1;
    }

    else
    {
      v28 = v26;
    }

    v29 = v28 - 1;
    v30 = v61;
    while (1)
    {
      v31 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v31 >= v26)
      {
        sub_1C6B625FC(0, &unk_1EC1D6B98, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
        v38 = v55;
        (*(*(v55 - 8) + 56))(v30, 1, 1, v55);
        v63 = 0;
        v21 = v29;
        goto LABEL_17;
      }

      v32 = *(v56 + 8 * v31);
      ++v21;
      if (v32)
      {
        v63 = (v32 - 1) & v32;
        v27 = __clz(__rbit64(v32)) | (v31 << 6);
        v21 = v31;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

void sub_1C6B5D074(uint64_t a1, uint64_t a2)
{
  v91 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v4 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91, v5);
  v78 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v74 - v9;
  sub_1C6B61994(0, &qword_1EC1D6CC0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v84 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v74 - v13;
  v83 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  v89 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83, v15);
  v90 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v74 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v82 = &v74 - v23;
  sub_1C6B625A4(0, &unk_1EC1D6CD8, &qword_1EDCDFB70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  MEMORY[0x1EEE9AC00](v24 - 8, v25);
  v27 = (&v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v28, v29);
  v85 = (&v74 - v30);
  v86 = a2;
  if (a1 == a2)
  {
    v87 = 1;
  }

  else if (*(a1 + 16) == *(v86 + 16))
  {
    v31 = 0;
    v79 = a1;
    v80 = v27;
    v32 = *(a1 + 64);
    v76 = a1 + 64;
    v77 = v10;
    v33 = 1 << *(a1 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & v32;
    v75 = (v33 + 63) >> 6;
    v81 = (v4 + 48);
    while (v35)
    {
      v88 = (v35 - 1) & v35;
      v38 = __clz(__rbit64(v35)) | (v31 << 6);
LABEL_17:
      v44 = (*(v79 + 48) + 16 * v38);
      v45 = *v44;
      v46 = v44[1];
      v47 = v82;
      sub_1C6B5F654(*(v79 + 56) + *(v89 + 72) * v38, v82, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      sub_1C6B625FC(0, &qword_1EDCDFB70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v49 = v48;
      v50 = *(v48 + 48);
      *v27 = v45;
      v27[1] = v46;
      sub_1C6B5F6DC(v47, v27 + v50, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      (*(*(v49 - 8) + 56))(v27, 0, 1, v49);

      v41 = v85;
LABEL_18:
      sub_1C6B61924(v27, v41, &unk_1EC1D6CD8, &qword_1EDCDFB70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      sub_1C6B625FC(0, &qword_1EDCDFB70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v51 = (*(*(v49 - 8) + 48))(v41, 1, v49);
      v87 = v51 == 1;
      if (v51 == 1)
      {
        return;
      }

      v52 = v14;
      v53 = v91;
      v54 = *(v49 + 48);
      v55 = *v41;
      v56 = v41[1];
      sub_1C6B5F6DC(v41 + v54, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v57 = v86;
      v58 = sub_1C6B5DEA8(v55, v56);
      v59 = v20;
      v61 = v60;

      if ((v61 & 1) == 0)
      {
        goto LABEL_31;
      }

      v62 = *(v57 + 56);
      v63 = v90;
      sub_1C6B5F654(v62 + *(v89 + 72) * v58, v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v64 = *(v84 + 48);
      v65 = v63;
      v14 = v52;
      sub_1C6B61A0C(v65, v52, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      sub_1C6B61A0C(v59, v52 + v64, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      v66 = *v81;
      v20 = v59;
      if ((*v81)(v52, 1, v53) == 1)
      {
        v67 = v66(v52 + v64, 1, v91);
        v27 = v80;
        if (v67 != 1)
        {
          goto LABEL_29;
        }

        sub_1C6B61A8C(v14, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      }

      else
      {
        v68 = v52;
        v69 = v77;
        sub_1C6B61A0C(v52, v77, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        v70 = v66(v52 + v64, 1, v91);
        v27 = v80;
        if (v70 == 1)
        {
          sub_1C6B62664(v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
          v14 = v68;
          v20 = v59;
LABEL_29:
          sub_1C6B624E4(v14, &qword_1EC1D6CC0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_30:
          sub_1C6B62664(v90, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
          v59 = v20;
LABEL_31:
          sub_1C6B62664(v59, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
          goto LABEL_32;
        }

        v71 = v78;
        sub_1C6B5F6DC(v68 + v64, v78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        v72 = _s19NewsPersonalization010Com_Apple_A31_Algorithms_Proto_Model_FeatureV10OneOf_KindO2eeoiySbAE_AEtFZ_0(v69, v71);
        sub_1C6B62664(v71, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        sub_1C6B62664(v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        sub_1C6B61A8C(v68, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        v14 = v68;
        v20 = v59;
        if ((v72 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v36 = v90;
      v37 = sub_1C6D79560();
      sub_1C6B62664(v36, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v35 = v88;
      if ((v37 & 1) == 0)
      {
        return;
      }
    }

    if (v75 <= v31 + 1)
    {
      v39 = v31 + 1;
    }

    else
    {
      v39 = v75;
    }

    v40 = v39 - 1;
    v41 = v85;
    while (1)
    {
      v42 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v42 >= v75)
      {
        sub_1C6B625FC(0, &qword_1EDCDFB70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
        v49 = v73;
        (*(*(v73 - 8) + 56))(v27, 1, 1, v73);
        v88 = 0;
        v31 = v40;
        goto LABEL_18;
      }

      v43 = *(v76 + 8 * v42);
      ++v31;
      if (v43)
      {
        v88 = (v43 - 1) & v43;
        v38 = __clz(__rbit64(v43)) | (v42 << 6);
        v31 = v42;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    v87 = 0;
  }
}

void sub_1C6B5D968(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 0;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = v9 | (v4 << 6);
      v13 = (*(a1 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(a1 + 56) + 8 * v12);

      v17 = v16;
      v18 = sub_1C6B5DEA8(v14, v15);
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
      v21 = *(*(a2 + 56) + 8 * v18);
      v22 = sub_1C6D79BC0();

      if ((v22 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a1 + 64 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C6B5DAE8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1C6D75BF0();
    if (v10)
    {
      v11 = sub_1C6D75C20();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1C6D75C10();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1C6D75BF0();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1C6D75C20();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1C6D75C10();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1C6B5DD18(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1C6B5DFD8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1C6B1C9F0(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1C6B5DAE8(v13, a3, a4, &v12);
  v10 = v4;
  sub_1C6B1C9F0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

unint64_t sub_1C6B5DEA8(uint64_t a1, uint64_t a2)
{
  sub_1C6D7A260();
  sub_1C6D79610();
  v4 = sub_1C6D7A2B0();

  return sub_1C6B5DF20(a1, a2, v4);
}

unint64_t sub_1C6B5DF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C6D7A130())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1C6B5DFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1C6D75BF0();
  v11 = result;
  if (result)
  {
    result = sub_1C6D75C20();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C6D75C10();
  sub_1C6B5DAE8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1C6B5E090(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1C6B1CD10(a3, a4);
          return sub_1C6B5DD18(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t *_s19NewsPersonalization010Com_Apple_A33_Algorithms_Proto_Model_FloatListV2eeoiySbAC_ACtFZ_0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_10:
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    return (sub_1C6D79560() & 1);
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s19NewsPersonalization010Com_Apple_A31_Algorithms_Proto_Model_FeatureV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v23 - v11;
  sub_1C6B61994(0, &qword_1EC1D6CC0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v23 - v15;
  v18 = *(v17 + 56);
  sub_1C6B61A0C(a1, &v23 - v15, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B61A0C(a2, &v16[v18], qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_1C6B61A8C(v16, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_9:
      type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = sub_1C6D79560();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B61A0C(v16, v12, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_6:
    sub_1C6B624E4(v16, &qword_1EC1D6CC0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_7;
  }

  sub_1C6B5F6DC(&v16[v18], v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v21 = _s19NewsPersonalization010Com_Apple_A31_Algorithms_Proto_Model_FeatureV10OneOf_KindO2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B61A8C(v16, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s19NewsPersonalization010Com_Apple_A31_Algorithms_Proto_Model_FeatureV10OneOf_KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v70 = a1;
  v71 = a2;
  v63 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  MEMORY[0x1EEE9AC00](v63, v2);
  v66 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  MEMORY[0x1EEE9AC00](v62, v4);
  v65 = (&v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  MEMORY[0x1EEE9AC00](v61, v6);
  v64 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = (&v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = (&v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v69 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v68 = (&v60 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  v67 = &v60 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v60 - v27);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v60 - v31;
  sub_1C6B62430(0, &unk_1EC1D6CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  MEMORY[0x1EEE9AC00](v33 - 8, v34);
  v36 = &v60 - v35;
  v38 = *(v37 + 56);
  sub_1C6B5F654(v70, &v60 - v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B5F654(v71, &v36[v38], type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1C6B5F654(v36, v28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v54 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
        v55 = v28;
        goto LABEL_31;
      }

      v44 = v36;
      v51 = &v36[v38];
      v52 = v11;
      sub_1C6B5F6DC(v51, v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      if (sub_1C6B5AC24(*v28, *v11))
      {
        sub_1C6D78A40();
        sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1C6D79560())
        {
          v49 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
          sub_1C6B62664(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
          v50 = v28;
          goto LABEL_24;
        }
      }

      v58 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List;
      sub_1C6B62664(v52, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      v59 = v28;
      goto LABEL_40;
    }

    sub_1C6B5F654(v36, v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6B5F6DC(&v36[v38], v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      if (sub_1C6B5CA84(*v32, *v15))
      {
        sub_1C6D78A40();
        sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1C6D79560())
        {
          sub_1C6B62664(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          sub_1C6B62664(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
          v42 = v36;
          goto LABEL_25;
        }
      }

      sub_1C6B62664(v15, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      sub_1C6B62664(v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      v57 = v36;
      goto LABEL_41;
    }

    v43 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList;
    goto LABEL_29;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v32 = v67;
    sub_1C6B5F654(v36, v67, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v44 = v36;
      v45 = &v36[v38];
      v46 = v64;
      sub_1C6B5F6DC(v45, v64, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      if (sub_1C6B5C61C(*v32, *v46))
      {
        sub_1C6D78A40();
        sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1C6D79560())
        {
          v47 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
LABEL_19:
          v49 = v47;
          sub_1C6B62664(v46, v47);
          v50 = v32;
LABEL_24:
          sub_1C6B62664(v50, v49);
          v42 = v44;
          goto LABEL_25;
        }
      }

      v56 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
      goto LABEL_35;
    }

    v43 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List;
LABEL_29:
    v54 = v43;
    v55 = v32;
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v32 = v69;
    sub_1C6B5F654(v36, v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v44 = v36;
      v48 = &v36[v38];
      v46 = v66;
      sub_1C6B5F6DC(v48, v66, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      if (sub_1C6B5E090(*v32, *(v32 + 1), *v46, *(v46 + 8)))
      {
        sub_1C6D78A40();
        sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1C6D79560())
        {
          v47 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
          goto LABEL_19;
        }
      }

      v56 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
LABEL_35:
      v58 = v56;
      sub_1C6B62664(v46, v56);
      v59 = v32;
LABEL_40:
      sub_1C6B62664(v59, v58);
      v57 = v44;
LABEL_41:
      sub_1C6B62664(v57, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
      return 0;
    }

    v43 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List;
    goto LABEL_29;
  }

  v40 = v68;
  sub_1C6B5F654(v36, v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v41 = v65;
    sub_1C6B5F6DC(&v36[v38], v65, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    if (sub_1C6B5C678(*v40, *v41))
    {
      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      if (sub_1C6D79560())
      {
        sub_1C6B62664(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        sub_1C6B62664(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
        v42 = v36;
LABEL_25:
        sub_1C6B62664(v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
        return 1;
      }
    }

    sub_1C6B62664(v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6B62664(v40, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    v57 = v36;
    goto LABEL_41;
  }

  v54 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList;
  v55 = v40;
LABEL_31:
  sub_1C6B62664(v55, v54);
  sub_1C6B626C4(v36);
  return 0;
}

unint64_t sub_1C6B5F0C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B615B0(0, &unk_1EDCDF710, MEMORY[0x1E69E35A8], MEMORY[0x1E69E6EC8]);
    v3 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C6B5DEA8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B5F204(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B615B0(0, &qword_1EDCDF678, sub_1C6B61624, MEMORY[0x1E69E6EC8]);
    v3 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1C6B5DEA8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B5F348(uint64_t a1)
{
  sub_1C6B61724(0, &unk_1EDCDFB30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, MEMORY[0x1E69E6158]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B615B0(0, &qword_1EC1D6CF8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, MEMORY[0x1E69E6EC8]);
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B6273C(v11, v7, &unk_1EDCDFB30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, MEMORY[0x1E69E6158]);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1C6B5DEA8(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
      result = sub_1C6B5F6DC(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C6B5F5A0(uint64_t a1, uint64_t a2)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B5F654(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B5F6DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C6B5F7C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B6005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a7(319, a4, a5, a6);
  if (v8 <= 0x3F)
  {
    result = sub_1C6D78A40();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C6B601B0(uint64_t a1)
{
  result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_1C6B6029C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1C6B6052C(319, a4, a5);
  if (v5 <= 0x3F)
  {
    sub_1C6D78A40();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_1C6D78A40();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_indexTm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1C6D78A40();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1C6B6052C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1C6D79820();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B605A0(uint64_t a1)
{
  result = sub_1C6D78A40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C6B6061C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B62490(0, &qword_1EC1D6CB8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6530], MEMORY[0x1E69E6168]);
    v3 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C6B5DEA8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B6072C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B62490(0, &qword_1EC1D6B70, MEMORY[0x1E69E6158], MEMORY[0x1E69E6370], MEMORY[0x1E69E6168]);
    v3 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C6B5DEA8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B60858(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_1C6B61548(0, a2, a3, a4);
    v6 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      v11 = v10;
      result = sub_1C6B5DEA8(v8, v9);
      if (v13)
      {
        break;
      }

      *(v6 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v6[6] + 16 * result);
      *v14 = v8;
      v14[1] = v9;
      *(v6[7] + 8 * result) = v11;
      v15 = v6[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v6[2] = v17;
      if (!--v4)
      {

        return v6;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B60950(uint64_t a1)
{
  sub_1C6B61724(0, &qword_1EDCDFB48, sub_1C6B61790, MEMORY[0x1E69E6158]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B615B0(0, &qword_1EC1D6B88, sub_1C6B61790, MEMORY[0x1E69E6EC8]);
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B6273C(v11, v7, &qword_1EDCDFB48, sub_1C6B61790, MEMORY[0x1E69E6158]);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1C6B5DEA8(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      sub_1C6B61790(0);
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v17, v7 + v10, v20);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B60B8C(uint64_t a1)
{
  sub_1C6B620B4(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B62154(0);
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B5F654(v11, v7, sub_1C6B620B4);
      result = sub_1C6B64E18(v7);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = v9[6];
      v17 = sub_1C6D763D0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v7, v17);
      *(v9[7] + 8 * v15) = *&v7[v10];
      v18 = v9[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v9[2] = v20;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B60D60(uint64_t a1)
{
  sub_1C6B61724(0, &qword_1EDCE0168, MEMORY[0x1E6996170], &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = v27 - v6;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B61488(0);
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B6273C(v11, v7, &qword_1EDCE0168, MEMORY[0x1E6996170], &type metadata for RecipeUserEventHistoryFeaturesFactory.Configuration);
      v13 = *(v7 + 1);
      v27[0] = *v7;
      v27[1] = v13;
      v27[2] = *(v7 + 2);
      v28 = *(v7 + 6);
      result = sub_1C6B64FC0(v27);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v9[6] + 56 * result;
      v18 = *(v7 + 5);
      v19 = *(v7 + 6);
      v20 = *(v7 + 8);
      v21 = *(v7 + 24);
      *v17 = *v7;
      *(v17 + 8) = v20;
      *(v17 + 24) = v21;
      *(v17 + 40) = v18;
      *(v17 + 48) = v19;
      v22 = v9[7];
      v23 = sub_1C6D78810();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v16, &v7[v10], v23);
      v24 = v9[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v9[2] = v26;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B60FAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B61688(0);
    v3 = sub_1C6D79F20();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C6B6502C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B61098(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C6B62490(0, &qword_1EDCEA470, MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0], MEMORY[0x1E69E6168]);
    v5 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = a2(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B611B8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_1C6B62490(0, &qword_1EC1D6BF8, MEMORY[0x1E69E6158], &type metadata for NotificationScoringServiceConfiguration.PublisherSourceMultiplier, MEMORY[0x1E69E6168]);
    v5 = sub_1C6D79F20();

    for (i = (a1 + 56); ; i += 4)
    {
      v7 = *(i - 3);
      v8 = *(i - 2);
      v9 = *(i - 1);
      v10 = *i;

      result = a2(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      v14 = (v5[7] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      v15 = v5[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v5[2] = v17;
      if (!--v2)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B612F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B613F0(0);
    v3 = sub_1C6D79F20();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C6B5DEA8(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C6B613F0(uint64_t a1)
{
  if (!qword_1EDCDF6C0)
  {
    sub_1C6B62540(255, &qword_1EDCDFA70, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData, MEMORY[0x1E69E62F8]);
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF6C0);
    }
  }
}

void sub_1C6B61488(uint64_t a1)
{
  if (!qword_1EDCDF740)
  {
    sub_1C6D78810();
    sub_1C6B614F4();
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF740);
    }
  }
}

unint64_t sub_1C6B614F4()
{
  result = qword_1EDCE0178[0];
  if (!qword_1EDCE0178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCE0178);
  }

  return result;
}

void sub_1C6B61548(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_1C6B0C69C(255, a3, a4);
    v5 = sub_1C6D79F30();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B615B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1C6B61624()
{
  result = qword_1EDCE6570;
  if (!qword_1EDCE6570)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCE6570);
  }

  return result;
}

void sub_1C6B61688(uint64_t a1)
{
  if (!qword_1EC1D6B78)
  {
    type metadata accessor for COMAPPLEFELDSPARPROTOCOLLIVERPOOLNotabilityScore_Type(255);
    sub_1C6B5F7C4(&qword_1EC1D6B80, type metadata accessor for COMAPPLEFELDSPARPROTOCOLLIVERPOOLNotabilityScore_Type, &unk_1C6D7EA24);
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D6B78);
    }
  }
}

void sub_1C6B61724(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C6B61790(uint64_t a1)
{
  if (!qword_1EDCE6270)
  {
    sub_1C6D76500();
    sub_1C6D76510();
    sub_1C6D76520();
    sub_1C6D764F0();
    sub_1C6D764C0();
    sub_1C6D764D0();
    sub_1C6D76530();
    sub_1C6D764E0();
    sub_1C6B5F7C4(&qword_1EDCE62B8, MEMORY[0x1E69E3388], MEMORY[0x1E69E3380]);
    sub_1C6B5F7C4(&qword_1EDCE62C0, MEMORY[0x1E69E3358], MEMORY[0x1E69E3350]);
    v1 = sub_1C6D766E0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE6270);
    }
  }
}

uint64_t sub_1C6B61924(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_1C6B625A4(0, a3, a4, a5);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1C6B61994(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6B62540(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6B61A0C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B62540(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C6B61A8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B62540(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C6B61AFC(uint64_t a1)
{
  sub_1C6B61724(0, &qword_1EC1D6C80, type metadata accessor for SportsRecommendedScoredTag, MEMORY[0x1E69E6158]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B615B0(0, &qword_1EC1D6C88, type metadata accessor for SportsRecommendedScoredTag, MEMORY[0x1E69E6EC8]);
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B6273C(v11, v7, &qword_1EC1D6C80, type metadata accessor for SportsRecommendedScoredTag, MEMORY[0x1E69E6158]);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1C6B5DEA8(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for SportsRecommendedScoredTag(0);
      result = sub_1C6B5F6DC(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for SportsRecommendedScoredTag);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B61D34(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1C6B62490(0, &qword_1EC1D6C68, MEMORY[0x1E69E69B8], MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E69C0]);
    v3 = sub_1C6D79F20();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C6B5F654(v4, v13, sub_1C6B623BC);
      result = sub_1C6B65098(v13);
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
      result = sub_1C6B62420(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C6B61E7C(uint64_t a1)
{
  sub_1C6B61724(0, &qword_1EC1D6BE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, MEMORY[0x1E69E6158]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = (&v24 - v6);
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1C6B615B0(0, &unk_1EC1D6BE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, MEMORY[0x1E69E6EC8]);
    v9 = sub_1C6D79F20();
    v10 = *(v3 + 48);
    v11 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);

    while (1)
    {
      sub_1C6B6273C(v11, v7, &qword_1EC1D6BE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer, MEMORY[0x1E69E6158]);
      v13 = *v7;
      v14 = v7[1];
      result = sub_1C6B5DEA8(*v7, v14);
      if (v16)
      {
        break;
      }

      v17 = result;
      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v18 = (v9[6] + 16 * result);
      *v18 = v13;
      v18[1] = v14;
      v19 = v9[7];
      v20 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer(0);
      result = sub_1C6B5F6DC(v7 + v10, v19 + *(*(v20 - 8) + 72) * v17, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizer);
      v21 = v9[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v9[2] = v23;
      v11 += v12;
      if (!--v8)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C6B620B4(uint64_t a1)
{
  if (!qword_1EDCEA7F0)
  {
    sub_1C6D763D0();
    sub_1C6B615B0(255, &unk_1EDCEA518, MEMORY[0x1E69E32C0], MEMORY[0x1E69E5E28]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCEA7F0);
    }
  }
}

void sub_1C6B62154(uint64_t a1)
{
  if (!qword_1EDCEA480)
  {
    sub_1C6D763D0();
    sub_1C6B615B0(255, &unk_1EDCEA518, MEMORY[0x1E69E32C0], MEMORY[0x1E69E5E28]);
    sub_1C6B5F7C4(&qword_1EDCEA800, MEMORY[0x1E69E32D8], MEMORY[0x1E69E32E0]);
    v1 = sub_1C6D79F30();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA480);
    }
  }
}

uint64_t sub_1C6B62230(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 > 2)
  {
    if (v3 != 3 && v3 != 4 && v3 != 5)
    {
      return result;
    }
  }

  if (!(a3 >> 5))
  {
    return sub_1C6B6227C(result, a2, a3 & 1);
  }

  if (v3 == 1 || v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1C6B6227C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1C6B62288(uint64_t result, uint64_t a2, unsigned __int8 a3)
{
  v3 = a3 >> 5;
  if (v3 > 2)
  {
    if (v3 != 3 && v3 != 4 && v3 != 5)
    {
      return result;
    }
  }

  if (!(a3 >> 5))
  {
    return sub_1C6B360A8(result, a2, a3 & 1);
  }

  if (v3 == 1 || v3 == 2)
  {
  }

  return result;
}

uint64_t sub_1C6B622DC(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1C6B622F8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

void sub_1C6B623BC()
{
  if (!qword_1EC1D6C70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D6C70);
    }
  }
}

_OWORD *sub_1C6B62420(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_1C6B62430(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1C6B62490(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = sub_1C6D79F30();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1C6B624E4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1C6B61994(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1C6B62540(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B625A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1C6B625FC(255, a3, a4);
    v5 = sub_1C6D79C00();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1C6B625FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1C6B62664(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6B626C4(uint64_t a1)
{
  sub_1C6B62430(0, &unk_1EC1D6CE8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B6273C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  sub_1C6B61724(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1C6B627EC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 5131843;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 1313887045;
    }

    else
    {
      v4 = 1330659671;
    }

    v5 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x696C6F505F4E4E43;
    }

    else
    {
      v4 = 5131843;
    }

    if (v3)
    {
      v5 = 0xEC00000073636974;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 1313887045;
  if (a2 != 2)
  {
    v7 = 1330659671;
  }

  if (a2)
  {
    v2 = 0x696C6F505F4E4E43;
    v6 = 0xEC00000073636974;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C6D7A130();
  }

  return v10 & 1;
}

uint64_t sub_1C6B62918(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 29799;
  v5 = 0xE200000000000000;
  v6 = 29804;
  v7 = 6648940;
  v8 = 0xE300000000000000;
  if (a1 != 4)
  {
    v7 = 25966;
    v8 = 0xE200000000000000;
  }

  if (a1 != 3)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 6648935;
  if (a1 != 1)
  {
    v9 = 7106917;
  }

  if (a1)
  {
    v4 = v9;
    v3 = 0xE300000000000000;
  }

  if (a1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE200000000000000;
      if (v10 != 29804)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE300000000000000;
      if (v10 != 6648940)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = 0xE200000000000000;
      if (v10 != 25966)
      {
LABEL_33:
        v13 = sub_1C6D7A130();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    v12 = 0xE300000000000000;
    if (a2 == 1)
    {
      if (v10 != 6648935)
      {
        goto LABEL_33;
      }
    }

    else if (v10 != 7106917)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v12 = 0xE200000000000000;
    if (v10 != 29799)
    {
      goto LABEL_33;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_33;
  }

  v13 = 1;
LABEL_34:

  return v13 & 1;
}

uint64_t sub_1C6B62A9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0x6569724264616572;
  v5 = 0xE900000000000066;
  v6 = 0xE800000000000000;
  v7 = 0x676E6F4C64616572;
  if (a1 != 4)
  {
    v7 = 1702257011;
    v6 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE400000000000000;
  v9 = 1701538156;
  if (a1 != 1)
  {
    v9 = 0x656B696C736964;
    v8 = 0xE700000000000000;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x746E6573657270;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE900000000000066;
      if (v10 != 0x6569724264616572)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x676E6F4C64616572)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE400000000000000;
      if (v10 != 1702257011)
      {
LABEL_34:
        v13 = sub_1C6D7A130();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE400000000000000;
      if (v10 != 1701538156)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x656B696C736964)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x746E6573657270)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_1C6B62C6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 7500899;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x736B63696C63;
    }

    else
    {
      v4 = 0x6973736572706D69;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000736E6FLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x756F43746E657665;
    }

    else
    {
      v4 = 7500899;
    }

    if (v3)
    {
      v5 = 0xEA0000000000746ELL;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x736B63696C63;
  if (a2 != 2)
  {
    v8 = 0x6973736572706D69;
    v7 = 0xEB00000000736E6FLL;
  }

  if (a2)
  {
    v2 = 0x756F43746E657665;
    v6 = 0xEA0000000000746ELL;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C6D7A130();
  }

  return v11 & 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Com_Apple_News_PersonalizationStorage_CompressedSession.validate()()
{
  v2 = v0;
  v3 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v220 = &v195 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v226 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata(0);
  v6 = *(v226 - 8);
  MEMORY[0x1EEE9AC00](v226, v7);
  v219 = &v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v218 = &v195 - v11;
  sub_1C6B1DCF0(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v227 = &v195 - v14;
  v225 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle(0);
  v15 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225, v16);
  v228 = (&v195 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView(0);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v195 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v206 = (&v195 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed(0);
  MEMORY[0x1EEE9AC00](v29 - 8, v30);
  v205 = (&v195 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted(0);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v204 = (&v195 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted(0);
  MEMORY[0x1EEE9AC00](v35 - 8, v36);
  v203 = (&v195 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen(0);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v202 = (&v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event(0);
  v212 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v42);
  v221 = &v195 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B64BC4(0);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v208 = &v195 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47, v48);
  v200 = &v195 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v222 = &v195 - v52;
  MEMORY[0x1EEE9AC00](v53, v54);
  v56 = &v195 - v55;
  v57 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent(0);
  v211 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57 - 8, v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  v214 = &v195 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v216 = &v195 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v69 = &v195 - v68;
  if (!v2[7])
  {
    sub_1C6B688CC();
    swift_allocError();
    v95 = 3;
    goto LABEL_113;
  }

  v196 = v25;
  v197 = v21;
  v198 = v15;
  v199 = v6;
  v201 = v67;
  v207 = v1;
  v70 = v2[2];
  v71 = *(v70 + 16);
  v72 = MEMORY[0x1E69E7CC0];
  v217 = v41;
  v210 = v2;
  v209 = v70;
  if (!v71)
  {
    v215 = MEMORY[0x1E69E7CC0];
    v222 = MEMORY[0x1E69E7CC0];
    v223 = MEMORY[0x1E69E7CC0];
    goto LABEL_59;
  }

  v73 = v70 + ((*(v211 + 80) + 32) & ~*(v211 + 80));
  v74 = *(v211 + 72);
  *&v229 = v212 + 48;
  v223 = MEMORY[0x1E69E7CC0];
  v213 = v73;
  v224 = v74;
  do
  {
    sub_1C6B68C0C(v73, v69, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    sub_1C6B68C0C(v69, v56, sub_1C6B64BC4);
    v75 = *v229;
    if ((*v229)(v56, 1, v41) == 1)
    {
      sub_1C6B64BF8(v56, sub_1C6B64BC4);
      sub_1C6B64BF8(v69, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    }

    else
    {
      v76 = sub_1C6B883C4();
      sub_1C6B64BF8(v56, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      sub_1C6B64BF8(v69, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      if ((v76 & 0x100000000) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v223 = sub_1C6B65AD8(0, *(v223 + 2) + 1, 1, v223);
        }

        v78 = *(v223 + 2);
        v77 = *(v223 + 3);
        if (v78 >= v77 >> 1)
        {
          v223 = sub_1C6B65AD8((v77 > 1), v78 + 1, 1, v223);
        }

        v79 = v223;
        *(v223 + 2) = v78 + 1;
        *&v79[4 * v78 + 32] = v76;
        v41 = v217;
        v74 = v224;
      }
    }

    v73 += v74;
    --v71;
  }

  while (v71);
  v80 = *(v209 + 16);
  if (!v80)
  {
    v215 = MEMORY[0x1E69E7CC0];
    v222 = MEMORY[0x1E69E7CC0];
    v2 = v210;
    goto LABEL_59;
  }

  v215 = MEMORY[0x1E69E7CC0];
  v81 = v213;
  v82 = v213;
  v83 = v216;
  do
  {
    sub_1C6B68C0C(v82, v83, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    v84 = v222;
    sub_1C6B68C0C(v83, v222, sub_1C6B64BC4);
    if (v75(v84, 1, v41) == 1)
    {
      sub_1C6B64BF8(v84, sub_1C6B64BC4);
      goto LABEL_16;
    }

    sub_1C6B68C0C(v84, v221, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 10)
    {
      if (EnumCaseMultiPayload <= 17)
      {
        if ((EnumCaseMultiPayload - 12) < 6)
        {
          goto LABEL_26;
        }

        v89 = v197;
        sub_1C6B689E4(v221, v197, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView);
        v87 = *v89;
        v90 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFeedView;
        goto LABEL_37;
      }

      if (EnumCaseMultiPayload == 18)
      {
        v89 = v202;
        sub_1C6B689E4(v221, v202, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen);
        v87 = *v89;
        v90 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventSportsTagSeen;
        goto LABEL_37;
      }

      if (EnumCaseMultiPayload == 19)
      {
        v89 = v206;
        sub_1C6B689E4(v221, v206, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore);
        v87 = *v89;
        v90 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagIgnore;
LABEL_37:
        sub_1C6B64BF8(v89, v90);
        v83 = v216;
        goto LABEL_38;
      }

LABEL_26:
      sub_1C6B64BF8(v221, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v74 = v224;
      sub_1C6B64BF8(v84, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
      v83 = v216;
LABEL_16:
      sub_1C6B64BF8(v83, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload <= 6)
    {
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload > 8)
    {
      v83 = v216;
      if (EnumCaseMultiPayload == 9)
      {
        v86 = v205;
        sub_1C6B689E4(v221, v205, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed);
        v87 = *v86;
        v88 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagFollowed;
      }

      else
      {
        v86 = v196;
        sub_1C6B689E4(v221, v196, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed);
        v87 = *v86;
        v88 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnfollowed;
      }
    }

    else
    {
      v83 = v216;
      if (EnumCaseMultiPayload == 7)
      {
        v86 = v203;
        sub_1C6B689E4(v221, v203, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted);
        v87 = *v86;
        v88 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagMuted;
      }

      else
      {
        v86 = v204;
        sub_1C6B689E4(v221, v204, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted);
        v87 = *v86;
        v88 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventTagUnmuted;
      }
    }

    sub_1C6B64BF8(v86, v88);
LABEL_38:
    sub_1C6B64BF8(v222, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
    sub_1C6B64BF8(v83, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v215 = sub_1C6B65AD8(0, *(v215 + 2) + 1, 1, v215);
    }

    v92 = *(v215 + 2);
    v91 = *(v215 + 3);
    if (v92 >= v91 >> 1)
    {
      v215 = sub_1C6B65AD8((v91 > 1), v92 + 1, 1, v215);
    }

    v93 = v215;
    *(v215 + 2) = v92 + 1;
    *&v93[4 * v92 + 32] = v87;
    v41 = v217;
    v81 = v213;
    v74 = v224;
LABEL_17:
    v82 += v74;
    --v80;
  }

  while (v80);
  v96 = *(v209 + 16);
  v2 = v210;
  if (v96)
  {
    v222 = MEMORY[0x1E69E7CC0];
    v97 = v200;
    v98 = v214;
    do
    {
      sub_1C6B68C0C(v81, v98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      sub_1C6B68C0C(v98, v97, sub_1C6B64BC4);
      if (v75(v97, 1, v41) == 1)
      {
        sub_1C6B64BF8(v97, sub_1C6B64BC4);
        sub_1C6B64BF8(v98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
      }

      else
      {
        v99 = sub_1C6B88C1C();
        sub_1C6B64BF8(v97, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
        sub_1C6B64BF8(v98, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
        if ((v99 & 0x100000000) == 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v222 = sub_1C6B65AD8(0, *(v222 + 2) + 1, 1, v222);
          }

          v101 = *(v222 + 2);
          v100 = *(v222 + 3);
          if (v101 >= v100 >> 1)
          {
            v222 = sub_1C6B65AD8((v100 > 1), v101 + 1, 1, v222);
          }

          v102 = v222;
          *(v222 + 2) = v101 + 1;
          *&v102[4 * v101 + 32] = v99;
          v41 = v217;
        }

        v98 = v214;
      }

      v81 += v224;
      --v96;
    }

    while (v96);
  }

  else
  {
    v222 = MEMORY[0x1E69E7CC0];
  }

LABEL_59:
  v103 = v2[3];
  v104 = *(v103 + 16);
  if (v104)
  {
    v230 = v72;
    sub_1C6B39310(0, v104, 0);
    v105 = v230;
    v106 = v103 + ((*(v198 + 80) + 32) & ~*(v198 + 80));
    v224 = *(v198 + 72);
    v107 = (v199 + 48);
    v229 = xmmword_1C6D7E630;
    while (1)
    {
      v108 = v228;
      sub_1C6B68C0C(v106, v228, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      sub_1C6B1D64C(0, &qword_1EDCE7CD0, MEMORY[0x1E69E72F0]);
      v109 = swift_allocObject();
      *(v109 + 16) = v229;
      *(v109 + 32) = *v108;
      v110 = v108 + *(v225 + 20);
      v111 = v227;
      sub_1C6B676FC(v110, v227);
      v112 = (*v107)(v111, 1, v226);
      v113 = v72;
      if (v112 != 1)
      {
        v114 = v218;
        sub_1C6B689E4(v227, v218, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
        v115 = v219;
        sub_1C6B68C0C(v114, v219, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
        v116 = v115;
        v117 = v220;
        sub_1C6B689E4(v116, v220, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        v118 = swift_allocObject();
        *(v118 + 16) = v229;
        *(v118 + 32) = *(v117 + 8);
        v231 = v118;

        sub_1C6B38654(v119);

        sub_1C6B38654(v120);
        sub_1C6B64BF8(v117, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticleLegacyMetadata);
        v113 = v231;
        sub_1C6B64BF8(v114, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata);
      }

      v121 = *(v113 + 2);
      v122 = *(v109 + 16);
      v123 = v122 + v121;
      if (__OFADD__(v122, v121))
      {
        goto LABEL_164;
      }

      if (v123 > *(v109 + 24) >> 1)
      {
        if (v122 <= v123)
        {
          v127 = v122 + v121;
        }

        else
        {
          v127 = *(v109 + 16);
        }

        v109 = sub_1C6B65AD8(1, v127, 1, v109);
        v122 = *(v109 + 16);
        if (!*(v113 + 2))
        {
LABEL_74:

          if (v121)
          {
            goto LABEL_165;
          }

          goto LABEL_75;
        }
      }

      else if (!v121)
      {
        goto LABEL_74;
      }

      if (((*(v109 + 24) >> 1) - v122) < v121)
      {
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
        return;
      }

      memcpy((v109 + 4 * v122 + 32), v113 + 32, 4 * v121);

      if (v121)
      {
        v124 = *(v109 + 16);
        v125 = __OFADD__(v124, v121);
        v126 = v124 + v121;
        if (v125)
        {
          goto LABEL_170;
        }

        *(v109 + 16) = v126;
      }

LABEL_75:
      sub_1C6B64BF8(v228, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle);
      v230 = v105;
      v129 = *(v105 + 2);
      v128 = *(v105 + 3);
      v130 = v129 + 1;
      if (v129 >= v128 >> 1)
      {
        sub_1C6B39310((v128 > 1), v129 + 1, 1);
        v105 = v230;
      }

      *(v105 + 2) = v130;
      *&v105[8 * v129 + 32] = v109;
      v106 += v224;
      if (!--v104)
      {
        v2 = v210;
        goto LABEL_80;
      }
    }
  }

  v130 = *(v72 + 2);
  v105 = v72;
  if (!v130)
  {
LABEL_97:

    v230 = v223;
    sub_1C6B38654(v215);
    sub_1C6B38654(v222);
    sub_1C6B38654(v72);
    v140 = sub_1C6B68850(v230);

    v141 = *(v140 + 16);
    if (v141)
    {
      v142 = sub_1C6B673E8(*(v140 + 16), 0);
      v143 = sub_1C6B68120(&v230, v142 + 8, v141, v140);
      sub_1C6B688C4(v230);
      if (v143 == v141)
      {
        goto LABEL_101;
      }

      __break(1u);
    }

    v142 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v230 = v142;

    v144 = v207;
    sub_1C6B64C58(&v230);
    v113 = v144;
    if (v144)
    {
      goto LABEL_173;
    }

    v145 = v230;
    v146 = *(v230 + 2);
    if (v146 >> 31)
    {
      goto LABEL_171;
    }

    if (v146)
    {
      v147 = sub_1C6B673E8(*(v230 + 2), 0);
      if (sub_1C6B67F28(&v230, (v147 + 4), v146, v146 << 32) == v146)
      {
LABEL_107:
        v148 = sub_1C6B5AC24(v145, v147);

        if (v148)
        {
          v149 = v2[4];
          v150 = *(v149 + 16);
          if (v150 == v146)
          {
            v230 = MEMORY[0x1E69E7CD0];
            v151 = sub_1C6B64B1C(v149);

            if (v151)
            {
              v152 = sub_1C6B88068();
              v153 = *(v209 + 16);
              if (v153)
              {
                v154 = v209 + ((*(v211 + 80) + 32) & ~*(v211 + 80));
                v155 = *(v211 + 72);
                v156 = (v212 + 48);
                *&v229 = MEMORY[0x1E69E7CC0];
                v157 = v208;
                do
                {
                  v159 = v201;
                  sub_1C6B68C0C(v154, v201, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
                  sub_1C6B68C0C(v159, v157, sub_1C6B64BC4);
                  if ((*v156)(v157, 1, v217) == 1)
                  {
                    sub_1C6B64BF8(v159, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
                    sub_1C6B64BF8(v157, sub_1C6B64BC4);
                  }

                  else
                  {
                    v160 = sub_1C6B883C4();
                    sub_1C6B64BF8(v159, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent);
                    sub_1C6B64BF8(v157, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEvent.OneOf_Event);
                    if ((v160 & 0x100000000) == 0)
                    {
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        *&v229 = sub_1C6B65AD8(0, *(v229 + 16) + 1, 1, v229);
                      }

                      v162 = *(v229 + 16);
                      v161 = *(v229 + 24);
                      if (v162 >= v161 >> 1)
                      {
                        *&v229 = sub_1C6B65AD8((v161 > 1), v162 + 1, 1, v229);
                      }

                      v163 = v229;
                      *(v229 + 16) = v162 + 1;
                      *(v163 + 4 * v162 + 32) = v160;
                    }

                    v157 = v208;
                  }

                  v154 += v155;
                  --v153;
                }

                while (v153);
              }

              else
              {
                *&v229 = MEMORY[0x1E69E7CC0];
              }

              v167 = *(v229 + 16);
              if (v167)
              {
                v168 = (v229 + 32);
                v169 = MEMORY[0x1E69E7CC0];
                do
                {
                  v173 = *v168++;
                  v172 = v173;
                  if (!v152[2] || (sub_1C6B64DD0(v172), (v174 & 1) == 0))
                  {
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v230 = v169;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      sub_1C6B392F0(0, *(v169 + 2) + 1, 1);
                      v169 = v230;
                    }

                    v171 = *(v169 + 2);
                    v170 = *(v169 + 3);
                    if (v171 >= v170 >> 1)
                    {
                      sub_1C6B392F0((v170 > 1), v171 + 1, 1);
                      v169 = v230;
                    }

                    *(v169 + 2) = v171 + 1;
                    *&v169[4 * v171 + 32] = v172;
                  }

                  --v167;
                }

                while (v167);
              }

              else
              {
                v169 = MEMORY[0x1E69E7CC0];
              }

              if (!*(v169 + 2))
              {

                v177 = 0;
                v178 = 1 << *(v152 + 32);
                v179 = -1;
                if (v178 < 64)
                {
                  v179 = ~(-1 << v178);
                }

                v180 = v179 & v152[8];
                v181 = (v178 + 63) >> 6;
                v182 = v229 + 32;
                v183 = MEMORY[0x1E69E7CC0];
                v228 = (v229 + 32);
LABEL_146:
                while (1)
                {
                  v184 = v177;
                  if (!v180)
                  {
                    break;
                  }

LABEL_150:
                  v185 = __clz(__rbit64(v180));
                  v180 &= v180 - 1;
                  v186 = *(v152[6] + ((v177 << 8) | (4 * v185)));
                  v187 = *(v229 + 16);
                  v188 = v182;
                  while (v187)
                  {
                    v189 = *v188++;
                    --v187;
                    if (v189 == v186)
                    {
                      goto LABEL_146;
                    }
                  }

                  v190 = swift_isUniquelyReferenced_nonNull_native();
                  v230 = v183;
                  if ((v190 & 1) == 0)
                  {
                    sub_1C6B392F0(0, *(v183 + 2) + 1, 1);
                    v183 = v230;
                  }

                  v192 = *(v183 + 2);
                  v191 = *(v183 + 3);
                  v193 = v192 + 1;
                  if (v192 >= v191 >> 1)
                  {
                    v227 = v192 + 1;
                    sub_1C6B392F0((v191 > 1), v192 + 1, 1);
                    v193 = v227;
                    v183 = v230;
                  }

                  *(v183 + 2) = v193;
                  *&v183[4 * v192 + 32] = v186;
                  v182 = v228;
                }

                while (1)
                {
                  v177 = v184 + 1;
                  if (__OFADD__(v184, 1))
                  {
                    goto LABEL_172;
                  }

                  if (v177 >= v181)
                  {

                    if (!*(v183 + 2))
                    {
                      goto LABEL_167;
                    }

                    v194 = sub_1C6B68850(v183);

                    sub_1C6B688CC();
                    swift_allocError();
                    *v94 = v194;
                    v158 = 6;
                    goto LABEL_114;
                  }

                  v180 = v152[v177 + 8];
                  ++v184;
                  if (v180)
                  {
                    goto LABEL_150;
                  }
                }
              }

              v176 = sub_1C6B68850(v169);

              sub_1C6B688CC();
              swift_allocError();
              *v94 = v176;
              v158 = 5;
            }

            else
            {
              v165 = sub_1C6B64A54(v149);
              sub_1C6B688CC();
              swift_allocError();
              *v94 = v165;
              v158 = 4;
            }
          }

          else if (v146 >= v150)
          {
            v166 = sub_1C6B648A4(v150 | (v146 << 32));
            sub_1C6B688CC();
            swift_allocError();
            *v94 = v166;
            v158 = 3;
          }

          else
          {
            v164 = sub_1C6B68920(v149 + 32, v146, (2 * v150) | 1);
            sub_1C6B688CC();
            swift_allocError();
            *v94 = v164;
            v158 = 2;
          }

LABEL_114:
          *(v94 + 8) = v158;
          swift_willThrow();
          return;
        }

        sub_1C6B688CC();
        swift_allocError();
        v95 = 2;
LABEL_113:
        *v94 = v95;
        v158 = 7;
        goto LABEL_114;
      }

      __break(1u);
    }

    v147 = MEMORY[0x1E69E7CC0];
    goto LABEL_107;
  }

LABEL_80:
  v131 = 0;
  v72 = MEMORY[0x1E69E7CC0];
  while (v131 < *(v105 + 2))
  {
    v113 = *&v105[8 * v131 + 32];
    v132 = *(v113 + 2);
    v133 = *(v72 + 2);
    v134 = v133 + v132;
    if (__OFADD__(v133, v132))
    {
      goto LABEL_162;
    }

    v135 = swift_isUniquelyReferenced_nonNull_native();
    if (v135 && v134 <= *(v72 + 3) >> 1)
    {
      if (*(v113 + 2))
      {
        goto LABEL_93;
      }
    }

    else
    {
      if (v133 <= v134)
      {
        v136 = v133 + v132;
      }

      else
      {
        v136 = v133;
      }

      v72 = sub_1C6B65AD8(v135, v136, 1, v72);
      if (*(v113 + 2))
      {
LABEL_93:
        v137 = *(v72 + 2);
        if ((*(v72 + 3) >> 1) - v137 < v132)
        {
          goto LABEL_166;
        }

        memcpy(&v72[4 * v137 + 32], v113 + 32, 4 * v132);

        if (v132)
        {
          v138 = *(v72 + 2);
          v125 = __OFADD__(v138, v132);
          v139 = v138 + v132;
          if (v125)
          {
            goto LABEL_169;
          }

          *(v72 + 2) = v139;
        }

        goto LABEL_82;
      }
    }

    if (v132)
    {
      goto LABEL_163;
    }

LABEL_82:
    if (v130 == ++v131)
    {
      goto LABEL_97;
    }
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
}

uint64_t sub_1C6B647AC(uint64_t a1)
{
  result = MEMORY[0x1CCA55E50](*(a1 + 16), MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_1C6C2420C(v10, *(*(a1 + 48) + ((v8 << 8) | (4 * v9)))))
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

uint64_t sub_1C6B648A4(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  v3 = sub_1C6B67ED0(a1);
  result = MEMORY[0x1CCA55E50](v3, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v7 = result;
  if (v1 != v2)
  {
    if (v2 >= v1)
    {
      while (v1 < v2)
      {
        v5 = v1 + 1;
        result = sub_1C6C2420C(&v6, v1);
        v1 = (v1 + 1);
        if (v2 == v5)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B64938(uint64_t a1)
{
  result = MEMORY[0x1CCA55E50](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1C6B1E6A8(&v13, v11, v12);
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

      return v14;
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

uint64_t sub_1C6B64A54(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CD0];
  v9 = MEMORY[0x1E69E7CD0];
  v10 = MEMORY[0x1E69E7CD0];
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      swift_bridgeObjectRetain_n();
      v6 = sub_1C6B1E6A8(&v8, v5, v4);

      if ((v6 & 1) == 0)
      {
        sub_1C6B1E6A8(&v8, v5, v4);
      }

      v3 += 2;
      --v2;
    }

    while (v2);
    v1 = v9;
  }

  return v1;
}

BOOL sub_1C6B64B1C(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = v1 + 2;
    v5 = *(v1 - 1);
    v4 = *v1;
    swift_bridgeObjectRetain_n();
    LOBYTE(v5) = sub_1C6B1E6A8(&v7, v5, v4);

    v1 = v3;
  }

  while ((v5 & 1) != 0);
  return v2 == 0;
}

uint64_t sub_1C6B64BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C6B64C58(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C6C73F58(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1C6D7A0C0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 4;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1C6D797F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1C6B67790(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

unint64_t sub_1C6B64D8C(uint64_t a1)
{
  v2 = sub_1C6D7A250();

  return sub_1C6B65120(a1, v2);
}

unint64_t sub_1C6B64DD0(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1CCA56710](*(v1 + 40), a1, 4);

  return sub_1C6B6518C(v2, v3);
}

unint64_t sub_1C6B64E18(uint64_t a1)
{
  sub_1C6D763D0();
  v2 = MEMORY[0x1E69E32D8];
  sub_1C6B68FD0(&qword_1EDCEA800, MEMORY[0x1E69E32D8], MEMORY[0x1E69E32E0]);
  v3 = sub_1C6D79500();
  return sub_1C6B651F8(a1, v3, MEMORY[0x1E69E32D8], &qword_1EDCEA7F8, v2, MEMORY[0x1E69E32E8]);
}

unint64_t sub_1C6B64EEC(uint64_t a1)
{
  sub_1C6D770E0();
  v2 = MEMORY[0x1E69E39F8];
  sub_1C6B68FD0(&unk_1EDCE61C0, MEMORY[0x1E69E39F8], MEMORY[0x1E69E3A08]);
  v3 = sub_1C6D79500();
  return sub_1C6B651F8(a1, v3, MEMORY[0x1E69E39F8], &qword_1EDCE61B8, v2, MEMORY[0x1E69E3A10]);
}

unint64_t sub_1C6B64FC0(uint64_t *a1)
{
  sub_1C6D7A260();
  sub_1C6BFDBDC(v4);
  v2 = sub_1C6D7A2B0();

  return sub_1C6B65398(a1, v2);
}

unint64_t sub_1C6B6502C(uint64_t a1)
{
  v1 = a1;
  sub_1C6D7A260();
  sub_1C6D7A290();
  v2 = sub_1C6D7A2B0();

  return sub_1C6B6518C(v1, v2);
}

unint64_t sub_1C6B65098(uint64_t a1)
{
  v2 = sub_1C6D79CF0();

  return sub_1C6B6552C(a1, v2);
}

unint64_t sub_1C6B650DC(uint64_t a1)
{
  v2 = sub_1C6D79BB0();

  return sub_1C6B655F4(a1, v2);
}

unint64_t sub_1C6B65120(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C6B6518C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C6B651F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v11.n128_f64[0] = MEMORY[0x1EEE9AC00](v8, v10);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8, v11);
      sub_1C6B68FD0(v25, v26, v27);
      v21 = sub_1C6D79560();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t sub_1C6B65398(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v21 = *(a1 + 1);
    v22 = *(a1 + 3);
    v8 = *(a1 + 5);
    v9 = a1[6];
    v10 = *(v2 + 48);
    do
    {
      v11 = v10 + 56 * v5;
      v12 = ~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v11 + 8), v21), vceqq_f64(*(v11 + 24), v22)), xmmword_1C6D80110)) & 0xF;
      if (*v11 == *&v7 && v12 == 0 && *(v11 + 40) == v8)
      {
        v15 = *(v11 + 48);
        v16 = *(v15 + 16);
        if (v16 == *(v9 + 16))
        {
          if (!v16 || v15 == v9)
          {
            return v5;
          }

          v17 = (v15 + 40);
          for (i = (v9 + 40); ; i += 2)
          {
            v19 = *(v17 - 1) == *(i - 1) && *v17 == *i;
            if (!v19 && (sub_1C6D7A130() & 1) == 0)
            {
              break;
            }

            v17 += 2;
            if (!--v16)
            {
              return v5;
            }
          }
        }
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C6B6552C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1C6B68D84(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1CCA561D0](v9, a1);
      sub_1C6B68DE0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1C6B655F4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1C6B0C69C(0, &qword_1EDCDF860, 0x1E69B5450);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1C6D79BC0();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_1C6B656C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &qword_1EDCE7CF0, MEMORY[0x1E69E6448]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C6B657D0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1DCF0(0, &qword_1EDCE6450, sub_1C6B68A4C, MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1C6B6592C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &qword_1EDCEA8B0, MEMORY[0x1E69E6158]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6B65AD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &qword_1EDCE7CD0, MEMORY[0x1E69E72F0]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1C6B65C14(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &unk_1EDCE7D30, MEMORY[0x1E6969080]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1C6B65D24(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &unk_1EC1D6D88, MEMORY[0x1E69E7360]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C6B65E88(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C6B3CB50(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3CAFC(0, &qword_1EDCDFB60, MEMORY[0x1E69E63B0], "tagID score ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B65FD0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C6B3C188(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C984(0, &qword_1EDCDFB10, MEMORY[0x1E69E6158], MEMORY[0x1E69E63B0]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6B66118(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &unk_1EC1D6820, &type metadata for TagRecommendationsDataServiceResult.Recommendation);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1C6B66228(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C6B3C554(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C984(0, &unk_1EC1D6840, &type metadata for TagRecommendationsDataServiceResult.Recommendation, &type metadata for AutoFavoriteResults.RejectionReason);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B663C8(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    a5(0);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 24);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  if (v10)
  {
    if (v15 != a4 || v15 + 4 >= &a4[3 * v13 + 4])
    {
      memmove(v15 + 4, a4 + 4, 24 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C984(0, a6, MEMORY[0x1E69E6158], a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1C6B66518(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C6B1DCF0(0, &unk_1EC1D6D70, sub_1C6B3B6A4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3B6A4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C6B66700(char *result, int64_t a2, char a3, char *a4)
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
    sub_1C6B1D64C(0, &qword_1EC1D6D98, &type metadata for RelatedChannelPickerSuggestion);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B6687C(void *result, int64_t a2, char a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v8 = result;
  if (a3)
  {
    v9 = a4[3];
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = a4[2];
  if (v10 <= v11)
  {
    v12 = a4[2];
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    a5(0);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v13[2] = v11;
    v13[3] = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if (v8)
  {
    if (v13 != a4 || v13 + 4 >= &a4[3 * v11 + 4])
    {
      memmove(v13 + 4, a4 + 4, 24 * v11);
    }

    a4[2] = 0;
  }

  else
  {
    a6(0);
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1C6B66A5C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C6B3B5C4(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3CAFC(0, &unk_1EDCDFBB0, MEMORY[0x1E69E6448], "identifier score ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B66BA0(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C6B3C260(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C4F0(0, &qword_1EDCDFBC8, &type metadata for AutoFavoriteResults.RejectionReason, "identifier score reason ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B66CE4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C6B3C480(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3C4F0(0, &qword_1EDCDFBC0, &type metadata for EventHistoryAutoFavoritesProvider.SuggestionKind, "identifier score kind ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B66E5C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C6B1DCF0(0, &qword_1EDCDF3F8, sub_1C6B68AA4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B68AA4(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B66FA8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C6B68B1C(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B3CAFC(0, &qword_1EDCDFB58, MEMORY[0x1E69E6158], "channelID channelName ");
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B67110(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    sub_1C6B1DCF0(0, &unk_1EDCDF430, sub_1C6B68C74, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1C6B68C74(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C6B6732C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C6B1D64C(0, &qword_1EDCEA8B0, MEMORY[0x1E69E6158]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1C6B673E8(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C6B1D64C(0, &qword_1EDCE7CD0, MEMORY[0x1E69E72F0]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1C6B67470(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C6B1D64C(0, &qword_1EDCEA420, MEMORY[0x1E69E7C98] + 8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1C6B67534(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C6B1DCF0(0, a3, a4, MEMORY[0x1E69E6F90]);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1C6B67648(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C6B1DCF0(0, &unk_1EC1D6850, sub_1C6B3C6B0, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

uint64_t sub_1C6B676FC(uint64_t a1, uint64_t a2)
{
  sub_1C6B1DCF0(0, &qword_1EDCE3C40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionArticle.OneOf_Metadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B67790(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C6C73C90(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1C6B67CDC((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C6B657D0(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1C6B657D0((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1C6B67CDC((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C6B67CDC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_1C6B67ED0(uint64_t result)
{
  v1 = HIDWORD(result);
  if (result < 0 == result < 0)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      return HIDWORD(result) - result;
    }

    goto LABEL_14;
  }

  if (result >= 0)
  {
    v2 = result;
  }

  else
  {
    v2 = -result;
  }

  if (result < 0)
  {
    LODWORD(v1) = -HIDWORD(result);
  }

  v3 = __CFADD__(v2, v1);
  v4 = (v2 + v1);
  if (v3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (result < 0)
  {
    return v4;
  }

  else
  {
    return -v4;
  }
}

uint64_t sub_1C6B67F28(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    LODWORD(v5) = a4;
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a4 <= SHIDWORD(a4))
    {
      v4 = HIDWORD(a4);
    }

    else
    {
      v4 = a4;
    }

    if (a4 != HIDWORD(a4))
    {
      v5 = 0;
      v6 = (v4 - a4);
      while (SHIDWORD(a4) >= a4)
      {
        if (v6 == v5)
        {
          goto LABEL_19;
        }

        *(a2 + 4 * v5) = a4 + v5;
        if (a3 - 1 == v5)
        {
          LODWORD(v5) = a4 + v5 + 1;
          goto LABEL_16;
        }

        if (!(a4 - HIDWORD(a4) + ++v5))
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_13:
    v5 = HIDWORD(a4);
    a3 = (HIDWORD(a4) - a4);
LABEL_16:
    *result = a4;
    *(result + 8) = v5;
    return a3;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1C6B67FC8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C6B68120(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1C6B68220(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C6B68378(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void sub_1C6B68478(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3C1F8(0);
  v34 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v33 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v32 = &v29 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_1C6B68C0C(*(a4 + 56) + a1 * (v23 | (v18 << 6)), v33, sub_1C6B3C1F8);
      v25 = v24;
      v26 = v32;
      sub_1C6B689E4(v25, v32, sub_1C6B3C1F8);
      sub_1C6B689E4(v26, a2, sub_1C6B3C1F8);
      if (v20 == v31)
      {
        a1 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void *sub_1C6B686DC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v25 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = (*(a4 + 48) + 16 * v17);
      v19 = v18[1];
      v20 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *v18;
      v11[1] = v19;
      v11[2] = v20;
      if (v14 == v10)
      {

        v24 = v20;
        goto LABEL_23;
      }

      v11 += 3;

      v21 = v20;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v23 = v12 + 1;
    }

    else
    {
      v23 = v13;
    }

    v12 = v23 - 1;
    v10 = result;
LABEL_23:
    v7 = v25;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1C6B68850(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1CCA55E50](v2, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1C6C2420C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1C6B688CC()
{
  result = qword_1EC1D6D68;
  if (!qword_1EC1D6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1D6D68);
  }

  return result;
}

uint64_t sub_1C6B68920(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  result = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  result = MEMORY[0x1CCA55E50](result, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v14 = result;
  v7 = v4 - a2;
  if (v4 != a2)
  {
    if (a2 <= v4)
    {
      v8 = v4;
    }

    else
    {
      v8 = a2;
    }

    v9 = v8 - a2;
    v10 = (a1 + 16 * a2 + 8);
    while (v9)
    {
      v12 = *(v10 - 1);
      v11 = *v10;

      sub_1C6B1E6A8(&v13, v12, v11);

      --v9;
      v10 += 2;
      if (!--v7)
      {
        return v14;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1C6B689E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C6B68A4C()
{
  if (!qword_1EDCE65A8)
  {
    v0 = sub_1C6D79A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDCE65A8);
    }
  }
}

void sub_1C6B68AA4(uint64_t a1)
{
  if (!qword_1EDCDF8C0)
  {
    sub_1C6B0F7A8(255, &qword_1EDCE6580, &protocolRef_FCRecipeScorable);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDF8C0);
    }
  }
}

void sub_1C6B68B1C(uint64_t a1)
{
  if (!qword_1EDCDF480)
  {
    sub_1C6B3CAFC(255, &qword_1EDCDFB58, MEMORY[0x1E69E6158], "channelID channelName ");
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF480);
    }
  }
}

void sub_1C6B68B8C(uint64_t a1)
{
  if (!qword_1EC1D9340)
  {
    sub_1C6B0F7A8(255, &qword_1EDCE6570, &protocolRef_FCHeadlineProviding);
    sub_1C6D75F50();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D9340);
    }
  }
}

uint64_t sub_1C6B68C0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1C6B68CA8(uint64_t a1)
{
  if (!qword_1EDCE7B20)
  {
    sub_1C6D75DE0();
    sub_1C6B68D1C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCE7B20);
    }
  }
}

void sub_1C6B68D1C(uint64_t a1)
{
  if (!qword_1EDCEA3C0)
  {
    sub_1C6B0C69C(255, &unk_1EDCE7E40, 0x1E696B050);
    v1 = sub_1C6D75BC0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCEA3C0);
    }
  }
}

uint64_t sub_1C6B68E34(uint64_t a1)
{
  v2 = sub_1C6D783E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1C6B68FD0(&qword_1EDCE7A68, MEMORY[0x1E6996088], MEMORY[0x1E6996090]);
  result = MEMORY[0x1CCA55E50](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v6, v17, v2);
      sub_1C6C242F4(v10, v6);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

uint64_t sub_1C6B68FD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6B6904C(uint64_t a1)
{
  if (!qword_1EDCE8F90[0])
  {
    v2 = sub_1C6B0C69C(255, &qword_1EDCE7D78, 0x1E69B6CB0);
    v4 = type metadata accessor for ArticleTopicConversionStats(a1, v2, &off_1F46758D0, v3);
    if (!v5)
    {
      atomic_store(v4, qword_1EDCE8F90);
    }
  }
}

void sub_1C6B690F0(uint64_t a1)
{
  if (!qword_1EDCE9798[0])
  {
    v2 = sub_1C6B0C69C(255, &qword_1EDCE7D80, 0x1E69B6CA0);
    v4 = type metadata accessor for ArticleTopicCohorts(a1, v2, &off_1EDCE7D88, v3);
    if (!v5)
    {
      atomic_store(v4, qword_1EDCE9798);
    }
  }
}

id NTPBPersonalizationAggregate.identifier.getter()
{
  result = [v0 featureKey];
  if (result)
  {
    v2 = result;
    v3 = sub_1C6D795A0();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NTPBPersonalizationAggregate.updatedAt.getter()
{
  [v0 timestamp];

  return sub_1C6D75F00();
}

void sub_1C6B69228(uint64_t a1, void **a2)
{
  v4 = sub_1C6D75F50();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, a1, v4, v7);
  v10 = *a2;
  sub_1C6D75F10();
  v12 = v11 * 1000.0;
  if ((*&v12 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v12 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v12 < 1.84467441e19)
  {
    [v10 setTimestamp_];
    (*(v5 + 8))(v9, v4);
    return;
  }

LABEL_7:
  __break(1u);
}

void NTPBPersonalizationAggregate.updatedAt.setter(uint64_t a1)
{
  v2 = v1;
  sub_1C6D75F10();
  v5 = v4 * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v2 setTimestamp_];
  v6 = sub_1C6D75F50();
  v7 = *(*(v6 - 8) + 8);

  v7(a1, v6);
}

void (*NTPBPersonalizationAggregate.updatedAt.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_1C6D75F50();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  [v1 timestamp];
  sub_1C6D75F00();
  return sub_1C6B69570;
}

void sub_1C6B69570(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_1C6D75F10();
    v11 = v10 * 1000.0;
    if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v11 > -1.0)
      {
        if (v11 < 1.84467441e19)
        {
          v6 = *(v2 + 24);
          v5 = *(v2 + 32);
          v12 = *(v2 + 8);
          v13 = *(v2 + 16);
          [*v2 setTimestamp_];
          (*(v13 + 8))(v5, v12);
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  (*(*(v2 + 16) + 16))(*(v2 + 24), *(*a1 + 32), *(v2 + 8));
  sub_1C6D75F10();
  v4 = v3 * 1000.0;
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v4 <= -1.0)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 >= 1.84467441e19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = *(v2 + 24);
  v5 = *(v2 + 32);
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  [*v2 setTimestamp_];
  v9 = *(v8 + 8);
  v9(v6, v7);
  v9(v5, v7);
LABEL_10:
  free(v5);
  free(v6);

  free(v2);
}

unint64_t sub_1C6B69714()
{
  result = qword_1EDCEA4E8;
  if (!qword_1EDCEA4E8)
  {
    sub_1C6B6976C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA4E8);
  }

  return result;
}

unint64_t sub_1C6B6976C()
{
  result = qword_1EDCEA4D0;
  if (!qword_1EDCEA4D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDCEA4D0);
  }

  return result;
}

id (*sub_1C6B697C8(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  [v3 clicks];
  *a1 = v4;
  return sub_1C6B6981C;
}

id (*sub_1C6B69844(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  [v3 impressions];
  *a1 = v4;
  return sub_1C6B69898;
}

id (*sub_1C6B698C4(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 eventCount];
  return sub_1C6B69918;
}

void sub_1C6B6992C(uint64_t a1)
{
  v3 = *v1;
  sub_1C6D75F10();
  v5 = v4 * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v5 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  [v3 setTimestamp_];
  v6 = sub_1C6D75F50();
  v7 = *(*(v6 - 8) + 8);

  v7(a1, v6);
}

uint64_t (*sub_1C6B69A04(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = NTPBPersonalizationAggregate.updatedAt.modify(v2);
  return sub_1C6B69A78;
}

void sub_1C6B69A78(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

id sub_1C6B69AC0()
{
  result = [*v0 featureKey];
  if (result)
  {
    v2 = result;
    v3 = sub_1C6D795A0();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B69B50()
{
  [*v0 timestamp];

  return sub_1C6D75F00();
}

id XavierGroupingService.__allocating_init(cloudContext:allowlistProvider:)(void *a1, uint64_t a2)
{
  v4 = [a1 appConfigurationManager];
  result = [a1 paidAccessChecker];
  if (result)
  {
    v6 = result;
    v7 = [a1 deviceIsiPad];
    v8 = swift_allocObject();
    v9 = [objc_msgSend(v4 possiblyUnfetchedAppConfiguration)];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    *(v8 + 16) = v9;
    *(v8 + 24) = v6;
    *(v8 + 32) = a2;
    *(v8 + 40) = v7;
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C6B69CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  sub_1C6B39280(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1C6D79CC0();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_1C6B39280((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = v25 + 16 * v12;
    *(v14 + 32) = v23;
    *(v14 + 40) = v11;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_1C6B360A8(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_1C6B360A8(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t XavierGroupingService.__allocating_init(appConfigurationManager:paidAccessChecker:allowlistProvider:deviceIsiPad:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = swift_allocObject();
  v9 = [objc_msgSend(a1 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v8 + 16) = v9;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return v8;
}

uint64_t XavierGroupingService.init(appConfigurationManager:paidAccessChecker:allowlistProvider:deviceIsiPad:)(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = [objc_msgSend(a1 possiblyUnfetchedAppConfiguration)];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v4 + 16) = v8;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

void *XavierGroupingService.bestOf(scoredItems:context:allowClusteringFallback:minClusterSize:maxClusterSize:bundleArticleQuotas:maxInaccessibleHeadlines:maxEvergreenHeadlines:maxPublisherOccurrences:maxPublisherOccurrencesByPublisherID:topicDiversity:maxAIGCHeadlines:)(uint64_t a1, uint64_t a2, int a3, int64_t a4, char a5, uint64_t a6, int a7, uint64_t a8, unint64_t a9, char a10, unint64_t a11, char a12, unint64_t a13, char a14, unint64_t a15, void (**a16)(unint64_t, char *, uint64_t), uint64_t a17, char a18)
{
  v279 = a8;
  LODWORD(v302) = a7;
  v274 = a3;
  v297 = a1;
  v291 = sub_1C6D762D0();
  v23 = *(v291 - 8);
  MEMORY[0x1EEE9AC00](v291, v24);
  v293 = &v262 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v290 = &v262 - v28;
  v310 = sub_1C6D79040();
  v304 = *(v310 - 8);
  MEMORY[0x1EEE9AC00](v310, v29);
  v292 = &v262 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v32);
  v300 = &v262 - v33;
  MEMORY[0x1EEE9AC00](v34, v35);
  v299 = &v262 - v36;
  MEMORY[0x1EEE9AC00](v37, v38);
  v306 = &v262 - v39;
  MEMORY[0x1EEE9AC00](v40, v41);
  v305 = &v262 - v42;
  v43 = MEMORY[0x1E69E6720];
  sub_1C6B6C454(0, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v44 - 8, v45);
  v278 = &v262 - v46;
  sub_1C6B6C454(0, &qword_1EDCE6248, MEMORY[0x1E69E34E0], v43);
  MEMORY[0x1EEE9AC00](v47 - 8, v48);
  v280 = &v262 - v49;
  v283 = sub_1C6D76770();
  v282 = *(v283 - 8);
  MEMORY[0x1EEE9AC00](v283, v50);
  v281 = &v262 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B6C454(0, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], v43);
  MEMORY[0x1EEE9AC00](v52 - 8, v53);
  v301 = (&v262 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v55, v56);
  v287 = (&v262 - v57);
  MEMORY[0x1EEE9AC00](v58, v59);
  v286 = (&v262 - v60);
  v308 = sub_1C6D76130();
  v311 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308, v61);
  v307 = &v262 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63, v64);
  v303 = &v262 - v65;
  MEMORY[0x1EEE9AC00](v66, v67);
  v69 = &v262 - v68;
  v270 = sub_1C6D76F60();
  v269 = *(v270 - 8);
  MEMORY[0x1EEE9AC00](v270, v70);
  v288 = &v262 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v309 = v18;
  v72 = *(v18 + 16);
  v289 = a2;
  v73 = sub_1C6D79110();
  v74 = [objc_opt_self() currentDevice];
  v75 = [v74 userInterfaceIdiom];

  v76 = [objc_opt_self() rulesWithTreatment:v72 configurationSet:v73 deviceIsiPad:v75 == 1 limitUnpaidArticles:1 enforcePublisherCap:1 todayFeedEnabled:1];
  v272 = v72;

  if (a5)
  {
    a4 = [v76 minIdealClusterSize];
    if (a4 < 0)
    {
      goto LABEL_147;
    }
  }

  if (v302)
  {
    a6 = [v76 maxIdealClusterSize];
    if (a6 < 0)
    {
LABEL_148:
      __break(1u);
LABEL_149:
      swift_once();
      goto LABEL_8;
    }
  }

  v77 = *(v297 + 16);
  if (v77 < a4)
  {
    v78 = sub_1C6D761F0();
    sub_1C6B754C0(&qword_1EC1D6DC8, MEMORY[0x1E69E3210], MEMORY[0x1E69E3218]);
    swift_allocError();
    *v79 = v77;
    v79[1] = a4;
    (*(*(v78 - 8) + 104))(v79, *MEMORY[0x1E69E3208], v78);
    swift_willThrow();

    return v77;
  }

  v263 = v23;
  v295 = a4;
  v284 = v77;
  v298 = v76;
  if (qword_1EDCEA6A0 != -1)
  {
    goto LABEL_149;
  }

LABEL_8:
  v80 = qword_1EDCEA6A8;
  sub_1C6B1D314(0);
  v273 = v81;
  v82 = swift_allocObject();
  v83 = MEMORY[0x1E69E6530];
  *(v82 + 16) = xmmword_1C6D80210;
  v84 = MEMORY[0x1E69E65A8];
  *(v82 + 56) = v83;
  *(v82 + 64) = v84;
  v85 = v284;
  *(v82 + 32) = v284;
  v86 = sub_1C6D79170();
  v87 = sub_1C6B754C0(&qword_1EDCDFCB8, MEMORY[0x1E69B5A30], MEMORY[0x1E69B5A38]);
  v294 = v86;
  v296 = v87;
  v88 = sub_1C6D7A0E0();
  v90 = v89;
  *(v82 + 96) = MEMORY[0x1E69E6158];
  v91 = sub_1C6B2064C();
  *(v82 + 72) = v88;
  *(v82 + 80) = v90;
  v92 = v83;
  v93 = v84;
  v94 = v91;
  *(v82 + 136) = v83;
  *(v82 + 144) = v93;
  v95 = v295;
  *(v82 + 104) = v91;
  *(v82 + 112) = v95;
  *(v82 + 176) = v92;
  *(v82 + 184) = v93;
  v285 = a6;
  *(v82 + 152) = a6;
  v96 = sub_1C6D79AC0();
  v271 = v80;
  sub_1C6D78D30("Running Best Of clustering for %ld items from %{public}@ context with min %ld and max %ld cluster size.", 103, 2, &dword_1C6B09000, v80, v96, v82);

  v97 = v297;
  v264 = v94;
  if (v85)
  {
    v313 = MEMORY[0x1E69E7CC0];
    sub_1C6B39354(0, v85, 0);
    v98 = v313;
    v82 = v97 + ((*(v304 + 80) + 32) & ~*(v304 + 80));
    v94 = v311 + 32;
    v99 = *(v304 + 72);
    v88 = v308;
    do
    {
      v100 = v312;
      sub_1C6B6C4B8(v82, v309, v69);
      v312 = v100;
      v313 = v98;
      v102 = v98[2];
      v101 = v98[3];
      v97 = v102 + 1;
      if (v102 >= v101 >> 1)
      {
        sub_1C6B39354((v101 > 1), v102 + 1, 1);
        v88 = v308;
        v98 = v313;
      }

      v98[2] = v97;
      (*(v311 + 32))(v98 + ((*(v311 + 80) + 32) & ~*(v311 + 80)) + *(v311 + 72) * v102, v69, v88);
      v82 += v99;
      --v85;
    }

    while (v85);
  }

  v103 = [v298 maxNativeAdCount];
  if ((v103 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_151;
  }

  if (__OFADD__(v285, v103))
  {
    v104 = v285;
  }

  else
  {
    v104 = (v285 + v103);
  }

  sub_1C6B6C454(0, &qword_1EDCDF5C8, MEMORY[0x1E69E35E0], MEMORY[0x1E69E6F90]);
  v105 = sub_1C6D76F30();
  v106 = *(v105 - 8);
  v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
  v302 = *(v106 + 72);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1C6D80220;
  if (a10)
  {
    v109 = [v298 maxUnpaidArticles];
    if ((v109 & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  v109 = a9;
LABEL_21:
  v267 = v108;
  v110 = (v108 + v107);
  *v110 = v109;
  v111 = *MEMORY[0x1E69E35B0];
  v113 = *(v106 + 104);
  v112 = v106 + 104;
  v277 = v113;
  v113(v110, v111, v105);
  if (a12)
  {
    v114 = v298;
    v115 = [v298 maxEvergreenArticles];
    if ((v115 & 0x8000000000000000) == 0)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  v115 = a11;
  v114 = v298;
LABEL_25:
  v116 = v302;
  *(v110 + v302) = v115;
  v117 = *MEMORY[0x1E69E35B8];
  v276 = v112;
  v118 = v277;
  v277(v110 + v116, v117, v105);
  if (a14)
  {
    v119 = [v114 maxPublisherOccurrences];
    if ((v119 & 0x8000000000000000) == 0)
    {
      goto LABEL_29;
    }

    __break(1u);
  }

  v119 = a13;
LABEL_29:
  v275 = v105;
  v265 = v104;
  if (a15)
  {
    v120 = a15;
  }

  else
  {
    v120 = sub_1C6B6061C(MEMORY[0x1E69E7CC0]);
  }

  v121 = v286;
  v122 = (v110 + 2 * v302);
  *v122 = v119;
  v122[1] = v120;
  v118(v122, *MEMORY[0x1E69E35C8], v275);
  v286 = a16;
  sub_1C6B753E0(a16, v121, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80]);
  v123 = sub_1C6D792C0();
  v124 = *(v123 - 8);
  v125 = v121;
  v126 = *(v124 + 48);
  v127 = v126(v125, 1, v123);

  if (v127 == 1)
  {
    sub_1C6B75460(v125, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720], sub_1C6B6C454);
LABEL_35:
    [v298 topicDiversityThreshold];
    v266 = v131;
    goto LABEL_37;
  }

  v128 = sub_1C6D792B0();
  v130 = v129;
  (*(v124 + 8))(v125, v123);
  if (v130)
  {
    goto LABEL_35;
  }

  v266 = v128;
LABEL_37:
  v132 = v287;
  sub_1C6B753E0(v286, v287, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80]);
  if (v126(v132, 1, v123) == 1)
  {
    sub_1C6B75460(v132, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720], sub_1C6B6C454);
  }

  else
  {
    v268 = sub_1C6D792A0();
    v134 = v133;
    (*(v124 + 8))(v132, v123);
    if ((v134 & 1) == 0)
    {
      goto LABEL_41;
    }
  }

  v268 = [v272 topicDiversityWindowSize];
LABEL_41:
  v135 = v301;
  sub_1C6B753E0(v286, v301, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80]);
  if (v126(v135, 1, v123) == 1)
  {
    sub_1C6B75460(v135, &unk_1EDCDFCA0, MEMORY[0x1E69B5D80], MEMORY[0x1E69E6720], sub_1C6B6C454);
    v94 = v302;
    v136 = v277;
  }

  else
  {
    v137 = v135;
    v138 = sub_1C6D79290();
    (*(v124 + 8))(v137, v123);
    v94 = v302;
    v136 = v277;
    if (v138)
    {
      goto LABEL_50;
    }
  }

  v139 = *(v309 + 32);
  if (!v139 || (v140 = [v139 allowlist]) == 0)
  {
    v145 = MEMORY[0x1E69E7CC0];
    goto LABEL_49;
  }

  v141 = v140;
  v142 = [v140 defaultTags];

  if (v142)
  {
    sub_1C6B0C69C(0, &qword_1EDCEA8C0, 0x1E696AD98);
    v143 = sub_1C6D79490();

    v144 = v312;
    v145 = sub_1C6B69CA0(v143);
    v312 = v144;

LABEL_49:
    sub_1C6B1E610(v145);

LABEL_50:
    v97 = 3 * v94;
    sub_1C6D76720();
    v82 = v275;
    v88 = v276;
    v136(v110 + 3 * v94, *MEMORY[0x1E69E35C0], v275);
    v146 = [v298 thumbnailMinHammingDistance];
    if ((v146 & 0x8000000000000000) == 0)
    {
      v147 = v94;
      v148 = 4 * v94;
      *(v110 + v148) = v146;
      v136(v110 + v148, *MEMORY[0x1E69E35D0], v82);
      v149 = 1000;
      if ((a18 & 1) == 0)
      {
        v149 = a17;
      }

      *(v110 + v148 + v147) = v149;
      v136(v110 + v148 + v147, *MEMORY[0x1E69E35D8], v82);
      v150 = v278;
      sub_1C6B753E0(v279, v278, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0]);
      v151 = sub_1C6D791E0();
      v152 = *(v151 - 8);
      if ((*(v152 + 48))(v150, 1, v151) == 1)
      {
        sub_1C6B75460(v150, &qword_1EDCDFCB0, MEMORY[0x1E69B5CF0], MEMORY[0x1E69E6720], sub_1C6B6C454);
        v153 = v282;
        v154 = v280;
        v155 = v283;
        v156 = (*(v282 + 56))(v280, 1, 1, v283);
        v157 = v281;
        MEMORY[0x1CCA52C30](v156);
        if ((*(v153 + 48))(v154, 1, v155) != 1)
        {
          sub_1C6B75460(v154, &qword_1EDCE6248, MEMORY[0x1E69E34E0], MEMORY[0x1E69E6720], sub_1C6B6C454);
        }
      }

      else
      {
        v158 = v280;
        sub_1C6D791D0();
        (*(v152 + 8))(v150, v151);
        v153 = v282;
        v155 = v283;
        (*(v282 + 56))(v158, 0, 1, v283);
        v157 = v281;
        (*(v153 + 32))(v281, v158, v155);
      }

      v159 = [objc_msgSend(*(v309 + 24) bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      [v159 isSubscribed];

      v160 = v312;
      sub_1C6D76BF0();
      if (v160)
      {
        (*(v153 + 8))(v157, v155);

        v161 = v160;
        v280 = 0;
        v88 = v289;
        goto LABEL_128;
      }

      v280 = 0;
      (*(v153 + 8))(v157, v155);

      v162 = v284;
      if (v284)
      {
        v302 = *(v304 + 16);
        v69 = (v297 + ((*(v304 + 80) + 32) & ~*(v304 + 80)));
        v163 = *(v304 + 72);
        v287 = (v304 + 32);
        v301 = (v304 + 8);
        v309 = v304 + 16;
        v286 = (v304 + 40);
        v312 = MEMORY[0x1E69E7CC8];
        while (1)
        {
          v165 = v305;
          v166 = v310;
          v167 = v302;
          (v302)(v305, v69, v310);
          a6 = sub_1C6D78FF0();
          v169 = v168;
          v167(v306, v165, v166);
          v170 = v312;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v313 = v170;
          v173 = sub_1C6B5DEA8(a6, v169);
          v174 = v170[2];
          v175 = (v172 & 1) == 0;
          v176 = v174 + v175;
          if (__OFADD__(v174, v175))
          {
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v177 = v172;
          if (v170[3] >= v176)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v172)
              {
                goto LABEL_61;
              }
            }

            else
            {
              sub_1C6B730E0(MEMORY[0x1E69B5910], &qword_1EDCDF6E0, MEMORY[0x1E69B5910]);
              if (v177)
              {
                goto LABEL_61;
              }
            }
          }

          else
          {
            sub_1C6B6F374(v176, isUniquelyReferenced_nonNull_native, MEMORY[0x1E69B5910], &qword_1EDCDF6E0, MEMORY[0x1E69B5910]);
            v178 = sub_1C6B5DEA8(a6, v169);
            if ((v177 & 1) != (v179 & 1))
            {
              goto LABEL_155;
            }

            v173 = v178;
            if (v177)
            {
LABEL_61:

              v312 = v313;
              v164 = v310;
              (*v286)(v313[7] + v173 * v163, v306, v310);
              (*v301)(v305, v164);
              goto LABEL_62;
            }
          }

          v180 = v313;
          v313[(v173 >> 6) + 8] |= 1 << v173;
          v181 = (v180[6] + 16 * v173);
          *v181 = a6;
          v181[1] = v169;
          v182 = v310;
          (*v287)(v180[7] + v173 * v163, v306, v310);
          (*v301)(v305, v182);
          v183 = v180[2];
          v184 = __OFADD__(v183, 1);
          v185 = v183 + 1;
          if (v184)
          {
            goto LABEL_146;
          }

          v312 = v180;
          v180[2] = v185;
LABEL_62:
          v69 += v163;
          v162 = (v162 - 1);
          if (!v162)
          {
            goto LABEL_75;
          }
        }
      }

      v312 = MEMORY[0x1E69E7CC8];
LABEL_75:
      v186 = sub_1C6D76F50();
      v187 = *(v186 + 16);
      if (v187)
      {
        v306 = *(v311 + 16);
        v188 = (*(v311 + 80) + 32) & ~*(v311 + 80);
        v277 = v186;
        v189 = v186 + v188;
        v305 = *(v311 + 72);
        v301 = (v304 + 16);
        v287 = (v263 + 16);
        v286 = (v263 + 88);
        LODWORD(v283) = *MEMORY[0x1E69E3280];
        LODWORD(v281) = *MEMORY[0x1E69E3288];
        LODWORD(v279) = *MEMORY[0x1E69E3260];
        LODWORD(v278) = *MEMORY[0x1E69E3238];
        LODWORD(v276) = *MEMORY[0x1E69E3270];
        LODWORD(v275) = *MEMORY[0x1E69E3250];
        LODWORD(v272) = *MEMORY[0x1E69E3248];
        LODWORD(v268) = *MEMORY[0x1E69E3240];
        LODWORD(v267) = *MEMORY[0x1E69E3258];
        LODWORD(v266) = *MEMORY[0x1E69E3230];
        v302 = v263 + 8;
        v282 = v304 + 8;
        LODWORD(v265) = *MEMORY[0x1E69E3268];
        v309 = v311 + 16;
        v190 = (v311 + 8);
        LODWORD(v263) = *MEMORY[0x1E69E3278];
        v191 = v303;
        v192 = v312;
        (v306)(v303, v186 + v188, v308);
        while (1)
        {
          v194 = sub_1C6D76110();
          if (v192[2])
          {
            v196 = sub_1C6B5DEA8(v194, v195);
            v198 = v197;
            v191 = v303;

            if (v198)
            {
              (*(v304 + 16))(v299, v192[7] + *(v304 + 72) * v196, v310);
              v199 = sub_1C6D79010();
              v200 = [v199 debugFields];

              v201 = v290;
              sub_1C6D76120();
              v202 = v293;
              v203 = v291;
              (*v287)(v293, v201, v291);
              v204 = (*v286)(v202, v203);
              if (v204 == v283)
              {
                (*v302)(v201, v203);
                v205 = 1;
              }

              else if (v204 == v281)
              {
                (*v302)(v201, v203);
                v205 = 5;
              }

              else if (v204 == v279)
              {
                (*v302)(v201, v203);
                v205 = 6;
              }

              else if (v204 == v278)
              {
                (*v302)(v201, v203);
                v205 = 2;
              }

              else if (v204 == v276)
              {
                (*v302)(v201, v203);
                v205 = 3;
              }

              else if (v204 == v275)
              {
                (*v302)(v201, v203);
                v205 = 10;
              }

              else if (v204 == v272)
              {
                (*v302)(v201, v203);
                v205 = 4;
              }

              else if (v204 == v268)
              {
                (*v302)(v201, v203);
                v205 = 7;
              }

              else if (v204 == v267)
              {
                (*v302)(v201, v203);
                v205 = 8;
              }

              else if (v204 == v266)
              {
                (*v302)(v201, v203);
                v205 = 9;
              }

              else if (v204 == v265)
              {
                (*v302)(v201, v203);
                v205 = 11;
              }

              else
              {
                if (v204 == v263)
                {
                  (*v302)(v201, v203);
                }

                else
                {
                  v206 = sub_1C6D79AA0();
                  sub_1C6D78D30("Unknown enum case encountered. Please update this switch statement to handle the new case.", 90, 2, &dword_1C6B09000, v271, v206, MEMORY[0x1E69E7CC0]);
                  v207 = *v302;
                  (*v302)(v201, v203);
                  v207(v293, v203);
                }

                v205 = 0;
              }

              [v200 setGroupingReason_];

              (*v282)(v299, v310);
              v191 = v303;
            }
          }

          else
          {
          }

          v193 = v308;
          (*v190)(v191, v308);
          v189 += v305;
          if (!--v187)
          {
            break;
          }

          (v306)(v191, v189, v193);
        }

        v208 = v295;
      }

      else
      {

        v208 = v295;
        v192 = v312;
      }

      v209 = sub_1C6D76F40();
      v210 = *(v209 + 16);
      if (!v210)
      {

        v77 = MEMORY[0x1E69E7CC0];
LABEL_126:
        v229 = v77[2];
        v88 = v289;
        if (v229 >= v208)
        {
          (*(v269 + 8))(v288, v270);

          return v77;
        }

        v230 = sub_1C6D761F0();
        sub_1C6B754C0(&qword_1EC1D6DC8, MEMORY[0x1E69E3210], MEMORY[0x1E69E3218]);
        v161 = swift_allocError();
        *v231 = v229;
        v231[1] = v208;
        (*(*(v230 - 8) + 104))(v231, *MEMORY[0x1E69E3208], v230);
        swift_willThrow();
        (*(v269 + 8))(v288, v270);
        v280 = 0;
LABEL_128:
        v232 = sub_1C6D79AA0();
        v233 = swift_allocObject();
        *(v233 + 16) = xmmword_1C6D7F520;
        v234 = MEMORY[0x1E69E6530];
        *(v233 + 56) = MEMORY[0x1E69E6530];
        v235 = MEMORY[0x1E69E65A8];
        *(v233 + 64) = MEMORY[0x1E69E65A8];
        *(v233 + 32) = v284;
        v236 = sub_1C6D7A0E0();
        v237 = MEMORY[0x1E69E6158];
        v82 = v264;
        *(v233 + 96) = MEMORY[0x1E69E6158];
        *(v233 + 104) = v82;
        *(v233 + 72) = v236;
        *(v233 + 80) = v238;
        *(v233 + 136) = v234;
        *(v233 + 144) = v235;
        *(v233 + 112) = v295;
        *(v233 + 176) = v234;
        *(v233 + 184) = v235;
        *(v233 + 152) = v285;
        v313 = v161;
        v239 = v161;
        sub_1C6B10A98(0, &qword_1EDCEA410, MEMORY[0x1E69E7280]);
        v240 = sub_1C6D795F0();
        *(v233 + 216) = v237;
        *(v233 + 224) = v82;
        *(v233 + 192) = v240;
        *(v233 + 200) = v241;
        sub_1C6D78D30("Best Of clustering failed for %ld items from %{public}@ context with min %ld and max %ld cluster size, error=%{public}@", 119, 2, &dword_1C6B09000, v271, v232, v233);

        if ((v274 & 1) == 0)
        {
          v77 = swift_allocObject();
          *(v77 + 1) = xmmword_1C6D7E630;
          v253 = sub_1C6D7A0E0();
          v77[7] = v237;
          v77[8] = v82;
          v77[4] = v253;
          v77[5] = v254;
          v255 = sub_1C6D79AC0();
          sub_1C6D78D30("Fallback for Best Of clustering disabled for %{public}@ context, not selecting any headlines.", 93, 2, &dword_1C6B09000, v271, v255, v77);

          swift_willThrow();

          return v77;
        }

        v312 = v161;
        v97 = swift_allocObject();
        *(v97 + 16) = xmmword_1C6D7EB10;
        v242 = sub_1C6D7A0E0();
        *(v97 + 56) = v237;
        *(v97 + 64) = v82;
        *(v97 + 32) = v242;
        *(v97 + 40) = v243;
        *(v97 + 96) = v234;
        *(v97 + 104) = v235;
        v244 = v285;
        *(v97 + 72) = v285;
        v245 = sub_1C6D79AC0();
        sub_1C6D78D30("Fallback for Best Of clustering enabled for %{public}@ context, selecting top K with size %ld.", 94, 2, &dword_1C6B09000, v271, v245, v97);

        v94 = v297;
        v246 = sub_1C6B6CE74(v244, v297, MEMORY[0x1E69B5910]);
        v250 = (v249 >> 1) - v248;
        if (!__OFSUB__(v249 >> 1, v248))
        {
          v88 = v246;
          v251 = v295;
          if (v250 < v295)
          {
            v77 = sub_1C6D761F0();
            sub_1C6B754C0(&qword_1EC1D6DC8, MEMORY[0x1E69E3210], MEMORY[0x1E69E3218]);
            swift_allocError();
            *v252 = v250;
            v252[1] = v251;
            (*(*(v77 - 1) + 104))(v252, *MEMORY[0x1E69E3208], v77);
            swift_willThrow();

            swift_unknownObjectRelease();
            return v77;
          }

          v94 = v248;
          v82 = v247;
          v97 = v249;
          if ((v249 & 1) == 0)
          {

LABEL_135:
            sub_1C6B6E5F0(v88, v82, v94, v97, &qword_1EDCEA430, MEMORY[0x1E69B5910], MEMORY[0x1E69B5910]);
            v77 = v256;

            v257 = v312;
LABEL_143:

            swift_unknownObjectRelease();
            return v77;
          }

          sub_1C6D7A190();
          swift_unknownObjectRetain_n();

          v258 = swift_dynamicCastClass();
          if (!v258)
          {
            swift_unknownObjectRelease();
            v258 = MEMORY[0x1E69E7CC0];
          }

          v259 = *(v258 + 16);

          if (v259 == v250)
          {
            v77 = swift_dynamicCastClass();

            v260 = v312;
            if (!v77)
            {
              swift_unknownObjectRelease();
              v77 = MEMORY[0x1E69E7CC0];
            }

            v257 = v260;
            goto LABEL_143;
          }

LABEL_153:
          swift_unknownObjectRelease();
          goto LABEL_135;
        }

LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v211 = *(v311 + 16);
      v311 += 16;
      v312 = v211;
      v212 = (*(v311 + 64) + 32) & ~*(v311 + 64);
      v303 = v209;
      v213 = v209 + v212;
      v309 = *(v311 + 56);
      v214 = (v311 - 8);
      v305 = v304 + 16;
      v306 = (v304 + 32);
      v77 = MEMORY[0x1E69E7CC0];
      (v211)(v307, v209 + v212, v308);
      while (1)
      {
        v216 = sub_1C6D76110();
        if (!v192[2])
        {
          break;
        }

        v218 = sub_1C6B5DEA8(v216, v217);
        v220 = v219;

        if ((v220 & 1) == 0)
        {
          goto LABEL_114;
        }

        v221 = v304;
        v222 = *(v304 + 72);
        v223 = v192[7] + v222 * v218;
        v224 = v292;
        v225 = v310;
        (*(v304 + 16))(v292, v223, v310);
        (*v214)(v307, v308);
        v226 = *(v221 + 32);
        v226(v300, v224, v225);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v77 = sub_1C6B658F8(0, v77[2] + 1, 1, v77);
        }

        v228 = v77[2];
        v227 = v77[3];
        if (v228 >= v227 >> 1)
        {
          v77 = sub_1C6B658F8((v227 > 1), v228 + 1, 1, v77);
        }

        v77[2] = v228 + 1;
        v226(v77 + ((*(v304 + 80) + 32) & ~*(v304 + 80)) + v228 * v222, v300, v310);
        v215 = v308;
LABEL_115:
        v213 += v309;
        if (!--v210)
        {

          v208 = v295;
          goto LABEL_126;
        }

        (v312)(v307, v213, v215);
      }

LABEL_114:
      v215 = v308;
      (*v214)(v307, v308);
      goto LABEL_115;
    }

LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  __break(1u);
LABEL_155:
  result = sub_1C6D7A1C0();
  __break(1u);
  return result;
}