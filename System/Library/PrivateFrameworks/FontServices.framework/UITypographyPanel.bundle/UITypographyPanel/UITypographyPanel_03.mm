uint64_t sub_34A08(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    v13 = 1;
    return v13 & 1;
  }

  v5 = 0;
  v17 = a2 & 0xFFFFFFFFFFFFFFLL;
  v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_59C60();
      v9 = v8;
      goto LABEL_15;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = v17;
      v7 = v16 + v5;
    }

    else
    {
      v6 = v15;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v6 = sub_59CB0();
      }

      v7 = (v6 + v5);
    }

    if ((*v7 & 0x80000000) == 0)
    {
LABEL_14:
      v9 = 1;
      goto LABEL_15;
    }

    v12 = (__clz(*v7 ^ 0xFF) - 24);
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }
    }

    else
    {
      if (v12 == 1)
      {
        goto LABEL_14;
      }

      v9 = 2;
    }

LABEL_15:
    if (qword_763E0 != -1)
    {
      swift_once();
    }

    v10 = sub_588D0();
    sub_F15C(v10, qword_77C58);
    v11 = sub_588C0();
    if (v11)
    {
      break;
    }

    v5 += v9;
  }

  while (v5 < v2);
  v13 = v11 ^ 1;
  return v13 & 1;
}

