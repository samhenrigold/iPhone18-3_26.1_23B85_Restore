void *assignWithTake for ServiceItemHandler(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (a1[1])
  {
    if (v4)
    {
      v5 = a2[2];
      a1[1] = v4;
      a1[2] = v5;

      goto LABEL_8;
    }
  }

  else if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
    goto LABEL_8;
  }

  *(a1 + 1) = *(a2 + 1);
LABEL_8:
  v7 = a2[3];
  if (!a1[3])
  {
    if (v7)
    {
      v9 = a2[4];
      a1[3] = v7;
      a1[4] = v9;
      return a1;
    }

LABEL_14:
    *(a1 + 3) = *(a2 + 3);
    return a1;
  }

  if (!v7)
  {

    goto LABEL_14;
  }

  v8 = a2[4];
  a1[3] = v7;
  a1[4] = v8;

  return a1;
}

void (*specialized Dictionary.subscript.modify(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  outlined init with copy of ToolbarPlacement.Role(a2, v4);
  *(v5 + 72) = specialized Dictionary._Variant.subscript.modify((v5 + 40), v5);
  return Dictionary.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0xA8uLL);
  }

  v5 = v4;
  *a1 = v4;
  outlined init with copy of IdentifiedDocumentGroupConfiguration(a2, v4);
  *(v5 + 160) = specialized Dictionary._Variant.subscript.modify((v5 + 128), v5);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  (*(*a1 + 72))();
  outlined destroy of ToolbarPlacement.Role(v1);

  free(v1);
}

{
  v1 = *a1;
  (*(*a1 + 160))();
  outlined destroy of IdentifiedDocumentGroupConfiguration(v1);

  free(v1);
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3, char a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = specialized Dictionary._Variant.subscript.modify(v8, a2, a3, a4 & 1);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, unint64_t a2, unint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = specialized Dictionary._Variant.subscript.modify(v6, a2, a3);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x28uLL);
  }

  *a1 = v10;
  v10[4] = specialized Dictionary._Variant.subscript.modify(v10, a2, a3, a4, a5);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI33AccessibilityLargeContentViewTreeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
    return 0;
  }

  if (!v10 || a1 == a2)
  {
    return 1;
  }

  v154 = v9;
  v155 = v8;
  v156 = v7;
  v157 = v6;
  v158 = v5;
  v159 = v4;
  v160 = v2;
  v161 = v3;
  v11 = (a1 + 32);
  v12 = (a2 + 32);
  for (i = v10 - 1; ; --i)
  {
    v14 = v11[13];
    v15 = v11[11];
    v114 = v11[12];
    v115 = v14;
    v16 = v11[13];
    v116 = v11[14];
    v17 = v11[9];
    v18 = v11[7];
    v110 = v11[8];
    v111 = v17;
    v19 = v11[9];
    v20 = v11[11];
    v112 = v11[10];
    v113 = v20;
    v21 = v11[5];
    v22 = v11[3];
    v106 = v11[4];
    v107 = v21;
    v23 = v11[5];
    v24 = v11[7];
    v108 = v11[6];
    v109 = v24;
    v25 = v11[1];
    v103[0] = *v11;
    v103[1] = v25;
    v26 = v11[3];
    v27 = *v11;
    v28 = v11[1];
    v104 = v11[2];
    v105 = v26;
    v29 = v12[11];
    v130 = v12[12];
    v30 = v12[12];
    v131 = v12[13];
    v31 = v12[13];
    v132 = v12[14];
    v32 = v12[7];
    v126 = v12[8];
    v33 = v12[8];
    v127 = v12[9];
    v34 = v12[9];
    v128 = v12[10];
    v35 = v12[10];
    v129 = v12[11];
    v36 = v12[3];
    v122 = v12[4];
    v37 = v12[4];
    v123 = v12[5];
    v38 = v12[5];
    v124 = v12[6];
    v39 = v12[6];
    v125 = v12[7];
    v40 = v12[1];
    v118 = *v12;
    v41 = *v12;
    v119 = v12[1];
    v120 = v12[2];
    v42 = v12[2];
    v121 = v12[3];
    v134[12] = v11[12];
    v134[13] = v11[13];
    v134[14] = v11[14];
    v134[8] = v11[8];
    v134[9] = v11[9];
    v134[10] = v11[10];
    v134[11] = v11[11];
    v134[4] = v11[4];
    v134[5] = v11[5];
    v134[6] = v11[6];
    v134[7] = v11[7];
    v134[0] = *v11;
    v134[1] = v11[1];
    v134[2] = v11[2];
    v134[3] = v11[3];
    v148 = v30;
    v149 = v31;
    v150 = v12[14];
    v144 = v33;
    v145 = v34;
    v146 = v35;
    v147 = v29;
    v140 = v37;
    v141 = v38;
    v142 = v39;
    v143 = v32;
    v136 = v41;
    v137 = v40;
    v138 = v42;
    v139 = v36;
    v152[12] = v114;
    v152[13] = v16;
    v152[14] = v11[14];
    v152[8] = v110;
    v152[9] = v19;
    v152[10] = v112;
    v152[11] = v15;
    v152[4] = v106;
    v152[5] = v23;
    v152[6] = v108;
    v152[7] = v18;
    v152[0] = v27;
    v152[1] = v28;
    v152[2] = v104;
    v117 = *(v11 + 120);
    v133 = *(v12 + 120);
    v135 = *(v11 + 120);
    v151 = *(v12 + 120);
    v153 = *(v11 + 120);
    v152[3] = v22;
    Enum = getEnumTag for AccessibilityLargeContentViewTree(v152);
    if (!Enum)
    {
      v52 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(v152);
      v99 = v130;
      v100 = v131;
      v101 = v132;
      v102 = v133;
      v95 = v126;
      v96 = v127;
      v97 = v128;
      v98 = v129;
      v91 = v122;
      v92 = v123;
      v93 = v124;
      v94 = v125;
      v87 = v118;
      v88 = v119;
      v89 = v120;
      v90 = v121;
      if (getEnumTag for AccessibilityLargeContentViewTree(&v87))
      {
LABEL_20:
        outlined init with copy of AccessibilityLargeContentViewTree(&v118, v85, v45);
        v68 = v103;
        goto LABEL_22;
      }

      v53 = destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v87);
      v85[12] = *(v52 + 192);
      v85[13] = *(v52 + 208);
      v85[14] = *(v52 + 224);
      v86 = *(v52 + 240);
      v85[8] = *(v52 + 128);
      v85[9] = *(v52 + 144);
      v85[10] = *(v52 + 160);
      v85[11] = *(v52 + 176);
      v85[4] = *(v52 + 64);
      v85[5] = *(v52 + 80);
      v85[6] = *(v52 + 96);
      v85[7] = *(v52 + 112);
      v85[0] = *v52;
      v85[1] = *(v52 + 16);
      v85[2] = *(v52 + 32);
      v85[3] = *(v52 + 48);
      v54 = *(v53 + 208);
      v81 = *(v53 + 192);
      v82 = v54;
      v83 = *(v53 + 224);
      v84 = *(v53 + 240);
      v55 = *(v53 + 144);
      v77 = *(v53 + 128);
      v78 = v55;
      v56 = *(v53 + 176);
      v79 = *(v53 + 160);
      v80 = v56;
      v57 = *(v53 + 80);
      v73 = *(v53 + 64);
      v74 = v57;
      v58 = *(v53 + 112);
      v75 = *(v53 + 96);
      v76 = v58;
      v59 = *(v53 + 16);
      v70[0] = *v53;
      v70[1] = v59;
      v60 = *(v53 + 48);
      v71 = *(v53 + 32);
      v72 = v60;
      outlined init with copy of AccessibilityLargeContentViewTree(&v118, v69, *&v71);
      outlined init with copy of AccessibilityLargeContentViewTree(v103, v69, v61);
      outlined init with copy of AccessibilityLargeContentViewTree(&v118, v69, v62);
      outlined init with copy of AccessibilityLargeContentViewTree(v103, v69, v63);
      outlined init with copy of AccessibilityLargeContentViewTree(&v118, v69, v64);
      outlined init with copy of AccessibilityLargeContentViewTree(v103, v69, v65);
      v51 = specialized static AccessibilityLargeContentViewItem.== infix(_:_:)(v85, v70);
      outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v134, &lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree), &type metadata for AccessibilityLargeContentViewTree);
      outlined destroy of AccessibilityLargeContentViewTree(&v118);
      outlined destroy of AccessibilityLargeContentViewTree(v103);
      goto LABEL_11;
    }

    if (Enum != 1)
    {
      break;
    }

    v44 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(v152);
    v89 = v120;
    v90 = v121;
    v87 = v118;
    v88 = v119;
    v93 = v124;
    v94 = v125;
    v91 = v122;
    v92 = v123;
    v97 = v128;
    v98 = v129;
    v95 = v126;
    v96 = v127;
    v102 = v133;
    v100 = v131;
    v101 = v132;
    v99 = v130;
    if (getEnumTag for AccessibilityLargeContentViewTree(&v87) != 1)
    {
      goto LABEL_20;
    }

    v46 = *destructiveProjectEnumData for AccessibilityLargeContentViewTree(&v87);
    outlined init with copy of AccessibilityLargeContentViewTree(&v118, v85, v47);
    outlined init with copy of AccessibilityLargeContentViewTree(v103, v85, v48);
    outlined init with copy of AccessibilityLargeContentViewTree(&v118, v85, v49);
    outlined init with copy of AccessibilityLargeContentViewTree(v103, v85, v50);
    v51 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI33AccessibilityLargeContentViewTreeO_Tt1g5(v44, v46);
    outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v134, &lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree), &type metadata for AccessibilityLargeContentViewTree);
LABEL_11:
    outlined destroy of AccessibilityLargeContentViewTree(&v118);
    outlined destroy of AccessibilityLargeContentViewTree(v103);
    if ((v51 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      return 1;
    }

LABEL_16:
    v12 = (v12 + 248);
    v11 = (v11 + 248);
  }

  v99 = v130;
  v100 = v131;
  v101 = v132;
  v102 = v133;
  v95 = v126;
  v96 = v127;
  v97 = v128;
  v98 = v129;
  v91 = v122;
  v92 = v123;
  v93 = v124;
  v94 = v125;
  v87 = v118;
  v88 = v119;
  v89 = v120;
  v90 = v121;
  if (getEnumTag for AccessibilityLargeContentViewTree(&v87) == 2)
  {
    outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v134, &lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree), &type metadata for AccessibilityLargeContentViewTree);
    if (!i)
    {
      return 1;
    }

    goto LABEL_16;
  }

  v68 = &v118;
LABEL_22:
  outlined init with copy of AccessibilityLargeContentViewTree(v68, v85, v66);
  outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v134, &lazy cache variable for type metadata for (AccessibilityLargeContentViewTree, AccessibilityLargeContentViewTree), &type metadata for AccessibilityLargeContentViewTree);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI18TabCustomizationIDV_Tt1g5(uint64_t a1, uint64_t a2)
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
      if (*i)
      {
        if ((*v3 & 1) == 0)
        {
          return 0;
        }
      }

      else if (*v3)
      {
        return 0;
      }

      v5 = *(i - 2) == *(v3 - 2) && *(i - 1) == *(v3 - 1);
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI12ScrollTargetV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v4 = 1;
    }

    else
    {
      v3 = 0;
      do
      {
        v4 = static ScrollTarget.== infix(_:_:)();
        if ((v4 & 1) == 0)
        {
          break;
        }

        v3 += 56;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26TableColumnCustomizationIDV_Tt1g5(uint64_t a1, uint64_t a2)
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
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v3 - 4);
      v8 = *(v3 - 3);
      if (*v4)
      {
        if ((*v3 & 1) == 0)
        {
          return 0;
        }

        v9 = *(v4 - 2);
        v10 = *(v4 - 1);
        v11 = *(v3 - 2);
        v12 = *(v3 - 1);
        v13 = v5 == v7 && v6 == v8;
        if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }

        if (v9 != v11 || v10 != v12)
        {
LABEL_5:
          if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (*v3)
        {
          return 0;
        }

        if (v5 != v7 || v6 != v8)
        {
          goto LABEL_5;
        }
      }

      v3 += 40;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI15AnyFontModifierC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18D00E9C0](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          MEMORY[0x18D00E9C0](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      v15 = dispatch thunk of AnyFontModifier.isEqual(to:)();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI23AccessibilityAttachmentVACE4TreeO_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 304)
  {
    outlined init with copy of AccessibilityAttachment.Tree(v3, v16);
    outlined init with copy of AccessibilityAttachment.Tree(i, v15);
    outlined init with copy of AccessibilityAttachment.Tree(v16, v11);
    outlined init with copy of AccessibilityAttachment.Tree(v15, v13);
    if (!v12)
    {
      break;
    }

    if (v12 == 1)
    {
      outlined init with copy of AccessibilityAttachment.Tree(v11, v10);
      if (v14 != 1)
      {

        goto LABEL_21;
      }

      v5 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI23AccessibilityAttachmentVACE4TreeO_Tt1g5(v10[0], v13[0]);

      if ((v5 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_21;
      }

      v7 = vorrq_s8(vorrq_s8(vorrq_s8(vorrq_s8(*&v13[5], *&v13[21]), vorrq_s8(*&v13[13], *&v13[29])), vorrq_s8(vorrq_s8(*&v13[9], *&v13[25]), vorrq_s8(*&v13[17], *&v13[33]))), vorrq_s8(vorrq_s8(vorrq_s8(*&v13[7], *&v13[23]), vorrq_s8(*&v13[15], *&v13[31])), vorrq_s8(vorrq_s8(*&v13[11], *&v13[27]), vorrq_s8(*&v13[19], *&v13[35]))));
      if (*&vorr_s8(*v7.i8, *&vextq_s8(v7, v7, 8uLL)) | v13[4] | v13[3] | v13[2] | v13[1] | v13[0])
      {
        goto LABEL_21;
      }
    }

LABEL_5:
    outlined destroy of AccessibilityAttachment.Tree(v11);
    outlined destroy of AccessibilityAttachment.Tree(v15);
    outlined destroy of AccessibilityAttachment.Tree(v16);
    v3 += 304;
    if (!--v2)
    {
      return 1;
    }
  }

  outlined init with copy of AccessibilityAttachment.Tree(v11, v10);
  if (!v14)
  {
    memcpy(__dst, v13, sizeof(__dst));
    v6 = static AccessibilityAttachment.== infix(_:_:)();
    outlined destroy of AccessibilityAttachment(__dst);
    outlined destroy of AccessibilityAttachment(v10);
    if ((v6 & 1) == 0)
    {
LABEL_18:
      outlined destroy of AccessibilityAttachment.Tree(v11);
      goto LABEL_22;
    }

    goto LABEL_5;
  }

  outlined destroy of AccessibilityAttachment(v10);
LABEL_21:
  outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v11, &lazy cache variable for type metadata for (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree), &type metadata for AccessibilityAttachment.Tree);
LABEL_22:
  outlined destroy of AccessibilityAttachment.Tree(v15);
  outlined destroy of AccessibilityAttachment.Tree(v16);
  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI22AccessibilityNodeProxyV_Tt1g5(uint64_t a1, uint64_t a2)
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

  v83 = v2;
  v84 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[9];
    v9 = v5[7];
    v64 = v5[8];
    v65 = v8;
    v10 = v5[9];
    v66 = v5[10];
    v11 = v5[5];
    v12 = v5[3];
    v60 = v5[4];
    v61 = v11;
    v13 = v5[5];
    v14 = v5[7];
    v62 = v5[6];
    v63 = v14;
    v15 = v5[1];
    v57[0] = *v5;
    v57[1] = v15;
    v16 = v5[3];
    v18 = *v5;
    v17 = v5[1];
    v58 = v5[2];
    v59 = v16;
    v53 = v64;
    v54 = v10;
    v55 = v5[10];
    v49 = v60;
    v50 = v13;
    v51 = v62;
    v52 = v9;
    v45 = v18;
    v46 = v17;
    v47 = v58;
    v48 = v12;
    v19 = v6[9];
    v20 = v6[7];
    v75 = v6[8];
    v76 = v19;
    v21 = v6[9];
    v77 = v6[10];
    v22 = v6[5];
    v23 = v6[3];
    v71 = v6[4];
    v72 = v22;
    v24 = v6[5];
    v25 = v6[7];
    v73 = v6[6];
    v74 = v25;
    v26 = v6[1];
    v68[0] = *v6;
    v68[1] = v26;
    v27 = v6[3];
    v29 = *v6;
    v28 = v6[1];
    v69 = v6[2];
    v70 = v27;
    v41 = v75;
    v42 = v21;
    v43 = v6[10];
    v37 = v71;
    v38 = v24;
    v39 = v73;
    v40 = v20;
    v33 = v29;
    v34 = v28;
    v67 = *(v5 + 22);
    v56 = *(v5 + 22);
    v78 = *(v6 + 22);
    v44 = *(v6 + 22);
    v35 = v69;
    v36 = v23;
    outlined init with copy of AccessibilityNodeProxy(v57, v32);
    outlined init with copy of AccessibilityNodeProxy(v68, v32);
    v30 = static AccessibilityNodeProxy.== infix(_:_:)(&v45, &v33);
    v79[8] = v41;
    v79[9] = v42;
    v79[10] = v43;
    v80 = v44;
    v79[4] = v37;
    v79[5] = v38;
    v79[6] = v39;
    v79[7] = v40;
    v79[0] = v33;
    v79[1] = v34;
    v79[2] = v35;
    v79[3] = v36;
    outlined destroy of AccessibilityNodeProxy(v79);
    v81[8] = v53;
    v81[9] = v54;
    v81[10] = v55;
    v82 = v56;
    v81[5] = v50;
    v81[6] = v51;
    v81[7] = v52;
    v81[0] = v45;
    v81[1] = v46;
    v81[2] = v47;
    v81[3] = v48;
    v81[4] = v49;
    outlined destroy of AccessibilityNodeProxy(v81);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 = (v6 + 184);
    v5 = (v5 + 184);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSf_Tt1g5(uint64_t result, uint64_t a2)
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

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26NavigationPath_ItemBoxBaseC_Tt1g5(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = __CocoaSet.count.getter();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v16 = 0;
    return v16 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v16 = 1;
    return v16 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = __CocoaSet.count.getter();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x18D00E9C0](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v4 = *(a1 + 8 * v12);

        if (v11)
        {
LABEL_20:
          v15 = MEMORY[0x18D00E9C0](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v15 = *(a2 + 8 * v12);

LABEL_25:
      v16 = (*(*v4 + 160))(v15);

      if (v16)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v16 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSSSg_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI25UIKitSearchBarCoordinatorC0E5Token33_9E78780A6F2626BA9019200B48F4A36BLLV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = a1 + 32;
    for (i = a2 + 32; ; i += 72)
    {
      outlined init with copy of UIKitSearchBarCoordinator.SearchToken(v3, v15);
      outlined init with copy of UIKitSearchBarCoordinator.SearchToken(i, v12);
      if ((MEMORY[0x18D00E7E0](&v17, &v14) & 1) == 0)
      {
        break;
      }

      v6 = v16;
      v7 = v13;
      if (v16)
      {
        if (!v13)
        {
          break;
        }

        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIImage, 0x1E69DCAB8);
        v8 = v7;
        v9 = v6;
        v10 = static NSObject.== infix(_:_:)();

        if ((v10 & 1) == 0)
        {
          break;
        }
      }

      else if (v13)
      {
        break;
      }

      if (v15[0] == v12[0] && v15[1] == v12[1])
      {
        outlined destroy of UIKitSearchBarCoordinator.SearchToken(v12);
        outlined destroy of UIKitSearchBarCoordinator.SearchToken(v15);
      }

      else
      {
        v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined destroy of UIKitSearchBarCoordinator.SearchToken(v12);
        outlined destroy of UIKitSearchBarCoordinator.SearchToken(v15);
        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 72;
      if (!--v2)
      {
        return 1;
      }
    }

    outlined destroy of UIKitSearchBarCoordinator.SearchToken(v12);
    outlined destroy of UIKitSearchBarCoordinator.SearchToken(v15);
  }

  return 0;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ22UniformTypeIdentifiers6UTTypeV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x1E69E8450], MEMORY[0x1E69E8468]);
    v22 = dispatch thunk of static Equatable.== infix(_:_:)();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZs11AnyHashableV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        outlined init with copy of AnyHashable(v3, v8);
        outlined init with copy of AnyHashable(v4, v7);
        v5 = MEMORY[0x18D00E7E0](v8, v7);
        outlined destroy of AnyHashable(v7);
        outlined destroy of AnyHashable(v8);
        if ((v5 & 1) == 0)
        {
          break;
        }

        v3 += 40;
        v4 += 40;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI19MultimodalBadgeInfoV_Tt1g5(uint64_t result, uint64_t a2)
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

  v3 = a2 + 56;
  v4 = result + 56;
  while (v2)
  {
    result = CGRectEqualToRect(*(v4 - 24), *(v3 - 24));
    if (result)
    {
      v5 = v2 == 1;
    }

    else
    {
      v5 = 1;
    }

    --v2;
    v3 += 32;
    v4 += 32;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8UniqueIDV_Tt1g5Tm(uint64_t result, uint64_t a2)
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

unint64_t TableColumnCustomization.init()@<X0>(unint64_t *a1@<X8>)
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI26TableColumnCustomizationIDV_AC0efG5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  a1[1] = 0;
  return result;
}

uint64_t TableColumnCustomization.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = 0;
  v7[3] = 0;
  v8 = 0;
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v5 & 1) != 0))
  {
    return *(*(v3 + 56) + 16 * v4 + 9);
  }

  else
  {
    return 0;
  }
}

