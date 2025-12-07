uint64_t AttributedString.Guts._prepareTrackedIndicesUpdate(mutationRange:)(uint64_t result)
{
  v2 = *(v1 + 104);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return result;
  }

  v4 = result;
  v5 = 0;
  v30 = *(result + 8);
  v31 = *(result + 24);
  v28 = *result;
  v29 = *(v2 + 16);
  v6 = *result >> 10;
  v7 = 88;
  while (v5 < *(v2 + 16))
  {
    v8 = v2 + v7;
    v9 = *(v2 + v7 - 56);
    v10 = v9 >> 10;
    if (v6 >= v9 >> 10)
    {
      v16 = *(v8 - 24) >> 10;
      if (v6 >= v16 || v16 >= *(v4 + 32) >> 10)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }

    v11 = *(v4 + 32) >> 10;
    v12 = *(v8 - 24);
    v13 = v12 >> 10;
    if (v6 >= v12 >> 10)
    {
      if (v10 >= v11)
      {
        goto LABEL_4;
      }

LABEL_18:
      v17 = *(v2 + v7 - 16);
      v18 = *(v2 + v7 - 8);
      v19 = *(v2 + v7);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 104) = v2;
      if (result)
      {
        v20 = v1;
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v20 = v1;
        v2 = result;
      }

      if (v5 >= *(v2 + 16))
      {
        goto LABEL_33;
      }

      v21 = (v2 + v7);
      v22 = *(v4 + 32);
      *(v21 - 5) = *(v4 + 48);
      *(v21 - 7) = v22;
      *(v21 - 3) = v12;
      *(v21 - 2) = v17;
      *(v21 - 1) = v18;
      *v21 = v19;
      *(v20 + 104) = v2;
      goto LABEL_3;
    }

    if (v10 >= v11)
    {
      if (v13 >= v11)
      {
        goto LABEL_4;
      }

LABEL_23:
      v24 = *(v2 + v7 - 48);
      v23 = *(v2 + v7 - 40);
      v25 = *(v2 + v7 - 32);
      result = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 104) = v2;
      if (result)
      {
        v26 = v1;
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
        v26 = v1;
        v2 = result;
      }

      if (v5 >= *(v2 + 16))
      {
        goto LABEL_32;
      }

      v27 = (v2 + v7);
      *(v27 - 7) = v9;
      *(v27 - 6) = v24;
      *(v27 - 5) = v23;
      *(v27 - 4) = v25;
      *(v27 - 3) = v28;
      *v27 = v31;
      *(v27 - 1) = v30;
      *(v26 + 104) = v2;
LABEL_3:
      v3 = v29;
      goto LABEL_4;
    }

    if (v13 >= v11)
    {
      goto LABEL_18;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 104) = v2;
    if (result)
    {
      v14 = v1;
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
      v14 = v1;
      v2 = result;
    }

    if (v5 >= *(v2 + 16))
    {
      goto LABEL_34;
    }

    v15 = (v2 + v7);
    *(v15 - 7) = v28;
    *(v15 - 3) = v30;
    *(v15 - 4) = v31;
    *(v15 - 3) = v28;
    *v15 = v31;
    *(v15 - 1) = v30;
    *(v14 + 104) = v2;
