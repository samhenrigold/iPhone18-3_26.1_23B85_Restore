void sub_1C6B3CCC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1C6B3CDCC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v72 = a2;
  v73 = a3;
  v5 = sub_1C6D790E0();
  v6 = *(v5 - 8);
  v75 = v5;
  v76 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v77 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D79040();
  v83 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C6D79170();
  v70 = *(v13 - 8);
  v71 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v69 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1C6B5F204(MEMORY[0x1E69E7CC0]);
  v68 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_27:
    v16 = sub_1C6D79E90();
    v82 = v12;
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v82 = v12;
    if (v16)
    {
LABEL_3:
      v12 = 0;
      v80 = a1 & 0xFFFFFFFFFFFFFF8;
      v81 = (a1 & 0xC000000000000001);
      v78 = a1;
      v79 = v9;
      do
      {
        if (v81)
        {
          v18 = MEMORY[0x1CCA56240](v12, a1);
          v19 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v12 >= *(v80 + 16))
          {
            goto LABEL_24;
          }

          v18 = *(a1 + 8 * v12 + 32);
          swift_unknownObjectRetain();
          v19 = (v12 + 1);
          if (__OFADD__(v12, 1))
          {
LABEL_23:
            __break(1u);
LABEL_24:
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }
        }

        v9 = v16;
        v20 = [v18 itemID];
        v21 = sub_1C6D795A0();
        v23 = v22;

        swift_unknownObjectRetain();
        v24 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v24;
        a1 = sub_1C6B5DEA8(v21, v23);
        v27 = *(v24 + 16);
        v28 = (v26 & 1) == 0;
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
          goto LABEL_25;
        }

        v30 = v26;
        if (*(v24 + 24) >= v29)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v26)
            {
              goto LABEL_4;
            }
          }

          else
          {
            sub_1C6B730A8();
            if (v30)
            {
              goto LABEL_4;
            }
          }
        }

        else
        {
          sub_1C6B6F0D4(v29, isUniquelyReferenced_nonNull_native);
          v31 = sub_1C6B5DEA8(v21, v23);
          if ((v30 & 1) != (v32 & 1))
          {
            result = sub_1C6D7A1C0();
            __break(1u);
            return result;
          }

          a1 = v31;
          if (v30)
          {
LABEL_4:

            v84 = v86;
            *(v86[7] + 8 * a1) = v18;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_5;
          }
        }

        v33 = v86;
        v86[(a1 >> 6) + 8] |= 1 << a1;
        v34 = (v33[6] + 16 * a1);
        *v34 = v21;
        v34[1] = v23;
        *(v33[7] + 8 * a1) = v18;
        swift_unknownObjectRelease();
        v35 = v33[2];
        v36 = __OFADD__(v35, 1);
        v37 = v35 + 1;
        if (v36)
        {
          goto LABEL_26;
        }

        v84 = v33;
        v33[2] = v37;
LABEL_5:
        ++v12;
        v16 = v9;
        v17 = v19 == v9;
        a1 = v78;
        v9 = v79;
      }

      while (!v17);
    }
  }

  if (v68)
  {
    sub_1C6B1677C();

    v41 = sub_1C6D79EC0();

    a1 = v41;
  }

  else
  {
    v38 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1C6D7A180();
    sub_1C6B1677C();
    if (!swift_dynamicCastMetatype())
    {
      v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v39)
      {
        v40 = v38 + 32;
        while (1)
        {
          v85 = &unk_1F468C500;
          if (!swift_dynamicCastObjCProtocolConditional())
          {
            break;
          }

          v40 += 8;
          if (!--v39)
          {
            goto LABEL_36;
          }
        }

        a1 = v38 | 1;
      }
    }
  }

LABEL_36:
  v42 = sub_1C6D791C0();
  v43 = v69;
  (*(*(v42 - 8) + 16))(v69, v72, v42);
  v45 = v70;
  v44 = v71;
  (*(v70 + 104))(v43, *MEMORY[0x1E69B5A28], v71);
  v46 = (*(v74 + 8))(a1, v43, v73);

  (*(v45 + 8))(v43, v44);
  v47 = *(v46 + 16);
  v48 = v82;
  if (v47)
  {
    v49 = v84;
    v81 = *(v83 + 16);
    v50 = v46 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v51 = (v83 + 8);
    v52 = MEMORY[0x1E69E7CC0];
    v83 += 16;
    v53 = *(v83 + 56);
    v79 = v76 + 32;
    v80 = v53;
    v81(v82, v50, v9);
    while (1)
    {
      v54 = sub_1C6D78FF0();
      if (*(v49 + 16))
      {
        sub_1C6B5DEA8(v54, v55);
        v57 = v56;

        if (v57)
        {
          objc_opt_self();
          v58 = swift_dynamicCastObjCClass();
          swift_unknownObjectRetain();
          if (v58)
          {
            swift_unknownObjectRetain();
            v59 = v82;
            v60 = sub_1C6D79010();
            [v58 setScoreProfile_];

            v61 = sub_1C6D79010();
            [v61 sortingScore];
            v63 = v62;

            [v58 setTileProminenceScore_];
            swift_unknownObjectRelease();
          }

          else
          {
            v59 = v82;
          }

          sub_1C6D79010();
          sub_1C6D790D0();
          (*v51)(v59, v9);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v52 = sub_1C6B65A3C(0, v52[2] + 1, 1, v52);
          }

          v49 = v84;
          v65 = v52[2];
          v64 = v52[3];
          if (v65 >= v64 >> 1)
          {
            v52 = sub_1C6B65A3C((v64 > 1), v65 + 1, 1, v52);
          }

          v52[2] = v65 + 1;
          (*(v76 + 32))(v52 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v65, v77, v75);
          v48 = v82;
        }

        else
        {
          v48 = v82;
          (*v51)(v82, v9);
        }
      }

      else
      {

        (*v51)(v48, v9);
      }

      v50 += v80;
      if (!--v47)
      {
        break;
      }

      v81(v48, v50, v9);
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v52;
}

void *sub_1C6B3D5A8(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v64 = a3;
  v63 = a2;
  v6 = sub_1C6D79060();
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v68 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = sub_1C6D79040();
  v58 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x1EEE9AC00](isUniquelyReferenced_nonNull_native, v11);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C6D79170();
  v61 = *(v14 - 8);
  v62 = v14;
  MEMORY[0x1EEE9AC00](v14, v15);
  v60 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C6B5F32C(MEMORY[0x1E69E7CC0]);
  v59 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_46:
    v18 = sub_1C6D79E90();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v65 = a4;
  v73 = v13;
  if (v18)
  {
    a4 = 0;
    v71 = a1 & 0xFFFFFFFFFFFFFF8;
    v72 = a1 & 0xC000000000000001;
    v69 = a1;
    v70 = isUniquelyReferenced_nonNull_native;
    do
    {
      if (v72)
      {
        v21 = MEMORY[0x1CCA56240](a4, a1);
      }

      else
      {
        if (a4 >= *(v71 + 16))
        {
          goto LABEL_43;
        }

        v21 = *(a1 + 8 * a4 + 32);
      }

      v22 = v21;
      if (__OFADD__(a4, 1))
      {
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v74 = (a4 + 1);
      v23 = [v21 itemID];
      a1 = sub_1C6D795A0();
      v13 = v24;

      v25 = v22;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v17;
      v27 = sub_1C6B5DEA8(a1, v13);
      v28 = v17[2];
      v29 = (v26 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        goto LABEL_44;
      }

      v31 = v26;
      if (v17[3] >= v30)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v26)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1C6B730C4();
          if (v31)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1C6B6F0F0(v30, isUniquelyReferenced_nonNull_native);
        v32 = sub_1C6B5DEA8(a1, v13);
        if ((v31 & 1) != (v33 & 1))
        {
          result = sub_1C6D7A1C0();
          __break(1u);
          return result;
        }

        v27 = v32;
        if (v31)
        {
LABEL_5:

          v17 = v75;
          v19 = v75[7];
          v20 = *(v19 + 8 * v27);
          *(v19 + 8 * v27) = v25;

          goto LABEL_6;
        }
      }

      v17 = v75;
      v75[(v27 >> 6) + 8] |= 1 << v27;
      v34 = (v17[6] + 16 * v27);
      *v34 = a1;
      v34[1] = v13;
      *(v17[7] + 8 * v27) = v25;

      v35 = v17[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_45;
      }

      v17[2] = v37;
LABEL_6:
      ++a4;
      v13 = v73;
      a1 = v69;
      isUniquelyReferenced_nonNull_native = v70;
    }

    while (v74 != v18);
  }

  if (v59)
  {
    sub_1C6B1677C();

    v38 = sub_1C6D79EC0();

    a1 = v38;
  }

  else
  {

    sub_1C6D7A180();
    sub_1C6B1677C();
  }

  v39 = v65;
  v40 = sub_1C6D791A0();
  v41 = v60;
  (*(*(v40 - 8) + 16))(v60, v63, v40);
  v43 = v61;
  v42 = v62;
  (*(v61 + 104))(v41, *MEMORY[0x1E69B5A10], v62);
  v44 = (*(v39 + 8))(a1, v41, v64, v39);

  (*(v43 + 8))(v41, v42);
  v45 = *(v44 + 16);
  if (v45)
  {
    v74 = *(v58 + 16);
    v46 = v44 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v72 = *(v58 + 72);
    v47 = (v58 + 8);
    v70 = v44;
    v71 = v67 + 32;
    v48 = MEMORY[0x1E69E7CC0];
    v74(v13, v46, isUniquelyReferenced_nonNull_native);
    while (1)
    {
      v49 = sub_1C6D78FF0();
      if (v17[2])
      {
        v51 = sub_1C6B5DEA8(v49, v50);
        v53 = v52;

        if (v53)
        {
          v54 = *(v17[7] + 8 * v51);
          v13 = v73;
          sub_1C6D79010();
          sub_1C6D79050();
          (*v47)(v13, isUniquelyReferenced_nonNull_native);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1C6B65A70(0, v48[2] + 1, 1, v48);
          }

          v56 = v48[2];
          v55 = v48[3];
          if (v56 >= v55 >> 1)
          {
            v48 = sub_1C6B65A70((v55 > 1), v56 + 1, 1, v48);
          }

          v48[2] = v56 + 1;
          (*(v67 + 32))(v48 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v56, v68, v66);
        }

        else
        {
          v13 = v73;
          (*v47)(v73, isUniquelyReferenced_nonNull_native);
        }
      }

      else
      {

        (*v47)(v13, isUniquelyReferenced_nonNull_native);
      }

      v46 += v72;
      if (!--v45)
      {
        break;
      }

      v74(v13, v46, isUniquelyReferenced_nonNull_native);
    }
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v48;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  sub_1C6B3E190(v1 + *(v7 + 24), v6);
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B3E2B0(v6, a1);
  }

  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B3E224(v6);
  }

  return result;
}

uint64_t sub_1C6B3DE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  sub_1C6B3E190(a1 + *(v8 + 24), v7);
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B3E2B0(v7, a2);
  }

  v11 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B3E224(v7);
  }

  return result;
}

uint64_t sub_1C6B3DFB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3E660(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0) + 24);
  sub_1C6B3E224(a2 + v9);
  sub_1C6B3E2B0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0) + 24);
  sub_1C6B3E224(v1 + v3);
  sub_1C6B3E2B0(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(uint64_t a1)
{
  result = qword_1EDCE30C0;
  if (!qword_1EDCE30C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B3E190(uint64_t a1, uint64_t a2)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B3E224(uint64_t a1)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B3E2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.metadata.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0) + 24);
  *(v5 + 12) = v16;
  sub_1C6B3E190(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v18 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.OneOf_Metadata(0);
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B3E224(v9);
    }
  }

  else
  {
    sub_1C6B3E2B0(v9, v15);
  }

  return sub_1C6B3E554;
}

