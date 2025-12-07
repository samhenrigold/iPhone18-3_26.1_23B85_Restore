unint64_t protocol witness for Text.Effect.DurationProvider.animationInterval(for:) in conformance Text.Effect.Timing(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 24);
    if (*(v2 + 16) > result)
    {
      return *(v2 + 16 * result + 32);
    }
  }

  __break(1u);
  return result;
}

void Text.Effect.Timing.Chunk.computeInfos(configuration:chunk:content:)(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v118 = a5;
  v117 = a4;
  v116 = a3;
  v108 = type metadata accessor for Text.Layout.Cluster();
  v10 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for LayoutDirection();
  v111 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v102 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v98 - v15;
  v114 = type metadata accessor for FragmentRangeSequence(0) - 8;
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for FragmentRangeSequence.Iterator(0) - 8;
  MEMORY[0x1EEE9AC00](v113);
  v98 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Text.Effect.FractionalIndexFunction.Summary(0);
  MEMORY[0x1EEE9AC00](v109);
  v20 = (&v98 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v98 - v22);

  v24 = MEMORY[0x1E69E7CC0];
  *v6 = MEMORY[0x1E69E7CC0];

  v115 = v6;
  v6[2] = v24;
  v25 = *(a1 + 112);
  v110 = v23;
  v26 = v23;
  v27 = a2;
  v28 = a2;
  v29 = v116;
  v30 = v117;
  v31 = v118;
  Text.Effect.FractionalIndexFunction.summary(of:content:)(v28, v116, v117, v118, a6, v25, v26);
  v32 = v112;
  outlined init with copy of Text.Effect.BaseContent(a6, v112, type metadata accessor for Text.Effect.BaseContent);
  v33 = v114;
  v34 = (v32 + *(v114 + 28));
  *v34 = v27;
  v34[1] = v29;
  v35 = (v32 + *(v33 + 32));
  *v35 = v30;
  v35[1] = v31;
  v36 = v32;
  v37 = v98;
  outlined init with take of Text.Effect.BaseContent(v36, v98);
  v38 = v113;
  v39 = (v37 + *(v113 + 28));
  *v39 = v27;
  v39[1] = v29;
  v40 = (v37 + *(v38 + 32));
  *v40 = v30;
  v40[1] = v31;
  v41 = (v37 + *(v38 + 36));
  *v41 = v27;
  v41[1] = v29;
  FragmentRangeSequence.Iterator.next()(v119);
  v42 = v119[0];
  if (v119[0])
  {
    v44 = v124;
    v43 = v125;
    v45 = v123;
    v46 = v121;
    v47 = v120;
    v105 = (v111 + 32);
    v104 = (v111 + 8);
    v101 = *MEMORY[0x1E697E7D0];
    v100 = (v111 + 104);
    v106 = v10 + 8;
    v48 = MEMORY[0x1E69E7CC0];
    v49 = MEMORY[0x1E69E7CC0];
    v117 = v16;
    v103 = v10 + 16;
    while (1)
    {
      v99 = v49;
      v129 = v42;
      v130 = v119[1];
      v131 = v119[2];
      v132 = v47;
      v118 = v47;
      v133 = v46;
      v134 = v122;
      v116 = v45;
      v135 = v45;
      if (__OFSUB__(v43, v44))
      {
        break;
      }

      if (v44 <= v43)
      {
        v50 = v43;
      }

      else
      {
        v50 = v44;
      }

      v114 = v50;
      v51 = v44;
      v113 = v43;
      v112 = v44;
      v111 = v46;
      while (v43 != v51)
      {
        if (v43 < v44)
        {
          goto LABEL_52;
        }

        if (v114 == v51)
        {
          goto LABEL_53;
        }

        v52 = v51 + 1;
        outlined init with copy of Text.Effect.BaseContent(v110, v20, type metadata accessor for Text.Effect.FractionalIndexFunction.Summary);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v53 = *v20;
          v54 = v20[1];
          type metadata accessor for (ClosedRange<CGFloat>, LayoutDirection)(0);
          (*v105)(v16, v20 + *(v55 + 48), v12);
          v56 = v54 - v53;
          if (v56 <= 0.0)
          {
            (*v104)(v16, v12);
            v58 = 0.0;
          }

          else
          {
            Text.Effect.BaseFragment.typographicBounds(for:)(v51, v51 + 1, v126);
            *&v137.origin.x = v126[0];
            *&v137.size.width = v126[2];
            v137.origin.y = *&v126[1] - v127;
            v137.size.height = v127 + v128;
            v57 = (CGRectGetMidX(v137) - v53) / v56;
            if (v57 < 0.0)
            {
              v57 = 0.0;
            }

            if (v57 <= 1.0)
            {
              v58 = v57;
            }

            else
            {
              v58 = 1.0;
            }

            v59 = v102;
            (*v100)(v102, v101, v12);
            v60 = static LayoutDirection.== infix(_:_:)();
            v61 = *v104;
            (*v104)(v59, v12);
            v61(v117, v12);
            if ((v60 & 1) == 0)
            {
              v58 = 1.0 - v58;
            }
          }
        }

        else
        {
          v62 = *v20;
          v63 = *(v20 + 1);
          v64 = __OFSUB__(v63, *v20);
          v65 = v63 - *v20;
          if (v64)
          {
            goto LABEL_58;
          }

          v58 = 0.0;
          v93 = v65 <= 1;
          v66 = v65 - 1;
          if (!v93)
          {
            v64 = __OFSUB__(v51, *&v62);
            v67 = v51 - *&v62;
            if (v64)
            {
              goto LABEL_59;
            }

            v58 = v67 / v66;
          }
        }

        v68 = v51 - v116;
        if (__OFSUB__(v51, v116))
        {
          goto LABEL_54;
        }

        if ((v68 & 0x8000000000000000) != 0)
        {
          goto LABEL_55;
        }

        v69 = *(v118 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters);
        if (v68 >= *(v69 + 16))
        {
          goto LABEL_56;
        }

        v70 = v12;
        v71 = v107;
        v72 = v108;
        (*(v10 + 16))(v107, v69 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v68, v108);
        v73 = Text.Layout.Cluster.characterRange.getter();
        v75 = v74;
        (*(v10 + 8))(v71, v72);
        v76 = CFAttributedStringGetString(*(v118 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_attributedString));
        if (__OFSUB__(v75, v73))
        {
          goto LABEL_57;
        }

        v77 = v76;
        v136.location = v73;
        v136.length = v75 - v73;
        v78 = CFStringCreateWithSubstring(0, v76, v136);
        if (!v78)
        {
          goto LABEL_64;
        }

        v79 = v78;
        v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v82 = v81;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v48 + 2) + 1, 1, v48);
        }

        v84 = *(v48 + 2);
        v83 = *(v48 + 3);
        v43 = v113;
        v44 = v112;
        v85 = v111;
        if (v84 >= v83 >> 1)
        {
          v87 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v83 > 1), v84 + 1, 1, v48);
          v85 = v111;
          v44 = v112;
          v43 = v113;
          v48 = v87;
        }

        *(v48 + 2) = v84 + 1;
        v86 = &v48[32 * v84];
        *(v86 + 4) = v58;
        *(v86 + 5) = v80;
        *(v86 + 6) = v82;
        *(v86 + 7) = v85;
        *v115 = v48;
        v51 = v52;
        v12 = v70;
        v16 = v117;
        if (__OFSUB__(v43, v52))
        {
          goto LABEL_51;
        }
      }

      v88 = *(*(v118 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v64 = __OFADD__(v116, v88);
      v89 = v116 + v88;
      if (v64)
      {
        goto LABEL_60;
      }

      v90 = v89 - v116;
      if (__OFSUB__(v89, v116))
      {
        goto LABEL_61;
      }

      v91 = *(v48 + 2);
      v92 = v91 - v90;
      if (__OFSUB__(v91, v90))
      {
        goto LABEL_62;
      }

      v93 = v89 < v116 || v91 < v92;
      if (v93)
      {
        goto LABEL_63;
      }

      v49 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
      }

      v96 = *(v49 + 2);
      v95 = *(v49 + 3);
      if (v96 >= v95 >> 1)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v95 > 1), v96 + 1, 1, v49);
      }

      outlined destroy of Text.Layout.RunSlice?(v119, &lazy cache variable for type metadata for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>)?, type metadata accessor for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>), v94);
      *(v49 + 2) = v96 + 1;
      v97 = &v49[16 * v96];
      *(v97 + 4) = v92;
      *(v97 + 5) = v91;
      v115[2] = v49;
      FragmentRangeSequence.Iterator.next()(v119);
      v42 = v119[0];
      v47 = v120;
      v46 = v121;
      v45 = v123;
      v44 = v124;
      v43 = v125;
      v16 = v117;
      if (!v119[0])
      {
        goto LABEL_50;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }

  else
  {
LABEL_50:
    outlined destroy of FragmentRangeSequence.Iterator(v98, type metadata accessor for FragmentRangeSequence.Iterator);
    outlined destroy of FragmentRangeSequence.Iterator(v110, type metadata accessor for Text.Effect.FractionalIndexFunction.Summary);
  }
}

void Text.Effect.Timing.Chunk.computeTimings(configuration:lineCoverage:spring:from:)(uint64_t isUniquelyReferenced_nonNull_native, Swift::Double a2, uint64_t a3, uint64_t a4)
{
  v6 = *isUniquelyReferenced_nonNull_native;
  v7 = *(a4 + 16);
  if (*(isUniquelyReferenced_nonNull_native + 16))
  {
    v8 = 3.0 / (v7 + 2.0);
    if (v8 > 1.0)
    {
      v8 = 1.0;
    }

    v6 = *(isUniquelyReferenced_nonNull_native + 8) * (1.0 - v8) + v6 * (1.0 - (1.0 - v8));
  }

  *(v4 + 24) = v6;
  v115 = v7;
  if (v7 <= 1)
  {
    v10 = 1.0;
    v9 = 0.0;
    if (!v7)
    {
      v20 = MEMORY[0x1E69E7CC0];
      v11 = MEMORY[0x1E69E7CC0];
      goto LABEL_17;
    }
  }

  else
  {
    v9 = Text.Effect.ClusterSeparationFunction.separation(clusterCount:lineCoverage:)(v7, a2);
    v10 = 1.0 - v9 + v9 * (1.0 / *(*v4 + 16));
  }

  v122[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
  v11 = v122[0];
  v12 = *(isUniquelyReferenced_nonNull_native + 80);
  v13 = *(isUniquelyReferenced_nonNull_native + 88);
  v14 = (a4 + 32);
  v15 = 0x8000000000000000;
  v16 = *(isUniquelyReferenced_nonNull_native + 96);
  do
  {
    if (!v15)
    {
      goto LABEL_161;
    }

    if (v16)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = v13 * *v14 + v12 * (1.0 - *v14);
    }

    v122[0] = v11;
    v19 = *(v11 + 2);
    v18 = *(v11 + 3);
    if (v19 >= v18 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v11 = v122[0];
    }

    *(v11 + 2) = v19 + 1;
    *&v11[8 * v19 + 32] = v10 * v17;
    --v15;
    v14 += 4;
    --v7;
  }

  while (v7);
  v20 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v20 + 16) = v115;
  bzero((v20 + 32), 8 * v115);
LABEL_17:
  v21 = *(v4 + 16);
  v112 = v20;
  v105 = *(v21 + 16);
  if (!v105)
  {
    v62 = 0;
    v109 = MEMORY[0x1E69E7CC0];
LABEL_87:
    v63 = *(isUniquelyReferenced_nonNull_native + 24);
    if (*(isUniquelyReferenced_nonNull_native + 40))
    {
      if (*(isUniquelyReferenced_nonNull_native + 40) != 1)
      {
        if (v62)
        {
          v71 = v20 + 32;

          v72 = 0;
          while (1)
          {
            v73 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              goto LABEL_173;
            }

            v74 = (v21 + 32 + 16 * v72);
            v76 = *v74;
            v75 = v74[1];
            if (!v72)
            {
              goto LABEL_113;
            }

            if (v72 > v62)
            {
              goto LABEL_174;
            }

            v78 = *(v74 - 2);
            v77 = *(v74 - 1);
            if (v78 != v77)
            {
              if (v78 >= v77)
              {
                goto LABEL_177;
              }

              v80 = v77 < 1;
              v81 = v77 - 1;
              if (v80)
              {
                goto LABEL_178;
              }

              if (v81 >= *(v20 + 16))
              {
                goto LABEL_179;
              }

              if (v81 >= *(v11 + 2))
              {
                goto LABEL_180;
              }

              if (v76 != v75)
              {
                v79 = *(v71 + 8 * v81) + v9 * *&v11[8 * v81 + 32];
                if (v75 < v76)
                {
                  goto LABEL_175;
                }

                goto LABEL_122;
              }
            }

            else
            {
LABEL_113:
              v79 = 0.0;
              if (v76 != v75)
              {
                if (v75 < v76)
                {
                  goto LABEL_175;
                }

LABEL_122:
                if (v76 >= v75)
                {
                  goto LABEL_176;
                }

                while ((v76 & 0x8000000000000000) == 0)
                {
                  if (v76 >= *(v20 + 16))
                  {
                    goto LABEL_160;
                  }

                  *(v71 + 8 * v76) = v79 + *(v71 + 8 * v76);
                  if (v75 == ++v76)
                  {
                    goto LABEL_108;
                  }
                }

                goto LABEL_159;
              }
            }

LABEL_108:
            v72 = v73;
            if (v73 == v62)
            {

              break;
            }
          }
        }

LABEL_129:
        v82 = v20;
        v83 = *(v20 + 16);
        v84 = MEMORY[0x1E69E7CC0];
        if (!v83)
        {
          v88 = 0.0;
          v92 = MEMORY[0x1E69E7CC0];
LABEL_143:
          v96 = *(v11 + 2);
          if (v96)
          {
            v122[0] = v84;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v96, 0);
            v97 = v122[0];
            v98 = *(v122[0] + 2);
            v99 = 32;
            do
            {
              v100 = *&v11[v99];
              v122[0] = v97;
              v101 = *(v97 + 3);
              if (v98 >= v101 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v98 + 1, 1);
                v97 = v122[0];
              }

              *(v97 + 2) = v98 + 1;
              *&v97[8 * v98 + 32] = v100 / v88;
              v99 += 8;
              ++v98;
              --v96;
            }

            while (v96);
          }

          else
          {

            v97 = MEMORY[0x1E69E7CC0];
          }

          _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySaySdGAHG_7SwiftUI4TextV0H16AnimationSupportE6EffectO6TimingV09UnitGlyphL0Vs5NeverOTg506_sS2d7f3UI4h5V0C16ij2E6k2O6l3V09mn19G0VIgyyd_Sd_SdtAJs5o23OIegnrzr_TR03_s7a3UI4c5s129C16de2E6f2O6g109V5Chunk33_363E424B8D24CACCD5AAF4ADF34E118BLLV14computeTimings13configuration12lineCoverage6spring4fromSayAH09hI65x21VGAH13ConfigurationV_Z50AA6SpringVSayAH0X4InfoVGtFARSd_SdtXEfU5_Tf3nnnpf_nTf1cn_n(v92, v97);

          return;
        }

        v85 = 0;
        v86 = v82 + 32;
        v87 = *(v11 + 2);
        v88 = 0.0;
        do
        {
          if (v87 == v85)
          {
            break;
          }

          if (v85 >= v87)
          {
            goto LABEL_166;
          }

          v89 = *&v11[8 * v85 + 32];
          v90 = v85 + 1;
          if (v88 <= *(v86 + 8 * v85) + v89)
          {
            v88 = *(v86 + 8 * v85) + v89;
          }

          ++v85;
        }

        while (v83 != v90);
        v122[0] = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v83, 0);
        v91 = 0x8000000000000000;
        v92 = v122[0];
        while (v91)
        {
          v93 = *(v86 + 8 * v91);
          v122[0] = v92;
          v95 = *(v92 + 2);
          v94 = *(v92 + 3);
          if (v95 >= v94 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v94 > 1), v95 + 1, 1);
            v92 = v122[0];
          }

          *(v92 + 2) = v95 + 1;
          *&v92[8 * v95 + 32] = v93 / v88;
          ++v91;
          if (!--v83)
          {
            goto LABEL_143;
          }
        }

LABEL_162:
        __break(1u);
LABEL_163:
        __break(1u);
LABEL_164:
        __break(1u);
        goto LABEL_165;
      }

      v64 = 5;
      if (v62 > 5)
      {
        v64 = v62;
      }

      v63 = v63 * (-5.0 / v64 + 1.0) + (1.0 - (-5.0 / v64 + 1.0)) * *(isUniquelyReferenced_nonNull_native + 32);
    }

    if (v62)
    {
      v65 = 0;
      v66 = 0.0;
      while (1)
      {
        v67 = v65 + 1;
        if (__OFADD__(v65, 1))
        {
          break;
        }

        v68 = (v21 + 32 + 16 * v65);
        v70 = *v68;
        v69 = v68[1];
        if (v65)
        {
          if (v65 > *(v109 + 2))
          {
            goto LABEL_170;
          }

          v66 = v66 + v63 * *&v109[8 * v65 + 24];
        }

        if (v70 != v69)
        {
          if (v69 < v70)
          {
            goto LABEL_171;
          }

          if (v70 < v69)
          {
            while ((v70 & 0x8000000000000000) == 0)
            {
              if (v70 >= *(v20 + 16))
              {
                goto LABEL_158;
              }

              *(v20 + 32 + 8 * v70) = v66 + *(v20 + 32 + 8 * v70);
              if (v69 == ++v70)
              {
                goto LABEL_94;
              }
            }

            goto LABEL_157;
          }

          goto LABEL_172;
        }

LABEL_94:
        ++v65;
        if (v67 == v62)
        {
          goto LABEL_129;
        }
      }

LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    goto LABEL_129;
  }

  v22 = 0;
  v106 = v21 + 32;
  v111 = v11 + 24;
  v116 = v20 + 32;
  v102 = v11 + 32;
  v109 = MEMORY[0x1E69E7CC0];
  v110 = v11;
  v103 = *(v4 + 16);
  while (1)
  {
    if (v22 >= *(v21 + 16))
    {
      goto LABEL_163;
    }

    v23 = (v106 + 16 * v22);
    v24 = *v23;
    v25 = v23[1];
    v26 = v25 - *v23;
    if (__OFSUB__(v25, *v23))
    {
      goto LABEL_164;
    }

    if (v26)
    {
      if (v26 < 1)
      {
        goto LABEL_182;
      }

      type metadata accessor for _ContiguousArrayStorage<Int>();
      v27 = swift_allocObject();
      v28 = _swift_stdlib_malloc_size(v27);
      v29 = v28 - 32;
      if (v28 < 32)
      {
        v29 = v28 - 25;
      }

      if (v24 <= v25)
      {
        v30 = v25;
      }

      else
      {
        v30 = v24;
      }

      v27[2] = v26;
      v27[3] = 2 * (v29 >> 3);
      if (v24 == v25)
      {
        goto LABEL_181;
      }

      v31 = 0;
      v32 = v30 - v24;
      while (v25 >= v24)
      {
        if (v32 == v31)
        {
          goto LABEL_152;
        }

        v27[v31 + 4] = v24 + v31;
        if (v26 - 1 == v31)
        {
          goto LABEL_36;
        }

        if (v26 == ++v31)
        {
          goto LABEL_181;
        }
      }

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
      goto LABEL_162;
    }

    v27 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v122[0] = v27;
    swift_bridgeObjectRetain_n();
    specialized MutableCollection<>.sort(by:)(v122, a4);
    swift_bridgeObjectRelease_n();
    v33 = v122[0];
    v34 = *(v122[0] + 2);
    if (v34)
    {
      break;
    }

    v59 = 0.0;
LABEL_80:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v109 + 2) + 1, 1, v109);
    }

    v61 = *(v109 + 2);
    v60 = *(v109 + 3);
    if (v61 >= v60 >> 1)
    {
      v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1, v109);
    }

    ++v22;
    *(v109 + 2) = v61 + 1;
    *&v109[8 * v61 + 32] = v59;
    if (v22 == v105)
    {
      v62 = *(v21 + 16);
      goto LABEL_87;
    }
  }

  v107 = v22;
  v35 = 0;
  v36 = *(isUniquelyReferenced_nonNull_native + 104);
  v117 = v122[0] + 32;
  v120 = v36 + 32;
  v121 = *(v36 + 16);
  v37 = 0.0;
  v38 = v115;
  v113 = *(v122[0] + 2);
  v114 = v122[0];
  do
  {
    if (v35 >= *(v33 + 2))
    {
      goto LABEL_153;
    }

    v39 = *&v117[8 * v35];
    if (v39 >= 1)
    {
      if (v39 > *(v11 + 2))
      {
        goto LABEL_156;
      }

      v37 = v37 + v9 * *&v111[8 * v39];
    }

    if (v39 >= v38)
    {
      goto LABEL_154;
    }

    v40 = 0.0;
    if (!v121)
    {
      goto LABEL_73;
    }

    v41 = 0;
    v42 = a4 + 32 + 32 * v39;
    v43 = *(v42 + 8);
    v44 = *(v42 + 16);
    v118 = v44;
    v119 = v43;
    do
    {
      v45 = (v120 + 24 * v41);
      v46 = *v45;
      v47 = *(v45 + 1);
      v48 = *(v45 + 2);
      v49 = specialized Collection.first.getter(v43, v44);
      if ((v49 & 0x100000000) == 0)
      {
        v50 = (v48 & 0x2000000000000000) != 0 ? HIBYTE(v48) & 0xF : v47 & 0xFFFFFFFFFFFFLL;
        if (v50)
        {
          v51 = v49;
          v52 = 0;
          while (1)
          {
            if ((v48 & 0x1000000000000000) != 0)
            {
              v55 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
              goto LABEL_60;
            }

            if ((v48 & 0x2000000000000000) != 0)
            {
              v122[0] = v47;
              v122[1] = (v48 & 0xFFFFFFFFFFFFFFLL);
              v54 = v122 + v52;
            }

            else
            {
              v53 = (v48 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((v47 & 0x1000000000000000) == 0)
              {
                v53 = _StringObject.sharedUTF8.getter();
              }

              v54 = (v53 + v52);
            }

            v55 = *v54;
            if ((*v54 & 0x80000000) == 0)
            {
              break;
            }

            v57 = (__clz(v55 ^ 0xFF) - 24);
            if (v57 > 2)
            {
              if (v57 == 3)
              {
                v55 = ((v55 & 0xF) << 12) | ((v54[1] & 0x3F) << 6) | v54[2] & 0x3F;
                v56 = 3;
              }

              else
              {
                v55 = ((v55 & 0xF) << 18) | ((v54[1] & 0x3F) << 12) | ((v54[2] & 0x3F) << 6) | v54[3] & 0x3F;
                v56 = 4;
              }
            }

            else
            {
              if (v57 == 1)
              {
                break;
              }

              v55 = v54[1] & 0x3F | ((v55 & 0x1F) << 6);
              v56 = 2;
            }

LABEL_60:
            if (v55 == v51)
            {
              v40 = v46;
              goto LABEL_72;
            }

            v52 += v56;
            if (v52 >= v50)
            {
              goto LABEL_69;
            }
          }

          v56 = 1;
          goto LABEL_60;
        }
      }

LABEL_69:
      ++v41;
      v44 = v118;
      v43 = v119;
    }

    while (v41 != v121);
LABEL_72:
    v11 = v110;
    v20 = v112;
    v34 = v113;
    v33 = v114;
    v38 = v115;
LABEL_73:
    if (v39 >= *(v20 + 16))
    {
      goto LABEL_155;
    }

    ++v35;
    v37 = v37 + v40;
    *(v116 + 8 * v39) = v37;
  }

  while (v35 != v34);
  if (v34 > *(v33 + 2))
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v58 = *&v117[8 * v34 - 8];

  if ((v58 & 0x8000000000000000) != 0)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  if (v58 < *(v11 + 2))
  {
    v21 = v103;
    v59 = v37 + *&v102[8 * v58];
    v22 = v107;
    goto LABEL_80;
  }

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
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);

  __break(1u);
}