LABEL_4:
    ++v5;
    v7 += 64;
    if (v3 == v5)
    {
      return result;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = a1;
  if (*v5)
  {
    v11 = v5[2];
  }

  else
  {
    v11 = 0;
  }

  ++v5[3];
  specialized Rope.builder<A>(removing:in:)(a1, a2, &v116);
  swift_unknownObjectRelease();

  specialized Rope.Builder.insertBeforeTip<A>(_:)(v12, a4, a5);

  v13 = specialized Rope.Builder.finalize()();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v122[2] = v118;
  v122[3] = v119;
  v122[4] = v120;
  v123 = v121;
  v122[0] = v116;
  v122[1] = v117;
  result = outlined destroy of TermOfAddress?(v122, &_s19CollectionsInternal4RopeV7BuilderVy10Foundation16AttributedStringV01_B3RunV_GMd, &_s19CollectionsInternal4RopeV7BuilderVy10Foundation16AttributedStringV01_B3RunV_GMR);
  *v6 = v13;
  v6[1] = v15;
  v6[2] = v17;
  v6[3] = v19;
  v108 = v19;
  if (v13)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 - v11;
  if (__OFSUB__(v21, v11))
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v23 = a2 + v22;
  if (__OFADD__(a2, v22))
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (v23 >= 1 && v23 < v21)
  {
    v105 = a2 + v22;
    v107 = v6;
    if (v13)
    {
      v24 = (v13 + 16);
      v25 = *(v13 + 16);
      if (*(v13 + 16))
      {
        v26 = v17;
        v103 = v15;
        v27 = *(v13 + 18);
        result = swift_unknownObjectRetain();
        if (v27)
        {
          v28 = v27;
          v29 = v13;
          do
          {
            v30 = *v24;
            if (*v24)
            {
              v32 = 0;
              v33 = (v29 + 40);
              while (1)
              {
                v34 = *v33;
                v33 += 3;
                v35 = v23 - v34;
                if (__OFSUB__(v23, v34))
                {
                  break;
                }

                if (__OFADD__(v35, 1))
                {
                  goto LABEL_112;
                }

                if (v35 + 1 < 1)
                {
                  v30 = v32;
                  goto LABEL_16;
                }

                ++v32;
                v23 = v35;
                if (v30 == v32)
                {
                  goto LABEL_25;
                }
              }

LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
              goto LABEL_115;
            }

            v35 = v23;
LABEL_25:
            if (v35)
            {
              goto LABEL_117;
            }

            v23 = 0;
LABEL_16:
            v28 = (v30 << ((4 * v27 + 8) & 0x3C)) | ((-15 << ((4 * v27 + 8) & 0x3C)) - 1) & v28;
            v31 = *(v29 + 24 + 24 * v30);
            swift_unknownObjectRetain();
            result = swift_unknownObjectRelease();
            v24 = (v31 + 16);
            LOBYTE(v27) = *(v31 + 18);
            v29 = v31;
          }

          while (v27);
          v25 = *v24;
          if (*v24)
          {
            goto LABEL_81;
          }

          v93 = 0;
LABEL_87:
          if (!v23)
          {
            v37 = 0;
LABEL_92:
            swift_unknownObjectRelease();
            v36 = v28 & 0xFFFFFFFFFFFFF0FFLL | (v93 << 8);
            v15 = v103;
            v17 = v26;
            goto LABEL_28;
          }

          goto LABEL_131;
        }

        v28 = 0;
        v31 = v13;
LABEL_81:
        v93 = 0;
        v94 = 24;
        v95 = v23;
        while (1)
        {
          v96 = *(v31 + v94);
          v23 = v95 - v96;
          if (__OFSUB__(v95, v96))
          {
            break;
          }

          if (__OFADD__(v23, 1))
          {
            goto LABEL_116;
          }

          if (v23 + 1 < 1)
          {
            v37 = v95 != 0;
            goto LABEL_92;
          }

          ++v93;
          v94 += 24;
          v95 -= v96;
          if (v25 == v93)
          {
            v93 = v25;
            goto LABEL_87;
          }
        }

LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }
    }

    result = specialized Rope._endPath.getter(v13);
    v36 = result;
    v37 = 0;
    v31 = 0;
    v38 = 0;
    v39 = 0;
    if (v13)
    {
LABEL_28:
      result = specialized Rope._Node.distanceFromStart<A>(to:in:)(v108, v36, v31, v13, v15);
      v38 = v37;
      v39 = v31;
    }

    if (v38)
    {
      goto LABEL_124;
    }

    v113 = v108;
    v114 = v36;
    v115 = v39;
    specialized Rope.subscript.getter(v108, v36, v39, v13, v15, v17, v108);
    v41 = v40;
    v42 = v15;
    v44 = v43;
    specialized Rope.formIndex(before:)(&v113, v13, v42, v17, v108);
    v45 = v113;
    v46 = v114;
    specialized Rope.subscript.getter(v113, v114, v115, v13, v42, v17, v108);
    v48 = v47;
    if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v49, v41))
    {
      v50 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v48, v44);

      v6 = v107;
      if (v50)
      {
        v51 = specialized Rope._remove(at:)(&v116, v45, v46);
        v52 = *v107;
        v53 = v107[3];
        if (v51 < specialized Rope._endPath.getter(*v107))
        {
          specialized Rope._Node.unmanagedLeaf(at:)(v51, v52);
        }

        v54 = v116;

        if (!v52)
        {
          goto LABEL_132;
        }

        result = specialized Rope._Node._prepareModify(at:)(v51, &v116);
        v110 = v116;
        v111 = v117;
        v112 = v118;
        if (__OFADD__(*(&v116 + 1), v54))
        {
          goto LABEL_126;
        }

        *(&v110 + 1) = *(&v116 + 1) + v54;
        v108 = v53 + 1;
        v107[3] = v53 + 1;
        if (!*v107)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        specialized Rope._Node._finalizeModify(_:)(v109, &v110);
      }
    }

    else
    {

      v6 = v107;
    }

    v23 = v105;
  }

  if (v10 >= 1 && v23 > v10)
  {
    v55 = *v6;
    v56 = v6[2];
    if (*v6)
    {
      v57 = v6[2];
    }

    else
    {
      v57 = 0;
    }

    if (v57 < v10)
    {
      goto LABEL_123;
    }

    v58 = v6[1];
    v59 = v6[3];
    if (v55 && (v60 = (v55 + 16), v61 = *(v55 + 16), *(v55 + 16)) && v56 > v10)
    {
      v104 = v6[1];
      v106 = v6[2];
      v62 = *(v55 + 18);
      result = swift_unknownObjectRetain();
      if (!v62)
      {
        v63 = 0;
        v66 = v55;
LABEL_96:
        v97 = 0;
        v98 = 24;
        v99 = v10;
        while (1)
        {
          v100 = *(v66 + v98);
          v101 = v99 - v100;
          if (__OFSUB__(v99, v100))
          {
            break;
          }

          if (__OFADD__(v101, 1))
          {
            goto LABEL_119;
          }

          if (v101 + 1 < 1)
          {
            v72 = v99 != 0;
            goto LABEL_104;
          }

          ++v97;
          v98 += 24;
          v99 -= v100;
          if (v61 == v97)
          {
            v97 = v61;
            if (v101)
            {
              goto LABEL_110;
            }

            goto LABEL_102;
          }
        }

LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      v102 = v59;
      v63 = v62;
      v64 = v55;
      do
      {
        v65 = *v60;
        if (*v60)
        {
          v67 = 0;
          v68 = (v64 + 40);
          while (1)
          {
            v69 = *v68;
            v68 += 3;
            v70 = v10 - v69;
            if (__OFSUB__(v10, v69))
            {
              goto LABEL_113;
            }

            if (__OFADD__(v70, 1))
            {
              goto LABEL_114;
            }

            if (v70 + 1 < 1)
            {
              v65 = v67;
              goto LABEL_52;
            }

            ++v67;
            v10 = v70;
            if (v65 == v67)
            {
              goto LABEL_61;
            }
          }
        }

        v70 = v10;
LABEL_61:
        if (v70)
        {
          goto LABEL_120;
        }

        v10 = 0;
LABEL_52:
        v63 = (v65 << ((4 * v62 + 8) & 0x3C)) | ((-15 << ((4 * v62 + 8) & 0x3C)) - 1) & v63;
        v66 = *(v64 + 24 + 24 * v65);
        swift_unknownObjectRetain();
        result = swift_unknownObjectRelease();
        v60 = (v66 + 16);
        LOBYTE(v62) = *(v66 + 18);
        v64 = v66;
      }

      while (v62);
      v61 = *v60;
      if (*v60)
      {
        v59 = v102;
        goto LABEL_96;
      }

      v97 = 0;
      v59 = v102;
      if (v10)
      {
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

LABEL_102:
      v72 = 0;
LABEL_104:
      swift_unknownObjectRelease();
      v71 = v63 & 0xFFFFFFFFFFFFF0FFLL | (v97 << 8);
      v58 = v104;
      v56 = v106;
    }

    else
    {
      result = specialized Rope._endPath.getter(*v6);
      v71 = result;
      v72 = 0;
      v66 = 0;
      v73 = 0;
      v74 = 0;
      if (!v55)
      {
LABEL_65:
        if (v73)
        {
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        *&v110 = v59;
        *(&v110 + 1) = v71;
        *&v111 = v74;
        v75 = specialized Rope.subscript.getter(v59, v71, v74, v55, v58, v56, v59);
        v77 = v76;
        v78 = v59;
        v80 = v79;
        specialized Rope.formIndex(before:)(&v110, v55, v58, v56, v78);
        v81 = v110;
        specialized Rope.subscript.getter(v110, *(&v110 + 1), v111, v55, v58, v56, v78);
        v83 = v82;
        v85 = v84;

        if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v83, v77) & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          return swift_bridgeObjectRelease_n();
        }

        v86 = v75;
        v87 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v85, v80);

        if (v87)
        {
          if (v81 != v108)
          {
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (!v55)
          {
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          result = specialized Rope._Node._prepareModify(at:)(*(&v81 + 1), &v124);
          if (__OFADD__(v125, v86))
          {
            goto LABEL_128;
          }

          v125 += v86;
          v6[3] = v108 + 1;
          *&v110 = v108 + 1;
          if (!*v6)
          {
LABEL_135:
            __break(1u);
            return result;
          }

          v88 = specialized Rope._Node._finalizeModify(_:)(&v113, &v124);

          *&v111 = v88;
          if (v108 + 1 != v6[3])
          {
            goto LABEL_129;
          }

          v89 = *v6;
          result = specialized Rope._endPath.getter(*v6);
          if (*(&v81 + 1) >= result)
          {
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          v90 = (4 * *(v88 + 18) + 8) & 0x3C;
          v91 = ((*(&v81 + 1) >> v90) & 0xFLL) + 1;
          if (v91 >= *(v88 + 8))
          {
            if (specialized Rope._Node.formSuccessor(of:)(&v110, v89))
            {
              v92 = *(&v110 + 1);
            }

            else
            {
              v92 = specialized Rope._endPath.getter(v89);
              *&v110 = v108 + 1;
            }
          }

          else
          {
            v92 = (v91 << v90) | ((-15 << v90) - 1) & *(&v81 + 1);
          }

          specialized Rope._remove(at:)(&v113, v110, v92);
        }

        else
        {
        }
      }
    }

    result = specialized Rope._Node.distanceFromStart<A>(to:in:)(v59, v71, v66, v55, v58);
    v73 = v72;
    v74 = v66;
    goto LABEL_65;
  }

  return result;
}

{
  v6 = v5;
  if (*v5)
  {
    v12 = v5[2];
  }

  else
  {
    v12 = 0;
  }

  ++v5[3];

  specialized Rope.builder<A>(removing:in:)(a1, a2, &v116);
  swift_unknownObjectRelease();
  specialized Rope.Builder.insertBeforeTip<A>(_:)(a3, a4, a5);
  v13 = specialized Rope.Builder.finalize()();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v122[2] = v118;
  v122[3] = v119;
  v122[4] = v120;
  v123 = v121;
  v122[0] = v116;
  v122[1] = v117;
  result = outlined destroy of TermOfAddress?(v122, &_s19CollectionsInternal4RopeV7BuilderVy10Foundation16AttributedStringV01_B3RunV_GMd, &_s19CollectionsInternal4RopeV7BuilderVy10Foundation16AttributedStringV01_B3RunV_GMR);
  *v6 = v13;
  v6[1] = v15;
  v6[2] = v17;
  v6[3] = v19;
  v108 = v19;
  if (v13)
  {
    v21 = v17;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21 - v12;
  if (__OFSUB__(v21, v12))
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  v23 = a2 + v22;
  if (__OFADD__(a2, v22))
  {
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  if (v23 >= 1 && v23 < v21)
  {
    v105 = a2 + v22;
    v107 = v6;
    if (v13)
    {
      v24 = (v13 + 16);
      v25 = *(v13 + 16);
      if (*(v13 + 16))
      {
        v26 = v17;
        v103 = v15;
        v27 = *(v13 + 18);
        result = swift_unknownObjectRetain();
        if (v27)
        {
          v28 = v27;
          v29 = v13;
          do
          {
            v30 = *v24;
            if (*v24)
            {
              v32 = 0;
              v33 = (v29 + 40);
              while (1)
              {
                v34 = *v33;
                v33 += 3;
                v35 = v23 - v34;
                if (__OFSUB__(v23, v34))
                {
                  break;
                }

                if (__OFADD__(v35, 1))
                {
                  goto LABEL_112;
                }

                if (v35 + 1 < 1)
                {
                  v30 = v32;
                  goto LABEL_16;
                }

                ++v32;
                v23 = v35;
                if (v30 == v32)
                {
                  goto LABEL_25;
                }
              }

LABEL_111:
              __break(1u);
LABEL_112:
              __break(1u);
LABEL_113:
              __break(1u);
LABEL_114:
              __break(1u);
              goto LABEL_115;
            }

            v35 = v23;
LABEL_25:
            if (v35)
            {
              goto LABEL_117;
            }

            v23 = 0;
LABEL_16:
            v28 = (v30 << ((4 * v27 + 8) & 0x3C)) | ((-15 << ((4 * v27 + 8) & 0x3C)) - 1) & v28;
            v31 = *(v29 + 24 + 24 * v30);
            swift_unknownObjectRetain();
            result = swift_unknownObjectRelease();
            v24 = (v31 + 16);
            LOBYTE(v27) = *(v31 + 18);
            v29 = v31;
          }

          while (v27);
          v25 = *v24;
          if (*v24)
          {
            goto LABEL_81;
          }

          v93 = 0;
LABEL_87:
          if (!v23)
          {
            v37 = 0;
LABEL_92:
            swift_unknownObjectRelease();
            v36 = v28 & 0xFFFFFFFFFFFFF0FFLL | (v93 << 8);
            v15 = v103;
            v17 = v26;
            goto LABEL_28;
          }

          goto LABEL_131;
        }

        v28 = 0;
        v31 = v13;
LABEL_81:
        v93 = 0;
        v94 = 24;
        v95 = v23;
        while (1)
        {
          v96 = *(v31 + v94);
          v23 = v95 - v96;
          if (__OFSUB__(v95, v96))
          {
            break;
          }

          if (__OFADD__(v23, 1))
          {
            goto LABEL_116;
          }

          if (v23 + 1 < 1)
          {
            v37 = v95 != 0;
            goto LABEL_92;
          }

          ++v93;
          v94 += 24;
          v95 -= v96;
          if (v25 == v93)
          {
            v93 = v25;
            goto LABEL_87;
          }
        }

LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
        goto LABEL_118;
      }
    }

    result = specialized Rope._endPath.getter(v13);
    v36 = result;
    v37 = 0;
    v31 = 0;
    v38 = 0;
    v39 = 0;
    if (v13)
    {
LABEL_28:
      result = specialized Rope._Node.distanceFromStart<A>(to:in:)(v108, v36, v31, v13, v15);
      v38 = v37;
      v39 = v31;
    }

    if (v38)
    {
      goto LABEL_124;
    }

    v113 = v108;
    v114 = v36;
    v115 = v39;
    specialized Rope.subscript.getter(v108, v36, v39, v13, v15, v17, v108);
    v41 = v40;
    v42 = v15;
    v44 = v43;
    specialized Rope.formIndex(before:)(&v113, v13, v42, v17, v108);
    v45 = v113;
    v46 = v114;
    specialized Rope.subscript.getter(v113, v114, v115, v13, v42, v17, v108);
    v48 = v47;
    if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v49, v41))
    {
      v50 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v48, v44);

      v6 = v107;
      if (v50)
      {
        v51 = specialized Rope._remove(at:)(&v116, v45, v46);
        v52 = *v107;
        v53 = v107[3];
        if (v51 < specialized Rope._endPath.getter(*v107))
        {
          specialized Rope._Node.unmanagedLeaf(at:)(v51, v52);
        }

        v54 = v116;

        if (!v52)
        {
          goto LABEL_132;
        }

        result = specialized Rope._Node._prepareModify(at:)(v51, &v116);
        v110 = v116;
        v111 = v117;
        v112 = v118;
        if (__OFADD__(*(&v116 + 1), v54))
        {
          goto LABEL_126;
        }

        *(&v110 + 1) = *(&v116 + 1) + v54;
        v108 = v53 + 1;
        v107[3] = v53 + 1;
        if (!*v107)
        {
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        specialized Rope._Node._finalizeModify(_:)(v109, &v110);
      }
    }

    else
    {

      v6 = v107;
    }

    v23 = v105;
  }

  if (a1 >= 1 && v23 > a1)
  {
    v55 = *v6;
    v56 = v6[2];
    if (*v6)
    {
      v57 = v6[2];
    }

    else
    {
      v57 = 0;
    }

    if (v57 < a1)
    {
      goto LABEL_123;
    }

    v58 = v6[1];
    v59 = v6[3];
    if (v55 && (v60 = (v55 + 16), v61 = *(v55 + 16), *(v55 + 16)) && v56 > a1)
    {
      v104 = v6[1];
      v106 = v6[2];
      v62 = *(v55 + 18);
      result = swift_unknownObjectRetain();
      if (!v62)
      {
        v63 = 0;
        v66 = v55;
LABEL_96:
        v97 = 0;
        v98 = 24;
        v99 = a1;
        while (1)
        {
          v100 = *(v66 + v98);
          v101 = v99 - v100;
          if (__OFSUB__(v99, v100))
          {
            break;
          }

          if (__OFADD__(v101, 1))
          {
            goto LABEL_119;
          }

          if (v101 + 1 < 1)
          {
            v72 = v99 != 0;
            goto LABEL_104;
          }

          ++v97;
          v98 += 24;
          v99 -= v100;
          if (v61 == v97)
          {
            v97 = v61;
            if (v101)
            {
              goto LABEL_110;
            }

            goto LABEL_102;
          }
        }

LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        goto LABEL_121;
      }

      v102 = v59;
      v63 = v62;
      v64 = v55;
      do
      {
        v65 = *v60;
        if (*v60)
        {
          v67 = 0;
          v68 = (v64 + 40);
          while (1)
          {
            v69 = *v68;
            v68 += 3;
            v70 = a1 - v69;
            if (__OFSUB__(a1, v69))
            {
              goto LABEL_113;
            }

            if (__OFADD__(v70, 1))
            {
              goto LABEL_114;
            }

            if (v70 + 1 < 1)
            {
              v65 = v67;
              goto LABEL_52;
            }

            ++v67;
            a1 = v70;
            if (v65 == v67)
            {
              goto LABEL_61;
            }
          }
        }

        v70 = a1;
LABEL_61:
        if (v70)
        {
          goto LABEL_120;
        }

        a1 = 0;
LABEL_52:
        v63 = (v65 << ((4 * v62 + 8) & 0x3C)) | ((-15 << ((4 * v62 + 8) & 0x3C)) - 1) & v63;
        v66 = *(v64 + 24 + 24 * v65);
        swift_unknownObjectRetain();
        result = swift_unknownObjectRelease();
        v60 = (v66 + 16);
        LOBYTE(v62) = *(v66 + 18);
        v64 = v66;
      }

      while (v62);
      v61 = *v60;
      if (*v60)
      {
        v59 = v102;
        goto LABEL_96;
      }

      v97 = 0;
      v59 = v102;
      if (a1)
      {
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

LABEL_102:
      v72 = 0;
LABEL_104:
      swift_unknownObjectRelease();
      v71 = v63 & 0xFFFFFFFFFFFFF0FFLL | (v97 << 8);
      v58 = v104;
      v56 = v106;
    }

    else
    {
      result = specialized Rope._endPath.getter(*v6);
      v71 = result;
      v72 = 0;
      v66 = 0;
      v73 = 0;
      v74 = 0;
      if (!v55)
      {
LABEL_65:
        if (v73)
        {
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        *&v110 = v59;
        *(&v110 + 1) = v71;
        *&v111 = v74;
        v75 = specialized Rope.subscript.getter(v59, v71, v74, v55, v58, v56, v59);
        v77 = v76;
        v78 = v59;
        v80 = v79;
        specialized Rope.formIndex(before:)(&v110, v55, v58, v56, v78);
        v81 = v110;
        specialized Rope.subscript.getter(v110, *(&v110 + 1), v111, v55, v58, v56, v78);
        v83 = v82;
        v85 = v84;

        if ((_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(v83, v77) & 1) == 0)
        {

          swift_bridgeObjectRelease_n();
          return swift_bridgeObjectRelease_n();
        }

        v86 = v75;
        v87 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v85, v80);

        if (v87)
        {
          if (v81 != v108)
          {
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            goto LABEL_130;
          }

          if (!v55)
          {
LABEL_134:
            __break(1u);
            goto LABEL_135;
          }

          result = specialized Rope._Node._prepareModify(at:)(*(&v81 + 1), &v124);
          if (__OFADD__(v125, v86))
          {
            goto LABEL_128;
          }

          v125 += v86;
          v6[3] = v108 + 1;
          *&v110 = v108 + 1;
          if (!*v6)
          {
LABEL_135:
            __break(1u);
            return result;
          }

          v88 = specialized Rope._Node._finalizeModify(_:)(&v113, &v124);

          *&v111 = v88;
          if (v108 + 1 != v6[3])
          {
            goto LABEL_129;
          }

          v89 = *v6;
          result = specialized Rope._endPath.getter(*v6);
          if (*(&v81 + 1) >= result)
          {
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
            goto LABEL_133;
          }

          v90 = (4 * *(v88 + 18) + 8) & 0x3C;
          v91 = ((*(&v81 + 1) >> v90) & 0xFLL) + 1;
          if (v91 >= *(v88 + 8))
          {
            if (specialized Rope._Node.formSuccessor(of:)(&v110, v89))
            {
              v92 = *(&v110 + 1);
            }

            else
            {
              v92 = specialized Rope._endPath.getter(v89);
              *&v110 = v108 + 1;
            }
          }

          else
          {
            v92 = (v91 << v90) | ((-15 << v90) - 1) & *(&v81 + 1);
          }

          specialized Rope._remove(at:)(&v113, v110, v92);
        }

        else
        {
        }
      }
    }

    result = specialized Rope._Node.distanceFromStart<A>(to:in:)(v59, v71, v66, v55, v58);
    v73 = v72;
    v74 = v66;
    goto LABEL_65;
  }

  return result;
}

uint64_t specialized Rope.builder<A>(splittingAt:in:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  ++*(v2 + 24);
  *v25 = MEMORY[0x1E69E7CC0];
  memset(&v25[8], 0, 72);
  v26 = MEMORY[0x1E69E7CC0];
  v5 = *v2;
  if (*v2 && (result = v5 + 16, *(v5 + 16)))
  {
    v22 = *v2;
    v23 = *(v2 + 8);
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *v2 = 0;
    while (*(v5 + 18))
    {
      v6 = *result;
      if (*result)
      {
        result = 0;
        v7 = (v5 + 40);
        while (1)
        {
          v8 = *v7;
          v7 += 3;
          v9 = v3 - v8;
          if (__OFSUB__(v3, v8))
          {
            break;
          }

          if (v9 < 1)
          {
            goto LABEL_4;
          }

          ++result;
          v3 = v9;
          if (v6 == result)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

      if (v3)
      {
        goto LABEL_27;
      }

      result = -1;
LABEL_4:
      specialized Rope._Node._innerSplit(at:into:)(result, v25);
      v5 = v22;
      result = v22 + 16;
    }
  }

  else
  {
    if (!v3)
    {
LABEL_24:
      v20 = *&v25[48];
      *(a2 + 32) = *&v25[32];
      *(a2 + 48) = v20;
      *(a2 + 64) = *&v25[64];
      *(a2 + 80) = v26;
      v21 = *&v25[16];
      *a2 = *v25;
      *(a2 + 16) = v21;
      return result;
    }

    __break(1u);
  }

  v24 = v3;
  v10 = specialized closure #2 in Rope.builder<A>(splittingAt:in:)(result, (v5 + 24), &v24);
  v12 = v11;
  swift_unknownObjectRetain();
  result = specialized Rope._Node._leafSplit(at:into:)(v10, v25, v5, v23, *(&v23 + 1));
  if ((v12 & 0x8000000000000000) == 0)
  {
    v15 = (result - v12);
    if (result >= v12)
    {
      v16 = v13;
      v17 = v14;
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      specialized Rope.Builder._insertAfterTip(_:)(v15, v16, v17);
      if (v12)
      {
        v18 = *&v25[32];
        v19 = *&v25[40];
        memset(&v25[32], 0, 24);
        if (v19)
        {
          specialized Rope.Builder._appendNow(_:)(v18, v19, *(&v19 + 1));

          outlined consume of Rope<AttributedString._InternalRun>._Item?(*&v25[32], *&v25[40], *&v25[48]);
          result = swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        *&v25[32] = v12;
        *&v25[40] = v16;
        *&v25[48] = v17;
      }

      else
      {
        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        result = swift_bridgeObjectRelease_n();
      }

      goto LABEL_24;
    }
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized Rope.Builder.insertBeforeTip<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(result + 72);
  if (v4)
  {
    v5 = *(result + 88);
  }

  else
  {
    v5 = 0;
  }

  if (a2 < 0)
  {
    goto LABEL_221;
  }

  v6 = a2;
  if (v5 < a2)
  {
    goto LABEL_221;
  }

  v7 = a3;
  v8 = result;
  v121 = *(result + 96);
  v122 = *(result + 80);
  v112 = v3;
  v113 = result;
  if (!v4 || ((v10 = (v4 + 16), LODWORD(v9) = *(v4 + 16), *(result + 88) > a2) ? (v11 = v9 == 0) : (v11 = 1), v11))
  {
    swift_retain_n();
    v12 = swift_unknownObjectRetain();
    v13 = specialized Rope._endPath.getter(v12);
    v14 = 0;
    v15 = 0;
    if (!v4)
    {
      goto LABEL_40;
    }

    goto LABEL_13;
  }

  v16 = *(v4 + 18);
  swift_retain_n();
  result = swift_unknownObjectRetain_n();
  if (!v16)
  {
    v18 = 0;
    v6 = a2;
    v17 = a2;
    v14 = v4;
    goto LABEL_31;
  }

  v17 = a2;
  v18 = v16;
  v19 = v4;
  do
  {
    v20 = *v10;
    if (*v10)
    {
      v21 = 0;
      v22 = (v19 + 40);
      while (1)
      {
        v23 = *v22;
        v22 += 3;
        v24 = v17 - v23;
        if (__OFSUB__(v17, v23))
        {
          goto LABEL_190;
        }

        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v24 + 1 < 1)
        {
          v20 = v21;
          goto LABEL_17;
        }

        ++v21;
        v17 = v24;
        if (v20 == v21)
        {
          goto LABEL_26;
        }
      }

LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
      goto LABEL_222;
    }

    v24 = v17;
LABEL_26:
    if (v24)
    {
      goto LABEL_216;
    }

    v17 = 0;
LABEL_17:
    v18 = (v20 << ((4 * v16 + 8) & 0x3C)) | ((-15 << ((4 * v16 + 8) & 0x3C)) - 1) & v18;
    v14 = *(v19 + 24 + 24 * v20);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v10 = (v14 + 16);
    LOBYTE(v16) = *(v14 + 18);
    v19 = v14;
  }

  while (v16);
  LODWORD(v9) = *v10;
  if (*v10)
  {
    v7 = a3;
    v6 = a2;
LABEL_31:
    v25 = 0;
    v26 = 24;
    v15 = v17;
    v9 = v9;
    while (1)
    {
      v27 = *(v14 + v26);
      v28 = v15 - v27;
      if (__OFSUB__(v15, v27))
      {
        goto LABEL_214;
      }

      if (__OFADD__(v28, 1))
      {
        goto LABEL_215;
      }

      if (v28 + 1 < 1)
      {
        break;
      }

      ++v25;
      v26 += 24;
      v15 -= v27;
      if (v9 == v25)
      {
        if (!v28)
        {
          goto LABEL_37;
        }

LABEL_189:
        __break(1u);
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }
    }

    v9 = v25;
  }

  else
  {
LABEL_188:
    v9 = 0;
    v7 = a3;
    v3 = v112;
    v6 = a2;
    if (v17)
    {
      goto LABEL_189;
    }

LABEL_37:
    v15 = 0;
  }

  swift_unknownObjectRelease();
  v13 = v18 & 0xFFFFFFFFFFFFF0FFLL | (v9 << 8);
  v8 = v113;
  if (v4)
  {
LABEL_13:
    v119 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v121, v13, v14, v4, v122);
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

LABEL_40:
  v119 = 0;
LABEL_41:

  v17 = v6 - v15;
  if (__OFSUB__(v6, v15))
  {
    goto LABEL_223;
  }

  v122 = v13;
  while (2)
  {
    v31 = v121;
LABEL_46:
    v32 = v8[9];
    v121 = v31;
    if (v6 != v7)
    {
      if (v32)
      {
        v41 = v8[11];
      }

      else
      {
        v41 = 0;
      }

      v42 = v122;
      if (v17 == v41)
      {
        goto LABEL_181;
      }

      goto LABEL_91;
    }

    if (!v32)
    {
      if (v6 > 0)
      {
        goto LABEL_218;
      }

      v39 = 0;
LABEL_89:
      v52 = v6 - v39;
      v42 = v122;
      if (__OFSUB__(v6, v39))
      {
        goto LABEL_206;
      }

      v7 = a3;
      v3 = v112;
      if (v17 == v52)
      {
LABEL_181:
      }

LABEL_91:
      if (v31 != v8[12])
      {
        goto LABEL_195;
      }

      if (v14)
      {
        v53 = (v14 + 24 * ((v42 >> ((4 * *(v14 + 18) + 8) & 0x3C)) & 0xF));
        v54 = v53[4];
        v55 = v53[5];
        v56 = v53[3];
        v57 = v17 + v56;
        v58 = __OFADD__(v17, v56);
        v118 = v54;

        v116 = v55;

        if (v58)
        {
          goto LABEL_204;
        }

        v59 = v6;
        v42 = v122;
        if (v17 >= v6)
        {
LABEL_98:
          if (v17 >= v7)
          {
            v59 = v7;
          }

          else
          {
            v59 = v17;
          }
        }
      }

      else
      {
        v65 = v8[9];
        swift_unknownObjectRetain();
        specialized Rope._Node.subscript.getter(v42, v65);
        v116 = v67;
        v118 = v66;
        result = swift_unknownObjectRelease();
        if (v31 != v8[12])
        {
          goto LABEL_210;
        }

        v68 = v8[9];
        swift_unknownObjectRetain();
        v69 = specialized Rope._Node.subscript.getter(v42, v68);
        swift_unknownObjectRelease();

        v64 = __OFADD__(v17, v69);
        v57 = v17 + v69;
        if (v64)
        {
          goto LABEL_211;
        }

        v6 = a2;
        v59 = a2;
        v31 = v121;
        if (v17 >= a2)
        {
          goto LABEL_98;
        }
      }

      if (v57 <= v6)
      {
        v60 = v6;
      }

      else
      {
        v60 = v57;
      }

      if (v57 > v7)
      {
        v60 = v7;
      }

      if (v59 == v60)
      {
        goto LABEL_196;
      }

      v120 = v60 - v59;
      if (__OFSUB__(v60, v59))
      {
        goto LABEL_197;
      }

      v61 = v8[9];
      v62 = v8[12];
      v123 = v31;
      v124 = v42;
      v125 = v14;
      if (__OFADD__(v119, 1))
      {
        goto LABEL_199;
      }

      if (v31 != v62)
      {
        goto LABEL_200;
      }

      ++v119;
      if (v14)
      {
        v63 = *(v14 + 24 * ((v42 >> ((4 * *(v14 + 18) + 8) & 0x3C)) & 0xF) + 24);
        v64 = __OFADD__(v17, v63);
        v17 += v63;
        if (v64)
        {
          goto LABEL_205;
        }

        if (!v61)
        {
          goto LABEL_198;
        }

        result = swift_unknownObjectRetain();
      }

      else
      {
        swift_unknownObjectRetain();
        v70 = specialized Rope._Node.subscript.getter(v42, v61);

        v64 = __OFADD__(v17, v70);
        v17 += v70;
        if (v64)
        {
          goto LABEL_212;
        }

        v8 = v113;
        if (!v61)
        {
          goto LABEL_198;
        }
      }

      if (v42 >= (((-15 << ((4 * *(v61 + 18) + 8) & 0x3C)) - 1) & *(v61 + 18) | (*(v61 + 16) << ((4 * *(v61 + 18) + 8) & 0x3C))))
      {
        goto LABEL_198;
      }

      if (v14 && (v71 = (4 * *(v14 + 18) + 8) & 0x3C, v72 = ((v122 >> v71) & 0xF) + 1, v72 < *(v14 + 16)))
      {
        result = swift_unknownObjectRelease();
        v73 = ((-15 << v71) - 1) & v122;
        v74 = v72 << v71;
      }

      else
      {
        if (specialized Rope._Node.formSuccessor(of:)(&v123, v61))
        {
          result = swift_unknownObjectRelease();
          v31 = v123;
          v75 = v124;
          v14 = v125;
LABEL_128:
          v6 = a2;
          if (v17 >= v7)
          {
            v79 = v8[9];
            if (a2 == v7)
            {
              v31 = v8[12];
              if (v79)
              {
                v80 = v8[11];
                if (v80 < a2)
                {
                  goto LABEL_219;
                }

                v81 = v8[10];
                v82 = (v79 + 16);
                v17 = *(v79 + 16);
                v18 = *(v79 + 18);
                v122 = v81;
                if (*(v79 + 16) && v80 > a2)
                {
                  v83 = v31;
                  result = swift_unknownObjectRetain_n();
                  v4 = a2;
                  if (!v18)
                  {
                    v84 = 0;
                    v14 = v79;
LABEL_157:
                    v8 = v113;
                    v92 = 0;
                    v93 = 24;
                    v91 = v4;
                    while (1)
                    {
                      v94 = *(v14 + v93);
                      v4 = v91 - v94;
                      if (__OFSUB__(v91, v94))
                      {
                        goto LABEL_201;
                      }

                      if (__OFADD__(v4, 1))
                      {
                        goto LABEL_202;
                      }

                      if (v4 + 1 < 1)
                      {
                        goto LABEL_165;
                      }

                      ++v92;
                      v93 += 24;
                      v91 -= v94;
                      if (v17 == v92)
                      {
                        v92 = v17;
                        goto LABEL_163;
                      }
                    }
                  }

                  v84 = v18;
                  v85 = v79;
                  do
                  {
                    v86 = *v82;
                    if (*v82)
                    {
                      v87 = 0;
                      v88 = (v85 + 40);
                      while (1)
                      {
                        v89 = *v88;
                        v88 += 3;
                        v90 = v4 - v89;
                        if (__OFSUB__(v4, v89))
                        {
                          goto LABEL_186;
                        }

                        if (__OFADD__(v90, 1))
                        {
                          goto LABEL_187;
                        }

                        if (v90 + 1 < 1)
                        {
                          v86 = v87;
                          goto LABEL_137;
                        }

                        ++v87;
                        v4 = v90;
                        if (v86 == v87)
                        {
                          goto LABEL_146;
                        }
                      }
                    }

                    v90 = v4;
LABEL_146:
                    if (v90)
                    {
                      goto LABEL_203;
                    }

                    v4 = 0;
LABEL_137:
                    v84 = (v86 << ((4 * v18 + 8) & 0x3C)) | ((-15 << ((4 * v18 + 8) & 0x3C)) - 1) & v84;
                    v14 = *(v85 + 24 + 24 * v86);
                    swift_unknownObjectRetain();
                    result = swift_unknownObjectRelease();
                    v82 = (v14 + 16);
                    v18 = *(v14 + 18);
                    v85 = v14;
                  }

                  while (*(v14 + 18));
                  LODWORD(v17) = *v82;
                  if (*v82)
                  {
                    goto LABEL_157;
                  }

                  v92 = 0;
                  v8 = v113;
LABEL_163:
                  if (!v4)
                  {
                    v91 = 0;
LABEL_165:
                    swift_unknownObjectRelease();
                    v95 = v84 & 0xFFFFFFFFFFFFF0FFLL | (v92 << 8);
                    v6 = a2;
                    v31 = v83;
                    v75 = v95;
                    goto LABEL_166;
                  }

                  goto LABEL_224;
                }

                v75 = ((-15 << ((4 * v18 + 8) & 0x3C)) - 1) & v18 | (v17 << ((4 * v18 + 8) & 0x3C));
                swift_unknownObjectRetain();
                v91 = 0;
                v14 = 0;
                v8 = v113;
LABEL_166:
                v119 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v31, v75, v14, v79, v122);
                result = swift_unknownObjectRelease();
                v7 = a3;
                v3 = v112;
              }

              else
              {
                if (a2 > 0)
                {
                  goto LABEL_220;
                }

                v91 = 0;
                v14 = 0;
                v75 = 0;
                v119 = 0;
              }

              v17 = v6 - v91;
              if (__OFSUB__(v6, v91))
              {
                goto LABEL_217;
              }
            }

            else
            {
              v31 = v8[12];
              if (v79)
              {
                v14 = 0;
                v17 = v8[11];
                v119 = v8[10];
                v75 = ((-15 << ((4 * *(v79 + 18) + 8) & 0x3C)) - 1) & *(v79 + 18) | (*(v79 + 16) << ((4 * *(v79 + 18) + 8) & 0x3C));
              }

              else
              {
                v75 = 0;
                v14 = 0;
                v119 = 0;
                v17 = 0;
              }
            }
          }

          v122 = v75;
          if (v120)
          {
            v96 = v3[5];
            if (v96)
            {
              v121 = v31;
              v97 = v3[6];
              v98 = v3[1];
              v99 = v3[2];
              v101 = v3[3];
              v100 = v3[4];
              v3[1] = 0;
              v3[2] = 0;
              v3[3] = 0;
              if (!v98)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMR);
                v98 = swift_allocObject();
                v101 = 0;
                v99 = 0;
                *(v98 + 16) = 0;
                *(v98 + 18) = 0;
              }

              result = swift_isUniquelyReferenced_nonNull();
              if ((result & 1) == 0)
              {
                v102 = specialized Rope._Node.copy()(v98);
                v99 = v103;
                v101 = v104;
                result = swift_unknownObjectRelease();
                v98 = v102;
                v7 = a3;
                v3 = v112;
              }

              v64 = __OFADD__(v99, 1);
              v105 = v99 + 1;
              if (v64)
              {
                goto LABEL_207;
              }

              v64 = __OFADD__(v101, v100);
              v106 = v101 + v100;
              if (v64)
              {
                goto LABEL_208;
              }

              v107 = *(v98 + 16);
              v108 = (v98 + 24 * *(v98 + 16));
              v108[3] = v100;
              v108[4] = v96;
              v108[5] = v97;
              if (v107 != 0xFFFF)
              {
                v109 = v107 + 1;
                *(v98 + 16) = v109;
                if (v109 == 15)
                {
                  v110 = swift_unknownObjectRetain();
                  specialized Rope.Builder._appendNow(_:)(v110, v105, v106);
                  swift_unknownObjectRelease();

                  v29 = v116;

                  v30 = v118;
                }

                else
                {

                  v29 = v116;

                  v30 = v118;

                  v3[1] = v98;
                  v3[2] = v105;
                  v3[3] = v106;
                }

                v3[4] = v120;
                v3[5] = v30;
                v3[6] = v29;
                v8 = v113;
                v6 = a2;
                continue;
              }

              goto LABEL_209;
            }

            v3[4] = v120;
            v3[5] = v118;
            v3[6] = v116;
          }

          else
          {
          }

          goto LABEL_46;
        }

        v76 = *(v61 + 18);
        v77 = *(v61 + 16);
        result = swift_unknownObjectRelease();
        v14 = 0;
        v78 = (4 * v76 + 8) & 0x3C;
        v74 = ((-15 << v78) - 1) & v76;
        v73 = v77 << v78;
      }

      v75 = v74 | v73;
      v31 = v121;
      goto LABEL_128;
    }

    break;
  }

  v33 = v8[11];
  if (v33 < v6)
  {
    goto LABEL_213;
  }

  v115 = v8[12];
  v117 = v8[10];
  v35 = (v32 + 16);
  v34 = *(v32 + 16);
  v36 = *(v32 + 18);
  if (*(v32 + 16))
  {
    v37 = v33 <= v6;
  }

  else
  {
    v37 = 1;
  }

  if (v37)
  {
    v38 = ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v36 | (v34 << ((4 * v36 + 8) & 0x3C));
    swift_unknownObjectRetain();
    v39 = 0;
    v40 = 0;
LABEL_88:
    specialized Rope._Node.distanceFromStart<A>(to:in:)(v115, v38, v40, v32, v117);
    result = swift_unknownObjectRelease();
    v6 = a2;
    goto LABEL_89;
  }

  result = swift_unknownObjectRetain_n();
  if (!v36)
  {
    v4 = 0;
    v18 = v6;
    v40 = v32;
LABEL_79:
    v49 = 0;
    v50 = 24;
    v39 = v18;
    while (1)
    {
      v51 = *(v40 + v50);
      v18 = v39 - v51;
      if (__OFSUB__(v39, v51))
      {
        goto LABEL_192;
      }

      if (__OFADD__(v18, 1))
      {
        goto LABEL_193;
      }

      if (v18 + 1 < 1)
      {
        goto LABEL_87;
      }

      ++v49;
      v50 += 24;
      v39 -= v51;
      if (v34 == v49)
      {
        v49 = v34;
        goto LABEL_85;
      }
    }
  }

  v18 = v6;
  v4 = v36;
  v43 = v32;
  do
  {
    v44 = *v35;
    if (*v35)
    {
      v45 = 0;
      v46 = (v43 + 40);
      while (1)
      {
        v47 = *v46;
        v46 += 3;
        v48 = v18 - v47;
        if (__OFSUB__(v18, v47))
        {
          break;
        }

        if (__OFADD__(v48, 1))
        {
          goto LABEL_185;
        }

        if (v48 + 1 < 1)
        {
          v44 = v45;
          goto LABEL_65;
        }

        ++v45;
        v18 = v48;
        if (v44 == v45)
        {
          goto LABEL_74;
        }
      }

      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
      goto LABEL_188;
    }

    v48 = v18;
LABEL_74:
    if (v48)
    {
      goto LABEL_194;
    }

    v18 = 0;
LABEL_65:
    v4 = (v44 << ((4 * v36 + 8) & 0x3C)) | ((-15 << ((4 * v36 + 8) & 0x3C)) - 1) & v4;
    v40 = *(v43 + 24 + 24 * v44);
    swift_unknownObjectRetain();
    result = swift_unknownObjectRelease();
    v35 = (v40 + 16);
    LOBYTE(v36) = *(v40 + 18);
    v43 = v40;
  }

  while (v36);
  LODWORD(v34) = *v35;
  if (*v35)
  {
    goto LABEL_79;
  }

  v49 = 0;
LABEL_85:
  if (!v18)
  {
    v39 = 0;
LABEL_87:
    swift_unknownObjectRelease();
    v38 = v4 & 0xFFFFFFFFFFFFF0FFLL | (v49 << 8);
    v8 = v113;
    v31 = v121;
    goto LABEL_88;
  }

LABEL_222:
  __break(1u);
LABEL_223:
  __break(1u);
LABEL_224:
  __break(1u);
  return result;
}

{
  if (result)
  {
    v6 = result;
    if (!v3[5])
    {
LABEL_16:
      v3[4] = v6;
      v3[5] = a2;
      v3[6] = a3;
      return result;
    }

    v19 = *(v3 + 5);
    v7 = v3[1];
    v8 = v3[2];
    v9 = v3[3];
    v10 = v3[4];
    v3[2] = 0;
    v3[3] = 0;
    v3[1] = 0;
    if (!v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMd, &_s19CollectionsInternal4RopeV8_StorageCy10Foundation16AttributedStringV01_B3RunV_AC5_ItemVyAJ_GGMR);
      v7 = swift_allocObject();
      v9 = 0;
      v8 = 0;
      *(v7 + 16) = 0;
      *(v7 + 18) = 0;
    }

    result = swift_isUniquelyReferenced_nonNull();
    if ((result & 1) == 0)
    {
      v11 = specialized Rope._Node.copy()(v7);
      v8 = v12;
      v9 = v13;
      result = swift_unknownObjectRelease();
      v7 = v11;
    }

    v14 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
    }

    else
    {
      v15 = v9 + v10;
      if (!__OFADD__(v9, v10))
      {
        v16 = *(v7 + 16);
        v17 = v7 + 24 * *(v7 + 16);
        *(v17 + 24) = v10;
        *(v17 + 32) = v19;
        if (v16 != 0xFFFF)
        {
          v18 = v16 + 1;
          *(v7 + 16) = v18;
          if (v18 == 15)
          {
            result = specialized Rope.Builder._appendNow(_:)(v7, v14, v15);
          }

          else
          {
            v3[1] = v7;
            v3[2] = v14;
            v3[3] = v15;
          }

          goto LABEL_16;
        }

        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }
}

unint64_t AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(uint64_t a1, uint64_t a2, int a3, unint64_t a4)
{
  v192 = a2;
  v193 = a1;
  v251 = *MEMORY[0x1E69E9840];
  v7 = *(v4 + 72);
  v8 = *(v4 + 88);
  v9 = swift_unknownObjectRetain();
  result = specialized Rope._endPath.getter(v9);
  if (!v7)
  {
    return result;
  }

  result = swift_unknownObjectRelease();
  if (!v8 || (a3 & 1) == 0 && v193 == v192)
  {
    return result;
  }

  v189 = a4;
  LODWORD(v190) = a3;
  v12 = *(v191 + 24);
  v11 = v191 + 24;
  v13 = *(v191 + 56);
  v239 = *(v191 + 40);
  v240 = v13;
  v235 = v12;
  v236 = v239;
  v237 = *(v191 + 56);
  v238 = v12;
  BigString.startIndex.getter();
  v241[0] = v238;
  v241[1] = v239;
  v242 = v240;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v241, &v204);
  v14 = BigString.UTF8View.index(_:offsetBy:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  outlined destroy of BigString(&v238);
  v21 = *(v191 + 40);
  v232 = *(v191 + 24);
  v233 = v21;
  v187 = (v191 + 24);
  v234 = *(v191 + 56);
  if (__OFSUB__(v192, v193))
  {
    goto LABEL_151;
  }

  swift_unknownObjectRetain();
  v22 = BigString.UTF8View.index(_:offsetBy:)();
  v24 = v23;
  v26 = v25;
  v27 = v16;
  v28 = v20;
  v30 = v29;
  result = swift_unknownObjectRelease();
  v209[0] = v14;
  v209[1] = v27;
  v188 = v27;
  v185 = v18;
  v186 = v22;
  v209[2] = v18;
  v209[3] = v28;
  v209[4] = v22;
  v209[5] = v24;
  v183 = v26;
  v184 = v24;
  v209[6] = v26;
  v209[7] = v30;
  v31 = v190;
  v32 = v189;
  if ((v190 & 1) != 0 || !v189)
  {
LABEL_11:
    result = AttributedString.Guts.fixScalarConstrainedAttributes(in:)(v209);
  }

  else
  {
    v33 = (v189 + 40);
    v34 = *(v189 + 16) + 1;
    while (--v34)
    {
      v35 = *v33;
      v33 += 2;
      if (v35)
      {
        goto LABEL_11;
      }
    }
  }

  v36 = v14;
  if ((v190 & 1) == 0)
  {
    if (!v189 || (v204 = 0uLL, MEMORY[0x1EEE9AC00](result), v180[2] = &v204, result = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v180, v32), (result & 1) != 0))
    {
      v11 = v191;
      v61 = *(v191 + 72);
      v62 = *(v191 + 88);
      if (v61)
      {
        v63 = *(v191 + 88);
      }

      else
      {
        v63 = 0;
      }

      v64 = v193;
      if (v193 < 0 || v63 < v193)
      {
        goto LABEL_152;
      }

      v65 = *(v191 + 80);
      v190 = *(v191 + 96);
      v182 = 0;
      if (!v61 || ((v66 = (v61 + 16), v67 = *(v61 + 16), *(v61 + 16)) ? (v68 = v62 <= v193) : (v68 = 1), v68))
      {
        v69 = swift_unknownObjectRetain();
        v70 = specialized Rope._endPath.getter(v69);
        v71 = 0;
        v72 = 0;
        if (!v61)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v189 = v65;
        v11 = *(v61 + 18);
        swift_unknownObjectRetain_n();
        if (!v11)
        {
          v128 = 0;
          v71 = v61;
          v11 = v191;
          goto LABEL_123;
        }

        v188 = v62;
        v128 = v11;
        v129 = v61;
        do
        {
          v130 = *v66;
          if (*v66)
          {
            v131 = 0;
            v132 = (v129 + 40);
            while (1)
            {
              v133 = *v132;
              v132 += 3;
              v134 = v64 - v133;
              if (__OFSUB__(v64, v133))
              {
                break;
              }

              if (__OFADD__(v134, 1))
              {
                goto LABEL_144;
              }

              if (v134 + 1 < 1)
              {
                v130 = v131;
                goto LABEL_84;
              }

              ++v131;
              v64 = v134;
              if (v130 == v131)
              {
                goto LABEL_93;
              }
            }

            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

          v134 = v64;
LABEL_93:
          if (v134)
          {
            goto LABEL_150;
          }

          v64 = 0;
LABEL_84:
          v128 = (v130 << ((4 * v11 + 8) & 0x3C)) | ((-15 << ((4 * v11 + 8) & 0x3C)) - 1) & v128;
          v71 = *(v129 + 24 + 24 * v130);
          swift_unknownObjectRetain();
          swift_unknownObjectRelease();
          v66 = (v71 + 16);
          v11 = *(v71 + 18);
          v129 = v71;
        }

        while (*(v71 + 18));
        v67 = *v66;
        if (*v66)
        {
          v11 = v191;
LABEL_123:
          v173 = 0;
          v174 = v67;
          v175 = 24;
          while (1)
          {
            v176 = *(v71 + v175);
            v101 = __OFSUB__(v64, v176);
            v64 -= v176;
            if (v101)
            {
              break;
            }

            if (__OFADD__(v64, 1))
            {
              goto LABEL_149;
            }

            if (v64 + 1 < 1)
            {
              goto LABEL_142;
            }

            ++v173;
            v175 += 24;
            if (v67 == v173)
            {
              goto LABEL_141;
            }
          }

LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          v122 = v11;

          if (!swift_stdlib_isStackAllocationSafe())
          {
            goto LABEL_157;
          }

LABEL_39:
          v184 = v179;
          MEMORY[0x1EEE9AC00](v81);
          v187 = (v179 - ((v84 + 15) & 0x3FFFFFFFFFFFFFF0));
          bzero(v187, v84);
          v188 = 0;
          v85 = 0;
          v86 = v11 + 64;
          v87 = 1 << *(v11 + 32);
          v88 = -1;
          if (v87 < 64)
          {
            v88 = ~(-1 << v87);
          }

          v89 = v88 & *(v11 + 64);
          v38 = ((v87 + 63) >> 6);
          v190 = v11;
          while (1)
          {
            while (1)
            {
              if (!v89)
              {
                v92 = v85;
                v93 = v188;
                while (1)
                {
                  v85 = v92 + 1;
                  if (__OFADD__(v92, 1))
                  {
                    goto LABEL_145;
                  }

                  if (v85 >= v38)
                  {
                    goto LABEL_58;
                  }

                  v94 = *(v86 + 8 * v85);
                  ++v92;
                  if (v94)
                  {
                    v89 = (v94 - 1) & v94;
                    v91 = __clz(__rbit64(v94)) | (v85 << 6);
                    goto LABEL_50;
                  }
                }
              }

              v90 = __clz(__rbit64(v89));
              v89 &= v89 - 1;
              v91 = v90 | (v85 << 6);
LABEL_50:
              v95 = *(v11 + 56);
              v96 = (*(v11 + 48) + 16 * v91);
              v97 = *v96;
              v98 = v96[1];
              v189 = v91;
              outlined init with copy of AttributedString._AttributeValue(v95 + 72 * v91, &v199);
              *&v204 = v97;
              *(&v204 + 1) = v98;
              outlined init with copy of AttributedString._AttributeValue(&v199, &v205);
              v93 = &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR;
              outlined init with copy of FloatingPointRoundingRule?(&v204, &v194, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
              swift_bridgeObjectRetain_n();

              v99 = *(&v197 + 1);
              v100 = v198;
              outlined copy of AttributedString.AttributeRunBoundaries?(*(&v197 + 1), v198);
              outlined destroy of AttributedString._AttributeValue(&v195);
              if (v100 != 1)
              {
                break;
              }

              outlined destroy of TermOfAddress?(&v204, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
              outlined consume of AttributedString.AttributeRunBoundaries?(v99, 1);
              outlined consume of AttributedString.AttributeRunBoundaries?(0, 0);
              outlined destroy of AttributedString._AttributeValue(&v199);

              v11 = v190;
            }

            if (v100)
            {

              outlined destroy of TermOfAddress?(&v204, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
            }

            else
            {
              outlined destroy of TermOfAddress?(&v204, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMR);
              swift_bridgeObjectRelease_n();
            }

            v11 = v190;
            outlined consume of AttributedString.AttributeRunBoundaries?(v99, v100);
            outlined destroy of AttributedString._AttributeValue(&v199);

            if (!v100)
            {
              *(v187 + ((v189 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v189;
              v101 = __OFADD__(v188, 1);
              v188 = (v188 + 1);
              if (v101)
              {
                break;
              }
            }
          }

          __break(1u);
LABEL_58:
          if (v93)
          {
            if (v93 != *(v11 + 16))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
              v102 = static _DictionaryStorage.allocate(capacity:)();
              v135 = 0;
              v136 = v187;
              v137 = *v187;
              v138 = v102 + 64;
              while (v137)
              {
                v142 = __clz(__rbit64(v137));
                v137 &= v137 - 1;
LABEL_105:
                v145 = v142 | (v135 << 6);
                v146 = *(v11 + 48) + 16 * v145;
                v38 = *v146;
                v147 = *(v146 + 8);
                outlined init with copy of AttributedString._AttributeValue(*(v11 + 56) + 72 * v145, &v204);
                v196 = v206;
                v197 = v207;
                v198 = v208;
                v194 = v204;
                v195 = v205;
                Hasher.init(_seed:)();

                String.hash(into:)();
                v148 = Hasher._finalize()();
                v149 = -1 << *(v102 + 32);
                v150 = v148 & ~v149;
                v151 = v150 >> 6;
                if (((-1 << v150) & ~*(v138 + 8 * (v150 >> 6))) == 0)
                {
                  v152 = 0;
                  v153 = (63 - v149) >> 6;
                  while (++v151 != v153 || (v152 & 1) == 0)
                  {
                    v154 = v151 == v153;
                    if (v151 == v153)
                    {
                      v151 = 0;
                    }

                    v152 |= v154;
                    v155 = *(v138 + 8 * v151);
                    if (v155 != -1)
                    {
                      v139 = __clz(__rbit64(~v155)) + (v151 << 6);
                      goto LABEL_97;
                    }
                  }

                  goto LABEL_147;
                }

                v139 = __clz(__rbit64((-1 << v150) & ~*(v138 + 8 * (v150 >> 6)))) | v150 & 0x7FFFFFFFFFFFFFC0;
LABEL_97:
                *(v138 + ((v139 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v139;
                v140 = (*(v102 + 48) + 16 * v139);
                *v140 = v38;
                v140[1] = v147;
                v141 = *(v102 + 56) + 72 * v139;
                *(v141 + 16) = v195;
                *(v141 + 32) = v196;
                *(v141 + 48) = v197;
                *(v141 + 64) = v198;
                *v141 = v194;
                ++*(v102 + 16);
                v93 = (v93 - 1);
                v136 = v187;
                if (!v93)
                {
                  goto LABEL_74;
                }
              }

              v143 = v135;
              while (1)
              {
                v135 = v143 + 1;
                if (__OFADD__(v143, 1))
                {
                  goto LABEL_146;
                }

                if (v135 >= v183)
                {
                  goto LABEL_74;
                }

                v144 = v136[v135];
                ++v143;
                if (v144)
                {
                  v142 = __clz(__rbit64(v144));
                  v137 = (v144 - 1) & v144;
                  goto LABEL_105;
                }
              }
            }

            v102 = v11;
          }

          else
          {
            v102 = MEMORY[0x1E69E7CC8];
          }

LABEL_74:
          v122 = v186;

          while (1)
          {
            v123 = v191;
            v124 = *(v191 + 40);
            v194 = *(v191 + 24);
            v195 = v124;
            v196 = *(v191 + 56);
            v42 = v194;
            swift_unknownObjectRetain();
            specialized BidirectionalCollection<>._getBlock(for:in:)(3, v209, &v204);
            swift_unknownObjectRelease();
            if (*(&v205 + 1) == 2)
            {
              break;
            }

            if (*(&v207 + 1) == 2)
            {
              goto LABEL_169;
            }

            v125 = v204 >> 11;
            if ((v204 >> 11) > v193 || v206 >> 10 < v204 >> 10)
            {
              __break(1u);
            }

            else
            {
              v126 = v206 >> 11;

              specialized AttributedString._InternalRunsSlice.updateEach(with:)(v123, v125, v193, v102);

              v127 = v192;
              if (v126 >= v192)
              {

                specialized AttributedString._InternalRunsSlice.updateEach(with:)(v123, v127, v126, v102);
                swift_bridgeObjectRelease_n();
              }
            }

            __break(1u);
LABEL_157:
            v38 = swift_slowAlloc();

            v42 = v182;
            _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySS10Foundation16AttributedStringV15_AttributeValueVG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab24VKXEfU_SS_10Foundation16jk4V15_lM4VTG5AMxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lySSALIsgnndzo_Tf1nc_n(v38, v183, v122, thunk for @callee_guaranteed (@guaranteed String, @in_guaranteed AttributedString._AttributeValue) -> (@unowned Bool, @error @owned Error)partial apply);
            if (v42)
            {
              goto LABEL_173;
            }

            v102 = v178;

            MEMORY[0x1865D2690](v38, -1, -1);

            v122 = v186;
          }

          __break(1u);
LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        v174 = 0;
        v11 = v191;
LABEL_141:
        v173 = v174;
        if (v64)
        {
          goto LABEL_160;
        }

LABEL_142:
        swift_unknownObjectRelease();
        v70 = v128 & 0xFFFFFFFFFFFFF0FFLL | (v173 << 8);
        v65 = v189;
      }

      specialized Rope._Node.distanceFromStart<A>(to:in:)(v190, v70, v71, v61, v65);
      swift_unknownObjectRelease();
      v72 = v71;
LABEL_38:
      v74 = *(v11 + 72);
      v73 = *(v11 + 80);
      v75 = *(v11 + 88);
      v76 = *(v11 + 96);
      swift_unknownObjectRetain();
      specialized Rope.subscript.getter(v190, v70, v72, v74, v73, v75, v76);
      v11 = v77;
      v186 = v78;
      v79 = swift_unknownObjectRelease();
      v185 = &v181;
      MEMORY[0x1EEE9AC00](v79);
      MEMORY[0x1EEE9AC00](v80);
      *(v82 - 16) = 0;
      *(v82 - 8) = 0;
      v179[2] = closure #1 in AttributedString.Guts._constrainedAttributes(at:with:)partial apply;
      v179[3] = v83;
      LOBYTE(v82) = *(v11 + 32);
      v183 = ((1 << v82) + 63) >> 6;
      if ((v82 & 0x3Fu) <= 0xD)
      {
        goto LABEL_39;
      }

      goto LABEL_153;
    }
  }

  if ((v31 & 1) == 0)
  {
    return result;
  }

  v37 = v14 >> 10;
  v38 = (v186 >> 10);
  if (v36 >> 10 != v186 >> 10)
  {
    v103 = *(v187 + 1);
    v229 = *v187;
    v230 = v103;
    v231 = *(v187 + 2);
    if (v37 <= BigString.startIndex.getter() >> 10)
    {
      goto LABEL_68;
    }

    if (!__OFSUB__(v193, 1))
    {
      v104 = v191;
      if (AttributedString.Guts._needsParagraphFixing(from:to:)(v193 - 1, v193))
      {
        v105 = v187;
        v106 = *(v187 + 1);
        v226 = *v187;
        v227 = v106;
        v228 = *(v187 + 2);
        v243[0] = v226;
        v243[1] = v106;
        v244 = v187[4];
        outlined init with copy of Rope<BigString._Chunk>._Node?(v243, &v204);
        v107 = BigString.index(before:)();
        v109 = v108;
        v111 = v110;
        v113 = v112;
        outlined destroy of BigString(&v226);
        v114 = *v105;
        v115 = *(v105 + 2);
        v224 = *(v105 + 1);
        v225 = v115;
        v116 = *(v104 + 40);
        v220 = *(v104 + 24);
        v221 = v116;
        v222 = *(v104 + 56);
        v223 = v114;
        v246 = v105[4];
        v245[0] = v114;
        v245[1] = v224;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v245, &v204);
        v117 = BigString.index(after:)();
        v42 = v107 >> 10;
        if (v107 >> 10 > v117 >> 10)
        {
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        *&v194 = v107;
        *(&v194 + 1) = v109;
        *&v195 = v111;
        *(&v195 + 1) = v113;
        *&v196 = v117;
        *(&v196 + 1) = v118;
        *&v197 = v119;
        *(&v197 + 1) = v120;
        specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v194, &v204);
        outlined destroy of BigString(&v223);
        if (*(&v207 + 1) != 2)
        {
          if (v42 > v206 >> 10)
          {
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          v55 = 0;
          v59 = v107 >> 11;
          v60 = v206 >> 11;
LABEL_69:
          v121 = *(v187 + 1);
          v217 = *v187;
          v218 = v121;
          v219 = *(v187 + 2);
          result = BigString.endIndex.getter();
          if (v38 < result >> 10)
          {
            if (v55)
            {
              if (v192 < 1)
              {
                return result;
              }
            }

            else if (v60 >= v192)
            {
              v55 = 0;
              goto LABEL_130;
            }

            v156 = v191;
            result = AttributedString.Guts._needsParagraphFixing(from:to:)(v192 - 1, v192);
            if (result)
            {
              v190 = v59;
              v157 = v187;
              v158 = *(v187 + 1);
              v216[0] = *v187;
              v216[1] = v158;
              v216[2] = *(v187 + 2);
              v247[0] = v216[0];
              v247[1] = v158;
              v248 = v187[4];
              outlined init with copy of Rope<BigString._Chunk>._Node?(v247, &v204);
              v159 = BigString.index(before:)();
              v161 = v160;
              v42 = v162;
              v164 = v163;
              outlined destroy of BigString(v216);
              v165 = *v157;
              v166 = *(v157 + 2);
              v214 = *(v157 + 1);
              v215 = v166;
              v167 = *(v156 + 40);
              v210 = *(v156 + 24);
              v211 = v167;
              v168 = *(v156 + 56);
              v38 = v161;
              v212 = v168;
              v213 = v165;
              v250 = v157[4];
              v249[0] = v165;
              v249[1] = v214;
              outlined init with copy of Rope<BigString._Chunk>._Node?(v249, &v204);
              v169 = BigString.index(after:)();
              if (v159 >> 10 > v169 >> 10)
              {
LABEL_164:
                __break(1u);
                goto LABEL_165;
              }

              *&v199 = v159;
              *(&v199 + 1) = v161;
              *&v200 = v42;
              *(&v200 + 1) = v164;
              *&v201 = v169;
              *(&v201 + 1) = v170;
              v202 = v171;
              v203 = v172;
              specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v199, &v204);
              result = outlined destroy of BigString(&v213);
              if (*(&v207 + 1) != 2)
              {
                v59 = v190;
                if (v159 >> 10 > v206 >> 10)
                {
LABEL_165:
                  __break(1u);
LABEL_166:
                  __break(1u);
                  goto LABEL_167;
                }

                v56 = v159 >> 11;
                v57 = v206 >> 11;
                v58 = 1;
LABEL_131:
                if ((v55 & 1) == 0 && v60 > v193)
                {
                  v204 = 0uLL;
                  result = AttributedString.Guts._applyStyle(type:from:to:)(&v204, v59, v193, v60);
                }

                if (v57 > v192)
                {
                  v177 = v58;
                }

                else
                {
                  v177 = 0;
                }

                if (v177 == 1)
                {
                  v204 = 0uLL;
                  return AttributedString.Guts._applyStyle(type:from:to:)(&v204, v56, v192, v57);
                }

                return result;
              }

LABEL_171:
              __break(1u);
              goto LABEL_172;
            }
          }

LABEL_130:
          v56 = 0;
          v57 = 0;
          v58 = 0;
          goto LABEL_131;
        }

LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

LABEL_68:
      v59 = 0;
      v60 = 0;
      v55 = 1;
      goto LABEL_69;
    }

    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  v39 = *(v187 + 1);
  v199 = *v187;
  v200 = v39;
  v201 = *(v187 + 2);
  result = BigString.startIndex.getter();
  if (v37 <= result >> 10)
  {
    return result;
  }

  result = BigString.endIndex.getter();
  if (v37 >= result >> 10)
  {
    return result;
  }

  if (__OFSUB__(v193, 1))
  {
    goto LABEL_161;
  }

  result = AttributedString.Guts._needsParagraphFixing(from:to:)(v193 - 1, v193);
  if ((result & 1) == 0)
  {
    return result;
  }

  v40 = v187;
  v41 = *(v187 + 1);
  v229 = *v187;
  v230 = v41;
  v231 = *(v187 + 2);
  v217 = v229;
  v218 = v41;
  *&v219 = v187[4];
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v217, &v204);
  v42 = BigString.index(before:)();
  v44 = v43;
  v38 = v45;
  v47 = v46;
  outlined destroy of BigString(&v229);
  v48 = *v40;
  v49 = *(v40 + 2);
  v227 = *(v40 + 1);
  v228 = v49;
  v50 = *(v191 + 40);
  v223 = *(v191 + 24);
  v224 = v50;
  v225 = *(v191 + 56);
  v226 = v48;
  *&v222 = v40[4];
  v220 = v48;
  v221 = v227;
  outlined init with copy of Rope<BigString._Chunk>._Node?(&v220, &v204);
  v51 = BigString.index(after:)();
  if (v42 >> 10 > v51 >> 10)
  {
    goto LABEL_166;
  }

  *&v194 = v42;
  *(&v194 + 1) = v44;
  *&v195 = v38;
  *(&v195 + 1) = v47;
  *&v196 = v51;
  *(&v196 + 1) = v52;
  *&v197 = v53;
  *(&v197 + 1) = v54;
  specialized BidirectionalCollection<>._getBlock(for:in:)(2, &v194, &v204);
  result = outlined destroy of BigString(&v226);
  if (*(&v207 + 1) != 2)
  {
    if (v42 >> 10 <= v206 >> 10)
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = v42 >> 11;
      v60 = v206 >> 11;
      goto LABEL_131;
    }

LABEL_167:
    __break(1u);
  }

LABEL_172:
  __break(1u);
LABEL_173:

  result = MEMORY[0x1865D2690](v38, -1, -1);
  __break(1u);
  return result;
}

Swift::Void __swiftcall AttributedString.Guts._finalizeTrackedIndicesUpdate(mutationStartOffset:isInsertion:utf8LengthDelta:)(Swift::Int mutationStartOffset, Swift::Bool isInsertion, Swift::Int utf8LengthDelta)
{
  v4 = v3;
  v5 = *(v3 + 104);
  v44 = *(v5 + 2);
  if (!v44)
  {
    return;
  }

  v6 = 0;
  v43 = !isInsertion;
  v7 = 88;
  while (v6 < *(v5 + 2))
  {
    v8 = *&v5[v7 - 56];
    v9 = *&v5[v7 - 24];
    v10 = *&v5[v7 - 16];
    v45 = *&v5[v7];
    v46 = *&v5[v7 - 8];
    v52 = v6;
    if ((v8 >> 11) <= mutationStartOffset && (v8 >> 11 != mutationStartOffset || v43) || !utf8LengthDelta)
    {
      v21 = *(v4 + 40);
      v65 = *(v4 + 24);
      v66 = v21;
      v67 = *(v4 + 56);
      swift_unknownObjectRetain();
      v15 = BigString.UTF8View.index(_:offsetBy:)();
      v17 = v22;
      v49 = v23;
      v20 = v24;
      swift_unknownObjectRelease();
    }

    else
    {
      v53 = *&v5[v7 - 24];
      v11 = *&v5[v7 - 16];
      v12 = *(v4 + 24);
      v13 = *(v4 + 56);
      v72 = *(v4 + 40);
      v73 = v13;
      v14 = *(v4 + 40);
      v68 = *(v4 + 24);
      v69 = v14;
      v70 = *(v4 + 56);
      v71 = v12;
      BigString.startIndex.getter();
      if (__OFADD__(v8 >> 11, utf8LengthDelta))
      {
        goto LABEL_28;
      }

      v74[0] = v71;
      v74[1] = v72;
      v75 = v73;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v74, v55);
      v15 = BigString.UTF8View.index(_:offsetBy:)();
      v17 = v16;
      v49 = v18;
      v20 = v19;
      outlined destroy of BigString(&v71);
      v10 = v11;
      v9 = v53;
    }

    v54 = v20;
    if ((v9 >> 11) <= mutationStartOffset)
    {
      v35 = *(v4 + 104);
      if (v52 >= *(v35 + 16))
      {
        goto LABEL_30;
      }

      v25 = utf8LengthDelta;
      if ((*(v35 + v7 - 56) ^ v15) < 0x400 || utf8LengthDelta == 0)
      {
LABEL_20:
        v37 = *(v4 + 40);
        v56 = *(v4 + 24);
        v57 = v37;
        v58 = *(v4 + 56);
        swift_unknownObjectRetain();
        v33 = BigString.UTF8View.index(_:offsetBy:)();
        v48 = v38;
        v34 = v39;
        v54 = v40;
        swift_unknownObjectRelease();
        v32 = v45;
        v30 = v46;
        goto LABEL_21;
      }
    }

    else
    {
      v25 = utf8LengthDelta;
      if (!utf8LengthDelta)
      {
        goto LABEL_20;
      }
    }

    v47 = v15;
    v48 = v17;
    v26 = *(v4 + 40);
    v62 = *(v4 + 24);
    v63 = v26;
    v64 = *(v4 + 56);
    v27 = *(v4 + 40);
    v59 = *(v4 + 24);
    v60 = v27;
    v61 = *(v4 + 56);
    BigString.startIndex.getter();
    if (__OFADD__(v9 >> 11, v25))
    {
      goto LABEL_29;
    }

    v76[0] = v62;
    v76[1] = v63;
    v77 = v64;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v76, v55);
    v9 = BigString.UTF8View.index(_:offsetBy:)();
    v10 = v28;
    v30 = v29;
    v32 = v31;
    outlined destroy of BigString(&v62);
    v33 = v47;
    v34 = v49;
LABEL_21:
    v5 = *(v4 + 104);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 104) = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    }

    if (v52 >= *(v5 + 2))
    {
      goto LABEL_27;
    }

    v6 = v52 + 1;
    v42 = &v5[v7];
    *(v42 - 7) = v33;
    *(v42 - 6) = v48;
    *(v42 - 5) = v34;
    *(v42 - 4) = v54;
    *(v42 - 3) = v9;
    *(v42 - 2) = v10;
    *(v42 - 1) = v30;
    *v42 = v32;
    v7 += 64;
    *(v4 + 104) = v5;
    if (v44 == v52 + 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t specialized Rope._UnsafeHandle._removeChild(at:)(uint64_t result, _WORD *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = __OFSUB__(v3, result);
  v5 = v3 - result;
  if (v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = __OFSUB__(v5, 1);
  v6 = v5 - 1;
  if (v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = (a3 + 24 * result);
  v9 = *v8;
  result = memmove(v8, v8 + 3, 24 * v6);
  if (*a2)
  {
    --*a2;
    return v9;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t AttributeContainer.subscript.setter(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v97 - v12;
  (*(v10 + 16))(&v97 - v12, a1, v9, v11);
  v14 = (*(a4 + 24))(a3, a4);
  v16 = v15;
  static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v13, a3, a4, v120);
  outlined init with copy of AttributedString._AttributeValue?(v120, &v115);
  if (!*(&v116 + 1))
  {
    outlined destroy of TermOfAddress?(&v115, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v16);
    if (v37)
    {
      v38 = v36;
      v106 = v14;
      v39 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *v5;
      if (isUniquelyReferenced_nonNull_native)
      {
        v42 = *v5;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
        v78 = static _DictionaryStorage.copy(original:)();
        v42 = v78;
        if (*(v41 + 16))
        {
          v79 = (v78 + 64);
          v80 = ((1 << *(v42 + 32)) + 63) >> 6;
          v99 = (v41 + 64);
          if (v42 != v41 || v79 >= v41 + 64 + 8 * v80)
          {
            memmove(v79, v99, 8 * v80);
          }

          v100 = 0;
          *(v42 + 16) = *(v41 + 16);
          v81 = 1 << *(v41 + 32);
          v82 = -1;
          if (v81 < 64)
          {
            v82 = ~(-1 << v81);
          }

          v105 = v82 & *(v41 + 64);
          v98 = (v81 + 63) >> 6;
          while (v105)
          {
            v83 = __clz(__rbit64(v105));
            v105 &= v105 - 1;
            v84 = v83 | (v100 << 6);
LABEL_51:
            v102 = 16 * v84;
            v88 = *(v41 + 56);
            v89 = (*(v41 + 48) + 16 * v84);
            v90 = *v89;
            v103 = v89[1];
            v104 = v90;
            v101 = 72 * v84;
            outlined init with copy of AttributedString._AttributeValue(v88 + 72 * v84, &v115);
            v91 = v103;
            v92 = (*(v42 + 48) + v102);
            *v92 = v104;
            v92[1] = v91;
            v93 = *(v42 + 56) + v101;
            *v93 = v115;
            v94 = v116;
            v95 = v117;
            v96 = v118;
            *(v93 + 64) = v119;
            *(v93 + 32) = v95;
            *(v93 + 48) = v96;
            *(v93 + 16) = v94;
          }

          v85 = v100;
          while (1)
          {
            v86 = v85 + 1;
            if (__OFADD__(v85, 1))
            {
              goto LABEL_54;
            }

            if (v86 >= v98)
            {
              break;
            }

            v87 = *(v99 + v86);
            ++v85;
            if (v87)
            {
              v105 = (v87 - 1) & v87;
              v100 = v86;
              v84 = __clz(__rbit64(v87)) | (v86 << 6);
              goto LABEL_51;
            }
          }
        }
      }

      v43 = *(v42 + 56) + 72 * v38;
      v115 = *v43;
      v45 = *(v43 + 32);
      v44 = *(v43 + 48);
      v46 = *(v43 + 64);
      v116 = *(v43 + 16);
      v117 = v45;
      v119 = v46;
      v118 = v44;
      specialized _NativeDictionary._delete(at:)(v38, v42);
      *v5 = v42;
      a1 = v39;
      v14 = v106;
    }

    else
    {
      v119 = 0;
      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
    }

LABEL_18:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v14, v16, &v115, v120);
    outlined destroy of TermOfAddress?(v120, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    outlined destroy of TermOfAddress?(&v115, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);

    v54 = *(v10 + 8);
    v54(a1, v9);
    return (v54)(v13, v9);
  }

  v105 = a1;
  v113[2] = v117;
  v113[3] = v118;
  v114 = v119;
  v113[0] = v115;
  v113[1] = v116;
  outlined init with copy of AttributedString._AttributeValue(v113, &v108);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = v14;
  v19 = v17;
  v20 = *v5;
  v106 = v18;
  v107 = v20;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v16);
  v23 = *(v20 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
LABEL_20:
    v98 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
    v56 = static _DictionaryStorage.copy(original:)();
    v27 = v56;
    if (!*(v20 + 16))
    {
      goto LABEL_36;
    }

    v57 = (v56 + 64);
    v58 = (v20 + 64);
    v59 = ((1 << *(v27 + 32)) + 63) >> 6;
    v97 = v20 + 64;
    if (v27 != v20 || v57 >= &v58[8 * v59])
    {
      memmove(v57, v58, 8 * v59);
    }

    v60 = 0;
    *(v27 + 16) = *(v20 + 16);
    v61 = 1 << *(v20 + 32);
    v62 = -1;
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    v63 = v62 & *(v20 + 64);
    v64 = ((v61 + 63) >> 6);
    v99 = v64;
    if (v63)
    {
      do
      {
        v65 = __clz(__rbit64(v63));
        v104 = (v63 - 1) & v63;
LABEL_33:
        v68 = v65 | (v60 << 6);
        v101 = 16 * v68;
        v69 = *(v20 + 56);
        v70 = (*(v20 + 48) + 16 * v68);
        v71 = *v70;
        v102 = v70[1];
        v103 = v71;
        v100 = 72 * v68;
        outlined init with copy of AttributedString._AttributeValue(v69 + 72 * v68, &v115);
        v72 = v102;
        v73 = (*(v27 + 48) + v101);
        *v73 = v103;
        v73[1] = v72;
        v74 = *(v27 + 56) + v100;
        *v74 = v115;
        v75 = v116;
        v76 = v117;
        v77 = v118;
        *(v74 + 64) = v119;
        *(v74 + 32) = v76;
        *(v74 + 48) = v77;
        *(v74 + 16) = v75;

        v64 = v99;
        v63 = v104;
      }

      while (v104);
    }

    v66 = v60;
    while (1)
    {
      v60 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v60 >= v64)
      {
        goto LABEL_36;
      }

      v67 = *(v97 + 8 * v60);
      ++v66;
      if (v67)
      {
        v65 = __clz(__rbit64(v67));
        v104 = (v67 - 1) & v67;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  LOBYTE(a4) = v22;
  if (*(v20 + 24) >= v26)
  {
    if (v19)
    {
      v27 = v20;
      goto LABEL_13;
    }

    goto LABEL_20;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, v19);
  v14 = v106;
  v27 = v107;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v106, v16);
  if ((a4 & 1) == (v28 & 1))
  {
    a1 = v105;
    if (a4)
    {
LABEL_6:
      v29 = *(v27 + 56) + 72 * v21;
      v115 = *v29;
      v30 = *(v29 + 16);
      v31 = *(v29 + 32);
      v32 = *(v29 + 48);
      v119 = *(v29 + 64);
      v117 = v31;
      v118 = v32;
      v116 = v30;
      v33 = v109;
      v34 = v110;
      v35 = v111;
      *(v29 + 64) = v112;
      *(v29 + 32) = v34;
      *(v29 + 48) = v35;
      *v29 = v108;
      *(v29 + 16) = v33;
      outlined destroy of AttributedString._AttributeValue(v113);
    }

    else
    {
      while (1)
      {
        *(v27 + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v47 = (*(v27 + 48) + 16 * v21);
        *v47 = v14;
        v47[1] = v16;
        v48 = *(v27 + 56) + 72 * v21;
        *v48 = v108;
        v49 = v109;
        v50 = v110;
        v51 = v111;
        *(v48 + 64) = v112;
        *(v48 + 32) = v50;
        *(v48 + 48) = v51;
        *(v48 + 16) = v49;
        v52 = *(v27 + 16);
        v25 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (!v25)
        {
          break;
        }

        __break(1u);
LABEL_36:

        v21 = v98;
LABEL_13:
        a1 = v105;
        v14 = v106;
        if (a4)
        {
          goto LABEL_6;
        }
      }

      *(v27 + 16) = v53;

      outlined destroy of AttributedString._AttributeValue(v113);
      v115 = 0u;
      v116 = 0u;
      v117 = 0u;
      v118 = 0u;
      v119 = 0;
    }

    *v5 = v27;
    goto LABEL_18;
  }

LABEL_55:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

unint64_t specialized closure #2 in Rope.builder<A>(removing:in:)(unint64_t result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = *result;
  v7 = *a3;
  if (*result)
  {
    result = 0;
    v8 = a2;
    while (1)
    {
      v9 = *v8;
      v8 += 3;
      v10 = v7 - v9;
      if (__OFSUB__(v7, v9))
      {
        break;
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

      if (v10 + 1 < 1)
      {
        goto LABEL_11;
      }

      ++result;
      v7 = v10;
      if (v6 == result)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = *a3;
LABEL_9:
  if (v10)
  {
    goto LABEL_25;
  }

  v7 = 0;
  result = v6;
LABEL_11:
  v11 = a5 - a4;
  if (__OFSUB__(a5, a4))
  {
    goto LABEL_23;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  if (result < v6)
  {
    v13 = &a2[3 * result];
    v14 = result;
    do
    {
      v16 = *v13;
      v13 += 3;
      v15 = v16;
      if (v16 >= v12)
      {
        break;
      }

      v17 = __OFSUB__(v12, v15);
      v12 -= v15;
      if (v17)
      {
        goto LABEL_22;
      }

      ++v14;
    }

    while (v6 != v14);
  }

  return result;
}

void (*protocol witness for Collection.subscript.read in conformance IndexSet.RangeView(void (**a1)(), void *a2))()
{
  v4 = *(v2 + 16);
  v5 = *(v4 + 24);
  result = [*(v4 + 16) rangeAtIndex_];
  v8 = (result + v7);
  v9 = __OFADD__(result, v7);
  if (v5)
  {
    if (v9)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v8 >= result)
    {
LABEL_10:
      if (v8 >= result)
      {
        *a1 = result;
        a1[1] = v8;
        return _NSBundleDeallocatingImmortalBundle;
      }

      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v9)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v8 >= result)
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

id NSExpression.init<A, B>(forKeyPath:)(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  _bridgeKeyPathToString(_:)(a1);
  v3 = String._bridgeToObjectiveCImpl()();

  v4 = [ObjCClassFromMetadata expressionForKeyPath_];
  swift_unknownObjectRelease();

  return v4;
}

SEL *_NSSwiftCalendar.init(coder:)(SEL *a1)
{
  v3 = v1;
  v262 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v5 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v6 = *(v5 + 16);
  v245 = a1;
  if (*(v6 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v8 & 1) != 0))
  {
    v246 = *(*(v6 + 56) + 16 * v7);
    v9 = *(*(v6 + 56) + 16 * v7);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 24));
    if (v9)
    {
      goto LABEL_22;
    }
  }

  else
  {
    os_unfair_lock_unlock((v5 + 24));
  }

  v10 = type metadata accessor for _CalendarGregorian();
  v11 = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian, type metadata accessor for _CalendarGregorian, &protocol conformance descriptor for _CalendarGregorian);
  v250[0] = 0;
  v254 = 0;
  v255 = 0;
  v260 = 0;
  v261 = 0;
  v258 = 0;
  v259 = 1;
  v12 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(v250, &v254, &v260, 0, 1, 0, 1, &v258);
  os_unfair_lock_lock((v5 + 24));
  v13 = *(v5 + 16);
  if (!*(v13 + 16) || (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v15 & 1) == 0))
  {
    a1 = v3;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v254 = *(v5 + 16);
    v18 = v254;
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(0);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (!v23)
    {
      v2 = v20;
      if (v18[3] < v24)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
        v25 = v254;
        v19 = specialized __RawDictionaryStorage.find<A>(_:)(0);
        if ((v2 & 1) == (v26 & 1))
        {
          goto LABEL_17;
        }

        v19 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_317;
      }

      v25 = v18;
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_315;
  }

  for (i = *(*(v13 + 56) + 16 * v14); ; *(&i + 1) = v11)
  {
    v246 = i;
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 24));

LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMR);
    v28 = swift_allocObject();
    *(v28 + 32) = 0;
    *(v28 + 16) = v246;
    v29 = OBJC_IVAR____NSSwiftCalendar__lock;
    *(v3 + OBJC_IVAR____NSSwiftCalendar__lock) = v28;
    v247 = v29;
    if (([(SEL *)a1 allowsKeyedCoding]& 1) != 0)
    {
      v30 = _sSo7NSCoderC10FoundationE12decodeObject2of6forKeyxSgxm_SStSo8NSObjectCRbzSo8NSCodingRzlFSo8NSStringC_Ttg5(0x746E6564692E534ELL, 0xED00007265696669);
      if (v30)
      {
        v31 = v30;
        isTaggedPointer = _objc_isTaggedPointer(v30);
        v33 = v31;
        v34 = v33;
        if (!isTaggedPointer)
        {
LABEL_39:
          LOBYTE(v260) = 0;
          v254 = 0;
          LOBYTE(v258) = 0;
          v250[0] = 0;
          IsCF = __CFStringIsCF();
          if (IsCF)
          {
            if (!v254)
            {

              goto LABEL_181;
            }

            if (v250[0] == 1)
            {
              if (v260)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              String.init<A>(_immortalCocoaString:count:encoding:)();
              goto LABEL_180;
            }

            if (v258)
            {
              if (v260 != 1)
              {
                IsCF = [v34 lengthOfBytesUsingEncoding_];
              }

              MEMORY[0x1EEE9AC00](IsCF);
              v112 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v114 = HIBYTE(v113) & 0xF;
              if ((v113 & 0x2000000000000000) == 0)
              {
                v114 = v112 & 0xFFFFFFFFFFFFLL;
              }

              if (v114)
              {
                goto LABEL_179;
              }
            }
          }

          else
          {
            v56 = v34;
            String.init(_nativeStorage:)();
            if (v57 || (v254 = [v56 length]) == 0)
            {

              goto LABEL_181;
            }
          }

          String.init(_cocoaString:)();
LABEL_180:

LABEL_181:
          v115 = _sSo7NSCoderC10FoundationE12decodeObject2of6forKeyxSgxm_SStSo8NSObjectCRbzSo8NSCodingRzlFSo8NSLocaleC_Ttg5(0x6C61636F6C2E534ELL, 0xE900000000000065);
          if (v115)
          {
            v116 = v115;
            type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSLocale, 0x1E695DF58);
            if ([v116 isKindOfClass_])
            {
              v117 = a1;
              a1 = v3;
              v244 = _sSo7NSCoderC10FoundationE12decodeObject2of6forKeyxSgxm_SStSo8NSObjectCRbzSo8NSCodingRzlFSo10NSTimeZoneC_Ttg5(0x7A656D69742E534ELL, 0xEB00000000656E6FLL);
              v243 = _sSo7NSCoderC10FoundationE12decodeObject2of6forKeyxSgxm_SStSo8NSObjectCRbzSo8NSCodingRzlFSo6NSDateC_Ttg5(0x72617473672E534ELL, 0xED00006574616474);
              v3 = &selRef_addAccessClaim_;
              v118 = [(SEL *)v117 containsValueForKey:String._bridgeToObjectiveCImpl()()];
              swift_unknownObjectRelease();
              if (v118)
              {
                v242 = [(SEL *)v117 decodeIntegerForKey:String._bridgeToObjectiveCImpl()()];
                swift_unknownObjectRelease();
                goto LABEL_193;
              }

LABEL_192:
              v242 = 0;
LABEL_193:
              v137 = [v117 v3[352]];
              swift_unknownObjectRelease();
              if (v137)
              {
                v138 = [(SEL *)v117 decodeIntegerForKey:String._bridgeToObjectiveCImpl()()];
                swift_unknownObjectRelease();
              }

              else
              {
                v138 = 0;
              }

              v139 = a1;
              v140 = [(SEL *)v117 error];
              v141 = v117;
              if (v140)
              {
                v142 = v140;

LABEL_214:
                goto LABEL_312;
              }

              v241 = v138;
              v143 = String._bridgeToObjectiveCImpl()();
              static Calendar._fromNSCalendarIdentifier(_:)(v143, &v254);
              swift_unknownObjectRelease();
              v144 = v254;
              if (v254 != 27)
              {
                v240 = v137 ^ 1;
                v163 = v244;
                if (v244)
                {
                  type metadata accessor for _NSSwiftTimeZone();
                  v164 = swift_dynamicCastClass();
                  if (v164)
                  {
                    v163 = *(v164 + OBJC_IVAR____NSSwiftTimeZone_timeZone);
                    v165 = *(v164 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
                    swift_unknownObjectRetain();
                  }

                  else
                  {
                    type metadata accessor for _TimeZoneBridged();
                    v212 = swift_allocObject();
                    *(v212 + 16) = v244;
                    v165 = lazy protocol witness table accessor for type _TimeZoneBridged and conformance _TimeZoneBridged(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged, &protocol conformance descriptor for _TimeZoneBridged);
                    v213 = v244;
                    v163 = v212;
                  }
                }

                else
                {
                  v165 = 0;
                }

                v214 = *(v139 + v247);

                os_unfair_lock_lock((v214 + 32));
                closure #1 in _NSSwiftCalendar.init(coder:)((v214 + 16), v144, v116, v163, v165, v242, v118 ^ 1, v241, v240, v243);
                os_unfair_lock_unlock((v214 + 32));

                v215 = String._bridgeToObjectiveCImpl()();

                v249.receiver = v139;
                v249.super_class = type metadata accessor for _NSSwiftCalendar();
                v216 = [(SEL *)&v249 initWithCheckedCalendarIdentifier:v215];
                swift_unknownObjectRelease();

                swift_unknownObjectRelease();
                if (!v216)
                {
                  return 0;
                }

                return v216;
              }

              v251[0] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
              v251[1] = v145;
              v251[5] = MEMORY[0x1E69E6158];
              v251[2] = 0xD00000000000001BLL;
              v251[3] = 0x800000018147E860;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
              v146 = static _DictionaryStorage.allocate(capacity:)();
              outlined init with copy of FloatingPointRoundingRule?(v251, &v254, &_sSS_yptMd, &_sSS_yptMR);

              outlined destroy of TermOfAddress?(v251, &_sSS_yptMd, &_sSS_yptMR);
              v147 = v254;
              v148 = v255;
              v149 = specialized __RawDictionaryStorage.find<A>(_:)(v254, v255);
              v151 = v150;

              if ((v151 & 1) == 0)
              {
                v146[(v149 >> 6) + 8] |= 1 << v149;
                v152 = (v146[6] + 16 * v149);
                *v152 = v147;
                v152[1] = v148;
                outlined init with take of Any(v256, (v146[7] + 32 * v149));
                v153 = v146[2];
                v23 = __OFADD__(v153, 1);
                v154 = v153 + 1;
                if (!v23)
                {
                  v146[2] = v154;
                  static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
                  v155 = objc_allocWithZone(NSError);
                  v156 = String._bridgeToObjectiveCImpl()();

                  v157 = [v155 initWithDomain:v156 code:4864 userInfo:_NativeDictionary.bridged()()];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v158 = [v157 domain];
                  v159 = static String._unconditionallyBridgeFromObjectiveC(_:)(v158);
                  v161 = v160;

                  if (v159 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v161 == v162)
                  {

LABEL_213:
                    [(SEL *)v141 failWithError:_swift_stdlib_bridgeErrorToNSError()];

                    swift_unknownObjectRelease();
                    goto LABEL_214;
                  }

                  v169 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v169)
                  {
                    goto LABEL_213;
                  }

LABEL_341:
                  __break(1u);
LABEL_342:
                  __break(1u);
                }

LABEL_340:
                __break(1u);
                goto LABEL_341;
              }

LABEL_339:
              __break(1u);
              goto LABEL_340;
            }
          }

          v252[0] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDebugDescription");
          v252[1] = v119;
          v252[5] = MEMORY[0x1E69E6158];
          v252[2] = 0xD00000000000001ALL;
          v252[3] = 0x800000018147E840;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
          v120 = static _DictionaryStorage.allocate(capacity:)();
          outlined init with copy of FloatingPointRoundingRule?(v252, &v254, &_sSS_yptMd, &_sSS_yptMR);

          outlined destroy of TermOfAddress?(v252, &_sSS_yptMd, &_sSS_yptMR);
          v121 = v254;
          v122 = v255;
          v123 = specialized __RawDictionaryStorage.find<A>(_:)(v254, v255);
          v125 = v124;

          if ((v125 & 1) == 0)
          {
            v120[(v123 >> 6) + 8] |= 1 << v123;
            v126 = (v120[6] + 16 * v123);
            *v126 = v121;
            v126[1] = v122;
            outlined init with take of Any(v256, (v120[7] + 32 * v123));
            v127 = v120[2];
            v23 = __OFADD__(v127, 1);
            v128 = v127 + 1;
            if (!v23)
            {
              v120[2] = v128;
              static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
              v129 = objc_allocWithZone(NSError);
              v130 = String._bridgeToObjectiveCImpl()();

              v117 = [v129 initWithDomain:v130 code:4864 userInfo:_NativeDictionary.bridged()()];
              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              v131 = [(SEL *)v117 domain];
              v132 = static String._unconditionallyBridgeFromObjectiveC(_:)(v131);
              v116 = v133;

              v134 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
              LOBYTE(v118) = v135;
              if (v132 == v134 && v116 == v135)
              {
                goto LABEL_258;
              }

              v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v136)
              {
                goto LABEL_311;
              }

              __break(1u);
              goto LABEL_192;
            }

            goto LABEL_335;
          }

LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
          goto LABEL_336;
        }

        TaggedPointerTag = _objc_getTaggedPointerTag(v33);
        if (!TaggedPointerTag)
        {
          goto LABEL_76;
        }

        if (TaggedPointerTag != 22)
        {
          if (TaggedPointerTag == 2)
          {
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            goto LABEL_181;
          }

          goto LABEL_39;
        }

        result = [v34 UTF8String];
        if (result)
        {
          String.init(utf8String:)(result);
          if (v65)
          {
            goto LABEL_179;
          }

          __break(1u);
LABEL_76:
          LOWORD(v258) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v66)
          {
            [v34 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_180;
          }

LABEL_179:

          goto LABEL_180;
        }

        goto LABEL_346;
      }

      v45 = _objc_isTaggedPointer(@"NSDebugDescription");
      v46 = @"NSDebugDescription";
      v47 = v46;
      if (!v45)
      {
        goto LABEL_51;
      }

      v48 = _objc_getTaggedPointerTag(v46);
      if (v48)
      {
        if (v48 != 22)
        {
          if (v48 == 2)
          {
            MEMORY[0x1EEE9AC00](v48);
            v49 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v51 = v50;

            goto LABEL_268;
          }

LABEL_51:
          LOBYTE(v260) = 0;
          v254 = 0;
          LOBYTE(v258) = 0;
          v250[0] = 0;
          v55 = __CFStringIsCF();
          if (v55)
          {
            if (!v254)
            {

              v49 = 0;
              v51 = 0xE000000000000000;
              goto LABEL_268;
            }

            if (v250[0] == 1)
            {
              if (v260)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v49 = String.init<A>(_immortalCocoaString:count:encoding:)();
              v51 = v91;
LABEL_268:
              v253[0] = v49;
              v253[1] = v51;
              v253[5] = MEMORY[0x1E69E6158];
              v253[2] = 0xD00000000000001DLL;
              v253[3] = 0x800000018147E820;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
              v191 = static _DictionaryStorage.allocate(capacity:)();
              outlined init with copy of FloatingPointRoundingRule?(v253, &v254, &_sSS_yptMd, &_sSS_yptMR);

              outlined destroy of TermOfAddress?(v253, &_sSS_yptMd, &_sSS_yptMR);
              v192 = v254;
              v193 = v255;
              v194 = specialized __RawDictionaryStorage.find<A>(_:)(v254, v255);
              v196 = v195;

              if (v196)
              {
LABEL_336:
                __break(1u);
                goto LABEL_337;
              }

              v191[(v194 >> 6) + 8] |= 1 << v194;
              v197 = (v191[6] + 16 * v194);
              *v197 = v192;
              v197[1] = v193;
              outlined init with take of Any(v256, (v191[7] + 32 * v194));
              v198 = v191[2];
              v23 = __OFADD__(v198, 1);
              v199 = v198 + 1;
              if (v23)
              {
LABEL_337:
                __break(1u);
LABEL_338:
                __break(1u);
                goto LABEL_339;
              }

              v191[2] = v199;
              v200 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
              v201 = @"NSCocoaErrorDomain";
              v202 = v201;
              if (v200)
              {
                v203 = _objc_getTaggedPointerTag(v201);
                if (v203)
                {
                  if (v203 != 22)
                  {
                    if (v203 == 2)
                    {
                      MEMORY[0x1EEE9AC00](v203);
                      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                      goto LABEL_307;
                    }

                    goto LABEL_275;
                  }

                  result = [(__CFString *)v202 UTF8String];
                  if (!result)
                  {
LABEL_349:
                    __break(1u);
                    return result;
                  }

                  String.init(utf8String:)(result);
                  if (v207)
                  {
                    goto LABEL_300;
                  }

                  __break(1u);
                }

                LOWORD(v258) = 0;
                _CFIndirectTaggedPointerStringGetContents();
                _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                if (!v208)
                {
                  [(__CFString *)v202 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();

                  swift_unknownObjectRelease();
                  swift_dynamicCast();
                  goto LABEL_307;
                }

                goto LABEL_300;
              }

LABEL_275:
              LOBYTE(v260) = 0;
              v254 = 0;
              LOBYTE(v258) = 0;
              v250[0] = 0;
              v204 = __CFStringIsCF();
              if (!v204)
              {
                v205 = v202;
                String.init(_nativeStorage:)();
                if (v206 || (v254 = [(__CFString *)v205 length]) == 0)
                {

                  goto LABEL_307;
                }

                goto LABEL_306;
              }

              if (v254)
              {
                if (v250[0] == 1)
                {
                  if (v260)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_307:
                  v217 = objc_allocWithZone(NSError);
                  v218 = String._bridgeToObjectiveCImpl()();

                  v219 = [v217 initWithDomain:v218 code:4864 userInfo:_NativeDictionary.bridged()()];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  v220 = [v219 domain];
                  v221 = static String._unconditionallyBridgeFromObjectiveC(_:)(v220);
                  v223 = v222;

                  if (v221 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v223 == v224)
                  {
                    goto LABEL_258;
                  }

                  v225 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v225)
                  {
                    goto LABEL_311;
                  }

                  goto LABEL_338;
                }

                if (v258)
                {
                  if (v260 != 1)
                  {
                    v204 = [(__CFString *)v202 lengthOfBytesUsingEncoding:4];
                  }

                  MEMORY[0x1EEE9AC00](v204);
                  v209 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                  v211 = HIBYTE(v210) & 0xF;
                  if ((v210 & 0x2000000000000000) == 0)
                  {
                    v211 = v209 & 0xFFFFFFFFFFFFLL;
                  }

                  if (v211)
                  {
                    goto LABEL_300;
                  }
                }

LABEL_306:
                String.init(_cocoaString:)();
                goto LABEL_307;
              }

LABEL_300:

              goto LABEL_307;
            }

            if (v258)
            {
              if (v260 != 1)
              {
                v55 = [(__CFString *)v47 lengthOfBytesUsingEncoding:4];
              }

              MEMORY[0x1EEE9AC00](v55);
              v188 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v51 = v189;
              v190 = HIBYTE(v189) & 0xF;
              if ((v189 & 0x2000000000000000) == 0)
              {
                v190 = v188 & 0xFFFFFFFFFFFFLL;
              }

              if (v190)
              {
                v49 = v188;

                goto LABEL_268;
              }
            }
          }

          else
          {
            v62 = v47;
            v63 = String.init(_nativeStorage:)();
            if (v64)
            {
              v49 = v63;
              v51 = v64;

              goto LABEL_268;
            }

            v254 = [(__CFString *)v62 length];
            if (!v254)
            {

              v49 = 0;
              v51 = 0xE000000000000000;
              goto LABEL_268;
            }
          }

          v49 = String.init(_cocoaString:)();
          v51 = v70;
          goto LABEL_268;
        }

        result = [(__CFString *)v47 UTF8String];
        if (!result)
        {
LABEL_348:
          __break(1u);
          goto LABEL_349;
        }

        v68 = String.init(utf8String:)(result);
        if (v69)
        {
LABEL_90:
          v49 = v68;
          v51 = v69;

          goto LABEL_268;
        }

        __break(1u);
      }

      LOWORD(v258) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v68 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v69)
      {
        [(__CFString *)v47 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v49 = v260;
        v51 = v261;
        goto LABEL_268;
      }

      goto LABEL_90;
    }

    v36 = _objc_isTaggedPointer(@"NSDebugDescription");
    v37 = @"NSDebugDescription";
    v38 = v37;
    if (v36)
    {
      v39 = _objc_getTaggedPointerTag(v37);
      switch(v39)
      {
        case 0:
          goto LABEL_62;
        case 0x16:
          result = [(__CFString *)v38 UTF8String];
          if (!result)
          {
            __break(1u);
            goto LABEL_344;
          }

          v59 = String.init(utf8String:)(result);
          if (v60)
          {
LABEL_63:
            v40 = v59;
            v42 = v60;

            v11 = 0;
            goto LABEL_105;
          }

          __break(1u);
LABEL_62:
          LOWORD(v258) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v59 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v60)
          {
            goto LABEL_63;
          }

          [(__CFString *)v38 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v11 = 0;
          v40 = v260;
          v42 = v261;
          goto LABEL_105;
        case 2:
          MEMORY[0x1EEE9AC00](v39);
          v11 = 0;
          v40 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v42 = v41;

          goto LABEL_105;
      }
    }

    LOBYTE(v260) = 0;
    v254 = 0;
    LOBYTE(v258) = 0;
    v250[0] = 0;
    v43 = __CFStringIsCF();
    if (v43)
    {
      v11 = v254;
      if (!v254)
      {

        v40 = 0;
        v42 = 0xE000000000000000;
        goto LABEL_105;
      }

      if (v250[0] == 1)
      {
        if (v260)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v40 = String.init<A>(_immortalCocoaString:count:encoding:)();
        v42 = v67;
        v11 = 0;
      }

      else
      {
        if ((v258 & 1) == 0)
        {
          goto LABEL_69;
        }

        if (v260 != 1)
        {
          v43 = [(__CFString *)v38 lengthOfBytesUsingEncoding:4];
        }

        MEMORY[0x1EEE9AC00](v43);
        v11 = 0;
        v71 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v42 = v72;
        v73 = HIBYTE(v72) & 0xF;
        if ((v72 & 0x2000000000000000) == 0)
        {
          v73 = v71 & 0xFFFFFFFFFFFFLL;
        }

        if (!v73)
        {

          goto LABEL_70;
        }

        v40 = v71;
      }
    }

    else
    {
      v52 = v38;
      v53 = String.init(_nativeStorage:)();
      if (v54)
      {
        v40 = v53;
        v42 = v54;

        v11 = 0;
        goto LABEL_105;
      }

      v254 = [(__CFString *)v52 length];
      if (v254)
      {
LABEL_69:
        v11 = 0;
LABEL_70:
        v40 = String.init(_cocoaString:)();
        v42 = v61;
        goto LABEL_105;
      }

      v40 = 0;
      v11 = 0;
      v42 = 0xE000000000000000;
    }

LABEL_105:
    v257[0] = v40;
    v257[1] = v42;
    v257[5] = MEMORY[0x1E69E6158];
    v257[2] = 0xD000000000000026;
    v257[3] = 0x800000018147E7F0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v12 = static _DictionaryStorage.allocate(capacity:)();
    v18 = &v254;
    outlined init with copy of FloatingPointRoundingRule?(v257, &v254, &_sSS_yptMd, &_sSS_yptMR);

    outlined destroy of TermOfAddress?(v257, &_sSS_yptMd, &_sSS_yptMR);
    v5 = v254;
    v10 = v255;
    v74 = specialized __RawDictionaryStorage.find<A>(_:)(v254, v255);
    v2 = v75;

    if ((v2 & 1) == 0)
    {
      break;
    }

LABEL_315:
    __break(1u);
LABEL_316:
    __break(1u);
LABEL_317:
    v243 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd, "nC)");
    v226 = static _DictionaryStorage.copy(original:)();
    v25 = v226;
    if (v18[2])
    {
      v227 = (v226 + 64);
      v228 = (v18 + 8);
      v229 = ((1 << *(v25 + 32)) + 63) >> 6;
      if (v25 != v18 || v227 >= &v228[8 * v229])
      {
        memmove(v227, v228, 8 * v229);
      }

      v230 = 0;
      v25[2] = v18[2];
      v231 = 1 << *(v18 + 32);
      v232 = -1;
      if (v231 < 64)
      {
        v232 = ~(-1 << v231);
      }

      v233 = v232 & v18[8];
      v234 = (v231 + 63) >> 6;
      v244 = v234;
      if (!v233)
      {
        goto LABEL_325;
      }

      while (1)
      {
        v235 = __clz(__rbit64(v233));
        for (j = (v233 - 1) & v233; ; j = (v237 - 1) & v237)
        {
          v238 = v235 | (v230 << 6);
          v239 = *(v18[7] + v238);
          *(v25[6] + v238) = *(v18[6] + v238);
          *(v25[7] + v238) = v239;
          swift_unknownObjectRetain();
          v234 = v244;
          v233 = j;
          if (j)
          {
            break;
          }

LABEL_325:
          v236 = v230;
          do
          {
            v230 = v236 + 1;
            if (__OFADD__(v236, 1))
            {
              goto LABEL_342;
            }

            if (v230 >= v234)
            {
              goto LABEL_332;
            }

            v237 = v18[v230 + 8];
            ++v236;
          }

          while (!v237);
          v235 = __clz(__rbit64(v237));
        }
      }
    }

LABEL_332:

    v19 = v243;
LABEL_17:
    v3 = a1;
    a1 = v245;
    if (v2)
    {
      v27 = v25[7] + 16 * v19;
      *v27 = v12;
      v27[1] = v11;
      swift_unknownObjectRelease();
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v19, 0, v12, v25, v10, v11);
    }

    *(v5 + 16) = v25;
    *&i = v12;
  }

  v12[(v74 >> 6) + 8] |= 1 << v74;
  v76 = (v12[6] + 16 * v74);
  *v76 = v5;
  v76[1] = v10;
  v19 = outlined init with take of Any(v256, (v12[7] + 32 * v74));
  v77 = v12[2];
  v23 = __OFADD__(v77, 1);
  v78 = v77 + 1;
  if (v23)
  {
    goto LABEL_316;
  }

  v12[2] = v78;
  v79 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v80 = @"NSCocoaErrorDomain";
  v81 = v80;
  if (!v79)
  {
    goto LABEL_112;
  }

  v82 = _objc_getTaggedPointerTag(v80);
  switch(v82)
  {
    case 0:
      goto LABEL_123;
    case 0x16:
      result = [(__CFString *)v81 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v86)
        {
          goto LABEL_138;
        }

        __break(1u);
LABEL_123:
        LOWORD(v258) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v87)
        {
          [(__CFString *)v81 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          goto LABEL_145;
        }

        goto LABEL_138;
      }

LABEL_344:
      __break(1u);
      goto LABEL_345;
    case 2:
      MEMORY[0x1EEE9AC00](v82);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_145;
  }

LABEL_112:
  LOBYTE(v260) = 0;
  v254 = 0;
  LOBYTE(v258) = 0;
  v250[0] = 0;
  v83 = __CFStringIsCF();
  if (!v83)
  {
    v84 = v81;
    String.init(_nativeStorage:)();
    if (v85 || (v254 = [(__CFString *)v84 length]) == 0)
    {

      goto LABEL_145;
    }

    goto LABEL_144;
  }

  if (!v254)
  {
LABEL_138:

    goto LABEL_145;
  }

  if (v250[0] != 1)
  {
    if (v258)
    {
      if (v260 != 1)
      {
        v83 = [(__CFString *)v81 lengthOfBytesUsingEncoding:4];
      }

      MEMORY[0x1EEE9AC00](v83);
      v88 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v90 = HIBYTE(v89) & 0xF;
      if ((v89 & 0x2000000000000000) == 0)
      {
        v90 = v88 & 0xFFFFFFFFFFFFLL;
      }

      if (v90)
      {
        goto LABEL_138;
      }
    }

LABEL_144:
    String.init(_cocoaString:)();
    goto LABEL_145;
  }

  if (v260)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_145:
  v92 = objc_allocWithZone(NSError);
  v93 = String._bridgeToObjectiveCImpl()();

  v94 = [v92 initWithDomain:v93 code:4864 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v95 = [v94 domain];
  if (!v95)
  {
    goto LABEL_159;
  }

  v96 = v95;
  v97 = _objc_isTaggedPointer(v95);
  v98 = v96;
  v99 = v98;
  if ((v97 & 1) == 0)
  {
    goto LABEL_151;
  }

  v100 = _objc_getTaggedPointerTag(v98);
  switch(v100)
  {
    case 0:
      goto LABEL_163;
    case 0x16:
      result = [v99 UTF8String];
      if (!result)
      {
LABEL_347:
        __break(1u);
        goto LABEL_348;
      }

      v108 = String.init(utf8String:)(result);
      if (v109)
      {
        goto LABEL_164;
      }

      __break(1u);
LABEL_163:
      LOWORD(v258) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v108 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v109)
      {
        [v99 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v101 = v260;
        v103 = v261;
        goto LABEL_220;
      }

LABEL_164:
      v101 = v108;
      v103 = v109;
LABEL_165:

      goto LABEL_220;
    case 2:
      MEMORY[0x1EEE9AC00](v100);
      v101 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v103 = v102;

      goto LABEL_221;
  }

LABEL_151:
  LOBYTE(v260) = 0;
  v254 = 0;
  LOBYTE(v258) = 0;
  v250[0] = 0;
  v104 = __CFStringIsCF();
  if (!v104)
  {
    v105 = v99;
    v106 = String.init(_nativeStorage:)();
    if (v107)
    {
      v101 = v106;
      v103 = v107;

      goto LABEL_221;
    }

    v254 = [v105 length];
    if (v254)
    {
      goto LABEL_218;
    }

LABEL_159:
    v101 = 0;
    v103 = 0xE000000000000000;
    goto LABEL_221;
  }

  if (!v254)
  {

    goto LABEL_159;
  }

  if (v250[0] != 1)
  {
    if (v258)
    {
      if (v260 != 1)
      {
        v104 = [v99 lengthOfBytesUsingEncoding_];
      }

      MEMORY[0x1EEE9AC00](v104);
      v166 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v103 = v167;
      v168 = HIBYTE(v167) & 0xF;
      if ((v167 & 0x2000000000000000) == 0)
      {
        v168 = v166 & 0xFFFFFFFFFFFFLL;
      }

      if (v168)
      {
        v101 = v166;
        goto LABEL_165;
      }
    }

LABEL_218:
    v110 = String.init(_cocoaString:)();
    goto LABEL_219;
  }

  if (v260)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  v110 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_219:
  v101 = v110;
  v103 = v111;
LABEL_220:

LABEL_221:
  v170 = v81;
  v171 = v170;
  if (!v79)
  {
LABEL_226:
    LOBYTE(v260) = 0;
    v254 = 0;
    LOBYTE(v258) = 0;
    v250[0] = 0;
    v176 = __CFStringIsCF();
    if (v176)
    {
      a1 = v245;
      if (v254)
      {
        if (v250[0] == 1)
        {
          if (v260)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v182 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_255;
        }

        if (v258)
        {
          if (v260 != 1)
          {
            v176 = [(__CFString *)v171 lengthOfBytesUsingEncoding:4];
          }

          MEMORY[0x1EEE9AC00](v176);
          v184 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v175 = v185;
          v186 = HIBYTE(v185) & 0xF;
          if ((v185 & 0x2000000000000000) == 0)
          {
            v186 = v184 & 0xFFFFFFFFFFFFLL;
          }

          if (v186)
          {
            v173 = v184;

            goto LABEL_256;
          }
        }

LABEL_254:
        v182 = String.init(_cocoaString:)();
LABEL_255:
        v173 = v182;
        v175 = v183;
        goto LABEL_256;
      }
    }

    else
    {
      v177 = v171;
      v178 = String.init(_nativeStorage:)();
      a1 = v245;
      if (v179)
      {
        v173 = v178;
        v175 = v179;

        goto LABEL_256;
      }

      v254 = [(__CFString *)v177 length];
      if (v254)
      {
        goto LABEL_254;
      }
    }

    v173 = 0;
    v175 = 0xE000000000000000;
    goto LABEL_256;
  }

  v172 = _objc_getTaggedPointerTag(v170);
  if (!v172)
  {
    goto LABEL_238;
  }

  if (v172 == 22)
  {
    result = [(__CFString *)v171 UTF8String];
    if (result)
    {
      v180 = String.init(utf8String:)(result);
      a1 = v245;
      if (v181)
      {
LABEL_239:
        v173 = v180;
        v175 = v181;

        goto LABEL_256;
      }

      __break(1u);
LABEL_238:
      LOWORD(v258) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v180 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      a1 = v245;
      if (!v181)
      {
        [(__CFString *)v171 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v173 = v260;
        v175 = v261;
        goto LABEL_256;
      }

      goto LABEL_239;
    }

LABEL_345:
    __break(1u);
LABEL_346:
    __break(1u);
    goto LABEL_347;
  }

  if (v172 != 2)
  {
    goto LABEL_226;
  }

  MEMORY[0x1EEE9AC00](v172);
  v173 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v175 = v174;

  a1 = v245;
LABEL_256:
  if (v101 == v173 && v103 == v175)
  {
LABEL_258:

    goto LABEL_311;
  }

  v187 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v187 & 1) == 0)
  {
    __break(1u);
    goto LABEL_334;
  }

LABEL_311:
  [(SEL *)a1 failWithError:_swift_stdlib_bridgeErrorToNSError()];
  swift_unknownObjectRelease();

LABEL_312:

  type metadata accessor for _NSSwiftCalendar();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t Substring._unlocalizedCompare(other:options:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9)
{
  if (a5)
  {
    v14 = a5;
    if ((a5 & 2) != 0)
    {
      v15 = a1;
      v16 = a2;
      result = specialized _StringCompareOptionsIterable._compare<A>(_:toHalfWidth:diacriticsInsensitive:caseFold:numeric:forceOrdering:)(a1, a2, a3, a4, BYTE1(a5) & 1, (a5 & 0x80) != 0, a5 & 1, (a5 >> 6) & 1, (a5 & 0x200) != 0, a6, a7, a8, a9);
      if ((v14 & 0x200) == 0)
      {
        return result;
      }
    }

    else
    {
      v15 = a1;
      v16 = a2;
      result = specialized _StringCompareOptionsIterable._compare<A>(_:toHalfWidth:diacriticsInsensitive:caseFold:numeric:forceOrdering:)(a1, a2, a3, a4, BYTE1(a5) & 1, (a5 & 0x80) != 0, a5 & 1, (a5 & 0x40) != 0, (a5 & 0x200) != 0, a6, a7, a8, a9);
      if ((v14 & 0x200) == 0)
      {
        return result;
      }
    }

    if (!result)
    {

      return Substring.UnicodeScalarView._compare(_:)(v15, v16, a3, a4, a6, a7, a8, a9);
    }
  }

  else
  {
    if (a8 == a3)
    {
      v18 = a9 == a4 && a6 >> 16 == a1 >> 16;
      if (v18 && a7 >> 16 == a2 >> 16)
      {
        return 0;
      }
    }

    if (_stringCompareInternal(_:_:_:_:expecting:)())
    {
      return -1;
    }

    return (_stringCompareInternal(_:_:_:_:expecting:)() & 1) != 0;
  }

  return result;
}

uint64_t AttributeContainer.subscript.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

char *AttributeContainer.Builder.callAsFunction(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v117 = a1;
  v118 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v108 - v15;
  v18 = *v4;
  v17 = v4[1];
  *a3 = v18;
  a3[1] = v17;
  v119 = a3;
  v19 = *(AssociatedTypeWitness - 8);
  (*(v19 + 16))(&v108 - v15, v117, AssociatedTypeWitness, v14);
  (*(v19 + 56))(v16, 0, 1, AssociatedTypeWitness);
  v116 = v10;
  v117 = v9;
  v20 = *(v10 + 16);
  v114 = v16;
  v20(v12, v16, v9);
  v21 = v118;
  v22 = v118 + 24;
  v23 = *(v118 + 24);

  v24 = v23(v7, v21);
  v26 = v25;
  v115 = v12;
  static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v12, v7, v21, v133);
  outlined init with copy of AttributedString._AttributeValue?(v133, &v128);
  if (!*(&v129 + 1))
  {
LABEL_6:
    v38 = v24;
    v24 = v119;
    outlined destroy of TermOfAddress?(&v128, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
    v28 = v38;
    v39 = specialized __RawDictionaryStorage.find<A>(_:)(v38, v26);
    if ((v40 & 1) == 0)
    {
      v132 = 0;
      v130 = 0u;
      v131 = 0u;
      v128 = 0u;
      v129 = 0u;
      v47 = v116;
      v46 = v117;
      goto LABEL_15;
    }

    v9 = v39;
    v27 = v24;
    v22 = *v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v41 = v22;
LABEL_9:

      v42 = *(v41 + 56) + 72 * v9;
      v128 = *v42;
      v44 = *(v42 + 32);
      v43 = *(v42 + 48);
      v45 = *(v42 + 64);
      v129 = *(v42 + 16);
      v130 = v44;
      v132 = v45;
      v131 = v43;
      specialized _NativeDictionary._delete(at:)(v9, v41);
      *v27 = v41;
      v47 = v116;
      v46 = v117;
LABEL_15:
      v56 = v114;
      v55 = v115;
      v24 = v28;
LABEL_36:
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(v24, v26, &v128, v133);
      outlined destroy of TermOfAddress?(v133, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);
      outlined destroy of TermOfAddress?(&v128, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd, &_s10Foundation16AttributedStringV15_AttributeValueVSgMR);

      v86 = *(v47 + 8);
      v86(v55, v46);
      return (v86)(v56, v46);
    }

    goto LABEL_38;
  }

  v126[2] = v130;
  v126[3] = v131;
  v127 = v132;
  v126[0] = v128;
  v126[1] = v129;
  outlined init with copy of AttributedString._AttributeValue(v126, &v121);
  v27 = v119;
  v28 = *v119;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v120 = v28;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v26);
  v32 = *(v28 + 16);
  v33 = (v31 & 1) == 0;
  v34 = __OFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
    goto LABEL_17;
  }

  v9 = v31;
  if (*(v28 + 24) >= v35)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v36 = v28;
      goto LABEL_12;
    }

LABEL_17:
    v110 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
    v57 = static _DictionaryStorage.copy(original:)();
    v36 = v57;
    if (*(v28 + 16))
    {
      result = (v57 + 64);
      v59 = (v28 + 64);
      v60 = ((1 << *(v36 + 32)) + 63) >> 6;
      v109 = v28 + 64;
      if (v36 != v28 || result >= &v59[8 * v60])
      {
        result = memmove(result, v59, 8 * v60);
      }

      v61 = 0;
      *(v36 + 16) = *(v28 + 16);
      v62 = 1 << *(v28 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v64 = v63 & *(v28 + 64);
      v65 = (v62 + 63) >> 6;
      v111 = v24;
      v112 = v65;
      if (v64)
      {
        do
        {
          v66 = __clz(__rbit64(v64));
          v118 = (v64 - 1) & v64;
LABEL_30:
          v69 = v66 | (v61 << 6);
          v22 = 16 * v69;
          v70 = *(v28 + 56);
          v71 = (*(v28 + 48) + 16 * v69);
          v72 = v71[1];
          v113 = *v71;
          v73 = 72 * v69;
          outlined init with copy of AttributedString._AttributeValue(v70 + 72 * v69, &v128);
          v74 = (*(v36 + 48) + v22);
          *v74 = v113;
          v74[1] = v72;
          v75 = *(v36 + 56) + v73;
          *v75 = v128;
          v76 = v129;
          v77 = v130;
          v78 = v131;
          *(v75 + 64) = v132;
          *(v75 + 32) = v77;
          *(v75 + 48) = v78;
          *(v75 + 16) = v76;

          v24 = v111;
          v65 = v112;
          v64 = v118;
        }

        while (v118);
      }

      v67 = v61;
      while (1)
      {
        v61 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          break;
        }

        if (v61 >= v65)
        {
          goto LABEL_32;
        }

        v68 = *(v109 + 8 * v61);
        ++v67;
        if (v68)
        {
          v66 = __clz(__rbit64(v68));
          v118 = (v68 - 1) & v68;
          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_55;
    }

LABEL_32:

    v30 = v110;
    if (v9)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, isUniquelyReferenced_nonNull_native);
  v36 = v120;
  v30 = specialized __RawDictionaryStorage.find<A>(_:)(v24, v26);
  if ((v9 & 1) != (v37 & 1))
  {
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    goto LABEL_6;
  }

LABEL_12:
  if (v9)
  {
LABEL_13:
    v48 = *(v36 + 56) + 72 * v30;
    v128 = *v48;
    v49 = *(v48 + 16);
    v50 = *(v48 + 32);
    v51 = *(v48 + 48);
    v132 = *(v48 + 64);
    v130 = v50;
    v131 = v51;
    v129 = v49;
    v52 = v122;
    v53 = v123;
    v54 = v124;
    *(v48 + 64) = v125;
    *(v48 + 32) = v53;
    *(v48 + 48) = v54;
    *v48 = v121;
    *(v48 + 16) = v52;
    outlined destroy of AttributedString._AttributeValue(v126);
LABEL_35:
    *v27 = v36;
    v47 = v116;
    v46 = v117;
    v56 = v114;
    v55 = v115;
    goto LABEL_36;
  }

LABEL_33:
  *(v36 + 8 * (v30 >> 6) + 64) |= 1 << v30;
  v79 = (*(v36 + 48) + 16 * v30);
  *v79 = v24;
  v79[1] = v26;
  v80 = *(v36 + 56) + 72 * v30;
  *v80 = v121;
  v81 = v122;
  v82 = v123;
  v83 = v124;
  *(v80 + 64) = v125;
  *(v80 + 32) = v82;
  *(v80 + 48) = v83;
  *(v80 + 16) = v81;
  v84 = *(v36 + 16);
  v34 = __OFADD__(v84, 1);
  v85 = v84 + 1;
  if (!v34)
  {
    *(v36 + 16) = v85;

    outlined destroy of AttributedString._AttributeValue(v126);
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v132 = 0;
    goto LABEL_35;
  }

  __break(1u);
LABEL_38:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd, &_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMR);
  v87 = static _DictionaryStorage.copy(original:)();
  v41 = v87;
  if (!*(v22 + 16))
  {
LABEL_53:

    goto LABEL_9;
  }

  result = (v87 + 64);
  v88 = ((1 << *(v41 + 32)) + 63) >> 6;
  if (v41 != v22 || result >= v22 + 64 + 8 * v88)
  {
    result = memmove(result, (v22 + 64), 8 * v88);
  }

  v89 = 0;
  *(v41 + 16) = *(v22 + 16);
  v90 = 1 << *(v22 + 32);
  v91 = -1;
  if (v90 < 64)
  {
    v91 = ~(-1 << v90);
  }

  v118 = v91 & *(v22 + 64);
  v109 = (v90 + 63) >> 6;
  v110 = v22 + 64;
  for (i = v118; v118; i = v118)
  {
    v93 = __clz(__rbit64(i));
    v118 = (i - 1) & i;
LABEL_51:
    v96 = v93 | (v89 << 6);
    v97 = 16 * v96;
    v98 = *(v22 + 56);
    v99 = (*(v22 + 48) + 16 * v96);
    v100 = *v99;
    v112 = v99[1];
    v113 = v100;
    v101 = 72 * v96;
    outlined init with copy of AttributedString._AttributeValue(v98 + 72 * v96, &v128);
    v102 = (*(v41 + 48) + v97);
    v103 = v112;
    *v102 = v113;
    v102[1] = v103;
    v104 = *(v41 + 56) + v101;
    *v104 = v128;
    v105 = v129;
    v106 = v130;
    v107 = v131;
    *(v104 + 64) = v132;
    *(v104 + 32) = v106;
    *(v104 + 48) = v107;
    *(v104 + 16) = v105;
  }

  v94 = v89;
  v27 = v24;
  while (1)
  {
    v89 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
      break;
    }

    if (v89 >= v109)
    {
      goto LABEL_53;
    }

    v95 = *(v110 + 8 * v89);
    ++v94;
    if (v95)
    {
      v93 = __clz(__rbit64(v95));
      v118 = (v95 - 1) & v95;
      goto LABEL_51;
    }
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t _CalendarAutoupdating.date(from:)@<X0>(void *__src@<X0>, uint64_t a2@<X8>)
{
  memcpy(v44, __src, sizeof(v44));
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v3 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v3 + 32));
  if (!v4)
  {
    v32 = a2;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v6 = static LocaleCache.cache;
    v31 = *(&static LocaleCache.cache + 8);
    v7 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v9 = *(v7 + 16);
    v8 = *(v7 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v7 + 32));
    if (!v9)
    {
      *&v37[0] = v6;
      *(v37 + 8) = v31;
      LocaleCache.preferences()(v33);
      v11 = v10;
      type metadata accessor for _LocaleICU();
      v8 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
      v42 = v33[6];
      v43[0] = v33[7];
      *(v43 + 12) = *(&v33[7] + 12);
      v38 = v33[2];
      v39 = v33[3];
      v40 = v33[4];
      v41 = v33[5];
      v37[0] = v33[0];
      v37[1] = v33[1];
      swift_allocObject();
      outlined init with copy of LocalePreferences(v33, v36);
      v12 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v37, 0);
      if (v11)
      {
        MEMORY[0x1EEE9AC00](v12);
        os_unfair_lock_lock((v7 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v7 + 16), v37);
        os_unfair_lock_unlock((v7 + 32));
        outlined destroy of LocalePreferences(v33);

        v8 = *(&v37[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(v33);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v8 + 200))(v33, ObjectType, v8);
    swift_unknownObjectRelease();
    v14 = v33[0];
    if (LOBYTE(v33[0]) && LOBYTE(v33[0]) != 7)
    {
      *&v31 = type metadata accessor for _CalendarICU();
      v15 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v16 = type metadata accessor for _CalendarICU;
      v17 = &protocol conformance descriptor for _CalendarICU;
    }

    else
    {
      *&v31 = type metadata accessor for _CalendarGregorian();
      v15 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v16 = type metadata accessor for _CalendarGregorian;
      v17 = &protocol conformance descriptor for _CalendarGregorian;
    }

    v18 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v15, 255, v16, v17);
    v35 = v14;
    v34[0] = 0;
    v34[1] = 0;
    v19 = static LocaleCache.cache;
    v30 = *(&static LocaleCache.cache + 8);
    v20 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v20 + 32));
    if (!v22)
    {
      v29[1] = 0;
      *&v37[0] = v19;
      *(v37 + 8) = v30;
      LocaleCache.preferences()(v33);
      v24 = v23;
      type metadata accessor for _LocaleICU();
      v21 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU, &protocol conformance descriptor for _LocaleICU);
      v42 = v33[6];
      v43[0] = v33[7];
      *(v43 + 12) = *(&v33[7] + 12);
      v38 = v33[2];
      v39 = v33[3];
      v40 = v33[4];
      v41 = v33[5];
      v37[0] = v33[0];
      v37[1] = v33[1];
      swift_allocObject();
      outlined init with copy of LocalePreferences(v33, v36);
      v25 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v37, 0);
      v22 = v25;
      if (v24)
      {
        *&v30 = v29;
        MEMORY[0x1EEE9AC00](v25);
        os_unfair_lock_lock((v20 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v20 + 16), v37);
        os_unfair_lock_unlock((v20 + 32));
        outlined destroy of LocalePreferences(v33);

        v21 = *(&v37[0] + 1);
        v22 = *&v37[0];
      }

      else
      {
        outlined destroy of LocalePreferences(v33);
      }
    }

    *&v33[0] = v22;
    *(&v33[0] + 1) = v21;
    *&v37[0] = 0;
    BYTE8(v37[0]) = 1;
    v26 = (*(v18 + 16))(&v35, v34, v33, 0, 1, 0, 1, v37, v31, v18);
    MEMORY[0x1EEE9AC00](v26);
    os_unfair_lock_lock((v3 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v3 + 16), v33);
    os_unfair_lock_unlock((v3 + 32));
    swift_unknownObjectRelease();
    v5 = *(&v33[0] + 1);
  }

  v27 = swift_getObjectType();
  memcpy(v33, v44, 0x11BuLL);
  (*(v5 + 176))(v33, v27, v5);
  return swift_unknownObjectRelease();
}

