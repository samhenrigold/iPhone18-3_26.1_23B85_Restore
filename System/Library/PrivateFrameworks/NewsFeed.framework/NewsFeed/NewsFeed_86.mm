uint64_t sub_1D62ED9D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = 32;
    v33 = result;
    while (v7 < *(a3 + 16))
    {
      v10 = *(a3 + v9 + 112);
      v11 = *(a3 + v9 + 144);
      v52 = *(a3 + v9 + 128);
      v53 = v11;
      v12 = *(a3 + v9 + 48);
      v13 = *(a3 + v9 + 80);
      v48 = *(a3 + v9 + 64);
      v49 = v13;
      v14 = *(a3 + v9 + 80);
      v15 = *(a3 + v9 + 112);
      v50 = *(a3 + v9 + 96);
      v51 = v15;
      v16 = *(a3 + v9 + 16);
      v45[0] = *(a3 + v9);
      v45[1] = v16;
      v17 = *(a3 + v9 + 48);
      v19 = *(a3 + v9);
      v18 = *(a3 + v9 + 16);
      v46 = *(a3 + v9 + 32);
      v47 = v17;
      v20 = *(a3 + v9 + 144);
      v63 = v52;
      v64 = v20;
      v59 = v48;
      v60 = v14;
      v61 = v50;
      v62 = v10;
      v55 = v19;
      v56 = v18;
      v54 = *(a3 + v9 + 160);
      v65 = *(a3 + v9 + 160);
      v57 = v46;
      v58 = v12;
      sub_1D5ECF030(v45, &v34);
      v21 = v6(&v55);
      if (v3)
      {
        v42 = v63;
        v43 = v64;
        v44 = v65;
        v38 = v59;
        v39 = v60;
        v40 = v61;
        v41 = v62;
        v34 = v55;
        v35 = v56;
        v36 = v57;
        v37 = v58;
        sub_1D5ECF08C(&v34);

        goto LABEL_15;
      }

      if (v21)
      {
        v42 = v63;
        v43 = v64;
        v44 = v65;
        v38 = v59;
        v39 = v60;
        v40 = v61;
        v41 = v62;
        v34 = v55;
        v35 = v56;
        v36 = v57;
        v37 = v58;
        result = swift_isUniquelyReferenced_nonNull_native();
        v66 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D6998B18(0, *(v8 + 16) + 1, 1);
          v8 = v66;
        }

        v23 = *(v8 + 16);
        v22 = *(v8 + 24);
        if (v23 >= v22 >> 1)
        {
          result = sub_1D6998B18((v22 > 1), v23 + 1, 1);
          v8 = v66;
        }

        *(v8 + 16) = v23 + 1;
        v24 = v8 + 168 * v23;
        v25 = v34;
        v26 = v36;
        *(v24 + 48) = v35;
        *(v24 + 64) = v26;
        *(v24 + 32) = v25;
        v27 = v37;
        v28 = v38;
        v29 = v40;
        *(v24 + 112) = v39;
        *(v24 + 128) = v29;
        *(v24 + 80) = v27;
        *(v24 + 96) = v28;
        v30 = v41;
        v31 = v42;
        v32 = v43;
        *(v24 + 192) = v44;
        *(v24 + 160) = v31;
        *(v24 + 176) = v32;
        *(v24 + 144) = v30;
        v6 = v33;
      }

      else
      {
        v42 = v63;
        v43 = v64;
        v44 = v65;
        v38 = v59;
        v39 = v60;
        v40 = v61;
        v41 = v62;
        v34 = v55;
        v35 = v56;
        v36 = v57;
        v37 = v58;
        result = sub_1D5ECF08C(&v34);
      }

      ++v7;
      v9 += 168;
      if (v5 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

void sub_1D62EDC68(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FormatDerivedDataBinderResult(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, type metadata accessor for FormatDerivedDataBinderResult);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatDerivedDataBinderResult);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, type metadata accessor for FormatDerivedDataBinderResult);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6998CA8(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D6998CA8((v20 > 1), v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, type metadata accessor for FormatDerivedDataBinderResult);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, type metadata accessor for FormatDerivedDataBinderResult);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_1D62EDEF4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v22 = *(a3 + 16);
  if (v22)
  {
    v6 = result;
    v7 = 0;
    v8 = (a3 + 48);
    v9 = MEMORY[0x1E69E7CC0];
    v20 = result;
    while (v7 < *(v5 + 16))
    {
      v10 = *v8;
      v11 = *(v8 - 1);
      v23 = *(v8 - 2);
      v24 = v11;
      v25 = v10;

      sub_1D5C07390(v11);
      v12 = v6(&v23);
      if (v4)
      {
        v19 = v24;

        sub_1D5C08648(v19);

        goto LABEL_15;
      }

      v14 = v23;
      v13 = v24;
      if (v12)
      {
        v15 = v25;
        result = swift_isUniquelyReferenced_nonNull_native();
        v26 = v9;
        if ((result & 1) == 0)
        {
          result = sub_1D6998F40(0, *(v9 + 16) + 1, 1);
          v9 = v26;
        }

        v17 = *(v9 + 16);
        v16 = *(v9 + 24);
        if (v17 >= v16 >> 1)
        {
          result = sub_1D6998F40((v16 > 1), v17 + 1, 1);
          v9 = v26;
        }

        *(v9 + 16) = v17 + 1;
        v18 = (v9 + 24 * v17);
        v18[4] = v14;
        v18[5] = v13;
        v18[6] = v15;
        v5 = a3;
        v6 = v20;
      }

      else
      {

        result = sub_1D5C08648(v13);
      }

      ++v7;
      v8 += 3;
      if (v22 == v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v9;
  }

  return result;
}

void sub_1D62EE09C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeedItem(0);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      sub_1D5BD86D4(a3 + v16 + v17 * v14, v13, type metadata accessor for FeedItem);
      v18 = a1(v13);
      if (v3)
      {
        sub_1D5BCF630(v13, type metadata accessor for FeedItem);

        goto LABEL_15;
      }

      if (v18)
      {
        sub_1D5BE2F1C(v13, v25, type metadata accessor for FeedItem);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D69992E8(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D69992E8((v20 > 1), v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        sub_1D5BE2F1C(v25, v15 + v16 + v21 * v17, type metadata accessor for FeedItem);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        sub_1D5BCF630(v13, type metadata accessor for FeedItem);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_1D62EE328(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v19 = *(a3 + 16);
  if (v19)
  {
    v5 = 0;
    v6 = (a3 + 56);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v9 = *(v6 - 3);
      v8 = *(v6 - 2);
      v10 = *(v6 - 1);
      v11 = *v6;
      v21[0] = v9;
      v21[1] = v8;
      v21[2] = v10;
      v22 = v11;

      v12 = a1(v21);
      if (v3)
      {

        goto LABEL_15;
      }

      if (v12)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D699A0FC(0, *(v7 + 16) + 1, 1);
          v7 = v23;
        }

        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          sub_1D699A0FC((v14 > 1), v15 + 1, 1);
          v16 = v15 + 1;
          v7 = v23;
        }

        *(v7 + 16) = v16;
        v17 = v7 + 32 * v15;
        *(v17 + 32) = v9;
        *(v17 + 40) = v8;
        *(v17 + 48) = v10;
        *(v17 + 56) = v11;
        v4 = a3;
      }

      else
      {
      }

      ++v5;
      v6 += 32;
      if (v19 == v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void *sub_1D62EE4C0(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1D7263BFC();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1DA6FB460](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1D7263E9C();
          sub_1D7263EDC();
          v5 = v14;
          sub_1D7263EEC();
          v3 = &v18;
          sub_1D7263EAC();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

Swift::Int __swiftcall GroupLayoutBindingContext.count(for:)(NewsFeed::FeedItemTraits a1)
{
  v2 = *a1.rawValue;
  v3 = *(v1 + *(type metadata accessor for GroupLayoutBindingContext(0) + 56));
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v10 = 0;
  v11 = 0;
  v20 = v3 + 64;
  v21 = v3;
  while (v7)
  {
LABEL_11:
    result = *(*(v3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v7)))));
    v15 = *(result + 16);
    if (v15)
    {
      v22 = v11;
      v16 = result + 32;

      v12 = 0;
      while (1)
      {
        sub_1D5B68374(v16, v24);
        v17 = v25;
        v18 = v26;
        __swift_project_boxed_opaque_existential_1(v24, v25);
        result = (*(v18 + 24))(&v23, v17, v18);
        v19 = (v2 & ~v23) == 0;
        v13 = __OFADD__(v12, v19);
        v12 += v19;
        if (v13)
        {
          break;
        }

        __swift_destroy_boxed_opaque_existential_1(v24);
        v16 += 40;
        if (!--v15)
        {

          v4 = v20;
          v3 = v21;
          v11 = v22;
          goto LABEL_5;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

    v12 = 0;
LABEL_5:
    v7 &= v7 - 1;
    v13 = __OFADD__(v11, v12);
    v11 += v12;
    if (v13)
    {
      goto LABEL_19;
    }
  }

  while (1)
  {
    v14 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return v11;
    }

    v7 = *(v4 + 8 * v14);
    ++v10;
    if (v7)
    {
      v10 = v14;
      goto LABEL_11;
    }
  }

LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void GroupLayoutBindingContext.unbindAll<A>(_:name:sortedBy:withTraits:slotIdentifier:peekBinding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = v10;
  v37 = a8;
  v38 = *a5;
  v39 = a4;

  sub_1D61A578C(a2, a3, &v40);
  v14 = v40;
  v15 = v41;
  v17 = v42;
  v16 = v43;
  v18 = type metadata accessor for GroupLayoutBindingContext(0);
  if (*(*&v11[*(v18 + 56)] + 16) && (v19 = v18, sub_1D5BCF83C(v14, v15, v17, v16), (v20 & 1) != 0) && (v21 = sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType), , v36 = v21, v22 = sub_1D72641BC(), v23 = , v22))
  {
    v33 = v17;
    v34 = v14;
    v35 = v32;
    v40 = v22;
    MEMORY[0x1EEE9AC00](v23, v24);
    v25 = sub_1D72627FC();
    v38 = v22;

    swift_getWitnessTable();
    v32[1] = v25;
    v26 = sub_1D7263E7C();
    v27 = sub_1D62F78BC(v39, v11, v26);

    v28 = *&v11[*(v19 + 72)];
    v29 = *&v11[*(v19 + 76)];
    if (__OFSUB__(v28, v29))
    {
      __break(1u);
    }

    else
    {
      sub_1D62F7928(v27, v28 - v29, a9, a10);

      v40 = v38;
      MEMORY[0x1EEE9AC00](v38, v30);

      sub_1D7263E7C();
      v40 = v34;
      v41 = v15;
      v42 = v33;
      v43 = v16;

      v31 = sub_1D7263F8C();

      sub_1D5BDACA8(&v40, v31);
    }
  }

  else
  {

    sub_1D726275C();
  }
}

void GroupLayoutBindingContext.unbind<A, B>(_:ofType:name:sortedBy:withTraits:slotIdentifier:peekBinding:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v15 = v14;
  v16 = v13;
  v49 = a7;
  v50 = a8;
  v48 = a5;
  v51 = *a6;
  v52 = a1;

  sub_1D61A578C(a3, a4, &v55);
  v59 = v56;
  v19 = v58;
  v53 = v55;
  v54 = v57;
  v20 = type metadata accessor for GroupLayoutBindingContext(0);
  if (!*(*&v13[*(v20 + 56)] + 16) || (v21 = v20, sub_1D5BCF83C(v53, v59, v54, v19), (v22 & 1) == 0) || (v23 = sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType), , v44 = v23, v24 = sub_1D72641BC(), v25 = , !v24))
  {
    v55 = 0;
    if (sub_1D726251C())
    {

      sub_1D726275C();
      return;
    }

    v35 = sub_1D726250C();
    if (*(v35 + 16))
    {
      goto LABEL_12;
    }

    __break(1u);
    goto LABEL_20;
  }

  v45 = v19;
  v43 = &v42;
  v55 = v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v47 = v15;
  sub_1D72627FC();

  swift_getWitnessTable();
  v46 = v24;
  v27 = v47;
  v28 = sub_1D7263E7C();
  v47 = v27;
  v29 = sub_1D62F78BC(v48, v16, v28);

  v30 = *&v16[*(v21 + 72)];
  v31 = *&v16[*(v21 + 76)];
  if (__OFSUB__(v30, v31))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  LODWORD(v43) = a9;
  v48 = v29;
  sub_1D62F7928(v29, v30 - v31, a10, a12);
  v32 = v52;
  v34 = sub_1D62F7B14(v52, v33, v46, a10, a11, a12, a13);

  if (v34)
  {

    v55 = v53;
    v56 = v59;
    v57 = v54;
    v58 = v45;
    if ((v43 & 1) == 0)
    {
    }

LABEL_16:
    v41 = sub_1D7263F8C();

    sub_1D5BDACA8(&v55, v41);

    return;
  }

  v40 = sub_1D62F7B14(v32, v48, v46, a10, a11, a12, a13);

  if (v40)
  {
    v55 = v53;
    v56 = v59;
    v57 = v54;
    v58 = v45;
    if ((v43 & 1) == 0)
    {
    }

    goto LABEL_16;
  }

  v35 = sub_1D726250C();
  if (*(v35 + 16))
  {
    v19 = v45;
LABEL_12:
    v36 = *(v35 + 32);

    sub_1D5ED8048();
    swift_allocError();
    v37 = v59;
    *v38 = v53;
    *(v38 + 8) = v37;
    *(v38 + 16) = v54;
    *(v38 + 24) = v19;
    *(v38 + 32) = v51;
    *(v38 + 40) = v36;
    v39 = v50;
    *(v38 + 48) = v49;
    *(v38 + 56) = v39;
    *(v38 + 64) = 0;
    swift_willThrow();

    return;
  }

LABEL_21:
  __break(1u);
}

void GroupLayoutBindingContext.unbind<A>(_:name:sortedBy:withTraits:requireTraitsWhenMatching:slotIdentifier:peekBinding:)(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, _BYTE *a11, char *a12)
{
  v13 = v12;
  v79 = a7;
  v68 = a6;
  v69 = a4;
  v67 = a9;
  v18 = sub_1D726393C();
  v65 = *(v18 - 8);
  v66 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v70 = &v61 - v20;
  v74 = *a5;

  v71 = a12;
  sub_1D61A578C(a2, a3, &v75);
  v22 = v75;
  v21 = v76;
  v23 = v77;
  v24 = v78;
  v25 = type metadata accessor for GroupLayoutBindingContext(0);
  v26 = *(v25 + 56);
  v73 = v13;
  v27 = *(v13 + v26);
  if (*(v27 + 16))
  {
    v28 = v25;
    v29 = sub_1D5BCF83C(v22, v21, v23, v24);
    if (v30)
    {
      if (*(*(*(v27 + 56) + 8 * v29) + 16))
      {
        v63 = v23;
        v64 = v21;

        v32 = a8;
        v33 = a8;
        v34 = v31;
        v35 = v72;
        sub_1D5BF08EC(v31, v79, v33);
        if (v35)
        {

LABEL_6:

          return;
        }

        v72 = v34;
        sub_1D5B49474(0, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
        v37 = sub_1D72641BC();

        if (v37)
        {
          v62 = v24;
          v75 = v37;
          sub_1D72627FC();
          swift_getWitnessTable();
          v38 = sub_1D7262CCC();
          v39 = v79;
          if ((v38 & 1) == 0)
          {
            v75 = v74;
            v44 = v70;
            v45 = v71;
            sub_1D62F744C(v37, v69, &v75, v68 & 1, a11, v71, v70);

            v46 = *(a11 - 1);
            v47 = (*(v46 + 48))(v44, 1, a11);
            v48 = v62;
            if (v47 != 1)
            {
              v51 = v67;
              (*(v46 + 32))(v67, v44, a11);
              v52 = (*(v45 + 3))(&v75, a11, v45);
              if ((v75 & 0x1000) != 0)
              {
                v54 = *(v28 + 76);
                v55 = *(v73 + v54);
                v56 = __OFADD__(v55, 1);
                v57 = v55 + 1;
                if (v56)
                {
                  __break(1u);
                  return;
                }

                *(v73 + v54) = v57;
              }

              if (a10)
              {
                v59 = v63;
                v58 = v64;
                v60 = v72;
              }

              else
              {
                MEMORY[0x1EEE9AC00](v52, v53);
                *(&v61 - 4) = a11;
                *(&v61 - 3) = v45;
                *(&v61 - 2) = v51;
                v60 = sub_1D5BF5F6C(sub_1D62F9024, (&v61 - 6), v72);
                v59 = v63;
                v58 = v64;
              }

              v75 = v22;
              v76 = v58;
              v77 = v59;
              v78 = v62;
              sub_1D5BDACA8(&v75, v60);

              goto LABEL_6;
            }

            (*(v65 + 8))(v44, v66);
            sub_1D5ED8048();
            swift_allocError();
            v49 = v63;
            v50 = v64;
            *v41 = v22;
            *(v41 + 8) = v50;
            *(v41 + 16) = v49;
            *(v41 + 24) = v48;
            *(v41 + 32) = v74;
            *(v41 + 40) = 1;
            *(v41 + 48) = v79;
            goto LABEL_15;
          }

          v24 = v62;
        }

        else
        {

          v39 = v79;
        }

        v40 = v74;
        sub_1D5ED8048();
        swift_allocError();
        v42 = v63;
        v43 = v64;
        *v41 = v22;
        *(v41 + 8) = v43;
        *(v41 + 16) = v42;
        *(v41 + 24) = v24;
        *(v41 + 32) = v40;
        *(v41 + 40) = 1;
        *(v41 + 48) = v39;
LABEL_15:
        *(v41 + 56) = v32;
        *(v41 + 64) = 0;
        swift_willThrow();
        goto LABEL_8;
      }
    }
  }

  sub_1D5ED8048();
  swift_allocError();
  *v36 = v22;
  *(v36 + 8) = v21;
  *(v36 + 16) = v23;
  *(v36 + 24) = v24;
  *(v36 + 32) = v74;
  *(v36 + 40) = 1;
  *(v36 + 48) = v79;
  *(v36 + 56) = a8;
  *(v36 + 64) = 0;
  swift_willThrow();
LABEL_8:
}

uint64_t sub_1D62EF50C()
{
  v1 = v0;
  v55 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v55, v2);
  v4 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = (&v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v56, v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1E69E7CC0];
  v12 = *(v0 + 64);
  if (!*(v12 + 16) || (v13 = sub_1D5B69D90(0x6373654464656546, 0xEE00726F74706972), (v14 & 1) == 0) || (sub_1D5B68374(*(v12 + 56) + 40 * v13, &v57), sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType), (swift_dynamicCast() & 1) == 0) || (v15 = v69[0]) == 0 || (v16 = [v69[0] backingTag], v15, !v16))
  {
    v18 = MEMORY[0x1E69E7CC0];
    if (!*(v12 + 16))
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  v17 = swift_unknownObjectRetain();
  MEMORY[0x1DA6F9CE0](v17);
  if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  swift_unknownObjectRelease();
  v18 = v71;
  if (*(v12 + 16))
  {
LABEL_11:
    v19 = sub_1D5B69D90(0x756F724764656546, 0xEC00000067615470);
    if (v20)
    {
      sub_1D5B68374(*(v12 + 56) + 40 * v19, &v57);
      sub_1D5B49474(0, qword_1EDF431A0, &protocol descriptor for FeedGroupItemType);
      if (swift_dynamicCast())
      {
        if (v69[0])
        {
          v21 = v69[1];
          v22 = swift_unknownObjectRetain();
          sub_1D5F587AC(v22, v21);
          v23 = swift_unknownObjectRetain();
          MEMORY[0x1DA6F9CE0](v23);
          if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D726272C();
          }

          sub_1D726278C();
          swift_unknownObjectRelease();
          v18 = v71;
        }
      }
    }
  }

LABEL_17:
  v24 = *(v1 + *(type metadata accessor for GroupLayoutBindingContext(0) + 60));
  v25 = *(v24 + 16);
  if (v25)
  {
    v26 = v24 + 32;
    v53 = v4;
    v54 = v8;
    do
    {
      sub_1D5BD03B0(v26, v69);
      sub_1D5B68374(&v70, &v57);
      sub_1D5BD03E8(v69);
      sub_1D6818590(&v57, v11);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 13)
      {
        switch(EnumCaseMultiPayload)
        {
          case 14:
            v37 = *(v11 + 11);
            v66 = *(v11 + 10);
            v67 = v37;
            v68 = *(v11 + 12);
            v38 = *(v11 + 7);
            v63 = *(v11 + 6);
            v64[0] = v38;
            v39 = *(v11 + 9);
            v64[1] = *(v11 + 8);
            v65 = v39;
            v40 = *(v11 + 3);
            v59 = *(v11 + 2);
            v60 = v40;
            v41 = *(v11 + 5);
            v61 = *(v11 + 4);
            v62 = v41;
            v42 = *(v11 + 1);
            v57 = *v11;
            v58 = v42;
            v43 = [*(&v40 + 1) puzzleType];
            MEMORY[0x1DA6F9CE0]();
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v8 = v54;
            }

            sub_1D726278C();
            v18 = v71;
            sub_1D5F2DF58(&v57);
            goto LABEL_21;
          case 15:
            v49 = *(v11 + 3);
            v50 = *(v11 + 4);
            v51 = swift_unknownObjectRetain();
            MEMORY[0x1DA6F9CE0](v51);
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
            }

            sub_1D726278C();
            sub_1D5BF6680(v49, v50);
            swift_unknownObjectRelease();

            v18 = v71;
            v4 = v53;
            v8 = v54;
            goto LABEL_21;
          case 16:
            sub_1D5BE2F1C(v11, v4, type metadata accessor for FeedPuzzleStatistic);
            v35 = swift_unknownObjectRetain();
            MEMORY[0x1DA6F9CE0](v35);
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v8 = v54;
            }

            sub_1D726278C();
            sub_1D5BCF630(v4, type metadata accessor for FeedPuzzleStatistic);
            v18 = v71;
            goto LABEL_21;
        }
      }

      else
      {
        switch(EnumCaseMultiPayload)
        {
          case 3:
            sub_1D5BE2F1C(v11, v8, type metadata accessor for FeedHeadline);
            if ([v8[5] sourceChannel])
            {
              v36 = swift_unknownObjectRetain();
              MEMORY[0x1DA6F9CE0](v36);
              if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1D726272C();
                v8 = v54;
              }

              sub_1D726278C();
              swift_unknownObjectRelease();
              v18 = v71;
            }

            v27 = type metadata accessor for FeedHeadline;
            v28 = v8;
            goto LABEL_20;
          case 5:
            v44 = *(v11 + 7);
            v63 = *(v11 + 6);
            v64[0] = v44;
            *(v64 + 9) = *(v11 + 121);
            v45 = *(v11 + 1);
            v57 = *v11;
            v58 = v45;
            v46 = *(v11 + 3);
            v59 = *(v11 + 2);
            v60 = v46;
            v47 = *(v11 + 5);
            v61 = *(v11 + 4);
            v62 = v47;
            v48 = [v57 sourceChannel];
            MEMORY[0x1DA6F9CE0]();
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v8 = v54;
            }

            sub_1D726278C();
            sub_1D5ECF320(&v57);
            v18 = v71;
            goto LABEL_21;
          case 7:
            v30 = *(v11 + 7);
            v63 = *(v11 + 6);
            v64[0] = v30;
            v64[1] = *(v11 + 8);
            LOBYTE(v65) = v11[144];
            v31 = *(v11 + 3);
            v59 = *(v11 + 2);
            v60 = v31;
            v32 = *(v11 + 5);
            v61 = *(v11 + 4);
            v62 = v32;
            v33 = *(v11 + 1);
            v57 = *v11;
            v58 = v33;
            v34 = swift_unknownObjectRetain();
            MEMORY[0x1DA6F9CE0](v34);
            if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D726272C();
              v8 = v54;
            }

            sub_1D726278C();
            sub_1D5EE5B54(&v57);
            v18 = v71;
            goto LABEL_21;
        }
      }

      v27 = type metadata accessor for FeedItem;
      v28 = v11;