uint64_t key path getter for TableColumnCustomization.subscript(visibility:) : <A>TableColumnCustomization<A>A@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  result = TableColumnCustomization.subscript.getter(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t key path setter for TableColumnCustomization.subscript(visibility:) : <A>TableColumnCustomization<A>A(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  return TableColumnCustomization.subscript.setter(v5, v3, v4);
}

uint64_t TableColumnCustomization.subscript.setter(__int16 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = 0;
  v17[3] = 0;
  v18 = 0;
  if (a1)
  {
    v6 = *v3;
    if (*(*v4 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(v17), (v8 & 1) != 0))
    {
      v9 = *(v6 + 56) + 16 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
    }

    else
    {
      v10 = 0;
      v11 = 1;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16[0] = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, v11 | (a1 << 8), v17, isUniquelyReferenced_nonNull_native);

    *v4 = v16[0];
  }

  else
  {
    v15 = specialized Dictionary.subscript.modify(v16, v17);
    if (*(v14 + 9) << 8 != 768)
    {
      *(v14 + 9) = 0;
    }

    (v15)(v16, 0);
  }

  return result;
}

void (*TableColumnCustomization.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x28uLL);
  }

  *a1 = v9;
  *(v9 + 16) = a4;
  *(v9 + 24) = v4;
  *v9 = a2;
  *(v9 + 8) = a3;
  *(v9 + 32) = TableColumnCustomization.subscript.getter(a2, a3);
  return TableColumnCustomization.subscript.modify;
}

void TableColumnCustomization.subscript.modify(uint64_t **a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = *(*a1 + 32);

  TableColumnCustomization.subscript.setter(v4, v3, v2);

  free(v1);
}

uint64_t static TableColumnCustomization.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI26TableColumnCustomizationIDV_AC0deF5EntryVTt1g5(*a1, *a2))
  {
    if (v2)
    {
      if (v3 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26TableColumnCustomizationIDV_Tt1g5(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4EdgeO_AC06ScrollD11EffectStyleVTt1g5(unint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 56) + v12);
    v14 = v13 == 3;
    if (v13 != 3)
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + v12));
      if ((v15 & 1) != 0 && *(*(a2 + 56) + result) == v13)
      {
        continue;
      }
    }

    return v14;
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

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI4EdgeO_SbTt1g5(unint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 56) + v12);
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
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

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI26TableColumnCustomizationIDV_AC0deF5EntryVTt1g5(uint64_t result, uint64_t a2)
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
    v13 = *(v3 + 48) + 40 * v12;
    v14 = *(v13 + 8);
    v15 = *(v13 + 16);
    v16 = *(v13 + 24);
    v17 = *(v3 + 56) + 16 * v12;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 9);
    v27 = *(v13 + 32);
    v28[0] = *v13;
    v28[1] = v14;
    v28[2] = v15;
    v28[3] = v16;
    v29 = v27;
    outlined copy of TableColumnCustomizationID.Base(v28[0], v14, v15, v16, v27);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
    v23 = v22;
    result = outlined destroy of TableColumnCustomizationID(v28);
    if ((v23 & 1) == 0)
    {
      return 0;
    }

    v24 = *(a2 + 56) + 16 * v21;
    v25 = *(v24 + 9);
    if (*(v24 + 8))
    {
      if (!v19 || v25 != v20)
      {
        return 0;
      }
    }

    else
    {
      if (v19)
      {
        return 0;
      }

      if (*v24 != v18 || v25 != v20)
      {
        return 0;
      }
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

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0dE5EntryVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v26 = result + 64;
  v27 = result;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = __clz(__rbit64(v6));
    v28 = (v6 - 1) & v6;
LABEL_13:
    v11 = v8 | (v3 << 6);
    v12 = *(result + 48) + 24 * v11;
    v13 = *v12;
    v14 = *(v12 + 8);
    v15 = *(v12 + 16);
    v16 = (*(result + 56) + 2 * v11);
    v17 = *v16;
    v18 = v16[1];
    outlined copy of TabCustomizationID.Base();
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14, v15);
    v21 = v20;
    outlined consume of TabCustomizationID.Base();
    if (v21)
    {
      v22 = (*(a2 + 56) + 2 * v19);
      v23 = *v22;
      v24 = v22[1];
      v25 = v23 == v17 && v24 == v18;
      result = v27;
      v6 = v28;
      if (v25)
      {
        continue;
      }
    }

    return 0;
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v7)
    {
      return 1;
    }

    v10 = *(v26 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v28 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI18TabCustomizationIDV_AC0d7SectionE5EntryVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v27 = result;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v28 = (v7 - 1) & v7;
LABEL_12:
      v12 = v9 | (v3 << 6);
      v13 = *(result + 48) + 24 * v12;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = *(*(result + 56) + 8 * v12);
      outlined copy of TabCustomizationID.Base();

      v18 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v15, v16);
      v20 = v19;
      result = outlined consume of TabCustomizationID.Base();
      if ((v20 & 1) == 0 || (v21 = *(*(a2 + 56) + 8 * v18), v22 = *(v21 + 16), v22 != *(v17 + 16)))
      {
LABEL_32:

        return 0;
      }

      if (v22 && v21 != v17)
      {
        break;
      }

LABEL_19:

      result = v27;
      v7 = v28;
      if (!v28)
      {
        goto LABEL_7;
      }
    }

    v24 = (v17 + 48);
    v25 = (v21 + 48);
    while (v22)
    {
      result = *(v25 - 2);
      if (*v25)
      {
        if ((*v24 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (*v24)
      {
        goto LABEL_32;
      }

      if (result != *(v24 - 2) || *(v25 - 1) != *(v24 - 1))
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      v24 += 24;
      v25 += 24;
      if (!--v22)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_7:
    v10 = v3;
    while (1)
    {
      v3 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v3 >= v8)
      {
        return 1;
      }

      v11 = *(v4 + 8 * v3);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v28 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI22SpatialEventCollectionV0E0V2IDV_AGTt1g5(uint64_t result, uint64_t a2)
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
    v13 = *(v3 + 56) + 80 * v12;
    v14 = *(v13 + 40);
    if (v14 == 3)
    {
      return 1;
    }

    v15 = *(v13 + 72);
    v16 = *(v13 + 64);
    v17 = *(v13 + 32);
    v18 = *(*(v3 + 48) + 8 * v12);
    v19 = *(v13 + 16);
    v27[0] = *v13;
    v27[1] = v19;
    v28 = v17;
    v29 = v14;
    v30 = *(v13 + 48);
    v31 = v16;
    v32 = v15;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
    if (v21)
    {
      v22 = (*(a2 + 56) + 80 * v20);
      v23 = v22[3];
      v25[2] = v22[2];
      v26[0] = v23;
      *(v26 + 9) = *(v22 + 57);
      v24 = v22[1];
      v25[0] = *v22;
      v25[1] = v24;
      result = specialized static SpatialEventCollection.Event.== infix(_:_:)(v25, v27);
      if (result)
      {
        continue;
      }
    }

    return 0;
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

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
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
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI12VerticalEdgeO_SdTt1g5(unint64_t result, uint64_t a2)
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
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + v12));
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

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI28AccessibilityAttachmentTokenO_AC11DisplayListV7VersionVTt1g5(unint64_t result, uint64_t a2)
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
    result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + 12 * v12), *(*(v3 + 48) + 12 * v12 + 8));
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