Foundation::DateInterval __swiftcall DateInterval.init(start:end:)(Foundation::Date start, Foundation::Date end)
{
  v5 = *v2;
  v6 = *v3;
  if (*v3 < *v2)
  {
    __break(1u);
  }

  else
  {
    v6 = v6 - v5;
    *v4 = v5;
    v4[1] = v6;
  }

  result.duration = v6;
  result.start = *&v5;
  return result;
}

double DateInterval.end.getter@<D0>(double *a1@<X8>)
{
  result = *v1 + v1[1];
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Calendar(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v2 + 120))(v5, ObjectType, v2);
  return Hasher._finalize()();
}

void _CalendarGregorian.hash(into:)(uint64_t a1)
{
  MEMORY[0x1865CD060](*(v1 + 88));
  v3 = *(v1 + 120);
  ObjectType = swift_getObjectType();
  v5 = *(v3 + 120);
  swift_unknownObjectRetain();
  v5(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  v6 = _CalendarGregorian.firstWeekday.getter();
  MEMORY[0x1865CD060](v6);
  if (*(v1 + 152) == 1)
  {
    if (*(v1 + 96))
    {
      v7 = *(v1 + 104);
      v8 = swift_getObjectType();
      v9 = *(v7 + 344);
      swift_unknownObjectRetain();
      v10 = v9(v8, v7);
      swift_unknownObjectRelease();
      v11 = v10;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = *(v1 + 144);
  }

  MEMORY[0x1865CD060](v11);
  if (*(v1 + 96))
  {
    v12 = *(v1 + 104);
    v13 = swift_getObjectType();
    v14 = *(v12 + 64);
    swift_unknownObjectRetain();
    v14(v13, v12);
    swift_unknownObjectRelease();
  }

  String.hash(into:)();

  Hasher._combine(_:)(0);
  Hasher._combine(_:)(0);
}

uint64_t Date.FormatStyle.hour(_:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(v2 + 16);
  v25[0] = *v2;
  v25[1] = v4;
  v5 = *(v2 + 80);
  v28 = *(v2 + 64);
  v29 = v5;
  v30[0] = *(v2 + 96);
  *(v30 + 10) = *(v2 + 106);
  v6 = *(v2 + 48);
  v26 = *(v2 + 32);
  v27 = v6;
  v7 = v25[0];
  v8 = *(&v26 + 1);
  v9 = v26;
  v10 = v27;
  if ((v26 & 0xFF000000000000) == 0x3000000000000)
  {
    if (v3 == 14)
    {
      v17 = *(v2 + 66);
      v18 = *(v2 + 82);
      v19 = *(v2 + 98);
      v20 = *(v2 + 114);
      v16 = *(v2 + 50);
      v14[0] = v25[0];
      v14[1] = v4;
      v14[2] = v26;
      v15 = v27;
      v11 = a2;
      Date.FormatStyle.symbols.getter(v21);
      a2 = v11;
      v7 = v21[0];
      v4 = v21[1];
      v9 = v22;
      v8 = v23;
      v10 = v24;
      v12 = v22 & 0xFFFFFFFFFFFF0000;
      if ((v22 & 0xFF000000000000) == 0x3000000000000)
      {
        LOBYTE(v3) = BYTE5(v22);
      }

      else
      {
        LOBYTE(v3) = 14;
      }
    }

    else
    {
      v8 = 0;
      v12 = 0x2020E0906030000;
      LOBYTE(v14[0]) = 1;
      v9 = 0x2020E0906030100;
      v4 = xmmword_181223220;
      v7 = xmmword_18121B8E0;
      v10 = 3327;
    }
  }

  else
  {
    v12 = v26;
  }

  *a2 = v7;
  *(a2 + 16) = v4;
  *(a2 + 32) = v12 & 0xFFFF000000000000 | (v3 << 40) | v9 & 0xFFFFFFFFFFLL;
  *(a2 + 40) = v8;
  *(a2 + 48) = v10;
  *(a2 + 66) = *(v2 + 66);
  *(a2 + 82) = *(v2 + 82);
  *(a2 + 98) = *(v2 + 98);
  *(a2 + 114) = *(v2 + 114);
  *(a2 + 50) = *(v2 + 50);
  return outlined init with copy of Date.FormatStyle(v25, v14);
}

uint64_t NSKeyValueObservedChange.oldValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t AttributedStringProtocol.range<A>(of:options:locale:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, _OWORD *a7@<X8>)
{
  *&v154 = a6;
  *&v155 = a4;
  v151 = a2;
  v152 = a3;
  *&v153 = a1;
  v150 = a7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GSgMd, &_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v134 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v134 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GMd, &_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GMR);
  v146 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v134 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v134 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGSgMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGSgMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v134 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v27 = *(a5 - 8);
  v36 = MEMORY[0x1EEE9AC00](v28);
  v38 = &v134 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *v152;
  v148 = v30;
  v149 = v7;
  v147 = v39;
  if (!v39)
  {
    v152 = v23;
    v142 = v35;
    v143 = v15;
    v137 = v20;
    v138 = v34;
    v136 = v17;
    v139 = v14;
    v140 = v11;
    *&v144 = v32;
    v145 = v33;
    v43 = v29;
    v44 = v155;
    v45 = v31;
    (*(v30 + 56))(&v161, v155, v36);
    v158 = v163;
    v159 = v164;
    v160 = v165;
    v156 = v161;
    v157 = v162;
    lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
    v46 = Substring.init<A>(_:)();
    v48 = v47;
    v147 = v49;
    v51 = v50;
    (*(v27 + 16))(v38, v153, v45);
    v52 = Substring.init<A>(_:)();
    v56 = v55;
    LOBYTE(v23) = v151;
    if ((v151 & 0x400) == 0)
    {
      if ((v46 ^ v48) < 0x4000 || !((v52 ^ v53) >> 14))
      {

        goto LABEL_23;
      }

      v134 = v48;
      v135 = v46;
      v93 = (v151 >> 8) & 1;
      if ((v151 & 2) != 0)
      {
        specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v52, v53, v54, v55, v93, (v151 & 0x80) != 0, v151 & 1, (v151 >> 3) & 1, (v151 & 4) != 0, v46, v48, v147, v51);
      }

      else
      {
        specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v52, v53, v54, v55, v93, (v151 & 0x80) != 0, v151 & 1, (v151 & 8) != 0, (v151 & 4) != 0, v46, v48, v147, v51);
      }

      v98 = v94;

      if (v98)
      {
        goto LABEL_23;
      }

LABEL_50:

      v109 = Substring.UTF8View.distance(from:to:)();

      v110 = Substring.UTF8View.distance(from:to:)();

      v111 = v148;
      AttributedStringProtocol._utf8Index(at:)(v109, v44, v148, &v156);
      v154 = v157;
      v155 = v156;
      v112 = v158;
      result = AttributedStringProtocol._utf8Index(at:)(v110, v44, v111, v170);
      v113 = *v170;
      if (*v170 >> 10 >= v155 >> 10)
      {
        v114 = *&v170[8];
        v115 = *&v170[24];
        v116 = v150;
        v117 = v154;
        *v150 = v155;
        v116[1] = v117;
        *(v116 + 4) = v112;
        *(v116 + 5) = v113;
        v116[3] = v114;
        v116[4] = v115;
        return result;
      }

      goto LABEL_69;
    }

    v134 = v48;
    v135 = v46;
    v141 = v51;
    v57 = v52;
    v58 = v53;
    v59 = v54;
    if (one-time initialization token for cache == -1)
    {
LABEL_12:
      v60 = static RegexPatternCache.cache;

      v61 = MEMORY[0x1865CAE80](v57, v58, v59, v56);
      MEMORY[0x1EEE9AC00](v61);
      os_unfair_lock_lock((v60 + 24));
      v62 = v152;
      partial apply for closure #1 in RegexPatternCache.regex(for:caseInsensitive:)((v60 + 16), v152);
      *&v154 = v56;
      os_unfair_lock_unlock((v60 + 24));

      v87 = v145;
      v88 = v43;
      v89 = (*(v145 + 48))(v62, 1, v43);
      if (v89 == 1)
      {

        v90 = &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGSgMd;
        v91 = &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGSgMR;
        v92 = v62;
LABEL_47:
        result = outlined destroy of TermOfAddress?(v92, v90, v91);
        goto LABEL_24;
      }

      (*(v87 + 32))(v144, v62, v43);
      if ((v23 & 8) != 0)
      {
        lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Regex<AnyRegexOutput> and conformance Regex<A>, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR, MEMORY[0x1E69E9290]);
        v99 = v142;
        dispatch thunk of RegexComponent.regex.getter();
        result = v135;
        if (v134 >> 14 < v135 >> 14)
        {
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        Substring.subscript.getter();
        v100 = v139;
        Regex.prefixMatch(in:)();
        v44 = v155;
        v101 = v146;
        v105 = *(v145 + 8);
        v105(v99, v88);

        v106 = v143;
        v107 = (*(v101 + 48))(v100, 1, v143);
        if (v107 == 1)
        {

          v105(v144, v88);
          v90 = &_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GSgMd;
          v91 = &_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GSgMR;
          v92 = v100;
          goto LABEL_47;
        }

        (*(v101 + 32))(v137, v100, v106);
        Regex.Match.range.getter();

        (*(v101 + 8))(v137, v106);
        v105(v144, v88);
      }

      else
      {
        result = v135;
        if (v134 >> 14 < v135 >> 14)
        {
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        Substring.subscript.getter();
        lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Regex<AnyRegexOutput> and conformance Regex<A>, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMd, &_s17_StringProcessing5RegexVyAA03AnyC6OutputVGMR, MEMORY[0x1E69E9290]);
        v95 = v138;
        dispatch thunk of RegexComponent.regex.getter();
        v96 = v140;
        Regex.firstMatch(in:)();
        v97 = v143;
        v102 = *(v145 + 8);
        v102(v95, v43);

        v103 = v146;
        v104 = (*(v146 + 48))(v96, 1, v97);
        if (v104 == 1)
        {

          v102(v144, v43);
          v90 = &_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GSgMd;
          v91 = &_s17_StringProcessing5RegexV5MatchVyAA03AnyC6OutputV_GSgMR;
          v92 = v96;
          goto LABEL_47;
        }

        v108 = v136;
        (*(v103 + 32))(v136, v96, v97);
        Regex.Match.range.getter();

        (*(v103 + 8))(v108, v97);
        v102(v144, v43);
        v44 = v155;
      }

      goto LABEL_50;
    }

LABEL_67:
    swift_once();
    goto LABEL_12;
  }

  v152 = *(v152 + 1);
  v40 = v155;
  if (v155 == &type metadata for AttributedString)
  {
    v42 = *v149;

    v41 = v148;
  }

  else
  {
    v41 = v148;
    if (v155 == &type metadata for AttributedSubstring)
    {
      v42 = *v149;
    }

    else
    {
      (*(v148 + 56))(&v161, v155, v148, v36);
      v42 = v161;
    }
  }

  v63 = *(v42 + 24);
  v64 = *(v42 + 56);
  v172[1] = *(v42 + 40);
  v172[2] = v64;
  v172[0] = v63;
  v153 = *(v42 + 40);
  v144 = *(v42 + 24);
  v65 = *(v42 + 56);
  v145 = *(v42 + 64);
  v146 = v65;
  v66 = *(v42 + 24);
  v174 = v65;
  v67 = *(v42 + 40);
  v173[0] = v66;
  v173[1] = v67;
  outlined init with copy of Rope<BigString._Chunk>._Node?(v173, &v161);

  (*(v41 + 32))(&v161, v40, v41);
  (*(v41 + 40))(&v156, v40, v41);
  *v170 = v161;
  *&v170[16] = v162;
  *&v170[32] = v156;
  v171 = v157;
  BigString.subscript.getter();
  v68 = MEMORY[0x1865CAF70](&v161);
  v70 = v69;
  *&v156 = v68;
  *(&v156 + 1) = v69;
  v71 = v68;
  StringProtocol._ephemeralString.getter();
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v72 = String._bridgeToObjectiveCImpl()();

  v73 = String._bridgeToObjectiveCImpl()();

  if ((v70 & 0x2000000000000000) != 0)
  {
    v74 = HIBYTE(v70) & 0xF;
  }

  else
  {
    v74 = v71 & 0xFFFFFFFFFFFFLL;
  }

  if ((v70 & 0x1000000000000000) != 0)
  {
    v75 = (v71 >> 59) & 1;
  }

  else
  {
    v75 = 1;
  }

  *&v154 = v75;
  v143 = v74;
  v76 = &v156;
  result = StringProtocol._toUTF16Offsets(_:)();
  v79 = v78 - result;
  if (__OFSUB__(v78, result))
  {
    __break(1u);
  }

  else
  {
    v80 = result;
    ObjectType = swift_getObjectType();
    v82 = (*(v152 + 61))(ObjectType);
    v83 = [v72 rangeOfString:v73 options:v151 range:v80 locale:{v79, v82}];
    v76 = v84;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    if (v83 == 0x7FFFFFFFFFFFFFFFLL)
    {
      outlined destroy of BigString(v172);
LABEL_23:

LABEL_24:
      v85 = v150;
      *v150 = 0;
      *(v85 + 1) = 0;
      *(v85 + 2) = 0;
      *(v85 + 3) = 2;
      v85[2] = 0u;
      v85[3] = 0u;
      v85[4] = 0u;
      return result;
    }

    v78 = v76 + v83;
    if (!__OFADD__(v83, v76))
    {
      result = StringProtocol._toUTF16Indices(_:)();
      v76 = (4 << v154);
      if ((result & 0xC) != 4 << v154)
      {
        goto LABEL_27;
      }

      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_54:
  v118 = v78;
  result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, v71, v70);
  v78 = v118;
LABEL_27:
  v86 = v155;
  if ((v70 & 0x1000000000000000) == 0)
  {
    goto LABEL_28;
  }

  if (v143 >= result >> 16)
  {
    v119 = v78;
    result = String.UTF8View._foreignDistance(from:to:)();
    v78 = v119;
LABEL_28:
    if ((v78 & 0xC) == v76)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v78, v71, v70);
      v78 = result;
      if ((v70 & 0x1000000000000000) == 0)
      {
        goto LABEL_30;
      }
    }

    else if ((v70 & 0x1000000000000000) == 0)
    {
LABEL_30:

LABEL_60:
      v166 = v144;
      v167 = v153;
      v168 = v146;
      v169 = v145;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v173, &v156);
      v58 = BigString.UTF8View.index(_:offsetBy:)();
      v121 = v120;
      *&v155 = v122;
      *&v154 = v123;
      v124 = BigString.UTF8View.index(_:offsetBy:)();
      v56 = v125;
      v43 = v126;
      v23 = v127;
      outlined destroy of BigString(v172);
      if (v86 == &type metadata for AttributedString || v86 == &type metadata for AttributedSubstring)
      {
        v57 = *(*v149 + 16);
        outlined destroy of BigString(v172);
      }

      else
      {
        v152 = v121;
        *&v153 = v56;
        v128 = v148;
        v151 = v23;
        v129 = *(v148 + 56);
        v129(&v156, v86, v148);
        v57 = *(v156 + 16);

        v23 = v151;
        v130 = v128;
        v56 = v153;
        v129(&v156, v86, v130);
        v121 = v152;
        outlined destroy of BigString(v172);
        v131 = v156;
      }

      v59 = *(v131 + 16);

      if (v124 >> 10 >= v58 >> 10)
      {
        v132 = v150;
        *v150 = v58;
        v132[1] = v121;
        v133 = v154;
        v132[2] = v155;
        v132[3] = v133;
        v132[4] = v57;
        v132[5] = v124;
        v132[6] = v56;
        v132[7] = v43;
        v132[8] = v23;
        v132[9] = v59;
        return result;
      }

      __break(1u);
      goto LABEL_67;
    }

    if (v143 < v78 >> 16)
    {
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    String.UTF8View._foreignDistance(from:to:)();

    goto LABEL_60;
  }

