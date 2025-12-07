id sub_36EF8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = _s30MOSuggestionAssetMapsClustererCMa();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_36FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_8F350();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_37090(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v7 = sub_8F350();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s30MOSuggestionAssetMapsClustererC7ClusterVMa(uint64_t a1)
{
  result = qword_C5A60;
  if (!qword_C5A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_37180(uint64_t a1)
{
  sub_3724C();
  if (v1 <= 0x3F)
  {
    sub_8F350();
    if (v2 <= 0x3F)
    {
      sub_372A8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_3724C()
{
  if (!qword_C5A70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_C5A70);
    }
  }
}

void sub_372A8(uint64_t a1)
{
  if (!qword_C5A78)
  {
    sub_37300();
    v1 = sub_90D10();
    if (!v2)
    {
      atomic_store(v1, &qword_C5A78);
    }
  }
}

unint64_t sub_37300()
{
  result = qword_C5A80;
  if (!qword_C5A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C5A80);
  }

  return result;
}

uint64_t sub_37394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double *sub_373DC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_3A90(&qword_C4B20, &unk_9A200);
  v4 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_374D8(double **a1)
{
  v2 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_57204(v3);
  }

  v4 = *(v3 + 2);
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_37580(v5);
  *a1 = v3;
}

void sub_37580(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_910A0(v2);
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
        _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
        v6 = sub_90780();
        *(v6 + 2) = v5;
      }

      v7 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_378B0(v8, v9, a1, v4);
      v6[2] = 0.0;

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
    sub_376AC(0, v2, 1, a1);
  }
}