uint64_t sub_34BF0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_59C60();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = sub_59CB0();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_34D98(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = _swiftEmptyArrayStorage;
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_375C0(0, v8[2] + 1, 1);
          v8 = v19;
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_375C0((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        v8[2] = v13 + 1;
        v14 = &v8[2 * v13];
        v14[4] = v10;
        v14[5] = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_16:

    return v8;
  }

  return result;
}

unint64_t sub_34F10(uint64_t a1, const __CTFont *a2, const __CTFont *a3, uint64_t a4)
{
  type metadata accessor for CTFont(0);
  sub_39D78(&qword_713E8, type metadata accessor for CTFont, &unk_5EA80);
  v50 = a2;
  v53 = a3;
  if (sub_589E0())
  {
    goto LABEL_40;
  }

  v8 = *(a1 + 16);
  v9 = 100;
  if (v8 < 0x64)
  {
    v9 = *(a1 + 16);
  }

  v52 = v9;
  if (!v8)
  {
LABEL_40:
    v49 = 0x100000000;
LABEL_41:
    LOBYTE(v57) = BYTE4(v49) & 1;
    return v49 | ((BYTE4(v49) & 1) << 32);
  }

  v47 = a4;
  v48 = 0;
  v49 = 0x100000000;
  v10 = 0;
  v51 = a1 + 32;
  v56 = xmmword_5AB00;
  while (2)
  {
    v11 = *(v51 + 2 * v10);
    v12 = sub_187C(&qword_70CC0, &unk_5AEB0);
    v13 = swift_allocObject();
    *(v13 + 16) = v56;
    *(v13 + 32) = v11;
    v14 = sub_2A580(v13);

    v15 = sub_59AA0();
    v16 = v14[2];
    if (v16)
    {
      v54 = v12;
      v55 = v11;
      v17 = 0;
      do
      {
        v19 = v15 + 56;
        while (1)
        {
          v20 = *(v14 + v17++ + 16);
          v21 = sub_59EB0();
          v22 = -1 << *(v15 + 32);
          v23 = v21 & ~v22;
          if (((*(v19 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
          {
            break;
          }

          v24 = ~v22;
          while (*(*(v15 + 48) + 2 * v23) != v20)
          {
            v23 = (v23 + 1) & v24;
            if (((*(v19 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
            {
              goto LABEL_10;
            }
          }

          if (v17 == v16)
          {
            goto LABEL_18;
          }
        }

LABEL_10:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v57 = v15;
        sub_1B408(v20, v23, isUniquelyReferenced_nonNull_native);
        v15 = v57;
      }

      while (v17 != v16);
LABEL_18:

      v11 = v55;
    }

    else
    {
    }

    inited = swift_initStackObject();
    *(inited + 16) = v56;
    *(inited + 32) = v11;
    v26 = sub_38030(inited, v15);
    result = swift_setDeallocating();
    v28 = 0;
    v29 = 0;
    v30 = 1 << *(v26 + 32);
    while (1)
    {
      v31 = v26[v29 + 7];
      if (v31)
      {
        break;
      }

      ++v29;
      v28 -= 64;
      if ((v30 + 63) >> 6 == v29)
      {
LABEL_6:

        goto LABEL_7;
      }
    }

    v32 = __clz(__rbit64(v31));
    if (v32 - v30 == v28)
    {
      goto LABEL_6;
    }

    if (-v28 < 0 || (v33 = v32 - v28, v33 >= v30))
    {
      __break(1u);
    }

    else if ((v26[(v29 & 0x3FFFFFFFFFFFFFFLL) + 7] >> v32))
    {
      v34 = *(v26[6] + 2 * v33);

      if (v11 == v34)
      {
        goto LABEL_7;
      }

      PathForGlyph = CTFontCreatePathForGlyph(v50, v11, 0);
      if (!PathForGlyph)
      {
        goto LABEL_7;
      }

      v36 = PathForGlyph;
      v37 = CTFontCreatePathForGlyph(v53, v34, 0);
      if (!v37)
      {

        goto LABEL_7;
      }

      v38 = v37;
      type metadata accessor for CGPath(0);
      sub_39D78(&qword_719E8, type metadata accessor for CGPath, &unk_5DCB4);
      if (sub_589E0())
      {

        goto LABEL_7;
      }

      v39 = sub_53CCC();

      if (!v39)
      {
        goto LABEL_7;
      }

      v40 = sub_2A980(v11);
      if (!v41 || (v42 = v41, __chkstk_darwin(v40), v43 = v48, v46[2] = v47, v45 = sub_34BF0(sub_39ED8, v46, v44, v42), v48 = v43, , (v45 & 1) == 0))
      {
        if ((v49 & 0x100000000) != 0)
        {
          v49 = v11 | (v34 << 16);
        }

        else
        {
          HIDWORD(v49) = 0;
        }

LABEL_7:
        if (++v10 == v52)
        {
          goto LABEL_41;
        }

        continue;
      }

      v49 = v11 | (v34 << 16);
      goto LABEL_41;
    }

    break;
  }

  __break(1u);
  return result;
}

Swift::Int sub_353A8()
{
  v1 = *(v0 + 24);
  v2 = sub_59ED0();
  sub_D600(v2, v3, v4);
  sub_59880();
  sub_59EE0(v1);
  return sub_59F10();
}

void sub_3542C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 24);
  sub_D600(a1, a2, a3);
  sub_59880();
  sub_59EE0(v4);
}

Swift::Int sub_35498(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = sub_59ED0();
  sub_D600(v3, v4, v5);
  sub_59880();
  sub_59EE0(v2);
  return sub_59F10();
}

uint64_t sub_35518(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a2 + 24);
  return sub_7414(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)) & (v2 == v3);
}

uint64_t sub_35570@<X0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v58 = a4;
  v59 = a3;
  v52 = a1;
  v6 = sub_187C(&qword_717D0, qword_5DA30);
  __chkstk_darwin(v6 - 8);
  v53 = &v47 - v7;
  v8 = sub_187C(&qword_717B8, &unk_5DA18);
  __chkstk_darwin(v8 - 8);
  v50 = &v47 - v9;
  v10 = sub_187C(&qword_71078, &qword_5C378);
  __chkstk_darwin(v10 - 8);
  v12 = &v47 - v11;
  v13 = type metadata accessor for FeaturePreviewConfiguration(0);
  v56 = *(v13 - 8);
  v57 = v13;
  __chkstk_darwin(v13);
  v48 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  v55 = *(v51 - 8);
  v15 = __chkstk_darwin(v51);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = &v47 - v19;
  __chkstk_darwin(v18);
  v22 = &v47 - v21;
  v23 = *a2;
  v24 = *(a2 + 8);
  v25 = *(a2 + 16);
  swift_beginAccess();
  v54 = v4;
  v26 = *(v4 + 16);
  v27 = *(v26 + 16);
  sub_B4D0(v23, v24, v25);
  if (v27 && (v28 = sub_373D8(v23, v24, v25, v59), (v29 & 1) != 0))
  {
    sub_39694(*(v26 + 56) + *(v55 + 72) * v28, v20, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    sub_396FC(v20, v22, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    swift_endAccess();
    sub_EAAC(v23, v24, v25);
    sub_396FC(v22, v17, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    v31 = v56;
    v30 = v57;
    if ((*(v56 + 48))(v17, 1, v57) == 1)
    {
      return (*(v31 + 56))(v58, 1, 1, v30);
    }

    else
    {
      v46 = v58;
      sub_396FC(v17, v58, type metadata accessor for FeaturePreviewConfiguration);
      return (*(v31 + 56))(v46, 0, 1, v30);
    }
  }

  else
  {
    v33 = v23;
    v49 = v25;
    swift_endAccess();
    v34 = sub_588D0();
    v35 = v50;
    (*(*(v34 - 8) + 56))(v50, 1, 1, v34);
    v36 = v52;
    sub_E9C0(a2, v60);
    v37 = v59;
    sub_31D58(v36, a2, v59, v35, 0, 1, 2, v12);
    v39 = v56;
    v38 = v57;
    if ((*(v56 + 48))(v12, 1, v57) == 1)
    {
      sub_6678(v12, &qword_71078, &qword_5C378);
      v40 = *(v39 + 56);
      v41 = v53;
      v40(v53, 1, 1, v38);
      (*(v55 + 56))(v41, 0, 1, v51);
      swift_beginAccess();
      sub_35BA0(v41, v23, v24, v49, v37);
      swift_endAccess();
      return (v40)(v58, 1, 1, v38);
    }

    else
    {
      v42 = v48;
      sub_396FC(v12, v48, type metadata accessor for FeaturePreviewConfiguration);
      v43 = v53;
      sub_39694(v42, v53, type metadata accessor for FeaturePreviewConfiguration);
      v44 = *(v39 + 56);
      v44(v43, 0, 1, v38);
      (*(v55 + 56))(v43, 0, 1, v51);
      swift_beginAccess();
      sub_35BA0(v43, v33, v24, v49, v37);
      swift_endAccess();
      v45 = v58;
      sub_396FC(v42, v58, type metadata accessor for FeaturePreviewConfiguration);
      return (v44)(v45, 0, 1, v38);
    }
  }
}

uint64_t sub_35BA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, Swift::UInt a5)
{
  v11 = sub_187C(&qword_717D0, qword_5DA30);
  __chkstk_darwin(v11 - 8);
  v13 = &v20[-v12];
  v14 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  __chkstk_darwin(v14);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*(v17 + 48))(a1, 1) == 1)
  {
    sub_6678(a1, &qword_717D0, qword_5DA30);
    sub_38534(a2, a3, a4 & 1, a5, v13);
    sub_EAAC(a2, a3, a4 & 1);
    return sub_6678(v13, &qword_717D0, qword_5DA30);
  }

  else
  {
    sub_396FC(a1, v16, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v5;
    sub_38C9C(v16, a2, a3, a4 & 1, a5, isUniquelyReferenced_nonNull_native);
    result = sub_EAAC(a2, a3, a4 & 1);
    *v5 = v21;
  }

  return result;
}

uint64_t sub_35DA4(void *a1, uint64_t a2)
{
  v108 = a1;
  v3 = sub_187C(&qword_717B8, &unk_5DA18);
  __chkstk_darwin(v3 - 8);
  v107 = &v95 - v4;
  v5 = type metadata accessor for FeaturePreviewConfiguration(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v104 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  v110 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v106 = &v95 - v13;
  v14 = __chkstk_darwin(v12);
  v99 = &v95 - v15;
  v16 = __chkstk_darwin(v14);
  v105 = &v95 - v17;
  v18 = __chkstk_darwin(v16);
  v98 = &v95 - v19;
  __chkstk_darwin(v18);
  v96 = &v95 - v20;
  v21 = sub_187C(&qword_71078, &qword_5C378);
  v22 = __chkstk_darwin(v21 - 8);
  __chkstk_darwin(v22);
  v25 = *(a2 + 48);
  v26 = *(v25 + 16);
  if (!v26)
  {
    return 0;
  }

  v103 = v24;
  v95 = v11;
  v116 = (v6 + 48);
  v114 = (v6 + 56);
  v27 = (v25 + 48);
  v102 = v5;
  v97 = a2;
  v109 = &v95 - v23;
  while (1)
  {
    v115 = v26;
    v30 = *(v27 - 2);
    v31 = *v27;
    v33 = *a2;
    v32 = *(a2 + 8);
    v34 = a2;
    v35 = *(a2 + 16);
    v36 = v118;
    swift_beginAccess();
    v37 = *(v36 + 16);
    v38 = *(v37 + 16);

    v112 = v116 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (!v38)
    {
      break;
    }

    v39 = sub_373D8(v33, v32, v35, v30);
    if ((v40 & 1) == 0)
    {
      break;
    }

    v41 = v96;
    sub_39694(*(v37 + 56) + *(v110 + 72) * v39, v96, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    swift_endAccess();

    v42 = v41;
    v43 = v95;
    sub_396FC(v42, v95, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    v29 = *v116;
    if ((*v116)(v43, 1, v5) == 1)
    {
      v28 = v109;
      (*v114)(v109, 1, 1, v5);
    }

    else
    {
      v92 = v43;
      v28 = v109;
      sub_396FC(v92, v109, type metadata accessor for FeaturePreviewConfiguration);
      (*v114)(v28, 0, 1, v5);
    }

    a2 = v34;
LABEL_5:
    if (v29(v28, 1, v5) != 1)
    {
      sub_6678(v28, &qword_71078, &qword_5C378);
      return 1;
    }

LABEL_6:
    sub_6678(v28, &qword_71078, &qword_5C378);
    v27 += 4;
    v26 = v115 - 1;
    if (v115 == 1)
    {
      return 0;
    }
  }

  v117 = v33;
  v113 = v35;
  v111 = v31;
  swift_endAccess();
  v44 = sub_588D0();
  v45 = v107;
  (*(*(v44 - 8) + 56))(v107, 1, 1, v44);
  v46 = v108;
  a2 = v34;
  sub_E9C0(v34, v120);
  v47 = v103;
  sub_31D58(v46, v34, v30, v45, 0, 1, 2, v103);
  v48 = *v116;
  v49 = v30;
  if ((*v116)(v47, 1, v5) == 1)
  {
    sub_6678(v47, &qword_71078, &qword_5C378);
    v50 = *v114;
    v51 = v99;
    (*v114)(v99, 1, 1, v5);
    v52 = v118;
    swift_beginAccess();
    sub_396FC(v51, v106, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v119 = *(v52 + 16);
    v54 = v119;
    *(v52 + 16) = 0x8000000000000000;
    v55 = v32;
    v56 = v32;
    v57 = v113;
    v58 = sub_373D8(v117, v56, v113, v49);
    v60 = v54[2];
    v61 = (v59 & 1) == 0;
    v62 = __OFADD__(v60, v61);
    v63 = v60 + v61;
    if (v62)
    {
      goto LABEL_38;
    }

    v64 = v59;
    if (v54[3] >= v63)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v93 = v58;
        sub_38EF8();
        v58 = v93;
      }

      v65 = v117;
      v67 = v119;
      if (v64)
      {
LABEL_16:
        sub_39764(v106, v67[7] + *(v110 + 72) * v58);
LABEL_27:
        *(v118 + 16) = v67;

        swift_endAccess();

        v28 = v109;
        v5 = v102;
        v50(v109, 1, 1, v102);
        goto LABEL_6;
      }
    }

    else
    {
      sub_386A8(v63, isUniquelyReferenced_nonNull_native);
      v65 = v117;
      v58 = sub_373D8(v117, v55, v57, v49);
      if ((v64 & 1) != (v66 & 1))
      {
        goto LABEL_41;
      }

      v67 = v119;
      if (v64)
      {
        goto LABEL_16;
      }
    }

    v67[(v58 >> 6) + 8] |= 1 << v58;
    v85 = v67[6] + 32 * v58;
    *v85 = v65;
    *(v85 + 8) = v55;
    *(v85 + 16) = v57;
    *(v85 + 24) = v49;
    sub_396FC(v106, v67[7] + *(v110 + 72) * v58, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    v86 = v67[2];
    v62 = __OFADD__(v86, 1);
    v87 = v86 + 1;
    if (v62)
    {
      goto LABEL_40;
    }

    v67[2] = v87;
    sub_B4D0(v65, v55, v57);
    goto LABEL_27;
  }

  v101 = v48;
  v68 = v104;
  sub_396FC(v47, v104, type metadata accessor for FeaturePreviewConfiguration);
  v69 = v68;
  v70 = v98;
  sub_39694(v69, v98, type metadata accessor for FeaturePreviewConfiguration);
  v100 = *v114;
  v100(v70, 0, 1, v5);
  v71 = v118;
  swift_beginAccess();
  sub_396FC(v70, v105, type metadata accessor for FeaturePreviewConfigurationCache.Value);
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *(v71 + 16);
  v73 = v119;
  *(v71 + 16) = 0x8000000000000000;
  v74 = v32;
  v76 = sub_373D8(v117, v32, v113, v30);
  v77 = v73[2];
  v78 = (v75 & 1) == 0;
  v79 = v77 + v78;
  if (!__OFADD__(v77, v78))
  {
    v80 = v75;
    if (v73[3] >= v79)
    {
      if ((v72 & 1) == 0)
      {
        sub_38EF8();
      }

      v81 = v117;
      v84 = v119;
      if ((v80 & 1) == 0)
      {
LABEL_31:
        v84[(v76 >> 6) + 8] |= 1 << v76;
        v88 = v84[6] + 32 * v76;
        *v88 = v81;
        *(v88 + 8) = v74;
        v89 = v113;
        *(v88 + 16) = v113;
        *(v88 + 24) = v49;
        sub_396FC(v105, v84[7] + *(v110 + 72) * v76, type metadata accessor for FeaturePreviewConfigurationCache.Value);
        v90 = v84[2];
        v62 = __OFADD__(v90, 1);
        v91 = v90 + 1;
        if (v62)
        {
          goto LABEL_39;
        }

        v84[2] = v91;
        sub_B4D0(v81, v74, v89);
        goto LABEL_4;
      }
    }

    else
    {
      sub_386A8(v79, v72);
      v81 = v117;
      v82 = sub_373D8(v117, v74, v113, v49);
      if ((v80 & 1) != (v83 & 1))
      {
        goto LABEL_41;
      }

      v76 = v82;
      v84 = v119;
      if ((v80 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    sub_39764(v105, v84[7] + *(v110 + 72) * v76);
LABEL_4:
    *(v71 + 16) = v84;

    swift_endAccess();

    v28 = v109;
    sub_396FC(v104, v109, type metadata accessor for FeaturePreviewConfiguration);
    v5 = v102;
    v100(v28, 0, 1, v102);
    a2 = v97;
    v29 = v101;
    goto LABEL_5;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_59EA0();
  __break(1u);
  return result;
}

uint64_t sub_36890()
{
  v1 = sub_3942C(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *(v0 + 16) = v1;
}

uint64_t sub_36904()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_3693C()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_3942C(_swiftEmptyArrayStorage);
  return v0;
}

uint64_t sub_369A8()
{
  v0 = sub_588D0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_F9D4(v2, qword_763F0);
  v5 = sub_F15C(v0, qword_763F0);
  sub_39D78(&qword_719F8, &type metadata accessor for CharacterSet, &protocol conformance descriptor for CharacterSet);
  sub_59B80();
  v7[2] = 48;
  sub_59B70();
  return (*(v1 + 32))(v5, v4, v0);
}

uint64_t sub_36B3C(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = sub_588D0();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v16 - v11;
  sub_F9D4(v10, a2);
  sub_F15C(v5, a2);
  a3();
  if (qword_763E8 != -1)
  {
    swift_once();
  }

  v13 = sub_F15C(v5, qword_763F0);
  (*(v6 + 16))(v9, v13, v5);
  sub_58870();
  v14 = *(v6 + 8);
  v14(v9, v5);
  return (v14)(v12, v5);
}

uint64_t sub_36CC8()
{
  v0 = sub_588D0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v2);
  v7 = &v11 - v6;
  sub_F9D4(v5, qword_76450);
  sub_F15C(v0, qword_76450);
  if (qword_76428 != -1)
  {
    swift_once();
  }

  v8 = sub_F15C(v0, qword_76430);
  (*(v1 + 16))(v7, v8, v0);
  sub_588B0();
  sub_588A0();
  v9 = *(v1 + 8);
  v9(v4, v0);
  return (v9)(v7, v0);
}

uint64_t sub_36E98(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  v9 = sub_588D0();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v24 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v24 - v18;
  sub_F9D4(v17, a2);
  sub_F15C(v9, a2);
  v20 = a3();
  a4(v20);
  sub_588A0();
  v21 = *(v10 + 8);
  v21(v13, v9);
  v22 = (v21)(v16, v9);
  a5(v22);
  sub_588A0();
  v21(v16, v9);
  return (v21)(v19, v9);
}

uint64_t sub_37050(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2A980(*a1);
  if (v5)
  {
    v6 = v5;
    __chkstk_darwin(v4);
    v10[2] = a3;
    v8 = sub_34BF0(sub_39FB8, v10, v7, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_37104(unsigned int *a1, uint64_t a2)
{
  v3 = sub_187C(&qword_717B8, &unk_5DA18);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  sub_6610(a2, &v10 - v4, &qword_717B8, &unk_5DA18);
  v6 = sub_588D0();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_6678(v5, &qword_717B8, &unk_5DA18);
    v8 = 1;
  }

  else
  {
    v8 = sub_588C0();
    (*(v7 + 8))(v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_3724C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_589E0();
}

Swift::Int sub_37374(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_59ED0();
  swift_getWitnessTable();
  sub_589F0();
  return sub_59F10();
}

unint64_t sub_373D8(uint64_t a1, uint64_t a2, char a3, Swift::UInt a4)
{
  v8 = sub_59ED0();
  sub_D600(v8, v9, v10);
  sub_59880();
  sub_59EE0(a4);
  v11 = sub_59F10();
  return sub_37488(a1, a2, a3 & 1, a4, v11);
}

unint64_t sub_37488(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    do
    {
      v10 = *(v5 + 48) + 32 * v7;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      sub_B4D0(*v10, v12, v13);
      v15 = sub_7414(v11, v12, v13, a1, a2, a3 & 1);
      sub_EAAC(v11, v12, v13);
      if ((v15 & (v14 == a4)) == 1)
      {
        break;
      }

      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

char *sub_375A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_375E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_375C0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_376EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_375E0(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_70E58, qword_5D880);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_376EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_719E0, &qword_5DBF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

char *sub_377F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_187C(&qword_719E0, &qword_5DBF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

uint64_t sub_37904(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    __chkstk_darwin(isStackAllocationSafe);
    bzero(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_37B58(&v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_37AC8(v11, v6, a2, a1);
  }

  return v9;
}

void *sub_37AC8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_37B58(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_37B58(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 2 * v31);
      result = sub_59EB0();
      v33 = -1 << *(a4 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(a4 + 48) + 2 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_37E40(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = 0;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 2 * (v12 | (v6 << 6)));
      result = sub_59EB0();
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 2 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 2 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(a4 + 56 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_37E40(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_187C(&qword_70CF8, &qword_5AED0);
  result = sub_59C40();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 2 * (v13 | (v11 << 6)));
    result = sub_59EB0();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 2 * v20) = v16;
    ++*(v9 + 2);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_38030(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (*(a2 + 16))
  {
    v31[0] = a1;
    v28 = *(a1 + 16);
    if (v28)
    {
      v4 = 0;
      v5 = a2 + 56;
      v29 = *(a2 + 40);
      v30 = a1 + 32;
      v27 = -1 << *(a2 + 32);
      v6 = ~v27;
      while (1)
      {
        v7 = *(v30 + 2 * v4++);
        v8 = sub_59EB0();
        v9 = v8 & v6;
        v10 = (v8 & v6) >> 6;
        v11 = 1 << (v8 & v6);
        if ((v11 & *(v5 + 8 * v10)) != 0)
        {
          break;
        }

LABEL_4:
        if (v4 == v28)
        {
          return v2;
        }
      }

      while (*(v2[6] + 2 * v9) != v7)
      {
        v9 = (v9 + 1) & v6;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & *(v5 + 8 * (v9 >> 6))) == 0)
        {
          goto LABEL_4;
        }
      }

      v31[1] = v4;
      v12 = (63 - v27) >> 6;
      v13 = 8 * v12;
      if (v12 > 0x80)
      {
        goto LABEL_29;
      }

      {
        v28 = v12;
        v29 = &v27;
        __chkstk_darwin(i);
        v9 = &v27 - v15;
        memcpy(&v27 - v15, v2 + 7, v13);
        v16 = v2[2];
        *(v9 + 8 * v10) &= ~v11;
        v13 = v16 - 1;
        v17 = *(a1 + 16);
        if (v4 == v17)
        {
          break;
        }

        v10 = v2[5];
        v12 = ~(-1 << *(v2 + 32));
        while (v4 < v17)
        {
          v11 = *(v30 + 2 * v4);
          v19 = sub_59EB0();
          v20 = v19 & v12;
          v21 = (v19 & v12) >> 6;
          v22 = 1 << (v19 & v12);
          if ((v22 & *(v5 + 8 * v21)) != 0)
          {
            while (*(v2[6] + 2 * v20) != v11)
            {
              v20 = (v20 + 1) & v12;
              v21 = v20 >> 6;
              v22 = 1 << v20;
              if (((1 << v20) & *(v5 + 8 * (v20 >> 6))) == 0)
              {
                goto LABEL_17;
              }
            }

            v23 = *(v9 + 8 * v21);
            *(v9 + 8 * v21) = v23 & ~v22;
            if ((v23 & v22) != 0)
            {
              if (__OFSUB__(v13--, 1))
              {
                goto LABEL_28;
              }

              if (!v13)
              {

                v2 = &_swiftEmptySetSingleton;
                goto LABEL_14;
              }
            }
          }

LABEL_17:
          ++v4;
          v17 = *(a1 + 16);
          if (v4 == v17)
          {
            goto LABEL_13;
          }
        }

        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:

        if (!swift_stdlib_isStackAllocationSafe())
        {
          v25 = swift_slowAlloc();
          memcpy(v25, v2 + 7, v13);
          v26 = sub_383B0(v25, v12, v2, v9, v31);

          return v26;
        }
      }

LABEL_13:
      v2 = sub_37E40(v9, v28, v13, v2);
LABEL_14:
    }
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v2;
}

uint64_t sub_383B0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = result;
  v8 = *(a3 + 16);
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = *a5;
  v11 = a5[1];
  v12 = *(*a5 + 16);
  if (v11 == v12)
  {
LABEL_2:

    return sub_37E40(v7, a2, v9, a3);
  }

  else
  {
    v14 = a3 + 56;
    while ((v11 & 0x8000000000000000) == 0)
    {
      if (v11 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v10 + 2 * v11 + 32);
      a5[1] = v11 + 1;
      result = sub_59EB0();
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 2 * v17) == v15)
        {
LABEL_12:
          v22 = v7[v18];
          v7[v18] = v22 & ~v19;
          if ((v22 & v19) != 0)
          {
            if (__OFSUB__(v9--, 1))
            {
              goto LABEL_18;
            }

            if (!v9)
            {
              return &_swiftEmptySetSingleton;
            }
          }
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v14 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 2 * v17) == v15)
            {
              goto LABEL_12;
            }
          }
        }
      }

      v10 = *a5;
      v11 = a5[1];
      v12 = *(*a5 + 16);
      if (v11 == v12)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t sub_38534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, Swift::UInt a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = sub_373D8(a1, a2, a3 & 1, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v22 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_38EF8();
      v12 = v22;
    }

    sub_EAAC(*(*(v12 + 48) + 32 * v10), *(*(v12 + 48) + 32 * v10 + 8), *(*(v12 + 48) + 32 * v10 + 16));
    v13 = *(v12 + 56);
    v14 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
    v21 = *(v14 - 8);
    sub_396FC(v13 + *(v21 + 72) * v10, a5, type metadata accessor for FeaturePreviewConfigurationCache.Value);
    sub_38A5C(v10, v12);
    *v6 = v12;
    v15 = *(v21 + 56);
    v16 = a5;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a5;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_386A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_187C(&qword_719D0, &qword_5DBE8);
  v44 = v4;
  result = sub_59D50();
  v9 = result;
  if (*(v7 + 16))
  {
    v41 = v2;
    v42 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v20 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v23 = v20 | (v10 << 6);
      v24 = *(v7 + 56);
      v25 = *(v7 + 48) + 32 * v23;
      v27 = *v25;
      v26 = *(v25 + 8);
      v28 = *(v25 + 16);
      v47 = *(v25 + 24);
      v45 = *(v43 + 72);
      v29 = v24 + v45 * v23;
      if (v44)
      {
        sub_396FC(v29, v46, type metadata accessor for FeaturePreviewConfigurationCache.Value);
      }

      else
      {
        sub_39694(v29, v46, type metadata accessor for FeaturePreviewConfigurationCache.Value);
        sub_B4D0(v27, v26, v28);
      }

      v30 = sub_59ED0();
      v48 = v27;
      v49 = v26;
      v50 = v28;
      sub_D600(v30, v31, v32);
      sub_59880();
      sub_59EE0(v47);
      result = sub_59F10();
      v33 = -1 << *(v9 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v16 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v16 + 8 * v35);
          if (v39 != -1)
          {
            v17 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v34) & ~*(v16 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = *(v9 + 48) + 32 * v17;
      *v18 = v27;
      *(v18 + 8) = v26;
      *(v18 + 16) = v28;
      v19 = v46;
      *(v18 + 24) = v47;
      result = sub_396FC(v19, *(v9 + 56) + v45 * v17, type metadata accessor for FeaturePreviewConfigurationCache.Value);
      ++*(v9 + 16);
      v7 = v42;
    }

    v21 = v10;
    while (1)
    {
      v10 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v22 = v11[v10];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v14 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v7 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v11, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v40;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_38A5C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_59BA0() + 1) & ~v5;
    v34 = v4;
    while (1)
    {
      v9 = *(a2 + 48) + 32 * v6;
      v10 = v7;
      v11 = *v9;
      v12 = *(v9 + 8);
      v13 = *(v9 + 16);
      v14 = *(v9 + 24);
      sub_59ED0();
      v15 = sub_B4D0(v11, v12, v13);
      sub_D600(v15, v16, v17);
      sub_59880();
      sub_59EE0(v14);
      v18 = sub_59F10();
      v19 = v11;
      v7 = v10;
      result = sub_EAAC(v19, v12, v13);
      v20 = v18 & v10;
      if (v3 >= v8)
      {
        break;
      }

      if (v20 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v21 = *(a2 + 48);
      v22 = (v21 + 32 * v3);
      v23 = (v21 + 32 * v6);
      if (v3 != v6 || v22 >= v23 + 2)
      {
        v24 = v23[1];
        *v22 = *v23;
        v22[1] = v24;
      }

      v25 = *(a2 + 56);
      v26 = *(*(type metadata accessor for FeaturePreviewConfigurationCache.Value(0) - 8) + 72);
      v27 = v26 * v3;
      result = v25 + v26 * v3;
      v28 = v26 * v6;
      v29 = v25 + v26 * v6 + v26;
      if (v27 >= v28 && result < v29)
      {
        v3 = v6;
        v4 = v34;
        if (v27 != v28)
        {
          result = swift_arrayInitWithTakeBackToFront();
          v3 = v6;
        }

        goto LABEL_5;
      }

      result = swift_arrayInitWithTakeFrontToBack();
      v3 = v6;
LABEL_4:
      v4 = v34;
LABEL_5:
      v6 = (v6 + 1) & v10;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v20 < v8)
    {
      goto LABEL_4;
    }

LABEL_10:
    if (v3 < v20)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v31 = *(a2 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v33;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_38C9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, Swift::UInt a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v16 = sub_373D8(a2, a3, a4 & 1, a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 >= v19 && (a6 & 1) == 0)
    {
      sub_38EF8();
      goto LABEL_7;
    }

    sub_386A8(v19, a6 & 1);
    v26 = sub_373D8(a2, a3, a4 & 1, a5);
    if ((v20 & 1) == (v27 & 1))
    {
      v16 = v26;
      v22 = *v7;
      if (v20)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_59EA0();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v7;
  if (v20)
  {
LABEL_8:
    v23 = v22[7];
    v24 = v23 + *(*(type metadata accessor for FeaturePreviewConfigurationCache.Value(0) - 8) + 72) * v16;

    return sub_39764(a1, v24);
  }

LABEL_13:
  sub_38E40(v16, a2, a3, a4 & 1, a5, a1, v22);

  return sub_B4D0(a2, a3, a4 & 1);
}

uint64_t sub_38E40(unint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a7[6] + 32 * a1;
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4 & 1;
  *(v10 + 24) = a5;
  v11 = a7[7];
  v12 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  result = sub_396FC(a6, v11 + *(*(v12 - 8) + 72) * a1, type metadata accessor for FeaturePreviewConfigurationCache.Value);
  v14 = a7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v16;
  }

  return result;
}

char *sub_38EF8()
{
  v1 = v0;
  v2 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  v37 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v36 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_187C(&qword_719D0, &qword_5DBE8);
  v4 = *v0;
  v5 = sub_59D40();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v38 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 32 * v19;
        v21 = *(v4 + 56);
        v22 = *(v4 + 48) + 32 * v19;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 24);
        v27 = v36;
        v28 = *(v37 + 72) * v19;
        sub_39694(v21 + v28, v36, type metadata accessor for FeaturePreviewConfigurationCache.Value);
        v29 = v38;
        v30 = *(v38 + 48) + v20;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 24) = v26;
        v31 = *(v29 + 56) + v28;
        v4 = v35;
        sub_396FC(v27, v31, type metadata accessor for FeaturePreviewConfigurationCache.Value);
        result = sub_B4D0(v23, v24, v25);
        v14 = v39;
      }

      while (v39);
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

        v1 = v33;
        v6 = v38;
        goto LABEL_18;
      }

      v18 = *(v34 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_39170(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_59AA0();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_134D4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_39200()
{
  result = qword_717C8;
  if (!qword_717C8)
  {
    sub_1F64(&qword_717C0, &qword_5DA28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_717C8);
  }

  return result;
}

uint64_t sub_39264(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = sub_59940();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_39300(uint64_t a1)
{
  v2 = type metadata accessor for FeaturePreviewConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3935C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5[2] = *(v1 + 16);
  return sub_34BF0(sub_39FB8, v5, v2, v3) & 1;
}

uint64_t sub_393A4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_393B8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_59AA0();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1B0F8(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_3942C(uint64_t a1)
{
  v2 = sub_187C(&qword_719D8, &qword_5DBF0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_187C(&qword_719D0, &qword_5DBE8);
    v7 = sub_59D60();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v24 = *(v3 + 72);
    v25 = v8;

    while (1)
    {
      sub_6610(v9, v5, &qword_719D8, &qword_5DBF0);
      v10 = *v5;
      v11 = *(v5 + 1);
      v12 = v5[16];
      v13 = *(v5 + 3);
      result = sub_373D8(*v5, v11, v12, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = v7[6] + 32 * result;
      *v17 = v10;
      *(v17 + 8) = v11;
      *(v17 + 16) = v12;
      *(v17 + 24) = v13;
      v18 = v7[7];
      v19 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
      result = sub_396FC(&v5[v25], v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for FeaturePreviewConfigurationCache.Value);
      v20 = v7[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v7[2] = v22;
      v9 += v24;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_3965C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_39694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_396FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_39764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturePreviewConfigurationCache.Value(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_397DC(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_187C(&qword_717B0, &qword_5DA10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_398AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_187C(&qword_717B0, &qword_5DA10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3995C(uint64_t a1)
{
  type metadata accessor for CTFont(319);
  if (v1 <= 0x3F)
  {
    sub_39E88(319, &qword_71830, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_39AB0(319, &qword_71838, &qword_710B8, &unk_5C3F0);
      if (v3 <= 0x3F)
      {
        sub_39AB0(319, &qword_71840, &qword_71848, &qword_5DA80);
        if (v4 <= 0x3F)
        {
          sub_39E88(319, &unk_71850, &type metadata for UIMetrics.FeaturePreview.HorizontalSize, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_39AB0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1F64(a3, a4);
    v5 = sub_59B10();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_39B28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 32))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_39B70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_39BD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeaturePreviewConfiguration(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_39C58(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for FeaturePreviewConfiguration(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_39CD8(uint64_t a1)
{
  v1 = type metadata accessor for FeaturePreviewConfiguration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_39D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_39DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_76630[0];
  if (!qword_76630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_76630);
  }

  return result;
}

void sub_39E88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_39FF0()
{
  v0 = sub_597A0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_597B0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  (*(v1 + 104))(v3, enum case for Solarium.EnablementIdiom.iOS(_:), v0);
  sub_59790();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 104))(v8, enum case for Solarium.EnablementLevel.disabled(_:), v4);
  sub_4D92C(&qword_72168, &type metadata accessor for Solarium.EnablementLevel, &protocol conformance descriptor for Solarium.EnablementLevel);
  LOBYTE(v0) = sub_598A0();
  v11 = *(v5 + 8);
  v11(v8, v4);
  result = (v11)(v10, v4);
  byte_77C70 = (v0 & 1) == 0;
  return result;
}

char *sub_3A234()
{
  if (qword_768C0 != -1)
  {
    swift_once();
  }

  return &byte_77C70;
}

__n128 sub_3A284@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_187C(&qword_71A18, &qword_5DCE0);
  v5 = v4 - 8;
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  KeyPath = swift_getKeyPath();
  v9 = sub_187C(&qword_71A20, &qword_5DD18);
  (*(*(v9 - 8) + 16))(v7, a1, v9);
  v10 = &v7[*(sub_187C(&qword_71A28, &qword_5DD20) + 36)];
  *v10 = KeyPath;
  v10[8] = 1;
  *&v7[*(v5 + 44)] = sub_59190();
  sub_2B9A8();
  sub_597D0();
  sub_58D00();
  sub_4EB64(v7, a2, &qword_71A18, &qword_5DCE0);
  v11 = a2 + *(sub_187C(&qword_71A30, &qword_5DD28) + 36);
  v12 = v21;
  *(v11 + 64) = v20;
  *(v11 + 80) = v12;
  *(v11 + 96) = v22;
  v13 = v17;
  *v11 = v16;
  *(v11 + 16) = v13;
  result = v19;
  *(v11 + 32) = v18;
  *(v11 + 48) = result;
  return result;
}

Swift::Int sub_3A4DC(char a1)
{
  sub_59ED0();
  sub_59EE0(a1 & 1);
  return sub_59F10();
}

uint64_t sub_3A524@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v5 = sub_187C(&qword_71A38, &qword_5DD30);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_187C(&qword_71A40, &qword_5DD38);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - v10;
  v12 = sub_187C(&qword_71A48, &qword_5DD40);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  if (qword_768C0 != -1)
  {
    swift_once();
  }

  if (byte_77C70)
  {
    v15 = 0;
  }

  else
  {
    v15 = 2;
  }

  if (a2)
  {
    v26 = v9;
    v27 = a3;
    if (byte_77C70)
    {
      v29 = *sub_2A188();
    }

    v19 = sub_58C00();
    v20 = sub_59200();
    v21 = sub_187C(&qword_71A50, &qword_5DD48);
    (*(*(v21 - 8) + 16))(v7, v28, v21);
    v22 = &v7[*(v5 + 36)];
    *v22 = v19;
    v22[8] = v20;
    v23 = sub_49C08();
    sub_29CA0(v15, v5, v23);
    sub_6678(v7, &qword_71A38, &qword_5DD30);
    v24 = v26;
    (*(v26 + 16))(v14, v11, v8);
    swift_storeEnumTagMultiPayload();
    sub_6ED0(&qword_71A60, &qword_71A50, &qword_5DD48, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v29 = v5;
    v30 = v23;
    swift_getOpaqueTypeConformance2();
    sub_59100();
    return (*(v24 + 8))(v11, v8);
  }

  else
  {
    v16 = sub_187C(&qword_71A50, &qword_5DD48);
    (*(*(v16 - 8) + 16))(v14, v28, v16);
    swift_storeEnumTagMultiPayload();
    sub_6ED0(&qword_71A60, &qword_71A50, &qword_5DD48, &protocol conformance descriptor for _ViewModifier_Content<A>);
    v17 = sub_49C08();
    v29 = v5;
    v30 = v17;
    swift_getOpaqueTypeConformance2();
    return sub_59100();
  }
}

uint64_t sub_3A960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_590F0();
  __chkstk_darwin(v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_59100();
}

uint64_t sub_3AA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_590F0();
  __chkstk_darwin(v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_59100();
}

uint64_t sub_3AB84(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  else
  {
    type metadata accessor for TypographyPanelViewModel(a1);
    sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
    result = sub_58D40();
    __break(1u);
  }

  return result;
}

uint64_t sub_3AC00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TypographyPanelViewModel(0);
  v5 = sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);

  return EnvironmentObject.projectedValue.getter(a1, a2, v4, v5);
}

uint64_t sub_3AC8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_187C(&qword_71A78, &qword_5DD58);
  __chkstk_darwin(v6 - 8);
  v8 = &v47 - v7;
  v9 = sub_187C(&qword_71A80, &qword_5DD60);
  __chkstk_darwin(v9);
  v11 = &v47 - v10;
  v51 = sub_187C(&qword_71A88, &qword_5DD68);
  __chkstk_darwin(v51);
  v13 = &v47 - v12;
  v52 = sub_187C(&qword_71A90, &qword_5DD70);
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v47 - v14;
  v48 = sub_187C(&qword_71A98, &qword_5DD78);
  __chkstk_darwin(v48);
  v16 = &v47 - v15;
  v17 = sub_187C(&qword_71AA0, &qword_5DD80);
  __chkstk_darwin(v17);
  v19 = &v47 - v18;
  if (a1)
  {
    v54 = v8;
    v55 = a3;

    v20 = sub_1F564();

    if (v20 >> 62)
    {
      v21 = sub_59D30();
    }

    else
    {
      v21 = *(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8));
    }

    *v11 = sub_58F20();
    *(v11 + 1) = 0;
    v11[16] = 0;
    v22 = sub_187C(&qword_71AA8, &qword_5DD88);
    sub_3B358(v21 > 1, a1, a2, &v11[*(v22 + 44)]);
    sub_2BD68();
    sub_597D0();
    sub_58BF0();
    v23 = &v11[*(sub_187C(&qword_71AB0, &qword_5DD90) + 36)];
    v24 = v58;
    *v23 = v57;
    *(v23 + 1) = v24;
    *(v23 + 2) = v59;
    v25 = sub_591F0();
    sub_2B9C0();
    sub_58B90();
    v26 = &v11[*(v9 + 36)];
    *v26 = v25;
    *(v26 + 1) = v27;
    *(v26 + 2) = v28;
    *(v26 + 3) = v29;
    *(v26 + 4) = v30;
    v26[40] = 0;
    if (qword_768C0 != -1)
    {
      swift_once();
    }

    v47 = a2;
    v53 = v17;
    if (byte_77C70)
    {
      v56 = *sub_2A188();

      v31 = sub_58C00();
      v32 = 0;
    }

    else
    {
      v31 = sub_58C00();
      v32 = 2;
    }

    v33 = sub_59200();
    sub_4EB64(v11, v13, &qword_71A80, &qword_5DD60);
    v34 = v51;
    v35 = &v13[*(v51 + 36)];
    *v35 = v31;
    v35[8] = v33;
    v36 = sub_49CEC();
    v37 = v49;
    sub_29CA0(v32, v34, v36);
    sub_6678(v13, &qword_71A88, &qword_5DD68);
    LOBYTE(v34) = sub_591F0();
    (*(v50 + 32))(v16, v37, v52);
    v38 = &v16[*(v48 + 36)];
    *v38 = v34;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    v39 = 1;
    v38[40] = 1;
    v40 = sub_59810();
    v41 = sub_4EB64(v16, v19, &qword_71A98, &qword_5DD78);
    v42 = v54;
    v43 = &v19[*(v53 + 36)];
    *v43 = v40;
    v43[8] = v21 > 1;
    if (v21 >= 2)
    {
      __chkstk_darwin(v41);
      v44 = v47;
      *(&v47 - 2) = a1;
      *(&v47 - 1) = v44;
      sub_187C(&qword_71AE8, &qword_5DDA8);
      sub_4A008();
      sub_58BB0();
      v39 = 0;
    }

    v45 = sub_187C(&qword_71AE0, &qword_5DDA0);
    (*(*(v45 - 8) + 56))(v42, v39, 1, v45);
    sub_187C(&qword_71AE8, &qword_5DDA8);
    sub_49E88();
    sub_4A008();
    sub_59360();
    sub_6678(v42, &qword_71A78, &qword_5DD58);
    return sub_6678(v19, &qword_71AA0, &qword_5DD80);
  }

  else
  {
    type metadata accessor for TypographyPanelViewModel(0);
    sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
    result = sub_58D40();
    __break(1u);
  }

  return result;
}

uint64_t sub_3B358@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a3;
  v112 = a4;
  v102 = sub_187C(&qword_72068, &qword_5ED50);
  __chkstk_darwin(v102);
  v105 = (&v89 - v6);
  v99 = sub_187C(&qword_72070, &qword_5ED58);
  __chkstk_darwin(v99);
  v97 = (&v89 - v7);
  v103 = sub_187C(&qword_72078, &qword_5ED60);
  __chkstk_darwin(v103);
  v100 = &v89 - v8;
  v9 = sub_187C(&qword_72080, &qword_5ED68);
  __chkstk_darwin(v9 - 8);
  v96 = (&v89 - v10);
  v98 = sub_187C(&qword_72088, &qword_5ED70);
  v11 = __chkstk_darwin(v98);
  v92 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v93 = &v89 - v13;
  v14 = sub_187C(&qword_72090, &qword_5ED78);
  v15 = __chkstk_darwin(v14 - 8);
  v111 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v115 = &v89 - v17;
  v18 = sub_58CE0();
  v106 = *(v18 - 8);
  __chkstk_darwin(v18);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_187C(&qword_72098, &qword_5ED80);
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  v24 = sub_187C(&qword_720A0, &qword_5ED88);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v27 = &v89 - v26;
  v28 = sub_187C(&qword_720A8, &unk_5ED90);
  v29 = __chkstk_darwin(v28 - 8);
  v108 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v109 = &v89 - v32;
  v33 = __chkstk_darwin(v31);
  v107 = &v89 - v34;
  __chkstk_darwin(v33);
  v110 = a1;
  v113 = &v89 - v35;
  v104 = v23;
  if (a1)
  {
    v36 = swift_allocObject();
    v37 = v114;
    *(v36 + 16) = a2;
    *(v36 + 24) = v37;

    sub_187C(&qword_71FA0, &qword_5EC30);
    sub_4DC68();
    sub_59670();
    *&v23[*(v21 + 36)] = sub_59180();
    sub_58CD0();
    sub_50CF8();
    sub_4D92C(&qword_720E8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    sub_59350();
    (*(v106 + 8))(v20, v18);
    sub_6678(v23, &qword_72098, &qword_5ED80);
    v38 = v113;
    (*(v25 + 32))(v113, v27, v24);
    v39 = *(v25 + 56);
    v40 = v38;
    v41 = 0;
  }

  else
  {
    v39 = *(v25 + 56);
    v40 = &v89 - v35;
    v41 = 1;
  }

  v101 = v39;
  v39(v40, v41, 1, v24);

  v42 = sub_1F758();
  v91 = a2;
  if (v42)
  {
    v43 = v42;

    v44 = sub_58F10();
    v45 = v96;
    *v96 = v44;
    v45[1] = 0;
    *(v45 + 16) = 1;
    v46 = sub_187C(&qword_720F0, &qword_5EDB0);
    sub_3C294(v43, v45 + *(v46 + 44));
    sub_597D0();
    sub_58D00();
    v47 = v45;
    v48 = v92;
    sub_4EB64(v47, v92, &qword_72080, &qword_5ED68);
    v49 = (v48 + *(v98 + 36));
    v50 = v121;
    v49[4] = v120;
    v49[5] = v50;
    v49[6] = v122;
    v51 = v117;
    *v49 = v116;
    v49[1] = v51;
    v52 = v119;
    v49[2] = v118;
    v49[3] = v52;
    v90 = v27;
    v95 = v20;
    v94 = v24;
    v96 = v18;
    v53 = v93;
    sub_4EB64(v48, v93, &qword_72088, &qword_5ED70);
    sub_6610(v53, v97, &qword_72088, &qword_5ED70);
    swift_storeEnumTagMultiPayload();
    sub_187C(&qword_70A20, &unk_5AB48);
    sub_50870();
    sub_2118();
    v54 = v100;
    sub_59100();
    sub_6610(v54, v105, &qword_72078, &qword_5ED60);
    swift_storeEnumTagMultiPayload();
    sub_507E4();
    sub_59100();

    sub_6678(v54, &qword_72078, &qword_5ED60);
    v55 = v53;
    v27 = v90;
    v18 = v96;
    v24 = v94;
    v20 = v95;
    sub_6678(v55, &qword_72088, &qword_5ED70);
  }

  else
  {
    v56 = sub_1F074();

    if (v56)
    {
      v123._countAndFlagsBits = 0xD000000000000026;
      v123._object = 0x8000000000066F80;
      *&v116 = sub_2B8E0(v123, 0xD000000000000051, 0x8000000000066FB0);
      *(&v116 + 1) = v57;
      sub_66D8(v116, v57, v58);
      v59 = sub_59310();
      v96 = v18;
      v61 = v60;
      v62 = v97;
      *v97 = v59;
      v62[1] = v60;
      v95 = v20;
      v94 = v24;
      v64 = v63 & 1;
      *(v62 + 16) = v63 & 1;
      v62[3] = v65;
      v93 = v65;
      swift_storeEnumTagMultiPayload();
      sub_50498(v59, v61, v64);

      sub_187C(&qword_70A20, &unk_5AB48);
      sub_50870();
      v99 = v25;
      sub_2118();
      v66 = v100;
      sub_59100();
      sub_6610(v66, v105, &qword_72078, &qword_5ED60);
      swift_storeEnumTagMultiPayload();
      sub_507E4();
      sub_59100();
      v67 = v61;
      v18 = v96;
      v68 = v64;
      v24 = v94;
      v20 = v95;
      sub_4FFA4(v59, v67, v68);

      v25 = v99;
      sub_6678(v66, &qword_72078, &qword_5ED60);
    }

    else
    {
      v124._object = 0x8000000000066F20;
      v124._countAndFlagsBits = 0xD000000000000011;
      *&v116 = sub_2B8E0(v124, 0xD000000000000032, 0x8000000000066F40);
      *(&v116 + 1) = v69;
      sub_66D8(v116, v69, v70);
      v71 = sub_59310();
      v72 = v105;
      *v105 = v71;
      v72[1] = v73;
      *(v72 + 16) = v74 & 1;
      v72[3] = v75;
      swift_storeEnumTagMultiPayload();
      sub_187C(&qword_70A20, &unk_5AB48);
      sub_507E4();
      sub_2118();
      sub_59100();
    }
  }

  v76 = v114;
  v77 = v104;
  if (v110)
  {
    v78 = swift_allocObject();
    *(v78 + 16) = v91;
    *(v78 + 24) = v76;

    sub_187C(&qword_71FA0, &qword_5EC30);
    sub_4DC68();
    sub_59670();
    *(v77 + *(v21 + 36)) = sub_59180();
    sub_58CD0();
    sub_50CF8();
    sub_4D92C(&qword_720E8, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    sub_59350();
    (*(v106 + 8))(v20, v18);
    sub_6678(v77, &qword_72098, &qword_5ED80);
    v79 = v107;
    (*(v25 + 32))(v107, v27, v24);
    v80 = 0;
  }

  else
  {
    v80 = 1;
    v79 = v107;
  }

  v101(v79, v80, 1, v24);
  v81 = v113;
  v82 = v109;
  sub_6610(v113, v109, &qword_720A8, &unk_5ED90);
  v83 = v115;
  v84 = v111;
  sub_6610(v115, v111, &qword_72090, &qword_5ED78);
  v85 = v108;
  sub_6610(v79, v108, &qword_720A8, &unk_5ED90);
  v86 = v112;
  sub_6610(v82, v112, &qword_720A8, &unk_5ED90);
  v87 = sub_187C(&qword_720C8, &qword_5EDA0);
  sub_6610(v84, v86 + *(v87 + 48), &qword_72090, &qword_5ED78);
  sub_6610(v85, v86 + *(v87 + 64), &qword_720A8, &unk_5ED90);
  sub_6678(v79, &qword_720A8, &unk_5ED90);
  sub_6678(v83, &qword_72090, &qword_5ED78);
  sub_6678(v81, &qword_720A8, &unk_5ED90);
  sub_6678(v85, &qword_720A8, &unk_5ED90);
  sub_6678(v84, &qword_72090, &qword_5ED78);
  return sub_6678(v82, &qword_720A8, &unk_5ED90);
}

uint64_t sub_3C230@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_595B0();
  v3 = sub_59280();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

__n128 sub_3C294@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v47 = sub_58F30();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v5 = &KeyPath - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_187C(&qword_720F8, &qword_5EDB8);
  __chkstk_darwin(v48);
  v49 = &KeyPath - v6;
  *&v63[0] = sub_52154();
  *(&v63[0] + 1) = v7;
  sub_66D8(*&v63[0], v7, v8);
  v9 = sub_59310();
  v45 = v10;
  v46 = v9;
  v12 = v11;
  v44 = v13;
  KeyPath = swift_getKeyPath();
  v14 = sub_52154();
  v16 = sub_2ACEC(v14, v15);

  if ((v16 & 1) == 0)
  {
    a1 = *sub_52218();
  }

  v17 = a1;
  v18 = sub_2BD94();
  v19 = sub_522C4(*v18);

  v20 = *sub_2BD80();
  v21 = fmin(v20 / sub_52374(), 1.0);
  v22 = sub_523CC();
  sub_522C4(v22 * v21);

  v23 = sub_59290();
  v24 = swift_getKeyPath();
  v25 = v12 & 1;
  LOBYTE(v63[0]) = v12 & 1;
  v26 = swift_getKeyPath();
  v27 = swift_getKeyPath();
  v28 = swift_getKeyPath();
  LOBYTE(v63[0]) = 0;
  sub_2BDB4();
  v29 = sub_59200();
  sub_58B90();
  v62 = 0;
  *&v51 = v46;
  *(&v51 + 1) = v45;
  LOBYTE(v52) = v25;
  *(&v52 + 1) = v44;
  *&v53 = KeyPath;
  BYTE8(v53) = 1;
  v54.n128_u64[0] = v24;
  v54.n128_u64[1] = v23;
  *&v55 = v26;
  *(&v55 + 1) = 0x3FE8000000000000;
  *&v56 = v27;
  BYTE8(v56) = 1;
  *&v57 = v28;
  *(&v57 + 1) = 1;
  LOBYTE(v58) = 0;
  BYTE8(v58) = v29;
  *&v59 = v30;
  *(&v59 + 1) = v31;
  *&v60 = v32;
  *(&v60 + 1) = v33;
  v61 = 0;
  v34 = v47;
  (*(v3 + 104))(v5, enum case for ColorRenderingMode.nonLinear(_:), v47);
  sub_187C(&qword_72100, &qword_5EE20);
  sub_51188(&qword_72108, &qword_72100, &qword_5EE20, sub_5120C);
  v35 = v49;
  sub_593B0();
  (*(v3 + 8))(v5, v34);
  v63[8] = v59;
  v63[9] = v60;
  v64 = v61;
  v63[4] = v55;
  v63[5] = v56;
  v63[6] = v57;
  v63[7] = v58;
  v63[0] = v51;
  v63[1] = v52;
  v63[2] = v53;
  v63[3] = v54;
  sub_6678(v63, &qword_72100, &qword_5EE20);
  v36 = sub_58F10();
  v37 = (v35 + *(v48 + 36));
  *v37 = v36;
  v37[1] = sub_3C6E0;
  v37[2] = 0;
  sub_597C0();
  sub_58D00();
  v38 = v50;
  sub_4EB64(v35, v50, &qword_720F8, &qword_5EDB8);
  v39 = v38 + *(sub_187C(&qword_72160, &qword_5EE58) + 36);
  v40 = v56;
  *(v39 + 64) = v55;
  *(v39 + 80) = v40;
  *(v39 + 96) = v57;
  v41 = v52;
  *v39 = v51;
  *(v39 + 16) = v41;
  result = v54;
  *(v39 + 32) = v53;
  *(v39 + 48) = result;
  return result;
}

double sub_3C6E0()
{
  sub_58EF0();
  sub_58C80();
  return v0 + *sub_2BDA0();
}

uint64_t sub_3C720@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_595B0();
  v3 = sub_59280();
  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_3C784(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_59850();
}

uint64_t sub_3C958()
{
  type metadata accessor for TypographyPanelViewModel(0);
  sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);

  return sub_58D50();
}

uint64_t sub_3C9D4()
{
  sub_187C(&qword_70C90, &qword_5DDD0);
  sub_596E0();
  return v1;
}

void (*sub_3CA88(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  *(v3 + 56) = *v1;
  *(v3 + 64) = v6;
  v7 = *(v1 + 16);
  *(v3 + 19) = v7;
  *(v3 + 48) = v5;
  *v3 = v5;
  *(v3 + 8) = v6;
  *(v3 + 16) = v7;
  sub_4A340(v3 + 48, v3 + 24);

  *(v4 + 72) = sub_187C(&qword_70C90, &qword_5DDD0);
  sub_596E0();
  return sub_3CB44;
}

void sub_3CB44(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 64);
  *(*a1 + 24) = *(*a1 + 56);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_596F0();
  sub_4A39C(v1 + 48);

  free(v1);
}

uint64_t sub_3CBBC()
{
  sub_187C(&qword_70C90, &qword_5DDD0);
  sub_59700();
  return v1;
}

uint64_t sub_3CC18()
{
  v1 = *(v0 + 24);
  sub_B848(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_3CC4C()
{
  v1 = *(v0 + 40);

  return v1;
}

void *sub_3CC80@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  result = sub_59620();
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a5;
  *(a9 + 32) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a1 & 1;
  *(a9 + 64) = v19;
  *(a9 + 72) = v20;
  return result;
}

uint64_t sub_3CD28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_59750();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v19[-v11];
  v26 = sub_8164(*(v2 + 24), *(v2 + 32));
  v27 = v13;
  v14 = *(a1 + 24);
  v20 = v5;
  v21 = v14;
  v22 = v2;
  sub_66D8(v26, v13, v15);
  sub_59740();
  v23 = &protocol witness table for Text;
  v24 = v14;
  v25 = &protocol witness table for EmptyView;
  swift_getWitnessTable();
  v16 = *(v7 + 16);
  v16(v12, v10, v6);
  v17 = *(v7 + 8);
  v17(v10, v6);
  v16(a2, v12, v6);
  return (v17)(v12, v6);
}

uint64_t sub_3CF0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  (*(v9 + 40))();
  v12 = *(v5 + 16);
  v12(v11, v8, a2);
  v13 = *(v5 + 8);
  v13(v8, a2);
  v12(a3, v11, a2);
  return (v13)(v11, a2);
}

uint64_t sub_3D0B4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_187C(&qword_71B48, &unk_5DE00);
  v7 = a3 + v6[11];
  *v7 = swift_getKeyPath();
  *(v7 + 8) = 0;
  result = sub_4EB64(a1, a3, &qword_71078, &qword_5C378);
  v9 = (a3 + v6[9]);
  *v9 = 0;
  v9[1] = 0;
  *(a3 + v6[10]) = a2;
  return result;
}

uint64_t sub_3D150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = type metadata accessor for FeaturePreviewView(0, a3, a4, a4);
  v9 = a5 + v8[11];
  *v9 = swift_getKeyPath();
  *(v9 + 8) = 0;
  v10 = type metadata accessor for FeaturePreviewConfiguration(0);
  result = (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  v12 = (a5 + v8[9]);
  *v12 = a1;
  v12[1] = a2;
  *(a5 + v8[10]) = 2;
  return result;
}

uint64_t sub_3D210@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  sub_1F64(&qword_71B50, &qword_5DE10);
  sub_1F64(&qword_71B58, &qword_5DE18);
  *&v47 = v3;
  *(&v47 + 1) = &type metadata for EmptyView;
  *&v48 = v4;
  *(&v48 + 1) = &protocol witness table for EmptyView;
  type metadata accessor for FeaturePreviewContainerView(255, &v47);
  sub_59110();
  sub_59110();
  sub_1F64(&qword_71B60, &qword_5DE20);
  sub_59110();
  v5 = sub_4A438();
  v29 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
  WitnessTable = swift_getWitnessTable();
  v27 = v5;
  v28 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v26 = sub_4A7CC();
  v6 = swift_getWitnessTable();
  sub_59590();
  v37[0] = v47;
  v37[1] = v48;
  v38[0] = *v49;
  *(v38 + 13) = *&v49[13];
  v31 = v47;
  v32 = v48;
  *v33 = *v49;
  *&v33[13] = *&v49[13];
  v7 = sub_595A0();
  v24 = v6;
  v8 = swift_getWitnessTable();
  sub_59450();
  (*(*(v7 - 8) + 8))(v37, v7);
  *v33 = v42;
  *&v33[16] = v43;
  v34 = v44;
  v31 = v40;
  v32 = v41;
  sub_1F64(&qword_71C08, &qword_5DE88);
  v9 = sub_58CB0();
  v22 = v8;
  v23 = sub_6ED0(&qword_71C10, &qword_71C08, &qword_5DE88, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  sub_594F0();
  v39[2] = *v33;
  v39[3] = *&v33[16];
  v39[4] = v34;
  v39[0] = v31;
  v39[1] = v32;
  (*(*(v9 - 8) + 8))(v39, v9);
  v19 = v50;
  v20 = v51;
  v21 = v52;
  v15 = v47;
  v16 = v48;
  v17 = *v49;
  v18 = *&v49[16];
  sub_1F64(&qword_71C18, &qword_5DE90);
  v10 = sub_58CB0();
  sub_6ED0(&qword_71C20, &qword_71C18, &qword_5DE90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v12(&v31, &v15, v10);
  v44 = v19;
  v45 = v20;
  v46 = v21;
  v40 = v15;
  v41 = v16;
  v42 = v17;
  v43 = v18;
  v13 = *(v11 + 8);
  v13(&v40, v10);
  v19 = v34;
  v20 = v35;
  v21 = v36;
  v15 = v31;
  v16 = v32;
  v17 = *v33;
  v18 = *&v33[16];
  v12(a2, &v15, v10);
  v50 = v19;
  v51 = v20;
  v52 = v21;
  v47 = v15;
  v48 = v16;
  *v49 = v17;
  *&v49[16] = v18;
  return (v13)(&v47, v10);
}

uint64_t sub_3D6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v267 = a2;
  v268 = a1;
  v264 = a4;
  v266 = a3;
  v265 = type metadata accessor for FeaturePreviewView(0, a2, a3, a5);
  v249 = *(v265 - 8);
  v5 = __chkstk_darwin(v265);
  v248 = &v231 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v258 = v6;
  __chkstk_darwin(v5);
  v257 = &v231 - v7;
  v8 = sub_187C(&qword_717B0, &qword_5DA10);
  v9 = __chkstk_darwin(v8 - 8);
  v245 = &v231 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v252 = &v231 - v11;
  v12 = sub_187C(&qword_72038, &qword_5ED00);
  v13 = __chkstk_darwin(v12 - 8);
  v246 = &v231 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v253 = &v231 - v15;
  v259 = sub_58920();
  v256 = *(v259 - 8);
  v16 = *(v256 + 64);
  v17 = __chkstk_darwin(v259);
  v242 = &v231 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v243 = &v231 - v19;
  v20 = __chkstk_darwin(v18);
  v244 = &v231 - v21;
  __chkstk_darwin(v20);
  v250 = &v231 - v22;
  v23 = sub_187C(&qword_71078, &qword_5C378);
  v24 = __chkstk_darwin(v23 - 8);
  v260 = (&v231 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = __chkstk_darwin(v24);
  v251 = &v231 - v27;
  v28 = __chkstk_darwin(v26);
  *&v261 = &v231 - v29;
  v30 = __chkstk_darwin(v28);
  v32 = &v231 - v31;
  __chkstk_darwin(v30);
  v34 = &v231 - v33;
  v35 = type metadata accessor for FeaturePreviewConfiguration(0);
  v36 = *(v35 - 1);
  v37 = *(v36 + 64);
  v38 = __chkstk_darwin(v35);
  v263 = (&v231 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = __chkstk_darwin(v38);
  v247 = &v231 - v40;
  v41 = __chkstk_darwin(v39);
  v262 = &v231 - v42;
  v43 = __chkstk_darwin(v41);
  *&v255 = &v231 - v44;
  __chkstk_darwin(v43);
  v46 = &v231 - v45;
  sub_6610(v268, v34, &qword_71078, &qword_5C378);
  v254 = v36;
  v47 = *(v36 + 48);
  if (v47(v34, 1, v35) == 1)
  {
    sub_6678(v34, &qword_71078, &qword_5C378);
  }

  else
  {
    v48 = v34;
    v49 = v46;
    sub_4AE50(v48, v46, type metadata accessor for FeaturePreviewConfiguration);
    v50 = *(v46 + 3);
    if (v50)
    {
      v51 = *(v46 + 2);
      v52 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v52 = v51 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        v53 = v255;
        sub_4ADE4(v49, v255, type metadata accessor for FeaturePreviewConfiguration);
        v54 = (*(v254 + 80) + 32) & ~*(v254 + 80);
        v55 = swift_allocObject();
        *(v55 + 16) = v51;
        *(v55 + 24) = v50;
        sub_4AE50(v53, v55 + v54, type metadata accessor for FeaturePreviewConfiguration);
        v241 = v49;
        sub_4ADE4(v49, v53, type metadata accessor for FeaturePreviewConfiguration);
        v56 = swift_allocObject();
        *(v56 + 16) = v51;
        *(v56 + 24) = v50;
        sub_4AE50(v53, v56 + v54, type metadata accessor for FeaturePreviewConfiguration);
        swift_bridgeObjectRetain_n();
        sub_3FD88(&v323, &protocol witness table for Text, &protocol witness table for Text);

        *(v283 + 10) = *&v325[10];
        v282 = v324;
        v283[0] = *v325;
        v281 = v323;
        *&v325[10] = *(v283 + 10);
        LOBYTE(v291) = 0;
        v325[26] = 0;
        v57 = *(&v323 + 1);
        v268 = v323;
        v58 = v324;
        v59 = v283[0];
        v60 = *&v283[1];
        v61 = BYTE9(v283[1]);
        v62 = BYTE8(v283[1]);
        sub_4FF24(v323, *(&v323 + 1), v324, *(&v324 + 1), *&v283[0], *(&v283[0] + 1), *&v283[1], SBYTE8(v283[1]), SBYTE9(v283[1]), sub_51874);
        sub_4FF24(v268, v57, v58, *(&v58 + 1), v59, *(&v59 + 1), v60, v62, v61, sub_51874);
        sub_187C(&qword_71B78, &qword_5DE28);
        sub_187C(&qword_71BA8, &qword_5DE48);
        sub_4A5D8(&qword_71B70, &qword_71B78, &qword_5DE28, sub_4A51C);
        sub_4A5D8(&qword_71BA0, &qword_71BA8, &qword_5DE48, sub_4A654);
        sub_59100();
        v316 = v296;
        v317 = v297;
        v318[0] = v298[0];
        *(v318 + 11) = *(v298 + 11);
        v63 = sub_187C(&qword_71B50, &qword_5DE10);
        sub_1F64(&qword_71B58, &qword_5DE18);
        v64 = v266;
        *&v323 = v267;
        *(&v323 + 1) = &type metadata for EmptyView;
        *&v324 = v266;
        *(&v324 + 1) = &protocol witness table for EmptyView;
        type metadata accessor for FeaturePreviewContainerView(255, &v323);
        v65 = sub_59110();
        v66 = sub_4A438();
        v67 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
        WitnessTable = swift_getWitnessTable();
        v271 = v67;
        v272 = WitnessTable;
        v69 = swift_getWitnessTable();
        sub_3A960(&v316, v63, v65, v66, v69);
        sub_6678(&v296, &qword_71B50, &qword_5DE10);
        v299 = v323;
        v300 = v324;
        v301[0] = *v325;
        *(v301 + 12) = *&v325[12];
        v286 = v323;
        v287 = v324;
        v288[0] = *v325;
        *(v288 + 12) = *&v325[12];
        v70 = sub_59110();
        v71 = sub_187C(&qword_71B60, &qword_5DE20);
        v269 = v66;
        v270 = v69;
        v72 = v64;
        v73 = swift_getWitnessTable();
        v74 = sub_4A7CC();
        sub_3A960(&v286, v70, v71, v73, v74);
        sub_6678(&v281, &qword_71B78, &qword_5DE28);
        sub_6678(&v281, &qword_71B78, &qword_5DE28);
        (*(*(v70 - 8) + 8))(&v299, v70);
        sub_39300(v241);
        goto LABEL_36;
      }
    }

    sub_39300(v49);
  }

  v75 = v268;
  sub_6610(v268, v32, &qword_71078, &qword_5C378);
  v76 = v47(v32, 1, v35);
  v77 = v265;
  if (v76 == 1)
  {
    v78 = &qword_71078;
    v79 = &qword_5C378;
  }

  else
  {
    v80 = v32;
    v81 = v262;
    sub_4AE50(v80, v262, type metadata accessor for FeaturePreviewConfiguration);
    v241 = v35[7];
    v82 = v252;
    sub_6610(v81 + v241, v252, &qword_717B0, &qword_5DA10);
    v83 = sub_187C(&qword_710B8, &unk_5C3F0);
    v84 = *(v83 - 8);
    v85 = *(v84 + 48);
    v239 = v84 + 48;
    v240 = v85;
    if (v85(v82, 1, v83) == 1)
    {
      sub_39300(v81);
      sub_6678(v82, &qword_717B0, &qword_5DA10);
      v32 = v253;
      (*(v256 + 56))(v253, 1, 1, v259);
      v75 = v268;
    }

    else
    {
      v86 = *(v83 + 48);
      v235 = v47;
      v236 = v86;
      v87 = v256;
      v32 = v253;
      v88 = v259;
      v237 = *(v256 + 32);
      v238 = v256 + 32;
      v237(v253, v82, v259);
      v232 = v87[7];
      v233 = v87 + 7;
      v232(v32, 0, 1, v88);
      v89 = v87[1];
      v234 = v87 + 1;
      v252 = v89;
      (v89)(&v82[v236], v88);
      v90 = v87[6];
      if (v90(v32, 1, v88) != 1)
      {
        v237(v250, v32, v88);
        v167 = v245;
        sub_6610(v262 + v241, v245, &qword_717B0, &qword_5DA10);
        if (v240(v167, 1, v83) == 1)
        {
          (v252)(v250, v88);
          sub_39300(v262);
          sub_6678(v167, &qword_717B0, &qword_5DA10);
          v168 = v246;
          v232(v246, 1, 1, v88);
          v75 = v268;
        }

        else
        {
          v188 = v167 + *(v83 + 48);
          v189 = v167;
          v168 = v246;
          v237(v246, v188, v88);
          v232(v168, 0, 1, v88);
          (v252)(v189, v88);
          v190 = v90(v168, 1, v88);
          v75 = v268;
          if (v190 != 1)
          {
            v237(v244, v168, v88);
            v191 = v256 + 16;
            *&v261 = *(v256 + 16);
            (v261)(v243, v250, v88);
            v263 = type metadata accessor for FeaturePreviewConfiguration;
            v192 = v255;
            sub_4ADE4(v262, v255, type metadata accessor for FeaturePreviewConfiguration);
            v193 = v249;
            v260 = *(v249 + 16);
            v260(v257, v75, v265);
            v194 = *(v191 + 64);
            v195 = *(v254 + 80);
            v196 = v16 + v195 + ((v194 + 32) & ~v194);
            v197 = (v194 + 32) & ~v194;
            v253 = v197;
            v198 = v196 & ~v195;
            v199 = *(v193 + 80);
            v256 = v198;
            v200 = (v37 + v199 + v198) & ~v199;
            v254 = v194 | v195 | v199;
            v251 = v200;
            v201 = swift_allocObject();
            v202 = v266;
            *(v201 + 16) = v267;
            *(v201 + 24) = v202;
            v203 = v201 + v197;
            v204 = v259;
            v237(v203, v243, v259);
            v205 = v263;
            sub_4AE50(v192, v201 + v198, v263);
            *&v255 = *(v193 + 32);
            v206 = v201 + v200;
            v207 = v265;
            (v255)(v206, v257, v265);
            v208 = v242;
            (v261)(v242, v244, v204);
            v209 = v247;
            sub_4ADE4(v262, v247, v205);
            v210 = v248;
            v260(v248, v268, v207);
            v211 = v251;
            v212 = swift_allocObject();
            v213 = v266;
            *(v212 + 16) = v267;
            *(v212 + 24) = v213;
            v237(&v253[v212], v208, v204);
            sub_4AE50(v209, v212 + v256, v263);
            (v255)(v212 + v211, v210, v207);
            sub_187C(&qword_72048, &qword_5ED10);
            *&v323 = &type metadata for Text;
            *(&v323 + 1) = &protocol witness table for Text;
            OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
            sub_3FD88(&v323, OpaqueTypeConformance2, OpaqueTypeConformance2);

            *(v283 + 10) = *&v325[10];
            v282 = v324;
            v283[0] = *v325;
            v281 = v323;
            *&v325[10] = *(v283 + 10);
            LOBYTE(v291) = 1;
            v325[26] = 1;
            v268 = *(&v323 + 1);
            v215 = v323;
            v216 = v324;
            v217 = v283[0];
            v218 = *&v283[1];
            LOBYTE(v207) = BYTE9(v283[1]);
            LOBYTE(v204) = BYTE8(v283[1]);
            sub_4FF24(v323, *(&v323 + 1), v324, *(&v324 + 1), *&v283[0], *(&v283[0] + 1), *&v283[1], SBYTE8(v283[1]), SBYTE9(v283[1]), sub_51874);
            sub_4FF24(v215, v268, v216, *(&v216 + 1), v217, *(&v217 + 1), v218, v204, v207, sub_51874);
            sub_187C(&qword_71B78, &qword_5DE28);
            sub_187C(&qword_71BA8, &qword_5DE48);
            sub_4A5D8(&qword_71B70, &qword_71B78, &qword_5DE28, sub_4A51C);
            sub_4A5D8(&qword_71BA0, &qword_71BA8, &qword_5DE48, sub_4A654);
            sub_59100();
            v316 = v296;
            v317 = v297;
            v318[0] = v298[0];
            *(v318 + 11) = *(v298 + 11);
            v219 = sub_187C(&qword_71B50, &qword_5DE10);
            sub_1F64(&qword_71B58, &qword_5DE18);
            v72 = v266;
            *&v323 = v267;
            *(&v323 + 1) = &type metadata for EmptyView;
            *&v324 = v266;
            *(&v324 + 1) = &protocol witness table for EmptyView;
            type metadata accessor for FeaturePreviewContainerView(255, &v323);
            v220 = sub_59110();
            v221 = sub_4A438();
            v222 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
            v223 = swift_getWitnessTable();
            v275 = v222;
            v276 = v223;
            v224 = swift_getWitnessTable();
            sub_3A960(&v316, v219, v220, v221, v224);
            sub_6678(&v296, &qword_71B50, &qword_5DE10);
            v299 = v323;
            v300 = v324;
            v301[0] = *v325;
            *(v301 + 12) = *&v325[12];
            v286 = v323;
            v287 = v324;
            v288[0] = *v325;
            *(v288 + 12) = *&v325[12];
            v225 = sub_59110();
            v226 = sub_187C(&qword_71B60, &qword_5DE20);
            v273 = v221;
            v274 = v224;
            v227 = swift_getWitnessTable();
            v228 = sub_4A7CC();
            sub_3A960(&v286, v225, v226, v227, v228);
            sub_6678(&v281, &qword_71BA8, &qword_5DE48);
            sub_6678(&v281, &qword_71BA8, &qword_5DE48);
            (*(*(v225 - 8) + 8))(&v299, v225);
            v229 = v259;
            v230 = v252;
            (v252)(v244, v259);
            (v230)(v250, v229);
            sub_39300(v262);
            goto LABEL_36;
          }

          (v252)(v250, v88);
          sub_39300(v262);
        }

        sub_6678(v168, &qword_72038, &qword_5ED00);
        v77 = v265;
        v91 = v261;
        v47 = v235;
        goto LABEL_17;
      }

      sub_39300(v262);
      v75 = v268;
      v77 = v265;
      v47 = v235;
    }

    v78 = &qword_72038;
    v79 = &qword_5ED00;
  }

  sub_6678(v32, v78, v79);
  v91 = v261;
LABEL_17:
  sub_6610(v75, v91, &qword_71078, &qword_5C378);
  if (v47(v91, 1, v35) == 1)
  {
    sub_6678(v91, &qword_71078, &qword_5C378);
  }

  else
  {
    v92 = v47;
    v93 = v77;
    v94 = v263;
    sub_4AE50(v91, v263, type metadata accessor for FeaturePreviewConfiguration);
    v95 = v94 + v35[8];
    if ((v95[4] & 1) == 0)
    {
      LODWORD(v262) = *v95;
      *&v261 = type metadata accessor for FeaturePreviewConfiguration;
      v114 = v255;
      sub_4ADE4(v94, v255, type metadata accessor for FeaturePreviewConfiguration);
      v115 = v249;
      v260 = *(v249 + 16);
      v260(v257, v75, v93);
      v116 = *(v254 + 80);
      v117 = (v116 + 32) & ~v116;
      v256 = v117;
      v118 = *(v115 + 80);
      v119 = (v37 + v117 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v259 = v119;
      v120 = (v118 + v119 + 4) & ~v118;
      v254 = v116 | v118;
      v121 = swift_allocObject();
      v122 = v266;
      v123 = v267;
      *(v121 + 16) = v267;
      *(v121 + 24) = v122;
      v124 = v121 + v117;
      v125 = v261;
      sub_4AE50(v114, v124, v261);
      *(v121 + v119) = v262;
      v126 = v123;
      v127 = v93;
      *&v255 = *(v115 + 32);
      (v255)(v121 + v120, v257, v93);
      v128 = v247;
      sub_4ADE4(v263, v247, v125);
      v129 = v248;
      v130 = v127;
      v260(v248, v268, v127);
      v72 = v266;
      v131 = swift_allocObject();
      *(v131 + 16) = v126;
      *(v131 + 24) = v72;
      sub_4AE50(v128, v131 + v256, v261);
      *(v131 + v259) = v262;
      (v255)(v131 + v120, v129, v130);
      v132 = sub_187C(&qword_72040, &qword_5ED08);
      v135 = sub_37F8(v132, v133, v134);
      *&v323 = &type metadata for GlyphShape;
      *(&v323 + 1) = v135;
      v136 = swift_getOpaqueTypeConformance2();
      sub_3FD88(&v323, v136, v136);

      *(v283 + 10) = *&v325[10];
      v282 = v324;
      v283[0] = *v325;
      v281 = v323;
      *&v325[10] = *(v283 + 10);
      sub_4FF24(v323, *(&v323 + 1), v324, *(&v324 + 1), *&v283[0], *(&v283[0] + 1), *&v283[1], SBYTE8(v283[1]), SBYTE9(v283[1]), sub_51874);
      v137 = sub_187C(&qword_71B58, &qword_5DE18);
      *&v316 = v267;
      *(&v316 + 1) = &type metadata for EmptyView;
      *&v317 = v72;
      *(&v317 + 1) = &protocol witness table for EmptyView;
      v138 = type metadata accessor for FeaturePreviewContainerView(0, &v316);
      v139 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
      v140 = swift_getWitnessTable();
      sub_3A960(&v323, v137, v138, v139, v140);
      v296 = v316;
      v297 = v317;
      v298[0] = v318[0];
      *(v298 + 11) = *(v318 + 11);
      v299 = v316;
      v300 = v317;
      v301[0] = v318[0];
      *(v301 + 11) = *(v318 + 11);
      v141 = sub_187C(&qword_71B50, &qword_5DE10);
      v142 = sub_59110();
      v143 = sub_4A438();
      v279 = v139;
      v280 = v140;
      v144 = swift_getWitnessTable();
      sub_3AA58(&v299, v141, v142, v143, v144);
      (*(*(v142 - 8) + 8))(&v296, v142);
      v299 = v323;
      v300 = v324;
      v301[0] = *v325;
      *(v301 + 12) = *&v325[12];
      v286 = v323;
      v287 = v324;
      v288[0] = *v325;
      *(v288 + 12) = *&v325[12];
      v145 = sub_59110();
      v146 = sub_187C(&qword_71B60, &qword_5DE20);
      v277 = v143;
      v278 = v144;
      v147 = swift_getWitnessTable();
      v148 = sub_4A7CC();
      sub_3A960(&v286, v145, v146, v147, v148);
      sub_6678(&v281, &qword_71B58, &qword_5DE18);
      sub_6678(&v281, &qword_71B58, &qword_5DE18);
      (*(*(v145 - 8) + 8))(&v299, v145);
      sub_39300(v263);
      goto LABEL_36;
    }

    sub_39300(v94);
    v77 = v93;
    v47 = v92;
  }

  v96 = v75 + *(v77 + 36);
  v97 = v260;
  if (*v96)
  {
    v263 = *v96;
    v98 = *(v96 + 8);
    v99 = v251;
    sub_6610(v75, v251, &qword_71078, &qword_5C378);
    if (v47(v99, 1, v35) == 1)
    {
      v100 = v267;
      v101 = v98;

      sub_6678(v99, &qword_71078, &qword_5C378);
      v102 = 1;
    }

    else
    {
      v100 = v267;
      v102 = *(v99 + v35[11]);
      v101 = v98;

      sub_39300(v99);
    }

    v149 = v266;
    v150 = *(v75 + *(v77 + 40));
    v151 = swift_allocObject();
    v151[2] = v100;
    v151[3] = v149;
    v151[4] = v263;
    v151[5] = v101;
    v260 = v101;
    KeyPath = swift_getKeyPath();
    v322 = 0;
    LOBYTE(v323) = v102;
    *(&v323 + 1) = *v320;
    DWORD1(v323) = *&v320[3];
    *(&v323 + 1) = sub_4F184;
    v324 = v151;
    *v325 = 0;
    v325[8] = v150;
    *&v325[9] = *v319;
    *&v325[12] = *&v319[3];
    *&v325[16] = KeyPath;
    v325[24] = 0;
    *&v316 = v100;
    *(&v316 + 1) = &type metadata for EmptyView;
    *&v317 = v149;
    *(&v317 + 1) = &protocol witness table for EmptyView;
    v152 = type metadata accessor for FeaturePreviewContainerView(0, &v316);
    v153 = swift_getWitnessTable();
    v154 = *(*(v152 - 8) + 16);
    v154(&v281, &v323, v152);

    sub_4F190(0, 0);
    sub_6678(&KeyPath, &qword_71C28, &qword_5DE98);
    v323 = v281;
    v265 = *(&v282 + 1);
    v262 = v282;
    v259 = *&v283[1];
    v324 = v282;
    v261 = v283[0];
    *v325 = v283[0];
    *&v325[16] = *&v283[1];
    LODWORD(v268) = BYTE8(v283[1]);
    v325[24] = BYTE8(v283[1]);
    v154(&v291, &v323, v152);
    v323 = v291;
    v256 = *(&v292 + 1);
    v258 = v294;
    v324 = v292;
    v255 = v293;
    *v325 = v293;
    *&v325[16] = v294;
    LODWORD(v257) = v295;
    v325[24] = v295;
    v155 = sub_187C(&qword_71B58, &qword_5DE18);
    v156 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
    sub_3AA58(&v323, v155, v152, v156, v153);
    v296 = v316;
    v297 = v317;
    v298[0] = v318[0];
    *(v298 + 11) = *(v318 + 11);
    v299 = v316;
    v300 = v317;
    v301[0] = v318[0];
    *(v301 + 11) = *(v318 + 11);
    v157 = sub_187C(&qword_71B50, &qword_5DE10);
    v158 = sub_59110();
    v159 = sub_4A438();
    v289 = v156;
    v290 = v153;
    v160 = swift_getWitnessTable();
    sub_3AA58(&v299, v157, v158, v159, v160);
    (*(*(v158 - 8) + 8))(&v296, v158);
    v299 = v323;
    v300 = v324;
    v301[0] = *v325;
    *(v301 + 12) = *&v325[12];
    v286 = v323;
    v287 = v324;
    v288[0] = *v325;
    *(v288 + 12) = *&v325[12];
    v161 = sub_59110();
    v162 = sub_187C(&qword_71B60, &qword_5DE20);
    v284 = v159;
    v285 = v160;
    v72 = v266;
    v163 = swift_getWitnessTable();
    v164 = sub_4A7CC();
    sub_3A960(&v286, v161, v162, v163, v164);
    sub_4F190(v263, v260);
    (*(*(v161 - 8) + 8))(&v299, v161);

    sub_4F190(v256, v255);
    sub_178CC(v258, v257 & 1);

    sub_4F190(v265, v261);
    sub_178CC(v259, v268 & 1);
  }

  else
  {
    v103 = v75;
    v104 = *(v75 + *(v77 + 40));
    if (v104 == 2)
    {
      LOBYTE(v286) = 1;
      v325[25] = 1;
      sub_187C(&qword_71C00, &qword_5DE80);
      sub_4A870(qword_76908, &qword_71C00, &qword_5DE80);
      sub_59100();
      v323 = v299;
      v324 = v300;
      *v325 = v301[0];
      *&v325[10] = *(v301 + 10);
      sub_1F64(&qword_71B50, &qword_5DE10);
      sub_1F64(&qword_71B58, &qword_5DE18);
      v105 = v266;
      *&v316 = v267;
      *(&v316 + 1) = &type metadata for EmptyView;
      *&v317 = v266;
      *(&v317 + 1) = &protocol witness table for EmptyView;
      type metadata accessor for FeaturePreviewContainerView(255, &v316);
      sub_59110();
      v106 = sub_59110();
      v107 = sub_187C(&qword_71B60, &qword_5DE20);
      v108 = sub_4A438();
      v109 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
      v110 = swift_getWitnessTable();
      v314 = v109;
      v315 = v110;
      v111 = swift_getWitnessTable();
      v312 = v108;
      v72 = v105;
      v313 = v111;
      v112 = swift_getWitnessTable();
      v113 = sub_4A7CC();
      sub_3AA58(&v323, v106, v107, v112, v113);
    }

    else
    {
      sub_6610(v103, v260, &qword_71078, &qword_5C378);
      if (v47(v97, 1, v35) == 1)
      {
        v165 = v267;
        sub_6678(v97, &qword_71078, &qword_5C378);
        v166 = 1;
      }

      else
      {
        v165 = v267;
        v166 = v97[v35[11]];
        sub_39300(v97);
      }

      v169 = v266;
      v170 = swift_getKeyPath();
      LOBYTE(v296) = 0;
      LOBYTE(v286) = 0;
      LOBYTE(v323) = v166;
      *(&v323 + 1) = sub_41110;
      v324 = 0uLL;
      *v325 = 0;
      v325[8] = v104;
      *&v325[16] = v170;
      *&v325[24] = 0;

      sub_187C(&qword_71C00, &qword_5DE80);
      sub_4A870(qword_76908, &qword_71C00, &qword_5DE80);
      sub_59100();
      v323 = v299;
      v324 = v300;
      *v325 = v301[0];
      *&v325[10] = *(v301 + 10);
      sub_1F64(&qword_71B50, &qword_5DE10);
      sub_1F64(&qword_71B58, &qword_5DE18);
      *&v316 = v165;
      *(&v316 + 1) = &type metadata for EmptyView;
      *&v317 = v169;
      *(&v317 + 1) = &protocol witness table for EmptyView;
      type metadata accessor for FeaturePreviewContainerView(255, &v316);
      sub_59110();
      v171 = sub_59110();
      v172 = sub_187C(&qword_71B60, &qword_5DE20);
      v173 = sub_4A438();
      v174 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
      v175 = swift_getWitnessTable();
      v304 = v174;
      v305 = v175;
      v72 = v266;
      v176 = swift_getWitnessTable();
      v302 = v173;
      v303 = v176;
      v177 = swift_getWitnessTable();
      v178 = sub_4A7CC();
      sub_3AA58(&v323, v171, v172, v177, v178);
    }

    sub_6678(&v299, &qword_71B60, &qword_5DE20);
  }

LABEL_36:
  v323 = v316;
  v324 = v317;
  *v325 = v318[0];
  *&v325[13] = *(v318 + 13);
  v318[0] = *v325;
  *(v318 + 13) = *&v325[13];
  sub_1F64(&qword_71B50, &qword_5DE10);
  sub_1F64(&qword_71B58, &qword_5DE18);
  *&v299 = v267;
  *(&v299 + 1) = &type metadata for EmptyView;
  *&v300 = v72;
  *(&v300 + 1) = &protocol witness table for EmptyView;
  type metadata accessor for FeaturePreviewContainerView(255, &v299);
  sub_59110();
  sub_59110();
  sub_1F64(&qword_71B60, &qword_5DE20);
  v179 = sub_59110();
  v180 = sub_4A438();
  v181 = sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
  v182 = swift_getWitnessTable();
  v310 = v181;
  v311 = v182;
  v183 = swift_getWitnessTable();
  v308 = v180;
  v309 = v183;
  v184 = swift_getWitnessTable();
  v185 = sub_4A7CC();
  v306 = v184;
  v307 = v185;
  swift_getWitnessTable();
  v186 = *(v179 - 8);
  (*(v186 + 16))(v264, &v316, v179);
  return (*(v186 + 8))(&v323, v179);
}

uint64_t sub_3FD88@<X0>(__int128 *a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_1F64(&qword_72050, qword_5ED18);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  v12 = sub_58CB0();
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  v13 = sub_58CB0();
  WitnessTable = swift_getWitnessTable();
  v29 = &protocol witness table for _FlexFrameLayout;
  v14 = swift_getWitnessTable();
  v26 = swift_getWitnessTable();
  v27 = &protocol witness table for _FlexFrameLayout;
  v15 = swift_getWitnessTable();
  *&v35 = v12;
  *(&v35 + 1) = v13;
  *&v36 = v14;
  *(&v36 + 1) = v15;
  type metadata accessor for FeaturePreviewContainerView(255, &v35);
  *&v35 = v13;
  *(&v35 + 1) = &type metadata for EmptyView;
  *&v36 = v15;
  *(&v36 + 1) = &protocol witness table for EmptyView;
  type metadata accessor for FeaturePreviewContainerView(255, &v35);
  sub_59110();
  v24 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_59590();
  v33[0] = v35;
  v33[1] = v36;
  v34[0] = v37[0];
  *(v34 + 10) = *(v37 + 10);
  v21 = v35;
  v22 = v36;
  v23[0] = v37[0];
  *(v23 + 10) = *(v37 + 10);
  v16 = sub_595A0();
  swift_getWitnessTable();
  v17 = *(v16 - 8);
  v18 = *(v17 + 16);
  v18(&v30, &v21, v16);
  v19 = *(v17 + 8);
  v19(v33, v16);
  v35 = v30;
  v36 = v31;
  v37[0] = v32[0];
  *(v37 + 10) = *(v32 + 10);
  v21 = v30;
  v22 = v31;
  v23[0] = v32[0];
  *(v23 + 10) = *(v32 + 10);
  v18(a9, &v21, v16);
  return v19(&v35, v16);
}

uint64_t sub_40140@<X0>(__int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_58F70();
  __chkstk_darwin(v10 - 8);
  v11 = sub_58E80();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v17 = a2 + *(type metadata accessor for FeaturePreviewView(0, a3, a4, v16) + 44);
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    sub_59AD0();
    v23 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v18, 0);
    (*(v12 + 8))(v14, v11);
    if (v26 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_58F60();
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    sub_58F50(v27);
    v25 = v15;
    sub_58F40();
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_58F50(v28);
    result = sub_58F90();
    goto LABEL_6;
  }

  if (v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = sub_58F80();
LABEL_6:
  *a5 = result;
  a5[1] = v20;
  a5[2] = v21 & 1;
  a5[3] = v22;
  return result;
}

uint64_t sub_40384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, int *, uint64_t, uint64_t, uint64_t))
{
  v12 = sub_58920();
  __chkstk_darwin(v12);
  (*(v14 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v15 = sub_59300();
  v17 = v16;
  v19 = v18;
  v25[4] = v15;
  v25[5] = v16;
  v26 = v18 & 1;
  v27 = v20;
  v21 = (a2 + *(type metadata accessor for FeaturePreviewConfiguration(0) + 32));
  if (*(v21 + 4) == 1 || (v24 = *v21, a6(v25, &v24, a3, a4, a5), !v25[1]))
  {
    sub_58F80();
  }

  sub_59480();

  sub_4FFA4(v15, v17, v19 & 1);
}

uint64_t sub_40554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = sub_58F70();
  __chkstk_darwin(v10 - 8);
  v11 = sub_58E80();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 2);
  v17 = a2 + *(type metadata accessor for FeaturePreviewView(0, a3, a4, v16) + 44);
  v18 = *v17;
  if (*(v17 + 8) != 1)
  {

    sub_59AD0();
    v23 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v18, 0);
    (*(v12 + 8))(v14, v11);
    if (v26 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_58F60();
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    sub_58F50(v27);
    v25 = v15;
    sub_58F40();
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_58F50(v28);
    result = sub_58F90();
    goto LABEL_6;
  }

  if (v18)
  {
    goto LABEL_5;
  }

LABEL_3:
  result = sub_58F80();
LABEL_6:
  *a5 = result;
  a5[1] = v20;
  a5[2] = v21 & 1;
  a5[3] = v22;
  return result;
}

uint64_t sub_40798@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a6;
  v11 = sub_58F70();
  __chkstk_darwin(v11 - 8);
  v29 = sub_58E80();
  v12 = *(v29 - 8);
  __chkstk_darwin(v29);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 8);
  sub_187C(&qword_70CC0, &unk_5AEB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_5AB00;
  *(v16 + 32) = a2;
  v17 = v15;
  sub_2BC18();
  sub_2AA58(v16);
  v19 = v18;

  v20 = sub_58FF0();
  v30 = v17;
  v33 = v17;
  v34 = a2;
  v35 = fmin(v19, 1.0);
  v36 = v20;
  v22 = a3 + *(type metadata accessor for FeaturePreviewView(0, a4, a5, v21) + 44);
  v23 = *v22;
  if (*(v22 + 8) != 1)
  {

    sub_59AD0();
    v27 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v23, 0);
    (*(v12 + 8))(v14, v29);
    if (v32 != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_58F60();
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    sub_58F50(v37);
    v32 = a2;
    sub_58F40();
    v38._countAndFlagsBits = 0;
    v38._object = 0xE000000000000000;
    sub_58F50(v38);
    v24 = sub_58F90();
    goto LABEL_6;
  }

  if (v23)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = sub_58F80();
LABEL_6:
  sub_37F8(v24, v25, v26);
  sub_59480();
}

uint64_t sub_40AAC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a6;
  v10 = HIWORD(a2);
  v11 = sub_58F70();
  __chkstk_darwin(v11 - 8);
  v12 = sub_58E80();
  v34 = *(v12 - 8);
  v35 = v12;
  __chkstk_darwin(v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 8);
  sub_187C(&qword_70CC0, &unk_5AEB0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_5AB00;
  *(v16 + 32) = v10;
  v17 = v15;
  sub_2BC18();
  sub_2AA58(v16);
  v19 = v18;

  v20 = fmin(v19, 1.0);
  if (*(a1 + *(type metadata accessor for FeaturePreviewConfiguration(0) + 36)))
  {
    goto LABEL_4;
  }

  sub_40E08();
  if (v22)
  {

LABEL_4:
    v23 = sub_58FE0();
    v25 = type metadata accessor for FeaturePreviewView(0, a4, a5, v24);
    goto LABEL_5;
  }

  v33 = type metadata accessor for FeaturePreviewView(0, a4, a5, v21);
  v23 = sub_58FD0();
  v25 = v33;
LABEL_5:
  v38 = v17;
  v39 = v10;
  v40 = v20;
  v41 = v23;
  v26 = a3 + *(v25 + 44);
  v27 = *v26;
  if (*(v26 + 8) != 1)
  {

    sub_59AD0();
    v31 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v27, 0);
    (*(v34 + 8))(v14, v35);
    if (v37 != 1)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_58F60();
    v42._countAndFlagsBits = 0;
    v42._object = 0xE000000000000000;
    sub_58F50(v42);
    v37 = v10;
    sub_58F40();
    v43._countAndFlagsBits = 0;
    v43._object = 0xE000000000000000;
    sub_58F50(v43);
    v28 = sub_58F90();
    goto LABEL_10;
  }

  if (v27)
  {
    goto LABEL_9;
  }

LABEL_7:
  v28 = sub_58F80();
LABEL_10:
  sub_37F8(v28, v29, v30);
  sub_59480();
}

uint64_t sub_40E08()
{
  v1 = v0;
  v2 = sub_187C(&qword_71078, &qword_5C378);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  v5 = type metadata accessor for FeaturePreviewConfiguration(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_6610(v1, v4, &qword_71078, &qword_5C378);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_6678(v4, &qword_71078, &qword_5C378);
  }

  else
  {
    sub_4AE50(v4, v8, type metadata accessor for FeaturePreviewConfiguration);
    if (v8[*(v5 + 36)])
    {
      sub_39300(v8);
    }

    else
    {
      v9 = &v8[*(v5 + 40)];
      v11 = *v9;
      v10 = *(v9 + 1);

      sub_39300(v8);
      if (v10)
      {
        return v11;
      }
    }
  }

  return 0;
}

uint64_t sub_40FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = __chkstk_darwin(a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  v9();
  v12 = *(v5 + 16);
  v12(v11, v8, a2);
  v13 = *(v5 + 8);
  v13(v8, a2);
  v12(a3, v11, a2);
  return (v13)(v11, a2);
}

uint64_t sub_41110@<X0>(uint64_t a1@<X8>)
{
  sub_58F80();
  result = sub_592F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_41178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v102 = a8;
  v96 = a5;
  v97 = a6;
  *&v94 = a3;
  v98 = a9;
  v100 = a13;
  v101 = a10;
  v99 = a7;
  *&v95 = a11;
  v16 = type metadata accessor for FeaturePreviewView(0, a7, a11, a4);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v93 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v83 - v20;
  v22 = type metadata accessor for FeaturePreviewConfiguration(0);
  v23 = v18 + 7;
  if (*(a1 + *(v22 + 36)) == 1)
  {
    v24 = *(a2 + *(v16 + 40));
    v90 = *(a1 + *(v22 + 44));
    LODWORD(v91) = v24;
    *&v87 = *(v17 + 16);
    *&v88 = v17 + 16;
    (v87)(v21, a2, v16);
    v25 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v85 = v25;
    v26 = (v23 + v25) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    v28 = v101;
    v29 = v102;
    v27[2] = v99;
    v27[3] = v29;
    v84 = a2;
    v30 = v95;
    v27[4] = v28;
    v27[5] = v30;
    v86 = a12;
    v31 = v100;
    v27[6] = a12;
    v27[7] = v31;
    v92 = a4;
    v32 = *(v17 + 32);
    v33 = v27 + v25;
    v34 = v27;
    v89 = v27;
    v32(v33, v21, v16);
    v35 = (v34 + v26);
    *v35 = v94;
    v35[1] = a4;
    v36 = v93;
    (v87)(v93, v84, v16);
    v37 = swift_allocObject();
    v38 = v101;
    v39 = v102;
    *(v37 + 2) = v99;
    *(v37 + 3) = v39;
    *(v37 + 4) = v38;
    *(v37 + 5) = v30;
    v40 = v100;
    *(v37 + 6) = v86;
    *(v37 + 7) = v40;
    v32(&v37[v85], v36, v16);
    v41 = &v37[v26];
    v42 = v97;
    *v41 = v96;
    *(v41 + 1) = v42;
    sub_1F64(&qword_72050, qword_5ED18);
    swift_getTupleTypeMetadata2();
    sub_59840();
    swift_getWitnessTable();
    sub_596A0();
    v43 = sub_58CB0();
    swift_getTupleTypeMetadata2();
    sub_59840();
    swift_getWitnessTable();
    sub_596A0();
    v44 = sub_58CB0();
    WitnessTable = swift_getWitnessTable();
    v106 = &protocol witness table for _FlexFrameLayout;
    v45 = swift_getWitnessTable();
    v103 = swift_getWitnessTable();
    v104 = &protocol witness table for _FlexFrameLayout;
    v46 = swift_getWitnessTable();
    v99 = v46;
    KeyPath = swift_getKeyPath();
    v133 = 0;
    LOBYTE(v134) = v90;
    *(&v134 + 1) = *v131;
    DWORD1(v134) = *&v131[3];
    *(&v134 + 1) = sub_50024;
    *&v135 = v89;
    *(&v135 + 1) = sub_50330;
    *v136 = v37;
    v136[8] = v91;
    *&v136[9] = *v130;
    *&v136[12] = *&v130[3];
    *&v136[16] = KeyPath;
    v136[24] = 0;
    *&v115 = v43;
    *(&v115 + 1) = v44;
    *&v116 = v45;
    *(&v116 + 1) = v46;
    v47 = type metadata accessor for FeaturePreviewContainerView(0, &v115);
    v96 = &unk_5EBA8;
    v100 = swift_getWitnessTable();
    v48 = *(*(v47 - 8) + 16);
    v48(&v125, &v134, v47);

    sub_4F190(sub_50330, v37);
    sub_6678(&KeyPath, &qword_71C28, &qword_5DE98);
    v134 = v125;
    v49 = *(&v126 + 1);
    v97 = v128;
    v135 = v126;
    v95 = v127;
    *v136 = v127;
    *&v136[16] = v128;
    LOBYTE(v38) = v129;
    v136[24] = v129;
    v48(&v118, &v134, v47);
    v134 = v118;
    v50 = *(&v119 + 1);
    v51 = v121;
    v135 = v119;
    v94 = v120;
    *v136 = v120;
    *&v136[16] = v121;
    LOBYTE(v39) = v122;
    v136[24] = v122;
    *&v115 = v44;
    *(&v115 + 1) = &type metadata for EmptyView;
    *&v116 = v99;
    *(&v116 + 1) = &protocol witness table for EmptyView;
    v52 = type metadata accessor for FeaturePreviewContainerView(0, &v115);
    v53 = swift_getWitnessTable();
    sub_3A960(&v134, v47, v52, v100, v53);

    sub_4F190(v50, v94);
    sub_178CC(v51, v39 & 1);

    sub_4F190(v49, v95);
    sub_178CC(v97, v38 & 1);
  }

  else
  {
    LODWORD(v91) = *(a1 + *(v22 + 44));
    LODWORD(v94) = *(a2 + *(v16 + 40));
    (*(v17 + 16))(v21, a2, v16);
    v54 = (*(v17 + 80) + 64) & ~*(v17 + 80);
    v55 = (v23 + v54) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v57 = v101;
    v58 = v102;
    *(v56 + 16) = v99;
    *(v56 + 24) = v58;
    v59 = v95;
    *(v56 + 32) = v57;
    *(v56 + 40) = v59;
    v60 = v100;
    *(v56 + 48) = a12;
    *(v56 + 56) = v60;
    (*(v17 + 32))(v56 + v54, v21, v16);
    v61 = (v56 + v55);
    v62 = v97;
    *v61 = v96;
    v61[1] = v62;
    v100 = sub_1F64(&qword_72050, qword_5ED18);
    swift_getTupleTypeMetadata2();
    sub_59840();
    v99 = &protocol conformance descriptor for TupleView<A>;
    swift_getWitnessTable();
    sub_596A0();
    v63 = sub_58CB0();
    v96 = &protocol conformance descriptor for HStack<A>;
    v123 = swift_getWitnessTable();
    v124 = &protocol witness table for _FlexFrameLayout;
    *&v95 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
    v64 = v63;
    v93 = v63;
    v65 = swift_getWitnessTable();
    v92 = v65;
    KeyPath = swift_getKeyPath();
    v133 = 0;
    LOBYTE(v134) = v91;
    *(&v134 + 1) = *v131;
    DWORD1(v134) = *&v131[3];
    *(&v134 + 1) = sub_4FFF8;
    v135 = v56;
    *v136 = 0;
    v136[8] = v94;
    *&v136[9] = *v130;
    *&v136[12] = *&v130[3];
    *&v136[16] = KeyPath;
    v136[24] = 0;
    *&v115 = v64;
    *(&v115 + 1) = &type metadata for EmptyView;
    *&v116 = v65;
    *(&v116 + 1) = &protocol witness table for EmptyView;
    v66 = type metadata accessor for FeaturePreviewContainerView(0, &v115);
    v91 = &unk_5EBA8;
    *&v94 = swift_getWitnessTable();
    v67 = *(*(v66 - 8) + 16);
    v67(&v125, &v134, v66);

    sub_4F190(0, 0);
    sub_6678(&KeyPath, &qword_71C28, &qword_5DE98);
    v134 = v125;
    v89 = *(&v126 + 1);
    v97 = v128;
    v135 = v126;
    v88 = v127;
    *v136 = v127;
    *&v136[16] = v128;
    v90 = v129;
    v136[24] = v129;
    v67(&v118, &v134, v66);
    v134 = v118;
    v68 = *(&v119 + 1);
    v69 = v121;
    v135 = v119;
    v87 = v120;
    *v136 = v120;
    *&v136[16] = v121;
    LOBYTE(v56) = v122;
    v136[24] = v122;
    swift_getTupleTypeMetadata2();
    sub_59840();
    swift_getWitnessTable();
    sub_596A0();
    v70 = sub_58CB0();
    v113 = swift_getWitnessTable();
    v114 = &protocol witness table for _FlexFrameLayout;
    v71 = swift_getWitnessTable();
    *&v115 = v70;
    *(&v115 + 1) = v93;
    *&v116 = v71;
    *(&v116 + 1) = v92;
    v72 = type metadata accessor for FeaturePreviewContainerView(0, &v115);
    v73 = swift_getWitnessTable();
    sub_3AA58(&v134, v72, v66, v73, v94);

    sub_4F190(v68, v87);
    sub_178CC(v69, v56 & 1);

    sub_4F190(v89, v88);
    sub_178CC(v97, v90 & 1);
  }

  v134 = v115;
  v135 = v116;
  *v136 = v117[0];
  *&v136[10] = *(v117 + 10);
  v117[0] = *v136;
  *(v117 + 10) = *&v136[10];
  sub_1F64(&qword_72050, qword_5ED18);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  v74 = sub_58CB0();
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  v75 = sub_58CB0();
  v111 = swift_getWitnessTable();
  v112 = &protocol witness table for _FlexFrameLayout;
  v76 = swift_getWitnessTable();
  v109 = swift_getWitnessTable();
  v110 = &protocol witness table for _FlexFrameLayout;
  v77 = swift_getWitnessTable();
  *&v125 = v74;
  *(&v125 + 1) = v75;
  *&v126 = v76;
  *(&v126 + 1) = v77;
  type metadata accessor for FeaturePreviewContainerView(255, &v125);
  *&v125 = v75;
  *(&v125 + 1) = &type metadata for EmptyView;
  *&v126 = v77;
  *(&v126 + 1) = &protocol witness table for EmptyView;
  type metadata accessor for FeaturePreviewContainerView(255, &v125);
  v78 = sub_59110();
  v79 = swift_getWitnessTable();
  v80 = swift_getWitnessTable();
  v107 = v79;
  v108 = v80;
  swift_getWitnessTable();
  v81 = *(v78 - 8);
  (*(v81 + 16))(v98, &v115, v78);
  return (*(v81 + 8))(&v134, v78);
}

uint64_t sub_41EE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v32 = a3;
  v33 = a8;
  v30 = a2;
  v31 = a7;
  v28 = a5;
  v29 = a1;
  v35 = a9;
  v27 = a10;
  sub_1F64(&qword_72050, qword_5ED18);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  v12 = sub_596A0();
  v34 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v26 - v13;
  v15 = sub_58CB0();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v26 - v20;
  v36 = a4;
  v37 = v28;
  v38 = a6;
  v39 = v31;
  v40 = v33;
  v41 = v27;
  v42 = v29;
  v43 = v30;
  v44 = v32;
  sub_58F20();
  sub_59690();
  sub_597F0();
  WitnessTable = swift_getWitnessTable();
  sub_594A0();
  (*(v34 + 8))(v14, v12);
  v45 = WitnessTable;
  v46 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v22 = *(v16 + 16);
  v22(v21, v19, v15);
  v23 = *(v16 + 8);
  v23(v19, v15);
  v22(v35, v21, v15);
  return (v23)(v21, v15);
}

double sub_4224C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_187C(&qword_71078, &qword_5C378);
  __chkstk_darwin(v3 - 8);
  v5 = v39 - v4;
  v6 = type metadata accessor for FeaturePreviewConfiguration(0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_40E08();
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    sub_6610(v1, v5, &qword_71078, &qword_5C378);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      v14 = sub_4AE50(v5, v9, type metadata accessor for FeaturePreviewConfiguration);
      *&v43 = v12;
      *(&v43 + 1) = v13;
      sub_66D8(v14, v15, v16);
      v17 = sub_59310();
      v19 = v18;
      v21 = v20;
      v22 = *v9;
      sub_59290();
      v23 = sub_592E0();
      v25 = v24;
      v27 = v26;
      v39[1] = v28;

      sub_4FFA4(v17, v19, v21 & 1);

      LODWORD(v43) = sub_59180();
      v29 = sub_592D0();
      v31 = v30;
      v33 = v32;
      v35 = v34;
      sub_4FFA4(v23, v25, v27 & 1);

      *&v40 = v29;
      *(&v40 + 1) = v31;
      *&v41 = v33 & 1;
      *(&v41 + 1) = v35;
      v42 = 0;
      sub_59100();
      sub_39300(v9);
      goto LABEL_6;
    }

    sub_6678(v5, &qword_71078, &qword_5C378);
  }

  v40 = 0u;
  v41 = 0u;
  v42 = 1;
  sub_59100();
LABEL_6:
  result = *&v43;
  v37 = v44;
  v38 = v45;
  *a1 = v43;
  *(a1 + 16) = v37;
  *(a1 + 32) = v38;
  return result;
}

uint64_t sub_42558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t (*a12)(uint64_t))
{
  v37 = a8;
  v35 = a7;
  v33 = a6;
  v31 = a4;
  v36 = a3;
  v34 = a2;
  v32 = a1;
  v40 = a9;
  v38 = a11;
  v39 = a12;
  v30 = a10;
  sub_1F64(&qword_72050, qword_5ED18);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  v13 = sub_596A0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - v15;
  v17 = sub_58CB0();
  v18 = *(v17 - 8);
  v19 = __chkstk_darwin(v17);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v29 - v22;
  v41 = v31;
  v42 = a5;
  v43 = v33;
  v44 = v35;
  v45 = v37;
  v46 = v30;
  v47 = v32;
  v48 = v34;
  v49 = v36;
  sub_58F20();
  v24 = sub_59690();
  v39(v24);
  WitnessTable = swift_getWitnessTable();
  sub_594A0();
  (*(v14 + 8))(v16, v13);
  v50 = WitnessTable;
  v51 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v25 = *(v18 + 16);
  v25(v23, v21, v17);
  v26 = *(v18 + 8);
  v26(v21, v17);
  v25(v40, v23, v17);
  return (v26)(v23, v17);
}

uint64_t sub_428E8@<X0>(uint64_t a1@<X0>, void (*a2)(double)@<X1>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v23 = a2;
  v24 = a4;
  v25 = a5;
  v6 = *(a3 - 8);
  v7 = __chkstk_darwin(a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  v12 = sub_4224C(&v30);
  v13 = v30;
  v14 = v31;
  v15 = v32;
  v22[0] = v33;
  v16 = v34;
  v23(v12);
  v17 = *(v6 + 16);
  v17(v11, v9, a3);
  v18 = *(v6 + 8);
  v22[1] = v6 + 8;
  v23 = v18;
  (v18)(v9, a3);
  v30 = v13;
  v31 = v14;
  v19 = v22[0];
  v32 = v15;
  v33 = v22[0];
  v34 = v16;
  v29[0] = &v30;
  v17(v9, v11, a3);
  v29[1] = v9;
  sub_50454(v13, v14, v15, v19, v16);
  v28[0] = sub_187C(&qword_72050, qword_5ED18);
  v28[1] = a3;
  v26 = sub_504A8();
  v27 = v24;
  sub_3C784(v29, 2uLL, v28);
  sub_5052C(v13, v14, v15, v19, v16);
  v20 = v23;
  (v23)(v11, a3);
  (v20)(v9, a3);
  return sub_5052C(v30, v31, v32, v33, v34);
}

uint64_t sub_42B10@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v44 = a1;
  v55 = a2;
  v41 = sub_58E80();
  v40 = *(v41 - 8);
  __chkstk_darwin(v41);
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = *(a1 + 16);
  sub_58CB0();
  sub_1F64(&qword_71F88, &qword_5EBF8);
  v4 = *(a1 + 24);
  sub_58CB0();
  swift_getTupleTypeMetadata2();
  sub_59840();
  sub_59B10();
  swift_getTupleTypeMetadata2();
  sub_59840();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_596A0();
  v43 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v38 - v6;
  sub_1F64(&qword_70AB8, &qword_5AB98);
  v8 = sub_58CB0();
  v45 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v38 - v9;
  v11 = sub_58CB0();
  v48 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = sub_58CB0();
  v52 = *(v14 - 8);
  __chkstk_darwin(v14);
  v49 = &v38 - v15;
  v53 = v16;
  v17 = sub_58CB0();
  v54 = *(v17 - 8);
  v18 = __chkstk_darwin(v17);
  v50 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v51 = &v38 - v20;
  sub_58F00();
  sub_2BC24();
  v56 = v46;
  v57 = v4;
  v58 = *(v44 + 32);
  v21 = v47;
  v59 = v47;
  sub_59690();
  LODWORD(v68) = sub_59170();
  v22 = swift_getWitnessTable();
  sub_59410();
  (*(v43 + 8))(v7, v5);
  v23 = sub_6ED0(&qword_70AB0, &qword_70AB8, &qword_5AB98, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
  v66 = v22;
  v67 = v23;
  v24 = swift_getWitnessTable();
  sub_594B0();
  (*(v45 + 8))(v10, v8);
  v69 = *(v21 + 56);
  v68 = *(v21 + 48);
  if (v69 != 1)
  {

    sub_59AD0();
    v25 = sub_591D0();
    sub_58A10();

    v26 = v39;
    sub_58E70();
    swift_getAtKeyPath();
    sub_6678(&v68, &qword_71C28, &qword_5DE98);
    (*(v40 + 8))(v26, v41);
  }

  v64 = v24;
  v65 = &protocol witness table for _PaddingLayout;
  v27 = swift_getWitnessTable();
  v28 = v49;
  sub_594E0();
  (*(v48 + 8))(v13, v11);
  v29 = *(v21 + 40);
  if (v29 != 2)
  {
    sub_2BC64(v29 & 1);
  }

  sub_2BC64(*v21);
  sub_2B9A8();
  sub_597E0();
  v62 = v27;
  v63 = &protocol witness table for _FixedSizeLayout;
  v30 = v53;
  v31 = swift_getWitnessTable();
  v32 = v50;
  sub_59490();
  (*(v52 + 8))(v28, v30);
  v60 = v31;
  v61 = &protocol witness table for _FrameLayout;
  swift_getWitnessTable();
  v33 = v54;
  v34 = *(v54 + 16);
  v35 = v51;
  v34(v51, v32, v17);
  v36 = *(v33 + 8);
  v36(v32, v17);
  v34(v55, v35, v17);
  return (v36)(v35, v17);
}

uint64_t sub_433B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v78 = a5;
  v93 = a4;
  v94 = a6;
  v9 = sub_1F64(&qword_71F88, &qword_5EBF8);
  v10 = sub_58CB0();
  v81 = v9;
  swift_getTupleTypeMetadata2();
  v11 = sub_59840();
  v92 = *(v11 - 8);
  v12 = __chkstk_darwin(v11);
  v82 = &v69 - v13;
  v76 = a3;
  v75 = *(a3 - 8);
  v14 = __chkstk_darwin(v12);
  v74 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v10;
  v80 = *(v10 - 8);
  v16 = __chkstk_darwin(v14);
  v79 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v77 = &v69 - v18;
  v19 = sub_187C(&qword_71C30, &qword_5DEA0);
  __chkstk_darwin(v19 - 8);
  v73 = (&v69 - v20);
  v97 = v11;
  v96 = sub_59B10();
  v90 = *(v96 - 8);
  v21 = __chkstk_darwin(v96);
  v95 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v98 = &v69 - v24;
  v25 = *(a2 - 8);
  __chkstk_darwin(v23);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_58CB0();
  v29 = *(v28 - 8);
  v30 = __chkstk_darwin(v28);
  v32 = &v69 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v30);
  v35 = &v69 - v34;
  (*(a1 + 8))(v33);
  sub_597D0();
  v36 = v93;
  sub_594A0();
  (*(v25 + 8))(v27, a2);
  v112 = v36;
  v113 = &protocol witness table for _FlexFrameLayout;
  WitnessTable = swift_getWitnessTable();
  v37 = *(v29 + 16);
  v91 = v35;
  v85 = v29 + 16;
  v84 = v37;
  v37(v35, v32, v28);
  v38 = *(v29 + 8);
  v89 = v32;
  v87 = v28;
  v93 = v29 + 8;
  v88 = v38;
  v38(v32, v28);
  v39 = *(a1 + 24);
  if (v39)
  {
    v72 = *(a1 + 32);

    v40 = sub_595B0();
    sub_2BC04();
    sub_59250();
    v41 = sub_59240();
    v42 = v73;
    (*(*(v41 - 8) + 56))(v73, 1, 1, v41);
    v71 = sub_59270();
    sub_6678(v42, &qword_71C30, &qword_5DEA0);
    KeyPath = swift_getKeyPath();
    v70 = sub_59180();
    v44 = v74;
    v39();
    sub_597D0();
    v45 = v78;
    v73 = v39;
    v46 = v76;
    v47 = v79;
    sub_594A0();
    (*(v75 + 8))(v44, v46);
    v105 = v45;
    v106 = &protocol witness table for _FlexFrameLayout;
    v48 = v83;
    v78 = swift_getWitnessTable();
    v49 = v80;
    v50 = *(v80 + 16);
    v51 = v77;
    v50(v77, v47, v48);
    v52 = *(v49 + 8);
    v52(v47, v48);
    v69 = v40;
    v101 = v40;
    v102 = KeyPath;
    v103 = v71;
    v104 = v70;
    v110 = &v101;
    v50(v47, v51, v48);
    v53 = v97;
    v111 = v47;

    v108 = v81;
    v109 = v48;
    v99 = sub_4DBB0();
    v100 = v78;
    v54 = v82;
    sub_3C784(&v110, 2uLL, &v108);
    sub_4F190(v73, v72);

    v52(v51, v48);
    v52(v47, v48);

    v55 = v92;
    v56 = v95;
    (*(v92 + 32))(v95, v54, v53);
    (*(v55 + 56))(v56, 0, 1, v53);
  }

  else
  {
    v56 = v95;
    (*(v92 + 56))(v95, 1, 1, v97);
  }

  swift_getWitnessTable();
  v57 = v90;
  v58 = *(v90 + 16);
  v59 = v96;
  v58(v98, v56, v96);
  v60 = *(v57 + 8);
  v60(v56, v59);
  v61 = v89;
  v62 = v91;
  v63 = v87;
  v84(v89, v91, v87);
  v101 = v61;
  v64 = v98;
  v65 = v96;
  v58(v56, v98, v96);
  v102 = v56;
  v110 = v63;
  v111 = v65;
  v108 = WitnessTable;
  v107 = swift_getWitnessTable();
  v109 = swift_getWitnessTable();
  sub_3C784(&v101, 2uLL, &v110);
  v60(v64, v65);
  v66 = v62;
  v67 = v88;
  v88(v66, v63);
  v60(v56, v65);
  return v67(v61, v63);
}

uint64_t sub_43EEC()
{
  v1 = sub_58E80();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 32);
  v5 = *(v0 + 24);
  v9 = v5;
  if (v10 != 1)
  {

    sub_59AD0();
    v6 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_6678(&v9, &qword_71C28, &qword_5DE98);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

uint64_t sub_4404C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_58E80();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_187C(&qword_710B0, &qword_5DEF0);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_6610(v2, &v13 - v9, &qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_4EB64(v10, a1, &qword_71078, &qword_5C378);
  }

  sub_59AD0();
  v12 = sub_591D0();
  sub_58A10();

  sub_58E70();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_4422C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_58E80();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_187C(&qword_71CA8, &qword_5DF70);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_6610(v2, &v14 - v9, &qword_71CA8, &qword_5DF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_58CA0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_59AD0();
    v13 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_4442C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_187C(&qword_71C30, &qword_5DEA0);
  __chkstk_darwin(v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_187C(&qword_71C38, &qword_5DEA8);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v35 = &v33 - v8;
  v9 = sub_58E80();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v1 + 32);
  v14 = *(v1 + 24);
  v49 = v14;
  if (v50 == 1)
  {
    if ((v14 & 1) == 0)
    {
      return (*(v7 + 56))(a1, 1, 1, v6);
    }
  }

  else
  {
    v34 = v11;

    sub_59AD0();
    v15 = sub_591D0();
    v36 = v7;
    v16 = v15;
    sub_58A10();

    v7 = v36;
    sub_58E70();
    swift_getAtKeyPath();
    sub_6678(&v49, &qword_71C28, &qword_5DE98);
    (*(v10 + 8))(v13, v34);
    if (LOBYTE(v47[0]) != 1)
    {
      return (*(v7 + 56))(a1, 1, 1, v6);
    }
  }

  if (*(v1 + 16))
  {
    sub_598F0();
    v36 = v7;
    v17 = sub_59240();
    (*(*(v17 - 8) + 56))(v5, 1, 1, v17);
    sub_59270();
    sub_6678(v5, &qword_71C30, &qword_5DEA0);
    sub_59230();

    v18 = sub_592E0();
    v20 = v19;
    v22 = v21;
    v24 = v23;

    sub_597D0();
    sub_58BF0();
    LOBYTE(v47[0]) = v22 & 1;
    v25 = sub_59190();
    v26 = *sub_2A0AC();

    v27 = sub_59200();
    *&v37 = v18;
    *(&v37 + 1) = v20;
    LOBYTE(v38) = v22 & 1;
    *(&v38 + 1) = v24;
    v39 = v44;
    v40 = v45;
    v41 = v46;
    LODWORD(v42) = v25;
    *(&v42 + 1) = v26;
    v43 = v27;
    v28 = sub_187C(&qword_71C40, &qword_5DEB0);
    v29 = sub_4A8C4();
    v30 = v35;
    sub_29CA0(2, v28, v29);
    v47[4] = v41;
    v47[5] = v42;
    v48 = v43;
    v47[0] = v37;
    v47[1] = v38;
    v47[2] = v39;
    v47[3] = v40;
    sub_6678(v47, &qword_71C40, &qword_5DEB0);
    v31 = v36;
    (*(v36 + 32))(a1, v30, v6);
    return (*(v31 + 56))(a1, 0, 1, v6);
  }

  return (*(v7 + 56))(a1, 1, 1, v6);
}

uint64_t sub_448C8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_448E8()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_44918@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v19 = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(a1);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v18 = *(v2 + 24);
  v10 = *v2;
  v11 = *(v2 + 8);
  v12 = *(v2 + 16);
  KeyPath = swift_getKeyPath();
  v20[0] = v10;
  v20[1] = v11;
  v21 = v12;
  v22 = KeyPath;
  v23 = 0;
  sub_B4D0(v10, v11, v12);
  v18(v20);
  sub_EAAC(v10, v11, v12);

  v14 = *(v4 + 16);
  v14(v9, v7, v3);
  v15 = *(v4 + 8);
  v15(v7, v3);
  v14(v19, v9, v3);
  return (v15)(v9, v3);
}

uint64_t sub_44AC4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_44AEC()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_44B1C@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_44BA0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v66 = a2;
  v67 = a1;
  v64 = *(a1 - 8);
  v65 = *(v64 + 64);
  __chkstk_darwin(a1);
  v63 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F64(&qword_71C70, &qword_5DF20);
  v68 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  sub_58CB0();
  WitnessTable = swift_getWitnessTable();
  v84 = &protocol witness table for _FlexFrameLayout;
  v53 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  v50 = swift_getWitnessTable();
  v4 = sub_596D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v48 - v6;
  v8 = sub_58CB0();
  v51 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v48 - v9;
  v11 = sub_58CB0();
  v54 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v48 - v12;
  v55 = sub_58CB0();
  v56 = *(v55 - 8);
  __chkstk_darwin(v55);
  v15 = &v48 - v14;
  v16 = sub_58CB0();
  v59 = *(v16 - 8);
  __chkstk_darwin(v16);
  v52 = &v48 - v17;
  sub_1F64(&qword_71C78, &qword_5DF28);
  v60 = v16;
  v61 = sub_58CB0();
  v62 = *(v61 - 8);
  v18 = __chkstk_darwin(v61);
  v57 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v58 = &v48 - v20;
  v49 = *(v67 + 24);
  v70 = v68;
  v71 = v49;
  v72 = v69;
  sub_58FD0();
  sub_596C0();
  v21 = swift_getWitnessTable();
  sub_59420();
  (*(v5 + 8))(v7, v4);
  sub_59210();
  sub_2BA14();
  v81 = v21;
  v82 = &protocol witness table for _CompositingGroupEffect;
  v22 = swift_getWitnessTable();
  sub_594C0();
  (*(v51 + 8))(v10, v8);
  sub_2B9A8();
  sub_597D0();
  v79 = v22;
  v80 = &protocol witness table for _PaddingLayout;
  v47 = swift_getWitnessTable();
  sub_594A0();
  (*(v54 + 8))(v13, v11);
  sub_58FB0();
  v23 = v64;
  v24 = v63;
  v25 = v67;
  (*(v64 + 16))(v63, v69, v67);
  v26 = v23;
  v27 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v28 = swift_allocObject();
  v29 = v49;
  *(v28 + 16) = v68;
  *(v28 + 24) = v29;
  (*(v26 + 32))(v28 + v27, v24, v25);
  v77 = v47;
  v78 = &protocol witness table for _FlexFrameLayout;
  v30 = v52;
  v31 = v55;
  v32 = swift_getWitnessTable();
  sub_59400();

  (*(v56 + 8))(v15, v31);
  sub_45D7C(v25);
  if (v33 <= 0.0)
  {
    v35 = 0x4034000000000000;
  }

  else
  {
    v34 = sub_2B9CC();
    if (v34[1])
    {
      v35 = 0;
    }

    else
    {
      v35 = *v34;
    }
  }

  v36 = *sub_2B9E4();
  v85 = 0;
  v86 = v35;
  v87 = 0;
  v88 = v36;
  v89 = 0;
  v75 = v32;
  v76 = &protocol witness table for _AlignmentWritingModifier;
  v37 = v60;
  v38 = swift_getWitnessTable();
  v39 = v57;
  sub_593E0();
  (*(v59 + 8))(v30, v37);
  v40 = sub_6ED0(&qword_71C80, &qword_71C78, &qword_5DF28, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v73 = v38;
  v74 = v40;
  v41 = v61;
  swift_getWitnessTable();
  v42 = v62;
  v43 = *(v62 + 16);
  v44 = v58;
  v43(v58, v39, v41);
  v45 = *(v42 + 8);
  v45(v39, v41);
  v43(v66, v44, v41);
  return (v45)(v44, v41);
}

uint64_t sub_45554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v19 = a1;
  v20 = a3;
  v22 = a4;
  sub_1F64(&qword_71C70, &qword_5DF20);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  v5 = sub_596A0();
  v21 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v19 - v6;
  v8 = sub_58CB0();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v19 - v13;
  sub_58F00();
  sub_2B9C0();
  v23 = a2;
  v24 = v20;
  v25 = v19;
  sub_59690();
  sub_597D0();
  WitnessTable = swift_getWitnessTable();
  sub_594A0();
  (*(v21 + 8))(v7, v5);
  v26 = WitnessTable;
  v27 = &protocol witness table for _FlexFrameLayout;
  swift_getWitnessTable();
  v15 = *(v9 + 16);
  v15(v14, v12, v8);
  v16 = *(v9 + 8);
  v16(v12, v8);
  v15(v22, v14, v8);
  return (v16)(v14, v8);
}

uint64_t sub_45890@<X0>(void (**a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v48 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v45 = &v39 - v9;
  v10 = sub_187C(&qword_71B48, &unk_5DE00);
  v11 = *(v10 - 1);
  __chkstk_darwin(v10);
  v13 = (&v39 - v12);
  v14 = sub_58E80();
  v41 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_187C(&qword_71C70, &qword_5DF20);
  v17 = __chkstk_darwin(v42);
  v44 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v39 - v19;
  v47 = a3;
  v22 = a1 + *(type metadata accessor for FeatureRowView(0, a2, a3, v21) + 48);
  v23 = *v22;
  if (v22[8] != 1)
  {

    sub_59AD0();
    v39 = v14;
    v25 = sub_591D0();
    v40 = v20;
    v26 = v25;
    sub_58A10();

    v20 = v40;
    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v23, 0);
    (*(v41 + 8))(v16, v39);
    if (LOBYTE(v52[0]) != 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_4404C(v13);
    v27 = *a1;
    v28 = v13 + v10[11];
    *v28 = swift_getKeyPath();
    v28[8] = 0;
    v29 = (v13 + v10[9]);
    *v29 = 0;
    v29[1] = 0;
    *(v13 + v10[10]) = v27;
    sub_4EB64(v13, v20, &qword_71B48, &unk_5DE00);
    v24 = 0;
    goto LABEL_6;
  }

  if (v23)
  {
    goto LABEL_5;
  }

LABEL_3:
  v24 = 1;
LABEL_6:
  v30 = (*(v11 + 56))(v20, v24, 1, v10);
  v31 = v43;
  a1[1](v30);
  v32 = v48;
  v33 = *(v48 + 16);
  v34 = v20;
  v35 = v45;
  v33(v45, v31, a2);
  v36 = *(v32 + 8);
  v36(v31, a2);
  v37 = v44;
  sub_6610(v34, v44, &qword_71C70, &qword_5DF20);
  v52[0] = v37;
  v33(v31, v35, a2);
  v52[1] = v31;
  v51[0] = v42;
  v51[1] = a2;
  v49 = sub_4F09C();
  v50 = v47;
  sub_3C784(v52, 2uLL, v51);
  v36(v35, a2);
  sub_6678(v34, &qword_71C70, &qword_5DF20);
  v36(v31, a2);
  return sub_6678(v37, &qword_71C70, &qword_5DF20);
}

void *sub_45D7C(uint64_t a1)
{
  v3 = sub_58E80();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_187C(&qword_710B0, &qword_5DEF0);
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = sub_187C(&qword_71078, &qword_5C378);
  __chkstk_darwin(v10 - 8);
  v12 = &v18 - v11;
  sub_6610(&v1[*(a1 + 44)], v9, &qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_4EB64(v9, v12, &qword_71078, &qword_5C378);
  }

  else
  {
    sub_59AD0();
    v13 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v14 = type metadata accessor for FeaturePreviewConfiguration(0);
  if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
  {
    result = sub_6678(v12, &qword_71078, &qword_5C378);
    v16 = *v1;
    if (v16 == 2)
    {
      return result;
    }

    v17 = v16 & 1;
  }

  else
  {
    v17 = v12[*(v14 + 44)];
    sub_39300(v12);
  }

  sub_2BC64(v17);
  return sub_2B9CC();
}

uint64_t sub_46060@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  v8 = type metadata accessor for FeatureRowView(0, a5, a6, a4);
  v9 = *(v8 + 44);
  *(a7 + v9) = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);
  swift_storeEnumTagMultiPayload();
  v10 = a7 + *(v8 + 48);
  result = swift_getKeyPath();
  *v10 = result;
  *(v10 + 8) = 0;
  return result;
}

uint64_t sub_46100()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_4614C()
{
  sub_187C(&qword_70C90, &qword_5DDD0);
  sub_596E0();
  return v1;
}

void (*sub_46200(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + 96);
  v6 = *(v1 + 104);
  *(v4 + 48) = v5;
  *(v4 + 56) = v6;
  v7 = *(v1 + 112);
  *(v4 + 19) = v7;
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;

  *(v4 + 64) = sub_187C(&qword_70C90, &qword_5DDD0);
  sub_596E0();
  return sub_462B4;
}

void sub_462B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  sub_596F0();

  free(v1);
}

uint64_t sub_4632C()
{
  sub_187C(&qword_70C90, &qword_5DDD0);
  sub_59700();
  return v1;
}

uint64_t sub_46388@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FeatureToggleView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  sub_4ADE4(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureToggleView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_4AE50(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FeatureToggleView);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = sub_4AD98;
  *(a1 + 32) = v10;
  return sub_B4D0(v6, v7, v8);
}

uint64_t sub_464C8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeatureToggleView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *(a2 + 88);
  v10 = *(a2 + 89);
  sub_4ADE4(a2, &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeatureToggleView);
  v23 = *a1;
  v24 = *(a1 + 16);
  v21 = *(a1 + 3);
  v22 = *(a1 + 32);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_4AE50(&v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v12 + v11, type metadata accessor for FeatureToggleView);
  v13 = v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = a1[1];
  *v13 = *a1;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a1 + 32);
  *a3 = v9;
  *(a3 + 1) = v10;
  *(a3 + 8) = sub_4EE60;
  *(a3 + 16) = v12;
  v15 = sub_187C(&qword_71FE8, &qword_5ECD0);
  v16 = *(v15 + 44);
  *(a3 + v16) = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);
  swift_storeEnumTagMultiPayload();
  v17 = a3 + *(v15 + 48);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  sub_E9F8(&v23, v20);
  return sub_6610(&v21, v20, &qword_71C28, &qword_5DE98);
}

uint64_t sub_466D8@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v91 = a2;
  v100 = a3;
  v4 = sub_58EE0();
  v94 = *(v4 - 8);
  v95 = v4;
  __chkstk_darwin(v4);
  v92 = v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_187C(&qword_71FF0, &qword_5ECD8);
  v99 = *(v93 - 8);
  __chkstk_darwin(v93);
  v96 = v85 - v6;
  v98 = sub_187C(&qword_71FF8, &qword_5ECE0);
  __chkstk_darwin(v98);
  v97 = v85 - v7;
  v109 = sub_187C(&qword_72000, &qword_5ECE8);
  v101 = *(v109 - 8);
  v8 = __chkstk_darwin(v109);
  v108 = v85 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v107 = v85 - v10;
  v11 = sub_187C(&qword_71B48, &unk_5DE00);
  v12 = *(v11 - 1);
  __chkstk_darwin(v11);
  v14 = v85 - v13;
  v15 = sub_187C(&qword_71078, &qword_5C378);
  __chkstk_darwin(v15 - 8);
  v90 = (v85 - v16);
  v17 = type metadata accessor for FeaturePreviewConfiguration(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v86 = v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_58E80();
  v88 = *(v20 - 8);
  v89 = v20;
  __chkstk_darwin(v20);
  v87 = v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_187C(&qword_71C70, &qword_5DF20);
  v23 = __chkstk_darwin(v22 - 8);
  v111 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v110 = v85 - v26;
  v27 = a1[1];
  v121 = *a1;
  v122 = v27;
  sub_66D8(v25, v28, v29);

  v30 = sub_59310();
  v104 = v31;
  v105 = v30;
  v33 = v32;
  v106 = v34;
  sub_2B9A8();
  sub_597E0();
  sub_58D00();
  v102 = v33 & 1;
  v143 = v33 & 1;
  KeyPath = swift_getKeyPath();
  v35 = type metadata accessor for FeatureToggleView(0);
  v36 = a1 + *(v35 + 40);
  v37 = *v36;
  v38 = a1;
  if (v36[8] == 1)
  {
    if (v37)
    {
LABEL_3:
      v39 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    v85[1] = v35;

    sub_59AD0();
    v40 = v18;
    v41 = v17;
    v42 = v14;
    v43 = v12;
    v44 = v11;
    v45 = a1;
    v46 = sub_591D0();
    v38 = v45;
    v11 = v44;
    v12 = v43;
    v14 = v42;
    v17 = v41;
    v18 = v40;
    sub_58A10();

    v47 = v87;
    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v37, 0);
    (*(v88 + 8))(v47, v89);
    if (v121)
    {
      goto LABEL_3;
    }
  }

  v48 = v90;
  sub_4404C(v90);
  if ((*(v18 + 48))(v48, 1, v17) == 1)
  {
    sub_6678(v48, &qword_71078, &qword_5C378);
    v39 = 1;
  }

  else
  {
    v49 = v48;
    v50 = v86;
    sub_4AE50(v49, v86, type metadata accessor for FeaturePreviewConfiguration);
    sub_4AE50(v50, v14, type metadata accessor for FeaturePreviewConfiguration);
    (*(v18 + 56))(v14, 0, 1, v17);
    v51 = &v14[v11[11]];
    *v51 = swift_getKeyPath();
    v51[8] = 0;
    v52 = &v14[v11[9]];
    *v52 = 0;
    *(v52 + 1) = 0;
    v14[v11[10]] = 2;
    sub_4EB64(v14, v110, &qword_71B48, &unk_5DE00);
    v39 = 0;
  }

LABEL_8:
  v53 = v110;
  (*(v12 + 56))(v110, v39, 1, v11);
  v54 = v38[13];
  v55 = *(v38 + 112);
  v121 = v38[12];
  v122 = v54;
  v123 = v55;
  sub_187C(&qword_70C90, &qword_5DDD0);
  sub_59700();
  v56 = v96;
  sub_596B0();
  v57 = v92;
  sub_58ED0();
  sub_6ED0(&qword_72008, &qword_71FF0, &qword_5ECD8, &protocol conformance descriptor for Toggle<A>);
  sub_4D92C(&qword_72010, &type metadata accessor for SwitchToggleStyle, &protocol conformance descriptor for SwitchToggleStyle);
  v58 = v97;
  v59 = v93;
  v60 = v95;
  sub_59390();
  (*(v94 + 8))(v57, v60);
  (*(v99 + 8))(v56, v59);
  v61 = sub_58F00();
  v62 = (v58 + *(v98 + 36));
  *v62 = v61;
  v62[1] = sub_47324;
  v62[2] = 0;
  sub_4EF44();
  v63 = v107;
  sub_593C0();
  sub_6678(v58, &qword_71FF8, &qword_5ECE0);
  v146 = *v91;
  v147 = *(v91 + 16);
  LOBYTE(v58) = v147;
  v144 = *(v91 + 3);
  v64 = v144;
  v65 = v53;
  v145 = *(v91 + 32);
  v66 = v145;
  v67 = *v91;
  v98 = *(v91 + 1);
  v68 = v98;
  v99 = v67;
  sub_6610(v65, v111, &qword_71C70, &qword_5DF20);
  v69 = v101;
  v70 = *(v101 + 16);
  v70(v108, v63, v109);
  *&v112 = v105;
  *(&v112 + 1) = v104;
  LOBYTE(v113) = v102;
  *(&v113 + 1) = *v142;
  DWORD1(v113) = *&v142[3];
  *(&v113 + 1) = v106;
  v118 = v139;
  v119 = v140;
  v120[0] = v141;
  v114 = v135;
  v115 = v136;
  v116 = v137;
  v117 = v138;
  *&v120[1] = KeyPath;
  BYTE8(v120[1]) = 1;
  v71 = v140;
  v72 = v100;
  *(v100 + 96) = v139;
  *(v72 + 112) = v71;
  *(v72 + 128) = v120[0];
  v73 = v115;
  *(v72 + 32) = v114;
  *(v72 + 48) = v73;
  v74 = v117;
  *(v72 + 64) = v116;
  *(v72 + 80) = v74;
  v75 = v113;
  *v72 = v112;
  *(v72 + 16) = v75;
  *(v72 + 137) = *(v120 + 9);
  *(v72 + 160) = v67;
  *(v72 + 168) = v68;
  LOBYTE(v68) = v58 & 1;
  *(v72 + 176) = v58 & 1;
  LODWORD(v96) = v58 & 1;
  *(v72 + 184) = v64;
  v76 = v66 & 1;
  *(v72 + 192) = v76;
  LODWORD(v97) = v76;
  v77 = sub_187C(&qword_72020, &unk_5ECF0);
  sub_6610(v111, v72 + *(v77 + 64), &qword_71C70, &qword_5DF20);
  v78 = v72 + *(v77 + 80);
  v79 = v108;
  v80 = v109;
  v70(v78, v108, v109);
  sub_E9F8(&v146, &v121);
  sub_6610(&v144, &v121, &qword_71C28, &qword_5DE98);
  sub_6610(&v112, &v121, &qword_71FD0, &qword_5EC88);
  v82 = v98;
  v81 = v99;
  sub_B4D0(v99, v98, v68);
  sub_4EAA0(v64, v76);
  v83 = *(v69 + 8);
  v83(v107, v80);
  sub_6678(v110, &qword_71C70, &qword_5DF20);
  v83(v79, v80);
  sub_6678(v111, &qword_71C70, &qword_5DF20);
  sub_EAAC(v81, v82, v96);
  sub_178CC(v64, v97);
  v121 = v105;
  v122 = v104;
  v123 = v102;
  *v124 = *v142;
  *&v124[3] = *&v142[3];
  v125 = v106;
  v130 = v139;
  v131 = v140;
  v132 = v141;
  v126 = v135;
  v127 = v136;
  v128 = v137;
  v129 = v138;
  v133 = KeyPath;
  v134 = 1;
  return sub_6678(&v121, &qword_71FD0, &qword_5EC88);
}

double sub_47324(uint64_t a1)
{
  sub_58F20();
  sub_58C80();
  return v1 + 5.0;
}

uint64_t sub_47354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  v10 = *(a3 + 48);
  *(a9 + 48) = *(a3 + 32);
  *(a9 + 64) = v10;
  *(a9 + 80) = *(a3 + 64);
  v11 = *(a3 + 16);
  *(a9 + 16) = *a3;
  *(a9 + 32) = v11;
  *(a9 + 88) = a4;
  *(a9 + 89) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  v12 = type metadata accessor for FeatureToggleView(0);
  v13 = *(v12 + 36);
  *(a9 + v13) = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);
  swift_storeEnumTagMultiPayload();
  v14 = a9 + *(v12 + 40);
  result = swift_getKeyPath();
  *v14 = result;
  *(v14 + 8) = 0;
  return result;
}

uint64_t sub_47408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  sub_4ADE4(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureToggleView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_4AE50(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FeatureToggleView);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = sub_51890;
  *(a2 + 32) = v10;
  return sub_B4D0(v6, v7, v8);
}

uint64_t sub_4754C()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_475C8@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for FeatureOptionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  sub_4ADE4(v1, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureOptionView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_4AE50(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FeatureOptionView);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = sub_4AEB8;
  *(a1 + 32) = v10;
  return sub_B4D0(v6, v7, v8);
}

uint64_t sub_47708@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FeatureOptionView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *(a2 + 112);
  v10 = *(a2 + 113);
  sub_4ADE4(a2, &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], type metadata accessor for FeatureOptionView);
  v23 = *a1;
  v24 = *(a1 + 16);
  v21 = *(a1 + 3);
  v22 = *(a1 + 32);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  sub_4AE50(&v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8], v12 + v11, type metadata accessor for FeatureOptionView);
  v13 = v12 + ((v8 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v14 = a1[1];
  *v13 = *a1;
  *(v13 + 16) = v14;
  *(v13 + 32) = *(a1 + 32);
  *a3 = v9;
  *(a3 + 1) = v10;
  *(a3 + 8) = sub_4E9FC;
  *(a3 + 16) = v12;
  v15 = sub_187C(&qword_71FB0, &qword_5EC38);
  v16 = *(v15 + 44);
  *(a3 + v16) = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);
  swift_storeEnumTagMultiPayload();
  v17 = a3 + *(v15 + 48);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  sub_E9F8(&v23, v20);
  return sub_6610(&v21, v20, &qword_71C28, &qword_5DE98);
}

uint64_t sub_47918@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v93 = a2;
  v90 = a3;
  v4 = sub_187C(&qword_71FB8, &qword_5EC40);
  v94 = *(v4 - 8);
  __chkstk_darwin(v4);
  v89 = &v83 - v5;
  v6 = sub_187C(&qword_71FC0, &qword_5EC48);
  v7 = __chkstk_darwin(v6 - 8);
  v100 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v102 = &v83 - v9;
  v10 = sub_187C(&qword_71B48, &unk_5DE00);
  v91 = *(v10 - 8);
  v92 = v10;
  __chkstk_darwin(v10);
  v84 = &v83 - v11;
  v12 = sub_187C(&qword_71078, &qword_5C378);
  __chkstk_darwin(v12 - 8);
  v14 = (&v83 - v13);
  v15 = type metadata accessor for FeaturePreviewConfiguration(0);
  v87 = *(v15 - 8);
  v88 = v15;
  __chkstk_darwin(v15);
  v83 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_58E80();
  v85 = *(v17 - 8);
  v86 = v17;
  __chkstk_darwin(v17);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_187C(&qword_71C70, &qword_5DF20);
  v21 = __chkstk_darwin(v20 - 8);
  v103 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v83 - v24;
  v26 = *(a1 + 88);
  v113 = *(a1 + 80);
  v114 = v26;
  sub_66D8(v23, v27, v28);

  v29 = sub_59310();
  v97 = v30;
  v98 = v29;
  v32 = v31;
  v99 = v33;
  sub_2B9A8();
  v34 = sub_597E0();
  v101 = v25;
  v81 = v34;
  v82 = v35;
  v80 = 1;
  v79 = 0;
  sub_58D00();
  v95 = v32 & 1;
  v134 = v32 & 1;
  KeyPath = swift_getKeyPath();
  v36 = a1 + *(type metadata accessor for FeatureOptionView(0) + 40);
  v37 = *v36;
  if (*(v36 + 8) == 1)
  {
    if (v37)
    {
      goto LABEL_7;
    }
  }

  else
  {

    sub_59AD0();
    v38 = sub_591D0();
    sub_58A10();

    sub_58E70();
    swift_getAtKeyPath();
    sub_178CC(v37, 0);
    (*(v85 + 8))(v19, v86);
    if (v113)
    {
LABEL_7:
      v41 = 1;
      v42 = v92;
      goto LABEL_9;
    }
  }

  sub_4404C(v14);
  v40 = v87;
  v39 = v88;
  if ((*(v87 + 48))(v14, 1, v88) == 1)
  {
    sub_6678(v14, &qword_71078, &qword_5C378);
    goto LABEL_7;
  }

  v43 = v14;
  v44 = v83;
  sub_4AE50(v43, v83, type metadata accessor for FeaturePreviewConfiguration);
  v45 = v44;
  v46 = v84;
  sub_4AE50(v45, v84, type metadata accessor for FeaturePreviewConfiguration);
  (*(v40 + 56))(v46, 0, 1, v39);
  v47 = v92;
  v48 = v46 + *(v92 + 44);
  *v48 = swift_getKeyPath();
  *(v48 + 8) = 0;
  v49 = (v46 + *(v47 + 36));
  *v49 = 0;
  v49[1] = 0;
  *(v46 + *(v47 + 40)) = 2;
  sub_4EB64(v46, v101, &qword_71B48, &unk_5DE00);
  v42 = v47;
  v41 = 0;
LABEL_9:
  v50 = (*(v91 + 56))(v101, v41, 1, v42);
  __chkstk_darwin(v50);
  v81 = a1;
  v52 = sub_483FC(sub_4EA28, &v79, v51);
  v53 = 1;
  if (v52)
  {
    v54 = sub_595B0();
    v55 = sub_59520();
    v92 = v4;
    v56 = v55;
    v57 = swift_getKeyPath();
    v113 = v54;
    v114 = v57;
    v115 = v56;
    sub_59260();
    sub_187C(&qword_71FD8, &unk_5ECC0);
    sub_4EAAC();
    v58 = v89;
    sub_59340();
    v59 = v92;

    v60 = v58;
    v4 = v59;
    (*(v94 + 32))(v102, v60, v59);
    v53 = 0;
  }

  v61 = v102;
  (*(v94 + 56))(v102, v53, 1, v4);
  v137 = *v93;
  v138 = *(v93 + 16);
  v62 = v138;
  v63 = *(v93 + 3);
  v135 = v63;
  v136 = *(v93 + 32);
  v64 = v136;
  v65 = *(v93 + 1);
  v92 = *v93;
  v66 = v92;
  v93 = v65;
  v94 = v63;
  v67 = v101;
  sub_6610(v101, v103, &qword_71C70, &qword_5DF20);
  v68 = v100;
  sub_6610(v61, v100, &qword_71FC0, &qword_5EC48);
  *&v104 = v98;
  *(&v104 + 1) = v97;
  LOBYTE(v105) = v95;
  *(&v105 + 1) = *v133;
  DWORD1(v105) = *&v133[3];
  *(&v105 + 1) = v99;
  v110 = v130;
  v111 = v131;
  v112[0] = v132;
  v106 = v126;
  v107 = v127;
  v109 = v129;
  v108 = v128;
  *&v112[1] = KeyPath;
  BYTE8(v112[1]) = 1;
  v69 = v131;
  v70 = v90;
  *(v90 + 96) = v130;
  *(v70 + 112) = v69;
  *(v70 + 128) = v112[0];
  v71 = v107;
  *(v70 + 32) = v106;
  *(v70 + 48) = v71;
  v72 = v109;
  *(v70 + 64) = v108;
  *(v70 + 80) = v72;
  v73 = v105;
  *v70 = v104;
  *(v70 + 16) = v73;
  *(v70 + 137) = *(v112 + 9);
  *(v70 + 160) = v66;
  *(v70 + 168) = v65;
  v62 &= 1u;
  *(v70 + 176) = v62;
  *(v70 + 184) = v63;
  v64 &= 1u;
  *(v70 + 192) = v64;
  v74 = sub_187C(&qword_71FC8, &qword_5EC80);
  sub_6610(v103, v70 + *(v74 + 64), &qword_71C70, &qword_5DF20);
  sub_6610(v68, v70 + *(v74 + 80), &qword_71FC0, &qword_5EC48);
  sub_E9F8(&v137, &v113);
  sub_6610(&v135, &v113, &qword_71C28, &qword_5DE98);
  sub_6610(&v104, &v113, &qword_71FD0, &qword_5EC88);
  v75 = v92;
  v76 = v93;
  sub_B4D0(v92, v93, v62);
  v77 = v94;
  sub_4EAA0(v94, v64);
  sub_6678(v102, &qword_71FC0, &qword_5EC48);
  sub_6678(v67, &qword_71C70, &qword_5DF20);
  sub_6678(v100, &qword_71FC0, &qword_5EC48);
  sub_6678(v103, &qword_71C70, &qword_5DF20);
  sub_EAAC(v75, v76, v62);
  sub_178CC(v77, v64);
  v113 = v98;
  v114 = v97;
  LOBYTE(v115) = v95;
  *(&v115 + 1) = *v133;
  HIDWORD(v115) = *&v133[3];
  v116 = v99;
  v121 = v130;
  v122 = v131;
  v123 = v132;
  v117 = v126;
  v118 = v127;
  v120 = v129;
  v119 = v128;
  v124 = KeyPath;
  v125 = 1;
  return sub_6678(&v113, &qword_71FD0, &qword_5EC88);
}

uint64_t sub_483FC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v9 = *(v7 - 1);
      v8 = *v7;
      v13[0] = *(v7 - 2);
      v13[1] = v9;
      v13[2] = v8;

      v10 = a1(v13);

      if (v3)
      {
        break;
      }

      v7 += 3;
      v11 = v6-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_484C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>)
{
  v10 = *(a1 + 48);
  *(a9 + 32) = *(a1 + 32);
  *(a9 + 48) = v10;
  v11 = *(a1 + 64);
  v12 = *(a1 + 16);
  *a9 = *a1;
  *(a9 + 16) = v12;
  *(a9 + 64) = v11;
  *(a9 + 72) = a2;
  *(a9 + 80) = a3;
  *(a9 + 88) = a4;
  *(a9 + 96) = a5 & 1;
  *(a9 + 97) = HIBYTE(a5) & 1;
  *(a9 + 104) = a6;
  *(a9 + 112) = a7;
  *(a9 + 113) = a8;
  v13 = type metadata accessor for FeatureOptionView(0);
  v14 = *(v13 + 36);
  *(a9 + v14) = swift_getKeyPath();
  sub_187C(&qword_710B0, &qword_5DEF0);
  swift_storeEnumTagMultiPayload();
  v15 = a9 + *(v13 + 40);
  result = swift_getKeyPath();
  *v15 = result;
  *(v15 + 8) = 0;
  return result;
}

uint64_t sub_48580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  v6 = *v2;
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  sub_4ADE4(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for FeatureOptionView);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  sub_4AE50(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for FeatureOptionView);
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = sub_5188C;
  *(a2 + 32) = v10;
  return sub_B4D0(v6, v7, v8);
}

uint64_t sub_486B8()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_486E8(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_48720()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_4878C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  __chkstk_darwin(a1);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1F64(&qword_70AD8, &qword_5ABA8);
  v9 = sub_58CB0();
  v55 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v48 - v10;
  v12 = *(a1 + 24);
  v13 = sub_6ED0(&qword_70AD0, &qword_70AD8, &qword_5ABA8, &protocol conformance descriptor for _ContentShapeModifier<A>);
  v67 = v12;
  v68 = v13;
  WitnessTable = swift_getWitnessTable();
  *&v69[0] = v9;
  *(&v69[0] + 1) = WitnessTable;
  v15 = WitnessTable;
  v51 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v53 = OpaqueTypeMetadata2;
  v56 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v50 = &v48 - v17;
  *&v69[0] = v9;
  *(&v69[0] + 1) = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v69[0] = OpaqueTypeMetadata2;
  *(&v69[0] + 1) = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeMetadata2();
  v59 = *(v18 - 8);
  __chkstk_darwin(v18);
  v49 = &v48 - v19;
  sub_1F64(&qword_71C88, &unk_5DF30);
  v60 = v18;
  v54 = sub_58CB0();
  v61 = *(v54 - 8);
  v20 = __chkstk_darwin(v54);
  v57 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v20);
  v58 = &v48 - v23;
  v24 = (*v3)(v22);
  sub_4AF7C(v24, v25, v26);
  v27 = v11;
  sub_593A0();
  (*(v6 + 8))(v8, v5);
  v69[0] = *(v3 + 32);
  v28 = swift_allocObject();
  *(v28 + 16) = v5;
  *(v28 + 24) = v12;
  v29 = *(v3 + 16);
  *(v28 + 32) = *v3;
  *(v28 + 48) = v29;
  *(v28 + 64) = *(v3 + 32);

  sub_6610(v69, &v66, &qword_70C88, &unk_5AE60);
  v30 = v50;
  sub_593D0();
  v31 = v49;

  (*(v55 + 8))(v27, v9);
  v32 = swift_allocObject();
  *(v32 + 16) = v5;
  *(v32 + 24) = v12;
  v33 = *(v3 + 16);
  *(v32 + 32) = *v3;
  *(v32 + 48) = v33;
  *(v32 + 64) = *(v3 + 32);
  v34 = OpaqueTypeConformance2;

  sub_6610(v69, &v66, &qword_70C88, &unk_5AE60);
  v35 = v53;
  sub_59460();

  (*(v56 + 8))(v30, v35);
  v66 = v69[0];
  sub_187C(&qword_70C88, &unk_5AE60);
  sub_59630();
  v36 = 0;
  if (v65 == 1)
  {
    v37 = [objc_opt_self() systemGray5Color];
    v36 = sub_59510();
  }

  v65 = v36;
  *&v66 = v35;
  *(&v66 + 1) = v34;
  v38 = swift_getOpaqueTypeConformance2();
  v39 = v57;
  v40 = v60;
  sub_59430();

  (*(v59 + 8))(v31, v40);
  v41 = sub_6ED0(&qword_71C98, &qword_71C88, &unk_5DF30, &protocol conformance descriptor for _TraitWritingModifier<A>);
  v63 = v38;
  v64 = v41;
  v42 = v54;
  swift_getWitnessTable();
  v43 = v61;
  v44 = *(v61 + 16);
  v45 = v58;
  v44(v58, v39, v42);
  v46 = *(v43 + 8);
  v46(v39, v42);
  v44(v62, v45, v42);
  return (v46)(v45, v42);
}

void *sub_48EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_59620();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = v11;
  *(a5 + 40) = v12;
  return result;
}

uint64_t sub_48F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_48F78@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_48FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_58A90();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v14[-v8];
  sub_58A80();

  sub_58A70();
  v10 = [objc_opt_self() clearColor];
  v11 = sub_58A60();
  sub_58A50();
  v11(v14, 0);
  sub_4B0E4();
  (*(v4 + 16))(v7, v9, v3);
  v12 = sub_59AF0();
  (*(v4 + 8))(v9, v3);
  return v12;
}

uint64_t sub_4915C()
{
  v0 = sub_58A90();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v2);
  v6 = &v11[-v5];

  sub_58A80();
  sub_58A70();
  v7 = [objc_opt_self() clearColor];
  v8 = sub_58A60();
  sub_58A50();
  v8(v11, 0);
  sub_4B0E4();
  (*(v1 + 16))(v4, v6, v0);
  v9 = sub_59AF0();
  (*(v1 + 8))(v6, v0);
  return v9;
}

uint64_t sub_49350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4E1E4(a1, a2, a3);

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_493B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4E1E4(a1, a2, a3);

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_49418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_4E1E4(a1, a2, a3);
  sub_590C0();
  __break(1u);
}