BOOL closure #3 in Text.Effect.Timing.Chunk.computeTimings(configuration:lineCoverage:spring:from:)(_BOOL8 result, unint64_t *a2, uint64_t a3)
{
  v3 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v3 >= v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *a2;
  if (*a2 >= v4)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 32 + 32 * v3);
  v7 = *(a3 + 32 + 32 * v5);
  if (v6 < v7)
  {
    return 1;
  }

  if (v6 == v7)
  {
    return v3 < v5;
  }

  return 0;
}

void type metadata accessor for _ContiguousArrayStorage<Int>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Int>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Int>);
    }
  }
}

uint64_t outlined destroy of FragmentRangeSequence.Iterator(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Text.Effect.BaseContent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for (ClosedRange<CGFloat>, LayoutDirection)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (ClosedRange<CGFloat>, LayoutDirection))
  {
    type metadata accessor for ClosedRange<CGFloat>(255, &lazy cache variable for type metadata for ClosedRange<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E5F90]);
    type metadata accessor for LayoutDirection();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (ClosedRange<CGFloat>, LayoutDirection));
    }
  }
}

uint64_t outlined destroy of Text.Layout.RunSlice?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), __n128 a4)
{
  type metadata accessor for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>)?(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void type metadata accessor for (fragment: Text.Effect.BaseFragment, range: Range<Text.Effect.ClusterIndex>)?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for ClosedRange<CGFloat>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.DelayFunction.Element(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.DelayFunction.Element(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for Text.Effect.FractionalIndexFunction.Summary(uint64_t a1)
{
  type metadata accessor for ClosedRange<CGFloat>(319, &lazy cache variable for type metadata for Range<Text.Effect.ClusterIndex>, lazy protocol witness table accessor for type Text.Effect.ClusterIndex and conformance Text.Effect.ClusterIndex, &type metadata for Text.Effect.ClusterIndex, MEMORY[0x1E69E66A8]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (ClosedRange<CGFloat>, LayoutDirection)(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Timing.Configuration(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.Timing.Configuration(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for Text.Effect.Timing.GlyphTiming(uint64_t a1)
{
  result = type metadata accessor for Spring();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Timing.GlyphInfo(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.Timing.GlyphInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.Effect.Timing(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.Timing(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t lazy protocol witness table accessor for type Text.Effect.FractionalIndexFunction.Method and conformance Text.Effect.FractionalIndexFunction.Method(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.FractionalIndexFunction.Method and conformance Text.Effect.FractionalIndexFunction.Method;
  if (!lazy protocol witness table cache variable for type Text.Effect.FractionalIndexFunction.Method and conformance Text.Effect.FractionalIndexFunction.Method)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.FractionalIndexFunction.Method and conformance Text.Effect.FractionalIndexFunction.Method);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for Text.Effect.ClusterSeparationFunction.Storage(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for Text.Effect.ClusterSeparationFunction(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 25))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 24);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Text.Effect.ClusterSeparationFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for Text.Effect.FragmentSeparationFunction.Storage(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for Text.Effect.FragmentSeparationFunction.Storage(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t GlimmerTextEffect.Timing.init(content:duration:from:to:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, double *a6@<X8>)
{
  v14 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (&v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<Text.Effect.BaseContent>(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = specialized Sequence.reduce<A>(_:_:)(0, a1);
  if (__OFSUB__(v21, 1))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    swift_endAccess();
    __break(1u);
LABEL_35:
    swift_endAccess();
    __break(1u);
LABEL_36:
    swift_endAccess();
    __break(1u);
LABEL_37:
    swift_endAccess();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v62 = v18;
  v63 = a3;
  v22 = (v21 - 1) * 0.05;
  v23 = v22 + 1.16666667;
  v64 = a6;
  v65 = a1;
  a6[2] = (v22 + 1.16666667) / (v22 + 0.1133);
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation(a1, v16, type metadata accessor for Text.Effect.BaseContent);
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation(v16, v20, type metadata accessor for Text.Effect.BaseContent);
  v24 = *v16;
  v25 = v16[1];
  v26 = v16[2];
  swift_beginAccess();
  if (!*(*(v24 + 48) + 16))
  {
    goto LABEL_36;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(v25, v26);
  if ((v27 & 1) == 0)
  {
    goto LABEL_36;
  }

  swift_endAccess();
  outlined destroy of Text.Effect.ResolvedDrawing.Operation(v16, type metadata accessor for Text.Effect.BaseContent);
  v28 = *v20;
  v29 = v20[1];
  v30 = v20[2];
  swift_beginAccess();
  v31 = *(v28 + 48);
  if (*(v31 + 16))
  {
    a3 = 0;
    v60 = a5;
    v61 = a4;
    v6 = a2;
    v32 = 0.0;
    v7 = 0.0;
    do
    {
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
      if ((v34 & 1) == 0)
      {
        break;
      }

      v35 = *(*(v31 + 56) + 16 * v33);
      swift_endAccess();
      if (*(v35 + 16) == a3)
      {
        goto LABEL_24;
      }

      swift_beginAccess();
      v36 = *(v28 + 48);
      v37 = *(v36 + 16);

      if (!v37)
      {
        goto LABEL_37;
      }

      v38 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
      if ((v39 & 1) == 0)
      {
        goto LABEL_37;
      }

      v40 = *(*(v36 + 56) + 16 * v38);
      swift_endAccess();
      if (a3 >= *(v40 + 16))
      {
        goto LABEL_31;
      }

      v41 = *(v40 + 32 + 8 * a3);
      if (a3)
      {
        v42 = 0;
        v43 = 0;
        while (1)
        {
          v44 = *(*(*(v40 + 32 + 8 * v42) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v45 = __OFADD__(v43, v44);
          v43 += v44;
          if (v45)
          {
            break;
          }

          if (a3 == ++v42)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

LABEL_15:
      swift_beginAccess();
      v46 = *(*(v28 + 48) + 16);

      if (!v46)
      {
        goto LABEL_34;
      }

      specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
      if ((v47 & 1) == 0)
      {
        goto LABEL_34;
      }

      swift_endAccess();
      swift_beginAccess();
      v48 = *(v28 + 48);
      if (!*(v48 + 16))
      {
        goto LABEL_35;
      }

      v49 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v30);
      if ((v50 & 1) == 0)
      {
        goto LABEL_35;
      }

      v51 = *(*(v48 + 56) + 16 * v49);
      swift_endAccess();
      if (a3 >= *(v51 + 16))
      {
        goto LABEL_32;
      }

      ++a3;
      v52 = (v41 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
      v53 = v32 + CGRectGetWidth(*(v41 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
      if (v7 <= v53)
      {
        v7 = v53;
      }

      Width = CGRectGetWidth(*v52);

      v32 = v32 + Width;
      swift_beginAccess();
      v31 = *(v28 + 48);
    }

    while (*(v31 + 16));
  }

  swift_endAccess();
  __break(1u);
LABEL_24:
  *(v20 + *(v62 + 36)) = a3;
  outlined destroy of Text.Effect.ResolvedDrawing.Operation(v20, type metadata accessor for IndexingIterator<Text.Effect.BaseContent>);
  if (v63)
  {
    v6 = 0.0;
    if ((v61 & 1) != (v60 & 1))
    {
      if (v61)
      {
        v6 = 0.2;
      }

      else
      {
        v6 = v23;
      }
    }
  }

  v55 = v64;
  *v64 = v6;
  v55[1] = v7;
  v56 = type metadata accessor for GlimmerTextEffect.Timing(0);
  v57 = v65;
  Text.Effect.BaseContent.layoutDirection.getter(v55 + *(v56 + 28));
  return outlined destroy of Text.Effect.ResolvedDrawing.Operation(v57, type metadata accessor for Text.Effect.BaseContent);
}

void GlimmerTextEffect.Timing.unitProgress(at:for:)(uint64_t *a1)
{
  CGRectGetWidth(*(a1[3] + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds));
  v2 = a1[4];
  if (v2 < 0)
  {
LABEL_16:
    __break(1u);
  }

  else
  {
    v3 = 0.0;
    if (!v2)
    {
      return;
    }

    v4 = 0;
    v6 = *a1;
    v5 = a1[1];
    v7 = a1[2];
    while (1)
    {
      v24 = v6;
      swift_beginAccess();
      v13 = *(v6 + 48);
      if (!*(v13 + 16))
      {
        break;
      }

      outlined init with copy of Text.Effect.Keyframes(&v24, v23);

      v14 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7);
      if ((v15 & 1) == 0)
      {
        goto LABEL_18;
      }

      v16 = *(*(v13 + 56) + 16 * v14);
      swift_endAccess();
      if (v4 >= *(v16 + 16))
      {
        goto LABEL_15;
      }

      v17 = v16 + 32;
      v18 = *(v16 + 32 + 8 * v4);
      if (v4)
      {
        v19 = 0;
        v20 = 0;
        while (1)
        {
          v21 = *(*(*(v17 + 8 * v19) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
          v22 = __OFADD__(v20, v21);
          v20 += v21;
          if (v22)
          {
            break;
          }

          if (v4 == ++v19)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_4:
      ++v4;
      v8 = *(v18 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds);
      v9 = *(v18 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds + 8);
      v10 = *(v18 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds + 16);
      v11 = *(v18 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_bounds + 24);

      v25.origin.x = v8;
      v25.origin.y = v9;
      v25.size.width = v10;
      v25.size.height = v11;
      Width = CGRectGetWidth(v25);

      v3 = v3 + Width;
      if (v2 == v4)
      {
        return;
      }
    }
  }

  outlined init with copy of Text.Effect.Keyframes(&v24, v23);

LABEL_18:
  swift_endAccess();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t GlimmerTextEffect.timing(for:from:to:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, double a4@<X5>, char a5@<W6>, double *a6@<X8>)
{
  v12 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Text.Effect.ResolvedDrawing.Operation(a1, v14, type metadata accessor for Text.Effect.BaseContent);
  if (a2)
  {
    type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcretePhase<GlimmerTextEffect>, type metadata accessor for Text.Effect.ConcretePhase);
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      LOBYTE(a2) = 0;
      if (!a3)
      {
        goto LABEL_8;
      }

      goto LABEL_5;
    }

    LOBYTE(a2) = *(v15 + 16);
  }

  if (!a3)
  {
LABEL_8:
    v17 = 0;
    return GlimmerTextEffect.Timing.init(content:duration:from:to:)(v14, a4, a5 & 1, a2, v17, a6);
  }

LABEL_5:
  type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcretePhase<GlimmerTextEffect>, type metadata accessor for Text.Effect.ConcretePhase);
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    goto LABEL_8;
  }

  v17 = *(v16 + 16);
  return GlimmerTextEffect.Timing.init(content:duration:from:to:)(v14, a4, a5 & 1, a2, v17, a6);
}

uint64_t closure #1 in GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, double a2, double a3, double a4, double a5, float a6, float a7, float a8, float a9, uint64_t a10, uint64_t a11)
{
  v17 = type metadata accessor for ShaderLibrary();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = type metadata accessor for ShaderFunction();
  v42 = *(v18 - 8);
  v43 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Shader();
  v40 = *(v21 - 8);
  v41 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for GraphicsContext.Filter();
  v38 = *(v24 - 8);
  v39 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextEffectClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [objc_opt_self() bundleForClass_];
  static ShaderLibrary.bundle(_:)();

  ShaderFunction.init(library:name:)();
  type metadata accessor for _ContiguousArrayStorage<Shader.Argument>(0);
  type metadata accessor for Shader.Argument();
  *(swift_allocObject() + 16) = xmmword_195CCE9D0;
  static Shader.Argument._float2(_:_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  ShaderFunction.dynamicallyCall(withArguments:)();

  (*(v42 + 8))(v20, v43);
  static GraphicsContext.Filter.layerShader(_:maxSampleOffset:)();
  (*(v40 + 8))(v23, v41);
  GraphicsContext.addFilter(_:options:)();
  result = (*(v38 + 8))(v26, v39);
  v30 = *(a11 + 8);
  v31 = *a11;
  v32 = *(a11 + 32);
  v44[0] = *(a11 + 16);
  v44[1] = v32;
  v44[2] = *(a11 + 48);
  v33 = *(v30 + 16);
  if (v33)
  {
    v34 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
    v35 = v30 + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v36 = *(v34 + 72);
    do
    {
      result = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v44, LODWORD(a6) | (LODWORD(a7) << 32), LODWORD(a8) | (LODWORD(a9) << 32), 0, a1, v31);
      v35 += v36;
      --v33;
    }

    while (v33);
  }

  return result;
}

uint64_t closure #2 in GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v8 = type metadata accessor for ShaderLibrary();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = type metadata accessor for ShaderFunction();
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Shader();
  v31 = *(v12 - 8);
  v32 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for GraphicsContext.Filter();
  v29 = *(v15 - 8);
  v30 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TextEffectClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [objc_opt_self() bundleForClass_];
  static ShaderLibrary.bundle(_:)();

  ShaderFunction.init(library:name:)();
  type metadata accessor for _ContiguousArrayStorage<Shader.Argument>(0);
  type metadata accessor for Shader.Argument();
  *(swift_allocObject() + 16) = xmmword_195CCE9D0;
  static Shader.Argument._float2(_:_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  ShaderFunction.dynamicallyCall(withArguments:)();

  (*(v33 + 8))(v11, v34);
  static GraphicsContext.Filter.layerShader(_:maxSampleOffset:)();
  (*(v31 + 8))(v14, v32);
  GraphicsContext.addFilter(_:options:)();
  result = (*(v29 + 8))(v17, v30);
  v21 = *(a6 + 8);
  v22 = *a6;
  v23 = *(a6 + 32);
  v35[0] = *(a6 + 16);
  v35[1] = v23;
  v35[2] = *(a6 + 48);
  v24 = *(v21 + 16);
  if (v24)
  {
    v25 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
    v26 = v21 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v27 = *(v25 + 72);
    do
    {
      result = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v35, 0, 0, 1, a1, v22);
      v26 += v27;
      --v24;
    }

    while (v24);
  }

  return result;
}

uint64_t closure #3 in GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v26 = type metadata accessor for ShaderLibrary();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v48 = type metadata accessor for ShaderFunction();
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v28 = &v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for Shader();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v30 = &v43 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for GraphicsContext.Filter();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v32 = &v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a3;
  v50 = a4;
  v51 = a5;
  v52 = a6;
  v53 = a2;
  GraphicsContext.clipToLayer(opacity:options:content:)();
  v55 = v18;
  type metadata accessor for TextEffectClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass_];
  static ShaderLibrary.bundle(_:)();

  ShaderFunction.init(library:name:)();
  type metadata accessor for _ContiguousArrayStorage<Shader.Argument>(0);
  type metadata accessor for Shader.Argument();
  *(swift_allocObject() + 16) = xmmword_195CCE9D0;
  static Shader.Argument._float2(_:_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  static Shader.Argument._float(_:)();
  ShaderFunction.dynamicallyCall(withArguments:)();

  (*(v47 + 8))(v28, v48);
  static GraphicsContext.Filter.layerShader(_:maxSampleOffset:)();
  (*(v45 + 8))(v30, v46);
  GraphicsContext.addFilter(_:options:)();
  result = (*(v43 + 8))(v32, v44);
  v36 = *(a12 + 8);
  v37 = *a12;
  v38 = *(a12 + 32);
  v54[0] = *(a12 + 16);
  v54[1] = v38;
  v54[2] = *(a12 + 48);
  v39 = *(v36 + 16);
  if (v39)
  {
    v40 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
    v41 = v36 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v42 = *(v40 + 72);
    do
    {
      result = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v54, a17, a18, 0, a1, v37);
      v41 += v42;
      --v39;
    }

    while (v39);
  }

  return result;
}

uint64_t closure #1 in closure #3 in GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  Path.init(_:)();
  GraphicsContext.fill(_:with:style:)();
  return outlined destroy of Path(v7);
}

uint64_t closure #4 in GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t *a1, uint64_t a2, double a3, float a4, float a5, float a6, float a7)
{
  result = GraphicsContext.opacity.setter();
  v14 = *(a2 + 8);
  v15 = *a2;
  v16 = *(a2 + 32);
  v21[0] = *(a2 + 16);
  v21[1] = v16;
  v21[2] = *(a2 + 48);
  v17 = *(v14 + 16);
  if (v17)
  {
    v18 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
    v19 = v14 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v20 = *(v18 + 72);
    do
    {
      result = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v21, LODWORD(a4) | (LODWORD(a5) << 32), LODWORD(a6) | (LODWORD(a7) << 32), 0, a1, v15);
      v19 += v20;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t protocol witness for static Text.Effect.Base.animatorConfiguration(from:) in conformance GlimmerTextEffect@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = specialized static GlimmerTextEffect.animatorConfiguration(from:)(a2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GlimmerTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table accessor for type GlimmerTextEffect and conformance GlimmerTextEffect(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

uint64_t specialized static GlimmerTextEffect.animatorConfiguration(from:)(uint64_t a1)
{
  v2 = static Color.blue.getter();
  if (!*(a1 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x756F726765726F66, 0xEF726F6C6F43646ELL), (v4 & 1) == 0) || (outlined init with copy of Any(*(a1 + 56) + 32 * v3, v13), type metadata accessor for NSObject(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_6:
    if (!*(a1 + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if (CGColorForCoreColor(v12, v5))
  {
    v6 = Color.init(cgColor:)();

    v2 = v6;
    goto LABEL_6;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

LABEL_7:
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(0x65676C7562, 0xE500000000000000);
  if ((v8 & 1) == 0 || (outlined init with copy of Any(*(a1 + 56) + 32 * v7, v13), (swift_dynamicCast() & 1) == 0))
  {
LABEL_12:
    if (!*(a1 + 16))
    {
      return v2;
    }

    goto LABEL_13;
  }

  if (!*(a1 + 16))
  {
    return v2;
  }

LABEL_13:
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(0x656E696873, 0xE500000000000000);
  if (v10)
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v9, v13);
    swift_dynamicCast();
  }

  return v2;
}

void specialized GlimmerTextEffect.apply(to:fragment:timing:state:context:in:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v113 = a3;
  v101 = a2;
  v116 = a1;
  v104 = type metadata accessor for GraphicsContext.Shading();
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v97[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v112 = type metadata accessor for LayoutDirection();
  v8 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v10 = &v97[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0);
  v115 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v97[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for EnvironmentValues();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v97[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a4 + 64) && (type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcretePhase<GlimmerTextEffect>, type metadata accessor for Text.Effect.ConcretePhase), (v18 = swift_dynamicCastClass()) != 0))
  {
    v111 = *(v18 + 16);
    v19 = *(a4 + 88);
    if (!*(a4 + 80))
    {
LABEL_9:
      v110 = 0;
      if (!v19)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v111 = 0;
    v19 = *(a4 + 88);
    if (!*(a4 + 80))
    {
      goto LABEL_9;
    }
  }

  type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcretePhase<GlimmerTextEffect>, type metadata accessor for Text.Effect.ConcretePhase);
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    goto LABEL_9;
  }

  v110 = *(v20 + 16);
  if (!v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>, type metadata accessor for Text.Effect.ConcreteConfiguration);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21[2];
    v23 = v21[4];
    v105 = v21[3];
    v106 = v23;

    goto LABEL_13;
  }

LABEL_12:
  v106 = 0x3FD999999999999ALL;
  v105 = 0x3FB999999999999ALL;
  v22 = static Color.blue.getter();
LABEL_13:
  v24 = *a5;

  v100 = v24;
  GraphicsContext.environment.getter();
  Color.resolve(in:)();
  v107 = v25;
  v108 = v26;
  v109 = v27;
  v29 = v28;
  v114 = v22;

  (*(v15 + 8))(v17, v14);
  v30 = *(v116 + 8);
  v31 = *(v116 + 32);
  v117[0] = *(v116 + 16);
  v117[1] = v31;
  v117[2] = *(v116 + 48);
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v36 = *(v30 + 16);
  if (v36)
  {
    v37 = v30 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
    v38 = *(v115 + 72);
    v39 = *(v30 + 16);
    do
    {
      outlined init with copy of Text.Effect.ResolvedDrawing.Operation(v37, v13, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
      Text.Effect.ResolvedDrawing.Operation.drawingBounds(context:)(v117);
      v123.origin.x = v40;
      v123.origin.y = v41;
      v123.size.width = v42;
      v123.size.height = v43;
      v118.origin.x = x;
      v118.origin.y = y;
      v118.size.width = width;
      v118.size.height = height;
      v119 = CGRectUnion(v118, v123);
      x = v119.origin.x;
      y = v119.origin.y;
      width = v119.size.width;
      height = v119.size.height;
      outlined destroy of Text.Effect.ResolvedDrawing.Operation(v13, type metadata accessor for Text.Effect.ResolvedDrawing.Operation);
      v37 += v38;
      --v39;
    }

    while (v39);
  }

  v99 = CGRect.outset(by:)(8.0, 8.0, 8.0, 8.0, x, y, width, height);
  v45 = v44;
  v47 = v46;
  v49 = v48;
  type metadata accessor for GlimmerTextEffect.Timing(0);
  v50 = v112;
  (*(v8 + 104))(v10, *MEMORY[0x1E697E7D0], v112);
  v51 = static LayoutDirection.== infix(_:_:)();
  v52 = (*(v8 + 8))(v10, v50);
  if (v111 != v110 && (*(a4 + 56) & 0xFE) == 2)
  {
    if (v110)
    {
      v98 = v29;
      v74 = v114;
      v115 = v45;
      GlimmerTextEffect.Timing.unitProgress(at:for:)(v101);
      v76 = v75;
      v121.origin.x = x;
      v121.origin.y = y;
      v121.size.width = width;
      v121.size.height = height;
      v77 = v76 * CGRectGetWidth(v121);
      v78 = x;
      v79 = y;
      v80 = width;
      v81 = height;
      if (v51)
      {
        v82 = v77 + CGRectGetMinX(*&v78) + -50.0;
      }

      else
      {
        v82 = CGRectGetMaxX(*&v78) - v77 + 50.0;
      }

      v122.origin.x = x;
      v122.origin.y = y;
      v122.size.width = width;
      v122.size.height = height;
      MidY = CGRectGetMidY(v122);
      type metadata accessor for _ContiguousArrayStorage<Color>();
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_195CC8D70;
      v86 = v82;
      if (v51)
      {
        *(v85 + 32) = static Color.white.getter();
        v87 = static Color.clear.getter();
      }

      else
      {
        *(v85 + 32) = static Color.clear.getter();
        v87 = static Color.white.getter();
      }

      v88 = v98;
      v89 = v115;
      *(v85 + 40) = v87;
      MEMORY[0x19A8BD450](v85);
      v90 = v102;
      static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

      MEMORY[0x1EEE9AC00](v91);
      *&v97[-48] = v86;
      *&v97[-40] = MidY;
      *&v97[-32] = v74;
      v92 = v105;
      v93 = v106;
      *&v97[-24] = v105;
      *&v97[-16] = v93;
      v94 = v116;
      *&v97[-8] = v116;
      v95 = GraphicsContext.drawLayer(content:)();
      MEMORY[0x1EEE9AC00](v95);
      *&v97[-112] = v99;
      *&v97[-104] = v89;
      *&v97[-96] = v47;
      *&v97[-88] = v49;
      *&v97[-80] = v90;
      *&v97[-72] = v86;
      *&v97[-64] = MidY;
      *&v97[-56] = v74;
      *&v97[-48] = v92;
      *&v97[-40] = v93;
      *&v97[-32] = v94;
      v96 = v108;
      *&v97[-24] = v107;
      *&v97[-20] = v96;
      *&v97[-16] = v109;
      *&v97[-12] = v88;
      GraphicsContext.drawLayer(content:)();

      (*(v103 + 8))(v90, v104);
      return;
    }

    v70 = v29;
    if (v36)
    {
      v71 = *v116;
      v72 = v30 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v73 = *(v115 + 72);
      do
      {
        v52 = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v117, 0, 0, 1, a5, v71);
        v72 += v73;
        --v36;
      }

      while (v36);
    }

    *&v97[-32] = MEMORY[0x1EEE9AC00](v52).n128_u64[0];
    *&v97[-24] = v116;
    v83 = v108;
    *&v97[-16] = v107;
    *&v97[-12] = v83;
    *&v97[-8] = v109;
    *&v97[-4] = v70;
LABEL_38:
    GraphicsContext.drawLayer(content:)();

    return;
  }

  if (v110)
  {
    v53 = v29;
    v54 = x;
    v55 = y;
    v56 = width;
    v57 = height;
    if (v51)
    {
      MaxX = CGRectGetMaxX(*&v54);
      v59 = 50.0;
    }

    else
    {
      MaxX = CGRectGetMinX(*&v54);
      v59 = -50.0;
    }

    v63 = MaxX + v59;
    v120.origin.x = x;
    v120.origin.y = y;
    v120.size.width = width;
    v120.size.height = height;
    v65 = CGRectGetMidY(v120);
    if (v36)
    {
      v66 = *v116;
      v67 = v30 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
      v68 = *(v115 + 72);
      do
      {
        v64 = Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v117, 0, 0, 1, a5, v66);
        v67 += v68;
        --v36;
      }

      while (v36);
    }

    MEMORY[0x1EEE9AC00](v64);
    *&v97[-64] = v63;
    *&v97[-56] = v65;
    *&v97[-48] = v114;
    v69 = v106;
    *&v97[-40] = v105;
    *&v97[-32] = v69;
    *&v97[-24] = v116;
    LODWORD(v69) = v108;
    *&v97[-16] = v107;
    *&v97[-12] = v69;
    *&v97[-8] = v109;
    *&v97[-4] = v53;
    goto LABEL_38;
  }

  if (v36)
  {
    v60 = *v116;
    v61 = v30 + ((*(v115 + 80) + 32) & ~*(v115 + 80));
    v62 = *(v115 + 72);
    do
    {
      Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v117, 0, 0, 1, a5, v60);
      v61 += v62;
      --v36;
    }

    while (v36);
  }
}

uint64_t type metadata accessor for GlimmerTextEffect.Timing(uint64_t a1)
{
  result = type metadata singleton initialization cache for GlimmerTextEffect.Timing;
  if (!type metadata singleton initialization cache for GlimmerTextEffect.Timing)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata accessor for Text.Effect.ConcreteConfiguration<GlimmerTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type GlimmerTextEffect and conformance GlimmerTextEffect(0, a2, a3);
    v7 = a3(a1, &type metadata for GlimmerTextEffect, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for _ContiguousArrayStorage<Shader.Argument>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Shader.Argument>)
  {
    type metadata accessor for Shader.Argument();
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Shader.Argument>);
    }
  }
}

uint64_t outlined init with copy of Text.Effect.ResolvedDrawing.Operation(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Text.Effect.ResolvedDrawing.Operation(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata completion function for GlimmerTextEffect.Timing(uint64_t a1)
{
  result = type metadata accessor for LayoutDirection();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO7MarkersV6MarkerV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16) || !v2 || a1 == a2)
  {
    return;
  }

  v46 = *MEMORY[0x1E69DB758];
  v45 = *MEMORY[0x1E69DB650];
  v44 = *MEMORY[0x1E69DB648];
  v43 = *MEMORY[0x1E69DB750];
  v3 = (a2 + 56);
  v4 = (a1 + 56);
  while (1)
  {
    v5 = *(v4 - 3);
    v6 = *(v4 - 16);
    v8 = *(v4 - 1);
    v7 = *v4;
    v9 = *(v3 - 3);
    v11 = *(v3 - 1);
    v10 = *v3;
    v49 = *(v3 - 16);
    if (v6)
    {
      if ((*(v3 - 2) & 1) == 0)
      {
        return;
      }

      if (v5 != v9)
      {
        goto LABEL_95;
      }

      goto LABEL_83;
    }

    if (*(v3 - 2))
    {
      return;
    }

    v42 = *(v4 - 16);
    outlined copy of Text.Effect.Markers.MarkerType(v9, 0);
    outlined copy of Text.Effect.Markers.MarkerType(v5, 0);
    _sSD4KeysV2eeoiySbAByxq__G_ADtFZSo21NSAttributedStringKeya_ypTt1g5(v5, v9);
    if ((v12 & 1) == 0)
    {
      goto LABEL_94;
    }

    v47 = v10;
    v48 = v7;
    if (*(v5 + 16) && (v13 = specialized __RawDictionaryStorage.find<A>(_:)(v46), (v14 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v13, v51);
      v15 = swift_dynamicCast();
      if (v15)
      {
        v16 = v50;
      }

      else
      {
        v16 = 0;
      }

      v17 = v15 ^ 1;
      v18 = *(v9 + 16);
      if (!v18)
      {
LABEL_17:
        v19 = 1;
        if (v17)
        {
          goto LABEL_18;
        }

        goto LABEL_25;
      }
    }

    else
    {
      v16 = 0;
      v17 = 1;
      v18 = *(v9 + 16);
      if (!v18)
      {
        goto LABEL_17;
      }
    }

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v46);
    if (v21)
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v20, v51);
      v22 = swift_dynamicCast();
      v18 = v50;
      if (!v22)
      {
        v18 = 0;
      }

      v19 = v22 ^ 1;
      if (v17)
      {
LABEL_18:
        if (!v19)
        {
          goto LABEL_94;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v18 = 0;
      v19 = 1;
      if (v17)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    if (v16 == v18)
    {
      v23 = v19;
    }

    else
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_94;
    }

LABEL_29:
    if (*(v5 + 16) && (v24 = specialized __RawDictionaryStorage.find<A>(_:)(v45), (v25 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v24, v51);
      type metadata accessor for NSObject();
      if (swift_dynamicCast())
      {
        v26 = v50;
      }

      else
      {
        v26 = 0;
      }

      if (!*(v9 + 16))
      {
LABEL_44:
        v29 = 0;
        if (!v26)
        {
          goto LABEL_42;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v26 = 0;
      if (!*(v9 + 16))
      {
        goto LABEL_44;
      }
    }

    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
    if ((v28 & 1) == 0)
    {
      goto LABEL_44;
    }

    outlined init with copy of Any(*(v9 + 56) + 32 * v27, v51);
    type metadata accessor for NSObject();
    if (swift_dynamicCast())
    {
      v29 = v50;
    }

    else
    {
      v29 = 0;
    }

    if (!v26)
    {
LABEL_42:
      if (v29)
      {
        goto LABEL_93;
      }

      goto LABEL_47;
    }

LABEL_45:
    if (!v29)
    {
      goto LABEL_92;
    }

    type metadata accessor for NSObject();
    v30 = static NSObject.== infix(_:_:)();

    if ((v30 & 1) == 0)
    {
      goto LABEL_94;
    }

LABEL_47:
    if (*(v5 + 16) && (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v44), (v32 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v31, v51);
      type metadata accessor for NSObject();
      if (swift_dynamicCast())
      {
        v26 = v50;
      }

      else
      {
        v26 = 0;
      }

      if (!*(v9 + 16))
      {
LABEL_62:
        v29 = 0;
        if (!v26)
        {
          goto LABEL_60;
        }

        goto LABEL_63;
      }
    }

    else
    {
      v26 = 0;
      if (!*(v9 + 16))
      {
        goto LABEL_62;
      }
    }

    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v44);
    if ((v34 & 1) == 0)
    {
      goto LABEL_62;
    }

    outlined init with copy of Any(*(v9 + 56) + 32 * v33, v51);
    type metadata accessor for NSObject();
    if (swift_dynamicCast())
    {
      v29 = v50;
    }

    else
    {
      v29 = 0;
    }

    if (!v26)
    {
LABEL_60:
      if (v29)
      {
        goto LABEL_93;
      }

      goto LABEL_65;
    }

LABEL_63:
    if (!v29)
    {
      goto LABEL_92;
    }

    type metadata accessor for NSObject();
    v35 = static NSObject.== infix(_:_:)();

    if ((v35 & 1) == 0)
    {
      goto LABEL_94;
    }

LABEL_65:
    if (*(v5 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v43), (v37 & 1) != 0))
    {
      outlined init with copy of Any(*(v5 + 56) + 32 * v36, v51);
      type metadata accessor for NSObject();
      if (swift_dynamicCast())
      {
        v26 = v50;
      }

      else
      {
        v26 = 0;
      }

      if (!*(v9 + 16))
      {
        goto LABEL_80;
      }
    }

    else
    {
      v26 = 0;
      if (!*(v9 + 16))
      {
        goto LABEL_80;
      }
    }

    v38 = specialized __RawDictionaryStorage.find<A>(_:)(v43);
    if (v39)
    {
      outlined init with copy of Any(*(v9 + 56) + 32 * v38, v51);
      type metadata accessor for NSObject();
      if (swift_dynamicCast())
      {
        v29 = v50;
      }

      else
      {
        v29 = 0;
      }

      if (!v26)
      {
LABEL_78:
        if (v29)
        {
          goto LABEL_93;
        }

        v6 = 0;
        v49 = 0;
        v10 = v47;
        v7 = v48;
        goto LABEL_83;
      }

      goto LABEL_81;
    }

LABEL_80:
    v29 = 0;
    if (!v26)
    {
      goto LABEL_78;
    }

LABEL_81:
    if (!v29)
    {
LABEL_92:
      v29 = v26;
LABEL_93:

LABEL_94:
      v6 = 0;
LABEL_95:
      v41 = v6;
      outlined consume of Text.Effect.Markers.MarkerType(v9, v6);
      outlined consume of Text.Effect.Markers.MarkerType(v5, v41);
      return;
    }

    type metadata accessor for NSObject();
    v40 = static NSObject.== infix(_:_:)();

    v10 = v47;
    v7 = v48;
    v6 = v42;
    if ((v40 & 1) == 0)
    {
      goto LABEL_95;
    }

LABEL_83:
    outlined consume of Text.Effect.Markers.MarkerType(v5, v6);
    outlined consume of Text.Effect.Markers.MarkerType(v9, v49);
    if (__OFSUB__(v11, v8))
    {
      break;
    }

    if (v11 != v8)
    {
      return;
    }

    if (__OFSUB__(v10, v7))
    {
      goto LABEL_98;
    }

    if (v10 == v7)
    {
      v3 += 4;
      v4 += 4;
      if (--v2)
      {
        continue;
      }
    }

    return;
  }

  __break(1u);
LABEL_98:
  __break(1u);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO11CompositionV3RunV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.Composition.Run(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v13, v10, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v14, v6, type metadata accessor for Text.Effect.Composition.Run);
        specialized static Text.Effect.Composition.Operation.== infix(_:_:)(v10, v6);
        v17 = v16;
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v6, type metadata accessor for Text.Effect.Composition.Run);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v10, type metadata accessor for Text.Effect.Composition.Run);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport0B5Model33_5BB6BA5906EF51728AE44082969295EDLLV12MorphClusterV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v124 = v11;
  v125 = v10;
  v126 = v9;
  v127 = v8;
  v128 = v7;
  v129 = v6;
  v130 = v5;
  v131 = v4;
  v132 = v2;
  v133 = v3;
  v13 = (a1 + 32);
  v14 = (a2 + 32);
  v15 = v12 - 1;
  while (1)
  {
    v16 = v13[9];
    v97 = v13[8];
    v98 = v16;
    v17 = v13[11];
    v99 = v13[10];
    v100 = v17;
    v18 = v13[5];
    *&v93[32] = v13[4];
    v94 = v18;
    v19 = v13[7];
    v95 = v13[6];
    v96 = v19;
    v20 = v13[1];
    v91 = *v13;
    v92 = v20;
    v21 = v13[3];
    *v93 = v13[2];
    *&v93[16] = v21;
    v22 = *(&v91 + 1);
    v24 = v92;
    v23 = *v93;
    v25 = v93[40];
    v26 = v94;
    v27 = v14[9];
    v107 = v14[8];
    v108 = v27;
    v28 = v14[11];
    v109 = v14[10];
    v110 = v28;
    v29 = v14[5];
    *&v103[32] = v14[4];
    v104 = v29;
    v30 = v14[7];
    v105 = v14[6];
    v106 = v30;
    v31 = v14[1];
    v101 = *v14;
    v102 = v31;
    v32 = v14[3];
    *v103 = v14[2];
    *&v103[16] = v32;
    if (v91 != v101)
    {
      return 0;
    }

    rect1 = *&v93[24];
    rect1_16 = *&v93[8];
    v57 = *&v103[24];
    v59 = *&v103[8];
    v33 = v103[40];
    v34 = v104;
    v64.size.height = *v103;
    v64.origin.x = *(&v101 + 1);
    *&v64.origin.y = v102;
    outlined init with copy of TextModel.MorphCluster(&v91, &v81);
    outlined init with copy of TextModel.MorphCluster(&v101, &v81);
    v134.origin.x = v22;
    *&v134.origin.y = v24;
    v134.size.height = v23;
    if (!CGRectEqualToRect(v134, v64))
    {
      goto LABEL_30;
    }

    v118 = rect1_16;
    v119 = rect1;
    v120 = v25;
    v121 = v59;
    v122 = v57;
    v123 = v33;
    if ((static Path.== infix(_:_:)() & 1) == 0 || *&v26 != *&v34 || *(&v26 + 1) != *(&v34 + 1))
    {
      goto LABEL_30;
    }

    v66 = v15;
    v36 = *(&v95 + 1);
    v35 = v95;
    v37 = *(&v96 + 1);
    v38 = v96;
    v39 = *(&v97 + 1);
    v40 = *&v97;
    v41 = v98;
    v67 = v99;
    v42 = BYTE8(v99);
    v43 = *(&v99 + 9) | ((*(&v99 + 13) | (HIBYTE(v99) << 16)) << 32);
    v44 = BYTE8(v109);
    v46 = *(&v100 + 1);
    v45 = *&v100;
    if (BYTE8(v99) == 255)
    {
      if (BYTE8(v109) != 255)
      {
LABEL_24:
        v81 = v95;
        v82 = v96;
        *v83 = v97;
        *&v83[16] = v98;
        *&v83[32] = v99;
        v83[40] = BYTE8(v99);
        *&v83[41] = *(&v99 + 9);
        v83[47] = (*(&v99 + 9) | ((*(&v99 + 13) | (HIBYTE(v99) << 16)) << 32)) >> 48;
        *&v83[45] = *(&v99 + 13);
        v84 = v100;
        v87 = v107;
        v88 = v108;
        v85 = v105;
        v86 = v106;
        v89 = v109;
        v90 = v110;
        outlined init with copy of TextModel.Cluster?(&v95, &v68);
        outlined init with copy of TextModel.Cluster?(&v105, &v68);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(&v81, type metadata accessor for (TextModel.Cluster?, TextModel.Cluster?));
        goto LABEL_30;
      }

      outlined init with copy of TextModel.Cluster?(&v95, &v81);
      outlined init with copy of TextModel.Cluster?(&v105, &v81);
    }

    else
    {
      if (BYTE8(v109) == 255)
      {
        goto LABEL_24;
      }

      rect1a = *(&v95 + 1);
      v47 = v96;
      v65 = *&v97;
      *v83 = v107;
      *&v83[16] = v108;
      v81 = v105;
      v82 = v106;
      *&v83[32] = v109;
      v84 = v110;
      if (v95 != v105)
      {
        outlined init with copy of TextModel.Cluster?(&v95, &v68);
        outlined init with copy of TextModel.Cluster?(&v105, &v68);
LABEL_27:
        outlined destroy of TextModel.Cluster?(&v81);
        v68 = v35;
        v69 = rect1a;
        v70 = v47;
        v71 = v65;
        v72 = v39;
        v73 = v41;
        v74 = v67;
        v75 = v42;
        v78 = BYTE6(v43);
        v77 = WORD2(v43);
        v76 = v43;
LABEL_29:
        v79 = v45;
        v80 = v46;
        outlined destroy of TextModel.Cluster?(&v68);
LABEL_30:
        outlined destroy of TextModel.MorphCluster(&v101);
        outlined destroy of TextModel.MorphCluster(&v91);
        return 0;
      }

      v58 = *&v83[24];
      v60 = *&v83[8];
      v48 = v84;
      v49 = *(&v100 + 1);
      v50 = *&v100;
      v52 = *(&v82 + 1);
      v51 = *v83;
      v54 = *(&v81 + 1);
      v53 = *&v82;
      outlined init with copy of TextModel.Cluster?(&v95, &v68);
      outlined init with copy of TextModel.Cluster?(&v105, &v68);
      v135.origin.x = rect1a;
      *&v135.origin.y = v47;
      v135.size.height = v65;
      v136.origin.x = v54;
      v136.origin.y = v53;
      v136.size.width = v52;
      v136.size.height = v51;
      v46 = v49;
      v45 = v50;
      if (!CGRectEqualToRect(v135, v136))
      {
        goto LABEL_27;
      }

      v111 = v39;
      v112 = v41;
      v113 = v67;
      v114 = v42;
      v115 = v60;
      v116 = v58;
      v117 = v44;
      v55 = static Path.== infix(_:_:)();
      outlined destroy of TextModel.Cluster?(&v81);
      if ((v55 & 1) == 0 || v50 != *&v48 || v46 != *(&v48 + 1))
      {
        v68 = v35;
        v69 = rect1a;
        v70 = v47;
        v71 = v65;
        v72 = v39;
        v73 = v41;
        v74 = v67;
        v75 = v42;
        v76 = v43;
        v78 = BYTE6(v43);
        v77 = WORD2(v43);
        goto LABEL_29;
      }

      v37 = *(&v47 + 1);
      v40 = v65;
      v38 = v47;
      v36 = rect1a;
    }

    *&v81 = v35;
    *(&v81 + 1) = v36;
    *&v82 = v38;
    *(&v82 + 1) = v37;
    *v83 = v40;
    *&v83[8] = v39;
    *&v83[16] = v41;
    *&v83[32] = v67;
    v83[40] = v42;
    *&v83[41] = v43;
    v83[47] = BYTE6(v43);
    *&v83[45] = WORD2(v43);
    *&v84 = v45;
    *(&v84 + 1) = v46;
    outlined destroy of TextModel.Cluster?(&v81);
    outlined destroy of TextModel.MorphCluster(&v101);
    outlined destroy of TextModel.MorphCluster(&v91);
    if (!v66)
    {
      return 1;
    }

    v15 = v66 - 1;
    v14 += 12;
    v13 += 12;
  }
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ20TextAnimationSupport03RawB6Layout33_EB92A35C21DD52D72B91A53CA7419194LLV8FragmentV_Tt1g5(uint64_t result, uint64_t a2)
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

  v3 = (result + 48);
  v4 = (a2 + 48);
  while (v2)
  {
    v5 = *(v3 - 1) == *(v4 - 1);
    if (*v3 != *v4)
    {
      v5 = 0;
    }

    result = *(v3 - 2) == *(v4 - 2) && v5;
    v6 = result != 1 || v2-- == 1;
    v3 += 3;
    v4 += 3;
    if (v6)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSd_Tt1g5(uint64_t result, uint64_t a2)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSny7SwiftUI4TextV6LayoutV14CharacterIndexVG_Tt1g5(uint64_t result, uint64_t a2)
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

  v3 = (result + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v5 = *(v3 - 1);
    v6 = *(i - 1);
    if (__OFSUB__(v6, v5))
    {
      break;
    }

    if (v6 != v5)
    {
      return 0;
    }

    v8 = *v3;
    v3 += 2;
    v7 = v8;
    if (__OFSUB__(*i, v8))
    {
      goto LABEL_13;
    }

    if (*i != v7)
    {
      return 0;
    }

    if (!--v2)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(uint64_t result, uint64_t a2)
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

void _sSD4KeysV2eeoiySbAByxq__G_ADtFZSo21NSAttributedStringKeya_ypTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (1)
    {
      v9 = v8;
      if (!v6)
      {
        break;
      }

LABEL_10:
      if (*(a2 + 16))
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * v10)));
        specialized __RawDictionaryStorage.find<A>(_:)(v11);
        v13 = v12;

        if (v13)
        {
          continue;
        }
      }

      return;
    }

    while (1)
    {
      v8 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v8 >= v7)
      {

        return;
      }

      v6 = *(a1 + 64 + 8 * v8);
      ++v9;
      if (v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t specialized RangeSet.upperBound.getter()
{
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-1] - v3;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_2(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_2(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v6 = dispatch thunk of Collection.subscript.read();
    v5 = *(v7 + 8);
    v6(v10, 0);
    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

{
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-1] - v3;
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
  if (dispatch thunk of Collection.isEmpty.getter())
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BB0]);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v6 = dispatch thunk of Collection.subscript.read();
    v5 = *(v7 + 8);
    v6(v10, 0);
    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

uint64_t specialized RangeSet.lowerBound.getter()
{
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-1] - v3;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_2(&lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v10[4] == v10[0])
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    v6 = dispatch thunk of Collection.subscript.read();
    v5 = *v7;
    v6(v10, 0);
    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

{
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v10[-1] - v3;
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BC8]);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v10[4] == v10[0])
  {
    (*(v2 + 8))(v4, v1);
    return 0;
  }

  else
  {
    v6 = dispatch thunk of Collection.subscript.read();
    v5 = *v7;
    v6(v10, 0);
    (*(v2 + 8))(v4, v1);
  }

  return v5;
}

uint64_t Text.Effect.BaseContext.content<A>(for:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return Text.Effect.DrawableContent.init(keyframes:key:)();
}

uint64_t Text.Effect.Composition.displacements(at:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v32 = a2;
  v11 = type metadata accessor for Text.Effect.Composition.Run(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Text.Effect.Composition.DisplacementCollector(0);
  v16 = (v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v16[7];
  v20 = type metadata accessor for Text.Layout.Line();
  (*(*(v20 - 8) + 16))(v18 + v19, v6, v20);
  *(v18 + v16[9]) = 0.0;
  v21 = v16[10];
  v22 = MEMORY[0x1E69E7CC8];
  *(v18 + v21) = MEMORY[0x1E69E7CC8];
  *(v18 + v16[11]) = v22;
  *v18 = a5;
  v23 = (v18 + v16[8]);
  v24 = v32;
  *v23 = a1;
  v23[1] = v24;
  v23[2] = a3;
  v23[3] = a4;
  v25 = *(v6 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v25 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v28 = *(v12 + 72);

    do
    {
      outlined init with copy of Text.Effect.Composition.Operation(v27, v14, type metadata accessor for Text.Effect.Composition.Run);
      Text.Effect.Composition.Operation.appendDisplacement(to:)(v18);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v14, type metadata accessor for Text.Effect.Composition.Operation);
      v27 += v28;
      --v26;
    }

    while (v26);
  }

  else
  {
  }

  v29 = *(v18 + v21);

  outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.DisplacementCollector);
  return v29;
}

void Text.Effect.Composition.needsUpdate(at:context:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v66 = a4;
  v65 = a2;
  v9 = type metadata accessor for Text.Effect.Composition(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for Text.Effect.Composition.Run(0) - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v5 + *(v10 + 32));
  v71 = *(v19 + 16);
  if (!v71)
  {
    return;
  }

  v20 = 0;
  v70 = v19 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v67 = a1;
  v64 = v12;
  v69 = v19;
  while (v20 < *(v19 + 16))
  {
    v21 = v16;
    outlined init with copy of Text.Effect.Composition.Operation(v70 + *(v16 + 72) * v20, v18, type metadata accessor for Text.Effect.Composition.Run);
    outlined init with copy of Text.Effect.Composition.Operation(v18, v14, type metadata accessor for Text.Effect.Composition.Operation);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_4;
      }

      v23 = *v14;
      v24 = v14[1];
      swift_beginAccess();
      v25 = a3[5];
      if (*(v25 + 16))
      {
        Hasher.init(_seed:)();
        MEMORY[0x19A8BDE80](v23);
        v26 = Hasher._finalize()();
        v27 = -1 << *(v25 + 32);
        v28 = v26 & ~v27;
        if ((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
        {
          v29 = ~v27;
          while (*(*(v25 + 48) + 8 * v28) != v23)
          {
            v28 = (v28 + 1) & v29;
            if (((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          goto LABEL_4;
        }
      }

LABEL_14:
      swift_beginAccess();
      v30 = a3[3];
      if (!*(v30 + 16) || (v31 = specialized __RawDictionaryStorage.find<A>(_:)(v23), (v32 & 1) == 0))
      {
        swift_endAccess();
LABEL_4:
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.Run);
        goto LABEL_5;
      }

      v33 = *(*(v30 + 56) + 8 * v31);
      swift_endAccess();
      v34 = v67;
      v35 = *(v67 + 16);
      if (v35)
      {
        v36 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
        if (v37)
        {
          v35 = *(*(v34 + 56) + 8 * v36);
        }

        else
        {
          v35 = 0;
        }
      }

      v56 = v35 + v24;
      if (__OFADD__(v35, v24))
      {
        goto LABEL_44;
      }

      v63 = *((*MEMORY[0x1E69E7D40] & *v33) + 0xD0);
      v57 = v33;
      v58 = v63(v23, v56, v67, v65, a3, v66, a5);

      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.Run);
      if (v58)
      {
        return;
      }
    }

    else
    {
      v38 = *v14;
      v39 = v14[1];
      type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
      outlined init with take of Text.Effect.Composition(v14 + *(v40 + 48), v68, type metadata accessor for Text.Effect.Composition);
      Text.Effect.Composition.needsUpdate(at:context:)(v67, v65, a3, v66, a5);
      v42 = v41;
      swift_beginAccess();
      v43 = a3[5];
      if (*(v43 + 16))
      {
        Hasher.init(_seed:)();
        MEMORY[0x19A8BDE80](v38);
        v44 = Hasher._finalize()();
        v45 = -1 << *(v43 + 32);
        v46 = v44 & ~v45;
        if ((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
        {
          v47 = ~v45;
          while (*(*(v43 + 48) + 8 * v46) != v38)
          {
            v46 = (v46 + 1) & v47;
            if (((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

LABEL_31:
          outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v68, type metadata accessor for Text.Effect.Composition);
          outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.Run);
          if (v42)
          {
            return;
          }

          goto LABEL_5;
        }
      }

LABEL_24:
      swift_beginAccess();
      v48 = a3[4];
      if (!*(v48 + 16) || (v49 = specialized __RawDictionaryStorage.find<A>(_:)(v38), (v50 & 1) == 0))
      {
        swift_endAccess();
        goto LABEL_31;
      }

      v51 = *(*(v48 + 56) + 8 * v49);
      swift_endAccess();
      if (v42)
      {
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v68, type metadata accessor for Text.Effect.Composition);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.Run);
        return;
      }

      v52 = v67;
      v53 = *(v67 + 16);
      if (v53)
      {
        v54 = specialized __RawDictionaryStorage.find<A>(_:)(v38);
        if (v55)
        {
          v53 = *(*(v52 + 56) + 8 * v54);
        }

        else
        {
          v53 = 0;
        }
      }

      v59 = v53 + v39;
      if (__OFADD__(v53, v39))
      {
        goto LABEL_45;
      }

      v63 = *((*MEMORY[0x1E69E7D40] & *v51) + 0xD0);
      v60 = v51;
      v61 = v63(v38, v59, v67, v65, a3, v66, a5);

      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v68, type metadata accessor for Text.Effect.Composition);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition.Run);
      if (v61)
      {
        return;
      }
    }

LABEL_5:
    ++v20;
    v16 = v21;
    v19 = v69;
    if (v20 == v71)
    {
      return;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void Text.Effect.Composition.useSharedDrawing(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v39 = a4;
  v7 = type metadata accessor for Text.Effect.Composition(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v43);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Text.Effect.Composition.Run(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + *(v8 + 32));
  v42 = *(v16 + 16);
  if (v42)
  {
    v17 = 0;
    v41 = v16 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v37 = a3;
    do
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
        return;
      }

      outlined init with copy of Text.Effect.Composition.Operation(v41 + *(v13 + 72) * v17, v15, type metadata accessor for Text.Effect.Composition.Run);
      outlined init with copy of Text.Effect.Composition.Operation(v15, v11, type metadata accessor for Text.Effect.Composition.Operation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          goto LABEL_4;
        }

        v19 = *v11;
        swift_beginAccess();
        v20 = *(a3 + 40);
        if (*(v20 + 16))
        {
          Hasher.init(_seed:)();
          MEMORY[0x19A8BDE80](v19);
          v21 = Hasher._finalize()();
          v22 = -1 << *(v20 + 32);
          v23 = v21 & ~v22;
          if ((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
          {
            v24 = ~v22;
            while (*(*(v20 + 48) + 8 * v23) != v19)
            {
              v23 = (v23 + 1) & v24;
              if (((*(v20 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
              {
                goto LABEL_14;
              }
            }

            goto LABEL_4;
          }
        }

LABEL_14:
        swift_beginAccess();
        v25 = *(a3 + 24);
        if (!*(v25 + 16) || (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v27 & 1) == 0))
        {
          swift_endAccess();
LABEL_4:
          outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v15, type metadata accessor for Text.Effect.Composition.Run);
          goto LABEL_5;
        }

        v28 = *(*(v25 + 56) + 8 * v26);
        swift_endAccess();
        v29 = a1;
        v30 = *((*MEMORY[0x1E69E7D40] & *v28) + 0x110);
        v31 = v28;
        v32 = v30();
        a1 = v29;
        a3 = v37;
        v33 = v32;
      }

      else
      {
        type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
        v35 = v40;
        outlined init with take of Text.Effect.Composition(v11 + *(v34 + 48), v40, type metadata accessor for Text.Effect.Composition);
        Text.Effect.Composition.useSharedDrawing(context:)(a1, v38, a3, v39);
        v33 = v36;
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v35, type metadata accessor for Text.Effect.Composition);
      }

      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v15, type metadata accessor for Text.Effect.Composition.Run);
      if (v33)
      {
        return;
      }

LABEL_5:
      ++v17;
    }

    while (v17 != v42);
  }
}

uint64_t Text.Effect.Composition.Operation.appendIdentifiers(to:)(uint64_t a1)
{
  v3 = type metadata accessor for Text.Effect.Composition.Run(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v23 - v14);
  outlined init with copy of Text.Effect.Composition.Operation(v1, &v23 - v14, type metadata accessor for Text.Effect.Composition.Operation);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return specialized Set._Variant.insert(_:)(&v24, *v15);
    }
  }

  else
  {
    v17 = *v15;
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
    outlined init with take of Text.Effect.Composition(v15 + *(v18 + 48), v9, type metadata accessor for Text.Effect.Composition);
    specialized Set._Variant.insert(_:)(&v24, v17);
    v19 = *&v9[*(v7 + 24)];
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
      v22 = *(v4 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v21, v6, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v6, v12, type metadata accessor for Text.Effect.Composition.Operation);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v6, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendIdentifiers(to:)(a1);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v12, type metadata accessor for Text.Effect.Composition.Operation);
        v21 += v22;
        --v20;
      }

      while (v20);
    }

    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v9, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.Composition(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((MEMORY[0x19A8BCFA0]() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 != *v9 || v8 != v9[1])
  {
    return 0;
  }

  v12 = *(a3 + 24);
  v13 = *(a1 + v12);
  v14 = *(a2 + v12);

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO11CompositionV3RunV_Tt1g5(v13, v14);
}

void closure #1 in Text.Effect.Composition.bounds(at:context:)(CGFloat *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, CGRect *a4@<X8>, double a5@<D0>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v14.origin.x = Text.Effect.Composition.Operation.bounds(at:line:context:)(a2, a3, a5);
  v14.origin.y = v10;
  v14.size.width = v11;
  v14.size.height = v12;
  v13.origin.x = v6;
  v13.origin.y = v7;
  v13.size.width = v8;
  v13.size.height = v9;
  *a4 = CGRectUnion(v13, v14);
}

double Text.Effect.Composition.Operation.bounds(at:line:context:)(uint64_t a1, uint64_t *a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for Text.Layout.Run();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.Composition.Operation(v4, v17, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      Text.Layout.Line.subscript.getter();
      Text.Layout.Run.typographicBounds.getter();
      (*(v9 + 8))(v11, v8);
      v19 = a2[4];
      v20 = 0.0;
      if (!*(v19 + 16))
      {
        goto LABEL_10;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v31 = *v17;
      v32 = v17[1];
      Text.Layout.Line.subscript.getter();
      Text.Layout.Run.typographicBounds.getter();
      (*(v9 + 8))(v11, v8);
      v19 = a2[5];
      v20 = 0.0;
      if (!*(v19 + 16))
      {
        goto LABEL_10;
      }

      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
      if ((v33 & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    v20 = *(*(v19 + 56) + 8 * v21);
LABEL_10:
    v30 = v20 + v35[2];
    Text.Effect.Composition.Operation.metrics(at:line:context:)(a1, *a2, a2[1], a2[2], a2[3], a3);
    return v30;
  }

  type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
  v24 = outlined init with take of Text.Effect.Composition(v17 + *(v23 + 48), v14, type metadata accessor for Text.Effect.Composition);
  *&v25 = MEMORY[0x1EEE9AC00](v24).n128_u64[0];
  v35[-4] = a3;
  *&v35[-3] = v14;
  *&v35[-2] = a2;
  v30 = specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.bounds(at:context:), v25, v27, v28, v29, &v35[-6], v26);
  outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v14, type metadata accessor for Text.Effect.Composition);
  return v30;
}

double closure #1 in Text.Effect.Composition.widthDifference(at:context:)@<D0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, double *a7@<X8>, double a8@<D0>)
{
  v9 = *a1;
  Text.Effect.Composition.Operation.widthDifference(at:line:context:)(a8, a2, a3, a4, a5, a6);
  result = v9 + v10;
  *a7 = result;
  return result;
}

uint64_t Text.Effect.Composition.Operation.widthDifference(at:line:context:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v33 = a6;
  v34 = a5;
  v32 = a4;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.Composition.Operation(v6, v19, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v19, type metadata accessor for Text.Effect.Composition.Operation);
    }

    else
    {
      v28 = *v19;
      v27 = v19[1];
      result = Text.Effect.Keyframes.validTransform(_:)(*v19, v34);
      if (result)
      {
        v29 = result;
        result = Text.Layout.Line.characterRanges(runIndices:)();
        v30 = *(a3 + 16);
        if (v30)
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(v28);
          if (v31)
          {
            v30 = *(*(a3 + 56) + 8 * result);
          }

          else
          {
            v30 = 0;
          }
        }

        if (__OFADD__(v30, v27))
        {
          __break(1u);
        }

        else
        {
          (*((*MEMORY[0x1E69E7D40] & *v29) + 0xF8))(v28, v30 + v27, v13, a3, v32, v34, v33, a1);

          return (*(v11 + 8))(v13, v10);
        }
      }
    }
  }

  else
  {
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
    v23 = outlined init with take of Text.Effect.Composition(v19 + *(v22 + 48), v16, type metadata accessor for Text.Effect.Composition);
    MEMORY[0x1EEE9AC00](v23);
    *(&v32 - 6) = a1;
    *(&v32 - 5) = v16;
    *(&v32 - 4) = a3;
    v24 = v33;
    v25 = v34;
    *(&v32 - 3) = v32;
    *(&v32 - 2) = v25;
    *(&v32 - 1) = v24;
    specialized Sequence.reduce<A>(_:_:)(_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV15widthDifference2at7context12CoreGraphics7CGFloatVAD4TimeV_AF11BaseContextVtFA2N_AH3RunVtXEfU_TA_0, 0.0, (&v32 - 8), v26);
    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v16, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

double closure #1 in Text.Effect.Composition.lineBreakingMetrics(context:)@<D0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, double *a7@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  Text.Effect.Composition.Operation.lineBreakingMetrics(line:context:)(a2, a3, a4, a5, a6);
  if (v8 > v12)
  {
    v12 = v8;
  }

  if (v9 > v13)
  {
    v13 = v9;
  }

  if (v10 > v14)
  {
    v14 = v10;
  }

  *a7 = v12;
  a7[1] = v13;
  result = v11 + v15;
  a7[2] = v14;
  a7[3] = v11 + v15;
  return result;
}

uint64_t Text.Effect.Composition.Operation.lineBreakingMetrics(line:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v35 = a5;
  v36 = a4;
  v34 = a3;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.Composition.Operation(v6, v19, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      *(&v34 - 2) = a1;
      return specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.Operation.lineBreakingMetrics(line:context:), 0.0, 0.0, 0.0, 0.0, (&v34 - 4), v21, v22);
    }

    else
    {
      v30 = *v19;
      v29 = v19[1];
      result = Text.Effect.Keyframes.validTransform(_:)(*v19, v36);
      if (result)
      {
        v31 = result;
        result = Text.Layout.Line.characterRanges(runIndices:)();
        v32 = *(a2 + 16);
        if (v32)
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if (v33)
          {
            v32 = *(*(a2 + 56) + 8 * result);
          }

          else
          {
            v32 = 0;
          }
        }

        if (__OFADD__(v32, v29))
        {
          __break(1u);
        }

        else
        {
          (*((*MEMORY[0x1E69E7D40] & *v31) + 0xE8))(v30, v32 + v29, v13, a2, v34, v36, v35);

          return (*(v11 + 8))(v13, v10);
        }
      }
    }
  }

  else
  {
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
    v25 = outlined init with take of Text.Effect.Composition(v19 + *(v24 + 48), v16, type metadata accessor for Text.Effect.Composition);
    MEMORY[0x1EEE9AC00](v25);
    *(&v34 - 6) = v16;
    *(&v34 - 5) = a2;
    v26 = v35;
    v27 = v36;
    *(&v34 - 4) = v34;
    *(&v34 - 3) = v27;
    *(&v34 - 2) = v26;
    specialized Sequence.reduce<A>(_:_:)(_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV19lineBreakingMetrics7contextAF0J0VAF11BaseContextV_tFA2L_AH3RunVtXEfU_TA_0, 0.0, 0.0, 0.0, 0.0, (&v34 - 8), v28);
    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v16, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

double closure #1 in Text.Effect.Composition.metrics(at:context:)@<D0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, double *a7@<X8>, double a8@<D0>)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  Text.Effect.Composition.Operation.metrics(at:line:context:)(a2, a3, a4, a5, a6, a8);
  if (v9 > v13)
  {
    v13 = v9;
  }

  if (v10 > v14)
  {
    v14 = v10;
  }

  if (v11 > v15)
  {
    v15 = v11;
  }

  *a7 = v13;
  a7[1] = v14;
  result = v12 + v16;
  a7[2] = v15;
  a7[3] = v12 + v16;
  return result;
}

uint64_t Text.Effect.Composition.Operation.metrics(at:line:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v37 = a5;
  v38 = a4;
  v36 = a3;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v36 - v14;
  v16 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of Text.Effect.Composition.Operation(v7, v21, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      *(&v36 - 2) = a1;
      return specialized Sequence.reduce<A>(_:_:)(partial apply for closure #1 in Text.Effect.Composition.Operation.metrics(at:line:context:), 0.0, 0.0, 0.0, 0.0, (&v36 - 4), v23, v24);
    }

    else
    {
      v32 = *v21;
      v31 = v21[1];
      result = Text.Effect.Keyframes.validTransform(_:)(*v21, v38);
      if (result)
      {
        v33 = result;
        result = Text.Layout.Line.characterRanges(runIndices:)();
        v34 = *(a2 + 16);
        if (v34)
        {
          result = specialized __RawDictionaryStorage.find<A>(_:)(v32);
          if (v35)
          {
            v34 = *(*(a2 + 56) + 8 * result);
          }

          else
          {
            v34 = 0;
          }
        }

        if (__OFADD__(v34, v31))
        {
          __break(1u);
        }

        else
        {
          (*((*MEMORY[0x1E69E7D40] & *v33) + 0xF0))(v32, v34 + v31, v15, a2, v36, v38, v37, a6);

          return (*(v13 + 8))(v15, v12);
        }
      }
    }
  }

  else
  {
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
    v27 = outlined init with take of Text.Effect.Composition(v21 + *(v26 + 48), v18, type metadata accessor for Text.Effect.Composition);
    MEMORY[0x1EEE9AC00](v27);
    *(&v36 - 6) = a6;
    *(&v36 - 5) = v18;
    *(&v36 - 4) = a2;
    v28 = v37;
    v29 = v38;
    *(&v36 - 3) = v36;
    *(&v36 - 2) = v29;
    *(&v36 - 1) = v28;
    specialized Sequence.reduce<A>(_:_:)(_s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV7metrics2at7contextAF7MetricsVAD4TimeV_AF11BaseContextVtFA2M_AH3RunVtXEfU_TA_0, 0.0, 0.0, 0.0, 0.0, (&v36 - 8), v30);
    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v18, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

void Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v90 = a6;
  *&v92 = a5;
  v91 = a4;
  v89 = a3;
  v94 = a2;
  v96 = a1;
  v8 = type metadata accessor for Text.Layout.Cluster();
  v95 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88 - v12;
  v14 = type metadata accessor for Text.Effect.Composition.Run(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = (&v88 - v25);
  outlined init with copy of Text.Effect.Composition.Operation(v93, &v88 - v25, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v28 = Text.Layout.Line.clusters(for:)();
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = type metadata accessor for Text.Effect.InteractionMetrics(0);
        v90 = *(v30 + 20);
        v92 = *(v96 + *(v30 + 28));
        v31 = *v96;
        v93 = *(v95 + 16);
        v32 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v89 = v28;
        v33 = v28 + v32;
        v91 = *(v95 + 72);
        v95 += 16;
        v34 = (v95 - 8);
        while (1)
        {
          v93(v13, v33, v8);
          Text.Layout.Cluster.typographicBounds(with:)(v94, v100);
          v35 = Text.Layout.Cluster.characterRange.getter();
          v37 = v36;
          (*v34)(v13, v8);
          v98 = v35;
          v99 = v37;
          if (__OFSUB__(v37, v35))
          {
            break;
          }

          if (v37 != v35)
          {
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
            v38 = RangeSet._ranges.modify();
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
            RangeSet.Ranges._insert(contentsOf:)();
            v38(v97, 0);
          }

          v39 = v103;
          v40 = v104;
          v41 = v101;
          v42 = v102;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
          }

          v44 = *(v31 + 2);
          v43 = *(v31 + 3);
          if (v44 >= v43 >> 1)
          {
            v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1, v31);
          }

          *(v31 + 2) = v44 + 1;
          v45 = &v31[96 * v44];
          *(v45 + 4) = v35;
          *(v45 + 5) = v37;
          *(v45 + 3) = v92;
          *(v45 + 8) = v42;
          *(v45 + 9) = v39;
          *(v45 + 10) = v40;
          *(v45 + 11) = v41;
          *(v45 + 12) = v42;
          *(v45 + 13) = v39;
          *(v45 + 14) = v40;
          *(v45 + 15) = v41;
          v33 += v91;
          if (!--v29)
          {

            *v96 = v31;
            return;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }
    }

    else
    {
      v58 = *v26;
      v59 = v26[1];
      v60 = v92;
      v61 = Text.Effect.Keyframes.validTransform(_:)(*v26, v92);
      if (v61)
      {
        v62 = v61;
        v63 = type metadata accessor for Text.Effect.InteractionMetrics(0);
        v64 = v96;
        if ((specialized Set.contains(_:)(v58, v59, *(v96 + *(v63 + 24))) & 1) == 0)
        {
          specialized Set._Variant.insert(_:)(v100, v58, v59);
          v65 = v89;
          v66 = *(v89 + 16);
          if (v66)
          {
            v67 = specialized __RawDictionaryStorage.find<A>(_:)(v58);
            v68 = v90;
            if (v69)
            {
              v66 = *(*(v65 + 56) + 8 * v67);
            }

            else
            {
              v66 = 0;
            }
          }

          else
          {
            v68 = v90;
          }

          if (__OFADD__(v66, v59))
          {
            goto LABEL_42;
          }

          (*((*MEMORY[0x1E69E7D40] & *v62) + 0x100))(v58, v66 + v59, v64, v65, v91, v60, v68, a7);
        }

        return;
      }

      v70 = Text.Layout.Line.clusters(for:)();
      v71 = *(v70 + 16);
      if (v71)
      {
        v72 = type metadata accessor for Text.Effect.InteractionMetrics(0);
        v90 = *(v72 + 20);
        v92 = *(v96 + *(v72 + 28));
        v73 = *v96;
        v93 = *(v95 + 16);
        v74 = (*(v95 + 80) + 32) & ~*(v95 + 80);
        v89 = v70;
        v75 = v70 + v74;
        v91 = *(v95 + 72);
        v95 += 16;
        v76 = (v95 - 8);
        while (1)
        {
          v93(v10, v75, v8);
          Text.Layout.Cluster.typographicBounds(with:)(v94, v100);
          v77 = Text.Layout.Cluster.characterRange.getter();
          v79 = v78;
          (*v76)(v10, v8);
          v98 = v77;
          v99 = v79;
          if (__OFSUB__(v79, v77))
          {
            break;
          }

          if (v79 != v77)
          {
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
            v80 = RangeSet._ranges.modify();
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
            RangeSet.Ranges._insert(contentsOf:)();
            v80(v97, 0);
          }

          v81 = v103;
          v82 = v104;
          v83 = v101;
          v84 = v102;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
          }

          v86 = *(v73 + 2);
          v85 = *(v73 + 3);
          if (v86 >= v85 >> 1)
          {
            v73 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v73);
          }

          *(v73 + 2) = v86 + 1;
          v87 = &v73[96 * v86];
          *(v87 + 4) = v77;
          *(v87 + 5) = v79;
          *(v87 + 3) = v92;
          *(v87 + 8) = v84;
          *(v87 + 9) = v81;
          *(v87 + 10) = v82;
          *(v87 + 11) = v83;
          *(v87 + 12) = v84;
          *(v87 + 13) = v81;
          *(v87 + 14) = v82;
          *(v87 + 15) = v83;
          v75 += v91;
          if (!--v71)
          {

            *v96 = v73;
            return;
          }
        }

        goto LABEL_41;
      }
    }

    return;
  }

  v46 = v15;
  type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
  outlined init with take of Text.Effect.Composition(v26 + *(v47 + 48), v20, type metadata accessor for Text.Effect.Composition);
  v48 = *&v20[*(v18 + 24)];
  v49 = *(v48 + 16);
  v50 = v90;
  v51 = v92;
  v52 = v20;
  v53 = v89;
  v54 = v91;
  if (v49)
  {
    v55 = v46;
    v56 = v48 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v57 = *(v55 + 72);
    do
    {
      outlined init with copy of Text.Effect.Composition.Operation(v56, v17, type metadata accessor for Text.Effect.Composition.Run);
      outlined init with copy of Text.Effect.Composition.Operation(v17, v23, type metadata accessor for Text.Effect.Composition.Operation);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v17, type metadata accessor for Text.Effect.Composition.Run);
      Text.Effect.Composition.Operation.appendInteractionMetrics(to:at:line:context:)(v96, v52, v53, v54, v51, v50, a7);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v23, type metadata accessor for Text.Effect.Composition.Operation);
      v56 += v57;
      --v49;
    }

    while (v49);
  }

  outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v52, type metadata accessor for Text.Effect.Composition);
}

void Text.Effect.Composition.Operation.resolve(line:in:)(uint64_t a1, uint64_t a2)
{
  v171 = a1;
  *&v165 = type metadata accessor for Color.RGBColorSpace();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  *&v168 = v5;
  *&v167 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  *&v169 = &v163 - v6;
  *&v172 = type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind(0);
  MEMORY[0x1EEE9AC00](v172);
  *&v166 = &v163 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v170 = &v163 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v163 - v11;
  v13 = type metadata accessor for Text.Effect.Composition.Run(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v163 - v18;
  v20 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v163 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v163 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = (&v163 - v27);
  outlined init with copy of Text.Effect.Composition.Operation(v173, &v163 - v27, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = *v28;
  v173 = v28[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v31 = *a2;
      v32 = *(*(*&v31 + 16) + 64);
      v33 = v173;
      if (*(v32 + 16) && (v34 = specialized __RawDictionaryStorage.find<A>(_:)(v30), (v35 & 1) != 0) && (v36 = *(*(v32 + 56) + 8 * v34), v36 != 0.0))
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v105 = *(*&v31 + 24);
          v106 = *(*&v31 + 40);
          v107 = *(*&v31 + 56);
        }

        else
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v131 = swift_allocObject();
          *(v131 + 104) = 0u;
          *(v131 + 120) = 0u;
          *(v131 + 136) = 0u;
          __asm { FMOV            V0.2D, #1.0 }

          *(v131 + 152) = _Q0;
          *(v131 + 168) = 0x3FF0000000000000;
          *(v131 + 176) = 0;
          *(v131 + 16) = *(*&v31 + 16);
          v169 = *(*&v31 + 24);
          v168 = *(*&v31 + 40);
          v133 = v168;
          v167 = *(*&v31 + 56);
          v134 = v167;
          *(v131 + 24) = v169;
          *(v131 + 40) = v133;
          *(v131 + 56) = v134;
          *(v131 + 72) = *(*&v31 + 72);
          v135 = *(*&v31 + 184);
          v136 = *(*&v31 + 192);
          v137 = *(*&v31 + 200);
          v138 = *(*&v31 + 208);
          v139 = *(*&v31 + 216);
          *(v131 + 184) = v135;
          *(v131 + 192) = v136;
          *(v131 + 200) = v137;
          *(v131 + 208) = v138;
          *(v131 + 216) = v139;
          v140 = *(*&v31 + 96);
          *(v131 + 80) = *(*&v31 + 80);
          *(v131 + 96) = v140;

          v141 = v138;
          v33 = v173;
          outlined copy of Text.Effect.StopCollector?(v135, v136, v137, v141, v139);

          v107 = v167;
          v106 = v168;
          v105 = v169;
          v31 = *&v131;
        }

        v37 = v171;
        v38 = v170;
        *&v176.a = v105;
        *&v176.c = v106;
        *&v176.tx = v107;
        CGAffineTransformTranslate(&v175, &v176, v36, 0.0);
        v142 = *&v175.c;
        v143 = *&v175.tx;
        *(*&v31 + 24) = *&v175.a;
        *(*&v31 + 40) = v142;
        *(*&v31 + 56) = v143;
      }

      else
      {

        v37 = v171;
        v38 = v170;
      }

      type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)(0);
      v40 = (v38 + *(v39 + 48));
      v41 = v38 + *(v39 + 64);
      v42 = type metadata accessor for Text.Layout.Line();
      (*(*(v42 - 8) + 16))(v38, v37, v42);
      *v40 = v30;
      v40[1] = v33;
      v43 = *(*&v31 + 96);
      v44 = 0uLL;
      if ((v43 & 1) == 0)
      {
        v44 = *(*&v31 + 80);
      }

      *v41 = v44;
      *(v41 + 16) = v43;
      swift_storeEnumTagMultiPayload();
      Text.Effect.DrawingContext.Storage.append(_:)(v38);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v38, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
      goto LABEL_53;
    }

    v66 = v28[2];
    v67 = v28[3];
    v68 = *a2;
    v69 = v30;
    v70 = Text.Effect.Keyframes.validTransform(_:)(v30, *(*(*a2 + 16) + 48));
    if (v70)
    {
      v72 = v70;
      v73 = *(a2 + 24);
      v74 = *(a2 + 32);
      v75 = *(a2 + 40);
      v176.a = v68;
      *&v176.b = *(a2 + 8);
      v176.d = v73;
      LOBYTE(v176.tx) = v74;
      v176.ty = v75;
      v76 = *(*(*&v68 + 16) + 72);
      v77 = v173;
      if (*(v76 + 16) && (v78 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v173), (v79 & 1) != 0) && (v2 = *(*(v76 + 56) + 8 * v78), v2 != 0.0))
      {

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v108 = *(*&v68 + 24);
          v109 = *(*&v68 + 40);
          v110 = *&v68;
          v111 = *(*&v68 + 56);
        }

        else
        {
          type metadata accessor for Text.Effect.DrawingContext.Storage();
          v110 = swift_allocObject();
          *(v110 + 104) = 0u;
          *(v110 + 120) = 0u;
          *(v110 + 136) = 0u;
          __asm { FMOV            V0.2D, #1.0 }

          *(v110 + 152) = _Q0;
          *(v110 + 168) = 0x3FF0000000000000;
          *(v110 + 176) = 0;
          *(v110 + 16) = *(*&v68 + 16);
          v172 = *(*&v68 + 24);
          v166 = *(*&v68 + 40);
          v145 = v166;
          v165 = *(*&v68 + 56);
          v146 = v165;
          *(v110 + 24) = v172;
          *(v110 + 40) = v145;
          *(v110 + 56) = v146;
          *(v110 + 72) = *(*&v68 + 72);
          v170 = v67;
          v147 = *(*&v68 + 184);
          v148 = *(*&v68 + 192);
          v149 = *(*&v68 + 200);
          v150 = *(*&v68 + 208);
          v151 = *(*&v68 + 216);
          *(v110 + 184) = v147;
          *(v110 + 192) = v148;
          *(v110 + 200) = v149;
          *(v110 + 208) = v150;
          *(v110 + 216) = v151;
          v152 = *(*&v68 + 96);
          *(v110 + 80) = *(*&v68 + 80);
          *(v110 + 96) = v152;

          v153 = v148;
          v67 = v170;
          v154 = v149;
          v155 = v150;
          v69 = v30;
          v77 = v173;
          outlined copy of Text.Effect.StopCollector?(v147, v153, v154, v155, v151);

          v111 = v165;
          v109 = v166;
          v108 = v172;
          *&v176.a = v110;
        }

        *&v175.a = v108;
        *&v175.c = v109;
        *&v175.tx = v111;
        CGAffineTransformTranslate(&v174, &v175, v2, 0.0);
        v156 = *&v174.c;
        v157 = *&v174.tx;
        *(v110 + 24) = *&v174.a;
        *(v110 + 40) = v156;
        *(v110 + 56) = v157;
      }

      else
      {
      }

      v80 = v169;
      LOBYTE(v81) = Text.Layout.Line.characterRanges(runIndices:)();
      v82 = *(*(*&v68 + 16) + 32);
      v83 = *(v82 + 16);
      if (v83)
      {
        v81 = specialized __RawDictionaryStorage.find<A>(_:)(v69);
        if (v84)
        {
          v83 = *(*(v82 + 56) + 8 * v81);
        }

        else
        {
          v83 = 0;
        }
      }

      if (!__OFADD__(v83, v77))
      {
        (*((*MEMORY[0x1E69E7D40] & *v72) + 0xE0))(v69, v83 + v77, v80, &v176);

        (*(v167 + 8))(v80, v168);
LABEL_53:

        return;
      }

      __break(1u);
    }

    else
    {
      v89 = *(*(*&v68 + 16) + 64);
      v2 = 0.0;
      if (*(v89 + 16))
      {
        v70 = specialized __RawDictionaryStorage.find<A>(_:)(v66);
        v72 = v166;
        if (v71)
        {
          v2 = *(*(v89 + 56) + 8 * v70);
        }
      }

      else
      {
        v72 = v166;
      }

      LODWORD(v81) = _SwiftUIIsAppleInternalBuild(v70, v71);
      if (!v81)
      {
        v99 = 0;
        v100 = 0;
LABEL_41:
        v101 = v81 ^ 1;

        if (v2 != 0.0)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v102 = *(*&v68 + 24);
            v103 = *(*&v68 + 40);
            v104 = *(*&v68 + 56);
          }

          else
          {
            type metadata accessor for Text.Effect.DrawingContext.Storage();
            *&v112 = COERCE_DOUBLE(swift_allocObject());
            *(v112 + 104) = 0u;
            *(v112 + 120) = 0u;
            *(v112 + 136) = 0u;
            __asm { FMOV            V0.2D, #1.0 }

            *(v112 + 152) = _Q0;
            *(v112 + 168) = 0x3FF0000000000000;
            *(v112 + 176) = 0;
            *(v112 + 16) = *(*&v68 + 16);
            v169 = *(*&v68 + 24);
            v168 = *(*&v68 + 40);
            v114 = v168;
            v167 = *(*&v68 + 56);
            v115 = v167;
            *(v112 + 24) = v169;
            *(v112 + 40) = v114;
            *(v112 + 56) = v115;
            *(v112 + 72) = *(*&v68 + 72);
            v116 = *(*&v68 + 184);
            v117 = *(*&v68 + 192);
            v170 = v67;
            v173 = v99;
            v118 = *(*&v68 + 200);
            v119 = *(*&v68 + 208);
            v120 = *(*&v68 + 216);
            *(v112 + 184) = v116;
            *(v112 + 192) = v117;
            *(v112 + 200) = v118;
            *(v112 + 208) = v119;
            *(v112 + 216) = v120;
            v121 = *(*&v68 + 96);
            *(v112 + 80) = *(*&v68 + 80);
            *(v112 + 96) = v121;

            v122 = v117;
            v72 = v166;
            v123 = v118;
            v67 = v170;
            v124 = v119;
            v99 = v173;
            outlined copy of Text.Effect.StopCollector?(v116, v122, v123, v124, v120);

            v104 = v167;
            v103 = v168;
            v102 = v169;
            v68 = *&v112;
          }

          *&v176.a = v102;
          *&v176.c = v103;
          *&v176.tx = v104;
          CGAffineTransformTranslate(&v175, &v176, v2, 0.0);
          v125 = *&v175.c;
          v126 = *&v175.tx;
          *(*&v68 + 24) = *&v175.a;
          *(*&v68 + 40) = v125;
          *(*&v68 + 56) = v126;
        }

        type metadata accessor for (Text.Layout.Line, Range<Int>, Color.Resolved?)(0);
        v128 = (v72 + *(v127 + 48));
        v129 = v72 + *(v127 + 64);
        v130 = type metadata accessor for Text.Layout.Line();
        (*(*(v130 - 8) + 16))(v72, v171, v130);
        *v128 = v66;
        v128[1] = v67;
        if ((*(*&v68 + 96) & 1) == 0)
        {
          v101 = 0;
          v99 = *(*&v68 + 80);
          v100 = *(*&v68 + 88);
        }

        *v129 = v99;
        *(v129 + 1) = v100;
        v129[16] = v101;
        swift_storeEnumTagMultiPayload();
        Text.Effect.DrawingContext.Storage.append(_:)(v72);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v72, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
        goto LABEL_53;
      }
    }

    v158 = v81;
    (*(v164 + 104))(v163, *MEMORY[0x1E69814D8], v165);
    Color.Resolved.init(colorSpace:red:green:blue:opacity:)();
    LOBYTE(v81) = v158;
    v99 = v159 | (v160 << 32);
    v100 = v161 | (v162 << 32);
    goto LABEL_41;
  }

  v171 = v20;
  v170 = v14;
  *&v169 = v12;
  type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
  outlined init with take of Text.Effect.Composition(v28 + *(v45 + 48), v22, type metadata accessor for Text.Effect.Composition);
  v46 = *a2;
  v47 = Text.Effect.Keyframes.validFilter(_:)(v30, *(*(*a2 + 16) + 48));
  if (v47)
  {
    *&v168 = v30;

    *&v167 = v46;
    v48 = *(*&v46 + 16);
    v49 = v48[3];
    v51 = v48[4];
    v50 = v48[5];
    v53 = v48[6];
    v52 = v48[7];
    v55 = v48[8];
    v54 = v48[9];
    type metadata accessor for Text.Effect.DrawingContext.Storage.Shared();
    v56 = swift_allocObject();
    v56[3] = v49;
    v56[4] = v51;
    v56[5] = v50;
    v56[6] = v53;
    v56[7] = v52;
    v56[8] = v55;
    v56[9] = v54;
    v56[2] = MEMORY[0x1E69E7CC0];
    type metadata accessor for Text.Effect.DrawingContext.Storage();
    v57 = swift_allocObject();
    *(v57 + 32) = 0;
    *(v57 + 40) = 0;
    *(v57 + 48) = 0x3FF0000000000000;
    *(v57 + 56) = 0;
    *(v57 + 64) = 0;
    *(v57 + 72) = 0x3FF0000000000000;
    *(v57 + 80) = 0;
    *(v57 + 88) = 0;
    *(v57 + 96) = 1;
    *(v57 + 104) = 0u;
    *(v57 + 120) = 0u;
    *(v57 + 136) = 0u;
    __asm { FMOV            V1.2D, #1.0 }

    *(v57 + 152) = _Q1;
    *(v57 + 168) = 0x3FF0000000000000;
    *(v57 + 176) = 0;
    *(v57 + 184) = 0u;
    *(v57 + 200) = 0u;
    *(v57 + 216) = 0;
    *(v57 + 16) = v56;
    *(v57 + 24) = 0x3FF0000000000000;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v64 = *(Strong + OBJC_IVAR____TtC20TextAnimationSupport19TextEffectsRenderer_contentsScale);
      v65 = Strong;
    }

    else
    {

      v64 = 1.0;
    }

    *&v176.a = v57;
    memset(&v176.b, 0, 24);
    LOBYTE(v176.tx) = 1;
    v176.ty = v64;
    v90 = *&v22[*(v171 + 24)];
    v91 = *(v90 + 16);
    v92 = v168;
    v93 = v173;
    v94 = v169;
    if (v91)
    {
      v95 = v90 + ((v170[80] + 32) & ~v170[80]);
      v96 = *(v170 + 9);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v95, v19, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v19, v25, type metadata accessor for Text.Effect.Composition.Operation);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v19, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.resolve(line:in:)(v22, &v176);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v25, type metadata accessor for Text.Effect.Composition.Operation);
        v95 += v96;
        --v91;
      }

      while (v91);
      v56 = *(v57 + 16);
    }

    v97 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v98 = v56[2];
    v56[2] = v97;
    *v94 = v92;
    v94[1] = v93;
    v94[2] = v98;
    swift_storeEnumTagMultiPayload();
    Text.Effect.DrawingContext.Storage.append(_:)(v94);
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v94, type metadata accessor for Text.Effect.ResolvedDrawing.Operation.Kind);
  }

  else
  {
    v85 = *&v22[*(v171 + 24)];
    v86 = *(v85 + 16);
    if (v86)
    {
      v87 = v85 + ((v170[80] + 32) & ~v170[80]);
      v88 = *(v170 + 9);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v87, v16, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v16, v25, type metadata accessor for Text.Effect.Composition.Operation);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v16, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.resolve(line:in:)(v22, a2);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v25, type metadata accessor for Text.Effect.Composition.Operation);
        v87 += v88;
        --v86;
      }

      while (v86);
    }
  }

  outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v22, type metadata accessor for Text.Effect.Composition);
}