uint64_t sub_376AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = (&v29 - v13);
  result = __chkstk_darwin(v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    v34 = v21;
    while (1)
    {
      sub_39BDC(v24, v18);
      sub_39BDC(v21, v14);
      v26 = v18[2];
      v27 = v14[2];
      sub_39C94(v14);
      result = sub_39C94(v18);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v19)
      {
        break;
      }

      sub_39B78(v24, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_39B78(v11, v21);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_378B0(unint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v107 = a1;
  v117 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v113 = *(v117 - 8);
  v9 = __chkstk_darwin(v117);
  v109 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v116 = &v102 - v12;
  v13 = __chkstk_darwin(v11);
  v15 = (&v102 - v14);
  __chkstk_darwin(v13);
  v17 = (&v102 - v16);
  v115 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = _swiftEmptyArrayStorage;
LABEL_94:
    v5 = *v107;
    if (!*v107)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      v20 = sub_570F0(v20);
    }

    v118 = v20;
    v98 = *(v20 + 2);
    if (v98 >= 2)
    {
      while (*v115)
      {
        v99 = v20[2 * v98];
        v100 = v20[2 * v98 + 3];
        sub_380F4(*v115 + *(v113 + 72) * *&v99, *v115 + *(v113 + 72) * *&v20[2 * v98 + 2], *v115 + *(v113 + 72) * *&v100, v5);
        if (v6)
        {
          goto LABEL_104;
        }

        if (*&v100 < *&v99)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_570F0(v20);
        }

        if (v98 - 2 >= *(v20 + 2))
        {
          goto LABEL_120;
        }

        v101 = &v20[2 * v98];
        *v101 = v99;
        v101[1] = v100;
        v118 = v20;
        sub_57064(v98 - 1);
        v20 = v118;
        v98 = *(v118 + 2);
        if (v98 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v105 = a4;
  v19 = 0;
  v20 = _swiftEmptyArrayStorage;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    if (v22 >= v18)
    {
      v18 = v22;
    }

    else
    {
      v23 = v21;
      v24 = *v115;
      v25 = *(v113 + 72);
      v5 = *v115 + v25 * v22;
      sub_39BDC(v5, v17);
      sub_39BDC(v24 + v25 * v23, v15);
      v26 = v17[2];
      v27 = v15[2];
      sub_39C94(v15);
      sub_39C94(v17);
      v106 = v23;
      v28 = v23 + 2;
      v114 = v25;
      v29 = v24 + v25 * v28;
      while (v18 != v28)
      {
        sub_39BDC(v29, v17);
        sub_39BDC(v5, v15);
        v30 = v17[2];
        v31 = v15[2];
        sub_39C94(v15);
        sub_39C94(v17);
        ++v28;
        v29 += v114;
        v5 += v114;
        if (v27 < v26 == v31 >= v30)
        {
          v18 = v28 - 1;
          break;
        }
      }

      v21 = v106;
      if (v27 < v26)
      {
        if (v18 < v106)
        {
          goto LABEL_123;
        }

        if (v106 < v18)
        {
          v103 = v20;
          v104 = v6;
          v32 = v114 * (v18 - 1);
          v33 = v18 * v114;
          v112 = v18;
          v34 = v18;
          v35 = v106;
          v36 = v106 * v114;
          do
          {
            if (v35 != --v34)
            {
              v5 = *v115;
              if (!*v115)
              {
                goto LABEL_129;
              }

              sub_39B78(v5 + v36, v109);
              if (v36 < v32 || v5 + v36 >= v5 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_39B78(v109, v5 + v32);
            }

            ++v35;
            v32 -= v114;
            v33 -= v114;
            v36 += v114;
          }

          while (v35 < v34);
          v20 = v103;
          v6 = v104;
          v21 = v106;
          v18 = v112;
        }
      }
    }

    v37 = v115[1];
    if (v18 < v37)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_122;
      }

      if (v18 - v21 < v105)
      {
        if (__OFADD__(v21, v105))
        {
          goto LABEL_124;
        }

        if (v21 + v105 >= v37)
        {
          v38 = v115[1];
        }

        else
        {
          v38 = v21 + v105;
        }

        if (v38 < v21)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v18 != v38)
        {
          break;
        }
      }
    }

    v39 = v18;
    if (v18 < v21)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_17660(0, *(v20 + 2) + 1, 1, v20);
    }

    v41 = *(v20 + 2);
    v40 = *(v20 + 3);
    v5 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      v20 = sub_17660((v40 > 1), v41 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v42 = &v20[2 * v41];
    *(v42 + 4) = v21;
    *(v42 + 5) = v39;
    v43 = *v107;
    if (!*v107)
    {
      goto LABEL_131;
    }

    v110 = v39;
    if (v41)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v20 + 4);
          v46 = *(v20 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_110;
          }

          v61 = &v20[2 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_113;
          }

          v67 = &v20[2 * v44 + 4];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_117;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v20[2 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_112;
        }

        v74 = &v20[2 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_115;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        v82 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (!*v115)
        {
          goto LABEL_128;
        }

        v83 = *&v20[2 * v82 + 4];
        v5 = *&v20[2 * v44 + 5];
        sub_380F4(*v115 + *(v113 + 72) * v83, *v115 + *(v113 + 72) * *&v20[2 * v44 + 4], *v115 + *(v113 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_104;
        }

        if (v5 < v83)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_570F0(v20);
        }

        if (v82 >= *(v20 + 2))
        {
          goto LABEL_107;
        }

        v84 = &v20[2 * v82];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v20;
        sub_57064(v44);
        v20 = v118;
        v5 = *(v118 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v20[2 * v5 + 4];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_108;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_109;
      }

      v56 = &v20[2 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_111;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_114;
      }

      if (v60 >= v52)
      {
        v78 = &v20[2 * v44 + 4];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v115[1];
    v19 = v110;
    if (v110 >= v18)
    {
      goto LABEL_94;
    }
  }

  v103 = v20;
  v104 = v6;
  v85 = *v115;
  v86 = *(v113 + 72);
  v87 = *v115 + v86 * (v18 - 1);
  v88 = v18;
  v89 = -v86;
  v106 = v21;
  v90 = v21 - v88;
  v112 = v88;
  v108 = v86;
  v91 = v85 + v88 * v86;
  v110 = v38;
LABEL_85:
  v5 = v91;
  v111 = v90;
  v92 = v90;
  v114 = v87;
  v93 = v87;
  while (1)
  {
    sub_39BDC(v5, v17);
    sub_39BDC(v93, v15);
    v94 = v17[2];
    v95 = v15[2];
    sub_39C94(v15);
    sub_39C94(v17);
    if (v95 >= v94)
    {
LABEL_84:
      v87 = v114 + v108;
      v90 = v111 - 1;
      v91 += v108;
      v39 = v110;
      if (++v112 != v110)
      {
        goto LABEL_85;
      }

      v20 = v103;
      v6 = v104;
      v21 = v106;
      if (v110 < v106)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v85)
    {
      break;
    }

    v96 = v116;
    sub_39B78(v5, v116);
    swift_arrayInitWithTakeFrontToBack();
    sub_39B78(v96, v93);
    v93 += v89;
    v5 += v89;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
}

uint64_t sub_380F4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v44 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v8 = __chkstk_darwin(v44);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v12 = (&v39 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v48 = a1;
  v47 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v42 = v25;
      v43 = a4;
      do
      {
        v40 = v24;
        v27 = a2 + v25;
        while (1)
        {
          if (a2 <= a1)
          {
            v48 = a2;
            v24 = v40;
            goto LABEL_57;
          }

          v29 = a3;
          v41 = v24;
          a3 += v25;
          v30 = v26 + v25;
          sub_39BDC(v30, v12);
          v31 = v27;
          v32 = v27;
          v33 = v12;
          v34 = v45;
          sub_39BDC(v32, v45);
          v35 = *(v33 + 16);
          v36 = *(v34 + 16);
          v37 = v34;
          v12 = v33;
          sub_39C94(v37);
          sub_39C94(v33);
          if (v36 < v35)
          {
            break;
          }

          v24 = v30;
          if (v29 < v26 || a3 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v30;
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v30;
            }
          }

          v26 = v24;
          v28 = v30 > v43;
          v25 = v42;
          if (!v28)
          {
            goto LABEL_55;
          }
        }

        if (v29 < a2 || a3 >= a2)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
        }

        else
        {
          v38 = v29 == a2;
          a2 = v31;
          v25 = v42;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v41;
      }

      while (v26 > v43);
    }

LABEL_55:
    v48 = a2;
LABEL_57:
    v46 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v46 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        sub_39BDC(a2, v12);
        v21 = v45;
        sub_39BDC(a4, v45);
        v22 = v12[2];
        v23 = *(v21 + 16);
        sub_39C94(v21);
        sub_39C94(v12);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v48 = a1;
      }

      while (a4 < v19 && a2 < a3);
    }
  }

  sub_57104(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_38558(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_38644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_906B0();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_38BD0(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_90F10();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
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

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_38BD0(uint64_t a1, unint64_t a2)
{
  v2 = sub_906C0();
  v6 = sub_38C50(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_38C50(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_90D30();
    if (!v9 || (v10 = v9, v11 = sub_77160(v9, 0), v12 = sub_38DA8(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_90620();

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
      return sub_90620();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_90F10();
LABEL_4:

  return sub_90620();
}

unint64_t sub_38DA8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_38FC8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_90680();
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
          result = sub_90F10();
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

    result = sub_38FC8(v12, a6, a7);
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

    result = sub_90660();
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

unint64_t sub_38FC8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_90690();
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
    v5 = sub_90670();
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

uint64_t sub_39044(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v32 = *(v8 - 8);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v14 = &v29 - v13;
  v15 = a4 + 7;
  v16 = -1 << *(a4 + 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & a4[7];
  if (!a2)
  {
LABEL_18:
    v19 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v15;
    a1[2] = ~v16;
    a1[3] = v19;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v19 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v19 = 0;
    v29 = v16;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      a1 = a4;
      v25 = a4[6];
      v26 = *(v32 + 72);
      sub_39BDC(v25 + v26 * (v24 | (v19 << 6)), v11);
      sub_39B78(v11, v14);
      sub_39B78(v14, a2);
      if (v21 == v31)
      {
        a4 = a1;
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += v26;
      result = v21;
      v27 = __OFADD__(v21++, 1);
      a4 = a1;
      if (v27)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = v15[v23];
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v28 = v19 + 1;
    }

    else
    {
      v28 = v20;
    }

    v19 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v16 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

double *sub_3926C(double *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_3A90(&qword_C4B38, &qword_990D0);
    v4 = sub_90780();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

void sub_39308(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2)
  {
    v3 = sub_90780();
    *(v3 + 2) = v2;
    memset_pattern16(v3 + 4, &unk_9A210, 8 * v2);
    v4 = *(v1 + 16);
  }

  else
  {
    v4 = 0;
    v3 = _swiftEmptyArrayStorage;
  }

  v5 = sub_3926C(v3, v4);

  v6 = *(v1 + 16);
  if (!v6)
  {
LABEL_33:
    __break(1u);
    return;
  }

  v7 = v6 - 1;
  if (v6 != 1)
  {
    v8 = 0;
    v31 = v1;
    v32 = v1 + 8;
    v9 = 5;
    v10 = 1;
    v11 = v6 - 1;
    v29 = v6 - 1;
    v30 = *(v1 + 16);
    while (v8 != v7)
    {
      v12 = *(v1 + 16);
      if (v6 > v12 || v8 + 1 >= v12)
      {
        goto LABEL_32;
      }

      v33 = v8 + 1;
      v14 = *(_s30MOSuggestionAssetMapsClustererC7ClusterVMa(0) - 8);
      v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v16 = *(v14 + 72);
      v17 = (v1 + v15 + v16 * v8);
      v34 = v10;
      v35 = v9;
      v18 = (v32 + v15 + v16 * v10);
      v19 = v11;
      do
      {
        v20 = *v17;
        v21 = v17[1];
        v23 = *(v18 - 1);
        v22 = *v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_20E28(v5);
        }

        if (v8 >= *(v5 + 2))
        {
          __break(1u);
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v24 = *&v5[v8 + 4];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v8 + 4] = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = sub_20E14(v24);
          *&v5[v8 + 4] = v24;
        }

        if ((v9 - 4) >= *(v24 + 2))
        {
          goto LABEL_28;
        }

        v26 = (v20 - v23) * (v20 - v23) + (v21 - v22) * (v21 - v22);
        v24[v9] = v26;
        if ((v9 - 4) >= *(v5 + 2))
        {
          goto LABEL_29;
        }

        v27 = *&v5[v9];
        v28 = swift_isUniquelyReferenced_nonNull_native();
        *&v5[v9] = v27;
        if ((v28 & 1) == 0)
        {
          v27 = sub_20E14(v27);
          *&v5[v9] = v27;
        }

        if (v8 >= *(v27 + 2))
        {
          goto LABEL_30;
        }

        v27[v8 + 4] = v26;
        ++v9;
        v18 = (v18 + v16);
        --v19;
      }

      while (v19);
      --v11;
      v9 = v35 + 1;
      v10 = v34 + 1;
      ++v8;
      v7 = v29;
      v6 = v30;
      v1 = v31;
      if (v33 == v29)
      {
        return;
      }
    }

LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }
}

double sub_395A4(uint64_t a1, char a2, char a3, char a4, char a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v53 = *(a1 + 96);
    v10 = *(a1 + 48);
    v49 = *(a1 + 32);
    v50 = v10;
    v11 = *(a1 + 80);
    v51 = *(a1 + 64);
    v52 = v11;
    if (v5 == 1)
    {
      longitude = *(&v49 + 1);
      latitude = *&v49;
      if ((v51 & 1) == 0 && *(&v50 + 1) >= 2)
      {
        if (a5)
        {
          sub_39AC8(&v49, v48);
          v14 = 0.01;
LABEL_23:
          v56.span.latitudeDelta = v14;
LABEL_29:
          v37 = 1.4;
LABEL_33:
          v38 = v56.span.latitudeDelta * v37;
          v39 = v14 * v37;
          if (a2)
          {
            v38 = v38 * 1.4;
            v39 = v39 * 0.9;
            latitude = latitude + v38 / -12.0;
          }

          if (a4)
          {
            v38 = v38 * 1.3;
          }

          if (a3)
          {
            v39 = v39 * 1.3;
          }

          v40 = fmin(v39, 180.0);
          v41 = fmin(v38, 180.0);
          if (!sub_41AC4(latitude, longitude, v41, v40))
          {
            if (qword_C3978 != -1)
            {
              swift_once();
            }

            v42 = sub_900D0();
            sub_7FF0(v42, qword_C59A0);
            v43 = sub_900B0();
            v44 = sub_90A70();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              *v45 = 134218752;
              *(v45 + 4) = latitude;
              *(v45 + 12) = 2048;
              *(v45 + 14) = longitude;
              *(v45 + 22) = 2048;
              *(v45 + 24) = v41;
              *(v45 + 32) = 2048;
              *(v45 + 34) = v40;
              _os_log_impl(&dword_0, v43, v44, "[MapSnapshot] makeRegion failed with invalid region: centerLatitude = %f, centerLongitude = %f, targetLatitudeDelta = %f, targetLongitudeDelta = %f", v45, 0x2Au);
            }

            v57.origin.x = MKMapRectWorld.origin.x;
            v57.origin.y = MKMapRectWorld.origin.y;
            v57.size.width = MKMapRectWorld.size.width;
            v57.size.height = MKMapRectWorld.size.height;
            *&latitude = MKCoordinateRegionForMapRect(v57);
          }

          sub_39B24(&v49);
          return latitude;
        }

        sub_39AC8(&v49, v48);
        v14 = 0.01;
LABEL_31:
        v56.span.latitudeDelta = v14;
        goto LABEL_32;
      }

      if (v53 <= 0.0)
      {
        if (a5)
        {
          sub_39AC8(&v49, v48);
          v14 = 0.04;
          goto LABEL_23;
        }

        sub_39AC8(&v49, v48);
        v14 = 0.04;
        goto LABEL_31;
      }

      v34 = v53 / 111000.0;
      if (v53 >= 150.0)
      {
        v36 = v34 * 3.0 + 0.003;
        if (v36 <= 0.1)
        {
          v35 = v36;
        }

        else
        {
          v35 = 0.1;
        }
      }

      else
      {
        v35 = v34 + v34 + 0.003;
      }

      sub_39AC8(&v49, v48);
      v14 = v35;
      v56.span.latitudeDelta = v35;
      if (a5)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v19 = (a1 + 32);
      sub_39AC8(&v49, v48);
      v48[0] = _swiftEmptyArrayStorage;
      sub_1CA48(0, v5, 0);
      v20 = v48[0];
      v21 = *(v48[0] + 16);
      v22 = v5;
      do
      {
        v23 = *v19;
        v48[0] = v20;
        v24 = *(v20 + 24);
        if (v21 >= v24 >> 1)
        {
          v47 = v23;
          sub_1CA48((v24 > 1), v21 + 1, 1);
          v23 = v47;
          v20 = v48[0];
        }

        *(v20 + 16) = v21 + 1;
        *(v20 + 16 * v21 + 32) = v23;
        v19 = (v19 + 72);
        ++v21;
        --v22;
      }

      while (v22);
      v25 = [objc_opt_self() polygonWithCoordinates:v20 + 32 count:v5];

      [v25 boundingMapRect];
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v33 = v32;

      v55.origin.x = v27;
      v55.origin.y = v29;
      v55.size.width = v31;
      v55.size.height = v33;
      *(&v14 - 3) = MKCoordinateRegionForMapRect(v55);
      latitude = v56.center.latitude;
      longitude = v56.center.longitude;
      if (a5)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    v37 = 1.1;
    goto LABEL_33;
  }

  if (qword_C3978 != -1)
  {
    swift_once();
  }

  v15 = sub_900D0();
  sub_7FF0(v15, qword_C59A0);
  v16 = sub_900B0();
  v17 = sub_90A70();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "[MapSnapshot] makeRegion failed with 0 locations", v18, 2u);
  }

  v54.origin.x = MKMapRectNull.origin.x;
  v54.origin.y = MKMapRectNull.origin.y;
  v54.size.width = MKMapRectNull.size.width;
  v54.size.height = MKMapRectNull.size.height;
  *&latitude = MKCoordinateRegionForMapRect(v54);
  return latitude;
}

uint64_t sub_39B78(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_39BDC(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_39C40()
{
  result = qword_C5AE0;
  if (!qword_C5AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5AE0);
  }

  return result;
}

uint64_t sub_39C94(uint64_t a1)
{
  v2 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_39CF8(uint64_t a1, uint64_t a2)
{
  v4 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_39DA0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_39DC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_39E0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_39E6C()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C5B80);
  v1 = sub_7FF0(v0, qword_C5B80);
  if (qword_C3A88 != -1)
  {
    swift_once();
  }

  v2 = sub_7FF0(v0, qword_D0768);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_39F34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6)
{
  *(v6 + 628) = a5;
  *(v6 + 627) = a4;
  *(v6 + 504) = a3;
  *(v6 + 512) = a6;
  *(v6 + 488) = a1;
  *(v6 + 496) = a2;
  v7 = sub_3A90(&qword_C5C40, &unk_9A2E0);
  *(v6 + 520) = v7;
  *(v6 + 528) = *(v7 - 8);
  *(v6 + 536) = swift_task_alloc();
  sub_3A90(&qword_C8820, &qword_9C900);
  *(v6 + 544) = swift_task_alloc();
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = sub_90860();
  *(v6 + 568) = sub_90850();
  v9 = sub_907F0();
  *(v6 + 576) = v9;
  *(v6 + 584) = v8;

  return _swift_task_switch(sub_3A08C, v9, v8);
}

uint64_t sub_3A08C()
{
  v1 = *(v0 + 504);
  v2 = *(v1 + 16);
  if (v2)
  {
    v36 = *(v0 + 628);
    v35 = **(v0 + 496);
    v3 = v1 + 32;
    v4 = sub_90880();
    v5 = *(v4 - 8);
    v34 = *(v5 + 56);
    v33 = (v5 + 48);
    v32 = (v5 + 8);
    do
    {
      v7 = *(v0 + 552);
      v8 = *(v0 + 544);
      v9 = *(v0 + 512);
      v10 = *(v0 + 627);
      *(v0 + 16) = *v3;
      v12 = *(v3 + 32);
      v11 = *(v3 + 48);
      v13 = *(v3 + 16);
      *(v0 + 80) = *(v3 + 64);
      *(v0 + 48) = v12;
      *(v0 + 64) = v11;
      *(v0 + 32) = v13;
      v34(v7, 1, 1, v4);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = (v14 + 16);
      *(v14 + 24) = 0;
      v16 = *(v0 + 64);
      *(v14 + 64) = *(v0 + 48);
      *(v14 + 80) = v16;
      *(v14 + 96) = *(v0 + 80);
      v17 = *(v0 + 32);
      *(v14 + 32) = *(v0 + 16);
      *(v14 + 48) = v17;
      *(v14 + 104) = v10;
      *(v14 + 105) = v36;
      *(v14 + 112) = v9;
      sub_3CB58(v7, v8);
      v18 = (*v33)(v8, 1, v4);
      v19 = *(v0 + 544);
      v20 = *(v0 + 512);
      if (v18 == 1)
      {
        sub_39AC8(v0 + 16, v0 + 88);
        sub_39AC8(v0 + 16, v0 + 160);
        v21 = v20;
        sub_3CBC8(v19);
        if (*v15)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_39AC8(v0 + 16, v0 + 232);
        sub_39AC8(v0 + 16, v0 + 304);
        v24 = v20;
        sub_90870();
        (*v32)(v19, v4);
        if (*v15)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_907F0();
          v23 = v25;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = 0;
LABEL_9:
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_9A300;
      *(v26 + 24) = v14;

      sub_3A90(&qword_C4B08, &qword_9A2C0);
      v27 = v23 | v22;
      if (v23 | v22)
      {
        v27 = v0 + 432;
        *(v0 + 432) = 0;
        *(v0 + 440) = 0;
        *(v0 + 448) = v22;
        *(v0 + 456) = v23;
      }

      v6 = *(v0 + 552);
      *(v0 + 464) = 1;
      *(v0 + 472) = v27;
      *(v0 + 480) = v35;
      swift_task_create();

      sub_39B24(v0 + 16);
      sub_3CBC8(v6);
      v3 += 72;
      --v2;
    }

    while (v2);
  }

  sub_3A90(&qword_C4B08, &qword_9A2C0);
  sub_90820();
  *(v0 + 592) = _swiftEmptyArrayStorage;
  v28 = sub_90850();
  *(v0 + 600) = v28;
  v29 = swift_task_alloc();
  *(v0 + 608) = v29;
  *v29 = v0;
  v29[1] = sub_3A470;
  v30 = *(v0 + 520);

  return TaskGroup.Iterator.next(isolation:)(v0 + 376, v28, &protocol witness table for MainActor, v30);
}

uint64_t sub_3A470()
{
  v1 = *v0;

  v2 = *(v1 + 584);
  v3 = *(v1 + 576);

  return _swift_task_switch(sub_3A5B4, v3, v2);
}

uint64_t sub_3A5B4()
{
  v1 = *(v0 + 376);
  if (v1)
  {
    v3 = *(v0 + 384);
    v2 = *(v0 + 392);
    v4 = *(v0 + 400);
    v5 = *(v0 + 408);
    v20 = *(v0 + 416);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v0 + 592);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_1778C(0, *(v7 + 2) + 1, 1, v7);
    }

    v9 = *(v7 + 2);
    v8 = *(v7 + 3);
    if (v9 >= v8 >> 1)
    {
      v7 = sub_1778C((v8 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    v10 = &v7[7 * v9];
    *(v10 + 4) = v1;
    *(v10 + 40) = v3;
    *(v10 + 41) = BYTE1(v3) & 1;
    v11 = *(v0 + 616);
    *(v10 + 23) = *(v0 + 620);
    *(v10 + 42) = v11;
    *(v10 + 6) = v2;
    *(v10 + 56) = v4 & 1;
    *(v10 + 57) = BYTE1(v4) & 1;
    *(v10 + 58) = BYTE2(v4) & 1;
    v12 = *(v0 + 622);
    *(v10 + 63) = *(v0 + 626);
    *(v10 + 59) = v12;
    *(v10 + 8) = v5;
    *(v10 + 9) = v20;
    *(v0 + 592) = v7;
    v13 = sub_90850();
    *(v0 + 600) = v13;
    v14 = swift_task_alloc();
    *(v0 + 608) = v14;
    *v14 = v0;
    v14[1] = sub_3A470;
    v15 = *(v0 + 520);

    return TaskGroup.Iterator.next(isolation:)(v0 + 376, v13, &protocol witness table for MainActor, v15);
  }

  else
  {
    v16 = *(v0 + 592);
    v17 = *(v0 + 488);
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));

    *v17 = v16;

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_3A818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 40) = a4;
  *(v7 + 48) = a7;
  *(v7 + 57) = a6;
  *(v7 + 56) = a5;
  *(v7 + 32) = a1;
  return _swift_task_switch(sub_3A844, 0, 0);
}

uint64_t sub_3A844()
{
  v1 = *(v0 + 40);
  v2 = *v1;
  v3 = v1[1];
  v4 = _s15MOMapAnnotationCMa();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____TtCC15JournalSettings10MapManager15MOMapAnnotation_title];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v5[OBJC_IVAR____TtCC15JournalSettings10MapManager15MOMapAnnotation_coordinate];
  *v7 = v2;
  *(v7 + 1) = v3;
  *v6 = 0;
  *(v6 + 1) = 0;
  *(v0 + 16) = v5;
  *(v0 + 24) = v4;
  v27 = objc_msgSendSuper2((v0 + 16), "init");
  v8 = *(v1 + 32);
  v9 = *(v1 + 56);
  v11 = v1[2];
  v10 = v1[3];
  v12 = *(v0 + 40);
  if (v11)
  {
    v13 = *(v12 + 48);
    v14 = *(v12 + 40) & 0xFFFFFFFFFFFFLL;
    if ((v13 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v13) & 0xF;
    }

    v15 = v14 != 0;
    if (v14)
    {
      v16 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v12 + 64) > 150.0;
LABEL_8:
  v26 = *(v0 + 57);
  v17 = *(v0 + 56);
  v18 = *(v0 + 32);
  if (v8)
  {
    v19 = 1;
  }

  else
  {
    v19 = v10;
  }

  v20 = [*(v0 + 48) traitCollection];
  v21 = sub_3430C(v11, v9, v15, v16, v20);
  v23 = v22;

  *v18 = v27;
  *(v18 + 8) = v17;
  *(v18 + 9) = v9;
  *(v18 + 16) = v19;
  *(v18 + 24) = (v26 & 1) == 0;
  *(v18 + 25) = v15;
  *(v18 + 26) = v16;
  *(v18 + 32) = 0x4000000000000000;
  *(v18 + 40) = v21;
  *(v18 + 48) = v23;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_3AA30(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_3AB28;

  return v6(a1);
}

uint64_t sub_3AB28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double *sub_3AC20(double *a1)
{
  v39 = _s30MOSuggestionAssetMapsClustererC7ClusterVMa(0);
  v2 = *(v39 - 1);
  __chkstk_darwin(v39);
  v4 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 2) < 3uLL)
  {
  }

  else
  {
    if (qword_C3980 != -1)
    {
      swift_once();
    }

    v5 = sub_900D0();
    sub_7FF0(v5, qword_C5B80);
    v6 = sub_900B0();
    v7 = sub_90A80();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "[MOSuggestionAssetMapsClusterer] Building dendrogram", v8, 2u);
    }

    v9 = objc_allocWithZone(_s30MOSuggestionAssetMapsClustererCMa());

    v11 = sub_3507C(v10, 1.0);
    sub_35394();
    v12 = sub_35E24();
    v13 = *(v12 + 2);
    if (v13)
    {
      v37 = v11;
      v52 = _swiftEmptyArrayStorage;
      sub_1CA28(0, v13, 0);
      a1 = v52;
      v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v36 = v12;
      v15 = v12 + v14;
      v38 = *(v2 + 72);
      for (i = v13 - 1; ; --i)
      {
        sub_39BDC(v15, v4);
        v17 = *v4;
        v18 = v4[1];
        v19 = (v4 + v39[10]);
        v21 = *v19;
        v20 = v19[1];
        v22 = v4[3];
        v23 = v22 < 2;
        v24 = v22 >= 2 ? v4[3] : 0;
        v25 = *(v4 + v39[9]);
        v26 = *(v4 + v39[11]);
        v27 = *(v4 + v39[12]);
        v28 = v25;

        sub_39C94(v4);
        v40[72] = v23;
        *&v41 = v17;
        *(&v41 + 1) = v18;
        *&v42 = v25;
        *(&v42 + 1) = v24;
        LOBYTE(v43) = v23;
        *(&v43 + 1) = v21;
        *&v44 = v20;
        BYTE8(v44) = v26;
        v45 = v27;
        v46[0] = v17;
        v46[1] = v18;
        v46[2] = v25;
        v46[3] = v24;
        v47 = v23;
        v48 = v21;
        v49 = v20;
        v50 = v26;
        v51 = v27;
        sub_39AC8(&v41, v40);
        sub_39B24(v46);
        v52 = a1;
        v30 = *(a1 + 2);
        v29 = *(a1 + 3);
        if (v30 >= v29 >> 1)
        {
          sub_1CA28((v29 > 1), v30 + 1, 1);
          a1 = v52;
        }

        *(a1 + 2) = v30 + 1;
        v31 = &a1[9 * v30];
        *(v31 + 2) = v41;
        v32 = v42;
        v33 = v43;
        v34 = v44;
        *(v31 + 12) = v45;
        *(v31 + 4) = v33;
        *(v31 + 5) = v34;
        *(v31 + 3) = v32;
        if (!i)
        {
          break;
        }

        v15 += v38;
      }
    }

    else
    {

      return _swiftEmptyArrayStorage;
    }
  }

  return a1;
}

id sub_3AFAC(uint64_t a1, double *a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, char a8)
{
  v118 = a7;
  if (a2)
  {
    v122 = a2;
  }

  else
  {
    v122 = sub_3AC20(a1);
  }

  v13 = objc_allocWithZone(MKStandardMapConfiguration);

  v123 = [v13 init];
  if (a3 > 6u)
  {

    v15 = &selRef_filterIncludingAllCategories;
  }

  else
  {
    v14 = sub_910F0();

    if (v14)
    {
      v15 = &selRef_filterIncludingAllCategories;
    }

    else
    {
      v15 = &selRef_filterExcludingAllCategories;
    }
  }

  v16 = [objc_opt_self() *v15];
  [v123 setPointOfInterestFilter:v16];

  v17 = *(a1 + 16);
  v124 = [objc_allocWithZone(MKMapSnapshotOptions) init];
  if (a6)
  {
    v18 = objc_opt_self();
    v19 = [v18 mainScreen];
    [v19 bounds];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v131.origin.x = v21;
    v131.origin.y = v23;
    v131.size.width = v25;
    v131.size.height = v27;
    v28 = CGRectGetWidth(v131) + -160.0;
    v29 = [v18 mainScreen];
    [v29 bounds];
    v31 = v30;
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v132.origin.x = v31;
    v132.origin.y = v33;
    v132.size.width = v35;
    v132.size.height = v37;
    v38 = CGRectGetHeight(v132) * 0.66;
  }

  else
  {
    v28 = *&a4;
    v38 = *&a5;
  }

  v39 = v122;
  if (a3 > 6u)
  {

    if (a8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = sub_910F0();

    if ((v40 & 1) == 0)
    {
      v28 = sub_2D078(a3);
      v38 = v41;
    }

    if (a8)
    {
LABEL_15:
      if (v17 == 1)
      {
        v130 = *(a1 + 96);
        v42 = *(a1 + 80);
        v128 = *(a1 + 64);
        v129 = v42;
        v43 = *(a1 + 48);
        v126 = *(a1 + 32);
        v127 = v43;
        v44 = v130;
        v45 = v43;
        if (v43)
        {
          v46 = *(&v128 + 1) & 0xFFFFFFFFFFFFLL;
          if ((v129 & 0x2000000000000000) != 0)
          {
            v46 = BYTE7(v129) & 0xF;
          }

          if (v46 || v130 <= 150.0)
          {
            v47 = v126;
            sub_39AC8(&v126, v125);
            v48 = v45;

            v49 = [objc_opt_self() cameraLookingAtMapItem:v48 forViewSize:1 allowPitch:{v28, v38}];
            [v49 setCenterCoordinate:v47];
            [v124 setCamera:v49];
            sub_3A90(&qword_C4B10, &qword_9A310);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_98740;
            v51 = v127;
            *(inited + 32) = v126;
            v52 = v130;
            v54 = v128;
            v53 = v129;
            *(inited + 48) = v51;
            *(inited + 64) = v54;
            *(inited + 80) = v53;
            *(inited + 96) = v52;
            sub_39AC8(&v126, v125);
            v55 = sub_395A4(inited, 0, 0, 0, 1);
            v57 = v56;
            v59 = v58;
            v61 = v60;
            swift_setDeallocating();
            sub_39B24(inited + 32);
            [v124 region];
            if (v44 <= 1.0 || v62 >= v59 || v63 >= v61)
            {

              sub_39B24(&v126);
              goto LABEL_102;
            }

            if (sub_41AC4(v55, v57, v59, v61))
            {
              [v124 setRegion:{v55, v57, v59, v61}];
            }

            else
            {
              if (qword_C3980 != -1)
              {
                swift_once();
              }

              v114 = sub_900D0();
              sub_7FF0(v114, qword_C5B80);
              v115 = sub_900B0();
              v116 = sub_90A70();
              if (os_log_type_enabled(v115, v116))
              {
                v117 = swift_slowAlloc();
                *v117 = 0;
                _os_log_impl(&dword_0, v115, v116, "[MapSnapshot] cannot generate a valid region for the multipin map with naiveUncertaintyBasedRegion", v117, 2u);
              }
            }

            goto LABEL_44;
          }
        }

        if (a3 == 2)
        {

          v81 = 0;
          v80 = 1;
          v82 = 1;
          goto LABEL_72;
        }

        v80 = sub_910F0();
        v81 = 0;
        goto LABEL_64;
      }

      if (a3 > 3u || a3 <= 1u || a3 == 2)
      {
        v79 = sub_910F0();

        if (v79)
        {
LABEL_58:
          v80 = 0;
          v81 = 1;
          goto LABEL_65;
        }

        if (a3 > 1u || !a3)
        {
          v83 = sub_910F0();

          if (v83)
          {
            goto LABEL_58;
          }

          if (a3 <= 5u || a3 == 6)
          {
            v81 = sub_910F0();
            v80 = 0;
LABEL_64:

LABEL_65:
            if (a3 == 2)
            {
              v82 = 1;
              goto LABEL_72;
            }

            goto LABEL_67;
          }
        }
      }

      v80 = 0;
      v81 = 1;
LABEL_67:
      v84 = sub_910F0();

      if (v84)
      {
        v82 = 1;
LABEL_73:
        if (qword_C3980 != -1)
        {
          swift_once();
        }

        v85 = sub_900D0();
        sub_7FF0(v85, qword_C5B80);
        swift_bridgeObjectRetain_n();
        v86 = sub_900B0();
        v87 = sub_90A80();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = v81;
          v121 = v80;
          v89 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          *&v126 = v90;
          *v89 = 136316162;
          v91 = 0xEA00000000006564;
          v92 = 0xE500000000000000;
          v93 = 0x6C6C616D73;
          if (a3 != 6)
          {
            v93 = 0x657263536C6C7566;
            v92 = 0xEA00000000006E65;
          }

          v94 = 0xE600000000000000;
          v95 = 0x6D756964656DLL;
          if (a3 != 4)
          {
            v95 = 0x61546D756964656DLL;
            v94 = 0xEA00000000006C6CLL;
          }

          if (a3 <= 5u)
          {
            v93 = v95;
            v92 = v94;
          }

          v96 = 0x656772616CLL;
          if (a3 == 2)
          {
            v96 = 0x69576D756964656DLL;
          }

          else
          {
            v91 = 0xE500000000000000;
          }

          v97 = 0xE600000000000000;
          v98 = 0x656772614C78;
          if (!a3)
          {
            v98 = 0x6154656772614C78;
            v97 = 0xEA00000000006C6CLL;
          }

          if (a3 <= 1u)
          {
            v96 = v98;
            v91 = v97;
          }

          if (a3 <= 3u)
          {
            v99 = v96;
          }

          else
          {
            v99 = v93;
          }

          if (a3 <= 3u)
          {
            v100 = v91;
          }

          else
          {
            v100 = v92;
          }

          v101 = sub_76D20(v99, v100, &v126);

          *(v89 + 4) = v101;
          *(v89 + 12) = 2048;
          v102 = *(v122 + 2);

          *(v89 + 14) = v102;
          v39 = v122;

          *(v89 + 22) = 1024;
          *(v89 + 24) = v88 & 1;
          *(v89 + 28) = 1024;
          *(v89 + 30) = v121 & 1;
          *(v89 + 34) = 1024;
          *(v89 + 36) = v82 & 1;
          _os_log_impl(&dword_0, v86, v87, "[MapSnapshot] style: %s, numLocations: %ld, applyBottomPaddingForPlatter: %{BOOL}d, applyBottomPaddingForGradient: %{BOOL}d, shouldHaveHorizontalAspectRatio: %{BOOL}d", v89, 0x28u);
          sub_7FA4(v90);
          v81 = v88;

          v80 = v121;
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        v103 = sub_395A4(v39, v81 & 1, v80 & 1, v82 & 1, 1);
        v105 = v104;
        v107 = v106;
        v109 = v108;

        if (sub_41AC4(v103, v105, v107, v109))
        {
          [v124 setRegion:{v103, v105, v107, v109, v118}];
        }

        else
        {
          v110 = sub_900B0();
          v111 = sub_90A70();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&dword_0, v110, v111, "[MapSnapshot] cannot generate a valid region for the multipin map", v112, 2u);
          }
        }

        goto LABEL_102;
      }

      if (a3 <= 1u && a3)
      {
        v82 = 1;
      }

      else
      {
        v82 = sub_910F0();
      }

LABEL_72:

      goto LABEL_73;
    }
  }

  if (v17)
  {
    v130 = *(a1 + 96);
    v64 = *(a1 + 48);
    v126 = *(a1 + 32);
    v127 = v64;
    v65 = *(a1 + 80);
    v128 = *(a1 + 64);
    v129 = v65;
    v66 = fmin(v130 / 111000.0 * 1.5, 180.0);
    if (sub_41AC4(*&v126, *(&v126 + 1), v66, v66))
    {
      [v124 setRegion:{v126, v66, v66, v118}];
LABEL_102:
      [v124 setShowsBuildings:{1, v118}];
      [v124 setPreferredConfiguration:v123];
      [v124 setSize:{v28, v38}];
      [v124 setTraitCollection:v119];

      return v124;
    }

    sub_39AC8(&v126, v125);
    if (qword_C3980 != -1)
    {
      swift_once();
    }

    v75 = sub_900D0();
    sub_7FF0(v75, qword_C5B80);
    v76 = sub_900B0();
    v77 = sub_90A70();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 0;
      _os_log_impl(&dword_0, v76, v77, "[MapSnapshot] cannot generate a valid region for the generic map", v78, 2u);
    }

LABEL_44:
    sub_39B24(&v126);
    goto LABEL_102;
  }

  if (qword_C3980 != -1)
  {
    swift_once();
  }

  v67 = sub_900D0();
  sub_7FF0(v67, qword_C5B80);

  v68 = sub_900B0();
  v69 = sub_90A70();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    *&v126 = v71;
    *v70 = 136315138;
    v72 = sub_90750();
    v74 = sub_76D20(v72, v73, &v126);

    *(v70 + 4) = v74;
    _os_log_impl(&dword_0, v68, v69, "[MapSnapshot] cannot generate valid options for the generic map since locations are nil: %s", v70, 0xCu);
    sub_7FA4(v71);
  }

  return v124;
}

uint64_t sub_3C2B8(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 112) = a2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a3;
  *(v3 + 40) = sub_90860();
  *(v3 + 48) = sub_90850();
  v5 = sub_907F0();
  *(v3 + 56) = v5;
  *(v3 + 64) = v4;

  return _swift_task_switch(sub_3C358, v5, v4);
}

