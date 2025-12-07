id sub_1001059C8()
{
  result = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  qword_10076BF50 = result;
  return result;
}

void sub_100105A04(_OWORD *a1@<X8>)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 24);
  v8 = UICollectionElementKindSectionHeader;
  IndexPath.init(item:section:)();
  isa = IndexPath._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);
  v10 = [v7 supplementaryViewForElementKind:v8 atIndexPath:isa];

  if (v10)
  {
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      v11 = v10;
      sub_100608964(v26);
      v24 = v26[1];
      v25 = v26[0];
      v22 = v26[3];
      v23 = v26[2];
      v21 = v26[4];
      v20 = v26[5];
      v19 = v26[6];
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = 0u;
      v20 = 0u;
      v19 = 0u;
    }

    v13 = v24;
    v12 = v25;
    v15 = v22;
    v14 = v23;
    v16 = v21;
    v17 = v20;
    v18 = v19;
  }

  else
  {
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = v14;
  a1[3] = v15;
  a1[4] = v16;
  a1[5] = v17;
  a1[6] = v18;
}

uint64_t sub_100105C10(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v10[39] = v2;
    v10[40] = v3;
    memcpy(__dst, (a2 + 32), sizeof(__dst));
    memcpy(v10, (a2 + 32), 0x118uLL);
    result = sub_10010896C(v10);
    if (result != 1)
    {
      sub_100108984(__src);
      memcpy(v7, (a2 + 32), sizeof(v7));
      memcpy((a2 + 32), __src, 0x118uLL);
      memcpy(v8, __dst, sizeof(v8));
      sub_100106478(v8, &v5);
      sub_1000079B4(v7, &qword_10076C040, &unk_1006301D0);
      [v10[15] removeFromSuperview];
      [*(a2 + 24) setHidden:0];
      return sub_1000079B4(__dst, &qword_10076C040, &unk_1006301D0);
    }
  }

  return result;
}

uint64_t sub_100105D14()
{
  memcpy(__dst, v0 + 4, sizeof(__dst));
  sub_1000079B4(__dst, &qword_10076C040, &unk_1006301D0);
  return swift_deallocClassInstance();
}

uint64_t destroy for TTRIBoardColumnDraggingAnimator.AnimationState(id *a1)
{
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimator.AnimationState(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  v9 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v9;
  v10 = *(a2 + 120);
  v34 = *(a2 + 128);
  *(a1 + 120) = v10;
  *(a1 + 128) = v34;
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 136) = *(a2 + 136);
  v11 = *(a2 + 168);
  v32 = *(a2 + 176);
  *(a1 + 168) = v11;
  *(a1 + 176) = v32;
  v35 = *(a2 + 184);
  *(a1 + 184) = v35;
  v12 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v12;
  v14 = *(a2 + 224);
  v13 = *(a2 + 232);
  *(a1 + 224) = v14;
  *(a1 + 232) = v13;
  v33 = v13;
  v15 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v15;
  v36 = v15;
  v37 = *(a2 + 256);
  v16 = *(a2 + 264);
  v38 = *(a2 + 272);
  *(a1 + 256) = v37;
  *(a1 + 264) = v16;
  *(a1 + 272) = v38;
  v17 = v4;
  v18 = v5;
  v19 = v6;
  v20 = v7;
  v21 = v8;

  v22 = v10;
  v23 = v34;
  v24 = v11;
  v25 = v32;
  v26 = v35;
  v27 = v14;
  v28 = v33;

  v29 = v36;
  v30 = v37;

  return a1;
}

void *assignWithCopy for TTRIBoardColumnDraggingAnimator.AnimationState(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  v7 = a2[5];
  v8 = a1[5];
  a1[5] = v7;
  v9 = v7;

  v10 = a2[6];
  v11 = a1[6];
  a1[6] = v10;
  v12 = v10;

  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  v13 = a2[11];
  v14 = a1[11];
  a1[11] = v13;
  v15 = v13;

  v16 = a2[12];
  v17 = a1[12];
  a1[12] = v16;
  v18 = v16;

  a1[13] = a2[13];

  a1[14] = a2[14];

  v19 = a2[15];
  v20 = a1[15];
  a1[15] = v19;
  v21 = v19;

  v22 = a2[16];
  v23 = a1[16];
  a1[16] = v22;
  v24 = v22;

  a1[17] = a2[17];
  a1[18] = a2[18];
  a1[19] = a2[19];
  a1[20] = a2[20];
  v25 = a2[21];
  v26 = a1[21];
  a1[21] = v25;
  v27 = v25;

  v28 = a2[22];
  v29 = a1[22];
  a1[22] = v28;
  v30 = v28;

  v31 = a2[23];
  v32 = a1[23];
  a1[23] = v31;
  v33 = v31;

  a1[24] = a2[24];
  a1[25] = a2[25];
  a1[26] = a2[26];
  a1[27] = a2[27];
  v34 = a2[28];
  v35 = a1[28];
  a1[28] = v34;
  v36 = v34;

  v37 = a2[29];
  v38 = a1[29];
  a1[29] = v37;
  v39 = v37;

  a1[30] = a2[30];

  v40 = a2[31];
  v41 = a1[31];
  a1[31] = v40;
  v42 = v40;

  v43 = a2[32];
  v44 = a1[32];
  a1[32] = v43;
  v45 = v43;

  a1[33] = a2[33];

  a1[34] = a2[34];

  return a1;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimator.AnimationState(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  v7 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  v8 = *(a1 + 128);
  *(a1 + 120) = *(a2 + 120);

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);

  v9 = *(a1 + 176);
  *(a1 + 168) = *(a2 + 168);

  v10 = *(a1 + 184);
  *(a1 + 184) = *(a2 + 184);

  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;

  v12 = *(a1 + 232);
  *(a1 + 224) = *(a2 + 224);

  v13 = *(a1 + 248);
  *(a1 + 240) = *(a2 + 240);

  *(a1 + 256) = *(a2 + 256);

  *(a1 + 272) = *(a2 + 272);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimator.AnimationState(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 280))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimator.AnimationState(uint64_t result, int a2, int a3)
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
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 280) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 280) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100106440()
{
  sub_100107884(1, v0 + 24);

  sub_100107B0C(1, (v0 + 24));
}

void sub_1001064B0(uint64_t *a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1000EF30C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_100106558(v5);
  *a1 = v3;
}

void sub_100106558(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for IndexPath();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for IndexPath() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100106908(v8, v9, a1, v4);
      v6[2] = 0;

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
    sub_100106684(0, v2, 1, a1);
  }
}