id sub_494A8@<X0>(void *a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a3;
  v10 = *(type metadata accessor for _GlyphShape(0) + 32);
  *(a4 + v10) = swift_getKeyPath();
  sub_187C(&qword_71CA8, &qword_5DF70);
  swift_storeEnumTagMultiPayload();
  v16 = a1;
  sub_52330();
  sub_597D0();
  sub_58BF0();
  v11 = (a4 + *(sub_187C(&qword_71CB0, &qword_5DF78) + 36));
  *v11 = v17;
  v11[1] = v18;
  v11[2] = v19;
  *(a4 + *(sub_187C(&qword_71CB8, &qword_5DF80) + 36)) = 257;
  v12 = sub_58F00();
  v13 = swift_allocObject();
  *(v13 + 16) = v16;
  *(v13 + 24) = a2;
  *(v13 + 32) = a5;
  *(v13 + 40) = a3;
  v14 = (a4 + *(sub_187C(&qword_71CC0, &qword_5DF88) + 36));
  *v14 = v12;
  v14[1] = sub_4B188;
  v14[2] = v13;

  return v16;
}

CGPathRef sub_49664(double a1, CGFloat a2)
{
  v31 = *(v2 + 8);
  v3 = v31;
  v4 = *v2;
  BoundingRectsForGlyphs = CTFontGetBoundingRectsForGlyphs(*v2, kCTFontOrientationDefault, &v31, 0, 1);
  x = BoundingRectsForGlyphs.origin.x;
  y = BoundingRectsForGlyphs.origin.y;
  width = BoundingRectsForGlyphs.size.width;
  height = BoundingRectsForGlyphs.size.height;
  CGAffineTransformMakeScale(&t1, 1.0, -1.0);
  tx = t1.tx;
  ty = t1.ty;
  v22 = *&t1.c;
  v24 = *&t1.a;
  v11 = *(v2 + 16);
  CGAffineTransformMakeScale(&t1, v11, v11);
  v12 = *&t1.a;
  v13 = *&t1.c;
  v14 = *&t1.tx;
  *&t1.a = v24;
  *&t1.c = v22;
  t1.tx = tx;
  t1.ty = ty;
  *&t2.a = v12;
  *&t2.c = v13;
  *&t2.tx = v14;
  CGAffineTransformConcat(&v28, &t1, &t2);
  v16 = v28.tx;
  v15 = v28.ty;
  v23 = *&v28.c;
  v25 = *&v28.a;
  sub_4DE30(v2, a1, x, y, width, height);
  v18 = v17;
  v19 = sub_522C4(a2);
  v20 = sub_52328();

  CGAffineTransformMakeTranslation(&t1, v18, a2 - v11 * v20);
  *&t2.a = v25;
  *&t2.c = v23;
  t2.tx = v16;
  t2.ty = v15;
  v28 = t1;
  CGAffineTransformConcat(&t1, &t2, &v28);
  return CTFontCreatePathForGlyph(v4, v3, &t1);
}