uint64_t sub_3C358()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 112);
  v4 = sub_3AC20(v2);
  *(v0 + 72) = v4;
  v5 = *(v2 + 16) == 1;
  v6 = sub_3AFAC(v2, v4, v3, 0, 0, 1, v1, 1);
  *(v0 + 80) = v6;
  v7 = sub_3A90(&qword_C4B08, &qword_9A2C0);
  v8 = sub_3A90(&qword_C5C30, &qword_9A2C8);
  v9 = sub_90850();
  *(v0 + 88) = v9;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *(v10 + 16) = v4;
  *(v10 + 24) = v3;
  *(v10 + 25) = v5;
  *(v10 + 32) = v6;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_3C4F0;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 16, v7, v8, v9, &protocol witness table for MainActor, &unk_9A2D8, v10, v7);
}

uint64_t sub_3C4F0()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_3C674, v3, v2);
}

uint64_t sub_3C674()
{

  v2 = v0[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v26 = v0;
    sub_90F50();
    v4 = 0;
    v27 = v2;
    do
    {
      v5 = v2 + v4;
      v6 = *(v2 + v4 + 32);
      v30 = *(v2 + v4 + 40);
      v7 = *(v2 + v4 + 41);
      v29 = *(v2 + v4 + 48);
      v8 = *(v2 + v4 + 56);
      v9 = *(v2 + v4 + 57);
      v28 = *(v5 + 58);
      v10 = *(v5 + 64);
      v11 = *(v5 + 72);
      v12 = *(v5 + 80);
      v13 = v6;
      sub_3C9A4(v11, v12);
      v14 = v13;
      sub_3C9A4(v11, v12);
      sub_33FDC(v11, v12);
      v15 = v14;
      sub_3C9A4(v11, v12);

      objc_allocWithZone(_s19MOPOIAnnotationViewCMa());
      if (v7)
      {
        v16 = 256;
      }

      else
      {
        v16 = 0;
      }

      v17 = v9 == 0;
      v2 = v27;
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = 256;
      }

      v19 = v1 & 0xFF000000 | v8 | v18;
      if (v28)
      {
        v20 = 0x10000;
      }

      else
      {
        v20 = 0;
      }

      v1 = v19 | v20;
      sub_33330(v14, v16 | v30, v29, v19 | v20, v11, v12, v10);

      sub_33FDC(v11, v12);
      sub_90F30();
      sub_90F60();
      sub_90F70();
      sub_90F40();
      v4 += 56;
      --v3;
    }

    while (v3);

    v0 = v26;
  }

  else
  {
  }

  v21 = v0[10];
  sub_3C9E4();
  isa = sub_90730().super.isa;

  [v21 setAnnotationViews:isa];

  v23 = v0[1];
  v24 = v0[10];

  return v23(v24);
}

uint64_t sub_3C8D4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 25);
  v8 = *(v2 + 32);
  v9 = *(v2 + 24);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_DE1C;

  return sub_39F34(a1, a2, v6, v9, v7, v8);
}

id sub_3C9A4(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

unint64_t sub_3C9E4()
{
  result = qword_C5C38;
  if (!qword_C5C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C5C38);
  }

  return result;
}

uint64_t sub_3CA30()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 120, 7);
}

uint64_t sub_3CA80(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 105);
  v7 = *(v1 + 112);
  v8 = *(v1 + 104);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_3BC8;

  return sub_3A818(a1, v4, v5, v1 + 32, v8, v6, v7);
}

uint64_t sub_3CB58(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C8820, &qword_9C900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3CBC8(uint64_t a1)
{
  v2 = sub_3A90(&qword_C8820, &qword_9C900);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3CC30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_3CC68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_3BC8;

  return sub_3AA30(a1, v4);
}

uint64_t sub_3CD20()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C5C48);
  v1 = sub_7FF0(v0, qword_C5C48);
  if (qword_C3A70 != -1)
  {
    swift_once();
  }

  v2 = sub_7FF0(v0, qword_D0720);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

NSObject *sub_3CE30()
{
  v1 = sub_3A90(&qword_C5D88, &qword_9A3D8);
  v90 = *(v1 - 8);
  v91 = v1;
  __chkstk_darwin(v1);
  v89 = &v79 - v2;
  v3 = sub_3A90(&qword_C5D90, &qword_9A3E0);
  v87 = *(v3 - 8);
  v88 = v3;
  __chkstk_darwin(v3);
  v86 = &v79 - v4;
  v5 = sub_3A90(&qword_C5D98, &qword_9A3E8);
  v84 = *(v5 - 8);
  v85 = v5;
  __chkstk_darwin(v5);
  v83 = &v79 - v6;
  v7 = sub_3A90(&qword_C5DA0, &qword_9A3F0);
  v81 = *(v7 - 8);
  v82 = v7;
  __chkstk_darwin(v7);
  v80 = &v79 - v8;
  v9 = sub_3A90(&qword_C5DA8, &qword_9A3F8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v79 - v11;
  v99 = sub_90B90();
  v13 = *(v99 - 8);
  v14 = __chkstk_darwin(v99);
  v95 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v94 = &v79 - v17;
  v18 = __chkstk_darwin(v16);
  v93 = &v79 - v19;
  v20 = __chkstk_darwin(v18);
  v92 = &v79 - v21;
  __chkstk_darwin(v20);
  v98 = &v79 - v22;
  *&v0[OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_observationTokens] = _swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_propertiesToRefresh] = &_swiftEmptySetSingleton;
  v23 = &v0[OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_didUndoOrRedo];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_lastUndoableActivity;
  type metadata accessor for UndoableActivity();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 3;
  *&v0[v24] = v25;
  v26 = type metadata accessor for EntryUndoManager();
  v100.receiver = v0;
  v100.super_class = v26;
  v27 = objc_msgSendSuper2(&v100, "init");
  v28 = qword_C3988;
  v29 = v27;
  if (v28 != -1)
  {
    swift_once();
  }

  v30 = sub_900D0();
  sub_7FF0(v30, qword_C5C48);
  v31 = v29;
  v32 = sub_900B0();
  v33 = sub_90A60();
  v34 = os_log_type_enabled(v32, v33);
  v97 = v13;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412546;
    *(v35 + 4) = v31;
    *v36 = v31;
    *(v35 + 12) = 2048;
    *(v35 + 14) = [v31 groupingLevel];

    _os_log_impl(&dword_0, v32, v33, "Created new undoManager: %@, initial level:%ld", v35, 0x16u);
    sub_EEC4(v36);
  }

  else
  {

    v32 = v31;
  }

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  sub_90A30();
  sub_90BA0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_3EBB0(&qword_C5DB0, &qword_C5DA8, &qword_9A3F8);
  v39 = v31;
  sub_90B80();

  (*(v10 + 8))(v12, v9);
  v40 = OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_observationTokens;
  v41 = *(&v39->isa + OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_observationTokens);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = sub_178DC(0, *(v41 + 2) + 1, 1, v41);
    *(&v39->isa + v40) = v41;
  }

  v43 = v97;
  v45 = *(v41 + 2);
  v44 = *(v41 + 3);
  if (v45 >= v44 >> 1)
  {
    v41 = sub_178DC((v44 > 1), v45 + 1, 1, v41);
  }

  *(v41 + 2) = v45 + 1;
  v47 = *(v43 + 32);
  v46 = v43 + 32;
  v97 = (*(v46 + 48) + 32) & ~*(v46 + 48);
  v96 = *(v46 + 40);
  v48 = v98;
  v98 = v47;
  (v47)(v41 + v97 + v96 * v45, v48, v99);
  *(&v39->isa + v40) = v41;
  v49 = [v37 defaultCenter];
  sub_90A40();
  v50 = v80;
  sub_90BA0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_3EBB0(&qword_C5DB8, &qword_C5DA0, &qword_9A3F0);
  v51 = v82;
  sub_90B80();

  (*(v81 + 8))(v50, v51);
  v52 = *(&v39->isa + v40);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v52;
  if ((v53 & 1) == 0)
  {
    v52 = sub_178DC(0, *(v52 + 2) + 1, 1, v52);
    *(&v39->isa + v40) = v52;
  }

  v55 = *(v52 + 2);
  v54 = *(v52 + 3);
  if (v55 >= v54 >> 1)
  {
    v52 = sub_178DC((v54 > 1), v55 + 1, 1, v52);
  }

  *(v52 + 2) = v55 + 1;
  (v98)(v52 + v97 + v55 * v96, v92, v99);
  *(&v39->isa + v40) = v52;
  v56 = v37;
  v57 = [v37 defaultCenter];
  sub_90A50();
  v58 = v83;
  sub_90BA0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_3EBB0(&qword_C5DC0, &qword_C5D98, &qword_9A3E8);
  v59 = v85;
  sub_90B80();

  (*(v84 + 8))(v58, v59);
  v60 = *(&v39->isa + v40);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v60;
  if ((v61 & 1) == 0)
  {
    v60 = sub_178DC(0, *(v60 + 2) + 1, 1, v60);
    *(&v39->isa + v40) = v60;
  }

  v63 = *(v60 + 2);
  v62 = *(v60 + 3);
  if (v63 >= v62 >> 1)
  {
    v60 = sub_178DC((v62 > 1), v63 + 1, 1, v60);
  }

  *(v60 + 2) = v63 + 1;
  (v98)(v60 + v97 + v63 * v96, v93, v99);
  *(&v39->isa + v40) = v60;
  v64 = [v56 defaultCenter];
  sub_90A20();
  v65 = v86;
  sub_90BA0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_3EBB0(&qword_C5DC8, &qword_C5D90, &qword_9A3E0);
  v66 = v88;
  sub_90B80();

  (*(v87 + 8))(v65, v66);
  v67 = *(&v39->isa + v40);
  v68 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v67;
  if ((v68 & 1) == 0)
  {
    v67 = sub_178DC(0, *(v67 + 2) + 1, 1, v67);
    *(&v39->isa + v40) = v67;
  }

  v70 = *(v67 + 2);
  v69 = *(v67 + 3);
  if (v70 >= v69 >> 1)
  {
    v67 = sub_178DC((v69 > 1), v70 + 1, 1, v67);
  }

  *(v67 + 2) = v70 + 1;
  (v98)(v67 + v97 + v70 * v96, v94, v99);
  *(&v39->isa + v40) = v67;
  v71 = [v56 defaultCenter];
  sub_90A10();
  v72 = v89;
  sub_90BA0();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_3EBB0(&qword_C5DD0, &qword_C5D88, &qword_9A3D8);
  v73 = v91;
  sub_90B80();

  (*(v90 + 8))(v72, v73);
  v74 = *(&v39->isa + v40);
  v75 = swift_isUniquelyReferenced_nonNull_native();
  *(&v39->isa + v40) = v74;
  if ((v75 & 1) == 0)
  {
    v74 = sub_178DC(0, *(v74 + 2) + 1, 1, v74);
    *(&v39->isa + v40) = v74;
  }

  v77 = *(v74 + 2);
  v76 = *(v74 + 3);
  if (v77 >= v76 >> 1)
  {
    v74 = sub_178DC((v76 > 1), v77 + 1, 1, v74);
  }

  *(v74 + 2) = v77 + 1;
  (v98)(v74 + v97 + v77 * v96, v95);
  *(&v39->isa + v40) = v74;
  [v39 beginUndoGrouping];

  return v39;
}

void sub_3DB5C(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_C3988 != -1)
    {
      swift_once();
    }

    v6 = sub_900D0();
    sub_7FF0(v6, qword_C5C48);
    v7 = v5;
    v8 = sub_900B0();
    v9 = sub_90A60();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&dword_0, v8, v9, a3, v10, 0x16u);
      sub_EEC4(v11);
    }

    else
    {

      v8 = v7;
    }
  }
}

void sub_3DCE0(uint64_t a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_C3988 != -1)
    {
      swift_once();
    }

    v6 = sub_900D0();
    sub_7FF0(v6, qword_C5C48);
    v7 = v5;
    v8 = sub_900B0();
    v9 = sub_90A60();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      *(v10 + 4) = v7;
      *v11 = v5;
      *(v10 + 12) = 2048;
      *(v10 + 14) = [v7 groupingLevel];
      _os_log_impl(&dword_0, v8, v9, a3, v10, 0x16u);
      sub_EEC4(v11);
    }

    else
    {

      v8 = v7;
    }

    sub_3DE90();
  }
}

void sub_3DE90()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_propertiesToRefresh;
  swift_beginAccess();
  if (*(*(v0 + v2) + 16))
  {
    v3 = *(v0 + OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_didUndoOrRedo);
    if (v3)
    {
      v4 = *(v0 + OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_didUndoOrRedo + 8);
      sub_322F0(*(v1 + OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_didUndoOrRedo), v4);

      v3(v5);
      sub_31D8C(v3, v4);
    }

    *(v1 + v2) = &_swiftEmptySetSingleton;

    *(*(v1 + OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  }
}

id sub_3DF60()
{
  v1 = v0;
  if (qword_C3988 != -1)
  {
    swift_once();
  }

  v2 = sub_900D0();
  sub_7FF0(v2, qword_C5C48);
  v3 = sub_900B0();
  v4 = sub_90A60();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "EntryUndoManager.undo()", v5, 2u);
  }

  sub_3E064();
  v7.receiver = v1;
  v7.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v7, "undo");
}

id sub_3E064()
{
  v1 = v0;
  if (qword_C3988 != -1)
  {
    swift_once();
  }

  v2 = sub_900D0();
  sub_7FF0(v2, qword_C5C48);
  v3 = sub_900B0();
  v4 = sub_90A60();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "endUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (result >= 1)
  {

    return [v1 endUndoGrouping];
  }

  return result;
}

void sub_3E1CC()
{
  v1 = [v0 groupingLevel];
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EntryUndoManager();
  objc_msgSendSuper2(&v7, "beginUndoGrouping");
  if (qword_C3988 != -1)
  {
    swift_once();
  }

  v2 = sub_900D0();
  sub_7FF0(v2, qword_C5C48);
  v3 = v0;
  v4 = sub_900B0();
  v5 = sub_90A60();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134218240;
    *(v6 + 4) = v1;
    *(v6 + 12) = 2048;
    *(v6 + 14) = [v3 groupingLevel];

    _os_log_impl(&dword_0, v4, v5, "beginUndoGrouping, level: %ld -> %ld", v6, 0x16u);
  }

  else
  {

    v4 = v3;
  }
}

void sub_3E368()
{
  if ([v0 groupingLevel] < 1)
  {
    if (qword_C3988 != -1)
    {
      swift_once();
    }

    v7 = sub_900D0();
    sub_7FF0(v7, qword_C5C48);
    v11 = v0;
    oslog = sub_900B0();
    v8 = sub_90A60();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v11 groupingLevel];

      _os_log_impl(&dword_0, oslog, v8, "endUndoGrouping skipped, current level: %ld", v9, 0xCu);

      v10 = oslog;
    }

    else
    {

      v10 = v11;
    }
  }

  else
  {
    v1 = [v0 groupingLevel];
    v13.receiver = v0;
    v13.super_class = type metadata accessor for EntryUndoManager();
    objc_msgSendSuper2(&v13, "endUndoGrouping");
    *(*&v0[OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_lastUndoableActivity] + 16) = 0;
    if (qword_C3988 != -1)
    {
      swift_once();
    }

    v2 = sub_900D0();
    sub_7FF0(v2, qword_C5C48);
    v3 = v0;
    v4 = sub_900B0();
    v5 = sub_90A60();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134218240;
      *(v6 + 4) = v1;
      *(v6 + 12) = 2048;
      *(v6 + 14) = [v3 groupingLevel];

      _os_log_impl(&dword_0, v4, v5, "endUndoGrouping, level: %ld -> %ld", v6, 0x16u);
    }

    else
    {
    }
  }
}

id sub_3E640()
{
  v1 = v0;
  if (qword_C3988 != -1)
  {
    swift_once();
  }

  v2 = sub_900D0();
  sub_7FF0(v2, qword_C5C48);
  v3 = sub_900B0();
  v4 = sub_90A60();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "markUndoPoint", v5, 2u);
  }

  sub_3E064();
  result = sub_3E738();
  *(*(v1 + OBJC_IVAR____TtC15JournalSettings16EntryUndoManager_lastUndoableActivity) + 16) = 0;
  return result;
}

id sub_3E738()
{
  v1 = v0;
  if (qword_C3988 != -1)
  {
    swift_once();
  }

  v2 = sub_900D0();
  sub_7FF0(v2, qword_C5C48);
  v3 = sub_900B0();
  v4 = sub_90A60();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "beginUndoGroupIfNeeded", v5, 2u);
  }

  result = [v1 groupingLevel];
  if (!result)
  {

    return [v1 beginUndoGrouping];
  }

  return result;
}