void sub_100106684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for IndexPath();
  __chkstk_darwin(v8);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v44 = &v30 - v11;
  v14 = __chkstk_darwin(v12);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v13 + 16);
    v42 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v19 = (v16 + v17 * (a3 - 1));
    v37 = -v17;
    v38 = (v13 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      (v41)(v43, v21, v8, v14);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = static IndexPath.< infix(_:_:)();
      v26 = *v18;
      (*v18)(v24, v8);
      v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = &v35[v31];
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v27(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_100106908(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v122 = a1;
  v9 = type metadata accessor for IndexPath();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v125 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v133 = &v118 - v13;
  __chkstk_darwin(v14);
  v139 = &v118 - v15;
  v17 = __chkstk_darwin(v16);
  v138 = &v118 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = _swiftEmptyArrayStorage;
LABEL_95:
    v5 = *v122;
    if (!*v122)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v112 = a4;
    }

    else
    {
LABEL_130:
      v112 = sub_1000ED7BC(a4);
    }

    v113 = v6;
    v141 = v112;
    a4 = *(v112 + 2);
    if (a4 >= 2)
    {
      v114 = v10;
      v10 = a3;
      a3 = v114;
      while (*v10)
      {
        v115 = *&v112[16 * a4];
        v116 = v112;
        v6 = *&v112[16 * a4 + 24];
        sub_1001072F4(*v10 + a3[9] * v115, *v10 + a3[9] * *&v112[16 * a4 + 16], *v10 + a3[9] * v6, v5);
        if (v113)
        {
          goto LABEL_107;
        }

        if (v6 < v115)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v116 = sub_1000ED7BC(v116);
        }

        if (a4 - 2 >= *(v116 + 2))
        {
          goto LABEL_124;
        }

        v117 = &v116[16 * a4];
        *v117 = v115;
        *(v117 + 1) = v6;
        v141 = v116;
        sub_1000ED730(a4 - 1);
        v112 = v141;
        a4 = *(v141 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_134;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v136 = (v10 + 1);
  v137 = v10 + 2;
  v135 = (v10 + 4);
  v21 = _swiftEmptyArrayStorage;
  v123 = a3;
  v121 = a4;
  v140 = v9;
  while (1)
  {
    v22 = v20;
    v126 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v131 = v19;
      v120 = v6;
      v128 = *a3;
      v23 = v128;
      v24 = v10[9];
      v5 = v128 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v138;
      v25(v138, v5, v9, v17);
      v27 = v23 + v24 * v22;
      v28 = v139;
      v130 = v25;
      (v25)(v139, v27, v9);
      LODWORD(v132) = static IndexPath.< infix(_:_:)();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v129 = v30;
      v30(v26, v29);
      v119 = v22;
      v31 = v22 + 2;
      v134 = v24;
      v32 = v128 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v131;
        if (v131 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v138;
        v36 = v140;
        v37 = v130;
        (v130)(v138, v32, v140);
        v38 = v139;
        v37(v139, v5, v36);
        v39 = static IndexPath.< infix(_:_:)() & 1;
        v40 = v129;
        (v129)(v38, v36);
        v41 = v35;
        v10 = v34;
        v40(v41, v36);
        ++v31;
        v32 += v134;
        v5 += v134;
        if ((v132 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v123;
      v21 = v126;
      v6 = v120;
      a4 = v121;
      v9 = v140;
      v22 = v119;
      if (v132)
      {
        if (v33 < v119)
        {
          goto LABEL_127;
        }

        if (v119 < v33)
        {
          v118 = v10;
          v42 = v134 * (v33 - 1);
          v43 = v33 * v134;
          v44 = v33;
          v45 = v119;
          v46 = v119 * v134;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = &v48[v46];
              v132 = *v135;
              (v132)(v125, &v48[v46], v140, v21);
              if (v46 < v42 || v5 >= &v48[v43])
              {
                v47 = v140;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v140;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v132(&v48[v42], v125, v47);
              a3 = v123;
              v21 = v126;
              v33 = v49;
            }

            ++v45;
            v42 -= v134;
            v43 -= v134;
            v46 += v134;
          }

          while (v45 < v44);
          v6 = v120;
          a4 = v121;
          v10 = v118;
          v9 = v140;
          v22 = v119;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v126;
    }

    else
    {
      v21 = sub_100546DD8(0, *(v126 + 2) + 1, 1, v126);
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      v21 = sub_100546DD8((v53 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v122;
    if (!*v122)
    {
      goto LABEL_135;
    }

    v127 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_1001072F4(*a3 + v10[9] * v95, *a3 + v10[9] * *&v21[16 * v56 + 32], *a3 + v10[9] * v5, v55);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_1000ED7BC(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v141 = v94;
        sub_1000ED730(v56);
        v21 = v141;
        v5 = *(v141 + 2);
        v9 = v140;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v127;
    a4 = v121;
    if (v127 >= v19)
    {
      goto LABEL_95;
    }
  }

  v120 = v6;
  v97 = *a3;
  v98 = v10[9];
  v118 = v10;
  v134 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v119 = v22;
  v101 = (v22 - v33);
  v132 = v97;
  v124 = v98;
  v5 = v97 + v33 * v98;
  v127 = v51;
LABEL_85:
  v130 = v99;
  v131 = v33;
  v128 = v5;
  v129 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v138;
    v104 = v134;
    (v134)(v138, v5, v9, v21);
    v105 = v139;
    v104(v139, v102, v140);
    v106 = static IndexPath.< infix(_:_:)();
    a4 = v136;
    v107 = *v136;
    v108 = v105;
    v9 = v140;
    (*v136)(v108, v140);
    v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v131 + 1;
      v99 = &v130[v124];
      v101 = v129 - 1;
      v5 = v128 + v124;
      v52 = v127;
      if (v131 + 1 != v127)
      {
        goto LABEL_85;
      }

      v6 = v120;
      a3 = v123;
      v10 = v118;
      v22 = v119;
      if (v127 < v119)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v132)
    {
      break;
    }

    a4 = v135;
    v109 = *v135;
    v110 = v133;
    (*v135)(v133, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void sub_1001072F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for IndexPath();
  v8 = *(v56 - 8);
  __chkstk_darwin(v56);
  v54 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = &v44 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v55 = a3;
  v15 = (a2 - a1) / v13;
  v59 = a1;
  v58 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v28 = a4 + v17;
    if (v17 < 1)
    {
      v32 = a4 + v17;
    }

    else
    {
      v29 = -v13;
      v48 = (v8 + 8);
      v49 = (v8 + 16);
      v30 = a4 + v17;
      v31 = v55;
      v32 = v28;
      v46 = a1;
      v47 = a4;
      v50 = -v13;
      do
      {
        v44 = v32;
        v33 = a2;
        v34 = a2 + v29;
        v51 = v33;
        v52 = v34;
        while (1)
        {
          if (v33 <= a1)
          {
            v59 = v33;
            v57 = v44;
            goto LABEL_59;
          }

          v36 = v31;
          v45 = v32;
          v55 = v31 + v29;
          v37 = v30 + v29;
          v38 = *v49;
          v39 = v53;
          v40 = v56;
          v41 = v30;
          (*v49)(v53, v37, v56);
          v42 = v54;
          (v38)(v54, v34, v40);
          LOBYTE(v38) = static IndexPath.< infix(_:_:)();
          v43 = *v48;
          (*v48)(v42, v40);
          v43(v39, v40);
          if (v38)
          {
            break;
          }

          v32 = v37;
          v31 = v55;
          if (v36 < v41 || v55 >= v41)
          {
            swift_arrayInitWithTakeFrontToBack();
            v34 = v52;
            a1 = v46;
          }

          else
          {
            v34 = v52;
            a1 = v46;
            if (v36 != v41)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v30 = v37;
          v35 = v37 > v47;
          v29 = v50;
          v33 = v51;
          if (!v35)
          {
            a2 = v51;
            goto LABEL_58;
          }
        }

        v44 = v41;
        v31 = v55;
        if (v36 < v51 || v55 >= v51)
        {
          a2 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v45;
          a1 = v46;
          v29 = v50;
        }

        else
        {
          a2 = v52;
          v32 = v45;
          a1 = v46;
          v29 = v50;
          if (v36 != v51)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v30 = v44;
      }

      while (v44 > v47);
    }

LABEL_58:
    v59 = a2;
    v57 = v32;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v16;
    v57 = a4 + v16;
    if (v16 >= 1 && a2 < v55)
    {
      v50 = *(v8 + 16);
      v51 = v8 + 16;
      v48 = v13;
      v49 = (v8 + 8);
      do
      {
        v19 = v53;
        v20 = v56;
        v21 = v50;
        (v50)(v53, a2, v56);
        v22 = a2;
        v23 = v54;
        v21(v54, a4, v20);
        v24 = static IndexPath.< infix(_:_:)();
        v25 = *v49;
        (*v49)(v23, v20);
        v25(v19, v20);
        if (v24)
        {
          v26 = v48;
          a2 = v48 + v22;
          if (a1 < v22 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v26 = v48;
          v27 = v48 + a4;
          if (a1 < a4 || a1 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v22;
          }

          else
          {
            a2 = v22;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v58 = v27;
          a4 += v26;
        }

        a1 += v26;
        v59 = a1;
      }

      while (a4 < v52 && a2 < v55);
    }
  }

LABEL_59:
  sub_1000ED7D0(&v59, &v58, &v57);
}

void sub_100107884(int a1, uint64_t a2)
{
  v3 = *(a2 + 256);
  left = -16.0;
  v5 = 0.0;
  top = 0.0;
  if ((a1 & 1) == 0)
  {
    top = UIEdgeInsetsZero.top;
    left = UIEdgeInsetsZero.left;
  }

  v7 = *(a2 + 176);
  v8 = *(a2 + 240);
  v9 = *(a2 + 264);
  [*(a2 + 248) bounds];
  [v3 setBounds:{sub_100068328(v10, v11, v12, v13, top, left)}];
  if (a1)
  {
    if (qword_100766F10 != -1)
    {
      swift_once();
    }

    v7 = qword_10076BF50;
    v5 = 16.0;
    v14 = 1042536202;
  }

  else
  {
    v14 = 0;
  }

  [v3 setBackgroundColor:v7];
  v15 = [v3 layer];
  [v15 setCornerRadius:v5];

  v16 = [v3 layer];
  LODWORD(v17) = v14;
  [v16 setShadowOpacity:v17];

  if (v9 >> 62)
  {
LABEL_27:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      return;
    }
  }

  else
  {
    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      return;
    }
  }

  v19 = 0;
  v20 = (v8 + 80);
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v21 = *(v9 + 8 * v19 + 32);
    }

    v22 = *(v8 + 16);
    if (v19 == v22)
    {
      break;
    }

    if (v19 >= v22)
    {
      goto LABEL_26;
    }

    ++v19;
    v23 = *v20;
    v20 += 56;
    if (a1 & v23)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = 1.0;
    }

    v25 = v21;
    [v21 setAlpha:v24];

    if (v18 == v19)
    {
      return;
    }
  }
}

void sub_100107B0C(int a1, double *a2)
{
  v107 = type metadata accessor for TTRRectCorners();
  v4 = *(v107 - 8);
  __chkstk_darwin(v107);
  v106 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100058000(&qword_10076C008, &qword_1006301A0);
  __chkstk_darwin(v6 - 8);
  v105 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v85 - v9;
  v11 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  __chkstk_darwin(v11);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell(0);
  v114 = *(v103 - 1);
  __chkstk_darwin(v103);
  v15 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100058000(&qword_10076C010, &qword_1006301A8);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v94 = (&v85 - v18);
  v19 = sub_100058000(&qword_10076C018, &qword_1006301B0);
  __chkstk_darwin(v19 - 8);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v111 = (&v85 - v23);
  v24 = a2[17];
  v25 = a2[18];
  v26 = a2[19];
  v27 = a2[20];
  v28 = *(a2 + 21);
  v100 = *(a2 + 16);
  [v100 convertRect:v28 fromCoordinateSpace:{v24, v25, v26, v27}];
  MaxY = CGRectGetMaxY(v123);
  v29 = 0;
  v113 = *(a2 + 34);
  v112 = *(v113 + 16);
  v99 = v13 + 8;
  v110 = (v17 + 56);
  v109 = (v17 + 48);
  v92 = (v4 + 16);
  v98 = (v4 + 32);
  v88 = 0.9;
  v87 = 0.714285714;
  v86 = 0.16;
  v91 = 0.466666667;
  v90 = xmmword_1006300A0;
  v89 = xmmword_1006300B0;
  v108 = a1;
  v104 = v13;
  v102 = v16;
  v101 = v21;
  while (1)
  {
    v32 = v112;
    if (v29 == v112)
    {
      v33 = 1;
      v117 = v112;
    }

    else
    {
      if (v29 >= v112)
      {
        goto LABEL_35;
      }

      v34 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        goto LABEL_36;
      }

      v35 = v113 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v29;
      v36 = *(v16 + 48);
      v37 = v94;
      *v94 = v29;
      sub_10010869C(v35, v37 + v36, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
      sub_100016588(v37, v21, &qword_10076C010, &qword_1006301A8);
      v33 = 0;
      v117 = v34;
    }

    v38 = v111;
    (*v110)(v21, v33, 1, v16);
    sub_100016588(v21, v38, &qword_10076C018, &qword_1006301B0);
    if ((*v109)(v38, 1, v16) == 1)
    {
      return;
    }

    v39 = *v38;
    sub_1001088C4(v38 + *(v16 + 48), v15, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
    if (v39 >= v32)
    {
      break;
    }

    v40 = v113 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v39;
    [v100 convertRect:*(v40 + 32) fromCoordinateSpace:{*v40, *(v40 + 8), *(v40 + 16), *(v40 + 24)}];
    if (a1)
    {
      v45 = v41;
      v46 = v42;
      v47 = v43;
      v97 = v44;
      v48 = pow(0.85, v39);
      CGAffineTransformMakeScale(&v120, v48, v48);
      v115 = *&v120.c;
      v116 = *&v120.a;
      v49 = 0.0;
      v31 = 0.0;
      tx = v120.tx;
      ty = v120.ty;
      if (v39 < 2)
      {
        v31 = pow(v88, v39);
        v50 = pow(v87, v39);
        v49 = v50 * 0.7 * v86;
      }

      v51 = pow(0.533333333, v39 + 1.0);
      v52 = (1.0 - v51) * 15.0 / v91;
      v124.origin.x = v45;
      v124.origin.y = v46;
      v124.size.width = v47;
      v124.size.height = v97;
      Height = CGRectGetHeight(v124);
      v54 = MaxY + v52;
      v55 = v49;
      v56 = v54 + v48 * Height * -0.5;
      CGRect.center.getter();
      v58 = v57;
      v59 = tx;
      v60 = ty;
    }

    else
    {
      CGRect.center.getter();
      v58 = v61;
      v56 = v62;
      v31 = 1.0;
      v55 = 0.0;
      v59 = 0.0;
      v116 = v89;
      v60 = 0.0;
      v115 = v90;
    }

    sub_10010869C(v15, v13, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
    v63 = *&v15[v103[5]];
    v64 = *&v15[v103[6]];
    v65 = *&v15[v103[7]];
    *&v120.a = v116;
    *&v120.c = v115;
    v120.tx = v59;
    v120.ty = v60;
    [v63 setTransform:&v120];
    [v63 setCenter:{v58, v56}];
    if (a1)
    {
      v66 = v106;
      static TTRRectCorners.allCorners.getter();
      v67 = v107;
    }

    else
    {
      v68 = &v13[*(v11 + 20)];
      v69 = &v68[*(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24)];
      v66 = v106;
      v67 = v107;
      (*v92)(v106, v69, v107);
    }

    v70 = v11;
    v71 = *&v99[*(v11 + 20)];
    (*v98)(v10, v66, v67);
    v72 = type metadata accessor for TTRIBoardColumnDraggingAnimationCellBackgroundView.Shape(0);
    *&v10[*(v72 + 20)] = v71;
    (*(*(v72 - 8) + 56))(v10, 0, 1, v72);
    v73 = OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shape;
    swift_beginAccess();
    v74 = v105;
    sub_10000794C(v64 + v73, v105, &qword_10076C008, &qword_1006301A0);
    swift_beginAccess();
    sub_100108724(v10, v64 + v73);
    swift_endAccess();
    sub_1002FCDE0(v74);
    sub_1000079B4(v74, &qword_10076C008, &qword_1006301A0);
    sub_1000079B4(v10, &qword_10076C008, &qword_1006301A0);
    v75 = v64 + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow;
    v76 = *(v64 + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow + 32);
    v77 = *(v64 + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow + 16);
    *v121 = *(v64 + OBJC_IVAR____TtC9Reminders50TTRIBoardColumnDraggingAnimationCellBackgroundView_shadow);
    *&v121[16] = v77;
    v122 = v76;
    v78 = *v121;
    if (*v121)
    {
      v79 = *&v121[24];
      v80 = *&v121[8];
      *v75 = *v121;
      *(v75 + 8) = v80;
      *(v75 + 24) = v79;
      *(v75 + 32) = v55;
      sub_10000794C(v121, &v120, &qword_10076C020, &qword_1006301B8);
      v81 = v78;
      sub_1002FD608(v121);
      sub_1000079B4(v121, &qword_10076C020, &qword_1006301B8);
    }

    else
    {
      sub_1002FD608(v121);
    }

    LOBYTE(a1) = v108;
    v13 = v104;
    v16 = v102;
    v120.a = 1.0;
    v119 = 0x3E50000000000000;
    v118 = v31;
    v82 = fabs(v31);
    v11 = v70;
    if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v84 = 1.0;
      if (v82 > 1.0)
      {
        v84 = v82;
      }

      if (v84 <= 2.22507386e-308)
      {
        v84 = 2.22507386e-308;
      }

      v21 = v101;
      if (v82 < 0.0000000149011612 || fabs(v31 + -1.0) < v84 * 0.0000000149011612)
      {
LABEL_2:
        v30 = v31;
        v31 = 1.0;
        goto LABEL_3;
      }
    }

    else
    {
      sub_100108794();
      v83 = FloatingPoint.rescaledAlmostEqual(to:tolerance:)();
      v21 = v101;
      if (v82 < 0.0000000149011612 || (v83 & 1) != 0)
      {
        goto LABEL_2;
      }
    }

    v30 = 1.0;
LABEL_3:
    [v63 setAlpha:v30];
    [v65 setAlpha:v31];
    sub_1001087E8(v13, type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell);
    sub_1001087E8(v15, type metadata accessor for TTRIBoardColumnDraggingAnimator.AnimationState.Cell);
    v29 = v117;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_10010869C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100108724(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&qword_10076C008, &qword_1006301A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_100108794()
{
  result = qword_10076C028;
  if (!qword_10076C028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076C028);
  }

  return result;
}

uint64_t sub_1001087E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1001088C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10010892C()
{
  sub_100107884(0, v0 + 24);

  sub_100107B0C(0, (v0 + 24));
}

uint64_t sub_10010896C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

double sub_100108984(uint64_t a1)
{
  *(a1 + 272) = 0;
  result = 0.0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  *(a1 + 48) = *(a2 + 48);
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t assignWithCopy for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  v9 = v7;

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t a1, uint64_t a2)
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

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.AccessorySnapshot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRIBoardColumnDraggingAnimationSource.Header(id *a1)
{
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationSource.Header(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  *(a1 + 104) = *(a2 + 104);
  v9 = v4;
  v10 = v5;
  v11 = v6;
  v12 = v7;
  v13 = v8;

  return a1;
}

void *assignWithCopy for TTRIBoardColumnDraggingAnimationSource.Header(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  v7 = a2[5];
  v8 = a1[5];
  a1[5] = v7;
  v9 = v7;

  v10 = a2[6];
  v11 = a1[6];
  a1[6] = v10;
  v12 = v10;

  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  v13 = a2[11];
  v14 = a1[11];
  a1[11] = v13;
  v15 = v13;

  v16 = a2[12];
  v17 = a1[12];
  a1[12] = v16;
  v18 = v16;

  a1[13] = a2[13];

  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnDraggingAnimationSource.Header(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationSource.Header(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  v7 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.Header(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.Header(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_100108EE4(char *a1, char **a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = &v4[(v3 + 16) & ~v3];
  }

  else
  {
    v5 = a1;
    *(a1 + 1) = a2[1];
    v6 = *(a3 + 24);
    v8 = type metadata accessor for TTRRectCorners();
    v9 = *(*(v8 - 8) + 16);
    v10 = v4;
    v9(&v5[v6], a2 + v6, v8);
  }

  return v5;
}

uint64_t sub_100108FC4(id *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = type metadata accessor for TTRRectCorners();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

char *sub_100109038(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TTRRectCorners();
  v9 = *(*(v8 - 8) + 16);
  v10 = v6;
  v9(&a1[v7], a2 + v7, v8);
  return a1;
}

uint64_t sub_1001090C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a1;
  *a1 = *a2;
  v8 = v6;

  *(a1 + 8) = *(a2 + 8);
  v9 = *(a3 + 24);
  v10 = type metadata accessor for TTRRectCorners();
  (*(*(v10 - 8) + 24))(a1 + v9, a2 + v9, v10);
  return a1;
}

char *sub_100109158(char *a1, char *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v5;
  v6 = *(a3 + 24);
  v7 = type metadata accessor for TTRRectCorners();
  (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
  return a1;
}

uint64_t sub_1001091D0(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 1);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for TTRRectCorners();
  (*(*(v8 - 8) + 40))(a1 + v7, &a2[v7], v8);
  return a1;
}

uint64_t sub_100109284(uint64_t a1)
{
  result = type metadata accessor for TTRRectCorners();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_10010932C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 - 8) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v25 = *a2;
    *v3 = *a2;
    v3 = (v25 + ((v4 + 16) & ~v4));
  }

  else
  {
    v5 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v5;
    v6 = a2[4];
    *(a1 + 32) = v6;
    v7 = *(a3 + 20);
    v8 = (a1 + v7);
    v9 = a2 + v7;
    v11 = *(a2 + v7);
    v10 = *(a2 + v7 + 8);
    *v8 = v11;
    *(v8 + 1) = v10;
    v13 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
    v14 = type metadata accessor for TTRRectCorners();
    v15 = *(*(v14 - 8) + 16);
    v16 = v6;
    v17 = v11;
    v15(&v8[v13], &v9[v13], v14);
    v18 = *(a3 + 24);
    v19 = v3 + v18;
    v20 = a2 + v18;
    v21 = *v20;
    *v19 = *v20;
    *(v19 + 8) = *(v20 + 8);
    *(v19 + 24) = *(v20 + 24);
    v22 = *(v20 + 5);
    *(v19 + 5) = v22;
    v23 = v21;
    v24 = v22;
  }

  return v3;
}

void sub_10010947C(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + *(a2 + 20));

  v5 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v6 = type metadata accessor for TTRRectCorners();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  v7 = a1 + *(a2 + 24);

  v8 = *(v7 + 40);
}

uint64_t sub_100109528(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = a2 + v7;
  v11 = *(a2 + v7);
  v10 = *(a2 + v7 + 8);
  *v8 = v11;
  *(v8 + 1) = v10;
  v12 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v13 = type metadata accessor for TTRRectCorners();
  v14 = *(*(v13 - 8) + 16);
  v15 = v6;
  v16 = v11;
  v14(&v8[v12], v9 + v12, v13);
  v17 = *(a3 + 24);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *v19;
  *v18 = *v19;
  *(v18 + 8) = *(v19 + 8);
  *(v18 + 24) = *(v19 + 24);
  v21 = *(v19 + 40);
  *(v18 + 40) = v21;
  v22 = v20;
  v23 = v21;
  return a1;
}

void *sub_10010962C(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v6 = a2[4];
  v7 = a1[4];
  a1[4] = v6;
  v8 = v6;

  v9 = *(a3 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a2 + v9);
  v13 = *v10;
  *v10 = v12;
  v14 = v12;

  *(v10 + 1) = *(v11 + 1);
  v15 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v16 = type metadata accessor for TTRRectCorners();
  (*(*(v16 - 8) + 24))(&v10[v15], &v11[v15], v16);
  v17 = *(a3 + 24);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *v19;
  v21 = *v18;
  *v18 = *v19;
  v22 = v20;

  *(v18 + 1) = *(v19 + 1);
  *(v18 + 2) = *(v19 + 2);
  *(v18 + 3) = *(v19 + 3);
  *(v18 + 4) = *(v19 + 4);
  v23 = *(v19 + 5);
  v24 = *(v18 + 5);
  *(v18 + 5) = v23;
  v25 = v23;

  return a1;
}

uint64_t sub_100109760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a3 + 20);
  v8 = (a1 + v7);
  v9 = a2 + v7;
  v10 = *(a2 + v7 + 8);
  *v8 = *(a2 + v7);
  *(v8 + 1) = v10;
  v11 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v12 = type metadata accessor for TTRRectCorners();
  (*(*(v12 - 8) + 32))(&v8[v11], v9 + v11, v12);
  v13 = *(a3 + 24);
  v14 = (a1 + v13);
  v15 = (a2 + v13);
  v16 = v15[1];
  *v14 = *v15;
  v14[1] = v16;
  v14[2] = v15[2];
  return a1;
}

uint64_t sub_100109824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v8 = *(a3 + 20);
  v9 = a1 + v8;
  v10 = a2 + v8;
  v11 = *(a1 + v8);
  *(a1 + v8) = *(a2 + v8);

  *(v9 + 8) = *(v10 + 8);
  v12 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v13 = type metadata accessor for TTRRectCorners();
  (*(*(v13 - 8) + 40))(v9 + v12, v10 + v12, v13);
  v14 = *(a3 + 24);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v17 = *(a1 + v14);
  *(a1 + v14) = *v16;

  *(v15 + 8) = *(v16 + 8);
  *(v15 + 24) = *(v16 + 24);
  v18 = *(v15 + 40);
  *(v15 + 40) = *(v16 + 40);

  return a1;
}

uint64_t sub_100109948(uint64_t a1)
{
  result = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_1001099E8(uint64_t a1, uint64_t *a2, int *a3)
{
  v3 = a1;
  v4 = *(*(a3 - 1) + 80);
  if ((v4 & 0x20000) != 0)
  {
    v34 = *a2;
    *v3 = *a2;
    v3 = (v34 + ((v4 + 16) & ~v4));
  }

  else
  {
    v6 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v6;
    v7 = a2[4];
    *(a1 + 32) = v7;
    v37 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
    v9 = *(v37 + 20);
    v10 = v3 + v9;
    v11 = a2 + v9;
    v13 = *(a2 + v9);
    v12 = *(a2 + v9 + 8);
    *v10 = v13;
    *(v10 + 1) = v12;
    v14 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
    v15 = type metadata accessor for TTRRectCorners();
    v36 = *(*(v15 - 8) + 16);
    v16 = v7;
    v17 = v13;
    v36(&v10[v14], &v11[v14], v15);
    v18 = *(v37 + 24);
    v19 = v3 + v18;
    v20 = a2 + v18;
    v21 = *v20;
    *v19 = *v20;
    *(v19 + 24) = *(v20 + 24);
    *(v19 + 8) = *(v20 + 8);
    v22 = *(v20 + 5);
    *(v19 + 5) = v22;
    v23 = a3[5];
    v24 = a3[6];
    v25 = *(a2 + v23);
    *(v3 + v23) = v25;
    v26 = *(a2 + v24);
    *(v3 + v24) = v26;
    v27 = a3[7];
    v28 = *(a2 + v27);
    *(v3 + v27) = v28;
    v29 = v21;
    v30 = v22;
    v31 = v25;
    v32 = v26;
    v33 = v28;
  }

  return v3;
}

void sub_100109B78(uint64_t a1, int *a2)
{
  v4 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v5 = (a1 + *(v4 + 20));

  v6 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v7 = type metadata accessor for TTRRectCorners();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = (a1 + *(v4 + 24));

  v9 = *(a1 + a2[7]);
}

uint64_t sub_100109C5C(uint64_t a1, uint64_t a2, int *a3)
{
  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  v6 = *(a2 + 32);
  *(a1 + 32) = v6;
  v34 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v7 = *(v34 + 20);
  v8 = (a1 + v7);
  v9 = a2 + v7;
  v11 = *(a2 + v7);
  v10 = *(a2 + v7 + 8);
  *v8 = v11;
  *(v8 + 1) = v10;
  v12 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v13 = type metadata accessor for TTRRectCorners();
  v14 = *(*(v13 - 8) + 16);
  v15 = v6;
  v16 = v11;
  v14(&v8[v12], v9 + v12, v13);
  v17 = *(v34 + 24);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *v19;
  *v18 = *v19;
  *(v18 + 24) = *(v19 + 24);
  *(v18 + 8) = *(v19 + 8);
  v21 = *(v19 + 40);
  *(v18 + 40) = v21;
  v22 = a3[5];
  v23 = a3[6];
  v24 = *(a2 + v22);
  *(a1 + v22) = v24;
  v25 = *(a2 + v23);
  *(a1 + v23) = v25;
  v26 = a3[7];
  v27 = *(a2 + v26);
  *(a1 + v26) = v27;
  v28 = v20;
  v29 = v21;
  v30 = v24;
  v31 = v25;
  v32 = v27;
  return a1;
}

void *sub_100109D98(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v6 = a2[4];
  v7 = a1[4];
  a1[4] = v6;
  v8 = v6;

  v9 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v10 = *(v9 + 20);
  v11 = a1 + v10;
  v12 = a2 + v10;
  v13 = *(a2 + v10);
  v14 = *v11;
  *v11 = v13;
  v15 = v13;

  *(v11 + 1) = *(v12 + 1);
  v16 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v17 = type metadata accessor for TTRRectCorners();
  (*(*(v17 - 8) + 24))(&v11[v16], &v12[v16], v17);
  v18 = *(v9 + 24);
  v19 = a1 + v18;
  v20 = (a2 + v18);
  v21 = *(a2 + v18);
  v22 = *v19;
  *v19 = v21;
  v23 = v21;

  *(v19 + 1) = v20[1];
  *(v19 + 2) = v20[2];
  *(v19 + 3) = v20[3];
  *(v19 + 4) = v20[4];
  v24 = v20[5];
  v25 = *(v19 + 5);
  *(v19 + 5) = v24;
  v26 = v24;

  v27 = a3[5];
  v28 = *(a2 + v27);
  v29 = *(a1 + v27);
  *(a1 + v27) = v28;
  v30 = v28;

  v31 = a3[6];
  v32 = *(a2 + v31);
  v33 = *(a1 + v31);
  *(a1 + v31) = v32;
  v34 = v32;

  v35 = a3[7];
  v36 = *(a2 + v35);
  v37 = *(a1 + v35);
  *(a1 + v35) = v36;
  v38 = v36;

  return a1;
}

uint64_t sub_100109F28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v8 = *(v7 + 20);
  v9 = (a1 + v8);
  v10 = a2 + v8;
  v11 = *(a2 + v8 + 8);
  *v9 = *(a2 + v8);
  *(v9 + 1) = v11;
  v12 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v13 = type metadata accessor for TTRRectCorners();
  (*(*(v13 - 8) + 32))(&v9[v12], v10 + v12, v13);
  v14 = *(v7 + 24);
  v15 = (a1 + v14);
  v16 = (a2 + v14);
  v17 = v16[1];
  *v15 = *v16;
  v15[1] = v17;
  v15[2] = v16[2];
  v18 = a3[6];
  *(a1 + a3[5]) = *(a2 + a3[5]);
  *(a1 + v18) = *(a2 + v18);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  return a1;
}

uint64_t sub_10010A020(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  v7 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v8 = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(0);
  v9 = *(v8 + 20);
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a1 + v9);
  *(a1 + v9) = *(a2 + v9);

  *(v10 + 8) = *(v11 + 8);
  v13 = *(type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Background(0) + 24);
  v14 = type metadata accessor for TTRRectCorners();
  (*(*(v14 - 8) + 40))(v10 + v13, v11 + v13, v14);
  v15 = *(v8 + 24);
  v16 = a1 + v15;
  v17 = a2 + v15;
  v18 = *(a1 + v15);
  *(a1 + v15) = *(a2 + v15);

  *(v16 + 8) = *(v17 + 8);
  *(v16 + 24) = *(v17 + 24);
  v19 = *(v16 + 40);
  *(v16 + 40) = *(v17 + 40);

  v20 = a3[5];
  v21 = *(a1 + v20);
  *(a1 + v20) = *(a2 + v20);

  v22 = a3[6];
  v23 = *(a1 + v22);
  *(a1 + v22) = *(a2 + v22);

  v24 = a3[7];
  v25 = *(a1 + v24);
  *(a1 + v24) = *(a2 + v24);

  return a1;
}

uint64_t sub_10010A194(uint64_t a1)
{
  result = type metadata accessor for TTRIBoardColumnDraggingAnimationSource.Cell(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t destroy for TTRIBoardColumnDraggingAnimator.AnimationState.Header(id *a1)
{
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimator.AnimationState.Header(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  v9 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v9;
  v11 = *(a2 + 120);
  v10 = *(a2 + 128);
  *(a1 + 120) = v11;
  *(a1 + 128) = v10;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;

  v17 = v9;
  v18 = v11;

  return a1;
}

void *assignWithCopy for TTRIBoardColumnDraggingAnimator.AnimationState.Header(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  v7 = a2[5];
  v8 = a1[5];
  a1[5] = v7;
  v9 = v7;

  v10 = a2[6];
  v11 = a1[6];
  a1[6] = v10;
  v12 = v10;

  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  v13 = a2[11];
  v14 = a1[11];
  a1[11] = v13;
  v15 = v13;

  v16 = a2[12];
  v17 = a1[12];
  a1[12] = v16;
  v18 = v16;

  a1[13] = a2[13];

  v19 = a2[14];
  v20 = a1[14];
  a1[14] = v19;
  v21 = v19;

  v22 = a2[15];
  v23 = a1[15];
  a1[15] = v22;
  v24 = v22;

  a1[16] = a2[16];

  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnDraggingAnimator.AnimationState.Header(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimator.AnimationState.Header(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  v7 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);

  v8 = *(a1 + 112);
  *(a1 + 104) = *(a2 + 104);

  *(a1 + 120) = *(a2 + 120);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimator.AnimationState.Header(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimator.AnimationState.Header(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRIBoardColumnDraggingAnimationSource(id *a1)
{
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationSource(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  v8 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  v9 = *(a2 + 112);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = v9;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;

  return a1;
}

void *assignWithCopy for TTRIBoardColumnDraggingAnimationSource(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  v7 = a2[5];
  v8 = a1[5];
  a1[5] = v7;
  v9 = v7;

  v10 = a2[6];
  v11 = a1[6];
  a1[6] = v10;
  v12 = v10;

  a1[7] = a2[7];
  a1[8] = a2[8];
  a1[9] = a2[9];
  a1[10] = a2[10];
  v13 = a2[11];
  v14 = a1[11];
  a1[11] = v13;
  v15 = v13;

  v16 = a2[12];
  v17 = a1[12];
  a1[12] = v16;
  v18 = v16;

  a1[13] = a2[13];

  a1[14] = a2[14];

  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnDraggingAnimationSource(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationSource(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;

  v5 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 48);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);

  v7 = *(a1 + 96);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  v5 = v3;
  v6 = v4;
  return a1;
}

uint64_t assignWithCopy for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v7 = *(a2 + 40);
  v8 = *(a1 + 40);
  *(a1 + 40) = v7;
  v9 = v7;

  return a1;
}

__n128 initializeWithTake for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  v5 = *(a1 + 40);
  *(a1 + 40) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.Snapshot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for TTRIBoardColumnDraggingAnimationSource.FrameInView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  v5 = v4;
  return a1;
}

void *assignWithCopy for TTRIBoardColumnDraggingAnimationSource.FrameInView(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  v3 = a2[4];
  v4 = a1[4];
  a1[4] = v3;
  v5 = v3;

  return a1;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationSource.FrameInView(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.FrameInView(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRIBoardColumnDraggingAnimationSource.FrameInView(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_10010ACF0(uint64_t *a1, void **a2, void *a3, id a4, uint64_t a5, uint64_t a6)
{
  v108 = a6;
  v103 = a5;
  v106 = a4;
  v110 = a3;
  v114 = a1;
  v7 = type metadata accessor for TTRRemindersListLayout();
  v117 = *(v7 - 8);
  v118 = v7;
  __chkstk_darwin(v7);
  v99 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v109 = &v98 - v10;
  __chkstk_darwin(v11);
  v98 = &v98 - v12;
  __chkstk_darwin(v13);
  v115 = &v98 - v14;
  v15 = type metadata accessor for TTRIRemindersCommonPresenterConfiguration(0);
  __chkstk_darwin(v15 - 8);
  v105 = (&v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v104 = &v98 - v18;
  v107 = type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder(0) - 8;
  __chkstk_darwin(v107);
  v116 = &v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TTRPublicTemplateFallbackProperties();
  __chkstk_darwin(v20 - 8);
  v102 = &v98 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for TTRRemindersListDefaultListType();
  v22 = *(v101 - 8);
  __chkstk_darwin(v101);
  v24 = &v98 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for TTRIRemindersListAssembly.CommonParameters(0);
  __chkstk_darwin(v25 - 8);
  v100 = (&v98 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes();
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = &v98 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v98 - v32;
  sub_100058000(&qword_10076C210, qword_100640CA0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_10062D400;
  static REMSuggestedAttributesElector.ExcludedAttributes.lists.getter();
  v125[0] = v34;
  sub_10010BDC4(&qword_100769628, &type metadata accessor for REMSuggestedAttributesElector.ExcludedAttributes, &protocol conformance descriptor for REMSuggestedAttributesElector.ExcludedAttributes);
  sub_100058000(&qword_10076C218, &unk_1006302E0);
  sub_10010BA44();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v35 = v100;
  sub_10010BD5C(a2, v100, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v111 = v33;
  v112 = v28;
  v36 = *(v28 + 16);
  v113 = v27;
  v36(v30, v33, v27);
  (*(v22 + 104))(v24, enum case for TTRRemindersListDefaultListType.any(_:), v101);
  v37 = v35;
  sub_10007786C(v35, v30, v24, v125);
  v38 = *a2;

  v39 = v38;
  TTRPublicTemplateFallbackProperties.init(listName:listColor:)();
  type metadata accessor for TTRShowPublicTemplateDataModelSource();
  swift_allocObject();
  v40 = v110;
  v41 = TTRShowPublicTemplateDataModelSource.init(store:publicTemplateObjectID:fallbackProperties:)();
  v42 = v125[0];
  type metadata accessor for TTRShowPublicTemplateViewModelSource(0);
  v43 = swift_allocObject();

  v106 = v42;
  v44 = sub_10010BAA8(0, v41, v106, v43);
  sub_10010BD5C(a2, v37, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  sub_10010BCAC(v125, v122);
  v45 = sub_10010BDC4(&qword_10076C228, type metadata accessor for TTRShowPublicTemplateViewModelSource, &unk_100646FD0);
  v46 = v116;
  sub_10010BD5C(v37, v116, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v47 = v107;
  sub_10010BCAC(v122, v46 + *(v107 + 28));
  v48 = (v46 + *(v47 + 32));
  *v48 = v44;
  v48[1] = v45;
  v49 = v122[0];
  sub_100058000(&qword_10076C230, &unk_1006339A0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_10062D3F0;
  sub_10000794C(&v124, v121, &qword_100769608, &unk_1006302F0);
  v51 = *(v121[5] + 8);
  *(v50 + 32) = v121[4];
  *(v50 + 40) = v51;
  sub_10000794C(&v123, v119, &qword_100769600, &qword_10062E0A0);
  swift_retain_n();
  v52 = v49;
  swift_unknownObjectRelease();
  *(v50 + 48) = v120;
  sub_100004758(v119);
  sub_100004758(v121);
  type metadata accessor for TTRReminderListEditingPresenter(0);
  v53 = swift_allocObject();
  v54 = sub_1003A8DE0(v52, v44, v50, v53);

  sub_10010BD08(v122);
  sub_10010BE0C(v37, type metadata accessor for TTRIRemindersListAssembly.CommonParameters);
  v55 = *(v47 + 36);
  v103 = v54;
  *(v46 + v55) = v54;
  v56 = v104;
  sub_100078BBC(v104);
  v107 = type metadata accessor for TTRIShowPublicTemplatePresenter(0);
  v57 = swift_allocObject();
  v58 = (v57 + OBJC_IVAR____TtC9Reminders31TTRIShowPublicTemplatePresenter_dataModelSource);
  *v58 = v41;
  v58[1] = &protocol witness table for TTRShowPublicTemplateDataModelSource;
  v59 = v105;
  sub_10010BD5C(v56, v105, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);

  v60 = v108;
  swift_unknownObjectRetain();
  v61 = sub_1003A56E4(v59, v60, v57);
  sub_10010BE0C(v56, type metadata accessor for TTRIRemindersCommonPresenterConfiguration);
  v62 = *(v61 + 144);
  ObjectType = swift_getObjectType();
  v64 = *(v62 + 112);

  v65 = v64(ObjectType, v62);
  v110 = v41;
  if (v65)
  {
    swift_getObjectType();
    v66 = v98;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    v67 = v115;
    (*(v117 + 32))(v115, v66, v118);
  }

  else
  {
    v67 = v115;
    (*(v117 + 104))(v115, enum case for TTRRemindersListLayout.list(_:), v118);
  }

  v68 = sub_1003A4A1C(v67, v61);
  v105 = v69;
  v71 = v70;
  v73 = v72;
  (*(v117 + 8))(v67, v118);
  v108 = swift_getObjectType();
  *(v61 + 24) = *(v73 + 8);
  v115 = v71;
  swift_unknownObjectWeakAssign();
  v74 = *(v61 + 144);
  v75 = swift_getObjectType();
  v76 = *(v74 + 112);

  if (v76(v75, v74))
  {
    swift_getObjectType();
    v77 = v99;
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();

    v78 = v109;
    (*(v117 + 32))(v109, v77, v118);
  }

  else
  {

    v78 = v109;
    (*(v117 + 104))(v109, enum case for TTRRemindersListLayout.list(_:), v118);
  }

  v79 = static TTRLocalizableStrings.Templates.addListFromPublicTemplateButton.getter();
  v81 = v80;
  v82 = objc_allocWithZone(type metadata accessor for TTRIShowRemindersViewController(0));
  v83 = v68;
  v84 = sub_1003A8E14(v61, v83, v105, v78, v79, v81, 1, v82);

  v85 = *(v73 + 32);
  v86 = v84;
  v85(v84, &off_100723D78, v108, v73);
  sub_10010BDC4(&qword_10076C238, type metadata accessor for TTRIShowPublicTemplatePresenter, &unk_100635C58);

  TTRRemindersListInteractor.delegate.setter();

  TTRRemindersListInteractor.optimisticUpdatesDelegate.setter();
  swift_unknownObjectWeakAssign();
  sub_10010BDC4(&qword_10076C240, type metadata accessor for TTRShowPublicTemplateViewModelSource, &unk_10063C338);

  dispatch thunk of TTRShowPublicTemplateDataModelSource.delegate.setter();

  sub_10056FEB0(v87, &off_10071A9B0);

  *(v103 + 24) = &off_10071AB30;
  swift_unknownObjectWeakAssign();
  sub_10000794C(&v126, v122, &qword_100769600, &qword_10062E0A0);
  v88 = v122[4];
  swift_unknownObjectRelease();
  *(v88 + 40) = &off_10071A918;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  sub_100004758(v122);
  sub_10000794C(&v127, v122, &qword_100769608, &unk_1006302F0);
  swift_getObjectType();
  sub_10010BDC4(&qword_10076C248, type metadata accessor for TTRIShowPublicTemplatePresenter, &unk_100635930);

  dispatch thunk of TTRIQuickBarInputAccessoryModuleInterface.moduleDelegate.setter();
  swift_unknownObjectRelease();
  sub_100004758(v122);
  dispatch thunk of TTRShowPublicTemplateDataModelSource.start()();
  v89 = objc_allocWithZone(UINavigationController);
  swift_retain_n();
  v90 = [v89 initWithRootViewController:v86];
  v91 = [v90 navigationBar];
  [v91 setPrefersLargeTitles:1];

  v92 = [v90 presentationController];
  if (v92)
  {
    v93 = v92;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v94 = *(v61 + 24);
      v95 = swift_getObjectType();
      (*(v94 + 104))(v93, v95, v94);
      swift_unknownObjectRelease();
    }

    *(v61 + OBJC_IVAR____TtC9Reminders28TTRIRemindersCommonPresenter_hasPreparedForModalPresentation) = 1;
  }

  v96 = v114;
  v114[3] = v107;
  v96[4] = &off_10072E520;

  swift_unknownObjectRelease();
  *v96 = v61;
  (*(v112 + 8))(v111, v113);
  sub_10010BE0C(v116, type metadata accessor for TTRIRemindersListAssembly.PresenterConfigurationBuilder);
  sub_10010BD08(v125);
  return v90;
}

unint64_t sub_10010BA44()
{
  result = qword_10076C220;
  if (!qword_10076C220)
  {
    sub_10005D20C(&qword_10076C218, &unk_1006302E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076C220);
  }

  return result;
}

uint64_t sub_10010BAA8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  __chkstk_darwin(v8 - 8);
  v10 = &v22 - v9;
  v11 = type metadata accessor for TTRListType.SortingCapability();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_listRepresentation) = 0;
  v15 = a4 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_remindersCount;
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 16) = 1;
  *(a4 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_isPreview) = a1;
  v16 = (a4 + OBJC_IVAR____TtC9Reminders36TTRShowPublicTemplateViewModelSource_publicTemplateDataModelSource);
  *v16 = a2;
  v16[1] = &protocol witness table for TTRShowPublicTemplateDataModelSource;
  v17 = enum case for REMRemindersListDataView.SortingStyle.default(_:);
  v18 = type metadata accessor for REMRemindersListDataView.SortingStyle();
  (*(*(v18 - 8) + 104))(v14, v17, v18);
  (*(v12 + 104))(v14, enum case for TTRListType.SortingCapability.notSupported(_:), v11);

  v20 = sub_1003A649C(v19, a3, v14, a4);

  sub_1003758E8(v10);
  sub_10056F540(v10);

  sub_10010BE6C(v10);
  return v20;
}

uint64_t sub_10010BD5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010BDC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10010BE0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10010BE6C(uint64_t a1)
{
  v2 = sub_100058000(&unk_10078A380, &qword_10062DE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_10010BED4(uint64_t a1, char a2)
{
  swift_getErrorValue();
  if (Error.isREMError(withErrorCode:)())
  {
    static TTRLocalizableStrings.Templates.publicTemplateNotSupportedAlertTitle.getter();
    if (a2)
    {
      v3 = 0xD000000000000030;
      v4 = 0x8000000100671D80;
      v5 = 0xD00000000000009ELL;
      v6 = 0x8000000100671DC0;
      v7 = 0xD00000000000003ALL;
      v8 = 0x8000000100671E60;
    }

    else
    {
      v4 = 0x8000000100671C70;
      v5 = 0xD00000000000009DLL;
      v6 = 0x8000000100671CA0;
      v7 = 0xD00000000000003CLL;
      v8 = 0x8000000100671D40;
      v3 = 0xD00000000000002DLL;
    }

    TTRLocalizedString(_:value:comment:)(*&v3, *&v5, *&v7);
    v9 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    swift_getErrorValue();
    if (Error.isREMError(withErrorCode:)())
    {
      static TTRLocalizableStrings.Templates.publicTemplateCannotOpenDueToNetworkFailureAlertTitle.getter();
      static TTRLocalizableStrings.Templates.publicTemplateCannotOpenDueToNetworkFailureAlertMessage.getter();
    }

    else
    {
      static TTRLocalizableStrings.Templates.publicTemplateNotAvailableAlertTitle.getter();
      static TTRLocalizableStrings.Templates.publicTemplateNotAvailableAlertMessage.getter();
    }

    v9 = String._bridgeToObjectiveC()();

    v10 = String._bridgeToObjectiveC()();
  }

  v11 = [objc_opt_self() alertControllerWithTitle:v9 message:v10 preferredStyle:1];

  return v11;
}

id sub_10010C0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel] = 0;
  *&v3[OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView] = 0;
  if (a3)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  v9.receiver = v3;
  v9.super_class = type metadata accessor for TTRIHashtagSuggestionTableViewCell();
  v6 = objc_msgSendSuper2(&v9, "initWithStyle:reuseIdentifier:", a1, v5);

  v7 = v6;
  sub_10010C4CC();

  return v7;
}

id sub_10010C220()
{
  v1 = OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel);
  }

  else
  {
    v4 = v0;
    v5 = [objc_allocWithZone(UILabel) init];
    sub_100003540(0, &qword_100771DF0, UIFont_ptr);
    v6 = static UIFont.roundedSystemFont.getter();
    [v5 setFont:v6];

    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_10010C2D8()
{
  v1 = OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView);
  }

  else
  {
    v4 = sub_10010C338();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_10010C338()
{
  v0 = [objc_allocWithZone(UIImageView) init];
  [v0 setAdjustsImageSizeForAccessibilityContentSizeCategory:0];
  [v0 setContentMode:4];
  v1 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline];
  isa = UIFont.withRoundedDesign()().super.isa;

  v3 = UIFont.withBoldTrait()().super.isa;
  v4 = [objc_opt_self() configurationWithFont:v3 scale:1];
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5 withConfiguration:v4];

  [v0 setImage:v6];
  v7 = [objc_opt_self() secondaryLabelColor];
  [v0 setTintColor:v7];

  return v0;
}

void sub_10010C4CC()
{
  v1 = sub_10010C2D8();
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];

  v2 = sub_10010C220();
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v3 = OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___leadingImageView]];
  v4 = OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel;
  [v0 addSubview:*&v0[OBJC_IVAR____TtC9Reminders34TTRIHashtagSuggestionTableViewCell____lazy_storage___titleLabel]];
  v5 = objc_opt_self();
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100630300;
  v7 = [*&v0[v3] heightAnchor];
  v8 = [v7 constraintEqualToConstant:24.0];

  *(v6 + 32) = v8;
  v9 = [*&v0[v3] widthAnchor];
  v10 = [v9 constraintEqualToConstant:24.0];

  *(v6 + 40) = v10;
  v11 = [*&v0[v3] leadingAnchor];
  v12 = [v0 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:12.0];

  *(v6 + 48) = v13;
  v14 = [*&v0[v4] leadingAnchor];
  v15 = [*&v0[v3] trailingAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:4.0];

  *(v6 + 56) = v16;
  v17 = [v0 trailingAnchor];
  v18 = [*&v0[v4] trailingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:12.0];

  *(v6 + 64) = v19;
  v20 = [*&v0[v4] topAnchor];
  v21 = [v0 topAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v6 + 72) = v22;
  v23 = [v0 bottomAnchor];
  v24 = [*&v0[v4] bottomAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v6 + 80) = v25;
  v26 = [*&v0[v3] centerYAnchor];
  v27 = [*&v0[v4] centerYAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v6 + 88) = v28;
  sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];
}

id sub_10010C8C8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TTRIHashtagSuggestionTableViewCell();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_10010C96C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1001137D4, v4);

  return result;
}

void sub_10010CA00(uint64_t a1, uint64_t a2)
{
  sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

id sub_10010CA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v8 = a2;
    sub_100007DD8(&v8, v10);
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  memset(v10, 0, sizeof(v10));
  if (a3)
  {
LABEL_3:
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_1000079B4(v10, &qword_10076AE40, &qword_10062EE50);

  return v6;
}

uint64_t sub_10010CB70(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v44 = type metadata accessor for TTRSharedWithYouHighlight();
  v3 = *(v44 - 8);
  __chkstk_darwin(v44);
  v40 = &v36[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_100058000(&unk_10076C558, &qword_1006304C8);
  __chkstk_darwin(v5);
  v7 = &v36[-v6];
  v8 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem(0);
  __chkstk_darwin(v8);
  v43 = &v36[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v42 = &v36[-v11];
  __chkstk_darwin(v12);
  v15 = &v36[-v14];
  v16 = *(a2 + 16);
  if (!v16)
  {
    return 0;
  }

  v17 = a2 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v46 = *(v13 + 72);
  v41 = (v3 + 8);
  v39 = (v3 + 32);
  v18 = v45;
  while (1)
  {
    sub_1001137DC(v17, v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    v19 = &v7[*(v5 + 48)];
    sub_1001137DC(v15, v7, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    sub_1001137DC(v18, v19, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            goto LABEL_42;
          }
        }

        else if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_42;
        }
      }

      else if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          goto LABEL_42;
        }
      }

      else if (EnumCaseMultiPayload == 7)
      {
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          goto LABEL_42;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          goto LABEL_42;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_42;
      }

      goto LABEL_31;
    }

    if (!EnumCaseMultiPayload)
    {
      break;
    }

    v24 = v43;
    sub_1001137DC(v7, v43, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      (*v41)(v24, v44);
      v18 = v45;
      goto LABEL_31;
    }

    v25 = v40;
    v26 = v19;
    v27 = v44;
    (*v39)(v40, v26, v44);
    v37 = static TTRSharedWithYouHighlight.== infix(_:_:)();
    v38 = v5;
    v28 = v24;
    v29 = *v41;
    (*v41)(v25, v27);
    v30 = v28;
    v5 = v38;
    v29(v30, v27);
    sub_100113710(v7, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    v18 = v45;
    if (v37)
    {
      goto LABEL_43;
    }

LABEL_32:
    sub_100113710(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    v17 += v46;
    if (!--v16)
    {
      return 0;
    }
  }

  v21 = v42;
  sub_1001137DC(v7, v42, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  v22 = *v21;
  v23 = v21[1];
  if (swift_getEnumCaseMultiPayload())
  {

    v18 = v45;
LABEL_31:
    sub_1000079B4(v7, &unk_10076C558, &qword_1006304C8);
    goto LABEL_32;
  }

  v31 = *v19;
  v32 = v19[1];
  if (v22 != v31 || v23 != v32)
  {
    v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v18 = v45;
    if (v34)
    {
      goto LABEL_42;
    }

    sub_100113710(v7, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    goto LABEL_32;
  }

LABEL_42:
  sub_100113710(v7, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
LABEL_43:
  sub_100113710(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  return 1;
}

BOOL sub_10010D1A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    sub_100113B0C(a4, a5, a6);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_10010D2A8()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076C290);
  v1 = sub_100003E30(v0, qword_10076C290);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

char *sub_10010D370(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter];
    v4 = result;
    swift_unknownObjectRetain();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v3 + 40);
      ObjectType = swift_getObjectType();
      (*(v5 + 72))(v3, &off_100713C08, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

objc_class *sub_10010D42C(uint64_t *a1, uint64_t a2, UIBarButtonSystemItem a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = v3;
    v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v15.value.super.super.isa = sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v14.value.super.super.isa = v9;
    v14.is_nil = 0;
    v10.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(a3, v14, v15).super.super.isa;
    v11 = *(v8 + v4);
    *(v8 + v4) = v10;
    v6 = v10.super.super.isa;

    v5 = 0;
  }

  v12 = v5;
  return v6;
}

objc_class *sub_10010D548()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___modalPresentationCommitButtonWithCustomTitle;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___modalPresentationCommitButtonWithCustomTitle);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___modalPresentationCommitButtonWithCustomTitle);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = v4;
    v5 = v0;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v7 = v6;
    v8.value._countAndFlagsBits = 0;
    v8.value._object = 0xE000000000000000;
    v14.value.super.isa = 0;
    v14.is_nil = v6;
    v15.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v8, v14, v15, v16).super.super.isa;
    [(objc_class *)isa setStyle:2, 0, 0, 0, sub_100113BB8, v13];

    v10 = *(v0 + v1);
    *(v5 + v1) = isa;
    v3 = isa;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

char *sub_10010D694(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter];
    v4 = result;
    swift_unknownObjectRetain();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v3 + 40);
      ObjectType = swift_getObjectType();
      (*(v5 + 48))(v3, &off_100713C08, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_10010D750(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter];
    v4 = result;
    swift_unknownObjectRetain();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v3 + 40);
      ObjectType = swift_getObjectType();
      (*(v5 + 56))(v3, &off_100713C08, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

objc_class *sub_10010D80C()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___undoBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___undoBarButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___undoBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v0;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    static REMFeatureFlags.isSolariumEnabled.getter();
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() _systemImageNamed:{v7, 0, 0, 0, sub_10011387C, v4}];

    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v9._countAndFlagsBits = 0xD000000000000028;
    v9._object = 0x8000000100672550;
    v10._countAndFlagsBits = 1868852821;
    v10._object = 0xE400000000000000;
    v11 = TTRLocalizedString(_:comment:)(v10, v9);
    v16.value.super.isa = v8;
    v16.is_nil = v6;
    v17.value.super.super.isa = 0;
    v12.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v11, v16, v17, v18).super.super.isa;
    v13 = *(v5 + v1);
    *(v5 + v1) = v12;
    v3 = v12.super.super.isa;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

objc_class *sub_10010D9C0()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___redoBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___redoBarButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___redoBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = v0;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    static REMFeatureFlags.isSolariumEnabled.getter();
    v7 = String._bridgeToObjectiveC()();
    v8 = [objc_opt_self() _systemImageNamed:{v7, 0, 0, 0, sub_10011384C, v4}];

    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v9._countAndFlagsBits = 0xD000000000000028;
    v9._object = 0x8000000100672550;
    v10._countAndFlagsBits = 1868850514;
    v10._object = 0xE400000000000000;
    v11 = TTRLocalizedString(_:comment:)(v10, v9);
    v16.value.super.isa = v8;
    v16.is_nil = v6;
    v17.value.super.super.isa = 0;
    v12.super.super.isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v11, v16, v17, v18).super.super.isa;
    v13 = *(v5 + v1);
    *(v5 + v1) = v12;
    v3 = v12.super.super.isa;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

objc_class *sub_10010DB74()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___calDAVSharedBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___calDAVSharedBarButton);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___calDAVSharedBarButton + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___calDAVSharedBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = v5;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v7._object = 0x8000000100672600;
    v8._countAndFlagsBits = 0xD000000000000028;
    v8._object = 0x8000000100672550;
    v7._countAndFlagsBits = 0xD000000000000012;
    v9 = TTRLocalizedString(_:comment:)(v7, v8);
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() _systemImageNamed:{v10, 0, 0, 0, sub_1001138E0, v20}];

    v12 = v6;
    v21.value.super.isa = v11;
    v21.is_nil = v6;
    v22.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v9, v21, v22, v23).super.super.isa;
    sub_100003540(0, &qword_10076C548, UIBarButtonItemGroup_ptr);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10062D420;
    *(v14 + 32) = isa;
    v15 = isa;
    v16 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v17 = *v1;
    v18 = *(v1 + 8);
    *v1 = v15;
    *(v1 + 8) = v16;
    v4 = v15;
    v16;
    sub_100037C04(v17, v18);
  }

  sub_100037C44(v2, v3);
  return v4;
}

void sub_10010DDDC(void *a1, uint64_t a2)
{
  v3 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([a1 presentationSourceItem])
    {
      swift_unknownObjectRetain();
      static TTRIPopoverAnchor.sourceItem(_:permittedArrowDirections:)();
      swift_unknownObjectRelease_n();
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v9 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v9 - 8) + 56))(v5, v8, 1, v9);
    v10 = *&v7[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 40);
      ObjectType = swift_getObjectType();
      (*(v11 + 64))(v10, &off_100713C08, 1, v5, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    sub_1000079B4(v5, &unk_10076FCD0, &unk_1006304D0);
  }
}

objc_class *sub_10010DFCC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4 + *a1;
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*v5)
  {
    v8 = *v5;
  }

  else
  {
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v14._countAndFlagsBits = 0xD000000000000028;
    v14._object = 0x8000000100672550;
    v15._countAndFlagsBits = a3;
    v15._object = a4;
    v16 = TTRLocalizedString(_:comment:)(v15, v14);
    v17 = String._bridgeToObjectiveC()();
    v18 = [objc_opt_self() _systemImageNamed:{v17, 0, 0, 0, a2, v12}];

    v19 = v13;
    v27.value.super.isa = v18;
    v27.is_nil = v13;
    v28.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v16, v27, v28, v29).super.super.isa;
    sub_100003540(0, &qword_10076C548, UIBarButtonItemGroup_ptr);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_10062D420;
    *(v21 + 32) = isa;
    v22 = isa;
    v23 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v24 = *v5;
    v25 = *(v5 + 8);
    *v5 = v22;
    *(v5 + 8) = v23;
    v8 = v22;
    v23;
    sub_100037C04(v24, v25);
  }

  sub_100037C44(v6, v7);
  return v8;
}

char *sub_10010E220(uint64_t a1, uint64_t a2)
{
  v2 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11 - v3;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *&result[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter];
    v7 = result;
    swift_unknownObjectRetain();

    v8 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v6 + 40);
      ObjectType = swift_getObjectType();
      (*(v9 + 64))(v6, &off_100713C08, 1, v4, ObjectType, v9);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return sub_1000079B4(v4, &unk_10076FCD0, &unk_1006304D0);
  }

  return result;
}