void sub_1C6B3E554(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B3E660((*a1)[5], v4);
    sub_1C6B3E224(v9 + v3);
    sub_1C6B3E2B0(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B3E6C4(v5, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  }

  else
  {
    sub_1C6B3E224(v9 + v3);
    sub_1C6B3E2B0(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6B3E660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B3E6C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.hasMetadata.getter()
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  sub_1C6B3E190(v0 + *(v5 + 24), v4);
  v6 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B3E224(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.clearMetadata()()
{
  v1 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0) + 24);
  sub_1C6B3E224(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0) + 20);
  v4 = sub_1C6D78A40();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  sub_1C6D78A30();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t sub_1C6B3EA80()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D6888);
  __swift_project_value_buffer(v0, qword_1EC1D6888);
  sub_1C6B3FCC8(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C6D7EB10;
  v6 = (v5 + v4);
  v7 = v5 + v4 + *(v2 + 56);
  *v6 = 1;
  *v7 = "article_id";
  *(v7 + 8) = 10;
  *(v7 + 16) = 2;
  v8 = *MEMORY[0x1E69AADE8];
  v9 = sub_1C6D78D00();
  v10 = *(*(v9 - 8) + 104);
  (v10)(v7, v8, v9);
  v11 = v6 + v3 + *(v2 + 56);
  *(v6 + v3) = 2;
  *v11 = "metadata";
  *(v11 + 1) = 8;
  v11[16] = 2;
  v10();
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5850 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B50();
    }

    else if (result == 2)
    {
      sub_1C6B3EDD8(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6B3EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  sub_1C6B3FC1C(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C6D78CA0(), !v4))
  {
    result = sub_1C6B3EF28(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
      return sub_1C6D78A20();
    }
  }

  return result;
}

uint64_t sub_1C6B3EF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  sub_1C6B3E190(a1 + *(v14 + 24), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B3E224(v8);
  }

  sub_1C6B3E2B0(v8, v13);
  sub_1C6B3FC1C(qword_1EDCE2E40, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6D78CF0();
  return sub_1C6B3E6C4(v13, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
}

uint64_t Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0);
  sub_1C6B3FC1C(&qword_1EC1D68A0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B3F1BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1C6D78A30();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C6B3F25C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6B3F2D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C6B3F398(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B3FC1C(&qword_1EC1D68C0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B3F414@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5850 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D6888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B3F4BC(uint64_t a1)
{
  v2 = sub_1C6B3FC1C(&qword_1EC1D68B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B3F528(uint64_t a1, uint64_t a2)
{
  sub_1C6D7A260();
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B3F580(uint64_t a1, uint64_t a2)
{
  sub_1C6B3FC1C(&qword_1EC1D68B0, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved, &protocol conformance descriptor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B3F5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6D7A260();
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B44Storage_CompressedSessionEventArticleUnsavedV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B3FCC8(0, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B3FB88(0);
  v14 = v13;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 != *a2)
  {
    goto LABEL_8;
  }

  v18 = *(type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleUnsaved(0) + 24);
  v19 = *(v14 + 48);
  sub_1C6B3E190(a1 + v18, v17);
  sub_1C6B3E190(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B3E224(v17);
LABEL_11:
      sub_1C6D78A40();
      sub_1C6B3FC1C(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_7;
  }

  sub_1C6B3E190(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
LABEL_7:
    sub_1C6B3E6C4(v17, sub_1C6B3FB88);
    goto LABEL_8;
  }

  sub_1C6B3E2B0(&v17[v19], v8);
  v23 = static Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata.== infix(_:_:)(v12, v8);
  sub_1C6B3E6C4(v8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E6C4(v12, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata);
  sub_1C6B3E224(v17);
  if (v23)
  {
    goto LABEL_11;
  }

LABEL_8:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6B3FAC4(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6B3FCC8(319, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6B3FB88(uint64_t a1)
{
  if (!qword_1EC1D68C8)
  {
    sub_1C6B3FCC8(255, qword_1EDCE2DF8, type metadata accessor for Com_Apple_News_PersonalizationStorage_CompressedSessionEventArticleMetadata, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D68C8);
    }
  }
}

uint64_t sub_1C6B3FC1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void sub_1C6B3FCC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C6B3FD2C(uint64_t a1)
{
  if (!qword_1EDCDF910)
  {
    sub_1C6D78D00();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDCDF910);
    }
  }
}

uint64_t ArticleViewEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77790();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleViewEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77790();
  sub_1C6D773F0();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6B41184(&qword_1EDCE5FD0, MEMORY[0x1E69B4598], MEMORY[0x1E69B45A0]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleViewEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77790();
  sub_1C6D77410();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6B41184(&qword_1EDCE5F20, MEMORY[0x1E69B4818], MEMORY[0x1E69B4820]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleViewEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777A0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleViewEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B404FC(uint64_t (*a1)(void), uint64_t (*a2)(double), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6B40608(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77790();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleViewEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B40C38(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777C0();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B40C8C(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleViewEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B40C38(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777E0();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B40C8C(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

void sub_1C6B40C38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B40C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B40C38(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ArticleViewEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C6D773E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77EC0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777D0();
  sub_1C6D77EB0();
  (*(v8 + 8))(v11, v7);
  sub_1C6B8CE90(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C6B40EC4(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77790();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleViewEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B40C38(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D777E0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B40C8C(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6B41184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B41224()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77790();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6B41324()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777A0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleViewEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B41474(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77790();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6B41594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t))
{
  v7 = (a3)(0, a2);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6B4169C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77790();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6B41784@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C6D773E0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77EC0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D777D0();
  sub_1C6D77EB0();
  (*(v8 + 8))(v11, v7);
  sub_1C6B8CE90(a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1C6B41900()
{
  sub_1C6B40C38(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D777E0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B40C8C(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t ArticleLikeEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776B0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleLikeEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776B0();
  sub_1C6D773F0();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6B42F6C(&qword_1EDCE5FD0, MEMORY[0x1E69B4598], MEMORY[0x1E69B45A0]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleLikeEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776B0();
  sub_1C6D77410();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6B42F6C(&qword_1EDCE5F20, MEMORY[0x1E69B4818], MEMORY[0x1E69B4820]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleLikeEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776C0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleLikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B421B8(uint64_t (*a1)(void), uint64_t (*a2)(double), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6B422C4(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D776B0();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleLikeEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776D0();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleLikeEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776F0();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6B428F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1C6B42BF8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t ArticleLikeEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776E0();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

void sub_1C6B42BF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C6D79C00();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C6B42CAC(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D776B0();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleLikeEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D776F0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6B42F6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B4300C()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776B0();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6B4310C()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D776C0();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleLikeEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B4325C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D776B0();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6B4337C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t))
{
  v7 = (a3)(0, a2);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6B43484(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D776B0();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6B43570()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D776F0();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6B436C0()
{
  v0 = sub_1C6D771D0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C6D77FA0();
  v10 = sub_1C6D77F90();
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v12[15] = v10 & 1;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EDCEA7C0 = result;
  return result;
}

uint64_t sub_1C6B438D4()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D68E8 = result;
  return result;
}

uint64_t sub_1C6B43AE4()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D68F0 = result;
  return result;
}

uint64_t sub_1C6B43CF4()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D68F8 = result;
  return result;
}

uint64_t sub_1C6B43F04()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6900 = result;
  return result;
}

uint64_t sub_1C6B44114()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6908 = result;
  return result;
}

uint64_t sub_1C6B44324()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6910 = result;
  return result;
}

uint64_t sub_1C6B44534()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6918 = result;
  return result;
}

uint64_t sub_1C6B44744()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[1] = 0x3FF0000000000000;
  sub_1C6B47330(0, &qword_1EC1D69A0, MEMORY[0x1E69E63B0], MEMORY[0x1E69D6F00]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6920 = result;
  return result;
}

uint64_t sub_1C6B44958()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[1] = 0x3FEF5C28F5C28F5CLL;
  sub_1C6B47330(0, &qword_1EC1D69A0, MEMORY[0x1E69E63B0], MEMORY[0x1E69D6F00]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6928 = result;
  return result;
}

uint64_t sub_1C6B44B78()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6930 = result;
  return result;
}

uint64_t sub_1C6B44D88()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[1] = 555;
  sub_1C6B47330(0, &qword_1EC1D69A8, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6938 = result;
  return result;
}

uint64_t sub_1C6B44F9C()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[1] = 2500;
  sub_1C6B47330(0, &qword_1EC1D69A8, MEMORY[0x1E69E6530], MEMORY[0x1E69D6F28]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6940 = result;
  return result;
}

uint64_t sub_1C6B451B0()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6948 = result;
  return result;
}

uint64_t sub_1C6B453C0()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6950 = result;
  return result;
}

uint64_t sub_1C6B455D0()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6958 = result;
  return result;
}

uint64_t sub_1C6B457E0()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EDCE6170 = result;
  return result;
}

uint64_t sub_1C6B459F0()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[1] = 0;
  sub_1C6B47330(0, &qword_1EC1D69A0, MEMORY[0x1E69E63B0], MEMORY[0x1E69D6F00]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EC1D6960 = result;
  return result;
}

uint64_t sub_1C6B45C00()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EDCE6160 = result;
  return result;
}

uint64_t sub_1C6B45E10()
{
  v0 = sub_1C6D771D0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1C6D771C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.NewsPersonalization.SportsTagScoringConfigurationOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1C6D795A0();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1C6D77150();
  qword_1EDCE6118 = result;
  return result;
}

uint64_t sub_1C6B45FF8()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v9 = sub_1C6D795A0();
  v9[1] = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  v12[15] = 0;
  sub_1C6B47330(0, &qword_1EDCEA950, MEMORY[0x1E69E6370], MEMORY[0x1E69D6EF0]);
  swift_allocObject();
  result = sub_1C6D77230();
  qword_1EDCE6100 = result;
  return result;
}

uint64_t sub_1C6B46208()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D771D0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6B47330(0, &qword_1EC1D6988, MEMORY[0x1E69E6158], MEMORY[0x1E69D6EE0]);
  v13[1] = v10;
  v16 = 32123;
  v17 = 0xE200000000000000;
  *v9 = sub_1C6D795A0();
  v9[1] = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E98], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  sub_1C6B47288(0);
  sub_1C6B472E0();
  *(swift_allocObject() + 16) = xmmword_1C6D7EED0;
  v14 = 32123;
  v15 = 0xE200000000000000;
  sub_1C6D771E0();
  v14 = 0xD0000000000001EALL;
  v15 = 0x80000001C6D97760;
  sub_1C6D771E0();
  v14 = 0xD00000000000060BLL;
  v15 = 0x80000001C6D97970;
  sub_1C6D771E0();
  v14 = 0xD00000000000060BLL;
  v15 = 0x80000001C6D97FA0;
  sub_1C6D771E0();
  v14 = 0xD000000000000637;
  v15 = 0x80000001C6D985D0;
  sub_1C6D771E0();
  v14 = 0xD00000000000060DLL;
  v15 = 0x80000001C6D98C30;
  sub_1C6D771E0();
  v14 = 0xD000000000000614;
  v15 = 0x80000001C6D99240;
  sub_1C6D771E0();
  v14 = 0xD000000000000619;
  v15 = 0x80000001C6D99880;
  sub_1C6D771E0();
  v14 = 0xD000000000000619;
  v15 = 0x80000001C6D99EC0;
  sub_1C6D771E0();
  v14 = 0xD000000000000038;
  v15 = 0x80000001C6D9A510;
  sub_1C6D771E0();
  v14 = 0xD00000000000005CLL;
  v15 = 0x80000001C6D9A570;
  sub_1C6D771E0();
  result = sub_1C6D77200();
  qword_1EC1D6968 = result;
  return result;
}

uint64_t sub_1C6B467CC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_1C6B46830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C6D771C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_1C6D77160();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t sub_1C6B4695C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1C6D771C0();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_1C6D77160();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.NewsStatelessPersonalization.ClusterConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C19NewsPersonalizationE0c9StatelessD0V22ClusterConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C6B46AA4()
{
  v0 = sub_1C6D771D0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = (&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1C6D771C0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.NewsStatelessPersonalization.ClusterConfigOverrides(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6E90], v5);
  *v4 = sub_1C6D795A0();
  v4[1] = v10;
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E98], v0);
  result = sub_1C6D77150();
  qword_1EC1D6970 = result;
  return result;
}

uint64_t sub_1C6B46C8C()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D77140();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B471CC(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1C6D77210();
  qword_1EDCE6188 = result;
  return result;
}

uint64_t sub_1C6B46E5C()
{
  v0 = sub_1C6D771C0();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C6D77140();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B471CC(0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69D6D00], v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E90], v0);
  result = sub_1C6D77210();
  qword_1EDCE61A0 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ComputeServiceMyMagazinesPersonalizationService.Errors(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ComputeServiceMyMagazinesPersonalizationService.Errors(_WORD *result, int a2, int a3)
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

void sub_1C6B471CC(uint64_t a1)
{
  if (!qword_1EDCE60E0)
  {
    sub_1C6D77140();
    sub_1C6B47230();
    v1 = sub_1C6D77220();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE60E0);
    }
  }
}

unint64_t sub_1C6B47230()
{
  result = qword_1EDCE60F0;
  if (!qword_1EDCE60F0)
  {
    sub_1C6D77140();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCE60F0);
  }

  return result;
}

void sub_1C6B47288(uint64_t a1)
{
  if (!qword_1EC1D6990)
  {
    sub_1C6B472E0();
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC1D6990);
    }
  }
}

void sub_1C6B472E0()
{
  if (!qword_1EC1D6998)
  {
    v0 = sub_1C6D771F0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC1D6998);
    }
  }
}

void sub_1C6B47330(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1C6D77220();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t URL.zipForExport(filename:)@<X0>(uint64_t a3@<X8>)
{
  v29 = a3;
  v3 = sub_1C6D75DE0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v28 - v10;
  v12 = [objc_opt_self() defaultManager];
  v13 = [v12 temporaryDirectory];

  sub_1C6D75D90();
  sub_1C6D75D50();
  v14 = *(v4 + 8);
  v14(v7, v3);
  v15 = [objc_allocWithZone(MEMORY[0x1E69B68D0]) init];
  v16 = sub_1C6D75D30();
  v17 = sub_1C6D75D30();
  LODWORD(v12) = [v15 archiveDirectory:v16 toLocation:v17];

  if (v12)
  {
    v18 = v29;
    (*(v4 + 32))(v29, v11, v3);
    v19 = 0;
    v20 = v18;
  }

  else
  {
    v21 = sub_1C6D79AA0();
    sub_1C6B1D314(0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C6D7E630;
    sub_1C6B476D4();
    v23 = sub_1C6D7A0E0();
    v25 = v24;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1C6B2064C();
    *(v22 + 32) = v23;
    *(v22 + 40) = v25;
    sub_1C6B1AAB0();
    v26 = sub_1C6D79BD0();
    sub_1C6D78D30("Failed to zip url %{public}@ for export", 39, 2, &dword_1C6B09000, v26, v21, v22);

    v14(v11, v3);
    v19 = 1;
    v20 = v29;
  }

  return (*(v4 + 56))(v20, v19, 1, v3);
}

unint64_t sub_1C6B47670()
{
  result = qword_1EDCEA890;
  if (!qword_1EDCEA890)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDCEA890);
  }

  return result;
}

unint64_t sub_1C6B476D4()
{
  result = qword_1EDCEA3B0;
  if (!qword_1EDCEA3B0)
  {
    sub_1C6D75DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCEA3B0);
  }

  return result;
}

uint64_t sub_1C6B4772C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C6D77F00();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x1E69B4E98])
  {
    v11 = MEMORY[0x1E69E39A0];
LABEL_77:
    v13 = *v11;
    v14 = sub_1C6D770A0();
    v15 = *(*(v14 - 8) + 104);
    v16 = a1;
    v17 = v13;
    return v15(v16, v17, v14);
  }

  if (v10 == *MEMORY[0x1E69B4E80])
  {
    v11 = MEMORY[0x1E69E3988];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4ED8])
  {
    v11 = MEMORY[0x1E69E39D8];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4C20])
  {
    v11 = MEMORY[0x1E69E3798];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4EC8])
  {
    v11 = MEMORY[0x1E69E39C8];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4C78])
  {
    v11 = MEMORY[0x1E69E37E8];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4CD8])
  {
    v11 = MEMORY[0x1E69E3828];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4E70])
  {
    v11 = MEMORY[0x1E69E3978];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4E60])
  {
    v11 = MEMORY[0x1E69E3968];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4D70])
  {
    v11 = MEMORY[0x1E69E38A0];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4E30])
  {
    v11 = MEMORY[0x1E69E3940];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4E00])
  {
    v11 = MEMORY[0x1E69E3910];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4EC0])
  {
    v11 = MEMORY[0x1E69E39C0];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4EE8])
  {
    v11 = MEMORY[0x1E69E39E8];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4C28])
  {
    v11 = MEMORY[0x1E69E37A0];
    goto LABEL_77;
  }

  v12 = v10;
  if (v10 == *MEMORY[0x1E69B4D20])
  {
    v11 = MEMORY[0x1E69E3860];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4C58])
  {
    v11 = MEMORY[0x1E69E37C8];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4E10])
  {
    v11 = MEMORY[0x1E69E3920];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4C98])
  {
    v11 = MEMORY[0x1E69E3808];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4E78])
  {
    v11 = MEMORY[0x1E69E3980];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4C50])
  {
    v11 = MEMORY[0x1E69E37C0];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4EB0])
  {
    v11 = MEMORY[0x1E69E39B0];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4E90])
  {
    v11 = MEMORY[0x1E69E3998];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4E68])
  {
    v11 = MEMORY[0x1E69E3970];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4DB0])
  {
    v11 = MEMORY[0x1E69E38D0];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4C90])
  {
    v11 = MEMORY[0x1E69E3800];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4D48])
  {
    v11 = MEMORY[0x1E69E3880];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4E08])
  {
    v11 = MEMORY[0x1E69E3918];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4C68])
  {
    v11 = MEMORY[0x1E69E37D8];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4C60])
  {
    v11 = MEMORY[0x1E69E37D0];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4E18])
  {
    v11 = MEMORY[0x1E69E3928];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4C38])
  {
    v11 = MEMORY[0x1E69E37B0];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4ED0])
  {
    v11 = MEMORY[0x1E69E39D0];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4CF0])
  {
    v11 = MEMORY[0x1E69E3838];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4E58])
  {
    v11 = MEMORY[0x1E69E3960];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4D78])
  {
    v11 = MEMORY[0x1E69E38A8];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4CF8])
  {
    v11 = MEMORY[0x1E69E3840];
    goto LABEL_77;
  }

  if (v10 == *MEMORY[0x1E69B4DC0])
  {
    v11 = MEMORY[0x1E69E38D8];
    goto LABEL_77;
  }

  v19 = *MEMORY[0x1E69B4E20];
  v14 = sub_1C6D770A0();
  v15 = *(*(v14 - 8) + 104);
  if (v12 != v19)
  {
    v15(a1, *MEMORY[0x1E69E39A0], v14);
    return (*(v5 + 8))(v9, v4);
  }

  v17 = *MEMORY[0x1E69E3930];
  v16 = a1;
  return v15(v16, v17, v14);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.article.getter@<X0>(char *a1@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  sub_1C6B482A8(v1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C6B483C8(v6, a1);
  }

  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v10 = *(v8 + 20);
  v11 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  sub_1C6D78A30();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C6B4833C(v6);
  }

  return result;
}

