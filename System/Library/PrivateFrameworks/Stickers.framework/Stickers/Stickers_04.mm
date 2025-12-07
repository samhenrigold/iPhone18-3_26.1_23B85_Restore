uint64_t sub_1B89F9EB0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___STKSticker_name);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

BOOL sub_1B89FA22C()
{
  v1 = (v0 + OBJC_IVAR___STKSticker_searchText);
  swift_beginAccess();
  v2 = v1[1];
  if (!v2)
  {
    return 0;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v1 & 0xFFFFFFFFFFFFLL;
  }

  return v3 != 0;
}

uint64_t sub_1B89FA2E4()
{
  v1 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B89FA37C(uint64_t a1)
{
  v3 = OBJC_IVAR___STKSticker_effect;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B89FA4CC()
{
  v1 = v0 + OBJC_IVAR___STKSticker_metadata;
  swift_beginAccess();
  v2 = *v1;
  sub_1B89C3C44(*v1, *(v1 + 8));
  return v2;
}

uint64_t sub_1B89FA5BC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1B89B4A04(v6, v7);
}

uint64_t sub_1B89FA61C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a2 = *v3;
  a2[1] = v5;
  return sub_1B89C3C44(v4, v5);
}

uint64_t sub_1B89FA674(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = v2;
  v4[1] = v3;
  sub_1B89C3C44(v2, v3);
  return sub_1B89B4A04(v5, v6);
}