uint64_t sub_49834(uint64_t a1)
{
  v2 = sub_58CA0();
  __chkstk_darwin(v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_58DA0();
}

double sub_498FC@<D0>(uint64_t a1@<X8>, double a2@<D2>, CGFloat a3@<D3>)
{
  if (sub_49664(a2, a3))
  {
    sub_592C0();
  }

  else
  {
    sub_592B0();
  }

  result = *&v5;
  *a1 = v5;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  return result;
}

uint64_t (*sub_49978(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_58B30();
  return sub_49A00;
}

void sub_49A00(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_49A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4DA48(qword_77888, &unk_5EAFC);

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_49ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4DA48(qword_77888, &unk_5EAFC);

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_49B4C(uint64_t a1)
{
  v2 = sub_4DA48(qword_77888, &unk_5EAFC);

  return Shape.body.getter(a1, v2);
}

uint64_t sub_49BB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_58E10();
  *a1 = result;
  return result;
}

unint64_t sub_49C08()
{
  result = qword_71A58;
  if (!qword_71A58)
  {
    sub_1F64(&qword_71A38, &qword_5DD30);
    sub_6ED0(&qword_71A60, &qword_71A50, &qword_5DD48, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_6ED0(&qword_71A68, &qword_71A70, &qword_5DD50, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71A58);
  }

  return result;
}

unint64_t sub_49CEC()
{
  result = qword_71AB8;
  if (!qword_71AB8)
  {
    sub_1F64(&qword_71A88, &qword_5DD68);
    sub_51188(&qword_71AC0, &qword_71A80, &qword_5DD60, sub_49DD0);
    sub_6ED0(&qword_71A68, &qword_71A70, &qword_5DD50, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71AB8);
  }

  return result;
}

unint64_t sub_49DD0()
{
  result = qword_71AC8;
  if (!qword_71AC8)
  {
    sub_1F64(&qword_71AB0, &qword_5DD90);
    sub_6ED0(&qword_71AD0, &qword_71AD8, &qword_5DD98, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71AC8);
  }

  return result;
}

unint64_t sub_49E88()
{
  result = qword_71AF0;
  if (!qword_71AF0)
  {
    sub_1F64(&qword_71AA0, &qword_5DD80);
    sub_49F40();
    sub_6ED0(&qword_71B00, &qword_71B08, &qword_5DDB0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71AF0);
  }

  return result;
}

unint64_t sub_49F40()
{
  result = qword_71AF8;
  if (!qword_71AF8)
  {
    sub_1F64(&qword_71A98, &qword_5DD78);
    sub_1F64(&qword_71A88, &qword_5DD68);
    sub_49CEC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71AF8);
  }

  return result;
}

unint64_t sub_4A008()
{
  result = qword_71B10;
  if (!qword_71B10)
  {
    sub_1F64(&qword_71AE8, &qword_5DDA8);
    sub_4A08C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B10);
  }

  return result;
}

unint64_t sub_4A08C()
{
  result = qword_71B18;
  if (!qword_71B18)
  {
    sub_1F64(&qword_71B20, &qword_5DDB8);
    sub_6ED0(&qword_71B28, &qword_71B30, &qword_5DDC0, &protocol conformance descriptor for Button<A>);
    sub_6ED0(&qword_71B38, &qword_71B40, &qword_5DDC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B18);
  }

  return result;
}

uint64_t sub_4A170()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  if (v2)
  {

    sub_1F564();

    swift_getKeyPath();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;

    sub_187C(&qword_713F0, &qword_5CA68);
    sub_187C(&qword_71B20, &qword_5DDB8);
    sub_6ED0(&qword_72060, &qword_713F0, &qword_5CA68, &protocol conformance descriptor for [A]);
    sub_4D92C(&qword_715E0, type metadata accessor for CTFont, &unk_5D1C8);
    sub_4A08C();
    return sub_59720();
  }

  else
  {
    type metadata accessor for TypographyPanelViewModel(0);
    sub_4D92C(&unk_70BA0, type metadata accessor for TypographyPanelViewModel, &unk_5CEF0);
    result = sub_58D40();
    __break(1u);
  }

  return result;
}