LABEL_20:
      sub_1D5BCF630(v28, v27);
LABEL_21:
      v26 += 72;
      --v25;
    }

    while (v25);
  }

  return v18;
}

uint64_t sub_1D62EFCE4@<X0>(int a1@<W0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a1;
  v6 = type metadata accessor for FeedItem(0);
  v65 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupLayoutBindingContext(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725A0AC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v69 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v64 - v20;
  v22 = *a2;
  sub_1D5B68374((v3 + 8), v85);
  v23 = *(v3 + 6);
  v74 = v15;
  v75 = v10;
  v24 = *(v15 + 16);
  v25 = &v3[*(v10 + 52)];
  v73 = v21;
  v68 = v24;
  v66 = v15 + 16;
  v24(v21, v25, v14);
  v71 = v14;
  v72 = a3;
  if (v22 == 2)
  {
    v67 = *v3;
  }

  else
  {
    v67 = v22;
  }

  v26 = *(v3 + 12);
  v27 = v75;
  *&v13[v75[14]] = MEMORY[0x1E69E7CC8];
  *&v13[v27[15]] = MEMORY[0x1E69E7CC0];
  *&v13[v27[19]] = 0;
  sub_1D5B68374(v85, (v13 + 8));
  *(v13 + 6) = v23;
  v29 = v86;
  v28 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  v30 = *(v28 + 56);

  v76 = v30(v29, v28);
  sub_1D5B7F04C(0, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E62F8]);
  sub_1D6306FC4();
  sub_1D5BCAF5C();
  v31 = sub_1D72623BC();

  *(v13 + 9) = v31;
  v32 = v86;
  v33 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  *(v13 + 10) = (*(v33 + 56))(v32, v33);
  v34 = v86;
  v35 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  *(v13 + 7) = (*(v35 + 24))(v34, v35);

  v37 = sub_1D5BCB16C(v36);

  *(v13 + 8) = v37;
  v13[v27[16]] = v70 & 1;
  v38 = v73;
  v39 = v71;
  v40 = v68;
  v68(&v13[v27[13]], v73, v71);
  *v13 = v67 & 1;
  *(v13 + 12) = v26;
  v13[88] = 0;
  v41 = v69;
  v40(v69, v38, v39);
  v42 = (*(v74 + 88))(v41, v39);
  if (v42 == *MEMORY[0x1E69D7210])
  {
    v43 = v86;
    v44 = v87;
    __swift_project_boxed_opaque_existential_1(v85, v86);
    (*(v44 + 72))(&v76, v43, v44);
    if (v84)
    {
      v45 = v72;
    }

    else
    {
      v45 = v72;
      if ((v81 & 1) == 0)
      {
        v49 = v80;
LABEL_14:
        *&v13[v75[18]] = v49;
        v50 = v86;
        v51 = v87;
        __swift_project_boxed_opaque_existential_1(v85, v86);
        (*(v51 + 72))(&v76, v50, v51);
        if ((v84 & 1) == 0)
        {
          v52 = v83;
          v53 = v82;
          goto LABEL_20;
        }

        goto LABEL_18;
      }
    }

    v49 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_14;
  }

  if (v42 != *MEMORY[0x1E69D7218])
  {
    result = sub_1D726402C();
    __break(1u);
    return result;
  }

  v46 = v86;
  v47 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  (*(v47 + 72))(&v76, v46, v47);
  v45 = v72;
  if (v84 & 1) != 0 || (v77)
  {
    v48 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v48 = v76;
  }

  *&v13[v75[18]] = v48;
  v54 = v86;
  v55 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  (*(v55 + 72))(&v76, v54, v55);
  if ((v84 & 1) == 0)
  {
    v52 = v79;
    v53 = v78;
LABEL_20:
    if (v52)
    {
      v56 = 0;
    }

    else
    {
      v56 = v53;
    }

    goto LABEL_23;
  }

LABEL_18:
  v56 = 0;
LABEL_23:
  *&v13[v75[17]] = v56;
  v57 = v86;
  v58 = v87;
  __swift_project_boxed_opaque_existential_1(v85, v86);
  v59 = (*(v58 + 16))(v57, v58);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = v59 + ((*(v65 + 80) + 32) & ~*(v65 + 80));
    v62 = *(v65 + 72);
    do
    {
      sub_1D5BD86D4(v61, v9, type metadata accessor for FeedItem);
      sub_1D5BCEE08(v9);
      sub_1D5BCF630(v9, type metadata accessor for FeedItem);
      v61 += v62;
      --v60;
    }

    while (v60);
  }

  (*(v74 + 8))(v73, v39);
  sub_1D5BE2F1C(v13, v45, type metadata accessor for GroupLayoutBindingContext);
  return __swift_destroy_boxed_opaque_existential_1(v85);
}