objc_class *sub_10010E390()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___autoCategorizeBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___autoCategorizeBarButton);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___autoCategorizeBarButton + 8);
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = sub_10010E420();
    v7 = v6;
    v8 = *v1;
    v9 = *(v1 + 8);
    *v1 = v5;
    *(v1 + 8) = v6;
    v4 = v5;
    v7;
    sub_100037C04(v8, v9);
  }

  sub_100037C44(v2, v3);
  return v4;
}

objc_class *sub_10010E420()
{
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  v0 = static TTRLocalizableStrings.RemindersList.autoCategorizationTitle.getter();
  v2 = v1;
  v3 = static TTRCommonAsset.Image.autoCategorizationIcon.getter();
  v10.value.super.super.isa = sub_10007E7B4();
  v4.value._countAndFlagsBits = v0;
  v4.value._object = v2;
  v9.value.super.isa = v3;
  v9.is_nil = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v4, v9, v10, v11).super.super.isa;
  sub_100003540(0, &qword_10076C548, UIBarButtonItemGroup_ptr);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10062D420;
  *(v6 + 32) = isa;
  v7 = isa;
  static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

  return v7;
}

objc_class *sub_10010E528()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___actionMenuBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___actionMenuBarButton);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___actionMenuBarButton + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___actionMenuBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v5._object = 0x8000000100672670;
    v6._countAndFlagsBits = 0xD00000000000005ALL;
    v6._object = 0x80000001006726A0;
    v5._countAndFlagsBits = 0xD000000000000025;
    v7._countAndFlagsBits = 1701998413;
    v7._object = 0xE400000000000000;
    v8 = TTRLocalizedString(_:value:comment:)(v5, v7, v6);
    v9 = static TTRCommonAsset.Image.actionMenuIcon.getter();
    sub_100003540(0, &unk_10076B890, UIMenu_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v10 = static UIMenu.ttr_uncached(options:_:)();

    v19.value.super.isa = v9;
    v19.is_nil = 0;
    v20.value.super.super.isa = v10;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v8, v19, v20, v21).super.super.isa;
    swift_allocObject();
    swift_unknownObjectWeakInit();

    v12 = static UIMenu.ttr_uncached(options:_:)();

    [(objc_class *)isa setMenuRepresentation:v12];

    sub_100003540(0, &qword_10076C548, UIBarButtonItemGroup_ptr);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_10062D420;
    *(v13 + 32) = isa;
    v14 = isa;
    v15 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v16 = *v1;
    v17 = *(v1 + 8);
    *v1 = v14;
    *(v1 + 8) = v15;
    v4 = v14;
    v15;
    sub_100037C04(v16, v17);
  }

  sub_100037C44(v2, v3);
  return v4;
}