LABEL_72:
  __break(1u);
  return result;
}

unint64_t *protocol witness for Collection.formIndex(after:) in conformance AttributedString.CharacterView(unint64_t *result)
{
  v2 = *result >> 10;
  v3 = v1[5] >> 10;
  if (v2 >= v1[1] >> 10 && v3 >= v2)
  {
    v5 = result;
    v6 = *v1;
    v7 = *(*v1 + 24);
    v8 = *(*v1 + 56);
    v20[1] = *(*v1 + 40);
    v20[2] = v8;
    v20[0] = v7;
    v9 = *(v6 + 24);
    v22 = *(v6 + 56);
    v10 = *(v6 + 40);
    v21[0] = v9;
    v21[1] = v10;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v21, v19);
    v11 = BigString.index(after:)();
    v13 = v12;
    v15 = v14;
    v17 = v16;
    result = outlined destroy of BigString(v20);
    if (v3 >= v11 >> 10)
    {
      v18 = *(v6 + 16);
      *v5 = v11;
      v5[1] = v13;
      v5[2] = v15;
      v5[3] = v17;
      v5[4] = v18;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for AttributedStringProtocol.characters.getter in conformance AttributedString@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[9] = 0;
  *a1 = v3;
  v4 = BigString.startIndex.getter();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = BigString.endIndex.getter();
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v8;
  a1[4] = v10;
  a1[5] = v11;
  a1[6] = v12;
  a1[7] = v13;
  a1[8] = v14;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
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

__n128 protocol witness for Sequence.makeIterator() in conformance AttributedString.CharacterView@<Q0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = *(v1 + 5);
  result = *(v1 + 7);
  *(a1 + 56) = result;
  v8 = *(v2 + 16);
  *(a1 + 72) = v1[9];
  *(a1 + 80) = v3;
  *(a1 + 88) = v4;
  *(a1 + 96) = v5;
  *(a1 + 104) = v6;
  *(a1 + 112) = v8;
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance AttributedString.CharacterView(void (**a1)(void **a1), unint64_t *a2))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x88uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2 >> 10;
  if (v7 < v2[1] >> 10 || v7 >= v2[5] >> 10)
  {
    __break(1u);
  }

  else
  {
    v9 = *v2;
    v10 = *(*v2 + 56);
    v11 = *(*v2 + 40);
    *result = *(*v2 + 24);
    *(result + 1) = v11;
    *(result + 2) = v10;
    v12 = *(v9 + 40);
    v13 = *(v9 + 24);
    *(result + 10) = *(v9 + 56);
    *(result + 3) = v13;
    *(result + 4) = v12;
    outlined init with copy of Rope<BigString._Chunk>._Node?(result + 6, result + 88);
    v14 = BigString.subscript.getter();
    v16 = v15;
    *(v6 + 16) = v15;
    outlined destroy of BigString(v6);
    *(v6 + 11) = v14;
    *(v6 + 12) = v16;
    return protocol witness for Collection.subscript.read in conformance AttributedString.CharacterView;
  }

  return result;
}