unint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI30AccessibilityEnabledTechnologyO_AC0D5FocusV5MatchOTt1g5(unint64_t result, uint64_t a2)
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
    v13 = *(*(v3 + 56) + v12);
    v14 = v13 == 4;
    if (v13 != 4)
    {
      result = specialized __RawDictionaryStorage.find<A>(_:)(*(*(v3 + 48) + v12));
      if ((v15 & 1) != 0 && *(*(a2 + 56) + result) == v13)
      {
        continue;
      }
    }

    return v14;
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

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI16ToolbarPlacementV4RoleO_AC0D23AppearanceConfigurationVTt1g5(uint64_t result, uint64_t a2)
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
    outlined init with copy of ToolbarPlacement.Role(*(v3 + 48) + 40 * v12, &v47);
    v13 = (*(v3 + 56) + 80 * v12);
    v14 = *(v13 + 57);
    v16 = v13[2];
    v15 = v13[3];
    v52 = v13[1];
    v17 = *v13;
    v53 = v16;
    *v54 = v15;
    *&v54[9] = v14;
    v51 = v17;
    v18 = v49;
    v34 = v52;
    v35 = v48;
    v36 = v17;
    v31 = v47;
    v32 = *v54;
    v33 = v16;
    v19 = v14 >> 56;
    v20 = HIBYTE(v14);
    outlined init with copy of ToolbarAppearanceConfiguration(&v51, &v47);
    if (*(&v36 + 1) == 1)
    {
      return 1;
    }

    v45[0] = v31;
    v45[1] = v35;
    v46 = v18;
    v51 = v36;
    v52 = v34;
    v53 = v33;
    *v54 = v32;
    *&v54[16] = v19;
    v54[24] = v20;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v45, ToolbarPlacement.Role.hash(into:), specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    v23 = v22;
    outlined destroy of ToolbarPlacement.Role(v45);
    if ((v23 & 1) == 0)
    {
      v49 = v53;
      v50[0] = *v54;
      *(v50 + 9) = *&v54[9];
      v47 = v51;
      v48 = v52;
      outlined destroy of ToolbarAppearanceConfiguration(&v47);
      return 0;
    }

    v24 = (*(a2 + 56) + 80 * v21);
    v41[0] = *v24;
    v26 = v24[2];
    v25 = v24[3];
    v27 = v24[1];
    *(v42 + 9) = *(v24 + 57);
    v41[2] = v26;
    v42[0] = v25;
    v41[1] = v27;
    v28 = v24[3];
    v39 = v24[2];
    v40[0] = v28;
    *(v40 + 9) = *(v24 + 57);
    v29 = v24[1];
    v37 = *v24;
    v38 = v29;
    outlined init with copy of ToolbarAppearanceConfiguration(v41, &v47);
    v30 = specialized static ToolbarAppearanceConfiguration.== infix(_:_:)(&v37, &v51);
    v43[2] = v39;
    v44[0] = v40[0];
    *(v44 + 9) = *(v40 + 9);
    v43[0] = v37;
    v43[1] = v38;
    outlined destroy of ToolbarAppearanceConfiguration(v43);
    v49 = v53;
    v50[0] = *v54;
    *(v50 + 9) = *&v54[9];
    v47 = v51;
    v48 = v52;
    result = outlined destroy of ToolbarAppearanceConfiguration(&v47);
    if ((v30 & 1) == 0)
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

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI7SceneIDO_AC16KeyboardShortcutVTt1g5(uint64_t result, uint64_t a2)
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
  v30 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  v31 = v8;
  v32 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_18:
    v13 = v10 | (v4 << 6);
    v14 = *(v3 + 48) + 24 * v13;
    v15 = *v14;
    v16 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v3 + 56) + 32 * v13;
    v20 = *v18;
    v19 = *(v18 + 8);
    v33 = *(v18 + 16);
    v34 = *(v18 + 24);
    outlined copy of SceneID(*v14, v16, v17);

    if (!v19)
    {
      return 1;
    }

    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16, v17);
    v23 = v22;
    outlined consume of SceneID(v15, v16, v17);
    if ((v23 & 1) == 0)
    {

      return 0;
    }

    v24 = *(a2 + 56) + 32 * v21;
    v25 = *(v24 + 16);
    v26 = *(v24 + 24);
    if (*v24 == v20 && v19 == *(v24 + 8))
    {

      v3 = v32;
      result = v19 == 0;
      v9 = v25 == v33 && v34 == v26;
      v8 = v31;
      if (!v9)
      {
        return result;
      }
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = v32;
      result = v19 == 0;
      if ((v28 & 1) == 0)
      {
        return result;
      }

      v29 = v25 == v33 && v34 == v26;
      v8 = v31;
      if (!v29)
      {
        return result;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v30 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t TableColumnCustomization.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D756C6F43726570 && a2 == 0xEE0065746174536ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x724F6E6D756C6F63 && a2 == 0xEB00000000726564)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t TableColumnCustomization.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x724F6E6D756C6F63;
  }

  else
  {
    return 0x6D756C6F43726570;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableColumnCustomization<A>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  ControlGroup.BodyMode.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomization<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = TableColumnCustomization.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance TableColumnCustomization<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = protocol witness for static _AttributeBody.comparisonMode.getter in conformance AccessibilityLargeContentViewHitTestingTransform();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomization<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomization<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>.CodingKeys, a1);

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t TableColumnCustomization.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for TableColumnCustomization.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>.CodingKeys, v6);
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *v4;
  v19 = v4[1];
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = v11;
  v21 = 0;
  type metadata accessor for [TableColumnCustomizationID : TableColumnCustomizationEntry](0);
  lazy protocol witness table accessor for type [TableColumnCustomizationID : TableColumnCustomizationEntry] and conformance <> [A : B](&lazy protocol witness table cache variable for type [TableColumnCustomizationID : TableColumnCustomizationEntry] and conformance <> [A : B], lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID, lazy protocol witness table accessor for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry, MEMORY[0x1E69E5E38]);
  v16 = v20;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v16)
  {
    v22 = v19;
    v21 = 1;
    type metadata accessor for [TableColumnCustomizationID](0, &lazy cache variable for type metadata for [TableColumnCustomizationID], &type metadata for TableColumnCustomizationID, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [TableColumnCustomizationID] and conformance <A> [A](&lazy protocol witness table cache variable for type [TableColumnCustomizationID] and conformance <A> [A], lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID, MEMORY[0x1E69E6300]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v15);
}

uint64_t TableColumnCustomization.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v18 = a4;
  v7 = type metadata accessor for TableColumnCustomization.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>.CodingKeys, v7);
  v19 = type metadata accessor for KeyedDecodingContainer();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v17 - v9;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI26TableColumnCustomizationIDV_AC0efG5EntryVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v5)
  {
    v11 = v8;
    v12 = v18;
    type metadata accessor for [TableColumnCustomizationID : TableColumnCustomizationEntry](0);
    v20 = 0;
    lazy protocol witness table accessor for type [TableColumnCustomizationID : TableColumnCustomizationEntry] and conformance <> [A : B](&lazy protocol witness table cache variable for type [TableColumnCustomizationID : TableColumnCustomizationEntry] and conformance <> [A : B], lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID, lazy protocol witness table accessor for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry, MEMORY[0x1E69E5E58]);
    v13 = v19;
    KeyedDecodingContainer.decode<A>(_:forKey:)();

    v14 = v21;
    type metadata accessor for [TableColumnCustomizationID](0, &lazy cache variable for type metadata for [TableColumnCustomizationID], &type metadata for TableColumnCustomizationID, MEMORY[0x1E69E62F8]);
    v20 = 1;
    lazy protocol witness table accessor for type [TableColumnCustomizationID] and conformance <A> [A](&lazy protocol witness table cache variable for type [TableColumnCustomizationID] and conformance <A> [A], lazy protocol witness table accessor for type TableColumnCustomizationID and conformance TableColumnCustomizationID, MEMORY[0x1E69E6330]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v11 + 8))(v10, v13);
    v16 = v21;
    *v12 = v14;
    v12[1] = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t TableColumnCustomizationEntry.Visibility.encode(to:)(void *a1, int a2)
{
  v26 = a2;
  v3 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationEntry.Visibility.HiddenCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys, &unk_1EFFAA060, MEMORY[0x1E69E6F58]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - v5;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationEntry.Visibility.VisibleCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys, &unk_1EFFAA040, v3);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys, &unk_1EFFAA020, v3);
  v19 = *(v9 - 8);
  v20 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationEntry.Visibility.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys, &unk_1EFFAA000, v3);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v26)
  {
    if (v26 == 1)
    {
      v28 = 1;
      lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v21 + 8))(v8, v22);
    }

    else
    {
      v29 = 2;
      lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys();
      v17 = v23;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v24 + 8))(v17, v25);
    }
  }

  else
  {
    v27 = 0;
    lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v19 + 8))(v11, v20);
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TableColumnCustomizationEntry.Visibility.CodingKeys()
{
  v1 = 0x656C6269736976;
  if (*v0 != 1)
  {
    v1 = 0x6E6564646968;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomizationEntry.Visibility.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TableColumnCustomizationEntry.Visibility.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationEntry.Visibility.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationEntry.Visibility.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TableColumnCustomizationEntry.Visibility@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized TableColumnCustomizationEntry.Visibility.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t TableColumnCustomizationEntry.encode(to:)(void *a1, uint64_t a2, __int16 a3)
{
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationEntry.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys, &unk_1EFFA9D30, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13[2] = a2;
  v14 = a3 & 1;
  v17 = 0;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v11 = v13[1];
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v11)
  {
    v16 = HIBYTE(a3);
    v15 = 1;
    lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t TableColumnCustomizationEntry.hash(into:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = HIBYTE(a3);
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x18D00F730](v5);
  }

  return MEMORY[0x18D00F6F0](v3);
}

Swift::Int TableColumnCustomizationEntry.hashValue.getter(uint64_t a1, __int16 a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((a1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18D00F730](v4);
  }

  MEMORY[0x18D00F6F0](HIBYTE(a2));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TableColumnCustomizationEntry.CodingKeys()
{
  if (*v0)
  {
    return 0x696C696269736976;
  }

  else
  {
    return 0x57746E6572727563;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomizationEntry.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x57746E6572727563 && a2 == 0xEC00000068746469;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696C696269736976 && a2 == 0xEA00000000007974)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TableColumnCustomizationEntry@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized TableColumnCustomizationEntry.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
    *(a1 + 9) = HIBYTE(v5);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableColumnCustomizationEntry(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  Hasher.init(_seed:)();
  if (v3 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v2;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x18D00F730](v5);
  }

  MEMORY[0x18D00F6F0](v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TableColumnCustomizationEntry(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return *(a1 + 9) == *(a2 + 9);
}

uint64_t TableColumnCustomizationEntry.description.getter(uint64_t a1, unsigned int a2)
{
  _StringGuts.grow(_:)(25);
  MEMORY[0x18D00C9B0](0x203A6874646977, 0xE700000000000000);
  type metadata accessor for [TableColumnCustomizationID](0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
  v2 = String.init<A>(describing:)();
  MEMORY[0x18D00C9B0](v2);

  MEMORY[0x18D00C9B0](0x696269736976202CLL, 0xEE00203A7974696CLL);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t TableColumnCustomizationID.TransientHint.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[2] = a5;
  v13[1] = a4;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationID.TransientHint.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys, &unk_1EFFA9F70, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  v11 = v13[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v14 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t TableColumnCustomizationID.Base.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationID.Base.TransientCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys, &unk_1EFFAA210, MEMORY[0x1E69E6F58]);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationID.Base.ExplicitCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys, &unk_1EFFAA180, v4);
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationID.Base.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys, &unk_1EFFAA0F0, v4);
  v24 = *(v12 - 8);
  v25 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v2;
  v15 = v2[1];
  if (v2[4])
  {
    v29 = *(v2 + 1);
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys();
    v17 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v26 = v16;
    v27 = v15;
    v28 = v29;
    lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint();
    v18 = v23;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v22 + 8))(v7, v18);
  }

  else
  {
    LOBYTE(v26) = 0;
    lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys();
    v17 = v25;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v21 + 8))(v11, v9);
  }

  return (*(v24 + 8))(v14, v17);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TableColumnCustomizationID.TransientHint.CodingKeys()
{
  if (*v0)
  {
    return 25705;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomizationID.TransientHint.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationID.TransientHint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationID.TransientHint.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance TableColumnCustomizationID.TransientHint@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized TableColumnCustomizationID.TransientHint.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TableColumnCustomizationID.TransientHint()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TableColumnCustomizationID.TransientHint(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableColumnCustomizationID.TransientHint(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TableColumnCustomizationID.TransientHint(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance TableColumnCustomizationID.Base.CodingKeys()
{
  if (*v0)
  {
    return 0x6E6569736E617274;
  }

  else
  {
    return 0x746963696C707865;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomizationID.Base.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746963696C707865 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6569736E617274 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationID.Base.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationID.Base.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationID.Base.ExplicitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationID.Base.ExplicitCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationID.Base.TransientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationID.Base.TransientCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance TableColumnCustomizationID.Base@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized TableColumnCustomizationID.Base.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TableColumnCustomizationID.Base(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (a1[4])
  {
    if (a2[4])
    {
      v8 = a1[2];
      v9 = a1[3];
      v10 = a2[2];
      v11 = a2[3];
      v12 = v4 == v6 && v5 == v7;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v13 = v8 == v10 && v9 == v11;
        if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a2[4])
  {
    return 0;
  }

  if (v4 == v6 && v5 == v7)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t TableColumnCustomizationID.encode(to:)(void *a1)
{
  v2 = v1;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys, &unk_1EFFA9DC0, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v2 + 16);
  v11[0] = *v2;
  v11[1] = v9;
  v12 = *(v2 + 32);
  lazy protocol witness table accessor for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TableColumnCustomizationID.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1702060386 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TableColumnCustomizationID.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TableColumnCustomizationID.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance TableColumnCustomizationID@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized TableColumnCustomizationID.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TableColumnCustomizationID.Base()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v1)
  {
    MEMORY[0x18D00F6F0](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TableColumnCustomizationID.Base(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x18D00F6F0](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  return String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TableColumnCustomizationID.Base(uint64_t a1)
{
  v2 = *(v1 + 32);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x18D00F6F0](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x18D00F6F0](0);
  }

  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance TableColumnCustomizationID(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (a1[4])
  {
    if ((a2[4] & 1) == 0)
    {
      return 0;
    }

    v8 = a1[2];
    v9 = a1[3];
    v10 = a2[2];
    v11 = a2[3];
    v12 = v4 == v6 && v5 == v7;
    if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    if (v8 == v10 && v9 == v11)
    {
      return 1;
    }
  }

  else
  {
    if (a2[4])
    {
      return 0;
    }

    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }
  }

  return (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
}

uint64_t TableColumnCustomizationID.description.getter()
{
  if (*(v0 + 32))
  {
    MEMORY[0x18D00C9B0](0x6569736E6172745BLL, 0xEC000000203A746ELL);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x18D00C9B0](93, 0xE100000000000000);
    return 0;
  }

  else
  {
    MEMORY[0x18D00C9B0](*v0, *(v0 + 8));
    MEMORY[0x18D00C9B0](93, 0xE100000000000000);
    return 0x6963696C7078655BLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnyTableColumnCustomization(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ7SwiftUI26TableColumnCustomizationIDV_AC0deF5EntryVTt1g5(*a1, *a2))
  {
    if (v2)
    {
      if (v3 && (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26TableColumnCustomizationIDV_Tt1g5(v2, v3) & 1) != 0)
      {
        return 1;
      }
    }

    else if (!v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t protocol witness for Projection.get(base:) in conformance TableColumnCustomization<A>.ToAnyCustomization@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  result = specialized TableColumnCustomization.ToAnyCustomization.get(base:)(a1);
  *a3 = result;
  a3[1] = v5;
  return result;
}

double SceneStorage.init<A>(wrappedValue:_:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v11 = a1[1];
  v19[0] = *a1;
  v19[1] = v11;
  v12 = type metadata accessor for TableColumnCustomization(0, a4, a5, a4);
  v14 = type metadata accessor for TableColumnCustomizationTransform(0, a4, a5, v13);
  SceneStorage.init<A>(key:transform:defaultValue:)(a2, a3, v15, v19, v12, v14, &protocol witness table for TableColumnCustomizationTransform<A>, v20);
  v16 = v20[1];
  *a6 = v20[0];
  a6[1] = v16;
  result = *&v21;
  v18 = v22;
  a6[2] = v21;
  a6[3] = v18;
  return result;
}

char *AppStorage.init<A>(wrappedValue:_:store:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  v12 = a1[1];
  v13 = type metadata accessor for TableColumnCustomizationTransform(0, a5, a6, a4);
  v18[0] = v11;
  v18[1] = v12;
  v15 = type metadata accessor for TableColumnCustomization(0, a5, a6, v14);
  v16 = specialized AppStorage.init(key:transform:store:defaultValue:)(a2, a3, v13, &protocol witness table for TableColumnCustomizationTransform<A>, a4, v18, v15);

  return v16;
}

double TableColumnCustomizationTransform.readValue(from:key:read:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a4 = 1;

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v18), (v12 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v11, v19);
    outlined destroy of AnyHashable(v18);
    if (swift_dynamicCast())
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      v14 = type metadata accessor for TableColumnCustomization(0, a5, a6, v13);
      *(a7 + 24) = v14;
      swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>, v14);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      outlined consume of Data._Representation(a2, a3);

      return result;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v18);
  }

  result = 0.0;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  return result;
}

double static TableColumnCustomizationTransform.readValue(from:key:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = MEMORY[0x18D00C850](a2, a3);
  v11 = [a1 dataForKey_];

  if (v11)
  {
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v16 = type metadata accessor for TableColumnCustomization(0, a4, a5, v15);
    *(a6 + 24) = v16;
    swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>, v16);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v12, v14);
  }

  else
  {
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

double static TableColumnCustomizationTransform.writeValue(_:to:key:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = MEMORY[0x1E69E7CA0];
  _sypSgWOcTm_0(a1, v24, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8);
  if (v24[3])
  {
    v13 = type metadata accessor for TableColumnCustomization(0, a5, a6, v12);
    if (swift_dynamicCast())
    {
      type metadata accessor for JSONEncoder();
      swift_allocObject();
      JSONEncoder.init()();
      v24[0] = v23[2];
      v24[1] = v23[3];
      v14 = type metadata accessor for Optional();
      v23[0] = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>, v13);
      swift_getWitnessTable(MEMORY[0x1E69E7C70], v14, v23);
      v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v18 = v17;

      outlined copy of Data._Representation(v16, v18);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v20.n128_f64[0] = outlined consume of Data._Representation(v16, v18);
      v21 = MEMORY[0x18D00C850](a3, a4, v20);
      [a2 setObject:isa forKey:v21];
      swift_unknownObjectRelease();

      return outlined consume of Data?(v16, v18);
    }
  }

  else
  {
    _sypSgWOhTm_0(v24, &lazy cache variable for type metadata for Any?, v11 + 8);
  }

  v15 = MEMORY[0x18D00C850](a3, a4);
  [a2 removeObjectForKey_];

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(int a1)
{
  v3 = MEMORY[0x18D00F6B0](*(v1 + 40), a1, 4);
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

{
  v3 = MEMORY[0x18D00F6B0](*(v1 + 40), a1, 4);

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(double a1, double a2)
{
  Hasher.init(_seed:)();
  CGPoint.hash(into:)(a1, a2);
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v4, a1, a2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x18D00F6F0](1);
    LODWORD(v4) = a1;
  }

  else
  {
    v4 = HIDWORD(a1);
    MEMORY[0x18D00F6F0](0);
    Hasher._combine(_:)(a1);
  }

  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 1, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a1);
  v5 = HIDWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x18D00F6F0](a3);
  MEMORY[0x18D00F6F0](v4);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v4, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unsigned __int8 a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*v8 == a1)
      {
        v9 = *(v8 + 8);
        switch(v9)
        {
          case 2:
            if (a2 == 2)
            {
              return result;
            }

            break;
          case 3:
            if (a2 == 3)
            {
              return result;
            }

            break;
          case 4:
            if (a2 == 4)
            {
              return result;
            }

            break;
          default:
            if (a2 - 2 >= 3 && ((v9 ^ a2) & 1) == 0)
            {
              return result;
            }

            break;
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v9 == a1 && a2 == v10)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 12 * result;
      v9 = *v8;
      if (*(v8 + 8))
      {
        if ((a2 & 1) != 0 && v9 == a1)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && v9 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    type metadata accessor for NSObject(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = a4;
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = v14 + 32 * v8;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      v18 = *v15 == a1 && *(v15 + 8) == a2;
      if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && v16 == a3 && v17 == v12)
      {
        break;
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t specialized static _SymbolEffect.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v24[0] = *a1;
  v24[1] = v3;
  v24[2] = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v10 = v5 >> 12;
  v29 = v9;
  if (v5 >> 12 <= 3)
  {
    if (v5 >> 12 > 1)
    {
      if (v10 != 2)
      {
        if ((v9 & 0xF000) == 0x3000)
        {
          v19 = v2;
          v20 = v3;
          v21 = v4 & 1;
          v22 = HIDWORD(v4);
          v23 = v5 & 0x101;
          v14 = v6;
          v15 = v7;
          v16 = v8 & 1;
          v17 = HIDWORD(v8);
          v18 = v9 & 0x101;
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          v12 = specialized static _SymbolEffect.WiggleConfiguration.== infix(_:_:)(&v19, &v14);
          goto LABEL_33;
        }

        goto LABEL_34;
      }

      if ((v9 & 0xF000) != 0x2000)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (!v10)
      {
        if (v9 < 0x1000)
        {
          v19 = v2;
          LOBYTE(v20) = v3 & 1;
          v14 = v6;
          LOBYTE(v15) = v7 & 1;
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          v12 = specialized static _SymbolEffect.PulseConfiguration.== infix(_:_:)(&v19, &v14);
LABEL_33:
          v11 = v12;
          outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v24, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage), MEMORY[0x1E697E2B0]);
          outlined consume of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined consume of _SymbolEffect.Storage(v2, v3, v4, v5);
          return v11 & 1;
        }

        goto LABEL_34;
      }

      if ((v9 & 0xF000) != 0x1000)
      {
        goto LABEL_34;
      }
    }

LABEL_24:
    v19 = v2;
    LODWORD(v20) = v3;
    BYTE4(v20) = BYTE4(v3) & 1;
    v14 = v6;
    LODWORD(v15) = v7;
    BYTE4(v15) = BYTE4(v7) & 1;
    outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
    outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
    outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
    outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
    v12 = specialized static _SymbolEffect.RotateConfiguration.== infix(_:_:)();
    goto LABEL_33;
  }

  if (v5 >> 12 <= 5)
  {
    if (v10 == 4)
    {
      if ((v9 & 0xF000) == 0x4000)
      {
        goto LABEL_24;
      }
    }

    else if ((v9 & 0xF000) == 0x5000)
    {
      v19 = v2;
      LODWORD(v20) = v3;
      v14 = v6;
      LODWORD(v15) = v7;
      outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
      outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
      outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
      outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
      v12 = specialized static _SymbolEffect.VariableColorConfiguration.== infix(_:_:)(&v19, &v14);
      goto LABEL_33;
    }

LABEL_34:
    outlined copy of _SymbolEffect.Trigger?(v2);
    goto LABEL_35;
  }

  if (v10 == 6)
  {
    if ((v9 & 0xF000) == 0x6000)
    {
      outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v24, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage), MEMORY[0x1E697E2B0]);
      if (v2 == v6)
      {
        v11 = BYTE4(v2) & 1 ^ ((v6 & 0x100000000) == 0);
      }

      else
      {
        v11 = 0;
      }

      return v11 & 1;
    }

    goto LABEL_35;
  }

  if (v10 != 7)
  {
    if ((v9 & 0xF000) == 0x8000 && !(v7 | v6 | v8) && v9 == 0x8000)
    {
      outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v24, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage), MEMORY[0x1E697E2B0]);
LABEL_41:
      v11 = 1;
      return v11 & 1;
    }

    goto LABEL_35;
  }

  if ((v9 & 0xF000) != 0x7000)
  {
LABEL_35:
    outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
    outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v24, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage), MEMORY[0x1E697E2B0]);
    v11 = 0;
    return v11 & 1;
  }

  outlined destroy of (AccessibilityAttachment.Tree, AccessibilityAttachment.Tree)(v24, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage), MEMORY[0x1E697E2B0]);
  v11 = 0;
  if ((v2 & 0x100000000) != 0)
  {
    if ((v6 & 0x100000000) == 0)
    {
      return v11 & 1;
    }
  }

  else if ((v6 & 0x100000000) != 0)
  {
    return v11 & 1;
  }

  if (v2 == v6 && ((v2 >> 40) & 1) == ((v6 >> 40) & 1) && (HIWORD(v2) & 1) == (HIWORD(v6) & 1))
  {
    goto LABEL_41;
  }

  return v11 & 1;
}

uint64_t specialized TableColumnCustomization.ToAnyCustomization.get(base:)(uint64_t *a1)
{
  v1 = *a1;

  return v1;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry, &type metadata for TableColumnCustomizationEntry, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry, &type metadata for TableColumnCustomizationEntry, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry, &type metadata for TableColumnCustomizationEntry, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry and conformance TableColumnCustomizationEntry);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [TableColumnCustomizationID] and conformance <A> [A](unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for [TableColumnCustomizationID](255, &lazy cache variable for type metadata for [TableColumnCustomizationID], &type metadata for TableColumnCustomizationID, MEMORY[0x1E69E62F8]);
    v8 = v7;
    v9 = a2();
    result = swift_getWitnessTable(a3, v8, &v9);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t specialized TableColumnCustomizationID.TransientHint.init(from:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationID.TransientHint.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys, &unk_1EFFA9F70, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

uint64_t specialized TableColumnCustomizationID.Base.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationID.Base.TransientCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys, &unk_1EFFAA210, MEMORY[0x1E69E6F48]);
  v36 = v4;
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v35 - v5;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationID.Base.ExplicitCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys, &unk_1EFFAA180, v3);
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationID.Base.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys, &unk_1EFFAA0F0, v3);
  v11 = v10;
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys();
  v15 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  v16 = v7;
  v17 = v39;
  v18 = v40;
  v19 = KeyedDecodingContainer.allKeys.getter();
  v20 = (2 * *(v19 + 16)) | 1;
  v47 = v19;
  v48 = v19 + 32;
  v49 = 0;
  v50 = v20;
  v21 = specialized Collection<>.popFirst()();
  v22 = v11;
  if (v21 == 2 || v49 != v50 >> 1)
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v27 = &type metadata for TableColumnCustomizationID.Base;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v41 + 8))(v13, v22);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v51);
  }

  LODWORD(v42) = v21;
  if (v21)
  {
    LOBYTE(v43) = 1;
    lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v37 = v13;
    lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint();
    v23 = v36;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v24 = v41;
    (*(v38 + 8))(v17, v23);
    (*(v24 + 8))(v37, v22);
    swift_unknownObjectRelease();
    v30 = v43;
    v31 = v44;
    v32 = v45;
    v33 = v46;
  }

  else
  {
    LOBYTE(v43) = 0;
    lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v16;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v34;
    (*(v37 + 1))(v9, v29);
    (*(v41 + 8))(v13, v22);
    swift_unknownObjectRelease();
    v32 = 0;
    v33 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v51);
  *v18 = v30;
  *(v18 + 8) = v31;
  *(v18 + 16) = v32;
  *(v18 + 24) = v33;
  *(v18 + 32) = v42 & 1;
  return result;
}

uint64_t specialized TableColumnCustomizationID.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationID.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys, &unk_1EFFA9DC0, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = v18;
  lazy protocol witness table accessor for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v17;
  v13 = v16;
  v14 = v15;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v12 = v13;
  *v9 = v14;
  *(v9 + 16) = v12;
  *(v9 + 32) = v10;
  return result;
}

uint64_t specialized TableColumnCustomizationEntry.Visibility.init(from:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationEntry.Visibility.HiddenCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys, &unk_1EFFAA060, MEMORY[0x1E69E6F48]);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v36 = &v29 - v4;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationEntry.Visibility.VisibleCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys, &unk_1EFFAA040, v2);
  v34 = v5;
  v31 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v29 - v6;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys, &unk_1EFFAA020, v2);
  v8 = v7;
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationEntry.Visibility.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys, &unk_1EFFAA000, v2);
  v12 = v11;
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys();
  v15 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v10;
    v38 = v8;
    v17 = v35;
    v18 = v36;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = (2 * *(v19 + 16)) | 1;
    v39 = v19;
    v40 = v19 + 32;
    v41 = 0;
    v42 = v20;
    v21 = specialized Collection<>.popFirst()();
    v22 = v14;
    if (v21 == 3 || v41 != v42 >> 1)
    {
      v24 = type metadata accessor for DecodingError();
      v10 = swift_allocError();
      v26 = v25;
      type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
      *v26 = &type metadata for TableColumnCustomizationEntry.Visibility;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
      swift_willThrow();
      (*(v37 + 8))(v14, v12);
    }

    else
    {
      v10 = v21;
      if (v21)
      {
        v23 = v37;
        if (v21 != 1)
        {
          LODWORD(v38) = v21;
          v43 = 2;
          lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v32 + 8))(v18, v33);
          (*(v23 + 8))(v22, v12);
          swift_unknownObjectRelease();
          v10 = v38;
          goto LABEL_9;
        }

        v43 = 1;
        lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v31 + 8))(v17, v34);
        (*(v23 + 8))(v22, v12);
      }

      else
      {
        v43 = 0;
        lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v28 = v37;
        (*(v30 + 8))(v16, v38);
        (*(v28 + 8))(v14, v12);
      }
    }

    swift_unknownObjectRelease();
  }

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