uint64_t sub_10010E7BC(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v2 = *(Strong + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter);
  v3 = Strong;
  swift_unknownObjectRetain();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v2 + 40);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 16))(v2, &off_100713C08, ObjectType, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0;
  }

  swift_unknownObjectRelease();
  return v6;
}

objc_class *sub_10010E890()
{
  v1 = v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___templatesBarButton;
  v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___templatesBarButton);
  v3 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___templatesBarButton + 8);
  if (v2)
  {
    v4 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___templatesBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = v5;
    v6 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v7._countAndFlagsBits = 0x6574616C706D6554;
    v8._countAndFlagsBits = 0xD000000000000028;
    v8._object = 0x8000000100672550;
    v7._object = 0xE900000000000073;
    v9 = TTRLocalizedString(_:comment:)(v7, v8);
    v10 = String._bridgeToObjectiveC()();
    v11 = [objc_opt_self() _systemImageNamed:{v10, 0, 0, 0, sub_1001138D8, v20}];

    v12 = v6;
    v21.value.super.isa = v11;
    v21.is_nil = v6;
    v22.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v9, v21, v22, v23).super.super.isa;
    sub_100003540(0, &qword_10076C548, UIBarButtonItemGroup_ptr);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10062D420;
    *(v14 + 32) = isa;
    v15 = isa;
    v16 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

    v17 = *v1;
    v18 = *(v1 + 8);
    *v1 = v15;
    *(v1 + 8) = v16;
    v4 = v15;
    v16;
    sub_100037C04(v17, v18);
  }

  sub_100037C44(v2, v3);
  return v4;
}

char *sub_10010EAFC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter];
    v4 = result;
    swift_unknownObjectRetain();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v3 + 40);
      ObjectType = swift_getObjectType();
      (*(v5 + 80))(v3, &off_100713C08, ObjectType, v5);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10010EBB8(uint64_t a1)
{
  v1._countAndFlagsBits = 0x2065754420746553;
  v1._object = 0xEC00000065746144;
  v2._countAndFlagsBits = 0xD000000000000022;
  v2._object = 0x8000000100672730;
  v3.value = TTRLocalizedString(_:comment:)(v1, v2);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:v4];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CenterBarButtonItemGroupWithMenuRepresentation();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  swift_bridgeObjectRetain_n();

  children = v5;
  v29.value.super.isa = v5;
  v29.is_nil = 0;
  v31.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v3, v29, v31, v34).super.super.isa;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1001139AC;
  *(v9 + 24) = v6;
  v27 = sub_1001139DC;
  v28 = v9;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10010CA7C;
  v26 = &unk_100716078;
  v10 = _Block_copy(&aBlock);

  [(objc_class *)isa _setSecondaryActionsProvider:v10];
  _Block_release(v10);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1001139AC;
  *(v12 + 24) = v6;
  v27 = sub_100113A04;
  v28 = v12;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10010C96C;
  v26 = &unk_1007160C8;
  v13 = _Block_copy(&aBlock);

  v14 = [v11 elementWithUncachedProvider:v13];
  _Block_release(v13);
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v14;
  v16 = children;
  v17 = v14;
  v32.value.super.isa = v5;
  v32.is_nil = 0;
  v18 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3.value, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  [(objc_class *)isa setMenuRepresentation:v18];

  *(v7 + 24) = isa;
  v19 = v16;
  v30.value.super.isa = v5;
  v30.is_nil = 0;
  v33.value.super.super.isa = 0;
  v20 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v3, v30, v33, v35).super.super.isa;
  [(objc_class *)v20 setEnabled:0];

  *(v7 + 32) = v20;
  return v7;
}

uint64_t sub_10010EFB4(uint64_t a1)
{
  v1._countAndFlagsBits = 0x61636F4C20746553;
  v1._object = 0xEC0000006E6F6974;
  v2._object = 0x8000000100672730;
  v2._countAndFlagsBits = 0xD000000000000022;
  v3.value = TTRLocalizedString(_:comment:)(v1, v2);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:v4];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CenterBarButtonItemGroupWithMenuRepresentation();
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 16) = 1;
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  swift_bridgeObjectRetain_n();

  children = v5;
  v29.value.super.isa = v5;
  v29.is_nil = 0;
  v31.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v3, v29, v31, v34).super.super.isa;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100113A0C;
  *(v9 + 24) = v6;
  v27 = sub_100113B7C;
  v28 = v9;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10010CA7C;
  v26 = &unk_100716118;
  v10 = _Block_copy(&aBlock);

  [(objc_class *)isa _setSecondaryActionsProvider:v10];
  _Block_release(v10);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100113A0C;
  *(v12 + 24) = v6;
  v27 = sub_100113B80;
  v28 = v12;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10010C96C;
  v26 = &unk_100716168;
  v13 = _Block_copy(&aBlock);

  v14 = [v11 elementWithUncachedProvider:v13];
  _Block_release(v13);
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v14;
  v16 = children;
  v17 = v14;
  v32.value.super.isa = v5;
  v32.is_nil = 0;
  v18 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3.value, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  [(objc_class *)isa setMenuRepresentation:v18];

  *(v7 + 24) = isa;
  v19 = v16;
  v30.value.super.isa = v5;
  v30.is_nil = 0;
  v33.value.super.super.isa = 0;
  v20 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v3, v30, v33, v35).super.super.isa;
  [(objc_class *)v20 setEnabled:0];

  *(v7 + 32) = v20;
  return v7;
}

uint64_t sub_10010F3AC()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___flagBarButton;
  if (*(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___flagBarButton))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___flagBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = v0;
    v4 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v5.value._countAndFlagsBits = 0;
    v5.value._object = 0xE000000000000000;
    v8.value.super.isa = 0;
    v8.is_nil = v4;
    v9.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v5, v8, v9, v10).super.super.isa;
    type metadata accessor for CenterBarButtonItemGroup();
    v2 = swift_allocObject();
    *(v2 + 16) = 2;
    *(v2 + 24) = isa;
    *(v2 + 32) = 0;
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_10010F4F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_unknownObjectRetain();

    a3();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10010F574(uint64_t a1)
{
  v1._countAndFlagsBits = 0x67616D4920646441;
  v2._object = 0x8000000100672730;
  v1._object = 0xE900000000000065;
  v2._countAndFlagsBits = 0xD000000000000022;
  v3.value = TTRLocalizedString(_:comment:)(v1, v2);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:v4];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CenterBarButtonItemGroupWithMenuRepresentation();
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 16) = 3;
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  swift_bridgeObjectRetain_n();

  children = v5;
  v29.value.super.isa = v5;
  v29.is_nil = 0;
  v31.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v3, v29, v31, v34).super.super.isa;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100113A6C;
  *(v9 + 24) = v6;
  v27 = sub_100113B7C;
  v28 = v9;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10010CA7C;
  v26 = &unk_1007161B8;
  v10 = _Block_copy(&aBlock);

  [(objc_class *)isa _setSecondaryActionsProvider:v10];
  _Block_release(v10);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100113A6C;
  *(v12 + 24) = v6;
  v27 = sub_100113B80;
  v28 = v12;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10010C96C;
  v26 = &unk_100716208;
  v13 = _Block_copy(&aBlock);

  v14 = [v11 elementWithUncachedProvider:v13];
  _Block_release(v13);
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v14;
  v16 = children;
  v17 = v14;
  v32.value.super.isa = v5;
  v32.is_nil = 0;
  v18 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3.value, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  [(objc_class *)isa setMenuRepresentation:v18];

  *(v7 + 24) = isa;
  v19 = v16;
  v30.value.super.isa = v5;
  v30.is_nil = 0;
  v33.value.super.super.isa = 0;
  v20 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v3, v30, v33, v35).super.super.isa;
  [(objc_class *)v20 setEnabled:0];

  *(v7 + 32) = v20;
  return v7;
}

uint64_t sub_10010F964(uint64_t a1)
{
  v1._countAndFlagsBits = 0x67615420646441;
  v2._object = 0x8000000100672730;
  v1._object = 0xE700000000000000;
  v2._countAndFlagsBits = 0xD000000000000022;
  v3.value = TTRLocalizedString(_:comment:)(v1, v2);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:v4];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CenterBarButtonItemGroupWithMenuRepresentation();
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 16) = 4;
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  swift_bridgeObjectRetain_n();

  children = v5;
  v29.value.super.isa = v5;
  v29.is_nil = 0;
  v31.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v3, v29, v31, v34).super.super.isa;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100113A9C;
  *(v9 + 24) = v6;
  v27 = sub_100113B7C;
  v28 = v9;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10010CA7C;
  v26 = &unk_100716258;
  v10 = _Block_copy(&aBlock);

  [(objc_class *)isa _setSecondaryActionsProvider:v10];
  _Block_release(v10);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100113A9C;
  *(v12 + 24) = v6;
  v27 = sub_100113B80;
  v28 = v12;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10010C96C;
  v26 = &unk_1007162A8;
  v13 = _Block_copy(&aBlock);

  v14 = [v11 elementWithUncachedProvider:v13];
  _Block_release(v13);
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v14;
  v16 = children;
  v17 = v14;
  v32.value.super.isa = v5;
  v32.is_nil = 0;
  v18 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3.value, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  [(objc_class *)isa setMenuRepresentation:v18];

  *(v7 + 24) = isa;
  v19 = v16;
  v30.value.super.isa = v5;
  v30.is_nil = 0;
  v33.value.super.super.isa = 0;
  v20 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v3, v30, v33, v35).super.super.isa;
  [(objc_class *)v20 setEnabled:0];

  *(v7 + 32) = v20;
  return v7;
}

uint64_t sub_10010FD50(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = a2(v2);
    *(v2 + v3) = v5;
  }

  return v5;
}

uint64_t sub_10010FDB8(uint64_t a1)
{
  v1._countAndFlagsBits = 0x6E6769737341;
  v2._object = 0x8000000100672730;
  v1._object = 0xE600000000000000;
  v2._countAndFlagsBits = 0xD000000000000022;
  v3.value = TTRLocalizedString(_:comment:)(v1, v2);
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() _systemImageNamed:v4];

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for CenterBarButtonItemGroupWithMenuRepresentation();
  v7 = swift_allocObject();
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 16) = 5;
  sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
  swift_bridgeObjectRetain_n();

  children = v5;
  v29.value.super.isa = v5;
  v29.is_nil = 0;
  v31.value.super.super.isa = 0;
  isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v3, v29, v31, v34).super.super.isa;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100113ACC;
  *(v9 + 24) = v6;
  v27 = sub_100113B7C;
  v28 = v9;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10010CA7C;
  v26 = &unk_1007162F8;
  v10 = _Block_copy(&aBlock);

  [(objc_class *)isa _setSecondaryActionsProvider:v10];
  _Block_release(v10);
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100113ACC;
  *(v12 + 24) = v6;
  v27 = sub_100113B80;
  v28 = v12;
  aBlock = _NSConcreteStackBlock;
  v24 = 1107296256;
  v25 = sub_10010C96C;
  v26 = &unk_100716348;
  v13 = _Block_copy(&aBlock);

  v14 = [v11 elementWithUncachedProvider:v13];
  _Block_release(v13);
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v14;
  v16 = children;
  v17 = v14;
  v32.value.super.isa = v5;
  v32.is_nil = 0;
  v18 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v3.value, 0, v32, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children).super.super.isa;
  [(objc_class *)isa setMenuRepresentation:v18];

  *(v7 + 24) = isa;
  v19 = v16;
  v30.value.super.isa = v5;
  v30.is_nil = 0;
  v33.value.super.super.isa = 0;
  v20 = UIBarButtonItem.init(title:image:primaryAction:menu:)(v3, v30, v33, v35).super.super.isa;
  [(objc_class *)v20 setEnabled:0];

  *(v7 + 32) = v20;
  return v7;
}

uint64_t sub_1001101A0(uint64_t a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v4 = Strong;
  swift_unknownObjectRetain();

  v5 = a2();
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_100110230()
{
  v1 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___addSectionBarButton;
  if (*(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___addSectionBarButton))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___addSectionBarButton);
  }

  else
  {
    sub_100003540(0, &qword_10076BA60, UIAction_ptr);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = v0;
    v4 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v8.value.super.isa = static TTRCommonAsset.Image.addSectionIcon.getter();
    v5.value._countAndFlagsBits = 0;
    v5.value._object = 0xE000000000000000;
    v8.is_nil = v4;
    v9.value.super.super.isa = 0;
    isa = UIBarButtonItem.init(title:image:primaryAction:menu:)(v5, v8, v9, v10).super.super.isa;
    type metadata accessor for CenterBarButtonItemGroup();
    v2 = swift_allocObject();
    *(v2 + 16) = 6;
    *(v2 + 24) = isa;
    *(v2 + 32) = 0;
    *(v3 + v1) = v2;
  }

  return v2;
}

char *sub_10011037C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *&result[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter];
    v4 = result;
    swift_unknownObjectRetain();

    if ((*(v3 + OBJC_IVAR____TtC9Reminders39TTRIRemindersListNavigationBarPresenter_shouldIgnoreCenterItemActions) & 1) == 0)
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v5 = *(v3 + 40);
        ObjectType = swift_getObjectType();
        (*(v5 + 144))(v3, &off_100713C08, ObjectType, v5);
        swift_unknownObjectRelease();
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_100110448()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___timeZoneOverrideButton];
  v3 = *&v0[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___timeZoneOverrideButton];
  v4 = *&v0[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___timeZoneOverrideButton + 8];
  v5 = *(v2 + 2);
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v7 = sub_100110510(v1);
    v9 = v8;
    v10 = *v2;
    v11 = *(v2 + 1);
    v12 = *(v2 + 2);
    *v2 = v7;
    *(v2 + 1) = v8;
    *(v2 + 2) = v13;
    v6 = v7;
    v9;

    sub_100113914(v10, v11, v12);
  }

  sub_10011395C(v3, v4, v5);
  return v6;
}

id sub_100110510(char *a1)
{
  v20[3] = swift_getObjectType();
  v20[0] = a1;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1001139A4;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10010C96C;
  aBlock[3] = &unk_100716028;
  v4 = _Block_copy(aBlock);
  v5 = a1;

  v6 = [v2 elementWithUncachedProvider:v4];
  _Block_release(v4);
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v7._countAndFlagsBits = 0x6E6F5A20656D6954;
  v8._object = 0x8000000100672700;
  v7._object = 0xE900000000000065;
  v8._countAndFlagsBits = 0xD00000000000002BLL;
  v9 = TTRLocalizedString(_:comment:)(v7, v8);
  v10 = String._bridgeToObjectiveC()();
  v11 = [objc_opt_self() _systemImageNamed:v10];

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  preferredElementSize = swift_allocObject();
  *(preferredElementSize + 16) = xmmword_10062D420;
  *(preferredElementSize + 32) = v6;
  v21.value.super.isa = v11;
  v21.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v9, 0, v21, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v18).super.super.isa;
  type metadata accessor for TTRITimeZoneOverrideBarButtonModule();
  swift_allocObject();
  v14 = *(sub_10008C6E0(v20, isa) + 16);
  [v14 setSharesBackground:0];
  sub_100003540(0, &qword_10076C548, UIBarButtonItemGroup_ptr);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D420;
  *(v15 + 32) = v14;
  v16 = v14;
  static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

  return v16;
}

uint64_t type metadata accessor for TTRIRemindersListNavigationBarController(uint64_t a1)
{
  result = qword_10076C3A8;
  if (!qword_10076C3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100110A64(uint64_t a1)
{
  sub_100110B54(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100110B54(uint64_t a1)
{
  if (!qword_10076C3B8)
  {
    type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10076C3B8);
    }
  }
}

double sub_100110BAC(void *a1, void *a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_navigationItem);
  *(v3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_navigationItem) = a1;

  type metadata accessor for TTRITimeZoneOverrideTipController();
  swift_allocObject();
  v7 = a1;
  v8 = a2;
  *(v3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_timeZoneOverrideTipController) = TTRITimeZoneOverrideTipController.init(loggingPrefix:hostViewController:)();

  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 userInterfaceIdiom];

  if (v10 == 1 && (static REMFeatureFlags.isSolariumEnabled.getter() & 1) == 0)
  {
    [v7 setStyle:1];
  }

  [v7 setLeftItemsSupplementBackButton:1];
  v11 = [v8 traitCollection];
  v12 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass;
  v13 = *(v3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass);
  v14 = [v11 horizontalSizeClass];
  if (v13 != (v14 == 1))
  {
    *(v3 + v12) = v14 == 1;
    sub_100081EF8(0xD00000000000001ALL, 0x8000000100672780);
  }

  sub_100058000(&unk_10076BD70, &unk_10062FF20);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10062D400;
  *(v15 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v15 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_100003540(0, &qword_10076AD28, UIViewController_ptr);
  v16 = UIViewController.registerForTraitChanges<A>(_:handler:)();

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v16;
  type metadata accessor for AnyCancellable();
  swift_allocObject();
  *(v3 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_traitChangeCancellable) = AnyCancellable.init(_:)();

  return result;
}

void sub_100110EA4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [a1 traitCollection];
    v7 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass;
    v8 = v5[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_isCompactHorizontalSizeClass];
    v9 = [v6 horizontalSizeClass];
    if (v8 == (v9 == 1))
    {
      v10 = v6;
      v6 = v5;
    }

    else
    {
      v5[v7] = v9 == 1;
      sub_100081EF8(0xD00000000000001ALL, 0x8000000100672780);
      v10 = v5;
    }
  }
}

void sub_100110F8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    UIViewController.unregisterForTraitChanges(_:)();
  }
}

uint64_t sub_100110FE8(uint64_t *a1)
{
  v3 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem(0);
  __chkstk_darwin(v3);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v104 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076C530, &qword_1006304B0);
  __chkstk_darwin(v9);
  v11 = &v94 - v10;
  v12 = sub_100058000(&unk_10076C538, &unk_1006304B8);
  __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v13);
  v15 = &v94 - v14;
  __chkstk_darwin(v16);
  v19 = &v94 - v18;
  v106 = *(v1 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_navigationItem);
  if (!v106)
  {
    if (qword_100766F18 == -1)
    {
LABEL_6:
      v30 = type metadata accessor for Logger();
      sub_100003E30(v30, qword_10076C290);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "TTRIRemindersListNavigationBarController#updateNavigationBarConfiguration: navigationItem is unexpectedly nil", v33, 2u);
      }

      return 0;
    }

LABEL_37:
    swift_once();
    goto LABEL_6;
  }

  v97 = v3;
  v98 = v5;
  v102 = v17;
  v20 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_lastSetConfiguration;
  swift_beginAccess();
  v21 = a1;
  sub_1001137DC(a1, v19, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration);
  v99 = *(v7 + 56);
  v100 = v7 + 56;
  v99(v19, 0, 1, v6);
  v22 = *(v9 + 48);
  v101 = v20;
  sub_100113338(v1 + v20, v11);
  sub_100113338(v19, &v11[v22]);
  v23 = *(v7 + 48);
  v24 = v23(v11, 1, v6);
  v25 = v1;
  v105 = v6;
  if (v24 == 1)
  {
    v26 = v106;
    v27 = v106;
    sub_1000079B4(v19, &unk_10076C538, &unk_1006304B8);
    v28 = v6;
    v29 = v26;
    if (v23(&v11[v22], 1, v28) == 1)
    {

      sub_1000079B4(v11, &unk_10076C538, &unk_1006304B8);
      return 0;
    }

    goto LABEL_12;
  }

  sub_100113338(v11, v15);
  if (v23(&v11[v22], 1, v6) == 1)
  {
    v29 = v106;
    v35 = v106;
    sub_1000079B4(v19, &unk_10076C538, &unk_1006304B8);
    sub_100113710(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration);
LABEL_12:
    sub_1000079B4(v11, &qword_10076C530, &qword_1006304B0);
    v36 = v105;
    goto LABEL_13;
  }

  v48 = v104;
  sub_100113770(&v11[v22], v104);
  v29 = v106;
  v103 = v106;
  v49 = sub_1005F4378(v15, v48);
  sub_100113710(v48, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration);
  sub_1000079B4(v19, &unk_10076C538, &unk_1006304B8);
  sub_100113710(v15, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration);
  sub_1000079B4(v11, &unk_10076C538, &unk_1006304B8);
  v36 = v105;
  if (v49)
  {

    return 0;
  }