void protocol witness for Collection.subscript.read in conformance AttributedString.CharacterView(void **a1)
{
  v1 = *a1;

  free(v1);
}

void *AttributedStringProtocol._utf8Index(at:)@<X0>(uint64_t a1@<X0>, ValueMetadata *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  (*(a3 + 32))(v24, a2, a3);
  v9 = v24[0] >> 11;
  if (a2 == &type metadata for AttributedString || a2 == &type metadata for AttributedSubstring)
  {
    v11 = *v4;
  }

  else
  {
    result = (*(a3 + 56))(v24, a2, a3);
    v11 = v24[0];
  }

  if (__OFADD__(v9, a1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v11 + 24);
    v13 = *(v11 + 56);
    v29 = *(v11 + 40);
    v30 = v13;
    v14 = *(v11 + 40);
    v25 = *(v11 + 24);
    v26 = v14;
    v27 = *(v11 + 56);
    v28 = v12;
    BigString.startIndex.getter();
    v31[0] = v28;
    v31[1] = v29;
    v32 = v30;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v31, v24);
    v15 = BigString.UTF8View.index(_:offsetBy:)();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    outlined destroy of BigString(&v28);

    if (a2 == &type metadata for AttributedString || a2 == &type metadata for AttributedSubstring)
    {
    }

    else
    {
      (*(a3 + 56))(v24, a2, a3);
      v22 = v24[0];
    }

    v23 = *(v22 + 16);

    *a4 = v15;
    a4[1] = v17;
    a4[2] = v19;
    a4[3] = v21;
    a4[4] = v23;
  }

  return result;
}