uint64_t sub_1C6B47F34@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  sub_1C6B482A8(a1 + *(v8 + 20), v7);
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C6B483C8(v7, a2);
  }

  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v11 = *(v9 + 20);
  v12 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
  (*(*(v12 - 8) + 56))(&a2[v11], 1, 1, v12);
  sub_1C6D78A30();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C6B4833C(v7);
  }

  return result;
}

uint64_t sub_1C6B480CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B48784(a1, v8);
  v9 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0) + 20);
  sub_1C6B4833C(a2 + v9);
  sub_1C6B483C8(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.article.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0) + 20);
  sub_1C6B4833C(v1 + v3);
  sub_1C6B483C8(a1, v1 + v3);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(uint64_t a1)
{
  result = qword_1EDCE4498;
  if (!qword_1EDCE4498)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C6B482A8(uint64_t a1, uint64_t a2)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B4833C(uint64_t a1)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C6B483C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Com_Apple_News_Personalization_SessionEventArticleUnliked.article.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v5[3] = v11;
  v13 = *(v11 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[5] = v14;
  v16 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0) + 20);
  *(v5 + 12) = v16;
  sub_1C6B482A8(v1 + v16, v9);
  v17 = *(v12 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0xE000000000000000;
    v18 = *(v10 + 20);
    v19 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle.OneOf_Metadata(0);
    (*(*(v19 - 8) + 56))(&v15[v18], 1, 1, v19);
    sub_1C6D78A30();
    if (v17(v9, 1, v10) != 1)
    {
      sub_1C6B4833C(v9);
    }
  }

  else
  {
    sub_1C6B483C8(v9, v15);
  }

  return sub_1C6B48678;
}

void sub_1C6B48678(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C6B48784((*a1)[5], v4);
    sub_1C6B4833C(v9 + v3);
    sub_1C6B483C8(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C6B487E8(v5, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  }

  else
  {
    sub_1C6B4833C(v9 + v3);
    sub_1C6B483C8(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1C6B48784(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C6B487E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL Com_Apple_News_Personalization_SessionEventArticleUnliked.hasArticle.getter()
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  sub_1C6B482A8(v0 + *(v5 + 20), v4);
  v6 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C6B4833C(v4);
  return v7;
}

Swift::Void __swiftcall Com_Apple_News_Personalization_SessionEventArticleUnliked.clearArticle()()
{
  v1 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0) + 20);
  sub_1C6B4833C(v0 + v1);
  v2 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v3 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0) + 20);
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2 + v3, 1, 1, v4);
}