unint64_t sub_4A438()
{
  result = qword_71B68;
  if (!qword_71B68)
  {
    sub_1F64(&qword_71B50, &qword_5DE10);
    sub_4A5D8(&qword_71B70, &qword_71B78, &qword_5DE28, sub_4A51C);
    sub_4A5D8(&qword_71BA0, &qword_71BA8, &qword_5DE48, sub_4A654);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B68);
  }

  return result;
}

unint64_t sub_4A51C()
{
  result = qword_71B80;
  if (!qword_71B80)
  {
    sub_1F64(&qword_71B88, &qword_5DE30);
    sub_4A870(&qword_768D8, &qword_71B90, &qword_5DE38);
    sub_4A870(&qword_768E0, &qword_71B98, &qword_5DE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71B80);
  }

  return result;
}

uint64_t sub_4A5D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1F64(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_4A654()
{
  result = qword_71BB0;
  if (!qword_71BB0)
  {
    sub_1F64(&qword_71BB8, &qword_5DE50);
    sub_4A870(&qword_768E8, &qword_71BC0, &qword_5DE58);
    sub_4A870(&qword_768F0, &qword_71BC8, &qword_5DE60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71BB0);
  }

  return result;
}

unint64_t sub_4A710()
{
  result = qword_71BD8;
  if (!qword_71BD8)
  {
    sub_1F64(&qword_71BE0, &qword_5DE68);
    sub_4A870(&qword_768F8, &qword_71BE8, &qword_5DE70);
    sub_4A870(&qword_76900, &qword_71BF0, &qword_5DE78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71BD8);
  }

  return result;
}

unint64_t sub_4A7CC()
{
  result = qword_71BF8;
  if (!qword_71BF8)
  {
    sub_1F64(&qword_71B60, &qword_5DE20);
    sub_4A870(qword_76908, &qword_71C00, &qword_5DE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71BF8);
  }

  return result;
}

uint64_t sub_4A870(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1F64(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_4A8C4()
{
  result = qword_71C48;
  if (!qword_71C48)
  {
    sub_1F64(&qword_71C40, &qword_5DEB0);
    sub_4A97C();
    sub_6ED0(&qword_70AC0, &qword_70AC8, &qword_5ABA0, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C48);
  }

  return result;
}

unint64_t sub_4A97C()
{
  result = qword_71C50;
  if (!qword_71C50)
  {
    sub_1F64(&qword_71C58, &qword_5DEB8);
    sub_4AA34();
    sub_6ED0(&qword_70AB0, &qword_70AB8, &qword_5AB98, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C50);
  }

  return result;
}

unint64_t sub_4AA34()
{
  result = qword_71C60;
  if (!qword_71C60)
  {
    sub_1F64(&qword_71C68, &qword_5DEC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C60);
  }

  return result;
}

uint64_t sub_4AAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FeatureRowView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(*(v5 - 8) + 64);

  v9 = (v4 + v7 + *(v5 + 44));
  sub_187C(&qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for FeaturePreviewConfiguration(0);
    if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
    {

      v11 = v9 + *(v10 + 28);
      v12 = sub_187C(&qword_710B8, &unk_5C3F0);
      if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
      {
        v14 = sub_58920();
        v15 = *(*(v14 - 8) + 8);
        v15(v11, v14);
        v15(&v11[*(v12 + 48)], v14);
      }
    }
  }

  else
  {
  }

  sub_178CC(*(v4 + v7 + *(v5 + 48)), *(v4 + v7 + *(v5 + 48) + 8));

  return _swift_deallocObject(v4, v7 + v8, v6 | 7);
}

uint64_t sub_4ADE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4AE50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4AEE4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_4AF7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_71C90;
  if (!qword_71C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71C90);
  }

  return result;
}