id sub_3E854(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EntryUndoManager();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for UndoableActivity.Component(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for UndoableActivity.Component(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_3EA70()
{
  result = qword_C5D80;
  if (!qword_C5D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5D80);
  }

  return result;
}

uint64_t sub_3EAC4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3EBB0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_3D20(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3EC28(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 24) = a4;
  *(v4 + 16) = a3;
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_907F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *(v4 + 32) = v5;
  *(v4 + 40) = v7;

  return _swift_task_switch(sub_3ECBC, v5, v7);
}

uint64_t sub_3ECBC()
{
  v1 = v0[3];
  v2 = objc_allocWithZone(AVURLAsset);
  sub_8EF90(v3);
  v5 = v4;
  v6 = [v2 initWithURL:v4 options:0];
  *(v0 + 6) = v6;

  v7 = [objc_allocWithZone(AVAssetImageGenerator) initWithAsset:v6];
  *(v0 + 7) = v7;
  [v7 setAppliesPreferredTrackTransform:1];
  [v7 setMaximumSize:{v1, v1}];
  [v7 setDynamicRangePolicy:AVAssetImageGeneratorDynamicRangePolicyForceSDR];
  v8 = sub_90C40(0.0, 60);
  v10 = v9;
  v12 = v11;
  v13 = swift_task_alloc();
  *(v0 + 8) = v13;
  *v13 = v0;
  v13[1] = sub_3EE2C;

  return AVAssetImageGenerator.image(at:)(v8, v10, v12);
}

uint64_t sub_3EE2C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_3EFF0;
  }

  else
  {
    v4[10] = a1;
    v5 = v4[4];
    v6 = v4[5];
    v7 = sub_3EF54;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_3EF54()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = [objc_allocWithZone(UIImage) initWithCGImage:v1];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_3EFF0()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

void sub_3F058(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_911B0(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_911B0(*&v3);
}

Swift::Int sub_3F0A8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_91180();
  sub_3F058(v1, v2);
  return sub_911D0();
}

Swift::Int sub_3F104(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_91180();
  sub_3F058(v2, v3);
  return sub_911D0();
}

unint64_t sub_3F194()
{
  result = qword_C5E78;
  if (!qword_C5E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C5E78);
  }

  return result;
}

void sub_3F1E8()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9.origin.x = v2;
  v9.origin.y = v4;
  v9.size.width = v6;
  v9.size.height = v8;
  ceil(ceil(CGRectGetWidth(v9)) * 0.25);
}

id sub_3F314()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DrawingAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for DrawingAsset(uint64_t a1)
{
  result = qword_C5F40;
  if (!qword_C5F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_3F404(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15JournalSettings12DrawingAsset_metadata) = a1;

  return result;
}

id sub_3F41C()
{
  v1 = v0;
  v2 = sub_3A90(&qword_C4A58, &qword_99030);
  __chkstk_darwin(v2 - 8);
  v4 = &v37[-v3];
  v5 = sub_8F390();
  __chkstk_darwin(v5 - 8);
  v6 = sub_90540();
  __chkstk_darwin(v6 - 8);
  v7 = sub_3A90(&qword_C4808, &unk_99710);
  __chkstk_darwin(v7 - 8);
  v9 = &v37[-v8];
  v10 = sub_8FFF0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v37[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_8FF70();
  v14 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_8FF50().super.isa;
  v16 = [v14 initWithContentType:isa];

  v17 = (*(v11 + 8))(v13, v10);
  sub_5729C(0x676E6977617264, 0xE700000000000000, 0, 0, v17);
  v18 = *(v1 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
  if (v18 && (v19 = [v18 entry]) != 0)
  {
    v20 = v19;
    sub_8F500();

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = sub_8F2F0();
  (*(*(v22 - 8) + 56))(v9, v21, 1, v22);
  sub_904E0();
  sub_8F380();
  v23 = sub_905C0();
  v25 = v24;
  sub_3A90(&qword_C4840, &unk_99890);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_98740;
  v27 = sub_577BC(v23, v25, v9);
  v29 = v28;

  *(v26 + 32) = v27;
  *(v26 + 40) = v29;
  v30 = sub_90730().super.isa;

  [v16 setAlternateNames:v30];

  sub_8EF0(v9, &qword_C4808, &unk_99710);
  sub_11614(v4);
  v31 = sub_8F860();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v4, 1, v31) == 1)
  {
    sub_8EF0(v4, &qword_C4A58, &qword_99030);
LABEL_9:
    v35 = 0;
    goto LABEL_10;
  }

  sub_8F850();
  v34 = v33;
  (*(v32 + 8))(v4, v31);
  if (!v34)
  {
    goto LABEL_9;
  }

  v35 = sub_90550();

LABEL_10:
  [v16 setTextContent:v35];

  return v16;
}

uint64_t sub_3F960(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_8F860();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3F9A4()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C5F90);
  v1 = sub_7FF0(v0, qword_C5F90);
  if (qword_C3A78 != -1)
  {
    swift_once();
  }

  v2 = sub_7FF0(v0, qword_D0738);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_3FA6C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_3A90(&qword_C4C60, &unk_99870);
  v3[5] = swift_task_alloc();
  v5 = sub_8EFE0();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_907F0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[9] = v6;
  v3[10] = v8;

  return _swift_task_switch(sub_3FBA4, v6, v8);
}

uint64_t sub_3FBA4()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_3FC3C;
  v2 = v0[3];
  v3 = v0[2];

  return sub_5C7C4(v3, v2);
}

uint64_t sub_3FC3C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 80);
  v4 = *(v2 + 72);

  return _swift_task_switch(sub_3FD64, v4, v3);
}

uint64_t sub_3FD64()
{
  v1 = *(v0 + 96);
  if (v1)
  {
LABEL_4:

    v5 = *(v0 + 8);

    return v5(v1);
  }

  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  sub_40384(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_8EF0(*(v0 + 40), &qword_C4C60, &unk_99870);
    goto LABEL_4;
  }

  v7 = *(v0 + 32);
  (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), *(v0 + 48));
  *(v0 + 128) = *(v7 + qword_D0590);
  sub_3F1E8();
  v9 = v8;
  v10 = [objc_opt_self() mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = swift_task_alloc();
  *(v0 + 104) = v13;
  *v13 = v0;
  v13[1] = sub_3FF48;
  v14 = *(v0 + 64);
  v16 = *(v0 + 16);
  v15 = *(v0 + 24);

  return sub_3EC28(v16, v15, v14, v9 * v12);
}

uint64_t sub_3FF48(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 112) = a1;
  *(v4 + 120) = v1;

  v5 = *(v3 + 80);
  v6 = *(v3 + 72);
  if (v1)
  {
    v7 = sub_4017C;
  }

  else
  {
    v7 = sub_4008C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_4008C()
{
  if (sub_60EC8(*(v0 + 128)))
  {
    if (qword_C3A10 != -1)
    {
      swift_once();
    }

    v1.n128_f64[0] = sub_5E3A0(*(v0 + 112), *(*(v0 + 32) + qword_C7530), *(*(v0 + 32) + qword_C7530 + 8));
  }

  v2 = *(v0 + 112);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48), v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_4017C()
{
  if (qword_C3990 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_900D0();
  sub_7FF0(v2, qword_C5F90);
  v3 = v1;
  swift_errorRetain();
  v4 = sub_900B0();
  v5 = sub_90A70();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2112;
    v9 = v6;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    v8[1] = v10;
    _os_log_impl(&dword_0, v4, v5, "%@ - error generating video preview image: %@", v7, 0x16u);
    sub_3A90(&qword_C3FB8, &qword_98BF0);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);

  v11 = v0[1];

  return v11(0);
}

void sub_40384(uint64_t a1@<X8>)
{
  v3 = sub_3A90(&qword_C5150, &qword_99758);
  v4 = __chkstk_darwin(v3 - 8);
  v105 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v108 = &v95 - v6;
  v125 = sub_8FFF0();
  v107 = *(v125 - 8);
  v7 = __chkstk_darwin(v125 - 8);
  v98 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v124 = &v95 - v10;
  __chkstk_darwin(v9);
  v109 = &v95 - v11;
  v115 = sub_8F930();
  v106 = *(v115 - 8);
  __chkstk_darwin(v115);
  v114 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v13 = __chkstk_darwin(v127);
  v112 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v111 = &v95 - v16;
  v17 = __chkstk_darwin(v15);
  v126 = (&v95 - v18);
  __chkstk_darwin(v17);
  v120 = (&v95 - v19);
  v20 = sub_3A90(&qword_C4C60, &unk_99870);
  v21 = __chkstk_darwin(v20 - 8);
  v119 = &v95 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v95 - v23;
  v25 = sub_8EFE0();
  v113 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v110 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v116 = &v95 - v28;
  v29 = type metadata accessor for AssetAttachment.AssetType(0);
  v30 = __chkstk_darwin(v29);
  v118 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v130 = &v95 - v33;
  v34 = __chkstk_darwin(v32);
  v36 = &v95 - v35;
  __chkstk_darwin(v34);
  v38 = &v95 - v37;
  v131 = *(v1 + qword_D0570);
  v104 = a1;
  if (v131 >> 62)
  {
    goto LABEL_92;
  }

  v39 = *(&dword_10 + (v131 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v100 = v1;
  v137 = v1 + qword_D0598;
  v128 = v29;
  v129 = v25;
  v1 = v131;
  if (v39)
  {
    v40 = 0;
    v133 = v131 & 0xFFFFFFFFFFFFFF8;
    v134 = v131 & 0xC000000000000001;
    v122 = (v113 + 56);
    v99 = (v106 + 8);
    v117 = (v113 + 32);
    v121 = (v113 + 48);
    v103 = (v107 + 48);
    v97 = (v107 + 32);
    v96 = (v107 + 8);
    v101 = (v113 + 8);
    v123 = v24;
    v102 = v36;
    v132 = v39;
    while (1)
    {
      if (v134)
      {
        v44 = sub_90EC0();
        v45 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }
      }

      else
      {
        if (v40 >= *(v133 + 16))
        {
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          v39 = sub_90FA0();
          goto LABEL_3;
        }

        v44 = *(v1 + 8 * v40 + 32);

        v45 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
          goto LABEL_43;
        }
      }

      v135 = *v137;
      v136 = *(v137 + 8);
      v46 = OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType;
      sub_237EC(v44 + OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType, v38, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {

          v41 = type metadata accessor for AssetAttachment.AssetType;
        }

        else
        {
LABEL_5:

          v41 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
        }

        v42 = v41;
        v43 = v38;
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v53 = v38;
        if (v136)
        {
          goto LABEL_88;
        }

        goto LABEL_21;
      }

      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_5;
      }

      sub_237EC(v44 + v46, v36, type metadata accessor for AssetAttachment.AssetType);
      v48 = swift_getEnumCaseMultiPayload();
      v49 = v48;
      if (v48 > 1)
      {
        break;
      }

      v51 = v36;
      v52 = v126;
      if (!v49)
      {
        goto LABEL_24;
      }

      sub_23728(v36, type metadata accessor for AssetAttachment.AssetType);
      v60 = 1;
      v24 = v123;
LABEL_28:
      (*v122)(v24, v60, 1, v25);
      v53 = &v38[*(sub_3A90(&qword_C5158, &qword_99760) + 48)];
      if ((*v121)(v24, 1, v25) == 1)
      {

        sub_8EF0(v24, &qword_C4C60, &unk_99870);
      }

      else
      {
        v61 = v116;
        (*v117)(v116, v24, v25);
        sub_8EF70();
        v62 = v124;
        sub_8FF60();
        v24 = v108;
        sub_8FF30();
        v63 = v125;
        if ((*v103)(v24, 1, v125) == 1)
        {

          v25 = v129;
          (*v101)(v61, v129);
          sub_8EF0(v24, &qword_C5150, &qword_99758);
          v29 = v128;
          v36 = v102;
        }

        else
        {
          (*v97)();
          sub_8FFB0();
          v64 = sub_8FFD0();
          v24 = *v96;
          (*v96)(v62, v63);
          if (v64)
          {
            (v24)(v109, v63);
            v25 = v129;
            (*v101)(v116, v129);
            v36 = v102;
LABEL_38:
            v29 = v128;
            if (v136)
            {
              v38 = v53;
              goto LABEL_88;
            }

LABEL_21:
            v54 = *(v44 + 16);
            sub_23728(v53, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            if (v54 == v135)
            {
LABEL_86:
              v94 = v104;
              goto LABEL_89;
            }

            v1 = v131;
            goto LABEL_8;
          }

          sub_8FFA0();
          v95 = v24;
          v24 = v109;
          v65 = sub_8FFD0();
          v66 = v62;
          v67 = v95;
          (v95)(v66, v63);
          (v67)(v24, v63);
          v25 = v129;
          (*v101)(v116, v129);
          v36 = v102;
          if (v65)
          {
            goto LABEL_38;
          }

          v29 = v128;
        }

        v1 = v131;
      }

      v42 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      v43 = v53;
LABEL_7:
      sub_23728(v43, v42);
LABEL_8:
      ++v40;
      if (v45 == v132)
      {
        goto LABEL_44;
      }
    }

    v50 = v48 - 2;
    v51 = v36;
    v52 = v126;
    if (v50 >= 2)
    {

      v51 = v36 + *(sub_3A90(&qword_C5158, &qword_99760) + 48);
    }

LABEL_24:
    v55 = v120;
    sub_23788(v51, v120);
    sub_237EC(v55, v52, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_23728(v55, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v24 = v123;
      (*v117)(v123, v52, v25);
    }

    else
    {
      v56 = v114;
      sub_8F920();
      v57 = v123;
      sub_8F900();
      v29 = v128;

      v58 = v56;
      v1 = v131;
      (*v99)(v58, v115);
      v59 = v55;
      v24 = v57;
      v25 = v129;
      sub_23728(v59, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    }

    v60 = 0;
    goto LABEL_28;
  }

LABEL_44:
  v36 = *(v100 + qword_D0578);
  if (v36 >> 62)
  {
    v24 = sub_90FA0();
    v1 = v130;
    if (v24)
    {
      goto LABEL_46;
    }

LABEL_94:
    (*(v113 + 56))(v104, 1, 1, v25);
    return;
  }

  v24 = *(&dword_10 + (v36 & 0xFFFFFFFFFFFFFF8));
  v1 = v130;
  if (!v24)
  {
    goto LABEL_94;
  }

LABEL_46:
  v68 = 0;
  v38 = (v36 & 0xC000000000000001);
  v134 = v36 & 0xFFFFFFFFFFFFFF8;
  v131 = v113 + 56;
  v117 = (v106 + 8);
  v123 = (v113 + 32);
  v126 = (v113 + 48);
  v121 = (v107 + 48);
  v116 = (v107 + 32);
  v109 = (v107 + 8);
  v120 = (v113 + 8);
  v132 = v24;
  v133 = v36 & 0xC000000000000001;
  v122 = v36;
  while (1)
  {
    if (v38)
    {
      v70 = sub_90EC0();
      v71 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v68 >= *(v134 + 16))
      {
        goto LABEL_91;
      }

      v70 = *(v36 + 8 * v68 + 32);

      v71 = (v68 + 1);
      if (__OFADD__(v68, 1))
      {
LABEL_85:
        __break(1u);
        goto LABEL_86;
      }
    }

    v135 = *v137;
    v136 = *(v137 + 8);
    v72 = OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType;
    sub_237EC(v70 + OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType, v1, type metadata accessor for AssetAttachment.AssetType);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73 > 1)
    {
      break;
    }

    if (v73)
    {

      v69 = type metadata accessor for AssetAttachment.AssetType;
      goto LABEL_48;
    }

LABEL_47:

    v69 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
LABEL_48:
    sub_23728(v1, v69);
LABEL_49:
    ++v68;
    if (v71 == v24)
    {
      goto LABEL_94;
    }
  }

  if (v73 != 2)
  {
    if (v73 != 3)
    {

      v74 = v70 + v72;
      v75 = v118;
      sub_237EC(v74, v118, type metadata accessor for AssetAttachment.AssetType);
      v76 = swift_getEnumCaseMultiPayload();
      v77 = v76;
      if (v76 <= 1)
      {
        v79 = v75;
        if (!v77)
        {
          goto LABEL_65;
        }

        sub_23728(v75, type metadata accessor for AssetAttachment.AssetType);
        v85 = 1;
        v84 = v25;
        v83 = v119;
      }

      else
      {
        v78 = v76 - 2;
        v79 = v75;
        if (v78 >= 2)
        {

          v79 = v75 + *(sub_3A90(&qword_C5158, &qword_99760) + 48);
        }

LABEL_65:
        v81 = v111;
        sub_23788(v79, v111);
        v82 = v112;
        sub_237EC(v81, v112, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_23728(v81, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v83 = v119;
          v84 = v129;
          (*v123)(v119, v82, v129);
          v85 = 0;
        }

        else
        {
          v86 = v114;
          sub_8F920();
          v83 = v119;
          sub_8F900();
          v1 = v130;

          (*v117)(v86, v115);
          sub_23728(v81, type metadata accessor for AssetAttachment.AssetType.FilePathType);
          v85 = 0;
          v84 = v129;
        }

        v24 = v132;
      }

      (*v131)(v83, v85, 1, v84);
      v38 = (v1 + *(sub_3A90(&qword_C5158, &qword_99760) + 48));
      if ((*v126)(v83, 1, v84) == 1)
      {

        sub_8EF0(v83, &qword_C4C60, &unk_99870);
        v25 = v84;
        v29 = v128;
        goto LABEL_74;
      }

      v87 = v110;
      (*v123)(v110, v83, v84);
      sub_8EF70();
      v88 = v124;
      sub_8FF60();
      v89 = v105;
      sub_8FF30();
      v90 = v125;
      if ((*v121)(v89, 1, v125) == 1)
      {

        (*v120)(v87, v84);
        sub_8EF0(v89, &qword_C5150, &qword_99758);
        v25 = v84;
        v29 = v128;
        v36 = v122;
LABEL_73:
        v24 = v132;
LABEL_74:
        sub_23728(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_75:
        v1 = v130;
        v38 = v133;
        goto LABEL_49;
      }

      v91 = v98;
      (*v116)(v98, v89, v90);
      sub_8FFB0();
      v92 = sub_8FFD0();
      v93 = *v109;
      (*v109)(v88, v90);
      if (v92)
      {
        v93(v91, v90);
        v25 = v129;
        (*v120)(v110, v129);
        v29 = v128;
        v36 = v122;
      }

      else
      {
        sub_8FFA0();
        LODWORD(v108) = sub_8FFD0();
        v93(v88, v90);
        v93(v91, v90);
        v25 = v129;
        (*v120)(v110, v129);
        v29 = v128;
        v36 = v122;
        if ((v108 & 1) == 0)
        {

          goto LABEL_73;
        }
      }

      v24 = v132;
      if (v136)
      {
        goto LABEL_88;
      }

LABEL_62:
      v80 = *(v70 + 16);
      sub_23728(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (v80 == v135)
      {
        goto LABEL_86;
      }

      goto LABEL_75;
    }

    goto LABEL_47;
  }

  v38 = v1;
  if ((v136 & 1) == 0)
  {
    goto LABEL_62;
  }

  v38 = v130;
LABEL_88:
  v94 = v104;
  sub_23728(v38, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_89:
  sub_59058(v94);
}

uint64_t type metadata accessor for VideoThumbnailCacheOperation(uint64_t a1)
{
  result = qword_C5FD0;
  if (!qword_C5FD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double *sub_41704(uint64_t a1)
{
  v2 = sub_8F810();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = &_swiftEmptySetSingleton;
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = *(v3 + 16);
    v7 = v3 + 16;
    v46 = v8;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v10 = (v7 - 8);
    v11 = _swiftEmptyArrayStorage;
    v45 = *(v7 + 56);
    v41 = v7;
    v8(v5, v9, v2);
    while (1)
    {
      v12 = sub_8F7E0();
      if (v13 & 1) != 0 || (v14 = *&v12, v15 = sub_8F7F0(), (v16) || (v17 = *&v15, (sub_6B1BC(v53, v14, *&v15) & 1) == 0))
      {
        (*v10)(v5, v2);
      }

      else
      {
        v43 = sub_8F7D0();
        v18 = sub_8F780();
        if (v19 >> 60 == 15)
        {
          v44 = 0;
        }

        else
        {
          v42 = v11;
          v20 = v18;
          v21 = v19;
          sub_37300();
          v44 = sub_90CA0();
          v22 = v20;
          v11 = v42;
          sub_41B24(v22, v21);
        }

        v23 = sub_8F7C0();
        if (v24 & 1) != 0 && (v23 = sub_8F7B0(), (v25))
        {
          if (v44)
          {
            v26 = [v44 location];
            [v26 horizontalAccuracy];
            v28 = v27;
          }

          else
          {
            v28 = 0;
          }
        }

        else
        {
          v28 = v23;
        }

        v29 = sub_8F800();
        v47[72] = 1;
        if (v30)
        {
          v31 = v29;
        }

        else
        {
          v31 = 0;
        }

        v32 = 0xE000000000000000;
        if (v30)
        {
          v32 = v30;
        }

        *&v48 = v14;
        *(&v48 + 1) = v17;
        v49 = v44;
        LOBYTE(v50) = 1;
        *(&v50 + 1) = v31;
        *&v51 = v32;
        BYTE8(v51) = v43 & 1;
        v52 = v28;
        v53[0] = v14;
        v53[1] = v17;
        *&v53[2] = v44;
        v53[3] = 0.0;
        v54 = 1;
        v55 = v31;
        v56 = v32;
        v57 = v43 & 1;
        v58 = v28;
        v33 = v44;
        sub_39AC8(&v48, v47);
        sub_39B24(v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_17168(0, *(v11 + 2) + 1, 1, v11);
        }

        v35 = *(v11 + 2);
        v34 = *(v11 + 3);
        if (v35 >= v34 >> 1)
        {
          v11 = sub_17168((v34 > 1), v35 + 1, 1, v11);
        }

        (*v10)(v5, v2);
        *(v11 + 2) = v35 + 1;
        v36 = &v11[9 * v35];
        *(v36 + 2) = v48;
        v37 = v49;
        v38 = v50;
        v39 = v51;
        *(v36 + 12) = v52;
        *(v36 + 4) = v38;
        *(v36 + 5) = v39;
        *(v36 + 3) = v37;
      }

      v9 += v45;
      if (!--v6)
      {
        break;
      }

      v46(v5, v9, v2);
    }
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  return v11;
}

BOOL sub_41AC4(double a1, double a2, double a3, double a4)
{
  result = 0;
  v5 = fabs(a2);
  if (fabs(a1) <= 90.0 && v5 <= 180.0 && a3 >= 0.0 && a3 <= 180.0)
  {
    return a4 <= 360.0 && a4 >= 0.0;
  }

  return result;
}

uint64_t sub_41B24(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_17DA0(result, a2);
  }

  return result;
}

uint64_t sub_41B38(uint64_t a1, uint64_t a2, double a3)
{
  *(v4 + 160) = v3;
  *(v4 + 152) = a3;
  v6 = sub_90020();
  *(v4 + 168) = v6;
  *(v4 + 176) = *(v6 - 8);
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 192) = swift_task_alloc();
  v7 = sub_900D0();
  *(v4 + 200) = v7;
  *(v4 + 208) = *(v7 - 8);
  *(v4 + 216) = swift_task_alloc();
  v8 = sub_90050();
  *(v4 + 224) = v8;
  *(v4 + 232) = *(v8 - 8);
  *(v4 + 240) = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v9 = sub_907F0();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  *(v4 + 248) = v9;
  *(v4 + 256) = v11;

  return _swift_task_switch(sub_41CFC, v9, v11);
}

uint64_t sub_41CFC()
{
  if (qword_C3998 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = sub_7FF0(v3, qword_C61A0);
  (*(v2 + 16))(v1, v4, v3);
  sub_90030();
  sub_90010();
  v5 = sub_90040();
  v6 = sub_90B70();
  if (sub_90CF0())
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    v8 = sub_90000();
    _os_signpost_emit_with_name_impl(&dword_0, v5, v6, v8, "createThumbnail", "", v7, 2u);
  }

  v9 = *(v0 + 184);
  v10 = *(v0 + 192);
  v11 = *(v0 + 168);
  v12 = *(v0 + 176);
  v13 = *(v0 + 160);

  (*(v12 + 16))(v9, v10, v11);
  sub_90090();
  swift_allocObject();
  *(v0 + 264) = sub_90080();
  (*(v12 + 8))(v10, v11);
  [v13 size];
  v14 = *(v0 + 152);
  v17 = v16 < v15;
  v18 = v16 / v15 * v14;
  v19 = v15 / v16 * v14;
  if (v17)
  {
    v20 = *(v0 + 152);
  }

  else
  {
    v20 = v18;
  }

  if (v17)
  {
    v21 = v19;
  }

  else
  {
    v21 = *(v0 + 152);
  }

  v22 = *(v0 + 160);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_41FC4;
  v23 = swift_continuation_init();
  *(v0 + 136) = sub_3A90(&qword_C61B8, &qword_9A570);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_42734;
  *(v0 + 104) = &unk_B4E18;
  *(v0 + 112) = v23;
  [v22 prepareThumbnailOfSize:v0 + 80 completionHandler:{v21, v20}];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_41FC4()
{
  v1 = *(*v0 + 256);
  v2 = *(*v0 + 248);

  return _swift_task_switch(sub_420CC, v2, v1);
}

uint64_t sub_420CC()
{
  v2 = v0[29];
  v1 = v0[30];
  v3 = v0[28];
  v4 = v0[18];
  sub_42498(v1, "createThumbnail", 15, 2, v0[33]);

  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_421B0()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C61A0);
  v1 = sub_7FF0(v0, qword_C61A0);
  if (qword_C3A80 != -1)
  {
    swift_once();
  }

  v2 = sub_7FF0(v0, qword_D0750);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

UIImage *sub_42278(void *a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  if (![a1 imageOrientation] || (objc_msgSend(a1, "size"), UIGraphicsBeginImageContext(v6), objc_msgSend(a1, "drawAtPoint:", 0.0, 0.0), v4 = UIGraphicsGetImageFromCurrentImageContext(), UIGraphicsEndImageContext(), !v4))
  {
    v4 = a1;
  }

  sub_42320(v1, Current);
  return v4;
}

void sub_42320(uint64_t a1, double a2)
{
  if (qword_C3998 != -1)
  {
    swift_once();
  }

  v3 = sub_900D0();
  sub_7FF0(v3, qword_C61A0);
  oslog = sub_900B0();
  v4 = sub_90A80();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315394;
    v7 = sub_912D0();
    v9 = sub_76D20(v7, v8, &v11);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2048;
    *(v5 + 14) = CFAbsoluteTimeGetCurrent() - a2;
    _os_log_impl(&dword_0, oslog, v4, "%s.fixImageOrientationIfNeeded took %f seconds", v5, 0x16u);
    sub_7FA4(v6);
  }
}

uint64_t sub_42498(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_90060();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_90020();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_90040();
  sub_90070();
  v21 = sub_90B60();
  result = sub_90CF0();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:

      sub_900A0();

      if ((*(v7 + 88))(v9, v6) == enum case for OSSignpostError.doubleEnd(_:))
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_90000();
      _os_signpost_emit_with_name_impl(&dword_0, v14, v21, v19, v16, v17, v18, 2u);

      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_42734(uint64_t a1, void *a2)
{
  v3 = sub_FCAC((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return _swift_continuation_resume(v4);
}

uint64_t sub_427B0()
{
  v1 = v0;
  v2 = 0xE000000000000000;
  sub_90EA0(19);
  v3 = [v0 entity];
  v4 = [v3 managedObjectClassName];

  if (v4)
  {
    v5 = sub_90590();
    v2 = v6;
  }

  else
  {
    v5 = 0;
  }

  v13._countAndFlagsBits = v5;
  v13._object = v2;
  sub_90640(v13);

  v14._countAndFlagsBits = 23328;
  v14._object = 0xE200000000000000;
  sub_90640(v14);
  v7 = [v1 objectID];
  v8 = [v7 pl_shortURI];

  if (v8)
  {
    v9 = sub_90590();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v15._countAndFlagsBits = v9;
  v15._object = v11;
  sub_90640(v15);

  v16._countAndFlagsBits = 0x7865746E6F63205DLL;
  v16._object = 0xEB00000000203A74;
  sub_90640(v16);
  [v1 managedObjectContext];
  sub_3A90(&qword_C61C0, &qword_9A578);
  v17._countAndFlagsBits = sub_905E0();
  sub_90640(v17);

  return 0;
}

id sub_42978()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VisitAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VisitAsset(uint64_t a1)
{
  result = qword_C61F0;
  if (!qword_C61F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_42AC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_8F810();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_42B14(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15JournalSettings10VisitAsset_metadata) = a1;

  return result;
}

uint64_t sub_42B2C()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C6248);
  sub_7FF0(v0, qword_C6248);
  return sub_900C0();
}

uint64_t sub_42BAC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_3A90(&qword_C4AD0, &qword_9A610);
  v3[5] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v5 = sub_907F0();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v3[6] = v5;
  v3[7] = v7;

  return _swift_task_switch(sub_42C88, v5, v7);
}

uint64_t sub_42C88()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_42D20;
  v2 = v0[3];
  v3 = v0[2];

  return sub_5C7C4(v3, v2);
}

uint64_t sub_42D20(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_42E48, v4, v3);
}

uint64_t sub_42E48()
{
  v1 = v0[9];
  if (v1)
  {
LABEL_13:

    v16 = v0[1];

    return v16(v1);
  }

  v2 = v0[5];
  sub_44118(v0[4] + qword_D0488, v2);
  v3 = sub_8FA70();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = v0[5];
  if (v5 == 1)
  {
    sub_8EF0(v0[5], &qword_C4AD0, &qword_9A610);
LABEL_8:
    if (qword_C39A0 != -1)
    {
      swift_once();
    }

    v12 = sub_900D0();
    sub_7FF0(v12, qword_C6248);
    v13 = sub_900B0();
    v14 = sub_90A70();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "no visits data", v15, 2u);
    }

    goto LABEL_13;
  }

  v7 = sub_8FA30();
  v0[10] = v7;
  (*(v4 + 8))(v6, v3);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_430B4;
  v9 = v0[3];
  v10 = v0[2];

  return sub_43620(v10, v9, v7);
}

uint64_t sub_430B4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_43200, v4, v3);
}

uint64_t sub_43200()
{
  if (*(v0 + 96))
  {
    v1 = *(*(v0 + 32) + qword_D0590);
    *(v0 + 120) = v1;
    if (sub_616D8(v1))
    {
      sub_3F1E8();
      v3 = v2;
      v4 = [objc_opt_self() mainScreen];
      [v4 scale];
      v6 = v5;

      v7 = swift_task_alloc();
      *(v0 + 104) = v7;
      *v7 = v0;
      v7[1] = sub_43364;
      v9 = *(v0 + 16);
      v8 = *(v0 + 24);

      return sub_41B38(v9, v8, v3 * v6);
    }

    v11 = *(v0 + 96);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v0 + 8);

  return v12(v11);
}

uint64_t sub_43364(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return _swift_task_switch(sub_4348C, v4, v3);
}

uint64_t sub_4348C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    if (sub_60EC8(*(v0 + 120)))
    {
      if (qword_C3A10 != -1)
      {
        swift_once();
      }

      sub_5E3A0(v1, *(*(v0 + 32) + qword_C7530), *(*(v0 + 32) + qword_C7530 + 8));
    }
  }

  else
  {
    if (qword_C39A0 != -1)
    {
      swift_once();
    }

    v2 = sub_900D0();
    sub_7FF0(v2, qword_C6248);
    v1 = sub_900B0();
    v3 = sub_90A70();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, v1, v3, "error creating thumbnail from video preview image", v4, 2u);
    }
  }

  v5 = *(v0 + 96);

  v6 = *(v0 + 8);

  return v6(v5);
}