id sub_1B89FA75C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a1 + *a3;
  swift_beginAccess();
  if (*(v3 + 8))
  {

    v4 = sub_1B8A23EF4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1B89FA7F0(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t sub_1B89FA850(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_1B8A23F24();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = (a1 + *a4);
  swift_beginAccess();
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_1B89FA8D8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t sub_1B89FA934(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (*a2 + *a5);
  swift_beginAccess();
  *v7 = v6;
  v7[1] = v5;
}

void *sub_1B89FAA48()
{
  v1 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1B89FAAF4(uint64_t a1)
{
  v3 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1B89FAB4C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

double sub_1B89FAC54()
{
  v1 = OBJC_IVAR___STKSticker_creationDate;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_1B89FAD34()
{
  v1 = OBJC_IVAR___STKSticker_lastUsedDate;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B89FADCC(double a1)
{
  v3 = OBJC_IVAR___STKSticker_lastUsedDate;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1B89FAEC4()
{
  v1 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B89FB0B0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___STKSticker__companionRecentUUID;
  swift_beginAccess();
  return sub_1B89AF268(v1 + v3, a1, &unk_1EBA92220, &unk_1B8A281A0);
}

uint64_t sub_1B89FB258(uint64_t a1)
{
  v3 = OBJC_IVAR___STKSticker__companionRecentUUID;
  swift_beginAccess();
  sub_1B89DD9E4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1B89FB2B8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1B89AF268(a1, &v10 - v5, &unk_1EBA92220, &unk_1B8A281A0);
  v7 = *a2;
  v8 = OBJC_IVAR___STKSticker__companionRecentUUID;
  swift_beginAccess();
  sub_1B89DD9E4(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1B89FB424()
{
  v1 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  if (*(v0 + v1) <= 0)
  {
    v2 = *(v0 + OBJC_IVAR___STKSticker_animatedVariantIsPreferred);
    if (v2 != 2)
    {
      return v2 & 1;
    }

    v4 = OBJC_IVAR___STKSticker_representations;
    swift_beginAccess();
    v5 = *(v0 + v4);
    if (v5 >> 62)
    {
      goto LABEL_26;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
    {

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1B8CC44E0](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v9 = *(v5 + 8 * v7 + 32);
        }

        v10 = v9;
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        v12 = &v9[OBJC_IVAR___STKStickerRepresentation_role];
        swift_beginAccess();
        v13 = *v12 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v12 + 1);
        if (v13 || (sub_1B8A24954() & 1) != 0)
        {
          v8 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
          swift_beginAccess();
          LOBYTE(v8) = v10[v8];

          if (v8)
          {

            LOBYTE(v2) = 1;
            return v2 & 1;
          }
        }

        else
        {
        }

        ++v7;
        if (v11 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      ;
    }

LABEL_22:
  }

  LOBYTE(v2) = 0;
  return v2 & 1;
}

char *Sticker.__allocating_init(type:representations:name:metadata:externalURI:accessibilityName:attributionInfo:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = v11;
  v76 = a8;
  v75 = a7;
  v72 = a4;
  v71 = a3;
  v17 = sub_1B8A23904();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v12;
  v21 = objc_allocWithZone(v12);
  v22 = &v21[OBJC_IVAR___STKSticker_accessibilityName];
  *v22 = 0;
  v22[1] = 0;
  v74 = v22;
  v23 = &v21[OBJC_IVAR___STKSticker_searchText];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v21[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v21[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v21[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v21[OBJC_IVAR___STKSticker_metadata];
  *&v21[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v28 = &v21[OBJC_IVAR___STKSticker_externalURI];
  *v28 = 0;
  v28[1] = 0;
  v70 = v28;
  v73 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v21[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  LODWORD(a1) = *a1;
  (*(v18 + 56))(&v21[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v17);
  v21[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  v69 = a1;
  v21[OBJC_IVAR___STKSticker_type] = a1;
  v79 = v18;
  v29 = *(v18 + 16);
  v77 = v20;
  v29(&v21[OBJC_IVAR___STKSticker_identifier], v20, v17);
  *&v21[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v31 = MEMORY[0x1E69E7CC0];
    v80 = a6;
    if (i)
    {
      v83 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v67 = v17;
      v68 = a5;
      v31 = v83;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v34 = MEMORY[0x1B8CC44E0](j, a2);
          v35 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v36 = *(v34 + v35);
          swift_unknownObjectRelease();
          v83 = v31;
          v38 = v31[2];
          v37 = v31[3];
          if (v38 >= v37 >> 1)
          {
            sub_1B8A0394C((v37 > 1), v38 + 1, 1);
            v31 = v83;
          }

          v31[2] = v38 + 1;
          v31[v38 + 4] = v36;
        }
      }

      else
      {
        v39 = 32;
        do
        {
          v40 = *(a2 + v39);
          v41 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v42 = *(v40 + v41);
          v83 = v31;
          v44 = v31[2];
          v43 = v31[3];
          if (v44 >= v43 >> 1)
          {
            sub_1B8A0394C((v43 > 1), v44 + 1, 1);
            v31 = v83;
          }

          v31[2] = v44 + 1;
          v31[v44 + 4] = v42;
          v39 += 8;
          --i;
        }

        while (i);
      }

      a6 = v80;
      a5 = v68;
      v17 = v67;
    }

    v45 = v31[2];
    if (!v45)
    {
      break;
    }

    a2 = 0;
    v46 = v31 + 4;
    while (1)
    {
      v47 = *v46++;
      v48 = __OFADD__(a2, v47);
      a2 += v47;
      if (v48)
      {
        break;
      }

      if (!--v45)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  a2 = 0;
LABEL_22:

  *&v21[OBJC_IVAR___STKSticker_byteCount] = a2;
  v49 = &v21[OBJC_IVAR___STKSticker_name];
  v50 = v72;
  *v49 = v71;
  v49[1] = v50;
  *&v21[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v51 = *v27;
  v52 = v27[1];
  *v27 = a5;
  v27[1] = a6;
  sub_1B89C3C44(a5, a6);
  sub_1B89B4A04(v51, v52);
  v53 = v77;
  v54 = v76;
  v55 = v75;
  if (!v76)
  {
    v82[0] = v69;
    v55 = sub_1B8A04AC4(v82);
    v54 = v56;
  }

  v57 = v70;
  swift_beginAccess();
  *v57 = v55;
  v57[1] = v54;

  v58 = v74;
  swift_beginAccess();
  *v58 = a9;
  v58[1] = a10;

  v59 = v73;
  swift_beginAccess();
  v60 = *&v21[v59];
  *&v21[v59] = a11;
  v61 = a11;

  v62 = [objc_opt_self() currentEnvironment];
  v63 = [v62 timeProvider];

  [v63 timestamp];
  v65 = v64;
  swift_unknownObjectRelease();
  *&v21[OBJC_IVAR___STKSticker_creationDate] = v65;
  *&v21[OBJC_IVAR___STKSticker_lastUsedDate] = v65;
  *&v21[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v81.receiver = v21;
  v81.super_class = v78;
  v66 = objc_msgSendSuper2(&v81, sel_init);
  sub_1B89FE9A8();

  (*(v79 + 8))(v53, v17);
  sub_1B89B4A04(a5, v80);
  return v66;
}

char *Sticker.init(type:representations:name:metadata:externalURI:accessibilityName:attributionInfo:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v13 = sub_1B8A04C00(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  sub_1B89B4A04(a5, a6);
  return v13;
}

char *Sticker.__allocating_init(type:representations:name:metadata:externalURI:accessibilityName:attributionInfo:searchText:sanitizedPrompt:promptPrimaryLanguageIdentifier:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v99 = a8;
  v98 = a7;
  v103 = a5;
  v96 = a4;
  v95 = a3;
  v87 = sub_1B8A23934();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v83[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1B8A23904();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v83[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LODWORD(a1) = *a1;
  v100 = type metadata accessor for Sticker(0);
  v25 = objc_allocWithZone(v100);
  v26 = &v25[OBJC_IVAR___STKSticker_accessibilityName];
  *v26 = 0;
  v26[1] = 0;
  v97 = v26;
  v27 = &v25[OBJC_IVAR___STKSticker_searchText];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v25[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v25[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v25[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v30 = 0;
  v30[1] = 0;
  v31 = &v25[OBJC_IVAR___STKSticker_metadata];
  *&v25[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v32 = &v25[OBJC_IVAR___STKSticker_externalURI];
  *v32 = 0;
  v32[1] = 0;
  v93 = v32;
  v94 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v25[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  (*(v22 + 56))(&v25[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v21);
  v25[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  v84 = a1;
  v25[OBJC_IVAR___STKSticker_type] = a1;
  v102 = v22;
  v33 = *(v22 + 16);
  v101 = v24;
  v33(&v25[OBJC_IVAR___STKSticker_identifier], v24, v21);
  *&v25[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_29;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v35 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v106 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v91 = v21;
      v92 = a6;
      v35 = v106;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v38 = MEMORY[0x1B8CC44E0](j, a2);
          v39 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v40 = *(v38 + v39);
          swift_unknownObjectRelease();
          v106 = v35;
          v42 = v35[2];
          v41 = v35[3];
          if (v42 >= v41 >> 1)
          {
            sub_1B8A0394C((v41 > 1), v42 + 1, 1);
            v35 = v106;
          }

          v35[2] = v42 + 1;
          v35[v42 + 4] = v40;
        }
      }

      else
      {
        v43 = 32;
        do
        {
          v44 = *(a2 + v43);
          v45 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v46 = *(v44 + v45);
          v106 = v35;
          v48 = v35[2];
          v47 = v35[3];
          if (v48 >= v47 >> 1)
          {
            sub_1B8A0394C((v47 > 1), v48 + 1, 1);
            v35 = v106;
          }

          v35[2] = v48 + 1;
          v35[v48 + 4] = v46;
          v43 += 8;
          --i;
        }

        while (i);
      }

      a6 = v92;
      v21 = v91;
    }

    v49 = v35[2];
    if (!v49)
    {
      break;
    }

    v50 = 0;
    v51 = v35 + 4;
    while (1)
    {
      v52 = *v51++;
      v53 = __OFADD__(v50, v52);
      v50 += v52;
      if (v53)
      {
        break;
      }

      if (!--v49)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_29:
    ;
  }

  v50 = 0;
LABEL_22:
  v92 = a17;
  v91 = a15;
  v90 = a14;
  v89 = a13;
  v88 = a12;

  *&v25[OBJC_IVAR___STKSticker_byteCount] = v50;
  v54 = &v25[OBJC_IVAR___STKSticker_name];
  v55 = v96;
  *v54 = v95;
  v54[1] = v55;
  *&v25[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v56 = *v31;
  v57 = v31[1];
  v58 = v103;
  *v31 = v103;
  v31[1] = a6;
  sub_1B89C3C44(v58, a6);
  sub_1B89B4A04(v56, v57);
  v59 = v101;
  v60 = v99;
  v61 = v98;
  if (!v99)
  {
    v105[0] = v84;
    v61 = sub_1B8A04AC4(v105);
    v60 = v62;
  }

  v63 = v93;
  swift_beginAccess();
  *v63 = v61;
  v63[1] = v60;

  v64 = v97;
  swift_beginAccess();
  *v64 = a9;
  v64[1] = a10;

  v65 = v94;
  swift_beginAccess();
  v66 = *&v25[v65];
  *&v25[v65] = a11;
  v67 = a11;

  v68 = [objc_opt_self() currentEnvironment];
  v69 = [v68 timeProvider];

  [v69 timestamp];
  v71 = v70;
  swift_unknownObjectRelease();
  *&v25[OBJC_IVAR___STKSticker_creationDate] = v71;
  *&v25[OBJC_IVAR___STKSticker_lastUsedDate] = v71;
  *&v25[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v104.receiver = v25;
  v104.super_class = v100;
  v72 = objc_msgSendSuper2(&v104, sel_init);
  sub_1B89FE9A8();
  (*(v102 + 8))(v59, v21);
  v73 = &v72[OBJC_IVAR___STKSticker_searchText];
  swift_beginAccess();
  v74 = v89;
  *v73 = v88;
  v73[1] = v74;
  v75 = v72;

  v76 = &v75[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  swift_beginAccess();
  *v76 = 0;
  *(v76 + 1) = 0;

  v77 = &v75[OBJC_IVAR___STKSticker_sanitizedPrompt];
  swift_beginAccess();
  v78 = v91;
  *v77 = v90;
  v77[1] = v78;

  v79 = v92;
  if (v92)
  {

    sub_1B89B4A04(v103, a6);
  }

  else
  {
    v81 = v85;
    sub_1B8A23924();
    a16 = sub_1B8A23914();
    v79 = v82;

    sub_1B89B4A04(v103, a6);
    (*(v86 + 8))(v81, v87);
  }

  *v76 = a16;
  *(v76 + 1) = v79;

  return v75;
}

char *Sticker.__allocating_init(type:representations:name:metadata:externalURI:accessibilityName:attributionInfo:searchText:promptPrimaryLanguageIdentifier:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v85 = a8;
  v84 = a7;
  v81 = a4;
  v80 = a3;
  v19 = sub_1B8A23904();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(a1) = *a1;
  v86 = type metadata accessor for Sticker(0);
  v23 = objc_allocWithZone(v86);
  v24 = &v23[OBJC_IVAR___STKSticker_accessibilityName];
  *v24 = 0;
  v24[1] = 0;
  v83 = v24;
  v25 = &v23[OBJC_IVAR___STKSticker_searchText];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v23[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v23[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v23[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v28 = 0;
  v28[1] = 0;
  v29 = &v23[OBJC_IVAR___STKSticker_metadata];
  *&v23[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v30 = &v23[OBJC_IVAR___STKSticker_externalURI];
  *v30 = 0;
  v30[1] = 0;
  v79 = v30;
  v82 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v23[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  (*(v20 + 56))(&v23[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v19);
  v23[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  HIDWORD(v74) = a1;
  v23[OBJC_IVAR___STKSticker_type] = a1;
  v88 = v20;
  v31 = *(v20 + 16);
  v87 = v22;
  v31(&v23[OBJC_IVAR___STKSticker_identifier], v22, v19);
  *&v23[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v33 = MEMORY[0x1E69E7CC0];
    v89 = a6;
    if (i)
    {
      v92 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v77 = v19;
      v78 = a5;
      v33 = v92;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v36 = MEMORY[0x1B8CC44E0](j, a2);
          v37 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v38 = *(v36 + v37);
          swift_unknownObjectRelease();
          v92 = v33;
          v40 = v33[2];
          v39 = v33[3];
          if (v40 >= v39 >> 1)
          {
            sub_1B8A0394C((v39 > 1), v40 + 1, 1);
            v33 = v92;
          }

          v33[2] = v40 + 1;
          v33[v40 + 4] = v38;
        }
      }

      else
      {
        v41 = 32;
        do
        {
          v42 = *(a2 + v41);
          v43 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v44 = *(v42 + v43);
          v92 = v33;
          v46 = v33[2];
          v45 = v33[3];
          if (v46 >= v45 >> 1)
          {
            sub_1B8A0394C((v45 > 1), v46 + 1, 1);
            v33 = v92;
          }

          v33[2] = v46 + 1;
          v33[v46 + 4] = v44;
          v41 += 8;
          --i;
        }

        while (i);
      }

      a6 = v89;
      a5 = v78;
      v19 = v77;
    }

    v47 = v33[2];
    if (!v47)
    {
      break;
    }

    a2 = 0;
    v48 = v33 + 4;
    while (1)
    {
      v49 = *v48++;
      v50 = __OFADD__(a2, v49);
      a2 += v49;
      if (v50)
      {
        break;
      }

      if (!--v47)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  a2 = 0;
LABEL_22:
  v78 = a15;
  v77 = a14;
  v76 = a13;
  v75 = a12;

  *&v23[OBJC_IVAR___STKSticker_byteCount] = a2;
  v51 = &v23[OBJC_IVAR___STKSticker_name];
  v52 = v81;
  *v51 = v80;
  v51[1] = v52;
  *&v23[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v53 = *v29;
  v54 = v29[1];
  *v29 = a5;
  v29[1] = a6;
  sub_1B89C3C44(a5, a6);
  sub_1B89B4A04(v53, v54);
  v55 = v87;
  v56 = v85;
  v57 = v84;
  if (!v85)
  {
    v91[0] = BYTE4(v74);
    v57 = sub_1B8A04AC4(v91);
    v56 = v58;
  }

  v59 = v79;
  swift_beginAccess();
  *v59 = v57;
  v59[1] = v56;

  v60 = v83;
  swift_beginAccess();
  *v60 = a9;
  v60[1] = a10;

  v61 = v82;
  swift_beginAccess();
  v62 = *&v23[v61];
  *&v23[v61] = a11;
  v63 = a11;

  v64 = [objc_opt_self() currentEnvironment];
  v65 = [v64 timeProvider];

  [v65 timestamp];
  v67 = v66;
  swift_unknownObjectRelease();
  *&v23[OBJC_IVAR___STKSticker_creationDate] = v67;
  *&v23[OBJC_IVAR___STKSticker_lastUsedDate] = v67;
  *&v23[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v90.receiver = v23;
  v90.super_class = v86;
  v68 = objc_msgSendSuper2(&v90, sel_init);
  sub_1B89FE9A8();
  (*(v88 + 8))(v55, v19);

  sub_1B89B4A04(a5, v89);
  v69 = &v68[OBJC_IVAR___STKSticker_searchText];
  swift_beginAccess();
  v70 = v76;
  *v69 = v75;
  v69[1] = v70;
  v71 = v68;

  v72 = &v71[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  swift_beginAccess();
  v73 = v78;
  *v72 = v77;
  v72[1] = v73;

  return v71;
}

char *Sticker.__allocating_init(type:representations:name:metadata:externalURI:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = sub_1B8A052F4(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1B89B4A04(a5, a6);
  return v18;
}

char *Sticker.init(type:representations:name:metadata:externalURI:)(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1B8A052F4(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_1B89B4A04(a5, a6);
  return v10;
}

char *Sticker.init(type:identifier:representations:name:effect:byteCount:metadata:externalURI:accessibilityName:attributionInfo:searchText:creationDate:lastUsedDate:libraryIndex:sanitizedPrompt:rewrittenPrompt:promptPrimaryLanguageIdentifier:prefersAnimation:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, void *a12, unint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unint64_t a28, char a29)
{
  v125 = a5;
  v126 = a6;
  v124 = a4;
  v129 = a3;
  v134 = a1;
  v122 = a15;
  v121 = a14;
  v127 = a13;
  v128 = a12;
  v133 = a11;
  v132 = a10;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v34 = &v113 - v33;
  v35 = sub_1B8A23904();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &v29[OBJC_IVAR___STKSticker_accessibilityName];
  *v39 = 0;
  v39[1] = 0;
  v40 = &v29[OBJC_IVAR___STKSticker_searchText];
  *v40 = 0;
  *(v40 + 1) = 0;
  v117 = v40;
  v41 = &v29[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v41 = 0;
  *(v41 + 1) = 0;
  v118 = v41;
  v42 = &v29[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v42 = 0;
  *(v42 + 1) = 0;
  v119 = v42;
  v43 = &v29[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v43 = 0;
  *(v43 + 1) = 0;
  v120 = v43;
  v44 = &v29[OBJC_IVAR___STKSticker_metadata];
  *&v29[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v45 = &v29[OBJC_IVAR___STKSticker_externalURI];
  *v45 = 0;
  v45[1] = 0;
  v123 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v29[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  LODWORD(v131) = *v134;
  (*(v36 + 56))(&v29[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v35);
  v134 = v29;
  v115 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
  v116 = a2;
  v29[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B89AF268(a2, v34, &unk_1EBA92220, &unk_1B8A281A0);
  v46 = *(v36 + 48);
  if (v46(v34, 1, v35) == 1)
  {
    sub_1B8A238F4();
    if (v46(v34, 1, v35) != 1)
    {
      sub_1B89A8A78(v34, &unk_1EBA92220, &unk_1B8A281A0);
    }
  }

  else
  {
    (*(v36 + 32))(v38, v34, v35);
  }

  v47 = v134;
  v134[OBJC_IVAR___STKSticker_type] = v131;
  v130 = v36;
  v131 = v38;
  v48 = *(v36 + 16);
  v114 = v35;
  v48(&v47[OBJC_IVAR___STKSticker_identifier], v38, v35);
  v49 = v129;
  *&v47[OBJC_IVAR___STKSticker_representations] = v129;
  swift_beginAccess();
  v50 = v122;
  *v39 = v121;
  v39[1] = v50;

  v51 = &v47[OBJC_IVAR___STKSticker_name];
  v52 = v125;
  *v51 = v124;
  v51[1] = v52;
  *&v47[OBJC_IVAR___STKSticker_effect] = v126;
  swift_beginAccess();
  v53 = *v44;
  v54 = v44[1];
  v55 = v132;
  v56 = v133;
  *v44 = v132;
  v44[1] = v56;
  sub_1B89C3C44(v55, v56);
  sub_1B89B4A04(v53, v54);
  v58 = v127;
  v57 = v128;
  if (!v127)
  {
    v59 = sub_1B8A238A4();
    v137 = 0xD00000000000001BLL;
    v138 = 0x80000001B8A2A9A0;
    MEMORY[0x1B8CC3E20](v59);

    v57 = v137;
    v58 = v138;
  }

  swift_beginAccess();
  *v45 = v57;
  v45[1] = v58;

  v60 = v123;
  swift_beginAccess();
  v61 = *&v47[v60];
  *&v47[v60] = a16;
  v62 = a16;

  v63 = (v49 >> 62);
  if (v49 >> 62)
  {
    goto LABEL_60;
  }

  for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v65 = MEMORY[0x1E69E7CC0];
    v128 = v62;
    if (!i)
    {
      goto LABEL_22;
    }

    v136 = MEMORY[0x1E69E7CC0];
    result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v67 = v63;
    v65 = v136;
    if ((v49 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != i; ++j)
      {
        v69 = MEMORY[0x1B8CC44E0](j, v49);
        v70 = OBJC_IVAR___STKStickerRepresentation_byteCount;
        swift_beginAccess();
        v71 = *(v69 + v70);
        swift_unknownObjectRelease();
        v136 = v65;
        v73 = v65[2];
        v72 = v65[3];
        if (v73 >= v72 >> 1)
        {
          sub_1B8A0394C((v72 > 1), v73 + 1, 1);
          v65 = v136;
        }

        v65[2] = v73 + 1;
        v65[v73 + 4] = v71;
      }
    }

    else
    {
      v74 = (v49 + 32);
      do
      {
        v75 = *v74;
        v76 = OBJC_IVAR___STKStickerRepresentation_byteCount;
        swift_beginAccess();
        v77 = *(v75 + v76);
        v136 = v65;
        v79 = v65[2];
        v78 = v65[3];
        if (v79 >= v78 >> 1)
        {
          sub_1B8A0394C((v78 > 1), v79 + 1, 1);
          v65 = v136;
        }

        v65[2] = v79 + 1;
        v65[v79 + 4] = v77;
        ++v74;
        --i;
      }

      while (i);
    }

    v63 = v67;
LABEL_22:
    v80 = v65[2];
    if (v80)
    {
      v62 = 0;
      v81 = v65 + 4;
      while (1)
      {
        v82 = *v81++;
        v83 = __OFADD__(v62, v82);
        v62 += v82;
        if (v83)
        {
          break;
        }

        if (!--v80)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {
      v62 = 0;
LABEL_28:

      v84 = v134;
      *&v134[OBJC_IVAR___STKSticker_byteCount] = v62;
      if (a20)
      {
        v85 = [objc_opt_self() currentEnvironment];
        v86 = [v85 timeProvider];

        [v86 timestamp];
        v88 = v87;
        v84 = v134;
        swift_unknownObjectRelease();
      }

      else
      {
        v88 = a19;
      }

      v89 = a29;
      v127 = a28;
      v126 = a27;
      v125 = a26;
      v124 = a25;
      v123 = a24;
      *&v84[OBJC_IVAR___STKSticker_creationDate] = v88;
      if (a22)
      {
        v90 = [objc_opt_self() currentEnvironment];
        v91 = [v90 timeProvider];

        [v91 timestamp];
        v93 = v92;
        v84 = v134;
        swift_unknownObjectRelease();
      }

      else
      {
        v93 = a21;
      }

      v94 = v120;
      *&v84[OBJC_IVAR___STKSticker_lastUsedDate] = v93;
      *&v84[OBJC_IVAR___STKSticker_libraryIndex] = a7;
      v95 = v117;
      swift_beginAccess();
      *v95 = a17;
      *(v95 + 1) = a18;

      v96 = v118;
      swift_beginAccess();
      v97 = v123;
      *v96 = a23;
      *(v96 + 1) = v97;

      v98 = v119;
      swift_beginAccess();
      v99 = v125;
      *v98 = v124;
      v98[1] = v99;

      swift_beginAccess();
      v100 = v127;
      *v94 = v126;
      v94[1] = v100;

      if (a29 != 2)
      {
        (*(v130 + 8))(v131, v114);

LABEL_56:
        v109 = v116;
        v110 = v134;
        v134[v115] = v89;
        v111 = type metadata accessor for Sticker(0);
        v135.receiver = v110;
        v135.super_class = v111;
        v112 = objc_msgSendSuper2(&v135, sel_init);

        sub_1B89B4A04(v132, v133);
        sub_1B89A8A78(v109, &unk_1EBA92220, &unk_1B8A281A0);
        return v112;
      }

      if (v63)
      {
        v101 = sub_1B8A24554();
        v103 = v130;
        v102 = v131;
        if (!v101)
        {
LABEL_53:
          (*(v103 + 8))(v102, v114);

          v89 = 2;
          goto LABEL_56;
        }
      }

      else
      {
        v101 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v103 = v130;
        v102 = v131;
        if (!v101)
        {
          goto LABEL_53;
        }
      }

      v62 = 0;
      while (1)
      {
        if ((v49 & 0xC000000000000001) != 0)
        {
          v105 = MEMORY[0x1B8CC44E0](v62, v49);
        }

        else
        {
          if (v62 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v105 = *(v49 + 8 * v62 + 32);
        }

        v106 = v105;
        v63 = (v62 + 1);
        if (__OFADD__(v62, 1))
        {
          break;
        }

        v107 = &v105[OBJC_IVAR___STKStickerRepresentation_role];
        swift_beginAccess();
        v108 = *v107 == 0xD000000000000020 && 0x80000001B8A2A290 == *(v107 + 1);
        if (v108 || (sub_1B8A24954() & 1) != 0)
        {
          v104 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
          swift_beginAccess();
          LOBYTE(v104) = v106[v104];

          if (v104)
          {
            (*(v130 + 8))(v131, v114);

            v89 = 1;
            goto LABEL_56;
          }
        }

        else
        {
        }

        ++v62;
        if (v63 == v101)
        {

          (*(v130 + 8))(v131, v114);
          v89 = 0;
          goto LABEL_56;
        }
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B89FD71C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B8A28040;
  MEMORY[0x1B8CC3E20](0x203D2065707974, 0xE700000000000000);
  sub_1B8A24704();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  strcpy(v62, "identifier = ");
  HIWORD(v62[1]) = -4864;
  sub_1B8A23904();
  sub_1B8A05C8C(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v3 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v3);

  v4 = v62[1];
  *(v2 + 48) = v62[0];
  *(v2 + 56) = v4;
  v62[0] = 0;
  v62[1] = 0xE000000000000000;
  sub_1B8A24634();

  v60[6] = 0xD000000000000012;
  v61 = 0x80000001B8A2B0F0;
  swift_beginAccess();
  v5 = type metadata accessor for Sticker.Representation(0);

  v7 = MEMORY[0x1B8CC3F80](v6, v5);
  v9 = v8;

  MEMORY[0x1B8CC3E20](v7, v9);

  *(v2 + 64) = 0xD000000000000012;
  *(v2 + 72) = v61;
  v10 = (v0 + OBJC_IVAR___STKSticker_accessibilityName);
  swift_beginAccess();
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = *v10 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {

      sub_1B8A24634();

      v60[3] = 0xD000000000000014;
      v60[4] = 0x80000001B8A2B130;
      MEMORY[0x1B8CC3E20](v12, v11);

      v15 = *(v2 + 16);
      v14 = *(v2 + 24);
      if (v15 >= v14 >> 1)
      {
        v2 = sub_1B89DD314((v14 > 1), v15 + 1, 1, v2);
      }

      *(v2 + 16) = v15 + 1;
      v16 = v2 + 16 * v15;
      *(v16 + 32) = 0xD000000000000014;
      *(v16 + 40) = 0x80000001B8A2B130;
    }
  }

  v17 = (v1 + OBJC_IVAR___STKSticker_externalURI);
  swift_beginAccess();
  v18 = v17[1];
  if (v18)
  {
    v19 = *v17;

    sub_1B8A24634();

    strcpy(v60, "externalURI = ");
    HIBYTE(v60[1]) = -18;
    MEMORY[0x1B8CC3E20](v19, v18);

    v20 = v60[0];
    v21 = v60[1];
    v23 = *(v2 + 16);
    v22 = *(v2 + 24);
    if (v23 >= v22 >> 1)
    {
      v2 = sub_1B89DD314((v22 > 1), v23 + 1, 1, v2);
    }

    *(v2 + 16) = v23 + 1;
    v24 = v2 + 16 * v23;
    *(v24 + 32) = v20;
    *(v24 + 40) = v21;
  }

  v25 = (v1 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v26 = v25[1];
  if (v26 >> 60 == 15)
  {
    goto LABEL_24;
  }

  v27 = *v25;
  sub_1B89B4A18(*v25, v26);
  sub_1B8A24634();

  v29 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v29 != 2 || !__OFSUB__(*(v27 + 24), *(v27 + 16)))
    {
      goto LABEL_21;
    }

    __break(1u);
LABEL_20:
    if (__OFSUB__(HIDWORD(v27), v27))
    {
      __break(1u);
      return result;
    }

    goto LABEL_21;
  }

  if (v29)
  {
    goto LABEL_20;
  }

LABEL_21:
  v30 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v30);

  MEMORY[0x1B8CC3E20](0x736574796220, 0xE600000000000000);
  v32 = *(v2 + 16);
  v31 = *(v2 + 24);
  if (v32 >= v31 >> 1)
  {
    v2 = sub_1B89DD314((v31 > 1), v32 + 1, 1, v2);
  }

  sub_1B89B4A04(v27, v26);
  *(v2 + 16) = v32 + 1;
  v33 = v2 + 16 * v32;
  *(v33 + 32) = 0x617461646174656DLL;
  *(v33 + 40) = 0xEB00000000203D20;
LABEL_24:
  v34 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v35 = *(v1 + v34);
  if (v35)
  {
    v36 = v35;
    sub_1B8A24634();

    v37 = [v36 description];
    v38 = sub_1B8A23F24();
    v40 = v39;

    MEMORY[0x1B8CC3E20](v38, v40);

    v42 = *(v2 + 16);
    v41 = *(v2 + 24);
    if (v42 >= v41 >> 1)
    {
      v2 = sub_1B89DD314((v41 > 1), v42 + 1, 1, v2);
    }

    *(v2 + 16) = v42 + 1;
    v43 = v2 + 16 * v42;
    *(v43 + 32) = 0xD000000000000012;
    *(v43 + 40) = 0x80000001B8A2B110;
  }

  MEMORY[0x1B8CC3E20](0x3D20746365666665, 0xE900000000000020);
  swift_beginAccess();
  sub_1B8A24704();
  v45 = *(v2 + 16);
  v44 = *(v2 + 24);
  if (v45 >= v44 >> 1)
  {
    v2 = sub_1B89DD314((v44 > 1), v45 + 1, 1, v2);
  }

  *(v2 + 16) = v45 + 1;
  v46 = v2 + 16 * v45;
  *(v46 + 32) = 0;
  *(v46 + 40) = 0xE000000000000000;
  sub_1B8A24634();
  MEMORY[0x1B8CC3E20](0x497972617262696CLL, 0xEF203D207865646ELL);
  swift_beginAccess();
  sub_1B8A241A4();
  v48 = *(v2 + 16);
  v47 = *(v2 + 24);
  if (v48 >= v47 >> 1)
  {
    v2 = sub_1B89DD314((v47 > 1), v48 + 1, 1, v2);
  }

  *(v2 + 16) = v48 + 1;
  v49 = v2 + 16 * v48;
  *(v49 + 32) = 0;
  *(v49 + 40) = 0xE000000000000000;
  sub_1B8A24634();
  MEMORY[0x1B8CC3E20](0x6E6F697461657263, 0xEF203D2065746144);
  swift_beginAccess();
  sub_1B8A241A4();
  v51 = *(v2 + 16);
  v50 = *(v2 + 24);
  if (v51 >= v50 >> 1)
  {
    v2 = sub_1B89DD314((v50 > 1), v51 + 1, 1, v2);
  }

  *(v2 + 16) = v51 + 1;
  v52 = v2 + 16 * v51;
  *(v52 + 32) = 0;
  *(v52 + 40) = 0xE000000000000000;
  sub_1B8A24634();
  MEMORY[0x1B8CC3E20](0x646573557473616CLL, 0xEF203D2065746144);
  swift_beginAccess();
  sub_1B8A241A4();
  v54 = *(v2 + 16);
  v53 = *(v2 + 24);
  if (v54 >= v53 >> 1)
  {
    v2 = sub_1B89DD314((v53 > 1), v54 + 1, 1, v2);
  }

  *(v2 + 16) = v54 + 1;
  v55 = v2 + 16 * v54;
  *(v55 + 32) = 0;
  *(v55 + 40) = 0xE000000000000000;
  swift_getObjectType();
  v56 = sub_1B8A24A94();
  MEMORY[0x1B8CC3E20](v56);

  MEMORY[0x1B8CC3E20](58, 0xE100000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F40, &unk_1B8A27050);
  sub_1B89CCD90(&qword_1EBA911A0, &unk_1EBA91F40, &unk_1B8A27050, MEMORY[0x1E69E6310]);
  v57 = sub_1B8A23EB4();
  v59 = v58;

  MEMORY[0x1B8CC3E20](v57, v59);

  MEMORY[0x1B8CC3E20](62, 0xE100000000000000);
  return 60;
}

BOOL sub_1B89FE0BC(uint64_t a1)
{
  sub_1B89AF268(a1, v41, &unk_1EBA91F50, &unk_1B8A26500);
  if (v42)
  {
    type metadata accessor for Sticker(0);
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR___STKSticker_type) != v40[OBJC_IVAR___STKSticker_type])
      {
        goto LABEL_29;
      }

      sub_1B8A23904();
      sub_1B8A05C8C(&qword_1EBA91640, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v2 = v1;
      if ((sub_1B8A23ED4() & 1) == 0)
      {
        goto LABEL_29;
      }

      v3 = v1;
      v4 = (v1 + OBJC_IVAR___STKSticker_accessibilityName);
      swift_beginAccess();
      v5 = *v4;
      v6 = v4[1];
      v7 = &v40[OBJC_IVAR___STKSticker_accessibilityName];
      swift_beginAccess();
      v8 = *(v7 + 1);
      if (v6)
      {
        if (!v8 || (v5 != *v7 || v6 != v8) && (sub_1B8A24954() & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else if (v8)
      {
        goto LABEL_29;
      }

      v9 = (v2 + OBJC_IVAR___STKSticker_name);
      swift_beginAccess();
      v10 = *v9;
      v11 = v9[1];
      v12 = &v40[OBJC_IVAR___STKSticker_name];
      swift_beginAccess();
      if ((v10 != *v12 || v11 != *(v12 + 1)) && (sub_1B8A24954() & 1) == 0)
      {
        goto LABEL_29;
      }

      v13 = OBJC_IVAR___STKSticker_effect;
      swift_beginAccess();
      v14 = *(v2 + v13);
      v15 = OBJC_IVAR___STKSticker_effect;
      swift_beginAccess();
      if (v14 != *&v40[v15])
      {
        goto LABEL_29;
      }

      v16 = OBJC_IVAR___STKSticker_representations;
      swift_beginAccess();
      v17 = *(v2 + v16);
      v18 = OBJC_IVAR___STKSticker_representations;
      swift_beginAccess();
      v19 = *&v40[v18];

      v20 = sub_1B89F7DF4(v17, v19);

      if ((v20 & 1) == 0)
      {
        goto LABEL_29;
      }

      v21 = (v2 + OBJC_IVAR___STKSticker_metadata);
      swift_beginAccess();
      v23 = *v21;
      v22 = v21[1];
      v24 = &v40[OBJC_IVAR___STKSticker_metadata];
      swift_beginAccess();
      v26 = *v24;
      v25 = v24[1];
      if (v22 >> 60 == 15)
      {
        if (v25 >> 60 == 15)
        {
          sub_1B89C3C44(v23, v22);
          sub_1B89C3C44(v26, v25);
          sub_1B89B4A04(v23, v22);
LABEL_24:
          v28 = OBJC_IVAR___STKSticker_attributionInfo;
          swift_beginAccess();
          v29 = *(v2 + v28);
          v30 = OBJC_IVAR___STKSticker_attributionInfo;
          swift_beginAccess();
          v31 = *&v40[v30];
          if (v29)
          {
            if (v31)
            {
              type metadata accessor for Sticker.AttributionInfo();
              v32 = v31;
              v33 = v29;
              v3 = v2;
              v34 = sub_1B8A24404();

              if (v34)
              {
                goto LABEL_27;
              }
            }
          }

          else if (!v31)
          {
LABEL_27:
            v35 = OBJC_IVAR___STKSticker_libraryIndex;
            swift_beginAccess();
            v36 = *(v3 + v35);
            v37 = OBJC_IVAR___STKSticker_libraryIndex;
            swift_beginAccess();
            v38 = *&v40[v37];

            return v36 == v38;
          }

LABEL_29:

          return 0;
        }
      }

      else if (v25 >> 60 != 15)
      {
        sub_1B89C3C44(v23, v22);
        sub_1B89C3C44(v26, v25);
        sub_1B89C3C44(v23, v22);
        sub_1B89C3C44(v26, v25);
        v27 = sub_1B8A0495C(v23, v22, v26, v25);
        sub_1B89B4A04(v26, v25);
        sub_1B89B4A04(v23, v22);
        sub_1B89B4A04(v26, v25);
        sub_1B89B4A04(v23, v22);
        if (!v27)
        {
          goto LABEL_29;
        }

        goto LABEL_24;
      }

      sub_1B89C3C44(v23, v22);
      sub_1B89C3C44(v26, v25);

      sub_1B89B4A04(v23, v22);
      sub_1B89B4A04(v26, v25);
    }
  }

  else
  {
    sub_1B89A8A78(v41, &unk_1EBA91F50, &unk_1B8A26500);
  }

  return 0;
}

_BYTE *sub_1B89FE67C()
{
  v1 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B8CC44E0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
      swift_beginAccess();
      if (v6[v8])
      {

        return v6;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_13:

  return 0;
}

uint64_t sub_1B89FE7C0(uint64_t a1)
{
  v3 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v18 = a1;
  v17 = a1;
  v16 = &v17;

  v5 = sub_1B89F931C(sub_1B8A058EC, v15, v4);

  if (v5)
  {
    v6 = *(v1 + v3);
    if (v6 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
    {

      if (!i)
      {
        break;
      }

      for (j = 0; ; ++j)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1B8CC44E0](j, v6);
        }

        else
        {
          if (j >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v9 = *(v6 + 8 * j + 32);
        }

        v10 = v9;
        v11 = j + 1;
        if (__OFADD__(j, 1))
        {
          break;
        }

        sub_1B89AB538(0, &qword_1EBA91AE8, 0x1E69E58C0);
        v12 = sub_1B8A24404();
        v13 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
        swift_beginAccess();
        v10[v13] = v12 & 1;

        if (v11 == i)
        {
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }
  }

  else
  {
    sub_1B8A05944();
    swift_allocError();
    return swift_willThrow();
  }
}

void sub_1B89FE9A8()
{
  v1 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v32 = v1;
  v33 = v0;
  v2 = *&v0[v1];
  v3 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_41:
    v4 = sub_1B8A24554();
  }

  else
  {
    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v5)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1B8CC44E0](v5, v2);
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_38;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    v9 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v10 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
    swift_beginAccess();
    LOBYTE(v10) = v8[v10];

    ++v5;
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B89DD0F4(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_1B89DD0F4((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      *&v6[8 * v12 + 32] = v5 - 1;
      v5 = v9;
    }
  }

  v13 = *(v6 + 2);
  if (!v13)
  {

    v15 = *&v33[v32];
    if (v15 >> 62)
    {
      if (sub_1B8A24554())
      {
        goto LABEL_21;
      }
    }

    else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_21:
      if ((v15 & 0xC000000000000001) != 0)
      {

        v16 = MEMORY[0x1B8CC44E0](0, v15);

        goto LABEL_24;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v16 = *(v15 + 32);
LABEL_24:
        if (qword_1EBA911E8 != -1)
        {
          swift_once();
        }

        v17 = sub_1B8A23BC4();
        __swift_project_value_buffer(v17, qword_1EBA911F0);
        v18 = v33;
        v19 = sub_1B8A23BA4();
        v20 = sub_1B8A24214();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          *v21 = 138412290;
          *(v21 + 4) = v18;
          *v22 = v18;
          v23 = v18;
          _os_log_impl(&dword_1B89A7000, v19, v20, "Implicitly preferring the first representation of sticker: %@", v21, 0xCu);
          sub_1B89A8A78(v22, &qword_1EBA919E0, &qword_1B8A262D0);
          MEMORY[0x1B8CC5170](v22, -1, -1);
          MEMORY[0x1B8CC5170](v21, -1, -1);
        }

        v24 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
        swift_beginAccess();
        *(&v16->isa + v24) = 1;
LABEL_46:

        return;
      }

      __break(1u);
LABEL_49:
      swift_once();
LABEL_44:
      v29 = sub_1B8A23BC4();
      __swift_project_value_buffer(v29, qword_1EBA911F0);
      v16 = sub_1B8A23BA4();
      v30 = sub_1B8A24234();
      if (os_log_type_enabled(v16, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1B89A7000, v16, v30, "No representation was preferred, but none was preferable", v31, 2u);
        MEMORY[0x1B8CC5170](v31, -1, -1);
      }

      goto LABEL_46;
    }

    if (qword_1EBA911E8 == -1)
    {
      goto LABEL_44;
    }

    goto LABEL_49;
  }

  v14 = v13 - 1;
  v3 = v32;
  if (v13 != 1)
  {
    v25 = 40;
    do
    {
      v26 = *&v6[v25];
      v2 = *&v33[v32];
      if ((v2 & 0xC000000000000001) != 0)
      {

        v27 = MEMORY[0x1B8CC44E0](v26, v2);
      }

      else
      {
        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_39;
        }

        if (v26 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_40;
        }

        v27 = *(v2 + 8 * v26 + 32);
      }

      v28 = OBJC_IVAR___STKStickerRepresentation_isPreferred;
      swift_beginAccess();
      v27[v28] = 0;

      v25 += 8;
      --v14;
    }

    while (v14);
  }
}

uint64_t sub_1B89FEE5C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return sub_1B8A24024();
  }

  else
  {
    return 0;
  }
}

id Sticker.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v87 - v5;
  v7 = sub_1B8A23904();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v102 = &v87 - v12;
  v13 = &v1[OBJC_IVAR___STKSticker_accessibilityName];
  *v13 = 0;
  v13[1] = 0;
  v104 = v13;
  v14 = &v1[OBJC_IVAR___STKSticker_searchText];
  *v14 = 0;
  v14[1] = 0;
  v108 = v14;
  v15 = &v1[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v15 = 0;
  v15[1] = 0;
  v109 = v15;
  v16 = &v1[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v16 = 0;
  v16[1] = 0;
  v110 = v16;
  v17 = &v1[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v17 = 0;
  v17[1] = 0;
  v111 = v17;
  v105 = &v1[OBJC_IVAR___STKSticker_metadata];
  *&v1[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v18 = &v1[OBJC_IVAR___STKSticker_externalURI];
  *v18 = 0;
  v18[1] = 0;
  v106 = v18;
  v107 = &v1[OBJC_IVAR___STKSticker_attributionInfo];
  *&v1[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  v19 = *(v8 + 56);
  v103 = OBJC_IVAR___STKSticker__companionRecentUUID;
  v19(&v1[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v7);
  v1[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  v20 = sub_1B8A23EF4();
  v101 = [a1 decodeIntegerForKey_];

  sub_1B89AB538(0, &qword_1ED82DF70, 0x1E696AFB0);
  v21 = sub_1B8A243B4();
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = v21;
  v19(v6, 1, 1, v7);
  sub_1B8A05C8C(&qword_1EBA92230, MEMORY[0x1E69695A8], MEMORY[0x1E69695D8]);
  sub_1B8A24784();

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    goto LABEL_21;
  }

  v23 = *(v8 + 32);
  v23(v11, v6, v7);
  v24 = v102;
  v23(v102, v11, v7);
  type metadata accessor for Sticker.Representation(0);
  v25 = sub_1B8A243C4();
  if (!v25)
  {
    (*(v8 + 8))(v24, v7);
LABEL_21:

LABEL_22:

    sub_1B89B4A04(*v105, *(v105 + 1));

    sub_1B89A8A78(&v2[v103], &unk_1EBA92220, &unk_1B8A281A0);
    type metadata accessor for Sticker(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v26 = v25;
  sub_1B89AB538(0, &qword_1EBA91F70, 0x1E696AEC0);
  v27 = sub_1B8A243B4();
  if (!v27)
  {
    (*(v8 + 8))(v24, v7);

    goto LABEL_22;
  }

  v115 = 0;
  v116 = 0;
  v28 = v27;
  sub_1B8A23F14();

  v29 = v116;
  if (!v116)
  {

LABEL_35:

    (*(v8 + 8))(v24, v7);
    goto LABEL_22;
  }

  v30 = v115;
  v31 = sub_1B8A243B4();
  if (!v31)
  {
    (*(v8 + 8))(v24, v7);

LABEL_42:

    goto LABEL_22;
  }

  v115 = 0;
  v116 = 0;
  v32 = v31;
  sub_1B8A23F14();

  if (!v116)
  {

    goto LABEL_35;
  }

  v98 = v30;
  v99 = v116;
  v100 = v26;
  v96 = v115;
  v33 = sub_1B8A23EF4();
  v95 = [a1 decodeIntegerForKey_];

  v34 = sub_1B8A23EF4();
  v97 = [a1 decodeIntegerForKey_];

  v35 = sub_1B8A23EF4();
  [a1 decodeDoubleForKey_];
  v37 = v36;

  v38 = sub_1B8A23EF4();
  [a1 decodeDoubleForKey_];
  v40 = v39;

  v41 = sub_1B8A243B4();
  if (!v41)
  {
    (*(v8 + 8))(v24, v7);

    goto LABEL_42;
  }

  v115 = 0;
  v116 = 0;
  v42 = v41;
  sub_1B8A23F14();

  if (!v116)
  {

    goto LABEL_35;
  }

  v94 = v116;
  v93 = v115;
  v43 = sub_1B8A243B4();
  if (!v43)
  {
    (*(v8 + 8))(v24, v7);

LABEL_41:

    goto LABEL_42;
  }

  v115 = 0;
  v116 = 0;
  v44 = v43;
  sub_1B8A23F14();

  if (!v116)
  {

    goto LABEL_35;
  }

  v92 = v116;
  v91 = v115;
  v45 = sub_1B8A243B4();
  if (!v45)
  {
    (*(v8 + 8))(v24, v7);

LABEL_40:

    goto LABEL_41;
  }

  v115 = 0;
  v116 = 0;
  v46 = v45;
  sub_1B8A23F14();

  if (!v116)
  {

    goto LABEL_35;
  }

  v90 = v116;
  v89 = v115;
  v47 = sub_1B8A243B4();
  if (!v47)
  {
    (*(v8 + 8))(v24, v7);

    goto LABEL_39;
  }

  v115 = 0;
  v116 = 0;
  v48 = v47;
  sub_1B8A23F14();

  if (!v116)
  {

    goto LABEL_35;
  }

  if (v101)
  {
    v49 = v98;
    if (v101 != 1)
    {
      (*(v8 + 8))(v24, v7);

LABEL_39:

      goto LABEL_40;
    }

    v88 = v115;
    v101 = v116;
    v103 = v29;
    v50 = 1;
  }

  else
  {
    v88 = v115;
    v101 = v116;
    v103 = v29;
    v50 = 0;
    v49 = v98;
  }

  type metadata accessor for Sticker.AttributionInfo();
  v98 = sub_1B8A243B4();
  sub_1B89AB538(0, &qword_1EBA91F78, 0x1E695DEF0);
  v52 = sub_1B8A243B4();
  if (v52)
  {
    v53 = v52;
    v87 = sub_1B8A237C4();
    v55 = v54;
  }

  else
  {
    v87 = 0;
    v55 = 0xF000000000000000;
  }

  v56 = sub_1B8A23EF4();
  [a1 decodeDoubleForKey_];
  v58 = v57;

  v2[OBJC_IVAR___STKSticker_type] = v50;
  (*(v8 + 16))(&v2[OBJC_IVAR___STKSticker_identifier], v24, v7);
  *&v2[OBJC_IVAR___STKSticker_representations] = v100;
  v59 = v104;
  swift_beginAccess();
  v60 = v103;
  *v59 = v49;
  v59[1] = v60;

  v61 = &v2[OBJC_IVAR___STKSticker_name];
  v62 = v99;
  *v61 = v96;
  v61[1] = v62;
  v63 = sub_1B8A052DC(v95);
  if (v64)
  {
    v65 = 0;
  }

  else
  {
    v65 = v63;
  }

  *&v2[OBJC_IVAR___STKSticker_effect] = v65;
  v66 = v24;
  v67 = v105;
  swift_beginAccess();
  v68 = *v67;
  v69 = v67[1];
  v70 = v87;
  *v67 = v87;
  v67[1] = v55;
  sub_1B89C3C44(v70, v55);
  sub_1B89B4A04(v68, v69);
  v71 = sub_1B8A238A4();
  v113 = 0xD00000000000001BLL;
  v114 = 0x80000001B8A2A9A0;
  MEMORY[0x1B8CC3E20](v71);

  sub_1B89B4A04(v70, v55);
  v72 = v113;
  v73 = v114;
  (*(v8 + 8))(v66, v7);
  v74 = v106;
  swift_beginAccess();
  *v74 = v72;
  v74[1] = v73;

  v75 = v107;
  swift_beginAccess();
  v76 = *v75;
  *v75 = v98;

  *&v2[OBJC_IVAR___STKSticker_byteCount] = v97;
  *&v2[OBJC_IVAR___STKSticker_creationDate] = v37;
  *&v2[OBJC_IVAR___STKSticker_lastUsedDate] = v40;
  *&v2[OBJC_IVAR___STKSticker_libraryIndex] = v58;
  v77 = v108;
  swift_beginAccess();
  v78 = v94;
  *v77 = v93;
  v77[1] = v78;

  v79 = v109;
  swift_beginAccess();
  v80 = v92;
  *v79 = v91;
  v79[1] = v80;

  v81 = v110;
  swift_beginAccess();
  v82 = v90;
  *v81 = v89;
  v81[1] = v82;

  v83 = v111;
  swift_beginAccess();
  v84 = v101;
  *v83 = v88;
  v83[1] = v84;

  v85 = type metadata accessor for Sticker(0);
  v112.receiver = v2;
  v112.super_class = v85;
  v86 = objc_msgSendSuper2(&v112, sel_init);

  return v86;
}

void sub_1B89FFDE4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR___STKSticker_type);
  v5 = sub_1B8A23EF4();
  [a1 encodeInteger:v4 forKey:v5];

  v6 = sub_1B8A238B4();
  v7 = sub_1B8A23EF4();
  [a1 encodeObject:v6 forKey:v7];

  swift_beginAccess();
  type metadata accessor for Sticker.Representation(0);

  v8 = sub_1B8A240E4();

  v9 = sub_1B8A23EF4();
  [a1 encodeObject:v8 forKey:v9];

  v10 = v2 + OBJC_IVAR___STKSticker_accessibilityName;
  swift_beginAccess();
  if (*(v10 + 8))
  {

    v11 = sub_1B8A23EF4();
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1B8A23EF4();
  [a1 encodeObject:v11 forKey:v12];
  swift_unknownObjectRelease();

  swift_beginAccess();

  v13 = sub_1B8A23EF4();

  v14 = sub_1B8A23EF4();
  [a1 encodeObject:v13 forKey:v14];

  v15 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  v16 = *(v2 + v15);
  v17 = sub_1B8A23EF4();
  [a1 encodeInteger:v16 forKey:v17];

  v18 = (v2 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v19 = 0;
  v20 = v18[1];
  if (v20 >> 60 != 15)
  {
    v21 = *v18;
    sub_1B89B4A18(v21, v20);
    v19 = sub_1B8A237A4();
    sub_1B89B4A04(v21, v20);
  }

  v22 = sub_1B8A23EF4();
  [a1 encodeObject:v19 forKey:v22];
  swift_unknownObjectRelease();

  v23 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v24 = *(v2 + v23);
  v25 = sub_1B8A23EF4();
  [a1 encodeObject:v24 forKey:v25];

  v26 = OBJC_IVAR___STKSticker_byteCount;
  swift_beginAccess();
  v27 = *(v2 + v26);
  v28 = sub_1B8A23EF4();
  [a1 encodeInteger:v27 forKey:v28];

  v29 = OBJC_IVAR___STKSticker_creationDate;
  swift_beginAccess();
  v30 = *(v2 + v29);
  v31 = sub_1B8A23EF4();
  [a1 encodeDouble:v31 forKey:v30];

  v32 = OBJC_IVAR___STKSticker_lastUsedDate;
  swift_beginAccess();
  v33 = *(v2 + v32);
  v34 = sub_1B8A23EF4();
  [a1 encodeDouble:v34 forKey:v33];

  v35 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  v36 = *(v2 + v35);
  v37 = sub_1B8A23EF4();
  [a1 encodeDouble:v37 forKey:v36];

  v38 = v2 + OBJC_IVAR___STKSticker_searchText;
  swift_beginAccess();
  if (*(v38 + 8))
  {

    v39 = sub_1B8A23EF4();
  }

  else
  {
    v39 = 0;
  }

  v40 = sub_1B8A23EF4();
  [a1 encodeObject:v39 forKey:v40];
  swift_unknownObjectRelease();

  v41 = v2 + OBJC_IVAR___STKSticker_sanitizedPrompt;
  swift_beginAccess();
  if (*(v41 + 8))
  {

    v42 = sub_1B8A23EF4();
  }

  else
  {
    v42 = 0;
  }

  v43 = sub_1B8A23EF4();
  [a1 encodeObject:v42 forKey:v43];
  swift_unknownObjectRelease();

  v44 = v2 + OBJC_IVAR___STKSticker_rewrittenPrompt;
  swift_beginAccess();
  if (*(v44 + 8))
  {

    v45 = sub_1B8A23EF4();
  }

  else
  {
    v45 = 0;
  }

  v46 = sub_1B8A23EF4();
  [a1 encodeObject:v45 forKey:v46];
  swift_unknownObjectRelease();

  v47 = v2 + OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier;
  swift_beginAccess();
  if (*(v47 + 8))
  {

    v48 = sub_1B8A23EF4();
  }

  else
  {
    v48 = 0;
  }

  v49 = sub_1B8A23EF4();
  [a1 encodeObject:v48 forKey:v49];
  swift_unknownObjectRelease();
}

uint64_t sub_1B8A00618()
{
  v1 = *v0;
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](v1);
  return sub_1B8A24A34();
}

uint64_t sub_1B8A0068C(uint64_t a1)
{
  v2 = *v1;
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](v2);
  return sub_1B8A24A34();
}

uint64_t sub_1B8A006D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B8A052DC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unsigned __int8 *sub_1B8A007C0@<X0>(uint64_t *a3@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v90 - v5;
  v7 = sub_1B8A23904();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91F80, &unk_1B8A26440);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v90 - v12;
  v14 = sub_1B8A23784();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v17;
  sub_1B8A23764();
  if ((*(v18 + 48))(v13, 1, v14) == 1)
  {
    sub_1B89A8A78(v13, &qword_1EBA91F80, &unk_1B8A26440);
LABEL_10:
    type metadata accessor for Sticker.URIType(0);
    return swift_storeEnumTagMultiPayload();
  }

  (*(v18 + 32))(v16, v13, v14);
  v19 = sub_1B8A23754();
  if (!v20)
  {
LABEL_9:
    (*(v18 + 8))(v16, v14);
    goto LABEL_10;
  }

  if (v19 == 0x72656B63697473 && v20 == 0xE700000000000000)
  {
  }

  else
  {
    v22 = sub_1B8A24954();

    if ((v22 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v95 = v18;
  v96 = a3;
  v24 = sub_1B8A236B4();
  v25 = v24;
  v26 = v24[2];
  if ((v26 - 6) < 0xFFFFFFFFFFFFFFFELL)
  {
    goto LABEL_14;
  }

  v28 = v24[6];
  v27 = v24[7];
  v29 = v28 == 1919251317 && v27 == 0xE400000000000000;
  v30 = v29;
  v94 = v30;
  if (!v29 && (sub_1B8A24954() & 1) == 0 && (v28 != 0x746E65636572 || v27 != 0xE600000000000000) && (sub_1B8A24954() & 1) == 0)
  {
    if (v28 == 0x696A6F6D656DLL && v27 == 0xE600000000000000 || (sub_1B8A24954() & 1) != 0)
    {
      if (v26 == 4)
      {
        v41 = v25[8];
        v42 = v25[9];
        v44 = v25[10];
        v43 = v25[11];

        (*(v95 + 8))(v16, v14);
        v45 = v96;
        *v96 = v41;
        v45[1] = v42;
        v45[2] = v44;
        v45[3] = v43;
        type metadata accessor for Sticker.URIType(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else if (v28 == 0x696A6F6D65 && v27 == 0xE500000000000000 || (sub_1B8A24954() & 1) != 0)
    {
      if (v26 == 4)
      {
        v60 = v25[8];
        v59 = v25[9];
        v62 = v25[10];
        v61 = v25[11];

        if (v60 == 0x696669746E656469 && v59 == 0xEA00000000007265)
        {

          v63 = v96;
        }

        else
        {
          v83 = sub_1B8A24954();

          v63 = v96;
          if ((v83 & 1) == 0)
          {
            (*(v95 + 8))(v16, v14);

            goto LABEL_10;
          }
        }

        v84 = sub_1B89FEE5C(v62, v61);
        v86 = v85;

        (*(v95 + 8))(v16, v14);
        if (v86)
        {
          *v63 = v84;
          v63[1] = v86;
          type metadata accessor for Sticker.URIType(0);
          return swift_storeEnumTagMultiPayload();
        }

        goto LABEL_10;
      }
    }

    else if (v28 == 0x61705F6472696874 && v27 == 0xEB00000000797472 || (sub_1B8A24954()) && v26 == 5)
    {
      v76 = v25[8];
      v77 = v25[9];
      v79 = v25[10];
      v78 = v25[11];
      v81 = v25[12];
      v80 = v25[13];

      (*(v95 + 8))(v16, v14);
      v82 = v96;
      *v96 = v76;
      v82[1] = v77;
      v82[2] = v79;
      v82[3] = v78;
      v82[4] = v81;
      v82[5] = v80;
      type metadata accessor for Sticker.URIType(0);
      return swift_storeEnumTagMultiPayload();
    }

LABEL_14:
    (*(v95 + 8))(v16, v14);
LABEL_31:

    type metadata accessor for Sticker.URIType(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v26 != 4)
  {
    v37 = *(v95 + 8);

    v37(v16, v14);

    goto LABEL_31;
  }

  v31 = v27;
  v32 = v25[8];
  v33 = v25[9];
  v34 = v25[10];
  v90 = v28;
  v91 = v34;
  v35 = v25[11];
  v93 = v31;

  v92 = v35;

  if (v32 == 0x696669746E656469 && v33 == 0xEA00000000007265)
  {

    v36 = v96;
LABEL_34:

    sub_1B8A23894();

    (*(v95 + 8))(v16, v14);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      v39 = *(v8 + 32);
      v39(v10, v6, v7);
      v39(v36, v10, v7);
      type metadata accessor for Sticker.URIType(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_1B89A8A78(v6, &unk_1EBA92220, &unk_1B8A281A0);
    goto LABEL_10;
  }

  v38 = sub_1B8A24954();
  v36 = v96;
  if (v38)
  {

    goto LABEL_34;
  }

  if (v32 == 0x7865646E69 && v33 == 0xE500000000000000)
  {

    v40 = v92;
  }

  else
  {
    v46 = sub_1B8A24954();

    v40 = v92;
    if ((v46 & 1) == 0)
    {
      (*(v95 + 8))(v16, v14);

      goto LABEL_10;
    }
  }

  v47 = HIBYTE(v40) & 0xF;
  result = v91;
  v48 = v91 & 0xFFFFFFFFFFFFLL;
  if ((v40 & 0x2000000000000000) != 0)
  {
    v49 = HIBYTE(v40) & 0xF;
  }

  else
  {
    v49 = v91 & 0xFFFFFFFFFFFFLL;
  }

  v50 = v93;
  if (!v49)
  {

    goto LABEL_116;
  }

  if ((v40 & 0x1000000000000000) == 0)
  {
    if ((v40 & 0x2000000000000000) != 0)
    {
      v97[0] = v91;
      v97[1] = v40 & 0xFFFFFFFFFFFFFFLL;
      if (v91 == 43)
      {
        if (v47)
        {
          if (--v47)
          {
            v52 = 0;
            v67 = v97 + 1;
            while (1)
            {
              v68 = *v67 - 48;
              if (v68 > 9)
              {
                break;
              }

              v69 = 10 * v52;
              if ((v52 * 10) >> 64 != (10 * v52) >> 63)
              {
                break;
              }

              v52 = v69 + v68;
              if (__OFADD__(v69, v68))
              {
                break;
              }

              ++v67;
              if (!--v47)
              {
                goto LABEL_115;
              }
            }
          }

          goto LABEL_114;
        }

LABEL_141:
        __break(1u);
        goto LABEL_142;
      }

      if (v91 != 45)
      {
        if (v47)
        {
          v52 = 0;
          v72 = v97;
          while (1)
          {
            v73 = *v72 - 48;
            if (v73 > 9)
            {
              break;
            }

            v74 = 10 * v52;
            if ((v52 * 10) >> 64 != (10 * v52) >> 63)
            {
              break;
            }

            v52 = v74 + v73;
            if (__OFADD__(v74, v73))
            {
              break;
            }

            ++v72;
            if (!--v47)
            {
              goto LABEL_115;
            }
          }
        }

        goto LABEL_114;
      }

      if (v47)
      {
        if (--v47)
        {
          v52 = 0;
          v56 = v97 + 1;
          while (1)
          {
            v57 = *v56 - 48;
            if (v57 > 9)
            {
              break;
            }

            v58 = 10 * v52;
            if ((v52 * 10) >> 64 != (10 * v52) >> 63)
            {
              break;
            }

            v52 = v58 - v57;
            if (__OFSUB__(v58, v57))
            {
              break;
            }

            ++v56;
            if (!--v47)
            {
              goto LABEL_115;
            }
          }
        }

        goto LABEL_114;
      }
    }

    else
    {
      if ((v91 & 0x1000000000000000) != 0)
      {
        result = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_1B8A246A4();
      }

      v51 = *result;
      if (v51 == 43)
      {
        if (v48 >= 1)
        {
          v47 = v48 - 1;
          if (v48 != 1)
          {
            v52 = 0;
            if (result)
            {
              v64 = result + 1;
              while (1)
              {
                v65 = *v64 - 48;
                if (v65 > 9)
                {
                  goto LABEL_114;
                }

                v66 = 10 * v52;
                if ((v52 * 10) >> 64 != (10 * v52) >> 63)
                {
                  goto LABEL_114;
                }

                v52 = v66 + v65;
                if (__OFADD__(v66, v65))
                {
                  goto LABEL_114;
                }

                ++v64;
                if (!--v47)
                {
                  goto LABEL_115;
                }
              }
            }

            goto LABEL_106;
          }

          goto LABEL_114;
        }

        goto LABEL_140;
      }

      if (v51 != 45)
      {
        if (v48)
        {
          v52 = 0;
          if (result)
          {
            while (1)
            {
              v70 = *result - 48;
              if (v70 > 9)
              {
                goto LABEL_114;
              }

              v71 = 10 * v52;
              if ((v52 * 10) >> 64 != (10 * v52) >> 63)
              {
                goto LABEL_114;
              }

              v52 = v71 + v70;
              if (__OFADD__(v71, v70))
              {
                goto LABEL_114;
              }

              ++result;
              if (!--v48)
              {
                goto LABEL_106;
              }
            }
          }

          goto LABEL_106;
        }

LABEL_114:
        v52 = 0;
        LOBYTE(v47) = 1;
LABEL_115:
        v98 = v47;
        v75 = v47;

        if (v75)
        {
LABEL_116:

          (*(v95 + 8))(v16, v14);
          goto LABEL_10;
        }

        goto LABEL_129;
      }

      if (v48 >= 1)
      {
        v47 = v48 - 1;
        if (v48 != 1)
        {
          v52 = 0;
          if (result)
          {
            v53 = result + 1;
            while (1)
            {
              v54 = *v53 - 48;
              if (v54 > 9)
              {
                goto LABEL_114;
              }

              v55 = 10 * v52;
              if ((v52 * 10) >> 64 != (10 * v52) >> 63)
              {
                goto LABEL_114;
              }

              v52 = v55 - v54;
              if (__OFSUB__(v55, v54))
              {
                goto LABEL_114;
              }

              ++v53;
              if (!--v47)
              {
                goto LABEL_115;
              }
            }
          }

LABEL_106:
          LOBYTE(v47) = 0;
          goto LABEL_115;
        }

        goto LABEL_114;
      }

      __break(1u);
    }

    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  v52 = sub_1B8A03EA4(v91, v40, 10);
  v88 = v87;

  if (v88)
  {
    goto LABEL_116;
  }

LABEL_129:
  if (v94 & 1) != 0 || (sub_1B8A24954())
  {
    (*(v95 + 8))(v16, v14);

    *v36 = v52;
    *(v36 + 8) = 1;
    goto LABEL_10;
  }

  if (v90 == 0x746E65636572 && v50 == 0xE600000000000000)
  {

    (*(v95 + 8))(v16, v14);
LABEL_136:
    *v36 = v52;
    *(v36 + 8) = 0;
    goto LABEL_10;
  }

  v89 = sub_1B8A24954();

  result = (*(v95 + 8))(v16, v14);
  if (v89)
  {
    goto LABEL_136;
  }

LABEL_142:
  __break(1u);
  return result;
}

unint64_t sub_1B8A01448(uint64_t a1)
{
  v1 = sub_1B8A238A4();
  MEMORY[0x1B8CC3E20](v1);

  return 0xD00000000000001BLL;
}

unint64_t sub_1B8A014B0()
{
  sub_1B8A24634();

  v0 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v0);

  return 0xD000000000000016;
}

uint64_t sub_1B8A01544(uint64_t a1, uint64_t a2)
{
  sub_1B8A24634();
  MEMORY[0x1B8CC3E20](0xD00000000000001CLL, 0x80000001B8A2B190);
  sub_1B8A23EA4();
  return 0;
}

unint64_t sub_1B8A015D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A24634();

  MEMORY[0x1B8CC3E20](a1, a2);
  MEMORY[0x1B8CC3E20](47, 0xE100000000000000);
  MEMORY[0x1B8CC3E20](a3, a4);
  return 0xD000000000000012;
}

id Sticker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1B8A01720(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x6E65736572706572;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6E756F4365747962;
      break;
    case 5:
      result = 1701667182;
      break;
    case 6:
      result = 0x6554686372616573;
      break;
    case 7:
      result = 0x657A6974696E6173;
      break;
    case 8:
      result = 0x6574746972776572;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 10:
      result = 0x746365666665;
      break;
    case 11:
      result = 0x617461646174656DLL;
      break;
    case 12:
      result = 0x6C616E7265747865;
      break;
    case 13:
      result = 0x7475626972747461;
      break;
    case 14:
      result = 0x6E6F697461657263;
      break;
    case 15:
      result = 0x646573557473616CLL;
      break;
    case 16:
      result = 0x497972617262696CLL;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B8A01974@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8A071D4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8A019A8(uint64_t a1)
{
  v2 = sub_1B8A059B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A019E4(uint64_t a1)
{
  v2 = sub_1B8A059B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id Sticker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Sticker(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B8A01B98(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F88, &qword_1B8A284C0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v25 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8A059B8();
  sub_1B8A24A64();
  v45 = *(v2 + OBJC_IVAR___STKSticker_type);
  LOBYTE(v44[0]) = 0;
  sub_1B89AA61C();
  v11 = v46;
  sub_1B8A248F4();
  if (v11)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v46 = v8;
  v27 = v6;
  v45 = 1;
  v13 = sub_1B8A23904();
  sub_1B8A05C8C(&unk_1EBA91650, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1B8A248F4();
  v14 = OBJC_IVAR___STKSticker_representations;
  swift_beginAccess();
  v44[0] = *(v2 + v14);
  v43 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B08, &qword_1B8A267C0);
  sub_1B8A05A60(&unk_1EBA914B0, &unk_1EBA91518, &protocol conformance descriptor for Sticker.Representation, MEMORY[0x1E69E6300]);
  sub_1B8A248F4();
  v25[1] = v13;
  v26 = v2;
  swift_beginAccess();
  v15 = v10;
  v43 = 3;

  sub_1B8A24884();

  swift_beginAccess();
  v42 = 4;
  sub_1B8A248E4();
  swift_beginAccess();
  v41 = 5;

  sub_1B8A248B4();

  swift_beginAccess();
  v40 = 6;

  sub_1B8A24884();

  swift_beginAccess();
  v39 = 7;

  sub_1B8A24884();

  swift_beginAccess();
  v38 = 8;

  sub_1B8A24884();

  swift_beginAccess();
  v37 = 9;

  sub_1B8A24884();

  v16 = OBJC_IVAR___STKSticker_effect;
  v17 = v26;
  swift_beginAccess();
  v36 = *(v17 + v16);
  LOBYTE(v34) = 10;
  sub_1B8A05A0C();
  sub_1B8A248F4();
  v18 = (v26 + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v19 = v18[1];
  v34 = *v18;
  v35 = v19;
  v33 = 11;
  sub_1B89C3C44(v34, v19);
  sub_1B89CDFE4();
  sub_1B8A248A4();
  sub_1B89B4A04(v34, v35);
  swift_beginAccess();
  v33 = 12;

  sub_1B8A24884();

  v20 = OBJC_IVAR___STKSticker_attributionInfo;
  v21 = v26;
  swift_beginAccess();
  v32 = *(v21 + v20);
  v31 = 13;
  type metadata accessor for Sticker.AttributionInfo();
  sub_1B8A05C8C(&qword_1EBA91510, type metadata accessor for Sticker.AttributionInfo, &protocol conformance descriptor for Sticker.AttributionInfo);
  sub_1B8A248A4();
  swift_beginAccess();
  v31 = 14;
  sub_1B8A248D4();
  swift_beginAccess();
  v30 = 15;
  sub_1B8A248D4();
  swift_beginAccess();
  v29 = 16;
  sub_1B8A248D4();
  v22 = OBJC_IVAR___STKSticker__companionRecentUUID;
  v23 = v26;
  swift_beginAccess();
  v24 = v27;
  sub_1B89AF268(v23 + v22, v27, &unk_1EBA92220, &unk_1B8A281A0);
  v28 = 17;
  sub_1B8A248A4();
  sub_1B89A8A78(v24, &unk_1EBA92220, &unk_1B8A281A0);
  v28 = 18;
  sub_1B8A24894();
  return (*(v46 + 8))(v15, v7);
}

void *Sticker.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v73 = v70 - v4;
  v5 = sub_1B8A23904();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F98, &qword_1B8A284C8);
  v74 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v10 = v70 - v9;
  v11 = &v1[OBJC_IVAR___STKSticker_accessibilityName];
  *v11 = 0;
  v11[1] = 0;
  v99 = v11;
  v12 = &v1[OBJC_IVAR___STKSticker_searchText];
  *v12 = 0;
  v12[1] = 0;
  v85 = v12;
  v13 = &v1[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v13 = 0;
  v13[1] = 0;
  v87 = v13;
  v14 = &v1[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v14 = 0;
  v14[1] = 0;
  v84 = v14;
  v15 = &v1[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v15 = 0;
  v15[1] = 0;
  v83 = v15;
  v82 = &v1[OBJC_IVAR___STKSticker_metadata];
  *&v1[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v16 = &v1[OBJC_IVAR___STKSticker_externalURI];
  *v16 = 0;
  v16[1] = 0;
  v81 = v16;
  v80 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v1[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  v17 = *(v6 + 56);
  v79 = OBJC_IVAR___STKSticker__companionRecentUUID;
  v17(&v1[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v5);
  v18 = OBJC_IVAR___STKSticker_animatedVariantIsPreferred;
  v86 = v1;
  v1[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  v19 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v19);
  sub_1B8A059B8();
  v75 = v10;
  v20 = v77;
  sub_1B8A24A54();
  if (v20)
  {
    v22 = v86;
    __swift_destroy_boxed_opaque_existential_0(v78);

    sub_1B89B4A04(*v82, *(v82 + 1));

    sub_1B89A8A78(&v22[v79], &unk_1EBA92220, &unk_1B8A281A0);
    type metadata accessor for Sticker(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v71 = v18;
    v21 = v74;
    v72 = v6;
    v77 = v5;
    v97[0] = 0;
    sub_1B89ADD08();
    sub_1B8A24854();
    v24 = v86;
    v86[OBJC_IVAR___STKSticker_type] = v98;
    LOBYTE(v98) = 1;
    v25 = sub_1B8A05C8C(&qword_1ED82DE80, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v26 = v77;
    sub_1B8A24854();
    v27 = v85;
    v70[2] = v25;
    (*(v72 + 32))(&v24[OBJC_IVAR___STKSticker_identifier], v8, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA91B08, &qword_1B8A267C0);
    v97[0] = 2;
    sub_1B8A05A60(&qword_1ED82DBD0, &qword_1ED82DC38, &protocol conformance descriptor for Sticker.Representation, MEMORY[0x1E69E6330]);
    sub_1B8A24854();
    *&v24[OBJC_IVAR___STKSticker_representations] = v98;
    LOBYTE(v98) = 3;
    v70[1] = 0;
    v28 = sub_1B8A247C4();
    v30 = v29;
    v31 = v99;
    swift_beginAccess();
    *v31 = v28;
    v31[1] = v30;

    v97[0] = 4;
    *&v24[OBJC_IVAR___STKSticker_byteCount] = sub_1B8A24844();
    v97[0] = 5;
    v32 = sub_1B8A24814();
    v33 = &v24[OBJC_IVAR___STKSticker_name];
    *v33 = v32;
    v33[1] = v34;
    v97[0] = 6;
    v35 = sub_1B8A247C4();
    v37 = v36;
    swift_beginAccess();
    *v27 = v35;
    v27[1] = v37;

    v96[0] = 7;
    v70[0] = sub_1B8A247C4();
    v39 = v38;
    v40 = v87;
    swift_beginAccess();
    *v40 = v70[0];
    v40[1] = v39;

    v95[0] = 8;
    v41 = sub_1B8A247C4();
    v43 = v42;
    v44 = v84;
    swift_beginAccess();
    *v44 = v41;
    v44[1] = v43;

    v94[0] = 9;
    v45 = sub_1B8A247C4();
    v47 = v46;
    v48 = v83;
    swift_beginAccess();
    *v48 = v45;
    v48[1] = v47;

    LOBYTE(v91) = 10;
    sub_1B8A05AFC();
    sub_1B8A24854();
    *&v86[OBJC_IVAR___STKSticker_effect] = v93;
    LOBYTE(v93) = 11;
    sub_1B89ADF2C();
    sub_1B8A247F4();
    v49 = v91;
    v50 = v92;
    v51 = v82;
    swift_beginAccess();
    v52 = *v51;
    v53 = v51[1];
    *v51 = v49;
    v51[1] = v50;
    sub_1B89B4A04(v52, v53);
    LOBYTE(v91) = 12;
    v54 = sub_1B8A247C4();
    v56 = v55;
    v57 = v81;
    swift_beginAccess();
    *v57 = v54;
    v57[1] = v56;

    type metadata accessor for Sticker.AttributionInfo();
    v90 = 13;
    sub_1B8A05C8C(&qword_1ED82DC00, type metadata accessor for Sticker.AttributionInfo, &protocol conformance descriptor for Sticker.AttributionInfo);
    sub_1B8A247F4();
    v58 = v89[0];
    v59 = v80;
    v60 = v86;
    swift_beginAccess();
    v61 = *&v60[v59];
    *&v60[v59] = v58;

    LOBYTE(v89[0]) = 14;
    sub_1B8A24834();
    *&v86[OBJC_IVAR___STKSticker_creationDate] = v62;
    LOBYTE(v89[0]) = 15;
    sub_1B8A24834();
    *&v86[OBJC_IVAR___STKSticker_lastUsedDate] = v63;
    LOBYTE(v89[0]) = 16;
    sub_1B8A24834();
    *&v86[OBJC_IVAR___STKSticker_libraryIndex] = v64;
    LOBYTE(v89[0]) = 17;
    sub_1B8A247F4();
    v65 = v79;
    v66 = v86;
    swift_beginAccess();
    sub_1B89DD9E4(v73, &v66[v65]);
    swift_endAccess();
    LOBYTE(v89[0]) = 18;
    v67 = sub_1B8A247D4();
    v68 = v86;
    v86[v71] = v67;
    v69 = type metadata accessor for Sticker(0);
    v88.receiver = v68;
    v88.super_class = v69;
    v8 = objc_msgSendSuper2(&v88, sel_init);
    (*(v21 + 8))(v75, v76);
    __swift_destroy_boxed_opaque_existential_0(v78);
  }

  return v8;
}

void *sub_1B8A03384@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for Sticker(0));
  result = Sticker.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B8A03400@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR___STKSticker_identifier;
  v5 = sub_1B8A23904();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t StickerError.hashValue.getter()
{
  sub_1B8A24A14();
  MEMORY[0x1B8CC48A0](0);
  return sub_1B8A24A34();
}

uint64_t sub_1B8A03528@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_1B8A23594();
    if (v10)
    {
      v11 = sub_1B8A235B4();
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
      result = sub_1B8A235A4();
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
  v10 = sub_1B8A23594();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B8A235B4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B8A235A4();
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

uint64_t sub_1B8A03758(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
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
    v10 = sub_1B8A048A4(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B89AFC38(a3, a4);
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
  sub_1B8A03528(v13, a3, a4, &v12);
  v10 = v4;
  sub_1B89AFC38(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

char *sub_1B8A038E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8A039B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B8A03908(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8A03BC0(a1, a2, a3, *v3, &qword_1EBA92050, ".p", MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

char *sub_1B8A0394C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8A03ABC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B8A0396C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B8A03BC0(a1, a2, a3, *v3, &qword_1EBA91C00, &qword_1B8A271C0, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

char *sub_1B8A039B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F30, &qword_1B8A26600);
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

char *sub_1B8A03ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92070, &qword_1B8A27038);
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

void *sub_1B8A03BC0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void (*sub_1B8A03D9C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CC44E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B8A07848;
  }

  __break(1u);
  return result;
}

void (*sub_1B8A03E1C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CC44E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B8A03E9C;
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_1B8A03EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_1B8A24034();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1B8A04430(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B8A246A4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
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

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1B8A04430(uint64_t a1, unint64_t a2)
{
  v2 = sub_1B8A24044();
  v6 = sub_1B8A044B0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1B8A044B0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1B8A24454();
    if (!v9 || (v10 = v9, v11 = sub_1B89A9408(v9, 0), v12 = sub_1B8A04608(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1B8A23F84();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_1B8A23F84();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1B8A246A4();
LABEL_4:

  return sub_1B8A23F84();
}

unint64_t sub_1B8A04608(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_1B8A04828(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1B8A23FE4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_1B8A246A4();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_1B8A04828(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_1B8A23FC4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_1B8A04828(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1B8A23FF4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1B8CC3E50](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_1B8A048A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B8A23594();
  v11 = result;
  if (result)
  {
    result = sub_1B8A235B4();
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

  sub_1B8A235A4();
  sub_1B8A03528(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1B8A0495C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_1B89B4A18(a3, a4);
          return sub_1B8A03758(v13, a2, a3, a4) & 1;
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

uint64_t sub_1B8A04AC4(_BYTE *a1)
{
  if (*a1)
  {
    v1 = 1919251317;
  }

  else
  {
    v1 = 0x746E65636572;
  }

  if (*a1)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE600000000000000;
  }

  sub_1B8A24634();

  MEMORY[0x1B8CC3E20](v1, v2);

  MEMORY[0x1B8CC3E20](0x6669746E6564692FLL, 0xEC0000002F726569);
  sub_1B8A23904();
  sub_1B8A05C8C(&qword_1ED82DE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v3 = sub_1B8A24934();
  MEMORY[0x1B8CC3E20](v3);

  return 0x3A72656B63697473;
}

char *sub_1B8A04C00(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11)
{
  v12 = v11;
  v78 = a7;
  v75 = a6;
  v74 = a5;
  v72 = a4;
  v71 = a3;
  v16 = sub_1B8A23904();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = &v12[OBJC_IVAR___STKSticker_accessibilityName];
  *v20 = 0;
  v20[1] = 0;
  v77 = v20;
  v21 = &v12[OBJC_IVAR___STKSticker_searchText];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v12[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v12[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v12[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v24 = 0;
  v24[1] = 0;
  v25 = &v12[OBJC_IVAR___STKSticker_metadata];
  *&v12[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v26 = &v12[OBJC_IVAR___STKSticker_externalURI];
  *v26 = 0;
  v26[1] = 0;
  v73 = v26;
  v76 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v12[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  LODWORD(a1) = *a1;
  (*(v17 + 56))(&v12[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v16);
  v12[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  v70 = a1;
  v12[OBJC_IVAR___STKSticker_type] = a1;
  (*(v17 + 16))(&v12[OBJC_IVAR___STKSticker_identifier], v19, v16);
  *&v12[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v79 = a8;
    v28 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v82 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v67 = v19;
      v68 = v17;
      v69 = v16;
      v28 = v82;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v31 = MEMORY[0x1B8CC44E0](j, a2);
          v32 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v33 = *(v31 + v32);
          swift_unknownObjectRelease();
          v82 = v28;
          v35 = v28[2];
          v34 = v28[3];
          if (v35 >= v34 >> 1)
          {
            sub_1B8A0394C((v34 > 1), v35 + 1, 1);
            v28 = v82;
          }

          v28[2] = v35 + 1;
          v28[v35 + 4] = v33;
        }
      }

      else
      {
        v36 = 32;
        do
        {
          v37 = *(a2 + v36);
          v38 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v39 = *(v37 + v38);
          v82 = v28;
          v41 = v28[2];
          v40 = v28[3];
          if (v41 >= v40 >> 1)
          {
            sub_1B8A0394C((v40 > 1), v41 + 1, 1);
            v28 = v82;
          }

          v28[2] = v41 + 1;
          v28[v41 + 4] = v39;
          v36 += 8;
          --i;
        }

        while (i);
      }

      v16 = v69;
      v17 = v68;
      v19 = v67;
    }

    v42 = v28[2];
    if (!v42)
    {
      break;
    }

    a8 = 0;
    v43 = v28 + 4;
    while (1)
    {
      v44 = *v43++;
      v45 = __OFADD__(a8, v44);
      a8 += v44;
      if (v45)
      {
        break;
      }

      if (!--v42)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  a8 = 0;
LABEL_22:

  *&v12[OBJC_IVAR___STKSticker_byteCount] = a8;
  v46 = &v12[OBJC_IVAR___STKSticker_name];
  v47 = v72;
  *v46 = v71;
  v46[1] = v47;
  *&v12[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v48 = *v25;
  v49 = v25[1];
  v50 = v74;
  v51 = v75;
  *v25 = v74;
  v25[1] = v51;
  sub_1B89C3C44(v50, v51);
  sub_1B89B4A04(v48, v49);
  v53 = v78;
  v52 = v79;
  if (!v79)
  {
    v81[0] = v70;
    v53 = sub_1B8A04AC4(v81);
    v52 = v54;
  }

  v55 = v73;
  swift_beginAccess();
  *v55 = v53;
  v55[1] = v52;

  v56 = v77;
  swift_beginAccess();
  *v56 = a9;
  v56[1] = a10;

  v57 = v76;
  swift_beginAccess();
  v58 = *&v12[v57];
  *&v12[v57] = a11;
  v59 = a11;

  v60 = [objc_opt_self() currentEnvironment];
  v61 = [v60 timeProvider];

  [v61 timestamp];
  v63 = v62;
  swift_unknownObjectRelease();
  *&v12[OBJC_IVAR___STKSticker_creationDate] = v63;
  *&v12[OBJC_IVAR___STKSticker_lastUsedDate] = v63;
  *&v12[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v64 = type metadata accessor for Sticker(0);
  v80.receiver = v12;
  v80.super_class = v64;
  v65 = objc_msgSendSuper2(&v80, sel_init);
  sub_1B89FE9A8();

  (*(v17 + 8))(v19, v16);
  return v65;
}

unint64_t sub_1B8A051FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1B8A24634();

  MEMORY[0x1B8CC3E20](a1, a2);
  MEMORY[0x1B8CC3E20](47, 0xE100000000000000);
  MEMORY[0x1B8CC3E20](a3, a4);
  MEMORY[0x1B8CC3E20](47, 0xE100000000000000);
  MEMORY[0x1B8CC3E20](a5, a6);
  return 0xD000000000000017;
}

uint64_t sub_1B8A052DC(uint64_t result)
{
  if ((result + 1) >= 6)
  {
    return 0;
  }

  return result;
}

char *sub_1B8A052F4(unsigned __int8 *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v72 = a6;
  v71 = a5;
  v69 = a4;
  v68 = a3;
  v14 = sub_1B8A23904();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &v9[OBJC_IVAR___STKSticker_accessibilityName];
  *v18 = 0;
  v18[1] = 0;
  v74 = v18;
  v19 = &v9[OBJC_IVAR___STKSticker_searchText];
  *v19 = 0;
  v19[1] = 0;
  v20 = &v9[OBJC_IVAR___STKSticker_sanitizedPrompt];
  *v20 = 0;
  v20[1] = 0;
  v21 = &v9[OBJC_IVAR___STKSticker_rewrittenPrompt];
  *v21 = 0;
  v21[1] = 0;
  v22 = &v9[OBJC_IVAR___STKSticker_promptPrimaryLanguageIdentifier];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v9[OBJC_IVAR___STKSticker_metadata];
  *&v9[OBJC_IVAR___STKSticker_metadata] = xmmword_1B8A26F80;
  v24 = &v9[OBJC_IVAR___STKSticker_externalURI];
  *v24 = 0;
  v24[1] = 0;
  v70 = v24;
  v73 = OBJC_IVAR___STKSticker_attributionInfo;
  *&v9[OBJC_IVAR___STKSticker_attributionInfo] = 0;
  LODWORD(a1) = *a1;
  (*(v15 + 56))(&v9[OBJC_IVAR___STKSticker__companionRecentUUID], 1, 1, v14);
  v9[OBJC_IVAR___STKSticker_animatedVariantIsPreferred] = 2;
  sub_1B8A238F4();
  v67 = a1;
  v9[OBJC_IVAR___STKSticker_type] = a1;
  (*(v15 + 16))(&v9[OBJC_IVAR___STKSticker_identifier], v17, v14);
  *&v9[OBJC_IVAR___STKSticker_representations] = a2;
  if (a2 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1B8A24554())
  {
    v75 = a7;
    v26 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v78 = MEMORY[0x1E69E7CC0];

      result = sub_1B8A0394C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return result;
      }

      v63 = a8;
      v64 = v17;
      v65 = v15;
      v66 = v14;
      v26 = v78;
      if ((a2 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != i; ++j)
        {
          v29 = MEMORY[0x1B8CC44E0](j, a2);
          v30 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v31 = *(v29 + v30);
          swift_unknownObjectRelease();
          v78 = v26;
          v33 = v26[2];
          v32 = v26[3];
          if (v33 >= v32 >> 1)
          {
            sub_1B8A0394C((v32 > 1), v33 + 1, 1);
            v26 = v78;
          }

          v26[2] = v33 + 1;
          v26[v33 + 4] = v31;
        }
      }

      else
      {
        v34 = 32;
        do
        {
          v35 = *(a2 + v34);
          v36 = OBJC_IVAR___STKStickerRepresentation_byteCount;
          swift_beginAccess();
          v37 = *(v35 + v36);
          v78 = v26;
          v39 = v26[2];
          v38 = v26[3];
          if (v39 >= v38 >> 1)
          {
            sub_1B8A0394C((v38 > 1), v39 + 1, 1);
            v26 = v78;
          }

          v26[2] = v39 + 1;
          v26[v39 + 4] = v37;
          v34 += 8;
          --i;
        }

        while (i);
      }

      v14 = v66;
      v15 = v65;
      v17 = v64;
      a8 = v63;
    }

    v40 = v26[2];
    if (!v40)
    {
      break;
    }

    a7 = 0;
    v41 = v26 + 4;
    while (1)
    {
      v42 = *v41++;
      v43 = __OFADD__(a7, v42);
      a7 += v42;
      if (v43)
      {
        break;
      }

      if (!--v40)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  a7 = 0;
LABEL_22:

  *&v9[OBJC_IVAR___STKSticker_byteCount] = a7;
  v44 = &v9[OBJC_IVAR___STKSticker_name];
  v45 = v69;
  *v44 = v68;
  v44[1] = v45;
  *&v9[OBJC_IVAR___STKSticker_effect] = 0;
  swift_beginAccess();
  v46 = *v23;
  v47 = v23[1];
  v48 = v71;
  v49 = v72;
  *v23 = v71;
  v23[1] = v49;
  sub_1B89C3C44(v48, v49);
  sub_1B89B4A04(v46, v47);
  v50 = v75;
  if (!a8)
  {
    v77[0] = v67;
    v50 = sub_1B8A04AC4(v77);
    a8 = v51;
  }

  v52 = v70;
  swift_beginAccess();
  *v52 = v50;
  v52[1] = a8;

  v53 = v74;
  swift_beginAccess();
  *v53 = 0;
  v53[1] = 0;

  v54 = v73;
  swift_beginAccess();
  v55 = *&v9[v54];
  *&v9[v54] = 0;

  v56 = [objc_opt_self() currentEnvironment];
  v57 = [v56 timeProvider];

  [v57 timestamp];
  v59 = v58;
  swift_unknownObjectRelease();
  *&v9[OBJC_IVAR___STKSticker_creationDate] = v59;
  *&v9[OBJC_IVAR___STKSticker_lastUsedDate] = v59;
  *&v9[OBJC_IVAR___STKSticker_libraryIndex] = 0;
  v60 = type metadata accessor for Sticker(0);
  v76.receiver = v9;
  v76.super_class = v60;
  v61 = objc_msgSendSuper2(&v76, sel_init);
  sub_1B89FE9A8();

  (*(v15 + 8))(v17, v14);
  return v61;
}

unint64_t sub_1B8A05944()
{
  result = qword_1EBA91F60;
  if (!qword_1EBA91F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91F60);
  }

  return result;
}

unint64_t sub_1B8A059B8()
{
  result = qword_1ED82DC80;
  if (!qword_1ED82DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC80);
  }

  return result;
}

unint64_t sub_1B8A05A0C()
{
  result = qword_1EBA91500;
  if (!qword_1EBA91500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91500);
  }

  return result;
}

uint64_t sub_1B8A05A60(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA91B08, &qword_1B8A267C0);
    sub_1B8A05C8C(a2, type metadata accessor for Sticker.Representation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B8A05AFC()
{
  result = qword_1ED82DBE0;
  if (!qword_1ED82DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DBE0);
  }

  return result;
}

unint64_t sub_1B8A05B54()
{
  result = qword_1EBA91FA8;
  if (!qword_1EBA91FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91FA8);
  }

  return result;
}

unint64_t sub_1B8A05BF0()
{
  result = qword_1EBA91FC0;
  if (!qword_1EBA91FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91FC0);
  }

  return result;
}

uint64_t sub_1B8A05C8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B8A05CD8()
{
  result = qword_1EBA91FD0;
  if (!qword_1EBA91FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA91FD0);
  }

  return result;
}

uint64_t keypath_set_9Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t keypath_get_6Tm@<X0>(void *a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*a1 + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

double keypath_get_28Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_set_29Tm(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_1B8A05E80(uint64_t a1)
{
  sub_1B8A23904();
  if (v1 <= 0x3F)
  {
    sub_1B8A06D00(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of Sticker.__allocating_init(type:identifier:representations:name:effect:byteCount:metadata:externalURI:accessibilityName:attributionInfo:searchText:creationDate:lastUsedDate:libraryIndex:sanitizedPrompt:rewrittenPrompt:promptPrimaryLanguageIdentifier:prefersAnimation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v20 + 688);
  LOBYTE(a19) = a19 & 1;
  v23 = a8 & 1;

  return v22(a1, a2, a3, a4, a5, a6, a7, v23, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void sub_1B8A06D00(uint64_t a1)
{
  if (!qword_1ED82F440)
  {
    sub_1B8A23904();
    v1 = sub_1B8A24444();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED82F440);
    }
  }
}

void sub_1B8A06D68(uint64_t a1)
{
  sub_1B8A23904();
  if (v1 <= 0x3F)
  {
    sub_1B8A06E18();
    if (v2 <= 0x3F)
    {
      sub_1B8A06E78();
      if (v3 <= 0x3F)
      {
        sub_1B8A06ED8();
        if (v4 <= 0x3F)
        {
          sub_1B8A06F08();
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B8A06E18()
{
  if (!qword_1EBA91498)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBA91498);
    }
  }
}

void sub_1B8A06E78()
{
  if (!qword_1EBA914C0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBA914C0);
    }
  }
}

uint64_t sub_1B8A06ED8()
{
  result = qword_1EBA914D8;
  if (!qword_1EBA914D8)
  {
    result = MEMORY[0x1E69E5EE0];
    atomic_store(MEMORY[0x1E69E5EE0], &qword_1EBA914D8);
  }

  return result;
}

void sub_1B8A06F08()
{
  if (!qword_1EBA914D0)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EBA914D0);
    }
  }
}

uint64_t getEnumTagSinglePayload for Sticker.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Sticker.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8A070D0()
{
  result = qword_1EBA92040;
  if (!qword_1EBA92040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92040);
  }

  return result;
}

unint64_t sub_1B8A07128()
{
  result = qword_1ED82DC68;
  if (!qword_1ED82DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC68);
  }

  return result;
}

unint64_t sub_1B8A07180()
{
  result = qword_1ED82DC70;
  if (!qword_1ED82DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DC70);
  }

  return result;
}

uint64_t sub_1B8A071D4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B8A24954() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B8A24954() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65736572706572 && a2 == 0xEF736E6F69746174 || (sub_1B8A24954() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B8A2A430 == a2 || (sub_1B8A24954() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E756F4365747962 && a2 == 0xE900000000000074 || (sub_1B8A24954() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6554686372616573 && a2 == 0xEA00000000007478 || (sub_1B8A24954() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657A6974696E6173 && a2 == 0xEF74706D6F725064 || (sub_1B8A24954() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6574746972776572 && a2 == 0xEF74706D6F72506ELL || (sub_1B8A24954() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001B8A2B150 == a2 || (sub_1B8A24954() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x746365666665 && a2 == 0xE600000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000 || (sub_1B8A24954() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6C616E7265747865 && a2 == 0xEB00000000495255 || (sub_1B8A24954() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF6F666E496E6F69 || (sub_1B8A24954() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1B8A24954() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x646573557473616CLL && a2 == 0xEC00000065746144 || (sub_1B8A24954() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x497972617262696CLL && a2 == 0xEC0000007865646ELL || (sub_1B8A24954() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001B8A2B310 == a2 || (sub_1B8A24954() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B8A2B330 == a2)
  {

    return 18;
  }

  else
  {
    v6 = sub_1B8A24954();

    if (v6)
    {
      return 18;
    }

    else
    {
      return 19;
    }
  }
}

unint64_t sub_1B8A077F4()
{
  result = qword_1ED82DBF0;
  if (!qword_1ED82DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED82DBF0);
  }

  return result;
}

void sub_1B8A07858(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B89B7FFC(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B8A23904();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B8A238B4();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setIdentifier_];
}

void sub_1B8A07984(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 metadata];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B8A237C4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B8A079EC(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1B8A237A4();
  }

  v4 = v3;
  [v2 setMetadata_];
}

void sub_1B8A07A64(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_1B8A23F24();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

uint64_t sub_1B8A07AB8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ManagedSticker();
  result = sub_1B8A24644();
  *a2 = result;
  return result;
}

void keypath_set_14Tm(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_1B8A23EF4();
  [v6 *a5];
}

id sub_1B8A07C2C()
{
  v1 = *(v0 + 24);
  v4 = 0;
  v2 = *(v1 + 64);
  [v2 lock];
  sub_1B8A07F00(v1, &v4);
  result = [v2 unlock];
  if (v4)
  {
    [*(v1 + 32) postNotificationName:*(v1 + 16) object:swift_weakLoadStrong()];
  }

  return result;
}

id sub_1B8A07D10()
{
  v1 = *(v0 + 32);
  v7 = 0;
  v2 = *(v1 + 64);
  [v2 lock];
  sub_1B8A07F00(v1, &v7);
  [v2 unlock];
  if (v7)
  {
    [*(v1 + 32) postNotificationName:*(v1 + 16) object:swift_weakLoadStrong()];
  }

  v3 = *(v0 + 24);
  v6[0] = 0;
  v4 = *(v3 + 64);
  [v4 lock];
  sub_1B8A07F00(v3, v6);
  result = [v4 unlock];
  if (v6[0])
  {
    [*(v3 + 32) postNotificationName:*(v3 + 16) object:swift_weakLoadStrong()];
  }

  return result;
}

uint64_t sub_1B8A07E94()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1B8A07F00(uint64_t result, _BYTE *a2)
{
  if (*(result + 48))
  {
    *(result + 56) = 1;
  }

  else
  {
    v9[10] = v2;
    v9[11] = v3;
    *a2 = 1;
    v4 = *(result + 40);
    v5 = result;
    v6 = swift_allocObject();
    swift_weakInit();
    v9[4] = sub_1B8A088F8;
    v9[5] = v6;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1B89AEDDC;
    v9[3] = &block_descriptor_32;
    v7 = _Block_copy(v9);

    v8 = [v4 afterDelay:v7 performBlock:1.0];
    _Block_release(v7);
    *(v5 + 48) = v8;
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_1B8A08028()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v9 = 0;
  v4 = *(v0 + 64);
  [v4 lock];
  sub_1B8A081E4(v0, &v9);
  result = [v4 unlock];
  if (v9)
  {
    [*(v0 + 32) postNotificationName:*(v0 + 16) object:swift_weakLoadStrong()];

    if (*(v0 + 72) == 1)
    {
      v6 = sub_1B8A24184();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      v7 = swift_allocObject();
      v7[2] = 0;
      v7[3] = 0;
      v7[4] = v0;

      sub_1B8A201C0(0, 0, v3, &unk_1B8A28BA8, v7);

      return sub_1B8A08578(v3);
    }
  }

  return result;
}

uint64_t sub_1B8A081E4(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 56) == 1)
  {
    *(a1 + 56) = 0;
    *a2 = 1;
    v2 = *(a1 + 40);
    v4 = swift_allocObject();
    swift_weakInit();
    v8[4] = sub_1B8A085E0;
    v8[5] = v4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1B89AEDDC;
    v8[3] = &block_descriptor_2;
    v5 = _Block_copy(v8);

    v6 = [v2 afterDelay:v5 performBlock:1.0];
    _Block_release(v5);
    *(a1 + 48) = v6;
  }

  else
  {
    *(a1 + 48) = 0;
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1B8A08310(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B8A08028();
  }

  return result;
}

uint64_t sub_1B8A08388()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v2, v1, 0, 0, 1u);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B8A0841C()
{
  swift_weakDestroy();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B8A084C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B89BBE18;

  return sub_1B8A08368(a1, v4, v5, v6);
}

uint64_t sub_1B8A08578(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8A085FC(uint64_t a1)
{
  swift_weakInit();
  swift_weakAssign();
  v2 = qword_1ED82E4F8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED82E500;
  v4 = objc_opt_self();

  v5 = v3;
  v6 = [v4 currentEnvironment];
  v7 = [v6 notificationCenter];

  _s33CoalescingNotificationBroadcasterCMa();
  v8 = swift_allocObject();
  swift_weakInit();
  *(v8 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = [objc_allocWithZone(MEMORY[0x1E6996878]) init];
  *(v8 + 16) = v5;
  swift_weakAssign();
  *(v8 + 32) = v7;
  v9 = [v4 currentEnvironment];
  v10 = [v9 schedulerProvider];

  v11 = [v10 backgroundSchedulerWithQualityOfService_];

  swift_unknownObjectRelease();
  *(v8 + 40) = v11;
  *(v8 + 72) = 0;
  *(v1 + 24) = v8;
  if (qword_1EBA91580 != -1)
  {
    swift_once();
  }

  v12 = qword_1EBA91588;
  v13 = [v4 currentEnvironment];
  v14 = [v13 notificationCenter];

  v15 = swift_allocObject();
  swift_weakInit();
  *(v15 + 48) = 0;
  *(v15 + 56) = 0;
  *(v15 + 64) = [objc_allocWithZone(MEMORY[0x1E6996878]) init];
  *(v15 + 16) = v12;
  swift_weakAssign();

  *(v15 + 32) = v14;
  v16 = [v4 currentEnvironment];
  v17 = [v16 schedulerProvider];

  v18 = [v17 backgroundSchedulerWithQualityOfService_];
  swift_unknownObjectRelease();
  *(v15 + 40) = v18;
  *(v15 + 72) = 1;
  *(v1 + 32) = v15;
  return v1;
}

uint64_t sub_1B8A08900(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x696A6F6D656DLL;
  v6 = 0xE500000000000000;
  v7 = 0x696A6F6D65;
  if (a1 != 4)
  {
    v7 = 0x7261506472696874;
    v6 = 0xEA00000000007974;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x746E6F4372657375;
  v9 = 0xEB00000000746E65;
  if (a1 != 1)
  {
    v8 = 0x6472616F6279656BLL;
    v9 = 0xEE00746E65636552;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x746E65636572;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x696A6F6D656DLL)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE500000000000000;
      if (v10 != 0x696A6F6D65)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEA00000000007974;
      if (v10 != 0x7261506472696874)
      {
LABEL_34:
        v13 = sub_1B8A24954();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEB00000000746E65;
      if (v10 != 0x746E6F4372657375)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00746E65636552;
      if (v10 != 0x6472616F6279656BLL)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x746E65636572)
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

uint64_t sub_1B8A08B04(unsigned __int8 a1)
{
  sub_1B8A24A14();
  sub_1B8A23F94();

  return sub_1B8A24A34();
}

uint64_t sub_1B8A08C18(uint64_t a1, unsigned __int8 a2)
{
  sub_1B8A24A14();
  sub_1B8A23F94();

  return sub_1B8A24A34();
}

id static LaunchStateManagerAPI.xpcInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t sub_1B8A08D7C()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA95F90);
  __swift_project_value_buffer(v0, qword_1EBA95F90);
  return sub_1B8A23BB4();
}

id LaunchStateManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LaunchStateManager.init()()
{
  *&v0[OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LaunchStateManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1B8A08EE0()
{
  v1 = OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration;
  v2 = *(v0 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration);
  }

  else
  {
    v4 = sub_1B8A0A6C0(0xD000000000000028, 0x80000001B8A2B780);
    if (!v4)
    {
      v4 = [objc_allocWithZone(type metadata accessor for LaunchConfiguration()) init];
    }

    v3 = v4;
  }

  v5 = *(v0 + v1);
  *(v0 + v1) = v3;
  v6 = v2;
  v7 = v3;

  return v7;
}

void sub_1B8A08FA8()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1B8A23EF4();
  [v1 removeObjectForKey_];

  v3 = *(v0 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration);
  *(v0 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration) = 0;
}

void sub_1B8A0904C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1B8A23544();
  swift_allocObject();
  sub_1B8A23534();
  type metadata accessor for LaunchConfiguration();
  sub_1B8A0B370(&unk_1EBA92170, &protocol conformance descriptor for LaunchConfiguration);
  v6 = sub_1B8A23524();
  v8 = v7;

  if (!v4)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = sub_1B8A237A4();
    v11 = sub_1B8A23EF4();
    [v9 setObject:v10 forKey:v11];
    sub_1B89AFC38(v6, v8);

    v12 = *(v3 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration);
    *(v3 + OBJC_IVAR____TtC8Stickers18LaunchStateManager_cachedConfiguration) = a1;
    v13 = a1;
  }
}

Stickers::StickerSectionType_optional __swiftcall StickerSectionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B8A24794();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StickerSectionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E65636572;
  v3 = 0x696A6F6D656DLL;
  v4 = 0x696A6F6D65;
  if (v1 != 4)
  {
    v4 = 0x7261506472696874;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E6F4372657375;
  if (v1 != 1)
  {
    v5 = 0x6472616F6279656BLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B8A09314(uint64_t a1)
{
  sub_1B8A23F94();
}

void sub_1B8A09424(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x746E65636572;
  v5 = 0xE600000000000000;
  v6 = 0x696A6F6D656DLL;
  v7 = 0xE500000000000000;
  v8 = 0x696A6F6D65;
  if (v2 != 4)
  {
    v8 = 0x7261506472696874;
    v7 = 0xEA00000000007974;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB00000000746E65;
  v10 = 0x746E6F4372657375;
  if (v2 != 1)
  {
    v10 = 0x6472616F6279656BLL;
    v9 = 0xEE00746E65636552;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t LaunchConfiguration.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier);

  return v1;
}

char *LaunchConfiguration.init()()
{
  v0 = sub_1B8A23884();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for LaunchConfiguration();
  v5 = objc_allocWithZone(v4);
  v5[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType] = 0;
  v6 = &v5[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier];
  *v6 = 0;
  v6[1] = 0;
  v7 = [objc_opt_self() currentEnvironment];
  v8 = [v7 timeProvider];

  [v8 timestamp];
  v10 = v9;
  swift_unknownObjectRelease();
  *&v5[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate] = v10;
  v16.receiver = v5;
  v16.super_class = v4;
  v11 = objc_msgSendSuper2(&v16, sel_init);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  v12 = v11;
  sub_1B8A23814();
  sub_1B8A237F4();
  v14 = v13;

  (*(v1 + 8))(v3, v0);
  *&v12[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate] = v14;
  return v12;
}

id LaunchConfiguration.__allocating_init(sectionType:identifier:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v7[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType] = *a1;
  v8 = &v7[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier];
  *v8 = a2;
  v8[1] = a3;
  v9 = [objc_opt_self() currentEnvironment];
  v10 = [v9 timeProvider];

  [v10 timestamp];
  v12 = v11;
  swift_unknownObjectRelease();
  *&v7[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate] = v12;
  v14.receiver = v7;
  v14.super_class = v3;
  return objc_msgSendSuper2(&v14, sel_init);
}

id LaunchConfiguration.init(sectionType:identifier:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v3[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType] = *a1;
  v4 = &v3[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier];
  *v4 = a2;
  v4[1] = a3;
  v5 = [objc_opt_self() currentEnvironment];
  v6 = [v5 timeProvider];

  [v6 timestamp];
  v8 = v7;
  swift_unknownObjectRelease();
  *&v3[OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate] = v8;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for LaunchConfiguration();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t static LaunchConfiguration.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EBA920E0 = a1;
  return result;
}

id LaunchConfiguration.init(coder:)(void *a1)
{
  sub_1B8A0A9EC();
  v2 = sub_1B8A243B4();
  if (v2)
  {
    rawValue._countAndFlagsBits = 0;
    v3 = v2;
    sub_1B8A23F14();
  }

  type metadata accessor for LaunchConfiguration();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1B8A09DA4(void *a1)
{
  v3 = sub_1B8A23EF4();

  v4 = sub_1B8A23EF4();
  [a1 encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier + 8))
  {
    v5 = sub_1B8A23EF4();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1B8A23EF4();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();

  v7 = *(v1 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate);
  v8 = sub_1B8A23EF4();
  [a1 encodeDouble:v8 forKey:v7];
}

uint64_t sub_1B8A0A044()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461657263;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x546E6F6974636573;
  }
}

uint64_t sub_1B8A0A0B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8A0B18C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8A0A0E8(uint64_t a1)
{
  v2 = sub_1B8A0AA38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8A0A124(uint64_t a1)
{
  v2 = sub_1B8A0AA38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1B8A0A178(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B8A0A1C4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92110, &qword_1B8A28BB0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8A0AA38();
  sub_1B8A24A64();
  v10[15] = *(v3 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType);
  v10[14] = 0;
  sub_1B8A0AA8C();
  sub_1B8A248F4();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v10[13] = 1;
  sub_1B8A24884();
  v10[12] = 2;
  sub_1B8A248D4();
  return (*(v6 + 8))(v8, v5);
}

void *LaunchConfiguration.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92128, &qword_1B8A28BB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1B8A0AA38();
  sub_1B8A24A54();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    type metadata accessor for LaunchConfiguration();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    sub_1B8A0AAE0();
    sub_1B8A24854();
    *(v1 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_sectionType) = v17;
    v17 = 1;
    v9 = sub_1B8A247C4();
    v11 = (v1 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_identifier);
    *v11 = v9;
    v11[1] = v12;
    v17 = 2;
    sub_1B8A24834();
    *(v1 + OBJC_IVAR____TtC8Stickers19LaunchConfiguration_creationDate) = v13;
    v14 = type metadata accessor for LaunchConfiguration();
    v15.receiver = v1;
    v15.super_class = v14;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

void *sub_1B8A0A648@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for LaunchConfiguration());
  result = LaunchConfiguration.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B8A0A6C0(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1B8A23EF4();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1B8A244A4();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_1B8A23514();
      swift_allocObject();
      sub_1B8A23504();
      type metadata accessor for LaunchConfiguration();
      sub_1B8A0B370(qword_1EBA92180, &protocol conformance descriptor for LaunchConfiguration);
      sub_1B8A234F4();
      sub_1B89AFC38(v6, v7);

      return *&v10[0];
    }
  }

  else
  {
    sub_1B8A0B308(v10);
  }

  return 0;
}

unint64_t sub_1B8A0A9EC()
{
  result = qword_1EBA91F70;
  if (!qword_1EBA91F70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA91F70);
  }

  return result;
}

unint64_t sub_1B8A0AA38()
{
  result = qword_1EBA92118;
  if (!qword_1EBA92118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92118);
  }

  return result;
}

unint64_t sub_1B8A0AA8C()
{
  result = qword_1EBA92120;
  if (!qword_1EBA92120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92120);
  }

  return result;
}

unint64_t sub_1B8A0AAE0()
{
  result = qword_1EBA92130;
  if (!qword_1EBA92130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92130);
  }

  return result;
}

unint64_t sub_1B8A0AB38()
{
  result = qword_1EBA92138;
  if (!qword_1EBA92138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92138);
  }

  return result;
}

unint64_t sub_1B8A0AB90()
{
  result = qword_1EBA92140;
  if (!qword_1EBA92140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA92148, &qword_1B8A28CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92140);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StickerSectionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StickerSectionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LaunchConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LaunchConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B8A0B088()
{
  result = qword_1EBA92150;
  if (!qword_1EBA92150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92150);
  }

  return result;
}

unint64_t sub_1B8A0B0E0()
{
  result = qword_1EBA92158;
  if (!qword_1EBA92158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92158);
  }

  return result;
}

unint64_t sub_1B8A0B138()
{
  result = qword_1EBA92160;
  if (!qword_1EBA92160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92160);
  }

  return result;
}

uint64_t sub_1B8A0B18C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546E6F6974636573 && a2 == 0xEB00000000657079;
  if (v4 || (sub_1B8A24954() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B8A24954() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B8A24954();

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

unint64_t sub_1B8A0B2B4()
{
  result = qword_1EBA92168;
  if (!qword_1EBA92168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA92168);
  }

  return result;
}

uint64_t sub_1B8A0B308(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA91F50, &unk_1B8A26500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8A0B370(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LaunchConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B8A0B3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B89AF268(a3, v25 - v10, &qword_1EBA92200, &qword_1B8A28000);
  v12 = sub_1B8A24184();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B89A8A78(v11, &qword_1EBA92200, &qword_1B8A28000);
  }

  else
  {
    sub_1B8A24174();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B8A24154();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B8A23F64() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1B89A8A78(a3, &qword_1EBA92200, &qword_1B8A28000);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B89A8A78(a3, &qword_1EBA92200, &qword_1B8A28000);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1B8A0B704(uint64_t a1)
{
  v43 = sub_1B8A23784();
  v3 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1B8A24554();
  }

  else
  {
    v5 = *(a1 + 16);
  }

  if (v5)
  {
    v51 = MEMORY[0x1E69E7CC0];
    sub_1B8A038E8(0, v5 & ~(v5 >> 63), 0);
    v46 = v51;
    if (v44)
    {
      v6 = sub_1B8A24504();
    }

    else
    {
      v6 = sub_1B8A244D4();
      v7 = *(a1 + 36);
    }

    v48 = v6;
    v49 = v7;
    v50 = v44 != 0;
    if ((v5 & 0x8000000000000000) == 0)
    {
      v8 = 0;
      v40 = v5;
      v41 = (v3 + 8);
      v9 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v9 = a1;
      }

      v38 = a1 + 56;
      v39 = v9;
      v36 = v1;
      v37 = a1 + 64;
      while (v8 < v5)
      {
        if (__OFADD__(v8++, 1))
        {
          goto LABEL_37;
        }

        v12 = v48;
        v13 = v50;
        v45 = v49;
        v14 = a1;
        sub_1B8A0FD0C(v48, v49, v50, a1);
        v16 = v15;
        v17 = [v15 URIRepresentation];
        v18 = v42;
        sub_1B8A23724();

        v19 = sub_1B8A236A4();
        v21 = v20;
        (*v41)(v18, v43);

        v22 = v46;
        v51 = v46;
        v24 = *(v46 + 16);
        v23 = *(v46 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1B8A038E8((v23 > 1), v24 + 1, 1);
          v22 = v51;
        }

        *(v22 + 16) = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 32) = v19;
        *(v25 + 40) = v21;
        v46 = v22;
        if (v44)
        {
          if (!v13)
          {
            goto LABEL_42;
          }

          a1 = v14;
          if (sub_1B8A24524())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v5 = v40;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921C0, &unk_1B8A28FF0);
          v10 = sub_1B8A241E4();
          sub_1B8A245A4();
          v10(v47, 0);
          if (v8 == v5)
          {
LABEL_34:
            sub_1B8A10228(v48, v49, v50);
            return;
          }
        }

        else
        {
          if (v13)
          {
            goto LABEL_43;
          }

          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v14;
          v26 = 1 << *(v14 + 32);
          if (v12 >= v26)
          {
            goto LABEL_38;
          }

          v27 = v12 >> 6;
          v28 = *(v38 + 8 * (v12 >> 6));
          if (((v28 >> v12) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v14 + 36) != v45)
          {
            goto LABEL_40;
          }

          v29 = v28 & (-2 << (v12 & 0x3F));
          if (v29)
          {
            v26 = __clz(__rbit64(v29)) | v12 & 0x7FFFFFFFFFFFFFC0;
            v5 = v40;
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v37 + 8 * v27);
            v5 = v40;
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                sub_1B8A10228(v12, v45, 0);
                v26 = __clz(__rbit64(v33)) + v30;
                goto LABEL_33;
              }
            }

            sub_1B8A10228(v12, v45, 0);
          }

LABEL_33:
          v35 = *(v14 + 36);
          v48 = v26;
          v49 = v35;
          v50 = 0;
          if (v8 == v5)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }
}

uint64_t sub_1B8A0BB18()
{
  v0 = sub_1B8A23BC4();
  __swift_allocate_value_buffer(v0, qword_1EBA91220);
  __swift_project_value_buffer(v0, qword_1EBA91220);
  return sub_1B8A23BB4();
}

uint64_t sub_1B8A0BB98()
{
  v0 = sub_1B8A242B4();
  __swift_allocate_value_buffer(v0, qword_1EBA912A8);
  __swift_project_value_buffer(v0, qword_1EBA912A8);
  return sub_1B8A242A4();
}

char *sub_1B8A0BBE8(void *a1)
{
  v2 = v1;
  v4 = *v1;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92198, &qword_1B8A28FD8);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v2 + 3) = v5;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1B8A24554())
  {
    sub_1B8A0FF30(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CD0];
  }

  *(v2 + 4) = v6;
  *(v2 + 5) = 0;
  v7 = OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_activityDebouncer;
  v8 = type metadata accessor for ActivityDebouncer(0);
  (*(*(v8 - 8) + 56))(&v2[v7], 1, 1, v8);
  *&v2[OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_transaction] = 0;
  swift_unknownObjectWeakAssign();
  v9 = [objc_opt_self() defaultCenter];
  v10 = *MEMORY[0x1E695D390];
  v11 = [objc_opt_self() mainQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v4;
  v17[4] = sub_1B8A0D888;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1B8A0C648;
  v17[3] = &block_descriptor_3;
  v13 = _Block_copy(v17);

  v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();

  type metadata accessor for CloudKitImportIndexingDebouncer();
  swift_allocObject();

  v15 = sub_1B8A0CE78(sub_1B8A0D890, v2, 5000.0);

  *(v2 + 5) = v15;

  return v2;
}

void sub_1B8A0BEAC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B8A242B4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921D8, &qword_1B8A29000);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for ActivityDebouncer(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B8A23574();
  if (!v17)
  {
    return;
  }

  v18 = v17;
  v38 = sub_1B8A23F24();
  v39 = v19;
  sub_1B8A245D4();
  if (!*(v18 + 16) || (v20 = sub_1B8A0DFA8(aBlock), (v21 & 1) == 0))
  {

    sub_1B8A1029C(aBlock);
    return;
  }

  sub_1B89A9360(*(v18 + 56) + 32 * v20, v40);
  sub_1B8A1029C(aBlock);

  sub_1B89AB538(0, &qword_1EBA91110, 0x1E695D678);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v35 = OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_transaction;
  v36 = v38;
  if (!*(a2 + OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_transaction))
  {
    goto LABEL_8;
  }

  v22 = OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_activityDebouncer;
  swift_beginAccess();
  sub_1B89AF268(a2 + v22, v12, &unk_1EBA921D8, &qword_1B8A29000);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1B89A8A78(v12, &unk_1EBA921D8, &qword_1B8A29000);
LABEL_8:
    if (qword_1EBA91218 != -1)
    {
      swift_once();
    }

    v23 = sub_1B8A23BC4();
    __swift_project_value_buffer(v23, qword_1EBA91220);
    v24 = sub_1B8A23BA4();
    v25 = sub_1B8A24214();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B89A7000, v24, v25, "Received CloudKit change notification. Opening transaction", v26, 2u);
      MEMORY[0x1B8CC5170](v26, -1, -1);
    }

    *(a2 + v35) = os_transaction_create();
    swift_unknownObjectRelease();
    if (qword_1EBA912A0 != -1)
    {
      swift_once();
    }

    v27 = __swift_project_value_buffer(v3, qword_1EBA912A8);
    (*(v4 + 16))(v6, v27, v3);
    v28 = swift_allocObject();
    swift_weakInit();
    sub_1B8A205A4(v6, &unk_1B8A29010, v28, v10);
    (*(v14 + 56))(v10, 0, 1, v13);
    v29 = OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_activityDebouncer;
    swift_beginAccess();
    sub_1B8A10380(v10, a2 + v29);
    swift_endAccess();
    goto LABEL_18;
  }

  sub_1B8A1041C(v12, v16);
  sub_1B8A20470();
  sub_1B8A10480(v16);
LABEL_18:
  v30 = v36;
  if ([v36 type] != 1)
  {
    goto LABEL_22;
  }

  v31 = *(a2 + 40);
  if (!v31)
  {
    goto LABEL_22;
  }

  v32 = *(v31 + 16);
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B8A103F0;
  *(v33 + 24) = v31;
  aBlock[4] = sub_1B8A103F4;
  aBlock[5] = v33;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B8A0B6DC;
  aBlock[3] = &block_descriptor_49;
  v34 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v32, v34);
  _Block_release(v34);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
LABEL_22:
  }
}

uint64_t sub_1B8A0C4F0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_transaction) = 0;
    swift_unknownObjectRelease();
    if (qword_1EBA91218 != -1)
    {
      swift_once();
    }

    v2 = sub_1B8A23BC4();
    __swift_project_value_buffer(v2, qword_1EBA91220);
    v3 = sub_1B8A23BA4();
    v4 = sub_1B8A24214();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1B89A7000, v3, v4, "Did remove indexing responder transaction", v5, 2u);
      MEMORY[0x1B8CC5170](v5, -1, -1);
    }
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B8A0C648(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B8A23584();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_1B8A23554();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_1B8A0C73C(uint64_t a1)
{
  if (qword_1EBA91218 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8A23BC4();
  __swift_project_value_buffer(v2, qword_1EBA91220);
  v3 = sub_1B8A23BA4();
  v4 = sub_1B8A24214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B89A7000, v3, v4, "CloudKit imports have stabilized", v5, 2u);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = *(a1 + 24);

  os_unfair_lock_lock(v6 + 4);

  swift_beginAccess();

  v8 = sub_1B8A0DDE8(v7);

  v9 = *(a1 + 24);

  os_unfair_lock_unlock(v9 + 4);

  if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
  {
    v10 = sub_1B8A24554();
  }

  else
  {
    v10 = *(v8 + 16);
  }

  if (v10 >= 1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = *(a1 + 24);

      os_unfair_lock_lock(v13 + 4);

      sub_1B8A0B704(v14);

      v15 = *(a1 + 24);

      os_unfair_lock_unlock(v15 + 4);

      v16 = [objc_opt_self() defaultSearchableIndex];
      v17 = sub_1B8A240E4();

      v19[4] = sub_1B8A10220;
      v19[5] = a1;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 1107296256;
      v19[2] = sub_1B89AEDDC;
      v19[3] = &block_descriptor_39;
      v18 = _Block_copy(v19);

      [v12 searchableIndex:v16 reindexSearchableItemsWithIdentifiers:v17 acknowledgementHandler:v18];
      _Block_release(v18);
    }
  }
}

uint64_t sub_1B8A0CA0C(uint64_t a1)
{
  if (qword_1EBA91218 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8A23BC4();
  __swift_project_value_buffer(v2, qword_1EBA91220);
  v3 = sub_1B8A23BA4();
  v4 = sub_1B8A24244();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1B89A7000, v3, v4, "Deferred reindexing complete", v5, 2u);
    MEMORY[0x1B8CC5170](v5, -1, -1);
  }

  v6 = *(a1 + 24);

  os_unfair_lock_lock(v6 + 4);

  swift_beginAccess();
  *(a1 + 32) = MEMORY[0x1E69E7CD0];

  v7 = *(a1 + 24);

  os_unfair_lock_unlock(v7 + 4);
}

void *sub_1B8A0CB50()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  MEMORY[0x1B8CC5240](v0 + 16);

  sub_1B89A8A78(v0 + OBJC_IVAR____TtC8Stickers30SpotlightFailedIndexingManager_activityDebouncer, &unk_1EBA921D8, &qword_1B8A29000);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1B8A0CBF8()
{
  sub_1B8A0CB50();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SpotlightFailedIndexingManager(uint64_t a1)
{
  result = qword_1EBA91288;
  if (!qword_1EBA91288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B8A0CCA4(uint64_t a1)
{
  sub_1B8A0CE20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1B8A0CD64(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 24);

  os_unfair_lock_lock(v4 + 4);

  v5 = [a1 objectID];
  swift_beginAccess();
  sub_1B8A0E214(&v8, v5);
  swift_endAccess();

  v6 = *(v2 + 24);

  os_unfair_lock_unlock(v6 + 4);
}

void sub_1B8A0CE20(uint64_t a1)
{
  if (!qword_1EBA91358)
  {
    type metadata accessor for ActivityDebouncer(255);
    v1 = sub_1B8A24444();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBA91358);
    }
  }
}

uint64_t sub_1B8A0CE78(uint64_t a1, uint64_t a2, double a3)
{
  v15 = a1;
  v16 = a2;
  v14 = sub_1B8A242C4();
  v5 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B8A24284();
  MEMORY[0x1EEE9AC00](v8);
  v9 = sub_1B8A23D24();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1B89AB538(0, &qword_1EBA91140, 0x1E69E9610);
  v13[0] = "v16@?0@NSNotification8";
  v13[1] = v10;
  sub_1B8A23D14();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1B8A10538(&qword_1EBA91158, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921B0, &qword_1B8A29980);
  sub_1B8A10588(&qword_1EBA91198, &unk_1EBA921B0, &qword_1B8A29980);
  sub_1B8A244C4();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8090], v14);
  *(v3 + 16) = sub_1B8A242E4();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = a3;
  v11 = v16;
  *(v3 + 48) = v15;
  *(v3 + 56) = v11;
  return v3;
}

uint64_t sub_1B8A0D0FC()
{
  if (*(v0 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B8A24324();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  sub_1B8A10800(*(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1B8A0D1A8()
{
  v1 = sub_1B8A23CF4();
  v46 = *(v1 - 8);
  v47 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v44 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1B8A23D24();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B8A23CD4();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v39 = (&v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v35 - v7);
  v51 = sub_1B8A23D44();
  v38 = *(v51 - 8);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v48 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v35 - v11;
  v12 = sub_1B8A242F4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 24))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B8A24324();
    swift_unknownObjectRelease();
  }

  *(v0 + 24) = 0;
  swift_unknownObjectRelease();
  *(v0 + 32) = 0;
  v50 = sub_1B89AB538(0, &qword_1EBA91128, 0x1E69E9630);
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1B8A10538(&unk_1EBA91130, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v16 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921E8, &qword_1B8A29018);
  sub_1B8A10588(&qword_1EBA91190, &qword_1EBA921E8, &qword_1B8A29018);
  sub_1B8A244C4();
  v17 = sub_1B8A24304();
  (*(v13 + 8))(v15, v12);
  ObjectType = swift_getObjectType();
  v19 = v48;
  result = sub_1B8A23D34();
  v21 = *(v16 + 40);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v21 < 9.22337204e18)
  {
    *v8 = v21;
    v22 = *MEMORY[0x1E69E7F38];
    v36 = v16;
    v24 = v40;
    v23 = v41;
    v49 = ObjectType;
    v50 = v17;
    v25 = *(v40 + 104);
    v25(v8, v22, v41);
    v26 = v37;
    MEMORY[0x1B8CC3C00](v19, v8);
    v27 = *(v24 + 8);
    v27(v8, v23);
    v40 = *(v38 + 8);
    (v40)(v19, v51);
    v25(v8, *MEMORY[0x1E69E7F40], v23);
    v28 = v39;
    *v39 = 0;
    v25(v28, *MEMORY[0x1E69E7F28], v23);
    MEMORY[0x1B8CC4210](v26, v8, v28, v49);
    v27(v28, v23);
    v27(v8, v23);
    (v40)(v26, v51);
    v29 = swift_allocObject();
    v30 = v36;
    swift_weakInit();
    aBlock[4] = sub_1B8A10580;
    aBlock[5] = v29;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B89AEDDC;
    aBlock[3] = &block_descriptor_55;
    v31 = _Block_copy(aBlock);

    v32 = v42;
    sub_1B8A23D14();
    v33 = v44;
    sub_1B8A0DA1C();
    v34 = v50;
    sub_1B8A24314();
    _Block_release(v31);
    (*(v46 + 8))(v33, v47);
    (*(v43 + 8))(v32, v45);

    sub_1B8A24334();
    *(v30 + 24) = v34;
    result = swift_unknownObjectRelease();
    *(v30 + 32) = 1;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1B8A0D898(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92200, &qword_1B8A28000);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 32) == 1)
    {
      *(result + 32) = 0;
      if (*(result + 24))
      {
        v5 = result;
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_1B8A24324();
        swift_unknownObjectRelease();
        result = v5;
      }

      *(result + 24) = 0;
      v6 = result;
      swift_unknownObjectRelease();
      v7 = sub_1B8A24184();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v6;
      sub_1B8A0B3B4(0, 0, v3, &unk_1B8A29028, v8);
    }
  }

  return result;
}

uint64_t sub_1B8A0DA1C()
{
  sub_1B8A23CF4();
  sub_1B8A10538(&qword_1EBA91418, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921F0, &qword_1B8A26460);
  sub_1B8A10588(&qword_1EBA911A8, &unk_1EBA921F0, &qword_1B8A26460);
  return sub_1B8A244C4();
}

uint64_t sub_1B8A0DB14()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 48);
  if (v2)
  {
    v3 = *(v1 + 56);

    v2(v4);
    sub_1B8A10800(v2, v3);
  }

  v5 = *(v0 + 8);

  return v5();
}

void *sub_1B8A0DB98(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
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

void sub_1B8A0DC20(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for Sticker(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1B8A0DD04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        type metadata accessor for Sticker.Representation(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA921D0, &unk_1B8A281C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_1B8A0DDE8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1B8A24554();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1B8A0DB98(v2, 0);

    v1 = sub_1B8A0FAF0(&v5, v3 + 4, v2, v1);
    sub_1B89F678C(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

unint64_t sub_1B8A0DE98(uint64_t a1, uint64_t a2)
{
  sub_1B8A24A14();
  sub_1B8A23F94();
  v4 = sub_1B8A24A34();

  return sub_1B8A0EE70(a1, a2, v4);
}

unint64_t sub_1B8A0DF10(uint64_t a1)
{
  sub_1B8A23904();
  sub_1B8A10538(&qword_1EBA91460, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1B8A23E94();

  return sub_1B8A0EF28(a1, v2);
}

unint64_t sub_1B8A0DFA8(uint64_t a1)
{
  v2 = sub_1B8A245B4();

  return sub_1B8A0F0E8(a1, v2);
}

uint64_t sub_1B8A0DFEC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B8A24564();

    if (v9)
    {

      type metadata accessor for ManagedRepresentation();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B8A24554();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B8A0E9DC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B8A0E7BC(v20 + 1, &qword_1EBA92208, &qword_1B8A29040);
    }

    v18 = v8;
    sub_1B8A0EDEC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for ManagedRepresentation();
  v11 = sub_1B8A243F4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B8A0F1B0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B8A24404();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1B8A0E214(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1B8A24564();

    if (v9)
    {

      sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1B8A24554();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1B8A0EBDC(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1B8A0E7BC(v20 + 1, &unk_1EBA921A0, &unk_1B8A28FE0);
    }

    v18 = v8;
    sub_1B8A0EDEC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
  v11 = sub_1B8A243F4();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1B8A0F340(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1B8A24404();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

id sub_1B8A0E470(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1B8A245E4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1B8A0E5B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B8A245F4();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_1B8A243F4();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_1B8A0E7BC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1B8A245F4();
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
      result = sub_1B8A243F4();
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

uint64_t sub_1B8A0E9DC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA92208, &qword_1B8A29040);
    v2 = sub_1B8A24604();
    v15 = v2;
    sub_1B8A24514();
    if (sub_1B8A24584())
    {
      type metadata accessor for ManagedRepresentation();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1B8A0E7BC(v9 + 1, &qword_1EBA92208, &qword_1B8A29040);
        }

        v2 = v15;
        result = sub_1B8A243F4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1B8A24584());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1B8A0EBDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA921A0, &unk_1B8A28FE0);
    v2 = sub_1B8A24604();
    v15 = v2;
    sub_1B8A24514();
    if (sub_1B8A24584())
    {
      sub_1B89AB538(0, &qword_1EBA91160, 0x1E695D630);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1B8A0E7BC(v9 + 1, &unk_1EBA921A0, &unk_1B8A28FE0);
        }

        v2 = v15;
        result = sub_1B8A243F4();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1B8A24584());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_1B8A0EDEC(uint64_t a1, uint64_t a2)
{
  sub_1B8A243F4();
  result = sub_1B8A244F4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1B8A0EE70(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1B8A24954())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1B8A0EF28(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1B8A23904();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1B8A10538(&qword_1EBA91640, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1B8A23ED4();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1B8A0F0E8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1B8A104DC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B8CC4440](v9, a1);
      sub_1B8A1029C(v9);
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

void sub_1B8A0F1B0(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1B8A0E7BC(v6 + 1, &qword_1EBA92208, &qword_1B8A29040);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1B8A0E470(&qword_1EBA92208, &qword_1B8A29040);
      goto LABEL_12;
    }

    sub_1B8A0E5B0(v6 + 1, &qword_1EBA92208, &qword_1B8A29040);
  }

  v8 = *v3;
  v9 = sub_1B8A243F4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for ManagedRepresentation();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1B8A24404();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1B8A24994();
  __break(1u);
}