double closure #1 in Text.Effect.Composition.Operation.lineBreakingMetrics(line:context:)@<D0>(double *a1@<X0>, double *a3@<X8>)
{
  v5 = type metadata accessor for Text.Layout.Run();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  Text.Layout.Line.subscript.getter();
  Text.Layout.Run.typographicBounds.getter();
  (*(v6 + 8))(v8, v5);
  result = v19;
  if (v9 > v19)
  {
    result = v9;
  }

  v14 = v20;
  v15 = v21;
  if (v10 > v20)
  {
    v14 = v10;
  }

  if (v11 > v21)
  {
    v15 = v11;
  }

  v16 = v12 + v18;
  *a3 = result;
  a3[1] = v14;
  a3[2] = v15;
  a3[3] = v16;
  return result;
}

unint64_t Text.Effect.Composition.Operation.appendDisplacement(to:)(double *a1)
{
  v2 = v1;
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v76 - v5;
  v7 = type metadata accessor for Text.Effect.Composition.Run(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v76 - v18);
  outlined init with copy of Text.Effect.Composition.Operation(v2, &v76 - v18, type metadata accessor for Text.Effect.Composition.Operation);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
    outlined init with take of Text.Effect.Composition(v19 + *(v40 + 48), v13, type metadata accessor for Text.Effect.Composition);
    v41 = *&v13[*(v11 + 24)];
    v42 = *(v41 + 16);
    if (v42)
    {
      v43 = v41 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v44 = *(v8 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v43, v10, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v10, v16, type metadata accessor for Text.Effect.Composition.Operation);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v10, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendDisplacement(to:)(a1);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v16, type metadata accessor for Text.Effect.Composition.Operation);
        v43 += v44;
        --v42;
      }

      while (v42);
    }

    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v13, type metadata accessor for Text.Effect.Composition);
  }

  if (result != 1)
  {
    v45 = *v19;
    v78 = v19[1];
    v46 = v19[2];
    v47 = v19[3];
    v48 = type metadata accessor for Text.Effect.Composition.DisplacementCollector(0);
    v49 = (a1 + v48[6]);
    v50 = v49[2];
    result = Text.Effect.Keyframes.validTransform(_:)(v45, v50);
    if (result)
    {
      v51 = result;
      v77 = v50;
      v52 = v48[9];
      if (!*(*(a1 + v52) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v45, v78), (v53 & 1) == 0))
      {
        v54 = *(a1 + v48[7]);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v81 = *(a1 + v52);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v45, v78, isUniquelyReferenced_nonNull_native, v54);
        *(a1 + v52) = v81;
      }

      Text.Layout.Line.characterRanges(runIndices:)();
      v56 = *v49;
      v57 = *(*v49 + 16);
      if (v57)
      {
        v58 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
        if (v59)
        {
          v57 = *(*(v56 + 56) + 8 * v58);
        }

        else
        {
          v57 = 0;
        }
      }

      if (__OFADD__(v57, v78))
      {
        goto LABEL_62;
      }

      v75 = (*((*MEMORY[0x1E69E7D40] & *v51) + 0xF8))(v45, v57 + v78, v6, v56, v49[1], v77, v49[3], *a1);

      result = (*(v79 + 8))(v6, v80);
      *(a1 + v48[7]) = v75 + *(a1 + v48[7]);
      return result;
    }

    if (v46 == v47)
    {
      return result;
    }

    if (v47 < v46)
    {
      goto LABEL_64;
    }

    v60 = v48[8];
    while (1)
    {
      if (v46 >= v47)
      {
        goto LABEL_58;
      }

      if (*(*(a1 + v60) + 16))
      {
        result = specialized __RawDictionaryStorage.find<A>(_:)(v46);
        if (v61)
        {
          goto LABEL_38;
        }
      }

      v62 = *(a1 + v48[7]);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      v81 = *(a1 + v60);
      v64 = v81;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v46);
      v66 = v64[2];
      v67 = (v65 & 1) == 0;
      v32 = __OFADD__(v66, v67);
      v68 = v66 + v67;
      if (v32)
      {
        goto LABEL_60;
      }

      v69 = v65;
      if (v64[3] < v68)
      {
        break;
      }

      if (v63)
      {
        goto LABEL_47;
      }

      v74 = result;
      specialized _NativeDictionary.copy()();
      result = v74;
      v71 = v81;
      if ((v69 & 1) == 0)
      {
LABEL_48:
        v71[(result >> 6) + 8] |= 1 << result;
        *(v71[6] + 8 * result) = v46;
        *(v71[7] + 8 * result) = v62;
        v72 = v71[2];
        v32 = __OFADD__(v72, 1);
        v73 = v72 + 1;
        if (v32)
        {
          goto LABEL_61;
        }

        v71[2] = v73;
        goto LABEL_37;
      }