uint64_t sub_43620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  sub_3A90(&qword_C4AD0, &qword_9A610);
  v4[21] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_907F0();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v4[22] = v6;
  v4[23] = v8;

  return _swift_task_switch(sub_436F8, v6, v8);
}

uint64_t sub_436F8()
{
  v1 = v0[20];
  v2 = sub_41704(v0[19]);
  v0[24] = v2;
  v3 = *(v1 + qword_D05A0);
  v4 = *(v1 + qword_D0590);
  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_437DC;

  return sub_3C2B8(v2, v4, v3);
}

uint64_t sub_437DC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 208) = a1;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);

  return _swift_task_switch(sub_43928, v4, v3);
}

uint64_t sub_43928()
{
  v1 = *(v0 + 168);
  sub_44118(*(v0 + 160) + qword_D0488, v1);
  v2 = sub_8FA70();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_8EF0(*(v0 + 168), &qword_C4AD0, &qword_9A610);
  }

  else
  {
    v4 = sub_8FA40();
    v6 = *(v0 + 168);
    if (v5 >> 60 == 15)
    {
      (*(v3 + 8))(*(v0 + 168), v2);
    }

    else
    {
      v7 = v4;
      v8 = v5;
      sub_441A0();
      v9 = sub_90CA0();
      sub_41B24(v7, v8);
      (*(v3 + 8))(v6, v2);
      if (v9)
      {
        goto LABEL_7;
      }
    }
  }

  v9 = [*(v0 + 208) camera];
LABEL_7:
  v10 = *(v0 + 208);
  [v10 setCamera:v9];

  [v10 _setRendersInBackground:1];
  v11 = [objc_allocWithZone(MKMapSnapshotter) initWithOptions:v10];
  *(v0 + 216) = v11;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_43BD4;
  v12 = swift_continuation_init();
  *(v0 + 136) = sub_3A90(&qword_C3FB0, &unk_98810);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_EFAC;
  *(v0 + 104) = &unk_B4E50;
  *(v0 + 112) = v12;
  [v11 startWithCompletionHandler:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_43BD4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_43DA0;
  }

  else
  {
    v5 = sub_43D04;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_43D04()
{
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[18];
  v4 = [v3 image];

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_43DA0(uint64_t a1)
{
  swift_willThrow();
  if (qword_C39A0 != -1)
  {
    swift_once();
  }

  v2 = sub_900D0();
  sub_7FF0(v2, qword_C6248);
  swift_errorRetain();
  v3 = sub_900B0();
  v4 = sub_90A70();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v1[27];
  v7 = v1[26];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&dword_0, v3, v4, "MKMapSnapshotter: Unable to create Location Preview Map Snapshot with error: %@", v8, 0xCu);
    sub_8EF0(v9, &qword_C3FB8, &qword_98BF0);
  }

  else
  {
  }

  v11 = v1[1];

  return v11(0);
}