uint64_t sub_1C6B48B44()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D69B0);
  __swift_project_value_buffer(v0, qword_1EC1D69B0);
  sub_1C6B49B2C(0, &qword_1EDCDF400, sub_1C6B3FD2C, MEMORY[0x1E69E6F90]);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "article";
  *(v5 + 8) = 7;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t static Com_Apple_News_Personalization_SessionEventArticleUnliked._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5900 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D69B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6B48DE4(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6B48DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  sub_1C6B49AE4(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  return sub_1C6D78BB0();
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C6B48EF0(v3, a1, a2, a3);
  if (!v4)
  {
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B48EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v16 - v7;
  v9 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  sub_1C6B482A8(a1 + *(v14 + 20), v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1C6B4833C(v8);
  }

  sub_1C6B483C8(v8, v13);
  sub_1C6B49AE4(&qword_1EDCE5300, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6D78CF0();
  return sub_1C6B487E8(v13, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
}

uint64_t Com_Apple_News_Personalization_SessionEventArticleUnliked.hashValue.getter()
{
  sub_1C6D7A260();
  type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0);
  sub_1C6B49AE4(&qword_1EC1D69C8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnliked);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B49184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C6D78A30();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1C6B49218@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1C6B49280(uint64_t a1)
{
  v3 = sub_1C6D78A40();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1C6B49338(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B49AE4(&qword_1EC1D69E8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnliked);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B493B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5900 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1D69B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B4945C(uint64_t a1)
{
  v2 = sub_1C6B49AE4(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnliked);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B494C8(uint64_t a1, uint64_t a2)
{
  sub_1C6B49AE4(&qword_1EC1D69D8, type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked, &protocol conformance descriptor for Com_Apple_News_Personalization_SessionEventArticleUnliked);

  return sub_1C6D78C20();
}

uint64_t _s19NewsPersonalization010Com_Apple_a1_B27_SessionEventArticleUnlikedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_SessionArticle(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B49B2C(0, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v24 - v11;
  sub_1C6B49A50(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for Com_Apple_News_Personalization_SessionEventArticleUnliked(0) + 20);
  v19 = *(v14 + 56);
  sub_1C6B482A8(a1 + v18, v17);
  sub_1C6B482A8(a2 + v18, &v17[v19]);
  v20 = *(v5 + 48);
  if (v20(v17, 1, v4) == 1)
  {
    if (v20(&v17[v19], 1, v4) == 1)
    {
      sub_1C6B4833C(v17);
LABEL_9:
      sub_1C6D78A40();
      sub_1C6B49AE4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v21 = sub_1C6D79560();
      return v21 & 1;
    }

    goto LABEL_6;
  }

  sub_1C6B482A8(v17, v12);
  if (v20(&v17[v19], 1, v4) == 1)
  {
    sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
LABEL_6:
    sub_1C6B487E8(v17, sub_1C6B49A50);
    goto LABEL_7;
  }

  sub_1C6B483C8(&v17[v19], v8);
  v22 = static Com_Apple_News_Personalization_SessionArticle.== infix(_:_:)(v12, v8);
  sub_1C6B487E8(v8, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B487E8(v12, type metadata accessor for Com_Apple_News_Personalization_SessionArticle);
  sub_1C6B4833C(v17);
  if (v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  v21 = 0;
  return v21 & 1;
}

void sub_1C6B4999C(uint64_t a1)
{
  sub_1C6D78A40();
  if (v1 <= 0x3F)
  {
    sub_1C6B49B2C(319, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C6B49A50(uint64_t a1)
{
  if (!qword_1EC1D69F0)
  {
    sub_1C6B49B2C(255, &qword_1EDCE52B0, type metadata accessor for Com_Apple_News_Personalization_SessionArticle, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC1D69F0);
    }
  }
}

uint64_t sub_1C6B49AE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C6B49B2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1C6B49B90()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1F7030);
  __swift_project_value_buffer(v0, qword_1EC1F7030);
  sub_1C6B4A290(0);
  sub_1C6B3FD2C(0);
  v2 = v1 - 8;
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C6D7E630;
  v5 = v4 + v3 + *(v2 + 56);
  *(v4 + v3) = 1;
  *v5 = "string_value";
  *(v5 + 8) = 12;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1C6D78D00();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C6D78D10();
}

uint64_t sub_1C6B49CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B80();
    }
  }

  return result;
}

uint64_t sub_1C6B49D54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C6D78CC0(), !v4))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B49DE8@<X0>(void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return sub_1C6D78A30();
}

uint64_t sub_1C6B49E5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B4A2E8(&qword_1EC1D6A18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6D7F218);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B49ED8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC1D5908 != -1)
  {
    swift_once();
  }

  v2 = sub_1C6D78D20();
  v3 = __swift_project_value_buffer(v2, qword_1EC1F7030);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C6B49F80(uint64_t a1)
{
  v2 = sub_1C6B4A2E8(&qword_1EC1D6A00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6D7F250);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B49FEC(uint64_t a1, uint64_t a2)
{
  sub_1C6B4A2E8(&qword_1EC1D6A00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID, &unk_1C6D7F250);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B4A068(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1C6D7A130() & 1) == 0)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6B4A2E8(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t type metadata accessor for Com_Apple_News_Algorithms_Proto_Common_UUID(uint64_t a1)
{
  result = qword_1EC1D6A20;
  if (!qword_1EC1D6A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C6B4A290(uint64_t a1)
{
  if (!qword_1EDCDF400)
  {
    sub_1C6B3FD2C(255);
    v1 = sub_1C6D7A0F0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCDF400);
    }
  }
}

uint64_t sub_1C6B4A2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B4A358(uint64_t a1)
{
  result = sub_1C6D78A40();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t AudioEngageEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77820();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t AudioEngageEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77820();
  sub_1C6D773F0();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6B4B840(&qword_1EDCE5FD0, MEMORY[0x1E69B4598], MEMORY[0x1E69B45A0]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t AudioEngageEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77820();
  sub_1C6D77410();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6B4B840(&qword_1EDCE5F20, MEMORY[0x1E69B4818], MEMORY[0x1E69B4820]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t AudioEngageEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77830();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = AudioEngageEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B4AB3C(uint64_t (*a1)(void), uint64_t (*a2)(double), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6B4AC48(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77820();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t AudioEngageEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77850();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t AudioEngageEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77870();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t AudioEngageEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77860();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6B4B580(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77820();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t AudioEngageEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77870();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6B4B840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B4B8E0()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77820();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6B4B9E0()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77830();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = AudioEngageEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B4BB30(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77820();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6B4BC50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t))
{
  v7 = (a3)(0, a2);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6B4BD58(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77820();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6B4BE44()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77870();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t ArticleShareEvent.Model.articleLength.getter()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77940();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t ArticleShareEvent.Model.isANF.getter()
{
  v0 = sub_1C6D77440();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77940();
  sub_1C6D773F0();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4590], v0);
  sub_1C6B4D400(&qword_1EDCE5FD0, MEMORY[0x1E69B4598], MEMORY[0x1E69B45A0]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleShareEvent.Model.isPaid.getter()
{
  v0 = sub_1C6D77930();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v17 - v7;
  v9 = sub_1C6D77430();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77940();
  sub_1C6D77410();
  (*(v10 + 8))(v13, v9);
  (*(v1 + 104))(v4, *MEMORY[0x1E69B4810], v0);
  sub_1C6B4D400(&qword_1EDCE5F20, MEMORY[0x1E69B4818], MEMORY[0x1E69B4820]);
  sub_1C6D796F0();
  sub_1C6D796F0();
  if (v17[2] == v17[0] && v17[3] == v17[1])
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C6D7A130();
  }

  v15 = *(v1 + 8);
  v15(v4, v0);
  v15(v8, v0);

  return v14 & 1;
}

uint64_t ArticleShareEvent.Model.isBundlePaid.getter()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77950();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleShareEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B4C6FC(uint64_t (*a1)(void), uint64_t (*a2)(double), uint64_t (*a3)(uint64_t))
{
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v14 - v9;
  v11 = a2(v8);
  v12 = a3(v11);
  (*(v6 + 8))(v10, v5);
  return v12;
}

uint64_t sub_1C6B4C808(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77940();
  v8 = a1(v7);
  (*(v3 + 8))(v6, v2);
  return v8;
}

uint64_t ArticleShareEvent.Model.feed.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77E80();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D77090();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77960();
  v15 = sub_1C6D77E60();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E50, MEMORY[0x1E69B4B18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3780], v10);
  }

  else
  {
    sub_1C6D77E50();
    (*(v16 + 8))(v9, v15);
    sub_1C6C1EF1C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleShareEvent.Model.group.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D77F00();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D770A0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77980();
  v15 = sub_1C6D77EF0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E39A0], v10);
  }

  else
  {
    sub_1C6D77EE0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B4772C(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t ArticleShareEvent.Model.viewAction.getter@<X0>(uint64_t a1@<X8>)
{
  v19 = a1;
  v1 = sub_1C6D773E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B42BF8(0, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v18 - v8;
  v10 = sub_1C6D76B90();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77970();
  v15 = sub_1C6D77EC0();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v9, 1, v15) == 1)
  {
    sub_1C6B428F4(v9, &qword_1EC1D68D0, MEMORY[0x1E69B4C00]);
    return (*(v11 + 104))(v19, *MEMORY[0x1E69E3540], v10);
  }

  else
  {
    sub_1C6D77EB0();
    (*(v16 + 8))(v9, v15);
    sub_1C6B8CE90(v14);
    (*(v2 + 8))(v5, v1);
    return (*(v11 + 32))(v19, v14, v10);
  }
}

uint64_t sub_1C6B4D140(uint64_t (*a1)(uint64_t))
{
  v2 = sub_1C6D77430();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C6D77940();
  LOBYTE(a1) = a1(v7);
  (*(v3 + 8))(v6, v2);
  return a1 & 1;
}

uint64_t ArticleShareEvent.Model.groupBackingTagID.getter()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77980();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

uint64_t sub_1C6B4D400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C6B4D4A0()
{
  v0 = sub_1C6D77430();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77940();
  v5 = sub_1C6D77400();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_1C6B4D5A0()
{
  v0 = sub_1C6D77460();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6D77950();
  v5 = sub_1C6D77450();
  (*(v1 + 8))(v4, v0);
  if (v5)
  {
    v6 = ArticleShareEvent.Model.isPaid.getter();
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1C6B4D6F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77940();
  LOBYTE(a3) = a3(v9);
  (*(v5 + 8))(v8, v4);
  return a3 & 1;
}

uint64_t sub_1C6B4D810(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(double), uint64_t (*a5)(uint64_t))
{
  v7 = (a3)(0, a2);
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v16 - v11;
  v13 = a4(v10);
  v14 = a5(v13);
  (*(v8 + 8))(v12, v7);
  return v14;
}

uint64_t sub_1C6B4D918(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = sub_1C6D77430();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C6D77940();
  v10 = a3(v9);
  (*(v5 + 8))(v8, v4);
  return v10;
}

uint64_t sub_1C6B4DA04()
{
  sub_1C6B42BF8(0, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v8 - v2;
  sub_1C6D77980();
  v4 = sub_1C6D77EF0();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1C6B428F4(v3, &qword_1EDCE5E30, MEMORY[0x1E69B4C18]);
    return 0;
  }

  else
  {
    v7 = sub_1C6D77ED0();
    (*(v5 + 8))(v3, v4);
    return v7;
  }
}

void sub_1C6B4DB54(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  v43 = a2;
  v8 = sub_1C6D77E40();
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v40 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1C6D77690();
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B4DFEC(0);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C6D77290();
  v22 = MEMORY[0x1EEE9AC00](v20, v21);
  (*(v24 + 16))(&v38 - v23, a1, v20, v22);
  if (swift_dynamicCast())
  {
    (*(v16 + 8))(v19, v15);
    v25 = sub_1C6D77270();
    v26 = sub_1C6D77330();
    v28 = v27;

    if (!v5)
    {
      sub_1C6B4E080(&unk_1EC1D6A50, MEMORY[0x1E69B46D8], MEMORY[0x1E69B46E0]);
      v29 = v44;
      sub_1C6D75AF0();
      v31 = v40;
      sub_1C6D77680();
      v32 = sub_1C6D77E30();
      v34 = v33;
      sub_1C6B1C9F0(v26, v28);
      (*(v41 + 8))(v31, v42);
      (*(v39 + 8))(v13, v29);
      *a5 = v32;
      a5[1] = v34;
      v35 = *MEMORY[0x1E69E3668];
      v36 = sub_1C6D76F90();
      v37 = *(v36 - 8);
      (*(v37 + 104))(a5, v35, v36);
      (*(v37 + 56))(a5, 0, 1, v36);
    }
  }

  else
  {
    v30 = sub_1C6D76F90();
    (*(*(v30 - 8) + 56))(a5, 1, 1, v30);
  }
}

void sub_1C6B4DFEC(uint64_t a1)
{
  if (!qword_1EDCE60B8)
  {
    sub_1C6D776A0();
    sub_1C6B4E080(&qword_1EDCE5F80, MEMORY[0x1E69B46E8], MEMORY[0x1E69B46D0]);
    v1 = sub_1C6D77290();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDCE60B8);
    }
  }
}

uint64_t sub_1C6B4E080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Com_Apple_News_Algorithms_Proto_Model_Features.featureMap.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Features.init()@<X0>(unint64_t *a1@<X8>)
{
  *a1 = sub_1C6B5F348(MEMORY[0x1E69E7CC0]);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
  return sub_1C6D78A30();
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.floatList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6B61A0C(v2, &v10 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6B5F6DC(v7, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4E400@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6B61A0C(a1, &v10 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C6B5F6DC(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Algorithms_Proto_Model_Feature.floatList.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6B61A0C(v1, v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6B61A8C(v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C6B5F6DC(v9, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
      return sub_1C6B4E838;
    }

    sub_1C6B62664(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *v12 = MEMORY[0x1E69E7CC0];
  sub_1C6D78A30();
  return sub_1C6B4E838;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.int32List.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6B61A0C(v2, &v10 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6B5F6DC(v7, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4EA24@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6B61A0C(a1, &v10 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C6B5F6DC(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4EC00@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a1(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Algorithms_Proto_Model_Feature.int32List.modify(void *a1))(uint64_t **a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6B61A0C(v1, v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6B61A8C(v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    sub_1C6D78A30();
    return sub_1C6B4EEAC;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1C6B62664(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_15;
  }

  sub_1C6B5F6DC(v9, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  return sub_1C6B4EEAC;
}

void sub_1C6B4EEF0(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_1C6B5F654((*a1)[3], v10, a5);
    sub_1C6B61A8C(v13, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_1C6B62664(v11, a6);
  }

  else
  {
    sub_1C6B61A8C(**a1, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.int64List.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6B61A0C(v2, &v10 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6B5F6DC(v7, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4F208@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6B61A0C(a1, &v10 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C6B5F6DC(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Algorithms_Proto_Model_Feature.int64List.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6B61A0C(v1, v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6B61A8C(v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    sub_1C6D78A30();
    return sub_1C6B4F648;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1C6B62664(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_15;
  }

  sub_1C6B5F6DC(v9, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  return sub_1C6B4F648;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.bytesList.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6B61A0C(v2, &v10 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C6B5F6DC(v7, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4F834@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6B61A0C(a1, &v10 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C6B5F6DC(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a2 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Algorithms_Proto_Model_Feature.bytesList.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6B61A0C(v1, v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6B61A8C(v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_15:
    *v12 = MEMORY[0x1E69E7CC0];
    sub_1C6D78A30();
    return sub_1C6B4FC74;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1C6B62664(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_15;
  }

  sub_1C6B5F6DC(v9, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  return sub_1C6B4FC74;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.float16List.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6B61A0C(v2, &v10 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6B5F6DC(v7, a1, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a1 = xmmword_1C6D7F510;
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B4FE60@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v10 - v6;
  sub_1C6B61A0C(a1, &v10 - v6, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v8 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    sub_1C6B61A8C(v7, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C6B5F6DC(v7, a2, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  *a2 = xmmword_1C6D7F510;
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B50008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t a8)
{
  v12 = (a5)(0, a2, a3, a4);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v18 - v14;
  sub_1C6B5F654(a1, &v18 - v14, a6);
  sub_1C6B61A8C(a2, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B5F6DC(v15, a2, a7);
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v16 - 8) + 56))(a2, 0, 1, v16);
}

uint64_t sub_1C6B50144(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  sub_1C6B61A8C(v3, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B5F6DC(a1, v3, a2);
  v6 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v3, 0, 1, v6);
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.init()@<X0>(_OWORD *a1@<X8>)
{
  *a1 = xmmword_1C6D7F510;
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  return sub_1C6D78A30();
}

void (*Com_Apple_News_Algorithms_Proto_Model_Feature.float16List.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  v10 = *(*(type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0) - 8) + 64);
  if (v3)
  {
    v5[2] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[2] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v5[3] = v11;
  sub_1C6B61A0C(v1, v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v5[4] = v13;
  v14 = *(v13 - 8);
  v5[5] = v14;
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_1C6B61A8C(v9, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_15:
    *v12 = xmmword_1C6D7F510;
    sub_1C6D78A30();
    return sub_1C6B504AC;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1C6B62664(v9, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_15;
  }

  sub_1C6B5F6DC(v9, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  return sub_1C6B504AC;
}

uint64_t sub_1C6B50508@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C6B505A4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1C6D78A40();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t *static Com_Apple_News_Algorithms_Proto_Model_Int32List.== infix(_:_:)(uint64_t *result, uint64_t *a2)
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
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
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

uint64_t *static Com_Apple_News_Algorithms_Proto_Model_Int64List.== infix(_:_:)(uint64_t *result, uint64_t *a2)
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
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
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

uint64_t static Com_Apple_News_Algorithms_Proto_Model_Float16List.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  if (!sub_1C6B5E090(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  sub_1C6D78A40();
  sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  return sub_1C6D78A30();
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.littleEndianBytes.getter()
{
  v1 = *v0;
  sub_1C6B1CD10(*v0, *(v0 + 8));
  return v1;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.littleEndianBytes.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1C6B1C9F0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Features.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6B50DE0(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6B50DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C6D78A10();
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
  sub_1C6B5F7C4(qword_1EDCE5BF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  sub_1C6B5F7C4(&unk_1EDCE5BE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Feature);
  return sub_1C6D78AC0();
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Features.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (sub_1C6D78A10(), type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0), sub_1C6B5F7C4(qword_1EDCE5BF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Feature), sub_1C6B5F7C4(&unk_1EDCE5BE0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Feature), result = sub_1C6D78C40(), !v5))
  {
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B51040(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  a4(0);
  sub_1C6D78A40();
  sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6B511CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&unk_1EC1D6C30, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Features);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B5126C(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(&qword_1EDCE5B20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Features);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B512D8(uint64_t a1, uint64_t a2)
{
  sub_1C6B5F7C4(&qword_1EDCE5B20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Features, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Features);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B51388()
{
  v0 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v0, qword_1EC1D6A78);
  __swift_project_value_buffer(v0, qword_1EC1D6A78);
  sub_1C6B4A290(0);
  sub_1C6B61724(0, &qword_1EDCDF910, MEMORY[0x1E69AADF0], MEMORY[0x1E69E6530]);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 72);
  v4 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C6D7F520;
  v5 = v17 + v4;
  v6 = v17 + v4 + *(v2 + 56);
  *(v17 + v4) = 1;
  *v6 = "float_list";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C6D78D00();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v3 + *(v2 + 56);
  *(v5 + v3) = 2;
  *v10 = "int32_list";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v3);
  v12 = v11 + *(v2 + 56);
  *v11 = 3;
  *v12 = "int64_list";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v3);
  v14 = v13 + *(v2 + 56);
  *v13 = 4;
  *v14 = "bytes_list";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v3 + *(v2 + 56);
  *(v5 + 4 * v3) = 5;
  *v15 = "float16_list";
  *(v15 + 8) = 12;
  *(v15 + 16) = 2;
  v9();
  return sub_1C6D78D10();
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        sub_1C6B51750(v5, a1, a2, a3);
      }

      else if (result == 2)
      {
        sub_1C6B51D84(v5, a1, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          sub_1C6B523D4(v5, a1, a2, a3);
          break;
        case 4:
          sub_1C6B52A24(v5, a1, a2, a3);
          break;
        case 5:
          sub_1C6B53074(v5, a1, a2, a3);
          break;
      }
    }
  }

  return result;
}

uint64_t sub_1C6B51750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = a3;
  v53 = a4;
  v51 = a2;
  v54 = a1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v46 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v45 = &v42 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v42 - v14;
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v42 - v23;
  sub_1C6B62540(0, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v32 = &v42 - v31;
  v47 = v5;
  v33 = *(v5 + 56);
  v50 = v4;
  v44 = v33;
  (v33)(&v42 - v31, 1, 1, v4, v30);
  sub_1C6B61A0C(v54, v15, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v43 = v17;
  v34 = (*(v17 + 48))(v15, 1, v16);
  if (v34 == 1)
  {
    sub_1C6B61A8C(v15, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
LABEL_5:
    v35 = v50;
    goto LABEL_6;
  }

  sub_1C6B5F6DC(v15, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  sub_1C6B5F6DC(v24, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    goto LABEL_5;
  }

  sub_1C6B61A8C(v32, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v39 = v45;
  sub_1C6B5F6DC(v20, v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  sub_1C6B5F6DC(v39, v32, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v35 = v50;
  v44(v32, 0, 1, v50);
LABEL_6:
  v36 = v48;
  sub_1C6B5F7C4(qword_1EDCE59B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  v37 = v49;
  sub_1C6D78BB0();
  if (v37)
  {
    return sub_1C6B61A8C(v32, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  }

  sub_1C6B61A0C(v32, v36, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  if ((*(v47 + 48))(v36, 1, v35) == 1)
  {
    sub_1C6B61A8C(v32, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    return sub_1C6B61A8C(v36, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  }

  else
  {
    v40 = v46;
    sub_1C6B5F6DC(v36, v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    if (v34 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6B61A8C(v32, qword_1EDCE5958, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    v41 = v54;
    sub_1C6B61A8C(v54, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v40, v41, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    swift_storeEnumTagMultiPayload();
    return (*(v43 + 56))(v41, 0, 1, v16);
  }
}

uint64_t sub_1C6B51D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6B62540(0, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6B61A0C(v55, v15, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6B61A8C(v15, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v16;
  }

  else
  {
    sub_1C6B5F6DC(v15, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v24, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v35 = v49;
      sub_1C6B61A8C(v49, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      v36 = v46;
      sub_1C6B5F6DC(v20, v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      sub_1C6B5F6DC(v36, v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6B5F7C4(qword_1EDCE58F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6B61A8C(v35, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  }

  sub_1C6B61A0C(v35, v38, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6B61A8C(v35, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    return sub_1C6B61A8C(v38, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  }

  else
  {
    v41 = v45;
    sub_1C6B5F6DC(v38, v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6B61A8C(v35, qword_1EDCE58A0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    v42 = v55;
    sub_1C6B61A8C(v55, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v41, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6B523D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6B62540(0, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6B61A0C(v55, v15, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6B61A8C(v15, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v16;
  }

  else
  {
    sub_1C6B5F6DC(v15, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v24, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v35 = v49;
      sub_1C6B61A8C(v49, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      v36 = v46;
      sub_1C6B5F6DC(v20, v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      sub_1C6B5F6DC(v36, v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6B5F7C4(&qword_1EC1D75E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6B61A8C(v35, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  }

  sub_1C6B61A0C(v35, v38, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6B61A8C(v35, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    return sub_1C6B61A8C(v38, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  }

  else
  {
    v41 = v45;
    sub_1C6B5F6DC(v38, v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6B61A8C(v35, &unk_1EC1D6CC8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    v42 = v55;
    sub_1C6B61A8C(v55, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v41, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6B52A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6B62540(0, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6B61A0C(v55, v15, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6B61A8C(v15, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v16;
  }

  else
  {
    sub_1C6B5F6DC(v15, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v24, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v35 = v49;
      sub_1C6B61A8C(v49, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      v36 = v46;
      sub_1C6B5F6DC(v20, v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      sub_1C6B5F6DC(v36, v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6B5F7C4(qword_1EDCE5A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6B61A8C(v35, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  }

  sub_1C6B61A0C(v35, v38, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6B61A8C(v35, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    return sub_1C6B61A8C(v38, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  }

  else
  {
    v41 = v45;
    sub_1C6B5F6DC(v38, v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6B61A8C(v35, qword_1EDCE5A20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    v42 = v55;
    sub_1C6B61A8C(v55, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v41, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t sub_1C6B53074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  v52 = a2;
  v55 = a1;
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v46 = &v43 - v10;
  v11 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v43 - v23;
  sub_1C6B62540(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, v11);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v48 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28, v29);
  v47 = v5;
  v31 = *(v5 + 56);
  v49 = &v43 - v32;
  v51 = v4;
  v31(v30);
  sub_1C6B61A0C(v55, v15, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v44 = v17;
  v33 = (*(v17 + 48))(v15, 1, v16);
  if (v33 == 1)
  {
    sub_1C6B61A8C(v15, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v16;
  }

  else
  {
    sub_1C6B5F6DC(v15, v24, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v24, v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    v34 = v16;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v35 = v49;
      sub_1C6B61A8C(v49, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v36 = v46;
      sub_1C6B5F6DC(v20, v46, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6B5F6DC(v36, v35, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v37 = v51;
      (v31)(v35, 0, 1, v51);
      goto LABEL_7;
    }

    sub_1C6B62664(v20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  }

  v37 = v51;
  v35 = v49;
LABEL_7:
  v38 = v48;
  sub_1C6B5F7C4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v39 = v50;
  sub_1C6D78BB0();
  if (v39)
  {
    return sub_1C6B61A8C(v35, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  sub_1C6B61A0C(v35, v38, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  if ((*(v47 + 48))(v38, 1, v37) == 1)
  {
    sub_1C6B61A8C(v35, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    return sub_1C6B61A8C(v38, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  else
  {
    v41 = v45;
    sub_1C6B5F6DC(v38, v45, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    if (v33 != 1)
    {
      sub_1C6D78AE0();
    }

    sub_1C6B61A8C(v35, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v42 = v55;
    sub_1C6B61A8C(v55, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    sub_1C6B5F6DC(v41, v42, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    swift_storeEnumTagMultiPayload();
    return (*(v44 + 56))(v42, 0, 1, v34);
  }
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Feature.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v15 - v10;
  sub_1C6B61A0C(v3, &v15 - v10, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v12 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_12;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1C6B53B44(v3, a1, a2, a3);
    }

    else
    {
      sub_1C6B538E0(v3, a1, a2, a3);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1C6B53DAC(v3, a1, a2, a3);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_1C6B54014(v3, a1, a2, a3);
  }

  else
  {
    sub_1C6B5427C(v3, a1, a2, a3);
  }

  result = sub_1C6B62664(v11, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  if (!v4)
  {
LABEL_12:
    type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature(0);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B538E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61A0C(a1, v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6B61A8C(v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C6B5F6DC(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    sub_1C6B5F7C4(qword_1EDCE59B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
    sub_1C6D78CF0();
    return sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList);
  }

  result = sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6B53B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61A0C(a1, v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6B61A8C(v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C6B5F6DC(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    sub_1C6B5F7C4(qword_1EDCE58F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
    sub_1C6D78CF0();
    return sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List);
  }

  result = sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6B53DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61A0C(a1, v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6B61A8C(v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C6B5F6DC(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    sub_1C6B5F7C4(&qword_1EC1D75E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
    sub_1C6D78CF0();
    return sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List);
  }

  result = sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6B54014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61A0C(a1, v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6B61A8C(v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C6B5F6DC(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6B5F7C4(qword_1EDCE5A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
    sub_1C6D78CF0();
    return sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList);
  }

  result = sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6B5427C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  sub_1C6B62540(0, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B61A0C(a1, v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  v13 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_1C6B61A8C(v8, qword_1EDCE5C78, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C6B5F6DC(v8, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6B5F7C4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6D78CF0();
    return sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  }

  result = sub_1C6B62664(v8, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind);
  __break(1u);
  return result;
}

uint64_t sub_1C6B54530@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature.OneOf_Kind(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  return sub_1C6D78A30();
}

uint64_t sub_1C6B545EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C28, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Feature);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B5468C(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(qword_1EDCE5BF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Feature);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B546F8(uint64_t a1, uint64_t a2)
{
  sub_1C6B5F7C4(qword_1EDCE5BF0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Feature, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Feature);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B548D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C20, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_FloatList);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B54978(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(qword_1EDCE59B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_FloatList);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B549E4(uint64_t a1, uint64_t a2)
{
  sub_1C6B5F7C4(qword_1EDCE59B0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_FloatList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_FloatList);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B54B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void))
{
  if (!*(*v5 + 16) || (result = a4(), !v6))
  {
    (a5)(0, a2, a3, a4);
    return sub_1C6D78A20();
  }

  return result;
}

uint64_t sub_1C6B54C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C18, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int32List);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B54D04(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(qword_1EDCE58F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int32List);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B54D70(uint64_t a1, uint64_t a2)
{
  sub_1C6B5F7C4(qword_1EDCE58F0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int32List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int32List);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B54F64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C10, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int64List);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B55004(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(&qword_1EC1D75E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int64List);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B55070(uint64_t a1, uint64_t a2)
{
  sub_1C6B5F7C4(&qword_1EC1D75E0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Int64List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Int64List);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B55190(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v5 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(v4, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C6B552E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C08, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_BytesList);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B55384(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(qword_1EDCE5A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_BytesList);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B553F0(uint64_t a1, uint64_t a2)
{
  sub_1C6B5F7C4(qword_1EDCE5A70, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_BytesList, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_BytesList);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B55484(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6B5556C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C6D78D20();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  sub_1C6B4A290(0);
  sub_1C6B61724(0, &qword_1EDCDF910, MEMORY[0x1E69AADF0], MEMORY[0x1E69E6530]);
  v11 = v10 - 8;
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C6D7E630;
  v14 = v13 + v12 + *(v11 + 56);
  *(v13 + v12) = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *a5;
  v16 = sub_1C6D78D00();
  (*(*(v16 - 8) + 104))(v14, v15, v16);
  return sub_1C6D78D10();
}

uint64_t sub_1C6B5570C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C6D78D20();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C6D78AD0();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C6D78B20();
    }
  }

  return result;
}

uint64_t Com_Apple_News_Algorithms_Proto_Model_Float16List.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2 || *(v5 + 16) == *(v5 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v7)
  {
    if (v5 == v5 >> 32)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_1C6D78C80();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  return sub_1C6D78A20();
}

uint64_t sub_1C6B55928(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C6D7A260();
  a1(0);
  sub_1C6B5F7C4(a2, a3, a4);
  sub_1C6D79510();
  return sub_1C6D7A2B0();
}

uint64_t sub_1C6B55A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C6B5F7C4(&qword_1EC1D6C00, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C6B55AC8@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1C6D78D20();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1C6B55B64(uint64_t a1)
{
  v2 = sub_1C6B5F7C4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C6B55BD0(uint64_t a1, uint64_t a2)
{
  sub_1C6B5F7C4(&qword_1EDCEA770, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, &protocol conformance descriptor for Com_Apple_News_Algorithms_Proto_Model_Float16List);

  return sub_1C6D78C20();
}

uint64_t sub_1C6B55C4C(_BOOL8 *a1, uint64_t *a2, uint64_t a3)
{
  if (!sub_1C6B5E090(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  sub_1C6D78A40();
  sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C6D79560() & 1;
}

uint64_t sub_1C6B55CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C6D7A130() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C6B55D88(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v69 = v2;
  v70 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[5];
    v61 = v5[4];
    *v62 = v8;
    *&v62[16] = v5[6];
    v63 = *(v5 + 112);
    v9 = v5[1];
    v58 = *v5;
    v59 = v9;
    v10 = v5[3];
    *v60 = v5[2];
    *&v60[16] = v10;
    v11 = *v6;
    v12 = v6[1];
    v13 = v6[3];
    v64[2] = v6[2];
    v65 = v13;
    v64[0] = v11;
    v64[1] = v12;
    v14 = v6[4];
    v15 = v6[5];
    v16 = v6[6];
    v68 = *(v6 + 112);
    v67[0] = v15;
    v67[1] = v16;
    v66 = v14;
    v17 = *(&v58 + 1);
    v18 = v63;
    if ((v63 & 0x40) != 0)
    {
      if ((v68 & 0x40) == 0)
      {
        return 0;
      }

      v54 = v58;
      v55 = v59 & 0x1FF;
      *v56 = *(&v59 + 1);
      *&v56[8] = *v60;
      v49 = v64[0];
      v50 = v64[1] & 0x1FF;
      v51 = *(&v64[1] + 8);
      v52 = *(&v64[2] + 1);
      if ((_s19NewsPersonalization0B6ScriptV9AssertionO09ExistenceD0V2eeoiySbAG_AGtFZ_0(&v54, &v49) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v19 = v68;
      if ((v68 & 0x40) != 0)
      {
        return 0;
      }

      if (v58 > 2u)
      {
        if (v58 == 3)
        {
          v20 = 0xE200000000000000;
          v21 = 29804;
        }

        else if (v58 == 4)
        {
          v21 = 6648940;
          v20 = 0xE300000000000000;
        }

        else
        {
          v20 = 0xE200000000000000;
          v21 = 25966;
        }
      }

      else if (v58)
      {
        v20 = 0xE300000000000000;
        v21 = v58 == 1 ? 6648935 : 7106917;
      }

      else
      {
        v20 = 0xE200000000000000;
        v21 = 29799;
      }

      v47 = i;
      if (LOBYTE(v64[0]) > 2u)
      {
        if (LOBYTE(v64[0]) == 3)
        {
          v22 = 0xE200000000000000;
          v23 = 29804;
        }

        else if (LOBYTE(v64[0]) == 4)
        {
          v23 = 6648940;
          v22 = 0xE300000000000000;
        }

        else
        {
          v22 = 0xE200000000000000;
          v23 = 25966;
        }
      }

      else if (LOBYTE(v64[0]))
      {
        v22 = 0xE300000000000000;
        v23 = LOBYTE(v64[0]) == 1 ? 6648935 : 7106917;
      }

      else
      {
        v22 = 0xE200000000000000;
        v23 = 29799;
      }

      v40 = v59;
      v41 = BYTE1(v59);
      v42 = BYTE8(v59);
      v43 = *v60;
      v44 = *&v60[8];
      v36 = WORD3(v59);
      v35 = *(&v59 + 2);
      v34 = *&v62[8];
      v32 = v62[0];
      v33 = *&v62[24];
      v24 = v60[24];
      v48 = *(v64 + 8);
      v39 = v64[2];
      v37 = v65;
      v38 = BYTE8(v64[1]);
      v45 = v66;
      v46 = v61;
      v31 = *(v67 + 8);
      v29 = v67[0];
      v30 = *(&v67[1] + 1);
      v25 = SBYTE8(v65);
      if (v21 == v23 && v20 == v22)
      {
        sub_1C6B6230C(v64, &v54);
        sub_1C6B6230C(&v58, &v54);
      }

      else
      {
        v26 = sub_1C6D7A130();
        sub_1C6B6230C(v64, &v54);
        sub_1C6B6230C(&v58, &v54);

        if ((v26 & 1) == 0)
        {
          goto LABEL_52;
        }
      }

      if (v24 < 0)
      {
        if ((v25 & 0x80000000) == 0 || (*&v54 = v17, BYTE8(v54) = v40, BYTE9(v54) = v41, *(&v54 + 10) = v35, HIWORD(v54) = (v35 | (v36 << 32)) >> 32, LOBYTE(v55) = v42, *v56 = v43, *&v56[8] = v44, v57 = v24 & 0x7F, v49 = v48, LOBYTE(v50) = v38, v51 = v39, v52 = v37, v53 = v25 & 0x7F, (_s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v54, &v49) & 1) == 0))
        {
LABEL_52:
          sub_1C6B62368(v64);
          sub_1C6B62368(&v58);
          return 0;
        }
      }

      else if (v25 < 0 || *&v48 != v17)
      {
        goto LABEL_52;
      }

      if (v18 < 0)
      {
        i = v47;
        if ((v19 & 0x80) == 0)
        {
          goto LABEL_52;
        }

        v54 = v46;
        LOBYTE(v55) = v32;
        *v56 = v34;
        *&v56[16] = v33;
        v57 = v18 & 0x3F;
        v49 = v45;
        LOBYTE(v50) = v29;
        v51 = v31;
        v52 = v30;
        v53 = v19 & 0x3F;
        v27 = _s19NewsPersonalization0B6ScriptV12NumericValueO09AggregateE0V2eeoiySbAG_AGtFZ_0(&v54, &v49);
        sub_1C6B62368(v64);
        sub_1C6B62368(&v58);
        if ((v27 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        i = v47;
        if (v19 < 0)
        {
          goto LABEL_52;
        }

        sub_1C6B62368(v64);
        sub_1C6B62368(&v58);
        if (*&v46 != *&v45)
        {
          return 0;
        }
      }
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 120);
    v5 = (v5 + 120);
  }

  return 1;
}

uint64_t sub_1C6B5623C(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v59 = a2 + 32;
  v60 = result + 32;
  v58 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_148;
    }

    v4 = v60 + 32 * v3;
    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v9 = v59 + 32 * v3;
    v11 = *v9;
    v10 = *(v9 + 8);
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v65 = v6;
    v66 = v10;
    v61 = v3;
    v64 = *(v9 + 16);
    if ((v7 & 0x80) != 0)
    {
      if ((v12 & 0x80000000) == 0)
      {
        return 0;
      }

      v17 = *(v9 + 16);
      sub_1C6B35FD4(v6, v5, v7);

      v18 = v11;
      v19 = v10;
      v20 = v17;
      goto LABEL_31;
    }

    if (v12 < 0)
    {
      return 0;
    }

    if (!v7)
    {
      if (*(v9 + 16))
      {
        return 0;
      }

      if (v6 != v11 || v5 != v10)
      {
        v22 = sub_1C6D7A130();
        sub_1C6B35FD4(v6, v5, 0);

        sub_1C6B35FD4(v11, v10, 0);

        if ((v22 & 1) == 0)
        {
          goto LABEL_145;
        }

        goto LABEL_82;
      }

      sub_1C6B35FD4(v6, v5, 0);

      v18 = v6;
      v19 = v5;
      v20 = 0;
LABEL_31:
      sub_1C6B35FD4(v18, v19, v20);

      goto LABEL_82;
    }

    if (v7 == 1)
    {
      if (v12 != 1)
      {
        return 0;
      }

      v14 = 0x7374726F7073;
      v15 = 0xE600000000000000;
      v16 = 0x7374726F7073;
      switch(v6)
      {
        case 1:
          v15 = 0xE800000000000000;
          v16 = 0x73636974696C6F70;
          break;
        case 2:
          v15 = 0xE400000000000000;
          v16 = 1685024614;
          break;
        case 3:
          v16 = 0x6961747265746E65;
          v15 = 0xED0000746E656D6ELL;
          break;
        case 4:
          v16 = 0x68746C616568;
          break;
        case 5:
          v15 = 0xE700000000000000;
          v16 = 0x7373656E746966;
          break;
        case 6:
          v15 = 0xEA00000000007967;
          v16 = 0x6F6C6F6E68636574;
          break;
        case 7:
          v15 = 0xEA00000000006C6CLL;
          v16 = 0x616274656B736162;
          break;
        case 8:
          v15 = 0xE800000000000000;
          v16 = 0x6C6C6162746F6F66;
          break;
        case 9:
          v15 = 0xE400000000000000;
          v16 = 1718382439;
          break;
        case 10:
          v16 = 0x726563636F73;
          break;
        case 11:
          v15 = 0xE700000000000000;
          v16 = 0x6E6F6968736166;
          break;
        case 12:
          v16 = 0x6C6576617274;
          break;
        default:
          break;
      }

      v37 = 0xE600000000000000;
      switch(*v9)
      {
        case 1u:
          v37 = 0xE800000000000000;
          v14 = 0x73636974696C6F70;
          break;
        case 2u:
          v37 = 0xE400000000000000;
          v14 = 1685024614;
          break;
        case 3u:
          v14 = 0x6961747265746E65;
          v37 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v14 = 0x68746C616568;
          break;
        case 5u:
          v37 = 0xE700000000000000;
          v14 = 0x7373656E746966;
          break;
        case 6u:
          v37 = 0xEA00000000007967;
          v14 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v37 = 0xEA00000000006C6CLL;
          v14 = 0x616274656B736162;
          break;
        case 8u:
          v37 = 0xE800000000000000;
          v14 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v37 = 0xE400000000000000;
          v14 = 1718382439;
          break;
        case 0xAu:
          v14 = 0x726563636F73;
          break;
        case 0xBu:
          v37 = 0xE700000000000000;
          v14 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v14 = 0x6C6576617274;
          break;
        default:
          break;
      }

      if (v16 == v14 && v15 == v37)
      {
        sub_1C6B35FD4(v6, v5, 1);

        v30 = v11;
        v31 = v66;
        v32 = 1;
        goto LABEL_79;
      }

      v33 = sub_1C6D7A130();
      sub_1C6B35FD4(v6, v5, 1);

      v34 = v11;
      v35 = v66;
      v36 = 1;
    }

    else
    {
      if (v12 != 2)
      {
        return 0;
      }

      if (v6 > 1u)
      {
        if (v6 == 2)
        {
          v23 = 1313887045;
        }

        else
        {
          v23 = 1330659671;
        }

        v24 = 0xE400000000000000;
      }

      else
      {
        if (v6)
        {
          v23 = 0x696C6F505F4E4E43;
        }

        else
        {
          v23 = 5131843;
        }

        if (v6)
        {
          v24 = 0xEC00000073636974;
        }

        else
        {
          v24 = 0xE300000000000000;
        }
      }

      v25 = 1313887045;
      if (v11 != 2)
      {
        v25 = 1330659671;
      }

      v26 = 5131843;
      if (v11)
      {
        v26 = 0x696C6F505F4E4E43;
      }

      v27 = 0xE300000000000000;
      if (v11)
      {
        v27 = 0xEC00000073636974;
      }

      if (v11 <= 1u)
      {
        v28 = v26;
      }

      else
      {
        v28 = v25;
      }

      if (v11 <= 1u)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0xE400000000000000;
      }

      if (v23 == v28 && v24 == v29)
      {
        sub_1C6B35FD4(v6, v5, 2);

        v30 = v11;
        v31 = v66;
        v32 = 2;
LABEL_79:
        sub_1C6B35FD4(v30, v31, v32);

        goto LABEL_82;
      }

      v33 = sub_1C6D7A130();
      sub_1C6B35FD4(v6, v5, 2);

      v34 = v11;
      v35 = v66;
      v36 = 2;
    }

    sub_1C6B35FD4(v34, v35, v36);

    if ((v33 & 1) == 0)
    {
LABEL_145:
      sub_1C6B360B4(v11, v66, v7);

      v53 = v6;
      v54 = v5;
LABEL_146:
      sub_1C6B360B4(v53, v54, v7);
LABEL_143:

      return 0;
    }

LABEL_82:
    v63 = v5;
    v38 = *(v8 + 16);
    if (v38 != *(v13 + 16))
    {
      sub_1C6B360B4(v11, v66, v64);

      v53 = v6;
      v54 = v63;
      goto LABEL_146;
    }

    v62 = v7;
    if (v38 && v8 != v13)
    {
      break;
    }

LABEL_88:
    v3 = v61 + 1;
    sub_1C6B360B4(v11, v66, v64);

    sub_1C6B360B4(v65, v63, v62);

    result = 1;
    v2 = v58;
    if (v61 + 1 == v58)
    {
      return result;
    }
  }

  v40 = 0;
  v69 = v8;
  v67 = v11;
  v68 = v13;
  while (v38)
  {
    v41 = v8 + v40;
    v43 = *(v8 + v40 + 40);
    v42 = *(v8 + v40 + 48);
    v44 = *(v8 + v40 + 56);
    v45 = *(v8 + v40 + 64);
    v46 = v13 + v40;
    v48 = *(v13 + v40 + 40);
    v47 = *(v13 + v40 + 48);
    v49 = *(v13 + v40 + 56);
    v50 = *(v46 + 64);
    if (v43)
    {
      if (!v48)
      {
        goto LABEL_142;
      }

      result = *(v41 + 32);
      if (result != *(v46 + 32) || v43 != v48)
      {
        result = sub_1C6D7A130();
        if ((result & 1) == 0)
        {
          goto LABEL_142;
        }
      }
    }

    else if (v48)
    {
      goto LABEL_142;
    }

    v52 = v45 >> 5;
    if (v45 >> 5 > 2)
    {
      if (v52 == 3)
      {
        if ((v50 & 0xE0) != 0x60)
        {
          goto LABEL_142;
        }

        if (!v42)
        {
LABEL_126:
          if (v47)
          {
            goto LABEL_142;
          }

          result = sub_1C6B62230(0, v49, v50);
          if (v44 != v49)
          {
            goto LABEL_142;
          }

          goto LABEL_93;
        }

        if (!v47)
        {
          goto LABEL_142;
        }

        goto LABEL_91;
      }

      if (v52 == 4)
      {
        if ((v50 & 0xE0) != 0x80)
        {
          goto LABEL_142;
        }

        if (v42)
        {
          if (!v47)
          {
            goto LABEL_142;
          }

          sub_1C6B62230(v42, v44, v45);

          sub_1C6B62230(v47, v49, v50);
          sub_1C6B62230(v47, v49, v50);
          sub_1C6B62230(v42, v44, v45);
          v56 = sub_1C6B56EAC(v42, v47);
          sub_1C6B62288(v47, v49, v50);
          sub_1C6B62288(v42, v44, v45);

          sub_1C6B62288(v47, v49, v50);

          result = sub_1C6B62288(v42, v44, v45);
          if ((v56 & 1) == 0)
          {
            goto LABEL_142;
          }
        }

        else
        {
          if (v47)
          {
            goto LABEL_142;
          }

          result = sub_1C6B62230(0, v49, v50);
        }

        if (*&v44 != *&v49)
        {
          goto LABEL_142;
        }
      }

      else
      {
        if ((v50 & 0xE0) != 0xA0)
        {
          goto LABEL_142;
        }

        sub_1C6B62230(v42, v44, v45);

        sub_1C6B62230(v47, v49, v50);
        sub_1C6B62230(v47, v49, v50);
        sub_1C6B62230(v42, v44, v45);
        v57 = sub_1C6B5794C(v42, v47);
        sub_1C6B62288(v47, v49, v50);
        sub_1C6B62288(v42, v44, v45);

        sub_1C6B62288(v47, v49, v50);

        result = sub_1C6B62288(v42, v44, v45);
        if ((v57 & 1) == 0)
        {
          goto LABEL_142;
        }
      }
    }

    else
    {
      if (v52)
      {
        if (v52 == 1)
        {
          if ((v50 & 0xE0) != 0x20)
          {
            goto LABEL_142;
          }
        }

        else if ((v50 & 0xE0) != 0x40)
        {
          goto LABEL_142;
        }

LABEL_125:
        if (!v42)
        {
          goto LABEL_126;
        }

        if (!v47)
        {
          sub_1C6B62230(0, v49, v50);
LABEL_142:
          sub_1C6B360B4(v67, v66, v64);

          sub_1C6B360B4(v65, v63, v62);
          goto LABEL_143;
        }

LABEL_91:

        sub_1C6B62230(v42, v44, v45);

        sub_1C6B62230(v47, v49, v50);
        sub_1C6B62230(v47, v49, v50);
        sub_1C6B62230(v42, v44, v45);
        v55 = sub_1C6B56EAC(v42, v47);
        sub_1C6B62288(v47, v49, v50);
        sub_1C6B62288(v42, v44, v45);

        sub_1C6B62288(v47, v49, v50);

        result = sub_1C6B62288(v42, v44, v45);
        if ((v55 & 1) == 0 || v44 != v49)
        {
          goto LABEL_142;
        }

        goto LABEL_93;
      }

      if (v50 >= 0x20)
      {
        goto LABEL_142;
      }

      if (v45)
      {
        if ((v50 & 1) == 0)
        {
          goto LABEL_142;
        }

        goto LABEL_125;
      }

      if ((v50 & 1) != 0 || v42 != v47)
      {
        goto LABEL_142;
      }
    }

LABEL_93:
    v40 += 40;
    --v38;
    v8 = v69;
    v11 = v67;
    v13 = v68;
    if (!v38)
    {
      goto LABEL_88;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_1C6B56CFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 3);
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      v10 = *(v3 - 3);
      v9 = *(v3 - 2);
      v11 = *(v3 - 1);
      v12 = *v3;
      if (v5)
      {
        if (!v10)
        {
          return 0;
        }

        if (*(v4 - 4) != *(v3 - 4) || v5 != v10)
        {
          v7 = *(v4 - 1);
          if ((sub_1C6D7A130() & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v10)
      {
        return 0;
      }

      v16 = v9;
      v19 = v6;
      v20 = v7;
      v21 = v8;
      v17 = v11;
      v18 = v12;

      sub_1C6B62230(v6, v7, v8);

      sub_1C6B62230(v9, v11, v12);
      sub_1C6B62230(v6, v7, v8);
      sub_1C6B62230(v9, v11, v12);
      v15 = _s19NewsPersonalization0B6ScriptV11InteractionO2eeoiySbAE_AEtFZ_0(&v19, &v16);
      sub_1C6B62288(v16, v17, v18);
      sub_1C6B62288(v19, v20, v21);

      sub_1C6B62288(v9, v11, v12);

      sub_1C6B62288(v6, v7, v8);
      if ((v15 & 1) == 0)
      {
        return 0;
      }

      v4 += 40;
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C6B56EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v9 = *(i - 2);
      v10 = *i;
      v8 = v10;
      v12 = *(v3 - 2);
      v11 = *(v3 - 1);
      v7 = *v3;
      if (v10 < 0)
      {
        break;
      }

      if (v7 < 0)
      {
        return 0;
      }

      if (!*i)
      {
        if (*v3)
        {
          return 0;
        }

LABEL_41:
        if ((v9 != v12 || *(i - 1) != v11) && (sub_1C6D7A130() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_7;
      }

      v45 = *(i - 1);
      if (v10 != 1)
      {
        if (v7 != 2)
        {
          return 0;
        }

        v19 = 1330659671;
        if (*(i - 2) == 2)
        {
          v19 = 1313887045;
        }

        v20 = 0x696C6F505F4E4E43;
        if (!*(i - 2))
        {
          v20 = 5131843;
        }

        v21 = 0xEC00000073636974;
        if (!*(i - 2))
        {
          v21 = 0xE300000000000000;
        }

        if (*(i - 2) <= 1u)
        {
          v22 = v20;
        }

        else
        {
          v22 = v19;
        }

        if (*(i - 2) <= 1u)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0xE400000000000000;
        }

        if (*(v3 - 2) > 1u)
        {
          if (*(v3 - 2) == 2)
          {
            v31 = 1313887045;
          }

          else
          {
            v31 = 1330659671;
          }

          v24 = 0xE400000000000000;
          if (v22 != v31)
          {
LABEL_75:
            v33 = sub_1C6D7A130();
            sub_1C6B622D4(v12, v11, 2);
            sub_1C6B622D4(v9, v45, 2);

            sub_1C6B622F0(v12, v11, 2);
            sub_1C6B622F0(v9, v45, 2);
            if ((v33 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_7;
          }
        }

        else if (*(v3 - 2))
        {
          v24 = 0xEC00000073636974;
          if (v22 != 0x696C6F505F4E4E43)
          {
            goto LABEL_75;
          }
        }

        else
        {
          v24 = 0xE300000000000000;
          if (v22 != 5131843)
          {
            goto LABEL_75;
          }
        }

        if (v23 == v24)
        {
          v5 = *(v3 - 2);
          v6 = *(i - 2);
          LOBYTE(v7) = 2;
          v8 = 2;
          goto LABEL_6;
        }

        goto LABEL_75;
      }

      if (v7 != 1)
      {
        return 0;
      }

      v13 = 0xE600000000000000;
      v14 = 0x7374726F7073;
      switch(*(i - 2))
      {
        case 1u:
          v13 = 0xE800000000000000;
          v14 = 0x73636974696C6F70;
          break;
        case 2u:
          v13 = 0xE400000000000000;
          v14 = 1685024614;
          break;
        case 3u:
          v14 = 0x6961747265746E65;
          v13 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v14 = 0x68746C616568;
          break;
        case 5u:
          v13 = 0xE700000000000000;
          v14 = 0x7373656E746966;
          break;
        case 6u:
          v13 = 0xEA00000000007967;
          v14 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v13 = 0xEA00000000006C6CLL;
          v14 = 0x616274656B736162;
          break;
        case 8u:
          v13 = 0xE800000000000000;
          v14 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v13 = 0xE400000000000000;
          v14 = 1718382439;
          break;
        case 0xAu:
          v14 = 0x726563636F73;
          break;
        case 0xBu:
          v13 = 0xE700000000000000;
          v14 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v14 = 0x6C6576617274;
          break;
        default:
          break;
      }

      v37 = 0xE600000000000000;
      v38 = 0x7374726F7073;
      switch(*(v3 - 2))
      {
        case 1u:
          v37 = 0xE800000000000000;
          v38 = 0x73636974696C6F70;
          break;
        case 2u:
          v37 = 0xE400000000000000;
          v38 = 1685024614;
          break;
        case 3u:
          v38 = 0x6961747265746E65;
          v37 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v38 = 0x68746C616568;
          break;
        case 5u:
          v37 = 0xE700000000000000;
          v38 = 0x7373656E746966;
          break;
        case 6u:
          v37 = 0xEA00000000007967;
          v38 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v37 = 0xEA00000000006C6CLL;
          v38 = 0x616274656B736162;
          break;
        case 8u:
          v37 = 0xE800000000000000;
          v38 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v37 = 0xE400000000000000;
          v38 = 1718382439;
          break;
        case 0xAu:
          v38 = 0x726563636F73;
          break;
        case 0xBu:
          v37 = 0xE700000000000000;
          v38 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v38 = 0x6C6576617274;
          break;
        default:
          break;
      }

      if (v14 == v38 && v13 == v37)
      {
        v5 = *(v3 - 2);
        v6 = *(i - 2);
        LOBYTE(v7) = 1;
        v8 = 1;
LABEL_6:
        sub_1C6B622D4(v5, v11, v7);
        sub_1C6B622D4(v6, v45, v8);

        sub_1C6B622F0(v5, v11, v7);
        sub_1C6B622F0(v6, v45, v8);
        goto LABEL_7;
      }

      v39 = sub_1C6D7A130();
      sub_1C6B622D4(v12, v11, 1);
      sub_1C6B622D4(v9, v45, 1);

      sub_1C6B622F0(v12, v11, 1);
      sub_1C6B622F0(v9, v45, 1);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    if ((v7 & 0x80000000) == 0)
    {
      return 0;
    }

    v15 = v7 & 0x7F;
    v16 = v10 & 0x7F;
    if (v16)
    {
      v45 = *(i - 1);
      if (v16 == 1)
      {
        if (v15 != 1)
        {
          return 0;
        }

        v17 = 0xE600000000000000;
        v18 = 0x7374726F7073;
        switch(*(i - 2))
        {
          case 1u:
            v17 = 0xE800000000000000;
            v18 = 0x73636974696C6F70;
            break;
          case 2u:
            v17 = 0xE400000000000000;
            v18 = 1685024614;
            break;
          case 3u:
            v18 = 0x6961747265746E65;
            v17 = 0xED0000746E656D6ELL;
            break;
          case 4u:
            v18 = 0x68746C616568;
            break;
          case 5u:
            v17 = 0xE700000000000000;
            v18 = 0x7373656E746966;
            break;
          case 6u:
            v17 = 0xEA00000000007967;
            v18 = 0x6F6C6F6E68636574;
            break;
          case 7u:
            v17 = 0xEA00000000006C6CLL;
            v18 = 0x616274656B736162;
            break;
          case 8u:
            v17 = 0xE800000000000000;
            v18 = 0x6C6C6162746F6F66;
            break;
          case 9u:
            v17 = 0xE400000000000000;
            v18 = 1718382439;
            break;
          case 0xAu:
            v18 = 0x726563636F73;
            break;
          case 0xBu:
            v17 = 0xE700000000000000;
            v18 = 0x6E6F6968736166;
            break;
          case 0xCu:
            v18 = 0x6C6576617274;
            break;
          default:
            break;
        }

        v40 = 0xE600000000000000;
        v41 = 0x7374726F7073;
        switch(*(v3 - 2))
        {
          case 1u:
            v40 = 0xE800000000000000;
            v41 = 0x73636974696C6F70;
            break;
          case 2u:
            v40 = 0xE400000000000000;
            v41 = 1685024614;
            break;
          case 3u:
            v41 = 0x6961747265746E65;
            v40 = 0xED0000746E656D6ELL;
            break;
          case 4u:
            v41 = 0x68746C616568;
            break;
          case 5u:
            v40 = 0xE700000000000000;
            v41 = 0x7373656E746966;
            break;
          case 6u:
            v40 = 0xEA00000000007967;
            v41 = 0x6F6C6F6E68636574;
            break;
          case 7u:
            v40 = 0xEA00000000006C6CLL;
            v41 = 0x616274656B736162;
            break;
          case 8u:
            v40 = 0xE800000000000000;
            v41 = 0x6C6C6162746F6F66;
            break;
          case 9u:
            v40 = 0xE400000000000000;
            v41 = 1718382439;
            break;
          case 0xAu:
            v41 = 0x726563636F73;
            break;
          case 0xBu:
            v40 = 0xE700000000000000;
            v41 = 0x6E6F6968736166;
            break;
          case 0xCu:
            v41 = 0x6C6576617274;
            break;
          default:
            break;
        }

        if (v18 == v41 && v17 == v40)
        {
          v5 = *(v3 - 2);
          v6 = *(i - 2);
          goto LABEL_6;
        }

        v44 = sub_1C6D7A130();
        sub_1C6B622D4(v12, v11, v7);
        sub_1C6B622D4(v9, v45, v8);

        sub_1C6B622F0(v12, v11, v7);
        v34 = v9;
        v35 = v45;
        v36 = v8;
        goto LABEL_137;
      }

      if (v15 != 2)
      {
        return 0;
      }

      v25 = 1330659671;
      if (*(i - 2) == 2)
      {
        v25 = 1313887045;
      }

      v26 = 0x696C6F505F4E4E43;
      if (!*(i - 2))
      {
        v26 = 5131843;
      }

      v27 = 0xEC00000073636974;
      if (!*(i - 2))
      {
        v27 = 0xE300000000000000;
      }

      if (*(i - 2) <= 1u)
      {
        v28 = v26;
      }

      else
      {
        v28 = v25;
      }

      if (*(i - 2) <= 1u)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0xE400000000000000;
      }

      v43 = v8;
      if (*(v3 - 2) > 1u)
      {
        if (*(v3 - 2) == 2)
        {
          v32 = 1313887045;
        }

        else
        {
          v32 = 1330659671;
        }

        v30 = 0xE400000000000000;
        if (v28 != v32)
        {
          goto LABEL_80;
        }
      }

      else if (*(v3 - 2))
      {
        v30 = 0xEC00000073636974;
        if (v28 != 0x696C6F505F4E4E43)
        {
LABEL_80:
          v44 = sub_1C6D7A130();
          sub_1C6B622D4(v12, v11, v7);
          sub_1C6B622D4(v9, v45, v43);

          sub_1C6B622F0(v12, v11, v7);
          v34 = v9;
          v35 = v45;
          v36 = v43;
LABEL_137:
          sub_1C6B622F0(v34, v35, v36);
          if ((v44 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_7;
        }
      }

      else
      {
        v30 = 0xE300000000000000;
        if (v28 != 5131843)
        {
          goto LABEL_80;
        }
      }

      if (v29 == v30)
      {
        v5 = *(v3 - 2);
        v6 = *(i - 2);
        v8 = v43;
        goto LABEL_6;
      }

      goto LABEL_80;
    }

    if ((v7 & 0x7F) != 0)
    {
      return 0;
    }

    goto LABEL_41;
  }

  return 1;
}

uint64_t sub_1C6B5794C(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v43 = a2 + 32;
  v44 = result + 32;
  v42 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_167;
    }

    v4 = (v44 + 24 * v3);
    v5 = (v43 + 24 * v3);
    v52 = *v4;
    v6 = *(*v4 + 16);
    v51 = *v5;
    if (v6 != *(*v5 + 16))
    {
      return 0;
    }

    v45 = v3;
    v48 = v5[1];
    v49 = v4[1];
    v46 = *(v4 + 16);
    v47 = *(v5 + 16);
    if (v6)
    {
      break;
    }

LABEL_126:
    if (v49 != v48)
    {
LABEL_163:

      return 0;
    }

    if (v46 > 2)
    {
      v35 = v47;
      if (v46 == 3)
      {
        v36 = 0xE900000000000066;
        v37 = 0x6569724264616572;
        if (v47 <= 2)
        {
          goto LABEL_142;
        }
      }

      else if (v46 == 4)
      {
        v36 = 0xE800000000000000;
        v37 = 0x676E6F4C64616572;
        if (v47 <= 2)
        {
          goto LABEL_142;
        }
      }

      else
      {
        v36 = 0xE400000000000000;
        v37 = 1702257011;
        if (v47 <= 2)
        {
LABEL_142:
          if (v35)
          {
            if (v35 == 1)
            {
              v38 = 0xE400000000000000;
              if (v37 != 1701538156)
              {
                goto LABEL_159;
              }
            }

            else
            {
              v38 = 0xE700000000000000;
              if (v37 != 0x656B696C736964)
              {
                goto LABEL_159;
              }
            }
          }

          else
          {
            v38 = 0xE700000000000000;
            if (v37 != 0x746E6573657270)
            {
              goto LABEL_159;
            }
          }

          goto LABEL_157;
        }
      }
    }

    else
    {
      v35 = v47;
      if (v46)
      {
        if (v46 == 1)
        {
          v36 = 0xE400000000000000;
          v37 = 1701538156;
          if (v47 <= 2)
          {
            goto LABEL_142;
          }
        }

        else
        {
          v36 = 0xE700000000000000;
          v37 = 0x656B696C736964;
          if (v47 <= 2)
          {
            goto LABEL_142;
          }
        }
      }

      else
      {
        v36 = 0xE700000000000000;
        v37 = 0x746E6573657270;
        if (v47 <= 2)
        {
          goto LABEL_142;
        }
      }
    }

    if (v35 == 3)
    {
      v38 = 0xE900000000000066;
      if (v37 != 0x6569724264616572)
      {
        goto LABEL_159;
      }
    }

    else if (v35 == 4)
    {
      v38 = 0xE800000000000000;
      if (v37 != 0x676E6F4C64616572)
      {
        goto LABEL_159;
      }
    }

    else
    {
      v38 = 0xE400000000000000;
      if (v37 != 1702257011)
      {
        goto LABEL_159;
      }
    }

LABEL_157:
    if (v36 == v38)
    {

      goto LABEL_160;
    }

LABEL_159:
    v39 = sub_1C6D7A130();

    if ((v39 & 1) == 0)
    {
      return 0;
    }

LABEL_160:
    v3 = v45 + 1;
    result = 1;
    v2 = v42;
    if (v45 + 1 == v42)
    {
      return result;
    }
  }

  v50 = *(*v4 + 16);

  v7 = v50;
  if (v52 == result)
  {
    goto LABEL_126;
  }

  v8 = 0;
  v9 = (v51 + 48);
  v10 = (v52 + 48);
  while (v8 < *(v52 + 16))
  {
    if (v8 >= *(v51 + 16))
    {
      goto LABEL_166;
    }

    v11 = *(v10 - 2);
    v12 = *(v10 - 1);
    v13 = *v10;
    v14 = *(v9 - 2);
    v15 = *(v9 - 1);
    v16 = *v9;
    if ((v13 & 0x80) != 0)
    {
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_163;
      }

      v19 = v16 & 0x7F;
      if ((v13 & 0x7F) == 0)
      {
        if ((v16 & 0x7F) != 0)
        {
          goto LABEL_163;
        }

LABEL_35:
        if (v11 != v14 || v12 != v15)
        {
          result = sub_1C6D7A130();
          v7 = v50;
          if ((result & 1) == 0)
          {
            goto LABEL_163;
          }
        }

        goto LABEL_12;
      }

      if ((v13 & 0x7F) != 1)
      {
        if (v19 != 2)
        {
          goto LABEL_163;
        }

        if (*(v10 - 2) > 1u)
        {
          v22 = 0xE400000000000000;
          if (*(v10 - 2) == 2)
          {
            v23 = 1313887045;
          }

          else
          {
            v23 = 1330659671;
          }
        }

        else if (*(v10 - 2))
        {
          v23 = 0x696C6F505F4E4E43;
          v22 = 0xEC00000073636974;
        }

        else
        {
          v22 = 0xE300000000000000;
          v23 = 5131843;
        }

        v24 = *(v9 - 2);
        if (v24 <= 1)
        {
          if (*(v9 - 2))
          {
LABEL_57:
            v25 = 0xEC00000073636974;
            if (v23 != 0x696C6F505F4E4E43)
            {
              goto LABEL_64;
            }

            goto LABEL_63;
          }

LABEL_51:
          v25 = 0xE300000000000000;
          if (v23 != 5131843)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

LABEL_59:
        v25 = 0xE400000000000000;
        if (v24 == 2)
        {
          if (v23 != 1313887045)
          {
LABEL_64:
            v26 = sub_1C6D7A130();

            v7 = v50;
            if ((v26 & 1) == 0)
            {
              goto LABEL_163;
            }

            goto LABEL_12;
          }
        }

        else if (v23 != 1330659671)
        {
          goto LABEL_64;
        }

LABEL_63:
        if (v22 == v25)
        {

          goto LABEL_11;
        }

        goto LABEL_64;
      }

      if (v19 != 1)
      {
        goto LABEL_163;
      }

      v20 = 0xE600000000000000;
      v41 = *(v10 - 1);
      v21 = 0x7374726F7073;
      switch(*(v10 - 2))
      {
        case 1u:
          v20 = 0xE800000000000000;
          v21 = 0x73636974696C6F70;
          break;
        case 2u:
          v20 = 0xE400000000000000;
          v21 = 1685024614;
          break;
        case 3u:
          v21 = 0x6961747265746E65;
          v20 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v21 = 0x68746C616568;
          break;
        case 5u:
          v20 = 0xE700000000000000;
          v21 = 0x7373656E746966;
          break;
        case 6u:
          v20 = 0xEA00000000007967;
          v21 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v20 = 0xEA00000000006C6CLL;
          v21 = 0x616274656B736162;
          break;
        case 8u:
          v20 = 0xE800000000000000;
          v21 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v20 = 0xE400000000000000;
          v21 = 1718382439;
          break;
        case 0xAu:
          v21 = 0x726563636F73;
          break;
        case 0xBu:
          v20 = 0xE700000000000000;
          v21 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v21 = 0x6C6576617274;
          break;
        default:
          break;
      }

      v33 = 0xE600000000000000;
      v34 = 0x7374726F7073;
      switch(*(v9 - 2))
      {
        case 1u:
          v33 = 0xE800000000000000;
          v34 = 0x73636974696C6F70;
          break;
        case 2u:
          v33 = 0xE400000000000000;
          v34 = 1685024614;
          break;
        case 3u:
          v34 = 0x6961747265746E65;
          v33 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v34 = 0x68746C616568;
          break;
        case 5u:
          v33 = 0xE700000000000000;
          v34 = 0x7373656E746966;
          break;
        case 6u:
          v33 = 0xEA00000000007967;
          v34 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v33 = 0xEA00000000006C6CLL;
          v34 = 0x616274656B736162;
          break;
        case 8u:
          v33 = 0xE800000000000000;
          v34 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v33 = 0xE400000000000000;
          v34 = 1718382439;
          break;
        case 0xAu:
          v34 = 0x726563636F73;
          break;
        case 0xBu:
          v33 = 0xE700000000000000;
          v34 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v34 = 0x6C6576617274;
          break;
        default:
          break;
      }

      if (v21 == v34 && v20 == v33)
      {
        sub_1C6B622D4(v14, v15, v16);
        sub_1C6B622D4(v11, v41, v13);

        sub_1C6B622F0(v14, v15, v16);
        v29 = v11;
        v30 = v41;
        v31 = v13;
LABEL_122:
        result = sub_1C6B622F0(v29, v30, v31);
LABEL_11:
        v7 = v50;
        goto LABEL_12;
      }

      v40 = sub_1C6D7A130();
      sub_1C6B622D4(v14, v15, v16);
      sub_1C6B622D4(v11, v41, v13);

      sub_1C6B622F0(v14, v15, v16);
      result = sub_1C6B622F0(v11, v41, v13);
      v7 = v50;
      if ((v40 & 1) == 0)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (v16 < 0)
      {
        goto LABEL_163;
      }

      if (!*v10)
      {
        if (*v9)
        {
          goto LABEL_163;
        }

        goto LABEL_35;
      }

      if (v13 != 1)
      {
        if (v16 != 2)
        {
          goto LABEL_163;
        }

        if (*(v10 - 2) > 1u)
        {
          v22 = 0xE400000000000000;
          if (*(v10 - 2) == 2)
          {
            v23 = 1313887045;
          }

          else
          {
            v23 = 1330659671;
          }
        }

        else if (*(v10 - 2))
        {
          v23 = 0x696C6F505F4E4E43;
          v22 = 0xEC00000073636974;
        }

        else
        {
          v22 = 0xE300000000000000;
          v23 = 5131843;
        }

        v24 = *(v9 - 2);
        if (v24 <= 1)
        {
          if (*(v9 - 2))
          {
            goto LABEL_57;
          }

          goto LABEL_51;
        }

        goto LABEL_59;
      }

      if (v16 != 1)
      {
        goto LABEL_163;
      }

      v17 = 0xE600000000000000;
      v18 = 0x7374726F7073;
      switch(*(v10 - 2))
      {
        case 1u:
          v17 = 0xE800000000000000;
          v18 = 0x73636974696C6F70;
          break;
        case 2u:
          v17 = 0xE400000000000000;
          v18 = 1685024614;
          break;
        case 3u:
          v18 = 0x6961747265746E65;
          v17 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v18 = 0x68746C616568;
          break;
        case 5u:
          v17 = 0xE700000000000000;
          v18 = 0x7373656E746966;
          break;
        case 6u:
          v17 = 0xEA00000000007967;
          v18 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v17 = 0xEA00000000006C6CLL;
          v18 = 0x616274656B736162;
          break;
        case 8u:
          v17 = 0xE800000000000000;
          v18 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v17 = 0xE400000000000000;
          v18 = 1718382439;
          break;
        case 0xAu:
          v18 = 0x726563636F73;
          break;
        case 0xBu:
          v17 = 0xE700000000000000;
          v18 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v18 = 0x6C6576617274;
          break;
        default:
          break;
      }

      v27 = 0xE600000000000000;
      v28 = 0x7374726F7073;
      switch(*(v9 - 2))
      {
        case 1u:
          v27 = 0xE800000000000000;
          v28 = 0x73636974696C6F70;
          break;
        case 2u:
          v27 = 0xE400000000000000;
          v28 = 1685024614;
          break;
        case 3u:
          v28 = 0x6961747265746E65;
          v27 = 0xED0000746E656D6ELL;
          break;
        case 4u:
          v28 = 0x68746C616568;
          break;
        case 5u:
          v27 = 0xE700000000000000;
          v28 = 0x7373656E746966;
          break;
        case 6u:
          v27 = 0xEA00000000007967;
          v28 = 0x6F6C6F6E68636574;
          break;
        case 7u:
          v27 = 0xEA00000000006C6CLL;
          v28 = 0x616274656B736162;
          break;
        case 8u:
          v27 = 0xE800000000000000;
          v28 = 0x6C6C6162746F6F66;
          break;
        case 9u:
          v27 = 0xE400000000000000;
          v28 = 1718382439;
          break;
        case 0xAu:
          v28 = 0x726563636F73;
          break;
        case 0xBu:
          v27 = 0xE700000000000000;
          v28 = 0x6E6F6968736166;
          break;
        case 0xCu:
          v28 = 0x6C6576617274;
          break;
        default:
          break;
      }

      if (v18 == v28 && v17 == v27)
      {
        sub_1C6B622D4(*(v9 - 2), *(v9 - 1), 1);
        sub_1C6B622D4(v11, v12, 1);

        sub_1C6B622F0(v14, v15, 1);
        v29 = v11;
        v30 = v12;
        v31 = 1;
        goto LABEL_122;
      }

      v32 = sub_1C6D7A130();
      sub_1C6B622D4(v14, v15, 1);
      sub_1C6B622D4(v11, v12, 1);

      sub_1C6B622F0(v14, v15, 1);
      result = sub_1C6B622F0(v11, v12, 1);
      v7 = v50;
      if ((v32 & 1) == 0)
      {
        goto LABEL_163;
      }
    }

LABEL_12:
    ++v8;
    v9 += 24;
    v10 += 24;
    if (v7 == v8)
    {
      goto LABEL_126;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
  return result;
}

uint64_t sub_1C6B58600(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v22 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_20:
    v20 = 0;
    return v20 & 1;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      sub_1C6B5F654(v15, v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      sub_1C6B5F654(v16, v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      v18 = *v12 == *v7 && v12[1] == v7[1];
      if (!v18 && (sub_1C6D7A130() & 1) == 0)
      {
        break;
      }

      v19 = v12[2] == v7[2] && v12[3] == v7[3];
      if (!v19 && (sub_1C6D7A130() & 1) == 0)
      {
        break;
      }

      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v20 = sub_1C6D79560();
      sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
      if (v20)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
    sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_StringSub);
    goto LABEL_20;
  }

  v20 = 1;
  return v20 & 1;
}

uint64_t sub_1C6B58884(uint64_t a1, uint64_t a2)
{
  v164[3] = *MEMORY[0x1E69E9840];
  v157 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List(0);
  v4 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v5);
  v151 = (&v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v152 = (&v129 - v10);
  sub_1C6B61994(0, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
  v155 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v159 = &v129 - v13;
  v140 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec(0);
  v154 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140, v14);
  v142 = &v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B62540(0, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec, v7);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v137 = &v129 - v18;
  sub_1C6B61994(0, &qword_1EC1D6BB8, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  v139 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v143 = &v129 - v21;
  v156 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec(0);
  v22 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156, v23);
  v146 = &v129 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6B62540(0, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec, v7);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v147 = &v129 - v27;
  sub_1C6B61994(0, &qword_1EC1D6BC8, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  v149 = v28;
  MEMORY[0x1EEE9AC00](v28, v29);
  v150 = &v129 - v30;
  v145 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken(0);
  v31 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145, v32);
  v161 = (&v129 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C6B62540(0, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken, v7);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v160 = (&v129 - v36);
  sub_1C6B61994(0, &qword_1EC1D6BD8, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  v158 = v37;
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v129 - v39;
  v162 = type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding(0);
  MEMORY[0x1EEE9AC00](v162, v41);
  v43 = &v129 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44, v45);
  v48 = &v129 - v47;
  v49 = *(a1 + 16);
  if (v49 != *(a2 + 16))
  {
    goto LABEL_102;
  }

  if (!v49 || a1 == a2)
  {
    v127 = 1;
    return v127 & 1;
  }

  v132 = 0;
  v50 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v51 = a1 + v50;
  v141 = (v31 + 48);
  v52 = a2 + v50;
  v148 = (v22 + 48);
  v131 = (v154 + 48);
  v138 = (v4 + 48);
  v136 = *(v46 + 72);
  v53 = v145;
  v144 = v43;
  v134 = &v129 - v47;
  v133 = v40;
  while (1)
  {
    v154 = v51;
    sub_1C6B5F654(v51, v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    v153 = v52;
    sub_1C6B5F654(v52, v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    v54 = *(v162 + 20);
    v55 = *(v158 + 48);
    sub_1C6B61A0C(&v48[v54], v40, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    sub_1C6B61A0C(&v43[v54], &v40[v55], &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    v56 = *v141;
    if ((*v141)(v40, 1, v53) == 1)
    {
      if (v56(&v40[v55], 1, v53) != 1)
      {
        goto LABEL_89;
      }

      sub_1C6B61A8C(v40, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
      goto LABEL_29;
    }

    v135 = v49;
    v57 = v43;
    v58 = v160;
    sub_1C6B61A0C(v40, v160, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    if (v56(&v40[v55], 1, v53) == 1)
    {
      sub_1C6B62664(v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
LABEL_89:
      sub_1C6B624E4(v40, &qword_1EC1D6BD8, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
      goto LABEL_101;
    }

    v59 = v161;
    sub_1C6B5F6DC(&v40[v55], v161, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    if ((*v58 != *v59 || v58[1] != v59[1]) && (sub_1C6D7A130() & 1) == 0)
    {
      goto LABEL_100;
    }

    v60 = *(v53 + 24);
    v61 = *(v149 + 48);
    v62 = v58 + v60;
    v63 = v150;
    sub_1C6B61A0C(v62, v150, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    sub_1C6B61A0C(v161 + v60, v63 + v61, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    v64 = *v148;
    v65 = v156;
    if ((*v148)(v63, 1, v156) == 1)
    {
      v66 = v64(v63 + v61, 1, v65) == 1;
      v67 = v63;
      if (!v66)
      {
        goto LABEL_93;
      }

      sub_1C6B61A8C(v63, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
      goto LABEL_28;
    }

    v68 = v147;
    sub_1C6B61A0C(v63, v147, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    if (v64(v63 + v61, 1, v65) == 1)
    {
      sub_1C6B62664(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
      v67 = v63;
LABEL_93:
      sub_1C6B624E4(v67, &qword_1EC1D6BC8, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
      goto LABEL_99;
    }

    v69 = v146;
    sub_1C6B5F6DC(v63 + v61, v146, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    if (*v68 != *v69)
    {
      goto LABEL_98;
    }

    v70 = *(v156 + 24);
    v71 = *(v139 + 48);
    v72 = v143;
    sub_1C6B61A0C(&v68[v70], v143, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    sub_1C6B61A0C(&v69[v70], v72 + v71, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    v73 = *v131;
    v74 = v140;
    if ((*v131)(v72, 1, v140) != 1)
    {
      break;
    }

    if (v73(v72 + v71, 1, v74) != 1)
    {
      goto LABEL_96;
    }

    sub_1C6B61A8C(v72, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    v57 = v144;
    v69 = v146;
    v68 = v147;
LABEL_27:
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v79 = sub_1C6D79560();
    sub_1C6B62664(v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    sub_1C6B62664(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    sub_1C6B61A8C(v150, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
    v58 = v160;
    v53 = v145;
    if ((v79 & 1) == 0)
    {
      goto LABEL_100;
    }

LABEL_28:
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v80 = v161;
    v81 = sub_1C6D79560();
    sub_1C6B62664(v80, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    sub_1C6B62664(v160, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    v40 = v133;
    sub_1C6B61A8C(v133, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
    v43 = v57;
    v49 = v135;
    if ((v81 & 1) == 0)
    {
      goto LABEL_101;
    }

LABEL_29:
    v82 = v40;
    v83 = *(v162 + 24);
    v84 = *(v155 + 48);
    v85 = v159;
    sub_1C6B61A0C(&v48[v83], v159, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    sub_1C6B61A0C(&v43[v83], v85 + v84, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v86 = *v138;
    v87 = v157;
    if ((*v138)(v85, 1, v157) != 1)
    {
      v88 = v152;
      sub_1C6B61A0C(v85, v152, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      if (v86(v85 + v84, 1, v87) == 1)
      {
        sub_1C6B62664(v88, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v48 = v134;
LABEL_91:
        sub_1C6B624E4(v85, &qword_1EC1D6BA8, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
        v43 = v144;
        goto LABEL_101;
      }

      v89 = v151;
      sub_1C6B5F6DC(v85 + v84, v151, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v90 = *v88;
      v91 = v88[1];
      v92 = *v89;
      v93 = v89[1];
      v94 = v91 >> 62;
      v95 = v93 >> 62;
      if (v91 >> 62 == 3)
      {
        v96 = 0;
        if (v90)
        {
          v40 = v82;
        }

        else
        {
          v40 = v82;
          if (v91 == 0xC000000000000000)
          {
            v43 = v144;
            if (v93 >> 62 != 3)
            {
              goto LABEL_45;
            }

            v96 = 0;
            if (v92 || v93 != 0xC000000000000000)
            {
              goto LABEL_45;
            }

            goto LABEL_82;
          }
        }

LABEL_55:
        v43 = v144;
        if (v95 > 1)
        {
          goto LABEL_56;
        }

LABEL_46:
        if (v95)
        {
          LODWORD(v100) = HIDWORD(v92) - v92;
          if (__OFSUB__(HIDWORD(v92), v92))
          {
            goto LABEL_105;
          }

          v100 = v100;
        }

        else
        {
          v100 = BYTE6(v93);
        }
      }

      else
      {
        if (v94 <= 1)
        {
          v40 = v82;
          if (!v94)
          {
            v96 = BYTE6(v91);
            goto LABEL_55;
          }

          LODWORD(v96) = HIDWORD(v90) - v90;
          v43 = v144;
          if (__OFSUB__(HIDWORD(v90), v90))
          {
            goto LABEL_107;
          }

          v96 = v96;
          if (v95 > 1)
          {
            goto LABEL_56;
          }

          goto LABEL_46;
        }

        v40 = v82;
        if (v94 != 2)
        {
          v96 = 0;
          goto LABEL_55;
        }

        v98 = *(v90 + 16);
        v97 = *(v90 + 24);
        v99 = __OFSUB__(v97, v98);
        v96 = v97 - v98;
        v43 = v144;
        if (v99)
        {
          goto LABEL_106;
        }

LABEL_45:
        if (v95 <= 1)
        {
          goto LABEL_46;
        }

LABEL_56:
        if (v95 != 2)
        {
          if (v96)
          {
            goto LABEL_87;
          }

          goto LABEL_82;
        }

        v102 = *(v92 + 16);
        v101 = *(v92 + 24);
        v99 = __OFSUB__(v101, v102);
        v100 = v101 - v102;
        if (v99)
        {
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
        }
      }

      if (v96 != v100)
      {
        goto LABEL_87;
      }

      if (v96 >= 1)
      {
        if (v94 > 1)
        {
          if (v94 == 2)
          {
            v106 = *(v90 + 16);
            v130 = *(v90 + 24);
            v135 = v92;
            sub_1C6B1CD10(v92, v93);
            v107 = sub_1C6D75BF0();
            if (v107)
            {
              v108 = v106;
              v109 = v107;
              v110 = sub_1C6D75C20();
              if (__OFSUB__(v108, v110))
              {
                goto LABEL_110;
              }

              v111 = v108;
              v129 = v108 - v110 + v109;
              v112 = v130;
            }

            else
            {
              v129 = 0;
              v112 = v130;
              v111 = v106;
            }

            if (__OFSUB__(v112, v111))
            {
              goto LABEL_109;
            }

            sub_1C6D75C10();
            v120 = v135;
            v121 = v132;
            sub_1C6B5DAE8(v129, v135, v93, v164);
            v132 = v121;
            sub_1C6B1C9F0(v120, v93);
            if ((v164[0] & 1) == 0)
            {
              goto LABEL_87;
            }

            goto LABEL_82;
          }

          memset(v164, 0, 14);
          v118 = v92;
          sub_1C6B1CD10(v92, v93);
          v119 = v132;
          sub_1C6B5DAE8(v164, v118, v93, &v163);
          v132 = v119;
          v105 = v118;
        }

        else
        {
          if (v94)
          {
            v113 = v90;
            v114 = v90 >> 32;
            v130 = v114 - v113;
            if (v114 < v113)
            {
              goto LABEL_108;
            }

            v135 = v92;
            sub_1C6B1CD10(v92, v93);
            v115 = sub_1C6D75BF0();
            if (v115)
            {
              v116 = v115;
              v117 = sub_1C6D75C20();
              if (__OFSUB__(v113, v117))
              {
                goto LABEL_111;
              }

              v129 = v113 - v117 + v116;
            }

            else
            {
              v129 = 0;
            }

            sub_1C6D75C10();
            v122 = v135;
            v123 = v132;
            sub_1C6B5DAE8(v129, v135, v93, v164);
            v132 = v123;
            sub_1C6B1C9F0(v122, v93);
            if ((v164[0] & 1) == 0)
            {
LABEL_87:
              sub_1C6B62664(v151, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
              sub_1C6B62664(v152, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
              sub_1C6B61A8C(v159, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
              v48 = v134;
              goto LABEL_101;
            }

            goto LABEL_82;
          }

          v164[0] = v90;
          LOWORD(v164[1]) = v91;
          BYTE2(v164[1]) = BYTE2(v91);
          BYTE3(v164[1]) = BYTE3(v91);
          BYTE4(v164[1]) = BYTE4(v91);
          BYTE5(v164[1]) = BYTE5(v91);
          v103 = v92;
          sub_1C6B1CD10(v92, v93);
          v104 = v132;
          sub_1C6B5DAE8(v164, v103, v93, &v163);
          v132 = v104;
          v105 = v103;
        }

        sub_1C6B1C9F0(v105, v93);
        if (!v163)
        {
          goto LABEL_87;
        }
      }

LABEL_82:
      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v124 = v151;
      v125 = v152;
      v126 = sub_1C6D79560();
      sub_1C6B62664(v124, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6B62664(v125, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      sub_1C6B61A8C(v159, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
      v48 = v134;
      if ((v126 & 1) == 0)
      {
        goto LABEL_101;
      }

      goto LABEL_83;
    }

    if (v86(v85 + v84, 1, v87) != 1)
    {
      goto LABEL_91;
    }

    sub_1C6B61A8C(v85, qword_1EDCEA710, type metadata accessor for Com_Apple_News_Algorithms_Proto_Model_Float16List);
    v40 = v82;
    v43 = v144;
LABEL_83:
    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v127 = sub_1C6D79560();
    sub_1C6B62664(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    sub_1C6B62664(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
    if (v127)
    {
      v52 = v153 + v136;
      v51 = v154 + v136;
      if (--v49)
      {
        continue;
      }
    }

    return v127 & 1;
  }

  v75 = v137;
  sub_1C6B61A0C(v72, v137, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  if (v73(v72 + v71, 1, v74) != 1)
  {
    v76 = v142;
    sub_1C6B5F6DC(v72 + v71, v142, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    if (*v75 != *v76 || (*(v75 + 1) != *(v142 + 1) || *(v75 + 2) != *(v142 + 2)) && (sub_1C6D7A130() & 1) == 0)
    {
      sub_1C6B62664(v142, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      sub_1C6B62664(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      sub_1C6B61A8C(v143, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
      v57 = v144;
      v48 = v134;
      goto LABEL_97;
    }

    sub_1C6D78A40();
    sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v77 = v142;
    v78 = sub_1C6D79560();
    sub_1C6B62664(v77, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    sub_1C6B62664(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    sub_1C6B61A8C(v143, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
    v57 = v144;
    v48 = v134;
    v69 = v146;
    v68 = v147;
    if ((v78 & 1) == 0)
    {
      goto LABEL_98;
    }

    goto LABEL_27;
  }

  sub_1C6B62664(v75, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  v48 = v134;
LABEL_96:
  sub_1C6B624E4(v72, &qword_1EC1D6BB8, &qword_1EC1D6BB0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TokenNormalizationSpec);
  v57 = v144;
LABEL_97:
  v69 = v146;
  v68 = v147;
LABEL_98:
  sub_1C6B62664(v69, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6B62664(v68, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
  sub_1C6B61A8C(v150, &qword_1EC1D6BC0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_TargetTokenSpec);
LABEL_99:
  v58 = v160;
LABEL_100:
  sub_1C6B62664(v161, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6B62664(v58, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  sub_1C6B61A8C(v133, &qword_1EC1D6BD0, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabToken);
  v43 = v57;
LABEL_101:
  sub_1C6B62664(v43, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
  sub_1C6B62664(v48, type metadata accessor for Com_Apple_News_Algorithms_Proto_Embedding_CollabTokenEmbedding);
LABEL_102:
  v127 = 0;
  return v127 & 1;
}

uint64_t sub_1C6B5A06C(uint64_t a1, uint64_t a2)
{
  v81 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event(0);
  v4 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v5);
  v72 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1E69E6720];
  sub_1C6B62540(0, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v67 - v10;
  sub_1C6B61994(0, &unk_1EC1D6C40, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
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
  v82 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent(0);
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
    result = sub_1C6B5F654(v36, v33, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    if (!v34)
    {
      break;
    }

    v39 = v84;
    sub_1C6B5F654(v37, v84, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
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
        sub_1C6B62664(v84, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
        sub_1C6B62664(v83, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
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
    sub_1C6B61A0C(v83, v46, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    sub_1C6B61A0C(v84, v46 + v53, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    v54 = *v48;
    if ((*v48)(v46, 1, v81) == 1)
    {
      if (v54(v46 + v53, 1, v81) != 1)
      {
        goto LABEL_24;
      }

      sub_1C6B61A8C(v46, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
    }

    else
    {
      sub_1C6B61A0C(v46, v47, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      if (v54(v46 + v53, 1, v81) == 1)
      {
        sub_1C6B62664(v47, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
LABEL_24:
        v63 = &unk_1EC1D6C40;
        v64 = qword_1EDCE5660;
        v65 = type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event;
        v66 = v46;
        goto LABEL_25;
      }

      v55 = v72;
      sub_1C6B5F6DC(v46 + v53, v72, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      v56 = static Com_Apple_News_Personalization_SessionEvent.OneOf_Event.== infix(_:_:)(v80, v55);
      v57 = v55;
      v58 = v80;
      sub_1C6B62664(v57, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6B62664(v58, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
      sub_1C6B61A8C(v46, qword_1EDCE5660, type metadata accessor for Com_Apple_News_Personalization_SessionEvent.OneOf_Event);
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
    sub_1C6B62664(v60, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
    sub_1C6B62664(v59, type metadata accessor for Com_Apple_News_Personalization_SessionEvent);
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

uint64_t sub_1C6B5A9B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8, v9);
  v12 = (&v20 - v11);
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
LABEL_13:
    v18 = 0;
    return v18 & 1;
  }

  if (v13 && a1 != a2)
  {
    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      sub_1C6B5F654(v15, v12, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
      sub_1C6B5F654(v16, v7, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
      if (*v12 != *v7 || v12[1] != v7[1] || v12[2] != v7[2])
      {
        break;
      }

      sub_1C6D78A40();
      sub_1C6B5F7C4(&qword_1EC1D6AF0, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v18 = sub_1C6D79560();
      sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
      sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
      if (v18)
      {
        v16 += v17;
        v15 += v17;
        if (--v13)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1C6B62664(v7, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
    sub_1C6B62664(v12, type metadata accessor for Com_Apple_News_Personalization_VerticalScrollData);
    goto LABEL_13;
  }

  v18 = 1;
  return v18 & 1;
}