LABEL_36:
      *(v71[7] + 8 * result) = v62;
LABEL_37:
      *(a1 + v60) = v71;
LABEL_38:
      if (v47 == ++v46)
      {
        return result;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v68, v63);
    result = specialized __RawDictionaryStorage.find<A>(_:)(v46);
    if ((v69 & 1) != (v70 & 1))
    {
      goto LABEL_65;
    }

LABEL_47:
    v71 = v81;
    if ((v69 & 1) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_36;
  }

  v21 = *v19;
  v22 = v19[1];
  if (*v19 == v22)
  {
    return result;
  }

  if (v22 < v21)
  {
    goto LABEL_63;
  }

  v23 = type metadata accessor for Text.Effect.Composition.DisplacementCollector(0);
  v24 = *(v23 + 32);
  while (v21 < v22)
  {
    if (*(*(a1 + v24) + 16))
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(v21);
      if (v25)
      {
        goto LABEL_8;
      }
    }

    v26 = *(a1 + *(v23 + 28));
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v81 = *(a1 + v24);
    v28 = v81;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v21);
    v30 = v28[2];
    v31 = (v29 & 1) == 0;
    v32 = __OFADD__(v30, v31);
    v33 = v30 + v31;
    if (v32)
    {
      goto LABEL_57;
    }

    v34 = v29;
    if (v28[3] < v33)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v27);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v21);
      if ((v34 & 1) != (v35 & 1))
      {
        goto LABEL_65;
      }