uint64_t type metadata accessor for MultiPinMapThumbnailCacheOperation(uint64_t a1)
{
  result = qword_C6288;
  if (!qword_C6288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_44028(uint64_t a1)
{
  sub_440B8(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_440B8(uint64_t a1)
{
  if (!qword_C6298)
  {
    sub_8FA70();
    v1 = sub_90D10();
    if (!v2)
    {
      atomic_store(v1, &qword_C6298);
    }
  }
}

uint64_t sub_44118(uint64_t a1, uint64_t a2)
{
  v4 = sub_3A90(&qword_C4AD0, &qword_9A610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_441A0()
{
  result = qword_C63D8[0];
  if (!qword_C63D8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_C63D8);
  }

  return result;
}

uint64_t sub_441F0(void *a1)
{
  v2 = a1[10];
  sub_90D10();
  result = sub_90D10();
  if (v4 <= 0x3F)
  {
    result = _s8MetadataC5InputOMa(319, v2, a1[11], a1[12]);
    if (v5 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL sub_442E0(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 32))(a1);
  if (v2)
  {
  }

  return v2 == 0;
}

uint64_t sub_44328(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_44610(a1);
  return v2;
}

uint64_t sub_44368@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = __chkstk_darwin(a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t *sub_44610(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 80);
  v6 = sub_90D10();
  (*(*(v6 - 8) + 56))(v1 + v4, 1, 1, v6);
  *(v1 + *(*v1 + 112)) = xmmword_98E00;
  v7 = *(*v1 + 120);
  v8 = _s8MetadataC5InputOMa(0, v5, *(v3 + 88), *(v3 + 96));
  (*(*(v8 - 8) + 32))(v1 + v7, a1, v8);
  return v1;
}

uint64_t *sub_44750()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);
  sub_90D10();
  v4 = sub_90D10();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  sub_44C54(*(v0 + *(*v0 + 112)), *(v0 + *(*v0 + 112) + 8));
  v5 = *(*v0 + 120);
  v6 = _s8MetadataC5InputOMa(0, v3, *(v1 + 88), *(v1 + 96));
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_44884()
{
  sub_44750();

  return swift_deallocClassInstance();
}

uint64_t sub_44914(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_44984(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 16;
  if (*(v3 + 64) > 0x10uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_44A9C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_44C54(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 11)
  {
    return sub_41B24(result, a2);
  }

  return result;
}

uint64_t sub_44C68(uint64_t a1, uint64_t a2)
{
  v5 = (*(&stru_108.reloff + (swift_isaMask & *v2)))();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 assetMetaData];

    if (v7)
    {
      v9 = sub_8F030();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xF000000000000000;
    }

    v19 = v9;
    v20 = v11;
    __chkstk_darwin(v8);
    v18[2] = a1;
    v18[3] = a2;
    sub_3A90(&qword_C64E0, &unk_9B2B0);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v14 = swift_getAssociatedConformanceWitness();
    v15 = _s8MetadataCMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
    sub_44368(sub_44FD8, v18, &type metadata for Never, v15, v16, &v21);
    sub_41B24(v19, v20);
    v5 = v21;
  }

  return (*(a2 + 40))(v5, a1, a2);
}

uint64_t sub_44E68@<X0>(uint64_t *a1@<X0>, uint64_t *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v9 = _s8MetadataC5InputOMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  __chkstk_darwin(v9);
  v11 = (&v16 - v10);
  v13 = *a1;
  v12 = a1[1];
  _s8MetadataCMa(0, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  *v11 = v13;
  v11[1] = v12;
  swift_storeEnumTagMultiPayload();
  v14 = swift_allocObject();
  sub_44610(v11);
  *a4 = v14;
  return sub_44FF8(v13, v12);
}

uint64_t sub_44FF8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

id sub_450B0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotoAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PhotoAsset(uint64_t a1)
{
  result = qword_C65A8;
  if (!qword_C65A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_451A0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15JournalSettings10PhotoAsset_metadata) = a1;

  return result;
}

id sub_451B8()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90540();
  __chkstk_darwin(v4 - 8);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C4808, &unk_99710);
  v7 = __chkstk_darwin(v6 - 8);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v49 - v9;
  v11 = sub_8FFF0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A90(&qword_C4A80, &qword_99050);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  v18 = sub_8FB90();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  sub_11854(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_8EF0(v17, &qword_C4A80, &qword_99050);
    return 0;
  }

  v50 = v10;
  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_8FB80();
  if (!v23)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  v49 = v3;
  sub_8FF90();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_8FF50().super.isa;
  v28 = [v26 initWithContentType:isa];

  v29 = (*(v12 + 8))(v14, v11);
  sub_5729C(v24, v25, 0, 0, v29);

  v30 = v53;
  sub_8FB70();
  v31 = v30;
  v32 = sub_8F2F0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v31, 1, v32) == 1)
  {
    v35 = *(v51 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
    if (v35)
    {
      v36 = [v35 entry];
      if (v36)
      {
        v37 = v36;
        v38 = v50;
        sub_8F500();

        v39 = 0;
      }

      else
      {
        v39 = 1;
        v38 = v50;
      }

      v31 = v53;
    }

    else
    {
      v39 = 1;
      v38 = v50;
    }

    (*(v33 + 56))(v38, v39, 1, v32);
    if (v34(v31, 1, v32) != 1)
    {
      sub_8EF0(v31, &qword_C4808, &unk_99710);
    }
  }

  else
  {
    v38 = v50;
    (*(v33 + 32))(v50, v31, v32);
    (*(v33 + 56))(v38, 0, 1, v32);
  }

  sub_904E0();
  sub_8F380();
  v40 = sub_905C0();
  v42 = v41;
  sub_3A90(&qword_C4840, &unk_99890);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_98740;
  v44 = sub_577BC(v40, v42, v38);
  v46 = v45;

  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = sub_90730().super.isa;

  [v28 setAlternateNames:v47];

  sub_8EF0(v38, &qword_C4808, &unk_99710);
  (*(v19 + 8))(v21, v18);
  return v28;
}

uint64_t sub_4586C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_8FB90();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_458B0@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v139 = a2;
  v138 = a1;
  v111 = a3;
  v4 = sub_3A90(&qword_C5150, &qword_99758);
  v5 = __chkstk_darwin(v4 - 8);
  v115 = &v101[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v112 = &v101[-v7];
  v8 = sub_8FFF0();
  v114 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v106 = &v101[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v101[-v12];
  __chkstk_darwin(v11);
  v119 = &v101[-v14];
  v121 = sub_8F930();
  v113 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v101[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  v16 = __chkstk_darwin(v135);
  v127 = &v101[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v118 = &v101[-v19];
  v20 = __chkstk_darwin(v18);
  v133 = &v101[-v21];
  __chkstk_darwin(v20);
  v126 = &v101[-v22];
  v23 = sub_3A90(&qword_C4C60, &unk_99870);
  v24 = __chkstk_darwin(v23 - 8);
  v125 = &v101[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v24);
  v27 = &v101[-v26];
  v141 = sub_8EFE0();
  v117 = *(v141 - 8);
  v28 = __chkstk_darwin(v141);
  v116 = &v101[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v31 = &v101[-v30];
  v32 = type metadata accessor for AssetAttachment.AssetType(0);
  v33 = __chkstk_darwin(v32);
  v124 = &v101[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = __chkstk_darwin(v33);
  v137 = &v101[-v36];
  v37 = __chkstk_darwin(v35);
  v134 = &v101[-v38];
  __chkstk_darwin(v37);
  v40 = &v101[-v39];
  v41 = *(v3 + OBJC_IVAR____TtC15JournalSettings5Asset_attachments);
  v131 = v13;
  v108 = v3;
  if (v41 >> 62)
  {
    goto LABEL_93;
  }

  v42 = *(&dword_10 + (v41 & 0xFFFFFFFFFFFFFF8));
LABEL_3:

  v132 = v8;
  v140 = v32;
  if (v42)
  {
    v8 = 0;
    v143 = v41 & 0xFFFFFFFFFFFFFF8;
    v144 = v41 & 0xC000000000000001;
    v129 = (v117 + 56);
    v107 = (v113 + 8);
    v122 = (v117 + 32);
    v128 = (v117 + 48);
    v110 = (v114 + 48);
    v104 = (v114 + 32);
    v103 = (v114 + 8);
    v109 = (v117 + 8);
    v123 = v31;
    v136 = v41;
    v142 = v42;
    v130 = v27;
    do
    {
      if (v144)
      {
        v44 = sub_90EC0();
        v45 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_41:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *(v143 + 16))
        {
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          v42 = sub_90FA0();
          goto LABEL_3;
        }

        v44 = *(v41 + 8 * v8 + 32);

        v45 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_41;
        }
      }

      v46 = OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType;
      sub_237EC(v44 + OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType, v40, type metadata accessor for AssetAttachment.AssetType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {

          v43 = type metadata accessor for AssetAttachment.AssetType;
        }

        else
        {
LABEL_5:

          v43 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
        }

        sub_23728(v40, v43);
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload == 2)
      {
        v54 = v40;
        if (v139)
        {

          v100 = v40;
          goto LABEL_89;
        }

        goto LABEL_20;
      }

      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_5;
      }

      v48 = v44 + v46;
      v49 = v134;
      sub_237EC(v48, v134, type metadata accessor for AssetAttachment.AssetType);
      v50 = swift_getEnumCaseMultiPayload();
      v51 = v50;
      if (v50 <= 1)
      {
        v53 = v49;
        if (v51)
        {
          sub_23728(v49, type metadata accessor for AssetAttachment.AssetType);
          v59 = 1;
          v27 = v130;
          goto LABEL_27;
        }
      }

      else
      {
        v52 = v50 - 2;
        v53 = v49;
        if (v52 >= 2)
        {

          v53 = &v49[*(sub_3A90(&qword_C5158, &qword_99760) + 48)];
        }
      }

      v56 = v126;
      sub_23788(v53, v126);
      v57 = v127;
      sub_237EC(v56, v127, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v60 = v120;
        sub_8F920();
        v61 = v130;
        sub_8F900();

        v62 = v60;
        v32 = v140;
        (*v107)(v62, v121);
        v63 = v56;
        v27 = v61;
        v31 = v123;
        sub_23728(v63, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v59 = 0;
LABEL_27:
        v58 = v141;
        goto LABEL_28;
      }

      sub_23728(v56, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v27 = v130;
      v58 = v141;
      (*v122)(v130, v57, v141);
      v59 = 0;
LABEL_28:
      (*v129)(v27, v59, 1, v58);
      v54 = &v40[*(sub_3A90(&qword_C5158, &qword_99760) + 48)];
      if ((*v128)(v27, 1, v58) == 1)
      {

        sub_8EF0(v27, &qword_C4C60, &unk_99870);
      }

      else
      {
        v64 = v27;
        v27 = v58;
        (*v122)(v31, v64, v58);
        sub_8EF70();
        v65 = v131;
        sub_8FF60();
        v66 = v115;
        v67 = v132;
        sub_8FF30();
        if ((*v110)(v66, 1, v67) == 1)
        {

          v31 = v123;
          (*v109)(v123, v58);
          sub_8EF0(v66, &qword_C5150, &qword_99758);
          v32 = v140;
        }

        else
        {
          v27 = v106;
          (*v104)(v106, v66, v67);
          sub_8FFB0();
          v68 = sub_8FFD0();
          v105 = *v103;
          v105(v65, v67);
          if (v68)
          {
            v105(v27, v67);
            v31 = v123;
            (*v109)(v123, v141);
LABEL_36:
            v32 = v140;
            if (v139)
            {

              v100 = v54;
              goto LABEL_89;
            }

LABEL_20:
            v55 = *(v44 + 16);
            sub_23728(v54, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            if (v55 == v138)
            {
LABEL_85:

              goto LABEL_90;
            }

            v41 = v136;
            goto LABEL_7;
          }

          sub_8FFA0();
          v102 = sub_8FFD0();
          v69 = v65;
          v70 = v105;
          v105(v69, v67);
          v70(v27, v67);
          v31 = v123;
          (*v109)(v123, v141);
          if (v102)
          {
            goto LABEL_36;
          }

          v32 = v140;
        }
      }

      sub_23728(v54, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v41 = v136;
LABEL_7:
      ++v8;
    }

    while (v45 != v142);
  }

  v71 = *(v108 + OBJC_IVAR____TtC15JournalSettings5Asset_sourceAttachments);
  if (v71 >> 62)
  {
    v8 = sub_90FA0();
  }

  else
  {
    v8 = *(&dword_10 + (v71 & 0xFFFFFFFFFFFFFF8));
  }

  v40 = v118;
  v27 = v137;
  v31 = v119;

  if (!v8)
  {
LABEL_84:

    (*(v117 + 56))(v111, 1, 1, v141);
    return result;
  }

  v41 = 0;
  v143 = v71 & 0xFFFFFFFFFFFFFF8;
  v144 = v71 & 0xC000000000000001;
  v136 = (v117 + 56);
  v126 = (v113 + 8);
  v129 = (v117 + 32);
  v134 = (v117 + 48);
  v128 = (v114 + 48);
  v122 = (v114 + 32);
  v115 = (v114 + 8);
  v127 = (v117 + 8);
  v130 = v71;
  v142 = v8;
  while (1)
  {
    if (v144)
    {
      v73 = sub_90EC0();
      v74 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v41 >= *(v143 + 16))
      {
        goto LABEL_92;
      }

      v73 = *(v71 + 8 * v41 + 32);

      v74 = (v41 + 1);
      if (__OFADD__(v41, 1))
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }
    }

    v75 = OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType;
    sub_237EC(v73 + OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType, v27, type metadata accessor for AssetAttachment.AssetType);
    v76 = swift_getEnumCaseMultiPayload();
    if (v76 <= 1)
    {
      if (v76)
      {

        v72 = type metadata accessor for AssetAttachment.AssetType;
      }

      else
      {
LABEL_46:

        v72 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
      }

      sub_23728(v27, v72);
      goto LABEL_48;
    }

    if (v76 != 2)
    {
      if (v76 == 3)
      {
        goto LABEL_46;
      }

      v77 = v73 + v75;
      v78 = v124;
      sub_237EC(v77, v124, type metadata accessor for AssetAttachment.AssetType);
      v79 = swift_getEnumCaseMultiPayload();
      v80 = v79;
      if (v79 <= 1)
      {
        v82 = v78;
        v83 = v133;
        if (v80)
        {
          sub_23728(v78, type metadata accessor for AssetAttachment.AssetType);
          v89 = 1;
          v87 = v125;
          goto LABEL_68;
        }
      }

      else
      {
        v81 = v79 - 2;
        v82 = v78;
        v83 = v133;
        if (v81 >= 2)
        {

          v84 = sub_3A90(&qword_C5158, &qword_99760);
          v83 = v133;
          v82 = &v78[*(v84 + 48)];
        }
      }

      sub_23788(v82, v83);
      sub_237EC(v83, v40, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_23728(v83, type metadata accessor for AssetAttachment.AssetType.FilePathType);
        v87 = v125;
        v88 = v141;
        (*v129)(v125, v40, v141);
        v89 = 0;
LABEL_69:
        (*v136)(v87, v89, 1, v88);
        v92 = sub_3A90(&qword_C5158, &qword_99760);
        v85 = &v137[*(v92 + 48)];
        if ((*v134)(v87, 1, v88) == 1)
        {

          sub_8EF0(v87, &qword_C4C60, &unk_99870);
          v27 = v137;
          goto LABEL_74;
        }

        v93 = v116;
        (*v129)(v116, v87, v88);
        sub_8EF70();
        v94 = v131;
        sub_8FF60();
        v95 = v112;
        sub_8FF30();
        v96 = v132;
        if ((*v128)(v95, 1, v132) == 1)
        {

          (*v127)(v93, v88);
          sub_8EF0(v95, &qword_C5150, &qword_99758);
          v40 = v118;
          v27 = v137;
          v31 = v119;
          goto LABEL_73;
        }

        v97 = v119;
        (*v122)(v119, v95, v96);
        sub_8FFB0();
        LODWORD(v123) = sub_8FFD0();
        v98 = *v115;
        (*v115)(v94, v96);
        if (v123)
        {
          v98(v97, v96);
          (*v127)(v116, v141);
          v31 = v97;
        }

        else
        {
          sub_8FFA0();
          LODWORD(v123) = sub_8FFD0();
          v98(v94, v96);
          v98(v97, v96);
          (*v127)(v116, v141);
          v31 = v97;
          if ((v123 & 1) == 0)
          {

            v40 = v118;
            v27 = v137;
LABEL_73:
            v71 = v130;
LABEL_74:
            sub_23728(v85, type metadata accessor for AssetAttachment.AssetType.FilePathType);
            v32 = v140;
            goto LABEL_48;
          }
        }

        v40 = v118;
        v27 = v137;
        v71 = v130;
        if (v139)
        {

          v100 = v85;
          goto LABEL_89;
        }

        goto LABEL_61;
      }

      v90 = v120;
      sub_8F920();
      v91 = v125;
      sub_8F900();
      v71 = v130;

      (*v126)(v90, v121);
      v87 = v91;
      sub_23728(v83, type metadata accessor for AssetAttachment.AssetType.FilePathType);
      v89 = 0;
LABEL_68:
      v88 = v141;
      goto LABEL_69;
    }

    v85 = v27;
    if (v139)
    {
      break;
    }

LABEL_61:
    v86 = *(v73 + 16);
    sub_23728(v85, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    if (v86 == v138)
    {
      goto LABEL_85;
    }

    v32 = v140;
LABEL_48:
    v8 = v142;
    ++v41;
    if (v74 == v142)
    {
      goto LABEL_84;
    }
  }

  v100 = v27;
LABEL_89:
  sub_23728(v100, type metadata accessor for AssetAttachment.AssetType.FilePathType);
LABEL_90:
  sub_59058(v111);

  return result;
}

NSObject *sub_46C28(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, void *a6)
{
  v12 = a1;
  v13 = objc_allocWithZone(type metadata accessor for VideoThumbnailCacheOperation(0));
  v14 = v6;

  return sub_5C308(v14, v12, a2, a3 & 1, a4, a5, a6);
}

id sub_46CCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoAsset(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for VideoAsset(uint64_t a1)
{
  result = qword_C6620;
  if (!qword_C6620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_46DBC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15JournalSettings10VideoAsset_metadata) = a1;

  return result;
}

id sub_46DD4()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v3 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90540();
  __chkstk_darwin(v4 - 8);
  v58 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C4808, &unk_99710);
  v7 = __chkstk_darwin(v6 - 8);
  v60 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v59 = &v55 - v9;
  v10 = sub_3A90(&qword_C4C60, &unk_99870);
  __chkstk_darwin(v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_8FFF0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_3A90(&qword_C4A80, &qword_99050);
  __chkstk_darwin(v17 - 8);
  v19 = &v55 - v18;
  v20 = sub_8FB90();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v0;
  sub_11A94(v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_8EF0(v19, &qword_C4A80, &qword_99050);
    return 0;
  }

  (*(v21 + 32))(v23, v19, v20);
  v24 = sub_8FB80();
  if (!v25)
  {
    (*(v21 + 8))(v23, v20);
    return 0;
  }

  v26 = v25;
  v56 = v24;
  v57 = v3;
  sub_8FFB0();
  v27 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_8FF50().super.isa;
  v29 = [v27 initWithContentType:isa];

  (*(v14 + 8))(v16, v13);
  sub_458B0(0, 1, v12);
  v30 = sub_8EFE0();
  v31 = *(v30 - 8);
  v33 = 0;
  if ((*(v31 + 48))(v12, 1, v30) != 1)
  {
    sub_8EF90(v32);
    v33 = v34;
    (*(v31 + 8))(v12, v30);
  }

  [v29 setContentURL:v33];

  sub_5729C(v56, v26, 0, 0, v35);

  v36 = v60;
  sub_8FB70();
  v37 = v36;
  v38 = sub_8F2F0();
  v39 = *(v38 - 8);
  v40 = *(v39 + 48);
  if (v40(v37, 1, v38) == 1)
  {
    v41 = *(v61 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
    v42 = v59;
    if (v41)
    {
      v43 = [v41 entry];
      if (v43)
      {
        v44 = v43;
        sub_8F500();

        v45 = 0;
      }

      else
      {
        v45 = 1;
      }

      v37 = v60;
    }

    else
    {
      v45 = 1;
    }

    (*(v39 + 56))(v42, v45, 1, v38);
    if (v40(v37, 1, v38) != 1)
    {
      sub_8EF0(v37, &qword_C4808, &unk_99710);
    }
  }

  else
  {
    v42 = v59;
    (*(v39 + 32))(v59, v37, v38);
    (*(v39 + 56))(v42, 0, 1, v38);
  }

  sub_904E0();
  sub_8F380();
  v46 = sub_905C0();
  v48 = v47;
  sub_3A90(&qword_C4840, &unk_99890);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_98740;
  v50 = sub_577BC(v46, v48, v42);
  v52 = v51;

  *(v49 + 32) = v50;
  *(v49 + 40) = v52;
  v53 = sub_90730().super.isa;

  [v29 setAlternateNames:v53];

  sub_8EF0(v42, &qword_C4808, &unk_99710);
  (*(v21 + 8))(v23, v20);
  return v29;
}

double sub_47510()
{

  *(v0 + OBJC_IVAR____TtC15JournalSettings14LivePhotoAsset_livePhotoAttachments) = sub_47E70(v1);

  return result;
}

double sub_47560()
{

  return result;
}

id sub_475A0()
{
  if ((v0[OBJC_IVAR____TtC15JournalSettings14LivePhotoAsset_pendingLivePhotoRequest + 4] & 1) == 0)
  {
    v1 = &v0[OBJC_IVAR____TtC15JournalSettings14LivePhotoAsset_pendingLivePhotoRequest];
    [objc_opt_self() cancelLivePhotoRequestWithRequestID:*v1];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LivePhotoAsset(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t type metadata accessor for LivePhotoAsset(uint64_t a1)
{
  result = qword_C6698;
  if (!qword_C6698)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_47798()
{

  return swift_deallocClassInstance();
}

double sub_4780C(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC15JournalSettings14LivePhotoAsset_metadata) = a1;

  return result;
}

id sub_47824()
{
  v1 = sub_8F390();
  __chkstk_darwin(v1 - 8);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_90540();
  __chkstk_darwin(v4 - 8);
  v52 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_3A90(&qword_C4808, &unk_99710);
  v7 = __chkstk_darwin(v6 - 8);
  v53 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v49 - v9;
  v11 = sub_8FFF0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_3A90(&qword_C4A80, &qword_99050);
  __chkstk_darwin(v15 - 8);
  v17 = &v49 - v16;
  v18 = sub_8FB90();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v0;
  sub_11CD4(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_8EF0(v17, &qword_C4A80, &qword_99050);
    return 0;
  }

  v50 = v10;
  (*(v19 + 32))(v21, v17, v18);
  v22 = sub_8FB80();
  if (!v23)
  {
    (*(v19 + 8))(v21, v18);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  v49 = v3;
  sub_8FFE0();
  v26 = objc_allocWithZone(CSSearchableItemAttributeSet);
  isa = sub_8FF50().super.isa;
  v28 = [v26 initWithContentType:isa];

  v29 = (*(v12 + 8))(v14, v11);
  sub_5729C(v24, v25, 0, 0, v29);

  v30 = v53;
  sub_8FB70();
  v31 = v30;
  v32 = sub_8F2F0();
  v33 = *(v32 - 8);
  v34 = *(v33 + 48);
  if (v34(v31, 1, v32) == 1)
  {
    v35 = *(v51 + OBJC_IVAR____TtC15JournalSettings5Asset_assetMO);
    if (v35)
    {
      v36 = [v35 entry];
      if (v36)
      {
        v37 = v36;
        v38 = v50;
        sub_8F500();

        v39 = 0;
      }

      else
      {
        v39 = 1;
        v38 = v50;
      }

      v31 = v53;
    }

    else
    {
      v39 = 1;
      v38 = v50;
    }

    (*(v33 + 56))(v38, v39, 1, v32);
    if (v34(v31, 1, v32) != 1)
    {
      sub_8EF0(v31, &qword_C4808, &unk_99710);
    }
  }

  else
  {
    v38 = v50;
    (*(v33 + 32))(v50, v31, v32);
    (*(v33 + 56))(v38, 0, 1, v32);
  }

  sub_904E0();
  sub_8F380();
  v40 = sub_905C0();
  v42 = v41;
  sub_3A90(&qword_C4840, &unk_99890);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_98740;
  v44 = sub_577BC(v40, v42, v38);
  v46 = v45;

  *(v43 + 32) = v44;
  *(v43 + 40) = v46;
  v47 = sub_90730().super.isa;

  [v28 setAlternateNames:v47];

  sub_8EF0(v38, &qword_C4808, &unk_99710);
  (*(v19 + 8))(v21, v18);
  return v28;
}

uint64_t sub_47E70(unint64_t a1)
{
  v2 = type metadata accessor for AssetAttachment.AssetType(0);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v19 - v7;
  if (!(a1 >> 62))
  {
    v9 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_16:

    v11 = _swiftEmptyArrayStorage;
LABEL_17:
    type metadata accessor for LivePhotoAsset.LivePhotoAttachments();
    result = swift_allocObject();
    *(result + 16) = v11;
    *(result + 24) = 0;
    return result;
  }

  v9 = sub_90FA0();
  if (!v9)
  {
    goto LABEL_16;
  }

LABEL_3:
  v20 = _swiftEmptyArrayStorage;
  result = sub_1CAA8(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v20;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v9; ++i)
      {
        v13 = sub_90EC0();
        sub_48100(v13 + OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType, v8);
        swift_unknownObjectRelease();
        v20 = v11;
        v15 = *(v11 + 2);
        v14 = *(v11 + 3);
        if (v15 >= v14 >> 1)
        {
          sub_1CAA8((v14 > 1), v15 + 1, 1);
          v11 = v20;
        }

        *(v11 + 2) = v15 + 1;
        sub_48164(v8, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15);
      }
    }

    else
    {
      v16 = 32;
      do
      {
        sub_48100(*(a1 + v16) + OBJC_IVAR____TtC15JournalSettings15AssetAttachment_assetType, v6);
        v20 = v11;
        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          sub_1CAA8((v17 > 1), v18 + 1, 1);
          v11 = v20;
        }

        *(v11 + 2) = v18 + 1;
        sub_48164(v6, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18);
        v16 += 8;
        --v9;
      }

      while (v9);
    }

    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_48100(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_48164(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetAttachment.AssetType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_481C8(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_90E00();
    sub_2561C(0, &qword_C67B0, NSManagedObject_ptr);
    sub_4E9C0();
    sub_90920();
    v1 = v13;
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  while (v1 < 0)
  {
    if (!sub_90E20() || (sub_2561C(0, &qword_C67B0, NSManagedObject_ptr), swift_dynamicCast(), (v11 = v12) == 0))
    {
LABEL_21:
      sub_39CF0(v1);
      return;
    }

LABEL_16:
    sub_8F4B0();
    if (swift_dynamicCastClass())
    {
      sub_90720();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_90770();
      }

      sub_907A0();
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_12:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_48428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v39 = _swiftEmptyArrayStorage;
    sub_1CAC8(0, v1, 0);
    v3 = _swiftEmptyArrayStorage;
    v4 = v2 + 64;
    v5 = sub_90DE0();
    v6 = 0;
    v30 = v2 + 72;
    v34 = v2 + 64;
    v35 = v2;
    v33 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      v36 = v3;
      v37 = *(v2 + 36);
      v10 = (*(v2 + 48) + 16 * v5);
      v11 = *v10;
      v12 = v10[1];
      swift_bridgeObjectRetain_n();
      v13 = sub_4F188(v11, v12);
      if (v13 == 13)
      {
        if (qword_C39A8 != -1)
        {
          swift_once();
        }

        v14 = sub_900D0();
        sub_7FF0(v14, qword_C6788);

        v15 = sub_900B0();
        v16 = sub_90A60();

        if (os_log_type_enabled(v15, v16))
        {
          v32 = v16;
          v17 = 12;
          v18 = swift_slowAlloc();
          log = v15;
          v19 = swift_slowAlloc();
          v38 = v19;
          *v18 = 136315138;
          *(v18 + 4) = sub_76D20(v11, v12, &v38);
          _os_log_impl(&dword_0, log, v32, "No JournalEntryMO field match for key: %s", v18, 0xCu);
          sub_7FA4(v19);
        }

        else
        {

          v17 = 12;
        }
      }

      else
      {
        v17 = v13;
      }

      v3 = v36;
      v20 = v37;
      v39 = v36;
      v22 = *(v36 + 2);
      v21 = *(v36 + 3);
      if (v22 >= v21 >> 1)
      {
        sub_1CAC8((v21 > 1), v22 + 1, 1);
        v20 = v37;
        v3 = v39;
      }

      *(v3 + 2) = v22 + 1;
      *(v3 + v22 + 32) = v17;
      v2 = v35;
      v7 = 1 << *(v35 + 32);
      if (v5 >= v7)
      {
        goto LABEL_29;
      }

      v4 = v34;
      v23 = *(v34 + 8 * v9);
      if ((v23 & (1 << v5)) == 0)
      {
        goto LABEL_30;
      }

      if (v20 != *(v35 + 36))
      {
        goto LABEL_31;
      }

      v24 = v23 & (-2 << (v5 & 0x3F));
      if (v24)
      {
        v7 = __clz(__rbit64(v24)) | v5 & 0x7FFFFFFFFFFFFFC0;
        v8 = v33;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (v30 + 8 * v9);
        v8 = v33;
        while (v26 < (v7 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_4F1D4(v5, v20, 0);
            v7 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_4F1D4(v5, v20, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v8)
      {
        return;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

double sub_487C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_4EA28(&qword_C3D20, type metadata accessor for Key, &unk_982E8);
  v9 = sub_90450();
  v8(v9, a3, a4, a5);

  return result;
}

uint64_t sub_48894()
{
  v0 = sub_900D0();
  sub_8F9C(v0, qword_C6788);
  v1 = sub_7FF0(v0, qword_C6788);
  if (qword_C3A68 != -1)
  {
    swift_once();
  }

  v2 = sub_7FF0(v0, qword_D0708);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_4895C(unint64_t a1)
{
  v2 = 0;
  v3 = sub_3A90(&qword_C5800, &qword_99F98);
  __chkstk_darwin(v3);
  v204 = &v190 - v4;
  v214 = sub_8FE10();
  v5 = *(v214 - 1);
  __chkstk_darwin(v214);
  v213 = &v190 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3A90(&qword_C57E0, &qword_99F90);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v190 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = (&v190 - v12);
  v14 = __chkstk_darwin(v11);
  v16 = &v190 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = (&v190 - v18);
  v20 = __chkstk_darwin(v17);
  v22 = (&v190 - v21);
  v23 = __chkstk_darwin(v20);
  v212 = &v190 - v24;
  __chkstk_darwin(v23);
  v211 = &v190 - v25;
  v216 = sub_8F350();
  *&v206 = *(v216 - 8);
  v26 = __chkstk_darwin(v216);
  v28 = &v190 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v210 = &v190 - v29;
  v30 = [a1 userInfo];
  if (!v30)
  {
    return;
  }

  v208 = v22;
  v195 = v5;
  v31 = v30;
  v207 = sub_90450();

  if (qword_C39A8 == -1)
  {
    goto LABEL_3;
  }

LABEL_219:
  swift_once();
LABEL_3:
  v32 = sub_900D0();
  v33 = sub_7FF0(v32, qword_C6788);
  v34 = a1;
  v209 = v33;
  v35 = sub_900B0();
  v36 = sub_90A60();

  v37 = os_log_type_enabled(v35, v36);
  v198 = v10;
  v203 = v13;
  v199 = v16;
  v205 = v19;
  v200 = v3;
  v197 = v28;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v228[0] = v16;
    *v38 = 136315138;
    v39 = [v34 name];
    v40 = sub_90590();
    v28 = v41;

    v42 = sub_76D20(v40, v28, v228);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_0, v35, v36, "Responding to NSManagedObjectContextObjectsDidChange notification: %s", v38, 0xCu);
    sub_7FA4(v16);
  }

  v43 = v207;
  v221 = &_swiftEmptySetSingleton;
  v222 = sub_90590();
  v223 = v44;
  sub_90E50();
  if (*(v43 + 16) && (a1 = v43, v45 = sub_79E14(v228), (v46 & 1) != 0))
  {
    sub_7F40(*(v43 + 56) + 32 * v45, v227);
    sub_4E918(v228);
    sub_3A90(&qword_C67A8, "|r");
    if (swift_dynamicCast())
    {
      sub_481C8(v222);
      v28 = v47;

      v228[0] = _swiftEmptyArrayStorage;
      if (v28 >> 62)
      {
        v3 = sub_90FA0();
      }

      else
      {
        v3 = *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8));
      }

      v196 = v2;
      if (v3)
      {
        v16 = 0;
        v215 = v28 & 0xC000000000000001;
        v2 = (v28 & 0xFFFFFFFFFFFFFF8);
        v13 = &stru_BB000;
        while (1)
        {
          if (v215)
          {
            v48 = sub_90EC0();
          }

          else
          {
            if (v16 >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_215;
            }

            v48 = *(v28 + 8 * v16 + 32);
          }

          v49 = v48;
          v10 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_214;
          }

          v50 = [v48 entry];
          if (v50)
          {
            a1 = v50;
            v51 = [v50 *&v13[101].align];
          }

          else
          {
            v51 = 0;
          }

          v19 = v13;
          v52 = [*(v217 + 32) *&v13[101].align];
          v53 = v52;
          if (v51)
          {
            if (!v52)
            {

              goto LABEL_13;
            }

            sub_2561C(0, &qword_C67C0, NSManagedObjectID_ptr);
            a1 = sub_90CB0();

            if ((a1 & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else if (v52)
          {

LABEL_27:
            goto LABEL_13;
          }

          a1 = v228;
          sub_90F30();
          sub_90F60();
          sub_90F70();
          sub_90F40();
LABEL_13:
          ++v16;
          v13 = v19;
          if (v10 == v3)
          {
            v89 = v228[0];
            v2 = v196;
            v43 = v207;
            goto LABEL_66;
          }
        }
      }

      v89 = _swiftEmptyArrayStorage;
LABEL_66:

      if (v89 < 0)
      {
        v3 = 1;
      }

      else
      {
        v3 = (v89 >> 62) & 1;
      }

      if (v3 == 1)
      {
        v202 = sub_90FA0();
        if (!v202)
        {
          goto LABEL_222;
        }
      }

      else
      {
        v202 = *(v89 + 16);
        if (!v202)
        {
          goto LABEL_222;
        }
      }

      v90 = sub_900B0();
      v91 = sub_90A60();
      v92 = os_log_type_enabled(v90, v91);
      v215 = v89;
      if (v92)
      {
        v10 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v228[0] = v190;
        *v10 = 134218242;
        v194 = v3;
        v193 = v90;
        v191 = v91;
        if (v3)
        {
          v93 = sub_90FA0();
        }

        else
        {
          v93 = *(v89 + 16);
        }

        v118 = v208;
        *(v10 + 4) = v93;

        a1 = 0;
        v192 = v10;
        *(v10 + 12) = 2080;
        v201 = (v89 & 0xC000000000000001);
        v28 = v206 + 56;
        v13 = (v206 + 48);
        v16 = _swiftEmptyArrayStorage;
        v2 = (v206 + 32);
        do
        {
          if (v201)
          {
            v119 = sub_90EC0();
            v3 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_217;
            }
          }

          else
          {
            if (a1 >= *(v89 + 16))
            {
              goto LABEL_218;
            }

            v119 = *(v89 + 8 * a1 + 32);
            v3 = a1 + 1;
            if (__OFADD__(a1, 1))
            {
              goto LABEL_217;
            }
          }

          v120 = v119;
          v121 = [v120 id];
          if (v121)
          {
            v122 = v121;
            sub_8F330();

            v118 = v208;
            v123 = 0;
          }

          else
          {
            v123 = 1;
          }

          v10 = v216;
          (*v28)(v118, v123, 1, v216);
          v124 = v212;
          sub_4EA70(v118, v212);
          v125 = v124;
          v19 = v211;
          sub_4EA70(v125, v211);

          if ((v13->offs)(v19, 1, v10) == 1)
          {
            sub_8EF0(v19, &qword_C57E0, &qword_99F90);
          }

          else
          {
            v126 = *v2;
            (*v2)(v210, v19, v10);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_17904(0, *(v16 + 16) + 1, 1, v16);
            }

            v10 = *(v16 + 16);
            v127 = *(v16 + 24);
            if (v10 >= v127 >> 1)
            {
              v16 = sub_17904((v127 > 1), v10 + 1, 1, v16);
            }

            *(v16 + 16) = v10 + 1;
            v126((v16 + ((*(v206 + 80) + 32) & ~*(v206 + 80)) + *(v206 + 72) * v10), v210, v216);
            v118 = v208;
          }

          v89 = v215;
          ++a1;
        }

        while (v3 != v202);
        v128 = sub_90750();
        v130 = v129;

        v131 = sub_76D20(v128, v130, v228);

        v132 = v192;
        *(v192 + 14) = v131;
        v89 = v215;
        v133 = v193;
        _os_log_impl(&dword_0, v193, v191, "Processing %ld asset inserts: %s", v132, 0x16u);
        sub_7FA4(v190);

        v2 = v196;
        v43 = v207;
        if (!v194)
        {
LABEL_140:
          v95 = *(v89 + 16);
          if (v95)
          {
            goto LABEL_141;
          }

          goto LABEL_222;
        }
      }

      else
      {

        if (!v3)
        {
          goto LABEL_140;
        }
      }

      v95 = sub_90FA0();
      if (v95)
      {
LABEL_141:
        if (v95 < 1)
        {
          __break(1u);
          return;
        }

        v134 = 0;
        v211 = v89 & 0xC000000000000001;
        LODWORD(v210) = enum case for AssetType.reflection(_:);
        v135 = (v195 + 104);
        v136 = (v195 + 8);
        v212 = v95;
        while (1)
        {
          if (v211)
          {
            v138 = sub_90EC0();
          }

          else
          {
            v138 = *(v89 + 8 * v134 + 32);
          }

          v139 = v138;
          v140 = [v138 assetType];
          if (v140)
          {
            v141 = v140;
            v16 = sub_90590();
            v143 = v142;
          }

          else
          {
            v16 = 0;
            v143 = 0;
          }

          v144 = v213;
          v145 = v214;
          (*v135)(v213, v210, v214);
          v28 = sub_8FE00();
          v147 = v146;
          (*v136)(v144, v145);
          if (v143)
          {
            if (v16 == v28 && v143 == v147)
            {

              v89 = v215;
LABEL_157:
              v137 = 4;
              goto LABEL_145;
            }

            v16 = sub_910F0();

            v89 = v215;
            if (v16)
            {
              goto LABEL_157;
            }
          }

          else
          {

            v89 = v215;
          }

          v137 = 1;
LABEL_145:
          sub_6B7EC(v228, v137);

          if (v212 == ++v134)
          {

            v2 = v196;
            v43 = v207;
            goto LABEL_31;
          }
        }
      }

LABEL_222:
    }
  }

  else
  {
    sub_4E918(v228);
  }

LABEL_31:
  v222 = sub_90590();
  v223 = v54;
  sub_90E50();
  if (*(v43 + 16) && (v55 = sub_79E14(v228), (v56 & 1) != 0))
  {
    sub_7F40(*(v43 + 56) + 32 * v55, v227);
    sub_4E918(v228);
    sub_3A90(&qword_C67A8, "|r");
    if (swift_dynamicCast())
    {
      v57 = v222;

      a1 = sub_900B0();
      v58 = sub_90A60();
      v59 = v57 & 0xC000000000000001;
      if (os_log_type_enabled(a1, v58))
      {
        v60 = swift_slowAlloc();
        *v60 = 134217984;
        if (v59)
        {
          v61 = sub_90E10();
        }

        else
        {
          v61 = *(v57 + 16);
        }

        *(v60 + 4) = v61;

        _os_log_impl(&dword_0, a1, v58, "Processing %ld updated objects", v60, 0xCu);
      }

      else
      {
      }

      v196 = v2;
      if (v59)
      {
        sub_90E00();
        a1 = sub_2561C(0, &qword_C67B0, NSManagedObject_ptr);
        sub_4E9C0();
        sub_90920();
        v57 = v222;
        v3 = v223;
        v96 = v224;
        v13 = v225;
        v2 = v226;
      }

      else
      {
        v13 = 0;
        v3 = v57 + 56;
        v97 = -1 << *(v57 + 32);
        v96 = ~v97;
        v98 = -v97;
        if (v98 < 64)
        {
          v99 = ~(-1 << v98);
        }

        else
        {
          v99 = -1;
        }

        v2 = (v99 & *(v57 + 56));
      }

      v19 = ((v96 + 64) >> 6);
      v16 = NSManagedObject_ptr;
      if ((v57 & 0x8000000000000000) == 0)
      {
        goto LABEL_92;
      }

LABEL_89:
      v100 = sub_90E20();
      if (v100)
      {
        v227[0] = v100;
        sub_2561C(0, &qword_C67B0, NSManagedObject_ptr);
        swift_dynamicCast();
        a1 = v228[0];
        v10 = v13;
        v28 = v2;
        if (v228[0])
        {
          while (1)
          {
            v103 = sub_4A898(a1, v217);
            v104 = v221;

            v106 = sub_4CB90(v103, v104, v105);

            v221 = v106;
            v13 = v10;
            v2 = v28;
            if (v57 < 0)
            {
              goto LABEL_89;
            }

LABEL_92:
            v101 = v13;
            v102 = v2;
            v10 = v13;
            if (!v2)
            {
              break;
            }

LABEL_96:
            v28 = (v102 - 1) & v102;
            a1 = *(*(v57 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v102)))));
            if (!a1)
            {
              goto LABEL_99;
            }
          }

          while (1)
          {
            v10 = &v101->offs + 1;
            if (__OFADD__(v101, 1))
            {
              break;
            }

            if (v10 >= v19)
            {
              goto LABEL_99;
            }

            v102 = *(v3 + 8 * v10);
            v101 = (v101 + 1);
            if (v102)
            {
              goto LABEL_96;
            }
          }

          __break(1u);
          goto LABEL_213;
        }
      }

LABEL_99:
      sub_39CF0(v57);
      v2 = v196;
      v43 = v207;
    }
  }

  else
  {
    sub_4E918(v228);
  }

  v220[0] = sub_90590();
  v220[1] = v62;
  sub_90E50();
  if (*(v43 + 16) && (v63 = sub_79E14(v228), (v64 & 1) != 0))
  {
    sub_7F40(*(v43 + 56) + 32 * v63, v227);
    sub_4E918(v228);
    sub_3A90(&qword_C67A8, "|r");
    if (swift_dynamicCast())
    {
      v65 = v220[0];

      a1 = sub_900B0();
      v66 = sub_90A60();
      v67 = v65 & 0xC000000000000001;
      if (os_log_type_enabled(a1, v66))
      {
        v68 = swift_slowAlloc();
        *v68 = 134217984;
        if (v67)
        {
          v69 = sub_90E10();
        }

        else
        {
          v69 = *(v65 + 16);
        }

        *(v68 + 4) = v69;

        _os_log_impl(&dword_0, a1, v66, "Processing %ld refreshed objects", v68, 0xCu);
      }

      else
      {
      }

      v196 = v2;
      if (v67)
      {
        sub_90E00();
        a1 = sub_2561C(0, &qword_C67B0, NSManagedObject_ptr);
        sub_4E9C0();
        sub_90920();
        v65 = v227[0];
        v3 = v227[1];
        v107 = v227[2];
        v13 = v227[3];
        v2 = v227[4];
      }

      else
      {
        v13 = 0;
        v3 = v65 + 56;
        v108 = -1 << *(v65 + 32);
        v107 = ~v108;
        v109 = -v108;
        if (v109 < 64)
        {
          v110 = ~(-1 << v109);
        }

        else
        {
          v110 = -1;
        }

        v2 = (v110 & *(v65 + 56));
      }

      v19 = ((v107 + 64) >> 6);
      v16 = NSManagedObject_ptr;
      if ((v65 & 0x8000000000000000) == 0)
      {
        goto LABEL_112;
      }

LABEL_109:
      v111 = sub_90E20();
      if (!v111 || (v220[0] = v111, sub_2561C(0, &qword_C67B0, NSManagedObject_ptr), swift_dynamicCast(), a1 = v228[0], v10 = v13, v28 = v2, !v228[0]))
      {
LABEL_119:
        sub_39CF0(v65);
        v2 = v196;
        v43 = v207;
        goto LABEL_45;
      }

      while (1)
      {
        v114 = sub_4A898(a1, v217);
        v115 = v221;

        v117 = sub_4CB90(v114, v115, v116);

        v221 = v117;
        v13 = v10;
        v2 = v28;
        if (v65 < 0)
        {
          goto LABEL_109;
        }

LABEL_112:
        v112 = v13;
        v113 = v2;
        v10 = v13;
        if (!v2)
        {
          break;
        }

LABEL_116:
        v28 = (v113 - 1) & v113;
        a1 = *(*(v65 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v113)))));
        if (!a1)
        {
          goto LABEL_119;
        }
      }

      while (1)
      {
        v10 = &v112->offs + 1;
        if (__OFADD__(v112, 1))
        {
          break;
        }

        if (v10 >= v19)
        {
          goto LABEL_119;
        }

        v113 = *(v3 + 8 * v10);
        v112 = (v112 + 1);
        if (v113)
        {
          goto LABEL_116;
        }
      }

LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
      goto LABEL_216;
    }
  }

  else
  {
    sub_4E918(v228);
  }

LABEL_45:
  v218 = sub_90590();
  v219 = v70;
  sub_90E50();
  if (!*(v43 + 16) || (v71 = sub_79E14(v228), (v72 & 1) == 0))
  {

    sub_4E918(v228);
    goto LABEL_54;
  }

  sub_7F40(*(v43 + 56) + 32 * v71, v220);
  sub_4E918(v228);

  sub_3A90(&qword_C67A8, "|r");
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_54;
  }

  v10 = v218;
  v73 = v218 & 0xC000000000000001;
  if ((v218 & 0xC000000000000001) != 0)
  {
    if (sub_90E10() < 1)
    {
      goto LABEL_75;
    }
  }

  else if (*(v218 + 16) < 1)
  {
LABEL_75:

    goto LABEL_54;
  }

  v74 = sub_900B0();
  a1 = sub_90A60();
  if (os_log_type_enabled(v74, a1))
  {
    v75 = swift_slowAlloc();
    *v75 = 134217984;
    if (v73)
    {
      v76 = sub_90E10();
    }

    else
    {
      v76 = *(v10 + 16);
    }

    *(v75 + 4) = v76;

    _os_log_impl(&dword_0, v74, a1, "Notified of %ld deletes:", v75, 0xCu);
  }

  else
  {
  }

  v196 = v2;
  if (v73)
  {
    sub_90E00();
    a1 = sub_2561C(0, &qword_C67B0, NSManagedObject_ptr);
    sub_4E9C0();
    sub_90920();
    v10 = v228[0];
    v148 = v228[1];
    v149 = v228[2];
    v73 = v228[3];
    v28 = v228[4];
  }

  else
  {
    v150 = -1 << *(v10 + 32);
    v148 = v10 + 56;
    v149 = ~v150;
    v151 = -v150;
    if (v151 < 64)
    {
      v152 = ~(-1 << v151);
    }

    else
    {
      v152 = -1;
    }

    v28 = v152 & *(v10 + 56);
  }

  v195 = v149;
  v13 = ((v149 + 64) >> 6);
  v214 = (v206 + 56);
  v208 = (v206 + 48);
  v201 = (v206 + 32);
  v202 = (v206 + 8);
  *&v94 = 136315138;
  v206 = v94;
  v19 = &qword_C57E0;
  v211 = v10;
  v210 = v148;
  v207 = v13;
  if ((v10 & 0x8000000000000000) == 0)
  {
    while (1)
    {
      v156 = v73;
      v157 = v28;
      v3 = v73;
      if (!v28)
      {
        while (1)
        {
          v3 = v156 + 1;
          if (__OFADD__(v156, 1))
          {
            break;
          }

          if (v3 >= v13)
          {
            goto LABEL_211;
          }

          v157 = *(v148 + 8 * v3);
          ++v156;
          if (v157)
          {
            goto LABEL_175;
          }
        }

LABEL_216:
        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
        goto LABEL_219;
      }

LABEL_175:
      v155 = (v157 - 1) & v157;
      v154 = *(*(v10 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v157)))));
      if (!v154)
      {
        goto LABEL_211;
      }

LABEL_176:
      v158 = v154;
      v159 = sub_900B0();
      v160 = sub_90A60();

      v161 = os_log_type_enabled(v159, v160);
      v215 = v158;
      v213 = v155;
      if (v161)
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v220[0] = v163;
        *v162 = v206;
        v164 = sub_427B0();
        v166 = sub_76D20(v164, v165, v220);

        *(v162 + 4) = v166;
        _os_log_impl(&dword_0, v159, v160, "Processing deletion %s", v162, 0xCu);
        sub_7FA4(v163);
      }

      v2 = v204;
      v167 = v216;
      sub_8F520();
      v168 = swift_dynamicCastClass();
      v169 = v199;
      v170 = v205;
      if (v168)
      {
        v171 = [v168 id];
        if (v171)
        {
          v172 = v171;
          sub_8F330();

          v167 = v216;
          v173 = 0;
        }

        else
        {
          v173 = 1;
        }

        v174 = *v214;
        (*v214)(v169, v173, 1, v167);
        sub_4EA70(v169, v170);
      }

      else
      {
        v174 = *v214;
        (*v214)(v205, 1, 1, v167);
      }

      v212 = *(v217 + 32);
      v175 = [v212 id];
      if (v175)
      {
        v176 = v203;
        v177 = v175;
        sub_8F330();

        v167 = v216;
        v178 = 0;
      }

      else
      {
        v178 = 1;
        v176 = v203;
      }

      v174(v176, v178, 1, v167);
      a1 = *(v200 + 48);
      v179 = v205;
      sub_17DF4(v205, v2, &qword_C57E0, &qword_99F90);
      sub_17DF4(v176, v2 + a1, &qword_C57E0, &qword_99F90);
      v180 = *v208;
      if ((*v208)(v2, 1, v167) == 1)
      {
        break;
      }

      v182 = v198;
      sub_17DF4(v2, v198, &qword_C57E0, &qword_99F90);
      if (v180(v2 + a1, 1, v167) == 1)
      {
        sub_8EF0(v203, &qword_C57E0, &qword_99F90);
        sub_8EF0(v205, &qword_C57E0, &qword_99F90);
        (*v202)(v182, v167);
        v10 = v211;
        v16 = v215;
LABEL_192:
        sub_8EF0(v2, &qword_C5800, &qword_99F98);
        v148 = v210;
        v13 = v207;
        goto LABEL_193;
      }

      v187 = v197;
      (*v201)(v197, v2 + a1, v167);
      sub_4EA28(&qword_C5808, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      a1 = sub_904D0();
      v188 = *v202;
      (*v202)(v187, v167);
      sub_8EF0(v203, &qword_C57E0, &qword_99F90);
      sub_8EF0(v205, &qword_C57E0, &qword_99F90);
      v188(v182, v167);
      sub_8EF0(v2, &qword_C57E0, &qword_99F90);
      v10 = v211;
      v148 = v210;
      v13 = v207;
      v16 = v215;
      if (a1)
      {
        goto LABEL_202;
      }

LABEL_193:
      sub_8F4B0();
      v183 = swift_dynamicCastClass();
      if (v183 && (v184 = [v183 entry]) != 0)
      {
        a1 = v184;
        v2 = [v184 objectID];
      }

      else
      {
        v2 = 0;
      }

      v185 = [v212 objectID];
      v186 = v185;
      if (v2)
      {
        if (!v185)
        {

          goto LABEL_208;
        }

        sub_2561C(0, &qword_C67C0, NSManagedObjectID_ptr);
        a1 = sub_90CB0();

        if (a1)
        {
LABEL_205:
          a1 = &v221;
          sub_6B7EC(v220, 4);
          v189 = 1;
          goto LABEL_206;
        }
      }

      else
      {
        if (!v185)
        {
          goto LABEL_205;
        }
      }

LABEL_207:

LABEL_208:
      v73 = v3;
      v28 = v213;
      if (v10 < 0)
      {
        goto LABEL_168;
      }
    }

    sub_8EF0(v176, &qword_C57E0, &qword_99F90);
    sub_8EF0(v179, &qword_C57E0, &qword_99F90);
    v181 = v180(v2 + a1, 1, v167);
    v10 = v211;
    v16 = v215;
    if (v181 == 1)
    {
      sub_8EF0(v2, &qword_C57E0, &qword_99F90);
      v148 = v210;
      v13 = v207;
LABEL_202:
      a1 = &v221;
      v189 = 9;
LABEL_206:
      sub_6B7EC(v220, v189);
      goto LABEL_207;
    }

    goto LABEL_192;
  }

LABEL_168:
  v153 = sub_90E20();
  if (v153)
  {
    v218 = v153;
    sub_2561C(0, &qword_C67B0, NSManagedObject_ptr);
    swift_dynamicCast();
    v154 = v220[0];
    v3 = v73;
    v155 = v28;
    if (v220[0])
    {
      goto LABEL_176;
    }
  }

LABEL_211:
  sub_39CF0(v10);
LABEL_54:
  v77 = v221;
  v78 = v221[2];
  v79 = sub_900B0();
  v80 = sub_90A60();
  v81 = os_log_type_enabled(v79, v80);
  if (v78)
  {
    if (v81)
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v220[0] = v83;
      *v82 = 136315138;
      sub_4E96C();

      v84 = sub_90900();
      v86 = v85;

      v87 = sub_76D20(v84, v86, v220);

      *(v82 + 4) = v87;
      _os_log_impl(&dword_0, v79, v80, "Detected %s changes", v82, 0xCu);
      sub_7FA4(v83);
    }

    v220[0] = v77;

    sub_90210();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (v81)
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_0, v79, v80, "No changed fields found from NSManagedObjectContextObjectsDidChange notification.", v88, 2u);
    }
  }
}

void *sub_4A898(void *a1, uint64_t a2)
{
  v148 = a2;
  v3 = sub_8FE10();
  v136 = *(v3 - 8);
  v137 = v3;
  __chkstk_darwin(v3);
  v135 = &v126[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v149 = sub_8F350();
  v5 = *(v149 - 8);
  __chkstk_darwin(v149);
  v142 = &v126[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v147 = sub_3A90(&qword_C5800, &qword_99F98);
  v7 = __chkstk_darwin(v147);
  v144 = &v126[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v10 = &v126[-v9];
  v11 = sub_3A90(&qword_C57E0, &qword_99F90);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v126[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __chkstk_darwin(v12);
  v146 = &v126[-v16];
  v17 = __chkstk_darwin(v15);
  v140 = &v126[-v18];
  v19 = __chkstk_darwin(v17);
  v21 = &v126[-v20];
  v22 = __chkstk_darwin(v19);
  v134 = &v126[-v23];
  v24 = __chkstk_darwin(v22);
  v26 = &v126[-v25];
  v27 = __chkstk_darwin(v24);
  v141 = &v126[-v28];
  v29 = __chkstk_darwin(v27);
  v31 = &v126[-v30];
  __chkstk_darwin(v29);
  v33 = &v126[-v32];
  v151 = &_swiftEmptySetSingleton;
  sub_8F520();
  v34 = swift_dynamicCastClass();
  v138 = v14;
  if (!v34)
  {
LABEL_15:
    sub_8F4B0();
    v48 = swift_dynamicCastClass();
    if (!v48)
    {
      return v151;
    }

    v49 = v48;
    v143 = a1;
    v50 = [v49 entry];
    if (v50)
    {
      v51 = v50;
      v52 = [v50 id];

      if (v52)
      {
        v53 = v140;
        sub_8F330();

        v54 = 0;
      }

      else
      {
        v54 = 1;
        v53 = v140;
      }

      v55 = v5[7];
      v55(v53, v54, 1, v149);
      sub_4EA70(v53, v21);
    }

    else
    {
      v55 = v5[7];
      v55(v21, 1, 1, v149);
    }

    v88 = [*(v148 + 32) id];
    v141 = v49;
    if (v88)
    {
      v89 = v146;
      v90 = v88;
      sub_8F330();

      v91 = 0;
    }

    else
    {
      v91 = 1;
      v89 = v146;
    }

    v92 = v149;
    v55(v89, v91, 1, v149);
    v93 = *(v147 + 48);
    v94 = v21;
    v95 = v21;
    v96 = v144;
    sub_17DF4(v94, v144, &qword_C57E0, &qword_99F90);
    sub_17DF4(v89, &v96[v93], &qword_C57E0, &qword_99F90);
    v97 = v5[6];
    if (v97(v96, 1, v92) == 1)
    {
      sub_8EF0(v89, &qword_C57E0, &qword_99F90);
      sub_8EF0(v95, &qword_C57E0, &qword_99F90);
      if (v97(&v96[v93], 1, v149) == 1)
      {
        sub_8EF0(v96, &qword_C57E0, &qword_99F90);
        goto LABEL_39;
      }
    }

    else
    {
      v145 = v95;
      v98 = v138;
      sub_17DF4(v96, v138, &qword_C57E0, &qword_99F90);
      if (v97(&v96[v93], 1, v149) != 1)
      {
        v99 = v142;
        v100 = v149;
        (v5[4])(v142, &v96[v93], v149);
        sub_4EA28(&qword_C5808, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v101 = sub_904D0();
        v102 = v5[1];
        v102(v99, v100);
        sub_8EF0(v146, &qword_C57E0, &qword_99F90);
        sub_8EF0(v145, &qword_C57E0, &qword_99F90);
        v102(v98, v100);
        sub_8EF0(v96, &qword_C57E0, &qword_99F90);
        if (v101)
        {
LABEL_39:
          v103 = [v141 assetType];
          if (v103)
          {
            v104 = v103;
            v105 = sub_90590();
            v107 = v106;
          }

          else
          {
            v105 = 0;
            v107 = 0;
          }

          v109 = v136;
          v108 = v137;
          v110 = v135;
          (*(v136 + 104))(v135, enum case for AssetType.reflection(_:), v137);
          v111 = sub_8FE00();
          v113 = v112;
          (*(v109 + 8))(v110, v108);
          if (v107)
          {
            if (v105 == v111 && v107 == v113)
            {

LABEL_48:
              v115 = 4;
LABEL_50:
              sub_6B7EC(&v150, v115);
              goto LABEL_51;
            }

            v114 = sub_910F0();

            if (v114)
            {
              goto LABEL_48;
            }
          }

          else
          {
          }

          v115 = 1;
          goto LABEL_50;
        }

LABEL_51:

        return v151;
      }

      sub_8EF0(v146, &qword_C57E0, &qword_99F90);
      sub_8EF0(v145, &qword_C57E0, &qword_99F90);
      (v5[1])(v98, v149);
    }

    sub_8EF0(v96, &qword_C5800, &qword_99F98);
    goto LABEL_51;
  }

  v35 = v34;
  v132 = v26;
  v133 = a1;
  v139 = a1;
  v36 = [v35 id];
  if (v36)
  {
    v37 = v36;
    sub_8F330();

    v38 = v5[7];
    v38(v33, 0, 1, v149);
  }

  else
  {
    v38 = v5[7];
    v38(v33, 1, 1, v149);
  }

  v39 = [*(v148 + 32) id];
  v145 = v21;
  if (v39)
  {
    v40 = v39;
    sub_8F330();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v149;
  v131 = (v5 + 7);
  v38(v31, v41, 1, v149);
  v43 = v5;
  v44 = *(v147 + 48);
  sub_17DF4(v33, v10, &qword_C57E0, &qword_99F90);
  sub_17DF4(v31, &v10[v44], &qword_C57E0, &qword_99F90);
  v143 = v43;
  v45 = v42;
  v46 = v43[6];
  if (v46(v10, 1, v45) != 1)
  {
    v47 = v141;
    sub_17DF4(v10, v141, &qword_C57E0, &qword_99F90);
    if (v46(&v10[v44], 1, v149) != 1)
    {
      v128 = v46;
      v129 = v38;
      v56 = v143;
      v57 = *(v143 + 4);
      v130 = v35;
      v58 = v142;
      v59 = v149;
      v57(v142, &v10[v44], v149);
      sub_4EA28(&qword_C5808, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v60 = v47;
      v127 = sub_904D0();
      v61 = v56[1];
      v62 = v58;
      v35 = v130;
      v61(v62, v59);
      sub_8EF0(v31, &qword_C57E0, &qword_99F90);
      sub_8EF0(v33, &qword_C57E0, &qword_99F90);
      v61(v60, v59);
      sub_8EF0(v10, &qword_C57E0, &qword_99F90);
      if (v127)
      {
        goto LABEL_21;
      }

      goto LABEL_14;
    }

    sub_8EF0(v31, &qword_C57E0, &qword_99F90);
    sub_8EF0(v33, &qword_C57E0, &qword_99F90);
    (*(v143 + 1))(v47, v149);
LABEL_13:
    sub_8EF0(v10, &qword_C5800, &qword_99F98);
LABEL_14:

    v5 = v143;
    v21 = v145;
    a1 = v133;
    goto LABEL_15;
  }

  sub_8EF0(v31, &qword_C57E0, &qword_99F90);
  sub_8EF0(v33, &qword_C57E0, &qword_99F90);
  if (v46(&v10[v44], 1, v149) != 1)
  {
    goto LABEL_13;
  }

  v128 = v46;
  v129 = v38;
  sub_8EF0(v10, &qword_C57E0, &qword_99F90);
LABEL_21:
  sub_4B7C8(v35);

  v65 = sub_4CB90(v63, &_swiftEmptySetSingleton, v64);
  sub_4CC6C(v35);

  v151 = sub_4CB90(v66, v65, v67);
  if (qword_C39A8 != -1)
  {
    swift_once();
  }

  v68 = sub_900D0();
  sub_7FF0(v68, qword_C6788);
  v69 = v139;

  v70 = sub_900B0();
  v71 = sub_90A60();

  if (os_log_type_enabled(v70, v71))
  {
    LODWORD(v148) = v71;
    v72 = swift_slowAlloc();
    v130 = v35;
    v73 = v72;
    v147 = swift_slowAlloc();
    v150 = v147;
    *v73 = 136315650;
    sub_4E96C();
    v74 = sub_90900();
    v76 = v75;

    v77 = sub_76D20(v74, v76, &v150);

    *(v73 + 4) = v77;
    *(v73 + 12) = 2080;
    v78 = sub_90900();
    v80 = v79;

    v81 = sub_76D20(v78, v80, &v150);

    *(v73 + 14) = v81;
    *(v73 + 22) = 2080;
    v82 = [v130 id];
    v83 = v69;
    if (v82)
    {
      v84 = v134;
      v85 = v82;
      sub_8F330();

      v86 = 0;
      v87 = v143;
    }

    else
    {
      v86 = 1;
      v87 = v143;
      v84 = v134;
    }

    v117 = v149;
    v129(v84, v86, 1, v149);
    v118 = v132;
    sub_4EA70(v84, v132);
    if (v128(v118, 1, v117))
    {
      sub_8EF0(v118, &qword_C57E0, &qword_99F90);
      v119 = 0xE300000000000000;
      v120 = 7104878;
    }

    else
    {
      v121 = v142;
      v122 = v149;
      v87[2](v142, v118, v149);
      sub_8EF0(v118, &qword_C57E0, &qword_99F90);
      v123 = sub_8F300();
      v119 = v124;
      (v87[1])(v121, v122);
      v120 = v123;
    }

    v125 = sub_76D20(v120, v119, &v150);

    *(v73 + 24) = v125;
    _os_log_impl(&dword_0, v70, v148, "Tracked %s CoreData changes and %s inspected changes to entry with ID %s", v73, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return v151;
}