uint64_t protocol witness for AttributedStringProtocol.startIndex.getter in conformance AttributedString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t *a7@<X8>)
{
  v9 = *v7;
  result = a3(a1, a2);
  v11 = *(v9 + 16);
  *a7 = result;
  a7[1] = v12;
  a7[2] = v13;
  a7[3] = v14;
  a7[4] = v11;
  return result;
}

uint64_t IndexSet.init(integersIn:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (__OFSUB__(a2, result))
  {
    __break(1u);
  }

  else
  {
    v4 = [objc_allocWithZone(NSIndexSet) initWithIndexesInRange_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd, &_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMR);
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = 0;
    *a3 = result;
  }

  return result;
}

uint64_t IndexSet.intersection(_:)@<X0>(id **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *v2;
  v5 = [objc_allocWithZone(NSIndexSet) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd, &_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  *&v27[0] = v4;
  v29 = v3;

  IndexSetBoundaryIterator.init(_:_:)(v27, &v29, v30);
  v7 = IndexSetBoundaryIterator.next()();
  if (v8)
  {
    v9 = v6;
LABEL_3:
    v27[4] = v30[4];
    v28[0] = v31[0];
    *(v28 + 11) = *(v31 + 11);
    v27[0] = v30[0];
    v27[1] = v30[1];
    v27[2] = v30[2];
    v27[3] = v30[3];
    result = outlined destroy of IndexSetBoundaryIterator(v27);
    *a2 = v9;
    return result;
  }

  v11 = v7;
  v12 = 0;
  v13 = 0;
  v9 = v6;
  while (1)
  {
    if ((v12 & 1) == 0)
    {
      if (![*(v4 + 16) containsIndex_] || (objc_msgSend(*(v3 + 16), sel_containsIndex_, v11) & 1) == 0)
      {
        v15 = IndexSetBoundaryIterator.next()();
        if (v16)
        {
          goto LABEL_3;
        }

        v11 = v15;
        while (![*(v4 + 16) containsIndex_] || (objc_msgSend(*(v3 + 16), sel_containsIndex_, v11) & 1) == 0)
        {
          v11 = IndexSetBoundaryIterator.next()();
          if (v17)
          {
            goto LABEL_3;
          }
        }
      }

      v18 = IndexSetBoundaryIterator.next()();
      if (v19)
      {
        goto LABEL_3;
      }

      v13 = v11;
      v11 = v18;
    }

    result = [*(v4 + 16) containsIndex_];
    if (result)
    {
      result = [*(v3 + 16) containsIndex_];
      if (result)
      {
        v12 = 1;
        goto LABEL_6;
      }
    }

    if (v11 < v13)
    {
      break;
    }

    if (*(v6 + 24) == 1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      result = *(v9 + 16);
      if ((*(v9 + 24) & 1) == 0)
      {
        goto LABEL_29;
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = result;
        [v21 mutableCopy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet, off_1E69EE678);
        swift_dynamicCast();
        v22 = v29;
        v6 = swift_allocObject();
        *(v6 + 16) = v22;
        *(v6 + 24) = 1;
        v23 = v22;

        v24 = v11 - v13;
        if (__OFSUB__(v11, v13))
        {
          goto LABEL_34;
        }

LABEL_30:
        [v23 addIndexesInRange_];

        v12 = 0;
        v9 = v6;
        goto LABEL_6;
      }
    }

    else
    {
      result = *(v9 + 16);
      if (*(v9 + 24) != 1)
      {
LABEL_29:
        v21 = result;
        [v21 mutableCopy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet, off_1E69EE678);
        swift_dynamicCast();
        v25 = v29;
        v6 = swift_allocObject();
        *(v6 + 16) = v25;
        *(v6 + 24) = 1;
        v23 = v25;

        v24 = v11 - v13;
        if (__OFSUB__(v11, v13))
        {
          goto LABEL_32;
        }

        goto LABEL_30;
      }
    }

    if (__OFSUB__(v11, v13))
    {
      goto LABEL_33;
    }

    [result addIndexesInRange_];
    v12 = 0;
    v6 = v9;
LABEL_6:
    v11 = IndexSetBoundaryIterator.next()();
    if (v14)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

char *IndexSetBoundaryIterator.init(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = [*(*a1 + 16) rangeCount];
  *a3 = 0;
  *(a3 + 8) = v6;
  *(a3 + 16) = v4;
  v7 = [*(v5 + 16) rangeCount];
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = v7;
  *(a3 + 48) = v5;
  *(a3 + 56) = 0;
  if (!v6)
  {
    goto LABEL_9;
  }

  v8 = *(v4 + 16);
  v9 = *(v4 + 24);
  result = [v8 rangeAtIndex_];
  v12 = &result[v11];
  v13 = __OFADD__(result, v11);
  if ((v9 & 1) == 0)
  {
    if (!v13)
    {
      if (v12 >= result)
      {
        goto LABEL_12;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v13)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v12 < result)
  {
    __break(1u);
LABEL_9:
    result = 0;
    v12 = 0;
    goto LABEL_13;
  }

LABEL_12:
  *(a3 + 24) = 1;
LABEL_13:
  *(a3 + 64) = result;
  *(a3 + 72) = v12;
  *(a3 + 80) = v6 == 0;
  if (!v7)
  {
LABEL_21:
    result = 0;
    v16 = 0;
LABEL_25:
    *(a3 + 88) = result;
    *(a3 + 96) = v16;
    *(a3 + 104) = v7 == 0;
    *(a3 + 105) = 0;
    return result;
  }

  v14 = *(v5 + 24);
  result = [*(v5 + 16) rangeAtIndex_];
  v16 = &result[v15];
  v17 = __OFADD__(result, v15);
  if (v14)
  {
    if (!v17)
    {
      if (v16 < result)
      {
        __break(1u);
        goto LABEL_21;
      }

LABEL_24:
      *(a3 + 56) = 1;
      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (v17)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v16 >= result)
  {
    goto LABEL_24;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t (*Data.LargeSlice.withUnsafeBytes<A>(_:)(uint64_t (*result)(void), uint64_t a2, uint64_t a3, uint64_t a4))(void)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = *(a4 + 16);
  if (!v7)
  {
    result = 0;
    if (!__OFSUB__(v6, v5))
    {
      return v4();
    }

LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v8 = *(a4 + 40);
  v9 = __OFSUB__(v5, v8);
  v10 = v5 - v8;
  if (!v9)
  {
    result = (v10 + v7);
    if (!__OFSUB__(v6, v5))
    {
      return v4();
    }

    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t IndexSetBoundaryIterator.next()()
{
  if (*(v0 + 80) == 1)
  {
    if (*(v0 + 104))
    {
      return 0;
    }

    v3 = (v0 + 104);
    v4 = (v0 + 88);
    v5 = (v0 + 96);
    result = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = 64;
    if (*(v0 + 105))
    {
      v2 = 72;
    }

    result = *(v0 + v2);
    v3 = (v0 + 104);
    v4 = (v0 + 88);
    v5 = (v0 + 96);
    if (*(v0 + 104))
    {
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_15;
    }
  }

  LOBYTE(v7) = *(v0 + 106);
  v8 = 88;
  if (v7)
  {
    v8 = 96;
  }

  v6 = *(v0 + v8);
  if (v6 < result)
  {
    if (!*(v0 + 106))
    {
LABEL_59:
      *(v0 + 106) = v7 ^ 1;
      return v6;
    }

    v9 = *(v0 + 40);
    v10 = *(v0 + 56);
    if (v10 == v9)
    {
      result = 0;
      v11 = 0;
LABEL_58:
      *v4 = result;
      *v5 = v11;
      *v3 = v10 == v9;
      goto LABEL_59;
    }

    goto LABEL_27;
  }

LABEL_15:
  v7 = *(v0 + 105);
  if (v7 != 1)
  {
    goto LABEL_41;
  }

  v9 = *(v0 + 8);
  v10 = *(v0 + 24);
  if (v10 != v9)
  {
    v13 = result;
    v14 = *(v0 + 16);
    v15 = *(v14 + 24);
    result = [*(v14 + 16) rangeAtIndex_];
    v11 = result;
    v12 = result + v16;
    v17 = __OFADD__(result, v16);
    if ((v15 & 1) == 0)
    {
      goto LABEL_36;
    }

    if (v17)
    {
      __break(1u);
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    if (v12 < result)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v18 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_39;
    }

    __break(1u);
LABEL_27:
    v19 = *(v0 + 48);
    v13 = *(v19 + 24);
    result = [*(v19 + 16) rangeAtIndex_];
    v11 = result + v20;
    LOBYTE(v21) = __OFADD__(result, v20);
    if ((v13 & 1) == 0)
    {
LABEL_54:
      if ((v21 & 1) == 0)
      {
        if (v11 >= result)
        {
          v12 = v10 + 1;
          if (!__OFADD__(v10, 1))
          {
LABEL_57:
            *(v0 + 56) = v12;
            goto LABEL_58;
          }

          goto LABEL_80;
        }

        goto LABEL_77;
      }

      goto LABEL_73;
    }

    if (v21)
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    if (v11 < result)
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_57;
    }

    __break(1u);
LABEL_36:
    if (!v17)
    {
      if (v12 >= v11)
      {
        v18 = v10 + 1;
        if (!__OFADD__(v10, 1))
        {
LABEL_39:
          result = v13;
          *(v0 + 24) = v18;
          goto LABEL_40;
        }

        goto LABEL_71;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    goto LABEL_68;
  }

  v11 = 0;
  v12 = 0;
LABEL_40:
  *(v0 + 64) = v11;
  *(v0 + 72) = v12;
  *(v0 + 80) = v10 == v9;
LABEL_41:
  if (result != v6)
  {
LABEL_66:
    *(v0 + 105) = v7 ^ 1;
    return result;
  }

  v6 = *(v0 + 106);
  if (v6 != 1)
  {
LABEL_65:
    *(v0 + 106) = v6 ^ 1;
    goto LABEL_66;
  }

  v9 = *(v0 + 40);
  v10 = *(v0 + 56);
  if (v10 == v9)
  {
    v11 = 0;
    v21 = 0;
LABEL_64:
    *v4 = v11;
    *v5 = v21;
    *v3 = v10 == v9;
    goto LABEL_65;
  }

  v22 = result;
  v23 = *(v0 + 48);
  v24 = *(v23 + 24);
  result = [*(v23 + 16) rangeAtIndex_];
  v11 = result;
  v21 = result + v25;
  v26 = __OFADD__(result, v25);
  if (v24)
  {
    if (v26)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v21 < result)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v27 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_63;
    }

    __break(1u);
    goto LABEL_54;
  }

  if (v26)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  if (v21 < result)
  {
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  v27 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
LABEL_63:
    result = v22;
    *(v0 + 56) = v27;
    goto LABEL_64;
  }

LABEL_81:
  __break(1u);
  return result;
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance IndexSet(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t, uint64_t))
{
  a4(a1, a2, a3);
}

uint64_t IndexSet.symmetricDifference(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = [objc_allocWithZone(NSIndexSet) init];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMd, &_s10Foundation18_MutablePairHandle33_2D7761BAEB66DCEF0A109CF42C1440A7LLCySo10NSIndexSetCSo014NSMutableIndexM0CGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v62 = v7;
  *(v7 + 24) = 0;
  v8 = *(v5 + 16);

  v9 = [v8 rangeCount];
  v10 = *(v4 + 16);
  v81 = v4;

  v69 = [v10 rangeCount];
  v66 = v9 == 0;
  if (!v9)
  {
    goto LABEL_9;
  }

  v11 = *(v5 + 24);
  result = [*(v5 + 16) rangeAtIndex_];
  v13 = result;
  v70 = result + v14;
  v15 = __OFADD__(result, v14);
  v16 = v5;
  if (v11)
  {
    if (v15)
    {
      goto LABEL_168;
    }

    if (v70 < result)
    {
      __break(1u);
LABEL_9:
      v64 = 0;
      v13 = 0;
      v70 = 0;
      v16 = v5;
      goto LABEL_13;
    }
  }

  else
  {
    if (v15)
    {
      goto LABEL_169;
    }

    if (v70 < result)
    {
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
      goto LABEL_172;
    }
  }

  v64 = 1;
LABEL_13:
  v65 = v9;
  v59 = a2;
  v68 = v13;
  v83 = v69 == 0;
  if (!v69)
  {
LABEL_21:
    v22 = 0;
    v18 = 0;
    v20 = 0;
    goto LABEL_25;
  }

  v17 = *(v81 + 24);
  result = [*(v81 + 16) rangeAtIndex_];
  v18 = result;
  v20 = result + v19;
  v21 = __OFADD__(result, v19);
  if (v17)
  {
    if (!v21)
    {
      if (v20 < result)
      {
        __break(1u);
        goto LABEL_21;
      }

LABEL_24:
      v22 = 1;
LABEL_25:
      v23 = 0;
      LOBYTE(v24) = 0;
      LOBYTE(v25) = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v71 = 0;
      v73 = 0;
      v94 = v69 == 0;
      v63 = v22;
      v72 = v22;
      v75 = v20;
      v76 = v18;
      v77 = v69 == 0;
      v78 = v68;
      v79 = v64;
      v74 = v70;
      v82 = v66;
      v29 = v62;
      v80 = v16;
LABEL_26:
      v60 = v29;
      while (1)
      {
        v84 = v23;
        if (v82)
        {
          if (v77)
          {
            v95 = v66;
            v94 = v77;
            v86[0] = 0;
            v86[1] = v65;
            v86[2] = v16;
            v86[3] = v64;
            v86[4] = 0;
            v86[5] = v69;
            v86[6] = v81;
            v86[7] = v63;
            v86[8] = v68;
            v86[9] = v70;
            v87 = v66;
            *v88 = v85;
            *&v88[3] = *(&v85 + 3);
            v89 = v76;
            v90 = v75;
            v91 = v77;
            v92 = v73 & 1;
            v93 = v71 & 1;
            result = outlined destroy of IndexSetBoundaryIterator(v86);
            *v59 = v62;
            return result;
          }

          v23 = 0x7FFFFFFFFFFFFFFFLL;
          v20 = v75;
          v18 = v76;
          if (v27)
          {
LABEL_30:
            if (v20 < v23)
            {
              if (v72 == v69)
              {
                v18 = 0;
                v30 = 0;
                v75 = 0;
                v76 = 0;
                v83 = 1;
                v72 = v69;
                v77 = 1;
              }

              else
              {
                v37 = *(v81 + 24);
                result = [*(v81 + 16) rangeAtIndex_];
                v18 = result;
                v30 = result + v38;
                v39 = __OFADD__(result, v38);
                if (v37)
                {
                  if (v39)
                  {
                    goto LABEL_153;
                  }

                  if (v30 < result)
                  {
                    goto LABEL_155;
                  }

                  v40 = v72 + 1;
                  if (__OFADD__(v72, 1))
                  {
                    goto LABEL_157;
                  }
                }

                else
                {
                  if (v39)
                  {
                    goto LABEL_154;
                  }

                  if (v30 < result)
                  {
                    goto LABEL_156;
                  }

                  v40 = v72 + 1;
                  if (__OFADD__(v72, 1))
                  {
                    goto LABEL_158;
                  }
                }

                v83 = 0;
                v77 = 0;
                v63 = v40;
                v72 = v40;
                v75 = result + v38;
                v76 = result;
              }

              goto LABEL_96;
            }

            if (v26)
            {
              if (v79 == v65)
              {
                if (v23 != v20)
                {
                  v68 = 0;
                  v70 = 0;
                  v26 = 0;
                  v28 = 0;
                  v78 = 0;
                  v79 = v65;
                  v74 = 0;
                  v73 = 0;
                  v66 = 1;
                  LOBYTE(v25) = 1;
                  v27 = 1;
                  v82 = 1;
                  v83 = 0;
                  goto LABEL_127;
                }

                v31 = 0;
                v66 = 1;
                v32 = v72;
                if (v72 == v69)
                {
                  v33 = 0;
                  v70 = 0;
                  v72 = v69;
                  v18 = 0;
                  v34 = 0;
                  v75 = 0;
                  v76 = 0;
                  v77 = 1;
                  v78 = 0;
                  v79 = v65;
                  v68 = 0;
                  v74 = 0;
                  v82 = 1;
                  v83 = 1;
                  v35 = v20;
                  v36 = 1;
LABEL_126:
                  v26 = v36 ^ 1;
                  v23 = v35;
                  LOBYTE(v25) = v33;
                  v27 = v33;
                  v20 = v34;
                  v28 = v36 ^ 1;
                  v71 = v33;
                  v73 = v36 ^ 1;
                  goto LABEL_127;
                }

                v45 = 0;
                v78 = 0;
                v79 = v65;
                v74 = 0;
                v82 = 1;
                v35 = v20;
LABEL_112:
                v36 = 1;
LABEL_113:
                v48 = *(v81 + 24);
                result = [*(v81 + 16) rangeAtIndex_];
                v18 = result;
                v34 = result + v49;
                v50 = __OFADD__(result, v49);
                v68 = v31;
                v70 = v45;
                if (v48)
                {
                  if (v50)
                  {
                    goto LABEL_159;
                  }

                  if (v34 < result)
                  {
                    goto LABEL_161;
                  }

                  v51 = v32 + 1;
                  if (__OFADD__(v32, 1))
                  {
                    goto LABEL_163;
                  }
                }

                else
                {
                  if (v50)
                  {
                    goto LABEL_160;
                  }

                  if (v34 < result)
                  {
                    goto LABEL_162;
                  }

                  v51 = v32 + 1;
                  if (__OFADD__(v32, 1))
                  {
                    goto LABEL_164;
                  }
                }

                v83 = 0;
                v77 = 0;
                v33 = 0;
                v63 = v51;
                v72 = v51;
                v75 = result + v49;
                v76 = result;
                goto LABEL_126;
              }

              v83 = 0;
              LOBYTE(v25) = 1;
              v41 = v20;
LABEL_75:
              v42 = *(v16 + 16);
              v43 = *(v16 + 24);
              result = [v42 rangeAtIndex_];
              v31 = result;
              v45 = result + v44;
              v46 = __OFADD__(result, v44);
              if (v43)
              {
                if (v46)
                {
                  __break(1u);
LABEL_148:
                  __break(1u);
LABEL_149:
                  __break(1u);
LABEL_150:
                  __break(1u);
LABEL_151:
                  __break(1u);
LABEL_152:
                  __break(1u);
LABEL_153:
                  __break(1u);
LABEL_154:
                  __break(1u);
LABEL_155:
                  __break(1u);
LABEL_156:
                  __break(1u);
LABEL_157:
                  __break(1u);
LABEL_158:
                  __break(1u);
LABEL_159:
                  __break(1u);
LABEL_160:
                  __break(1u);
LABEL_161:
                  __break(1u);
LABEL_162:
                  __break(1u);
LABEL_163:
                  __break(1u);
LABEL_164:
                  __break(1u);
                  goto LABEL_165;
                }

                if (v45 < result)
                {
                  goto LABEL_150;
                }

                v47 = v79 + 1;
                if (__OFADD__(v79, 1))
                {
                  goto LABEL_152;
                }
              }

              else
              {
                if (v46)
                {
                  goto LABEL_148;
                }

                if (v45 < result)
                {
                  goto LABEL_149;
                }

                v47 = v79 + 1;
                if (__OFADD__(v79, 1))
                {
                  goto LABEL_151;
                }
              }

              if (v23 != v41)
              {
                v66 = 0;
                v26 = 0;
                v28 = 0;
                v82 = 0;
                v73 = 0;
                v64 = v47;
                v78 = result;
                v79 = v47;
                v68 = result;
                v70 = result + v44;
                v74 = result + v44;
                goto LABEL_127;
              }

              v64 = v47;
              if (v25)
              {
                v66 = 0;
                if (v72 != v69)
                {
                  v78 = result;
                  v79 = v47;
                  v74 = result + v44;
                  v82 = 0;
                  v35 = v23;
                  v36 = 1;
                  v32 = v72;
                  goto LABEL_113;
                }

                v82 = 0;
                v83 = 1;
                v18 = 0;
                v34 = 0;
                v75 = 0;
                v76 = 0;
                v72 = v69;
                v77 = 1;
                v78 = result;
                v79 = v47;
                v68 = result;
                v70 = result + v44;
                v74 = result + v44;
                v33 = 0;
              }

              else
              {
                v66 = 0;
                v82 = 0;
                v33 = 1;
                v34 = v20;
                v78 = result;
                v79 = v47;
                v68 = result;
                v70 = result + v44;
                v74 = result + v44;
              }

              v35 = v23;
              v36 = 1;
              goto LABEL_126;
            }

            if (v23 != v20)
            {
              v83 = 0;
              LOBYTE(v25) = 1;
              v26 = 1;
              v27 = 1;
              v28 = 1;
              v73 = 1;
              goto LABEL_127;
            }

            v33 = 0;
            v32 = v72;
            if (v72 == v69)
            {
              v18 = 0;
              v34 = 0;
              v75 = 0;
              v76 = 0;
              v83 = 1;
              v72 = v69;
              v77 = 1;
              v35 = v20;
              v36 = 0;
              goto LABEL_126;
            }

            v35 = v20;
            v36 = 0;
            goto LABEL_108;
          }
        }

        else
        {
          if (v28)
          {
            v23 = v74;
          }

          else
          {
            v23 = v78;
          }

          if (v83)
          {
            if (v28)
            {
              if (v79 == v65)
              {
                if (v74 != 0x7FFFFFFFFFFFFFFFLL)
                {
                  v68 = 0;
                  v70 = 0;
                  v23 = v74;
                  v26 = 0;
                  v28 = 0;
                  v78 = 0;
                  v79 = v65;
                  v73 = 0;
                  v66 = 1;
                  v82 = 1;
                  v83 = 1;
                  v74 = 0;
                  goto LABEL_127;
                }

                if ((v25 & 1) == 0)
                {
                  v68 = 0;
                  v70 = 0;
                  v78 = 0;
                  v79 = v65;
                  v74 = 0;
                  v35 = 0x7FFFFFFFFFFFFFFFLL;
                  v66 = 1;
                  v34 = v20;
                  v33 = 1;
                  v82 = 1;
                  v83 = 1;
                  v36 = 1;
                  goto LABEL_126;
                }

                v31 = 0;
                v35 = 0x7FFFFFFFFFFFFFFFLL;
                v66 = 1;
                v32 = v72;
                if (v72 == v69)
                {
                  v33 = 0;
                  v70 = 0;
                  v72 = v69;
                  v18 = 0;
                  v34 = 0;
                  v75 = 0;
                  v76 = 0;
                  v77 = 1;
                  v78 = 0;
                  v79 = v65;
                  v68 = 0;
                  v74 = 0;
                  v82 = 1;
                  v83 = 1;
                  v36 = 1;
                  goto LABEL_126;
                }

                v45 = 0;
                v78 = 0;
                v79 = v65;
                v74 = 0;
                v82 = 1;
                goto LABEL_112;
              }

              v83 = 1;
              v41 = 0x7FFFFFFFFFFFFFFFLL;
              v23 = v74;
              goto LABEL_75;
            }

            if (v78 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v23 = v78;
              v26 = 1;
              v82 = 0;
              v83 = 1;
              v28 = 1;
              v73 = 1;
              goto LABEL_127;
            }

            if ((v25 & 1) == 0)
            {
              v36 = 0;
              v78 = 0x7FFFFFFFFFFFFFFFLL;
              v82 = 0;
              v83 = 1;
              v34 = v20;
              v33 = 1;
              v35 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_126;
            }

            v36 = 0;
            v78 = 0x7FFFFFFFFFFFFFFFLL;
            v32 = v72;
            v82 = 0;
            if (v72 == v69)
            {
              v18 = 0;
              v34 = 0;
              v75 = 0;
              v76 = 0;
              v83 = 1;
              v72 = v69;
              v77 = 1;
              v33 = 0;
              v35 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_126;
            }

            v35 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_108:
            v31 = v68;
            v45 = v70;
            goto LABEL_113;
          }

          v26 = v28;
          if (v27)
          {
            goto LABEL_30;
          }
        }

        if (v18 < v23)
        {
          v83 = 0;
          v30 = v20;
          v20 = v18;
LABEL_96:
          v25 = v27 ^ 1;
          v23 = v20;
          v27 = v25;
          v20 = v30;
          v71 = v25;
          goto LABEL_127;
        }

        if (v26)
        {
          if (v79 != v65)
          {
            LOBYTE(v25) = 0;
            v83 = 0;
            v41 = v18;
            goto LABEL_75;
          }

          v68 = 0;
          v70 = 0;
          v74 = 0;
          LOBYTE(v25) = 0;
          v26 = 0;
          v27 = 0;
          v28 = 0;
          v73 = 0;
          v66 = 1;
          v34 = v20;
          v78 = 0;
          v79 = v65;
          v33 = 1;
          v82 = 1;
          v83 = 0;
          v35 = v18;
          v36 = 1;
        }

        else
        {
          v83 = 0;
          v36 = 0;
          LOBYTE(v25) = 0;
          v27 = 0;
          v33 = 1;
          v34 = v20;
          v35 = v18;
          v26 = 1;
          v28 = 1;
          v73 = 1;
        }

        if (v23 == v18)
        {
          goto LABEL_126;
        }

LABEL_127:
        if (v24)
        {
          v95 = v66;
          v16 = v80;
          v53 = [*(v80 + 16) containsIndex_];
          result = [*(v81 + 16) containsIndex_];
          LOBYTE(v24) = v53 ^ result;
          if ((v53 ^ result))
          {
            v23 = v84;
            v29 = v60;
LABEL_145:
            v66 = v95;
            goto LABEL_26;
          }

          if (v23 >= v84)
          {
            if (*(v60 + 24) == 1)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              result = *(v62 + 16);
              if (*(v62 + 24))
              {
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v61 = result;
                  [v61 mutableCopy];
                  _bridgeAnyObjectToAny(_:)();
                  swift_unknownObjectRelease();
                  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet, off_1E69EE678);
                  swift_dynamicCast();
                  v29 = swift_allocObject();
                  *(v29 + 16) = v85;
                  *(v29 + 24) = 1;
                  v67 = v85;

                  v55 = v84;
                  v56 = v23 - v84;
                  if (__OFSUB__(v23, v84))
                  {
                    goto LABEL_174;
                  }

                  goto LABEL_144;
                }

                goto LABEL_141;
              }

LABEL_143:
              v61 = result;
              [v61 mutableCopy];
              _bridgeAnyObjectToAny(_:)();
              swift_unknownObjectRelease();
              type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMutableIndexSet, off_1E69EE678);
              swift_dynamicCast();
              v29 = swift_allocObject();
              *(v29 + 16) = v85;
              *(v29 + 24) = 1;
              v67 = v85;

              v55 = v84;
              v56 = v23 - v84;
              if (!__OFSUB__(v23, v84))
              {
LABEL_144:
                v23 = v55;
                [v67 addIndexesInRange_];

                v62 = v29;
                goto LABEL_145;
              }

LABEL_166:
              __break(1u);
              goto LABEL_167;
            }

            result = *(v62 + 16);
            if (*(v62 + 24) != 1)
            {
              goto LABEL_143;
            }

LABEL_141:
            v57 = v23 - v84;
            if (!__OFSUB__(v23, v84))
            {
              v23 = v84;
              [result addIndexesInRange_];
              v29 = v62;
              goto LABEL_145;
            }

LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
            goto LABEL_170;
          }

LABEL_165:
          __break(1u);
          goto LABEL_166;
        }

        v16 = v80;
        v52 = [*(v80 + 16) containsIndex_];
        v24 = v52 ^ [*(v81 + 16) containsIndex_];
        if (!v24)
        {
          v23 = v84;
        }
      }
    }

    goto LABEL_171;
  }

  if (v21)
  {
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  if (v20 >= result)
  {
    goto LABEL_24;
  }

LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
  return result;
}

uint64_t protocol witness for SetAlgebra.formIntersection(_:) in conformance IndexSet(id **a1)
{
  v2 = *v1;
  v4[0] = *a1;
  v4[1] = v2;
  IndexSet.intersection(_:)(v4, &v5);

  *v1 = v5;
  return result;
}

id static TimeZone._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = result;
    type metadata accessor for _NSSwiftTimeZone();
    v4 = swift_dynamicCastClass();
    if (v4)
    {
      v5 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone);
      v6 = *(v4 + OBJC_IVAR____NSSwiftTimeZone_timeZone + 8);
      result = swift_unknownObjectRetain();
    }

    else
    {
      type metadata accessor for _TimeZoneBridged();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v6 = _s10Foundation16_TimeZoneBridgedCAcA01_bC8ProtocolAAWlTm_1(&lazy protocol witness table cache variable for type _TimeZoneBridged and conformance _TimeZoneBridged, type metadata accessor for _TimeZoneBridged, &protocol conformance descriptor for _TimeZoneBridged);
      result = v2;
    }

    *a2 = v5;
    a2[1] = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Predicate.init(from:)@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with copy of Hashable & Sendable(a1, v17);
  if (one-time initialization token for predicateArchivingState != -1)
  {
    swift_once();
  }

  v8 = pthread_getspecific(static _ThreadLocal.Key<A>.predicateArchivingState);
  if (v8)
  {
    v9 = 0;
    v10 = (*v8 + 16);
    v11 = (*v8 + 24);
  }

  else
  {
    if (one-time initialization token for standardConfiguration != -1)
    {
      swift_once();
    }

    v10 = &static PredicateCodableConfiguration.standardConfiguration;
    v11 = &qword_1EA7B0718;
    v9 = byte_1EA7B0720;
  }

  v12 = *v11;
  v13 = *v10;

  v15[0] = v13;
  v15[1] = v12;
  v16 = v9;
  Predicate.init(from:configuration:)(v17, v15, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:)(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9;
  v67 = a1;
  v68 = a2;
  v71 = a8;
  *&v78 = a8;
  ExtendedExistentialTypeMetadata = swift_getExtendedExistentialTypeMetadata();
  v17 = 8 * a6;
  v74 = v9;
  v75 = v8;
  v73 = a5;
  if (a6 == 1)
  {
    type metadata accessor for PredicateExpressions.Variable(255, *(a7 & 0xFFFFFFFFFFFFFFFELL), v15, v16);
    TupleTypeMetadata = swift_checkMetadataState();
  }

  else
  {
    v19 = a7;
    MEMORY[0x1EEE9AC00](ExtendedExistentialTypeMetadata);
    if (a6)
    {
      v22 = (a7 & 0xFFFFFFFFFFFFFFFELL);
      v23 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v24 = a6;
      do
      {
        v25 = *v22++;
        *v23++ = type metadata accessor for PredicateExpressions.Variable(255, v25, v20, v21);
        --v24;
      }

      while (v24);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a7 = v19;
    a5 = v73;
    v10 = v74;
  }

  v66 = TupleTypeMetadata;
  v26 = &v61;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v69 = (&v61 - v28);
  if (a6 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    v72 = &v61;
    MEMORY[0x1EEE9AC00](v27);
    if (a6)
    {
      v30 = a7 & 0xFFFFFFFFFFFFFFFELL;
      v31 = (&v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v32 = a6;
      do
      {
        v30 += 8;
        *v31++ = swift_getMetatypeMetadata();
        --v32;
      }

      while (v32);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
    a5 = v73;
    v10 = v74;
    v26 = v72;
  }

  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v33 = *(a5 + 1);
  v34 = *(a5 + 16);
  *&v80 = *a5;
  *(&v80 + 1) = v33;
  v81 = v34;
  MEMORY[0x1EEE9AC00](v80);
  v37 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a6)
  {
    v38 = (a7 & 0xFFFFFFFFFFFFFFFELL);
    v39 = (v35 + 32);
    v40 = v37;
    v41 = a6;
    do
    {
      if (a6 == 1)
      {
        v42 = 0;
      }

      else
      {
        v42 = *v39;
      }

      v43 = *v38++;
      *(v36 + v42) = v43;
      *v40++ = v36 + v42;
      v39 += 4;
      --v41;
    }

    while (v41);
  }

  PredicateCodableConfiguration.allowInputs<each A>(_:)(v37, a6, a7);
  LOBYTE(v76[0]) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  if (v10)
  {
  }

  else
  {
    v73 = &v61;
    v65 = a7;
    v74 = &v61;
    v72 = v26;
    v45 = v78;
    v46 = v79;
    v47 = v80;
    v48 = v81;
    v78 = v80;
    LOBYTE(v79) = v81;

    v49 = ExpressionStructure.reconstruct(with:path:)(&v78, MEMORY[0x1E69E7CC0], v45, *(&v45 + 1), v46);
    v63 = *(&v47 + 1);
    v64 = v47;
    v62 = v48;

    v76[0] = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
    v82 = v71;
    swift_getExtendedExistentialTypeMetadata();
    if (swift_dynamicCast())
    {
      v61 = v78;
      v50 = v79;
      LOBYTE(v76[0]) = 0;
      v51 = v75;
      KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
      v76[0] = v64;
      v76[1] = v63;
      v77 = v62;
      MEMORY[0x1EEE9AC00](v63);
      v52 = v65;
      *(&v61 - 8) = a6;
      *(&v61 - 7) = v52;
      v53 = TupleTypeMetadata2;
      *(&v61 - 6) = v71;
      *(&v61 - 5) = &v78;
      *(&v61 - 2) = v61;
      *(&v61 - 2) = v50;
      *(&v61 - 1) = v51;
      v54 = v69;
      _withPredicateArchivingState<A>(_:_:)(v76, partial apply for closure #1 in KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:));

      outlined init with take of Equatable(v54, v67);
      v55 = v68;
      if (a6)
      {
        v56 = v54 + *(v53 + 48);
        v57 = (v66 + 32);
        v58 = a6;
        do
        {
          if (a6 == 1)
          {
            v59 = 0;
          }

          else
          {
            v59 = *v57;
          }

          v60 = *v55++;
          *v60 = *&v56[v59];
          v57 += 4;
          --v58;
        }

        while (v58);
      }

      return __swift_destroy_boxed_opaque_existential_1(&v78);
    }

    else
    {

      LOBYTE(v78) = 2;
      type metadata accessor for DecodingError();
      swift_allocError();
      lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type KeyedDecodingContainer<PredicateExpressionCodingKeys> and conformance KeyedDecodingContainer<A>, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR, MEMORY[0x1E69E6F50]);
      static DecodingError.dataCorruptedError<A>(forKey:in:debugDescription:)();
      return swift_willThrow();
    }
  }
}

uint64_t specialized ExpressionStructure.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV10CodingKeysOGSgMd, &_ss22KeyedDecodingContainerVy10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV10CodingKeysOGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-1] - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV10CodingKeysOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ExpressionStructure.CodingKeys and conformance ExpressionStructure.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {

    (*(v7 + 56))(v5, 1, 1, v6);
    outlined destroy of KeyedDecodingContainer<ExpressionStructure.CodingKeys>?(v5);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    __swift_project_boxed_opaque_existential_1(v13, v13[3]);
    v11 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
    LOBYTE(v13[0]) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV8ArgumentOGMd, &_sSay10Foundation19ExpressionStructure33_EAF63E98CB95A00A30DCCB317F51A4F9LLV8ArgumentOGMR);
    v14 = 1;
    lazy protocol witness table accessor for type [ExpressionStructure.Argument] and conformance <A> [A](&lazy protocol witness table cache variable for type [ExpressionStructure.Argument] and conformance <A> [A], lazy protocol witness table accessor for type ExpressionStructure.Argument and conformance ExpressionStructure.Argument, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v6);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11;
}

uint64_t protocol witness for Decodable.init(from:) in conformance ExpressionStructure@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized ExpressionStructure.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void *specialized ExpressionStructure.Argument.init(from:)(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    lazy protocol witness table accessor for type ExpressionStructure and conformance ExpressionStructure();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    v3 = v5;
    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t ExpressionStructure.reconstruct(with:path:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = *(a1 + 8);
  v74 = *a1;
  v73 = *(a1 + 16);
  v12 = *(v11 + 16);

  if (!v12 || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4), (v14 & 1) == 0))
  {
    v76 = 47;
    v77 = 0xE100000000000000;
    v80 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v51 = BidirectionalCollection<>.joined(separator:)();
    MEMORY[0x1865CB0E0](v51);

    lazy protocol witness table accessor for type PredicateCodableError and conformance PredicateCodableError();
    swift_allocError();
    *v52 = a3;
    *(v52 + 8) = a4;
    *(v52 + 16) = 47;
    *(v52 + 24) = 0xE100000000000000;
    v53 = 1;
LABEL_35:
    *(v52 + 32) = v53;
    return swift_willThrow();
  }

  v15 = v13;

  v16 = *(v11 + 56) + 16 * v15;
  result = *v16;
  if (*(v16 + 8) != 1)
  {
    return result;
  }

  v57 = *v16;
  v18 = *(a5 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (!v18)
  {
LABEL_38:
    v54 = v19;
    v55 = PartialType.create2(with:)();
    if (v55)
    {
      v56 = v55;

      return v56;
    }

    lazy protocol witness table accessor for type PredicateCodableError and conformance PredicateCodableError();
    swift_allocError();
    *v52 = v57;
    *(v52 + 8) = v54;
    *(v52 + 16) = 0;
    *(v52 + 24) = 0;
    v53 = 2;
    goto LABEL_35;
  }

  v80 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
  v20 = 0;
  v19 = v80;
  v60 = a5 + 32;
  v70 = v11;
  v71 = a2;
  v59 = v18;
  v67 = a4;
  v69 = a3;
  while (1)
  {
    v21 = v60 + 32 * v20;
    v23 = *v21;
    v22 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v72 = *v21;
    if (v25)
    {
      break;
    }

    v61 = *(v21 + 24);
    v62 = v20;
    v65 = v19;
    v76 = v74;
    v77 = v11;
    v78 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    *(inited + 32) = a3;
    *(inited + 40) = a4;
    v41 = *(a2 + 16);

    v64 = v22;
    outlined copy of ExpressionStructure.Argument(v23, v22, v24, 0);

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0 || (v42 = *(a2 + 24) >> 1, v43 = a2, v42 <= v41))
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v41 + 1, 1, a2);
      v43 = result;
      v42 = *(result + 24) >> 1;
    }

    if (v42 <= *(v43 + 16))
    {
      goto LABEL_44;
    }

    swift_arrayInitWithCopy();

    ++*(v43 + 16);
    v44 = ExpressionStructure.reconstruct(with:path:)(&v76, v43, v72, v64, v24);
    v45 = v24;
    if (v6)
    {
      outlined consume of ExpressionStructure.Argument(v72, v64, v24, 0);
    }

    v28 = v44;
    outlined consume of ExpressionStructure.Argument(v72, v64, v45, 0);

LABEL_29:
    v19 = v65;
    v20 = v62;
    v25 = v61;
LABEL_30:
    v80 = v19;
    v47 = *(v19 + 16);
    v46 = *(v19 + 24);
    if (v47 >= v46 >> 1)
    {
      v49 = v20;
      v50 = v25;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1);
      v25 = v50;
      v20 = v49;
      v19 = v80;
    }

    ++v20;
    *(v19 + 16) = v47 + 1;
    v48 = v19 + 16 * v47;
    *(v48 + 32) = v28;
    *(v48 + 40) = v25;
    v11 = v70;
    a2 = v71;
    if (v20 == v59)
    {
      goto LABEL_38;
    }
  }

  v26 = *(v23 + 16);
  if (!v26)
  {
    v28 = MEMORY[0x1E69E7CC0];
    goto LABEL_30;
  }

  v62 = v20;
  v63 = *(v21 + 8);
  v58 = *(v21 + 16);
  v61 = *(v21 + 24);
  v65 = v19;
  v79 = MEMORY[0x1E69E7CC0];

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
  v27 = 0;
  v28 = v79;
  v66 = *(v71 + 16);
  v29 = (v23 + 48);
  v68 = v26;
  while (v27 < *(v23 + 16))
  {
    v30 = *(v29 - 1);
    v75 = *(v29 - 2);
    v31 = *v29;
    v76 = v74;
    v77 = v70;
    v78 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_181218E20;
    *(v32 + 32) = v69;
    *(v32 + 40) = a4;

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || (v33 = *(v71 + 24) >> 1, v34 = v71, v33 <= v66))
    {
      if (*(v71 + 16) <= v66 + 1)
      {
        v35 = v66 + 1;
      }

      else
      {
        v35 = *(v71 + 16);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v35, 1, v71);
      v34 = result;
      v33 = *(result + 24) >> 1;
    }

    if (v33 <= *(v34 + 16))
    {
      goto LABEL_43;
    }

    swift_arrayInitWithCopy();

    ++*(v34 + 16);
    v36 = ExpressionStructure.reconstruct(with:path:)(&v76, v34, v75, v30, v31);
    if (v6)
    {

      outlined consume of ExpressionStructure.Argument(v72, v63, v58, 1);
    }

    v37 = v36;

    v79 = v28;
    v39 = *(v28 + 16);
    v38 = *(v28 + 24);
    if (v39 >= v38 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1);
      v28 = v79;
    }

    ++v27;
    *(v28 + 16) = v39 + 1;
    *(v28 + 8 * v39 + 32) = v37;
    v29 += 3;
    a4 = v67;
    v23 = v72;
    if (v68 == v27)
    {
      outlined consume of ExpressionStructure.Argument(v72, v63, v58, 1);
      a3 = v69;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t outlined copy of ExpressionStructure.Argument(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }
}