uint64_t specialized TableColumnCustomizationEntry.init(from:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<TableColumnCustomizationEntry.CodingKeys>, lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys, &unk_1EFFA9D30, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v8 = v10;
    v11 = 1;
    lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

void specialized TableColumnCustomizationTransform.writeValue(_:to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  outlined init with copy of Any(a1, v20);
  v11 = type metadata accessor for TableColumnCustomization(0, a5, a6, v10);
  if (swift_dynamicCast())
  {
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v20[0] = v16;
    v20[1] = v17;
    swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomization<A>, v11);
    v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v14 = v13;

    v16 = a3;
    v17 = a4;

    AnyHashable.init<A>(_:)();
    if (v14 >> 60 == 15)
    {
      v12 = 0;
      v14 = 0;
      v15 = 0;
      v18 = 0;
    }

    else
    {
      v15 = MEMORY[0x1E6969080];
    }

    v16 = v12;
    v17 = v14;
    v19 = v15;
    specialized Dictionary.subscript.setter(&v16, v20);
  }
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  Hasher.init(_seed:)();
  MEMORY[0x18D00F6F0](0);
  v0 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

uint64_t specialized TableColumnCustomizationEntry.Visibility.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C6269736976 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6564646968 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized TableColumnCustomization.ToAnyCustomization.set(base:newValue:)(void *a1, uint64_t a2, uint64_t a3)
{

  *a1 = a2;

  a1[1] = a3;
  return result;
}

void *assignWithCopy for TableColumnCustomization(void *a1, void *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for TableColumnCustomizationEntry(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 10))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TableColumnCustomizationEntry(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.CodingKeys, &unk_1EFFA9DC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.CodingKeys, &unk_1EFFA9DC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.CodingKeys, &unk_1EFFA9DC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.CodingKeys, &unk_1EFFA9DC0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.CodingKeys and conformance TableColumnCustomizationID.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base, &type metadata for TableColumnCustomizationID.Base, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base, &type metadata for TableColumnCustomizationID.Base, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base, &type metadata for TableColumnCustomizationID.Base, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base and conformance TableColumnCustomizationID.Base);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.CodingKeys, &unk_1EFFA9D30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.CodingKeys, &unk_1EFFA9D30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.CodingKeys, &unk_1EFFA9D30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.CodingKeys, &unk_1EFFA9D30, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.CodingKeys and conformance TableColumnCustomizationEntry.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility, &type metadata for TableColumnCustomizationEntry.Visibility, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility, &type metadata for TableColumnCustomizationEntry.Visibility, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility, &type metadata for TableColumnCustomizationEntry.Visibility, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility and conformance TableColumnCustomizationEntry.Visibility);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x18D0110E0);
  }

  return result;
}

void type metadata accessor for UUID?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UUID?)
  {
    type metadata accessor for UUID();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UUID?);
    }
  }
}

void type metadata accessor for (AnyNavigationLinkPresentedValue?, AnyNavigationLinkPresentedValue?)(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    type metadata accessor for [TableColumnCustomizationID](255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void type metadata accessor for PartialKeyPath<UISplitViewController>(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = type metadata accessor for NSObject(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t destroy for TableColumnCustomizationID.TransientHint()
{
}

void *initializeWithCopy for TableColumnCustomizationID.TransientHint(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;

  return a1;
}

void *assignWithCopy for TableColumnCustomizationID.TransientHint(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  return a1;
}

void *assignWithTake for TableColumnCustomizationID.TransientHint(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

uint64_t initializeWithCopy for TableColumnCustomizationID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of TableColumnCustomizationID.Base(*a2, v4, v5, v6, v7);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  return a1;
}

uint64_t assignWithCopy for TableColumnCustomizationID(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  outlined copy of TableColumnCustomizationID.Base(*a2, v4, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  outlined consume of TableColumnCustomizationID.Base(v8, v9, v10, v11, v12);
  return a1;
}

uint64_t assignWithTake for TableColumnCustomizationID(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *a1;
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v3;
  outlined consume of TableColumnCustomizationID.Base(v4, v6, v5, v7, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for TableColumnCustomizationID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for TableColumnCustomizationID(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.TransientHint, &type metadata for TableColumnCustomizationID.TransientHint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.TransientHint, &type metadata for TableColumnCustomizationID.TransientHint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.TransientHint, &type metadata for TableColumnCustomizationID.TransientHint, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint and conformance TableColumnCustomizationID.TransientHint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.TransientCodingKeys, &unk_1EFFAA210, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.TransientCodingKeys, &unk_1EFFAA210, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.TransientCodingKeys, &unk_1EFFAA210, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.TransientCodingKeys, &unk_1EFFAA210, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.TransientCodingKeys and conformance TableColumnCustomizationID.Base.TransientCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.ExplicitCodingKeys, &unk_1EFFAA180, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.ExplicitCodingKeys, &unk_1EFFAA180, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.ExplicitCodingKeys, &unk_1EFFAA180, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.ExplicitCodingKeys, &unk_1EFFAA180, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.ExplicitCodingKeys and conformance TableColumnCustomizationID.Base.ExplicitCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.CodingKeys, &unk_1EFFAA0F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.CodingKeys, &unk_1EFFAA0F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.CodingKeys, &unk_1EFFAA0F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.Base.CodingKeys, &unk_1EFFAA0F0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.Base.CodingKeys and conformance TableColumnCustomizationID.Base.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.HiddenCodingKeys, &unk_1EFFAA060, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.HiddenCodingKeys, &unk_1EFFAA060, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.HiddenCodingKeys, &unk_1EFFAA060, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.HiddenCodingKeys and conformance TableColumnCustomizationEntry.Visibility.HiddenCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.VisibleCodingKeys, &unk_1EFFAA040, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.VisibleCodingKeys, &unk_1EFFAA040, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.VisibleCodingKeys, &unk_1EFFAA040, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.VisibleCodingKeys and conformance TableColumnCustomizationEntry.Visibility.VisibleCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys, &unk_1EFFAA020, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys, &unk_1EFFAA020, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys, &unk_1EFFAA020, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys and conformance TableColumnCustomizationEntry.Visibility.AutomaticCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.CodingKeys, &unk_1EFFAA000, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.CodingKeys, &unk_1EFFAA000, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.CodingKeys, &unk_1EFFAA000, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationEntry.Visibility.CodingKeys, &unk_1EFFAA000, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationEntry.Visibility.CodingKeys and conformance TableColumnCustomizationEntry.Visibility.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.TransientHint.CodingKeys, &unk_1EFFA9F70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.TransientHint.CodingKeys, &unk_1EFFA9F70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.TransientHint.CodingKeys, &unk_1EFFA9F70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys;
  if (!lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TableColumnCustomizationID.TransientHint.CodingKeys, &unk_1EFFA9F70, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type TableColumnCustomizationID.TransientHint.CodingKeys and conformance TableColumnCustomizationID.TransientHint.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<TableColumnCustomizationID.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t assignWithTake for OutsetByRowInsets(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 64);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 64);
  v11 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v11;
  *(a1 + 64) = v5;
  outlined consume of Environment<EdgeInsets>.Content(v6, v7, v8, v9, v10);
  v12 = *(a2 + 80);
  v13 = *(a1 + 72);
  v14 = *(a1 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v12;
  outlined consume of Environment<Bool>.Content(v13, v14);
  v15 = *(a2 + 136);
  v16 = *(a2 + 144);
  v17 = *(a1 + 88);
  v18 = *(a1 + 96);
  v19 = *(a1 + 104);
  v20 = *(a1 + 112);
  v21 = *(a1 + 120);
  v22 = *(a1 + 128);
  v23 = *(a1 + 136);
  v24 = *(a1 + 144);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = v15;
  *(a1 + 144) = v16;
  outlined consume of Environment<ResolvedSubviewsSizingOptions>.Content(v17, v18, v19, v20, v21, v22, v23, v24);
  *(a1 + 145) = *(a2 + 145);
  return a1;
}

uint64_t getEnumTagSinglePayload for OutsetByRowInsets(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 146))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 64);
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

uint64_t storeEnumTagSinglePayload for OutsetByRowInsets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 146) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 146) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OutsetByRowInsets and conformance OutsetByRowInsets()
{
  result = lazy protocol witness table cache variable for type OutsetByRowInsets and conformance OutsetByRowInsets;
  if (!lazy protocol witness table cache variable for type OutsetByRowInsets and conformance OutsetByRowInsets)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OutsetByRowInsets, &type metadata for OutsetByRowInsets, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OutsetByRowInsets and conformance OutsetByRowInsets);
  }

  return result;
}

float64x2_t OutsetByRowInsets.body(content:)@<Q0>(uint64_t a1@<X8>)
{
  v25 = *(v1 + 16);
  v26 = *v1;
  v3 = *(v1 + 48);
  v34 = *(v1 + 32);
  v35 = v3;
  v36 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 104);
  v37 = *(v1 + 88);
  v38 = v6;
  v39[0] = *(v1 + 120);
  *(v39 + 9) = *(v1 + 129);
  v7 = *(v1 + 145);
  v8 = specialized Environment.wrappedValue.getter(v4, v5);
  specialized Environment.wrappedValue.getter(&v27);
  if (v29 >> 1 != 4294967294)
  {
    outlined consume of ResolvedSubviewsSizingOptions(v27, v28, v29, v30, v31, v32, v33);
    static EdgeInsets.zero.getter();
    v10.i64[1] = v9;
    v12.i64[1] = v11;
    v25 = v10;
    v26 = v12;
  }

  specialized Environment.wrappedValue.getter(&v27);
  if (v29 >> 1 == 4294967294)
  {
    v13 = specialized Environment.wrappedValue.getter();
  }

  else
  {
    outlined consume of ResolvedSubviewsSizingOptions(v27, v28, v29, v30, v31, v32, v33);
    static EdgeInsets.zero.getter();
  }

  v21 = v14;
  v22 = v13;
  v23 = v16;
  v24 = v15;
  EdgeInsets.vertical.getter();
  *a1 = v7;
  *(a1 + 8) = v8 - v17;
  v18.f64[0] = v22;
  v18.f64[1] = v21;
  v19.f64[0] = v24;
  v19.f64[1] = v23;
  result = vsubq_f64(v19, vbslq_s8(vcgtq_f64(v19, v25), v25, v19));
  *(a1 + 16) = vsubq_f64(v18, vbslq_s8(vcgtq_f64(v18, v26), v26, v18));
  *(a1 + 32) = result;
  return result;
}

double OutsetByRowInsets.OutsetLayout.sizeThatFits(in:context:child:)(uint64_t *a1, double a2, __n128 a3, double a4, __n128 a5)
{
  v6 = *v5;
  if (*v5)
  {
    EdgeInsets.negatedInsets.getter();
    static Edge.Set.vertical.getter();
    EdgeInsets.in(_:)();
    _ProposedSize.inset(by:)();
  }

  LayoutProxy.size(in:)();
  if (v6)
  {
    v9 = v8 - v5[1];
    if (v9 > 0.0)
    {
      v10 = result;
      EdgeInsets.vertical.getter();
      v12 = v11;
      result = v10;
      if (v12 >= v9)
      {
        static Edge.Set.vertical.getter();
        EdgeInsets.in(_:)();

        CGSize.inset(by:)();
      }
    }
  }

  return result;
}

void *OutsetByRowInsets.OutsetLayout.placement(of:in:)()
{
  PlacementContext.proposedSize.getter();
  PlacementContext.size.getter();
  v3 = *v2;
  if (*v2)
  {
    EdgeInsets.negatedInsets.getter();
    static Edge.Set.vertical.getter();
    EdgeInsets.in(_:)();
    _ProposedSize.inset(by:)();
  }

  LayoutProxy.size(in:)();
  if ((v3 & 1) != 0 && (v5 = v4 - v2[1], v5 > 0.0) && (EdgeInsets.vertical.getter(), v6 >= v5))
  {
    static UnitPoint.topTrailing.getter();
    return _Placement.init(proposedSize:anchoring:at:)();
  }

  else
  {
    static UnitPoint.topTrailing.getter();
    return _Placement.init(proposedSize:aligning:in:)();
  }
}

uint64_t OutsetByRowInsets.OutsetLayout.spacing(in:child:)(uint64_t a1, int *a2)
{
  if (LayoutProxy.requiresSpacingProjection.getter())
  {
    return LayoutProxy.spacing()();
  }

  LayoutProxy.spacing()();
  static AbsoluteEdge.Set.vertical.getter();
  return Spacing.reset(_:)();
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance OutsetByRowInsets.OutsetLayout(int *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *a1;
  v12 = a2[3];
  v16[2] = a2[2];
  v16[3] = v12;
  v16[4] = a2[4];
  v17 = *(a2 + 20);
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  v18 = v11;
  v14 = lazy protocol witness table accessor for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout();
  return (*(v14 + 80))(&v18, v16, a3, a4, a5, v14);
}

uint64_t getEnumTagSinglePayload for OutsetByRowInsets.OutsetLayout(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OutsetByRowInsets.OutsetLayout(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout> and conformance <> ModifiedContent<A, B>)
  {
    v5[4] = v0;
    v5[5] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout>(255);
    v4 = v3;
    v5[0] = lazy protocol witness table accessor for type _ViewModifier_Content<OutsetByRowInsets> and conformance _ViewModifier_Content<A>();
    v5[1] = &protocol witness table for OutsetByRowInsets.OutsetLayout;
    result = swift_getWitnessTable(MEMORY[0x1E697E858], v4, v5);
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void type metadata accessor for ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout>)
  {
    type metadata accessor for _ViewModifier_Content<OutsetByRowInsets>(255);
    v1 = type metadata accessor for ModifiedContent();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for ModifiedContent<_ViewModifier_Content<OutsetByRowInsets>, OutsetByRowInsets.OutsetLayout>);
    }
  }
}