LABEL_13:
  v37 = [objc_opt_self() currentDevice];
  v38 = [v37 userInterfaceIdiom];

  if (v38 == 1)
  {
    v39 = static REMFeatureFlags.isSolariumEnabled.getter();
    LODWORD(v104) = v39 ^ 1;
  }

  else
  {
    LODWORD(v104) = 0;
  }

  v40 = v25;
  v41 = *(v21 + *(v36 + 20));
  aBlock[0] = _swiftEmptyArrayStorage;
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = 0;
    v44 = (v41 + 34);
    while (v43 < *(v41 + 16))
    {
      if (*v44)
      {
        v45 = 0x10000;
      }

      else
      {
        v45 = 0;
      }

      if (*(v44 - 1))
      {
        v46 = 256;
      }

      else
      {
        v46 = 0;
      }

      sub_100111E88(v46 | v45 | *(v44 - 2), v25, v21);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v103 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v43;
      v39 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v44 += 3;
      if (v42 == v43)
      {
        v29 = v106;
        v47 = aBlock[0];
        v40 = v25;
        v36 = v105;
        goto LABEL_32;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  v47 = _swiftEmptyArrayStorage;
LABEL_32:
  v50 = v21;
  if (v104)
  {
    if (v47 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_35;
      }
    }

    else if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_35:
      v51 = String._bridgeToObjectiveC()();
LABEL_40:
      [v29 setCustomizationIdentifier:v51];

      goto LABEL_41;
    }

    v51 = 0;
    goto LABEL_40;
  }

LABEL_41:
  v103 = v47;
  v109 = 0;
  __chkstk_darwin(v39);
  *(&v94 - 4) = v40;
  *(&v94 - 24) = v104 & 1;
  *(&v94 - 2) = v21;
  *(&v94 - 1) = &v109;
  v95 = v52;
  v96 = sub_10007D6BC(sub_1001133A8, (&v94 - 6), v52);
  v53 = *(v21 + *(v36 + 28));
  aBlock[0] = _swiftEmptyArrayStorage;
  v54 = v53[2];
  if (v54)
  {
    v94 = 0;
    v55 = 0;
    v50 = v53 + 5;
    while (v55 < v53[2])
    {
      v57 = *(v50 - 1);
      v56 = *v50;
      if (*v50)
      {
        if (v56 == 1)
        {
          sub_10010D42C(&OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___editModeDoneButton, sub_1001138C8, UIBarButtonSystemItemDone);
        }

        else
        {

          v58 = sub_10010D548();
          v59 = String._bridgeToObjectiveC()();
          [(objc_class *)v58 setTitle:v59, v94];
          sub_1001133CC(v57, v56);
        }
      }

      else
      {
        sub_10010D42C(&OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___modalPresentationDoneButton, sub_1001138AC, UIBarButtonSystemItemDone);
        sub_1001133CC(v57, 0);
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v55;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v50 += 2;
      v40 = v25;
      if (v54 == v55)
      {
        v60 = aBlock[0];
        v50 = v21;
        goto LABEL_54;
      }
    }

    __break(1u);
    goto LABEL_71;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_54:
  v108[0] = 0;
  v61 = *(v50 + *(v105 + 32));
  v40 = v40;
  v55 = sub_1001133E0(v61, v108, v40);

  v53 = v106;
  if (v104)
  {
    v62 = v98;
    swift_storeEnumTagMultiPayload();
    v63 = sub_10010CB70(v62, v95);
    sub_100113710(v62, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
    v64 = [v53 additionalOverflowItems];
    if (v64)
    {

      if ((v63 & 1) == 0)
      {
        v65 = 0;
LABEL_60:
        [v53 setAdditionalOverflowItems:{v65, v94}];

        v34 = 1;
        goto LABEL_62;
      }
    }

    else if (v63)
    {
      v66 = objc_opt_self();
      v67 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_100113708;
      aBlock[5] = v67;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10010C96C;
      aBlock[3] = &unk_100715FB0;
      v68 = _Block_copy(aBlock);

      v69 = [v66 elementWithUncachedProvider:v68];
      _Block_release(v68);
      v65 = v69;
      goto LABEL_60;
    }
  }

  v34 = 0;
LABEL_62:
  v70 = [v53 pinnedTrailingGroup];
  if (v70)
  {
    v71 = v70;
    v72 = [v70 barButtonItems];

    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v73 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v73 = _swiftEmptyArrayStorage;
  }

  v74 = sub_100126584(v73, v60);

  if ((v74 & 1) == 0)
  {
    if (!(v60 >> 62))
    {
      if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_72:

        v77 = 0;
        goto LABEL_73;
      }

LABEL_69:
      v75 = objc_allocWithZone(UIBarButtonItemGroup);
      sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v77 = [v75 initWithBarButtonItems:isa representativeItem:0];

LABEL_73:
      [v53 setPinnedTrailingGroup:{v77, v94}];

      v34 = 1;
      goto LABEL_74;
    }

LABEL_71:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

LABEL_74:
  v78 = [v53 trailingItemGroups];
  sub_100003540(0, &qword_10076C548, UIBarButtonItemGroup_ptr);
  v79 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v78) = sub_100126598(v79, v96);

  if (v78)
  {
  }

  else
  {
    v80 = Array._bridgeToObjectiveC()().super.isa;

    [v53 setTrailingItemGroups:v80];

    v34 = 1;
  }

  v81 = v103;
  v82 = [v53 hidesBackButton];
  if (v82 != v108[0])
  {
    [v53 setHidesBackButton:?];
    v34 = 1;
  }

  v83 = [v53 leftBarButtonItems];
  if (v83 && (v84 = v83, sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr), v85 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v84, , LOBYTE(v84) = sub_100126584(v85, v55), v81 = v103, , , (v84 & 1) != 0))
  {
  }

  else
  {
    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    v86 = Array._bridgeToObjectiveC()().super.isa;

    [v53 setLeftBarButtonItems:v86];

    v34 = 1;
  }

  v87 = [v53 centerItemGroups];
  v88 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v87) = sub_100126598(v88, v81);

  if (v87)
  {
  }

  else
  {
    v89 = Array._bridgeToObjectiveC()().super.isa;

    [v53 setCenterItemGroups:v89];

    v34 = 1;
  }

  v90 = v101;
  if (*&v40[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_timeZoneOverrideTipController])
  {
    v91 = v109;

    TTRITimeZoneOverrideTipController.visibleTimeZoneOverrideBarButton.setter();
  }

  v92 = v102;
  sub_1001137DC(v50, v102, type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration);
  v99(v92, 0, 1, v105);
  swift_beginAccess();
  sub_100113698(v92, v25 + v90);
  swift_endAccess();
  return v34;
}

id sub_100111E88(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        v6 = *(sub_10010F3AC() + 24);

        v7 = v6;
        if ((a1 & 0x10000) != 0)
        {
          v9 = 0x8000000100672730;
          v8 = 1734437958;
          v10 = 0xE400000000000000;
        }

        else
        {
          v8 = 0x67616C666E55;
          v9 = 0x8000000100672730;
          v10 = 0xE600000000000000;
        }

        v19 = 0xD000000000000022;
        TTRLocalizedString(_:comment:)(*&v8, *(&v9 - 1));
        v20 = String._bridgeToObjectiveC()();

        [v7 setTitle:v20];

        v21 = String._bridgeToObjectiveC()();
        v22 = [objc_opt_self() _systemImageNamed:v21];

        [v7 setImage:v22];
        [v7 setEnabled:(a1 >> 8) & 1];

        v12 = sub_1001121A0();

        return v12;
      }

      v4 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___locationBarButton;
      v5 = sub_10010EFB4;
    }

    else
    {
      v4 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___dueDateBarButton;
      v5 = sub_10010EBB8;
    }

LABEL_14:
    sub_10010FD50(v4, v5);
    if ((a1 & 0x100) != 0)
    {
      v11 = sub_100112E38();
    }

    else
    {
      v11 = sub_10011300C();
    }

    v12 = v11;

    return v12;
  }

  if (a1 <= 4u)
  {
    if (a1 == 3)
    {
      v4 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___photoBarButton;
      v5 = sub_10010F574;
    }

    else
    {
      v4 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___hashtagBarButton;
      v5 = sub_10010F964;
    }

    goto LABEL_14;
  }

  if (a1 == 5)
  {
    v4 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___assigneeBarButton;
    v5 = sub_10010FDB8;
    goto LABEL_14;
  }

  v14 = (a1 >> 8) & 1;
  v15 = *(sub_100110230() + 24);

  v16 = v15;
  static TTRLocalizableStrings.Sections.addSectionActionText(listLayout:)();
  v17 = String._bridgeToObjectiveC()();

  [v16 setTitle:v17];

  [v16 setEnabled:v14];

  v18 = sub_1001121A0();

  return v18;
}

id sub_1001121A0()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    sub_100003540(0, &qword_10076C548, UIBarButtonItemGroup_ptr);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10062D420;
    v4 = *(v0 + 24);
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = v0;
    v7 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

    v8 = *(v6 + 32);
    *(v6 + 32) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

void sub_100112374(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, void **a5@<X4>, void *a6@<X8>)
{
  v65 = a6;
  v63 = a4;
  v64 = a5;
  LODWORD(v62) = a3;
  v66 = a2;
  v7 = type metadata accessor for TTRCollaborationDetailView();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TTRSharedWithYouHighlight();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem(0);
  __chkstk_darwin(v15);
  v17 = (&v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1001137DC(a1, v17, type metadata accessor for TTRIRemindersListNavigationBarViewModel.TrailingItem);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v21 = v64;
    v62 = v8;
    v63 = v12;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v19 = sub_10010E890();
      }

      else
      {
        v19 = sub_10010E390();
      }

      goto LABEL_24;
    }

    if (!EnumCaseMultiPayload)
    {
      v22 = *v17;
      v23 = v17[1];
      v24 = v66;
      v25 = sub_100110448();
      v27 = v26;
      sub_10008C668(v22, v23, *(v28 + 40));

      v29 = v24 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___timeZoneOverrideButton;
      v30 = *(v24 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___timeZoneOverrideButton);
      v31 = v30;
      v32 = *v21;
      *v21 = v30;

      v33 = *(v29 + 8);
      v34 = *v29;
      v35 = v33;

      *v65 = v33;
      return;
    }

    v40 = *(v63 + 32);
    v41 = v14;
    v64 = v11;
    v40(v14, v17, v11);
    v42 = TTRSharedWithYouHighlight.itemProvider.getter();
    v43 = v66 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_collaborationBarButton;
    if (*(v66 + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_collaborationBarButton) && (objc_opt_self(), (v44 = swift_dynamicCastObjCClass()) != 0) && (v45 = [v44 itemProvider]) != 0 && (v46 = v45, sub_100003540(0, &unk_10076C570, NSItemProvider_ptr), v47 = v42, v48 = static NSObject.== infix(_:_:)(), v46, v47, (v48 & 1) != 0))
    {

      (*(v63 + 8))(v41, v64);
    }

    else
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();
      TTRCollaborationDetailView.init(manageSharedListAction:)();
      v53 = [objc_allocWithZone(_SWCollaborationBarButtonItem) initWithItemProvider:v42];
      sub_100113B0C(&qword_10076C568, &type metadata accessor for TTRCollaborationDetailView, &protocol conformance descriptor for TTRCollaborationDetailView);
      _SWCollaborationBarButtonItem.setDetailViewListContent<A>(_:)();
      [v53 ttr_hideManageButton];
      sub_100003540(0, &qword_10076C548, UIBarButtonItemGroup_ptr);
      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_10062D420;
      *(v54 + 32) = v53;
      v55 = v53;
      v56 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();

      (*(v62 + 8))(v10, v7);
      (*(v63 + 8))(v41, v64);
      v57 = *v43;
      v58 = *(v43 + 8);
      *v43 = v55;
      *(v43 + 8) = v56;
      sub_100037C04(v57, v58);
    }

    if (*v43)
    {
      v59 = *(v43 + 8);
      *v65 = v59;
      v60 = v59;
      return;
    }

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload != 4)
    {
      v19 = sub_10010DB74();
      goto LABEL_24;
    }

    v36 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___shareListBarButton;
    v37 = sub_1001138FC;
    v38 = 0x694C206572616853;
    v39 = 0xEA00000000007473;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 6)
  {
    v36 = &OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___shareTemplateBarButton;
    v37 = sub_100113BBC;
    v38 = 0x6554206572616853;
    v39 = 0xEE006574616C706DLL;
LABEL_15:
    v19 = sub_10010DFCC(v36, v37, v38, v39);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 7)
  {
    if ((v62 & 1) == 0)
    {
      v19 = sub_10010E528();
LABEL_24:
      v52 = v20;

      goto LABEL_25;
    }

LABEL_30:
    *v65 = 0;
    return;
  }

  v49 = *(sub_100110230() + 24);

  v50 = v49;
  static TTRLocalizableStrings.Sections.addSectionActionText(listLayout:)();
  v51 = String._bridgeToObjectiveC()();

  [v50 setTitle:v51];

  v52 = sub_1001121A0();

LABEL_25:
  *v65 = v52;
}

char *sub_1001129C8(uint64_t a1)
{
  v1 = sub_100058000(&unk_10076FCD0, &unk_1006304D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *&result[OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter];
    v6 = result;
    swift_unknownObjectRetain();

    v7 = type metadata accessor for TTRIPopoverAnchor();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v8 = *(v5 + 40);
      ObjectType = swift_getObjectType();
      (*(v8 + 64))(v5, &off_100713C08, 0, v3, ObjectType, v8);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return sub_1000079B4(v3, &unk_10076FCD0, &unk_1006304D0);
  }

  return result;
}

uint64_t sub_100112B38(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_6;
  }

  v5 = *(Strong + OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController_presenter);
  v6 = Strong;
  swift_unknownObjectRetain();

  if (!swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  v7 = *(v5 + 40);
  ObjectType = swift_getObjectType();
  v9 = (*(v7 + 16))(v5, &off_100713C08, ObjectType, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v9)
  {
LABEL_6:
    preferredElementSize = _swiftEmptyArrayStorage;
    goto LABEL_7;
  }

  v10 = [v9 children];

  sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
  preferredElementSize = static Array._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_7:
  sub_100003540(0, &unk_10076B890, UIMenu_ptr);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v18.value.super.isa = 0;
  v18.is_nil = 0;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v12, 0, v18, 1, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, v17).super.super.isa;
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10062D420;
  *(v14 + 32) = isa;
  v15 = isa;
  a1(v14);
}

uint64_t sub_100112D10()
{

  return swift_deallocClassInstance();
}

void sub_100112D74(void (*a1)(void *), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v7 = v4;
  if (v4)
  {
    v5 = [v4 children];
    sub_100003540(0, &qword_10076C550, UIMenuElement_ptr);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = _swiftEmptyArrayStorage;
  }

  a1(v6);
}

id sub_100112E38()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    sub_100003540(0, &qword_10076C548, UIBarButtonItemGroup_ptr);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10062D420;
    v4 = *(v0 + 24);
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = v0;
    v7 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

    v8 = *(v6 + 40);
    *(v6 + 40) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

id sub_10011300C()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 48);
  }

  else
  {
    sub_100003540(0, &qword_10076C548, UIBarButtonItemGroup_ptr);
    sub_100058000(&qword_10076B780, &qword_10062D7C0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10062D420;
    v4 = *(v0 + 32);
    *(v3 + 32) = v4;
    v5 = v4;
    v6 = v0;
    v7 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();

    v8 = *(v6 + 48);
    *(v6 + 48) = v7;
    v2 = v7;

    v1 = 0;
  }

  v9 = v1;
  return v2;
}

uint64_t sub_1001131E0()
{

  return swift_deallocClassInstance();
}

void destroy for TTRIBoardColumnDraggingAnimationCellBackgroundView.Fill(uint64_t a1)
{
  v2 = *(a1 + 8);
}