uint64_t outlined consume of ExpressionStructure.Argument(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {

    v4 = vars8;
  }
}

uint64_t _withPredicateArchivingState<A>(_:_:)(uint64_t *a1, void (*a2)(uint64_t))
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 16);
  if (one-time initialization token for predicateArchivingState != -1)
  {
    swift_once();
  }

  v6 = static _ThreadLocal.Key<A>.predicateArchivingState;
  v7 = pthread_getspecific(static _ThreadLocal.Key<A>.predicateArchivingState);
  if (v7)
  {
    v8 = *v7;
    v9 = *(*v7 + 32);
    *(*v7 + 32) = v5;

    v14 = *(v8 + 16);
    *(v8 + 16) = v4;
    *(v8 + 24) = v3;
    a2(v10);
    *(v8 + 16) = v14;
    *(v8 + 32) = v9;
  }

  else
  {
    type metadata accessor for PredicateArchivingState();
    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    *(v12 + 24) = v3;
    *(v12 + 32) = v5;
    *(v12 + 40) = MEMORY[0x1E69E7CC8];
    v15[0] = v12;

    if (pthread_getspecific(v6))
    {
      __break(1u);
    }

    v13 = pthread_setspecific(v6, v15);
    a2(v13);
    pthread_setspecific(v6, 0);
  }
}