void type metadata accessor for _ViewModifier_Content<OutsetByRowInsets>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ViewModifier_Content<OutsetByRowInsets>)
  {
    lazy protocol witness table accessor for type OutsetByRowInsets and conformance OutsetByRowInsets();
    v1 = type metadata accessor for _ViewModifier_Content();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ViewModifier_Content<OutsetByRowInsets>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type _ViewModifier_Content<OutsetByRowInsets> and conformance _ViewModifier_Content<A>()
{
  result = lazy protocol witness table cache variable for type _ViewModifier_Content<OutsetByRowInsets> and conformance _ViewModifier_Content<A>;
  if (!lazy protocol witness table cache variable for type _ViewModifier_Content<OutsetByRowInsets> and conformance _ViewModifier_Content<A>)
  {
    type metadata accessor for _ViewModifier_Content<OutsetByRowInsets>(255);
    result = swift_getWitnessTable(MEMORY[0x1E697FDF8], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type _ViewModifier_Content<OutsetByRowInsets> and conformance _ViewModifier_Content<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout()
{
  result = lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout;
  if (!lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OutsetByRowInsets.OutsetLayout, &type metadata for OutsetByRowInsets.OutsetLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout;
  if (!lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OutsetByRowInsets.OutsetLayout, &type metadata for OutsetByRowInsets.OutsetLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout;
  if (!lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OutsetByRowInsets.OutsetLayout, &type metadata for OutsetByRowInsets.OutsetLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout;
  if (!lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for OutsetByRowInsets.OutsetLayout, &type metadata for OutsetByRowInsets.OutsetLayout, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type OutsetByRowInsets.OutsetLayout and conformance OutsetByRowInsets.OutsetLayout);
  }

  return result;
}

uint64_t type metadata accessor for FocusEventProxyResponder(uint64_t a1)
{
  result = type metadata singleton initialization cache for FocusEventProxyResponder;
  if (!type metadata singleton initialization cache for FocusEventProxyResponder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FocusEventProxyResponderFilter.updateValue()()
{
  v1 = *(v0 + 8);
  type metadata accessor for [ViewResponder](0);

  AGGraphGetValue();
  if (v2)
  {

    MultiViewResponder.children.setter();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18CD69590;
    *(v4 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

double FocusEventProxyResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  swift_deallocClassInstance();
  return result;
}

unint64_t lazy protocol witness table accessor for type FocusEventProxyResponderFilter and conformance FocusEventProxyResponderFilter()
{
  result = lazy protocol witness table cache variable for type FocusEventProxyResponderFilter and conformance FocusEventProxyResponderFilter;
  if (!lazy protocol witness table cache variable for type FocusEventProxyResponderFilter and conformance FocusEventProxyResponderFilter)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FocusEventProxyResponderFilter, &unk_1EFFAA3C0, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type FocusEventProxyResponderFilter and conformance FocusEventProxyResponderFilter);
  }

  return result;
}

uint64_t assignWithCopy for FocusEventProxyResponderFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

uint64_t CustomProgressView.init(interval:countdown:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25[0] = a5;
  v25[1] = a6;
  v25[2] = a7;
  v25[3] = a8;
  v15 = type metadata accessor for CustomProgressView(0, v25);
  v16 = v15[13];
  (*(*(a5 - 8) + 56))(a9 + v16, 1, 1, a5);
  v17 = v15[14];
  (*(*(a6 - 8) + 56))(a9 + v17, 1, 1, a6);
  v18 = v15[15];
  type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
  v20 = *(v19 + 48);
  _sSNy10Foundation4DateVGWObTm_0(a1, a9, type metadata accessor for ClosedRange<Date>);
  *(a9 + v20) = a2;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 40))(a9 + v16, a3, v21);
  v22 = type metadata accessor for Optional();
  result = (*(*(v22 - 8) + 40))(a9 + v17, a4, v22);
  *(a9 + v18) = 0;
  return result;
}

uint64_t CustomProgressView.init<A>(interval:countdown:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v36 = a4;
  v37 = a5;
  v38 = a3;
  HIDWORD(v33) = a2;
  v34 = a1;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v33 - v17;
  v39[0] = a6;
  v39[1] = a7;
  v39[2] = a10;
  v39[3] = a11;
  v19 = type metadata accessor for CustomProgressView(0, v39);
  v20 = v19[13];
  (*(*(a6 - 8) + 56))(a9 + v20, 1, 1, a6);
  v21 = v19[14];
  (*(*(a7 - 8) + 56))(a9 + v21, 1, 1, a7);
  v35 = v19[15];
  type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
  v23 = *(v22 + 48);
  outlined init with copy of ProgressViewValue(a1, a9, type metadata accessor for ClosedRange<Date>);
  *(a9 + v23) = BYTE4(v33);
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  (*(v25 + 24))(a9 + v20, v38, v24);
  v26 = type metadata accessor for Optional();
  v27 = *(v26 - 8);
  v28 = a9 + v21;
  v29 = v36;
  (*(v27 + 24))(v28, v36, v26);
  v30 = v37;
  (*(v16 + 16))(v18, v37, v15);
  swift_getWitnessTable(MEMORY[0x1E6982090], v15, va);
  v31 = AnyView.init<A>(_:)();
  (*(v16 + 8))(v30, v15);
  (*(v27 + 8))(v29, v26);
  (*(v25 + 8))(v38, v24);
  result = _sSNy10Foundation4DateVGWOhTm_1(v34, type metadata accessor for ClosedRange<Date>);
  *(a9 + v35) = v31;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ProgressViewValue.AbsoluteCodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ProgressViewValue.AbsoluteCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x800000018CD438C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000018CD438E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProgressViewValue.AbsoluteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProgressViewValue.AbsoluteCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ProgressViewValue.CodingKeys()
{
  if (*v0)
  {
    return 0x616C655265746164;
  }

  else
  {
    return 0x6574756C6F736261;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ProgressViewValue.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574756C6F736261 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616C655265746164 && a2 == 0xEC00000065766974)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProgressViewValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProgressViewValue.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ProgressViewValue.DateRelativeCodingKeys()
{
  if (*v0)
  {
    return 0x776F64746E756F63;
  }

  else
  {
    return 0x6C61767265746E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ProgressViewValue.DateRelativeCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xE90000000000006ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProgressViewValue.DateRelativeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProgressViewValue.DateRelativeCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProgressViewValue.encode(to:)(void *a1)
{
  v2 = MEMORY[0x1E69E6F58];
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys, &unk_1EFFAA648, MEMORY[0x1E69E6F58]);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v24 - v4;
  type metadata accessor for ClosedRange<Date>(0);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ProgressViewValue.AbsoluteCodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys, &unk_1EFFAA5B8, v2);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<ProgressViewValue.CodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys, &unk_1EFFAA528, v2);
  v14 = v13;
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v24 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of ProgressViewValue(v31, v12, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    v17 = v26;
    _sSNy10Foundation4DateVGWObTm_0(v12, v26, type metadata accessor for ClosedRange<Date>);
    v39 = 1;
    lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys();
    v18 = v28;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = 0;
    lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969538], MEMORY[0x1E69E5F98]);
    v19 = v30;
    v20 = v32;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v20)
    {
      v37 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v29 + 8))(v18, v19);
    _sSNy10Foundation4DateVGWOhTm_1(v17, type metadata accessor for ClosedRange<Date>);
  }

  else
  {
    v36 = 0;
    lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = 0;
    v21 = v25;
    v22 = v32;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    if (!v22)
    {
      v34 = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
    }

    (*(v24 + 8))(v9, v21);
  }

  return (*(v33 + 8))(v16, v14);
}

unint64_t lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys()
{
  result = lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.DateRelativeCodingKeys, &unk_1EFFAA648, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.DateRelativeCodingKeys, &unk_1EFFAA648, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.DateRelativeCodingKeys, &unk_1EFFAA648, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.DateRelativeCodingKeys, &unk_1EFFAA648, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys()
{
  result = lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.AbsoluteCodingKeys, &unk_1EFFAA5B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.AbsoluteCodingKeys, &unk_1EFFAA5B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.AbsoluteCodingKeys, &unk_1EFFAA5B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.AbsoluteCodingKeys, &unk_1EFFAA5B8, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.CodingKeys, &unk_1EFFAA528, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.CodingKeys, &unk_1EFFAA528, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.CodingKeys, &unk_1EFFAA528, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys;
  if (!lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ProgressViewValue.CodingKeys, &unk_1EFFAA528, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys);
  }

  return result;
}

uint64_t ProgressViewValue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = MEMORY[0x1E69E6F48];
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ProgressViewValue.DateRelativeCodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys, &unk_1EFFAA648, MEMORY[0x1E69E6F48]);
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v54 - v5;
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ProgressViewValue.AbsoluteCodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys, &unk_1EFFAA5B8, v3);
  v58 = *(v6 - 8);
  v59 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v54 - v7;
  type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<ProgressViewValue.CodingKeys>, lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys, &unk_1EFFAA528, v3);
  v9 = v8;
  v65 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v54 - v10;
  v12 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v54 - v19;
  v21 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  lazy protocol witness table accessor for type ProgressViewValue.CodingKeys and conformance ProgressViewValue.CodingKeys();
  v22 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v56 = v17;
  v57 = v14;
  v24 = v62;
  v23 = v63;
  v66 = v12;
  v25 = v64;
  v26 = KeyedDecodingContainer.allKeys.getter();
  v27 = (2 * *(v26 + 16)) | 1;
  v68 = v26;
  v69 = v26 + 32;
  v70 = 0;
  v71 = v27;
  v28 = specialized Collection<>.popFirst()();
  if (v28 == 2 || v70 != v71 >> 1)
  {
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    type metadata accessor for (@thick Any.Type, DecodingError.Context)(0);
    *v34 = v66;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v65 + 8))(v11, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v67);
  }

  if (v28)
  {
    v72 = 1;
    lazy protocol witness table accessor for type ProgressViewValue.DateRelativeCodingKeys and conformance ProgressViewValue.DateRelativeCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v25;
    v30 = v20;
    type metadata accessor for ClosedRange<Date>(0);
    v72 = 0;
    lazy protocol witness table accessor for type ClosedRange<Date> and conformance <> ClosedRange<A>(&lazy protocol witness table cache variable for type ClosedRange<Date> and conformance <> ClosedRange<A>, &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x1E6969558], MEMORY[0x1E69E5FC0]);
    v31 = v61;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v72 = 1;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = v23;
    v55 = 0;
    v42 = v60;
    v46 = v40;
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    v47 = v42;
    v49 = *(v48 + 48);
    (*(v47 + 8))(v41, v31);
    (*(v65 + 8))(v11, v9);
    swift_unknownObjectRelease();
    v50 = v46 & 1;
    v51 = v57;
    v57[v49] = v50;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v72 = 0;
    lazy protocol witness table accessor for type ProgressViewValue.AbsoluteCodingKeys and conformance ProgressViewValue.AbsoluteCodingKeys();
    v36 = v24;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v29 = v25;
    v30 = v20;
    v72 = 0;
    v37 = v59;
    v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v39 = v65;
    LODWORD(v63) = v43;
    v44 = v38;
    v72 = 1;
    v45 = KeyedDecodingContainer.decode(_:forKey:)();
    v55 = 0;
    v52 = v45;
    (*(v58 + 8))(v36, v37);
    (*(v39 + 8))(v11, v9);
    swift_unknownObjectRelease();
    v53 = v56;
    *v56 = v44;
    *(v53 + 8) = v63 & 1;
    *(v53 + 9) = v52 & 1;
    swift_storeEnumTagMultiPayload();
    v51 = v53;
  }

  _sSNy10Foundation4DateVGWObTm_0(v51, v30, type metadata accessor for ProgressViewValue);
  _sSNy10Foundation4DateVGWObTm_0(v30, v29, type metadata accessor for ProgressViewValue);
  return __swift_destroy_boxed_opaque_existential_1(v67);
}

void type metadata accessor for KeyedEncodingContainer<ProgressViewValue.DateRelativeCodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t CustomProgressView.init(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v25[0] = a6;
  v25[1] = a7;
  v25[2] = a8;
  v25[3] = a10;
  v17 = type metadata accessor for CustomProgressView(0, v25);
  v18 = v17[13];
  (*(*(a6 - 8) + 56))(a9 + v18, 1, 1, a6);
  v19 = v17[14];
  (*(*(a7 - 8) + 56))(a9 + v19, 1, 1, a7);
  v20 = v17[15];
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 9) = a3;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for Optional();
  (*(*(v21 - 8) + 40))(a9 + v18, a4, v21);
  v22 = type metadata accessor for Optional();
  result = (*(*(v22 - 8) + 40))(a9 + v19, a5, v22);
  *(a9 + v20) = 0;
  return result;
}

uint64_t CustomProgressView.init<A>(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  v37 = a6;
  v38 = a5;
  v39 = a4;
  v34 = a2;
  v35 = a3;
  v16 = type metadata accessor for Optional();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  v40[0] = a7;
  v40[1] = a8;
  v40[2] = a11;
  v40[3] = a12;
  v20 = type metadata accessor for CustomProgressView(0, v40);
  v21 = v20[13];
  (*(*(a7 - 8) + 56))(a9 + v21, 1, 1, a7);
  v22 = v20[14];
  (*(*(a8 - 8) + 56))(a9 + v22, 1, 1, a8);
  v36 = v20[15];
  *a9 = a1;
  *(a9 + 8) = v34 & 1;
  *(a9 + 9) = v35;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  (*(v24 + 24))(a9 + v21, v39, v23);
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  v27 = a9 + v22;
  v28 = v38;
  (*(v26 + 24))(v27, v38, v25);
  v29 = v19;
  v30 = v37;
  (*(v17 + 16))(v29, v37, v16);
  swift_getWitnessTable(MEMORY[0x1E6982090], v16, va);
  v31 = AnyView.init<A>(_:)();
  (*(v17 + 8))(v30, v16);
  (*(v26 + 8))(v28, v25);
  result = (*(v24 + 8))(v39, v23);
  *(a9 + v36) = v31;
  return result;
}

uint64_t implicit closure #1 in static CustomProgressView._makeView(view:inputs:)(int a1, uint64_t a2, __int128 *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a7;
  v77 = *MEMORY[0x1E69E9840];
  v13 = a3[3];
  v65 = a3[2];
  v66 = v13;
  v67 = a3[4];
  LODWORD(v68) = *(a3 + 20);
  v14 = a3[1];
  v63 = *a3;
  v64 = v14;
  v15 = type metadata accessor for Optional();
  v62 = v9;
  v16 = MEMORY[0x1E6982090];
  WitnessTable = swift_getWitnessTable(MEMORY[0x1E6982090], v15, &v62);
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a2, &v63, &v70);
  v19 = type metadata accessor for LazyWidgetAuxiliaryMetadataTextImage(0, v15, WitnessTable, v18);
  v51 = v19;
  v52 = swift_getWitnessTable(protocol conformance descriptor for LazyWidgetAuxiliaryMetadataTextImage<A>, v19);
  outlined init with copy of _ViewInputs(a3, &v63);
  type metadata accessor for Attribute<WidgetAuxiliaryTextImagePreference?>(0);
  v21 = v20;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v70, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_11, v50, v19, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v22);
  v67 = v74;
  v68 = v75;
  v69 = v76;
  v63 = v70;
  v64 = v71;
  v65 = v72;
  v66 = v73;
  (*(*(v19 - 8) + 8))(&v63, v19);
  LODWORD(v9) = v54;
  v23 = a3[3];
  v72 = a3[2];
  v73 = v23;
  v74 = a3[4];
  LODWORD(v75) = *(a3 + 20);
  v24 = a3[1];
  v70 = *a3;
  v71 = v24;
  v25 = type metadata accessor for Optional();
  v61 = a8;
  v26 = swift_getWitnessTable(v16, v25, &v61);
  LazyWidgetAuxiliaryMetadataTextImage.init(flags:content:inputs:)(a4, &v70, &v54);
  v28 = type metadata accessor for LazyWidgetAuxiliaryMetadataTextImage(0, v25, v26, v27);
  v48 = v28;
  v49 = swift_getWitnessTable(protocol conformance descriptor for LazyWidgetAuxiliaryMetadataTextImage<A>, v28);
  outlined init with copy of _ViewInputs(a3, &v70);
  v29 = MEMORY[0x1E69E73E0];
  v30 = v21;
  v31 = MEMORY[0x1E69E7410];
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v54, closure #1 in Attribute.init<A>(_:)partial apply, v47, v28, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v32);
  v74 = v58;
  v75 = v59;
  v76 = v60;
  v70 = v54;
  v71 = v55;
  v72 = v56;
  v73 = v57;
  (*(*(v28 - 8) + 8))(&v70, v28);
  v33 = v53[0];
  v34 = *(a3 + 2);
  swift_beginAccess();
  v35 = *(v34 + 16);
  v43[0] = a1;
  v43[1] = v9;
  v43[2] = v33;
  v43[3] = v35;
  *&v54 = a5;
  *(&v54 + 1) = a6;
  *&v55 = a7;
  *(&v55 + 1) = a8;
  v45 = type metadata accessor for CustomProgressView.WidgetMetadataWriter(0, &v54);
  v46 = swift_getWitnessTable(protocol conformance descriptor for CustomProgressView<A, B>.WidgetMetadataWriter, v45);
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for Attribute<WidgetAuxiliaryViewMetadata?>, type metadata accessor for WidgetAuxiliaryViewMetadata?, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v43, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_10, v44, v45, v29, v36, v31, v37);
  return v54;
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance CustomProgressView<A, B>.Child@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for ModifiedContent<ResolvedProgressView, OptionalSourceWriter<ProgressViewStyleConfiguration.Actions, AnyView>>(255);
  v4 = a1[3];
  v5 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.CurrentValueLabel and conformance ProgressViewStyleConfiguration.CurrentValueLabel();
  v6 = a1[5];
  v12 = &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel;
  v13 = v4;
  v14 = v5;
  v15 = v6;
  type metadata accessor for OptionalSourceWriter(255, &v12);
  type metadata accessor for ModifiedContent();
  v7 = a1[2];
  v8 = lazy protocol witness table accessor for type ProgressViewStyleConfiguration.Label and conformance ProgressViewStyleConfiguration.Label();
  v9 = a1[4];
  v12 = &type metadata for ProgressViewStyleConfiguration.Label;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  type metadata accessor for OptionalSourceWriter(255, &v12);
  v10 = type metadata accessor for ModifiedContent();
  return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
}

uint64_t CustomProgressView.WidgetMetadataWriter.value.getter@<X0>(unint64_t a2@<X1>, char *a3@<X8>)
{
  v95 = a2;
  v88 = a3;
  v3 = MEMORY[0x1E69E6720];
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for WidgetAuxiliaryViewMetadata.Progress?, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v98 = &v83 - v5;
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v83 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v83 - v12;
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for URL?, MEMORY[0x1E6968FB0], v3);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v90 = &v83 - v14;
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, v3);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v85 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v83 - v18;
  v96 = type metadata accessor for WidgetAuxiliaryViewMetadata(0);
  v20 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v86 = (&v83 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v22);
  v94 = (&v83 - v23);
  v24 = type metadata accessor for ProgressViewValue(0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  Value = AGGraphGetValue();
  outlined init with copy of ProgressViewValue(Value, v26, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    v32 = v26[*(v31 + 48)];
    type metadata accessor for (ClosedRange<Date>, Bool)(0);
    v34 = &v29[*(v33 + 48)];
    _sSNy10Foundation4DateVGWObTm_0(v26, v29, type metadata accessor for ClosedRange<Date>);
  }

  else
  {
    v35 = v26[8];
    v32 = v26[9];
    *v29 = *v26;
    v29[8] = v35;
    v34 = v29 + 9;
  }

  *v34 = v32;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for WidgetAuxiliaryTextImagePreference?, &type metadata for WidgetAuxiliaryTextImagePreference);
  v36 = *AGGraphGetValue();
  v87 = v8;
  v84 = v29;
  if (v36 == 1)
  {
    goto LABEL_7;
  }

  if (!v36)
  {
    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
LABEL_7:
    outlined consume of WidgetAuxiliaryTextImagePreference?(v36);
    v37 = 1;
    goto LABEL_9;
  }

  outlined copy of WidgetAuxiliaryTextImagePreference?(v36);

  outlined consume of WidgetAuxiliaryTextImagePreference?(v38);
  PlatformItemList.mergedContentItem.getter(v36, v19);

  v37 = 0;
LABEL_9:
  v39 = type metadata accessor for PlatformItemList.Item(0);
  v40 = *(*(v39 - 8) + 56);
  v40(v19, v37, 1, v39);
  v41 = type metadata accessor for URL();
  v42 = *(v41 - 8);
  v43 = v19;
  v44 = v90;
  v92 = *(v42 + 56);
  v93 = v41;
  v91 = v42 + 56;
  v92(v90, 1, 1);
  v45 = *(v20 + 56);
  v89 = xmmword_18CD633F0;
  v102 = xmmword_18CD633F0;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v46 = v99;
  v47 = v20 + 56;
  v48 = v45;
  v45(v99, 1, 1, v96);
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v43, v44, &v102, v46, v94);
  v49 = AGGraphGetValue();
  v50 = *v49;
  v51 = v85;
  v52 = v84;
  if (*v49 != 1)
  {
    if (v50)
    {
      outlined copy of WidgetAuxiliaryTextImagePreference?(*v49);

      outlined consume of WidgetAuxiliaryTextImagePreference?(v54);
      PlatformItemList.mergedContentItem.getter(v50, v51);

      v53 = 0;
      goto LABEL_14;
    }

    outlined copy of WidgetAuxiliaryTextImagePreference?(0);
  }

  outlined consume of WidgetAuxiliaryTextImagePreference?(v50);
  v53 = 1;