uint64_t assignWithCopy for SingleBarButtonItemGroup(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRIBoardColumnDraggingAnimationCellBackgroundView.Fill(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  return a1;
}

uint64_t sub_100113338(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076C538, &unk_1006304B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001133CC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1001133E0(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return _swiftEmptyArrayStorage;
  }

  v26 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___redoBarButton;
  v27 = OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___undoBarButton;
  v5 = (a1 + 32);
  v6 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = *v5++;
    v7 = v8;
    if (v8 == 2)
    {
      *a2 = 1;
      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10062D420;
      *(v9 + 32) = sub_10010D42C(&OBJC_IVAR____TtC9Reminders40TTRIRemindersListNavigationBarController____lazy_storage___cancelModalPresentationBarButton, sub_100113844, UIBarButtonSystemItemCancel);
    }

    else
    {
      v10 = sub_10010D80C();
      [(objc_class *)v10 setEnabled:v7 & 1];

      v11 = sub_10010D9C0();
      [(objc_class *)v11 setEnabled:(v7 >> 8) & 1];

      sub_100058000(&qword_10076B780, &qword_10062D7C0);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_10062D410;
      v12 = *(a3 + v27);
      v13 = *(a3 + v26);
      *(v9 + 32) = v12;
      *(v9 + 40) = v13;
      v14 = v12;
      v15 = v13;
    }

    v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v17 = v6 >> 62;
    if (v6 >> 62)
    {
      v25 = _CocoaArrayWrapper.endIndex.getter();
      v19 = v25 + v16;
      if (__OFADD__(v25, v16))
      {
LABEL_25:
        __break(1u);
        return _swiftEmptyArrayStorage;
      }
    }

    else
    {
      v18 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v19 = v18 + v16;
      if (__OFADD__(v18, v16))
      {
        goto LABEL_25;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v17)
      {
        goto LABEL_17;
      }

      v21 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v19 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        if (!v16)
        {
          goto LABEL_3;
        }

        goto LABEL_19;
      }
    }

    else if (v17)
    {
LABEL_17:
      _CocoaArrayWrapper.endIndex.getter();
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v6 = result;
    v21 = result & 0xFFFFFFFFFFFFFF8;
    if (!v16)
    {
LABEL_3:

      goto LABEL_4;
    }

LABEL_19:
    if ((*(v21 + 24) >> 1) - *(v21 + 16) < v16)
    {
      break;
    }

    sub_100003540(0, &qword_10076B800, UIBarButtonItem_ptr);
    swift_arrayInitWithCopy();

    if (v16 >= 1)
    {
      v22 = *(v21 + 16);
      v23 = __OFADD__(v22, v16);
      v24 = v22 + v16;
      if (v23)
      {
        goto LABEL_29;
      }

      *(v21 + 16) = v24;
    }

LABEL_4:
    if (!--v3)
    {
      return v6;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100113698(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10076C538, &unk_1006304B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100113710(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100113770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRIRemindersListNavigationBarViewModel.ProcessedConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001137DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_100113914(void *a1, void *a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

void *sub_10011395C(void *result, void *a2, uint64_t a3)
{
  if (result)
  {
    v4 = result;
    v5 = a2;
  }

  return result;
}

uint64_t sub_100113B0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_100113BC0()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076C5F0);
  v1 = sub_100003E30(v0, qword_10076C5F0);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100113C88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v9 + 496))(&v15, a1, a2, ObjectType, v9);
  if (v16)
  {
    sub_100005FD0(&v15, v17);
    v11 = v18;
    v12 = v19;
    sub_10000C36C(v17, v18);
    (*(v12 + 8))(v11, v12);
    v13 = sub_100116FF0(v8);
    sub_100117528(v8);
    sub_100004758(v17);
  }

  else
  {
    sub_1000079B4(&v15, &qword_100775A10, &qword_100636020);
    return 0;
  }

  return v13;
}

void *sub_100113DD0(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v165 = a2;
  v7 = sub_100058000(&qword_100775780, &unk_100630580);
  __chkstk_darwin(v7 - 8);
  v162 = &v141 - v8;
  v9 = sub_100058000(&qword_100772140, &qword_10062D9F0);
  __chkstk_darwin(v9 - 8);
  v148 = &v141 - v10;
  v11 = type metadata accessor for TTRRemindersListReminderInsertionPosition();
  v152 = *(v11 - 8);
  __chkstk_darwin(v11);
  v151 = &v141 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = type metadata accessor for TTRRemindersListBatchReminderCreationParams();
  v150 = *(v154 - 8);
  __chkstk_darwin(v154);
  v149 = (&v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100058000(&qword_10076C6F0, &unk_100630590);
  __chkstk_darwin(v14 - 8);
  *&v153 = &v141 - v15;
  v157 = type metadata accessor for TTRRemindersListTargetContainer();
  v155 = *(v157 - 8);
  __chkstk_darwin(v157);
  v156 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v17 - 8);
  v19 = (&v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v20);
  v160 = &v141 - v21;
  v22 = sub_100058000(&qword_10076C6F8, &qword_10063E530);
  __chkstk_darwin(v22 - 8);
  v24 = (&v141 - v23);
  v25 = sub_100058000(&unk_100781910, &unk_1006305A0);
  __chkstk_darwin(v25);
  v27 = &v141 - v26;
  v161 = type metadata accessor for TTRRemindersListViewModel.Item();
  v163 = *(v161 - 8);
  __chkstk_darwin(v161);
  v164 = &v141 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v159 = &v141 - v30;
  v31 = sub_100058000(&qword_10076C700, &qword_100634E00);
  __chkstk_darwin(v31 - 8);
  v33 = &v141 - v32;
  v166 = sub_100058000(&unk_100775620, &unk_1006305B0);
  __chkstk_darwin(v166);
  v35 = &v141 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  if (a3 < 1)
  {
    return 0;
  }

  v141 = a3;
  v142 = v11;
  v147 = &v141 - v37;
  v158 = v38;
  v39 = a4[2];
  v40 = a4[3];
  ObjectType = swift_getObjectType();
  v42 = *(v40 + 496);
  v145 = v39;
  v144 = ObjectType;
  v146 = v40;
  v42(&v170, a1, v165);
  if (v171)
  {
    sub_100005FD0(&v170, &v173);
    v43 = v174;
    v44 = v175;
    sub_10000C36C(&v173, v174);
    (*(v44 + 32))(&v170, _swiftEmptyArrayStorage, v43, v44);
    v45 = v171;
    v46 = v172;
    sub_10000C36C(&v170, v171);
    (*(v46 + 24))(v45, v46);
    v47 = v158;
    v48 = v166;
    if ((*(v158 + 48))(v33, 1, v166) == 1)
    {
      sub_1000079B4(v33, &qword_10076C700, &qword_100634E00);
LABEL_5:
      sub_100004758(&v170);
LABEL_28:
      sub_100004758(&v173);
      return 0;
    }

    v165 = a4;
    v49 = v147;
    (*(v47 + 32))(v147, v33, v48);
    sub_100004758(&v170);
    v50 = v174;
    v51 = v175;
    sub_10000C36C(&v173, v174);
    (*(v51 + 16))(v50, v51);
    v52 = sub_100058000(&qword_10076C708, &unk_1006305C0);
    if ((*(*(v52 - 8) + 48))(v24, 1, v52) == 1)
    {
      (*(v47 + 8))(v49, v166);
      v53 = &qword_10076C6F8;
      v54 = &qword_10063E530;
      v55 = v24;
LABEL_27:
      sub_1000079B4(v55, v53, v54);
      goto LABEL_28;
    }

    v56 = *(v24 + *(v52 + 48));
    v57 = *(v25 + 48);
    v58 = v163;
    v59 = *(v163 + 32);
    v60 = v24;
    v61 = v161;
    v59(v27, v60, v161);
    *&v27[v57] = v56;
    v143 = *&v27[*(v25 + 48)];
    v62 = v159;
    v59(v159, v27, v61);
    v63 = v174;
    v64 = v175;
    sub_10000C36C(&v173, v174);
    v65 = v160;
    (*(v64 + 8))(v63, v64);
    sub_100117584(v65, v19, type metadata accessor for TTRRemindersListReminderActionTarget);
    v66 = v153;
    sub_10057DDC0(v19, v153);
    v67 = v155;
    v68 = v157;
    if ((*(v155 + 48))(v66, 1, v157) == 1)
    {
      sub_100117528(v65);
      (*(v58 + 8))(v62, v61);
      (*(v158 + 8))(v147, v166);
      v53 = &qword_10076C6F0;
      v54 = &unk_100630590;
      v55 = v66;
      goto LABEL_27;
    }

    (*(v67 + 32))(v156, v66, v68);
    v69 = v165[4];
    v70 = swift_getObjectType();
    v71 = v149;
    *v149 = v141;
    v72 = v150;
    v150[13](v71, enum case for TTRRemindersListBatchReminderCreationParams.count(_:), v154);
    (*(v158 + 16))(v35, v147, v166);
    v73 = v151;
    TTRRemindersListReminderInsertionPosition.init(relativePosition:)();
    (*(v146 + 408))(v144);
    dispatch thunk of TTRRemindersListInteractorType.newReminderChangeItems(params:targetContainer:position:remindersBeingSaved:)();

    (*(v152 + 8))(v73, v142);
    (v72[1])(v71, v154);
    if (!v169)
    {
      (*(v67 + 8))(v156, v157);
      sub_100117528(v160);
      (*(v163 + 8))(v159, v161);
      (*(v158 + 8))(v147, v166);
      v53 = &qword_10076C710;
      v54 = &unk_100647120;
      v55 = &v168;
      goto LABEL_27;
    }

    sub_100005FD0(&v168, &v170);
    sub_10000C36C(&v170, v171);
    v74 = dispatch thunk of TTRRemindersListChangeItemGroup.reminderChangeItems.getter();
    v75 = v74;
    v152 = v74 >> 62;
    if (v74 >> 62)
    {
      goto LABEL_83;
    }

    for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v77 = v165;
      v154 = i;
      if (i)
      {
        v167 = _swiftEmptyArrayStorage;
        sub_1004A1EBC(0, i & ~(i >> 63), 0);
        if (i < 0)
        {
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v78 = 0;
        v79 = v167;
        v71 = v75 & 0xC000000000000001;
        v153 = xmmword_10062D420;
        do
        {
          if (v71)
          {
            v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v80 = *(v75 + 8 * v78 + 32);
          }

          v81 = v80;
          sub_100058000(&qword_10076B780, &qword_10062D7C0);
          v82 = swift_allocObject();
          *(v82 + 16) = v153;
          *(v82 + 32) = v81;
          v83 = v81;
          dispatch thunk of TTRRemindersListInteractorType.attributeEditor(for:)();

          v167 = v79;
          v85 = v79[2];
          v84 = v79[3];
          if (v85 >= v84 >> 1)
          {
            sub_1004A1EBC((v84 > 1), v85 + 1, 1);
            v79 = v167;
          }

          ++v78;
          v79[2] = v85 + 1;
          sub_100005FD0(&v168, &v79[5 * v85 + 4]);
        }

        while (v154 != v78);

        v77 = v165;
      }

      if (v152)
      {
        v86 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v86 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = v156;
      v70 = v160;
      v89 = v163;
      v90 = _swiftEmptyArrayStorage;
      if (!v86)
      {
LABEL_47:
        v97 = *(v89 + 16);
        v98 = v148;
        v99 = v161;
        v151 = (v89 + 16);
        v150 = v97;
        (v97)(v148, v159, v161);
        (*(v89 + 56))(v98, 0, 1, v99);
        v100 = sub_1003E0588(v90);

        v71 = (*(v146 + 392))(v98, v100, v144);

        sub_1000079B4(v98, &qword_100772140, &qword_10062D9F0);
        if (*(v71 + 16) == v154)
        {

          v101 = v71;
          v102 = *(v71 + 16);
          v144 = v101;
          if (v102)
          {
            v149 = v77[6];
            v103 = v101 + ((*(v163 + 80) + 32) & ~*(v163 + 80));
            v148 = "editingPresenter";
            v146 = *(v163 + 72);
            v87 = _swiftEmptyArrayStorage;
            v145 = (v163 + 8);
            v104 = v161;
            while (1)
            {
              (v150)(v164, v103, v104);
              *&v168 = 0;
              *(&v168 + 1) = 0xE000000000000000;
              _StringGuts.grow(_:)(31);
              v106 = _typeName(_:qualified:)();
              v108 = v107;

              *&v168 = v106;
              *(&v168 + 1) = v108;
              v109._object = (v148 | 0x8000000000000000);
              v109._countAndFlagsBits = 0xD00000000000001DLL;
              String.append(_:)(v109);
              v152 = v168;
              *&v153 = *(v149[8] + 64);
              Strong = swift_unknownObjectWeakLoadStrong();
              if (!Strong)
              {
                goto LABEL_56;
              }

              v111 = Strong;
              if (!swift_unknownObjectWeakLoadStrong())
              {
                break;
              }

              v112 = *(v111 + 24);
              v113 = swift_getObjectType();
              v114 = sub_1001175F4(&qword_100769610, type metadata accessor for TTRReminderListEditingPresenter, &unk_100644258);
              v115 = *(v112 + 48);
              v116 = v162;
              v117 = v113;
              v70 = v160;
              v118 = v112;
              v104 = v161;
              v115(v111, v114, v117, v118);
              swift_unknownObjectRelease();
              v119 = v116;
              swift_unknownObjectRelease();
LABEL_57:
              sub_1001175F4(&qword_100775790, type metadata accessor for TTRRemindersListEditingSessionProvider, &unk_10063E618);

              v121 = v164;
              v122 = TTRRemindersListEditingSessionProviderCapability.acquireEditingSession(forEditing:acquirerName:undoContext:editingSessionState:editingSessionDelegate:)();

              sub_1000079B4(v119, &qword_100775780, &unk_100630580);
              (*v145)(v121, v104);

              if (v122)
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v87 = sub_100547450(0, v87[2] + 1, 1, v87);
                }

                v124 = v87[2];
                v123 = v87[3];
                v105 = v163;
                if (v124 >= v123 >> 1)
                {
                  v126 = sub_100547450((v123 > 1), v124 + 1, 1, v87);
                  v105 = v163;
                  v87 = v126;
                }

                v87[2] = v124 + 1;
                v125 = &v87[2 * v124];
                v125[4] = v122;
                v125[5] = &protocol witness table for TTRRemindersListConcreteEditingSession;
              }

              else
              {
                v105 = v163;
              }

              v103 += v146;
              if (!--v102)
              {
                goto LABEL_69;
              }
            }

            swift_unknownObjectRelease();
LABEL_56:
            v120 = type metadata accessor for TTRRemindersListUndoContext();
            v119 = v162;
            (*(*(v120 - 8) + 56))(v162, 1, 1, v120);
            goto LABEL_57;
          }

          v87 = _swiftEmptyArrayStorage;
          v104 = v161;
          v105 = v163;
LABEL_69:
          if (v154 == v87[2])
          {
            v133 = v105;

            (*(v155 + 8))(v156, v157);
            sub_100117528(v70);
            (*(v133 + 8))(v159, v104);
            (*(v158 + 8))(v147, v166);
            sub_100004758(&v170);
            sub_100004758(&v173);
            return v87;
          }

          v134 = v144;
          if (qword_100766F20 != -1)
          {
            swift_once();
          }

          v135 = type metadata accessor for Logger();
          sub_100003E30(v135, qword_10076C5F0);

          v136 = Logger.logObject.getter();
          v137 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v136, v137))
          {
            v138 = swift_slowAlloc();
            *v138 = 134218240;
            v139 = *(v134 + 16);

            *(v138 + 4) = v139;

            *(v138 + 12) = 2048;
            v140 = v87[2];

            *(v138 + 14) = v140;

            _os_log_impl(&_mh_execute_header, v136, v137, "editingSessions count not matching items count {items: %ld, editingSessions: %ld}", v138, 0x16u);
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          (*(v155 + 8))(v156, v157);
          sub_100117528(v70);
          (*(v163 + 8))(v159, v104);
LABEL_80:
          (*(v158 + 8))(v147, v166);
          goto LABEL_5;
        }

        if (qword_100766F20 == -1)
        {
LABEL_64:
          v127 = type metadata accessor for Logger();
          sub_100003E30(v127, qword_10076C5F0);

          v128 = Logger.logObject.getter();
          v129 = static os_log_type_t.fault.getter();
          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            *v130 = 134218240;
            v131 = *(v71 + 16);

            *(v130 + 4) = v131;

            *(v130 + 12) = 2048;
            if (v152)
            {
              v132 = _CocoaArrayWrapper.endIndex.getter();
            }

            else
            {
              v132 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v130 + 14) = v132;

            _os_log_impl(&_mh_execute_header, v128, v129, "items count not matching reminderChangeItems count {items: %ld, reminderChangeItems: %ld}", v130, 0x16u);

            v69 = v156;
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          (*(v155 + 8))(v69, v157);
          sub_100117528(v70);
          (*(v163 + 8))(v159, v161);
          goto LABEL_80;
        }

LABEL_86:
        swift_once();
        goto LABEL_64;
      }

      *&v168 = _swiftEmptyArrayStorage;
      v69 = v86 & ~(v86 >> 63);

      sub_1004A1E7C(0, v69, 0);
      if (v86 < 0)
      {
        goto LABEL_85;
      }

      v90 = v168;
      if (v152)
      {
        v91 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v91 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = 0;
      v70 = v91 & ~(v91 >> 63);
      while (v70 != v69)
      {
        if ((v75 & 0xC000000000000001) != 0)
        {
          v92 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v92 = *(v75 + 8 * v69 + 32);
        }

        v71 = v143 + v69;
        if (__OFADD__(v143, v69))
        {
          goto LABEL_82;
        }

        *&v168 = v90;
        v94 = v90[2];
        v93 = v90[3];
        if (v94 >= v93 >> 1)
        {
          v96 = v92;
          sub_1004A1E7C((v93 > 1), v94 + 1, 1);
          v92 = v96;
          v90 = v168;
        }

        ++v69;
        v90[2] = v94 + 1;
        v95 = &v90[2 * v94];
        v95[4] = v92;
        v95[5] = v71;
        v77 = v165;
        if (v86 == v69)
        {

          v69 = v156;
          v70 = v160;
          v89 = v163;
          goto LABEL_47;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      ;
    }
  }

  sub_1000079B4(&v170, &qword_100775A10, &qword_100636020);
  return 0;
}

uint64_t sub_1001154CC(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v34 = a3;
  v35 = type metadata accessor for TTRRemindersListEditingSessionDisplayTargets();
  v33 = *(v35 - 8);
  __chkstk_darwin(v35);
  v32 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100003E30(v12, qword_10076C5F0);
  (*(v8 + 16))(v10, a2, v7);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    ObjectType = v11;
    v17 = v16;
    v37[0] = v16;
    *v15 = 136315138;
    sub_1001175F4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v18 = TTRTreeStorageItem.treeItemDescription.getter();
    v20 = v19;
    (*(v8 + 8))(v10, v7);
    v21 = sub_100004060(v18, v20, v37);

    *(v15 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v13, v14, "performDrop: Loaded contents for uncommitted reminder {item: %s}", v15, 0xCu);
    sub_100004758(v17);
    v11 = ObjectType;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  ObjectType = swift_getObjectType();
  dispatch thunk of TTRRemindersListEditingSession.attributeEditor.getter();
  sub_10000C36C(v37, v37[3]);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D420;
  *(v22 + 32) = v11;
  v23 = v11;
  dispatch thunk of TTRRemindersListAttributeEditing.addAttributes(from:isForNewReminder:)();

  sub_100004758(v37);
  sub_100058000(&qword_10076C6E0, &unk_100630570);
  v24 = v33;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_10062D3F0;
  static TTRRemindersListEditingSessionDisplayTargets.cell.getter();
  static TTRRemindersListEditingSessionDisplayTargets.reminderEditingComponents.getter();
  v37[0] = v25;
  sub_1001175F4(&unk_1007756B0, &type metadata accessor for TTRRemindersListEditingSessionDisplayTargets, &protocol conformance descriptor for TTRRemindersListEditingSessionDisplayTargets);
  sub_100058000(&qword_10076C6E8, &unk_100635D60);
  sub_10011763C(&unk_1007756C0, &qword_10076C6E8, &unk_100635D60);
  v26 = v32;
  v27 = v35;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of TTRRemindersListEditingSession.setNeedsDisplay(_:)();
  (*(v24 + 8))(v26, v27);
  v37[0] = v23;
  sub_100058000(&qword_10076C6C0, &qword_100630558);
  swift_allocObject();
  v28 = v23;
  return Promise.init(value:)();
}

void sub_1001159C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for TTRRemindersListViewModel.Item();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100003E30(v7, qword_10076C5F0);
  (*(v4 + 16))(v6, a2, v3);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v10 = 136315394;
    swift_getErrorValue();
    v11 = Error.localizedDescription.getter();
    v13 = sub_100004060(v11, v12, &v19);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    sub_1001175F4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v14 = TTRTreeStorageItem.treeItemDescription.getter();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v17 = sub_100004060(v14, v16, &v19);

    *(v10 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v8, v9, "performDrop: failed to load contents. Will delete uncommitted reminder {error: %s, item: %s}", v10, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }
}

void sub_100115C94(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListEditingSessionFinishingOption();
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  if (v14)
  {
    v8 = 0;
    v13 = *a1;
    v11 = (v5 + 8);
    v12 = v13 + 32;
    v9 = a2 + 40;
    while (v8 < *(v13 + 16))
    {
      if (*(v12 + 8 * v8))
      {
        v16 = _swiftEmptyArrayStorage;
        v15 = sub_1001175F4(&qword_10076C6D0, &type metadata accessor for TTRRemindersListEditingSessionFinishingOption, &protocol conformance descriptor for TTRRemindersListEditingSessionFinishingOption);
        swift_unknownObjectRetain();
        sub_100058000(&unk_1007756D0, &qword_100630568);
        sub_10011763C(&qword_10076C6D8, &unk_1007756D0, &qword_100630568);
        dispatch thunk of SetAlgebra.init<A>(_:)();
      }

      else
      {
        swift_unknownObjectRetain();
        static TTRRemindersListEditingSessionFinishingOption.markedForDeletion.getter();
      }

      ++v8;
      swift_getObjectType();
      dispatch thunk of TTRRemindersListEditingSession.finish(options:)();
      swift_unknownObjectRelease();
      (*v11)(v7, v4);
      v9 += 16;
      if (v14 == v8)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100115EC0(void **a1, uint64_t a2)
{
  v5 = type metadata accessor for TTRRemindersListViewModel.Item();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003E30(v10, qword_10076C5F0);
  (*(v6 + 16))(v8, a2, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23[1] = v2;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23[0] = v9;
    v16 = v15;
    v24 = v15;
    *v14 = 136315138;
    sub_1001175F4(&qword_100775630, &type metadata accessor for TTRRemindersListViewModel.Item, &protocol conformance descriptor for TTRRemindersListViewModel.Item);
    v17 = TTRTreeStorageItem.treeItemDescription.getter();
    v19 = v18;
    (*(v6 + 8))(v8, v5);
    v20 = sub_100004060(v17, v19, &v24);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "performDrop(into:): Loaded contents to be added to item {item: %s}", v14, 0xCu);
    sub_100004758(v16);
    v9 = v23[0];
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v24 = v9;
  sub_100058000(&qword_10076C6C0, &qword_100630558);
  swift_allocObject();
  v21 = v9;
  return Promise.init(value:)();
}

void sub_100116184(uint64_t a1)
{
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003E30(v1, qword_10076C5F0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    v7 = sub_100004060(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&_mh_execute_header, oslog, v2, "performDrop(into:): Failed to load contents. Nothing to add to existing reminder {error: %s}", v3, 0xCu);
    sub_100004758(v4);
  }

  else
  {
  }
}

uint64_t sub_10011631C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100058000(&qword_10076C718, &qword_1006305D0);
  type metadata accessor for TTRRemindersListImportedContent();
  sub_10011763C(&qword_10076C720, &qword_10076C718, &qword_1006305D0);
  v4 = Sequence.removingNils<A>()();
  sub_1001163D4(v4, a3);
}

void sub_1001163D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListViewModel.Item();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v17 = 0;
  type metadata accessor for TTRRemindersListImportedContent();
  static TTRRemindersListImportedContent.undoActionNameForApplyToExistingReminder(_:)();
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();

  (*(v7 + 16))(&aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = &v17;
  *(v12 + 24) = v3;
  (*(v7 + 32))(v12 + v11, &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *(v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_100117690;
  *(v13 + 24) = v12;
  aBlock[4] = sub_100026410;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100026440;
  aBlock[3] = &unk_100716410;
  v14 = _Block_copy(aBlock);

  [v9 withActionName:v10 block:v14];

  _Block_release(v14);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  else
  {
  }
}

id sub_10011667C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  (*(v9 + 512))(&v15, a1, a2, ObjectType, v9);
  if (v16)
  {
    sub_100005FD0(&v15, v17);
    v11 = v18;
    v12 = v19;
    sub_10000C36C(v17, v18);
    (*(v12 + 16))(v11, v12);
    v13 = sub_100116FF0(v8);
    sub_100117528(v8);
    sub_100004758(v17);
  }

  else
  {
    sub_1000079B4(&v15, &qword_10076C6C8, &qword_100630560);
    return 0;
  }

  return v13;
}

uint64_t sub_1001167C4(void **a1, void *a2, void *a3)
{
  v45 = a3;
  v5 = type metadata accessor for REMHashtagLabelSpecifier();
  v43 = *(v5 - 8);
  v44 = v5;
  __chkstk_darwin(v5);
  v42 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v41 = &v37 - v8;
  v9 = sub_100058000(&qword_10076C6B8, &unk_100630540);
  __chkstk_darwin(v9 - 8);
  v11 = &v37 - v10;
  v12 = type metadata accessor for DateComponents();
  v39 = *(v12 - 8);
  v40 = v12;
  __chkstk_darwin(v12);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TTRRemindersListMatchedAttributeValue(0);
  __chkstk_darwin(v14);
  v16 = (&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100003E30(v18, qword_10076C5F0);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "performDropToMatchAttributes: Loaded contents", v21, 2u);
  }

  sub_10000C36C(a2, a2[3]);
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10062D420;
  *(v22 + 32) = v17;
  v23 = v17;
  dispatch thunk of TTRRemindersListAttributeEditing.addAttributes(from:isForNewReminder:)();

  sub_100117584(v45, v16, type metadata accessor for TTRRemindersListMatchedAttributeValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10000C36C(a2, a2[3]);
      dispatch thunk of TTRRemindersListAttributeEditing.setFlagged(_:)();
    }

    else
    {
      v32 = v38;
      v31 = v39;
      v33 = v40;
      (*(v39 + 32))(v38, v16, v40);
      sub_10000C36C(a2, a2[3]);
      (*(v31 + 16))(v11, v32, v33);
      (*(v31 + 56))(v11, 0, 1, v33);
      TTRRemindersListAttributeEditing.setDueDate(_:)();
      sub_1000079B4(v11, &qword_10076C6B8, &unk_100630540);
      (*(v31 + 8))(v32, v33);
    }

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v34 = *v16;
    sub_10000C36C(a2, a2[3]);
    dispatch thunk of TTRRemindersListAttributeEditing.edit(toMatch:)();

    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 3)
  {
LABEL_18:
    v46 = v23;
    sub_100058000(&qword_10076C6C0, &qword_100630558);
    swift_allocObject();
    v35 = v23;
    return Promise.init(value:)();
  }

  v45 = v23;
  v26 = v43;
  v25 = v44;
  v27 = v41;
  (*(v43 + 32))(v41, v16, v44);
  v28 = v42;
  (*(v26 + 16))(v42, v27, v25);
  v29 = (*(v26 + 88))(v28, v25);
  if (v29 == enum case for REMHashtagLabelSpecifier.labels(_:))
  {
    (*(v26 + 96))(v28, v25);

    v40 = *(sub_100058000(&qword_10076B830, &qword_100630550) + 64);
    sub_10000C36C(a2, a2[3]);
    dispatch thunk of TTRRemindersListAttributeEditing.updateHashtags(toMatchLabels:)();

    (*(v26 + 8))(v27, v25);
    v30 = type metadata accessor for REMHashtagLabelSpecifier.Operation();
    (*(*(v30 - 8) + 8))(&v28[v40], v30);
LABEL_17:
    v23 = v45;
    goto LABEL_18;
  }

  if (v29 == enum case for REMHashtagLabelSpecifier.allLabels(_:) || v29 == enum case for REMHashtagLabelSpecifier.noLabels(_:))
  {
    (*(v26 + 8))(v27, v25);
    goto LABEL_17;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

id sub_100116E20(uint64_t a1, void *a2)
{
  if (qword_100766F20 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003E30(v3, qword_10076C5F0);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = Error.localizedDescription.getter();
    v10 = sub_100004060(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "performDropToMatchAttributes: Failed to load contents. Will delete reminderChangeItem {error: %s}", v6, 0xCu);
    sub_100004758(v7);
  }

  return [a2 removeFromList];
}

id sub_100116FF0(uint64_t a1)
{
  v2 = type metadata accessor for TTRSection();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100117584(a1, v11, type metadata accessor for TTRRemindersListReminderActionTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return 0;
    }

    if (EnumCaseMultiPayload == 1)
    {
      return *v11;
    }

    v15 = *v11;
    v13 = [*v11 list];

    return v13;
  }

  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_100117528(v11);
      swift_getObjectType();
      return dispatch thunk of TTRRemindersListInteractorType.fetchDefaultList()();
    }

    else
    {
      v13 = *(v11 + 1);
    }

    return v13;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v14 = *(v11 + 1);
    v13 = *(v11 + 2);

    return v13;
  }

  (*(v3 + 32))(v8, v11, v2);
  (*(v3 + 16))(v5, v8, v2);
  v16 = (*(v3 + 88))(v5, v2);
  if (v16 == enum case for TTRSection.listSection(_:))
  {
    (*(v3 + 96))(v5, v2);
    v17 = *v5;
    v13 = [v17 list];

    (*(v3 + 8))(v8, v2);
    return v13;
  }

  if (v16 == enum case for TTRSection.smartListSection(_:))
  {
    v18 = *(v3 + 8);
    v18(v5, v2);
    swift_getObjectType();
    v13 = dispatch thunk of TTRRemindersListInteractorType.fetchDefaultList()();
    v18(v8, v2);
    return v13;
  }

  if (v16 == enum case for TTRSection.templateSection(_:))
  {
    v19 = *(v3 + 8);
    v19(v8, v2);
    v19(v5, v2);
    return 0;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t sub_10011736C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 48);
  sub_100058000(&qword_100772150, &unk_100635D00);
  v8 = type metadata accessor for TTRRemindersListViewModel.Item();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10062D400;
  (*(v9 + 16))(v11 + v10, a3, v8);

  v12 = sub_1004F74D8(v11, v7, a4);

  swift_setDeallocating();
  (*(v9 + 8))(v11 + v10, v8);
  result = swift_deallocClassInstance();
  *a1 = v12;
  return result;
}

uint64_t sub_1001174BC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_100117528(uint64_t a1)
{
  v2 = type metadata accessor for TTRRemindersListReminderActionTarget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100117584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1001175F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10011763C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10005D20C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100117690()
{
  v1 = *(type metadata accessor for TTRRemindersListViewModel.Item() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10011736C(v3, v4, v0 + v2, v5);
}

uint64_t REMCustomSmartListFilterDescriptor.humanReadableDescription.getter()
{
  v0 = REMCustomSmartListFilterDescriptor.enabledFilterCount.getter();
  _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO22enabledFiltersSubtitle5countSSSi_tFZ_0(v0);
  v1 = objc_allocWithZone(NSAttributedString);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  v4 = [v3 string];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

id REMCustomSmartListFilterDescriptor.attributedHumanReadableDescription.getter()
{
  v0 = REMCustomSmartListFilterDescriptor.enabledFilterCount.getter();
  _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO22enabledFiltersSubtitle5countSSSi_tFZ_0(v0);
  v1 = objc_allocWithZone(NSAttributedString);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithString:v2];

  return v3;
}

uint64_t *assignWithCopy for TTRIAccountsListsPresentationTree(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t sub_1001178B0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for TTRAccountsListsViewModel();
  swift_allocObject();
  result = TTRAccountsListsViewModel.init()();
  *a1 = result;
  a1[1] = &_swiftEmptySetSingleton;
  return result;
}

uint64_t sub_1001178F8(uint64_t a1)
{
  v2 = sub_100058000(&unk_100771B40, &unk_10062FB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100117960()
{
  sub_10003B788(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1001179C4()
{
  sub_10003B788(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t TTRSmartListFilterEditorInteractor.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*TTRIDebouncedHoverAction.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_100117B50;
}

void sub_100117B50(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t TTRIDebouncedHoverAction.__allocating_init(_:handlerQueue:)(uint64_t a1, double a2)
{
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100767510, &unk_10062BD00);
  swift_allocObject();
  *(v4 + 48) = PassthroughSubject.init()();
  *(v4 + 56) = 0;
  *(v4 + 40) = a2;
  *(v4 + 32) = a1;
  return v4;
}

uint64_t TTRIDebouncedHoverAction.init(_:handlerQueue:)(uint64_t a1, double a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_100058000(&qword_100767510, &unk_10062BD00);
  swift_allocObject();
  *(v2 + 48) = PassthroughSubject.init()();
  *(v2 + 56) = 0;
  *(v2 + 40) = a2;
  *(v2 + 32) = a1;
  return v2;
}

void sub_100117CEC()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_100058000(&qword_10076C938, &qword_1006308B0);
  __chkstk_darwin(v3 - 8);
  v5 = &v28 - v4;
  v6 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v39 = *(v6 - 8);
  v40 = v6;
  __chkstk_darwin(v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&qword_10076C940, &qword_1006308B8);
  v41 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_100058000(&qword_10076C948, &qword_1006308C0);
  v38 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v28 - v13;
  v15 = sub_100058000(&qword_10076C950, &qword_1006308C8);
  __chkstk_darwin(v15);
  if (!v1[7])
  {
    v33 = &v28 - v17;
    v34 = v12;
    v43 = v1[6];
    v36 = v16;
    v37 = v18;

    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v35 = v2;
    v42 = v1[4];
    v19 = v42;
    v31 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v20 = *(v31 - 8);
    v30 = *(v20 + 56);
    v32 = v20 + 56;
    v30(v5, 1, 1, v31);
    v21 = v19;
    v28 = v9;
    v29 = v21;
    sub_100058000(&qword_100767510, &unk_10062BD00);
    sub_1000A96A0();
    sub_10000E188(&qword_10076C958, &qword_100767510, &unk_10062BD00, &protocol conformance descriptor for PassthroughSubject<A, B>);
    sub_1001184EC();
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_100118544(v5);
    (*(v39 + 8))(v8, v40);

    sub_10000E188(&qword_10076C968, &qword_10076C940, &qword_1006308B8, &protocol conformance descriptor for Publishers.Debounce<A, B>);
    v22 = v28;
    Publisher.drop(while:)();
    (*(v41 + 8))(v11, v22);
    v23 = v29;
    v43 = v29;
    v30(v5, 1, 1, v31);
    sub_10000E188(&qword_10076C970, &qword_10076C948, &qword_1006308C0, &protocol conformance descriptor for Publishers.DropWhile<A>);
    v25 = v33;
    v24 = v34;
    Publisher.receive<A>(on:options:)();
    sub_100118544(v5);

    (*(v38 + 8))(v14, v24);
    sub_10000E188(&qword_10076C978, &qword_10076C950, &qword_1006308C8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v26 = v36;
    v27 = Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v37 + 8))(v25, v26);
    v1[7] = v27;
  }
}

Swift::Void __swiftcall TTRIDebouncedHoverAction.cancel()()
{
  if (*(v0 + 56))
  {

    AnyCancellable.cancel()();
  }

  *(v0 + 56) = 0;
}

uint64_t sub_100118344(uint64_t result, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v2 = result;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v3 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(v2, ObjectType, v3);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t TTRIDebouncedHoverAction.deinit()
{
  sub_10003B788(v0 + 16);

  return v0;
}

uint64_t TTRIDebouncedHoverAction.__deallocating_deinit()
{
  sub_10003B788(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_100118498()
{
  result = qword_10076C930;
  if (!qword_10076C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076C930);
  }

  return result;
}

unint64_t sub_1001184EC()
{
  result = qword_10076C960;
  if (!qword_10076C960)
  {
    sub_1000A96A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076C960);
  }

  return result;
}

uint64_t sub_100118544(uint64_t a1)
{
  v2 = sub_100058000(&qword_10076C938, &qword_1006308B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1001185AC(uint64_t a1)
{
  v3 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077C040, &unk_10063A210);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_100058000(&qword_10076C9F8, &qword_100630960);
  v11 = v10 - 8;
  __chkstk_darwin(v10);
  v13 = &v20 - v12;
  v14 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  v15 = *(v11 + 56);
  v21 = a1;
  sub_10011B554(a1, v13);
  sub_10011B554(v1 + v14, &v13[v15]);
  v16 = *(v4 + 48);
  if (v16(v13, 1, v3) == 1)
  {
    if (v16(&v13[v15], 1, v3) == 1)
    {
      return sub_1000079B4(v13, &unk_10077C040, &unk_10063A210);
    }

    goto LABEL_6;
  }

  sub_10011B554(v13, v9);
  if (v16(&v13[v15], 1, v3) == 1)
  {
    (*(v4 + 8))(v9, v3);
LABEL_6:
    sub_1000079B4(v13, &qword_10076C9F8, &qword_100630960);
LABEL_7:
    swift_beginAccess();
    sub_10011B5C4(v21, v1 + v14);
    swift_endAccess();
    return [v1 setNeedsUpdateConfiguration];
  }

  (*(v4 + 32))(v6, &v13[v15], v3);
  sub_10011B634();
  v18 = dispatch thunk of static Equatable.== infix(_:_:)();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  result = sub_1000079B4(v13, &unk_10077C040, &unk_10063A210);
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100118A74(uint64_t a1)
{
  v2 = sub_100058000(&unk_10077C040, &unk_10063A210);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  if (qword_100766F28 != -1)
  {
    swift_once();
  }

  v5 = qword_10076C980;
  sub_10011B554(a1, v4);
  v6 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6);
  v8 = v5;
  if (v7 == 1)
  {
    sub_1000079B4(v4, &unk_10077C040, &unk_10063A210);
LABEL_6:
    v11 = 0;
    memset(v10, 0, sizeof(v10));
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  UICellConfigurationState.subscript.setter();
  return sub_1000079B4(a1, &unk_10077C040, &unk_10063A210);
}

uint64_t sub_100118BFC(char *a1)
{
  v2 = v1;
  v79 = a1;
  v3 = type metadata accessor for TTRRemindersListLayout();
  v73 = *(v3 - 8);
  v74 = v3;
  __chkstk_darwin(v3);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v71 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100058000(&unk_10077C040, &unk_10063A210);
  __chkstk_darwin(v9 - 8);
  v11 = &v70 - v10;
  v12 = type metadata accessor for UIListContentConfiguration();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v70 - v17;
  sub_100119444();
  static UIListContentConfiguration.cell()();
  v19 = type metadata accessor for UICellConfigurationState();
  v81 = v19;
  v82 = &protocol witness table for UICellConfigurationState;
  v20 = sub_1000317B8(v80);
  (*(*(v19 - 8) + 16))(v20, v79, v19);
  v79 = v18;
  UIListContentConfiguration.updated(for:)();
  v75 = v13;
  v21 = *(v13 + 8);
  v77 = v13 + 8;
  v78 = v12;
  v76 = v21;
  v21(v15, v12);
  sub_100004758(v80);
  v22 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(&v2[v22], v11);
  v72 = v7;
  v23 = *(v7 + 48);
  v24 = v6;
  LODWORD(v19) = v23(v11, 1, v6);
  sub_1000079B4(v11, &unk_10077C040, &unk_10063A210);
  if (v19 == 1 || (v25 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField, ([*&v2[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField] isEditing] & 1) != 0))
  {
    v26 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_currentLayout;
    swift_beginAccess();
    v28 = v73;
    v27 = v74;
    (*(v73 + 16))(v5, &v2[v26], v74);
    static TTRLocalizableStrings.Sections.hideEmpty(listLayout:)();
    (*(v28 + 8))(v5, v27);
    v29 = v79;
    UIListContentConfiguration.text.setter();
    [*&v2[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField] setUserInteractionEnabled:0];
    goto LABEL_4;
  }

  v38 = *&v2[v25];
  swift_beginAccess();
  if (v23(&v2[v22], 1, v6))
  {
    swift_endAccess();
    v39 = v38;
    v40 = 0;
  }

  else
  {
    v41 = v38;
    TTREditSectionsViewModel.SectionItem.displayName.getter();
    swift_endAccess();
    v40 = String._bridgeToObjectiveC()();
  }

  v29 = v79;
  [v38 setText:v40];

  UIListContentConfiguration.text.setter();
  if (!v23(&v2[v22], 1, v6))
  {
    v42 = v2;
    v44 = v71;
    v43 = v72;
    (*(v72 + 16))(v71, &v42[v22], v24);
    v45 = TTREditSectionsViewModel.SectionItem.isEmptySection.getter();
    v46 = v43;
    v2 = v42;
    (*(v46 + 8))(v44, v24);
    if (v45)
    {
      v47 = *&v42[v25];
      v48 = objc_opt_self();
      v49 = v47;
      v50 = [v48 grayColor];
      [v49 setTextColor:v50];
    }
  }

  if (!v23(&v2[v22], 1, v24))
  {
    v51 = v2;
    v52 = v72;
    v53 = &v51[v22];
    v54 = v71;
    (*(v72 + 16))(v71, v53, v24);
    v55 = TTREditSectionsViewModel.SectionItem.canonicalName.getter();
    v57 = v56;
    (*(v52 + 8))(v54, v24);
    v2 = v51;
    if (v57)
    {
      v58 = [*&v51[v25] text];
      if (v58)
      {
        v59 = v58;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        if (v55 == v60 && v57 == v62)
        {

          goto LABEL_19;
        }

        v63 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v63)
        {
LABEL_19:

          v64 = [v51 contentView];
          v65 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField;
          v66 = *&v2[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField];
          sub_100003540(0, &qword_10076B020, UIView_ptr);
          v67 = v66;
          v68 = UIFocusEnvironment.contains(_:)();

          if (v68)
          {
            [*&v2[v65] removeFromSuperview];
            sub_100119D6C();
          }

          goto LABEL_4;
        }
      }

      v69 = static TTRLocalizableStrings.Sections.sectionsCanonicalName(name:)();

      [*&v51[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField] setAttributedText:v69];
    }
  }

LABEL_4:
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  static UIFont.roundedBodyFont.getter();
  v30 = UIListContentConfiguration.textProperties.modify();
  UIListContentConfiguration.TextProperties.font.setter();
  result = v30(v80, 0);
  v32 = *&v2[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_listContentView];
  if (v32)
  {
    v33 = v78;
    v81 = v78;
    v82 = &protocol witness table for UIListContentConfiguration;
    v34 = sub_1000317B8(v80);
    (*(v75 + 16))(v34, v29, v33);
    v35 = v32;
    UIListContentView.configuration.setter();

    v36 = [v2 contentView];
    [v36 directionalLayoutMargins];
    [v36 setDirectionalLayoutMargins:15.0];

    v37 = [v2 contentView];
    [v37 directionalLayoutMargins];
    [v37 setDirectionalLayoutMargins:?];

    return v76(v29, v33);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100119444()
{
  v1 = v0;
  v2 = type metadata accessor for UIListContentConfiguration();
  __chkstk_darwin(v2 - 8);
  sub_100003540(0, &qword_100785420, UIListContentView_ptr);
  static UIListContentConfiguration.cell()();
  v3 = UIListContentView.init(configuration:)();
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [v1 contentView];
  [v4 addSubview:v3];

  v5 = *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_listContentView];
  *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_listContentView] = v3;
  v6 = v3;

  v7 = objc_opt_self();
  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10062D450;
  v9 = [v6 topAnchor];
  v10 = [v1 contentView];
  v11 = [v10 topAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v8 + 32) = v12;
  v13 = [v6 leadingAnchor];
  v14 = [v1 contentView];
  v15 = [v14 leadingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v8 + 40) = v16;
  v17 = [v6 bottomAnchor];
  v18 = [v1 contentView];
  v19 = [v18 bottomAnchor];

  v20 = [v17 constraintEqualToAnchor:v19];
  *(v8 + 48) = v20;
  v21 = [v6 trailingAnchor];

  v22 = [v1 contentView];
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor:v23];
  *(v8 + 56) = v24;
  sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v68 = v7;
  [v7 activateConstraints:isa];

  v26 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField;
  v27 = *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField];
  sub_100003540(0, &qword_100771DF0, UIFont_ptr);
  v28 = v27;
  v29 = static UIFont.roundedBodyFont.getter();
  [v28 setFont:v29];

  [*&v1[v26] setClearButtonMode:1];
  [*&v1[v26] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v26] setAdjustsFontSizeToFitWidth:0];
  [*&v1[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v30 = [v1 contentView];
  [v30 addSubview:*&v1[v26]];

  v31 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField;
  [*&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField] setAdjustsFontForContentSizeCategory:1];
  [*&v1[v31] setAdjustsFontSizeToFitWidth:0];
  [*&v1[v31] setTranslatesAutoresizingMaskIntoConstraints:0];
  v32 = *&v1[v31];
  v33 = objc_opt_self();
  v34 = v32;
  v35 = [v33 grayColor];
  [v34 setTextColor:v35];

  v36 = [v1 contentView];
  [v36 addSubview:*&v1[v31]];

  v37 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints;
  if (*&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints])
  {

    v38 = Array._bridgeToObjectiveC()().super.isa;

    [v68 deactivateConstraints:v38];

    *&v1[v37] = 0;
  }

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1006308D0;
  v40 = [*&v1[v26] topAnchor];
  v41 = [v1 contentView];
  v42 = [v41 topAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:5.0];
  *(v39 + 32) = v43;
  v44 = [*&v1[v26] leadingAnchor];
  v45 = [v1 contentView];
  v46 = [v45 leadingAnchor];

  v47 = [v44 constraintEqualToAnchor:v46 constant:20.0];
  *(v39 + 40) = v47;
  v48 = [*&v1[v26] bottomAnchor];
  v49 = [*&v1[v31] topAnchor];
  v50 = [v48 constraintEqualToAnchor:v49];

  *(v39 + 48) = v50;
  v51 = [*&v1[v26] trailingAnchor];
  v52 = [v1 contentView];
  v53 = [v52 trailingAnchor];

  v54 = [v51 constraintEqualToAnchor:v53 constant:-10.0];
  *(v39 + 56) = v54;
  v55 = [*&v1[v31] leadingAnchor];
  v56 = [v1 contentView];
  v57 = [v56 leadingAnchor];

  v58 = [v55 constraintEqualToAnchor:v57 constant:20.0];
  *(v39 + 64) = v58;
  v59 = [v1 contentView];
  v60 = [v59 bottomAnchor];

  v61 = [*&v1[v31] bottomAnchor];
  v62 = [v60 constraintEqualToAnchor:v61 constant:5.0];

  *(v39 + 72) = v62;
  v63 = [*&v1[v31] trailingAnchor];
  v64 = [v1 contentView];
  v65 = [v64 trailingAnchor];

  v66 = [v63 constraintEqualToAnchor:v65 constant:-10.0];
  *(v39 + 80) = v66;
  *&v1[v37] = v39;

  v67 = Array._bridgeToObjectiveC()().super.isa;

  [v68 activateConstraints:v67];
}

uint64_t sub_100119D6C()
{
  v1 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints;
  if (*&v0[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints])
  {
    v2 = objc_opt_self();
    sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 deactivateConstraints:isa];

    *&v0[v1] = 0;
  }

  sub_100058000(&qword_10076B780, &qword_10062D7C0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10062D450;
  v5 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField;
  v6 = [*&v0[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField] topAnchor];
  v7 = [v0 contentView];
  v8 = [v7 topAnchor];

  v9 = [v6 constraintEqualToAnchor:v8 constant:5.0];
  *(v4 + 32) = v9;
  v10 = [*&v0[v5] leadingAnchor];
  v11 = [v0 contentView];
  v12 = [v11 leadingAnchor];

  v13 = [v10 constraintEqualToAnchor:v12 constant:20.0];
  *(v4 + 40) = v13;
  v14 = [*&v0[v5] bottomAnchor];
  v15 = [v0 contentView];
  v16 = [v15 bottomAnchor];

  v17 = [v14 constraintEqualToAnchor:v16 constant:-5.0];
  *(v4 + 48) = v17;
  v18 = [*&v0[v5] trailingAnchor];
  v19 = [v0 contentView];
  v20 = [v19 trailingAnchor];

  v21 = [v18 constraintEqualToAnchor:v20 constant:-10.0];
  *(v4 + 56) = v21;
  v22 = objc_opt_self();
  sub_100003540(0, &qword_10076BAD0, NSLayoutConstraint_ptr);
  v23 = Array._bridgeToObjectiveC()().super.isa;
  [v22 activateConstraints:v23];

  *&v0[v1] = v4;
}

uint64_t sub_10011A1D8()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v26 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100058000(&unk_10077C040, &unk_10063A210);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v26 - v9;
  v11 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(v0 + v11, v10);
  v27 = v3;
  v12 = *(v3 + 48);
  v13 = v12(v10, 1, v2);
  sub_1000079B4(v10, &unk_10077C040, &unk_10063A210);
  if (v13 == 1)
  {
    goto LABEL_4;
  }

  sub_10011B554(v0 + v11, v7);
  if (v12(v7, 1, v2) == 1)
  {
    sub_1000079B4(v7, &unk_10077C040, &unk_10063A210);
LABEL_4:
    v29.receiver = v0;
    v29.super_class = ObjectType;
    v14 = objc_msgSendSuper2(&v29, "accessibilityLabel");
    if (!v14)
    {
      return 0;
    }

    v15 = v14;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v16;
  }

  v17 = v2;
  v18 = v26;
  v19 = v27;
  (*(v27 + 32))(v26, v7, v17);
  sub_100058000(&qword_10076CA08, &qword_100630968);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10062D3F0;
  *(v20 + 32) = TTREditSectionsViewModel.SectionItem.displayName.getter();
  *(v20 + 40) = v21;
  if (TTREditSectionsViewModel.SectionItem.isEmptySection.getter())
  {
    v22 = static TTRAccesibility.Sections.EmptySection.getter();
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  *(v20 + 48) = v22;
  *(v20 + 56) = v23;
  v28 = v20;
  sub_100058000(&unk_1007853F0, &qword_100630970);
  sub_10000E188(&qword_10076CA10, &unk_1007853F0, &qword_100630970, &protocol conformance descriptor for [A]);
  v24 = Sequence.removingNils<A>()();

  v28 = v24;
  static TTRAccesibility.General.Label.Separator.getter();
  sub_100058000(&unk_100781F20, &unk_10062D7E0);
  sub_10000E188(&qword_100771E20, &unk_100781F20, &unk_10062D7E0, &protocol conformance descriptor for [A]);
  v16 = BidirectionalCollection<>.joined(separator:)();

  (*(v19 + 8))(v18, v17);
  return v16;
}

uint64_t sub_10011A5C4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100058000(&unk_10077C040, &unk_10063A210);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(v0 + v5, v4);
  v6 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1000079B4(v4, &unk_10077C040, &unk_10063A210);
  if (v5 == 1)
  {
    sub_10011A758();
    if (v7)
    {
      v8 = v7;
      if ([v7 isOn])
      {
        v9 = static TTRAccesibility.General.Label.On.getter();
      }

      else
      {
        v9 = static TTRAccesibility.General.Label.Off.getter();
      }

      goto LABEL_9;
    }
  }

  v14.receiver = v0;
  v14.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v14, "accessibilityValue");
  if (v10)
  {
    v8 = v10;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
LABEL_9:
    v11 = v9;

    return v11;
  }

  return 0;
}

void sub_10011A758()
{
  v27 = type metadata accessor for UICellAccessory.AccessoryType();
  v21 = *(v27 - 8);
  __chkstk_darwin(v27);
  v2 = (&v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for UICellAccessory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100058000(&unk_10077C040, &unk_10063A210);
  __chkstk_darwin(v7 - 8);
  v9 = &v21 - v8;
  v10 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(v0 + v10, v9);
  v11 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  LODWORD(v10) = (*(*(v11 - 8) + 48))(v9, 1, v11);
  sub_1000079B4(v9, &unk_10077C040, &unk_10063A210);
  if (v10 == 1)
  {
    v12 = UICollectionViewListCell.accessories.getter();
    v13 = v12;
    v26 = *(v12 + 16);
    if (v26)
    {
      v14 = 0;
      v25 = v12 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v23 = v4 + 8;
      v24 = v4 + 16;
      v15 = (v21 + 88);
      v22 = enum case for UICellAccessory.AccessoryType.customView(_:);
      v16 = (v21 + 8);
      v17 = (v21 + 96);
      while (v14 < *(v13 + 16))
      {
        (*(v4 + 16))(v6, v25 + *(v4 + 72) * v14, v3);
        UICellAccessory.accessoryType.getter();
        v18 = v27;
        (*(v4 + 8))(v6, v3);
        v19 = (*v15)(v2, v18);
        if (v19 == v22)
        {
          (*v17)(v2, v18);
          v20 = *v2;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {

            return;
          }
        }

        else
        {
          (*v16)(v2, v18);
        }

        if (v26 == ++v14)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
    }
  }
}

id sub_10011AAE4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id sub_10011AB64()
{
  ObjectType = swift_getObjectType();
  v2 = sub_100058000(&unk_10077C040, &unk_10063A210);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(v0 + v5, v4);
  v6 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  LODWORD(v5) = (*(*(v6 - 8) + 48))(v4, 1, v6);
  sub_1000079B4(v4, &unk_10077C040, &unk_10063A210);
  if (v5 != 1)
  {
    return static TTRAccesibility.General.Hint.Edit.getter();
  }

  v11.receiver = v0;
  v11.super_class = ObjectType;
  result = objc_msgSendSuper2(&v11, "accessibilityHint");
  if (result)
  {
    v8 = result;
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v9;
  }

  return result;
}

void sub_10011ACD0(void *a1, uint64_t a2, NSString a3, SEL *a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = a1;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v9 = a1;
  }

  v10.receiver = a1;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, *a4, a3);
}

void sub_10011AD6C()
{
  v1 = sub_100058000(&unk_10077C040, &unk_10063A210);
  __chkstk_darwin(v1 - 8);
  v3 = &v9 - v2;
  v4 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  swift_beginAccess();
  sub_10011B554(v0 + v4, v3);
  v5 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1000079B4(v3, &unk_10077C040, &unk_10063A210);
  if (v4 == 1)
  {
    sub_10011A758();
    if (v6)
    {
      v7 = v6;
      if (swift_unknownObjectWeakLoadStrong())
      {
        [v7 setOn:objc_msgSend(v7 animated:{"isOn") ^ 1, 1}];
        sub_100300560(v7);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v8 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField;
    if (([*(v0 + OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField) isEditing] & 1) == 0)
    {
      [*(v0 + v8) becomeFirstResponder];
      UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, *(v0 + v8));
    }
  }
}

id sub_10011AF5C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField;
  *&v4[v10] = [objc_allocWithZone(UITextField) init];
  v11 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField;
  *&v4[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_currentLayout;
  v13 = enum case for TTRRemindersListLayout.list(_:);
  v14 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v14 - 8) + 104))(&v4[v12], v13, v14);
  *&v4[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_accessibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  v16 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  (*(*(v16 - 8) + 56))(&v4[v15], 1, 1, v16);
  *&v4[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_listContentView] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_nameFields] = 0;
  *&v4[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints] = 0;
  v18.receiver = v4;
  v18.super_class = ObjectType;
  return objc_msgSendSuper2(&v18, "initWithFrame:", a1, a2, a3, a4);
}

id sub_10011B114(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_displayNameField;
  *&v1[v4] = [objc_allocWithZone(UITextField) init];
  v5 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_canonicalNameField;
  *&v1[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_currentLayout;
  v7 = enum case for TTRRemindersListLayout.list(_:);
  v8 = type metadata accessor for TTRRemindersListLayout();
  (*(*(v8 - 8) + 104))(&v1[v6], v7, v8);
  *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_accessibilityDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_viewModel;
  v10 = type metadata accessor for TTREditSectionsViewModel.SectionItem();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_listContentView] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_nameFields] = 0;
  *&v1[OBJC_IVAR____TtC9Reminders20TTRIEditSectionsCell_sectionCellConstraints] = 0;
  v13.receiver = v1;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, "initWithCoder:", a1);

  if (v11)
  {
  }

  return v11;
}