uint64_t closure #1 in KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v47 = a8;
  v48 = a5;
  v50 = a2;
  v51 = a4;
  v49 = a3;
  v57 = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMR);
  MEMORY[0x1EEE9AC00](v12);
  v54 = v13;
  v55 = a9;
  v52 = &v45 - v16;
  v53 = v17;
  if (a6 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable(0, *(a7 & 0xFFFFFFFFFFFFFFFELL), v14, v15);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v13);
    v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (a6)
    {
      v23 = (a7 & 0xFFFFFFFFFFFFFFFELL);
      v24 = (&v45 - v22);
      v25 = a6;
      do
      {
        v26 = *v23++;
        *v24++ = type metadata accessor for PredicateExpressions.Variable(255, v26, v19, v20);
        --v25;
      }

      while (v25);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v56 = &v45;
  v45 = *(TupleTypeMetadata - 8);
  v30.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v58 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v27;
  if (a6)
  {
    v32 = (a7 & 0xFFFFFFFFFFFFFFFELL);
    v33 = v27 + 32;
    v34 = a6;
    while (1)
    {
      type metadata accessor for PredicateExpressions.Variable(0, *v32, v28, v29);
      __swift_mutable_project_boxed_opaque_existential_1(v57, *(v57 + 24));
      swift_getWitnessTable();
      v35 = v59;
      result = dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      if (v35)
      {
        break;
      }

      v59 = 0;
      v33 += 16;
      ++v32;
      if (!--v34)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v38 = v52;
    v37 = v53;
    v39 = v54;
    (*(v53 + 16))(v52, v48, v54, v30);
    v61 = 1;
    v40 = v55;
    v41 = v49;
    *(v55 + 3) = v50;
    v40[4] = v41;
    __swift_allocate_boxed_opaque_existential_0(v40);
    v42 = v59;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    if (v42)
    {
      (*(v37 + 8))(v38, v39);
      return __swift_deallocate_boxed_opaque_existential_1(v40);
    }

    else
    {
      v60 = v47;
      swift_getExtendedExistentialTypeMetadata();
      v43 = v46;
      v44 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v37 + 8))(v38, v39);
      return (*(v45 + 32))(v40 + v44, v58, v43);
    }
  }

  return result;
}

uint64_t partial apply for closure #1 in KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:)@<X0>(char *a1@<X8>)
{
  return closure #1 in KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:)(v1[5], v1[6], v1[7], v1[8], v1[9], v1[2], v1[3], v1[4], a1);
}

{
  return partial apply for closure #1 in KeyedDecodingContainer<>._decode<A, each B>(input:output:predicateConfiguration:)(a1);
}

uint64_t PredicateExpressions.Variable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v14 = a5;
  type metadata accessor for PredicateExpressions.Variable.CodingKeys(255, a2, a3, a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedDecodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v11 = v14;
    lazy protocol witness table accessor for type PredicateExpressions.VariableID and conformance PredicateExpressions.VariableID();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v10, v7);
    *v11 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t PredicateExpressions.VariableID.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  if (one-time initialization token for predicateArchivingState != -1)
  {
    swift_once();
  }

  v6 = pthread_getspecific(static _ThreadLocal.Key<A>.predicateArchivingState);
  if (!v6)
  {
    add_explicit = v5;
    goto LABEL_38;
  }

  v7 = *v6;
  v8 = *(*v6 + 40);
  if (*(v8 + 16))
  {
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
    if (v10)
    {
      add_explicit = *(*(v8 + 56) + 8 * v9);
LABEL_38:
      __swift_destroy_boxed_opaque_existential_1(v41);
      *a2 = add_explicit;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }
  }

  v12 = one-time initialization token for nextID;

  if (v12 != -1)
  {
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static PredicateExpressions.VariableID.nextID, 1uLL, memory_order_relaxed);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v7 + 40);
  v14 = v42;
  *(v7 + 40) = 0x8000000000000000;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (*(v14 + 24) >= v20)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v22 = v14;
      if (v16)
      {
        goto LABEL_18;
      }

      goto LABEL_36;
    }

LABEL_20:
    v40 = v16;
    v39 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySu10Foundation20PredicateExpressionsO10VariableIDVGMd, &_ss18_DictionaryStorageCySu10Foundation20PredicateExpressionsO10VariableIDVGMR);
    v24 = static _DictionaryStorage.copy(original:)();
    v22 = v24;
    if (*(v14 + 16))
    {
      v25 = (v24 + 64);
      v26 = v14 + 64;
      v27 = ((1 << *(v22 + 32)) + 63) >> 6;
      if (v22 != v14 || v25 >= v26 + 8 * v27)
      {
        memmove(v25, (v14 + 64), 8 * v27);
      }

      v28 = 0;
      *(v22 + 16) = *(v14 + 16);
      v29 = 1 << *(v14 + 32);
      v30 = -1;
      if (v29 < 64)
      {
        v30 = ~(-1 << v29);
      }

      v31 = v30 & *(v14 + 64);
      for (i = (v29 + 63) >> 6; v31; *(*(v22 + 56) + 8 * v34) = v37)
      {
        v33 = __clz(__rbit64(v31));
        v31 &= v31 - 1;
        v34 = v33 | (v28 << 6);
LABEL_33:
        v37 = *(*(v14 + 56) + 8 * v34);
        *(*(v22 + 48) + 8 * v34) = *(*(v14 + 48) + 8 * v34);
      }

      v35 = v28;
      while (1)
      {
        v28 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          break;
        }

        if (v28 >= i)
        {
          goto LABEL_35;
        }

        v36 = *(v26 + 8 * v28);
        ++v35;
        if (v36)
        {
          v31 = (v36 - 1) & v36;
          v34 = __clz(__rbit64(v36)) | (v28 << 6);
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

LABEL_35:

    v15 = v39;
    if (v40)
    {
      goto LABEL_18;
    }

LABEL_36:
    specialized _NativeDictionary._insert(at:key:value:)(v15, v5, add_explicit, v22);
    goto LABEL_37;
  }

  v21 = v16;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
  v22 = v42;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  if ((v21 & 1) == (v23 & 1))
  {
    if ((v21 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_18:
    *(*(v22 + 56) + 8 * v15) = add_explicit;
LABEL_37:
    *(v7 + 40) = v22;

    goto LABEL_38;
  }

LABEL_41:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}