LABEL_14:
  v40(v51, v53, 1, v39);
  v55 = v90;
  (v92)(v90, 1, 1, v93);
  v102 = v89;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v56 = v99;
  v57 = v96;
  v58 = v47;
  v48(v99, 1, 1, v96);
  v59 = v86;
  WidgetAuxiliaryViewMetadata.init(item:url:accessibility:child:)(v51, v55, &v102, v56, v86);
  outlined init with copy of ProgressViewValue(v52, v98, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
  v60 = v94;
  outlined init with copy of ProgressViewValue(v94, v56, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v48(v56, 0, 1, v57);
  v61 = v97;
  outlined init with copy of ProgressViewValue(v59, v97, type metadata accessor for WidgetAuxiliaryViewMetadata);
  v48(v61, 0, 1, v57);
  v62 = v48;
  v63 = AGGraphGetValue();
  v64 = *v63;
  v65 = v63[1];

  *&v102 = v64;
  *(&v102 + 1) = v65;
  static WidgetAuxiliaryViewMetadata.tint(from:)(&v102, v100);

  _sSNy10Foundation4DateVGWOhTm_1(v59, type metadata accessor for WidgetAuxiliaryViewMetadata);
  _sSNy10Foundation4DateVGWOhTm_1(v60, type metadata accessor for WidgetAuxiliaryViewMetadata);
  _sSNy10Foundation4DateVGWOhTm_1(v52, type metadata accessor for WidgetAuxiliaryViewMetadata.Progress.Kind);
  v94 = v100[1];
  v95 = v100[0];
  LODWORD(v90) = v101;
  v66 = type metadata accessor for WidgetAuxiliaryViewMetadata.Progress(0);
  v86 = v66[5];
  v67 = v87;
  v48(v87, 1, 1, v57);
  v83 = v58;
  type metadata accessor for MutableBox<WidgetAuxiliaryViewMetadata?>(0, &lazy cache variable for type metadata for MutableBox<WidgetAuxiliaryViewMetadata?>, type metadata accessor for WidgetAuxiliaryViewMetadata?, MEMORY[0x1E697DAC0]);
  v68 = swift_allocObject();
  v69 = *(*v68 + *MEMORY[0x1E697DAC8] + 8);
  _sSNy10Foundation4DateVGWObTm_0(v67, v68 + v69, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  v70 = v98;
  *(v86 + v98) = v68;
  v86 = v66[6];
  v62(v67, 1, 1, v57);
  v71 = swift_allocObject();
  v72 = *(*v71 + *MEMORY[0x1E697DAC8] + 8);
  _sSNy10Foundation4DateVGWObTm_0(v67, v71 + v72, type metadata accessor for WidgetAuxiliaryViewMetadata?);
  *(v86 + v70) = v71;
  v73 = v70 + v66[7];
  *v73 = 0;
  *(v73 + 8) = 0;
  *(v73 + 16) = 0;
  swift_beginAccess();
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v99, v68 + v69);
  swift_endAccess();
  swift_beginAccess();
  outlined assign with take of WidgetAuxiliaryViewMetadata?(v97, v71 + v72);
  swift_endAccess();

  v74 = v94;
  *v73 = v95;
  *(v73 + 8) = v74;
  *(v73 + 16) = v90;
  v75 = *(*(v66 - 1) + 56);
  v75(v70, 0, 1, v66);
  v76 = v88;
  *v88 = 0;
  *(v76 + 1) = 0;
  v77 = v57[6];
  v78 = type metadata accessor for WidgetAuxiliaryViewMetadata.Graphic(0);
  (*(*(v78 - 8) + 56))(&v76[v77], 1, 1, v78);
  *&v76[v57[7]] = 0;
  v79 = v57[8];
  v75(&v76[v79], 1, 1, v66);
  v80 = &v76[v57[9]];
  *(v80 + 41) = 0u;
  *(v80 + 1) = 0u;
  *(v80 + 2) = 0u;
  *v80 = 0u;
  (v92)(&v76[v57[10]], 1, 1, v93);
  v81 = &v76[v57[11]];
  *v81 = v89;
  v81[1] = 0u;
  v81[2] = 0u;
  v81[3] = 0u;
  outlined assign with take of WidgetAuxiliaryViewMetadata.Progress?(v70, &v76[v79]);
  return (v62)(v76, 0, 1, v57);
}

uint64_t protocol witness for static Rule.initialValue.getter in conformance CustomProgressView<A, B>.WidgetMetadataWriter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for WidgetAuxiliaryViewMetadata?(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t ProgressView<>.init(label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - v11;
  (*(v9 + 16))(v16 - v11, a1, v8, v10);
  LOBYTE(v16[0]) = 1;
  v13 = MEMORY[0x1E6981E60];
  v14 = MEMORY[0x1E6981E70];
  CustomProgressView.init(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:)(0, 1, 1, v12, v16, a2, MEMORY[0x1E6981E70], a3, a4, MEMORY[0x1E6981E60]);
  (*(v9 + 8))(a1, v8);
  v16[0] = a2;
  v16[1] = v14;
  v16[2] = a3;
  v16[3] = v13;
  type metadata accessor for ProgressView.Base(0, v16);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView<>.init(label:)@<X0>(void (*a1)(double)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Optional();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - v10;
  a1(v9);
  (*(*(a2 - 8) + 56))(v11, 0, 1, a2);
  return ProgressView<>.init(label:)(v11, a2, a3, a4);
}

uint64_t ProgressView<>.init<>(_:)@<X0>(uint64_t a5@<X8>)
{
  v6 = Text.init(_:tableName:bundle:comment:)();
  v8 = v7;
  v10 = v9;
  v12 = v11 & 1;
  v13 = MEMORY[0x1E6981148];
  v14 = MEMORY[0x1E6981138];
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for CustomProgressView<Text, EmptyView>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for CustomProgressView);
  v16 = v15[14];
  v17 = (a5 + v15[13]);
  v18 = v15[15];
  *a5 = 0;
  *(a5 + 8) = 257;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  *v17 = v6;
  v17[1] = v8;
  v17[2] = v12;
  v17[3] = v10;
  *(a5 + v16) = 1;
  *(a5 + v18) = 0;
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for ProgressView<Text, EmptyView>.Base, v13, v14, type metadata accessor for ProgressView.Base);

  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView<>.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v8);
  v10 = Text.init<A>(_:)();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v7 + 8))(a1, a2);
  v17 = MEMORY[0x1E6981148];
  v18 = MEMORY[0x1E6981138];
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for CustomProgressView<Text, EmptyView>, MEMORY[0x1E6981148], MEMORY[0x1E6981138], type metadata accessor for CustomProgressView);
  v20 = v19[14];
  v21 = (a4 + v19[13]);
  v22 = v19[15];
  *a4 = 0;
  *(a4 + 8) = 257;
  type metadata accessor for ProgressViewValue(0);
  swift_storeEnumTagMultiPayload();
  *v21 = v10;
  v21[1] = v12;
  v21[2] = v14 & 1;
  v21[3] = v16;
  *(a4 + v20) = 1;
  *(a4 + v22) = 0;
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for ProgressView<Text, EmptyView>.Base, v17, v18, type metadata accessor for ProgressView.Base);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView<>.init<A>(label:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v22 = a1;
  v23 = a6;
  v24 = a7;
  v25 = a5;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v22 - v18;
  (*(v16 + 16))(&v22 - v18, a1, v15, v17);
  LOBYTE(v26[0]) = 0;
  (*(v12 + 16))(v14, a2, v11);
  v20 = MEMORY[0x1E6981E70];
  CustomProgressView.init<A>(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:actions:)(0, 1, 1, v19, v26, v14, a3, MEMORY[0x1E6981E70], v24, a4, v25, MEMORY[0x1E6981E60], v23);
  (*(v12 + 8))(a2, v11);
  (*(v16 + 8))(v22, v15);
  v26[0] = a3;
  v26[1] = v20;
  v26[2] = v25;
  v26[3] = MEMORY[0x1E6981E60];
  type metadata accessor for ProgressView.Base(0, v26);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView<>.init<A>(label:actions:)@<X0>(void (*a1)(double)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v23 = a6;
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for Optional();
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v22 - v18;
  a1(v17);
  v20 = (*(*(a3 - 8) + 56))(v19, 0, 1, a3);
  a2(v20);
  (*(*(a4 - 8) + 56))(v15, 0, 1, a4);
  return ProgressView<>.init<A>(label:actions:)(v19, v15, a3, a4, a5, v23, a7);
}

uint64_t ProgressView<>.init<A>(_:actions:)@<X0>(void (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v20[-1] - v13;
  v20[0] = Text.init(_:tableName:bundle:comment:)();
  v20[1] = v15;
  v20[2] = v16 & 1;
  v20[3] = v17;
  a5();
  (*(*(a6 - 8) + 56))(v14, 0, 1, a6);
  return ProgressView<>.init<A>(label:actions:)(v20, v14, MEMORY[0x1E6981148], a6, MEMORY[0x1E6981138], a7, a8);
}

uint64_t ProgressView<>.init<A, B>(_:actions:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v24 = a6;
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v15 = *(a3 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v15 + 16))(&v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3, v17);
  v25[0] = Text.init<A>(_:)();
  v25[1] = v19;
  v25[2] = v20 & 1;
  v25[3] = v21;
  a2();
  (*(*(a4 - 8) + 56))(v14, 0, 1, a4);
  ProgressView<>.init<A>(label:actions:)(v25, v14, MEMORY[0x1E6981148], a4, MEMORY[0x1E6981138], v24, a7);
  return (*(v15 + 8))(a1, a3);
}

uint64_t ProgressView.init(label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v26 = a5;
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v16 = type metadata accessor for Optional();
  v17.n128_f64[0] = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - v18;
  v20 = *(a3 - 8);
  (*(v20 + 16))(&v25 - v18, a1, a3, v17);
  (*(v20 + 56))(v19, 0, 1, a3);
  v21 = *(a4 - 8);
  (*(v21 + 16))(v15, a2, a4);
  (*(v21 + 56))(v15, 0, 1, a4);
  v22 = v15;
  v23 = v26;
  CustomProgressView.init(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:)(0, 1, 1, v19, v22, a3, a4, v26, a7, a6);
  (*(v21 + 8))(a2, a4);
  (*(v20 + 8))(a1, a3);
  v27[0] = a3;
  v27[1] = a4;
  v27[2] = v23;
  v27[3] = a6;
  type metadata accessor for ProgressView.Base(0, v27);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init(label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v19(v16);
  a2(v20);
  return ProgressView.init(label:currentValueLabel:)(v18, v14, a3, a4, a5, a6, a7);
}

uint64_t ProgressView.init<>(_:currentValueLabel:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X4>, uint64_t a3@<X6>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = Text.init(_:tableName:bundle:comment:)();
  v16[1] = v11;
  v17 = v12 & 1;
  v18 = v13;
  a2();
  return ProgressView.init(label:currentValueLabel:)(v16, v10, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981138], a4, a5);
}

uint64_t ProgressView.init<A>(_:currentValueLabel:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a7@<X8>)
{
  v25 = a5;
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v15 + 16))(&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19, v17);
  v26[0] = Text.init<A>(_:)();
  v26[1] = v20;
  v27 = v21 & 1;
  v28 = v22;
  a2();
  ProgressView.init(label:currentValueLabel:)(v26, v13, MEMORY[0x1E6981148], a3, MEMORY[0x1E6981138], v25, a7);
  return (*(v15 + 8))(a1, a4);
}

uint64_t ProgressView.init<A>(label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v38 = a7;
  v39 = a8;
  v32 = a3;
  v34 = a2;
  v35 = a1;
  v37 = a9;
  v36 = a10;
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v19 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v32 - v20;
  v22 = type metadata accessor for Optional();
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v32 - v24;
  v26 = *(a4 - 8);
  (*(v26 + 16))(&v32 - v24, a1, a4, v23);
  (*(v26 + 56))(v25, 0, 1, a4);
  v27 = *(a5 - 8);
  v28 = *(v27 + 16);
  v33 = v21;
  v28(v21, a2, a5);
  (*(v27 + 56))(v21, 0, 1, a5);
  v29 = *(a6 - 8);
  (*(v29 + 16))(v18, a3, a6);
  (*(v29 + 56))(v18, 0, 1, a6);
  v30 = v38;
  CustomProgressView.init<A>(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:actions:)(0, 1, 1, v25, v33, v18, a4, a5, v37, a6, v38, v39, v36);
  (*(v29 + 8))(v32, a6);
  (*(v27 + 8))(v34, a5);
  (*(v26 + 8))(v35, a4);
  v40[0] = a4;
  v40[1] = a5;
  v40[2] = v30;
  v40[3] = v39;
  type metadata accessor for ProgressView.Base(0, v40);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init<A>(label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v29 = a4;
  v30 = a3;
  v31 = a7;
  v32 = a9;
  v28 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v23(v20);
  v25 = a2(v24);
  v30(v25);
  return ProgressView.init<A>(label:currentValueLabel:actions:)(v22, v18, v15, a5, a6, a8, v32, v28, v31, a11);
}

uint64_t ProgressView.init<A>(_:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X4>, void (*a3)(uint64_t)@<X6>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = a4;
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = Text.init(_:tableName:bundle:comment:)();
  v21[1] = v15;
  v22 = v16 & 1;
  v23 = v17;
  v18 = a2();
  a3(v18);
  return ProgressView.init<A>(label:currentValueLabel:actions:)(v21, v14, v11, MEMORY[0x1E6981148], a5, a6, MEMORY[0x1E6981138], a7, v20, a8);
}

uint64_t ProgressView.init<A, B>(_:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v33 = a4;
  v34 = a3;
  v36 = a8;
  v31 = a2;
  v32 = a11;
  v35 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v20 - 8);
  v23 = MEMORY[0x1EEE9AC00](v22);
  (*(v21 + 16))(&v31 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v25, v23);
  v37[0] = Text.init<A>(_:)();
  v37[1] = v26;
  v38 = v27 & 1;
  v39 = v28;
  v29 = v31(v37[0]);
  v34(v29);
  ProgressView.init<A>(label:currentValueLabel:actions:)(v37, v19, v16, MEMORY[0x1E6981148], a5, a7, MEMORY[0x1E6981138], v35, v36, v32);
  return (*(v21 + 8))(a1, a6);
}