uint64_t sub_4AFFC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_4B044(char a1)
{
  sub_59820();
  sub_59800();

  sub_58C20();
}

unint64_t sub_4B0E4()
{
  result = qword_71CA0;
  if (!qword_71CA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_71CA0);
  }

  return result;
}

uint64_t sub_4B150()
{

  return _swift_deallocObject(v0, 48, 7);
}

double sub_4B188(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = sub_523CC();
  v4 = sub_522C4(v2 * v3);
  sub_58C70();
  v6 = v5 - sub_52328();
  v7 = sub_5237C();

  return v6 - v7;
}

unint64_t sub_4B21C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_71CC8;
  if (!qword_71CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71CC8);
  }

  return result;
}

unint64_t sub_4B470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_71CD0;
  if (!qword_71CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71CD0);
  }

  return result;
}

uint64_t sub_4B524(uint64_t *a1, unsigned int a2)
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

uint64_t sub_4B580(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_4B5E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_4B61C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_4B638(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_4B680(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_4B6F4(uint64_t a1)
{
  sub_4D778(319, &qword_71CD8, type metadata accessor for FeaturePreviewConfiguration, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_4C4E0(319, &qword_71CE0, &qword_71CE8, qword_5E648, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_4D728(319, &unk_71850, &type metadata for UIMetrics.FeaturePreview.HorizontalSize, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_4D728(319, &qword_71CF0, &type metadata for Bool, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_4B860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_187C(&qword_71078, &qword_5C378);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
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

uint64_t sub_4B948(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_187C(&qword_71078, &qword_5C378);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2;
  }

  return result;
}

__n128 sub_4BA18(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_4BA2C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_4BA74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_4BACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_4BB08(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_4BB1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_4BB64(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_4BBCC(uint64_t a1)
{
  sub_4D728(319, &unk_71850, &type metadata for UIMetrics.FeaturePreview.HorizontalSize, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_4BE90();
    if (v2 <= 0x3F)
    {
      sub_4C4E0(319, &qword_71D08, &qword_71078, &qword_5C378, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_4D728(319, &qword_71CF0, &type metadata for Bool, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_4BD10(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4BDE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t sub_4BE90()
{
  result = qword_71D00;
  if (!qword_71D00)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_71D00);
  }

  return result;
}

uint64_t sub_4BEF4(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4BFC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4C074(uint64_t a1)
{
  sub_4D728(319, &unk_71850, &type metadata for UIMetrics.FeaturePreview.HorizontalSize, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_4D728(319, &qword_70B88, &type metadata for Bool, &type metadata accessor for Binding);
    if (v2 <= 0x3F)
    {
      sub_4C4E0(319, &qword_71D08, &qword_71078, &qword_5C378, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_4D728(319, &qword_71CF0, &type metadata for Bool, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_4C1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_4C2BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = sub_187C(&qword_71CF8, &qword_5E7D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4C36C(uint64_t a1)
{
  sub_4C4E0(319, &unk_71E00, &qword_710D8, &qword_5C400, &type metadata accessor for Array);
  if (v1 <= 0x3F)
  {
    sub_4D728(319, &unk_71850, &type metadata for UIMetrics.FeaturePreview.HorizontalSize, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_4C4E0(319, &qword_71D08, &qword_71078, &qword_5C378, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_4D728(319, &qword_71CF0, &type metadata for Bool, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_4C4E0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1F64(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_4C544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_4C580(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_4C594(uint64_t *a1, int a2)
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

uint64_t sub_4C5DC(uint64_t result, int a2, int a3)
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

unint64_t sub_4C67C()
{
  result = qword_71E48;
  if (!qword_71E48)
  {
    sub_1F64(&qword_71A30, &qword_5DD28);
    sub_4C708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71E48);
  }

  return result;
}

unint64_t sub_4C708()
{
  result = qword_71E50;
  if (!qword_71E50)
  {
    sub_1F64(&qword_71A18, &qword_5DCE0);
    sub_4C7C0();
    sub_6ED0(&qword_70AB0, &qword_70AB8, &qword_5AB98, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71E50);
  }

  return result;
}

unint64_t sub_4C7C0()
{
  result = qword_71E58;
  if (!qword_71E58)
  {
    sub_1F64(&qword_71A28, &qword_5DD20);
    sub_6ED0(&qword_71E60, &qword_71A20, &qword_5DD18, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_6ED0(&qword_71E68, &qword_71E70, &qword_5E928, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71E58);
  }

  return result;
}

unint64_t sub_4C8A8()
{
  result = qword_71E78;
  if (!qword_71E78)
  {
    sub_1F64(&qword_71E80, &qword_5E930);
    sub_6ED0(&qword_71A60, &qword_71A50, &qword_5DD48, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1F64(&qword_71A38, &qword_5DD30);
    sub_49C08();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71E78);
  }

  return result;
}

uint64_t sub_4C9A4()
{
  sub_1F64(&qword_71AA0, &qword_5DD80);
  sub_1F64(&qword_71AE8, &qword_5DDA8);
  sub_49E88();
  sub_4A008();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_4CAAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1F64(&qword_71B50, &qword_5DE10);
  sub_1F64(&qword_71B58, &qword_5DE18);
  v4[0] = v1;
  v4[1] = &type metadata for EmptyView;
  v4[2] = v2;
  v4[3] = &protocol witness table for EmptyView;
  type metadata accessor for FeaturePreviewContainerView(255, v4);
  sub_59110();
  sub_59110();
  sub_1F64(&qword_71B60, &qword_5DE20);
  sub_59110();
  sub_595A0();
  sub_1F64(&qword_71C08, &qword_5DE88);
  sub_58CB0();
  sub_1F64(&qword_71C18, &qword_5DE90);
  sub_58CB0();
  sub_4A438();
  sub_4A5D8(&qword_71BD0, &qword_71B58, &qword_5DE18, sub_4A710);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_4A7CC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_6ED0(&qword_71C10, &qword_71C08, &qword_5DE88, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  swift_getWitnessTable();
  sub_6ED0(&qword_71C20, &qword_71C18, &qword_5DE90, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
  return swift_getWitnessTable();
}

unint64_t sub_4CD6C()
{
  result = qword_71E88;
  if (!qword_71E88)
  {
    sub_1F64(&qword_71E90, &qword_5E938);
    sub_1F64(&qword_71C40, &qword_5DEB0);
    sub_4A8C4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71E88);
  }

  return result;
}

uint64_t sub_4CE34(uint64_t *a1)
{
  sub_1F64(&qword_71C70, &qword_5DF20);
  swift_getTupleTypeMetadata2();
  sub_59840();
  swift_getWitnessTable();
  sub_596A0();
  sub_58CB0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_596D0();
  sub_58CB0();
  sub_58CB0();
  sub_58CB0();
  sub_58CB0();
  sub_1F64(&qword_71C78, &qword_5DF28);
  sub_58CB0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_6ED0(&qword_71C80, &qword_71C78, &qword_5DF28, &protocol conformance descriptor for _TraitWritingModifier<A>);
  return swift_getWitnessTable();
}

uint64_t sub_4D13C(uint64_t *a1)
{
  sub_1F64(&qword_70AD8, &qword_5ABA8);
  sub_58CB0();
  sub_6ED0(&qword_70AD0, &qword_70AD8, &qword_5ABA8, &protocol conformance descriptor for _ContentShapeModifier<A>);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_1F64(&qword_71C88, &unk_5DF30);
  sub_58CB0();
  swift_getOpaqueTypeConformance2();
  sub_6ED0(&qword_71C98, &qword_71C88, &unk_5DF30, &protocol conformance descriptor for _TraitWritingModifier<A>);
  return swift_getWitnessTable();
}

unint64_t sub_4D304()
{
  result = qword_71EB8;
  if (!qword_71EB8)
  {
    sub_1F64(&qword_71CC0, &qword_5DF88);
    sub_4D390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71EB8);
  }

  return result;
}

unint64_t sub_4D390()
{
  result = qword_71EC0;
  if (!qword_71EC0)
  {
    sub_1F64(&qword_71CB8, &qword_5DF80);
    sub_4D41C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71EC0);
  }

  return result;
}

unint64_t sub_4D41C()
{
  result = qword_71EC8;
  if (!qword_71EC8)
  {
    sub_1F64(&qword_71CB0, &qword_5DF78);
    sub_4DA48(&qword_77450, &unk_5EB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71EC8);
  }

  return result;
}

uint64_t sub_4D4D8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_187C(&qword_71ED0, &qword_5E950);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_4D5A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_187C(&qword_71ED0, &qword_5E950);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_4D658(uint64_t a1)
{
  type metadata accessor for CTFont(319);
  if (v1 <= 0x3F)
  {
    sub_4D778(319, &unk_71F30, &type metadata accessor for LayoutDirection, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_4D728(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_4D778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_4D7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_4D818(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_4D830(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_4D84C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_4D894(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_4D92C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_4D9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_71F70;
  if (!qword_71F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F70);
  }

  return result;
}

uint64_t sub_4DA48(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _GlyphShape(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_4DB58@<X0>(uint64_t *a1@<X8>)
{
  result = sub_58E30();
  *a1 = result;
  return result;
}

unint64_t sub_4DBB0()
{
  result = qword_71F90;
  if (!qword_71F90)
  {
    sub_1F64(&qword_71F88, &qword_5EBF8);
    sub_4DC68();
    sub_6ED0(&qword_70AB0, &qword_70AB8, &qword_5AB98, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F90);
  }

  return result;
}

unint64_t sub_4DC68()
{
  result = qword_71F98;
  if (!qword_71F98)
  {
    sub_1F64(&qword_71FA0, &qword_5EC30);
    sub_6ED0(&qword_71B38, &qword_71B40, &qword_5DDC8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71F98);
  }

  return result;
}

uint64_t sub_4DD74@<X0>(_BYTE *a1@<X8>)
{
  result = sub_58DB0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_4DDCC@<X0>(uint64_t a1@<X8>)
{
  result = sub_58E50();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_4DE30(uint64_t a1, double a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v10 = sub_58CA0();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v24 - v15;
  sub_58FE0();
  if ((sub_58FC0() & 1) == 0 || (type metadata accessor for _GlyphShape(0), sub_4422C(v16), (*(v11 + 104))(v14, enum case for LayoutDirection.leftToRight(_:), v10), v17 = sub_58C90(), v18 = *(v11 + 8), v18(v14, v10), v18(v16, v10), (v17 & 1) == 0))
  {
    sub_58FF0();
    if ((sub_58FC0() & 1) == 0 || (type metadata accessor for _GlyphShape(0), sub_4422C(v16), (*(v11 + 104))(v14, enum case for LayoutDirection.rightToLeft(_:), v10), v19 = sub_58C90(), v20 = *(v11 + 8), v20(v14, v10), v20(v16, v10), (v19 & 1) == 0))
    {
      sub_58FF0();
      if ((sub_58FC0() & 1) == 0 || (type metadata accessor for _GlyphShape(0), sub_4422C(v16), (*(v11 + 104))(v14, enum case for LayoutDirection.leftToRight(_:), v10), v21 = sub_58C90(), v22 = *(v11 + 8), v22(v14, v10), v22(v16, v10), (v21 & 1) == 0))
      {
        sub_58FE0();
        if (sub_58FC0())
        {
          type metadata accessor for _GlyphShape(0);
          sub_4422C(v16);
          (*(v11 + 104))(v14, enum case for LayoutDirection.rightToLeft(_:), v10);
          sub_58C90();
          v23 = *(v11 + 8);
          v23(v14, v10);
          v23(v16, v10);
        }
      }

      v25.origin.x = a3;
      v25.origin.y = a4;
      v25.size.width = a5;
      v25.size.height = a6;
      CGRectGetWidth(v25);
    }
  }
}

unint64_t sub_4E1E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_71FA8;
  if (!qword_71FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71FA8);
  }

  return result;
}

uint64_t sub_4E238()
{
  v1 = type metadata accessor for FeatureOptionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_EAAC(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v5 = (v0 + v4 + *(v1 + 36));
  sub_187C(&qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for FeaturePreviewConfiguration(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = v5 + *(v6 + 28);
      v8 = sub_187C(&qword_710B8, &unk_5C3F0);
      if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
      {
        v10 = sub_58920();
        v11 = *(*(v10 - 8) + 8);
        v11(v7, v10);
        v11(&v7[*(v8 + 48)], v10);
      }
    }
  }

  else
  {
  }

  sub_178CC(*(v0 + v4 + *(v1 + 40)), *(v0 + v4 + *(v1 + 40) + 8));

  return _swift_deallocObject(v0, v4 + v3, v2 | 7);
}

uint64_t sub_4E4A0()
{
  v1 = type metadata accessor for FeatureToggleView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_EAAC(*(v5 + 16), *(v5 + 24), *(v5 + 32));

  v6 = (v0 + v3 + *(v1 + 36));
  sub_187C(&qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for FeaturePreviewConfiguration(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = v6 + *(v7 + 28);
      v9 = sub_187C(&qword_710B8, &unk_5C3F0);
      if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
      {
        v11 = sub_58920();
        v12 = *(*(v11 - 8) + 8);
        v12(v8, v11);
        v12(&v8[*(v9 + 48)], v11);
      }
    }
  }

  else
  {
  }

  sub_178CC(*(v5 + *(v1 + 40)), *(v5 + *(v1 + 40) + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4E770()
{
  v1 = type metadata accessor for FeatureOptionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = (v2 + 16) & ~v2;
  sub_EAAC(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16));

  v5 = (v0 + v4 + *(v1 + 36));
  sub_187C(&qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for FeaturePreviewConfiguration(0);
    if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
    {

      v7 = v5 + *(v6 + 28);
      v8 = sub_187C(&qword_710B8, &unk_5C3F0);
      if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
      {
        v11 = sub_58920();
        v12 = *(*(v11 - 8) + 8);
        v12(v7, v11);
        v12(&v7[*(v8 + 48)], v11);
      }
    }
  }

  else
  {
  }

  v9 = (v3 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_178CC(*(v0 + v4 + *(v1 + 40)), *(v0 + v4 + *(v1 + 40) + 8));
  sub_EAAC(*(v0 + v9), *(v0 + v9 + 8), *(v0 + v9 + 16));
  sub_178CC(*(v0 + v9 + 24), *(v0 + v9 + 32));

  return _swift_deallocObject(v0, v9 + 33, v2 | 7);
}

BOOL sub_4EA28()
{
  v1 = *(v0 + 16);
  sub_187C(&qword_710D8, &qword_5C400);
  sub_596E0();
  return v3 == *(v1 + 72);
}

uint64_t sub_4EAA0(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

unint64_t sub_4EAAC()
{
  result = qword_71FE0;
  if (!qword_71FE0)
  {
    sub_1F64(&qword_71FD8, &unk_5ECC0);
    sub_6ED0(&qword_70C40, &qword_70C48, &qword_5ADD8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_71FE0);
  }

  return result;
}

uint64_t sub_4EB64(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_187C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_4EBCC()
{
  v1 = type metadata accessor for FeatureToggleView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;

  sub_EAAC(*(v5 + 16), *(v5 + 24), *(v5 + 32));

  v6 = (v0 + v3 + *(v1 + 36));
  sub_187C(&qword_710B0, &qword_5DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for FeaturePreviewConfiguration(0);
    if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
    {

      v8 = v6 + *(v7 + 28);
      v9 = sub_187C(&qword_710B8, &unk_5C3F0);
      if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
      {
        v12 = sub_58920();
        v13 = *(*(v12 - 8) + 8);
        v13(v8, v12);
        v13(&v8[*(v9 + 48)], v12);
      }
    }
  }

  else
  {
  }

  v10 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_178CC(*(v5 + *(v1 + 40)), *(v5 + *(v1 + 40) + 8));
  sub_EAAC(*(v0 + v10), *(v0 + v10 + 8), *(v0 + v10 + 16));
  sub_178CC(*(v0 + v10 + 24), *(v0 + v10 + 32));

  return _swift_deallocObject(v0, v10 + 33, v2 | 7);
}

uint64_t sub_4EE8C(uint64_t (*a1)(void), uint64_t (*a2)(unint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v2 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a2(v2 + v4, v5);
}

unint64_t sub_4EF44()
{
  result = qword_72018;
  if (!qword_72018)
  {
    sub_1F64(&qword_71FF8, &qword_5ECE0);
    sub_1F64(&qword_71FF0, &qword_5ECD8);
    sub_58EE0();
    sub_6ED0(&qword_72008, &qword_71FF0, &qword_5ECD8, &protocol conformance descriptor for Toggle<A>);
    sub_4D92C(&qword_72010, &type metadata accessor for SwitchToggleStyle, &protocol conformance descriptor for SwitchToggleStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72018);
  }

  return result;
}

unint64_t sub_4F09C()
{
  result = qword_72028;
  if (!qword_72028)
  {
    sub_1F64(&qword_71C70, &qword_5DF20);
    sub_6ED0(&qword_72030, &qword_71B48, &unk_5DE00, &unk_5E138);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_72028);
  }

  return result;
}

uint64_t sub_4F14C()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_4F190(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_4F1A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for FeaturePreviewConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(type metadata accessor for FeaturePreviewView(0, v3, v4, v8) - 8);
  v10 = *(v1 + v7);
  v11 = v1 + ((v7 + *(v9 + 80) + 4) & ~*(v9 + 80));

  return sub_40798(v1 + v6, v10, v11, v3, v4, a1);
}

uint64_t sub_4F2A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for FeaturePreviewConfiguration(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v6 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v27 = type metadata accessor for FeaturePreviewView(0, v1, v2, v8);
  v9 = *(*(v27 - 8) + 64);
  v26 = *(*(v27 - 8) + 80);
  v10 = (v7 + v26 + 4) & ~v26;

  v11 = v0 + v6 + *(v3 + 28);
  v12 = sub_187C(&qword_710B8, &unk_5C3F0);
  v13 = (*(v12 - 8) + 48);
  v23 = *v13;
  if (!(*v13)(v11, 1, v12))
  {
    v24 = v10;
    v14 = sub_58920();
    v22 = v5;
    v15 = *(*(v14 - 8) + 8);
    v15(v11, v14);
    v16 = v14;
    v10 = v24;
    v15(v11 + *(v12 + 48), v16);
    v5 = v22;
  }

  v17 = (v0 + v10);
  if (!(*(v4 + 48))(v0 + v10, 1, v3))
  {
    v25 = v10;

    v18 = v17 + *(v3 + 28);
    if (!v23(v18, 1, v12))
    {
      v19 = sub_58920();
      v20 = *(*(v19 - 8) + 8);
      v20(v18, v19);
      v20(&v18[*(v12 + 48)], v19);
    }

    v10 = v25;
  }

  if (*(v17 + *(v27 + 36)))
  {
  }

  sub_178CC(*(v17 + *(v27 + 44)), *(v17 + *(v27 + 44) + 8));

  return _swift_deallocObject(v0, v10 + v9, v5 | v26 | 7);
}

uint64_t sub_4F5D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(type metadata accessor for FeaturePreviewConfiguration(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v9 = *(type metadata accessor for FeaturePreviewView(0, v3, v4, v8) - 8);
  v10 = *(v1 + v7);
  v11 = v1 + ((v7 + *(v9 + 80) + 4) & ~*(v9 + 80));

  return sub_40AAC(v1 + v6, v10, v11, v3, v4, a1);
}

uint64_t sub_4F6D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_4F700()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = sub_58920();
  v4 = *(v3 - 8);
  v24 = *(v4 + 80);
  v5 = (v24 + 32) & ~v24;
  v6 = *(v4 + 64);
  v7 = type metadata accessor for FeaturePreviewConfiguration(0);
  v8 = *(v7 - 8);
  v23 = *(v8 + 80);
  v9 = (v5 + v6 + v23) & ~v23;
  v10 = v9 + *(v8 + 64);
  v22 = type metadata accessor for FeaturePreviewView(0, v1, v2, v11);
  v20 = *(*(v22 - 8) + 80);
  v12 = (v10 + v20) & ~v20;
  v21 = *(*(v22 - 8) + 64);
  v19 = *(v4 + 8);
  v19(v0 + v5, v3);

  v13 = v0 + v9 + *(v7 + 28);
  v14 = sub_187C(&qword_710B8, &unk_5C3F0);
  v15 = *(*(v14 - 8) + 48);
  if (!v15(v13, 1, v14))
  {
    v19(v13, v3);
    v19(v13 + *(v14 + 48), v3);
  }

  v16 = (v0 + v12);
  if (!(*(v8 + 48))(v0 + v12, 1, v7))
  {

    v17 = v16 + *(v7 + 28);
    if (!v15(v17, 1, v14))
    {
      v19(v17, v3);
      v19(&v17[*(v14 + 48)], v3);
    }
  }

  if (*(v16 + *(v22 + 36)))
  {
  }

  sub_178CC(*(v16 + *(v22 + 44)), *(v16 + *(v22 + 44) + 8));

  return _swift_deallocObject(v0, v12 + v21, v24 | v23 | v20 | 7);
}

uint64_t sub_4FA70(void (*a1)(uint64_t *__return_ptr, int *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_58920() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for FeaturePreviewConfiguration(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v12 = *(type metadata accessor for FeaturePreviewView(0, v3, v4, v11) - 8);
  return sub_40384(v1 + v6, v1 + v9, v1 + ((v10 + *(v12 + 80)) & ~*(v12 + 80)), v3, v4, a1);
}

uint64_t sub_4FBC4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeaturePreviewConfiguration(0) - 8);
  v4 = *(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  v5 = v4;
  sub_59290();
  v6 = sub_592E0();
  v8 = v7;
  v10 = v9;
  v12 = v11;

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  *(a1 + 24) = v12;
  return result;
}