uint64_t type metadata accessor for TTRIEditSectionsCell(uint64_t a1)
{
  result = qword_10076C9E0;
  if (!qword_10076C9E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10011B40C(uint64_t a1)
{
  type metadata accessor for TTRRemindersListLayout();
  if (v1 <= 0x3F)
  {
    sub_10011B4FC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10011B4FC(uint64_t a1)
{
  if (!qword_10076C9F0)
  {
    type metadata accessor for TTREditSectionsViewModel.SectionItem();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_10076C9F0);
    }
  }
}

uint64_t sub_10011B554(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077C040, &unk_10063A210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011B5C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100058000(&unk_10077C040, &unk_10063A210);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_10011B634()
{
  result = qword_10076CA00;
  if (!qword_10076CA00)
  {
    type metadata accessor for TTREditSectionsViewModel.SectionItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10076CA00);
  }

  return result;
}

NSString sub_10011B68C()
{
  result = String._bridgeToObjectiveC()();
  qword_10076C980 = result;
  return result;
}

uint64_t sub_10011B6C4(uint64_t a1)
{
  type metadata accessor for TTRIQuickLookPreviewController();
  sub_100058000(&qword_100777790, &qword_100630978);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10062D400;
  (*(v3 + 16))(v5 + v4, a1, v2);
  return TTRIQuickLookPreviewController.__allocating_init(previewItemURLs:)();
}

uint64_t (*sub_10011B7B8(uint64_t a1, char a2))()
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  if (URL.isFileURL.getter() & 1) != 0 && (a2)
  {
    (*(v5 + 16))(&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
    v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v8 = swift_allocObject();
    (*(v5 + 32))(v8 + v7, &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    return sub_10011B9FC;
  }

  if (URL.isHTTPOrHTTPSURL.getter())
  {
    v11 = [objc_opt_self() sharedConnection];
    if (!v11 || (v12 = v11, v13 = [v11 effectiveBoolValueForSetting:MCFeatureSafariAllowed], v12, v13 != 2))
    {
      v14 = objc_opt_self();
      URL._bridgeToObjectiveC()(v15);
      v17 = v16;
      v18 = [v14 previewViewProviderForURL:v16 context:0];

      if (v18)
      {
        *(swift_allocObject() + 16) = v18;
        return sub_10011B9C4;
      }
    }
  }

  return 0;
}

id sub_10011B9C4()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t sub_10011B9FC()
{
  v1 = *(type metadata accessor for URL() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_10011B6C4(v2);
}

uint64_t sub_10011BAC4()
{
  v0 = type metadata accessor for Logger();
  sub_100003E68(v0, qword_10076CA18);
  v1 = sub_100003E30(v0, qword_10076CA18);
  if (qword_100767270 != -1)
  {
    swift_once();
  }

  v2 = sub_100003E30(v0, qword_1007A86A0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10011BB8C()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 312));
  if (v2 && (v3 = v2[13], v4 = v2[14], sub_10000C36C(v2 + 10, v3), v5 = *(v4 + 24), swift_unknownObjectRetain(), v6 = v5(v3, v4), swift_unknownObjectRelease(), (v6 & 1) != 0))
  {
    return 1;
  }

  else
  {
    return (*(*(v1 + 248) + 40))(*(v1 + 232)) & 1;
  }
}

void sub_10011BC80()
{
  v1 = *v0;
  v2 = *v0;
  v3 = type metadata accessor for TTRListToCustomSmartListConverterValidation();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v71 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v58 - v7;
  __chkstk_darwin(v9);
  v72 = (&v58 - v10);
  v11 = v1[31];
  v12 = v1[29];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __chkstk_darwin(AssociatedTypeWitness);
  v14 = *(v0 + v1[38]);
  if (v14)
  {
    v67 = v2;
    v68 = v4;
    v69 = v0;
    v70 = v3;
    v15 = *(v11 + 24);
    swift_unknownObjectRetain();
    v66 = v12;
    v15(v12, v11);
    v16 = sub_100003540(0, &qword_10076CAB0, REMListChangeItem_ptr);
    if (swift_dynamicCast())
    {
      v17 = aBlock;
      swift_getObjectType();
      v76 = v16;
      v77 = &protocol witness table for REMListChangeItem;
      aBlock = v17;
      v61 = v17;
      v18 = v72;
      v65 = v14;
      dispatch thunk of TTRListToCustomSmartListConverterType.prevalidate(list:)();
      sub_100004758(&aBlock);
      TTRListToCustomSmartListConverterValidation.alertTitleString.getter();
      TTRListToCustomSmartListConverterValidation.alertDetailString.getter();
      v19 = String._bridgeToObjectiveC()();

      v20 = String._bridgeToObjectiveC()();

      v21 = [objc_opt_self() alertControllerWithTitle:v19 message:v20 preferredStyle:1];

      v22 = v68;
      v23 = *(v68 + 16);
      v24 = v18;
      v25 = v70;
      v23(v8, v24, v70);
      v63 = *(v22 + 88);
      v64 = v22 + 88;
      v26 = v63(v8, v25);
      v62 = enum case for TTRListToCustomSmartListConverterValidation.ok(_:);
      if (v26 == enum case for TTRListToCustomSmartListConverterValidation.ok(_:))
      {
        v60 = v23;
        (*(v22 + 96))(v8, v25);
        v27 = *(v8 + 2);

        static TTRLocalizableStrings.Common.alertCancelButton.getter();
        v28 = String._bridgeToObjectiveC()();

        v58 = objc_opt_self();
        v29 = [v58 actionWithTitle:v28 style:1 handler:0];
        v59 = v29;

        [v21 addAction:v29];
        static TTRLocalizableStrings.ConvertToCustomSmartListAlert.makeConfirmButtonString.getter();
        v30 = swift_allocObject();
        swift_weakInit();
        v31 = swift_allocObject();
        v32 = v67;
        v31[2] = v66;
        v31[3] = v32[30];
        v31[4] = v11;
        v31[5] = v32[32];
        v31[6] = v30;
        v33 = v21;
        v34 = v61;
        v31[7] = v61;
        v31[8] = v27;
        v35 = v34;

        v36 = String._bridgeToObjectiveC()();

        v77 = sub_10011F360;
        v78 = v31;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_1001762CC;
        v76 = &unk_1007167D8;
        v37 = _Block_copy(&aBlock);

        v38 = [v58 actionWithTitle:v36 style:0 handler:v37];
        _Block_release(v37);

        [v33 addAction:v38];
        v39 = v34;
        v21 = v33;
        v25 = v70;
        v40 = v72;
      }

      else
      {
        v39 = v61;
        v40 = v72;
        if (v26 != enum case for TTRListToCustomSmartListConverterValidation.cannotConvertDefaultList(_:))
        {
          if (v26 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertSharedList(_:) || v26 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertLegacyLists(_:))
          {
            goto LABEL_23;
          }

          if (v26 != enum case for TTRListToCustomSmartListConverterValidation.defaultListInDifferentAccount(_:))
          {
            goto LABEL_36;
          }
        }

        v60 = v23;
        static TTRLocalizableStrings.Common.settingsButton.getter();
        v49 = String._bridgeToObjectiveC()();

        v77 = sub_10011CA1C;
        v78 = 0;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_1001762CC;
        v76 = &unk_100716760;
        v50 = _Block_copy(&aBlock);

        v38 = [objc_opt_self() actionWithTitle:v49 style:0 handler:v50];
        _Block_release(v50);

        [v21 addAction:v38];
      }

      v23 = v60;
LABEL_23:
      v51 = v71;
      v23(v71, v40, v25);
      v52 = v63(v51, v25);
      if (v52 == v62)
      {
        (*(v22 + 8))(v51, v25);
LABEL_30:
        sub_10000C36C((v69 + *(*v69 + 296)), *(v69 + *(*v69 + 296) + 24));
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v56 = Strong;
          v57 = [Strong navigationController];

          if (v57)
          {
            [v57 presentViewController:v21 animated:1 completion:0];

            swift_unknownObjectRelease();
            v21 = v57;
          }

          else
          {

            swift_unknownObjectRelease();
            v21 = v39;
          }
        }

        else
        {

          swift_unknownObjectRelease();
        }

        (*(v22 + 8))(v40, v25);
        return;
      }

      if (v52 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertDefaultList(_:) || v52 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertSharedList(_:) || v52 == enum case for TTRListToCustomSmartListConverterValidation.cannotConvertLegacyLists(_:) || v52 == enum case for TTRListToCustomSmartListConverterValidation.defaultListInDifferentAccount(_:))
      {
        static TTRLocalizableStrings.Common.alertOKButton.getter();
        v53 = String._bridgeToObjectiveC()();

        v54 = [objc_opt_self() actionWithTitle:v53 style:0 handler:0];

        [v21 addAction:v54];
        [v21 setPreferredAction:v54];

        goto LABEL_30;
      }

LABEL_36:
      _diagnoseUnexpectedEnumCase<A>(type:)();
      __break(1u);
      return;
    }

    if (qword_100766F30 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_100003E30(v45, qword_10076CA18);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "Attempted to convert a non list to a custom smart list", v48, 2u);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_100766F30 != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    sub_100003E30(v41, qword_10076CA18);
    v72 = Logger.logObject.getter();
    v42 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v72, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v72, v42, "Attempted to convert a list to a custom smart list with a nil converter", v43, 2u);
    }

    v44 = v72;
  }
}