void sub_1D62F03D8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v25 = *(v3 + 16);
  if (v25)
  {
    v24 = v3 + 32;

    v4 = 0;
    v5 = 0;
    v23 = v3;
    while (v4 < *(v3 + 16))
    {
      v6 = (v24 + 16 * v4);
      v7 = *v6;
      v8 = v6[1];
      swift_retain_n();
      sub_1D62FFD74(a1);
      *&v29[0] = v9;
      sub_1D6306024(v29, v7, v8, &unk_1F5144BF0, sub_1D62FFB30, sub_1D630347C);
      if (v5)
      {
        goto LABEL_16;
      }

      v10 = *&v29[0];
      v11 = *(*&v29[0] + 16);
      if (v11)
      {
        v27 = 0;
        v33 = MEMORY[0x1E69E7CC0];
        sub_1D5BD0BA0(0, v11, 0);
        a1 = v33;
        v26 = v10;
        v12 = v10 + 32;
        do
        {
          sub_1D5BD86D4(v12, v29, sub_1D630B6C8);
          v28[0] = v29[0];
          v28[1] = v29[1];
          v28[2] = v29[2];
          sub_1D5B63F14((v28 + 8), v30);
          v33 = a1;
          v14 = *(a1 + 16);
          v13 = *(a1 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_1D5BD0BA0((v13 > 1), v14 + 1, 1);
          }

          v15 = v31;
          v16 = v32;
          v17 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
          v18 = MEMORY[0x1EEE9AC00](v17, v17);
          v20 = &v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v21 + 16))(v20, v18);
          sub_1D5BD0BE4(v14, v20, &v33, v15, v16);
          __swift_destroy_boxed_opaque_existential_1(v30);
          a1 = v33;
          v12 += 48;
          --v11;
        }

        while (v11);

        v3 = v23;
        v5 = v27;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v25)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F071C(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v41 = &v32 - v8;
  v9 = type metadata accessor for FeedHeadline(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v1 + 16);
  v36 = *(v14 + 16);
  if (v36)
  {
    v35 = v14 + 32;

    v15 = 0;
    v16 = 0;
    v32 = v14;
    while (v15 < *(v14 + 16))
    {
      v17 = v35 + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_retain_n();
      sub_1D62FFF18(a1);
      v43 = v20;
      sub_1D6303848(&v43, v18, v19);
      if (v16)
      {
        goto LABEL_16;
      }

      v21 = v43;
      v22 = *(v43 + 16);
      if (v22)
      {
        v38 = v19;
        v39 = v15;
        v40 = 0;
        v43 = MEMORY[0x1E69E7CC0];
        sub_1D5C0F91C(0, v22, 0);
        v23 = v34;
        a1 = v43;
        v24 = *(v33 + 80);
        v37 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v33 + 72);
        do
        {
          v27 = v41;
          sub_1D630B5FC(v25, v41, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
          v28 = v27;
          v29 = v42;
          sub_1D630BA20(v28, v42, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
          sub_1D5BE2F1C(v29 + *(v23 + 48), v13, type metadata accessor for FeedHeadline);
          v43 = a1;
          v31 = *(a1 + 16);
          v30 = *(a1 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1D5C0F91C((v30 > 1), v31 + 1, 1);
            v23 = v34;
            a1 = v43;
          }

          *(a1 + 16) = v31 + 1;
          sub_1D5BE2F1C(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, type metadata accessor for FeedHeadline);
          v25 += v26;
          --v22;
        }

        while (v22);

        v14 = v32;
        v15 = v39;
        v16 = v40;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v15 == v36)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F0AF0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v29 = *(v3 + 16);
  if (v29)
  {
    v28 = v3 + 32;

    v4 = 0;
    v27 = v3;
    while (v4 < *(v3 + 16))
    {
      v5 = swift_allocObject();
      *(v5 + 16) = *(v28 + 16 * v4);

      sub_1D63002A8(a1);
      *v31 = v6;
      sub_1D6305428(v31, sub_1D6306E80, v5);

      v7 = *v31;
      v8 = *(*v31 + 16);
      if (v8)
      {
        v32 = MEMORY[0x1E69E7CC0];
        sub_1D6997F04(0, v8, 0);
        a1 = v32;
        v9 = v8 - 1;
        for (i = 32; ; i += 152)
        {
          v11 = *(v7 + i + 16);
          *v31 = *(v7 + i);
          *&v31[16] = v11;
          v12 = *(v7 + i + 32);
          v13 = *(v7 + i + 48);
          v14 = *(v7 + i + 80);
          *&v31[64] = *(v7 + i + 64);
          *&v31[80] = v14;
          *&v31[32] = v12;
          *&v31[48] = v13;
          v15 = *(v7 + i + 96);
          v16 = *(v7 + i + 112);
          v17 = *(v7 + i + 128);
          v31[144] = *(v7 + i + 144);
          *&v31[112] = v16;
          *&v31[128] = v17;
          *&v31[96] = v15;
          sub_1D6306E88(v31, v30, &unk_1EC88EAF0, &type metadata for FeedIssue);
          v32 = a1;
          v19 = *(a1 + 16);
          v18 = *(a1 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_1D6997F04((v18 > 1), v19 + 1, 1);
            a1 = v32;
          }

          *(a1 + 16) = v19 + 1;
          v20 = (a1 + 144 * v19);
          v20[2] = *&v31[8];
          v21 = *&v31[24];
          v22 = *&v31[40];
          v23 = *&v31[72];
          v20[5] = *&v31[56];
          v20[6] = v23;
          v20[3] = v21;
          v20[4] = v22;
          v24 = *&v31[88];
          v25 = *&v31[104];
          v26 = *&v31[120];
          *(v20 + 153) = *&v31[129];
          v20[8] = v25;
          v20[9] = v26;
          v20[7] = v24;
          if (!v9)
          {
            break;
          }

          --v9;
        }

        v3 = v27;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v29)
      {

        return;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F0DA0(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v41 = &v32 - v8;
  v9 = type metadata accessor for FeedCustomItem(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v1 + 16);
  v36 = *(v14 + 16);
  if (v36)
  {
    v35 = v14 + 32;

    v15 = 0;
    v16 = 0;
    v32 = v14;
    while (v15 < *(v14 + 16))
    {
      v17 = v35 + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_retain_n();
      sub_1D630052C(a1);
      v43 = v20;
      sub_1D630B330(&v43, v18, v19);
      if (v16)
      {
        goto LABEL_16;
      }

      v21 = v43;
      v22 = *(v43 + 16);
      if (v22)
      {
        v38 = v19;
        v39 = v15;
        v40 = 0;
        v43 = MEMORY[0x1E69E7CC0];
        sub_1D6998274(0, v22, 0);
        v23 = v34;
        a1 = v43;
        v24 = *(v33 + 80);
        v37 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v33 + 72);
        do
        {
          v27 = v41;
          sub_1D630B5FC(v25, v41, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
          v28 = v27;
          v29 = v42;
          sub_1D630BA20(v28, v42, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
          sub_1D5BE2F1C(v29 + *(v23 + 48), v13, type metadata accessor for FeedCustomItem);
          v43 = a1;
          v31 = *(a1 + 16);
          v30 = *(a1 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1D6998274((v30 > 1), v31 + 1, 1);
            v23 = v34;
            a1 = v43;
          }

          *(a1 + 16) = v31 + 1;
          sub_1D5BE2F1C(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, type metadata accessor for FeedCustomItem);
          v25 += v26;
          --v22;
        }

        while (v22);

        v14 = v32;
        v15 = v39;
        v16 = v40;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v15 == v36)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F1174(uint64_t a1)
{
  sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v41 = &v32 - v8;
  v9 = type metadata accessor for FeedRecipe(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v1 + 16);
  v36 = *(v14 + 16);
  if (v36)
  {
    v35 = v14 + 32;

    v15 = 0;
    v16 = 0;
    v32 = v14;
    while (v15 < *(v14 + 16))
    {
      v17 = v35 + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_retain_n();
      sub_1D63008BC(a1);
      v43 = v20;
      sub_1D630AFA8(&v43, v18, v19);
      if (v16)
      {
        goto LABEL_16;
      }

      v21 = v43;
      v22 = *(v43 + 16);
      if (v22)
      {
        v38 = v19;
        v39 = v15;
        v40 = 0;
        v43 = MEMORY[0x1E69E7CC0];
        sub_1D69982C4(0, v22, 0);
        v23 = v34;
        a1 = v43;
        v24 = *(v33 + 80);
        v37 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v33 + 72);
        do
        {
          v27 = v41;
          sub_1D630B5FC(v25, v41, &unk_1EDF04740, type metadata accessor for FeedRecipe);
          v28 = v27;
          v29 = v42;
          sub_1D630BA20(v28, v42, &unk_1EDF04740, type metadata accessor for FeedRecipe);
          sub_1D5BE2F1C(v29 + *(v23 + 48), v13, type metadata accessor for FeedRecipe);
          v43 = a1;
          v31 = *(a1 + 16);
          v30 = *(a1 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1D69982C4((v30 > 1), v31 + 1, 1);
            v23 = v34;
            a1 = v43;
          }

          *(a1 + 16) = v31 + 1;
          sub_1D5BE2F1C(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, type metadata accessor for FeedRecipe);
          v25 += v26;
          --v22;
        }

        while (v22);

        v14 = v32;
        v15 = v39;
        v16 = v40;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v15 == v36)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F1548(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v41 = &v32 - v8;
  v9 = type metadata accessor for FeedPuzzleStatistic(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v1 + 16);
  v36 = *(v14 + 16);
  if (v36)
  {
    v35 = v14 + 32;

    v15 = 0;
    v16 = 0;
    v32 = v14;
    while (v15 < *(v14 + 16))
    {
      v17 = v35 + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_retain_n();
      sub_1D6300C4C(a1);
      v43 = v20;
      sub_1D630AC20(&v43, v18, v19);
      if (v16)
      {
        goto LABEL_16;
      }

      v21 = v43;
      v22 = *(v43 + 16);
      if (v22)
      {
        v38 = v19;
        v39 = v15;
        v40 = 0;
        v43 = MEMORY[0x1E69E7CC0];
        sub_1D6998314(0, v22, 0);
        v23 = v34;
        a1 = v43;
        v24 = *(v33 + 80);
        v37 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v33 + 72);
        do
        {
          v27 = v41;
          sub_1D630B5FC(v25, v41, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
          v28 = v27;
          v29 = v42;
          sub_1D630BA20(v28, v42, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
          sub_1D5BE2F1C(v29 + *(v23 + 48), v13, type metadata accessor for FeedPuzzleStatistic);
          v43 = a1;
          v31 = *(a1 + 16);
          v30 = *(a1 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1D6998314((v30 > 1), v31 + 1, 1);
            v23 = v34;
            a1 = v43;
          }

          *(a1 + 16) = v31 + 1;
          sub_1D5BE2F1C(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, type metadata accessor for FeedPuzzleStatistic);
          v25 += v26;
          --v22;
        }

        while (v22);

        v14 = v32;
        v15 = v39;
        v16 = v40;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v15 == v36)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F191C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v22 = *(v3 + 16);
  if (v22)
  {
    v21 = v3 + 32;

    v4 = 0;
    v20 = v3;
    while (v4 < *(v3 + 16))
    {
      v5 = swift_allocObject();
      *(v5 + 16) = *(v21 + 16 * v4);

      sub_1D6300FDC(a1);
      *v24 = v6;
      sub_1D630A910(v24, sub_1D630B534, v5);

      v7 = *v24;
      v8 = *(*v24 + 16);
      if (v8)
      {
        v25 = MEMORY[0x1E69E7CC0];
        sub_1D6998364(0, v8, 0);
        a1 = v25;
        v9 = v8 - 1;
        for (i = 32; ; i += 72)
        {
          *v24 = *(v7 + i);
          v11 = *(v7 + i + 16);
          v12 = *(v7 + i + 32);
          v13 = *(v7 + i + 48);
          *&v24[64] = *(v7 + i + 64);
          *&v24[32] = v12;
          *&v24[48] = v13;
          *&v24[16] = v11;
          sub_1D6306E88(v24, v23, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
          v25 = a1;
          v15 = *(a1 + 16);
          v14 = *(a1 + 24);
          if (v15 >= v14 >> 1)
          {
            sub_1D6998364((v14 > 1), v15 + 1, 1);
            a1 = v25;
          }

          *(a1 + 16) = v15 + 1;
          v16 = (a1 + (v15 << 6));
          v17 = *&v24[8];
          v18 = *&v24[24];
          v19 = *&v24[56];
          v16[4] = *&v24[40];
          v16[5] = v19;
          v16[2] = v17;
          v16[3] = v18;
          if (!v9)
          {
            break;
          }

          --v9;
        }

        v3 = v20;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v22)
      {

        return;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F1B94(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v27 = *(v3 + 16);
  if (v27)
  {
    v26 = v3 + 32;

    v4 = 0;
    v25 = v3;
    while (v4 < *(v3 + 16))
    {
      v5 = (v26 + 16 * v4);
      v6 = *v5;
      v7 = v5[1];
      swift_retain_n();
      sub_1D63011FC(a1);
      v29 = v8;
      sub_1D6306024(&v29, v6, v7, &unk_1F5144808, sub_1D62FFC48, sub_1D6309A4C);

      v9 = v29;
      v10 = *(v29 + 16);
      if (v10)
      {
        v28 = v4;
        v56 = MEMORY[0x1E69E7CC0];
        sub_1D6998384(0, v10, 0);
        v11 = v9;
        a1 = v56;
        v12 = v11 + 32;
        do
        {
          sub_1D6306E88(v12, &v29, &unk_1EDF04750, &type metadata for FeedPuzzle);
          v53 = v40;
          v54 = v41;
          v55 = v42;
          v49 = v36;
          v50 = v37;
          v51 = v38;
          v52 = v39;
          v44 = v31;
          v45 = v32;
          v48 = v35;
          v46 = v33;
          v47 = v34;
          v14 = *(a1 + 16);
          v13 = *(a1 + 24);
          v43 = v30;
          v56 = a1;
          if (v14 >= v13 >> 1)
          {
            sub_1D6998384((v13 > 1), v14 + 1, 1);
            a1 = v56;
          }

          *(a1 + 16) = v14 + 1;
          v15 = (a1 + 208 * v14);
          v15[2] = v43;
          v16 = v44;
          v17 = v45;
          v18 = v47;
          v15[5] = v46;
          v15[6] = v18;
          v15[3] = v16;
          v15[4] = v17;
          v19 = v48;
          v20 = v49;
          v21 = v51;
          v15[9] = v50;
          v15[10] = v21;
          v15[7] = v19;
          v15[8] = v20;
          v22 = v52;
          v23 = v53;
          v24 = v55;
          v15[13] = v54;
          v15[14] = v24;
          v15[11] = v22;
          v15[12] = v23;
          v12 += 216;
          --v10;
        }

        while (v10);

        v3 = v25;
        v4 = v28;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v27)
      {

        return;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F1E7C(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v42 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v41 = &v32 - v8;
  v9 = type metadata accessor for FeedWebEmbed(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = *(v1 + 16);
  v36 = *(v14 + 16);
  if (v36)
  {
    v35 = v14 + 32;

    v15 = 0;
    v16 = 0;
    v32 = v14;
    while (v15 < *(v14 + 16))
    {
      v17 = v35 + 16 * v15;
      v18 = *v17;
      v19 = *(v17 + 8);
      swift_retain_n();
      sub_1D630142C(a1);
      v43 = v20;
      sub_1D6308E04(&v43, v18, v19);
      if (v16)
      {
        goto LABEL_16;
      }

      v21 = v43;
      v22 = *(v43 + 16);
      if (v22)
      {
        v38 = v19;
        v39 = v15;
        v40 = 0;
        v43 = MEMORY[0x1E69E7CC0];
        sub_1D69983A4(0, v22, 0);
        v23 = v34;
        a1 = v43;
        v24 = *(v33 + 80);
        v37 = v21;
        v25 = v21 + ((v24 + 32) & ~v24);
        v26 = *(v33 + 72);
        do
        {
          v27 = v41;
          sub_1D630B5FC(v25, v41, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
          v28 = v27;
          v29 = v42;
          sub_1D630BA20(v28, v42, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
          sub_1D5BE2F1C(v29 + *(v23 + 48), v13, type metadata accessor for FeedWebEmbed);
          v43 = a1;
          v31 = *(a1 + 16);
          v30 = *(a1 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1D69983A4((v30 > 1), v31 + 1, 1);
            v23 = v34;
            a1 = v43;
          }

          *(a1 + 16) = v31 + 1;
          sub_1D5BE2F1C(v13, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v31, type metadata accessor for FeedWebEmbed);
          v25 += v26;
          --v22;
        }

        while (v22);

        v14 = v32;
        v15 = v39;
        v16 = v40;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v15 == v36)
      {

        return;
      }
    }

    __break(1u);
LABEL_16:

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F2250(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v23 = *(v3 + 16);
  if (v23)
  {
    v22 = v3 + 32;

    v4 = 0;
    v21 = v3;
    while (v4 < *(v3 + 16))
    {
      v5 = (v22 + 16 * v4);
      v6 = *v5;
      v7 = v5[1];
      swift_retain_n();
      sub_1D63017BC(a1);
      v26 = v8;
      sub_1D6306024(&v26, v6, v7, &unk_1F5144628, sub_1D62FFC70, sub_1D6307D4C);

      v9 = *(v26 + 16);
      if (v9)
      {
        v24 = v4;
        v47 = MEMORY[0x1E69E7CC0];
        v25 = v26;
        sub_1D69983F4(0, v9, 0);
        a1 = v47;
        v10 = v25 + 32;
        do
        {
          sub_1D6306E88(v10, &v26, &qword_1EDF04760, &type metadata for FeedTag);
          v43 = v33;
          v44 = v34;
          v45 = v35;
          v46 = v36;
          v39 = v29;
          v40 = v30;
          v41 = v31;
          v42 = v32;
          v37 = v27;
          v38 = v28;
          v12 = *(a1 + 16);
          v11 = *(a1 + 24);
          v47 = a1;
          if (v12 >= v11 >> 1)
          {
            sub_1D69983F4((v11 > 1), v12 + 1, 1);
            a1 = v47;
          }

          *(a1 + 16) = v12 + 1;
          v13 = a1 + 152 * v12;
          v14 = v38;
          *(v13 + 32) = v37;
          *(v13 + 48) = v14;
          v15 = v39;
          v16 = v40;
          v17 = v42;
          *(v13 + 96) = v41;
          *(v13 + 112) = v17;
          *(v13 + 64) = v15;
          *(v13 + 80) = v16;
          v18 = v43;
          v19 = v44;
          v20 = v45;
          *(v13 + 176) = v46;
          *(v13 + 144) = v19;
          *(v13 + 160) = v20;
          *(v13 + 128) = v18;
          v10 += 160;
          --v9;
        }

        while (v9);

        v3 = v21;
        v4 = v24;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v23)
      {

        return;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F2518(unint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v8 = *(v3 + 16);
  if (v8)
  {

    v4 = 0;
    while (v4 < *(v3 + 16))
    {
      *(swift_allocObject() + 16) = *(v3 + 32 + 16 * v4);

      sub_1D6301C14(a1);
      v9 = v5;
      sub_1D63042A0(&v9, sub_1D6306E78);

      v6 = *(v9 + 16);
      if (v6)
      {
        v9 = MEMORY[0x1E69E7CC0];
        sub_1D7263ECC();
        v7 = 40;
        do
        {

          sub_1D7263E9C();
          sub_1D7263EDC();
          sub_1D7263EEC();
          sub_1D7263EAC();
          v7 += 16;
          --v6;
        }

        while (v6);

        a1 = v9;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v8)
      {

        return;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F270C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v17 = *(v3 + 16);
  if (v17)
  {
    v16 = v3 + 32;

    v4 = 0;
    v15 = v3;
    while (v4 < *(v3 + 16))
    {
      v18 = v4;
      v5 = (v16 + 16 * v4);
      v6 = *v5;
      v7 = v5[1];
      swift_retain_n();
      sub_1D6301E1C(a1);
      v9 = v8;

      v19 = v9;
      sub_1D6306024(&v19, v6, v7, &unk_1F51442B8, sub_1D62FFCD4, sub_1D6305E9C);

      v10 = v19;
      v11 = *(v19 + 16);
      if (v11)
      {
        v22 = MEMORY[0x1E69E7CC0];
        sub_1D69992A8(0, v11, 0);
        a1 = v22;
        v12 = v10 + 32;
        do
        {
          sub_1D6306E88(v12, &v19, &qword_1EC885950, &type metadata for FeedCatalogItem);
          memcpy(__dst, v20, sizeof(__dst));
          v22 = a1;
          v14 = *(a1 + 16);
          v13 = *(a1 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_1D69992A8((v13 > 1), v14 + 1, 1);
            a1 = v22;
          }

          *(a1 + 16) = v14 + 1;
          memcpy((a1 + 288 * v14 + 32), __dst, 0x11AuLL);
          v12 += 296;
          --v11;
        }

        while (v11);

        v3 = v15;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      v4 = v18 + 1;
      if (v18 + 1 == v17)
      {

        return;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
  }
}

void sub_1D62F2984(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v23 = *(v3 + 16);
  if (v23)
  {
    v22 = v3 + 32;

    v4 = 0;
    v21 = v3;
    while (v4 < *(v3 + 16))
    {
      v5 = (v22 + 16 * v4);
      v6 = *v5;
      v7 = v5[1];
      swift_retain_n();
      sub_1D6301FC8(a1);
      v26 = v8;
      sub_1D6306024(&v26, v6, v7, &unk_1F5144178, sub_1D62FFCE8, sub_1D6306BB4);

      v9 = *(v26 + 16);
      if (v9)
      {
        v24 = v4;
        v47 = MEMORY[0x1E69E7CC0];
        v25 = v26;
        sub_1D69992C8(0, v9, 0);
        a1 = v47;
        v10 = v25 + 32;
        do
        {
          sub_1D6306E88(v10, &v26, &qword_1EC885930, &type metadata for FeedCategory);
          v43 = v33;
          v44 = v34;
          v45 = v35;
          v46 = v36;
          v39 = v29;
          v40 = v30;
          v41 = v31;
          v42 = v32;
          v37 = v27;
          v38 = v28;
          v12 = *(a1 + 16);
          v11 = *(a1 + 24);
          v47 = a1;
          if (v12 >= v11 >> 1)
          {
            sub_1D69992C8((v11 > 1), v12 + 1, 1);
            a1 = v47;
          }

          *(a1 + 16) = v12 + 1;
          v13 = a1 + 152 * v12;
          v14 = v38;
          *(v13 + 32) = v37;
          *(v13 + 48) = v14;
          v15 = v39;
          v16 = v40;
          v17 = v42;
          *(v13 + 96) = v41;
          *(v13 + 112) = v17;
          *(v13 + 64) = v15;
          *(v13 + 80) = v16;
          v18 = v43;
          v19 = v44;
          v20 = v45;
          *(v13 + 176) = v46;
          *(v13 + 144) = v19;
          *(v13 + 160) = v20;
          *(v13 + 128) = v18;
          v10 += 160;
          --v9;
        }

        while (v9);

        v3 = v21;
        v4 = v24;
      }

      else
      {

        a1 = MEMORY[0x1E69E7CC0];
      }

      if (++v4 == v23)
      {

        return;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1D62F2C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *))
{
  v12 = a1;
  sub_1D5B68374(a2, &v13);
  v10 = a3;
  sub_1D5B68374(a4, &v11);
  a5(&v9, &v12, &v10);
  sub_1D5BCF630(&v10, sub_1D630B744);
  sub_1D5BCF630(&v12, sub_1D630B744);
  return v9;
}

uint64_t sub_1D62F2CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *))
{
  v12 = a1;
  sub_1D5F2DEAC(a2, &v13);
  v10 = a3;
  sub_1D5F2DEAC(a4, &v11);
  a5(&v9, &v12, &v10);
  sub_1D6306DB0(&v10, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
  sub_1D6306DB0(&v12, &unk_1EDF046D8, &type metadata for FeedPuzzle, sub_1D630B5A4);
  return v9;
}

uint64_t sub_1D62F2DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6, unint64_t *a7, uint64_t (*a8)(uint64_t), uint64_t (*a9)(void))
{
  v25[1] = a6;
  v26 = a5;
  sub_1D5C14BE8(0, a7, a8);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = (v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = v25 - v22;
  *(v25 - v22) = a1;
  sub_1D5BD86D4(a2, v25 + *(v16 + 56) - v22, a9);
  *v19 = a3;
  sub_1D5BD86D4(a4, v19 + *(v16 + 56), a9);
  v26(&v27, v23, v19);
  sub_1D630B668(v19, a7, a8, sub_1D5C14BE8);
  sub_1D630B668(v23, a7, a8, sub_1D5C14BE8);
  return v27;
}

uint64_t sub_1D62F2F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *))
{
  v12 = a1;
  sub_1D5EE5AF8(a2, &v13);
  v10 = a3;
  sub_1D5EE5AF8(a4, &v11);
  a5(&v9, &v12, &v10);
  sub_1D6306DB0(&v10, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
  sub_1D6306DB0(&v12, &unk_1EDF046E8, &type metadata for FeedTag, sub_1D630B5A4);
  return v9;
}

uint64_t sub_1D62F2FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *))
{
  v12 = a1;
  sub_1D5F76E40(a2, &v13);
  v10 = a3;
  sub_1D5F76E40(a4, &v11);
  a5(&v9, &v12, &v10);
  sub_1D6306DB0(&v10, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
  sub_1D6306DB0(&v12, &unk_1EC885958, &type metadata for FeedCatalogItem, sub_1D630B5A4);
  return v9;
}

uint64_t sub_1D62F30D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *))
{
  v12 = a1;
  sub_1D5F76D3C(a2, &v13);
  v10 = a3;
  sub_1D5F76D3C(a4, &v11);
  a5(&v9, &v12, &v10);
  sub_1D6306DB0(&v10, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
  sub_1D6306DB0(&v12, &unk_1EC885938, &type metadata for FeedCategory, sub_1D630B5A4);
  return v9;
}

uint64_t GroupLayoutBindingContext.peek(count:slotIdentifier:sorter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v42 = a4;
  v46 = a1;
  v10 = *&v4[*(type metadata accessor for GroupLayoutBindingContext(0) + 60)];
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v43 = v5;
    v44 = a2;
    v45 = a3;
    v52 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v11, 0);
    v12 = v52;
    v13 = v10 + 32;
    do
    {
      sub_1D5BD03B0(v13, v47);
      sub_1D5B68374(&v48, v49);
      sub_1D5BD03E8(v47);
      v52 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D5BD0BA0((v14 > 1), v15 + 1, 1);
      }

      v16 = v50;
      v17 = v51;
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v49, v50);
      v19 = MEMORY[0x1EEE9AC00](v18, v18);
      v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v22 + 16))(v21, v19);
      sub_1D5BD0BE4(v15, v21, &v52, v16, v17);
      __swift_destroy_boxed_opaque_existential_1(v49);
      v12 = v52;
      v13 += 72;
      --v11;
    }

    while (v11);
    a2 = v44;
    a3 = v45;
    v6 = v43;
  }

  v23 = v7;
  v24 = v6;
  v25 = sub_1D5BF08EC(v12, a2, a3);

  if (!v24)
  {
    v27 = *(v25 + 16);
    v28 = v46;
    if (v46 != 0x7FFFFFFFFFFFFFFFLL && v27 < v46)
    {

      sub_1D5ED8048();
      swift_allocError();
      *v29 = v28;
      *(v29 + 8) = v27;
      *(v29 + 16) = a2;
      *(v29 + 24) = a3;
      v30 = v47[1];
      *(v29 + 32) = v47[0];
      *(v29 + 48) = v30;
      *(v29 + 64) = 2;
      swift_willThrow();

      return v23;
    }

    if ((*v7 & 1) == 0 && v42)
    {
      sub_1D62F03D8(v25);
    }

    v34 = sub_1D691601C();
    if (v33)
    {
      v36 = v33;
      v37 = v32;
      v38 = v31;
      sub_1D72647AC();
      swift_unknownObjectRetain_n();
      v39 = swift_dynamicCastClass();
      if (!v39)
      {
        swift_unknownObjectRelease();
        v39 = MEMORY[0x1E69E7CC0];
      }

      v40 = *(v39 + 16);

      if (__OFSUB__(v36 >> 1, v37))
      {
        __break(1u);
      }

      else if (v40 == (v36 >> 1) - v37)
      {
        v23 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v23)
        {
          swift_unknownObjectRelease();
          return MEMORY[0x1E69E7CC0];
        }

        return v23;
      }

      swift_unknownObjectRelease();
      v33 = v36;
      v32 = v37;
      v31 = v38;
    }

    sub_1D5EC2874(v34, v31, v32, v33);
    v23 = v35;
    swift_unknownObjectRelease();
  }

  return v23;
}

void sub_1D62F3514(uint64_t a1)
{
  v2 = v1;
  v38 = type metadata accessor for GroupLayoutBindingContext(0);
  v4 = *(a1 + *(v38 + 60));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v39 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v5, 0);
    v6 = v39;
    v7 = v4 + 32;
    do
    {
      sub_1D5BD03B0(v7, v45);
      __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      v8 = sub_1D725AA4C();
      v10 = v9;
      sub_1D5BD03E8(v45);
      v12 = *(v39 + 16);
      v11 = *(v39 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D5BFC364((v11 > 1), v12 + 1, 1);
      }

      *(v39 + 16) = v12 + 1;
      v13 = v39 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
      v7 += 72;
      --v5;
    }

    while (v5);
  }

  v14 = sub_1D5B86020(v6);

  v36 = *(v38 + 60);
  v37 = v2;
  v15 = *(v2 + v36);
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = 0;
    v18 = v14 + 56;
    v19 = MEMORY[0x1E69E7CC0];
    while (v17 < *(v15 + 16))
    {
      sub_1D5BD03B0(v15 + 32 + 72 * v17, v45);
      __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
      v20 = sub_1D725AA4C();
      v22 = v21;
      if (*(v14 + 16) && (v23 = v20, sub_1D7264A0C(), sub_1D72621EC(), v24 = sub_1D7264A5C(), v25 = -1 << *(v14 + 32), v26 = v24 & ~v25, ((*(v18 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
      {
        v27 = ~v25;
        while (1)
        {
          v28 = (*(v14 + 48) + 16 * v26);
          v29 = *v28 == v23 && v28[1] == v22;
          if (v29 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v18 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_8;
          }
        }

        v42 = v46;
        v43 = v47;
        v44 = v48;
        v40 = v45[0];
        v41 = v45[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D5BD06F0(0, *(v19 + 16) + 1, 1);
        }

        v31 = *(v19 + 16);
        v30 = *(v19 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D5BD06F0((v30 > 1), v31 + 1, 1);
        }

        *(v19 + 16) = v31 + 1;
        v32 = v19 + 72 * v31;
        *(v32 + 32) = v40;
        *(v32 + 96) = v44;
        *(v32 + 64) = v42;
        *(v32 + 80) = v43;
        *(v32 + 48) = v41;
      }

      else
      {
LABEL_8:

        sub_1D5BD03E8(v45);
      }

      if (++v17 == v16)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_27:

    *(v37 + v36) = v19;
    v33 = *(v38 + 56);
    v34 = *(v37 + v33);

    v35 = sub_1D5BD0710(v34, v14, sub_1D62F3E3C);

    swift_bridgeObjectRelease_n();
    *(v37 + v33) = v35;
  }
}

Swift::Int __swiftcall GroupLayoutBindingContext.count(forSlotIdentifier:)(Swift::String_optional forSlotIdentifier)
{
  object = forSlotIdentifier.value._object;
  countAndFlagsBits = forSlotIdentifier.value._countAndFlagsBits;
  v4 = *(v1 + *(type metadata accessor for GroupLayoutBindingContext(0) + 60));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v20[1] = v1;
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D5BD0BA0(0, v5, 0);
    v6 = v26;
    v7 = v4 + 32;
    do
    {
      sub_1D5BD03B0(v7, v21);
      sub_1D5B68374(&v22, v23);
      sub_1D5BD03E8(v21);
      v26 = v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1D5BD0BA0((v8 > 1), v9 + 1, 1);
      }

      v10 = v24;
      v11 = v25;
      v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
      v13 = MEMORY[0x1EEE9AC00](v12, v12);
      v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15, v13);
      sub_1D5BD0BE4(v9, v15, &v26, v10, v11);
      __swift_destroy_boxed_opaque_existential_1(v23);
      v6 = v26;
      v7 += 72;
      --v5;
    }

    while (v5);
  }

  v17 = sub_1D5BF08EC(v6, countAndFlagsBits, object);

  v18 = *(v17 + 16);

  return v18;
}

uint64_t sub_1D62F3AA0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FeedItemAuxiliaryItem(0);
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = a2[1];
  v16 = a2[2];
  v17 = a2[3];
  v18 = a2[5];
  v31 = a2[4];
  v32 = v14;
  v33 = v18;
  v34 = v15;
  v19 = type metadata accessor for GroupLayoutBindingContext(0);
  *(a3 + v19[14]) = MEMORY[0x1E69E7CC8];
  v20 = MEMORY[0x1E69E7CC0];
  *(a3 + v19[15]) = MEMORY[0x1E69E7CC0];
  *(a3 + v19[19]) = 0;
  v35 = a1;
  sub_1D5B68374(a1, a3 + 8);
  *(a3 + 48) = sub_1D5BF796C(v20);
  sub_1D5B7F04C(0, &unk_1EDF19A00, &type metadata for FeedSlot, MEMORY[0x1E69E6F90]);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1D7273AE0;
  v36 = v32;
  v37 = v15;
  v38 = v16;
  v39 = v17;
  v40 = v31;
  v41 = v18;
  sub_1D6724598((v21 + 32));
  v36 = v21;
  sub_1D5B7F04C(0, &qword_1EDF3C930, &type metadata for FeedSlot, MEMORY[0x1E69E62F8]);
  sub_1D6306FC4();
  sub_1D5BCAF5C();
  *(a3 + 72) = sub_1D72623BC();
  *(a3 + 80) = v21;
  *(a3 + 56) = MEMORY[0x1E69E7CD0];
  v22 = MEMORY[0x1E69E7CC0];
  *(a3 + 64) = sub_1D605B514(MEMORY[0x1E69E7CC0]);
  *(a3 + v19[16]) = 0;
  v23 = v19[13];
  v24 = *MEMORY[0x1E69D7218];
  v25 = sub_1D725A0AC();
  (*(*(v25 - 8) + 104))(a3 + v23, v24, v25);
  *a3 = 1;
  *(a3 + 96) = sub_1D605B66C(v22);
  *(a3 + v19[18]) = 0x7FFFFFFFFFFFFFFFLL;
  *(a3 + v19[17]) = 0;
  *(a3 + 88) = 1;

  v26 = *(v16 + 16);
  if (v26)
  {
    v27 = v16 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v28 = *(v30 + 72);
    do
    {
      sub_1D5BD86D4(v27, v13, type metadata accessor for FeedItemAuxiliaryItem);
      sub_1D5BD86D4(v13, v9, type metadata accessor for FeedItem);
      sub_1D5BCF630(v13, type metadata accessor for FeedItemAuxiliaryItem);
      sub_1D5BCEE08(v9);
      sub_1D5BCF630(v9, type metadata accessor for FeedItem);
      v27 += v28;
      --v26;
    }

    while (v26);
  }

  return __swift_destroy_boxed_opaque_existential_1(v35);
}

uint64_t *sub_1D62F3E3C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = a3;
  v3 = *result;
  v30 = *(*result + 16);
  if (v30)
  {
    v5 = 0;
    v29 = v3 + 32;
    v6 = a2 + 56;
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v3 + 16))
    {
      sub_1D5B68374(v29 + 40 * v5, &v34);
      __swift_project_boxed_opaque_existential_1(&v34, v35);
      v8 = sub_1D725AA4C();
      v10 = v9;
      if (*(a2 + 16) && (v11 = v8, sub_1D7264A0C(), sub_1D72621EC(), v12 = sub_1D7264A5C(), v13 = -1 << *(a2 + 32), v14 = v12 & ~v13, ((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        while (1)
        {
          v16 = (*(a2 + 48) + 16 * v14);
          v17 = *v16 == v11 && v16[1] == v10;
          if (v17 || (sub_1D72646CC() & 1) != 0)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v6 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1D5B63F14(&v34, v31);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v36 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5BD0BA0(0, *(v7 + 16) + 1, 1);
          v7 = v36;
        }

        v20 = *(v7 + 16);
        v19 = *(v7 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1D5BD0BA0((v19 > 1), v20 + 1, 1);
        }

        v21 = v32;
        v22 = v33;
        v23 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
        v24 = MEMORY[0x1EEE9AC00](v23, v23);
        v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v27 + 16))(v26, v24);
        sub_1D5BD0BE4(v20, v26, &v36, v21, v22);
        result = __swift_destroy_boxed_opaque_existential_1(v31);
        v7 = v36;
      }

      else
      {
LABEL_3:

        result = __swift_destroy_boxed_opaque_existential_1(&v34);
      }

      if (++v5 == v30)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_22:
    *v28 = v7;
  }

  return result;
}

uint64_t GroupLayoutBindingContext.count.getter()
{
  v1 = type metadata accessor for GroupLayoutBindingContext(0);
  v2 = 0;
  result = 0;
  v4 = *(v0 + *(v1 + 56));
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = v2;
LABEL_10:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = *(*(*(v4 + 56) + ((v9 << 9) | (8 * v10))) + 16);
    v12 = __OFADD__(result, v11);
    result += v11;
    if (v12)
    {
      __break(1u);
      return result;
    }
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v8)
    {
      return result;
    }

    v7 = *(v4 + 64 + 8 * v9);
    ++v2;
    if (v7)
    {
      v2 = v9;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

double sub_1D62F41C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = type metadata accessor for GroupLayoutBindingContext(0);
  v8 = *(v25 + 56);
  v9 = *(v3 + v8);
  v10 = *(v9 + 16);

  v26 = a2;
  if (v10 && (v11 = sub_1D5BCF83C(0x6F4D6E6967756C50, 0xEB000000006C6564, a2, a3), (v12 & 1) != 0))
  {
    v13 = *(*(v9 + 56) + 8 * v11);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v13 = sub_1D5BDEE24(0, v13[2] + 1, 1, v13);
  }

  v15 = v13[2];
  v14 = v13[3];
  if (v15 >= v14 >> 1)
  {
    v13 = sub_1D5BDEE24((v14 > 1), v15 + 1, 1, v13);
  }

  v16 = sub_1D725CC1C();
  v28 = v16;
  v17 = sub_1D5B7EEE0(&qword_1EDF17308, MEMORY[0x1E69D7608], &protocol conformance descriptor for PluginModel);
  v29 = v17;
  *&v27 = a1;
  v13[2] = v15 + 1;
  sub_1D5B63F14(&v27, &v13[5 * v15 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v27 = *(v4 + v8);
  sub_1D5BCF690(v13, 0x6F4D6E6967756C50, 0xEB000000006C6564, v26, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v8) = v27;
  v19 = *(v25 + 60);
  v20 = *(v4 + v19);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_1D5BCFD9C(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_1D5BCFD9C((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v23 = &v20[72 * v22];
  *(v23 + 4) = 0x6F4D6E6967756C50;
  *(v23 + 5) = 0xEB000000006C6564;
  *(v23 + 6) = v26;
  *(v23 + 7) = a3;
  *(v23 + 8) = a1;
  result = *&v27;
  *(v23 + 72) = v27;
  *(v23 + 11) = v16;
  *(v23 + 12) = v17;
  *(v4 + v19) = v20;
  return result;
}

double sub_1D62F4468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v31 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x4F70614764656546, 0xEE00656E696C6666, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6307094(a1, &v32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v33 = &type metadata for FeedGapOffline;
  v17 = sub_1D63070F0();
  v34 = v17;
  v18 = swift_allocObject();
  *&v32 = v18;
  v19 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v19;
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = *(a1 + 80);
  v20 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v20;
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v32, &v14[5 * v16 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32 = *(v4 + v9);
  sub_1D5BCF690(v14, 0x4F70614764656546, 0xEE00656E696C6666, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v32;
  v22 = swift_allocObject();
  v23 = *(a1 + 48);
  *(v22 + 48) = *(a1 + 32);
  *(v22 + 64) = v23;
  *(v22 + 80) = *(a1 + 64);
  *(v22 + 96) = *(a1 + 80);
  v24 = *(a1 + 16);
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  v25 = *(v8 + 60);
  v26 = *(v4 + v25);
  sub_1D6307094(a1, &v32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1D5BCFD9C(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1D5BCFD9C((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[72 * v28];
  strcpy(v29 + 32, "FeedGapOffline");
  v29[47] = -18;
  *(v29 + 6) = v31;
  *(v29 + 7) = a3;
  *(v29 + 8) = v22;
  result = *&v32;
  *(v29 + 72) = v32;
  *(v29 + 11) = &type metadata for FeedGapOffline;
  *(v29 + 12) = v17;
  *(v4 + v25) = v26;
  return result;
}

__n128 sub_1D62F477C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GroupLayoutBindingContext(0);
  v12 = *(v11 + 56);
  v40 = v3;
  v36 = v12;
  v37 = v11;
  v13 = *(v3 + v12);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_1D5BCF83C(0x4562655764656546, 0xEC0000006465626DLL, a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v10, type metadata accessor for FeedWebEmbed);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D5BDEE24(0, v17[2] + 1, 1, v17);
  }

  v38 = a1;
  v39 = a2;
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D5BDEE24((v18 > 1), v19 + 1, 1, v17);
  }

  v42.n128_u64[1] = v7;
  v20 = sub_1D5B7EEE0(&qword_1EDF12B88, type metadata accessor for FeedWebEmbed, &protocol conformance descriptor for FeedWebEmbed);
  *&v43 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D5BD86D4(v10, boxed_opaque_existential_1, type metadata accessor for FeedWebEmbed);
  v17[2] = v19 + 1;
  sub_1D5B63F14(&v41, &v17[5 * v19 + 4]);
  sub_1D5BCF630(v10, type metadata accessor for FeedWebEmbed);

  v22 = v40;
  v23 = v36;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = *(v22 + v23);
  v25 = v17;
  v26 = v39;
  sub_1D5BCF690(v25, 0x4562655764656546, 0xEC0000006465626DLL, v39, a3, isUniquelyReferenced_nonNull_native);

  *(v22 + v23) = v41;
  *(&v44 + 1) = v7;
  v45 = v20;
  v27 = __swift_allocate_boxed_opaque_existential_1(&v43);
  sub_1D5BD86D4(v38, v27, type metadata accessor for FeedWebEmbed);
  strcpy(&v41, "FeedWebEmbed");
  BYTE13(v41) = 0;
  HIWORD(v41) = -5120;
  v42.n128_u64[0] = v26;
  v42.n128_u64[1] = a3;
  v28 = *(v37 + 60);
  v29 = *(v22 + v28);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1D5BCFD9C(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1D5BCFD9C((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v32 = &v29[72 * v31];
  *(v32 + 2) = v41;
  result = v42;
  v34 = v43;
  v35 = v44;
  *(v32 + 12) = v45;
  *(v32 + 4) = v34;
  *(v32 + 5) = v35;
  *(v32 + 3) = result;
  *(v40 + v28) = v29;
  return result;
}

double sub_1D62F4AF4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v35 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x7573734964656546, 0xE900000000000065, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5ECF2C4(a1, &v36);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v37 = &type metadata for FeedIssue;
  v17 = sub_1D5EE5AA4();
  v38 = v17;
  v18 = swift_allocObject();
  *&v36 = v18;
  v19 = a1[7];
  v18[7] = a1[6];
  v18[8] = v19;
  *(v18 + 137) = *(a1 + 121);
  v20 = a1[3];
  v18[3] = a1[2];
  v18[4] = v20;
  v21 = a1[5];
  v18[5] = a1[4];
  v18[6] = v21;
  v22 = a1[1];
  v18[1] = *a1;
  v18[2] = v22;
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v36, &v14[5 * v16 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v36 = *(v4 + v9);
  sub_1D5BCF690(v14, 0x7573734964656546, 0xE900000000000065, v35, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v36;
  v24 = swift_allocObject();
  v25 = a1[3];
  v24[3] = a1[2];
  v24[4] = v25;
  *(v24 + 137) = *(a1 + 121);
  v26 = a1[7];
  v24[7] = a1[6];
  v24[8] = v26;
  v27 = a1[5];
  v24[5] = a1[4];
  v24[6] = v27;
  v28 = a1[1];
  v24[1] = *a1;
  v24[2] = v28;
  v29 = *(v8 + 60);
  v30 = *(v4 + v29);
  sub_1D5ECF2C4(a1, &v36);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v30 = sub_1D5BCFD9C(0, *(v30 + 2) + 1, 1, v30);
  }

  v32 = *(v30 + 2);
  v31 = *(v30 + 3);
  if (v32 >= v31 >> 1)
  {
    v30 = sub_1D5BCFD9C((v31 > 1), v32 + 1, 1, v30);
  }

  *(v30 + 2) = v32 + 1;
  v33 = &v30[72 * v32];
  *(v33 + 4) = 0x7573734964656546;
  *(v33 + 5) = 0xE900000000000065;
  *(v33 + 6) = v35;
  *(v33 + 7) = a3;
  *(v33 + 8) = v24;
  result = *&v36;
  *(v33 + 72) = v36;
  *(v33 + 11) = &type metadata for FeedIssue;
  *(v33 + 12) = v17;
  *(v4 + v29) = v30;
  return result;
}

double sub_1D62F4E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v26 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x6174614364656546, 0xEF6D657449676F6CLL, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5F76E40(a1, v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v28 = &type metadata for FeedCatalogItem;
  v17 = sub_1D5F76E9C();
  v29 = v17;
  *&v27 = swift_allocObject();
  sub_1D5F76E40(v30, v27 + 16);
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v27, &v14[5 * v16 + 4]);
  sub_1D5F76EF0(v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *(v4 + v9);
  sub_1D5BCF690(v14, 0x6174614364656546, 0xEF6D657449676F6CLL, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v30[0];
  v19 = swift_allocObject();
  sub_1D5F76E40(a1, v19 + 16);
  v20 = *(v8 + 60);
  v21 = *(v4 + v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1D5BCFD9C(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D5BCFD9C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[72 * v23];
  *(v24 + 4) = 0x6174614364656546;
  *(v24 + 5) = 0xEF6D657449676F6CLL;
  *(v24 + 6) = v26;
  *(v24 + 7) = a3;
  *(v24 + 8) = v19;
  result = v30[0];
  *(v24 + 72) = *v30;
  *(v24 + 11) = &type metadata for FeedCatalogItem;
  *(v24 + 12) = v17;
  *(v4 + v20) = v21;
  return result;
}

double sub_1D62F50EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v26 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x67615464656546, 0xE700000000000000, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5EE5AF8(a1, v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v28 = &type metadata for FeedTag;
  v17 = sub_1D5EE5BA8();
  v29 = v17;
  *&v27 = swift_allocObject();
  sub_1D5EE5AF8(v30, v27 + 16);
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v27, &v14[5 * v16 + 4]);
  sub_1D5EE5B54(v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30[0] = *(v4 + v9);
  sub_1D5BCF690(v14, 0x67615464656546, 0xE700000000000000, v26, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = *&v30[0];
  v19 = swift_allocObject();
  sub_1D5EE5AF8(a1, v19 + 16);
  v20 = *(v8 + 60);
  v21 = *(v4 + v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1D5BCFD9C(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D5BCFD9C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[72 * v23];
  *(v24 + 4) = 0x67615464656546;
  *(v24 + 5) = 0xE700000000000000;
  *(v24 + 6) = v26;
  *(v24 + 7) = a3;
  *(v24 + 8) = v19;
  result = *v30;
  *(v24 + 72) = v30[0];
  *(v24 + 11) = &type metadata for FeedTag;
  *(v24 + 12) = v17;
  *(v4 + v20) = v21;
  return result;
}

__n128 sub_1D62F53AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for FeedCustomItem(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for GroupLayoutBindingContext(0);
  v12 = *(v11 + 56);
  v40 = v3;
  v36 = v12;
  v37 = v11;
  v13 = *(v3 + v12);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_1D5BCF83C(0x7473754364656546, 0xEE006D6574496D6FLL, a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v10, type metadata accessor for FeedCustomItem);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D5BDEE24(0, v17[2] + 1, 1, v17);
  }

  v38 = a1;
  v39 = a2;
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D5BDEE24((v18 > 1), v19 + 1, 1, v17);
  }

  v42.n128_u64[1] = v7;
  v20 = sub_1D5B7EEE0(&qword_1EDF15710, type metadata accessor for FeedCustomItem, &protocol conformance descriptor for FeedCustomItem);
  *&v43 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D5BD86D4(v10, boxed_opaque_existential_1, type metadata accessor for FeedCustomItem);
  v17[2] = v19 + 1;
  sub_1D5B63F14(&v41, &v17[5 * v19 + 4]);
  sub_1D5BCF630(v10, type metadata accessor for FeedCustomItem);

  v22 = v40;
  v23 = v36;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = *(v22 + v23);
  v25 = v17;
  v26 = v39;
  sub_1D5BCF690(v25, 0x7473754364656546, 0xEE006D6574496D6FLL, v39, a3, isUniquelyReferenced_nonNull_native);

  *(v22 + v23) = v41;
  *(&v44 + 1) = v7;
  v45 = v20;
  v27 = __swift_allocate_boxed_opaque_existential_1(&v43);
  sub_1D5BD86D4(v38, v27, type metadata accessor for FeedCustomItem);
  strcpy(&v41, "FeedCustomItem");
  HIBYTE(v41) = -18;
  v42.n128_u64[0] = v26;
  v42.n128_u64[1] = a3;
  v28 = *(v37 + 60);
  v29 = *(v22 + v28);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_1D5BCFD9C(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_1D5BCFD9C((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  v32 = &v29[72 * v31];
  *(v32 + 2) = v41;
  result = v42;
  v34 = v43;
  v35 = v44;
  *(v32 + 12) = v45;
  *(v32 + 4) = v34;
  *(v32 + 5) = v35;
  *(v32 + 3) = result;
  *(v40 + v28) = v29;
  return result;
}

double sub_1D62F572C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v26 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x6574614364656546, 0xEC00000079726F67, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5F76D3C(a1, v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v28 = &type metadata for FeedCategory;
  v17 = sub_1D5F76D98();
  v29 = v17;
  *&v27 = swift_allocObject();
  sub_1D5F76D3C(v30, v27 + 16);
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v27, &v14[5 * v16 + 4]);
  sub_1D5F76DEC(v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30[0] = *(v4 + v9);
  sub_1D5BCF690(v14, 0x6574614364656546, 0xEC00000079726F67, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = *&v30[0];
  v19 = swift_allocObject();
  sub_1D5F76D3C(a1, v19 + 16);
  v20 = *(v8 + 60);
  v21 = *(v4 + v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1D5BCFD9C(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D5BCFD9C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[72 * v23];
  strcpy(v24 + 32, "FeedCategory");
  v24[45] = 0;
  *(v24 + 23) = -5120;
  *(v24 + 6) = v26;
  *(v24 + 7) = a3;
  *(v24 + 8) = v19;
  result = *v30;
  *(v24 + 72) = v30[0];
  *(v24 + 11) = &type metadata for FeedCategory;
  *(v24 + 12) = v17;
  *(v4 + v20) = v21;
  return result;
}

__n128 sub_1D62F5A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = type metadata accessor for FeedEngagementBanner(0);
  MEMORY[0x1EEE9AC00](v35, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for GroupLayoutBindingContext(0);
  v10 = *(v34 + 56);
  v38 = v3;
  v11 = *(v3 + v10);
  v12 = *(v11 + 16);

  if (v12 && (v13 = sub_1D5BCF83C(0xD000000000000014, 0x80000001D73D1900, a2, a3), (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v9, type metadata accessor for FeedEngagementBanner);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1D5BDEE24(0, v15[2] + 1, 1, v15);
  }

  v18 = v15[2];
  v17 = v15[3];
  v36 = a1;
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1D5BDEE24((v17 > 1), v18 + 1, 1, v15);
  }

  v19 = v35;
  v40.n128_u64[1] = v35;
  v20 = sub_1D5B7EEE0(&qword_1EDF14740, type metadata accessor for FeedEngagementBanner, &protocol conformance descriptor for FeedEngagementBanner);
  *&v41 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  sub_1D5BD86D4(v9, boxed_opaque_existential_1, type metadata accessor for FeedEngagementBanner);
  v15[2] = v18 + 1;
  sub_1D5B63F14(&v39, &v15[5 * v18 + 4]);
  sub_1D5BCF630(v9, type metadata accessor for FeedEngagementBanner);

  v22 = v38;

  v23 = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = *(v22 + v10);
  v24 = v37;
  sub_1D5BCF690(v15, 0xD000000000000014, 0x80000001D73D1900, v37, a3, v23);

  *(v22 + v10) = v39;
  *(&v42 + 1) = v19;
  v43 = v20;
  v25 = __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D5BD86D4(v36, v25, type metadata accessor for FeedEngagementBanner);
  *&v39 = 0xD000000000000014;
  *(&v39 + 1) = 0x80000001D73D1900;
  v40.n128_u64[0] = v24;
  v40.n128_u64[1] = a3;
  v26 = *(v34 + 60);
  v27 = *(v22 + v26);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1D5BCFD9C(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1D5BCFD9C((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = &v27[72 * v29];
  *(v30 + 2) = v39;
  result = v40;
  v32 = v41;
  v33 = v42;
  *(v30 + 12) = v43;
  *(v30 + 4) = v32;
  *(v30 + 5) = v33;
  *(v30 + 3) = result;
  *(v38 + v26) = v27;
  return result;
}

double sub_1D62F5D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v29 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x726F705364656546, 0xEF746E6576457374, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D6307144(a1, &v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v31 = &type metadata for FeedSportsEvent;
  v17 = sub_1D62DC038();
  v32 = v17;
  v18 = swift_allocObject();
  *&v30 = v18;
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v30, &v14[5 * v16 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v30 = *(v4 + v9);
  sub_1D5BCF690(v14, 0x726F705364656546, 0xEF746E6576457374, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v30;
  v21 = swift_allocObject();
  v22 = *(a1 + 16);
  *(v21 + 16) = *a1;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(a1 + 32);
  v23 = *(v8 + 60);
  v24 = *(v4 + v23);
  sub_1D6307144(a1, &v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_1D5BCFD9C(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_1D5BCFD9C((v25 > 1), v26 + 1, 1, v24);
  }

  *(v24 + 2) = v26 + 1;
  v27 = &v24[72 * v26];
  *(v27 + 4) = 0x726F705364656546;
  *(v27 + 5) = 0xEF746E6576457374;
  *(v27 + 6) = v29;
  *(v27 + 7) = a3;
  *(v27 + 8) = v21;
  result = *&v30;
  *(v27 + 72) = v30;
  *(v27 + 11) = &type metadata for FeedSportsEvent;
  *(v27 + 12) = v17;
  *(v4 + v23) = v24;
  return result;
}

double sub_1D62F606C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v26 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x7A7A755064656546, 0xEA0000000000656CLL, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5F2DEAC(a1, v30);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v28 = &type metadata for FeedPuzzle;
  v17 = sub_1D63071A0();
  v29 = v17;
  *&v27 = swift_allocObject();
  sub_1D5F2DEAC(v30, v27 + 16);
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v27, &v14[5 * v16 + 4]);
  sub_1D5F2DF58(v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30[0] = *(v4 + v9);
  sub_1D5BCF690(v14, 0x7A7A755064656546, 0xEA0000000000656CLL, v26, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v30[0];
  v19 = swift_allocObject();
  sub_1D5F2DEAC(a1, v19 + 16);
  v20 = *(v8 + 60);
  v21 = *(v4 + v20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1D5BCFD9C(0, *(v21 + 2) + 1, 1, v21);
  }

  v23 = *(v21 + 2);
  v22 = *(v21 + 3);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_1D5BCFD9C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 2) = v23 + 1;
  v24 = &v21[72 * v23];
  *(v24 + 4) = 0x7A7A755064656546;
  *(v24 + 5) = 0xEA0000000000656CLL;
  *(v24 + 6) = v26;
  *(v24 + 7) = a3;
  *(v24 + 8) = v19;
  result = v30[0];
  *(v24 + 72) = *v30;
  *(v24 + 11) = &type metadata for FeedPuzzle;
  *(v24 + 12) = v17;
  *(v4 + v20) = v21;
  return result;
}

double sub_1D62F6340(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v31 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x7A7A755064656546, 0xEE0065707954656CLL, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D63071F4(a1, &v32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v33 = &type metadata for FeedPuzzleType;
  v17 = sub_1D6307250();
  v34 = v17;
  v18 = swift_allocObject();
  *&v32 = v18;
  v19 = a1[1];
  v18[1] = *a1;
  v18[2] = v19;
  v20 = a1[3];
  v18[3] = a1[2];
  v18[4] = v20;
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v32, &v14[5 * v16 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v32 = *(v4 + v9);
  sub_1D5BCF690(v14, 0x7A7A755064656546, 0xEE0065707954656CLL, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v32;
  v22 = swift_allocObject();
  v23 = a1[1];
  v22[1] = *a1;
  v22[2] = v23;
  v24 = a1[3];
  v22[3] = a1[2];
  v22[4] = v24;
  v25 = *(v8 + 60);
  v26 = *(v4 + v25);
  sub_1D63071F4(a1, &v32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1D5BCFD9C(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1D5BCFD9C((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[72 * v28];
  strcpy(v29 + 32, "FeedPuzzleType");
  v29[47] = -18;
  *(v29 + 6) = v31;
  *(v29 + 7) = a3;
  *(v29 + 8) = v22;
  result = *&v32;
  *(v29 + 72) = v32;
  *(v29 + 11) = &type metadata for FeedPuzzleType;
  *(v29 + 12) = v17;
  *(v4 + v25) = v26;
  return result;
}

__n128 sub_1D62F6634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = type metadata accessor for FeedPuzzleStatistic(0);
  MEMORY[0x1EEE9AC00](v35, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for GroupLayoutBindingContext(0);
  v10 = *(v34 + 56);
  v38 = v3;
  v11 = *(v3 + v10);
  v12 = *(v11 + 16);

  if (v12 && (v13 = sub_1D5BCF83C(0xD000000000000013, 0x80000001D73C3770, a2, a3), (v14 & 1) != 0))
  {
    v15 = *(*(v11 + 56) + 8 * v13);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v9, type metadata accessor for FeedPuzzleStatistic);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_1D5BDEE24(0, v15[2] + 1, 1, v15);
  }

  v18 = v15[2];
  v17 = v15[3];
  v36 = a1;
  if (v18 >= v17 >> 1)
  {
    v15 = sub_1D5BDEE24((v17 > 1), v18 + 1, 1, v15);
  }

  v19 = v35;
  v40.n128_u64[1] = v35;
  v20 = sub_1D5B7EEE0(&qword_1EC885960, type metadata accessor for FeedPuzzleStatistic, &protocol conformance descriptor for FeedPuzzleStatistic);
  *&v41 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v39);
  sub_1D5BD86D4(v9, boxed_opaque_existential_1, type metadata accessor for FeedPuzzleStatistic);
  v15[2] = v18 + 1;
  sub_1D5B63F14(&v39, &v15[5 * v18 + 4]);
  sub_1D5BCF630(v9, type metadata accessor for FeedPuzzleStatistic);

  v22 = v38;

  v23 = swift_isUniquelyReferenced_nonNull_native();
  *&v39 = *(v22 + v10);
  v24 = v37;
  sub_1D5BCF690(v15, 0xD000000000000013, 0x80000001D73C3770, v37, a3, v23);

  *(v22 + v10) = v39;
  *(&v42 + 1) = v19;
  v43 = v20;
  v25 = __swift_allocate_boxed_opaque_existential_1(&v41);
  sub_1D5BD86D4(v36, v25, type metadata accessor for FeedPuzzleStatistic);
  *&v39 = 0xD000000000000013;
  *(&v39 + 1) = 0x80000001D73C3770;
  v40.n128_u64[0] = v24;
  v40.n128_u64[1] = a3;
  v26 = *(v34 + 60);
  v27 = *(v22 + v26);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_1D5BCFD9C(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  if (v29 >= v28 >> 1)
  {
    v27 = sub_1D5BCFD9C((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  v30 = &v27[72 * v29];
  *(v30 + 2) = v39;
  result = v40;
  v32 = v41;
  v33 = v42;
  *(v30 + 12) = v43;
  *(v30 + 4) = v32;
  *(v30 + 5) = v33;
  *(v30 + 3) = result;
  *(v38 + v26) = v27;
  return result;
}

double sub_1D62F69A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for GroupLayoutBindingContext(0);
  v9 = *(v8 + 56);
  v10 = *(v3 + v9);
  v11 = *(v10 + 16);

  v41 = a2;
  if (v11 && (v12 = sub_1D5BCF83C(0x7779615064656546, 0xEB000000006C6C61, a2, a3), (v13 & 1) != 0))
  {
    v14 = *(*(v10 + 56) + 8 * v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  sub_1D62DAD08(a1, &v42);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v14 = sub_1D5BDEE24(0, v14[2] + 1, 1, v14);
  }

  v16 = v14[2];
  v15 = v14[3];
  if (v16 >= v15 >> 1)
  {
    v14 = sub_1D5BDEE24((v15 > 1), v16 + 1, 1, v14);
  }

  v43 = &type metadata for FeedPaywall;
  v17 = sub_1D62DBF34();
  v44 = v17;
  v18 = swift_allocObject();
  *&v42 = v18;
  v19 = *(a1 + 208);
  *(v18 + 208) = *(a1 + 192);
  *(v18 + 224) = v19;
  *(v18 + 240) = *(a1 + 224);
  *(v18 + 256) = *(a1 + 240);
  v20 = *(a1 + 144);
  *(v18 + 144) = *(a1 + 128);
  *(v18 + 160) = v20;
  v21 = *(a1 + 176);
  *(v18 + 176) = *(a1 + 160);
  *(v18 + 192) = v21;
  v22 = *(a1 + 80);
  *(v18 + 80) = *(a1 + 64);
  *(v18 + 96) = v22;
  v23 = *(a1 + 112);
  *(v18 + 112) = *(a1 + 96);
  *(v18 + 128) = v23;
  v24 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v24;
  v25 = *(a1 + 48);
  *(v18 + 48) = *(a1 + 32);
  *(v18 + 64) = v25;
  v14[2] = v16 + 1;
  sub_1D5B63F14(&v42, &v14[5 * v16 + 4]);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v42 = *(v4 + v9);
  sub_1D5BCF690(v14, 0x7779615064656546, 0xEB000000006C6C61, a2, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v9) = v42;
  v27 = swift_allocObject();
  v28 = *(a1 + 208);
  *(v27 + 208) = *(a1 + 192);
  *(v27 + 224) = v28;
  *(v27 + 240) = *(a1 + 224);
  *(v27 + 256) = *(a1 + 240);
  v29 = *(a1 + 144);
  *(v27 + 144) = *(a1 + 128);
  *(v27 + 160) = v29;
  v30 = *(a1 + 176);
  *(v27 + 176) = *(a1 + 160);
  *(v27 + 192) = v30;
  v31 = *(a1 + 80);
  *(v27 + 80) = *(a1 + 64);
  *(v27 + 96) = v31;
  v32 = *(a1 + 112);
  *(v27 + 112) = *(a1 + 96);
  *(v27 + 128) = v32;
  v33 = *(a1 + 16);
  *(v27 + 16) = *a1;
  *(v27 + 32) = v33;
  v34 = *(a1 + 48);
  *(v27 + 48) = *(a1 + 32);
  *(v27 + 64) = v34;
  v35 = *(v8 + 60);
  v36 = *(v4 + v35);
  sub_1D62DAD08(a1, &v42);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v36 = sub_1D5BCFD9C(0, *(v36 + 2) + 1, 1, v36);
  }

  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_1D5BCFD9C((v37 > 1), v38 + 1, 1, v36);
  }

  *(v36 + 2) = v38 + 1;
  v39 = &v36[72 * v38];
  *(v39 + 4) = 0x7779615064656546;
  *(v39 + 5) = 0xEB000000006C6C61;
  *(v39 + 6) = v41;
  *(v39 + 7) = a3;
  *(v39 + 8) = v27;
  result = *&v42;
  *(v39 + 72) = v42;
  *(v39 + 11) = &type metadata for FeedPaywall;
  *(v39 + 12) = v17;
  *(v4 + v35) = v36;
  return result;
}

__n128 sub_1D62F6CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for GroupLayoutBindingContext(0);
  v12 = *(v33 + 56);
  v13 = *(v3 + v12);
  v14 = *(v13 + 16);

  if (v14 && (v15 = sub_1D5BCF83C(0x6963655264656546, 0xEA00000000006570, a2, a3), (v16 & 1) != 0))
  {
    v17 = *(*(v13 + 56) + 8 * v15);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  sub_1D5BD86D4(a1, v11, type metadata accessor for FeedRecipe);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D5BDEE24(0, v17[2] + 1, 1, v17);
  }

  v34 = a1;
  v35 = a2;
  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D5BDEE24((v18 > 1), v19 + 1, 1, v17);
  }

  v37.n128_u64[1] = v8;
  v20 = sub_1D5B7EEE0(&qword_1EDF12E00, type metadata accessor for FeedRecipe, &protocol conformance descriptor for FeedRecipe);
  *&v38 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
  sub_1D5BD86D4(v11, boxed_opaque_existential_1, type metadata accessor for FeedRecipe);
  v17[2] = v19 + 1;
  sub_1D5B63F14(&v36, &v17[5 * v19 + 4]);
  sub_1D5BCF630(v11, type metadata accessor for FeedRecipe);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v36 = *(v4 + v12);
  v23 = v35;
  sub_1D5BCF690(v17, 0x6963655264656546, 0xEA00000000006570, v35, a3, isUniquelyReferenced_nonNull_native);

  *(v4 + v12) = v36;
  *(&v39 + 1) = v8;
  v40 = v20;
  v24 = __swift_allocate_boxed_opaque_existential_1(&v38);
  sub_1D5BD86D4(v34, v24, type metadata accessor for FeedRecipe);
  *&v36 = 0x6963655264656546;
  *(&v36 + 1) = 0xEA00000000006570;
  v37.n128_u64[0] = v23;
  v37.n128_u64[1] = a3;
  v25 = *(v33 + 60);
  v26 = *(v4 + v25);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_1D5BCFD9C(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_1D5BCFD9C((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v29 = &v26[72 * v28];
  *(v29 + 2) = v36;
  result = v37;
  v31 = v38;
  v32 = v39;
  *(v29 + 12) = v40;
  *(v29 + 4) = v31;
  *(v29 + 5) = v32;
  *(v29 + 3) = result;
  *(v4 + v25) = v26;
  return result;
}

__n128 GroupLayoutBindingContext.bind<A>(_:name:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1, a1);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14, v15);
  v18 = v50 - v17;
  v56 = v11;
  v20 = *(v11 + 16);
  v19 = v11 + 16;
  v58 = v21;
  v22 = v20;
  (v20)(v50 - v17, v16);

  v51 = v18;
  v57 = a5;
  sub_1D61A57CC(v18, a2, a3, a4, &v60);
  v23 = v60;
  v24 = v61;
  v55 = type metadata accessor for GroupLayoutBindingContext(0);
  v25 = *(v55 + 56);
  v59 = v6;
  v52 = v25;
  v53 = v24.n128_u64[0];
  v26 = *(v6 + v25);
  if (*(v26 + 16) && (v27 = sub_1D5BCF83C(v23, *(&v23 + 1), v24.n128_i64[0], v24.n128_i64[1]), (v28 & 1) != 0))
  {
    v29 = *(*(v26 + 56) + 8 * v27);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  v22(v13, v58, a4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v24.n128_u64[0];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_1D5BDEE24(0, v29[2] + 1, 1, v29);
    v65 = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  v54 = v23;
  if (v32 >= v31 >> 1)
  {
    v29 = sub_1D5BDEE24((v31 > 1), v32 + 1, 1, v29);
    v65 = v29;
  }

  v33 = v51;
  v50[0] = v22;
  v50[1] = v19;
  v22(v51, v13, a4);
  sub_1D6302700(v32, v33, &v65, a4, v57);
  v34 = v56;
  (*(v56 + 8))(v13, a4);

  v35 = v59;
  v36 = v52;

  v37 = swift_isUniquelyReferenced_nonNull_native();
  *&v60 = *(v35 + v36);
  v38 = v29;
  v40 = v53;
  v39 = v54;
  sub_1D5BCF690(v38, v54, *(&v23 + 1), v53, v24.n128_i64[1], v37);

  *(v35 + v36) = v60;
  (v50[0])(v33, v58, a4);
  *&v60 = v39;
  *(&v60 + 1) = *(&v23 + 1);
  v61.n128_u64[0] = v40;
  v61.n128_u64[1] = v24.n128_u64[1];
  *(&v63 + 1) = a4;
  v64 = v57;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
  (*(v34 + 32))(boxed_opaque_existential_1, v33, a4);
  v42 = *(v55 + 60);
  v43 = *(v35 + v42);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v43 = sub_1D5BCFD9C(0, *(v43 + 2) + 1, 1, v43);
  }

  v45 = *(v43 + 2);
  v44 = *(v43 + 3);
  if (v45 >= v44 >> 1)
  {
    v43 = sub_1D5BCFD9C((v44 > 1), v45 + 1, 1, v43);
  }

  *(v43 + 2) = v45 + 1;
  v46 = &v43[72 * v45];
  *(v46 + 2) = v60;
  result = v61;
  v48 = v62;
  v49 = v63;
  *(v46 + 12) = v64;
  *(v46 + 4) = v48;
  *(v46 + 5) = v49;
  *(v46 + 3) = result;
  *(v59 + v42) = v43;
  return result;
}

uint64_t sub_1D62F744C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, _BYTE *a5@<X4>, char *a6@<X5>, char *a7@<X8>)
{
  v8 = v7;
  v45 = a2;
  v46 = a6;
  v43 = a7;
  v44 = a1;
  v12 = sub_1D726393C();
  v41 = *(v12 - 8);
  v42 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v39 - v18;
  v20 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a3;
  result = type metadata accessor for GroupLayoutBindingContext(0);
  v27 = result;
  v28 = *(v8 + *(result + 76));
  if (v28 < *(v8 + *(result + 68)))
  {
    sub_1D62F881C(v44, v25, v45, a4 & 1, a5, v46, v19);
    if ((*(v20 + 48))(v19, 1, a5) != 1)
    {
      v37 = *(v20 + 32);
      v37(v24, v19, a5);
      v38 = v43;
      v37(v43, v24, a5);
      return (*(v20 + 56))(v38, 0, 1, a5);
    }

    result = (*(v41 + 8))(v19, v42);
  }

  v29 = *(v8 + *(v27 + 72));
  v30 = __OFSUB__(v29, v28);
  v31 = v29 - v28;
  if (v30)
  {
    __break(1u);
    return result;
  }

  if (v31 > 0)
  {
    return sub_1D62F8A74(v8, v44, v25, v45, a4 & 1, a5, v46, 0, v43, 1);
  }

  v32 = a4;
  v33 = a4 & 1;
  v34 = v44;
  v35 = v45;
  v36 = v46;
  sub_1D62F8A74(v8, v44, v25, v45, v33, a5, v46, 4096, v15, 0);
  v40 = *(v20 + 48);
  if (v40(v15, 1, a5) != 1)
  {
    v38 = v43;
    (*(v20 + 32))(v43, v15, a5);
    return (*(v20 + 56))(v38, 0, 1, a5);
  }

  sub_1D62F8A74(v8, v34, v25, v35, v32 & 1, a5, v36, 0, v43, 1);
  result = (v40)(v15, 1, a5);
  if (result != 1)
  {
    return (*(v41 + 8))(v15, v42);
  }

  return result;
}

uint64_t sub_1D62F77E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = sub_1D725AA4C();
  v6 = v5;
  if (v4 == sub_1D725AA4C() && v6 == v7)
  {

    v10 = 0;
  }

  else
  {
    v9 = sub_1D72646CC();

    v10 = v9 ^ 1;
  }

  return v10 & 1;
}

uint64_t sub_1D62F78BC(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a1 && (*a2 & 1) == 0)
  {

    v5 = sub_1D614BCAC(a3);

    return v5;
  }

  else
  {
  }
}

void sub_1D62F7928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a4;
  v8 = sub_1D72627FC();

  swift_getWitnessTable();
  v20 = sub_1D7263E7C();
  v16 = a3;
  v17 = a4;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1D5B874E4(sub_1D630B9B4, v15, v8, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  v12 = *(v11 + 16);
  if (v12 <= a2)
  {
  }

  else if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D62DCAC8(v11 + 32, a2, (2 * v12) | 1);

    v20 = a1;
    MEMORY[0x1EEE9AC00](v13, v14);

    sub_1D7263E7C();
  }
}

uint64_t sub_1D62F7B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24[0] = a6;
  v12 = MEMORY[0x1EEE9AC00](a1, a1);
  (*(v14 + 16))(v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v12);
  result = sub_1D72624EC();
  v16 = result;
  v17 = 0;
  v18 = *(result + 16);
  while (1)
  {
    if (v18 == v17)
    {

      return 0;
    }

    if (v17 >= *(v16 + 16))
    {
      break;
    }

    v19 = *(v16 + 8 * v17 + 32);
    result = sub_1D726279C();
    ++v17;
    if (result >= v19 || v19 == 0x7FFFFFFFFFFFFFFFLL)
    {

      *&v25 = a2;
      sub_1D72627FC();

      swift_getWitnessTable();
      sub_1D7262CBC();
      v25 = v27;
      v26 = v28;
      sub_1D7263AFC();
      swift_getWitnessTable();
      v21 = sub_1D726281C();
      *&v27 = a3;
      MEMORY[0x1EEE9AC00](v21, v22);
      v24[-6] = a4;
      v24[-5] = a5;
      v24[-4] = v24[0];
      v24[-3] = a7;
      v24[-2] = v23;

      swift_getWitnessTable();
      sub_1D7263E7C();
      return v21;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1D62F7D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D72627FC();
  swift_getWitnessTable();
  return (sub_1D72624DC() & 1) == 0;
}

uint64_t sub_1D62F7E38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D725AA4C();
  v6 = v5;
  if (v4 == sub_1D725AA4C() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D72646CC();
  }

  return v9 & 1;
}

uint64_t sub_1D62F7EF0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, _BYTE *a6@<X5>, char *a7@<X6>, char *a8@<X8>)
{
  v94 = a7;
  v80 = a5;
  v14 = sub_1D726393C();
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v78 = &v71 - v16;
  v17 = sub_1D72627FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v18);
  v20 = &v71 - v19;
  v81 = *(a6 - 1);
  MEMORY[0x1EEE9AC00](v21, v22);
  v79 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v71 - v26;
  v83 = swift_getTupleTypeMetadata2();
  v93 = sub_1D726393C();
  v88 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93, v28);
  v92 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = (&v71 - v32);
  v90 = *a2;
  v82 = *a4;
  v87 = *(a4 + 8);
  *&v96 = a1;
  WitnessTable = swift_getWitnessTable();
  if (sub_1D7262CCC())
  {
    v35 = swift_getTupleTypeMetadata2();
    v36 = *(*(v35 - 8) + 56);
    v37 = a8;
LABEL_20:
    v60 = 1;
    return v36(v37, v60, 1, v35);
  }

  else
  {
    v38 = *v91;
    v91 = a6;
    v74 = a8;
    v72 = v20;
    v73 = WitnessTable;
    if ((v38 & 1) != 0 || !a3)
    {
    }

    else
    {
      a1 = sub_1D614BCAC(a1);
    }

    v99 = a1;
    v39 = swift_getWitnessTable();
    MEMORY[0x1DA6F9AD0](v95, v17, v39);
    v75 = a1;

    v99 = *&v95[0];
    sub_1D72640AC();
    sub_1D726407C();
    v76 = v17;
    v89 = sub_1D726409C();
    v40 = (v88 + 32);
    v41 = v83;
    v88 = v83 - 8;
    v42 = (v81 + 32);
    v43 = v87;
    if (!v82)
    {
      v43 = 1;
    }

    v87 = v43;
    v44 = (v81 + 8);
    v86 = (v94 + 24);
    v85 = (v94 + 24) & 0xFFFFFFFFFFFFLL | 0xCD14000000000000;
    v45 = v91;
    while (1)
    {
      v46 = v92;
      sub_1D726408C();
      (*v40)(v33, v46, v93);
      if ((*(*(v41 - 8) + 48))(v33, 1, v41) == 1)
      {
        break;
      }

      v84 = *v33;
      v47 = *v42;
      (*v42)(v27, v33 + *(v41 + 48), v45);
      v48 = *v86;
      if (v87)
      {
        v49 = v45;
        v50 = 0;
        v51 = v94;
      }

      else
      {
        v52 = v42;
        v53 = v27;
        v54 = v94;
        v48(v95, v45, v94);
        v51 = v54;
        v27 = v53;
        v42 = v52;
        v41 = v83;
        v49 = v45;
        v50 = (v82 & ~*&v95[0]) == 0;
      }

      v48(v95, v49, v51);
      if ((v90 & ~*&v95[0]) == 0 && !v50)
      {

        *&v95[0] = v75;
        v55 = v79;
        sub_1D72627CC();
        v56 = v91;
        (*v44)(v27, v91);
        v57 = swift_getTupleTypeMetadata2();
        v58 = *(v57 + 48);
        v59 = v74;
        (v47)(v74, v55, v56);
        *&v59[v58] = *&v95[0];
        v36 = *(*(v57 - 8) + 56);
        v37 = v59;
LABEL_23:
        v60 = 0;
        v35 = v57;
        return v36(v37, v60, 1, v35);
      }

      v45 = v91;
      (*v44)(v27, v91);
    }

    if (v80)
    {

      v35 = swift_getTupleTypeMetadata2();
      v36 = *(*(v35 - 8) + 56);
      v37 = v74;
      goto LABEL_20;
    }

    v61 = v75;
    v99 = v75;
    v62 = v78;
    sub_1D7262C9C();
    result = (*(v81 + 48))(v62, 1, v45);
    if (result != 1)
    {
      v64 = TupleTypeMetadata2;
      v65 = *(TupleTypeMetadata2 + 48);
      v94 = *v42;
      v66 = v72;
      (v94)(v72, v62, v45);
      v98 = v61;
      *&v95[0] = 1;
      sub_1D630B814(0, &qword_1EC885990, MEMORY[0x1E69E6D08]);
      swift_getWitnessTable();
      v67 = v45;
      sub_1D630B874();
      sub_1D7261F9C();

      v95[0] = v96;
      v95[1] = v97;
      sub_1D7263AFC();
      swift_getWitnessTable();
      *&v66[v65] = sub_1D726281C();
      v68 = *&v66[*(v64 + 48)];
      v57 = swift_getTupleTypeMetadata2();
      v69 = *(v57 + 48);
      v70 = v74;
      (v94)(v74, v66, v67);
      *&v70[v69] = v68;
      v36 = *(*(v57 - 8) + 56);
      v37 = v70;
      goto LABEL_23;
    }

    __break(1u);
  }

  return result;
}

BOOL sub_1D62F87BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D725AA4C();
  LOBYTE(a2) = sub_1D5BE240C(v5, v6, a2);

  return (a2 & 1) == 0;
}

uint64_t sub_1D62F881C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, _BYTE *a5@<X5>, char *a6@<X6>, uint64_t a7@<X8>)
{
  v24 = a6;
  v25 = a7;
  sub_1D72627FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_1D726393C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v23 - v16;
  v28 = a2 | 0x1000;
  v26 = 0;
  v27 = 1;
  sub_1D62F7EF0(a1, &v28, a3, &v26, a4, a5, v24, &v23 - v16);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v17, 1, TupleTypeMetadata2) == 1)
  {
    (*(v14 + 8))(v17, v13);
    v18 = *(a5 - 1);
    v19 = 1;
    v20 = v25;
  }

  else
  {

    v18 = *(a5 - 1);
    v21 = v25;
    (*(v18 + 32))(v25, v17, a5);
    v19 = 0;
    v20 = v21;
  }

  return (*(v18 + 56))(v20, v19, 1, a5);
}

uint64_t sub_1D62F8A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, _BYTE *a6@<X5>, char *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10)
{
  v28 = a7;
  v29 = a9;
  v27 = a5;
  v26[1] = a1;
  sub_1D72627FC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1D726393C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v26 - v19;
  v32 = a3;
  v30 = a8;
  v31 = a10;
  sub_1D62F7EF0(a2, &v32, a4, &v30, v27, a6, v28, v26 - v19);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v20, 1, TupleTypeMetadata2) == 1)
  {
    (*(v17 + 8))(v20, v16);
    v21 = *(a6 - 1);
    v22 = 1;
    v23 = v29;
  }

  else
  {

    v21 = *(a6 - 1);
    v24 = v29;
    (*(v21 + 32))(v29, v20, a6);
    v22 = 0;
    v23 = v24;
  }

  return (*(v21 + 56))(v23, v22, 1, a6);
}

BOOL sub_1D62F8CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D72627FC();
  swift_getWitnessTable();
  return (sub_1D72624DC() & 1) == 0;
}

uint64_t sub_1D62F8D6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_1D725AA4C();
  v7 = v6;
  if (v5 == sub_1D725AA4C() && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D72646CC();
  }

  return v10 & 1;
}

uint64_t sub_1D62F8E24@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_1D5B68374(a1, v22);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = sub_1D725AA4C();
  v10 = *(v4 + 96);
  if (!*(v10 + 16))
  {

    goto LABEL_5;
  }

  v11 = sub_1D5B69D90(v8, v9);
  v13 = v12;

  if ((v13 & 1) == 0)
  {
LABEL_5:
    v16 = 0;
    v15 = 0;
    v17 = 0;
    v18 = 0;
    v20 = 0;
    v19 = 0;
    goto LABEL_6;
  }

  v14 = (*(v10 + 56) + 48 * v11);
  v16 = *v14;
  v15 = v14[1];
  v17 = v14[2];
  v18 = v14[3];
  v20 = v14[4];
  v19 = v14[5];

LABEL_6:
  result = sub_1D5B63F14(v22, a3);
  *(a3 + 40) = v16;
  *(a3 + 48) = v15;
  *(a3 + 56) = v17;
  *(a3 + 64) = v18;
  *(a3 + 72) = v20;
  *(a3 + 80) = v19;
  *(a3 + 88) = a2 & 1;
  return result;
}

BOOL sub_1D62F8F3C()
{
  v1 = v0[4];
  (*(v0[3] + 24))(&v3, v0[2]);
  return (v1 & ~v3) == 0;
}

BOOL sub_1D62F8FC0()
{
  v1 = v0[6];
  (*(v0[4] + 24))(&v3, v0[2]);
  return (v1 & ~v3) == 0;
}

void sub_1D62F9048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = (v13 + 48 * a3);
    v15 = a1 - a3;
    while (2)
    {
      v31 = a3;
      v25 = v15;
      v26 = v14;
      v16 = v15;
      v17 = v14;
      do
      {
        sub_1D5BD86D4(v17, &v29, sub_1D630B6C8);
        v18 = v17 - 3;
        sub_1D5BD86D4((v17 - 3), &v27, sub_1D630B6C8);
        v19 = sub_1D62F2C4C(v29, &v30, v27, &v28, a5);
        sub_1D5BCF630(&v27, sub_1D630B6C8);
        sub_1D5BCF630(&v29, sub_1D630B6C8);
        if ((v19 & 1) == 0)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return;
        }

        v21 = v17[1];
        v20 = v17[2];
        v22 = *v17;
        v23 = *(v17 - 2);
        *v17 = *v18;
        v17[1] = v23;
        v17[2] = *(v17 - 1);
        *v18 = v22;
        *(v17 - 2) = v21;
        v17 -= 3;
        v18[2] = v20;
      }

      while (!__CFADD__(v16++, 1));
      a3 = v31 + 1;
      v14 = v26 + 3;
      v15 = v25 - 1;
      if (v31 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D62F921C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  v48 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v44 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v46 = (v35 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v45 = (v35 - v22);
  v23 = swift_allocObject();
  v47 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v37 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v35[1] = v23;
    v35[2] = v6;
    v24 = *a4;
    v25 = *(v14 + 72);

    v26 = v24 + v25 * (a3 - 1);
    v42 = -v25;
    v43 = v24;
    v27 = a1 - a3;
    v36 = v25;
    v28 = v24 + v25 * a3;
    v29 = v48;
    v30 = v46;
    while (2)
    {
      v40 = v26;
      v41 = a3;
      v38 = v28;
      v39 = v27;
      v49 = v27;
      do
      {
        v31 = v45;
        sub_1D630B5FC(v28, v45, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        sub_1D630B5FC(v26, v30, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v32 = sub_1D62F2DCC(*v31, v31 + *(v29 + 48), *v30, v30 + *(v29 + 48), v47, a6, &qword_1EDF1AC80, type metadata accessor for FeedHeadline, type metadata accessor for FeedHeadline);
        sub_1D630B668(v30, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
        v29 = v48;
        sub_1D630B668(v31, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v43)
        {

          __break(1u);
          return;
        }

        v33 = v44;
        sub_1D630BA20(v28, v44, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D630BA20(v33, v26, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v26 += v42;
        v28 += v42;
      }

      while (!__CFADD__(v49++, 1));
      a3 = v41 + 1;
      v26 = v40 + v36;
      v27 = v39 - 1;
      v28 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D62F959C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  v48 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v44 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v46 = (v35 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v45 = (v35 - v22);
  v23 = swift_allocObject();
  v47 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v37 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v35[1] = v23;
    v35[2] = v6;
    v24 = *a4;
    v25 = *(v14 + 72);

    v26 = v24 + v25 * (a3 - 1);
    v42 = -v25;
    v43 = v24;
    v27 = a1 - a3;
    v36 = v25;
    v28 = v24 + v25 * a3;
    v29 = v48;
    v30 = v46;
    while (2)
    {
      v40 = v26;
      v41 = a3;
      v38 = v28;
      v39 = v27;
      v49 = v27;
      do
      {
        v31 = v45;
        sub_1D630B5FC(v28, v45, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        sub_1D630B5FC(v26, v30, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v32 = sub_1D62F2DCC(*v31, v31 + *(v29 + 48), *v30, v30 + *(v29 + 48), v47, a6, &qword_1EDF046F8, type metadata accessor for FeedCustomItem, type metadata accessor for FeedCustomItem);
        sub_1D630B668(v30, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
        v29 = v48;
        sub_1D630B668(v31, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v43)
        {

          __break(1u);
          return;
        }

        v33 = v44;
        sub_1D630BA20(v28, v44, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D630BA20(v33, v26, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v26 += v42;
        v28 += v42;
      }

      while (!__CFADD__(v49++, 1));
      a3 = v41 + 1;
      v26 = v40 + v36;
      v27 = v39 - 1;
      v28 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D62F991C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v48 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v44 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v46 = (v35 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v45 = (v35 - v22);
  v23 = swift_allocObject();
  v47 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v37 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v35[1] = v23;
    v35[2] = v6;
    v24 = *a4;
    v25 = *(v14 + 72);

    v26 = v24 + v25 * (a3 - 1);
    v42 = -v25;
    v43 = v24;
    v27 = a1 - a3;
    v36 = v25;
    v28 = v24 + v25 * a3;
    v29 = v48;
    v30 = v46;
    while (2)
    {
      v40 = v26;
      v41 = a3;
      v38 = v28;
      v39 = v27;
      v49 = v27;
      do
      {
        v31 = v45;
        sub_1D630B5FC(v28, v45, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        sub_1D630B5FC(v26, v30, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v32 = sub_1D62F2DCC(*v31, v31 + *(v29 + 48), *v30, v30 + *(v29 + 48), v47, a6, &qword_1EDF046D0, type metadata accessor for FeedRecipe, type metadata accessor for FeedRecipe);
        sub_1D630B668(v30, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
        v29 = v48;
        sub_1D630B668(v31, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v43)
        {

          __break(1u);
          return;
        }

        v33 = v44;
        sub_1D630BA20(v28, v44, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D630BA20(v33, v26, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v26 += v42;
        v28 += v42;
      }

      while (!__CFADD__(v49++, 1));
      a3 = v41 + 1;
      v26 = v40 + v36;
      v27 = v39 - 1;
      v28 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D62F9C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v48 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v44 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v46 = (v35 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v45 = (v35 - v22);
  v23 = swift_allocObject();
  v47 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v37 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v35[1] = v23;
    v35[2] = v6;
    v24 = *a4;
    v25 = *(v14 + 72);

    v26 = v24 + v25 * (a3 - 1);
    v42 = -v25;
    v43 = v24;
    v27 = a1 - a3;
    v36 = v25;
    v28 = v24 + v25 * a3;
    v29 = v48;
    v30 = v46;
    while (2)
    {
      v40 = v26;
      v41 = a3;
      v38 = v28;
      v39 = v27;
      v49 = v27;
      do
      {
        v31 = v45;
        sub_1D630B5FC(v28, v45, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        sub_1D630B5FC(v26, v30, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v32 = sub_1D62F2DCC(*v31, v31 + *(v29 + 48), *v30, v30 + *(v29 + 48), v47, a6, &qword_1EC885978, type metadata accessor for FeedPuzzleStatistic, type metadata accessor for FeedPuzzleStatistic);
        sub_1D630B668(v30, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
        v29 = v48;
        sub_1D630B668(v31, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v43)
        {

          __break(1u);
          return;
        }

        v33 = v44;
        sub_1D630BA20(v28, v44, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D630BA20(v33, v26, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v26 += v42;
        v28 += v42;
      }

      while (!__CFADD__(v49++, 1));
      a3 = v41 + 1;
      v26 = v40 + v36;
      v27 = v39 - 1;
      v28 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D62FA01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v44 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = v13 + 216 * a3;
    v15 = a1 - a3;
    while (2)
    {
      v26 = v14;
      v27 = a3;
      v25 = v15;
      do
      {
        sub_1D6306E88(v14, &v30, &unk_1EDF04750, &type metadata for FeedPuzzle);
        v16 = (v14 - 216);
        sub_1D6306E88(v14 - 216, &v28, &unk_1EDF04750, &type metadata for FeedPuzzle);
        v17 = sub_1D62F2CF8(v30, &v30 + 8, v28, &v29, v44);
        sub_1D6306DB0(&v28, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
        sub_1D6306DB0(&v30, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
        if ((v17 & 1) == 0)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return;
        }

        v40 = *(v14 + 160);
        v41 = *(v14 + 176);
        v42 = *(v14 + 192);
        v43 = *(v14 + 208);
        v36 = *(v14 + 96);
        v37 = *(v14 + 112);
        v38 = *(v14 + 128);
        v39 = *(v14 + 144);
        v32 = *(v14 + 32);
        v33 = *(v14 + 48);
        v34 = *(v14 + 64);
        v35 = *(v14 + 80);
        v30 = *v14;
        v31 = *(v14 + 16);
        v18 = *(v14 - 40);
        *(v14 + 160) = *(v14 - 56);
        *(v14 + 176) = v18;
        *(v14 + 192) = *(v14 - 24);
        *(v14 + 208) = *(v14 - 8);
        v19 = *(v14 - 104);
        *(v14 + 96) = *(v14 - 120);
        *(v14 + 112) = v19;
        v20 = *(v14 - 72);
        *(v14 + 128) = *(v14 - 88);
        *(v14 + 144) = v20;
        v21 = *(v14 - 168);
        *(v14 + 32) = *(v14 - 184);
        *(v14 + 48) = v21;
        v22 = *(v14 - 136);
        *(v14 + 64) = *(v14 - 152);
        *(v14 + 80) = v22;
        v23 = *(v14 - 200);
        *v14 = *v16;
        *(v14 + 16) = v23;
        *(v14 - 56) = v40;
        *(v14 - 40) = v41;
        *(v14 - 24) = v42;
        *(v14 - 8) = v43;
        *(v14 - 120) = v36;
        *(v14 - 104) = v37;
        *(v14 - 88) = v38;
        *(v14 - 72) = v39;
        *(v14 - 184) = v32;
        *(v14 - 168) = v33;
        *(v14 - 152) = v34;
        *(v14 - 136) = v35;
        *v16 = v30;
        *(v14 - 200) = v31;
        v14 -= 216;
      }

      while (!__CFADD__(v15++, 1));
      a3 = v27 + 1;
      v14 = v26 + 216;
      v15 = v25 - 1;
      if (v27 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D62FA30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  v48 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v44 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v46 = (v35 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v45 = (v35 - v22);
  v23 = swift_allocObject();
  v47 = a5;
  *(v23 + 16) = a5;
  *(v23 + 24) = a6;
  v37 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v35[1] = v23;
    v35[2] = v6;
    v24 = *a4;
    v25 = *(v14 + 72);

    v26 = v24 + v25 * (a3 - 1);
    v42 = -v25;
    v43 = v24;
    v27 = a1 - a3;
    v36 = v25;
    v28 = v24 + v25 * a3;
    v29 = v48;
    v30 = v46;
    while (2)
    {
      v40 = v26;
      v41 = a3;
      v38 = v28;
      v39 = v27;
      v49 = v27;
      do
      {
        v31 = v45;
        sub_1D630B5FC(v28, v45, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        sub_1D630B5FC(v26, v30, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v32 = sub_1D62F2DCC(*v31, v31 + *(v29 + 48), *v30, v30 + *(v29 + 48), v47, a6, &qword_1EDF046C8, type metadata accessor for FeedWebEmbed, type metadata accessor for FeedWebEmbed);
        sub_1D630B668(v30, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
        v29 = v48;
        sub_1D630B668(v31, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
        if ((v32 & 1) == 0)
        {
          break;
        }

        if (!v43)
        {

          __break(1u);
          return;
        }

        v33 = v44;
        sub_1D630BA20(v28, v44, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        swift_arrayInitWithTakeFrontToBack();
        sub_1D630BA20(v33, v26, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v26 += v42;
        v28 += v42;
      }

      while (!__CFADD__(v49++, 1));
      a3 = v41 + 1;
      v26 = v40 + v36;
      v27 = v39 - 1;
      v28 = v38 + v36;
      if (v41 + 1 != v37)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D62FA68C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v38 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = (v13 + 160 * a3);
    v15 = a1 - a3;
    while (2)
    {
      v25 = v14;
      v26 = a3;
      v24 = v15;
      do
      {
        sub_1D6306E88(v14, &v29, &qword_1EDF04760, &type metadata for FeedTag);
        v16 = v14 - 10;
        sub_1D6306E88((v14 - 10), &v27, &qword_1EDF04760, &type metadata for FeedTag);
        v17 = sub_1D62F2F28(v29, &v29 + 8, v27, &v28, v38);
        sub_1D6306DB0(&v27, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
        sub_1D6306DB0(&v29, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
        if ((v17 & 1) == 0)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return;
        }

        v35 = v14[6];
        v36 = v14[7];
        v37[0] = v14[8];
        *(v37 + 9) = *(v14 + 137);
        v31 = v14[2];
        v32 = v14[3];
        v33 = v14[4];
        v34 = v14[5];
        v29 = *v14;
        v30 = v14[1];
        v18 = *(v14 - 3);
        v14[6] = *(v14 - 4);
        v14[7] = v18;
        v19 = *(v14 - 1);
        v14[8] = *(v14 - 2);
        v14[9] = v19;
        v20 = *(v14 - 7);
        v14[2] = *(v14 - 8);
        v14[3] = v20;
        v21 = *(v14 - 5);
        v14[4] = *(v14 - 6);
        v14[5] = v21;
        v22 = *(v14 - 9);
        *v14 = *v16;
        v14[1] = v22;
        *(v14 - 4) = v35;
        *(v14 - 3) = v36;
        *(v14 - 2) = v37[0];
        *(v14 - 23) = *(v37 + 9);
        *(v14 - 8) = v31;
        *(v14 - 7) = v32;
        *(v14 - 6) = v33;
        *(v14 - 5) = v34;
        *v16 = v29;
        *(v14 - 9) = v30;
        v14 -= 10;
      }

      while (!__CFADD__(v15++, 1));
      a3 = v26 + 1;
      v14 = v25 + 10;
      v15 = v24 - 1;
      if (v26 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D62FA924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v19 = a2;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = v13 + 296 * a3 - 296;
    v15 = a1 - a3;
    while (2)
    {
      v25 = a3;
      v20 = v15;
      v21 = v14;
      v16 = v15;
      do
      {
        sub_1D6306E88(v14 + 296, __dst, &qword_1EC885950, &type metadata for FeedCatalogItem);
        sub_1D6306E88(v14, &v22, &qword_1EC885950, &type metadata for FeedCatalogItem);
        v17 = sub_1D62F2FFC(__dst[0], &__dst[1], v22, &v23, a5);
        sub_1D6306DB0(&v22, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
        sub_1D6306DB0(__dst, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
        if ((v17 & 1) == 0)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return;
        }

        memcpy(__dst, (v14 + 296), 0x122uLL);
        memcpy((v14 + 296), v14, 0x128uLL);
        memcpy(v14, __dst, 0x122uLL);
        v14 -= 296;
      }

      while (!__CFADD__(v16++, 1));
      a3 = v25 + 1;
      v14 = v21 + 296;
      v15 = v20 - 1;
      if (v25 + 1 != v19)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1D62FAB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v39 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  if (a3 == a2)
  {
  }

  else
  {
    v13 = *a4;

    v14 = (v13 + 160 * a3);
    v15 = a1 - a3;
    while (2)
    {
      v25 = v14;
      v26 = a3;
      v24 = v15;
      do
      {
        sub_1D6306E88(v14, &v29, &qword_1EC885930, &type metadata for FeedCategory);
        v16 = v14 - 10;
        sub_1D6306E88((v14 - 10), &v27, &qword_1EC885930, &type metadata for FeedCategory);
        v17 = sub_1D62F30D0(v29, &v29 + 8, v27, &v28, v39);
        sub_1D6306DB0(&v27, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
        sub_1D6306DB0(&v29, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
        if ((v17 & 1) == 0)
        {
          break;
        }

        if (!v13)
        {

          __break(1u);
          return;
        }

        v35 = v14[6];
        v36 = v14[7];
        v37 = v14[8];
        v38 = v14[9];
        v31 = v14[2];
        v32 = v14[3];
        v33 = v14[4];
        v34 = v14[5];
        v29 = *v14;
        v30 = v14[1];
        v18 = *(v14 - 3);
        v14[6] = *(v14 - 4);
        v14[7] = v18;
        v19 = *(v14 - 1);
        v14[8] = *(v14 - 2);
        v14[9] = v19;
        v20 = *(v14 - 7);
        v14[2] = *(v14 - 8);
        v14[3] = v20;
        v21 = *(v14 - 5);
        v14[4] = *(v14 - 6);
        v14[5] = v21;
        v22 = *(v14 - 9);
        *v14 = *v16;
        v14[1] = v22;
        *(v14 - 4) = v35;
        *(v14 - 3) = v36;
        *(v14 - 2) = v37;
        *(v14 - 1) = v38;
        *(v14 - 8) = v31;
        *(v14 - 7) = v32;
        *(v14 - 6) = v33;
        *(v14 - 5) = v34;
        *v16 = v29;
        *(v14 - 9) = v30;
        v14 -= 10;
      }

      while (!__CFADD__(v15++, 1));
      a3 = v26 + 1;
      v14 = v25 + 10;
      v15 = v24 - 1;
      if (v26 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1D62FADAC(char *a1, char *a2, char *a3, char *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v35 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v39[6] = a6;
  v13 = (a2 - a1) / 48;
  v14 = (a3 - a2) / 48;
  if (v13 >= v14)
  {
    if (a4 != a2 || &a2[48 * v14] <= a4)
    {
      memmove(a4, a2, 48 * v14);
    }

    v15 = &a4[48 * v14];
    if (a3 - a2 < 48 || a2 <= a1)
    {
      v21 = a2;
    }

    else
    {
      v34 = a4;
      do
      {
        v22 = a2 - 48;
        v23 = v15 - 48;
        a3 -= 48;
        while (1)
        {
          v15 = v23 + 48;
          v26 = a3 + 48;
          sub_1D5BD86D4(v23, &v38, sub_1D630B6C8);
          sub_1D5BD86D4(v22, &v36, sub_1D630B6C8);
          v27 = sub_1D62F2C4C(v38, v39, v36, v37, v35);
          sub_1D5BCF630(&v36, sub_1D630B6C8);
          sub_1D5BCF630(&v38, sub_1D630B6C8);
          if (v27)
          {
            break;
          }

          if (v26 != v15)
          {
            v28 = *v23;
            v29 = *(v23 + 2);
            *(a3 + 1) = *(v23 + 1);
            *(a3 + 2) = v29;
            *a3 = v28;
          }

          v24 = v23 - 48;
          a3 -= 48;
          v25 = v23 > v34;
          v23 -= 48;
          if (!v25)
          {
            v15 = v24 + 48;
            v21 = a2;
            a4 = v34;
            goto LABEL_34;
          }
        }

        v21 = a2 - 48;
        if (v26 != a2)
        {
          v30 = *v22;
          v31 = *(a2 - 1);
          *(a3 + 1) = *(a2 - 2);
          *(a3 + 2) = v31;
          *a3 = v30;
        }

        a4 = v34;
        if (v15 <= v34)
        {
          break;
        }

        a2 -= 48;
      }

      while (v22 > a1);
      v15 = v23 + 48;
    }
  }

  else
  {
    if (a4 != a1 || &a1[48 * v13] <= a4)
    {
      memmove(a4, a1, 48 * v13);
    }

    v15 = &a4[48 * v13];
    if (a2 - a1 >= 48 && a2 < a3)
    {
      while (1)
      {
        sub_1D5BD86D4(a2, &v38, sub_1D630B6C8);
        sub_1D5BD86D4(a4, &v36, sub_1D630B6C8);
        v16 = sub_1D62F2C4C(v38, v39, v36, v37, a5);
        sub_1D5BCF630(&v36, sub_1D630B6C8);
        sub_1D5BCF630(&v38, sub_1D630B6C8);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v17 = a2;
        v18 = a1 == a2;
        a2 += 48;
        if (!v18)
        {
          goto LABEL_12;
        }

LABEL_13:
        a1 += 48;
        if (a4 >= v15 || a2 >= a3)
        {
          goto LABEL_15;
        }
      }

      v17 = a4;
      v18 = a1 == a4;
      a4 += 48;
      if (v18)
      {
        goto LABEL_13;
      }

LABEL_12:
      v19 = *v17;
      v20 = *(v17 + 2);
      *(a1 + 1) = *(v17 + 1);
      *(a1 + 2) = v20;
      *a1 = v19;
      goto LABEL_13;
    }

LABEL_15:
    v21 = a1;
  }

LABEL_34:
  v32 = (v15 - a4) / 48;
  if (v21 != a4 || v21 >= &a4[48 * v32])
  {
    memmove(v21, a4, 48 * v32);
  }

  return 1;
}

uint64_t sub_1D62FB160(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  v57 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v53 = (v46 - v18);
  result = swift_allocObject();
  v55 = a5;
  v56 = a6;
  *(result + 16) = a5;
  *(result + 24) = a6;
  v20 = *(v13 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_63;
  }

  v60 = a1;
  v59 = a4;
  v46[1] = result;
  if (v21 / v20 >= v22 / v20)
  {
    v24 = v22 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = v32;
      v48 = a1;
      v49 = a4;
      v50 = v33;
      while (2)
      {
        while (1)
        {
          v46[0] = v32;
          v35 = a2;
          v51 = a2;
          v52 = a2 + v33;
          while (1)
          {
            if (v35 <= a1)
            {
              v60 = v35;
              v58 = v46[0];
              goto LABEL_60;
            }

            v38 = a3;
            v47 = v32;
            v39 = a3 + v33;
            v40 = v34 + v33;
            v41 = v34;
            v42 = v53;
            sub_1D630B5FC(v40, v53, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
            v43 = v54;
            sub_1D630B5FC(v52, v54, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
            v44 = sub_1D62F2DCC(*v42, v42 + *(v57 + 48), *v43, v43 + *(v57 + 48), v55, v56, &qword_1EDF1AC80, type metadata accessor for FeedHeadline, type metadata accessor for FeedHeadline);
            sub_1D630B668(v43, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
            sub_1D630B668(v42, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
            if (v44)
            {
              break;
            }

            v32 = v40;
            a3 = v39;
            if (v38 < v41 || v39 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v48;
              v36 = v49;
            }

            else
            {
              a1 = v48;
              v36 = v49;
              if (v38 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v40;
            v37 = v40 > v36;
            v33 = v50;
            v35 = v51;
            if (!v37)
            {
              a2 = v51;
              goto LABEL_59;
            }
          }

          v34 = v41;
          a3 = v39;
          if (v38 < v51 || v39 >= v51)
          {
            break;
          }

          a2 = v52;
          a1 = v48;
          v45 = v49;
          v32 = v47;
          v33 = v50;
          if (v38 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v45)
          {
            goto LABEL_59;
          }
        }

        a2 = v52;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v48;
        v32 = v47;
        v33 = v50;
        if (v34 > v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v23 = v21 / v20 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v52 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v50 = v20;
      v51 = a3;
      do
      {
        v26 = v53;
        v27 = a4;
        sub_1D630B5FC(a2, v53, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v28 = v54;
        sub_1D630B5FC(a4, v54, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v29 = sub_1D62F2DCC(*v26, v26 + *(v57 + 48), *v28, v28 + *(v57 + 48), v55, v56, &qword_1EDF1AC80, type metadata accessor for FeedHeadline, type metadata accessor for FeedHeadline);
        sub_1D630B668(v28, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
        sub_1D630B668(v26, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline, sub_1D5C17CEC);
        if (v29)
        {
          v30 = v50;
          if (a1 < a2 || a1 >= a2 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v30;
          }
        }

        else
        {
          v30 = v50;
          a4 += v50;
          if (a1 < v27 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = a4;
        }

        a1 += v30;
        v60 = a1;
      }

      while (a4 < v52 && a2 < v31);
    }
  }

LABEL_60:
  sub_1D62FF610(&v60, &v59, &v58, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);

  return 1;
}

uint64_t sub_1D62FB7F4(char *__src, char *a2, char *a3, char *__dst, uint64_t (*a5)(uint64_t, char *, uint64_t, char *))
{
  v5 = __dst;
  v6 = a3;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 152;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 152;
  if (v9 < v11)
  {
    v12 = a2;
    v13 = 152 * v9;
    if (__dst != __src || &__src[v13] <= __dst)
    {
      memmove(__dst, __src, v13);
    }

    v14 = __src;
    v15 = v5 + v13;
    if (v8 < 152)
    {
      v46 = v14;
      goto LABEL_48;
    }

    v16 = v14;
    if (v12 >= v6)
    {
LABEL_16:
      v46 = v16;
      goto LABEL_48;
    }

    v17 = &type metadata for FeedIssue;
    v18 = &unk_1EC88EAF0;
    v84 = v6;
    while (1)
    {
      __dsta = v16;
      v19 = *(v12 + 1);
      v107 = *v12;
      v108 = v19;
      v20 = *(v12 + 2);
      v21 = *(v12 + 3);
      v22 = *(v12 + 5);
      v111 = *(v12 + 4);
      v112 = v22;
      v109 = v20;
      v110 = v21;
      v23 = *(v12 + 6);
      v24 = *(v12 + 7);
      v25 = *(v12 + 8);
      v26 = v12;
      v116 = v12[144];
      v114 = v24;
      v115 = v25;
      v113 = v23;
      v27 = *(v5 + 16);
      v117 = *v5;
      v118 = v27;
      v28 = *(v5 + 32);
      v29 = *(v5 + 48);
      v30 = *(v5 + 80);
      v121 = *(v5 + 64);
      v122 = v30;
      v119 = v28;
      v120 = v29;
      v31 = *(v5 + 96);
      v32 = *(v5 + 112);
      v33 = *(v5 + 128);
      v126 = *(v5 + 144);
      v124 = v32;
      v125 = v33;
      v123 = v31;
      v34 = v107;
      v103 = v113;
      v104 = v114;
      v105 = v115;
      v106 = v116;
      v99 = v109;
      v100 = v110;
      v101 = v111;
      v102 = v112;
      v97 = v107;
      v98 = v108;
      v35 = v117;
      v93 = v31;
      v94 = v32;
      v95 = v33;
      v96 = v126;
      v89 = v119;
      v90 = v120;
      v91 = v121;
      v92 = v30;
      v87 = v117;
      v88 = v118;
      v36 = v17;
      sub_1D6306E88(&v107, v86, v18, v17);
      sub_1D6306E88(&v117, v86, v18, v36);
      v37 = v127;
      v38 = a5(v34, &v97 + 8, v35, &v87 + 8);
      v127 = v37;
      if (v37)
      {
        sub_1D6306DB0(&v117, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
        sub_1D6306DB0(&v107, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
        v74 = v15 - v5;
        v75 = 152 * ((v15 - v5) / 152);
        v46 = __dsta;
        if (__dsta < v5)
        {
          goto LABEL_51;
        }

LABEL_49:
        if (v46 >= v15 + v75 - v74 || v46 != v5)
        {
LABEL_51:
          v76 = v5;
          goto LABEL_52;
        }

        return 1;
      }

      v39 = v38;
      sub_1D6306DB0(&v117, v18, v36, sub_1D5C82990);
      v40 = v18;
      v41 = v18;
      v42 = v36;
      sub_1D6306DB0(&v107, v41, v36, sub_1D5C82990);
      if ((v39 & 1) == 0)
      {
        break;
      }

      v43 = v26;
      v12 = v26 + 152;
      v44 = __dsta;
      if (__dsta != v26)
      {
        goto LABEL_13;
      }

LABEL_14:
      v16 = v44 + 152;
      if (v5 < v15)
      {
        v17 = v42;
        v18 = v40;
        if (v12 < v84)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    v43 = v5;
    v44 = __dsta;
    v45 = __dsta == v5;
    v5 += 152;
    v12 = v26;
    if (v45)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(v44, v43, 0x98uLL);
    goto LABEL_14;
  }

  v47 = 152 * v11;
  if (__dst != a2 || &a2[v47] <= __dst)
  {
    v48 = a2;
    memmove(__dst, a2, 152 * v11);
    a2 = v48;
  }

  v46 = a2;
  v15 = v5 + v47;
  if (v10 < 152 || a2 <= __src)
  {
LABEL_48:
    v74 = v15 - v5;
    v75 = 152 * ((v15 - v5) / 152);
    if (v46 < v5)
    {
      goto LABEL_51;
    }

    goto LABEL_49;
  }

  v49 = -v5;
  v78 = -v5;
  v79 = v5;
LABEL_23:
  v50 = v46;
  v16 = v46 - 152;
  v51 = v49 + v15;
  v52 = v6 - 152;
  v53 = v15;
  while (1)
  {
    v80 = v51;
    v85 = v52;
    v15 = v53;
    v54 = *(v53 - 136);
    v107 = *(v53 - 152);
    v108 = v54;
    v55 = *(v53 - 120);
    v56 = *(v53 - 104);
    v57 = *(v53 - 72);
    v111 = *(v53 - 88);
    v112 = v57;
    v109 = v55;
    v110 = v56;
    v58 = *(v53 - 56);
    v59 = *(v53 - 24);
    v60 = *(v53 - 8);
    v114 = *(v53 - 40);
    v115 = v59;
    v113 = v58;
    v61 = *(v16 + 1);
    v62 = v61;
    v117 = *v16;
    v118 = v61;
    v63 = *(v16 + 3);
    v64 = *(v16 + 5);
    v121 = *(v16 + 4);
    v122 = v64;
    v65 = *(v16 + 3);
    v119 = *(v16 + 2);
    v120 = v65;
    v66 = *(v16 + 7);
    v125 = *(v16 + 8);
    v67 = *(v16 + 7);
    v68 = *(v16 + 5);
    v123 = *(v16 + 6);
    v124 = v67;
    v103 = v113;
    v104 = v114;
    v105 = v59;
    v99 = v109;
    v100 = v110;
    v101 = v111;
    v102 = v112;
    v97 = v107;
    v98 = v108;
    v93 = v123;
    v94 = v66;
    v95 = *(v16 + 8);
    v89 = v119;
    v90 = v63;
    v116 = v60;
    v126 = v16[144];
    v69 = v107;
    v106 = v60;
    v70 = v117;
    v96 = v16[144];
    v91 = v121;
    v92 = v68;
    v87 = v117;
    v88 = v62;
    sub_1D6306E88(&v107, v86, &unk_1EC88EAF0, &type metadata for FeedIssue);
    sub_1D6306E88(&v117, v86, &unk_1EC88EAF0, &type metadata for FeedIssue);
    v71 = v127;
    v72 = a5(v69, &v97 + 8, v70, &v87 + 8);
    v127 = v71;
    if (v71)
    {
      break;
    }

    v73 = v72;
    sub_1D6306DB0(&v117, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
    sub_1D6306DB0(&v107, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
    if (v73)
    {
      v6 = v85;
      if ((v85 + 152) < v50 || v85 >= v50)
      {
        memmove(v85, v16, 0x98uLL);
        v5 = v79;
      }

      else
      {
        v5 = v79;
        if (v85 + 152 != v50)
        {
          memmove(v85, v16, 0x98uLL);
        }
      }

      if (v15 <= v5)
      {
        goto LABEL_16;
      }

      v46 = v16;
      v49 = v78;
      if (v16 <= __src)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }

    v53 = v15 - 152;
    if ((v85 + 152) < v15 || v85 >= v15)
    {
      memmove(v85, (v15 - 152), 0x98uLL);
      v5 = v79;
    }

    else
    {
      v5 = v79;
      if (v85 + 152 != v15)
      {
        memmove(v85, (v15 - 152), 0x98uLL);
      }
    }

    v51 = v80 - 152;
    v52 = v85 - 152;
    if (v53 <= v5)
    {
      v15 -= 152;
      v46 = v50;
      goto LABEL_48;
    }
  }

  sub_1D6306DB0(&v117, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
  sub_1D6306DB0(&v107, &unk_1EC88EAF0, &type metadata for FeedIssue, sub_1D5C82990);
  v76 = v79;
  v75 = 152 * (v80 / 152);
  v46 = v50;
  if (v50 < v79 || v50 >= &v79[v75] || v50 != v79)
  {
LABEL_52:
    memmove(v46, v76, v75);
  }

  return 1;
}

uint64_t sub_1D62FBF28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
  v57 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v53 = (v46 - v18);
  result = swift_allocObject();
  v55 = a5;
  v56 = a6;
  *(result + 16) = a5;
  *(result + 24) = a6;
  v20 = *(v13 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_63;
  }

  v60 = a1;
  v59 = a4;
  v46[1] = result;
  if (v21 / v20 >= v22 / v20)
  {
    v24 = v22 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = v32;
      v48 = a1;
      v49 = a4;
      v50 = v33;
      while (2)
      {
        while (1)
        {
          v46[0] = v32;
          v35 = a2;
          v51 = a2;
          v52 = a2 + v33;
          while (1)
          {
            if (v35 <= a1)
            {
              v60 = v35;
              v58 = v46[0];
              goto LABEL_60;
            }

            v38 = a3;
            v47 = v32;
            v39 = a3 + v33;
            v40 = v34 + v33;
            v41 = v34;
            v42 = v53;
            sub_1D630B5FC(v40, v53, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
            v43 = v54;
            sub_1D630B5FC(v52, v54, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
            v44 = sub_1D62F2DCC(*v42, v42 + *(v57 + 48), *v43, v43 + *(v57 + 48), v55, v56, &qword_1EDF046F8, type metadata accessor for FeedCustomItem, type metadata accessor for FeedCustomItem);
            sub_1D630B668(v43, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
            sub_1D630B668(v42, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
            if (v44)
            {
              break;
            }

            v32 = v40;
            a3 = v39;
            if (v38 < v41 || v39 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v48;
              v36 = v49;
            }

            else
            {
              a1 = v48;
              v36 = v49;
              if (v38 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v40;
            v37 = v40 > v36;
            v33 = v50;
            v35 = v51;
            if (!v37)
            {
              a2 = v51;
              goto LABEL_59;
            }
          }

          v34 = v41;
          a3 = v39;
          if (v38 < v51 || v39 >= v51)
          {
            break;
          }

          a2 = v52;
          a1 = v48;
          v45 = v49;
          v32 = v47;
          v33 = v50;
          if (v38 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v45)
          {
            goto LABEL_59;
          }
        }

        a2 = v52;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v48;
        v32 = v47;
        v33 = v50;
        if (v34 > v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v23 = v21 / v20 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v52 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v50 = v20;
      v51 = a3;
      do
      {
        v26 = v53;
        v27 = a4;
        sub_1D630B5FC(a2, v53, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v28 = v54;
        sub_1D630B5FC(a4, v54, &qword_1EDF04780, type metadata accessor for FeedCustomItem);
        v29 = sub_1D62F2DCC(*v26, v26 + *(v57 + 48), *v28, v28 + *(v57 + 48), v55, v56, &qword_1EDF046F8, type metadata accessor for FeedCustomItem, type metadata accessor for FeedCustomItem);
        sub_1D630B668(v28, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
        sub_1D630B668(v26, &qword_1EDF04780, type metadata accessor for FeedCustomItem, sub_1D5C17CEC);
        if (v29)
        {
          v30 = v50;
          if (a1 < a2 || a1 >= a2 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v30;
          }
        }

        else
        {
          v30 = v50;
          a4 += v50;
          if (a1 < v27 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = a4;
        }

        a1 += v30;
        v60 = a1;
      }

      while (a4 < v52 && a2 < v31);
    }
  }

LABEL_60:
  sub_1D62FF610(&v60, &v59, &v58, &qword_1EDF04780, type metadata accessor for FeedCustomItem);

  return 1;
}

uint64_t sub_1D62FC5BC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &unk_1EDF04740, type metadata accessor for FeedRecipe);
  v57 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v53 = (v46 - v18);
  result = swift_allocObject();
  v55 = a5;
  v56 = a6;
  *(result + 16) = a5;
  *(result + 24) = a6;
  v20 = *(v13 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_63;
  }

  v60 = a1;
  v59 = a4;
  v46[1] = result;
  if (v21 / v20 >= v22 / v20)
  {
    v24 = v22 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = v32;
      v48 = a1;
      v49 = a4;
      v50 = v33;
      while (2)
      {
        while (1)
        {
          v46[0] = v32;
          v35 = a2;
          v51 = a2;
          v52 = a2 + v33;
          while (1)
          {
            if (v35 <= a1)
            {
              v60 = v35;
              v58 = v46[0];
              goto LABEL_60;
            }

            v38 = a3;
            v47 = v32;
            v39 = a3 + v33;
            v40 = v34 + v33;
            v41 = v34;
            v42 = v53;
            sub_1D630B5FC(v40, v53, &unk_1EDF04740, type metadata accessor for FeedRecipe);
            v43 = v54;
            sub_1D630B5FC(v52, v54, &unk_1EDF04740, type metadata accessor for FeedRecipe);
            v44 = sub_1D62F2DCC(*v42, v42 + *(v57 + 48), *v43, v43 + *(v57 + 48), v55, v56, &qword_1EDF046D0, type metadata accessor for FeedRecipe, type metadata accessor for FeedRecipe);
            sub_1D630B668(v43, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
            sub_1D630B668(v42, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
            if (v44)
            {
              break;
            }

            v32 = v40;
            a3 = v39;
            if (v38 < v41 || v39 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v48;
              v36 = v49;
            }

            else
            {
              a1 = v48;
              v36 = v49;
              if (v38 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v40;
            v37 = v40 > v36;
            v33 = v50;
            v35 = v51;
            if (!v37)
            {
              a2 = v51;
              goto LABEL_59;
            }
          }

          v34 = v41;
          a3 = v39;
          if (v38 < v51 || v39 >= v51)
          {
            break;
          }

          a2 = v52;
          a1 = v48;
          v45 = v49;
          v32 = v47;
          v33 = v50;
          if (v38 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v45)
          {
            goto LABEL_59;
          }
        }

        a2 = v52;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v48;
        v32 = v47;
        v33 = v50;
        if (v34 > v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v23 = v21 / v20 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v52 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v50 = v20;
      v51 = a3;
      do
      {
        v26 = v53;
        v27 = a4;
        sub_1D630B5FC(a2, v53, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v28 = v54;
        sub_1D630B5FC(a4, v54, &unk_1EDF04740, type metadata accessor for FeedRecipe);
        v29 = sub_1D62F2DCC(*v26, v26 + *(v57 + 48), *v28, v28 + *(v57 + 48), v55, v56, &qword_1EDF046D0, type metadata accessor for FeedRecipe, type metadata accessor for FeedRecipe);
        sub_1D630B668(v28, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
        sub_1D630B668(v26, &unk_1EDF04740, type metadata accessor for FeedRecipe, sub_1D5C17CEC);
        if (v29)
        {
          v30 = v50;
          if (a1 < a2 || a1 >= a2 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v30;
          }
        }

        else
        {
          v30 = v50;
          a4 += v50;
          if (a1 < v27 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = a4;
        }

        a1 += v30;
        v60 = a1;
      }

      while (a4 < v52 && a2 < v31);
    }
  }

LABEL_60:
  sub_1D62FF610(&v60, &v59, &v58, &unk_1EDF04740, type metadata accessor for FeedRecipe);

  return 1;
}

uint64_t sub_1D62FCC50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
  v57 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v53 = (v46 - v18);
  result = swift_allocObject();
  v55 = a5;
  v56 = a6;
  *(result + 16) = a5;
  *(result + 24) = a6;
  v20 = *(v13 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_63;
  }

  v60 = a1;
  v59 = a4;
  v46[1] = result;
  if (v21 / v20 >= v22 / v20)
  {
    v24 = v22 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = v32;
      v48 = a1;
      v49 = a4;
      v50 = v33;
      while (2)
      {
        while (1)
        {
          v46[0] = v32;
          v35 = a2;
          v51 = a2;
          v52 = a2 + v33;
          while (1)
          {
            if (v35 <= a1)
            {
              v60 = v35;
              v58 = v46[0];
              goto LABEL_60;
            }

            v38 = a3;
            v47 = v32;
            v39 = a3 + v33;
            v40 = v34 + v33;
            v41 = v34;
            v42 = v53;
            sub_1D630B5FC(v40, v53, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
            v43 = v54;
            sub_1D630B5FC(v52, v54, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
            v44 = sub_1D62F2DCC(*v42, v42 + *(v57 + 48), *v43, v43 + *(v57 + 48), v55, v56, &qword_1EC885978, type metadata accessor for FeedPuzzleStatistic, type metadata accessor for FeedPuzzleStatistic);
            sub_1D630B668(v43, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
            sub_1D630B668(v42, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
            if (v44)
            {
              break;
            }

            v32 = v40;
            a3 = v39;
            if (v38 < v41 || v39 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v48;
              v36 = v49;
            }

            else
            {
              a1 = v48;
              v36 = v49;
              if (v38 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v40;
            v37 = v40 > v36;
            v33 = v50;
            v35 = v51;
            if (!v37)
            {
              a2 = v51;
              goto LABEL_59;
            }
          }

          v34 = v41;
          a3 = v39;
          if (v38 < v51 || v39 >= v51)
          {
            break;
          }

          a2 = v52;
          a1 = v48;
          v45 = v49;
          v32 = v47;
          v33 = v50;
          if (v38 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v45)
          {
            goto LABEL_59;
          }
        }

        a2 = v52;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v48;
        v32 = v47;
        v33 = v50;
        if (v34 > v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v23 = v21 / v20 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v52 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v50 = v20;
      v51 = a3;
      do
      {
        v26 = v53;
        v27 = a4;
        sub_1D630B5FC(a2, v53, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v28 = v54;
        sub_1D630B5FC(a4, v54, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);
        v29 = sub_1D62F2DCC(*v26, v26 + *(v57 + 48), *v28, v28 + *(v57 + 48), v55, v56, &qword_1EC885978, type metadata accessor for FeedPuzzleStatistic, type metadata accessor for FeedPuzzleStatistic);
        sub_1D630B668(v28, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
        sub_1D630B668(v26, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic, sub_1D5C17CEC);
        if (v29)
        {
          v30 = v50;
          if (a1 < a2 || a1 >= a2 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v30;
          }
        }

        else
        {
          v30 = v50;
          a4 += v50;
          if (a1 < v27 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = a4;
        }

        a1 += v30;
        v60 = a1;
      }

      while (a4 < v52 && a2 < v31);
    }
  }

LABEL_60:
  sub_1D62FF610(&v60, &v59, &v58, &qword_1EC88F4F0, type metadata accessor for FeedPuzzleStatistic);

  return 1;
}

uint64_t sub_1D62FD2E4(char *__src, char *a2, char *a3, char *a4, uint64_t (*a5)(uint64_t, char *, uint64_t, char *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2 - __src;
  v8 = (a2 - __src) / 72;
  v9 = a3 - a2;
  v10 = (a3 - a2) / 72;
  if (v8 >= v10)
  {
    if (a4 != a2 || &a2[72 * v10] <= a4)
    {
      v29 = __src;
      v30 = a2;
      memmove(a4, a2, 72 * v10);
      __src = v29;
      a2 = v30;
    }

    v56 = a2;
    v13 = v5 + 72 * v10;
    if (v9 < 72)
    {
LABEL_49:
      __src = v56;
      goto LABEL_50;
    }

    v31 = __src;
    __src = a2;
    if (a2 > v31)
    {
      v32 = -v5;
      __dsta = v31;
      v55 = -v5;
      v57 = v5;
      while (1)
      {
        v33 = v56 - 72;
        v34 = v32 + v13;
        v6 -= 72;
        v35 = v13;
        while (1)
        {
          v59 = v34;
          v13 = v35;
          v74 = *(v35 - 72);
          v36 = *(v35 - 56);
          v37 = *(v35 - 40);
          v38 = *(v35 - 24);
          v78 = *(v35 - 8);
          v76 = v37;
          v77 = v38;
          v75 = v36;
          v39 = *(v56 - 56);
          v40 = *(v56 - 24);
          v81 = *(v56 - 40);
          v82 = v40;
          v83 = *(v56 - 1);
          v41 = *(v56 - 56);
          v79 = *v33;
          v80 = v41;
          v71 = v76;
          v72 = v77;
          v42 = v74;
          v73 = v78;
          v69 = v74;
          v70 = v36;
          v43 = v79;
          v44 = *(v56 - 24);
          v66 = v81;
          v67 = v44;
          v68 = *(v56 - 1);
          v64 = v79;
          v65 = v39;
          sub_1D6306E88(&v74, v63, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
          sub_1D6306E88(&v79, v63, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
          v45 = v84;
          v46 = a5(v42, &v69 + 8, v43, &v64 + 8);
          v84 = v45;
          if (v45)
          {
            sub_1D6306DB0(&v79, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
            sub_1D6306DB0(&v74, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
            v50 = v57;
            v51 = v59 / 72;
            __src = v56;
            if (v56 >= v57 && v56 < &v57[72 * v51] && v56 == v57)
            {
              return 1;
            }

            v52 = 72 * v51;
LABEL_54:
            memmove(__src, v50, v52);
            return 1;
          }

          v47 = v46;
          sub_1D6306DB0(&v79, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          sub_1D6306DB0(&v74, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
          v48 = v6 + 72;
          if (v47)
          {
            break;
          }

          v35 = v13 - 72;
          if (v48 < v13 || v6 >= v13)
          {
            memmove(v6, (v13 - 72), 0x48uLL);
            v5 = v57;
          }

          else
          {
            v5 = v57;
            if (v48 != v13)
            {
              memmove(v6, (v13 - 72), 0x48uLL);
            }
          }

          v34 = v59 - 72;
          v6 -= 72;
          if (v35 <= v5)
          {
            v13 -= 72;
            goto LABEL_49;
          }
        }

        if (v48 < v56 || v6 >= v56)
        {
          memmove(v6, v33, 0x48uLL);
          v5 = v57;
          v32 = v55;
        }

        else
        {
          v5 = v57;
          v32 = v55;
          if (v48 != v56)
          {
            memmove(v6, v33, 0x48uLL);
          }
        }

        if (v13 > v5)
        {
          v56 -= 72;
          if (v33 > __dsta)
          {
            continue;
          }
        }

        __src = v33;
        break;
      }
    }

LABEL_50:
    v53 = (v13 - v5) / 72;
    if (__src >= v5 && __src < v5 + 72 * v53 && __src == v5)
    {
      return 1;
    }

    v52 = 72 * v53;
    v50 = v5;
    goto LABEL_54;
  }

  v11 = a2;
  if (a4 != __src || &__src[72 * v8] <= a4)
  {
    v12 = __src;
    memmove(a4, __src, 72 * v8);
    __src = v12;
  }

  v13 = v5 + 72 * v8;
  if (v7 < 72 || v11 >= v6)
  {
    goto LABEL_50;
  }

  v58 = v13;
  while (1)
  {
    __dst = __src;
    v74 = *v11;
    v14 = *(v11 + 1);
    v15 = *(v11 + 2);
    v16 = *(v11 + 3);
    v17 = v11;
    v78 = *(v11 + 8);
    v76 = v15;
    v77 = v16;
    v75 = v14;
    v19 = *(v5 + 32);
    v18 = *(v5 + 48);
    v20 = *(v5 + 16);
    v83 = *(v5 + 64);
    v81 = v19;
    v82 = v18;
    v80 = v20;
    v21 = v5;
    v79 = *v5;
    v71 = v76;
    v72 = v77;
    v22 = v74;
    v73 = v78;
    v69 = v74;
    v70 = v75;
    v66 = v19;
    v67 = v18;
    v23 = v79;
    v68 = v83;
    v64 = v79;
    v65 = v20;
    sub_1D6306E88(&v74, v63, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
    sub_1D6306E88(&v79, v63, &unk_1EC88F4D0, &type metadata for FeedPuzzleType);
    v24 = v84;
    v25 = a5(v22, &v69 + 8, v23, &v64 + 8);
    v84 = v24;
    if (v24)
    {
      break;
    }

    v26 = v25;
    sub_1D6306DB0(&v79, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
    sub_1D6306DB0(&v74, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
    if ((v26 & 1) == 0)
    {
      v27 = v21;
      v5 = (v21 + 72);
      v28 = __dst;
      v11 = v17;
      v13 = v58;
      if (__dst == v21)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(v28, v27, 0x48uLL);
      v28 = __dst;
      goto LABEL_14;
    }

    v27 = v17;
    v11 = v17 + 72;
    v28 = __dst;
    v5 = v21;
    v13 = v58;
    if (__dst != v17)
    {
      goto LABEL_13;
    }

LABEL_14:
    __src = v28 + 72;
    if (v5 >= v13 || v11 >= v6)
    {
      goto LABEL_50;
    }
  }

  sub_1D6306DB0(&v79, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
  sub_1D6306DB0(&v74, &unk_1EC88F4D0, &type metadata for FeedPuzzleType, sub_1D5C82990);
  v49 = (v58 - v21) / 72;
  __src = __dst;
  if (__dst < v21 || __dst >= &v21[72 * v49])
  {
    v52 = 72 * v49;
    v50 = v21;
    goto LABEL_54;
  }

  if (__dst != v21)
  {
    memmove(__dst, v21, 72 * v49);
  }

  return 1;
}

uint64_t sub_1D62FD9B4(char *a1, char *a2, char *a3, char *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v37 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v41[28] = a6;
  v13 = a2 - a1;
  v14 = (a2 - a1) / 216;
  v15 = a3 - a2;
  v16 = (a3 - a2) / 216;
  if (v14 < v16)
  {
    v17 = a2;
    if (a4 != a1 || &a1[216 * v14] <= a4)
    {
      memmove(a4, a1, 216 * v14);
    }

    v18 = &a4[216 * v14];
    if (v13 < 216 || v17 >= a3)
    {
      v24 = a1;
      goto LABEL_35;
    }

    v19 = v17;
    while (1)
    {
      sub_1D6306E88(v19, &v40, &unk_1EDF04750, &type metadata for FeedPuzzle);
      sub_1D6306E88(a4, &v38, &unk_1EDF04750, &type metadata for FeedPuzzle);
      v20 = sub_1D62F2CF8(v40, v41, v38, v39, v37);
      v21 = a4;
      sub_1D6306DB0(&v38, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
      sub_1D6306DB0(&v40, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v22 = v19;
      v23 = a1 == v19;
      v19 += 216;
      if (!v23)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 += 216;
      if (a4 >= v18 || v19 >= a3)
      {
        v24 = a1;
        goto LABEL_35;
      }
    }

    v22 = a4;
    a4 += 216;
    if (a1 == v21)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(a1, v22, 0xD8uLL);
    goto LABEL_14;
  }

  if (a4 != a2 || &a2[216 * v16] <= a4)
  {
    memmove(a4, a2, 216 * v16);
  }

  v24 = a2;

  v18 = &a4[216 * v16];
  if (v15 >= 216)
  {
    v25 = v24;
    if (v24 > a1)
    {
      v34 = a1;
      while (1)
      {
        v35 = v25;
        __src = v25 - 216;
        v26 = v18 - 216;
        a3 -= 216;
        while (1)
        {
          v29 = (v26 + 216);
          v30 = a3 + 216;
          sub_1D6306E88(v26, &v40, &unk_1EDF04750, &type metadata for FeedPuzzle);
          sub_1D6306E88(__src, &v38, &unk_1EDF04750, &type metadata for FeedPuzzle);
          v31 = sub_1D62F2CF8(v40, v41, v38, v39, v37);
          sub_1D6306DB0(&v38, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
          sub_1D6306DB0(&v40, &unk_1EDF04750, &type metadata for FeedPuzzle, sub_1D5C82990);
          if (v31)
          {
            break;
          }

          if (v30 != v29)
          {
            memmove(a3, v26, 0xD8uLL);
          }

          v27 = v26 - 216;
          a3 -= 216;
          v28 = v26 > a4;
          v26 -= 216;
          if (!v28)
          {
            v18 = v27 + 216;
            v24 = v35;
            goto LABEL_35;
          }
        }

        v24 = __src;
        if (v30 != v35)
        {
          memmove(a3, __src, 0xD8uLL);
        }

        v18 = v26 + 216;
        if (v29 > a4)
        {
          v25 = __src;
          if (__src > v34)
          {
            continue;
          }
        }

        v18 = v26 + 216;
        break;
      }
    }
  }

LABEL_35:
  v32 = (v18 - a4) / 216;
  if (v24 != a4 || v24 >= &a4[216 * v32])
  {
    memmove(v24, a4, 216 * v32);
  }

  return 1;
}

uint64_t sub_1D62FDDE4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void (*a5)(uint64_t *__return_ptr, char *, void *), uint64_t a6)
{
  sub_1D5C17CEC(0, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
  v57 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = (v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16, v17);
  v53 = (v46 - v18);
  result = swift_allocObject();
  v55 = a5;
  v56 = a6;
  *(result + 16) = a5;
  *(result + 24) = a6;
  v20 = *(v13 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return result;
  }

  v21 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_62;
  }

  v22 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_63;
  }

  v60 = a1;
  v59 = a4;
  v46[1] = result;
  if (v21 / v20 >= v22 / v20)
  {
    v24 = v22 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a2)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v32 = a4 + v24;
    if (v24 >= 1)
    {
      v33 = -v20;
      v34 = v32;
      v48 = a1;
      v49 = a4;
      v50 = v33;
      while (2)
      {
        while (1)
        {
          v46[0] = v32;
          v35 = a2;
          v51 = a2;
          v52 = a2 + v33;
          while (1)
          {
            if (v35 <= a1)
            {
              v60 = v35;
              v58 = v46[0];
              goto LABEL_60;
            }

            v38 = a3;
            v47 = v32;
            v39 = a3 + v33;
            v40 = v34 + v33;
            v41 = v34;
            v42 = v53;
            sub_1D630B5FC(v40, v53, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
            v43 = v54;
            sub_1D630B5FC(v52, v54, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
            v44 = sub_1D62F2DCC(*v42, v42 + *(v57 + 48), *v43, v43 + *(v57 + 48), v55, v56, &qword_1EDF046C8, type metadata accessor for FeedWebEmbed, type metadata accessor for FeedWebEmbed);
            sub_1D630B668(v43, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
            sub_1D630B668(v42, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
            if (v44)
            {
              break;
            }

            v32 = v40;
            a3 = v39;
            if (v38 < v41 || v39 >= v41)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v48;
              v36 = v49;
            }

            else
            {
              a1 = v48;
              v36 = v49;
              if (v38 != v41)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v34 = v40;
            v37 = v40 > v36;
            v33 = v50;
            v35 = v51;
            if (!v37)
            {
              a2 = v51;
              goto LABEL_59;
            }
          }

          v34 = v41;
          a3 = v39;
          if (v38 < v51 || v39 >= v51)
          {
            break;
          }

          a2 = v52;
          a1 = v48;
          v45 = v49;
          v32 = v47;
          v33 = v50;
          if (v38 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v34 <= v45)
          {
            goto LABEL_59;
          }
        }

        a2 = v52;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v48;
        v32 = v47;
        v33 = v50;
        if (v34 > v49)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v23 = v21 / v20 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {

      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {

      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v52 = a4 + v23;
    v58 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v50 = v20;
      v51 = a3;
      do
      {
        v26 = v53;
        v27 = a4;
        sub_1D630B5FC(a2, v53, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v28 = v54;
        sub_1D630B5FC(a4, v54, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);
        v29 = sub_1D62F2DCC(*v26, v26 + *(v57 + 48), *v28, v28 + *(v57 + 48), v55, v56, &qword_1EDF046C8, type metadata accessor for FeedWebEmbed, type metadata accessor for FeedWebEmbed);
        sub_1D630B668(v28, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
        sub_1D630B668(v26, &qword_1EDF04730, type metadata accessor for FeedWebEmbed, sub_1D5C17CEC);
        if (v29)
        {
          v30 = v50;
          if (a1 < a2 || a1 >= a2 + v50)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v30;
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v30;
          }
        }

        else
        {
          v30 = v50;
          a4 += v50;
          if (a1 < v27 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v31 = v51;
          }

          else
          {
            v31 = v51;
            if (a1 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = a4;
        }

        a1 += v30;
        v60 = a1;
      }

      while (a4 < v52 && a2 < v31);
    }
  }

LABEL_60:
  sub_1D62FF610(&v60, &v59, &v58, &qword_1EDF04730, type metadata accessor for FeedWebEmbed);

  return 1;
}

uint64_t sub_1D62FE478(char *a1, char *a2, char *a3, char *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v39 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v43[21] = a6;
  v13 = a2 - a1;
  v14 = (a2 - a1) / 160;
  v15 = a3 - a2;
  v16 = (a3 - a2) / 160;
  if (v14 >= v16)
  {
    v25 = 160 * v16;
    v26 = a2;
    if (a4 != a2 || &a2[v25] <= a4)
    {
      memmove(a4, a2, 160 * v16);
    }

    v19 = &a4[v25];
    if (v15 < 160 || v26 <= a1)
    {
      v24 = v26;
      goto LABEL_36;
    }

    v27 = v26;
    v36 = a1;
    while (1)
    {
      v37 = v27;
      __src = v27 - 160;
      v28 = v19 - 160;
      a3 -= 160;
      while (1)
      {
        v31 = (v28 + 160);
        v32 = a3 + 160;
        sub_1D6306E88(v28, &v42, &qword_1EDF04760, &type metadata for FeedTag);
        sub_1D6306E88(__src, &v40, &qword_1EDF04760, &type metadata for FeedTag);
        v33 = sub_1D62F2F28(v42, v43, v40, v41, v39);
        sub_1D6306DB0(&v40, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
        sub_1D6306DB0(&v42, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
        if (v33)
        {
          break;
        }

        if (v32 != v31)
        {
          memmove(a3, v28, 0xA0uLL);
        }

        v29 = v28 - 160;
        a3 -= 160;
        v30 = v28 > a4;
        v28 -= 160;
        if (!v30)
        {
          v19 = v29 + 160;
          v24 = v37;
          goto LABEL_36;
        }
      }

      v23 = v32 == v37;
      v24 = __src;
      if (!v23)
      {
        memmove(a3, __src, 0xA0uLL);
      }

      v19 = v28 + 160;
      if (v31 > a4)
      {
        v27 = __src;
        if (__src > v36)
        {
          continue;
        }
      }

      v19 = v28 + 160;
      goto LABEL_36;
    }
  }

  v17 = a2;
  v18 = 160 * v14;
  if (a4 != a1 || &a1[v18] <= a4)
  {
    memmove(a4, a1, v18);
  }

  v19 = &a4[v18];
  if (v13 < 160 || v17 >= a3)
  {
    v24 = a1;
    goto LABEL_36;
  }

  v20 = v17;
  do
  {
    sub_1D6306E88(v20, &v42, &qword_1EDF04760, &type metadata for FeedTag);
    sub_1D6306E88(a4, &v40, &qword_1EDF04760, &type metadata for FeedTag);
    v21 = sub_1D62F2F28(v42, v43, v40, v41, v39);
    sub_1D6306DB0(&v40, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
    sub_1D6306DB0(&v42, &qword_1EDF04760, &type metadata for FeedTag, sub_1D5C82990);
    if (v21)
    {
      v22 = v20;
      v23 = a1 == v20;
      v20 += 160;
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_13:
      memmove(a1, v22, 0xA0uLL);
      goto LABEL_14;
    }

    v22 = a4;
    v23 = a1 == a4;
    a4 += 160;
    if (!v23)
    {
      goto LABEL_13;
    }

LABEL_14:
    a1 += 160;
  }

  while (a4 < v19 && v20 < a3);
  v24 = a1;
LABEL_36:
  v34 = 160 * ((v19 - a4) / 160);
  if (v24 != a4 || v24 >= &a4[v34])
  {
    memmove(v24, a4, v34);
  }

  return 1;
}

uint64_t sub_1D62FE870(char *__src, char *__dst, char *a3, char *a4, uint64_t (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t *))
{
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 15;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 4;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 15;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    v14 = a4;
    if (a4 != __src || &__src[16 * v10] <= a4)
    {
      memmove(a4, __src, 16 * v10);
    }

    v15 = &v14[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v16 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v19 = v15;
      v20 = v5;
      v21 = *v6;
      v22 = *v14;
      v23 = *(v14 + 1);
      v54 = *(v6 + 1);
      v53 = v23;

      v24 = a5(v21, &v54, v22, &v53);
      if (v52)
      {

        v45 = v19 - v14 + 15;
        if (v19 - v14 >= 0)
        {
          v45 = v19 - v14;
        }

        v46 = v45 >> 4;
        if (v7 < v14 || v7 >= &v14[v45 & 0xFFFFFFFFFFFFFFF0])
        {
          v39 = 16 * v46;
          v16 = v7;
          v40 = v14;
          goto LABEL_46;
        }

        if (v7 == v14)
        {
          return 1;
        }

        v39 = 16 * v46;
        v16 = v7;
        goto LABEL_45;
      }

      v25 = v24;

      if (v25)
      {
        break;
      }

      v17 = v14;
      v18 = v7 == v14;
      v14 += 16;
      v5 = v20;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      v15 = v19;
      if (v14 >= v19)
      {
        goto LABEL_10;
      }
    }

    v17 = v6;
    v18 = v7 == v6;
    v6 += 16;
    v5 = v20;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v17;
    goto LABEL_13;
  }

  if (a4 != __dst || &__dst[16 * v13] <= a4)
  {
    v26 = a4;
    memmove(a4, __dst, 16 * v13);
    a4 = v26;
  }

  v50 = a4;
  v15 = &a4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
    v47 = v7;
LABEL_26:
    v27 = 0;
    v28 = v15;
    v48 = v6 - 16;
    v49 = v5;
    while (1)
    {
      v29 = v28;
      v30 = &v28[v27];
      v32 = &v28[v27 - 16];
      v31 = *v32;
      v33 = *(v6 - 2);
      v34 = *(v6 - 1);
      v54 = *&v28[v27 - 8];
      v53 = v34;

      v35 = a5(v31, &v54, v33, &v53);
      if (v52)
      {
        break;
      }

      v36 = v35;

      if (v36)
      {
        v16 = v6 - 16;
        v5 = &v5[v27 - 16];
        if (&v49[v27] != v6)
        {
          *v5 = *v48;
        }

        v15 = &v29[v27];
        if (&v29[v27] <= v50 || (v6 -= 16, v48 <= v47))
        {
          v15 = &v29[v27];
          goto LABEL_38;
        }

        goto LABEL_26;
      }

      v28 = v29;
      if (&v5[v27] != v30)
      {
        *&v5[v27 - 16] = *v32;
      }

      v27 -= 16;
      v15 = &v29[v27];
      if (&v29[v27] <= v50)
      {
        goto LABEL_37;
      }
    }

    v40 = v50;
    v42 = v29 - v50 + v27;
    v43 = v42 + 15;
    if (v42 >= 0)
    {
      v43 = v29 - v50 + v27;
    }

    v44 = v43 >> 4;
    if (v6 < v50 || v6 >= &v50[v43 & 0xFFFFFFFFFFFFFFF0])
    {
      v39 = 16 * v44;
      v16 = v6;
    }

    else
    {
      if (v6 == v50)
      {
        return 1;
      }

      v39 = 16 * v44;
      v16 = v6;
    }

    goto LABEL_46;
  }

LABEL_37:
  v16 = v6;
LABEL_38:
  v14 = v50;
LABEL_39:
  v37 = v15 - v14;
  v38 = v15 - v14 + 15;
  if (v37 >= 0)
  {
    v38 = v37;
  }

  if (v16 < v14 || v16 >= &v14[v38 & 0xFFFFFFFFFFFFFFF0] || v16 != v14)
  {
    v39 = 16 * (v38 >> 4);
LABEL_45:
    v40 = v14;
LABEL_46:
    memmove(v16, v40, v39);
  }

  return 1;
}

uint64_t sub_1D62FEC58(char *a1, char *a2, char *a3, char *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v35 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v39[38] = a6;
  v13 = (a2 - a1) / 296;
  v14 = (a3 - a2) / 296;
  if (v13 < v14)
  {
    v15 = 296 * v13;
    if (a4 != a1 || &a1[v15] <= a4)
    {
      memmove(a4, a1, v15);
    }

    v16 = &a4[v15];
    if (a2 - a1 < 296 || a2 >= a3)
    {
      a2 = a1;
      goto LABEL_35;
    }

    v17 = a2;
    while (1)
    {
      sub_1D6306E88(v17, &v38, &qword_1EC885950, &type metadata for FeedCatalogItem);
      sub_1D6306E88(a4, &v36, &qword_1EC885950, &type metadata for FeedCatalogItem);
      v18 = sub_1D62F2FFC(v38, v39, v36, v37, v35);
      v19 = a4;
      sub_1D6306DB0(&v36, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
      sub_1D6306DB0(&v38, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
      if ((v18 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      v21 = a1 == v17;
      v17 += 296;
      if (!v21)
      {
        goto LABEL_13;
      }

LABEL_14:
      a1 += 296;
      if (a4 >= v16 || v17 >= a3)
      {
        a2 = a1;
        goto LABEL_35;
      }
    }

    v20 = a4;
    a4 += 296;
    if (a1 == v19)
    {
      goto LABEL_14;
    }

LABEL_13:
    memmove(a1, v20, 0x128uLL);
    goto LABEL_14;
  }

  v22 = 296 * v14;
  if (a4 != a2 || &a2[v22] <= a4)
  {
    memmove(a4, a2, 296 * v14);
  }

  v16 = &a4[v22];
  if (a3 - a2 >= 296 && a2 > a1)
  {
    v23 = a2;
    v32 = a1;
    while (1)
    {
      v33 = v23;
      __src = v23 - 296;
      v24 = v16 - 296;
      a3 -= 296;
      while (1)
      {
        v27 = (v24 + 296);
        v28 = a3 + 296;
        sub_1D6306E88(v24, &v38, &qword_1EC885950, &type metadata for FeedCatalogItem);
        sub_1D6306E88(__src, &v36, &qword_1EC885950, &type metadata for FeedCatalogItem);
        v29 = sub_1D62F2FFC(v38, v39, v36, v37, v35);
        sub_1D6306DB0(&v36, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
        sub_1D6306DB0(&v38, &qword_1EC885950, &type metadata for FeedCatalogItem, sub_1D5C82990);
        if (v29)
        {
          break;
        }

        if (v28 != v27)
        {
          memmove(a3, v24, 0x128uLL);
        }

        v25 = v24 - 296;
        a3 -= 296;
        v26 = v24 > a4;
        v24 -= 296;
        if (!v26)
        {
          v16 = v25 + 296;
          a2 = v33;
          goto LABEL_35;
        }
      }

      v21 = v28 == v33;
      a2 = __src;
      if (!v21)
      {
        memmove(a3, __src, 0x128uLL);
      }

      v16 = v24 + 296;
      if (v27 > a4)
      {
        v23 = __src;
        if (__src > v32)
        {
          continue;
        }
      }

      v16 = v24 + 296;
      break;
    }
  }

LABEL_35:
  v30 = 296 * ((v16 - a4) / 296);
  if (a2 != a4 || a2 >= &a4[v30])
  {
    memmove(a2, a4, v30);
  }

  return 1;
}

uint64_t sub_1D62FF078(char *a1, char *a2, char *a3, char *a4, void (*a5)(unsigned __int8 *__return_ptr, uint64_t *, uint64_t *), uint64_t a6)
{
  v12 = swift_allocObject();
  v36 = a5;
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v40[21] = a6;
  v13 = a2 - a1;
  v14 = (a2 - a1) / 160;
  v15 = a3 - a2;
  v16 = (a3 - a2) / 160;
  if (v14 < v16)
  {
    v17 = a2;
    if (a4 != a1 || &a1[160 * v14] <= a4)
    {
      memmove(a4, a1, 160 * v14);
    }

    v18 = &a4[160 * v14];
    if (v13 < 160 || v17 >= a3)
    {
      v23 = a1;
      goto LABEL_34;
    }

    while (1)
    {
      sub_1D6306E88(v17, &v39, &qword_1EC885930, &type metadata for FeedCategory);
      sub_1D6306E88(a4, &v37, &qword_1EC885930, &type metadata for FeedCategory);
      v19 = sub_1D62F30D0(v39, v40, v37, v38, v36);
      v20 = a4;
      sub_1D6306DB0(&v37, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
      sub_1D6306DB0(&v39, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
      if ((v19 & 1) == 0)
      {
        break;
      }

      v21 = v17;
      v22 = a1 == v17;
      v17 += 160;
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 += 160;
      if (a4 >= v18 || v17 >= a3)
      {
        v23 = a1;
        goto LABEL_34;
      }
    }

    v21 = a4;
    a4 += 160;
    if (a1 == v20)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(a1, v21, 0xA0uLL);
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[160 * v16] <= a4)
  {
    memmove(a4, a2, 160 * v16);
  }

  v23 = a2;

  v18 = &a4[160 * v16];
  if (v15 >= 160 && v23 > a1)
  {
    v24 = v23;
    v33 = a1;
    while (1)
    {
      v34 = v24;
      __src = v24 - 160;
      v25 = v18 - 160;
      a3 -= 160;
      while (1)
      {
        v28 = (v25 + 160);
        v29 = a3 + 160;
        sub_1D6306E88(v25, &v39, &qword_1EC885930, &type metadata for FeedCategory);
        sub_1D6306E88(__src, &v37, &qword_1EC885930, &type metadata for FeedCategory);
        v30 = sub_1D62F30D0(v39, v40, v37, v38, v36);
        sub_1D6306DB0(&v37, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
        sub_1D6306DB0(&v39, &qword_1EC885930, &type metadata for FeedCategory, sub_1D5C82990);
        if (v30)
        {
          break;
        }

        if (v29 != v28)
        {
          memmove(a3, v25, 0xA0uLL);
        }

        v26 = v25 - 160;
        a3 -= 160;
        v27 = v25 > a4;
        v25 -= 160;
        if (!v27)
        {
          v18 = v26 + 160;
          v23 = v34;
          goto LABEL_34;
        }
      }

      v23 = __src;
      if (v29 != v34)
      {
        memmove(a3, __src, 0xA0uLL);
      }

      v18 = v25 + 160;
      if (v28 > a4)
      {
        v24 = __src;
        if (__src > v33)
        {
          continue;
        }
      }

      v18 = v25 + 160;
      break;
    }
  }

LABEL_34:
  v31 = (v18 - a4) / 160;
  if (v23 != a4 || v23 >= &a4[160 * v31])
  {
    memmove(v23, a4, 160 * v31);
  }

  return 1;
}

uint64_t sub_1D62FF480(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D62FF50C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_1D62FF610(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  sub_1D5C17CEC(0, a4, a5);
  v9 = *(*(v8 - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1D62FF75C(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1D62FF844(char *result, int64_t a2, char a3, char *a4)
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
    sub_1D6306D3C(0);
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

void *sub_1D62FF93C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D5BDB26C(result, a2, a3);

    return v6;
  }

  return result;
}

void sub_1D62FFD74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = a1 + 32;
    v6 = (MEMORY[0x1E69E7CC0] + 32);
    while (1)
    {
      *&v21[0] = v3;
      sub_1D5B68374(v5, v21 + 8);
      v22 = v21[0];
      v23 = v21[1];
      v24 = v21[2];
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_1D630B7BC(0);
        v10 = swift_allocObject();
        v11 = (_swift_stdlib_malloc_size(v10) - 32) / 48;
        v10[2] = v9;
        v10[3] = 2 * v11;
        v12 = (v10 + 4);
        v13 = v2[3] >> 1;
        if (v2[2])
        {
          if (v10 != v2 || v12 >= &v2[6 * v13 + 4])
          {
            memmove(v10 + 4, v2 + 4, 48 * v13);
          }

          v2[2] = 0;
        }

        v6 = (v12 + 48 * v13);
        v4 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - v13;

        v2 = v10;
      }

      v15 = __OFSUB__(v4--, 1);
      if (v15)
      {
        break;
      }

      ++v3;
      v16 = v22;
      v17 = v24;
      v6[1] = v23;
      v6[2] = v17;
      *v6 = v16;
      v6 += 3;
      v5 += 40;
      if (v1 == v3)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v4 = 0;
LABEL_21:
  v18 = v2[3];
  if (v18 >= 2)
  {
    v19 = v18 >> 1;
    v15 = __OFSUB__(v19, v4);
    v20 = v19 - v4;
    if (v15)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v2[2] = v20;
  }
}

void sub_1D62FFF18(uint64_t a1)
{
  sub_1D5C17CEC(0, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v48 = (&v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v9 = &v42 - v8;
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v7;
    v13 = *(v7 + 80);
    v45 = v13;
    v46 = (v13 + 32) & ~v13;
    v14 = MEMORY[0x1E69E7CC0] + v46;
    v15 = 0;
    v16 = 0;
    v17 = *(type metadata accessor for FeedHeadline(0) - 8);
    v18 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v47 = *(v17 + 72);
    v19 = v11;
    v43 = v10;
    v44 = v12;
    while (1)
    {
      v22 = v48;
      v23 = *(v49 + 48);
      *v48 = v15;
      sub_1D5BD86D4(v18, v22 + v23, type metadata accessor for FeedHeadline);
      sub_1D630BA20(v22, v9, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
      if (v16)
      {
        v11 = v19;
        v20 = v12;
        v21 = __OFSUB__(v16--, 1);
        if (v21)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v24 = v19[3];
        if (((v24 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v25 = v9;
        v26 = v24 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        sub_1D630BA8C(0, &unk_1EDF19518, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
        v28 = *(v12 + 72);
        v29 = v46;
        v11 = swift_allocObject();
        v30 = _swift_stdlib_malloc_size(v11);
        if (!v28)
        {
          goto LABEL_34;
        }

        v31 = v30 - v29;
        if (v30 - v29 == 0x8000000000000000 && v28 == -1)
        {
          goto LABEL_35;
        }

        v33 = v31 / v28;
        v11[2] = v27;
        v11[3] = 2 * (v31 / v28);
        v34 = v11 + v29;
        v35 = v19[3] >> 1;
        v36 = v35 * v28;
        if (v19[2])
        {
          if (v11 < v19 || v34 >= v19 + v46 + v36)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v11 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v19[2] = 0;
        }

        v14 = &v34[v36];
        v38 = (v33 & 0x7FFFFFFFFFFFFFFFLL) - v35;

        v9 = v25;
        v10 = v43;
        v20 = v44;
        v21 = __OFSUB__(v38, 1);
        v16 = v38 - 1;
        if (v21)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v15;
      sub_1D630BA20(v9, v14, &qword_1EDF1ACC0, type metadata accessor for FeedHeadline);
      v12 = v20;
      v14 += *(v20 + 72);
      v18 += v47;
      v19 = v11;
      if (v10 == v15)
      {
        goto LABEL_29;
      }
    }
  }

  v16 = 0;
LABEL_29:
  v39 = v11[3];
  if (v39 >= 2)
  {
    v40 = v39 >> 1;
    v21 = __OFSUB__(v40, v16);
    v41 = v40 - v16;
    if (v21)
    {
      goto LABEL_36;
    }

    v11[2] = v41;
  }
}

void sub_1D63002A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0] + 32;
    v6 = (a1 + 32);
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6[5];
      v9 = v6[7];
      v38 = v6[6];
      v39[0] = v9;
      *(v39 + 9) = *(v6 + 121);
      v10 = v6[1];
      v11 = v6[3];
      v34 = v6[2];
      v35 = v11;
      v12 = v6[3];
      v13 = v6[5];
      v36 = v6[4];
      v37 = v13;
      v14 = v6[1];
      v33[0] = *v6;
      v33[1] = v14;
      v15 = v6[7];
      v46 = v38;
      v47[0] = v15;
      *(v47 + 9) = *(v6 + 121);
      v42 = v34;
      v43 = v12;
      v44 = v36;
      v45 = v8;
      v40 = v33[0];
      v41 = v10;
      if (v4)
      {
        sub_1D5ECF2C4(v33, v32);
        v2 = v7;
        v16 = __OFSUB__(v4--, 1);
        if (v16)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v17 = v7[3];
        if (((v17 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v18 = v17 & 0xFFFFFFFFFFFFFFFELL;
        if (v18 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = v18;
        }

        sub_1D6306EF4(0);
        v2 = swift_allocObject();
        v20 = (_swift_stdlib_malloc_size(v2) - 32) / 152;
        v2[2] = v19;
        v2[3] = 2 * v20;
        v21 = v7[3] >> 1;
        v22 = 19 * v21;
        v23 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v21;
        v5 = &v2[19 * v21 + 4];
        if (v7[2])
        {
          if (v2 >= v7 && v2 + 4 < &v7[v22 + 4] && v2 == v7)
          {
            sub_1D5ECF2C4(v33, v32);
          }

          else
          {
            sub_1D5ECF2C4(v33, v32);
            memmove(v2 + 4, v7 + 4, v22 * 8);
          }

          v7[2] = 0;

          v16 = __OFSUB__(v23, 1);
          v4 = v23 - 1;
          if (v16)
          {
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return;
          }
        }

        else
        {
          sub_1D5ECF2C4(v33, v32);

          v16 = __OFSUB__(v23, 1);
          v4 = v23 - 1;
          if (v16)
          {
            goto LABEL_28;
          }
        }
      }

      *v5 = v3;
      v24 = v41;
      *(v5 + 8) = v40;
      v25 = v45;
      *(v5 + 72) = v44;
      v26 = v42;
      *(v5 + 56) = v43;
      *(v5 + 40) = v26;
      *(v5 + 24) = v24;
      v27 = v46;
      v28 = v47[0];
      *(v5 + 129) = *(v47 + 9);
      *(v5 + 120) = v28;
      *(v5 + 104) = v27;
      *(v5 + 88) = v25;
      v5 += 152;
      v6 += 9;
      ++v3;
      v7 = v2;
      if (v1 == v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v29 = v2[3];
  if (v29 >= 2)
  {
    v30 = v29 >> 1;
    v16 = __OFSUB__(v30, v4);
    v31 = v30 - v4;
    if (v16)
    {
      goto LABEL_30;
    }

    v2[2] = v31;
  }
}