LABEL_17:
      v36 = v81;
      if ((v34 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_6;
    }

    if (v27)
    {
      goto LABEL_17;
    }

    v39 = result;
    specialized _NativeDictionary.copy()();
    result = v39;
    v36 = v81;
    if ((v34 & 1) == 0)
    {
LABEL_18:
      v36[(result >> 6) + 8] |= 1 << result;
      *(v36[6] + 8 * result) = v21;
      *(v36[7] + 8 * result) = v26;
      v37 = v36[2];
      v32 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v32)
      {
        goto LABEL_59;
      }

      v36[2] = v38;
      goto LABEL_7;
    }

LABEL_6:
    *(v36[7] + 8 * result) = v26;
LABEL_7:
    *(a1 + v24) = v36;
LABEL_8:
    if (v22 == ++v21)
    {
      return result;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void Text.Effect.Composition.updateNonadjacentFragmentIdentifiers(map:)(uint64_t a1)
{
  v3 = type metadata accessor for Text.Effect.Composition(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v84 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = *(v4 + 32);
  v87 = v1;
  v9 = *(v1 + v86);
  v10 = v9[2];
  if (v10)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_77:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v11 = 0;
    v85 = a1;
    v78 = v6;
    v81 = v10;
    v82 = v9;
    while (1)
    {
      if (v10 == v11)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
        goto LABEL_77;
      }

      if (v11 >= v9[2])
      {
        goto LABEL_64;
      }

      v13 = *(type metadata accessor for Text.Effect.Composition.Run(0) - 8);
      v14 = (v9 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v11);
      outlined init with copy of Text.Effect.Composition.Operation(v14, v8, type metadata accessor for Text.Effect.Composition.Operation);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        v23 = *v8;
        v80 = v8[1];
        type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
        v10 = v24;
        outlined init with take of Text.Effect.Composition(v8 + *(v24 + 48), v84, type metadata accessor for Text.Effect.Composition);
        v9 = Text.Effect.Composition.runIndices.getter();
        v83 = v25;
        v26 = *a1;
        v27 = *(*a1 + 16);
        v79 = v10;
        if (v27)
        {
          v28 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
          if (v29)
          {
            v30 = *(v26 + 56) + 24 * v28;
            a1 = *(v30 + 16);
            if (*(v30 + 8) == v9)
            {
              v9 = *v30;
              if (v83 < *v30)
              {
                goto LABEL_74;
              }
            }

            else
            {
              v46 = __OFADD__(a1++, 1);
              if (v46)
              {
                goto LABEL_75;
              }
            }

            v54 = v85;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v88 = *v54;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, v83, a1, v23, isUniquelyReferenced_nonNull_native);
            *v54 = v88;
            goto LABEL_60;
          }
        }

        v10 = swift_isUniquelyReferenced_nonNull_native();
        v88 = *a1;
        v31 = v88;
        v6 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_68;
        }

        a1 = v32;
        if (v31[3] >= v35)
        {
          if (v10)
          {
            v38 = v88;
            if ((v32 & 1) == 0)
            {
              goto LABEL_57;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v38 = v88;
            if ((a1 & 1) == 0)
            {
              goto LABEL_57;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v10);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v23);
          if ((a1 & 1) != (v37 & 1))
          {
            goto LABEL_78;
          }

          v6 = v36;
          v38 = v88;
          if ((a1 & 1) == 0)
          {
LABEL_57:
            v38[(v6 >> 6) + 8] |= 1 << v6;
            *(v38[6] + 8 * v6) = v23;
            v69 = (v38[7] + 24 * v6);
            v70 = v83;
            *v69 = v9;
            v69[1] = v70;
            v69[2] = 0;
            v71 = v38[2];
            v46 = __OFADD__(v71, 1);
            v72 = v71 + 1;
            if (v46)
            {
              goto LABEL_70;
            }

            v38[2] = v72;
            goto LABEL_59;
          }
        }

        v39 = (v38[7] + 24 * v6);
        v40 = v83;
        *v39 = v9;
        v39[1] = v40;
        v39[2] = 0;
LABEL_59:
        a1 = 0;
        *v85 = v38;
        v6 = v78;
LABEL_60:
        v9 = v82;
        v10 = v80 + a1;
        if (__OFADD__(v80, a1))
        {
          goto LABEL_65;
        }

        v73 = v84;
        a1 = v85;
        Text.Effect.Composition.updateNonadjacentFragmentIdentifiers(map:)(v85);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v14, type metadata accessor for Text.Effect.Composition.Operation);
        v74 = *(v79 + 48);
        *v14 = v23;
        v14[1] = v10;
        outlined init with take of Text.Effect.Composition(v73, v14 + v74, type metadata accessor for Text.Effect.Composition);
        goto LABEL_8;
      }

      if (EnumCaseMultiPayload == 1)
      {
        goto LABEL_9;
      }

      v16 = *v8;
      v6 = v8[1];
      v9 = v8[2];
      v83 = v8[3];
      v17 = *a1;
      v18 = *(*a1 + 16);
      v80 = v6;
      if (!v18)
      {
        break;
      }

      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if ((v20 & 1) == 0)
      {
        break;
      }

      v21 = (*(v17 + 56) + 24 * v19);
      v22 = v9;
      v9 = v21[2];
      v6 = v22;
      if (v21[1] == v22)
      {
        if (v83 < *v21)
        {
          goto LABEL_72;
        }

        v79 = *v21;
      }

      else
      {
        v46 = __OFADD__(v9, 1);
        v9 = (v9 + 1);
        if (v46)
        {
          goto LABEL_73;
        }

        v79 = v22;
      }

      v56 = swift_isUniquelyReferenced_nonNull_native();
      v57 = a1;
      a1 = v56;
      v88 = *v57;
      v58 = v88;
      v59 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      v61 = v58[2];
      v62 = (v60 & 1) == 0;
      v46 = __OFADD__(v61, v62);
      v63 = v61 + v62;
      if (v46)
      {
        goto LABEL_71;
      }

      v10 = v60;
      if (v58[3] >= v63)
      {
        v49 = v83;
        if ((a1 & 1) == 0)
        {
          v76 = v59;
          specialized _NativeDictionary.copy()();
          v49 = v83;
          v59 = v76;
        }

        a1 = v85;
        v50 = v88;
        if ((v10 & 1) == 0)
        {
          goto LABEL_50;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, a1);
        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
        if ((v10 & 1) != (v64 & 1))
        {
LABEL_78:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        a1 = v85;
        v49 = v83;
        v50 = v88;
        if ((v10 & 1) == 0)
        {
LABEL_50:
          v50[(v59 >> 6) + 8] |= 1 << v59;
          *(v50[6] + 8 * v59) = v16;
          v65 = (v50[7] + 24 * v59);
          *v65 = v79;
          v65[1] = v49;
          v65[2] = v9;
          v66 = v50[2];
          v46 = __OFADD__(v66, 1);
          v67 = v66 + 1;
          if (v46)
          {
            goto LABEL_76;
          }

          v50[2] = v67;
          goto LABEL_6;
        }
      }

      v68 = (v50[7] + 24 * v59);
      *v68 = v79;
      v68[1] = v49;
      v68[2] = v9;
LABEL_6:
      *a1 = v50;
      v10 = v9 + v80;
      if (__OFADD__(v80, v9))
      {
        goto LABEL_66;
      }

      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v14, type metadata accessor for Text.Effect.Composition.Operation);
      *v14 = v16;
      v14[1] = v10;
      v14[2] = v6;
      v14[3] = v49;
      v6 = v78;
      v9 = v82;