uint64_t ProgressView.init<A>(value:total:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, double a6@<X5>, uint64_t a7@<X6>, double a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v88 = a8;
  v89 = a4;
  v90 = a3;
  v92 = a2;
  v94 = a9;
  v95 = a10;
  v87 = a6;
  v86 = type metadata accessor for Optional();
  v83 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v84 = &v69 - v14;
  v85 = a5;
  v82 = type metadata accessor for Optional();
  v79 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v69 - v15;
  v72 = a11;
  v75 = *(a11 + 16);
  v16 = *(*(*(v75 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v69 - v18;
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v69 - v22;
  v24 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v69 - v30;
  v32 = *(v21 + 16);
  v91 = a1;
  v33 = a1;
  v35 = v34;
  v32(v23, v33, v34, v29);
  v36 = (*(v24 + 48))(v23, 1, a7);
  v80 = v24;
  v93 = a7;
  v78 = v35;
  if (v36 == 1)
  {
    (*(v21 + 8))(v23, v35);
    v37 = 0;
    LODWORD(v77) = 1;
    v38 = v21;
  }

  else
  {
    (*(v24 + 32))(v31, v23, a7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v71 = v19;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v39 = *(*(v75 + 24) + 8);
    v76 = v31;
    v73 = v39;
    v40 = dispatch thunk of static Comparable.< infix(_:_:)();
    v77 = *(v24 + 8);
    v77(v27, a7);
    if (v40 & 1) != 0 || (dispatch thunk of static Comparable.> infix(_:_:)())
    {
      v41 = static os_log_type_t.fault.getter();
      v42 = a7;
      v43 = static Log.runtimeIssuesLog.getter();

      a7 = v42;
    }

    v70 = v21;
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v44 = dispatch thunk of static Comparable.>= infix(_:_:)();
    v77(v27, a7);
    if (v44 & 1) != 0 && (dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v45 = v93, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v46 = dispatch thunk of static Comparable.>= infix(_:_:)(), v77(v27, v45), (v46) && ((dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v47 = v93, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v48 = dispatch thunk of static Equatable.== infix(_:_:)(), v77(v27, v47), (v48 & 1) == 0) || (dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), v49 = v93, dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v50 = dispatch thunk of static Equatable.== infix(_:_:)(), v77(v27, v49), (v50 & 1) == 0)))
    {
      v66 = v76;
      v67 = v93;
      dispatch thunk of static FloatingPoint./ infix(_:_:)();
      lazy protocol witness table accessor for type Double and conformance Double();
      BinaryFloatingPoint.init<A>(_:)();
      v77(v66, v67);
      LODWORD(v77) = 0;
      v68 = v96[0];
      if (v96[0] < 0.0)
      {
        v68 = 0.0;
      }

      if (v68 > 1.0)
      {
        v68 = 1.0;
      }

      v37 = *&v68;
    }

    else
    {
      v77(v76, v93);
      v37 = 0;
      LODWORD(v77) = 1;
    }

    v38 = v70;
  }

  v51 = v79;
  v52 = v81;
  v53 = v82;
  v54 = v90;
  (*(v79 + 16))(v81, v90, v82);
  v55 = v83;
  v56 = v84;
  v57 = v89;
  v58 = v86;
  (*(v83 + 16))(v84, v89, v86);
  v59 = v37;
  v60 = v52;
  v61 = v56;
  v62 = v85;
  v64 = v87;
  v63 = v88;
  CustomProgressView.init(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:)(v59, v77, 0, v60, v61, *&v85, *&v87, *&v88, v94, v95);
  (*(v55 + 8))(v57, v58);
  (*(v51 + 8))(v54, v53);
  (*(v80 + 8))(v92, v93);
  (*(v38 + 8))(v91, v78);
  v96[0] = v62;
  v96[1] = v64;
  v96[2] = v63;
  *&v96[3] = v95;
  type metadata accessor for ProgressView.Base(0, v96);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init<A>(value:total:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for Optional();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19[-v16];
  (*(v14 + 16))(&v19[-v16], a1, v13, v15);
  (*(v10 + 16))(v12, a2, a3);
  v21 = 1;
  v20 = 1;
  ProgressView.init<A>(value:total:label:currentValueLabel:)(v17, v12, &v21, &v20, MEMORY[0x1E6981E70], MEMORY[0x1E6981E70], a3, MEMORY[0x1E6981E60], a5, MEMORY[0x1E6981E60], a4);
  (*(v10 + 8))(a2, a3);
  return (*(v14 + 8))(a1, v13);
}

uint64_t ProgressView.init<A>(value:total:label:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, double a5@<X4>, uint64_t a6@<X5>, double a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v30 = a3;
  v31 = a8;
  v32 = a9;
  v33 = a7;
  v28 = a1;
  v29 = a4;
  v13 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - v14;
  v16 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Optional();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  (*(v21 + 16))(&v27 - v23, a1, v20, v22);
  v25 = (*(v16 + 16))(v19, a2, a6);
  v30(v25);
  (*(*(*&a5 - 8) + 56))(v15, 0, 1, COERCE_DOUBLE(*&a5));
  v34 = 1;
  ProgressView.init<A>(value:total:label:currentValueLabel:)(v24, v19, v15, &v34, a5, MEMORY[0x1E6981E70], a6, v33, v32, MEMORY[0x1E6981E60], v31);
  (*(v16 + 8))(a2, a6);
  return (*(v21 + 8))(v28, v20);
}

uint64_t ProgressView.init<A>(value:total:label:currentValueLabel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, double a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, double a11, uint64_t a12, uint64_t a13)
{
  v39 = a8;
  v40 = a6;
  v37 = a4;
  v38 = a3;
  v36 = a1;
  v44 = a9;
  v43 = a12;
  v41 = a5;
  v42 = a13;
  v45 = a11;
  v16 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v34 - v17;
  v19 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v34 - v20;
  v22 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v34 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for Optional();
  v26 = *(v35 - 8);
  v27 = MEMORY[0x1EEE9AC00](v35);
  v29 = &v34 - v28;
  (*(v26 + 16))(&v34 - v28, a1, v27);
  v30 = (*(v22 + 16))(v25, a2, a10);
  v38(v30);
  v31 = (*(*(*&a7 - 8) + 56))(v21, 0, 1, COERCE_DOUBLE(*&a7));
  v41(v31);
  v32 = *&v39;
  (*(*(v39 - 8) + 56))(v18, 0, 1, v39);
  ProgressView.init<A>(value:total:label:currentValueLabel:)(v29, v25, v21, v18, a7, v32, a10, v45, v44, v43, v42);
  (*(v22 + 8))(a2, a10);
  return (*(v26 + 8))(v36, v35);
}

uint64_t ProgressView.init<A>(_:value:total:)@<X0>(uint64_t a1@<X0>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v25 = a4;
  v26 = a8;
  v24[1] = a3;
  v27 = a9;
  v12 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Optional();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = v24 - v18;
  (*(v16 + 16))(v24 - v18, a5, v15, v17);
  (*(v12 + 16))(v14, a6, a7);
  v29[0] = Text.init(_:tableName:bundle:comment:)();
  v29[1] = v21;
  v29[2] = v20 & 1;
  v29[3] = v22;
  v28 = 1;
  ProgressView.init<A>(value:total:label:currentValueLabel:)(v19, v14, v29, &v28, MEMORY[0x1E6981148], MEMORY[0x1E6981E70], a7, MEMORY[0x1E6981138], v27, MEMORY[0x1E6981E60], v26);
  (*(v12 + 8))(a6, a7);
  return (*(v16 + 8))(a5, v15);
}

uint64_t ProgressView.init<A, B>(_:value:total:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a6;
  v33 = a7;
  v30 = a2;
  v31 = a3;
  v34 = a8;
  v35 = a1;
  v11 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Optional();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  (*(v20 + 16))(&v29 - v22, a2, v19, v21);
  v24 = v31;
  (*(v15 + 16))(v18, v31, a5);
  (*(v11 + 16))(v13, v35, a4);
  v37[0] = Text.init<A>(_:)();
  v37[1] = v26;
  v37[2] = v25 & 1;
  v37[3] = v27;
  v36 = 1;
  ProgressView.init<A>(value:total:label:currentValueLabel:)(v23, v18, v37, &v36, MEMORY[0x1E6981148], MEMORY[0x1E6981E70], a5, MEMORY[0x1E6981138], v34, MEMORY[0x1E6981E60], v33);
  (*(v15 + 8))(v24, a5);
  (*(v20 + 8))(v30, v19);
  return (*(v11 + 8))(v35, a4);
}

uint64_t ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double a6@<X5>, double a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v88 = a5;
  v89 = a4;
  v94 = a9;
  v95 = a3;
  v91 = a2;
  v92 = a12;
  v96 = a11;
  v84 = a10;
  v85 = a14;
  v83 = type metadata accessor for Optional();
  v75 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v68 - v18;
  v87 = a7;
  v74 = type metadata accessor for Optional();
  v81 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v80 = v68 - v19;
  v86 = a6;
  v93 = type metadata accessor for Optional();
  v78 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v77 = v68 - v20;
  v68[4] = a13;
  v71 = *(a13 + 16);
  v21 = *(*(*(v71 + 16) + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = v68 - v23;
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = v68 - v27;
  v29 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = v68 - v35;
  v37 = *(v26 + 16);
  v90 = a1;
  v38 = a1;
  v40 = v39;
  v37(v28, v38, v39, v34);
  v41 = (*(v29 + 48))(v28, 1, a8);
  v79 = v40;
  v76 = v29;
  v73 = v26;
  v72 = a8;
  if (v41 == 1)
  {
    (*(v26 + 8))(v28, v40);
LABEL_11:
    v70 = 0;
    LODWORD(v71) = 1;
    goto LABEL_12;
  }

  (*(v29 + 32))(v36, v28, a8);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v68[1] = AssociatedTypeWitness;
  v68[0] = AssociatedConformanceWitness;
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v68[2] = v24;
  v68[3] = v21;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v70 = *(*(v71 + 24) + 8);
  v43 = dispatch thunk of static Comparable.< infix(_:_:)();
  v44 = *(v29 + 8);
  v44(v32, a8);
  if (v43 & 1) != 0 || (dispatch thunk of static Comparable.> infix(_:_:)())
  {
    v45 = static os_log_type_t.fault.getter();
    v46 = static Log.runtimeIssuesLog.getter();
  }

  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v69 = v36;
  v47 = dispatch thunk of static Comparable.>= infix(_:_:)();
  v44(v32, a8);
  if (v47 & 1) == 0 || (dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v48 = dispatch thunk of static Comparable.>= infix(_:_:)(), v44(v32, a8), (v48 & 1) == 0) || (dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v49 = dispatch thunk of static Equatable.== infix(_:_:)(), v44(v32, a8), (v49) && (dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v50 = dispatch thunk of static Equatable.== infix(_:_:)(), v44(v32, a8), (v50))
  {
    v44(v69, a8);
    goto LABEL_11;
  }

  v66 = v69;
  dispatch thunk of static FloatingPoint./ infix(_:_:)();
  lazy protocol witness table accessor for type Double and conformance Double();
  BinaryFloatingPoint.init<A>(_:)();
  v44(v66, a8);
  LODWORD(v71) = 0;
  v67 = v97[0];
  if (v97[0] < 0.0)
  {
    v67 = 0.0;
  }

  if (v67 > 1.0)
  {
    v67 = 1.0;
  }

  v70 = *&v67;
LABEL_12:
  v51 = v78;
  v52 = v77;
  (*(v78 + 16))(v77, v95, v93);
  v53 = v80;
  v54 = v81;
  v55 = v89;
  v56 = v74;
  (*(v81 + 16))(v80, v89, v74);
  v57 = v75;
  v58 = v82;
  v59 = v83;
  v60 = v88;
  (*(v75 + 16))(v82, v88, v83);
  v61 = v53;
  v62 = v58;
  v64 = v86;
  v63 = v87;
  CustomProgressView.init<A>(fractionCompleted:alwaysIndeterminate:label:currentValueLabel:actions:)(v70, v71, 0, v52, v61, v62, *&v86, *&v87, v94, v84, v96, v92, v85);
  (*(v57 + 8))(v60, v59);
  (*(v54 + 8))(v55, v56);
  (*(v51 + 8))(v95, v93);
  (*(v76 + 8))(v91, v72);
  (*(v73 + 8))(v90, v79);
  v97[0] = v64;
  v97[1] = v63;
  *&v97[2] = v96;
  *&v97[3] = v92;
  type metadata accessor for ProgressView.Base(0, v97);
  return swift_storeEnumTagMultiPayload();
}

uint64_t ProgressView.init<A, B>(value:total:label:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v39 = a7;
  v40 = a1;
  v45 = a6;
  v46 = a5;
  v42 = a4;
  v43 = a3;
  v41 = a2;
  v50 = a9;
  v47 = a13;
  v48 = a12;
  v49 = a11;
  v44 = a10;
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v38 - v16;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v38 - v19;
  v21 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a8;
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v38 - v28;
  (*(v26 + 16))(&v38 - v28, a1, v25, v27);
  v30 = v41;
  v31 = (*(v21 + 16))(v24, v41, a8);
  v43(v31);
  v32 = *&v39;
  v33 = (*(*(v39 - 8) + 56))(v20, 0, 1, v39);
  v51 = 0;
  v46(v33);
  v34 = v44;
  (*(*(v44 - 8) + 56))(v17, 0, 1);
  v37 = v34;
  v35 = v38;
  ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)(v29, v24, v20, &v51, v17, v32, MEMORY[0x1E6981E70], v38, v50, v37, v49, MEMORY[0x1E6981E60], v48, v47);
  (*(v21 + 8))(v30, v35);
  return (*(v26 + 8))(v40, v25);
}

uint64_t ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t)@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14, uint64_t a15, uint64_t a16)
{
  v55 = a8;
  v56 = a7;
  v52 = a5;
  v53 = a6;
  v49 = a4;
  v50 = a3;
  v60 = a9;
  v59 = a14;
  v57 = a16;
  v58 = a15;
  v47 = a1;
  v48 = a11;
  v54 = a13;
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v51 = &v43 - v19;
  v20 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v43 - v21;
  v23 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v43 - v24;
  v26 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v43 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a12;
  v46 = type metadata accessor for Optional();
  v30 = *(v46 - 8);
  v31 = MEMORY[0x1EEE9AC00](v46);
  v33 = &v43 - v32;
  (*(v30 + 16))(&v43 - v32, a1, v31);
  v34 = (*(v26 + 16))(v29, a2, a12);
  v50(v34);
  v44 = a10;
  v35 = (*(*(*&v44 - 8) + 56))(v25, 0, 1, COERCE_DOUBLE(*&v44));
  v52(v35);
  v36 = *&v48;
  v37 = (*(*(v48 - 8) + 56))(v22, 0, 1, v48);
  v38 = v51;
  v56(v37);
  v39 = v54;
  (*(*(v54 - 8) + 56))(v38, 0, 1);
  v42 = v39;
  v40 = v45;
  ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)(v33, v29, v25, v22, v38, v44, v36, v45, v60, v42, v59, *(&v59 + 1), v58, v57);
  (*(v26 + 8))(a2, v40);
  return (*(v30 + 8))(v47, v46);
}

uint64_t ProgressView.init<A, B>(_:value:total:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v35 = a8;
  v36 = a7;
  v33 = a4;
  v34 = a5;
  v32 = a3;
  v31[0] = a1;
  v31[1] = a2;
  v39 = a9;
  v37 = a13;
  v38 = a12;
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v31 - v16;
  v18 = *(a10 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Optional();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v31 - v25;
  (*(v23 + 16))(v31 - v25, a5, v22, v24);
  (*(v18 + 16))(v21, a6, a10);
  v41[0] = Text.init(_:tableName:bundle:comment:)();
  v41[1] = v27;
  v41[2] = v28 & 1;
  v41[3] = v29;
  v40 = 0;
  (v36)(v41[0], v27);
  (*(*(a11 - 8) + 56))(v17, 0, 1, a11);
  ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)(v26, v21, v41, &v40, v17, MEMORY[0x1E6981148], MEMORY[0x1E6981E70], a10, v39, a11, MEMORY[0x1E6981138], MEMORY[0x1E6981E60], v38, v37);
  (*(v18 + 8))(a6, a10);
  return (*(v23 + 8))(v34, v22);
}

uint64_t ProgressView.init<A, B, C>(_:value:total:actions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v45 = a8;
  v46 = a5;
  v40 = a6;
  v42 = a2;
  v43 = a3;
  v50 = a9;
  v51 = a1;
  v47 = a4;
  v48 = a12;
  v49 = a11;
  v44 = a10;
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v40 - v16;
  v41 = *(a6 - 8);
  v18 = v41;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Optional();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v40 - v29;
  (*(v27 + 16))(&v40 - v29, a2, v26, v28);
  v31 = v43;
  (*(v22 + 16))(v25, v43, a7);
  v32 = *(v18 + 16);
  v33 = v40;
  v32(v21, v51, v40);
  v34 = v33;
  v53[0] = Text.init<A>(_:)();
  v53[1] = v35;
  v53[2] = v36 & 1;
  v53[3] = v37;
  v52 = 0;
  v47();
  v38 = v45;
  (*(*(v45 - 8) + 56))(v17, 0, 1);
  ProgressView.init<A, B>(value:total:label:currentValueLabel:actions:)(v30, v25, v53, &v52, v17, MEMORY[0x1E6981148], MEMORY[0x1E6981E70], a7, v50, v38, MEMORY[0x1E6981138], MEMORY[0x1E6981E60], v49, v48);
  (*(v22 + 8))(v31, a7);
  (*(v27 + 8))(v42, v26);
  return (*(v41 + 8))(v51, v34);
}

uint64_t ProgressView.init<>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  type metadata accessor for CustomProgressView<EmptyView, EmptyView>(0, &lazy cache variable for type metadata for ProgressView<EmptyView, EmptyView>.Base, MEMORY[0x1E6981E70], MEMORY[0x1E6981E60], type metadata accessor for ProgressView.Base);
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;

  return swift_storeEnumTagMultiPayload();
}

{
  v4 = type metadata accessor for ProgressViewStyleConfiguration(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ProgressViewValue(a1, v7, type metadata accessor for ProgressViewStyleConfiguration);
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base(0, &lazy cache variable for type metadata for CustomProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>, type metadata accessor for CustomProgressView);
  v9 = v8;
  v10 = *(v8 + 52);
  *(a2 + v10) = 1;
  v11 = *(v8 + 56);
  *(a2 + v11) = 1;
  outlined init with copy of ProgressViewValue(v7, a2, type metadata accessor for ProgressViewValue);
  *(a2 + v10) = v7[v5[9]];
  *(a2 + v11) = v7[v5[10]];
  if (v7[v5[11]])
  {
    _sSNy10Foundation4DateVGWOhTm_1(v7, type metadata accessor for ProgressViewStyleConfiguration);
    v12 = 0;
  }

  else
  {
    v12 = AnyView.init<A>(_:)();
    _sSNy10Foundation4DateVGWOhTm_1(v7, type metadata accessor for ProgressViewStyleConfiguration);
  }

  *(a2 + *(v9 + 60)) = v12;
  _sSNy10Foundation4DateVGWOhTm_1(a1, type metadata accessor for ProgressViewStyleConfiguration);
  type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base(0, &lazy cache variable for type metadata for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base, type metadata accessor for ProgressView.Base);
  return swift_storeEnumTagMultiPayload();
}

void type metadata accessor for ProgressView<ProgressViewStyleConfiguration.Label, ProgressViewStyleConfiguration.CurrentValueLabel>.Base(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void *))
{
  if (!*a2)
  {
    v8[6] = v3;
    v8[7] = v4;
    v8[0] = &type metadata for ProgressViewStyleConfiguration.Label;
    v8[1] = &type metadata for ProgressViewStyleConfiguration.CurrentValueLabel;
    v8[2] = &protocol witness table for ProgressViewStyleConfiguration.Label;
    v8[3] = &protocol witness table for ProgressViewStyleConfiguration.CurrentValueLabel;
    v6 = a3(0, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t initializeWithTake for ProgressView(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  if ((v11 + 1) > 0xA)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 10;
  }

  v13 = *(a3 + 16);
  v14 = *(a3 + 24);
  v15 = *(v13 - 8);
  v16 = *(v15 + 80);
  v17 = v12 + v16 + 1;
  if (*(v15 + 84))
  {
    v18 = *(v15 + 64);
  }

  else
  {
    v18 = *(v15 + 64) + 1;
  }

  v19 = *(v14 - 8);
  v20 = *(v19 + 80);
  v21 = (v18 + v20 + (v17 & ~v16)) & ~v20;
  if (*(v19 + 84))
  {
    v22 = *(*(v14 - 8) + 64);
  }

  else
  {
    v22 = *(*(v14 - 8) + 64) + 1;
  }

  if (((v22 + 7 + v21) & 0xFFFFFFFFFFFFFFF8) + 8 <= 0x40)
  {
    v23 = 64;
  }

  else
  {
    v23 = ((v22 + 7 + v21) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v24 = *(a2 + v23);
  if (v24 >= 2 && v23 != 0)
  {
    v24 = *a2 + 2;
  }

  if (v24 == 1)
  {
    v26 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 16) = v26;
    v27 = *(a2 + 3);
    *(a1 + 32) = *(a2 + 2);
    *(a1 + 48) = v27;
    goto LABEL_46;
  }

  v28 = *(a2 + v12);
  v29 = v28 - 2;
  if (v28 >= 2)
  {
    if (v12 <= 3)
    {
      v30 = v12;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *a2;
        if (v12 < 4)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v30 == 3)
        {
          v31 = *a2 | (*(a2 + 2) << 16);
          if (v12 < 4)
          {
            goto LABEL_35;
          }

          goto LABEL_33;
        }

        v31 = *a2;
        if (v12 < 4)
        {
LABEL_35:
          v28 = (v31 | (v29 << (8 * v12))) + 2;
          goto LABEL_36;
        }
      }

LABEL_33:
      v28 = v31 + 2;
      goto LABEL_36;
    }

    if (v30)
    {
      v31 = *a2;
      if (v12 < 4)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }
  }

LABEL_36:
  __n = v18;
  v54 = v13;
  v32 = ~v16;
  v55 = *(v14 - 8);
  v56 = v22 + 7;
  v52 = v22;
  if (v28 == 1)
  {
    v51 = v23;
    v33 = ~v9;
    v34 = *(v7 + 32);
    v35 = v6;
    v49 = *(v13 - 8);
    v50 = v12 + v16 + 1;
    v36 = v11;
    v48 = v12;
    v34(a1, a2, v6);
    v37 = (v10 + a1) & v33;
    v38 = (a2 + v10) & v33;
    v23 = v51;
    v34(v37, v38, v35);
    v17 = v50;
    *(v36 + a1) = *(a2 + v36);
    v12 = v48;
    v15 = v49;
    v39 = 1;
  }

  else
  {
    v39 = 0;
    *a1 = *a2;
    *(a1 + 8) = a2[4];
  }

  v40 = ~v20;
  *(a1 + v12) = v39;
  v41 = ((v17 + a1) & v32);
  v42 = ((a2 + v17) & v32);
  if ((*(v15 + 48))(v42, 1, v54))
  {
    v43 = __n;
    memcpy(v41, v42, __n);
  }

  else
  {
    (*(v15 + 32))(v41, v42, v54);
    (*(v15 + 56))(v41, 0, 1, v54);
    v43 = __n;
  }

  v44 = &v42[v43];
  v45 = ((v41 + v43 + v20) & v40);
  v46 = (&v44[v20] & v40);
  if ((*(v55 + 48))(v46, 1, v14))
  {
    memcpy(v45, v46, v52);
  }

  else
  {
    (*(v55 + 32))(v45, v46, v14);
    (*(v55 + 56))(v45, 0, 1, v14);
  }

  LOBYTE(v24) = 0;
  *((v45 + v56) & 0xFFFFFFFFFFFFFFF8) = *((v46 + v56) & 0xFFFFFFFFFFFFFFF8);
LABEL_46:
  *(a1 + v23) = v24;
  return a1;
}

unsigned __int16 *assignWithTake for ProgressView(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v54 = type metadata accessor for Date();
    v6 = *(*(v54 - 8) + 64);
    v53 = *(v54 - 8);
    v7 = *(v53 + 80);
    v52 = v6 + v7;
    v8 = ((v6 + v7) & ~v7) + v6;
    v50 = v8;
    if ((v8 + 1) > 0xA)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 10;
    }

    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    v12 = *(v10 - 8);
    v13 = *(v12 + 80);
    v58 = v9 + v13 + 1;
    if (*(v12 + 84))
    {
      v14 = *(v12 + 64);
    }

    else
    {
      v14 = *(v12 + 64) + 1;
    }

    v15 = *(v11 - 8);
    v16 = *(v15 + 80);
    __n = v14;
    v17 = (v14 + v16 + (v58 & ~v13)) & ~v16;
    v61 = v15;
    if (*(v15 + 84))
    {
      v18 = *(*(v11 - 8) + 64);
    }

    else
    {
      v18 = *(*(v11 - 8) + 64) + 1;
    }

    v59 = v18 + 7;
    v19 = 64;
    if (((v18 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x40)
    {
      v19 = ((v18 + 7 + v17) & 0xFFFFFFFFFFFFFFF8) + 8;
    }

    v20 = *(a1 + v19);
    v62 = v19;
    v21 = v19;
    if (v20 >= 2 && v19 != 0)
    {
      v20 = *a1 + 2;
    }

    v51 = ~v7;
    v57 = ~v13;
    v56 = ~v16;
    if (v20 == 1)
    {
      v23 = *(a3 + 16);

      if (*(a1 + 4))
      {
      }

      goto LABEL_45;
    }

    v24 = *(a1 + v9);
    v25 = v24 - 2;
    if (v24 >= 2)
    {
      if (v9 <= 3)
      {
        v26 = v9;
      }

      else
      {
        v26 = 4;
      }

      if (v26 > 1)
      {
        if (v26 == 2)
        {
          v27 = *a1;
          if (v9 < 4)
          {
            goto LABEL_37;
          }
        }

        else
        {
          if (v26 == 3)
          {
            v27 = *a1 | (*(a1 + 2) << 16);
            if (v9 < 4)
            {
              goto LABEL_37;
            }

            goto LABEL_35;
          }

          v27 = *a1;
          if (v9 < 4)
          {
LABEL_37:
            v24 = (v27 | (v25 << (8 * v9))) + 2;
            goto LABEL_38;
          }
        }

LABEL_35:
        v24 = v27 + 2;
        goto LABEL_38;
      }

      if (v26)
      {
        v27 = *a1;
        if (v9 < 4)
        {
          goto LABEL_37;
        }

        goto LABEL_35;
      }
    }

LABEL_38:
    v55 = v18;
    if (v24 == 1)
    {
      v28 = *(a3 + 16);
      v29 = v11;
      v30 = *(v53 + 8);
      v30(a1, v54);
      v30(((a1 + v52) & v51), v54);
      v11 = v29;
      v10 = v28;
    }

    v31 = (a1 + v58) & v57;
    v23 = v10;
    if (!(*(v12 + 48))(v31, 1, v10))
    {
      (*(v12 + 8))(v31, v23);
    }

    v32 = (v31 + __n + v16) & v56;
    if (!(*(v61 + 48))(v32, 1, v11))
    {
      (*(v61 + 8))(v32, v11);
    }

    v18 = v55;
LABEL_45:

    v33 = *(a2 + v62);
    if (v21)
    {
      v34 = v33 >= 2;
    }

    else
    {
      v34 = 0;
    }

    if (v34)
    {
      v33 = *a2 + 2;
    }

    if (v33 == 1)
    {
      v35 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v35;
      v36 = *(a2 + 3);
      *(a1 + 2) = *(a2 + 2);
      *(a1 + 3) = v36;
LABEL_79:
      *(a1 + v62) = v33;
      return a1;
    }

    v37 = *(a2 + v9);
    v38 = v37 - 2;
    if (v37 >= 2)
    {
      if (v9 <= 3)
      {
        v39 = v9;
      }

      else
      {
        v39 = 4;
      }

      if (v39 > 1)
      {
        if (v39 == 2)
        {
          v40 = *a2;
          if (v9 < 4)
          {
            goto LABEL_68;
          }
        }

        else
        {
          if (v39 == 3)
          {
            v40 = *a2 | (*(a2 + 2) << 16);
            if (v9 < 4)
            {
              goto LABEL_68;
            }

            goto LABEL_66;
          }

          v40 = *a2;
          if (v9 < 4)
          {
LABEL_68:
            v37 = (v40 | (v38 << (8 * v9))) + 2;
            goto LABEL_69;
          }
        }

LABEL_66:
        v37 = v40 + 2;
        goto LABEL_69;
      }

      if (v39)
      {
        v40 = *a2;
        if (v9 < 4)
        {
          goto LABEL_68;
        }

        goto LABEL_66;
      }
    }

LABEL_69:
    v49 = v11;
    if (v37 == 1)
    {
      v41 = *(v53 + 32);
      v41(a1, a2, v54);
      v41(((a1 + v52) & v51), ((a2 + v52) & v51), v54);
      *(a1 + v50) = *(a2 + v50);
      v42 = 1;
    }

    else
    {
      v42 = 0;
      *a1 = *a2;
      a1[4] = a2[4];
    }

    *(a1 + v9) = v42;
    v43 = ((a1 + v58) & v57);
    v44 = ((a2 + v58) & v57);
    if ((*(v12 + 48))(v44, 1, v23))
    {
      memcpy(v43, v44, __n);
    }

    else
    {
      (*(v12 + 32))(v43, v44, v23);
      (*(v12 + 56))(v43, 0, 1, v23);
    }

    v45 = &v44[__n];
    v46 = ((v43 + __n + v16) & v56);
    v47 = (&v45[v16] & v56);
    if ((*(v61 + 48))(v47, 1, v49))
    {
      memcpy(v46, v47, v18);
    }

    else
    {
      (*(v61 + 32))(v46, v47, v49);
      (*(v61 + 56))(v46, 0, 1, v49);
    }

    LOBYTE(v33) = 0;
    *((v46 + v59) & 0xFFFFFFFFFFFFFFF8) = *((v47 + v59) & 0xFFFFFFFFFFFFFFF8);
    goto LABEL_79;
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for ProgressView(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(type metadata accessor for Date() - 8);
  v7 = *(v6 + 64) + ((*(v6 + 64) + *(v6 + 80)) & ~*(v6 + 80));
  v8 = 10;
  if (v7 + 1 > 0xA)
  {
    v8 = v7 + 1;
  }

  v9 = *(*(a3 + 16) - 8);
  v10 = (v8 + *(v9 + 80) + 1) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(*(a3 + 24) - 8);
  v13 = *(v12 + 80);
  v14 = *(v12 + 84);
  v15 = *(v12 + 64);
  if (!*(v9 + 84))
  {
    ++v11;
  }

  v16 = (v11 + v13 + v10) & ~v13;
  if (!v14)
  {
    ++v15;
  }

  v17 = ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v17 <= 0x40)
  {
    v17 = 64;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_33;
  }

  v18 = v17 | 1;
  if ((v17 | 1) <= 3)
  {
    v19 = ((a2 + 1) >> 8) + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *&a1[v18];
      if (*&a1[v18])
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = *&a1[v18];
      if (v22)
      {
        goto LABEL_29;
      }
    }

LABEL_33:
    v26 = a1[v17];
    if (v26 >= 2)
    {
      return (v26 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v21)
  {
    goto LABEL_33;
  }

  v22 = a1[v18];
  if (!a1[v18])
  {
    goto LABEL_33;
  }

LABEL_29:
  v24 = (v22 - 1) << (8 * v18);
  if (v18 <= 3)
  {
    v25 = *a1;
  }

  else
  {
    v24 = 0;
    v25 = *a1;
  }

  return (v25 | v24) + 255;
}

void storeEnumTagSinglePayload for ProgressView(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v8 = *(type metadata accessor for Date() - 8);
  v9 = *(v8 + 64) + ((*(v8 + 64) + *(v8 + 80)) & ~*(v8 + 80));
  v10 = 10;
  if (v9 + 1 > 0xA)
  {
    v10 = v9 + 1;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = (v10 + *(v11 + 80) + 1) & ~*(v11 + 80);
  v13 = *(v11 + 64);
  v14 = *(*(a4 + 24) - 8);
  v15 = *(v14 + 80);
  v16 = *(v14 + 84);
  v17 = *(v14 + 64);
  if (!*(v11 + 84))
  {
    ++v13;
  }

  v18 = (v13 + v15 + v12) & ~v15;
  if (!v16)
  {
    ++v17;
  }

  v19 = ((v17 + v18 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v19 <= 0x40)
  {
    v19 = 64;
  }

  v20 = v19 | 1;
  if (a3 < 0xFF)
  {
    v23 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_22;
    }

LABEL_30:
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        *&a1[v20] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_40;
      }

      *&a1[v20] = 0;
    }

    else if (v23)
    {
      a1[v20] = 0;
      if (!a2)
      {
        return;
      }

LABEL_40:
      a1[v19] = -a2;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (v20 <= 3)
  {
    v21 = ((a3 + 1) >> 8) + 1;
  }

  else
  {
    v21 = 2;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_30;
  }

LABEL_22:
  v24 = a2 - 255;
  bzero(a1, v19 | 1);
  if (v20 <= 3)
  {
    v25 = (v24 >> 8) + 1;
  }

  else
  {
    v25 = 1;
  }

  if (v20 <= 3)
  {
    *a1 = v24;
    if (v23 > 1)
    {
LABEL_27:
      if (v23 == 2)
      {
        *&a1[v20] = v25;
      }

      else
      {
        *&a1[v20] = v25;
      }

      return;
    }
  }

  else
  {
    *a1 = v24;
    if (v23 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v23)
  {
    a1[v20] = v25;
  }
}

void *initializeBufferWithCopyOfBuffer for ProgressViewValue(void *a1, void *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *a1 = *a2;
    a1 = (v11 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 16);
    v8(a1, a2, v7);
    type metadata accessor for ClosedRange<Date>(0);
    v8((a1 + *(v9 + 36)), (a2 + *(v9 + 36)), v7);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    *(a1 + *(v10 + 48)) = *(a2 + *(v10 + 48));
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v13 = *(v6 + 64);

  return memcpy(a1, a2, v13);
}

uint64_t destroy for ProgressViewValue(uint64_t a1, uint64_t a2)
{
  result = swift_getEnumCaseMultiPayload();
  if (result == 1)
  {
    v4 = type metadata accessor for Date();
    v7 = *(*(v4 - 8) + 8);
    (v7)((v4 - 8), a1, v4);
    type metadata accessor for ClosedRange<Date>(0);
    v6 = a1 + *(v5 + 36);

    return v7(v6, v4);
  }

  return result;
}

_BYTE *initializeWithCopy for ProgressViewValue(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>(0);
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v11 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v11);
  }
}

_BYTE *assignWithCopy for ProgressViewValue(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _sSNy10Foundation4DateVGWOhTm_1(a1, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 16);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>(0);
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

_BYTE *initializeWithTake for ProgressViewValue(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 32);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>(0);
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v11 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v11);
  }
}

_BYTE *assignWithTake for ProgressViewValue(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  _sSNy10Foundation4DateVGWOhTm_1(a1, type metadata accessor for ProgressViewValue);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Date();
    v7 = *(*(v6 - 8) + 32);
    v7(a1, a2, v6);
    type metadata accessor for ClosedRange<Date>(0);
    v7(&a1[*(v8 + 36)], &a2[*(v8 + 36)], v6);
    type metadata accessor for (interval: ClosedRange<Date>, countdown: Bool)(0);
    a1[*(v9 + 48)] = a2[*(v9 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v11 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v11);
}

uint64_t initializeBufferWithCopyOfBuffer for CustomProgressView(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v9;
  v11 = v8 + v9;
  v12 = ((v8 + v10) & ~v10) + v8;
  if ((v12 + 1) > 0xA)
  {
    v13 = v12 + 1;
  }

  else
  {
    v13 = 10;
  }

  v14 = *(a3 + 16);
  v15 = *(a3 + 24);
  v16 = *(v14 - 8);
  v17 = *(v16 + 80);
  v18 = v13 + v17 + 1;
  if (*(v16 + 84))
  {
    v19 = *(v16 + 64);
  }

  else
  {
    v19 = *(v16 + 64) + 1;
  }

  v20 = *(v15 - 8);
  v21 = *(v20 + 80);
  v55 = v19;
  if (*(v20 + 84))
  {
    v22 = *(*(v15 - 8) + 64);
  }

  else
  {
    v22 = *(*(v15 - 8) + 64) + 1;
  }

  v23 = v17 | v9 | v21;
  v24 = (v17 | v9 | *(v20 + 80)) & 0x100000;
  if (v23 > 7 || v24 != 0 || ((v22 + 7 + ((v19 + v21 + (v18 & ~v17)) & ~v21)) & 0xFFFFFFFFFFFFFFF8) + 8 > 0x18)
  {
    v27 = *a2;
    *a1 = *a2;
    a1 = v27 + ((v23 & 0xF8 ^ 0x1F8) & (v23 + 16));
    goto LABEL_45;
  }

  v28 = *(a2 + v13);
  v29 = v28 - 2;
  if (v28 >= 2)
  {
    if (v13 <= 3)
    {
      v30 = v13;
    }

    else
    {
      v30 = 4;
    }

    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v31 = *a2;
        if (v13 < 4)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v30 == 3)
        {
          v31 = *a2 | (*(a2 + 2) << 16);
          if (v13 < 4)
          {
            goto LABEL_34;
          }

          goto LABEL_32;
        }

        v31 = *a2;
        if (v13 < 4)
        {
LABEL_34:
          v28 = (v31 | (v29 << (8 * v13))) + 2;
          goto LABEL_35;
        }
      }

LABEL_32:
      v28 = v31 + 2;
      goto LABEL_35;
    }

    if (v30)
    {
      v31 = *a2;
      if (v13 < 4)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }
  }

LABEL_35:
  v53 = v22 + 7;
  v54 = *(v15 - 8);
  v32 = ~v17;
  __n = v22;
  if (v28 == 1)
  {
    v33 = ~v10;
    v50 = v14;
    v51 = v15;
    v34 = *(v7 + 16);
    v47 = v13;
    v48 = v13 + v17 + 1;
    v35 = v6;
    v49 = *(v14 - 8);
    v36 = v12;
    v34(a1, a2, v6);
    v37 = v35;
    v13 = v47;
    v34((v11 + a1) & v33, ((a2 + v11) & v33), v37);
    v14 = v50;
    v15 = v51;
    *(v36 + a1) = *(a2 + v36);
    v18 = v48;
    v16 = v49;
    v38 = 1;
  }

  else
  {
    v38 = 0;
    *a1 = *a2;
    *(a1 + 8) = a2[4];
  }

  v39 = ~v21;
  *(a1 + v13) = v38;
  v40 = ((v18 + a1) & v32);
  v41 = ((a2 + v18) & v32);
  v42 = v14;
  if ((*(v16 + 48))(v41, 1, v14))
  {
    memcpy(v40, v41, v55);
  }

  else
  {
    (*(v16 + 16))(v40, v41, v42);
    (*(v16 + 56))(v40, 0, 1, v42);
  }

  v43 = &v41[v55];
  v44 = ((v40 + v55 + v21) & v39);
  v45 = (&v43[v21] & v39);
  if ((*(v54 + 48))(v45, 1, v15))
  {
    memcpy(v44, v45, __n);
  }

  else
  {
    (*(v54 + 16))(v44, v45, v15);
    (*(v54 + 56))(v44, 0, 1, v15);
  }

  *((v44 + v53) & 0xFFFFFFFFFFFFFFF8) = *((v45 + v53) & 0xFFFFFFFFFFFFFFF8);
LABEL_45:

  return a1;
}