void sub_10011C6DC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    if (qword_100766F30 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003E30(v13, qword_10076CA18);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    v15 = [a3 objectID];
    *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    *(inited + 48) = v15;
    v16 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_10011F2F8(inited + 32);
    sub_10000FD44("List Detail Convert List to Custom Smart List {objectID: %@}", 60, 2, v16);

    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      sub_10000C36C((v17 + 48), *(v17 + 72));
      sub_1000928BC();
      swift_unknownObjectRelease();
    }

    v18 = swift_allocObject();
    v18[2] = v12;
    v18[3] = a3;
    v18[4] = a4;
    v19 = *(a7 + 112);
    swift_unknownObjectRetain();

    v20 = a3;

    v21 = v19(sub_10011F374, v18, a5, a7);

    swift_unknownObjectRelease();
  }
}

uint64_t sub_10011C938(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1 + *(*a1 + 272);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v6 + 8);
    ObjectType = swift_getObjectType();
    v10 = [a2 objectID];
    (*(v8 + 24))(a1, &off_1007166F0, v10, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_10011CA1C()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    LSApplicationWorkspace.showDefaultListInSettings()();
  }
}

uint64_t sub_10011CA94()
{
  v1[12] = v0;
  v2 = *v0;
  v1[13] = *(*v0 + 248);
  v1[14] = *(v2 + 232);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[15] = AssociatedTypeWitness;
  v1[16] = *(AssociatedTypeWitness - 8);
  v1[17] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[18] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[19] = v5;
  v1[20] = v4;

  return _swift_task_switch(sub_10011CBCC, v5, v4);
}

uint64_t sub_10011CBCC()
{
  if (TTRListDetailPresenter.shouldPresentConfirmationAlertForRemovingExistingSections()())
  {
    v1 = (*(v0[13] + 32))(v0[14]);
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_10011CEE8;

    return sub_10011D298(v1 & 1);
  }

  else
  {

    (*(v0[13] + 24))(v0[14]);
    if (qword_100766F30 != -1)
    {
      swift_once();
    }

    v4 = v0[15];
    v5 = type metadata accessor for Logger();
    sub_100003E30(v5, qword_10076CA18);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v8 = (*(AssociatedConformanceWitness + 40))(v4, AssociatedConformanceWitness);
    *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    *(inited + 48) = v8;
    v9 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_10011F2F8(inited + 32);
    sub_10000FD44("List Detail Done {objectID: %@}", 31, 2, v9);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10000C36C((Strong + 48), *(Strong + 72));
      sub_1000928BC();
      swift_unknownObjectRelease();
    }

    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[15];
    v14 = sub_100177458(v0[14], v0[13]);
    sub_10011DABC(v14, v15);

    (*(v12 + 8))(v11, v13);

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10011CEE8(char a1)
{
  v2 = *v1;
  *(*v1 + 176) = a1;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);

  return _swift_task_switch(sub_10011D010, v4, v3);
}

uint64_t sub_10011D010()
{
  v1 = *(v0 + 176);

  if ((v1 - 2) >= 2)
  {
    if (v1)
    {
      TTRListDetailPresenter.removeExistingSections()();
    }

    (*(*(v0 + 104) + 24))(*(v0 + 112));
    if (qword_100766F30 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 120);
    v3 = type metadata accessor for Logger();
    sub_100003E30(v3, qword_10076CA18);
    sub_100058000(&unk_100775610, &unk_1006323A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10062D400;
    *(inited + 32) = 0x44497463656A626FLL;
    *(inited + 40) = 0xE800000000000000;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = (*(AssociatedConformanceWitness + 40))(v2, AssociatedConformanceWitness);
    *(inited + 72) = sub_100003540(0, &qword_10076BA50, REMObjectID_ptr);
    *(inited + 48) = v6;
    v7 = sub_100008E04(inited);
    swift_setDeallocating();
    sub_10011F2F8(inited + 32);
    sub_10000FD44("List Detail Done {objectID: %@}", 31, 2, v7);

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_10000C36C((Strong + 48), *(Strong + 72));
      sub_1000928BC();
      swift_unknownObjectRelease();
    }

    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 120);
    v12 = sub_100177458(*(v0 + 112), *(v0 + 104));
    sub_10011DABC(v12, v13);

    (*(v10 + 8))(v9, v11);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10011D298(char a1)
{
  *(v2 + 48) = v1;
  *(v2 + 172) = a1;
  *(v2 + 56) = *v1;
  *(v2 + 64) = type metadata accessor for TTRListDetailViewModel(0);
  *(v2 + 72) = swift_task_alloc();
  v3 = type metadata accessor for TTRRemindersListLayout();
  *(v2 + 80) = v3;
  *(v2 + 88) = *(v3 - 8);
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 120) = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 128) = v5;
  *(v2 + 136) = v4;

  return _swift_task_switch(sub_10011D400, v5, v4);
}

uint64_t sub_10011D400()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  TTRListDetailPresenter.viewModel.getter();
  v3 = *(v1 + *(v2 + 72));
  swift_unknownObjectRetain();
  sub_10011F838(v1, type metadata accessor for TTRListDetailViewModel);
  v4 = *(v0 + 112);
  if (v3)
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 80);
    v7 = *(v0 + 88);
    swift_getObjectType();
    dispatch thunk of TTRRemindersListDataModelSourceLayoutContextType.currentLayout.getter();
    swift_unknownObjectRelease();
    (*(v7 + 32))(v4, v5, v6);
    v8 = enum case for TTRRemindersListLayout.list(_:);
  }

  else
  {
    v8 = enum case for TTRRemindersListLayout.list(_:);
    (*(*(v0 + 88) + 104))(*(v0 + 112), enum case for TTRRemindersListLayout.list(_:), *(v0 + 80));
  }

  v10 = *(v0 + 88);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);
  (*(v10 + 16))(v9, *(v0 + 112), v11);
  v12 = (*(v10 + 88))(v9, v11);
  if (v12 == v8)
  {
    v13 = 0xD000000000000097;
    v14 = "List Detail Done {objectID: %@}";
    v15 = 0x636553207065654BLL;
    v16 = 0xEE003F736E6F6974;
LABEL_8:
    v17 = *(v0 + 112);
    v19 = *(v0 + 48);
    v18 = *(v0 + 56);
    v20 = *(v0 + 172);
    v21 = v14 | 0x8000000000000000;
    TTRLocalizedString(_:comment:)(*&v15, *&v13);
    _s15RemindersUICore21TTRLocalizableStringsO0A0E10ListDetailO031ConvertGroceryOrAutoCategorizede9ToRegularE5AlertO38keepExistingSectionConfirmationMessage10listLayout20shouldUseItemWordingSSAA012TTRReminderseU0O_SbtFZ_0(v17, v20);
    v22 = String._bridgeToObjectiveC()();

    v23 = String._bridgeToObjectiveC()();

    v24 = [objc_opt_self() alertControllerWithTitle:v22 message:v23 preferredStyle:1];
    *(v0 + 144) = v24;

    sub_10000C36C((v19 + *(*v19 + 296)), *(v19 + *(*v19 + 296) + 24));
    v25 = *(v18 + 248);
    *(v0 + 16) = *(v18 + 232);
    *(v0 + 32) = v25;
    v26 = type metadata accessor for TTRListDetailPresenter.ConvertGroceryListToRegularListConfirmationAlertResponse(255, v0 + 16);
    v27 = type metadata accessor for TTRIValueBasedAlertAction();
    type metadata accessor for _ContiguousArrayStorage();
    swift_allocObject();
    v28 = static Array._adoptStorage(_:count:)();
    v29._object = 0x8000000100672C50;
    v30._countAndFlagsBits = 1885693259;
    v30._object = 0xE400000000000000;
    v29._countAndFlagsBits = 0xD000000000000084;
    TTRLocalizedString(_:comment:)(v30, v29);
    *(v0 + 169) = 0;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v31._countAndFlagsBits = 0x65766F6D6552;
    v32._object = 0x8000000100672C50;
    v31._object = 0xE600000000000000;
    v32._countAndFlagsBits = 0xD000000000000084;
    TTRLocalizedString(_:comment:)(v31, v32);
    *(v0 + 170) = 1;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    static TTRLocalizableStrings.Common.alertCancelButton.getter();
    *(v0 + 171) = 2;
    TTRIValueBasedAlertAction.init(title:style:value:)();
    v33 = sub_10015D9FC(v28, v27);
    *(v0 + 152) = v33;
    v34 = swift_task_alloc();
    *(v0 + 160) = v34;
    *v34 = v0;
    v34[1] = sub_10011D8A8;

    return sub_1002D7498(v0 + 168, v24, v33, v26);
  }

  if (v12 == enum case for TTRRemindersListLayout.columns(_:))
  {
    v14 = "st to a regular list";
    v13 = 0xD000000000000096;
    v15 = 0x6C6F43207065654BLL;
    v16 = 0xED00003F736E6D75;
    goto LABEL_8;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}