LABEL_8:
      swift_storeEnumTagMultiPayload();
      v10 = v81;
LABEL_9:
      ++v11;
      *(v87 + v86) = v9;
      if (v10 == v11)
      {
        return;
      }
    }

    v10 = a1;
    a1 = swift_isUniquelyReferenced_nonNull_native();
    v88 = *v10;
    v41 = v88;
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
    v44 = v41[2];
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      goto LABEL_67;
    }

    v10 = v43;
    if (v41[3] >= v47)
    {
      v49 = v83;
      if ((a1 & 1) == 0)
      {
        v75 = v42;
        specialized _NativeDictionary.copy()();
        v49 = v83;
        v42 = v75;
      }

      a1 = v85;
      v50 = v88;
      if ((v10 & 1) == 0)
      {
LABEL_40:
        v50[(v42 >> 6) + 8] |= 1 << v42;
        *(v50[6] + 8 * v42) = v16;
        v51 = (v50[7] + 24 * v42);
        *v51 = v9;
        v51[1] = v49;
        v51[2] = 0;
        v52 = v50[2];
        v46 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v46)
        {
          goto LABEL_69;
        }

        v6 = v9;
        v50[2] = v53;
        goto LABEL_5;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, a1);
      v42 = specialized __RawDictionaryStorage.find<A>(_:)(v16);
      if ((v10 & 1) != (v48 & 1))
      {
        goto LABEL_78;
      }

      a1 = v85;
      v49 = v83;
      v50 = v88;
      if ((v10 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    v12 = (v50[7] + 24 * v42);
    v6 = v9;
    *v12 = v9;
    v12[1] = v49;
    v12[2] = 0;
LABEL_5:
    v9 = 0;
    goto LABEL_6;
  }
}

void *FragmentIdentifierOffsetMap.countMap.getter(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC8];
  if (v5)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_7:
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v9 >= v6)
    {

      return v8;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = *(*(a1 + 56) + 24 * v10 + 16);
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    v13 = *(*(a1 + 48) + 8 * v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    v17 = v8[2];
    v18 = (v16 & 1) == 0;
    v19 = __OFADD__(v17, v18);
    v20 = v17 + v18;
    if (v19)
    {
      goto LABEL_24;
    }

    v21 = v16;
    if (v8[3] >= v20)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = v15;
        specialized _NativeDictionary.copy()();
        v15 = v25;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, isUniquelyReferenced_nonNull_native);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_26;
      }
    }

    v5 &= v5 - 1;
    if (v21)
    {
      *(v8[7] + 8 * v15) = v12;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8[(v15 >> 6) + 8] |= 1 << v15;
      *(v8[6] + 8 * v15) = v13;
      *(v8[7] + 8 * v15) = v12;
      v23 = v8[2];
      v19 = __OFADD__(v23, 1);
      v24 = v23 + 1;
      if (v19)
      {
        goto LABEL_25;
      }

      v8[2] = v24;
      v7 = v9;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    v9 = v7;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t Text.Effect.Composition.runIndices.getter()
{
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  v2 = v1;
  v27 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - v3;
  v5 = type metadata accessor for Text.Effect.Composition.Run(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  RangeSet.init()();
  v14 = *(v0 + *(type metadata accessor for Text.Effect.Composition(0) + 24));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v17 = *(v6 + 72);
    do
    {
      outlined init with copy of Text.Effect.Composition.Operation(v16, v8, type metadata accessor for Text.Effect.Composition.Run);
      Text.Effect.Composition.Run.appendRunIndices(to:)(v13);
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v8, type metadata accessor for Text.Effect.Composition.Run);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  RangeSet.ranges.getter();
  v18 = RangeSet.Ranges.count.getter();
  if (v18 == 1)
  {
    RangeSet.Ranges.subscript.getter();
    (*(v11 + 8))(v13, v10);
    v19 = v28;
LABEL_12:
    (*(v27 + 8))(v4, v2);
    return v19;
  }

  MEMORY[0x1EEE9AC00](v18);
  *(&v26 - 2) = v4;
  specialized static Log.internalError(_:)(partial apply for implicit closure #1 in Text.Effect.Composition.runIndices.getter);
  v20 = specialized RangeSet.lowerBound.getter();
  if (v21)
  {
    v19 = 0;
  }

  else
  {
    v19 = v20;
  }

  v22 = specialized RangeSet.upperBound.getter();
  v24 = v23;
  result = (*(v11 + 8))(v13, v10);
  if (v24)
  {
    v22 = 0;
  }

  if (v22 >= v19)
  {
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

unint64_t implicit closure #1 in Text.Effect.Composition.runIndices.getter()
{
  _StringGuts.grow(_:)(23);

  _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
  lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges, MEMORY[0x1E69E7BD0]);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x19A8BD680](v0);

  return 0xD000000000000015;
}

uint64_t Text.Effect.Composition.Run.appendRunIndices(to:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Text.Effect.Composition.Run(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Text.Effect.Composition.Operation(v2, v13, type metadata accessor for Text.Effect.Composition.Operation);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      v15 = *v13;
      v16 = v13[1];
    }

    else
    {
      v15 = v13[2];
      v16 = v13[3];
    }

    v24 = v15;
    v25 = v16;
    if (v15 != v16)
    {
      _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>, MEMORY[0x1E69E7BE0]);
      v22 = RangeSet._ranges.modify();
      _sSnySiGMaTm_1(0, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
      RangeSet.Ranges._insert(contentsOf:)();
      return v22(v23, 0);
    }
  }

  else
  {
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
    outlined init with take of Text.Effect.Composition(v13 + *(v17 + 48), v10, type metadata accessor for Text.Effect.Composition);
    v18 = *&v10[*(v8 + 24)];
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = v18 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v21 = *(v5 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v20, v7, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Run.appendRunIndices(to:)(a1);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v7, type metadata accessor for Text.Effect.Composition.Run);
        v20 += v21;
        --v19;
      }

      while (v19);
    }

    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v10, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

void Text.Effect.Composition.Operation.append(_:)(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v114 = a1;
  v110 = a2;
  v4 = MEMORY[0x1E69E6720];
  type metadata accessor for [Text.Effect.Composition.Run](0, &lazy cache variable for type metadata for Text.Effect.Composition.Operation?, type metadata accessor for Text.Effect.Composition.Operation, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = &v92 - v6;
  type metadata accessor for [Text.Effect.Composition.Run](0, &lazy cache variable for type metadata for Text.Effect.Composition.Run?, type metadata accessor for Text.Effect.Composition.Run, v4);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v104 = &v92 - v8;
  v105 = type metadata accessor for Text.Effect.Composition.Run(0);
  v100 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v107 = &v92 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v106 = &v92 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v113 = &v92 - v15;
  v99 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v99);
  v109 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v101 = &v92 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v92 - v20;
  v22 = type metadata accessor for Text.Effect.Composition.Operation(0);
  v111 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v92 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v92 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v92 - v32);
  type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(0);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = &v92 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = &v36[*(v37 + 56)];
  v102 = v3;
  outlined init with copy of Text.Effect.Composition.Operation(v3, v36, type metadata accessor for Text.Effect.Composition.Operation);
  outlined init with copy of Text.Effect.Composition.Operation(v114, v38, type metadata accessor for Text.Effect.Composition.Operation);
  v112 = v36;
  v39 = v22;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v41 = v112;
      outlined init with copy of Text.Effect.Composition.Operation(v112, v27, type metadata accessor for Text.Effect.Composition.Operation);
      v42 = *v27;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        if (v27[1] == *v38)
        {
          v43 = *(v38 + 1);
          v44 = v102;
          outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v102, type metadata accessor for Text.Effect.Composition.Operation);
          if (v43 < v42)
          {
            goto LABEL_48;
          }

          *v44 = v42;
          v44[1] = v43;
LABEL_16:
          swift_storeEnumTagMultiPayload();
          (*(v111 + 56))(v110, 1, 1, v39);
LABEL_19:
          v59 = type metadata accessor for Text.Effect.Composition.Operation;
          goto LABEL_46;
        }

        goto LABEL_18;
      }
    }

    else
    {
      v41 = v112;
      outlined init with copy of Text.Effect.Composition.Operation(v112, v24, type metadata accessor for Text.Effect.Composition.Operation);
      v51 = *v24;
      v52 = v24[1];
      v53 = v24[2];
      v54 = v24[3];
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        if (v51 == *v38)
        {
          v55 = *(v38 + 1);
          if (__OFSUB__(v55, v52))
          {
            goto LABEL_49;
          }

          if (v55 == v52 && v54 == *(v38 + 2))
          {
            v56 = *(v38 + 3);
            v57 = v102;
            outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v102, type metadata accessor for Text.Effect.Composition.Operation);
            if (v56 < v53)
            {
              goto LABEL_51;
            }

            *v57 = v51;
            v57[1] = v52;
            v57[2] = v53;
            v57[3] = v56;
            goto LABEL_16;
          }
        }

LABEL_18:
        v60 = v110;
        outlined init with copy of Text.Effect.Composition.Operation(v114, v110, type metadata accessor for Text.Effect.Composition.Operation);
        (*(v111 + 56))(v60, 0, 1, v22);
        goto LABEL_19;
      }
    }

LABEL_17:
    v58 = v110;
    outlined init with copy of Text.Effect.Composition.Operation(v114, v110, type metadata accessor for Text.Effect.Composition.Operation);
    (*(v111 + 56))(v58, 0, 1, v22);
    v59 = type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation);
LABEL_46:
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v41, v59);
    return;
  }

  v96 = v30;
  v97 = v21;
  v45 = v104;
  v41 = v112;
  outlined init with copy of Text.Effect.Composition.Operation(v112, v33, type metadata accessor for Text.Effect.Composition.Operation);
  v46 = *v33;
  v47 = v33[1];
  type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
  v49 = v48;
  v50 = *(v48 + 48);
  if (swift_getEnumCaseMultiPayload())
  {
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v33 + v50, type metadata accessor for Text.Effect.Composition);
    goto LABEL_17;
  }

  v92 = v49;
  v93 = v47;
  v62 = *v38;
  v61 = *(v38 + 1);
  v94 = v46;
  v95 = v61;
  outlined init with take of Text.Effect.Composition(v33 + v50, v97, type metadata accessor for Text.Effect.Composition);
  v63 = v101;
  outlined init with take of Text.Effect.Composition(&v38[v50], v101, type metadata accessor for Text.Effect.Composition);
  v64 = v103;
  v65 = v45;
  v98 = v22;
  v66 = v109;
  v67 = v113;
  v68 = v99;
  v69 = v100;
  if (v94 != v62)
  {
    goto LABEL_43;
  }

  if (__OFSUB__(v95, v93))
  {
    goto LABEL_50;
  }

  if (v95 != v93)
  {
LABEL_43:
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v97, type metadata accessor for Text.Effect.Composition);
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v63, type metadata accessor for Text.Effect.Composition);
    v87 = v110;
    outlined init with copy of Text.Effect.Composition.Operation(v114, v110, type metadata accessor for Text.Effect.Composition.Operation);
    (*(v111 + 56))(v87, 0, 1, v98);
LABEL_45:
    v59 = type metadata accessor for Text.Effect.Composition.Operation;
    v41 = v112;
    goto LABEL_46;
  }

  outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v102, type metadata accessor for Text.Effect.Composition.Operation);
  outlined init with copy of Text.Effect.Composition.Operation(v97, v66, type metadata accessor for Text.Effect.Composition);
  v70 = v68[6];
  v71 = *(v63 + v70);
  v72 = *(v71 + 16);
  if (!v72)
  {
LABEL_44:
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v97, type metadata accessor for Text.Effect.Composition);
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v101, type metadata accessor for Text.Effect.Composition);
    v88 = *(v92 + 48);
    v89 = v102;
    v90 = v93;
    *v102 = v94;
    v89[1] = v90;
    outlined init with take of Text.Effect.Composition(v66, v89 + v88, type metadata accessor for Text.Effect.Composition);
    v91 = v98;
    swift_storeEnumTagMultiPayload();
    (*(v111 + 56))(v110, 1, 1, v91);
    goto LABEL_45;
  }

  v114 = (*(v69 + 80) + 32) & ~*(v69 + 80);
  v73 = v71 + v114;
  v74 = v69[9];
  v95 = (v69 + 7);
  v99 = (v111 + 48);
  v100 = v69 + 6;
  while (1)
  {
    outlined init with copy of Text.Effect.Composition.Operation(v73, v67, type metadata accessor for Text.Effect.Composition.Run);
    v75 = *(v66 + v70);
    v76 = v67;
    v77 = v75[2];
    if (!v77)
    {
      outlined init with copy of Text.Effect.Composition.Operation(v76, v107, type metadata accessor for Text.Effect.Composition.Run);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v75);
      }

      v80 = v75[2];
      v79 = v75[3];
      if (v80 >= v79 >> 1)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v79 > 1), v80 + 1, 1, v75);
      }

      v67 = v113;
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v113, type metadata accessor for Text.Effect.Composition.Run);
      v75[2] = v80 + 1;
      outlined init with take of Text.Effect.Composition(v107, v75 + v114 + v80 * v74, type metadata accessor for Text.Effect.Composition.Run);
      v66 = v109;
      *&v109[v70] = v75;
      goto LABEL_26;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew()(v75);
    }

    if (v77 > v75[2])
    {
      break;
    }

    Text.Effect.Composition.Operation.append(_:)(v113, v64);
    if ((*v99)(v64, 1, v98) == 1)
    {
      outlined destroy of Text.Effect.Composition.Operation?(v64, &lazy cache variable for type metadata for Text.Effect.Composition.Operation?, type metadata accessor for Text.Effect.Composition.Operation);
      v78 = 1;
    }

    else
    {
      v81 = v96;
      outlined init with take of Text.Effect.Composition(v64, v96, type metadata accessor for Text.Effect.Composition.Operation);
      outlined init with take of Text.Effect.Composition(v81, v65, type metadata accessor for Text.Effect.Composition.Operation);
      v78 = 0;
    }

    v82 = v108;
    v66 = v109;
    v83 = v105;
    (*v95)(v65, v78, 1, v105);
    *(v66 + v70) = v75;
    if ((*v100)(v65, 1, v83) == 1)
    {
      v67 = v113;
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v113, type metadata accessor for Text.Effect.Composition.Run);
      outlined destroy of Text.Effect.Composition.Operation?(v65, &lazy cache variable for type metadata for Text.Effect.Composition.Run?, type metadata accessor for Text.Effect.Composition.Run);
    }

    else
    {
      v84 = v106;
      outlined init with take of Text.Effect.Composition(v65, v106, type metadata accessor for Text.Effect.Composition.Run);
      outlined init with copy of Text.Effect.Composition.Operation(v84, v82, type metadata accessor for Text.Effect.Composition.Run);
      v86 = v75[2];
      v85 = v75[3];
      if (v86 >= v85 >> 1)
      {
        v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, v75);
      }

      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v106, type metadata accessor for Text.Effect.Composition.Run);
      v67 = v113;
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v113, type metadata accessor for Text.Effect.Composition.Run);
      v75[2] = v86 + 1;
      outlined init with take of Text.Effect.Composition(v108, v75 + v114 + v86 * v74, type metadata accessor for Text.Effect.Composition.Run);
      v66 = v109;
      *&v109[v70] = v75;
      v64 = v103;
    }

LABEL_26:
    v73 += v74;
    if (!--v72)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

uint64_t Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Text.Effect.Composition.Run(0);
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Text.Layout.Run();
  v37 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  outlined init with copy of Text.Effect.Composition.Operation(v39, &v36 - v17, type metadata accessor for Text.Effect.Composition.Operation);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    v20 = 8;
    v21 = (v18 + 16);
    if (result == 1)
    {
      v21 = v18;
    }

    else
    {
      v20 = 24;
    }

    v22 = *&v18[v20];
    v23 = *v21;
    if (*v21 != v22)
    {
      if (v22 >= v23)
      {
        if (v23 >= v22)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        v24 = (v37 + 8);
        while (1)
        {
          Text.Layout.Line.subscript.getter();
          v25 = Text.Layout.Run.characterRange.getter();
          v27 = v26;
          result = (*v24)(v12, v10);
          v41 = v25;
          v42 = v27;
          if (__OFSUB__(v27, v25))
          {
            break;
          }

          if (v27 != v25)
          {
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, MEMORY[0x1E69E7BE0]);
            v28 = RangeSet._ranges.modify();
            type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
            RangeSet.Ranges._insert(contentsOf:)();
            result = v28(v40, 0);
          }

          if (v22 == ++v23)
          {
            return result;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
    v29 = v38;
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
    outlined init with take of Text.Effect.Composition(&v18[*(v30 + 48)], v9, type metadata accessor for Text.Effect.Composition);
    v31 = *&v9[*(v7 + 24)];
    v32 = *(v31 + 16);
    if (v32)
    {
      v33 = v29;
      v34 = v31 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v35 = *(v33 + 72);
      do
      {
        outlined init with copy of Text.Effect.Composition.Operation(v34, v6, type metadata accessor for Text.Effect.Composition.Run);
        outlined init with copy of Text.Effect.Composition.Operation(v6, v15, type metadata accessor for Text.Effect.Composition.Operation);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v6, type metadata accessor for Text.Effect.Composition.Run);
        Text.Effect.Composition.Operation.appendCharacterRanges(line:to:)(a1, a2);
        outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v15, type metadata accessor for Text.Effect.Composition.Operation);
        v34 += v35;
        --v32;
      }

      while (v32);
    }

    return outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v9, type metadata accessor for Text.Effect.Composition);
  }

  return result;
}

void specialized static Text.Effect.Composition.Operation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v2 = type metadata accessor for Text.Effect.Composition(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - v6;
  v8 = type metadata accessor for Text.Effect.Composition.Operation(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v38 - v15);
  type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = &v19[*(v20 + 56)];
  outlined init with copy of Text.Effect.Composition.Operation(v38, v19, type metadata accessor for Text.Effect.Composition.Operation);
  outlined init with copy of Text.Effect.Composition.Operation(v39, v21, type metadata accessor for Text.Effect.Composition.Operation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v39 = v2;
    v25 = v7;
    outlined init with copy of Text.Effect.Composition.Operation(v19, v16, type metadata accessor for Text.Effect.Composition.Operation);
    v26 = v16[1];
    type metadata accessor for (Text.Effect.RelativeIdentifierKey, Text.Effect.Composition)(0);
    v28 = *(v27 + 48);
    if (swift_getEnumCaseMultiPayload())
    {
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v16 + v28, type metadata accessor for Text.Effect.Composition);
      v24 = type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation);
LABEL_23:
      outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v19, v24);
      return;
    }

    v31 = *v16;
    v32 = *v21;
    v38 = *(v21 + 1);
    outlined init with take of Text.Effect.Composition(v16 + v28, v25, type metadata accessor for Text.Effect.Composition);
    outlined init with take of Text.Effect.Composition(&v21[v28], v4, type metadata accessor for Text.Effect.Composition);
    if (v31 == v32)
    {
      if (__OFSUB__(v38, v26))
      {
        goto LABEL_25;
      }

      if (v38 == v26 && (MEMORY[0x19A8BCFA0](v25, v4) & 1) != 0)
      {
        v33 = *(v39 + 20);
        v34 = *(v25 + v33);
        v35 = *(v25 + v33 + 8);
        v36 = &v4[v33];
        if (v34 == *v36 && v35 == v36[1])
        {
          _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO11CompositionV3RunV_Tt1g5(*(v25 + *(v39 + 24)), *&v4[*(v39 + 24)]);
        }
      }
    }

    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v4, type metadata accessor for Text.Effect.Composition);
    outlined destroy of (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(v25, type metadata accessor for Text.Effect.Composition);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 1)
  {
    outlined init with copy of Text.Effect.Composition.Operation(v19, v13, type metadata accessor for Text.Effect.Composition.Operation);
    v23 = swift_getEnumCaseMultiPayload();
    v24 = type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation);
    if (v23 != 1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  outlined init with copy of Text.Effect.Composition.Operation(v19, v10, type metadata accessor for Text.Effect.Composition.Operation);
  v29 = v10[1];
  v30 = swift_getEnumCaseMultiPayload();
  v24 = type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation);
  if (v30 != 2)
  {
    goto LABEL_23;
  }

  v24 = type metadata accessor for Text.Effect.Composition.Operation;
  if (*v10 != *v21)
  {
    goto LABEL_23;
  }

  if (!__OFSUB__(*(v21 + 1), v29))
  {
LABEL_22:
    v24 = type metadata accessor for Text.Effect.Composition.Operation;
    goto LABEL_23;
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void type metadata accessor for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation))
  {
    type metadata accessor for Text.Effect.Composition.Operation(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (Text.Effect.Composition.Operation, Text.Effect.Composition.Operation));
    }
  }
}

double specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a7@<X8>)
{

  Text.Effect.DrawableFragment.init(keyframes:key:fragment:)(a4, a1, a2, a3, v14);
  v12 = v14[1];
  *a7 = v14[0];
  *(a7 + 16) = v12;
  result = *&v15;
  *(a7 + 32) = v15;
  *(a7 + 48) = v16;
  return result;
}

uint64_t outlined init with take of Text.Effect.Composition(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type RangeSet<Int>.Ranges and conformance RangeSet<A>.Ranges(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _sSnySiGMaTm_1(255, &lazy cache variable for type metadata for RangeSet<Int>.Ranges, MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV7metrics2at7contextAF7MetricsVAD4TimeV_AF11BaseContextVtFA2M_AH3RunVtXEfU_TA_0@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  Text.Effect.Composition.Operation.metrics(at:line:context:)(*(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 16));
  if (v4 > v8)
  {
    v8 = v4;
  }

  if (v5 > v9)
  {
    v9 = v5;
  }

  if (v6 > v10)
  {
    v10 = v6;
  }

  *a2 = v8;
  a2[1] = v9;
  result = v7 + v11;
  a2[2] = v10;
  a2[3] = v7 + v11;
  return result;
}

uint64_t _ss8RangeSetV6RangesVy7SwiftUI4TextV6LayoutV14CharacterIndexV_GADyx_GSlsWlTm_2(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, MEMORY[0x1E69E7BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV15widthDifference2at7context12CoreGraphics7CGFloatVAD4TimeV_AF11BaseContextVtFA2N_AH3RunVtXEfU_TA_0@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  Text.Effect.Composition.Operation.widthDifference(at:line:context:)(*(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56));
  result = v4 + v5;
  *a2 = result;
  return result;
}

double _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11CompositionV19lineBreakingMetrics7contextAF0J0VAF11BaseContextV_tFA2L_AH3RunVtXEfU_TA_0@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  Text.Effect.Composition.Operation.lineBreakingMetrics(line:context:)(v2[2], v2[3], v2[4], v2[5], v2[6]);
  if (v4 > v8)
  {
    v8 = v4;
  }

  if (v5 > v9)
  {
    v9 = v5;
  }

  if (v6 > v10)
  {
    v10 = v6;
  }

  *a2 = v8;
  a2[1] = v9;
  result = v7 + v11;
  a2[2] = v10;
  a2[3] = v7 + v11;
  return result;
}

void type metadata completion function for Text.Effect.Composition.DisplacementCollector(uint64_t a1)
{
  type metadata accessor for Text.Layout.Line();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Int : CGFloat]();
    if (v2 <= 0x3F)
    {
      type metadata accessor for [Text.Effect.RelativeIdentifierKey : CGFloat](319, v2, v3);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for Text.Effect.DrawingContent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t storeEnumTagSinglePayload for Text.Effect.DrawingContent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of TextModel.Cluster?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Color.Resolved?(0, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for Color.Resolved?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t outlined destroy of TextModel.Cluster?(uint64_t a1)
{
  type metadata accessor for Color.Resolved?(0, &lazy cache variable for type metadata for TextModel.Cluster?, &type metadata for TextModel.Cluster);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field)
  {
    type metadata accessor for AttributeScopes.FoundationAttributes.DateFieldAttribute.Field();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute.Field and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute.Field);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState;
  if (!lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BigTextEffect.LayoutState and conformance BigTextEffect.LayoutState);
  }

  return result;
}

uint64_t specialized Sequence.allSatisfy(_:)(uint64_t a1)
{
  v2 = type metadata accessor for Text.Effect.BaseContent(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for IndexingIterator<Text.Effect.BaseContent>(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVWOcTm_0(a1, v4, type metadata accessor for Text.Effect.BaseContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVWOcTm_0(v4, v8, type metadata accessor for Text.Effect.BaseContent);
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  swift_beginAccess();
  if (*(*(v9 + 48) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v10, v11);
    if (v12)
    {
      v44 = *(v6 + 36);
      swift_endAccess();
      outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(v4, type metadata accessor for Text.Effect.BaseContent);
      v13 = 0;
      v14 = *v8;
      v15 = v8[1];
      v16 = v8[2];
      while (1)
      {
        v17 = v13;
        swift_beginAccess();
        v18 = *(v14 + 48);
        if (!*(v18 + 16))
        {
          break;
        }

        v19 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v21 = *(*(v18 + 56) + 16 * v19);
        swift_endAccess();
        v22 = *(v21 + 16);
        if (v22 == v13)
        {
          goto LABEL_22;
        }

        swift_beginAccess();
        v23 = *(v14 + 48);
        v24 = *(v23 + 16);

        if (!v24)
        {
          goto LABEL_30;
        }

        v25 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        if ((v26 & 1) == 0)
        {
          goto LABEL_30;
        }

        v27 = *(*(v23 + 56) + 16 * v25);
        swift_endAccess();
        v28 = *(v27 + 16);
        if (v13 >= v28)
        {
          goto LABEL_24;
        }

        v29 = *(v27 + 32 + 8 * v13);
        if (v17)
        {
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v32 = *(*(*(v27 + 32 + 8 * v30) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
            v33 = __OFADD__(v31, v32);
            v31 += v32;
            if (v33)
            {
              break;
            }

            if (v17 == ++v30)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          break;
        }

        v31 = 0;
LABEL_16:
        v45[0] = v14;
        v45[1] = v15;
        v45[2] = v16;
        v45[3] = v29;
        v45[4] = v17;
        v45[5] = v28;
        v45[6] = v31;
        swift_beginAccess();
        v34 = *(*(v14 + 48) + 16);

        if (!v34)
        {
          goto LABEL_27;
        }

        specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        if ((v35 & 1) == 0)
        {
          goto LABEL_27;
        }

        swift_endAccess();
        swift_beginAccess();
        v36 = *(v14 + 48);
        if (!*(v36 + 16))
        {
          goto LABEL_28;
        }

        v37 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
        if ((v38 & 1) == 0)
        {
          goto LABEL_28;
        }

        v39 = *(*(v36 + 56) + 16 * v37);
        swift_endAccess();
        if (v17 >= *(v39 + 16))
        {
          goto LABEL_25;
        }

        v13 = v17 + 1;
        Text.Effect.BaseFragment.onlyEmojis.getter();
        v41 = v40;
        outlined destroy of Text.Effect.BaseFragment(v45);
        if ((v41 & 1) == 0)
        {
LABEL_22:
          *(v8 + v44) = v13;
          outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(v8, type metadata accessor for IndexingIterator<Text.Effect.BaseContent>);
          return v22 == v17;
        }
      }

      swift_endAccess();
      __break(1u);
LABEL_27:
      swift_endAccess();
      __break(1u);
LABEL_28:
      swift_endAccess();
      __break(1u);
    }
  }

  swift_endAccess();
  __break(1u);
LABEL_30:
  swift_endAccess();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized RandomAccessCollection<>.index(after:)(unint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  swift_beginAccess();
  if (!*(*(v3 + 48) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v4, v5), (v6 & 1) == 0))
  {
LABEL_7:
    result = swift_endAccess();
    __break(1u);
    goto LABEL_8;
  }

  swift_endAccess();
  result = Text.Effect.Keyframes.subscript.getter(v4, v5, v3);
  if (result)
  {
    v8 = *(result + 16);

    if (v8 > a1)
    {
      return a1 + 1;
    }

    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

void one-time initialization function for useLarge()
{
  if (one-time initialization token for swiftUI != -1)
  {
    swift_once();
  }

  if (static NSUserDefaults.swiftUI)
  {
    v0 = static NSUserDefaults.swiftUI;
    v1 = MEMORY[0x19A8BD5F0](0xD000000000000023, 0x8000000195CE0DF0);
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 0;
  }

  static BigTextEffect.useLarge = v2;
}

uint64_t one-time initialization function for scaleTimeline()
{
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(0, &lazy cache variable for type metadata for KeyframeTimeline<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E697E9C8]);
  v1 = v0;
  __swift_allocate_value_buffer(v0, static BigTextEffect.scaleTimeline);
  __swift_project_value_buffer(v1, static BigTextEffect.scaleTimeline);
  type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>(0, v2);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVAHSlADWlTm_0(&lazy protocol witness table cache variable for type KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>, MEMORY[0x1E697E160]);
  return KeyframeTimeline.init<A>(initialValue:content:)();
}

uint64_t closure #1 in variable initialization expression of static BigTextEffect.scaleTimeline@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  v64 = a1;
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0(0, a2);
  v62 = v2;
  v63 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v59 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0(0, v3);
  v58 = v5;
  v61 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v55 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0(0, v6);
  v76 = v8;
  v60 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v75 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0(0);
  v74 = v10;
  v57 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0(0);
  v71 = v12;
  v56 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v70 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for UnitCurve();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v15 = MEMORY[0x1E69E63B0];
  type metadata accessor for LinearKeyframe<Double>(0, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v65 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v77 = &v54 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v54 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v54 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v54 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v73 = &v54 - v34;
  v78 = 0x3FF0000000000000;
  static UnitCurve.linear.getter();
  LinearKeyframe.init(_:duration:timingCurve:)();
  v35 = lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
  MEMORY[0x19A8BCC30](v32, v15, v17, v35);
  v36 = *(v18 + 8);
  v66 = v32;
  v36(v32, v17);
  v78 = 0x3FEE666666666666;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  LinearKeyframe.init(_:duration:timingCurve:)();
  MEMORY[0x19A8BCC30](v29, v15, v17, v35);
  v69 = v29;
  v36(v29, v17);
  v78 = 0x3FF8000000000000;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  LinearKeyframe.init(_:duration:timingCurve:)();
  MEMORY[0x19A8BCC30](v26, v15, v17, v35);
  v68 = v26;
  v36(v26, v17);
  v78 = 0x3FF999999999999ALL;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v37 = v77;
  LinearKeyframe.init(_:duration:timingCurve:)();
  MEMORY[0x19A8BCC30](v37, v15, v17, v35);
  v36(v37, v17);
  v78 = 0x3FEE666666666666;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v38 = v65;
  LinearKeyframe.init(_:duration:timingCurve:)();
  MEMORY[0x19A8BCC30](v38, v15, v17, v35);
  v36(v38, v17);
  v54 = v18 + 8;
  v78 = 0x3FF0000000000000;
  static UnitCurve.bezier(startControlPoint:endControlPoint:)();
  v39 = v67;
  LinearKeyframe.init(_:duration:timingCurve:)();
  MEMORY[0x19A8BCC30](v39, v15, v17, v35);
  v36(v39, v17);
  v40 = v15;
  MEMORY[0x19A8BCC60](v73, v15, v17, v35);
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v78 = v15;
  v79 = v17;
  v80 = v17;
  v81 = v35;
  v82 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v42 = v71;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v78 = v15;
  v79 = v42;
  v80 = v17;
  v81 = OpaqueTypeConformance2;
  v82 = v35;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v74;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v78 = v15;
  v79 = v44;
  v80 = v17;
  v81 = v43;
  v82 = v35;
  v45 = swift_getOpaqueTypeConformance2();
  v46 = v55;
  v47 = v76;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v78 = v15;
  v79 = v47;
  v80 = v17;
  v81 = v45;
  v82 = v35;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v59;
  v50 = v65;
  v51 = v58;
  static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v78 = v40;
  v79 = v51;
  v80 = v17;
  v81 = v48;
  v82 = v35;
  swift_getOpaqueTypeConformance2();
  v52 = v62;
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  (*(v63 + 8))(v49, v52);
  (*(v61 + 8))(v46, v51);
  (*(v60 + 8))(v75, v76);
  (*(v57 + 8))(v72, v74);
  (*(v56 + 8))(v70, v71);
  v36(v67, v17);
  v36(v50, v17);
  v36(v77, v17);
  v36(v68, v17);
  v36(v69, v17);
  v36(v66, v17);
  return (v36)(v73, v17);
}

id closure #1 in BigTextEffect.configuration(_:)(__n128 a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1.n128_u64[0];
  type metadata accessor for LinearKeyframe<Double>(0, &lazy cache variable for type metadata for AnyDynamicAttributeModifier<TextScaleAttributeModifier>, &type metadata for TextScaleAttributeModifier, &protocol witness table for TextScaleAttributeModifier, type metadata accessor for AnyDynamicAttributeModifier);
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = Text.Effect.Content.modifier(_:)(v8, a2, a3, a4);

  return v9;
}

uint64_t closure #3 in BigTextEffect.configuration(_:)(__int128 *a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v6 - 8);
  *&v84 = &v74 - v7;
  v99 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v82 = *(a1 + 5);
  v83 = v10;
  v103[0] = MEMORY[0x1E69E7CC8];
  closure #1 in closure #3 in BigTextEffect.configuration(_:)(v103, a2);
  v11 = *(a2 + 1);
  v89 = *a2;
  v90 = v11;
  v91 = *(a2 + 2);
  v92 = a2[6];
  v85 = v89;
  v86 = v11;
  v87 = v91;
  v88 = v92;
  v12 = v103[0];
  outlined init with copy of Text.Effect.DrawableFragment<BigTextEffect>(a2, &v93, &lazy cache variable for type metadata for Text.Effect.DrawableFragment<BigTextEffect>, type metadata accessor for Text.Effect.DrawableFragment);
  v13 = specialized static Text.Effect.stopMarkers(_:)(&v89);
  Text.Effect.PathInterpolator.Map.computeFragment(quantization:stopMarkers:defaultKey:options:)(a3, v13, v14, 10, v12, 0.0);
  v16 = v15;
  v18 = v17;

  v19 = *(v12 + 16);
  if (v19)
  {
    *&v80 = v18;
    *&v81 = v16;
    v74 = v9;
    v75 = v8;
    v20 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSd_Tt1g5(v19, 0);
    v21 = specialized Sequence._copySequenceContents(initializing:)(&v93, v20 + 4, v19, v12);
    v22 = v93;

    outlined consume of [Double : Text.Effect.BaseFragment].Iterator._Variant(v22);
    if (v21 != v19)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v9 = v74;
    v8 = v75;
    v16 = v81;
    v18 = v80;
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC0];
  }

  *&v93 = v20;
  v20 = 0;
  specialized MutableCollection<>.sort(by:)(&v93);
  v23 = specialized Text.Effect.PathInterpolator.MapKeys.init(_:)(v93);

  v93 = v85;
  v94 = v86;
  v95 = v87;
  v96 = v88;
  *&v97 = v16;
  *(&v97 + 1) = v18;
  v98 = v23;
  if ((*(&v91 + 1) & 0x8000000000000000) != 0)
  {
    goto LABEL_35;
  }

  v24 = 0.2;
  if (*(&v91 + 1) == 1 && Text.Effect.BaseFragment.coversAllParagraphs.getter())
  {
    v74 = v9;
    v75 = v8;
    v25 = *(&v89 + 1);
    v26 = *(*(&v90 + 1) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
    v80 = *(*(&v90 + 1) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
    v81 = v26;
    type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteLayoutState<BigTextEffect>, type metadata accessor for Text.Effect.ConcreteLayoutState);
    v27 = swift_allocObject();
    *(v27 + 16) = 1;
    v28 = v89;
    v29 = v91;

    v30 = Text.Effect.Keyframes.subscript.getter(v25, v27, v28);
    if (!v30)
    {
      goto LABEL_41;
    }

    if ((v29 & 0x8000000000000000) != 0)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v29 >= *(v30 + 16))
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v31 = (v30 + 32);
    v32 = *(v30 + 32 + 8 * v29);
    if (v29)
    {
      v33 = 0;
      v34 = v29;
      while (1)
      {
        v35 = *(*(*v31 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v36 = __OFADD__(v33, v35);
        v33 += v35;
        if (v36)
        {
          break;
        }

        ++v31;
        if (!--v34)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

LABEL_15:

    v37 = *(v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
    v78 = *(v32 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
    v79 = v37;

    v38 = swift_allocObject();
    *(v38 + 16) = 2;

    v39 = Text.Effect.Keyframes.subscript.getter(v25, v38, v28);
    if (!v39)
    {
LABEL_41:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    if (v29 >= *(v39 + 16))
    {
LABEL_40:
      __break(1u);

      __break(1u);
      goto LABEL_41;
    }

    v40 = *(v39 + 32 + 8 * v29);
    if (v29)
    {
      v41 = 0;
      v42 = 0;
      while (1)
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        v44 = *(*(*(v39 + 32 + 8 * v41) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
        v36 = __OFADD__(v42, v44);
        v42 += v44;
        if (v36)
        {
          goto LABEL_33;
        }

        if (__OFSUB__(v29, v43))
        {
          goto LABEL_34;
        }

        ++v41;
        if (v29 == v43)
        {
          goto LABEL_23;
        }
      }

LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_23:

    v45 = *(v40 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics);
    v76 = *(v40 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_metrics + 16);
    v77 = v45;

    v24 = 0.5;
    v46 = 1;
    v9 = v74;
    v8 = v75;
  }

  else
  {
    v46 = 0;
    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
  }

  v48 = *(&v89 + 1);
  v47 = v89;
  v49 = v90;

  v50 = v84;
  Text.Effect.BaseContent.init(keyframes:key:)(v47, v48, v49, v84);
  v51 = specialized Sequence.reduce<A>(_:_:)(0, v50);
  outlined destroy of Text.Effect.DrawableContent<BigTextEffect>(v50);

  Text.Effect.BaseContent.init(keyframes:key:)(v47, v48, v49, v50);
  v52 = specialized Sequence.allSatisfy(_:)(v50);
  outlined destroy of Text.Effect.DrawableContent<BigTextEffect>(v50);
  if (__OFSUB__(v51, 10))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v53 = exp((v51 - 10) * -0.25);
  if (v53 > 1.0)
  {
    v53 = 1.0;
  }

  v54 = 0.0;
  if ((v52 & 1) == 0)
  {
    v54 = v24;
  }

  v100 = v8;
  v101 = v9;
  v55 = v54 * v53 + 1.4;
  v57 = v82;
  v56 = v83;
  v102 = v83;
  v103[0] = v82;
  v58 = swift_allocObject();
  *(v58 + 16) = v99;
  *(v58 + 32) = v8;
  *(v58 + 40) = v9;
  *(v58 + 48) = v56;
  *(v58 + 56) = v57;
  *(v58 + 64) = v55;
  *(v58 + 72) = v46;
  v59 = v80;
  *(v58 + 80) = v81;
  *(v58 + 96) = v59;
  v60 = v78;
  *(v58 + 112) = v79;
  *(v58 + 128) = v60;
  v61 = v76;
  *(v58 + 144) = v77;
  *(v58 + 160) = v61;
  v62 = v96;
  *(v58 + 208) = v95;
  *(v58 + 224) = v62;
  *(v58 + 240) = v97;
  *(v58 + 256) = v98;
  v63 = v94;
  *(v58 + 176) = v93;
  *(v58 + 192) = v63;
  v64 = swift_allocObject();
  v65 = v96;
  *(v64 + 48) = v95;
  *(v64 + 64) = v65;
  *(v64 + 80) = v97;
  v66 = v98;
  v67 = v94;
  *(v64 + 16) = v93;
  *(v64 + 32) = v67;
  *(v64 + 96) = v66;
  *(v64 + 104) = partial apply for closure #3 in closure #3 in BigTextEffect.configuration(_:);
  *(v64 + 112) = v58;
  v68 = MEMORY[0x1E69E6F90];
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable.Fragment>, &type metadata for Text.Effect.Drawable.Fragment, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v84 = xmmword_195CC8D00;
  *(inited + 16) = xmmword_195CC8D00;
  *(inited + 32) = partial apply for closure #1 in Text.Effect.DrawableFragment.transform(with:transform:);
  *(inited + 40) = v64;
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Drawable>, &type metadata for Text.Effect.Drawable, v68);
  v70 = swift_initStackObject();
  *(v70 + 16) = v84;
  *(v70 + 32) = inited;
  _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV8Fragment33_363E424B8D24CACCD5AAF4ADF34E118BLLVGWOcTm_0(&v100, &v85, &lazy cache variable for type metadata for [Text.Effect.Timing.GlyphInfo], &type metadata for Text.Effect.Timing.GlyphInfo);
  _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV8Fragment33_363E424B8D24CACCD5AAF4ADF34E118BLLVGWOcTm_0(&v101, &v85, &lazy cache variable for type metadata for [Text.Effect.Timing.Fragment], &type metadata for Text.Effect.Timing.Fragment);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVWOcTm_0(&v102, &v85, type metadata accessor for [Text.Effect.Timing.GlyphTiming]);
  outlined init with copy of Text.Effect.ChunkCollection(v103, &v85);
  outlined init with copy of Text.Effect.PathInterpolator(&v93, &v85);
  specialized static Text.Effect.DrawingBuilder.buildBlock(_:)(v70);
  v72 = v71;
  swift_setDeallocating();
  outlined destroy of Text.Effect.Drawable(v70 + 32);
  return v72;
}

uint64_t closure #1 in closure #3 in BigTextEffect.configuration(_:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[4];
  type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.ConcreteLayoutState<BigTextEffect>, type metadata accessor for Text.Effect.ConcreteLayoutState);
  v6 = swift_allocObject();
  *(v6 + 16) = 1;
  swift_retain_n();
  v7 = Text.Effect.Keyframes.subscript.getter(v4, v6, v3);
  if (!v7)
  {
    goto LABEL_40;
  }

  if (v5 < 0)
  {
    goto LABEL_36;
  }

  v8 = *(v7 + 16);
  if (v5 >= v8)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v9 = (v7 + 32);
  v10 = *(v7 + 32 + 8 * v5);
  v11 = 0;
  if (v5)
  {
    v12 = v5;
    while (1)
    {
      v13 = *(*(*v9 + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v14 = __OFADD__(v11, v13);
      v11 += v13;
      if (v14)
      {
        break;
      }

      ++v9;
      if (!--v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_8:

  *&v48 = v3;
  *(&v48 + 1) = v4;
  v49 = v6;
  v50 = v10;
  v51 = v5;
  v52 = v8;
  v53 = v11;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v42 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v48, isUniquelyReferenced_nonNull_native, -1.0);
  outlined destroy of Text.Effect.BaseFragment(&v48);
  *a1 = v42;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v17 = Text.Effect.Keyframes.subscript.getter(v4, v16, v3);
  if (!v17)
  {
LABEL_40:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v18 = *(v17 + 16);
  if (v5 >= v18)
  {
    goto LABEL_38;
  }

  v19 = *(v17 + 32 + 8 * v5);
  if (v5)
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v23 = *(*(*(v17 + 32 + 8 * v20) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v14 = __OFADD__(v21, v23);
      v21 += v23;
      if (v14)
      {
        goto LABEL_31;
      }

      if (__OFSUB__(v5, v22))
      {
        goto LABEL_32;
      }

      ++v20;
      if (v5 == v22)
      {
        goto LABEL_18;
      }
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v21 = 0;
LABEL_18:

  *&v42 = v3;
  *(&v42 + 1) = v4;
  v43 = v16;
  v44 = v19;
  v45 = v5;
  v46 = v18;
  v47 = v21;

  v24 = swift_isUniquelyReferenced_nonNull_native();
  *&v36 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v42, v24, 0.0);
  outlined destroy of Text.Effect.BaseFragment(&v42);
  *a1 = v36;
  v25 = swift_allocObject();
  *(v25 + 16) = 2;
  v26 = Text.Effect.Keyframes.subscript.getter(v4, v25, v3);
  if (!v26)
  {
    goto LABEL_40;
  }

  v27 = *(v26 + 16);
  if (v5 >= v27)
  {
    goto LABEL_39;
  }

  v28 = *(v26 + 32 + 8 * v5);
  if (v5)
  {
    v29 = 0;
    v30 = 0;
    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v32 = *(*(*(v26 + 32 + 8 * v29) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v14 = __OFADD__(v30, v32);
      v30 += v32;
      if (v14)
      {
        goto LABEL_34;
      }

      if (__OFSUB__(v5, v31))
      {
        goto LABEL_35;
      }

      ++v29;
      if (v5 == v31)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v30 = 0;
LABEL_28:

  *&v36 = v3;
  *(&v36 + 1) = v4;
  v37 = v25;
  v38 = v28;
  v39 = v5;
  v40 = v27;
  v41 = v30;

  v33 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *a1;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v36, v33, 1.0);
  result = outlined destroy of Text.Effect.BaseFragment(&v36);
  *a1 = v35;
  return result;
}

void closure #3 in closure #3 in BigTextEffect.configuration(_:)(unint64_t a1, void *a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17)
{
  v28 = type metadata accessor for Text.Effect.Timing.GlyphTiming(0) - 8;
  MEMORY[0x1EEE9AC00](v28);
  v31 = v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (*(*(a3 + 16) + 16) <= a1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v32 = *(a3 + 32);
  if (*(v32 + 16) > a1)
  {
    *&v49[1] = a9;
    _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVWOcTm_0(v32 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * a1, v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Text.Effect.Timing.GlyphTiming);
    if (one-time initialization token for scaleTimeline == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  swift_once();
LABEL_5:
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(0, &lazy cache variable for type metadata for KeyframeTimeline<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E697E9C8]);
  __swift_project_value_buffer(v33, static BigTextEffect.scaleTimeline);
  KeyframeTimeline.value(progress:)();
  v34 = *&v51 + -1.0;
  if (*&v51 >= 1.0)
  {
    v35 = (a5 + -1.0) * (v34 / 0.6);
    v36 = 0.0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v35 = v34 / 0.05;
    v36 = 0.0;
    if ((a4 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if (v35 >= 0.0)
  {
    v41 = a16;
    a13 = a17;
    v39 = a14;
    v40 = a15;
    v38 = v35;
  }

  else
  {
    v38 = fabs(v35);
    v39 = a10;
    v40 = a11;
    v41 = a12;
  }

  v36 = Text.Effect.Metrics.offsetForCenterAlignment(other:t:)(v39, v40, v41, a13, v38, a6, a7);
LABEL_13:
  v51 = *&v35;
  v52 = v36;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v56 = _Q0;
  v57 = 0x3FF0000000000000;
  v58 = 0;
  Text.Effect.TransformContext.record(position:for:)(&v51, a1, v50);
  Text.Effect.TransformContext.draw(state:keyPath:)(v50, 0, 0, 0, 1);
  if (__OFSUB__(*a2, a1))
  {
    __break(1u);
  }

  else if (*a2 == a1)
  {
    Text.Effect.PathInterpolator.width(for:at:)(a1, *v50);
    v48 = v47;
    outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(v31, type metadata accessor for Text.Effect.Timing.GlyphTiming);
    a2[17] = v48;
  }

  else
  {
    outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(v31, type metadata accessor for Text.Effect.Timing.GlyphTiming);
  }
}

uint64_t protocol witness for static Text.Effect.Base.lineBreakingState.getter in conformance BigTextEffect@<X0>(char *a1@<X8>)
{
  if (one-time initialization token for useLarge != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  if (static BigTextEffect.useLarge)
  {
    v1 = 2;
  }

  else
  {
    v1 = 0;
  }

  *a1 = v1;
  return result;
}

double protocol witness for Text.Effect.Base.timing(for:from:to:duration:) in conformance BigTextEffect@<D0>(uint64_t a1@<X0>, char *a2@<X5>, char a3@<W6>, _OWORD *a4@<X8>)
{
  specialized BigTextEffect.timing(for:from:to:duration:)(a1, a2, a3 & 1, v7);
  v5 = v7[1];
  *a4 = v7[0];
  a4[1] = v5;
  result = *&v8;
  a4[2] = v8;
  return result;
}

unint64_t instantiation function for generic protocol witness table for BigTextEffect(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect(a1, a2, a3);
  *(a1 + 8) = v4;
  result = lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v10[2] = *(a2 + 32);
  v11 = *(a2 + 48);
  v6 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v6;
  v13 = *(a3 + 32);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  v9[2] = a1[2];
  result = closure #3 in BigTextEffect.configuration(_:)(v9, v10, v12);
  *a4 = result;
  return result;
}

double specialized BigTextEffect.timing(for:from:to:duration:)@<D0>(uint64_t a1@<X0>, char *a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18[-v9];
  v11 = type metadata accessor for Spring();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18[16] = 1;
  v18[24] = 0;
  v21 = xmmword_195CD01E0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 2;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = MEMORY[0x1E69E7CC0];
  v34 = 0;
  v35 = xmmword_195CCB160;
  v36 = 0;
  if (one-time initialization token for spring != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, static BigTextEffect.spring);
  (*(v12 + 16))(v14, v15, v11);
  outlined init with copy of Text.Effect.DrawableFragment<BigTextEffect>(a1, v10, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  _s7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV13configuration8duration6spring7contentA2H13ConfigurationV_SdSgAA6SpringVAF15DrawableContentVy__xGtcAD0cF0RzlufCAD03BigcF0V_Tt3g5(&v21, a2, a3 & 1, v14, v10, v19);
  v16 = v19[1];
  *a4 = v19[0];
  a4[1] = v16;
  result = *&v20;
  a4[2] = v20;
  return result;
}

void *specialized BigTextEffect.configuration(_:)()
{
  v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v2 = v0[2];
  v1 = v0[3];
  if (v2 >= v1 >> 1)
  {
    v0 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v1 > 1), v2 + 1, 1, v0);
  }

  v0[2] = v2 + 1;
  v3 = &v0[4 * v2];
  v3[4] = 1;
  v3[5] = closure #1 in BigTextEffect.configuration(_:);
  v3[6] = 0;
  *(v3 + 56) = 1;

  v4 = v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 + 2, 1, v0);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  v4[2] = v6 + 1;
  v7 = &v4[4 * v6];
  v7[4] = 2;
  v7[5] = closure #2 in BigTextEffect.configuration(_:);
  v7[6] = 0;
  *(v7 + 56) = 1;

  v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  v11 = &v8[2 * v10];
  v11[4] = specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A.Text.Effect.Base.Timing, @guaranteed Text.Effect.DrawableFragment<A>, @unowned Text.Effect.QuantizationContext) -> (@owned Text.Effect.Drawable);
  v11[5] = 0;
  return v4;
}

uint64_t outlined destroy of Text.Effect.DrawableContent<BigTextEffect>(uint64_t a1)
{
  type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, &lazy cache variable for type metadata for Text.Effect.DrawableContent<BigTextEffect>, type metadata accessor for Text.Effect.DrawableContent);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSay7SwiftUI4TextV0C16AnimationSupportE6EffectO6TimingV8Fragment33_363E424B8D24CACCD5AAF4ADF34E118BLLVGWOcTm_0(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(0, a3, a4, MEMORY[0x1E69E62F8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type BigTextEffect and conformance BigTextEffect(0, a2, a3);
    v7 = a3(a1, &type metadata for BigTextEffect, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void _ss23_ContiguousArrayStorageCy7SwiftUI4TextV0F16AnimationSupportE6EffectO8DrawableV8FragmentOGMaTm_1(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t outlined destroy of IndexingIterator<Text.Effect.DrawableContent<BigTextEffect>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void type metadata accessor for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>(uint64_t a1, __n128 a2)
{
  if (!lazy cache variable for type metadata for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>)
  {
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0(255, a2);
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0(255, v2);
    type metadata accessor for LinearKeyframe<Double>(255, &lazy cache variable for type metadata for LinearKeyframe<Double>, MEMORY[0x1E69E63B0], MEMORY[0x1E6981FE0], MEMORY[0x1E697E3F8]);
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0(255, v3);
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0(255);
    type metadata accessor for <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0(255);
    lazy protocol witness table accessor for type LinearKeyframe<Double> and conformance LinearKeyframe<A>();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v4 = type metadata accessor for KeyframeTrack();
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for KeyframeTrack<Double, Double, <<opaque return type of static KeyframesBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0>);
    }
  }
}

uint64_t _s7SwiftUI4TextV0C16AnimationSupportE6EffectO11BaseContentVAHSlADWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of Text.Effect.DrawableFragment<BigTextEffect>(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, ValueMetadata *, unint64_t))
{
  type metadata accessor for Text.Effect.DrawableContent<BigTextEffect>(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void type metadata accessor for LinearKeyframe<Double>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Text.Effect.BaseFragmentIdentifierMap(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SiTt1g5(*a1, *a2) & (v2 == v3);
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4TextV0D16AnimationSupportE6EffectO10IdentifierV_SiTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + 8 * v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 8 * v12), MEMORY[0x1E69E7568], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    if ((v14 & 1) == 0 || *(*(a2 + 56) + 8 * result) != v13)
    {
      return 0;
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
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, MEMORY[0x1E69E7568], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, MEMORY[0x1E69E7560], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](a1);
  (*(*a2 + 88))(v6);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE80](a1);
  MEMORY[0x19A8BDE60](a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a2(a1);
  v6 = Hasher._finalize()();
  return a3(a1, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1)
{
  v3 = a1 == 0.0;
  v4 = 0.0;
  if (!v3)
  {
    v4 = a1;
  }

  v5 = MEMORY[0x19A8BDE40](*(v1 + 40), *&v4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v5, a1);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  Hasher.init(_seed:)();
  MEMORY[0x19A8BDE60](v2);
  MEMORY[0x19A8BDE60](v3);
  MEMORY[0x19A8BDE60](v5);
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x19A8BDE60](v4);
  }

  if (*(a1 + 48) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v7 = a1[5];
    Hasher._combine(_:)(1u);
    MEMORY[0x19A8BDE60](v7);
  }

  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = *(v3 + 48) + 16 * v5;
      if (*v9 == a1)
      {
        v10 = *(**(v9 + 8) + 80);

        LOBYTE(v10) = v10(a2);

        if (v10)
        {
          break;
        }
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      if (*v8 == a1)
      {
        v9 = v8[1];
        if (__OFSUB__(a2, v9))
        {
          __break(1u);
          return result;
        }

        if (v9 == a2)
        {
          return result;
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier;
  if (!lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier;
  if (!lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.Effect.RelativeFragmentIdentifier and conformance Text.Effect.RelativeFragmentIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Time and conformance Time(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Time and conformance Time;
  if (!lazy protocol witness table cache variable for type Time and conformance Time)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Time and conformance Time);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Time()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x19A8BDE80](*&v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Time()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x19A8BDE80](*&v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Time(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x19A8BDE80](*&v3);
  return Hasher._finalize()();
}

id AnyTextFilterEffect.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AnyTextFilterEffect();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata completion function for TextFilterEffect(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TextFilterEffect.AnimationInfo.updateLayout(effect:identifier:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v58 = a4;
  v57 = a3;
  v64 = a1;
  v11 = *(*(*v6 + 128) + 8);
  v12 = *(*v6 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v52 - v17;
  v62 = type metadata accessor for Text.Effect.DrawableContent(0, v12, v11, v18);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v52 - v19;
  type metadata accessor for Text.Effect.ConcreteLayoutState(0, v12, v11, v20);
  v21 = *(v11 + 128);
  v63 = v12;
  v22 = v21(v12, v11);
  v23 = Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v22);
  v59 = a5;
  v24 = Text.Effect.Keyframes.subscript.getter(a2, v23, a5);
  if (!v24)
  {
LABEL_15:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v70 = v14;
  v65 = AssociatedTypeWitness;
  v25 = *(v24 + 16);
  v68 = v23;
  v69 = v7;
  if (v25)
  {
    v54 = a2;
    v55 = a6;
    v71[0] = MEMORY[0x1E69E7CC0];
    v56 = v24;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25, 0);
    v26 = v56;
    v27 = v71[0];
    v28 = *(v56 + 16);
    v29 = *(v71[0] + 16);
    v30 = 32;
    while (1)
    {
      v31 = *(*(*(v26 + v30) + OBJC_IVAR____TtCVVOE20TextAnimationSupportV7SwiftUI4Text6Effect14KeyframeLayout8FragmentP33_4C784D74468FB10855DB713ACA87B0927Storage_clusters) + 16);
      v71[0] = v27;
      v32 = *(v27 + 24);
      if (v29 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v29 + 1, 1);
        v26 = v56;
        v27 = v71[0];
      }

      *(v27 + 16) = v29 + 1;
      *(v27 + 8 * v29 + 32) = v31;
      if (!v28)
      {
        break;
      }

      --v28;
      v30 += 8;
      ++v29;
      if (!--v25)
      {

        v23 = v68;
        v7 = v69;
        a6 = v55;
        a2 = v54;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  v27 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v33 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v27, v7[2]);
  if (v33)
  {
    v34 = v63;
    Text.Effect.BaseContext.content<A>(for:key:)(v63, a2, v23, v57, v58, v59);
    TextEffectsAnimationController.state(for:time:)(a2, v71, *(a6 + 56));
    v52 = v71[8];
    v53 = v71[9];
    protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer();
    v56 = v35;
    v57 = v36;
    LODWORD(v59) = v33;
    protocol witness for TextRenderer.draw(layout:in:) in conformance TextWipeTransitionModifier.NullRenderer();
    v54 = v37;
    v55 = v38;
    v58 = *(*v7 + 144);
    v39 = v58;
    swift_beginAccess();
    v40 = v7 + v39;
    v41 = v60;
    v42 = v65;
    (*(v70 + 16))(v60, v40, v65);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v44 = *(AssociatedConformanceWitness + 8);

    v53 = v44(v42, AssociatedConformanceWitness);
    v46 = v45;
    (*(v70 + 8))(v41, v42);
    v47 = v46 & 1;
    LOBYTE(v33) = v59;
    v48 = v66;
    (*(v11 + 136))(v66, v56, v57, v54, v55, v53, v47, v34, v11);

    outlined destroy of Text.Effect.State(v71);
    (*(v61 + 8))(v48, v62);
    v49 = v58;
    v50 = v69;
    swift_beginAccess();
    (*(v70 + 40))(v50 + v49, v67, v42);
    swift_endAccess();
    v50[2] = v27;
  }

  else
  {
  }

  return v33 & 1;
}

double TextFilterEffect.AnimationInfo.clearFrameCache()()
{
  swift_beginAccess();

  Text.Effect.AttributeTracker.Tracker.commitUpdates()();
  swift_endAccess();

  return result;
}

void TextFilterEffect.AnimationInfo.restart()()
{
  v1 = *(v0 + *(*v0 + 152));
  swift_beginAccess();
  *(v1 + 48) = 1;
}

BOOL TextFilterEffect.AnimationInfo.isSettled.getter()
{
  v1 = *(v0 + *(*v0 + 152));
  swift_beginAccess();
  return *(v1 + 32) == 0;
}

uint64_t TextFilterEffect.AnimationInfo.needsUpdate(for:state:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 16);
  v6 = swift_checkMetadataState();
  v7 = v5(a1, v6, AssociatedConformanceWitness);
  v9 = v8;
  v11 = v10;

  LOBYTE(v7) = Text.Effect.AttributeTracker.needsUpdate(for:state:interval:consideringRestart:)(a1, a2, v7, v9, v11 & 1, 1);

  return v7 & 1;
}

double TextFilterEffect.AnimationInfo.__ivar_destroyer()
{

  v1 = *(*v0 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return result;
}

char *TextFilterEffect.AnimationInfo.deinit()
{

  v1 = *(*v0 + 144);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t TextFilterEffect.AnimationInfo.__deallocating_deinit()
{
  TextFilterEffect.AnimationInfo.deinit();

  return swift_deallocClassInstance();
}

uint64_t TextFilterEffect.updateInfo(_:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v9 = *MEMORY[0x1E69E7D40] & *v5;
  v10 = *(v9 + 0xE8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v20 - v12;
  type metadata accessor for TextFilterEffect.AnimationInfo(0, v10, *((v15 & v14) + 0xF0), v16);
  if (swift_dynamicCastClass())
  {
    (*(v11 + 16))(v13, &v5[*(v9 + 248)], v10);
    v17 = *&v5[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];

    v18 = TextFilterEffect.AnimationInfo.updateLayout(effect:identifier:context:)(v13, v17, a2, a3, a4, v21);

    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t TextFilterEffect.duration(from:to:variant:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9)
{
  v22 = a8;
  v23 = a3;
  v24 = a4;
  v25 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v21 - v14;
  v16 = specialized TextFilterEffect.animationInfo(persist:from:to:variant:duration:context:)(1, a1, a2, v23, v24, 0, 1, v25, a7, v22, a9);
  v17 = *(*v16 + 144);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16 + v17, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);

  (*(v13 + 8))(v15, AssociatedTypeWitness);
  return v19;
}

uint64_t TextFilterEffect.apply(_:at:to:context:in:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, double a6)
{
  v7 = v6;
  v53 = a3;
  v47 = a2;
  v12 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xF0);
  v13 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xE8);
  v54 = *(v12 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v51 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v49 = &v46 - v14;
  v50 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = a4[1];
  v46 = *a4;
  v19 = a4[2];
  v20 = a4[3];
  v48 = a4;
  v21 = TextEffectsAnimationController.state(for:time:)(a1, v55, a6);
  v22 = v55[56] & 0xFE;
  v23 = v58;
  if (v22 == 2 || v58 && ((*(*v58 + 104))(v21) & 1) == 0)
  {
    v33 = specialized TextFilterEffect.animationInfo(persist:from:to:variant:duration:context:)(v22 == 2, v56, v57, v23, v59, 0, 1, v46, v18, v19, v20);
    v34 = *&v7[OBJC_IVAR____TtC20TextAnimationSupport16AnyTextAnimation_id];
    v35 = v12;
    v38 = specialized TextFilterEffect.defaultDrawingState.getter(v13, v12, v36, v37);
    specialized Text.Effect.BaseContext.fragment<A>(for:key:fragment:)(v34, v38, v47, v19, v60);

    v39 = v50;
    (*(v50 + 16))(v17, &v7[*((*MEMORY[0x1E69E7D40] & *v7) + 0xF8)], v13);
    v40 = *(*v33 + 144);
    swift_beginAccess();
    v41 = v51;
    v42 = v49;
    v43 = AssociatedTypeWitness;
    (*(v51 + 16))(v49, v33 + v40, AssociatedTypeWitness);
    (*(v35 + 24))(v53, v60, v42, v55, v48, a5, v13, v35);
    v45 = type metadata accessor for Text.Effect.DrawableFragment(0, v13, v54, v44);
    (*(*(v45 - 8) + 8))(v60, v45);

    outlined destroy of Text.Effect.State(v55);
    (*(v41 + 8))(v42, v43);
    return (*(v39 + 8))(v17, v13);
  }

  else
  {
    v24 = *(v53 + 8);
    v25 = *v53;
    v26 = *(v53 + 32);
    v60[0] = *(v53 + 16);
    v27 = *(v53 + 48);
    v60[1] = v26;
    v60[2] = v27;
    v28 = *(v24 + 16);
    if (v28)
    {
      v29 = *(type metadata accessor for Text.Effect.ResolvedDrawing.Operation(0) - 8);
      v30 = v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
      v31 = *(v29 + 72);
      do
      {
        Text.Effect.ResolvedDrawing.Operation.draw(at:context:options:in:)(v60, 0, 0, 1, a5, v25);
        v30 += v31;
        --v28;
      }

      while (v28);
    }

    return outlined destroy of Text.Effect.State(v55);
  }
}

uint64_t TextFilterEffect.needsUpdate(_:at:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, double a7)
{
  TextEffectsAnimationController.state(for:time:)(a1, v14, a7);
  if ((v16 & 0xFE) == 2)
  {
    specialized TextFilterEffect.animationInfo(persist:from:to:variant:duration:context:)(1, v17, v18, v19, v20, v15, 0, a3, a4, a5, a6);
    v12 = TextFilterEffect.AnimationInfo.needsUpdate(for:state:)(a2, v14);
  }

  else
  {
    v12 = 0;
  }

  outlined destroy of Text.Effect.State(v14);
  return v12 & 1;
}

double TextFilterEffect.drawingOutsets.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  (*(v5 + 16))(&v11 - v7, &v1[*((v3 & v2) + 0xF8)], v4, v6);
  v9 = (*(*((v3 & v2) + 0xF0) + 32))(v4);
  (*(v5 + 8))(v8, v4);
  return v9;
}

uint64_t TextFilterEffect.phase(from:)(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v4 = *(*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0) + 8);
  v5 = *((*MEMORY[0x1E69E7D40] & *v2) + 0xE8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  (*(v4 + 88))(a1, v23, v5, v4, v16);
  if ((*(v11 + 48))(v10, 1, AssociatedTypeWitness) == 1)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v18, v10, AssociatedTypeWitness);
    type metadata accessor for Text.Effect.ConcretePhase(0, v5, v4, v20);
    (*(v11 + 16))(v14, v18, AssociatedTypeWitness);
    v21 = Text.Effect.ConcretePhase.__allocating_init(_:)(v14);
    (*(v11 + 8))(v18, AssociatedTypeWitness);
    return v21;
  }
}

uint64_t TextFilterEffect.defaultAnimatorPhase.getter()
{
  v1 = *(*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0) + 8);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v5 = &v8 - v4;
  type metadata accessor for Text.Effect.ConcretePhase(0, v2, v1, v6);
  (*(v1 + 72))(v2, v1);
  return Text.Effect.ConcretePhase.__allocating_init(_:)(v5);
}

void TextFilterEffect.configuration(from:)(uint64_t a1)
{
  v3 = *(*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0) + 8);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v20 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v20 - v17;
  if (v15)
  {
    (*(v3 + 64))(v15, v4, v3, v16);
    if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      (*(v10 + 32))(v18, v9, AssociatedTypeWitness);
      type metadata accessor for Text.Effect.ConcreteConfiguration(0, v4, v3, v19);
      (*(v10 + 16))(v13, v18, AssociatedTypeWitness);
      Text.Effect.ConcreteConfiguration.__allocating_init(_:)(v13);
      (*(v10 + 8))(v18, AssociatedTypeWitness);
    }
  }
}

uint64_t TextFilterEffect.states.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0xE8);
  v2 = *(*((*MEMORY[0x1E69E7D40] & *v0) + 0xF0) + 8);
  result = (*(v2 + 112))(v1, v2);
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);
    if (v5)
    {
      v6 = 0;
      while (v6 < *(v4 + 16))
      {
        ++v6;
        result = (*(v2 + 120))(v1, v2);
        if (v5 == v6)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_14;
    }

LABEL_6:

    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v8)
    {
      v13 = MEMORY[0x1E69E7CC0];
      result = specialized ContiguousArray.reserveCapacity(_:)();
      v10 = 0;
      while (v10 < *(v7 + 16))
      {
        ++v10;
        v11 = type metadata accessor for Text.Effect.ConcreteLayoutState(0, v1, v2, v9);
        Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v11);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        result = specialized ContiguousArray._endMutation()();
        if (v8 == v10)
        {

          return v13;
        }
      }

LABEL_14:
      __break(1u);
      return result;
    }

    v12 = MEMORY[0x1E69E7CC0];

    return v12;
  }

  return result;
}

uint64_t TextFilterEffect.lineBreakingState.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xE8);
  v6 = *(*((*MEMORY[0x1E69E7D40] & *v4) + 0xF0) + 8);
  type metadata accessor for Text.Effect.ConcreteLayoutState(0, v5, v6, a4);
  v7 = (*(v6 + 120))(v5, v6);
  return Text.Effect.ConcreteLayoutState.__allocating_init(state:)(v7);
}

uint64_t type metadata completion function for TextFilterEffect.AnimationInfo(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<ScaleRippleTextEffect.Timing.ClusterTiming>, &type metadata for ScaleRippleTextEffect.Timing.ClusterTiming);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.Effect.Timing.UnitGlyphTiming>, &type metadata for Text.Effect.Timing.UnitGlyphTiming);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
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
    type metadata accessor for _ContiguousArrayStorage<[Path]>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<[Path]>, &lazy cache variable for type metadata for [Path], MEMORY[0x1E69E62F8], MEMORY[0x1E69E6F90]);
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
    _ss23_ContiguousArrayStorageCySiGMaTm_0(0, &lazy cache variable for type metadata for [Path], MEMORY[0x1E6980F80], MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    type metadata accessor for _ContiguousArrayStorage<[Path?]>(0);
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
    type metadata accessor for _ContiguousArrayStorage<[Path]>(0, &lazy cache variable for type metadata for [Path?], &lazy cache variable for type metadata for Path?, MEMORY[0x1E69E6720], MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}