uint64_t initializeWithTake for CustomProgressView(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = *(v7 + 80);
  v10 = v8 + v9;
  v11 = ((v8 + v9) & ~v9) + v8;
  if ((v11 + 1) > 0xA)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 10;
  }

  v13 = a2[v12];
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 <= 1)
    {
      if (!v15)
      {
        goto LABEL_18;
      }

      v16 = *a2;
      if (v12 < 4)
      {
LABEL_21:
        if ((v16 | (v14 << (8 * v12))) != 0xFFFFFFFF)
        {
          goto LABEL_22;
        }

LABEL_19:
        v17 = ~v9;
        v18 = *(v7 + 32);
        v18(a1, a2, v6);
        v18((v10 + a1) & v17, (&a2[v10] & v17), v6);
        *(v11 + a1) = a2[v11];
        v19 = 1;
        goto LABEL_23;
      }
    }

    else if (v15 == 2)
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    else if (v15 == 3)
    {
      v16 = *a2 | (a2[2] << 16);
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v16 = *a2;
      if (v12 < 4)
      {
        goto LABEL_21;
      }
    }

    v13 = v16 + 2;
  }

LABEL_18:
  if (v13 == 1)
  {
    goto LABEL_19;
  }

LABEL_22:
  v19 = 0;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);
LABEL_23:
  *(a1 + v12) = v19;
  v20 = *(a3 + 16);
  v21 = *(v20 - 8);
  v22 = *(v21 + 80);
  v23 = v12 + v22 + 1;
  v24 = ((v23 + a1) & ~v22);
  v25 = (&a2[v23] & ~v22);
  if ((*(v21 + 48))(v25, 1, v20))
  {
    v26 = *(v21 + 84);
    v27 = *(v21 + 64);
    if (v26)
    {
      v28 = *(v21 + 64);
    }

    else
    {
      v28 = v27 + 1;
    }

    memcpy(v24, v25, v28);
  }

  else
  {
    (*(v21 + 32))(v24, v25, v20);
    v30 = *(v21 + 56);
    v29 = v21 + 56;
    v30(v24, 0, 1, v20);
    v26 = *(v29 + 28);
    v27 = *(v29 + 8);
  }

  if (v26)
  {
    v31 = v27;
  }

  else
  {
    v31 = v27 + 1;
  }

  v32 = *(a3 + 24);
  v33 = *(v32 - 8);
  v34 = *(v33 + 80);
  v35 = v31 + v34;
  v36 = ((v24 + v35) & ~v34);
  v37 = ((v25 + v35) & ~v34);
  if ((*(v33 + 48))(v37, 1, v32))
  {
    v38 = *(v33 + 84);
    v39 = *(v33 + 64);
    if (v38)
    {
      v40 = *(v33 + 64);
    }

    else
    {
      v40 = v39 + 1;
    }

    memcpy(v36, v37, v40);
  }

  else
  {
    (*(v33 + 32))(v36, v37, v32);
    v42 = *(v33 + 56);
    v41 = v33 + 56;
    v42(v36, 0, 1, v32);
    v38 = *(v41 + 28);
    v39 = *(v41 + 8);
  }

  if (v38)
  {
    v43 = v39;
  }

  else
  {
    v43 = v39 + 1;
  }

  *((v36 + v43 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v37 + v43 + 7) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

unsigned __int16 *assignWithTake for CustomProgressView(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v6 = type metadata accessor for Date();
    v7 = *(v6 - 8);
    v8 = *(v7 + 64);
    v9 = *(v7 + 80);
    v54 = v8 + v9;
    v10 = ((v8 + v9) & ~v9) + v8;
    if ((v10 + 1) > 0xA)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 10;
    }

    v12 = *(a1 + v11);
    v13 = v12 - 2;
    if (v12 < 2)
    {
LABEL_21:
      v16 = ~v9;
      if (v12 == 1)
      {
        v17 = *(v7 + 8);
        v17(a1, v6);
        v17(((a1 + v54) & v16), v6);
      }

      v18 = *(a2 + v11);
      v19 = v18 - 2;
      if (v18 >= 2)
      {
        if (v11 <= 3)
        {
          v20 = v11;
        }

        else
        {
          v20 = 4;
        }

        if (v20 <= 1)
        {
          if (!v20)
          {
            goto LABEL_37;
          }

          v21 = *a2;
          if (v11 < 4)
          {
LABEL_40:
            if ((v21 | (v19 << (8 * v11))) != 0xFFFFFFFF)
            {
              goto LABEL_41;
            }

            goto LABEL_38;
          }
        }

        else if (v20 == 2)
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        else if (v20 == 3)
        {
          v21 = *a2 | (*(a2 + 2) << 16);
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        else
        {
          v21 = *a2;
          if (v11 < 4)
          {
            goto LABEL_40;
          }
        }

        v18 = v21 + 2;
      }

LABEL_37:
      if (v18 != 1)
      {
LABEL_41:
        v23 = 0;
        *a1 = *a2;
        a1[4] = a2[4];
        goto LABEL_42;
      }

LABEL_38:
      v22 = *(v7 + 32);
      v22(a1, a2, v6);
      v22(((a1 + v54) & v16), ((a2 + v54) & v16), v6);
      *(a1 + v10) = *(a2 + v10);
      v23 = 1;
LABEL_42:
      *(a1 + v11) = v23;
      goto LABEL_43;
    }

    if (v11 <= 3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 4;
    }

    if (v14 > 1)
    {
      if (v14 == 2)
      {
        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v14 == 3)
        {
          v15 = *a1 | (*(a1 + 2) << 16);
          if (v11 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v12 = v15 + 2;
          goto LABEL_21;
        }

        v15 = *a1;
        if (v11 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v12 = (v15 | (v13 << (8 * v11))) + 2;
      goto LABEL_21;
    }

    if (!v14)
    {
      goto LABEL_21;
    }

    v15 = *a1;
    if (v11 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_43:
  v24 = *(type metadata accessor for Date() - 8);
  v25 = *(v24 + 64) + ((*(v24 + 64) + *(v24 + 80)) & ~*(v24 + 80));
  v26 = 10;
  if (v25 + 1 > 0xA)
  {
    v26 = v25 + 1;
  }

  v27 = *(a3 + 16);
  v28 = *(v27 - 8);
  v29 = *(v28 + 80);
  v30 = v26 + v29 + 1;
  v31 = ((a1 + v30) & ~v29);
  v32 = ((a2 + v30) & ~v29);
  v33 = *(v28 + 48);
  v34 = v33(v31, 1, v27);
  v35 = v33(v32, 1, v27);
  if (v34)
  {
    if (!v35)
    {
      (*(v28 + 32))(v31, v32, v27);
      (*(v28 + 56))(v31, 0, 1, v27);
      goto LABEL_56;
    }

    v36 = *(v28 + 84);
    v37 = *(v28 + 64);
  }

  else
  {
    if (!v35)
    {
      (*(v28 + 40))(v31, v32, v27);
      goto LABEL_56;
    }

    (*(v28 + 8))(v31, v27);
    v36 = *(v28 + 84);
    v37 = *(v28 + 64);
  }

  if (v36)
  {
    v38 = v37;
  }

  else
  {
    v38 = v37 + 1;
  }

  memcpy(v31, v32, v38);
LABEL_56:
  v39 = *(v28 + 64);
  if (!*(v28 + 84))
  {
    ++v39;
  }

  v40 = *(a3 + 24);
  v41 = *(v40 - 8);
  v42 = *(v41 + 80);
  v43 = v39 + v42;
  v44 = ((v31 + v43) & ~v42);
  v45 = ((v32 + v43) & ~v42);
  v46 = *(v41 + 48);
  v47 = v46(v44, 1, v40);
  v48 = v46(v45, 1, v40);
  if (v47)
  {
    if (!v48)
    {
      (*(v41 + 32))(v44, v45, v40);
      (*(v41 + 56))(v44, 0, 1, v40);
      goto LABEL_69;
    }

    v49 = *(v41 + 84);
    v50 = *(v41 + 64);
  }

  else
  {
    if (!v48)
    {
      (*(v41 + 40))(v44, v45, v40);
      goto LABEL_69;
    }

    (*(v41 + 8))(v44, v40);
    v49 = *(v41 + 84);
    v50 = *(v41 + 64);
  }

  if (v49)
  {
    v51 = v50;
  }

  else
  {
    v51 = v50 + 1;
  }

  memcpy(v44, v45, v51);
LABEL_69:
  if (*(v41 + 84))
  {
    v52 = *(v41 + 64);
  }

  else
  {
    v52 = *(v41 + 64) + 1;
  }

  *((v44 + v52 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v45 + v52 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}