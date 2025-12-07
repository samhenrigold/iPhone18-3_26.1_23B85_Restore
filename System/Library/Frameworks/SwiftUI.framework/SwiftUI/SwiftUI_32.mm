uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI14ToolbarStorageV9GroupItemV_s5NeverOytTg5(void (*a1)(uint64_t *__return_ptr, char *))
{
  v13 = a1;
  v3 = type metadata accessor for ToolbarStorage.GroupItem(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Binding<SearchFieldState>(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - v8;
  outlined init with copy of TextSelection??(v1, &v12 - v8, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem);
  v10 = (*(v4 + 48))(v9, 1, v3);
  if (v10 == 1)
  {
    return v10 == 1;
  }

  outlined init with take of Binding<SearchFieldState>(v9, v6, type metadata accessor for ToolbarStorage.GroupItem);
  v13(&v14, v6);
  if (!v2)
  {
    outlined destroy of SearchFieldState(v6, type metadata accessor for ToolbarStorage.GroupItem);
    return v10 == 1;
  }

  result = outlined destroy of SearchFieldState(v6, type metadata accessor for ToolbarStorage.GroupItem);
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for ToolbarStorage.GroupItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v7;
  v8 = *(a2 + 56);

  if (v8)
  {
    v9 = *(a2 + 64);
    *(a1 + 56) = v8;
    *(a1 + 64) = v9;
    (**(v8 - 8))(a1 + 32, a2 + 32, v8);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v10 = *(a2 + 48);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = v10;
    *(a1 + 64) = *(a2 + 64);
  }

  if (*(a2 + 120) == 1)
  {
    v11 = *(a2 + 104);
    *(a1 + 104) = v11;
    (**(v11 - 8))(a1 + 80, a2 + 80);
    *(a1 + 120) = 1;
  }

  else
  {
    v12 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v12;
    *(a1 + 105) = *(a2 + 105);
  }

  *(a1 + 121) = *(a2 + 121);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = *(a2 + 144);
  v14 = *(a2 + 152);
  v15 = *(a3 + 60);
  v16 = (a2 + v15);
  v17 = (a1 + v15);
  *(a1 + 144) = v13;
  *(a1 + 152) = v14;
  v18 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);

  if (!v20(v16, 1, v18))
  {
    type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v38 = *(v16 + 3);
      *(v17 + 3) = v38;
      (**(v38 - 8))(v17, v16);
      v39 = v16[6];
      v17[5] = v16[5];
      v17[6] = v39;
      v17[7] = v16[7];
      v17[8] = v16[8];
      *(v17 + 9) = *(v16 + 9);
      v40 = v16[11];
      v17[11] = v40;

      v41 = v40;
LABEL_66:
      swift_storeEnumTagMultiPayload();
      v113 = *(v18 + 20);
      v114 = *(v16 + v113);
      *(v17 + v113) = v114;
      v115 = *(v19 + 56);
      v116 = v114;
      v115(v17, 0, 1, v18);
      return a1;
    }

    v131 = v18;
    v22 = *v16;
    v23 = v16[1];
    *v17 = *v16;
    v17[1] = v23;
    v24 = v16[3];
    v17[2] = v16[2];
    v17[3] = v24;
    *(v17 + 32) = *(v16 + 32);
    v25 = v16[6];
    v17[5] = v16[5];
    v17[6] = v25;
    *(v17 + 56) = *(v16 + 56);
    v26 = v16[24];
    v27 = v22;
    v28 = v23;

    if (v26 >> 1 == 4294967294)
    {
      v29 = *(v16 + 13);
      *(v17 + 12) = *(v16 + 12);
      *(v17 + 13) = v29;
      *(v17 + 14) = *(v16 + 14);
      *(v17 + 235) = *(v16 + 235);
      v30 = *(v16 + 9);
      *(v17 + 8) = *(v16 + 8);
      *(v17 + 9) = v30;
      v31 = *(v16 + 11);
      *(v17 + 10) = *(v16 + 10);
      *(v17 + 11) = v31;
      v32 = *(v16 + 5);
      *(v17 + 4) = *(v16 + 4);
      *(v17 + 5) = v32;
      v33 = *(v16 + 7);
      *(v17 + 6) = *(v16 + 6);
      *(v17 + 7) = v33;
      v34 = v16[33];
      if (v34)
      {
LABEL_12:
        v17[32] = v16[32];
        v17[33] = v34;
        v35 = v16[34];

        if (v35 >= 2)
        {
          v36 = v35;
        }

        v17[34] = v35;
        *(v17 + 70) = *(v16 + 70);
        *(v17 + 284) = *(v16 + 284);
        *(v17 + 285) = *(v16 + 285);
        v37 = v16[37];
        v17[36] = v16[36];
        v17[37] = v37;

LABEL_24:
        v52 = v16[42];
        v130 = v19;
        if (v52 >> 2 == 0xFFFFFFFF)
        {
          v53 = *(v16 + 24);
          *(v17 + 23) = *(v16 + 23);
          *(v17 + 24) = v53;
          v17[50] = v16[50];
          v54 = *(v16 + 20);
          *(v17 + 19) = *(v16 + 19);
          *(v17 + 20) = v54;
          v55 = *(v16 + 22);
          *(v17 + 21) = *(v16 + 21);
          *(v17 + 22) = v55;
        }

        else
        {
          v56 = v16[38];
          v57 = v16[39];
          v58 = v16[40];
          v60 = v16[43];
          v59 = v16[44];
          v61 = v16[45];
          v118 = v16[41];
          v119 = v16[46];
          v121 = v16[47];
          v124 = v16[48];
          v126 = v16[49];
          __dsta = v16[50];
          outlined copy of PlatformItemList.Item.SystemItem(v56, v57, v58, v118, v52, v60, v59, v61, v119, v121, v124, v126, __dsta);
          v17[38] = v56;
          v17[39] = v57;
          v17[40] = v58;
          v17[41] = v118;
          v17[42] = v52;
          v17[43] = v60;
          v17[44] = v59;
          v17[45] = v61;
          v17[46] = v119;
          v17[47] = v121;
          v17[48] = v124;
          v17[49] = v126;
          v17[50] = __dsta;
        }

        v62 = v16[52];
        if (v62 == 1)
        {
          v63 = *(v16 + 57);
          *(v17 + 55) = *(v16 + 55);
          *(v17 + 57) = v63;
          *(v17 + 472) = *(v16 + 472);
          v64 = *(v16 + 53);
          *(v17 + 51) = *(v16 + 51);
          *(v17 + 53) = v64;
          goto LABEL_37;
        }

        *(v17 + 102) = *(v16 + 102);
        *(v17 + 412) = *(v16 + 412);
        if (v62)
        {
          v65 = v16[53];
          v17[52] = v62;
          v17[53] = v65;

          v66 = v16[54];
          if (v66)
          {
            goto LABEL_31;
          }
        }

        else
        {
          *(v17 + 26) = *(v16 + 26);
          v66 = v16[54];
          if (v66)
          {
LABEL_31:
            v67 = v16[55];
            v17[54] = v66;
            v17[55] = v67;

            v68 = v16[56];
            if (v68)
            {
LABEL_32:
              v69 = v16[57];
              v17[56] = v68;
              v17[57] = v69;

LABEL_36:
              v17[58] = v16[58];
              *(v17 + 472) = *(v16 + 472);
LABEL_37:
              v70 = v16[61];
              v17[60] = v16[60];
              v17[61] = v70;
              v17[62] = v16[62];
              *(v17 + 504) = *(v16 + 504);
              v71 = v16[64];

              if (v71)
              {
                v72 = v16[65];
                v17[64] = v71;
                v17[65] = v72;
              }

              else
              {
                *(v17 + 32) = *(v16 + 32);
              }

              *(v17 + 528) = *(v16 + 528);
              if (!v16[102])
              {
                memcpy(v17 + 67, v16 + 67, 0x130uLL);
                goto LABEL_52;
              }

              v17[67] = v16[67];
              v17[68] = v16[68];
              *(v17 + 552) = *(v16 + 552);
              v17[70] = v16[70];
              *(v17 + 568) = *(v16 + 568);
              *(v17 + 36) = *(v16 + 36);
              *(v17 + 592) = *(v16 + 592);
              v73 = v17 + 75;
              v74 = v16 + 75;
              v75 = v16[78];

              if (v75)
              {
                if (v75 == 1)
                {
                  v76 = *(v16 + 77);
                  *v73 = *v74;
                  *(v17 + 77) = v76;
                  *(v17 + 79) = *(v16 + 79);
LABEL_48:
                  v17[81] = v16[81];
                  *(v17 + 656) = *(v16 + 656);
                  v78 = v17 + 83;
                  v79 = v16 + 83;
                  v80 = v16[97];
                  if (v80 == 1)
                  {
                    v81 = *(v16 + 97);
                    *(v17 + 95) = *(v16 + 95);
                    *(v17 + 97) = v81;
                    *(v17 + 99) = *(v16 + 99);
                    *(v17 + 808) = *(v16 + 808);
                    v82 = *(v16 + 89);
                    *(v17 + 87) = *(v16 + 87);
                    *(v17 + 89) = v82;
                    v83 = *(v16 + 93);
                    *(v17 + 91) = *(v16 + 91);
                    *(v17 + 93) = v83;
                    v84 = *(v16 + 85);
                    *v78 = *v79;
                    *(v17 + 85) = v84;
                  }

                  else
                  {
                    *v78 = *v79;
                    *(v17 + 672) = *(v16 + 672);
                    v17[85] = v16[85];
                    *(v17 + 688) = *(v16 + 688);
                    *(v17 + 689) = *(v16 + 689);
                    *(v17 + 691) = *(v16 + 691);
                    *(v17 + 692) = *(v16 + 692);
                    v17[87] = v16[87];
                    v85 = *(v16 + 45);
                    *(v17 + 44) = *(v16 + 44);
                    *(v17 + 45) = v85;
                    v17[92] = v16[92];
                    *(v17 + 372) = *(v16 + 372);
                    *(v17 + 47) = *(v16 + 47);
                    *(v17 + 768) = *(v16 + 768);
                    v17[97] = v80;
                    *(v17 + 49) = *(v16 + 49);
                    v17[100] = v16[100];
                    *(v17 + 808) = *(v16 + 808);
                  }

                  v17[102] = v16[102];
                  v17[103] = v16[103];
                  v17[104] = v16[104];

LABEL_52:
                  v86 = v17 + 105;
                  v87 = v16 + 105;
                  v88 = v16[108];
                  if (v88)
                  {
                    if (v88 == 1)
                    {
                      v89 = *(v16 + 107);
                      *v86 = *v87;
                      *(v17 + 107) = v89;
                      *(v17 + 109) = *(v16 + 109);
                      v17[111] = v16[111];
LABEL_59:
                      v93 = v16[112];
                      v17[112] = v93;
                      v17[113] = v16[113];
                      v17[114] = v16[114];
                      v17[115] = v16[115];
                      v17[116] = v16[116];
                      v17[117] = v16[117];
                      v17[118] = v16[118];
                      *(v17 + 476) = *(v16 + 476);
                      *(v17 + 954) = *(v16 + 954);
                      v94 = type metadata accessor for PlatformItemList.Item(0);
                      v95 = *(v94 + 112);
                      v127 = v94;
                      __dst = v17 + v95;
                      v96 = v16 + v95;
                      v97 = type metadata accessor for CommandOperation(0);
                      v120 = *(v97 - 8);
                      v122 = *(v120 + 48);
                      v98 = v93;

                      if (v122(v96, 1, v97))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v96, *(*(v99 - 8) + 64));
                        v18 = v131;
                        v19 = v130;
                      }

                      else
                      {
                        *__dst = *v96;
                        v100 = *(v97 + 20);
                        v101 = &__dst[v100];
                        v102 = &v96[v100];
                        v125 = v96;
                        v103 = *&v96[v100];
                        v104 = *(v102 + 1);
                        v105 = v97;
                        v106 = v102[16];
                        outlined copy of Text.Storage(v103, v104, v106);
                        *v101 = v103;
                        *(v101 + 1) = v104;
                        v101[16] = v106;
                        *(v101 + 3) = *(v102 + 3);
                        v107 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v108 = type metadata accessor for UUID();
                        v123 = *(*(v108 - 8) + 16);

                        v123(&v101[v107], &v102[v107], v108);
                        v109 = *(v105 + 24);
                        v110 = &__dst[v109];
                        v111 = &v125[v109];
                        if (*v111)
                        {
                          v112 = v111[1];
                          *v110 = *v111;
                          v110[1] = v112;
                        }

                        else
                        {
                          *v110 = *v111;
                        }

                        v18 = v131;
                        v19 = v130;
                        (*(v120 + 56))(__dst, 0, 1, v105);
                      }

                      *(v17 + v127[29]) = *(v16 + v127[29]);
                      *(v17 + v127[30]) = *(v16 + v127[30]);
                      *(v17 + v127[31]) = *(v16 + v127[31]);
                      *(v17 + v127[32]) = *(v16 + v127[32]);
                      *(v17 + v127[33]) = *(v16 + v127[33]);
                      *(v17 + v127[34]) = *(v16 + v127[34]);

                      goto LABEL_66;
                    }

                    v17[108] = v88;
                    v17[109] = v16[109];
                    (**(v88 - 8))(v86, v87);
                    v91 = v16[110];
                    if (!v91)
                    {
LABEL_58:
                      *(v17 + 55) = *(v16 + 55);
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    v90 = *(v16 + 107);
                    *v86 = *v87;
                    *(v17 + 107) = v90;
                    v17[109] = v16[109];
                    v91 = v16[110];
                    if (!v91)
                    {
                      goto LABEL_58;
                    }
                  }

                  v92 = v16[111];
                  v17[110] = v91;
                  v17[111] = v92;

                  goto LABEL_59;
                }

                v17[78] = v75;
                v17[79] = v16[79];
                (**(v75 - 8))((v17 + 75), (v16 + 75), v75);
              }

              else
              {
                v77 = *(v16 + 77);
                *v73 = *v74;
                *(v17 + 77) = v77;
                v17[79] = v16[79];
              }

              v17[80] = v16[80];

              goto LABEL_48;
            }

LABEL_35:
            *(v17 + 28) = *(v16 + 28);
            goto LABEL_36;
          }
        }

        *(v17 + 27) = *(v16 + 27);
        v68 = v16[56];
        if (v68)
        {
          goto LABEL_32;
        }

        goto LABEL_35;
      }
    }

    else
    {
      v42 = *(v16 + 72);
      if (v42 == 255)
      {
        v17[8] = v16[8];
        *(v17 + 72) = *(v16 + 72);
      }

      else
      {
        v43 = v16[8];
        outlined copy of GraphicsImage.Contents(v43, *(v16 + 72));
        v17[8] = v43;
        *(v17 + 72) = v42;
        v26 = v16[24];
      }

      v17[10] = v16[10];
      *(v17 + 11) = *(v16 + 11);
      *(v17 + 104) = *(v16 + 104);
      *(v17 + 108) = *(v16 + 108);
      *(v17 + 121) = *(v16 + 121);
      *(v17 + 17) = *(v16 + 17);
      *(v17 + 19) = *(v16 + 19);
      *(v17 + 84) = *(v16 + 84);
      *(v17 + 170) = *(v16 + 170);
      *(v17 + 171) = *(v16 + 171);
      if (v26 >> 1 == 0xFFFFFFFF)
      {
        v44 = *(v16 + 12);
        *(v17 + 11) = *(v16 + 11);
        *(v17 + 12) = v44;
      }

      else
      {
        v45 = v16[22];
        v46 = v16[23];
        v47 = v16[25];
        outlined copy of AccessibilityImageLabel(v45, v46, v26, v47);
        v17[22] = v45;
        v17[23] = v46;
        v17[24] = v26;
        v17[25] = v47;
      }

      v48 = v16[27];
      v17[26] = v16[26];
      v17[27] = v48;
      *(v17 + 112) = *(v16 + 112);
      *(v17 + 57) = *(v16 + 57);
      *(v17 + 232) = *(v16 + 232);
      v49 = v16[30];
      v17[30] = v49;
      *(v17 + 124) = *(v16 + 124);
      *(v17 + 250) = *(v16 + 250);
      swift_unknownObjectRetain();

      v50 = v49;
      v34 = v16[33];
      if (v34)
      {
        goto LABEL_12;
      }
    }

    v51 = *(v16 + 17);
    *(v17 + 16) = *(v16 + 16);
    *(v17 + 17) = v51;
    *(v17 + 18) = *(v16 + 18);
    goto LABEL_24;
  }

  _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  memcpy(v17, v16, *(*(v21 - 8) + 64));
  return a1;
}

void closure #1 in closure #1 in closure #1 in UIKitToolbarStrategy.barButtonGroups(in:)(uint64_t *a1, uint64_t a2, void **a3, uint64_t a4, void **a5)
{
  v10 = type metadata accessor for ToolbarStorage.Entry(0);
  v11 = *a5;
  LOBYTE(a5) = *(a4 + *(v10 + 20));
  v12 = v11;
  specialized static UIKitBarButtonItemGroup.makeVended(groupItem:edge:context:)(a1, a5, v12);
  v14 = v13;
  LOBYTE(a1) = v15;
  v17 = v16;

  v18 = *a2;
  *a2 = v14;
  v19 = *(a2 + 8);
  *(a2 + 8) = a1;
  outlined consume of OpenURLOptions?(v18, v19);
  v20 = *a3;
  *a3 = v17;
}

void specialized static UIKitBarButtonItemGroup.makeVended(groupItem:edge:context:)(uint64_t *a1, char a2, uint64_t a3)
{
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22[-v9];
  if (!a1[1])
  {
    goto LABEL_5;
  }

  if (*(a1 + 121))
  {
    if (*(a1 + 121) == 1)
    {
      type metadata accessor for UIKitBarButtonItemGroup(0);
      v11 = static UIBarButtonItemGroup.movableGroup(customizationIdentifier:representativeItem:items:)();
LABEL_6:
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        v13 = v12;
        v14 = v11;
LABEL_10:
        v13[OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_edge] = a2;
        swift_unknownObjectWeakAssign();
        outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(a1, v10, type metadata accessor for ToolbarStorage.GroupItem);
        v18 = type metadata accessor for ToolbarStorage.GroupItem(0);
        (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
        v19 = OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_groupItem;
        swift_beginAccess();
        v20 = MEMORY[0x1E69E6720];
        _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v13[v19], v7, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
        swift_beginAccess();
        _s7SwiftUI14ToolbarStorageV9GroupItemVSgWOfTm_0(v10, &v13[v19], &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v20, type metadata accessor for ToolbarStorage.Item?);
        swift_endAccess();
        UIKitBarButtonItemGroup.didChangeGroupItem(from:)(v7);

        _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v7, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v20, type metadata accessor for ToolbarStorage.Item?);
        _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v10, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v20, type metadata accessor for ToolbarStorage.Item?);
        v21 = v13;
        return;
      }

      __break(1u);
      goto LABEL_12;
    }

LABEL_5:
    type metadata accessor for UIKitBarButtonItemGroup(0);
    v11 = static UIBarButtonItemGroup.fixedGroup(representativeItem:items:)();
    goto LABEL_6;
  }

  static Semantics.v6_4.getter();
  isLinkedOnOrAfter(_:)();
  type metadata accessor for UIKitBarButtonItemGroup(0);
  v11 = static UIBarButtonItemGroup.optionalGroup(customizationIdentifier:isInDefaultCustomization:representativeItem:items:)();
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v13 = v15;
    v16 = *(a1 + 36);
    v17 = v11;
    [v13 setAlwaysAvailable_];
    goto LABEL_10;
  }

LABEL_12:

  __break(1u);
}

void type metadata completion function for UIKitBarButtonItemGroup(uint64_t a1)
{
  type metadata accessor for ToolbarStorage.Item?(319, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t outlined assign with copy of ToolbarStorage.GroupItem?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  type metadata accessor for PlatformItemList.Item?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t _s7SwiftUI14ToolbarStorageV9GroupItemVSgWOfTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 24))(a2, a1, v8);
  return a2;
}

const char *UIKitBarButtonItemGroup.didChangeGroupItem(from:)(char *a1)
{
  v246 = a1;
  v220 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value(0);
  MEMORY[0x1EEE9AC00](v220);
  v3 = &v211 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1E69E6720];
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v223 = &v211 - v6;
  v224 = type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent(0);
  v222 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v8 = &v211 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v4);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v226 = &v211 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v225 = &v211 - v12;
  v232 = type metadata accessor for ToolbarStorage.Item(0);
  v221 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v227 = &v211 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v234 = &v211 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v229 = &v211 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v240 = (&v211 - v19);
  v243 = type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem(0);
  v235 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v243);
  v228 = &v211 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v231 = &v211 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v230 = &v211 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v233 = (&v211 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v242 = &v211 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v245 = &v211 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v239 = &v211 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v244 = &v211 - v34;
  type metadata accessor for ToolbarStorage.Item?(0, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, v4);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v211 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v211 - v39;
  v41 = type metadata accessor for ToolbarStorage.GroupItem(0);
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v211 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v46 = result;
  v217 = v3;
  v218 = OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_edge;
  v219 = v1[OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_edge];
  v47 = OBJC_IVAR____TtC7SwiftUI23UIKitBarButtonItemGroup_groupItem;
  swift_beginAccess();
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v1[v47], v40, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  v48 = *(v42 + 48);
  if (v48(v40, 1, v41) == 1)
  {

    return _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v40, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  }

  _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v40, v44, type metadata accessor for ToolbarStorage.GroupItem);
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v246, v37, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  v214 = v41;
  v49 = v48(v37, 1, v41);
  v246 = v1;
  v212 = v8;
  v215 = v44;
  v216 = v46;
  if (v49 == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v37, &lazy cache variable for type metadata for ToolbarStorage.GroupItem?, type metadata accessor for ToolbarStorage.GroupItem, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
LABEL_22:
    v52 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v50 = *(v37 + 19);

  _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v37, type metadata accessor for ToolbarStorage.GroupItem);
  v51 = *(v50 + 16);
  if (!v51)
  {

    goto LABEL_22;
  }

  v247[0] = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v51, 0);
  v52 = v247[0];
  v53 = (*(v235 + 80) + 32) & ~*(v235 + 80);
  v213 = v50;
  v54 = v50 + v53;
  v55 = *(v235 + 72);
  v237 = "swiftui-fixed-spacer";
  v238 = v55;
  v236 = "@UIActivityViewController8@?0";
  do
  {
    v56 = v52;
    v57 = v244;
    outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v54, v244, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    v58 = v57;
    v59 = v239;
    outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v58, v239, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v60 = *(v59 + 3);
      v252 = *(v59 + 2);
      v253 = v60;
      v254 = *(v59 + 4);
      v61 = *(v59 + 1);
      v250 = *v59;
      v251 = v61;
      _ViewList_ID.init(implicitID:)();
      v62 = v248;
      v63 = v249;
      if (v250)
      {
        v64 = 0xD000000000000017;
      }

      else
      {
        v64 = 0xD000000000000014;
      }

      v241 = v64;
      v65 = v237;
      if (!v250)
      {
        v65 = v236;
      }

      v66 = v65 | 0x8000000000000000;
      outlined destroy of ToolbarStorage.SpacerItem(&v250);
      v67 = 0;
      v68 = 0;
    }

    else
    {
      v69 = v240;
      _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v59, v240, type metadata accessor for ToolbarStorage.Item);
      v62 = *v69;
      v63 = v69[1];
      v68 = v69[2];
      v67 = v69[3];
      v241 = v69[4];
      v66 = v69[5];

      _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v69, type metadata accessor for ToolbarStorage.Item);
    }

    _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v244, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
    v52 = v56;
    v247[0] = v56;
    v71 = *(v56 + 2);
    v70 = *(v56 + 3);
    if (v71 >= v70 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), v71 + 1, 1);
      v52 = v247[0];
    }

    *(v52 + 2) = v71 + 1;
    v72 = &v52[48 * v71];
    *(v72 + 4) = v62;
    *(v72 + 5) = v63;
    *(v72 + 6) = v68;
    v73 = v241;
    *(v72 + 7) = v67;
    *(v72 + 8) = v73;
    *(v72 + 9) = v66;
    v54 += v238;
    --v51;
  }

  while (v51);

  v44 = v215;
LABEL_23:
  v74 = *(v44 + 19);
  v75 = *(v74 + 16);
  v76 = MEMORY[0x1E69E7CC0];
  v236 = v74;
  if (v75)
  {
    v237 = v52;
    v247[0] = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75, 0);
    v77 = v247[0];
    v78 = v74 + ((*(v235 + 80) + 32) & ~*(v235 + 80));
    v241 = *(v235 + 72);
    v238 = "@UIActivityViewController8@?0";
    v239 = "swiftui-fixed-spacer";
    do
    {
      v79 = v245;
      outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v78, v245, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      v80 = v79;
      v81 = v242;
      outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v80, v242, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v82 = *(v81 + 3);
        v252 = *(v81 + 2);
        v253 = v82;
        v254 = *(v81 + 4);
        v83 = *(v81 + 1);
        v250 = *v81;
        v251 = v83;
        _ViewList_ID.init(implicitID:)();
        v84 = v248;
        v85 = v249;
        if (v250)
        {
          v86 = 0xD000000000000017;
        }

        else
        {
          v86 = 0xD000000000000014;
        }

        v87 = v239;
        if (!v250)
        {
          v87 = v238;
        }

        v88 = v87 | 0x8000000000000000;
        outlined destroy of ToolbarStorage.SpacerItem(&v250);
        v244 = 0;
        v89 = 0;
      }

      else
      {
        v90 = v240;
        _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v81, v240, type metadata accessor for ToolbarStorage.Item);
        v84 = *v90;
        v85 = v90[1];
        v244 = v90[2];
        v89 = v90[3];
        v91 = v90[4];
        v88 = v90[5];

        v92 = v90;
        v86 = v91;
        _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v92, type metadata accessor for ToolbarStorage.Item);
      }

      _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v245, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      v247[0] = v77;
      v94 = *(v77 + 16);
      v93 = *(v77 + 24);
      if (v94 >= v93 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v93 > 1), v94 + 1, 1);
        v77 = v247[0];
      }

      *(v77 + 16) = v94 + 1;
      v95 = (v77 + 48 * v94);
      v95[4] = v84;
      v96 = v244;
      v95[5] = v85;
      v95[6] = v96;
      v95[7] = v89;
      v95[8] = v86;
      v95[9] = v88;
      v78 += v241;
      --v75;
    }

    while (v75);
    v52 = v237;
    v76 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v77 = MEMORY[0x1E69E7CC0];
  }

  v248 = v52;
  v247[0] = v77;
  *&v250 = v76;
  type metadata accessor for CollectionChanges<Int, Int>();
  _ss23_ContiguousArrayStorageCyyXlGMaTm_0(0, &lazy cache variable for type metadata for [ToolbarStorage.ID], &type metadata for ToolbarStorage.ID, MEMORY[0x1E69E62F8]);
  lazy protocol witness table accessor for type [ToolbarStorage.ID] and conformance [A]();
  lazy protocol witness table accessor for type ToolbarStorage.ID and conformance ToolbarStorage.ID();
  CollectionChanges.formChanges<A, B>(from:to:)();

  v97 = v250;
  LOBYTE(v248) = 0;
  type metadata accessor for EnvironmentPropertyKey<ToolbarItemMetricsKey>(0, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
  v99 = v98;

  v237 = v97;
  v213 = v99;
  CollectionChanges.Projection.init(kind:changes:)();
  v100 = *(&v250 + 1);
  v102 = *(&v251 + 1);
  isa = v251;
  if (*(&v251 + 1) != v251)
  {
    v103 = v250;
    type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>(0);
    v105 = v104;
    v106 = &lazy cache variable for type metadata for UIBarButtonItem;
    v107 = &selRef_setConfiguration_;
    v108 = v102;
    v244 = v100;
    v241 = v102;
    v242 = isa;
    LODWORD(v239) = v103;
    v238 = v105;
    while (1)
    {
      LOBYTE(v250) = v103;
      *(&v250 + 1) = v100;
      *&v251 = isa;
      *(&v251 + 1) = v102;
      v245 = CollectionChanges.Projection.index(before:)(v108);
      v109 = specialized CollectionChanges.Projection.subscript.getter(v245, v103, v100);
      v111 = v110;
      if (v110 != v109)
      {
        break;
      }

LABEL_43:
      v102 = v241;
      isa = v242;
      v100 = v244;
      v108 = v245;
      v103 = v239;
      if (v245 == v242)
      {
        goto LABEL_44;
      }
    }

    while (v109 < v111)
    {
      --v111;
      v102 = v246;
      v112 = [v246 barButtonItems];
      type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
      v113 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      *&v250 = v113;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v102 setBarButtonItems_];

      if (v109 == v111)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_49;
  }

LABEL_44:

  LOBYTE(v248) = 1;

  CollectionChanges.Projection.init(kind:changes:)();
  v107 = *(&v251 + 1);
  v238 = v251;
  v239 = *(&v250 + 1);
  v111 = v246;
  v102 = v230;
  v106 = v233;
  isa = v236;
  if (v251 != *(&v251 + 1))
  {
LABEL_49:
    LODWORD(v213) = v250;
    v119 = v238;
    v211 = v107;
    while (1)
    {
      v241 = v119;
      v120 = v213;
      v122 = v238;
      v121 = v239;
      v123 = specialized CollectionChanges.Projection.subscript.getter(v119, v213, v239);
      v245 = v124;
      LOBYTE(v250) = v120;
      *(&v250 + 1) = v121;
      *&v251 = v122;
      *(&v251 + 1) = v107;
      v125 = v123;
      type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>(0);
      result = CollectionChanges.Projection.index(after:)(v241);
      v241 = result;
      if (v125 != v245)
      {
        break;
      }

LABEL_50:
      v107 = v211;
      v119 = v241;
      if (v241 == v211)
      {
        goto LABEL_45;
      }
    }

    if (v245 < v125)
    {
      __break(1u);
    }

    else if (v125 < v245)
    {
      v244 = isa + ((*(v235 + 80) + 32) & ~*(v235 + 80));
      v126 = v125;
      v242 = v125;
      while (1)
      {
        if (v125 < 0)
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
          v196 = *(v102 + *(v224 + 20));
          outlined init with copy of _ViewList_View(v256, &v250);
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v197 = v219;
          v255 = v219;
          outlined init with copy of BarItemView(&v250, &v248);
          _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
          v199 = objc_allocWithZone(v198);
          v200 = MEMORY[0x1E69E7D40];
          v201 = &v199[*((*MEMORY[0x1E69E7D40] & *v199) + 0x710)];
          *v201 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
          v201[1] = 0;
          v202 = &v199[*((*v200 & *v199) + 0x720)];
          *v202 = 0;
          *(v202 + 1) = 0;
          v202[16] = 1;
          *&v199[*((*v200 & *v199) + 0x718)] = v196;
          outlined init with copy of BarItemView(&v248, v247);
          v203 = v196;
          v204 = specialized _UIHostingView.init(rootView:)(v247);
          v205 = specialized _UIHostingView.base.getter();
          UIHostingViewBase.safeAreaRegions.setter();

          outlined destroy of BarItemView(&v248);
          outlined init with copy of _ViewList_View(v256, &v248);
          v206 = objc_allocWithZone(type metadata accessor for UIKitBarButtonItem(0));
          v207 = v216;
          v208 = v204;
          v209 = specialized UIKitBarButtonItem.init(listView:context:host:)(&v248, v207, v197, v208);

          lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
          v210 = ViewRendererHost.idealSize()();
          [v208 setBounds_];
          UIKitBarButtonItem.initializePlatformItem(_:)(0);

          outlined destroy of BarItemView(&v250);
          [v246 setRepresentativeItem_];

LABEL_114:
          outlined destroy of _ViewList_View(v256);
          goto LABEL_115;
        }

        v127 = *(isa + 2);
        if (v126 >= v127)
        {
          goto LABEL_106;
        }

        outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(&v244[*(v235 + 72) * v126], v106, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        v128 = v111[v218];
        v129 = v219;
        if (v128 != 2)
        {
          if ((v128 & 1) == 0)
          {
            v129 = v219;
            if (!v126)
            {
              goto LABEL_63;
            }

LABEL_62:
            v129 = 2;
            goto LABEL_63;
          }

          v129 = v219;
          if (v126 != v127 - 1)
          {
            goto LABEL_62;
          }
        }

LABEL_63:
        outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v106, v102, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v130 = v102[1];
          v250 = *v102;
          v251 = v130;
          v131 = v102[3];
          v252 = v102[2];
          v253 = v131;
          v254 = v102[4];
          v132 = v250;
          v133 = objc_opt_self();
          v134 = v216;
          if (v132 == 1)
          {
            v135 = [v133 flexibleSpaceItem];
          }

          else
          {
            v135 = [v133 fixedSpaceItemOfWidth_];
          }

          v151 = v135;
          outlined destroy of ToolbarStorage.SpacerItem(&v250);
        }

        else
        {
          v136 = v240;
          _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v102, v240, type metadata accessor for ToolbarStorage.Item);
          outlined init with copy of _ViewList_View((v136 + 23), &v250);
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v255 = v129;
          outlined init with copy of BarItemView(&v250, &v248);
          v137 = v136[35];
          _s7SwiftUI16UIKitBarItemHostCyAA0dE4ViewVGMaTm_0(0, &lazy cache variable for type metadata for UIKitBarItemHost<BarItemView>, lazy protocol witness table accessor for type BarItemView and conformance BarItemView, &type metadata for BarItemView, type metadata accessor for UIKitBarItemHost);
          v139 = objc_allocWithZone(v138);
          v140 = MEMORY[0x1E69E7D40];
          v141 = &v139[*((*MEMORY[0x1E69E7D40] & *v139) + 0x710)];
          *v141 = destructiveProjectEnumData for CapsuleSlider.ScrollState.Orientation;
          v141[1] = 0;
          v142 = &v139[*((*v140 & *v139) + 0x720)];
          *v142 = 0;
          *(v142 + 1) = 0;
          v142[16] = 1;
          *&v139[*((*v140 & *v139) + 0x718)] = v137;
          outlined init with copy of BarItemView(&v248, v247);
          v143 = v216;
          v144 = v137;
          v145 = specialized _UIHostingView.init(rootView:)(v247);
          v146 = specialized _UIHostingView.base.getter();
          UIHostingViewBase.safeAreaRegions.setter();

          outlined destroy of BarItemView(&v248);
          UIHostingViewBase.viewGraph.getter();

          swift_weakLoadStrong();
          ViewGraph.preferenceBridge.setter();

          v147 = v229;
          outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v136, v229, type metadata accessor for ToolbarStorage.Item);
          v148 = objc_allocWithZone(type metadata accessor for UIKitBarButtonItem(0));
          v149 = v143;
          v150 = v145;
          v151 = specialized UIKitBarButtonItem.init(item:context:host:)(v147, v149, v129, v150);

          v111 = v246;
          lazy protocol witness table accessor for type UIKitBarItemHost<BarItemView> and conformance _UIHostingView<A>();
          v152 = ViewRendererHost.idealSize()();
          [v150 setBounds_];
          UIKitBarButtonItem.initializePlatformItem(_:)(0);

          v102 = v230;
          outlined destroy of BarItemView(&v250);
          _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v136, type metadata accessor for ToolbarStorage.Item);
        }

        v153 = v151;
        v154 = [v111 barButtonItems];
        type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
        v155 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&v250 = v155;
        if (v155 >> 62)
        {
          v156 = __CocoaSet.count.getter();
        }

        else
        {
          v156 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        isa = v236;
        if (v156 < v126)
        {
          goto LABEL_107;
        }

        v157 = (v126 + 1);
        specialized Array.replaceSubrange<A>(_:with:)(v126, v126, v153);

        v158 = Array._bridgeToObjectiveC()().super.isa;

        [v111 setBarButtonItems_];

        v106 = v233;
        _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v233, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
        v126 = v157;
        v159 = v245 == v157;
        v125 = v242;
        if (v159)
        {
          goto LABEL_50;
        }
      }
    }

    __break(1u);
    goto LABEL_118;
  }

LABEL_45:

  LOBYTE(v248) = 2;
  type metadata accessor for (Range<Int>, Range<Int>)(0);
  CollectionChanges.Projection.init(kind:changes:)();
  v114 = *(&v251 + 1);
  v237 = v251;
  v238 = *(&v250 + 1);
  v115 = v228;
  v116 = v214;
  if (v251 != *(&v251 + 1))
  {
    v240 = (v221 + 56);
    LODWORD(v233) = v250;
    v160 = v237;
    v230 = *(&v251 + 1);
    while (1)
    {
      v161 = v233;
      v163 = v237;
      v162 = v238;
      v164 = specialized CollectionChanges.Projection.subscript.getter(v160, v233, v238);
      LOBYTE(v250) = v161;
      *(&v250 + 1) = v162;
      *&v251 = v163;
      *(&v251 + 1) = v114;
      v166 = v165;
      type metadata accessor for CollectionChanges<Int, Int>.Projection<(Range<Int>, Range<Int>)>(0);
      result = CollectionChanges.Projection.index(after:)(v160);
      v239 = result;
      if (v164 != v166)
      {
        break;
      }

LABEL_77:
      v114 = v230;
      v160 = v239;
      if (v239 == v230)
      {
        goto LABEL_46;
      }
    }

    if (v166 < v164)
    {
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (v164 >= v166)
    {
LABEL_119:
      __break(1u);
      return result;
    }

    v102 = (isa + ((*(v235 + 80) + 32) & ~*(v235 + 80)));
    v167 = v164;
    v244 = v164;
    v241 = v102;
    v242 = v166;
    while (1)
    {
      if (v164 < 0)
      {
        goto LABEL_108;
      }

      if (v167 >= *(isa + 2))
      {
        goto LABEL_109;
      }

      v168 = v231;
      outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v102 + *(v235 + 72) * v167, v231, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v168, v115, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v115, type metadata accessor for ToolbarStorage.GroupItem.GroupSubItem);
LABEL_83:
      if (v166 == ++v167)
      {
        goto LABEL_77;
      }
    }

    v169 = v115;
    v170 = v227;
    _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v169, v227, type metadata accessor for ToolbarStorage.Item);
    _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v170, v234, type metadata accessor for ToolbarStorage.Item);
    v171 = [v246 barButtonItems];
    type metadata accessor for NSObject(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x1E69DC708);
    v172 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if ((v172 & 0xC000000000000001) != 0)
    {
      v173 = MEMORY[0x18D00E9C0](v167, v172);
    }

    else
    {
      if (v167 >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_113;
      }

      v173 = *(v172 + 8 * v167 + 32);
    }

    v174 = v173;

    type metadata accessor for UIKitBarButtonItem(0);
    v245 = v174;
    v175 = swift_dynamicCastClassUnconditional();
    v176 = v175;
    v177 = v246[v218];
    v178 = v219;
    if (v177 != 2)
    {
      if (v177)
      {
        v178 = v219;
        if (v167 == *(isa + 2) - 1)
        {
          goto LABEL_96;
        }

        goto LABEL_95;
      }

      v178 = v219;
      if (v167)
      {
LABEL_95:
        v178 = 2;
      }
    }

LABEL_96:
    *(v175 + OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_edge) = v178;
    v179 = v225;
    outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v234, v225, type metadata accessor for ToolbarStorage.Item);
    (*v240)(v179, 0, 1, v232);
    v180 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_item;
    swift_beginAccess();
    v181 = MEMORY[0x1E69E6720];
    v182 = v226;
    _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v176 + v180, v226, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
    swift_beginAccess();
    v183 = v216;
    _s7SwiftUI14ToolbarStorageV9GroupItemVSgWOfTm_0(v179, v176 + v180, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v181, type metadata accessor for ToolbarStorage.Item?);
    swift_endAccess();
    UIKitBarButtonItem.item.didset();

    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v182, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v181, type metadata accessor for ToolbarStorage.Item?);
    isa = v236;
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v179, &lazy cache variable for type metadata for ToolbarStorage.Item?, type metadata accessor for ToolbarStorage.Item, v181, type metadata accessor for ToolbarStorage.Item?);
    _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v234, type metadata accessor for ToolbarStorage.Item);
    v115 = v228;
    v116 = v214;
    v164 = v244;
    v102 = v241;
    v166 = v242;
    goto LABEL_83;
  }

LABEL_46:

  v117 = v215;
  v118 = v223;
  _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(&v215[*(v116 + 60)], v223, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
  if ((*(v222 + 48))(v118, 1, v224) == 1)
  {
    _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(v118, &lazy cache variable for type metadata for ToolbarStorage.GroupItem.CollapsedContent?, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent, MEMORY[0x1E69E6720], type metadata accessor for ToolbarStorage.Item?);
LABEL_100:
    v185 = v216;
    [v246 setRepresentativeItem_];

    return _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v117, type metadata accessor for ToolbarStorage.GroupItem);
  }

  v102 = v212;
  _s7SwiftUI16PlatformItemListV0D0VWObTm_2(v118, v212, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent);
  v184 = v217;
  outlined init with copy of ToolbarStorage.GroupItem.CollapsedContent.Value(v102, v217, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v102, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent);
    _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v184, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent.Value);
    goto LABEL_100;
  }

  v186 = v184[3];
  v256[2] = v184[2];
  v256[3] = v186;
  v187 = v184[5];
  v256[4] = v184[4];
  v256[5] = v187;
  v188 = v184[1];
  v256[0] = *v184;
  v256[1] = v188;
  v189 = [v246 representativeItem];
  if (!v189)
  {
    goto LABEL_110;
  }

  v190 = [v246 representativeItem];
  if (v190)
  {
    v167 = v190;
    type metadata accessor for UIKitBarButtonItem(0);
    v191 = swift_dynamicCastClass();
    if (v191)
    {
      v192 = v191;
      outlined init with copy of _ViewList_View(v256, &v250);
      v193 = OBJC_IVAR____TtC7SwiftUI18UIKitBarButtonItem_listView;
      swift_beginAccess();
      v194 = MEMORY[0x1E697D9F0];
      v195 = MEMORY[0x1E69E6720];
      _s7SwiftUI16PlatformItemListV0D0VSgWOcTm_0(v192 + v193, &v248, &lazy cache variable for type metadata for _ViewList_View?, MEMORY[0x1E697D9F0], MEMORY[0x1E69E6720], _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
      swift_beginAccess();
      _s7SwiftUI14ToolbarStorageV9GroupItemVSgWOfTm_0(&v250, v192 + v193, &lazy cache variable for type metadata for _ViewList_View?, v194, v195, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
      swift_endAccess();
      UIKitBarButtonItem.listView.didset();

      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(&v248, &lazy cache variable for type metadata for _ViewList_View?, v194, v195, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
      _s7SwiftUI16PlatformItemListV0D0VSgWOhTm_2(&v250, &lazy cache variable for type metadata for _ViewList_View?, v194, v195, _ss23_ContiguousArrayStorageCyyXlGMaTm_0);
    }

    else
    {
LABEL_113:
    }

    goto LABEL_114;
  }

  outlined destroy of _ViewList_View(v256);

LABEL_115:
  _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v102, type metadata accessor for ToolbarStorage.GroupItem.CollapsedContent);
  return _s7SwiftUI14ToolbarStorageV9GroupItemV16CollapsedContentV5ValueOWOhTm_0(v215, type metadata accessor for ToolbarStorage.GroupItem);
}

uint64_t initializeWithCopy for ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    v6 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v6;
    v7 = *(a2 + 56);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = v7;
    v8 = *(a2 + 88);

    if (v8)
    {
      v9 = *(a2 + 96);
      *(a1 + 88) = v8;
      *(a1 + 96) = v9;
      (**(v8 - 8))(a1 + 64, a2 + 64, v8);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      v10 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v10;
      *(a1 + 96) = *(a2 + 96);
    }

    if (*(a2 + 152) == 1)
    {
      v11 = *(a2 + 136);
      *(a1 + 136) = v11;
      (**(v11 - 8))(a1 + 112, a2 + 112);
      *(a1 + 152) = 1;
    }

    else
    {
      v12 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v12;
      *(a1 + 137) = *(a2 + 137);
    }

    *(a1 + 153) = *(a2 + 153);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 169) = *(a2 + 169);
    *(a1 + 176) = *(a2 + 176);
    v13 = *(a2 + 208);
    *(a1 + 208) = v13;
    v14 = v13;
    v15 = **(v13 - 8);

    v15(a1 + 184, a2 + 184, v14);
    v16 = *(a2 + 232);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = v16;
    *(a1 + 240) = *(a2 + 240);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    v17 = *(a2 + 272);
    v18 = *(a2 + 280);
    *(a1 + 272) = v17;
    *(a1 + 280) = v18;
    v131 = a1;
    v132 = type metadata accessor for ToolbarStorage.Item(0);
    v19 = v132[17];
    v133 = (a1 + v19);
    v130 = a2;
    v20 = a2 + v19;
    v21 = type metadata accessor for PlatformItemList.Item(0);
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);

    v24 = v17;
    v25 = v18;
    if (v23(v20, 1, v21))
    {
      _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for PlatformItemList.Item?, type metadata accessor for PlatformItemList.Item, MEMORY[0x1E69E6720]);
      memcpy(v133, v20, *(*(v26 - 8) + 64));
      a1 = v131;
LABEL_69:
      swift_weakCopyInit();
      *(a1 + v132[19]) = *(v130 + v132[19]);
      *(a1 + v132[20]) = *(v130 + v132[20]);
      *(a1 + v132[21]) = *(v130 + v132[21]);
      goto LABEL_70;
    }

    v128 = v22;
    v129 = v21;
    v27 = *v20;
    v28 = *(v20 + 8);
    v29 = v133;
    *v133 = *v20;
    v133[1] = v28;
    v30 = *(v20 + 24);
    v133[2] = *(v20 + 16);
    v133[3] = v30;
    *(v133 + 32) = *(v20 + 32);
    v31 = *(v20 + 48);
    v133[5] = *(v20 + 40);
    v133[6] = v31;
    *(v133 + 56) = *(v20 + 56);
    v32 = *(v20 + 192);
    v33 = v27;
    v34 = v28;

    if (v32 >> 1 == 4294967294)
    {
      v35 = *(v20 + 208);
      *(v133 + 12) = *(v20 + 192);
      *(v133 + 13) = v35;
      *(v133 + 14) = *(v20 + 224);
      *(v133 + 235) = *(v20 + 235);
      v36 = *(v20 + 144);
      *(v133 + 8) = *(v20 + 128);
      *(v133 + 9) = v36;
      v37 = *(v20 + 176);
      *(v133 + 10) = *(v20 + 160);
      *(v133 + 11) = v37;
      v38 = *(v20 + 80);
      *(v133 + 4) = *(v20 + 64);
      *(v133 + 5) = v38;
      v39 = *(v20 + 112);
      *(v133 + 6) = *(v20 + 96);
      *(v133 + 7) = v39;
      v40 = *(v20 + 264);
      if (v40)
      {
LABEL_16:
        v133[32] = *(v20 + 256);
        v133[33] = v40;
        v41 = *(v20 + 272);

        if (v41 >= 2)
        {
          v42 = v41;
        }

        v133[34] = v41;
        *(v133 + 70) = *(v20 + 280);
        *(v133 + 284) = *(v20 + 284);
        *(v133 + 285) = *(v20 + 285);
        v43 = *(v20 + 296);
        v133[36] = *(v20 + 288);
        v133[37] = v43;

LABEL_27:
        v54 = *(v20 + 336);
        if (v54 >> 2 == 0xFFFFFFFF)
        {
          v55 = *(v20 + 384);
          *(v133 + 23) = *(v20 + 368);
          *(v133 + 24) = v55;
          v133[50] = *(v20 + 400);
          v56 = *(v20 + 320);
          *(v133 + 19) = *(v20 + 304);
          *(v133 + 20) = v56;
          v57 = *(v20 + 352);
          *(v133 + 21) = *(v20 + 336);
          *(v133 + 22) = v57;
        }

        else
        {
          v58 = *(v20 + 304);
          v59 = *(v20 + 312);
          v61 = *(v20 + 320);
          v60 = *(v20 + 328);
          v63 = *(v20 + 344);
          v62 = *(v20 + 352);
          v64 = *(v20 + 360);
          v65 = *(v20 + 368);
          v122 = *(v20 + 376);
          v123 = *(v20 + 384);
          v124 = *(v20 + 392);
          __dsta = *(v20 + 400);
          outlined copy of PlatformItemList.Item.SystemItem(v58, v59, v61, v60, v54, v63, v62, v64, v65, v122, v123, v124, __dsta);
          v133[38] = v58;
          v133[39] = v59;
          v133[40] = v61;
          v133[41] = v60;
          v133[42] = v54;
          v133[43] = v63;
          v29 = v133;
          v133[44] = v62;
          v133[45] = v64;
          v133[46] = v65;
          v133[47] = v122;
          v133[48] = v123;
          v133[49] = v124;
          v133[50] = __dsta;
        }

        v66 = *(v20 + 416);
        if (v66 == 1)
        {
          v67 = *(v20 + 456);
          *(v29 + 55) = *(v20 + 440);
          *(v29 + 57) = v67;
          *(v29 + 472) = *(v20 + 472);
          v68 = *(v20 + 424);
          *(v29 + 51) = *(v20 + 408);
          *(v29 + 53) = v68;
          goto LABEL_40;
        }

        *(v29 + 102) = *(v20 + 408);
        *(v29 + 412) = *(v20 + 412);
        if (v66)
        {
          v69 = *(v20 + 424);
          v29[52] = v66;
          v29[53] = v69;

          v70 = *(v20 + 432);
          if (v70)
          {
            goto LABEL_34;
          }
        }

        else
        {
          *(v29 + 26) = *(v20 + 416);
          v70 = *(v20 + 432);
          if (v70)
          {
LABEL_34:
            v71 = *(v20 + 440);
            v29[54] = v70;
            v29[55] = v71;

            v72 = *(v20 + 448);
            if (v72)
            {
LABEL_35:
              v73 = *(v20 + 456);
              v29[56] = v72;
              v29[57] = v73;

LABEL_39:
              v29[58] = *(v20 + 464);
              *(v29 + 472) = *(v20 + 472);
LABEL_40:
              v74 = *(v20 + 488);
              v29[60] = *(v20 + 480);
              v29[61] = v74;
              v29[62] = *(v20 + 496);
              *(v29 + 504) = *(v20 + 504);
              v75 = *(v20 + 512);

              if (v75)
              {
                v76 = *(v20 + 520);
                v29[64] = v75;
                v29[65] = v76;
              }

              else
              {
                *(v29 + 32) = *(v20 + 512);
              }

              *(v29 + 528) = *(v20 + 528);
              if (!*(v20 + 816))
              {
                memcpy(v29 + 67, (v20 + 536), 0x130uLL);
                goto LABEL_55;
              }

              v29[67] = *(v20 + 536);
              v29[68] = *(v20 + 544);
              *(v29 + 552) = *(v20 + 552);
              v29[70] = *(v20 + 560);
              *(v29 + 568) = *(v20 + 568);
              *(v29 + 36) = *(v20 + 576);
              *(v29 + 592) = *(v20 + 592);
              v77 = v29 + 75;
              v78 = (v20 + 600);
              v79 = *(v20 + 624);

              if (v79)
              {
                if (v79 == 1)
                {
                  v80 = *(v20 + 616);
                  *v77 = *v78;
                  *(v29 + 77) = v80;
                  *(v29 + 79) = *(v20 + 632);
LABEL_51:
                  v29[81] = *(v20 + 648);
                  *(v29 + 656) = *(v20 + 656);
                  v82 = v29 + 83;
                  v83 = (v20 + 664);
                  v84 = *(v20 + 776);
                  if (v84 == 1)
                  {
                    v85 = *(v20 + 776);
                    *(v29 + 95) = *(v20 + 760);
                    *(v29 + 97) = v85;
                    *(v29 + 99) = *(v20 + 792);
                    *(v29 + 808) = *(v20 + 808);
                    v86 = *(v20 + 712);
                    *(v29 + 87) = *(v20 + 696);
                    *(v29 + 89) = v86;
                    v87 = *(v20 + 744);
                    *(v29 + 91) = *(v20 + 728);
                    *(v29 + 93) = v87;
                    v88 = *(v20 + 680);
                    *v82 = *v83;
                    *(v29 + 85) = v88;
                  }

                  else
                  {
                    *v82 = *v83;
                    *(v29 + 672) = *(v20 + 672);
                    v29[85] = *(v20 + 680);
                    *(v29 + 688) = *(v20 + 688);
                    *(v29 + 689) = *(v20 + 689);
                    *(v29 + 691) = *(v20 + 691);
                    *(v29 + 692) = *(v20 + 692);
                    v29[87] = *(v20 + 696);
                    v89 = *(v20 + 720);
                    *(v29 + 44) = *(v20 + 704);
                    *(v29 + 45) = v89;
                    v29[92] = *(v20 + 736);
                    *(v29 + 372) = *(v20 + 744);
                    *(v29 + 47) = *(v20 + 752);
                    *(v29 + 768) = *(v20 + 768);
                    v29[97] = v84;
                    *(v29 + 49) = *(v20 + 784);
                    v29[100] = *(v20 + 800);
                    *(v29 + 808) = *(v20 + 808);
                  }

                  v29[102] = *(v20 + 816);
                  v29[103] = *(v20 + 824);
                  v29[104] = *(v20 + 832);

LABEL_55:
                  v90 = v29 + 105;
                  v91 = (v20 + 840);
                  v92 = *(v20 + 864);
                  if (v92)
                  {
                    if (v92 == 1)
                    {
                      v93 = *(v20 + 856);
                      *v90 = *v91;
                      *(v29 + 107) = v93;
                      *(v29 + 109) = *(v20 + 872);
                      v29[111] = *(v20 + 888);
LABEL_62:
                      v97 = *(v20 + 896);
                      v29[112] = v97;
                      v29[113] = *(v20 + 904);
                      v29[114] = *(v20 + 912);
                      v29[115] = *(v20 + 920);
                      v29[116] = *(v20 + 928);
                      v29[117] = *(v20 + 936);
                      v29[118] = *(v20 + 944);
                      *(v29 + 476) = *(v20 + 952);
                      *(v29 + 954) = *(v20 + 954);
                      v98 = v129[28];
                      __dst = v29 + v98;
                      v99 = (v20 + v98);
                      v100 = type metadata accessor for CommandOperation(0);
                      v101 = *(v100 - 8);
                      v125 = *(v101 + 48);
                      v102 = v97;

                      if (v125(v99, 1, v100))
                      {
                        _s7SwiftUI16CommandOperationVSgMaTm_2(0, &lazy cache variable for type metadata for CommandOperation?, type metadata accessor for CommandOperation, MEMORY[0x1E69E6720]);
                        memcpy(__dst, v99, *(*(v103 - 8) + 64));
                        v104 = v133;
                        v105 = v128;
                        v106 = v129;
                      }

                      else
                      {
                        *__dst = *v99;
                        v107 = *(v100 + 20);
                        v108 = &__dst[v107];
                        v109 = &v99[v107];
                        v110 = *&v99[v107];
                        v111 = *&v99[v107 + 8];
                        v112 = v99[v107 + 16];
                        outlined copy of Text.Storage(v110, *(v109 + 1), v109[16]);
                        *v108 = v110;
                        *(v108 + 1) = v111;
                        v108[16] = v112;
                        *(v108 + 3) = *(v109 + 3);
                        v113 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
                        v114 = type metadata accessor for UUID();
                        v115 = *(*(v114 - 8) + 16);

                        v115(&v108[v113], &v109[v113], v114);
                        v116 = *(v100 + 24);
                        v117 = &__dst[v116];
                        v118 = &v99[v116];
                        if (*v118)
                        {
                          v119 = v118[1];
                          *v117 = *v118;
                          v117[1] = v119;
                        }

                        else
                        {
                          *v117 = *v118;
                        }

                        v104 = v133;
                        v105 = v128;
                        v106 = v129;
                        (*(v101 + 56))(__dst, 0, 1, v100);
                      }

                      a1 = v131;
                      *(v104 + v106[29]) = *(v20 + v106[29]);
                      *(v104 + v106[30]) = *(v20 + v106[30]);
                      *(v104 + v106[31]) = *(v20 + v106[31]);
                      *(v104 + v106[32]) = *(v20 + v106[32]);
                      *(v104 + v106[33]) = *(v20 + v106[33]);
                      *(v104 + v106[34]) = *(v20 + v106[34]);
                      v120 = *(v105 + 56);

                      v120(v104, 0, 1, v106);
                      goto LABEL_69;
                    }

                    v29[108] = v92;
                    v29[109] = *(v20 + 872);
                    (**(v92 - 8))(v90, v91);
                    v95 = *(v20 + 880);
                    if (!v95)
                    {
LABEL_61:
                      *(v29 + 55) = *(v20 + 880);
                      goto LABEL_62;
                    }
                  }

                  else
                  {
                    v94 = *(v20 + 856);
                    *v90 = *v91;
                    *(v29 + 107) = v94;
                    v29[109] = *(v20 + 872);
                    v95 = *(v20 + 880);
                    if (!v95)
                    {
                      goto LABEL_61;
                    }
                  }

                  v96 = *(v20 + 888);
                  v29[110] = v95;
                  v29[111] = v96;

                  goto LABEL_62;
                }

                v29[78] = v79;
                v29[79] = *(v20 + 632);
                (**(v79 - 8))((v29 + 75), v20 + 600, v79);
              }

              else
              {
                v81 = *(v20 + 616);
                *v77 = *v78;
                *(v29 + 77) = v81;
                v29[79] = *(v20 + 632);
              }

              v29[80] = *(v20 + 640);

              goto LABEL_51;
            }

LABEL_38:
            *(v29 + 28) = *(v20 + 448);
            goto LABEL_39;
          }
        }

        *(v29 + 27) = *(v20 + 432);
        v72 = *(v20 + 448);
        if (v72)
        {
          goto LABEL_35;
        }

        goto LABEL_38;
      }
    }

    else
    {
      v44 = *(v20 + 72);
      if (v44 == 255)
      {
        v133[8] = *(v20 + 64);
        *(v133 + 72) = *(v20 + 72);
      }

      else
      {
        v45 = *(v20 + 64);
        outlined copy of GraphicsImage.Contents(v45, *(v20 + 72));
        v133[8] = v45;
        *(v133 + 72) = v44;
        v32 = *(v20 + 192);
      }

      v133[10] = *(v20 + 80);
      *(v133 + 11) = *(v20 + 88);
      *(v133 + 104) = *(v20 + 104);
      *(v133 + 108) = *(v20 + 108);
      *(v133 + 121) = *(v20 + 121);
      *(v133 + 17) = *(v20 + 136);
      *(v133 + 19) = *(v20 + 152);
      *(v133 + 84) = *(v20 + 168);
      *(v133 + 170) = *(v20 + 170);
      *(v133 + 171) = *(v20 + 171);
      if (v32 >> 1 == 0xFFFFFFFF)
      {
        v46 = *(v20 + 192);
        *(v133 + 11) = *(v20 + 176);
        *(v133 + 12) = v46;
      }

      else
      {
        v47 = *(v20 + 176);
        v48 = *(v20 + 184);
        v49 = *(v20 + 200);
        outlined copy of AccessibilityImageLabel(v47, v48, v32, v49);
        v133[22] = v47;
        v133[23] = v48;
        v133[24] = v32;
        v133[25] = v49;
      }

      v50 = *(v20 + 216);
      v133[26] = *(v20 + 208);
      v133[27] = v50;
      *(v133 + 112) = *(v20 + 224);
      *(v133 + 57) = *(v20 + 228);
      *(v133 + 232) = *(v20 + 232);
      v51 = *(v20 + 240);
      v133[30] = v51;
      *(v133 + 124) = *(v20 + 248);
      *(v133 + 250) = *(v20 + 250);
      swift_unknownObjectRetain();

      v52 = v51;
      v40 = *(v20 + 264);
      if (v40)
      {
        goto LABEL_16;
      }
    }

    v53 = *(v20 + 272);
    *(v133 + 16) = *(v20 + 256);
    *(v133 + 17) = v53;
    *(v133 + 18) = *(v20 + 288);
    goto LABEL_27;
  }

  *a1 = *a2;
  if (*(a2 + 48) == 1)
  {
    v5 = *(a2 + 32);
    *(a1 + 32) = v5;
    (**(v5 - 8))(a1 + 8, a2 + 8);
    *(a1 + 48) = 1;
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 33) = *(a2 + 33);
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

LABEL_70:
  swift_storeEnumTagMultiPayload();
  return a1;
}

void destroy for ToolbarStorage.GroupItem.GroupSubItem(uint64_t a1, uint64_t a2)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    if (*(a1 + 48) == 1)
    {
      __swift_destroy_boxed_opaque_existential_1((a1 + 8));
    }

    return;
  }

  if (*(a1 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 64));
  }

  if (*(a1 + 152) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1((a1 + 112));
  }

  __swift_destroy_boxed_opaque_existential_1((a1 + 184));

  v3 = a1 + *(type metadata accessor for ToolbarStorage.Item(0) + 68);
  v4 = type metadata accessor for PlatformItemList.Item(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {

    v5 = *(v3 + 192);
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if ((v5 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v7 = *(v3 + 72);
      if (v7 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(v3 + 64), v7);
        v5 = *(v3 + 192);
        v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
      }

      if (v6 != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(v3 + 176), *(v3 + 184), v5, *(v3 + 200));
      }

      swift_unknownObjectRelease();
    }

    if (*(v3 + 264))
    {

      v8 = *(v3 + 272);
      if (v8 >= 2)
      {
      }
    }

    v9 = *(v3 + 336);
    if (v9 >> 2 != 0xFFFFFFFF)
    {
      outlined consume of PlatformItemList.Item.SystemItem(*(v3 + 304), *(v3 + 312), *(v3 + 320), *(v3 + 328), v9, *(v3 + 344), *(v3 + 352), *(v3 + 360), *(v3 + 368), *(v3 + 376), *(v3 + 384), *(v3 + 392), *(v3 + 400));
    }

    v10 = *(v3 + 416);
    if (v10)
    {
      if (v10 == 1)
      {
        goto LABEL_31;
      }
    }

    if (*(v3 + 432))
    {
    }

    if (*(v3 + 448))
    {
    }

LABEL_31:

    if (*(v3 + 512))
    {
    }

    if (!*(v3 + 816))
    {
LABEL_41:
      v12 = *(v3 + 864);
      if (v12)
      {
        if (v12 == 1)
        {
LABEL_46:

          v13 = v3 + *(v4 + 112);
          v14 = type metadata accessor for CommandOperation(0);
          if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
          {
            v15 = v13 + *(v14 + 20);
            outlined consume of Text.Storage(*v15, *(v15 + 8), *(v15 + 16));

            v16 = *(type metadata accessor for CommandGroupPlacement(0) + 20);
            v17 = type metadata accessor for UUID();
            (*(*(v17 - 8) + 8))(v15 + v16, v17);
            if (*(v13 + *(v14 + 24)))
            {
            }
          }

          goto LABEL_50;
        }

        __swift_destroy_boxed_opaque_existential_1((v3 + 840));
      }

      if (*(v3 + 880))
      {
      }

      goto LABEL_46;
    }

    v11 = *(v3 + 624);
    if (v11)
    {
      if (v11 == 1)
      {
LABEL_38:
        if (*(v3 + 776) != 1)
        {
        }

        goto LABEL_41;
      }

      __swift_destroy_boxed_opaque_existential_1((v3 + 600));
    }

    goto LABEL_38;
  }

LABEL_50:

  swift_weakDestroy();
}

unint64_t lazy protocol witness table accessor for type [ToolbarStorage.ID] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ToolbarStorage.ID] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ToolbarStorage.ID] and conformance [A])
  {
    _ss23_ContiguousArrayStorageCyyXlGMaTm_0(255, &lazy cache variable for type metadata for [ToolbarStorage.ID], &type metadata for ToolbarStorage.ID, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable(MEMORY[0x1E69E6310], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolbarStorage.ID] and conformance [A]);
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolbarStorage.ID(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[5];
  Hasher.init(_seed:)();
  _ViewList_ID.hash(into:)();
  MEMORY[0x18D00F6F0](v2);
  MEMORY[0x18D00F6F0](v3);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t specialized CollectionChanges.Projection.subscript.getter(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3 + 40 * a1;
  if (*(v3 + 64) <= 1u)
  {
    return *(v3 + 32);
  }

LABEL_7:
  _StringGuts.grow(_:)(17);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(a3 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = a3 + 40 * a1;
  if (*(v3 + 64) >= 2u)
  {
    return *(v3 + 32);
  }

LABEL_7:
  _StringGuts.grow(_:)(17);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x18D00C9B0](v5);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void type metadata accessor for CollectionChanges<Int, Int>.Projection<Range<Int>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CollectionChanges<Int, Int>.Projection<Range<Int>>)
  {
    _sSnySiGMaTm_0(255, &lazy cache variable for type metadata for Range<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6548], MEMORY[0x1E69E66A8]);
    v1 = type metadata accessor for CollectionChanges.Projection();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CollectionChanges<Int, Int>.Projection<Range<Int>>);
    }
  }
}

uint64_t StoreBox.update(property:phase:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v36 = a1;
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = &v31 - v8;
  LODWORD(v8) = *v3;
  v10 = *(v3 + 4);
  v11 = *(v3 + 16);
  v31 = *(v3 + 24);
  v12 = *(v3 + 32);
  v13 = *(v3 + 40);
  v33 = v10;
  v34 = v12;
  if (v8 == *MEMORY[0x1E698D3F8])
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = xmmword_18CD76350;
  }

  else
  {
    Value = AGGraphGetValue();
    v15 = *(Value + 8);
    v35 = *(Value + 16);
    v16 = v19 & 1;

    v17 = v35;
  }

  v37[5] = v14;
  v38 = v15;
  v39 = v17;
  if (v13 && !v16)
  {
    v20 = v36;
    swift_unknownObjectRetain_n();
    swift_unknownObjectRelease();
    LODWORD(v35) = 0;
    *v20 = v13;
    v21 = v13;
LABEL_14:
    v37[0] = v11;
    swift_unknownObjectRetain();

    dispatch thunk of ObservableObject.objectWillChange.getter();
    swift_getAssociatedConformanceWitness();
    v25 = type metadata accessor for AttributeInvalidatingSubscriber();
    swift_getWitnessTable(MEMORY[0x1E6980A58], v25, v31);
    swift_getWitnessTable(MEMORY[0x1E6980A50], v25);
    SubscriptionLifetime.subscribe<A>(subscriber:to:)();
    swift_unknownObjectRelease();
    (*(v32 + 8))(v9, AssociatedTypeWitness);

    v24 = v35;
    goto LABEL_15;
  }

  LODWORD(v35) = v16;
  v37[0] = v5;
  v37[1] = v6;
  swift_getKeyPath();
  v22 = swift_readAtKeyPath();
  v21 = *v23;
  swift_unknownObjectRetain();
  v22(v37, 0);

  *v36 = v21;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (!v13)
  {
    if (v21)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v24 = v35;
  if (v13 == v21)
  {
LABEL_12:
    v24 = 0;
    if (!v21)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v21)
  {
LABEL_13:
    LODWORD(v35) = v24;
    goto LABEL_14;
  }

LABEL_15:
  if (AGGraphGetWeakValue())
  {
    v27 = v26;

    swift_unknownObjectRelease();
    if (((v27 | v24) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else
  {

    swift_unknownObjectRelease();
    if ((v24 & 1) == 0)
    {
LABEL_21:
      v29 = 0;
      v36[1] = v34;
      *(v4 + 40) = v21;
      return v29 & 1;
    }

    LOBYTE(v27) = 0;
  }

  v28 = v34 + 1;
  *(v4 + 32) = v34 + 1;
  v36[1] = v28;
  *(v4 + 40) = v21;
  v29 = v27 | v24;
  return v29 & 1;
}

void *sub_18BFA82B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v6 = *(a2 + a3 - 16);
  v7 = *(a1 + 8);
  v9[1] = *a1;
  v10 = v7;
  v11 = *(a1 + 16);
  result = FocusedValues.subscript.getter(v6, a3, a5, v9);
  *a4 = v9[0];
  return result;
}

uint64_t sub_18BFA8314(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v6 = *a1;
  return specialized FocusedValues.subscript.setter(&v6, v4);
}

__n128 sub_18BFA8374(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t FocusedValues.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *x8_0@<X8>)
{
  v10 = *v5;
  v11 = *(v5 + 8);
  v12 = *(v5 + 1);
  v7 = type metadata accessor for FocusedObjectKey(0, a1, a3, a4);
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for FocusedObjectKey<A>, v7, v10, v11, v12);
  return FocusedValues.subscript.getter(v7, WitnessTable, x8_0);
}

uint64_t FocusedValues.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v38 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v36 - v7;
  v9 = type metadata accessor for FocusedValues.Entry(255, a1, a2, v8);
  v10 = type metadata accessor for Optional();
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  v17 = *(v9 - 8);
  v18 = *(v17 + 56);
  v18(&v36 - v15, 1, 1, v9, v14);
  (v18)(v12, 1, 1, v9);
  v47 = 0x8000000000000000;
  v20 = type metadata accessor for FocusedValuePropertyKey(0, a1, a2, v19);
  v42 = a1;
  v43 = a2;
  v44 = v16;
  v45 = &v47;
  v46 = v12;
  swift_getWitnessTable(protocol conformance descriptor for FocusedValuePropertyKey<A>, v20);
  PropertyList.forEach<A>(keyType:_:)();
  v21 = *(v17 + 48);
  if (v21(v12, 1, v9))
  {
    v22 = *(AssociatedTypeWitness - 8);
    v23 = *(v22 + 56);
    v24 = 1;
    v23(v41, 1, 1, AssociatedTypeWitness);
    v25 = v21(v16, 1, v9);
    v26 = v38;
    if (!v25)
    {
      (*(v22 + 16))(v38, &v16[*(v9 + 36)], AssociatedTypeWitness);
      v24 = 0;
    }

    v23(v26, v24, 1, AssociatedTypeWitness);
    v27 = v41;
    if ((*(v22 + 48))(v41, 1, AssociatedTypeWitness) != 1)
    {
      (*(v36 + 8))(v27, v37);
    }
  }

  else
  {
    v28 = *(v9 + 36);
    v29 = *(AssociatedTypeWitness - 8);
    v30 = v41;
    (*(v29 + 16))(v41, &v12[v28], AssociatedTypeWitness);
    v31 = *(v29 + 56);
    v31(v30, 0, 1, AssociatedTypeWitness);
    v32 = v38;
    (*(v29 + 32))(v38, v30, AssociatedTypeWitness);
    v31(v32, 0, 1, AssociatedTypeWitness);
  }

  v33 = v40;
  v34 = *(v39 + 8);
  v34(v12, v40);
  return (v34)(v16, v33);
}

uint64_t type metadata completion function for FocusedValues.Entry(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void storeEnumTagSinglePayload for FocusedValues.Entry(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = ((((v9 + 24) & ~v9) + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v10 >= a3)
  {
    v14 = 0;
    v15 = a2 - v10;
    if (a2 <= v10)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v9 + 24) & ~v9) + *(v7 + 64)) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = a3 - v10 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = a2 - v10;
    if (a2 <= v10)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(a1 + v11) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v11) = 0;
      }

      else if (v14)
      {
        *(a1 + v11) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if ((v8 & 0x80000000) != 0)
      {
        v18 = *(v7 + 56);

        v18((a1 + v9 + 24) & ~v9, a2);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        a1[1] = 0;
        a1[2] = 0;
        *a1 = a2 & 0x7FFFFFFF;
      }

      else
      {
        a1[2] = (a2 - 1);
      }

      return;
    }
  }

  if (((((v9 + 24) & ~v9) + *(v7 + 64)) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = 1;
  }

  if (((((v9 + 24) & ~v9) + *(v7 + 64)) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v17 = ~v10 + a2;
    bzero(a1, v11);
    *a1 = v17;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      *(a1 + v11) = v16;
    }

    else
    {
      *(a1 + v11) = v16;
    }
  }

  else if (v14)
  {
    *(a1 + v11) = v16;
  }
}

uint64_t getEnumTagSinglePayload for FocusedValues.Entry(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  v9 = *(v5 + 80);
  v10 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((((v9 + 24) & ~v9) + v10) & 0xFFFFFFFFFFFFFFF8) + 16;
  v12 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = a2 - v8 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *(a1 + v11);
      if (!v16)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if ((v7 & 0x80000000) != 0)
    {
      v20 = *(v6 + 48);

      return v20((a1 + v9 + 24) & ~v9);
    }

    else
    {
      v19 = *(a1 + 16);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v8 + (v12 | v18) + 1;
}

uint64_t FocusedValueBox.update(property:phase:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v55 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 16);
  v46 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v45 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Optional();
  v49 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v44 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v40 - v12;
  v15 = type metadata accessor for FocusedValue.Content(0, v5, v13, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v40 - v18);
  (*(v16 + 16))(&v40 - v18, a1, v15, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v43 = a1;
    v21 = *v19;
    if (*v50 == *MEMORY[0x1E698D3F8])
    {
      v41 = 0;
      v22 = 0;
      v23 = 0;
      v42 = xmmword_18CD76350;
    }

    else
    {
      Value = AGGraphGetValue();
      v41 = v25;
      v22 = *Value;
      v23 = *(Value + 8);
      v42 = *(Value + 16);
    }

    v26 = *(v50 + 8);
    v52 = v21;
    if (v26)
    {
      v40 = v22;
      v51 = v26;
      type metadata accessor for KeyPath();
      swift_retain_n();
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v27)
      {

        v22 = v40;
        if ((v41 & 1) == 0)
        {

          v20 = 0;
          v28 = v47;
LABEL_18:
          v38 = v43;
          (*(v16 + 8))(v43, v15);
          (*(v49 + 16))(v38, v50 + *(v3 + 32), v28);
          swift_storeEnumTagMultiPayload();
          return v20;
        }

LABEL_13:
        v52 = v22;
        v53 = v23;
        v54 = v42;

        swift_getAtKeyPath();

        v29 = *(v49 + 16);
        *&v42 = *(v3 + 32);
        v28 = v47;
        v29(v10, v50 + v42, v47);
        v30 = v46;
        if ((*(v46 + 48))(v10, 1, v5) == 1)
        {

          (*(v49 + 8))(v10, v28);
        }

        else
        {
          v31 = v45;
          (*(v30 + 32))(v45, v10, v5);
          v32 = *(v30 + 16);
          v40 = v21;
          v33 = v44;
          v32(v44, v31, v5);
          v34 = (*(v30 + 56))(v33, 0, 1, v5);
          v41 = v3;
          MEMORY[0x1EEE9AC00](v34);
          v35 = v48;
          *(&v40 - 4) = v28;
          *(&v40 - 3) = v35;
          *(&v40 - 4) = 3;
          _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v33, closure #1 in compareValues<A>(_:_:options:)partial apply, (&v40 - 6), v28, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v36);

          v37 = *(v49 + 8);
          v37(v33, v28);
          (*(v30 + 8))(v31, v5);
          v3 = v41;
          if (v52 == 1)
          {
            v37(v48, v28);
            v20 = 0;
            goto LABEL_18;
          }
        }

        (*(v49 + 40))(v50 + v42, v48, v28);
        v20 = 1;
        goto LABEL_18;
      }

      v22 = v40;
    }

    else
    {
    }

    *(v50 + 8) = v21;
    goto LABEL_13;
  }

  (*(v16 + 8))(v19, v15);
  return 0;
}

void type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>()
{
  if (!lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>)
  {
    v0 = type metadata accessor for EnvironmentPropertyKey();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey>();
    result = swift_getWitnessTable(MEMORY[0x1E697FE40], v3, v0, v1);
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.OpenWindowActionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.OpenWindowActionKey@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v8 = a1;
    swift_once();
    a1 = v8;
  }

  v2 = static EnvironmentValues.OpenWindowActionKey.defaultValue;
  v3 = unk_1EAA1D600;
  v4 = qword_1EAA1D610;
  v5 = byte_1EAA1D618;
  *a1 = static EnvironmentValues.OpenWindowActionKey.defaultValue;
  *(a1 + 8) = v3;
  v6 = byte_1EAA1D608;
  *(a1 + 16) = byte_1EAA1D608;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return outlined copy of SceneList.Namespace(v2, v3, v6);
}

uint64_t initializeWithCopy for OpenWindowAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  outlined copy of SceneList.Namespace(*a2, v5, v6);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t CommandsBodyAccessor.updateBody(of:changed:)(uint64_t result, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](result);
    v4 = type metadata accessor for CommandsBodyAccessor(0, v2, v3, v3);
    swift_getWitnessTable(protocol conformance descriptor for CommandsBodyAccessor<A>, v4);
    return BodyAccessor.setBody(_:)();
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    type metadata accessor for UTType?(0, &lazy cache variable for type metadata for UTType?, MEMORY[0x1E69E8450], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for SymbolEffectConfiguration();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for SymbolEffectOptions();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  v7 = a5(0, *(a4 + 16), *(a4 + 24));
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_4(uint64_t a1, uint64_t a2)
{
  _s7SwiftUI9TextFieldVyAA01_cD10StyleLabelVGMaTm_1(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_5(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = result;
    v12 = *(v10 + 56);
    v13 = a1 + *(a4 + 20);

    return v12(v13, a2, a2, v11);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_7(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Binding<SearchFieldState>?(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_indexTm_8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a5(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a3)
  {
    v13 = *(v12 + 56);

    return v13(a1, a2, a2, v11);
  }

  else
  {
    v15 = a6(0);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + *(a4 + 20);

    return v16(v17, a2, a2, v15);
  }
}

void *__swift_store_extra_inhabitant_indexTm_9(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t __swift_store_extra_inhabitant_indexTm_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_11(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for MainMenuItem.Identifier(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t FocusedValue.content.getter@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(0, *(a1 + 16));
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, v3, v5);
}

uint64_t FocusStore.makeStoreContent(_:)(uint64_t result)
{
  v2 = v1;
  v3 = *(result + 16);
  if (!v3)
  {
    *v1 = 0;
    return result;
  }

  v4 = 0;
  v5 = result + 32;
  v6 = result + 32;
  v7 = *(result + 16);
  do
  {
    outlined init with copy of FocusStoreList.Item(v6, &v34);
    v8 = v34;
    outlined destroy of FocusStoreList.Item(&v34);
    if (v8 > v4)
    {
      v4 = v8;
    }

    v6 += 72;
    --v7;
  }

  while (v7);
  *v2 = v4;
  while (1)
  {
    outlined init with copy of FocusStoreList.Item(v5, &v34);
    v9 = v35;
    v10 = v2[2];
    if (!*(v10 + 16) || (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v35), (v12 & 1) == 0))
    {
      v13 = 0;
      v33 = 0;
      v14 = v36;
      if (!v36)
      {
        goto LABEL_15;
      }

LABEL_14:
      v14(&v33);
      v13 = v33;
      goto LABEL_15;
    }

    v13 = *(*(v10 + 56) + 8 * v11);
    v33 = v13;

    v14 = v36;
    if (v36)
    {
      goto LABEL_14;
    }

LABEL_15:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v2[2];
    v16 = v32;
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
    v19 = v16[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v16[3] < v22)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v22, isUniquelyReferenced_nonNull_native);
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v9);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_38;
      }

LABEL_20:
      v25 = v32;
      if (v23)
      {
        goto LABEL_21;
      }

      goto LABEL_23;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v26 = v17;
    specialized _NativeDictionary.copy()();
    v17 = v26;
    v25 = v32;
    if (v23)
    {
LABEL_21:
      *(v25[7] + 8 * v17) = v13;

      goto LABEL_25;
    }

LABEL_23:
    v25[(v17 >> 6) + 8] |= 1 << v17;
    *(v25[6] + 8 * v17) = v9;
    *(v25[7] + 8 * v17) = v13;
    v27 = v25[2];
    v21 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v21)
    {
      goto LABEL_37;
    }

    v25[2] = v28;
LABEL_25:
    v2[2] = v25;
    if (v37 == 1 && swift_weakLoadStrong())
    {
      type metadata accessor for ViewResponder();
      if (swift_dynamicCastClass())
      {
        swift_weakInit();
        swift_weakAssign();
        v29 = v2[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29[2] + 1, 1, v29);
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
        }

        v29[2] = v31 + 1;
        outlined init with take of Binding<SearchFieldState>(&v32, &v29[v31 + 4], type metadata accessor for WeakBox<ViewResponder>);
        v2[1] = v29;
        goto LABEL_8;
      }
    }

LABEL_8:
    result = outlined destroy of FocusStoreList.Item(&v34);
    v5 += 72;
    if (!--v3)
    {
      return result;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

double closure #1 in FocusStoreUpdateAction.init<A>(value:responder:bridge:focusScopes:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[1] = a1;
  v11 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FocusStore.Entry(255, v15, v16, v14);
  v18 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v26 - v19;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      (*(v11 + 16))(v13, a4, a6);

      FocusStore.Entry.init(value:focusScopes:responder:bridge:)(v13, a5, v23, a6, a7, v20);
      (*(*(v17 - 8) + 56))(v20, 0, 1, v17);
      v25 = type metadata accessor for FocusStore.Key(0, a6, a7, v24);
      swift_getWitnessTable(protocol conformance descriptor for FocusStore.Key<A>, v25);
      PropertyList.subscript.setter();
    }
  }

  return result;
}

uint64_t FocusStore.Entry.init(value:focusScopes:responder:bridge:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v12 = type metadata accessor for FocusStore.Entry.Target(0, a5, a6, a4);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  swift_weakInit();
  swift_weakAssign();

  swift_weakInit();
  swift_weakAssign();

  swift_storeEnumTagMultiPayload();
  return FocusStore.Entry.init(value:focusScopes:target:)(a1, a2, v14, a5, a6, x8_0);
}

uint64_t FocusStore.Entry.init(value:focusScopes:target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v12 = type metadata accessor for FocusStore.Entry(0, a4, a5, v11);
  *(a6 + *(v12 + 36)) = a2;
  v13 = *(v12 + 40);
  v15 = type metadata accessor for FocusStore.Entry.Target(0, a4, a5, v14);
  v16 = *(*(v15 - 8) + 32);

  return v16(a6 + v13, a3, v15);
}

void *initializeWithTake for FocusStore.Entry.Target(void *a1, void *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = a2[1];
    *a1 = *a2;
    a1[1] = v5;
    type metadata accessor for Binding<SearchFieldState>(0);
    v7 = *(v6 + 32);
    v8 = a1 + v7;
    v9 = a2 + v7;
    *v8 = *(a2 + v7);
    v8[1] = *(a2 + v7 + 1);
    *(v8 + 1) = *(a2 + v7 + 2);
    v8[8] = *(a2 + v7 + 8);
    *(v8 + 1) = *(a2 + v7 + 4);
    v10 = type metadata accessor for SearchFieldState(0);
    v11 = v10[9];
    v12 = type metadata accessor for AttributedString();
    (*(*(v12 - 8) + 32))(&v8[v11], &v9[v11], v12);
    v8[v10[10]] = v9[v10[10]];
    v13 = v10[11];
    v14 = &v8[v13];
    v15 = &v9[v13];
    v14[4] = v15[4];
    *v14 = *v15;
  }

  else
  {
    swift_weakTakeInit();
    swift_weakTakeInit();
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t initializeWithCopy for FocusStore.Entry(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v41 = a1;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v40 = type metadata accessor for AttributedString();
  v9 = *(v40 - 8);
  v10 = *(v9 + 80);
  v11 = v10;
  v12 = v10 + 8;
  v13 = v10 & 0xF8 ^ 0xFFFFFFFFFFFFFFF8;
  v14 = ((v7 + v12) & v13);
  v15 = ((v8 + v12) & v13);
  v16 = v10 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v17 = (v11 + 9) & ~v11;
  v18 = *(v9 + 64);
  if (((v10 + 16) & v16) + ((v17 + v18) & 0xFFFFFFFFFFFFFFFCLL) + 9 <= 0x10)
  {
    v19 = 16;
  }

  else
  {
    v19 = ((v10 + 16) & v16) + ((v17 + v18) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  }

  v20 = *(v15 + v19);

  if (v20 < 2)
  {
    goto LABEL_19;
  }

  if (v19 <= 3)
  {
    v21 = v19;
  }

  else
  {
    v21 = 4;
  }

  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v22 = *v15;
    }

    else if (v21 == 3)
    {
      v22 = *v15 | (*(v15 + 2) << 16);
    }

    else
    {
      v22 = *v15;
    }

    goto LABEL_16;
  }

  if (v21)
  {
    v22 = *v15;
LABEL_16:
    v23 = (v22 | ((v20 - 2) << (8 * v19))) + 2;
    v24 = v22 + 2;
    if (v19 >= 4)
    {
      v20 = v24;
    }

    else
    {
      v20 = v23;
    }
  }

LABEL_19:
  if (v20 == 1)
  {
    *v14 = *v15;
    v25 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
    v26 = ((v15 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v25 = *v26;
    v27 = ((v25 + v12) & v16);
    v28 = ((v26 + v12) & v16);
    *v27 = *v28;
    v27[1] = v28[1];
    v27[2] = v28[2];
    v27[3] = v28[3];
    v29 = (v27 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v30 = (v28 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v31 = *v30;
    *(v29 + 4) = *(v30 + 4);
    *v29 = v31;
    v32 = (v11 + 5 + v29) & ~v11;
    v33 = (v11 + 5 + v30) & ~v11;
    v34 = *(v9 + 16);

    v34(v32, v33, v40);
    *(v32 + v18) = *(v33 + v18);
    v35 = (v32 + v18) & 0xFFFFFFFFFFFFFFFCLL;
    v36 = (v33 + v18) & 0xFFFFFFFFFFFFFFFCLL;
    v37 = *(v36 + 4);
    *(v35 + 8) = *(v36 + 8);
    *(v35 + 4) = v37;
    v38 = 1;
  }

  else
  {
    swift_weakCopyInit();
    swift_weakCopyInit();
    v38 = 0;
  }

  *(v14 + v19) = v38;
  return v41;
}

uint64_t destroy for FocusStore.Entry(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = (a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = ((v4 + (v7 | 7) + 8) & ~(v7 | 7));
  v9 = *(v6 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v10 = ((v7 + 16) & v9) + ((((v7 + 9) & ~v7) + *(v6 + 64)) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  if (v10 <= 0x10)
  {
    v10 = 16;
  }

  v11 = v8[v10];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_17;
      }

      v14 = *v8;
    }

    else if (v13 == 2)
    {
      v14 = *v8;
    }

    else if (v13 == 3)
    {
      v14 = *v8 | (v8[2] << 16);
    }

    else
    {
      v14 = *v8;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 2;
    v11 = v14 + 2;
    if (v10 < 4)
    {
      v11 = v15;
    }
  }

LABEL_17:
  if (v11 == 1)
  {
    v18 = *(v5 - 8);

    v16 = *(v18 + 8);

    return v16((v7 + ((((v7 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v9) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v7, v5);
  }

  else
  {
    swift_weakDestroy();

    return swift_weakDestroy();
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, PropertyList>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, PropertyList>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, PropertyList>);
    }
  }
}

uint64_t objectdestroy_5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = (type metadata accessor for FocusStore.Entry(0, v5, v6, a4) - 8);
  v8 = v4 + ((*(*v7 + 80) + 32) & ~*(*v7 + 80));
  (*(*(v5 - 8) + 8))(v8, v5);

  v9 = v8 + v7[12];
  type metadata accessor for FocusStore.Entry.Target(0, v5, v6, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    type metadata accessor for Binding<SearchFieldState>(0);
    v12 = *(v11 + 32);
    v13 = v12 + *(type metadata accessor for SearchFieldState(0) + 36);
    v14 = type metadata accessor for AttributedString();
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
  }

  else
  {
    swift_weakDestroy();
    swift_weakDestroy();
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_5Tm_0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

void *assignWithCopy for SceneStorage(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  a1[1] = a2[1];

  v6 = ((a1 + 23) & 0xFFFFFFFFFFFFFFF8);
  v7 = ((a2 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];

  v8 = *(*(a3 + 16) - 8);
  v9 = v8 + 24;
  v10 = *(v8 + 80);
  v11 = (v6 + v10 + 16) & ~v10;
  v12 = (v7 + v10 + 16) & ~v10;
  (*(v8 + 24))(v11, v12);
  v13 = *(v9 + 40) + 7;
  v14 = ((v13 + v11) & 0xFFFFFFFFFFFFFFF8);
  v15 = v13 + v12;
  v16 = (v15 & 0xFFFFFFFFFFFFFFF8) + 15;
  *v14 = *(v15 & 0xFFFFFFFFFFFFFFF8);

  *((v14 + 15) & 0xFFFFFFFFFFFFFFF8) = *(v16 & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

unint64_t assignWithCopy for AlertModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v5 = a1 & 0xFFFFFFFFFFFFFFF8;
  v6 = a2 & 0xFFFFFFFFFFFFFFF8;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);

  *(v5 + 16) = *(v6 + 16);

  *(v5 + 24) = *(v6 + 24);
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v9 = *(v6 + 48);
  outlined copy of Text.Storage(v7, v8, v9);
  v10 = *(v5 + 32);
  v11 = *(v5 + 40);
  v12 = *(v5 + 48);
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  outlined consume of Text.Storage(v10, v11, v12);
  *(v5 + 56) = *(v6 + 56);

  v13 = *(*(a3 + 16) - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v15 + 64 + v5) & ~v15;
  v17 = (v15 + 64 + v6) & ~v15;
  (*(v13 + 24))(v16, v17);
  v18 = *(v14 + 40);
  v19 = *(*(a3 + 24) - 8);
  v20 = v19 + 24;
  v21 = *(v19 + 80);
  v22 = v18 + v21;
  v23 = (v22 + v16) & ~v21;
  v24 = (v22 + v17) & ~v21;
  (*(v19 + 24))(v23, v24);
  v25 = *(v20 + 40) + 7;
  v26 = (v25 + v23) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v25 + v24) & 0xFFFFFFFFFFFFFFF8;
  v28 = *v27;
  if (*v26 < 0xFFFFFFFFuLL)
  {
    if (v28 >= 0xFFFFFFFF)
    {
      v33 = *(v27 + 8);
      *v26 = v28;
      *(v26 + 8) = v33;
      *(v26 + 16) = *(v27 + 16);
      *(v26 + 24) = *(v27 + 24);
      v34 = *(v27 + 32);
      *(v26 + 32) = v34;
      *(v26 + 40) = *(v27 + 40);
      *(v26 + 48) = *(v27 + 48);
      *(v26 + 56) = *(v27 + 56);
      *(v26 + 64) = *(v27 + 64);
      *(v26 + 68) = *(v27 + 68);
      *(v26 + 72) = *(v27 + 72);
      *(v26 + 76) = *(v27 + 76);
      *(v26 + 80) = *(v27 + 80);
      v35 = v34;

      goto LABEL_8;
    }

LABEL_7:
    v36 = *(v27 + 16);
    *v26 = *v27;
    *(v26 + 16) = v36;
    v37 = *(v27 + 32);
    v38 = *(v27 + 48);
    v39 = *(v27 + 64);
    *(v26 + 80) = *(v27 + 80);
    *(v26 + 48) = v38;
    *(v26 + 64) = v39;
    *(v26 + 32) = v37;
    goto LABEL_8;
  }

  if (v28 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  v29 = *(v27 + 8);
  *v26 = v28;
  *(v26 + 8) = v29;
  *(v26 + 16) = *(v27 + 16);
  *(v26 + 24) = *(v27 + 24);
  v30 = *(v27 + 32);
  v31 = *(v26 + 32);
  *(v26 + 32) = v30;
  v32 = v30;

  *(v26 + 40) = *(v27 + 40);

  *(v26 + 48) = *(v27 + 48);
  *(v26 + 56) = *(v27 + 56);

  *(v26 + 64) = *(v27 + 64);
  *(v26 + 68) = *(v27 + 68);
  *(v26 + 72) = *(v27 + 72);
  *(v26 + 76) = *(v27 + 76);
  *(v26 + 80) = *(v27 + 80);

LABEL_8:
  *(v26 + 88) = *(v27 + 88);
  return a1;
}

uint64_t *assignWithCopy for ItemSheetPresentationModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = v6 & 0xFFFFFFFFFFFFFFF8;
  *v7 = *(v6 & 0xFFFFFFFFFFFFFFF8);

  v30 = a3;
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = v7 + v11 + 8;
  v13 = v11 + 8 + v8;
  v14 = *(v10 + 48);
  LODWORD(v7) = v14(v12 & ~v11, 1, v9);
  v15 = v14(v13 & ~v11, 1, v9);
  if (v7)
  {
    if (v15)
    {
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
LABEL_6:
      if (v16)
      {
        v18 = v17;
      }

      else
      {
        v18 = v17 + 1;
      }

      memcpy((v12 & ~v11), (v13 & ~v11), v18);
      goto LABEL_12;
    }

    (*(v10 + 16))(v12 & ~v11, v13 & ~v11, v9);
    (*(v10 + 56))(v12 & ~v11, 0, 1, v9);
  }

  else
  {
    if (v15)
    {
      (*(v10 + 8))(v12 & ~v11, v9);
      v16 = *(v10 + 84);
      v17 = *(v10 + 64);
      goto LABEL_6;
    }

    (*(v10 + 24))(v12 & ~v11, v13 & ~v11, v9);
  }

LABEL_12:
  v19 = *(v10 + 64) + ((v11 + 16) & ~v11);
  if (!*(v10 + 84))
  {
    ++v19;
  }

  v20 = ((a1 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = ((a2 + v19 + 7) & 0xFFFFFFFFFFFFFFF8);
  v22 = *v21;
  if (*v20 < 0xFFFFFFFFuLL)
  {
    if (v22 >= 0xFFFFFFFF)
    {
      v24 = v21[1];
      *v20 = v22;
      v20[1] = v24;

      goto LABEL_21;
    }

LABEL_20:
    *v20 = *v21;
    goto LABEL_21;
  }

  if (v22 < 0xFFFFFFFF)
  {

    goto LABEL_20;
  }

  v23 = v21[1];
  *v20 = v22;
  v20[1] = v23;

LABEL_21:
  v25 = (v20 + 23) & 0xFFFFFFFFFFFFFFF8;
  v26 = (v21 + 23) & 0xFFFFFFFFFFFFFFF8;
  v27 = *(v26 + 8);
  *v25 = *v26;
  *(v25 + 8) = v27;

  *(v25 + 16) = *(v26 + 16);
  *(v25 + 17) = *(v26 + 17);
  v28 = *(*(v30 + 32) - 8);
  (*(v28 + 24))((*(v28 + 80) + 18 + v25) & ~*(v28 + 80), (*(v28 + 80) + 18 + v26) & ~*(v28 + 80));
  return a1;
}

uint64_t assignWithCopy for SharingPickerHostModifier(uint64_t a1, __int128 *a2)
{
  v4 = (a1 + 112);
  v6 = a2 + 7;
  v5 = *(a2 + 14);
  if (*(a1 + 112) != 1)
  {
    if (v5 == 1)
    {
      outlined destroy of SharingPickerHostModifier.Model(a1);
      v13 = a2[3];
      v15 = *a2;
      v14 = a2[1];
      *(a1 + 32) = a2[2];
      *(a1 + 48) = v13;
      *a1 = v15;
      *(a1 + 16) = v14;
      v16 = a2[7];
      v18 = a2[4];
      v17 = a2[5];
      *(a1 + 96) = a2[6];
      *(a1 + 112) = v16;
      *(a1 + 64) = v18;
      *(a1 + 80) = v17;
      goto LABEL_45;
    }

    v24 = *(a2 + 9);
    if (*(a1 + 72) == 1)
    {
      if (v24 == 1)
      {
        v25 = *a2;
        v26 = a2[2];
        *(a1 + 16) = a2[1];
        *(a1 + 32) = v26;
        *a1 = v25;
        v27 = a2[3];
        v28 = a2[4];
        v29 = a2[6];
        *(a1 + 80) = a2[5];
        *(a1 + 96) = v29;
        *(a1 + 48) = v27;
        *(a1 + 64) = v28;
        goto LABEL_38;
      }

      *a1 = *a2;
      v46 = *(a2 + 1);
      v47 = *(a2 + 2);
      v48 = *(a2 + 3);
      v49 = *(a2 + 4);
      v50 = *(a2 + 40);
      outlined copy of AnyShareConfiguration.Storage(v46, v47, v48, v49, v50);
      *(a1 + 8) = v46;
      *(a1 + 16) = v47;
      *(a1 + 24) = v48;
      *(a1 + 32) = v49;
      *(a1 + 40) = v50;
      if (*(a2 + 9))
      {
        v51 = *(a2 + 6);
        v52 = *(a2 + 7);
        v53 = *(a2 + 64);
        outlined copy of Text.Storage(v51, v52, v53);
        *(a1 + 48) = v51;
        *(a1 + 56) = v52;
        *(a1 + 64) = v53;
        *(a1 + 72) = *(a2 + 9);

        if (*(a2 + 13))
        {
LABEL_18:
          v54 = *(a2 + 10);
          v55 = *(a2 + 11);
          v56 = *(a2 + 96);
          outlined copy of Text.Storage(v54, v55, v56);
          *(a1 + 80) = v54;
          *(a1 + 88) = v55;
          *(a1 + 96) = v56;
          *(a1 + 104) = *(a2 + 13);

          goto LABEL_38;
        }
      }

      else
      {
        v77 = a2[4];
        *(a1 + 48) = a2[3];
        *(a1 + 64) = v77;
        if (*(a2 + 13))
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      if (v24 == 1)
      {
        outlined destroy of AnyIdentifiableShareConfiguration(a1);
        v42 = a2[1];
        v41 = a2[2];
        *a1 = *a2;
        *(a1 + 16) = v42;
        *(a1 + 32) = v41;
        v43 = a2[6];
        v45 = a2[3];
        v44 = a2[4];
        *(a1 + 80) = a2[5];
        *(a1 + 96) = v43;
        *(a1 + 48) = v45;
        *(a1 + 64) = v44;
        goto LABEL_38;
      }

      *a1 = *a2;
      v57 = *(a2 + 1);
      v58 = *(a2 + 2);
      v59 = *(a2 + 3);
      v60 = *(a2 + 4);
      v61 = *(a2 + 40);
      outlined copy of AnyShareConfiguration.Storage(v57, v58, v59, v60, v61);
      v62 = *(a1 + 8);
      v63 = *(a1 + 16);
      v64 = *(a1 + 24);
      v65 = *(a1 + 32);
      *(a1 + 8) = v57;
      *(a1 + 16) = v58;
      *(a1 + 24) = v59;
      *(a1 + 32) = v60;
      v66 = *(a1 + 40);
      *(a1 + 40) = v61;
      outlined consume of AnyShareConfiguration.Storage(v62, v63, v64, v65, v66);
      v67 = *(a2 + 9);
      if (*(a1 + 72))
      {
        if (v67)
        {
          v68 = *(a2 + 6);
          v69 = *(a2 + 7);
          v70 = *(a2 + 64);
          outlined copy of Text.Storage(v68, v69, v70);
          v71 = *(a1 + 48);
          v72 = *(a1 + 56);
          v73 = *(a1 + 64);
          *(a1 + 48) = v68;
          *(a1 + 56) = v69;
          *(a1 + 64) = v70;
          outlined consume of Text.Storage(v71, v72, v73);
          *(a1 + 72) = *(a2 + 9);
        }

        else
        {
          outlined destroy of Text(a1 + 48);
          v81 = a2[4];
          *(a1 + 48) = a2[3];
          *(a1 + 64) = v81;
        }
      }

      else if (v67)
      {
        v78 = *(a2 + 6);
        v79 = *(a2 + 7);
        v80 = *(a2 + 64);
        outlined copy of Text.Storage(v78, v79, v80);
        *(a1 + 48) = v78;
        *(a1 + 56) = v79;
        *(a1 + 64) = v80;
        *(a1 + 72) = *(a2 + 9);
      }

      else
      {
        v82 = a2[4];
        *(a1 + 48) = a2[3];
        *(a1 + 64) = v82;
      }

      v83 = *(a2 + 13);
      if (*(a1 + 104))
      {
        if (v83)
        {
          v84 = *(a2 + 10);
          v85 = *(a2 + 11);
          v86 = *(a2 + 96);
          outlined copy of Text.Storage(v84, v85, v86);
          v87 = *(a1 + 80);
          v88 = *(a1 + 88);
          v89 = *(a1 + 96);
          *(a1 + 80) = v84;
          *(a1 + 88) = v85;
          *(a1 + 96) = v86;
          outlined consume of Text.Storage(v87, v88, v89);
          *(a1 + 104) = *(a2 + 13);
        }

        else
        {
          outlined destroy of Text(a1 + 80);
          v91 = a2[6];
          *(a1 + 80) = a2[5];
          *(a1 + 96) = v91;
        }

LABEL_38:
        v76 = *v6;
        if (*v4)
        {
          if (v76)
          {
            v92 = *(a2 + 15);
            *(a1 + 112) = v76;
            *(a1 + 120) = v92;

            goto LABEL_45;
          }
        }

        else if (v76)
        {
          goto LABEL_42;
        }

LABEL_44:
        *v4 = *v6;
        goto LABEL_45;
      }

      if (v83)
      {
        goto LABEL_18;
      }
    }

    v90 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v90;
    goto LABEL_38;
  }

  if (v5 != 1)
  {
    if (*(a2 + 9) == 1)
    {
      v19 = *a2;
      v20 = a2[2];
      *(a1 + 16) = a2[1];
      *(a1 + 32) = v20;
      *a1 = v19;
      v21 = a2[3];
      v22 = a2[4];
      v23 = a2[6];
      *(a1 + 80) = a2[5];
      *(a1 + 96) = v23;
      *(a1 + 48) = v21;
      *(a1 + 64) = v22;
      goto LABEL_24;
    }

    *a1 = *a2;
    v30 = *(a2 + 1);
    v31 = *(a2 + 2);
    v32 = *(a2 + 3);
    v33 = *(a2 + 4);
    v34 = *(a2 + 40);
    outlined copy of AnyShareConfiguration.Storage(v30, v31, v32, v33, v34);
    *(a1 + 8) = v30;
    *(a1 + 16) = v31;
    *(a1 + 24) = v32;
    *(a1 + 32) = v33;
    *(a1 + 40) = v34;
    if (*(a2 + 9))
    {
      v35 = *(a2 + 6);
      v36 = *(a2 + 7);
      v37 = *(a2 + 64);
      outlined copy of Text.Storage(v35, v36, v37);
      *(a1 + 48) = v35;
      *(a1 + 56) = v36;
      *(a1 + 64) = v37;
      *(a1 + 72) = *(a2 + 9);

      if (*(a2 + 13))
      {
LABEL_13:
        v38 = *(a2 + 10);
        v39 = *(a2 + 11);
        v40 = *(a2 + 96);
        outlined copy of Text.Storage(v38, v39, v40);
        *(a1 + 80) = v38;
        *(a1 + 88) = v39;
        *(a1 + 96) = v40;
        *(a1 + 104) = *(a2 + 13);

        goto LABEL_24;
      }
    }

    else
    {
      v74 = a2[4];
      *(a1 + 48) = a2[3];
      *(a1 + 64) = v74;
      if (*(a2 + 13))
      {
        goto LABEL_13;
      }
    }

    v75 = a2[6];
    *(a1 + 80) = a2[5];
    *(a1 + 96) = v75;
LABEL_24:
    v76 = *v6;
    if (!*v6)
    {
      goto LABEL_44;
    }

LABEL_42:
    v93 = *(a2 + 15);
    *(a1 + 112) = v76;
    *(a1 + 120) = v93;

    goto LABEL_45;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v9;
  *a1 = v7;
  *(a1 + 16) = v8;
  v10 = a2[4];
  v11 = a2[5];
  v12 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v12;
  *(a1 + 64) = v10;
  *(a1 + 80) = v11;
LABEL_45:
  *(a1 + 128) = *(a2 + 16);

  return a1;
}

uint64_t *assignWithCopy for List(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v3 = a3;
  v4 = __src;
  v69 = *(a3 + 16);
  v6 = *(v69 - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80) & 0xF8;
  v10 = v9 | 7;
  v11 = ~(v9 | 7);
  v72 = (v9 + 23) & v11;
  v12 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  v14 = *v13;
  if (*v12 >= 0xFFFFFFFFuLL)
  {
    if (v14 >= 0xFFFFFFFF)
    {
      *__dst = *__src;

      *v12 = *v13;

      v15 = ((v12 + v10 + 8) & v11);
      v16 = ((v13 + v10 + 8) & v11);
      if (v7)
      {
        v17 = v8;
      }

      else
      {
        v17 = v8 + 1;
      }

      if (v17 <= v8)
      {
        v18 = v8;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= 8)
      {
        v19 = 8;
      }

      else
      {
        v19 = v18;
      }

      if (v15 == v16)
      {
        goto LABEL_132;
      }

      v20 = v15[v19];
      v21 = v20 - 3;
      if (v20 < 3)
      {
        v23 = v69;
        goto LABEL_104;
      }

      if (v19 <= 3)
      {
        v22 = v19;
      }

      else
      {
        v22 = 4;
      }

      v23 = v69;
      if (v22 <= 1)
      {
        if (!v22)
        {
          goto LABEL_104;
        }

        v24 = *v15;
      }

      else if (v22 == 2)
      {
        v24 = *v15;
      }

      else if (v22 == 3)
      {
        v24 = *v15 | (v15[2] << 16);
      }

      else
      {
        v24 = *v15;
      }

      v46 = (v24 | (v21 << (8 * v19))) + 3;
      v20 = v24 + 3;
      if (v19 < 4)
      {
        v20 = v46;
      }

LABEL_104:
      if (v20 != 2)
      {
        if (v20 != 1)
        {

LABEL_109:
          v47 = v16[v19];
          v48 = v47 - 3;
          if (v47 < 3)
          {
            goto LABEL_123;
          }

          if (v19 <= 3)
          {
            v49 = v19;
          }

          else
          {
            v49 = 4;
          }

          if (v49 <= 1)
          {
            if (!v49)
            {
              goto LABEL_123;
            }

            v50 = *v16;
          }

          else if (v49 == 2)
          {
            v50 = *v16;
          }

          else if (v49 == 3)
          {
            v50 = *v16 | (v16[2] << 16);
          }

          else
          {
            v50 = *v16;
          }

          v51 = (v50 | (v48 << (8 * v19))) + 3;
          v47 = v50 + 3;
          if (v19 < 4)
          {
            v47 = v51;
          }

LABEL_123:
          if (v47 == 2)
          {
            (*(v6 + 16))(v15, v16, v23);
            v52 = 2;
          }

          else
          {
            if (v47 != 1)
            {
              *v15 = *v16;
              v15[v19] = 0;

LABEL_132:
              v3 = a3;
              v39 = v72;
              goto LABEL_133;
            }

            if ((*(v6 + 48))(v16, 1, v23))
            {
              memcpy(v15, v16, v17);
            }

            else
            {
              (*(v6 + 16))(v15, v16, v23);
              (*(v6 + 56))(v15, 0, 1, v23);
            }

            v52 = 1;
          }

          v15[v19] = v52;
          goto LABEL_132;
        }

        if ((*(v6 + 48))(v15, 1, v23))
        {
          goto LABEL_109;
        }
      }

      (*(v6 + 8))(v15, v23);
      goto LABEL_109;
    }

    v34 = ((v12 + v10 + 8) & v11);
    if (v7)
    {
      v35 = v8;
    }

    else
    {
      v35 = v8 + 1;
    }

    if (v35 <= v8)
    {
      v35 = v8;
    }

    if (v35 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v35;
    }

    v36 = *(v34 + v19);
    v37 = v36 - 3;
    if (v36 < 3)
    {
      v39 = v72;
    }

    else
    {
      if (v19 <= 3)
      {
        v38 = v19;
      }

      else
      {
        v38 = 4;
      }

      v39 = v72;
      if (v38 > 1)
      {
        if (v38 == 2)
        {
          v40 = *v34;
        }

        else if (v38 == 3)
        {
          v40 = *((v12 + v10 + 8) & v11) | (*(((v12 + v10 + 8) & v11) + 2) << 16);
        }

        else
        {
          v40 = *v34;
        }

LABEL_88:
        v45 = (v40 | (v37 << (8 * v19))) + 3;
        v36 = v40 + 3;
        if (v19 < 4)
        {
          v36 = v45;
        }

        goto LABEL_90;
      }

      if (v38)
      {
        v40 = *v34;
        goto LABEL_88;
      }
    }

LABEL_90:
    if (v36 == 2)
    {
      (*(v6 + 8))(v34, v69);
    }

    else if (v36 == 1)
    {
      if (!(*(v6 + 48))(v34, 1, v69))
      {
        (*(v6 + 8))(v34, v69);
      }
    }

    else
    {
    }

    memcpy(__dst, v4, v19 + v39 + 1);
    v3 = a3;
    goto LABEL_133;
  }

  if (v14 >= 0xFFFFFFFF)
  {
    *__dst = *__src;
    *v12 = *v13;
    v26 = v10 + 8;
    v27 = ((v12 + v10 + 8) & v11);
    v28 = ((v13 + v26) & v11);
    if (v7)
    {
      v29 = v8;
    }

    else
    {
      v29 = v8 + 1;
    }

    if (v29 <= v8)
    {
      v30 = v8;
    }

    else
    {
      v30 = v29;
    }

    if (v30 <= 8)
    {
      v19 = 8;
    }

    else
    {
      v19 = v30;
    }

    v31 = v28[v19];

    if (v31 < 3)
    {
      v4 = __src;
      v3 = a3;
      goto LABEL_78;
    }

    if (v19 <= 3)
    {
      v32 = v19;
    }

    else
    {
      v32 = 4;
    }

    if (v32 <= 1)
    {
      v4 = __src;
      v3 = a3;
      if (!v32)
      {
        goto LABEL_78;
      }

      v33 = *v28;
    }

    else
    {
      if (v32 == 2)
      {
        v33 = *v28;
      }

      else if (v32 == 3)
      {
        v33 = *v28 | (v28[2] << 16);
      }

      else
      {
        v33 = *v28;
      }

      v4 = __src;
      v3 = a3;
    }

    v42 = (v33 | ((v31 - 3) << (8 * v19))) + 3;
    v43 = v33 + 3;
    if (v19 >= 4)
    {
      v31 = v43;
    }

    else
    {
      v31 = v42;
    }

LABEL_78:
    if (v31 == 2)
    {
      (*(v6 + 16))(v27, v28, v69);
      v44 = 2;
    }

    else
    {
      if (v31 != 1)
      {
        *v27 = *v28;
        *(v27 + v19) = 0;

        v39 = v72;
        goto LABEL_133;
      }

      if ((*(v6 + 48))(v28, 1, v69))
      {
        memcpy(v27, v28, v29);
      }

      else
      {
        (*(v6 + 16))(v27, v28, v69);
        (*(v6 + 56))(v27, 0, 1, v69);
      }

      v44 = 1;
    }

    *(v27 + v19) = v44;
    v39 = v72;
    goto LABEL_133;
  }

  if (v7)
  {
    v41 = *(*(v69 - 8) + 64);
  }

  else
  {
    v41 = v8 + 1;
  }

  if (v41 <= v8)
  {
    v41 = *(*(v69 - 8) + 64);
  }

  if (v41 <= 8)
  {
    v19 = 8;
  }

  else
  {
    v19 = v41;
  }

  v39 = v72;
  memcpy(__dst, __src, v19 + v72 + 1);
LABEL_133:
  v53 = *(*(v3 + 24) - 8);
  v54 = v53 + 24;
  v55 = *(v53 + 80);
  v56 = v19 + v39 + v55 + 1;
  v57 = (__dst + v56) & ~v55;
  v58 = (v4 + v56) & ~v55;
  (*(v53 + 24))(v57, v58);
  v59 = *(v54 + 40) + 7;
  v60 = ((v59 + v57) & 0xFFFFFFFFFFFFFFF8);
  v61 = ((v59 + v58) & 0xFFFFFFFFFFFFFFF8);
  *v60 = *v61;
  v62 = (v60 + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = (v61 + 15) & 0xFFFFFFFFFFFFFFF8;
  v64 = *v63;
  v65 = *(v63 + 8);
  LOBYTE(v54) = *(v63 + 16);
  outlined copy of TransferableDropAction<A>.UserActionStorage<A>(*v63, v65);
  v66 = *v62;
  v67 = *(v62 + 8);
  *v62 = v64;
  *(v62 + 8) = v65;
  *(v62 + 16) = v54;
  outlined consume of TransferableDropAction<A1>.UserActionStorage<A><A1>(v66, v67);
  return __dst;
}

uint64_t InsetListStyle.Body.value.getter@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30[1] = a4;
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>(255, &lazy cache variable for type metadata for InterfaceIdiomPredicate<VisionInterfaceIdiom>, MEMORY[0x1E697FAC8], MEMORY[0x1E697FAC0], MEMORY[0x1E69801E0]);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>, lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext, &type metadata for PlainListStyleContext);
  v8 = v7;
  v10 = type metadata accessor for SelectionManagerBox(255, a2, a3, v9);
  v11 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v10);
  v36 = v8;
  v37 = v10;
  v38 = v11;
  v39 = WitnessTable;
  v13 = type metadata accessor for PlainListBody(255, &v36);
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext, &type metadata for InsetListStyleContext);
  v15 = v14;
  v16 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v36 = v15;
  v37 = v10;
  v38 = v16;
  v39 = WitnessTable;
  v17 = type metadata accessor for InsetList(255, &v36);
  v18 = type metadata accessor for StaticIf();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v30 - v24;
  v32 = a2;
  v33 = a3;
  v34 = a1;
  v30[4] = a2;
  v30[5] = a3;
  v31 = a1;
  v26 = swift_getWitnessTable(protocol conformance descriptor for PlainListBody<A, B>, v13, v23);
  v29 = swift_getWitnessTable(protocol conformance descriptor for InsetList<A, B>, v17);
  StaticIf<>.init<A>(idiom:then:else:)();
  v35[0] = lazy protocol witness table accessor for type InterfaceIdiomPredicate<VisionInterfaceIdiom> and conformance InterfaceIdiomPredicate<A>();
  v35[1] = v26;
  v35[2] = v29;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v18, v35);
  static ViewBuilder.buildExpression<A>(_:)();
  v27 = *(v19 + 8);
  v27(v21, v18);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v27)(v25, v18);
}

uint64_t closure #1 in InsetListStyle.Body.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = a1;
  v37 = a5;
  v8 = type metadata accessor for SelectionManagerBox(255, a2, a3, a4);
  type metadata accessor for Binding();
  v9 = type metadata accessor for Optional();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v34 = &v30 - v10;
  v41 = &type metadata for InsetListStyle;
  v42 = a2;
  v43 = &protocol witness table for InsetListStyle;
  v44 = a3;
  v11 = type metadata accessor for _ListValue(0, &v41);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<PlainListStyleContext>, lazy protocol witness table accessor for type PlainListStyleContext and conformance PlainListStyleContext, &type metadata for PlainListStyleContext);
  v16 = v15;
  v32 = v15;
  v17 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v31 = v17;
  v33 = v8;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v8);
  v41 = v16;
  v42 = v8;
  v43 = v17;
  v44 = WitnessTable;
  v19 = type metadata accessor for PlainListBody(0, &v41);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v30 - v24;
  InsetListStyle.Body.base.getter(a2, a3, v14);
  v26 = &v14[*(v12 + 60)];
  v27 = v34;
  (*(v35 + 32))(v34, v26, v36);
  v38 = a2;
  v39 = a3;
  v40 = v7;
  PlainListBody.init(selection:isOutline:content:)(v27, 0, partial apply for closure #1 in closure #1 in InsetListStyle.Body.value.getter, v32, v33, v31, WitnessTable, v22);
  swift_getWitnessTable(protocol conformance descriptor for PlainListBody<A, B>, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v20 + 8);
  v28(v22, v19);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v28)(v25, v19);
}

uint64_t InsetListStyle.Body.base.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8[0] = &type metadata for InsetListStyle;
  v8[1] = a2;
  v8[2] = &protocol witness table for InsetListStyle;
  v8[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v8);
  Value = AGGraphGetValue();
  return (*(*(v5 - 8) + 16))(a4, Value, v5);
}

uint64_t PlainListBody.init(selection:isOutline:content:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  *(a8 + *(type metadata accessor for PlainListBody(0, v18) + 52)) = a2;
  return a3();
}

uint64_t closure #1 in closure #1 in InsetListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = &type metadata for InsetListStyle;
  v10[1] = a2;
  v10[2] = &protocol witness table for InsetListStyle;
  v10[3] = a3;
  v5 = type metadata accessor for _ListValue(0, v10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  InsetListStyle.Body.base.getter(a2, a3, v10 - v7);
  return (*(v6 + 8))(v8, v5);
}

uint64_t *initializeWithCopy for PlainListBody(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    v19 = v15 + v8 + 8;
    v16 = *(v7 + 16);

    v16(v19 & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  *(__dst + v14) = *(__src + v14);
  v17 = *(*(a3 + 16) - 8);
  (*(v17 + 16))((__dst + v14 + *(v17 + 80) + 1) & ~*(v17 + 80), (__src + v14 + *(v17 + 80) + 1) & ~*(v17 + 80));
  return __dst;
}

uint64_t destroy for PlainListBody(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ~v6;
  v8 = *(v5 + 64);
  v9 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) != 0)
  {
    if (!(*(v5 + 48))((v9 + v6 + 8) & v7))
    {
LABEL_5:

      (*(v5 + 8))((v9 + v6 + 8) & v7, v4);
    }
  }

  else
  {
    v10 = *v9;
    if (*v9 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    if (v10 == -1)
    {
      goto LABEL_5;
    }
  }

  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (a1 + v8 + ((v6 + 16) & v7) + *(v11 + 80) + 1) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t closure #2 in InsetListStyle.Body.value.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext, &type metadata for InsetListStyleContext);
  v18 = v7;
  v19 = type metadata accessor for SelectionManagerBox(255, a2, a3, v6);
  v20 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v19);
  v8 = type metadata accessor for InsetList(0, &v18);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v18 - v13;
  InsetListStyle.Body.insetListBody.getter(a1, a2, a3, v15, v11);
  swift_getWitnessTable(protocol conformance descriptor for InsetList<A, B>, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v9 + 8);
  v16(v11, v8);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v16)(v14, v8);
}

uint64_t InsetListStyle.Body.insetListBody.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a1;
  v40 = a5;
  v8 = type metadata accessor for SelectionManagerBox(255, a2, a3, a4);
  type metadata accessor for Binding();
  v39 = type metadata accessor for Optional();
  v9 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v31 - v10;
  v44 = &type metadata for InsetListStyle;
  v45 = a2;
  v46 = &protocol witness table for InsetListStyle;
  v47 = a3;
  v11 = type metadata accessor for _ListValue(0, &v44);
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  type metadata accessor for ModifiedContent<ListStyleContent, StyleContextWriter<PlainListStyleContext>>(255, &lazy cache variable for type metadata for ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>>, &lazy cache variable for type metadata for StyleContextWriter<InsetListStyleContext>, lazy protocol witness table accessor for type InsetListStyleContext and conformance InsetListStyleContext, &type metadata for InsetListStyleContext);
  v18 = v17;
  v34 = v17;
  v19 = lazy protocol witness table accessor for type ModifiedContent<ListStyleContent, StyleContextWriter<InsetListStyleContext>> and conformance <> ModifiedContent<A, B>();
  v33 = v19;
  v35 = v8;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for SelectionManagerBox<A>, v8);
  v44 = v18;
  v45 = v8;
  v46 = v19;
  v47 = WitnessTable;
  v20 = type metadata accessor for InsetList(0, &v44);
  v36 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  InsetListStyle.Body.base.getter(a2, a3, v16);
  v26 = *(v9 + 32);
  v27 = v38;
  v26(v38, &v16[*(v11 + 52)], v39);
  InsetListStyle.Body.base.getter(a2, a3, v13);
  v28 = *v13;
  (*(v37 + 8))(v13, v11);
  v41 = a2;
  v42 = a3;
  v43 = v5;
  InsetList.init(selection:options:content:)(v27, v28, partial apply for closure #1 in InsetListStyle.Body.insetListBody.getter, v34, v35, v33, WitnessTable, v22);
  swift_getWitnessTable(protocol conformance descriptor for InsetList<A, B>, v20);
  static ViewBuilder.buildExpression<A>(_:)();
  v29 = *(v36 + 8);
  v29(v22, v20);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v29)(v25, v20);
}

uint64_t InsetList.init(selection:options:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v18[0] = a4;
  v18[1] = a5;
  v18[2] = a6;
  v18[3] = a7;
  *(a8 + *(type metadata accessor for InsetList(0, v18) + 52)) = a2;
  return a3();
}

uint64_t *initializeWithCopy for InsetList(uint64_t *__dst, uint64_t *__src, uint64_t a3)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = ~v8;
  v10 = (v8 + 16) & ~v8;
  v11 = *(v7 + 64);
  v12 = ((__src + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v7 + 84) & 0x80000000) == 0)
  {
    v13 = *v12;
    if (*v12 >= 0xFFFFFFFF)
    {
      LODWORD(v13) = -1;
    }

    v14 = v10 + v11;
    if (v13 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *__dst = *__src;
    v15 = ((__dst + 15) & 0xFFFFFFFFFFFFFFF8);
    *v15 = *v12;
    v21 = v15 + v8 + 8;
    v16 = *(v7 + 16);

    v16(v21 & v9, (v12 + v8 + 8) & v9, v6);
    goto LABEL_8;
  }

  v14 = v10 + v11;
  if (!(*(v7 + 48))((v12 + v8 + 8) & v9))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(__dst, __src, v14);
LABEL_8:
  v17 = ((__dst + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = ((__src + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v17 = *v18;
  v19 = *(*(a3 + 16) - 8);
  (*(v19 + 16))((v17 + *(v19 + 80) + 8) & ~*(v19 + 80), (v18 + *(v19 + 80) + 8) & ~*(v19 + 80));
  return __dst;
}

uint64_t destroy for InsetList(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = ~v6;
  v8 = *(v5 + 64);
  v9 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v5 + 84) & 0x80000000) != 0)
  {
    if (!(*(v5 + 48))((v9 + v6 + 8) & v7))
    {
LABEL_5:

      (*(v5 + 8))((v9 + v6 + 8) & v7, v4);
    }
  }

  else
  {
    v10 = *v9;
    if (*v9 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    if (v10 == -1)
    {
      goto LABEL_5;
    }
  }

  v11 = *(*(a2 + 16) - 8);
  v12 = *(v11 + 8);
  v13 = (((a1 + v8 + ((v6 + 16) & v7) + 7) & 0xFFFFFFFFFFFFFFF8) + *(v11 + 80) + 8) & ~*(v11 + 80);

  return v12(v13);
}

uint64_t InsetList.body.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  type metadata accessor for InterfaceIdiomPredicate<VisionInterfaceIdiom>(255, &lazy cache variable for type metadata for _SemanticFeature<Semantics_v4>, MEMORY[0x1E697DF40], MEMORY[0x1E697DF38], MEMORY[0x1E697EC20]);
  v24 = v4;
  v5 = a1[3];
  v8 = a1[4];
  v7 = a1[5];
  v38 = a1[2];
  v6 = v38;
  v39 = v5;
  v40 = v8;
  v41 = v7;
  v22 = type metadata accessor for InsetList.CollectionViewBody(255, &v38);
  v38 = v6;
  v39 = v5;
  v40 = v8;
  v41 = v7;
  v9 = type metadata accessor for InsetList.TableViewRoot(255, &v38);
  v23 = type metadata accessor for _VariadicView.Tree();
  v10 = type metadata accessor for StaticIf();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v31 = v6;
  v32 = v5;
  v33 = v8;
  v34 = v7;
  v35 = v2;
  v26 = v6;
  v27 = v5;
  v28 = v8;
  v29 = v7;
  v30 = v2;
  v17 = lazy protocol witness table accessor for type _SemanticFeature<Semantics_v4> and conformance _SemanticFeature<A>();
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for InsetList<A, B>.CollectionViewBody, v22);
  v37[0] = swift_getWitnessTable(protocol conformance descriptor for InsetList<A, B>.TableViewRoot, v9);
  v37[1] = v8;
  v21 = swift_getWitnessTable(MEMORY[0x1E697E308], v23, v37);
  StaticIf<>.init(_:then:else:)();
  v36[0] = v17;
  v36[1] = WitnessTable;
  v36[2] = v21;
  swift_getWitnessTable(MEMORY[0x1E6981CE8], v10, v36);
  static ViewBuilder.buildExpression<A>(_:)();
  v19 = *(v11 + 8);
  v19(v13, v10);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v19)(v16, v10);
}

uint64_t closure #1 in InsetList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a1;
  v33 = a6;
  type metadata accessor for Binding();
  v10 = type metadata accessor for Optional();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v29 = &v28 - v11;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v28 = a4;
  v16 = type metadata accessor for InsetList.CollectionViewBody(0, &v34);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - v21;
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v23 = type metadata accessor for InsetList(0, &v34);
  v24 = v30;
  (*(v12 + 16))(v15, v30 + *(v23 + 56), a2);
  v25 = v29;
  (*(v31 + 16))(v29, v24, v32);
  InsetList.CollectionViewBody.init(content:selection:)(v15, v25, a2, a3, v28, a5, v19);
  swift_getWitnessTable(protocol conformance descriptor for InsetList<A, B>.CollectionViewBody, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  v26 = *(v17 + 8);
  v26(v19, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v26)(v22, v16);
}

uint64_t InsetList.CollectionViewBody.init(content:selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = swift_getKeyPath();
  *(a7 + 8) = 0;
  *(a7 + 16) = swift_getKeyPath();
  *(a7 + 24) = 0;
  v19 = 0;
  *(a7 + 32) = swift_getKeyPath();
  *(a7 + 97) = 0;
  *(a7 + 104) = swift_getKeyPath();
  *(a7 + 112) = 0;
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v14 = type metadata accessor for InsetList.CollectionViewBody(0, v18);
  (*(*(a3 - 8) + 32))(a7 + *(v14 + 64), a1, a3);
  v15 = *(v14 + 68);
  type metadata accessor for Binding();
  v16 = type metadata accessor for Optional();
  return (*(*(v16 - 8) + 32))(a7 + v15, a2, v16);
}

uint64_t initializeWithCopy for InsetList.CollectionViewBody(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  outlined copy of Environment<Selector?>.Content(*a2, v6);
  *a1 = v5;
  *(a1 + 8) = v6;
  v47 = a1;
  v7 = a1 & 0xFFFFFFFFFFFFFFF8;
  v8 = a2 & 0xFFFFFFFFFFFFFFF8;
  v9 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  LOBYTE(v5) = *(v8 + 25);
  v10 = *(v8 + 24);
  outlined copy of Environment<CGFloat?>.Content(v9, v10, v5);
  *(v7 + 16) = v9;
  *(v7 + 24) = v10;
  *(v7 + 25) = v5;
  v11 = ((a1 & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 33) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  v16 = *(v12 + 24);
  v17 = *(v12 + 32);
  v18 = *(v12 + 40);
  v19 = *(v12 + 48);
  v20 = *(v12 + 56);
  v44 = *(v12 + 64);
  v45 = *(v12 + 65);
  outlined copy of Environment<ListPadding>.Content(*v12, v14, v15, v16, v17, v18, v19, v20, v44, v45);
  *v11 = v13;
  *(v11 + 8) = v14;
  *(v11 + 16) = v15;
  *(v11 + 24) = v16;
  *(v11 + 32) = v17;
  *(v11 + 40) = v18;
  *(v11 + 48) = v19;
  *(v11 + 56) = v20;
  *(v11 + 64) = v44;
  *(v11 + 65) = v45;
  v21 = (v11 + 73) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v12 + 73) & 0xFFFFFFFFFFFFFFF8;
  v23 = *v22;
  LOBYTE(v14) = *(v22 + 8);
  outlined copy of Environment<Selector?>.Content(*v22, v14);
  *v21 = v23;
  *(v21 + 8) = v14;
  v24 = *(*(a3 + 16) - 8);
  v25 = v24 + 16;
  v26 = *(v24 + 80);
  v27 = (v26 + 9 + v21) & ~v26;
  v28 = (v26 + 9 + v22) & ~v26;
  (*(v24 + 16))(v27, v28);
  v29 = *(a3 + 24);
  v30 = *(v25 + 48);
  v31 = *(v29 - 8);
  v32 = *(v31 + 80);
  v33 = (v32 | 7) + v30;
  v34 = ((v33 + v27) & ~(v32 | 7));
  v35 = ((v33 + v28) & ~(v32 | 7));
  v36 = ~v32;
  v37 = *(v31 + 64);
  v38 = ((v35 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((*(v31 + 84) & 0x80000000) == 0)
  {
    v39 = *v38;
    if (*v38 >= 0xFFFFFFFF)
    {
      LODWORD(v39) = -1;
    }

    if (v39 != -1)
    {
      goto LABEL_5;
    }

LABEL_7:
    *v34 = *v35;
    v40 = ((v34 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v40 = *v38;
    v41 = v40 + v32 + 8;
    v42 = *(v31 + 16);

    v42(v41 & v36, (v38 + v32 + 8) & v36, v29);
    return v47;
  }

  if (!(*(v31 + 48))((v38 + v32 + 8) & v36))
  {
    goto LABEL_7;
  }

LABEL_5:
  memcpy(v34, v35, ((v32 + 16) & ~v32) + v37);
  return v47;
}

uint64_t destroy for InsetList.CollectionViewBody(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  outlined consume of Environment<Selector?>.Content(*a1, *(a1 + 8));
  v3 &= 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<CGFloat?>.Content(*(v3 + 16), *(v3 + 24), *(v3 + 25));
  v4 = (v3 + 33) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<ListPadding>.Content(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 65));
  v5 = (v4 + 73) & 0xFFFFFFFFFFFFFFF8;
  outlined consume of Environment<Selector?>.Content(*v5, *(v5 + 8));
  v6 = *(*(a2 + 16) - 8);
  v7 = v6 + 8;
  v8 = (v5 + *(v6 + 80) + 9) & ~*(v6 + 80);
  (*(v6 + 8))(v8);
  v9 = *(v7 + 56);
  v10 = *(a2 + 24);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + (v12 | 7)) & ~(v12 | 7);
  v14 = ~v12;
  v15 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v19 = v11;
  if ((*(v11 + 84) & 0x80000000) != 0)
  {
    result = (*(v11 + 48))((v15 + v12 + 8) & v14);
    if (result)
    {
      return result;
    }

    goto LABEL_7;
  }

  v16 = *v15;
  if (*v15 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  result = (v16 + 1);
  if (v16 == -1)
  {
LABEL_7:

    v18 = *(v19 + 8);

    return v18((v15 + v12 + 8) & v14, v10);
  }

  return result;
}

uint64_t closure #2 in InsetList.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a4;
  v33 = a5;
  v36 = a1;
  v37 = a6;
  v31 = a3;
  type metadata accessor for Binding();
  v34 = type metadata accessor for Optional();
  v10 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v12 = &v30 - v11;
  v44[0] = a2;
  v44[1] = a3;
  v44[2] = a4;
  v44[3] = a5;
  v13 = type metadata accessor for InsetList.TableViewRoot(0, v44);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v16 = type metadata accessor for _VariadicView.Tree();
  v35 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - v21;
  v23 = v36;
  (*(v10 + 16))(v12, v36, v34, v20);
  v24 = v12;
  v26 = v31;
  v25 = v32;
  v27 = v33;
  InsetList.TableViewRoot.init(selection:)(v24, a2, v31, v32, v33, v15);
  v38 = a2;
  v39 = v26;
  v40 = v25;
  v41 = v27;
  v42 = v23;
  _VariadicView.Tree.init(_:content:)();
  v43[0] = swift_getWitnessTable(protocol conformance descriptor for InsetList<A, B>.TableViewRoot, v13);
  v43[1] = v25;
  swift_getWitnessTable(MEMORY[0x1E697E308], v16, v43);
  static ViewBuilder.buildExpression<A>(_:)();
  v28 = *(v35 + 8);
  v28(v18, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v28)(v22, v16);
}

uint64_t InsetList.TableViewRoot.init(selection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = swift_getKeyPath();
  *(a6 + 8) = 0;
  *(a6 + 16) = swift_getKeyPath();
  *(a6 + 24) = 0;
  *(a6 + 32) = swift_getKeyPath();
  *(a6 + 40) = 0;
  v15[0] = a2;
  v15[1] = a3;
  v15[2] = a4;
  v15[3] = a5;
  v12 = *(type metadata accessor for InsetList.TableViewRoot(0, v15) + 60);
  type metadata accessor for Binding();
  v13 = type metadata accessor for Optional();
  return (*(*(v13 - 8) + 32))(a6 + v12, a1, v13);
}

uint64_t closure #1 in closure #2 in InsetList.body.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = v6;
  v11[1] = v7;
  v11[2] = v8;
  v11[3] = v9;
  type metadata accessor for InsetList(0, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  static ViewBuilder.buildExpression<A>(_:)();
  return (*(v3 + 8))(v5, a2);
}

uint64_t assignWithCopy for FocusState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64) + 7;
  v9 = ((v8 + a1) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;

  v7((v9 + *(v6 + 80) + 8) & ~*(v6 + 80), (v10 + *(v6 + 80) + 8) & ~*(v6 + 80), v5);
  return a1;
}

unint64_t assignWithCopy for SearchModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  outlined copy of Text.Storage(v6, v7, v8);
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(v4 + 32) = *(v5 + 32);

  v12 = *(*(a3 + 16) - 8);
  v13 = v12 + 24;
  v14 = *(v12 + 80);
  v15 = (v14 + 40 + v4) & ~v14;
  v16 = (v14 + 40 + v5) & ~v14;
  (*(v12 + 24))(v15, v16);
  v17 = *(v13 + 40);
  v18 = type metadata accessor for AttributedString();
  v19 = *(v18 - 8);
  v20 = *(v19 + 80);
  v21 = v20 | 7;
  v22 = (v20 | 7) + v17;
  v45 = ~(v20 | 7);
  v23 = ((v22 + v15) & v45);
  v24 = ((v22 + v16) & v45);
  *v23 = *v24;

  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;

  v27 = v25 + v20 + 8;
  v28 = ~v20;
  v44 = *(v19 + 24);
  v44(v27 & ~v20, (v26 + v20 + 8) & ~v20, v18);
  v29 = *(v19 + 64);
  v30 = v29 + ((v20 + 16) & ~v20) + 7;
  v31 = (v23 + v30) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v24 + v30) & 0xFFFFFFFFFFFFFFF8;
  if (v31 != v32)
  {
    v33 = *(v31 + 17);
    if (v33 >= 2)
    {
      v33 = *v31 + 2;
    }

    if (v33 == 1)
    {
    }

    v34 = *(v32 + 17);
    if (v34 >= 2)
    {
      v34 = *v32 + 2;
    }

    if (v34 == 1)
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 16) = *(v32 + 16);
      *(v31 + 17) = 1;
    }

    else
    {
      *v31 = *v32;
      *(v31 + 8) = *(v32 + 8);
      *(v31 + 17) = 0;
    }
  }

  v35 = (v21 + 18 + v31) & v45;
  v36 = (v21 + 18 + v32) & v45;
  *v35 = *v36;
  *(v35 + 1) = *(v36 + 1);
  *(v35 + 2) = *(v36 + 2);
  *(v35 + 3) = *(v36 + 3);
  v37 = *(v36 + 4);
  *(v35 + 8) = *(v36 + 8);
  *(v35 + 4) = v37;
  v38 = v20 + 9;
  v39 = (v38 + v35) & v28;
  v40 = (v38 + v36) & v28;
  v44(v39, v40, v18);
  *(v39 + v29) = *(v40 + v29);
  v41 = (v39 + v29) & 0xFFFFFFFFFFFFFFFCLL;
  v42 = (v40 + v29) & 0xFFFFFFFFFFFFFFFCLL;
  *(v41 + 4) = *(v42 + 4);
  *(v41 + 8) = *(v42 + 8);
  *((v29 + (v38 & v28) + 16 + v35) & 0xFFFFFFFFFFFFFFF8) = *((v29 + (v38 & v28) + 16 + v36) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t InsetList.CollectionViewBody.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v48 = *(a1 + 24);
  v4 = v48;
  type metadata accessor for Binding();
  v46 = type metadata accessor for Optional();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v43 = &v40 - v5;
  v41 = *(a1 + 16);
  v6 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v9;
  v44 = *(a1 + 32);
  *&v11 = v10;
  *(&v11 + 1) = v4;
  v51 = v11;
  v52 = v44;
  v12 = type metadata accessor for CollectionViewListRoot(0, &v51);
  v47 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v42 = &v40 - v16;
  v17 = type metadata accessor for UICollectionLayoutListConfiguration.Appearance();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  v24 = specialized Environment.wrappedValue.getter(*(v2 + 104), *(v2 + 112));
  v25 = MEMORY[0x1E69DC240];
  if ((v24 & 1) == 0)
  {
    v25 = MEMORY[0x1E69DC248];
  }

  (*(v18 + 104))(v23, *v25, v17);
  v26 = v9;
  v27 = v41;
  (*(v6 + 16))(v26, v2 + *(a1 + 64), v41);
  (*(v18 + 16))(v20, v23, v17);
  v28 = specialized Environment.wrappedValue.getter(*v2, *(v2 + 8));
  v29 = COERCE_DOUBLE(specialized Environment.wrappedValue.getter(*(v2 + 16), *(v2 + 24) | (*(v2 + 25) << 8)));
  if (v30)
  {
    v31 = 26.0;
  }

  else
  {
    v31 = v29;
  }

  v32 = v2 + *(a1 + 68);
  v33 = v43;
  (*(v45 + 16))(v43, v32, v46);
  v34 = *(v2 + 80);
  v53 = *(v2 + 64);
  v54 = v34;
  v55 = *(v2 + 96);
  v35 = *(v2 + 48);
  v51 = *(v2 + 32);
  v52 = v35;
  v36 = specialized Environment.wrappedValue.getter(v50);
  (*(v18 + 8))(v23, v17, v36);
  CollectionViewListRoot.init(content:style:minRowHeight:minHeaderHeight:selection:listPadding:)(v40, v20, v33, v50, v27, v48, v44, *(&v44 + 1), v14, v28, v31);
  v37 = v42;
  static ViewBuilder.buildExpression<A>(_:)();
  v38 = *(v47 + 8);
  v38(v14, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v38)(v37, v12);
}

void *assignWithCopy for SearchFocusContext(void *a1, void *a2)
{
  *a1 = *a2;
  __swift_assign_boxed_opaque_existential_1(a1 + 1, a2 + 1);
  v4 = a2[7];
  a1[6] = a2[6];
  a1[7] = v4;

  v5 = a2[9];
  a1[8] = a2[8];
  a1[9] = v5;

  return a1;
}

uint64_t assignWithCopy for SubmitScopeModifier(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *(a2 + 32);
  outlined copy of Environment<AppIntentExecutor?>.Content(v3, v4, v5);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  outlined consume of Environment<TriggerDeleteBackwardAction?>.Content(v6, v7, v8);
  return a1;
}

unint64_t assignWithCopy for SearchPrimitiveModifier(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = a1 & 0xFFFFFFFFFFFFFFF8;
  v5 = a2 & 0xFFFFFFFFFFFFFFF8;
  v6 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 16);
  v8 = *((a2 & 0xFFFFFFFFFFFFFFF8) + 24);
  outlined copy of Text.Storage(v6, v7, v8);
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  outlined consume of Text.Storage(v9, v10, v11);
  *(v4 + 32) = *(v5 + 32);

  v12 = *(a3 + 16);
  v13 = *(v12 - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v96 = ~v15;
  v16 = (v15 + 40 + v4) & ~v15;
  v85 = v15 + 40;
  v88 = v15;
  v17 = (v15 + 40 + v5) & ~v15;
  v89 = *(v13 + 24);
  v90 = v12;
  v89(v16, v17);
  v18 = *(v14 + 40);
  v19 = type metadata accessor for AttributedString();
  v20 = *(v19 - 8);
  v21 = *(v20 + 80);
  v95 = v18;
  v22 = (v21 | 7) + v18;
  v83 = ~(v21 | 7);
  v84 = v21 | 7;
  v23 = ((v22 + v16) & v83);
  v24 = ((v22 + v17) & v83);
  *v23 = *v24;

  v25 = ((v23 + 15) & 0xFFFFFFFFFFFFFFF8);
  v26 = ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v25 = *v26;

  v93 = ~v21;
  v77 = v21 + 8;
  v87 = v20;
  v94 = v19;
  v78 = *(v20 + 24);
  v78((v25 + v21 + 8) & ~v21, (v26 + v21 + 8) & ~v21, v19);
  v92 = *(v20 + 64);
  v82 = v92 + ((v21 + 16) & ~v21);
  v27 = (v23 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v24 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v27 != v28)
  {
    v29 = *(v27 + 17);
    if (v29 >= 2)
    {
      v29 = *v27 + 2;
    }

    if (v29 == 1)
    {
    }

    v30 = *(v28 + 17);
    if (v30 >= 2)
    {
      v30 = *v28 + 2;
    }

    if (v30 == 1)
    {
      *v27 = *v28;
      *(v27 + 8) = *(v28 + 8);
      *(v27 + 16) = *(v28 + 16);
      *(v27 + 17) = 1;
    }

    else
    {
      *v27 = *v28;
      *(v27 + 8) = *(v28 + 8);
      *(v27 + 17) = 0;
    }
  }

  v31 = (v84 + 18 + v27) & v83;
  v32 = (v84 + 18 + v28) & v83;
  *v31 = *v32;
  *(v31 + 1) = *(v32 + 1);
  *(v31 + 2) = *(v32 + 2);
  *(v31 + 3) = *(v32 + 3);
  v33 = *(v32 + 4);
  *(v31 + 8) = *(v32 + 8);
  *(v31 + 4) = v33;
  v34 = (v21 + 9 + v31) & v93;
  v35 = (v21 + 9 + v32) & v93;
  v78(v34, v35, v19);
  *(v34 + v92) = *(v35 + v92);
  v36 = (v34 + v92) & 0xFFFFFFFFFFFFFFFCLL;
  v37 = (v35 + v92) & 0xFFFFFFFFFFFFFFFCLL;
  *(v36 + 4) = *(v37 + 4);
  *(v36 + 8) = *(v37 + 8);
  v79 = v21 + 9;
  v38 = v92 + ((v21 + 9) & v93);
  v80 = v21 & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v39 = (v38 & 0xFFFFFFFFFFFFFFFCLL) + ((v21 + 16) & v80);
  v81 = v38 + 16;
  *((v38 + 16 + v31) & 0xFFFFFFFFFFFFFFF8) = *((v38 + 16 + v32) & 0xFFFFFFFFFFFFFFF8);

  v40 = (v38 & 0xFFFFFFFFFFFFFFF8) + 24;
  v41 = ((v84 + 18 + ((v82 + (((v85 & v96) + v95 + v84) & v83) + 7) & 0xFFFFFFFFFFFFFFF8)) & v83) + v40 + (v84 | v88);
  v42 = ((v41 + a1) & ~(v84 | v88));
  v43 = ((v41 + a2) & ~(v84 | v88));
  if (v39 + 9 <= v40)
  {
    v44 = v40;
  }

  else
  {
    v44 = v39 + 9;
  }

  if (v42 != v43)
  {
    v45 = v42[v44];
    v46 = v45 - 2;
    if (v45 < 2)
    {
      goto LABEL_30;
    }

    if (v44 <= 3)
    {
      v47 = v44;
    }

    else
    {
      v47 = 4;
    }

    if (v47 <= 1)
    {
      if (!v47)
      {
        goto LABEL_30;
      }

      v48 = *v42;
      if (v44 < 4)
      {
LABEL_33:
        if ((v48 | (v46 << (8 * v44))) != 0xFFFFFFFF)
        {
          goto LABEL_34;
        }

        goto LABEL_31;
      }
    }

    else if (v47 == 2)
    {
      v48 = *v42;
      if (v44 < 4)
      {
        goto LABEL_33;
      }
    }

    else if (v47 == 3)
    {
      v48 = *v42 | (v42[2] << 16);
      if (v44 < 4)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v48 = *v42;
      if (v44 < 4)
      {
        goto LABEL_33;
      }
    }

    v45 = v48 + 2;
LABEL_30:
    if (v45 != 1)
    {
LABEL_34:
      (*(v87 + 8))(&v42[v79] & v93, v94);

LABEL_35:
      v49 = v43[v44];
      v50 = v49 - 2;
      if (v49 < 2)
      {
        goto LABEL_49;
      }

      if (v44 <= 3)
      {
        v51 = v44;
      }

      else
      {
        v51 = 4;
      }

      if (v51 <= 1)
      {
        if (!v51)
        {
          goto LABEL_49;
        }

        v52 = *v43;
        if (v44 < 4)
        {
LABEL_52:
          if ((v52 | (v50 << (8 * v44))) != 0xFFFFFFFF)
          {
            goto LABEL_53;
          }

          goto LABEL_50;
        }
      }

      else if (v51 == 2)
      {
        v52 = *v43;
        if (v44 < 4)
        {
          goto LABEL_52;
        }
      }

      else if (v51 == 3)
      {
        v52 = *v43 | (v43[2] << 16);
        if (v44 < 4)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v52 = *v43;
        if (v44 < 4)
        {
          goto LABEL_52;
        }
      }

      v49 = v52 + 2;
LABEL_49:
      if (v49 != 1)
      {
LABEL_53:
        *v42 = *v43;
        v42[1] = v43[1];
        v42[2] = v43[2];
        v42[3] = v43[3];
        v66 = *(v43 + 1);
        v42[8] = v43[8];
        *(v42 + 1) = v66;
        v67 = &v42[v79] & v93;
        v68 = &v43[v79] & v93;
        (*(v87 + 16))(v67, v68, v94);
        *(v67 + v92) = *(v68 + v92);
        v69 = (v67 + v92) & 0xFFFFFFFFFFFFFFFCLL;
        v70 = (v68 + v92) & 0xFFFFFFFFFFFFFFFCLL;
        v71 = *(v70 + 4);
        *(v69 + 8) = *(v70 + 8);
        *(v69 + 4) = v71;
        *(&v42[v81] & 0xFFFFFFFFFFFFFFF8) = *(&v43[v81] & 0xFFFFFFFFFFFFFFF8);
        v42[v44] = 0;

        goto LABEL_54;
      }

LABEL_50:
      *v42 = *v43;
      v53 = ((v42 + 15) & 0xFFFFFFFFFFFFFFF8);
      v54 = ((v43 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v53 = *v54;
      v55 = ((v53 + v77) & v80);
      v56 = ((v54 + v77) & v80);
      v57 = (v56 + 7);
      *v55 = *v56;
      v55[1] = v56[1];
      v55[2] = v56[2];
      v55[3] = v56[3];
      v58 = (v55 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v59 = v57 & 0xFFFFFFFFFFFFFFFCLL;
      LODWORD(v57) = *(v57 & 0xFFFFFFFFFFFFFFFCLL);
      *(v58 + 4) = *(v59 + 4);
      *v58 = v57;
      v60 = (v21 + 5 + v58) & v93;
      v61 = (v21 + 5 + v59) & v93;
      v62 = *(v87 + 16);

      v62(v60, v61, v94);
      *(v60 + v92) = *(v61 + v92);
      v63 = (v60 + v92) & 0xFFFFFFFFFFFFFFFCLL;
      v64 = (v61 + v92) & 0xFFFFFFFFFFFFFFFCLL;
      v65 = *(v64 + 4);
      *(v63 + 8) = *(v64 + 8);
      *(v63 + 4) = v65;
      v42[v44] = 1;
      goto LABEL_54;
    }

LABEL_31:

    (*(v87 + 8))((v21 + ((((v77 + ((v42 + 15) & 0xFFFFFFFFFFFFFFF8)) & v80) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v93, v94);
    goto LABEL_35;
  }

LABEL_54:
  v72 = &v42[v44 + 8] & 0xFFFFFFFFFFFFFFF8;
  v73 = &v43[v44 + 8] & 0xFFFFFFFFFFFFFFF8;
  if (v72 != v73)
  {
    v74 = *(v72 + 17);
    if (v74 >= 2)
    {
      v74 = *v72 + 2;
    }

    if (v74 == 1)
    {
    }

    v75 = *(v73 + 17);
    if (v75 >= 2)
    {
      v75 = *v73 + 2;
    }

    if (v75 == 1)
    {
      *v72 = *v73;
      *(v72 + 8) = *(v73 + 8);
      *(v72 + 16) = *(v73 + 16);
      *(v72 + 17) = 1;
    }

    else
    {
      *v72 = *v73;
      *(v72 + 8) = *(v73 + 8);
      *(v72 + 17) = 0;
    }
  }

  (v89)((v88 + 18 + v72) & v96, (v88 + 18 + v73) & v96, v90);
  *(((v88 + 18 + v72) & v96) + v95) = *(((v88 + 18 + v73) & v96) + v95);
  return a1;
}

void *assignWithCopy for SearchEnvironmentWritingModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  v13 = *(*(v12 - 8) + 24);
  v13(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v14 = v10[11];
  v15 = &v8[v14];
  v16 = &v9[v14];
  *v15 = *v16;
  v15[4] = v16[4];
  v17 = *(a3 + 20);
  v18 = a1 + v17;
  v19 = a2 + v17;
  *(a1 + v17) = *(a2 + v17);

  *(v18 + 1) = *(v19 + 1);

  type metadata accessor for Binding<AttributedString>(0);
  v13(&v18[*(v20 + 32)], &v19[*(v20 + 32)], v12);
  *(a1 + *(a3 + 24)) = *(a2 + *(a3 + 24));
  return a1;
}

_BYTE *assignWithCopy for SearchPrimitiveModifier.BaseSearchImplementation(_BYTE *a1, _BYTE *a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = type metadata accessor for AttributedString();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8 | 3;
  v81 = *(a3 + 16);
  v82 = a1;
  v10 = *(v81 - 8);
  v11 = *(v10 + 80);
  v12 = v8 | v11 | 7;
  v13 = &a1[v12 + 1] & ~v12;
  v14 = &a2[v12 + 1] & ~v12;
  if (v13 == v14)
  {
    v15 = *(v7 + 64) + ((v8 + 9) & ~v8);
    v79 = (v15 & 0xFFFFFFFFFFFFFFF8) + 24;
    v80 = v15 & 0xFFFFFFFFFFFFFFFCLL;
    v16 = (v8 + 16) & ~v9;
    goto LABEL_45;
  }

  v17 = v8 + 9;
  v76 = *(v7 + 64);
  v18 = v76 + ((v8 + 9) & ~v8);
  v80 = v18 & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v18 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v78 = (v8 + 16) & ~v9;
  v79 = (v18 & 0xFFFFFFFFFFFFFFF8) + 24;
  v75 = v19;
  if (v19 + v78 <= v79)
  {
    v20 = (v18 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  else
  {
    v20 = v19 + v78;
  }

  v21 = *(v13 + v20);
  v22 = v21 - 2;
  if (v21 >= 2)
  {
    if (v20 <= 3)
    {
      v23 = v20;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v24 = *v13;
        if (v20 >= 4)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v23 == 3)
        {
          v24 = *v13 | (*(v13 + 2) << 16);
          if (v20 < 4)
          {
            goto LABEL_21;
          }

LABEL_19:
          v21 = v24 + 2;
          goto LABEL_22;
        }

        v24 = *v13;
        if (v20 >= 4)
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      v21 = (v24 | (v22 << (8 * v20))) + 2;
      goto LABEL_22;
    }

    if (!v23)
    {
      goto LABEL_22;
    }

    v24 = *v13;
    if (v20 < 4)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

LABEL_22:
  v25 = ~v8;
  v26 = ~v9;
  v77 = v6;
  if (v21 == 1)
  {
    v73 = ~v9;
    v74 = v20;
    v27 = v6;

    v17 = v8 + 9;
    v25 = ~v8;
    v26 = v73;
    v28 = v27;
    v20 = v74;
    (*(v7 + 8))((v8 + ((((v8 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & v73) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v8, v28);
  }

  else
  {
    (*(v7 + 8))((v17 + v13) & v25, v6);
  }

  v29 = *(v14 + v20);
  v30 = v29 - 2;
  if (v29 >= 2)
  {
    if (v20 <= 3)
    {
      v31 = v20;
    }

    else
    {
      v31 = 4;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_39;
      }

      v32 = *v14;
      if (v20 < 4)
      {
LABEL_42:
        if ((v32 | (v30 << (8 * v20))) != 0xFFFFFFFF)
        {
          goto LABEL_43;
        }

        goto LABEL_40;
      }
    }

    else if (v31 == 2)
    {
      v32 = *v14;
      if (v20 < 4)
      {
        goto LABEL_42;
      }
    }

    else if (v31 == 3)
    {
      v32 = *v14 | (*(v14 + 2) << 16);
      if (v20 < 4)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v32 = *v14;
      if (v20 < 4)
      {
        goto LABEL_42;
      }
    }

    v29 = v32 + 2;
  }

LABEL_39:
  if (v29 != 1)
  {
LABEL_43:
    *v13 = *v14;
    *(v13 + 1) = *(v14 + 1);
    *(v13 + 2) = *(v14 + 2);
    *(v13 + 3) = *(v14 + 3);
    v47 = *(v14 + 4);
    *(v13 + 8) = *(v14 + 8);
    *(v13 + 4) = v47;
    v48 = v17;
    v49 = (v17 + v13) & v25;
    v50 = (v48 + v14) & v25;
    (*(v7 + 16))(v49, v50, v77);
    *(v76 + v49) = *(v76 + v50);
    v51 = (v76 + v49) & 0xFFFFFFFFFFFFFFFCLL;
    v52 = (v76 + v50) & 0xFFFFFFFFFFFFFFFCLL;
    v53 = *(v52 + 4);
    *(v51 + 8) = *(v52 + 8);
    *(v51 + 4) = v53;
    *((v75 + v13 + 7) & 0xFFFFFFFFFFFFFFF8) = *((v75 + v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    *(v13 + v20) = 0;

    goto LABEL_44;
  }

LABEL_40:
  *v13 = *v14;
  v33 = ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  v34 = ((v14 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v33 = *v34;
  v35 = ((v33 + v8 + 8) & v26);
  v36 = ((v34 + v8 + 8) & v26);
  v37 = (v36 + 7);
  *v35 = *v36;
  v35[1] = v36[1];
  v35[2] = v36[2];
  v35[3] = v36[3];
  v38 = (v35 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = v37 & 0xFFFFFFFFFFFFFFFCLL;
  LODWORD(v37) = *(v37 & 0xFFFFFFFFFFFFFFFCLL);
  *(v38 + 4) = *(v39 + 4);
  *v38 = v37;
  v40 = v8 + 5;
  v41 = (v8 + 5 + v38) & v25;
  v42 = (v40 + v39) & v25;
  v43 = *(v7 + 16);

  v43(v41, v42, v77);
  *(v76 + v41) = *(v76 + v42);
  v44 = (v76 + v41) & 0xFFFFFFFFFFFFFFFCLL;
  v45 = (v76 + v42) & 0xFFFFFFFFFFFFFFFCLL;
  v46 = *(v45 + 4);
  *(v44 + 8) = *(v45 + 8);
  *(v44 + 4) = v46;
  *(v13 + v20) = 1;
LABEL_44:
  v16 = v78;
LABEL_45:
  v54 = v16 + v80 + 9;
  if (v54 <= v79)
  {
    v55 = v79;
  }

  else
  {
    v55 = v54;
  }

  v56 = ((v13 | 7) + v55 + 1) & 0xFFFFFFFFFFFFFFF8;
  v57 = ((v14 | 7) + v55 + 1) & 0xFFFFFFFFFFFFFFF8;
  if (v56 != v57)
  {
    v58 = *(v56 + 17);
    if (v58 >= 2)
    {
      v58 = *v56 + 2;
    }

    if (v58 == 1)
    {
    }

    v59 = *(v57 + 17);
    if (v59 >= 2)
    {
      v59 = *v57 + 2;
    }

    if (v59 == 1)
    {
      *v56 = *v57;
      *(v56 + 8) = *(v57 + 8);
      *(v56 + 16) = *(v57 + 16);
      *(v56 + 17) = 1;
    }

    else
    {
      *v56 = *v57;
      *(v56 + 8) = *(v57 + 8);
      *(v56 + 17) = 0;
    }
  }

  (*(v10 + 24))((v11 + 18 + v56) & ~v11, (v11 + 18 + v57) & ~v11, v81);
  v60 = *(v10 + 64);
  *(v60 + ((v11 + 18 + v56) & ~v11)) = *(v60 + ((v11 + 18 + v57) & ~v11));
  v61 = ((v11 + (v55 & 0xFFFFFFFFFFFFFFF8) + 26) & ~v11) + v60 + 1;
  v62 = ((v13 | 7) + v61) & 0xFFFFFFFFFFFFFFF8;
  v63 = ((v14 | 7) + v61) & 0xFFFFFFFFFFFFFFF8;
  *v62 = *v63;
  v64 = *(v63 + 8);
  if (*(v62 + 8))
  {
    if (v64)
    {
      v65 = *(v63 + 16);
      *(v62 + 8) = v64;
      *(v62 + 16) = v65;

      goto LABEL_66;
    }

    outlined destroy of TriggerSubmitAction(v62 + 8);
  }

  else if (v64)
  {
    v66 = *(v63 + 16);
    *(v62 + 8) = v64;
    *(v62 + 16) = v66;

    goto LABEL_66;
  }

  *(v62 + 8) = *(v63 + 8);
LABEL_66:
  v67 = (v62 + 31) & 0xFFFFFFFFFFFFFFF8;
  v68 = (v63 + 31) & 0xFFFFFFFFFFFFFFF8;
  if (v67 != v68)
  {
    outlined destroy of Environment<ToolbarItemPlacement?>.Content((v62 + 31) & 0xFFFFFFFFFFFFFFF8);
    if (*(v68 + 41))
    {
      if (*(v68 + 40) == 1)
      {
        v69 = *(v68 + 24);
        *(v67 + 24) = v69;
        *(v67 + 32) = *(v68 + 32);
        (**(v69 - 8))((v62 + 31) & 0xFFFFFFFFFFFFFFF8, v68);
        *(v67 + 40) = 1;
      }

      else
      {
        v70 = *v68;
        v71 = *(v68 + 16);
        *(v67 + 25) = *(v68 + 25);
        *v67 = v70;
        *(v67 + 16) = v71;
      }

      *(v67 + 41) = 1;
    }

    else
    {
      *v67 = *v68;
      *(v67 + 41) = 0;
    }
  }

  return v82;
}

uint64_t assignWithCopy for SearchOverlayView(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = (a1 + 8);
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1 + 8);
    if (*(a2 + 48) == 1)
    {
      v5 = *(a2 + 32);
      *(a1 + 32) = v5;
      *(a1 + 40) = *(a2 + 40);
      (**(v5 - 8))(v4, a2 + 8);
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = *(a2 + 8);
      v7 = *(a2 + 24);
      *(v4 + 25) = *(a2 + 33);
      *v4 = v6;
      v4[1] = v7;
    }
  }

  *(a1 + 49) = *(a2 + 49);
  *(a1 + 50) = *(a2 + 50);
  *(a1 + 51) = *(a2 + 51);
  v8 = *(a2 + 56);
  v9 = *(a2 + 64);
  outlined copy of Environment<Selector?>.Content(v8, v9);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
  outlined consume of Environment<Selector?>.Content(v10, v11);
  v12 = *(a2 + 72);
  v13 = *(a2 + 80);
  outlined copy of Environment<Selector?>.Content(v12, v13);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  outlined consume of Environment<Selector?>.Content(v14, v15);
  v16 = *(a2 + 88);
  v17 = *(a2 + 96);
  outlined copy of Environment<Selector?>.Content(v16, v17);
  v18 = *(a1 + 88);
  v19 = *(a1 + 96);
  *(a1 + 88) = v16;
  *(a1 + 96) = v17;
  outlined consume of Environment<Selector?>.Content(v18, v19);
  return a1;
}

unsigned __int8 *assignWithCopy for SearchPrimitiveModifier.SearchConfigModifier(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = a3;
  if (a1 == a2)
  {
    goto LABEL_44;
  }

  v73 = type metadata accessor for AttributedString();
  v6 = *(v73 - 8);
  v7 = *(v6 + 80);
  v71 = *(v6 + 64);
  v8 = ((v7 + 9) & ~v7) + v71;
  v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v10 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  v11 = v7 | 3;
  if (v9 + ((v7 + 16) & ~(v7 | 3)) <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9 + ((v7 + 16) & ~(v7 | 3));
  }

  v13 = a1[v12];
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

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a1 | (a1[2] << 16);
          if (v12 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v13 = v16 + 2;
          goto LABEL_21;
        }

        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v13 = (v16 | (v14 << (8 * v12))) + 2;
      goto LABEL_21;
    }

    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = *a1;
    if (v12 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_21:
  v17 = ~v7;
  v18 = ~v11;
  if (v13 == 1)
  {

    (*(v6 + 8))((v7 + ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v18) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v17, v73);
  }

  else
  {
    (*(v6 + 8))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 5) & v17, v73);
  }

  v19 = a2[v12];
  v20 = v19 - 2;
  if (v19 >= 2)
  {
    if (v12 <= 3)
    {
      v21 = v12;
    }

    else
    {
      v21 = 4;
    }

    if (v21 <= 1)
    {
      if (!v21)
      {
        goto LABEL_38;
      }

      v22 = *a2;
      if (v12 < 4)
      {
LABEL_41:
        if ((v22 | (v20 << (8 * v12))) != 0xFFFFFFFF)
        {
          goto LABEL_42;
        }

        goto LABEL_39;
      }
    }

    else if (v21 == 2)
    {
      v22 = *a2;
      if (v12 < 4)
      {
        goto LABEL_41;
      }
    }

    else if (v21 == 3)
    {
      v22 = *a2 | (a2[2] << 16);
      if (v12 < 4)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v22 = *a2;
      if (v12 < 4)
      {
        goto LABEL_41;
      }
    }

    v19 = v22 + 2;
  }

LABEL_38:
  if (v19 != 1)
  {
LABEL_42:
    *a1 = *a2;
    a1[1] = a2[1];
    a1[2] = a2[2];
    a1[3] = a2[3];
    v37 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v38 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v39 = *v38;
    *(v37 + 4) = *(v38 + 4);
    *v37 = v39;
    v40 = (v37 + v7 + 5) & v17;
    v41 = (v38 + v7 + 5) & v17;
    (*(v6 + 16))(v40, v41, v73);
    *(v40 + v71) = *(v41 + v71);
    v42 = (v40 + v71) & 0xFFFFFFFFFFFFFFFCLL;
    v43 = (v41 + v71) & 0xFFFFFFFFFFFFFFFCLL;
    v44 = *(v43 + 4);
    *(v42 + 8) = *(v43 + 8);
    *(v42 + 4) = v44;
    *(&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
    a1[v12] = 0;

    goto LABEL_43;
  }

LABEL_39:
  *a1 = *a2;
  v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v24 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v23 = *v24;
  v25 = ((v23 + v11 + 8) & v18);
  v26 = ((v24 + v11 + 8) & v18);
  v27 = (v26 + 7);
  *v25 = *v26;
  v25[1] = v26[1];
  v25[2] = v26[2];
  v25[3] = v26[3];
  v28 = (v25 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
  LODWORD(v27) = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
  *(v28 + 4) = *(v29 + 4);
  *v28 = v27;
  v30 = v7 + 5;
  v31 = (v7 + 5 + v28) & v17;
  v32 = (v30 + v29) & v17;
  v33 = *(v6 + 16);

  v33(v31, v32, v73);
  *(v31 + v71) = *(v32 + v71);
  v34 = (v31 + v71) & 0xFFFFFFFFFFFFFFFCLL;
  v35 = (v32 + v71) & 0xFFFFFFFFFFFFFFFCLL;
  v36 = *(v35 + 4);
  *(v34 + 8) = *(v35 + 8);
  *(v34 + 4) = v36;
  a1[v12] = 1;
LABEL_43:
  v3 = a3;
LABEL_44:
  v45 = *(type metadata accessor for AttributedString() - 8);
  v46 = ((*(v45 + 80) + 9) & ~*(v45 + 80)) + *(v45 + 64);
  v47 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v48 = (v46 & 0xFFFFFFFFFFFFFFF8) + 24;
  v49 = ((*(v45 + 80) & 0xFC ^ 0x1FCu) & (*(v45 + 80) + 16)) + v47 + 9;
  if (v49 <= v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = v49;
  }

  v51 = &a1[v50 + 8] & 0xFFFFFFFFFFFFFFF8;
  v52 = &a2[v50 + 8] & 0xFFFFFFFFFFFFFFF8;
  if (v51 != v52)
  {
    v53 = *(v51 + 17);
    if (v53 >= 2)
    {
      v53 = *v51 + 2;
    }

    if (v53 == 1)
    {
    }

    v54 = *(v52 + 17);
    if (v54 >= 2)
    {
      v54 = *v52 + 2;
    }

    if (v54 == 1)
    {
      *v51 = *v52;
      *(v51 + 8) = *(v52 + 8);
      *(v51 + 16) = *(v52 + 16);
      *(v51 + 17) = 1;
    }

    else
    {
      *v51 = *v52;
      *(v51 + 8) = *(v52 + 8);
      *(v51 + 17) = 0;
    }
  }

  v55 = *(*(v3 + 16) - 8);
  v56 = v55 + 24;
  v57 = *(v55 + 80);
  v58 = (v51 + v57 + 18) & ~v57;
  (*(v55 + 24))(v58, (v52 + v57 + 18) & ~v57);
  v59 = *(v56 + 40);
  *(v58 + v59) = *(((v52 + v57 + 18) & ~v57) + v59);
  v60 = v59 + (((v50 & 0xFFFFFFFFFFFFFFF8) + v57 + 26) & ~v57) + 1;
  v61 = &a2[v60];
  a1[v60] = a2[v60];
  v62 = &a1[v60] & 0xFFFFFFFFFFFFFFF8;
  v63 = v61 & 0xFFFFFFFFFFFFFFF8;
  *(v62 + 8) = *((v61 & 0xFFFFFFFFFFFFFFF8) + 8);
  v64 = v62 + 8;
  v65 = (v64 + 8);
  v67 = ((v61 & 0xFFFFFFFFFFFFFFF8) + 16);
  v66 = *v67;
  if (!*(v64 + 8))
  {
    if (v66)
    {
      v69 = *(v63 + 24);
      *(v64 + 8) = v66;
      *(v64 + 16) = v69;

      return a1;
    }

LABEL_64:
    *v65 = *v67;
    return a1;
  }

  if (!v66)
  {
    outlined destroy of TriggerSubmitAction(v64 + 8);
    goto LABEL_64;
  }

  v68 = *(v63 + 24);
  *(v64 + 8) = v66;
  *(v64 + 16) = v68;

  return a1;
}

uint64_t assignWithCopy for ToolbarSearchFieldStyle(uint64_t a1, __int128 *a2)
{
  if (a1 != a2)
  {
    outlined destroy of ToolbarItemPlacement.Role(a1);
    if (*(a2 + 40) == 1)
    {
      v4 = *(a2 + 3);
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = 1;
    }

    else
    {
      v5 = *a2;
      v6 = a2[1];
      *(a1 + 25) = *(a2 + 25);
      *a1 = v5;
      *(a1 + 16) = v6;
    }
  }

  *(a1 + 41) = *(a2 + 41);
  return a1;
}

unsigned __int8 *assignWithCopy for SearchField(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v63 = type metadata accessor for AttributedString();
    v6 = *(v63 - 8);
    v7 = *(v6 + 80);
    v61 = *(v6 + 64);
    v8 = ((v7 + 9) & ~v7) + v61;
    v9 = (v8 & 0xFFFFFFFFFFFFFFFCLL) + 9;
    v10 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
    v11 = v7 | 3;
    if (v9 + ((v7 + 16) & ~(v7 | 3)) <= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v9 + ((v7 + 16) & ~(v7 | 3));
    }

    v13 = a1[v12];
    v14 = v13 - 2;
    if (v13 < 2)
    {
LABEL_21:
      v62 = a3;
      v17 = ~v7;
      v18 = ~v11;
      if (v13 == 1)
      {

        (*(v6 + 8))((v7 + ((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 8) & v18) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & v17, v63);
      }

      else
      {
        (*(v6 + 8))((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + v7 + 5) & v17, v63);
      }

      v19 = a2[v12];
      v20 = v19 - 2;
      if (v19 >= 2)
      {
        if (v12 <= 3)
        {
          v21 = v12;
        }

        else
        {
          v21 = 4;
        }

        if (v21 <= 1)
        {
          if (!v21)
          {
            goto LABEL_38;
          }

          v22 = *a2;
          if (v12 < 4)
          {
LABEL_41:
            if ((v22 | (v20 << (8 * v12))) != 0xFFFFFFFF)
            {
              goto LABEL_42;
            }

            goto LABEL_39;
          }
        }

        else if (v21 == 2)
        {
          v22 = *a2;
          if (v12 < 4)
          {
            goto LABEL_41;
          }
        }

        else if (v21 == 3)
        {
          v22 = *a2 | (a2[2] << 16);
          if (v12 < 4)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v22 = *a2;
          if (v12 < 4)
          {
            goto LABEL_41;
          }
        }

        v19 = v22 + 2;
      }

LABEL_38:
      if (v19 != 1)
      {
LABEL_42:
        *a1 = *a2;
        a1[1] = a2[1];
        a1[2] = a2[2];
        a1[3] = a2[3];
        v37 = (a1 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        v38 = (a2 + 7) & 0xFFFFFFFFFFFFFFFCLL;
        v39 = *v38;
        *(v37 + 4) = *(v38 + 4);
        *v37 = v39;
        v40 = (v37 + v7 + 5) & v17;
        v41 = (v38 + v7 + 5) & v17;
        (*(v6 + 16))(v40, v41, v63);
        *(v40 + v61) = *(v41 + v61);
        v42 = (v40 + v61) & 0xFFFFFFFFFFFFFFFCLL;
        v43 = (v41 + v61) & 0xFFFFFFFFFFFFFFFCLL;
        v44 = *(v43 + 4);
        *(v42 + 8) = *(v43 + 8);
        *(v42 + 4) = v44;
        *(&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&a2[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        a1[v12] = 0;

        goto LABEL_43;
      }

LABEL_39:
      *a1 = *a2;
      v23 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      v24 = ((a2 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v23 = *v24;
      v25 = ((v23 + v11 + 8) & v18);
      v26 = ((v24 + v11 + 8) & v18);
      v27 = (v26 + 7);
      *v25 = *v26;
      v25[1] = v26[1];
      v25[2] = v26[2];
      v25[3] = v26[3];
      v28 = (v25 + 7) & 0xFFFFFFFFFFFFFFFCLL;
      v29 = v27 & 0xFFFFFFFFFFFFFFFCLL;
      LODWORD(v27) = *(v27 & 0xFFFFFFFFFFFFFFFCLL);
      *(v28 + 4) = *(v29 + 4);
      *v28 = v27;
      v30 = v7 + 5;
      v31 = (v7 + 5 + v28) & v17;
      v32 = (v30 + v29) & v17;
      v33 = *(v6 + 16);

      v33(v31, v32, v63);
      *(v31 + v61) = *(v32 + v61);
      v34 = (v31 + v61) & 0xFFFFFFFFFFFFFFFCLL;
      v35 = (v32 + v61) & 0xFFFFFFFFFFFFFFFCLL;
      v36 = *(v35 + 4);
      *(v34 + 8) = *(v35 + 8);
      *(v34 + 4) = v36;
      a1[v12] = 1;
LABEL_43:
      a3 = v62;
      goto LABEL_44;
    }

    if (v12 <= 3)
    {
      v15 = v12;
    }

    else
    {
      v15 = 4;
    }

    if (v15 > 1)
    {
      if (v15 == 2)
      {
        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v15 == 3)
        {
          v16 = *a1 | (a1[2] << 16);
          if (v12 < 4)
          {
            goto LABEL_20;
          }

LABEL_18:
          v13 = v16 + 2;
          goto LABEL_21;
        }

        v16 = *a1;
        if (v12 >= 4)
        {
          goto LABEL_18;
        }
      }

LABEL_20:
      v13 = (v16 | (v14 << (8 * v12))) + 2;
      goto LABEL_21;
    }

    if (!v15)
    {
      goto LABEL_21;
    }

    v16 = *a1;
    if (v12 < 4)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_44:
  v45 = *(type metadata accessor for AttributedString() - 8);
  v46 = ((*(v45 + 80) + 9) & ~*(v45 + 80)) + *(v45 + 64);
  v47 = v46 & 0xFFFFFFFFFFFFFFFCLL;
  v48 = (v46 & 0xFFFFFFFFFFFFFFF8) + 24;
  v49 = ((*(v45 + 80) & 0xFC ^ 0x1FCu) & (*(v45 + 80) + 16)) + v47 + 9;
  if (v49 <= v48)
  {
    v49 = v48;
  }

  v50 = v49 + 8;
  v51 = &a1[v50] & 0xFFFFFFFFFFFFFFF8;
  v52 = &a2[v50] & 0xFFFFFFFFFFFFFFF8;
  if (v51 != v52)
  {
    v53 = *(v51 + 17);
    if (v53 >= 2)
    {
      v53 = *v51 + 2;
    }

    if (v53 == 1)
    {
    }

    v54 = *(v52 + 17);
    if (v54 >= 2)
    {
      v54 = *v52 + 2;
    }

    if (v54 == 1)
    {
      *v51 = *v52;
      *(v51 + 8) = *(v52 + 8);
      *(v51 + 16) = *(v52 + 16);
      *(v51 + 17) = 1;
    }

    else
    {
      *v51 = *v52;
      *(v51 + 8) = *(v52 + 8);
      *(v51 + 17) = 0;
    }
  }

  v55 = *(*(a3 + 16) - 8);
  v56 = v55 + 24;
  v57 = *(v55 + 80);
  v58 = (v51 + v57 + 18) & ~v57;
  v59 = (v52 + v57 + 18) & ~v57;
  (*(v55 + 24))(v58, v59);
  *(v58 + *(v56 + 40)) = *(v59 + *(v56 + 40));
  return a1;
}

uint64_t *assignWithCopy for SearchFieldConfigurationReader(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = a2 + 15;
  *a1 = *a2;

  v7 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  v6 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v6;

  v8 = type metadata accessor for AttributedString();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = v7 + v10 + 8;
  v12 = *(v9 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v13 = (v11 & v12);
  v14 = ((v10 + 8 + v6) & v12);
  *v13 = *v14;
  v13[1] = v14[1];
  v13[2] = v14[2];
  v13[3] = v14[3];
  v15 = (v13 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v16 = (v14 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  LOBYTE(v14) = *(v16 + 4);
  *v15 = *v16;
  *(v15 + 4) = v14;
  v17 = (v10 + 5 + v15) & ~v10;
  v18 = (v10 + 5 + v16) & ~v10;
  v19 = v9 + 24;
  (*(v9 + 24))(v17, v18, v8);
  v20 = *(v19 + 40);
  *(v20 + v17) = *(v20 + v18);
  v21 = (v20 + v17) & 0xFFFFFFFFFFFFFFFCLL;
  v22 = (v20 + v18) & 0xFFFFFFFFFFFFFFFCLL;
  *(v21 + 4) = *(v22 + 4);
  *(v21 + 8) = *(v22 + 8);
  v23 = ((v10 + 16) & v12) + ((v20 + ((v10 + 9) & ~v10)) & 0xFFFFFFFFFFFFFFFCLL) + 9;
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (a1 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (a2 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v26 = *v27;

  *(v26 + 8) = *(v27 + 8);

  *(v26 + 16) = *(v27 + 16);
  v28 = ((v24 + 31) & 0xFFFFFFFFFFFFFFF8);
  v29 = ((v25 + 31) & 0xFFFFFFFFFFFFFFF8);
  v30 = v29[1];
  *v28 = *v29;
  v28[1] = v30;

  v31 = *(*(a3 + 24) - 8);
  (*(v31 + 24))((v28 + *(v31 + 80) + 16) & ~*(v31 + 80), (v29 + *(v31 + 80) + 16) & ~*(v31 + 80));
  return a1;
}

uint64_t *assignWithCopy for ResolvedTextFieldStyle(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];
  a1[3] = a2[3];

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 33) = *(a2 + 33);
  v4 = a2[8];
  if (a1[8])
  {
    if (v4)
    {
      v5 = a2[5];
      v6 = a2[6];
      v7 = *(a2 + 56);
      outlined copy of Text.Storage(v5, v6, v7);
      v8 = a1[5];
      v9 = a1[6];
      v10 = *(a1 + 56);
      a1[5] = v5;
      a1[6] = v6;
      *(a1 + 56) = v7;
      outlined consume of Text.Storage(v8, v9, v10);
      a1[8] = a2[8];
    }

    else
    {
      outlined destroy of Text((a1 + 5));
      v14 = *(a2 + 7);
      *(a1 + 5) = *(a2 + 5);
      *(a1 + 7) = v14;
    }
  }

  else if (v4)
  {
    v11 = a2[5];
    v12 = a2[6];
    v13 = *(a2 + 56);
    outlined copy of Text.Storage(v11, v12, v13);
    a1[5] = v11;
    a1[6] = v12;
    *(a1 + 56) = v13;
    a1[8] = a2[8];
  }

  else
  {
    v15 = *(a2 + 5);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 5) = v15;
  }

  v16 = a2[9];
  v17 = a2[10];
  v18 = a2[11];
  v19 = a2[12];
  v20 = a2[13];
  v21 = a2[14];
  v22 = a2[15];
  v23 = a2[16];
  v71 = a2[17];
  v72 = a2[18];
  v73 = a2[19];
  v74 = a2[20];
  v75 = a2[21];
  v76 = *(a2 + 44);
  v78 = *(a2 + 180);
  outlined copy of StateOrBinding<TextFieldState>(v16, v17, v18, v19, v20, v21, v22, v23, v71, v72, v73, v74, v75, v76, v78);
  v24 = a1[9];
  v25 = a1[10];
  v26 = a1[11];
  v27 = a1[12];
  v28 = a1[13];
  v29 = a1[14];
  v30 = a1[15];
  v31 = a1[16];
  v32 = *(a1 + 17);
  v33 = *(a1 + 19);
  v34 = a1[21];
  v35 = *(a1 + 44);
  v36 = *(a1 + 180);
  a1[9] = v16;
  a1[10] = v17;
  a1[11] = v18;
  a1[12] = v19;
  a1[13] = v20;
  a1[14] = v21;
  a1[15] = v22;
  a1[16] = v23;
  a1[17] = v71;
  a1[18] = v72;
  a1[19] = v73;
  a1[20] = v74;
  a1[21] = v75;
  *(a1 + 44) = v76;
  *(a1 + 180) = v78;
  outlined consume of StateOrBinding<TextFieldState>(v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, *(&v33 + 1), v34, v35, v36);
  type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for TextField<_TextFieldStyleLabel>, &type metadata for _TextFieldStyleLabel, &protocol witness table for _TextFieldStyleLabel, type metadata accessor for TextField);
  v38 = *(v37 + 56);
  v39 = a1 + v38;
  v40 = a2 + v38;
  type metadata accessor for Binding<TextSelection?>(0);
  v42 = v41;
  v43 = *(v41 - 8);
  v44 = *(v43 + 48);
  LODWORD(v19) = v44(v39, 1, v41);
  v45 = v44(v40, 1, v42);
  if (v19)
  {
    if (!v45)
    {
      *v39 = *v40;
      *(v39 + 1) = *(v40 + 1);
      v46 = *(v42 + 32);
      v79 = &v39[v46];
      v77 = &v40[v46];
      v47 = type metadata accessor for TextSelection(0);
      v48 = *(v47 - 8);
      v49 = *(v48 + 48);

      if (v49(v77, 1, v47))
      {
        type metadata accessor for TextSelection?(0);
        memcpy(v79, v77, *(*(v50 - 8) + 64));
      }

      else
      {
        v65 = type metadata accessor for TextSelection.Indices(0);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
          (*(*(v66 - 8) + 16))(v79, v77, v66);
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          memcpy(v79, v77, *(*(v65 - 8) + 64));
        }

        v79[*(v47 + 20)] = v77[*(v47 + 20)];
        (*(v48 + 56))(v79, 0, 1, v47);
      }

      (*(v43 + 56))(v39, 0, 1, v42);
      return a1;
    }

    goto LABEL_14;
  }

  if (v45)
  {
    outlined destroy of TextSelection.Indices(v39, type metadata accessor for Binding<TextSelection?>);
LABEL_14:
    _s7SwiftUI7BindingVyAA13TextSelectionVSgGMaTm_0(0, &lazy cache variable for type metadata for Binding<TextSelection?>?, type metadata accessor for Binding<TextSelection?>, MEMORY[0x1E69E6720]);
    v52 = *(*(v51 - 8) + 64);
    v53 = v39;
    v54 = v40;
LABEL_15:
    memcpy(v53, v54, v52);
    return a1;
  }

  *v39 = *v40;

  *(v39 + 1) = *(v40 + 1);

  v55 = *(v42 + 32);
  v56 = &v39[v55];
  v57 = &v40[v55];
  v58 = type metadata accessor for TextSelection(0);
  v59 = *(v58 - 8);
  v60 = *(v59 + 48);
  v61 = v60(v56, 1, v58);
  v62 = v60(v57, 1, v58);
  if (v61)
  {
    if (!v62)
    {
      v63 = type metadata accessor for TextSelection.Indices(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
        (*(*(v64 - 8) + 16))(v56, v57, v64);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        memcpy(v56, v57, *(*(v63 - 8) + 64));
      }

      v56[*(v58 + 20)] = v57[*(v58 + 20)];
      (*(v59 + 56))(v56, 0, 1, v58);
      return a1;
    }

    goto LABEL_24;
  }

  if (v62)
  {
    outlined destroy of TextSelection.Indices(v56, type metadata accessor for TextSelection);
LABEL_24:
    type metadata accessor for TextSelection?(0);
    v52 = *(*(v67 - 8) + 64);
    v53 = v56;
    v54 = v57;
    goto LABEL_15;
  }

  if (a1 != a2)
  {
    outlined destroy of TextSelection.Indices(v56, type metadata accessor for TextSelection.Indices);
    v69 = type metadata accessor for TextSelection.Indices(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      type metadata accessor for TextField<_TextFieldStyleLabel>(0, &lazy cache variable for type metadata for RangeSet<String.Index>, MEMORY[0x1E69E60D0], MEMORY[0x1E69E60E0], MEMORY[0x1E69E7BE0]);
      (*(*(v70 - 8) + 16))(v56, v57, v70);
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      memcpy(v56, v57, *(*(v69 - 8) + 64));
    }
  }

  v56[*(v58 + 20)] = v57[*(v58 + 20)];
  return a1;
}

char *assignWithCopy for SearchFieldConfiguration.Data(char *a1, char *a2, uint64_t a3)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_5(0, &lazy cache variable for type metadata for Binding<AttributedString>, MEMORY[0x1E6968848], MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 24))(&a1[v7], &a2[v7], v8);
  v9 = *(a3 + 20);
  v10 = &a1[v9];
  v11 = &a2[v9];
  v12 = *&a2[v9];
  v13 = *&a2[v9 + 8];
  v14 = a2[v9 + 16];
  outlined copy of Text.Storage(v12, v13, v14);
  v15 = *v10;
  v16 = *(v10 + 1);
  v17 = v10[16];
  *v10 = v12;
  *(v10 + 1) = v13;
  v10[16] = v14;
  outlined consume of Text.Storage(v15, v16, v17);
  *(v10 + 3) = *(v11 + 3);

  v18 = *(a3 + 24);
  v19 = &a1[v18];
  v20 = &a2[v18];
  v21 = a1[v18 + 8];
  v22 = v20[8];
  if (v21 == 255)
  {
    if (v22 == 255)
    {
      v30 = *v20;
      v19[8] = v20[8];
      *v19 = v30;
    }

    else
    {
      v27 = *v20;
      v28 = v22 & 1;
      outlined copy of PlatformItemCollection.Storage(v27, v22 & 1);
      *v19 = v27;
      v19[8] = v28;
    }
  }

  else if (v22 == 255)
  {
    outlined destroy of PlatformItemCollection(v19);
    v29 = v20[8];
    *v19 = *v20;
    v19[8] = v29;
  }

  else
  {
    v23 = *v20;
    v24 = v22 & 1;
    outlined copy of PlatformItemCollection.Storage(v23, v22 & 1);
    v25 = *v19;
    v26 = v19[8];
    *v19 = v23;
    v19[8] = v24;
    outlined consume of PlatformItemCollection.Storage(v25, v26);
  }

  return a1;
}

void *assignWithCopy for ToolbarSearchFieldStyle.Implementation(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a1 + v17 + 8);
  v21 = *(a2 + v17 + 8);
  if (v20 == 255)
  {
    if (v21 == 255)
    {
      v29 = *v19;
      v18[8] = v19[8];
      *v18 = v29;
    }

    else
    {
      v26 = *v19;
      v27 = v21 & 1;
      outlined copy of PlatformItemCollection.Storage(v26, v21 & 1);
      *v18 = v26;
      v18[8] = v27;
    }
  }

  else if (v21 == 255)
  {
    outlined destroy of PlatformItemCollection(v18);
    v28 = v19[8];
    *v18 = *v19;
    v18[8] = v28;
  }

  else
  {
    v22 = *v19;
    v23 = v21 & 1;
    outlined copy of PlatformItemCollection.Storage(v22, v21 & 1);
    v24 = *v18;
    v25 = v18[8];
    *v18 = v22;
    v18[8] = v23;
    outlined consume of PlatformItemCollection.Storage(v24, v25);
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v30 = v16[8];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *(a2 + v30);
  v34 = *(a2 + v30 + 8);
  v35 = *(a2 + v30 + 16);
  outlined copy of Text.Storage(v33, v34, v35);
  v36 = *v31;
  v37 = *(v31 + 1);
  v38 = v31[16];
  *v31 = v33;
  *(v31 + 1) = v34;
  v31[16] = v35;
  outlined consume of Text.Storage(v36, v37, v38);
  *(v31 + 3) = *(v32 + 3);

  v39 = a3[5];
  v40 = a1 + v39;
  v41 = a2 + v39;
  v42 = *v41;
  LOBYTE(v34) = v41[8];
  outlined copy of Environment<Selector?>.Content(*v41, v34);
  v43 = *v40;
  v44 = v40[8];
  *v40 = v42;
  v40[8] = v34;
  outlined consume of Environment<Selector?>.Content(v43, v44);
  v45 = a3[6];
  v46 = a1 + v45;
  v47 = a2 + v45;
  v48 = *v47;
  LOBYTE(v34) = v47[8];
  outlined copy of Environment<Selector?>.Content(*v47, v34);
  v49 = *v46;
  v50 = v46[8];
  *v46 = v48;
  v46[8] = v34;
  outlined consume of Environment<Selector?>.Content(v49, v50);
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v51 = a3[8];
  v52 = a1 + v51;
  v53 = a2 + v51;
  v54 = *v53;
  LOBYTE(v34) = v53[8];
  outlined copy of Environment<Selector?>.Content(*v53, v34);
  v55 = *v52;
  v56 = v52[8];
  *v52 = v54;
  v52[8] = v34;
  outlined consume of Environment<Selector?>.Content(v55, v56);
  *(a1 + a3[9]) = *(a2 + a3[9]);
  return a1;
}

uint64_t objectdestroy_13Tm()
{
  v1 = type metadata accessor for ToolbarSearchFieldStyle.Implementation(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);

  v3 = v0 + v2;

  type metadata accessor for Binding<SearchFieldState>(0);
  v5 = *(v4 + 32);
  v6 = v5 + *(type metadata accessor for SearchFieldState(0) + 36);
  v7 = type metadata accessor for AttributedString();
  (*(*(v7 - 8) + 8))(v0 + v2 + v6, v7);
  v8 = type metadata accessor for SearchFieldConfiguration(0);
  v9 = v0 + v2 + *(v8 + 24);
  v10 = *(v9 + 8);
  if (v10 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v9, v10 & 1);
  }

  outlined consume of Text.Storage(*(v3 + *(v8 + 32)), *(v3 + *(v8 + 32) + 8), *(v3 + *(v8 + 32) + 16));

  outlined consume of Environment<Selector?>.Content(*(v3 + v1[5]), *(v3 + v1[5] + 8));
  outlined consume of Environment<Selector?>.Content(*(v3 + v1[6]), *(v3 + v1[6] + 8));
  outlined consume of Environment<Selector?>.Content(*(v3 + v1[8]), *(v3 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm()
{
  v1 = type metadata accessor for ToolbarSearchFieldStyle.Implementation(0);
  v2 = (*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80);
  v3 = (*(*(v1 - 1) + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v0 + v2;

  type metadata accessor for Binding<SearchFieldState>(0);
  v6 = *(v5 + 32);
  v7 = v6 + *(type metadata accessor for SearchFieldState(0) + 36);
  v8 = type metadata accessor for AttributedString();
  (*(*(v8 - 8) + 8))(v4 + v7, v8);
  v9 = type metadata accessor for SearchFieldConfiguration(0);
  v10 = v4 + *(v9 + 24);
  v11 = *(v10 + 8);
  if (v11 != 255)
  {
    outlined consume of PlatformItemCollection.Storage(*v10, v11 & 1);
  }

  outlined consume of Text.Storage(*(v4 + *(v9 + 32)), *(v4 + *(v9 + 32) + 8), *(v4 + *(v9 + 32) + 16));

  outlined consume of Environment<Selector?>.Content(*(v4 + v1[5]), *(v4 + v1[5] + 8));
  outlined consume of Environment<Selector?>.Content(*(v4 + v1[6]), *(v4 + v1[6] + 8));
  outlined consume of Environment<Selector?>.Content(*(v4 + v1[8]), *(v4 + v1[8] + 8));
  if (*(v0 + v3))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_16Tm_0(uint64_t (*a1)(void, uint64_t *))
{
  v3 = *(v1 + 40);
  v13 = *(v1 + 16);
  v2 = v13;
  v14 = *(v1 + 24);
  v12 = v14;
  v15 = v3;
  v4 = a1(0, &v13);
  v5 = v1 + ((*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80));
  (*(*(v2 - 8) + 8))(v5, v2);
  v6 = v5 + *(v4 + 52);
  (*(*(v12 - 8) + 8))(v6, v12);
  v9 = type metadata accessor for NavigationDestinationPayload(0, v12, v7, v8);
  v10 = (v6 + v9[7]);
  if (v10[3] >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  outlined consume of StateOrBinding<Bool>(*(v6 + v9[10]), *(v6 + v9[10] + 8), *(v6 + v9[10] + 16), *(v6 + v9[10] + 17));
  if (*(v6 + v9[11] + 8) != 1)
  {
    swift_weakDestroy();
  }

  return swift_deallocObject();
}

void *assignWithCopy for UIKitSearchBarAdaptor(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  type metadata accessor for Binding<SearchFieldState>(0);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a1 + v17 + 8);
  v21 = *(a2 + v17 + 8);
  if (v20 == 255)
  {
    if (v21 == 255)
    {
      v29 = *v19;
      v18[8] = v19[8];
      *v18 = v29;
    }

    else
    {
      v26 = *v19;
      v27 = v21 & 1;
      outlined copy of PlatformItemCollection.Storage(v26, v21 & 1);
      *v18 = v26;
      v18[8] = v27;
    }
  }

  else if (v21 == 255)
  {
    outlined destroy of PlatformItemCollection(v18);
    v28 = v19[8];
    *v18 = *v19;
    v18[8] = v28;
  }

  else
  {
    v22 = *v19;
    v23 = v21 & 1;
    outlined copy of PlatformItemCollection.Storage(v22, v21 & 1);
    v24 = *v18;
    v25 = v18[8];
    *v18 = v22;
    v18[8] = v23;
    outlined consume of PlatformItemCollection.Storage(v24, v25);
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v30 = v16[8];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *(a2 + v30);
  v34 = *(a2 + v30 + 8);
  v35 = *(a2 + v30 + 16);
  outlined copy of Text.Storage(v33, v34, v35);
  v36 = *v31;
  v37 = *(v31 + 1);
  v38 = v31[16];
  *v31 = v33;
  *(v31 + 1) = v34;
  v31[16] = v35;
  outlined consume of Text.Storage(v36, v37, v38);
  *(v31 + 3) = *(v32 + 3);

  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void *assignWithCopy for SearchToolbarItem(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  _s7SwiftUI7BindingVyAA16SearchFieldStateVGMaTm_2(0, &lazy cache variable for type metadata for Binding<SearchFieldState>, type metadata accessor for SearchFieldState, MEMORY[0x1E6981948]);
  v7 = *(v6 + 32);
  v8 = a1 + v7;
  v9 = a2 + v7;
  *v8 = *(a2 + v7);
  v8[1] = *(a2 + v7 + 1);
  v8[2] = *(a2 + v7 + 2);
  v8[3] = *(a2 + v7 + 3);
  LODWORD(v7) = *(a2 + v7 + 4);
  v8[8] = v9[8];
  *(v8 + 1) = v7;
  v10 = type metadata accessor for SearchFieldState(0);
  v11 = v10[9];
  v12 = type metadata accessor for AttributedString();
  (*(*(v12 - 8) + 24))(&v8[v11], &v9[v11], v12);
  v8[v10[10]] = v9[v10[10]];
  v13 = v10[11];
  v14 = &v8[v13];
  v15 = &v9[v13];
  *v14 = *v15;
  v14[4] = v15[4];
  v16 = type metadata accessor for SearchFieldConfiguration(0);
  v17 = v16[6];
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = *(a1 + v17 + 8);
  v21 = *(a2 + v17 + 8);
  if (v20 == 255)
  {
    if (v21 == 255)
    {
      v29 = *v19;
      v18[8] = v19[8];
      *v18 = v29;
    }

    else
    {
      v26 = *v19;
      v27 = v21 & 1;
      outlined copy of PlatformItemCollection.Storage(v26, v21 & 1);
      *v18 = v26;
      v18[8] = v27;
    }
  }

  else if (v21 == 255)
  {
    outlined destroy of PlatformItemCollection(v18);
    v28 = v19[8];
    *v18 = *v19;
    v18[8] = v28;
  }

  else
  {
    v22 = *v19;
    v23 = v21 & 1;
    outlined copy of PlatformItemCollection.Storage(v22, v21 & 1);
    v24 = *v18;
    v25 = v18[8];
    *v18 = v22;
    v18[8] = v23;
    outlined consume of PlatformItemCollection.Storage(v24, v25);
  }

  *(a1 + v16[7]) = *(a2 + v16[7]);
  v30 = v16[8];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = *(a2 + v30);
  v34 = *(a2 + v30 + 8);
  v35 = *(a2 + v30 + 16);
  outlined copy of Text.Storage(v33, v34, v35);
  v36 = *v31;
  v37 = *(v31 + 1);
  v38 = v31[16];
  *v31 = v33;
  *(v31 + 1) = v34;
  v31[16] = v35;
  outlined consume of Text.Storage(v36, v37, v38);
  *(v31 + 3) = *(v32 + 3);

  *(a1 + a3[5]) = *(a2 + a3[5]);
  v39 = a3[6];
  v40 = a1 + v39;
  v41 = a2 + v39;
  v42 = *(a1 + v39);
  v43 = *(a2 + v39);
  if (v42)
  {
    if (v43)
    {
      v44 = *(v41 + 1);
      *v40 = v43;
      *(v40 + 1) = v44;
      *(v40 + 4) = *(v41 + 4);
      *(v40 + 3) = *(v41 + 3);
      v45 = *(v41 + 4);
      v46 = *(v40 + 4);
      *(v40 + 4) = v45;
      v47 = v45;

      *(v40 + 5) = *(v41 + 5);

      *(v40 + 12) = *(v41 + 12);
      *(v40 + 7) = *(v41 + 7);

      *(v40 + 16) = *(v41 + 16);
      *(v40 + 17) = *(v41 + 17);
      *(v40 + 18) = *(v41 + 18);
      *(v40 + 19) = *(v41 + 19);
      *(v40 + 10) = *(v41 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v40);
      v51 = *(v41 + 1);
      *v40 = *v41;
      *(v40 + 1) = v51;
      v53 = *(v41 + 3);
      v52 = *(v41 + 4);
      v54 = *(v41 + 2);
      *(v40 + 10) = *(v41 + 10);
      *(v40 + 3) = v53;
      *(v40 + 4) = v52;
      *(v40 + 2) = v54;
    }
  }

  else if (v43)
  {
    v48 = *(v41 + 1);
    *v40 = v43;
    *(v40 + 1) = v48;
    *(v40 + 4) = *(v41 + 4);
    *(v40 + 3) = *(v41 + 3);
    v49 = *(v41 + 4);
    *(v40 + 4) = v49;
    *(v40 + 5) = *(v41 + 5);
    *(v40 + 12) = *(v41 + 12);
    *(v40 + 7) = *(v41 + 7);
    *(v40 + 16) = *(v41 + 16);
    *(v40 + 17) = *(v41 + 17);
    *(v40 + 18) = *(v41 + 18);
    *(v40 + 19) = *(v41 + 19);
    *(v40 + 10) = *(v41 + 10);
    v50 = v49;
  }

  else
  {
    v55 = *(v41 + 1);
    *v40 = *v41;
    *(v40 + 1) = v55;
    v56 = *(v41 + 2);
    v57 = *(v41 + 3);
    v58 = *(v41 + 4);
    *(v40 + 10) = *(v41 + 10);
    *(v40 + 3) = v57;
    *(v40 + 4) = v58;
    *(v40 + 2) = v56;
  }

  v59 = a3[7];
  v60 = a1 + v59;
  v61 = a2 + v59;
  v62 = *(a1 + v59);
  v63 = *(a2 + v59);
  if (v62)
  {
    if (v63)
    {
      v64 = *(v61 + 1);
      *v60 = v63;
      *(v60 + 1) = v64;
      *(v60 + 4) = *(v61 + 4);
      *(v60 + 3) = *(v61 + 3);
      v65 = *(v61 + 4);
      v66 = *(v60 + 4);
      *(v60 + 4) = v65;
      v67 = v65;

      *(v60 + 5) = *(v61 + 5);

      *(v60 + 12) = *(v61 + 12);
      *(v60 + 7) = *(v61 + 7);

      *(v60 + 16) = *(v61 + 16);
      *(v60 + 17) = *(v61 + 17);
      *(v60 + 18) = *(v61 + 18);
      *(v60 + 19) = *(v61 + 19);
      *(v60 + 10) = *(v61 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v60);
      v71 = *(v61 + 1);
      *v60 = *v61;
      *(v60 + 1) = v71;
      v73 = *(v61 + 3);
      v72 = *(v61 + 4);
      v74 = *(v61 + 2);
      *(v60 + 10) = *(v61 + 10);
      *(v60 + 3) = v73;
      *(v60 + 4) = v72;
      *(v60 + 2) = v74;
    }
  }

  else if (v63)
  {
    v68 = *(v61 + 1);
    *v60 = v63;
    *(v60 + 1) = v68;
    *(v60 + 4) = *(v61 + 4);
    *(v60 + 3) = *(v61 + 3);
    v69 = *(v61 + 4);
    *(v60 + 4) = v69;
    *(v60 + 5) = *(v61 + 5);
    *(v60 + 12) = *(v61 + 12);
    *(v60 + 7) = *(v61 + 7);
    *(v60 + 16) = *(v61 + 16);
    *(v60 + 17) = *(v61 + 17);
    *(v60 + 18) = *(v61 + 18);
    *(v60 + 19) = *(v61 + 19);
    *(v60 + 10) = *(v61 + 10);
    v70 = v69;
  }

  else
  {
    v75 = *(v61 + 1);
    *v60 = *v61;
    *(v60 + 1) = v75;
    v76 = *(v61 + 2);
    v77 = *(v61 + 3);
    v78 = *(v61 + 4);
    *(v60 + 10) = *(v61 + 10);
    *(v60 + 3) = v77;
    *(v60 + 4) = v78;
    *(v60 + 2) = v76;
  }

  *(a1 + a3[8]) = *(a2 + a3[8]);
  v79 = a3[9];
  v80 = a1 + v79;
  v81 = a2 + v79;
  v82 = *(a1 + v79);
  v83 = *(a2 + v79);
  if (v82)
  {
    if (v83)
    {
      v84 = *(v81 + 1);
      *v80 = v83;
      *(v80 + 1) = v84;
      *(v80 + 4) = *(v81 + 4);
      *(v80 + 3) = *(v81 + 3);
      v85 = *(v81 + 4);
      v86 = *(v80 + 4);
      *(v80 + 4) = v85;
      v87 = v85;

      *(v80 + 5) = *(v81 + 5);

      *(v80 + 12) = *(v81 + 12);
      *(v80 + 7) = *(v81 + 7);

      *(v80 + 16) = *(v81 + 16);
      *(v80 + 17) = *(v81 + 17);
      *(v80 + 18) = *(v81 + 18);
      *(v80 + 19) = *(v81 + 19);
      *(v80 + 10) = *(v81 + 10);
    }

    else
    {
      outlined destroy of BoundInputsView(v80);
      v91 = *(v81 + 1);
      *v80 = *v81;
      *(v80 + 1) = v91;
      v93 = *(v81 + 3);
      v92 = *(v81 + 4);
      v94 = *(v81 + 2);
      *(v80 + 10) = *(v81 + 10);
      *(v80 + 3) = v93;
      *(v80 + 4) = v92;
      *(v80 + 2) = v94;
    }
  }

  else if (v83)
  {
    v88 = *(v81 + 1);
    *v80 = v83;
    *(v80 + 1) = v88;
    *(v80 + 4) = *(v81 + 4);
    *(v80 + 3) = *(v81 + 3);
    v89 = *(v81 + 4);
    *(v80 + 4) = v89;
    *(v80 + 5) = *(v81 + 5);
    *(v80 + 12) = *(v81 + 12);
    *(v80 + 7) = *(v81 + 7);
    *(v80 + 16) = *(v81 + 16);
    *(v80 + 17) = *(v81 + 17);
    *(v80 + 18) = *(v81 + 18);
    *(v80 + 19) = *(v81 + 19);
    *(v80 + 10) = *(v81 + 10);
    v90 = v89;
  }

  else
  {
    v95 = *(v81 + 1);
    *v80 = *v81;
    *(v80 + 1) = v95;
    v96 = *(v81 + 2);
    v97 = *(v81 + 3);
    v98 = *(v81 + 4);
    *(v80 + 10) = *(v81 + 10);
    *(v80 + 3) = v97;
    *(v80 + 4) = v98;
    *(v80 + 2) = v96;
  }

  return a1;
}

unint64_t assignWithCopy for LazyPlatformItemWriter(unint64_t a1, unint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *((a1 & 0xFFFFFFFFFFFFFFF8) + 8) = *((a2 & 0xFFFFFFFFFFFFFFF8) + 8);
  v4 = (((a1 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  v5 = (((a2 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
  *v4 = *v5;
  v6 = *(*(a3 + 24) - 8);
  (*(v6 + 24))((v4 + *(v6 + 80) + 8) & ~*(v6 + 80), (v5 + *(v6 + 80) + 8) & ~*(v6 + 80));
  return a1;
}

void type metadata accessor for Binding<AnyListSelection>()
{
  if (!lazy cache variable for type metadata for Binding<AnyListSelection>)
  {
    v0 = type metadata accessor for Binding();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Binding<AnyListSelection>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, NavigationDestinationResolverBase>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, NavigationDestinationResolverBase>)
  {
    type metadata accessor for NavigationDestinationResolverBase();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, NavigationDestinationResolverBase>);
    }
  }
}

uint64_t NavigationDestinationResolver.inputTypeTag.getter()
{
  result = dynamic_cast_existential_2_conditional(*(*v0 + 144), *(*v0 + 144), MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
  if (result)
  {
    return _typeName(_:qualified:)();
  }

  return result;
}

uint64_t dynamic_cast_existential_2_conditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (swift_conformsToProtocol2())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *NavigationSplitViewState.updatePreferredCompactColumn(_:newValue:)@<X0>(void *result@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *result;
  v5 = result[1];
  v7 = *(result + 16);
  v8 = *a2;
  v9 = *(v3 + 16);
  if (!v9)
  {
    v13 = *(v3 + 8);

    result = outlined consume of Binding<NavigationSplitViewColumn>?(v13, 0);
    *(v3 + 8) = v6;
    *(v3 + 16) = v5;
    *(v3 + 24) = v7;
    *(v3 + 25) = v8;
    v14 = v8 != 0;
    *a3 = xmmword_18CD6A6D0;
    *(a3 + 16) = 2;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 160) = 0x1FFFFFFFCLL;
    *(a3 + 184) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 248) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 264) = 0u;
    *(a3 + 280) = 0u;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 321) = 0u;
    goto LABEL_11;
  }

  v10 = *(v3 + 25);
  if (v10 != 3)
  {
    if (v5 != v9)
    {
      v15 = *(v3 + 8);

      result = outlined consume of Binding<NavigationSplitViewColumn>?(v15, v9);
      *(v3 + 8) = v6;
      *(v3 + 16) = v5;
      *(v3 + 24) = v7;
    }

    if (v8 == v10)
    {
      v11 = 0uLL;
      *(a3 + 136) = 0u;
      *(a3 + 120) = 0u;
      *(a3 + 104) = 0u;
      *(a3 + 88) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 24) = 0u;
      v12 = 0x1FFFFFFFCLL;
      goto LABEL_9;
    }

    *(v3 + 25) = v8;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
    *(a3 + 88) = 0u;
    *(a3 + 104) = 0u;
    *(a3 + 120) = 0u;
    *(a3 + 136) = 0u;
    *(a3 + 152) = 0;
    *(a3 + 160) = 0x1FFFFFFFCLL;
    *(a3 + 184) = 0u;
    *(a3 + 200) = 0u;
    *(a3 + 216) = 0u;
    *(a3 + 232) = 0u;
    *(a3 + 248) = 0u;
    *(a3 + 168) = 0u;
    *(a3 + 264) = 0u;
    *(a3 + 280) = 0u;
    *(a3 + 296) = 0u;
    *(a3 + 312) = 0u;
    *(a3 + 321) = 0u;
    *a3 = xmmword_18CD6A6D0;
    *(a3 + 16) = 2;
    v14 = 1;
LABEL_11:
    *(a3 + 340) = v14;
    goto LABEL_12;
  }

  v11 = 0uLL;
  *(a3 + 136) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 72) = 0u;
  *(a3 + 56) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 24) = 0u;
  v12 = 0x1FFFFFFFELL;
LABEL_9:
  *(a3 + 152) = 0;
  *(a3 + 160) = v12;
  *(a3 + 184) = v11;
  *(a3 + 200) = v11;
  *(a3 + 216) = v11;
  *(a3 + 232) = v11;
  *(a3 + 168) = v11;
  *(a3 + 248) = v11;
  *(a3 + 264) = v11;
  *(a3 + 280) = v11;
  *(a3 + 296) = v11;
  *(a3 + 312) = v11;
  *(a3 + 321) = v11;
  *a3 = xmmword_18CD6A6D0;
  *(a3 + 16) = 2;
  *(a3 + 340) = 0;
LABEL_12:
  *(a3 + 344) = 0;
  return result;
}

unsigned int *storeEnumTagSinglePayload for ToolbarModifier(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 > 0x7FFFFFFE)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 16) & ~v8;

        return v18(v19);
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *result = 0;
        *(result + 1) = 0;
        *result = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(result + 1) = a2;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFE8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 24) - 8) + 64) + ((v8 + 16) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFE8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

double NavigationColumnState.reestablishStateAfterPathReplacement(oldShadowPath:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of NavigationColumnState.ColumnContent(v2 + 120, v18);
  if (v23)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v18);
    if (!a1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v5 = v20;

    outlined destroy of NavigationRequest.Action?(v18, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
    if (a1)
    {
      v6 = (*(*v5 + 96))(a1);

      if (v6)
      {
LABEL_6:
        v7 = 0;
        v8 = 1;
        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  outlined init with copy of NavigationColumnState.ColumnContent(v2 + 120, v18);
  if ((v23 & 1) == 0)
  {

    specialized Collection<>.dismiss(from:)(0, v21, v22);
  }

  outlined destroy of NavigationRequest.Action?(v18, &lazy cache variable for type metadata for NavigationColumnState.ReplacedRoot?, &type metadata for NavigationColumnState.ReplacedRoot, MEMORY[0x1E69E6720]);
  outlined init with copy of NavigationColumnState.ColumnContent(v2 + 120, v18);
  if (v23)
  {
    outlined destroy of NavigationColumnState.ColumnContent(v18);
  }

  else
  {
    outlined destroy of NavigationColumnState.ColumnContent(v2 + 120);
    v9 = v20;

    v15 = v18[2];
    v16 = v18[3];
    *v17 = v19[0];
    *&v17[9] = *(v19 + 9);
    v13 = v18[0];
    v14 = v18[1];
    *(v2 + 200) = 0;
    *(v2 + 184) = 0u;
    *(v2 + 168) = 0u;
    *(v2 + 152) = 0u;
    *(v2 + 136) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 208) = -1;
    *(v2 + 240) = 1;
    outlined destroy of NavigationColumnState.ColumnContent(v2 + 120);
    v10 = MEMORY[0x1E69E7CC0];
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI33NavigationLinkSelectionIdentifierV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v2 + 152) = v15;
    *(v2 + 168) = v16;
    *(v2 + 184) = *v17;
    *(v2 + 193) = *&v17[9];
    *(v2 + 120) = v13;
    *(v2 + 136) = v14;
    *(v2 + 216) = v9;
    *(v2 + 224) = v10;
    *(v2 + 232) = v11;
    *(v2 + 240) = 0;
  }

  *(v2 + 352) = 0;
  v7 = 1;
  v8 = 2;
LABEL_14:
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 2;
  result = 0.0;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0;
  *(a2 + 160) = 0x1FFFFFFFCLL;
  *(a2 + 184) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 248) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 321) = 0u;
  *(a2 + 340) = v7;
  *(a2 + 344) = 0;
  return result;
}

uint64_t AnyNavigationPath.HeterogeneousBoxBase.equals(_:)(uint64_t a1)
{
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    swift_beginAccess();
    v3 = *(v1 + 24);
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    v6 = *(v1 + 56);
    v14 = *(v1 + 48);
    v21 = *(v1 + 16);
    v22 = v3;
    v23 = v4;
    v24 = v5;
    v25 = v14;
    v26 = v6;
    swift_beginAccess();
    v7 = *(v2 + 24);
    v8 = *(v2 + 32);
    v9 = *(v2 + 40);
    v11 = *(v2 + 48);
    v10 = *(v2 + 56);
    v15 = *(v2 + 16);
    v16 = v7;
    v17 = v8;
    v18 = v9;
    v19 = v11;
    v20 = v10;
    outlined copy of NavigationPath.Representation(v21, v3, v4, v5);

    outlined copy of NavigationPath.Representation(v15, v7, v8, v9);

    LOBYTE(v2) = static NavigationPath.== infix(_:_:)(&v21, &v15, v12);
    outlined consume of NavigationPath.Representation(v15, v16, v17, v18);

    outlined consume of NavigationPath.Representation(v21, v22, v23, v24);
  }

  return v2 & 1;
}

uint64_t specialized static NavigationPath.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *a2;
  v57 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 40);
  v58 = *(a2 + 32);
  v59 = *(a2 + 8);
  v11 = *a1 >> 62;
  v12 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (v5)
  {
    if (v11)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_12;
      }
    }

    else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    if (*(v2 + 16))
    {
      goto LABEL_12;
    }

    v12 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v11)
  {
LABEL_9:
    if (*(v12 + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (__CocoaSet.count.getter())
  {
    goto LABEL_12;
  }

LABEL_10:
  v13 = v6 >> 62;
  if (v6 >> 62)
  {
    v21 = __CocoaSet.count.getter();
    v13 = v6 >> 62;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_12;
  }

  v22 = v8 >> 62;
  v23 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v9)
  {
    if (v22)
    {
      v54 = v13;
      v28 = __CocoaSet.count.getter();
      v22 = v8 >> 62;
      v13 = v54;
      if (v28)
      {
        goto LABEL_12;
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    if (*(v59 + 16))
    {
      goto LABEL_12;
    }

    v23 = v57 & 0xFFFFFFFFFFFFFF8;
    if (v57 >> 62)
    {
LABEL_50:
      v52 = v22;
      v55 = v13;
      v29 = __CocoaSet.count.getter();
      v22 = v52;
      v13 = v55;
      if (v29)
      {
        goto LABEL_12;
      }

      goto LABEL_35;
    }
  }

  else if (v22)
  {
    goto LABEL_50;
  }

  if (*(v23 + 16))
  {
    goto LABEL_12;
  }

LABEL_35:
  v24 = v58 >> 62;
  if (v58 >> 62)
  {
    v53 = v22;
    v56 = v13;
    v30 = __CocoaSet.count.getter();
    v22 = v53;
    v13 = v56;
    v24 = v58 >> 62;
    if (!v30)
    {
LABEL_37:
      if (v5)
      {
        if (v11)
        {
          v31 = v22;
          v32 = v24;
          v33 = v13;
          v34 = __CocoaSet.count.getter();
          v13 = v33;
          v24 = v32;
          v22 = v31;
          v25 = v57;
          if (v34)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v25 = v57;
          if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }
        }

        if (!*(v2 + 16))
        {
          if (v4 >> 62)
          {
            v38 = v22;
            v39 = v24;
            v40 = v13;
            v41 = __CocoaSet.count.getter();
            v13 = v40;
            v24 = v39;
            v22 = v38;
            if (!v41)
            {
LABEL_58:
              if (v13)
              {
                v43 = v22;
                v44 = v24;
                v42 = __CocoaSet.count.getter();
                v24 = v44;
                v22 = v43;
              }

              else
              {
                v42 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v27 = v42 == 0;
LABEL_62:
              v45 = v8 & 0xFFFFFFFFFFFFFF8;
              if (v9)
              {
                if (v22)
                {
                  v47 = v24;
                  v48 = __CocoaSet.count.getter();
                  v24 = v47;
                  if (v48)
                  {
                    goto LABEL_70;
                  }
                }

                else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_70;
                }

                if (*(v59 + 16))
                {
                  goto LABEL_70;
                }

                v45 = v25 & 0xFFFFFFFFFFFFFF8;
                if (v25 >> 62)
                {
                  goto LABEL_73;
                }
              }

              else if (v22)
              {
LABEL_73:
                v49 = v24;
                v50 = __CocoaSet.count.getter();
                v24 = v49;
                if (!v50)
                {
                  goto LABEL_74;
                }

                goto LABEL_70;
              }

              if (!*(v45 + 16))
              {
LABEL_74:
                if (v24)
                {
                  v51 = __CocoaSet.count.getter();
                }

                else
                {
                  v51 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v46 = v51 == 0;
                goto LABEL_78;
              }

LABEL_70:
              v46 = 0;
LABEL_78:
              v15 = v27 ^ v46 ^ 1;
              return v15 & 1;
            }
          }

          else if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        if (v11)
        {
          v35 = v22;
          v36 = v24;
          v37 = v13;
          v26 = __CocoaSet.count.getter();
          v13 = v37;
          v24 = v36;
          v22 = v35;
        }

        else
        {
          v26 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v25 = v57;
        if (!v26)
        {
          goto LABEL_58;
        }
      }

LABEL_47:
      v27 = 0;
      goto LABEL_62;
    }
  }

  else if (!*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

LABEL_12:
  v66 = v3;
  v67 = v2;
  v68 = v4;
  v69 = v5;
  v70 = v6;
  v71 = v7;
  v14 = NavigationPath.count.getter();
  v60 = v8;
  v61 = v59;
  v62 = v57;
  v63 = v9;
  v64 = v58;
  v65 = v10;
  if (v14 == NavigationPath.count.getter())
  {
    if (v5)
    {
      if (v9)
      {
        v66 = v3;
        v67 = v2;
        v68 = v4;
        v60 = v8;
        v61 = v59;
        v62 = v57;
        outlined copy of NavigationPath.Representation(v8, v59, v57, 1);
        outlined copy of NavigationPath.Representation(v3, v2, v4, 1);
        outlined copy of NavigationPath.Representation(v3, v2, v4, 1);
        outlined copy of NavigationPath.Representation(v8, v59, v57, 1);
        v15 = specialized static NavigationPath.CodableRepresentation.== infix(_:_:)(&v66, &v60);
        outlined consume of NavigationPath.Representation(v3, v2, v4, 1);
        outlined consume of NavigationPath.Representation(v8, v59, v57, 1);
        outlined consume of NavigationPath.Representation(v8, v59, v57, 1);
        v16 = v3;
        v17 = v2;
        v18 = v4;
        v19 = 1;
LABEL_20:
        outlined consume of NavigationPath.Representation(v16, v17, v18, v19);
        return v15 & 1;
      }
    }

    else if ((v9 & 1) == 0)
    {
      outlined copy of NavigationPath.Representation(v8, v59, v57, 0);
      outlined copy of NavigationPath.Representation(v3, v2, v4, 0);
      outlined copy of NavigationPath.Representation(v3, v2, v4, 0);
      outlined copy of NavigationPath.Representation(v8, v59, v57, 0);
      v15 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI26NavigationPath_ItemBoxBaseC_Tt1g5(v3, v8);
      outlined consume of NavigationPath.Representation(v8, v59, v57, 0);
      outlined consume of NavigationPath.Representation(v3, v2, v4, 0);
      outlined consume of NavigationPath.Representation(v3, v2, v4, 0);
      v16 = v8;
      v17 = v59;
      v18 = v57;
      v19 = 0;
      goto LABEL_20;
    }

    outlined copy of NavigationPath.Representation(v3, v2, v4, v5);
    outlined copy of NavigationPath.Representation(v8, v59, v57, v9);
    outlined consume of NavigationPath.Representation(v3, v2, v4, v5);
    outlined consume of NavigationPath.Representation(v8, v59, v57, v9);
    v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t initializeWithCopy for NavigationSplitViewState(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  if (v4)
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = v4;
    *(a1 + 24) = *(a2 + 24);
  }

  else
  {
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
  }

  v5 = *(a2 + 32);
  *(a1 + 25) = *(a2 + 25);
  if (!v5)
  {
    *(a1 + 32) = *(a2 + 32);
    v7 = *(a2 + 56);
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_8:
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    goto LABEL_9;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;

  v7 = *(a2 + 56);
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_6:
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v7;
  *(a1 + 64) = *(a2 + 64);

LABEL_9:
  *(a1 + 65) = *(a2 + 65);
  return a1;
}

uint64_t NavigationColumnState.setSelection(from:splitViewState:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  outlined init with copy of NavigationRequest.TargetedRequest(a1, v8);
  NavigationRequest.ListRequest.init(_:)(v8, v10);
  if (v11 == 1)
  {
    outlined destroy of NavigationRequest.Action?(v10, &lazy cache variable for type metadata for NavigationRequest.ListRequest?, &type metadata for NavigationRequest.ListRequest, MEMORY[0x1E69E6720]);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v14[8] = v10[8];
    v14[9] = v11;
    v14[10] = v12;
    v15 = v13;
    v14[4] = v10[4];
    v14[5] = v10[5];
    v14[6] = v10[6];
    v14[7] = v10[7];
    v14[0] = v10[0];
    v14[1] = v10[1];
    v14[2] = v10[2];
    v14[3] = v10[3];
    v5 = *(a2 + 48);
    v8[2] = *(a2 + 32);
    v8[3] = v5;
    v9 = *(a2 + 64);
    v6 = *(a2 + 16);
    v8[0] = *a2;
    v8[1] = v6;
    NavigationColumnState.updateListState(_:splitViewState:)(v14, v8, a3);
    return outlined destroy of NavigationRequest.ListRequest(v14);
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SearchZipLocation(__n128 a1, uint64_t a2, void *a3)
{
  if (dispatch thunk of AnyLocation.isEqual(to:)())
  {
    return dispatch thunk of AnyLocation.isEqual(to:)() & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for NavigationSplitViewState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 66) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

BOOL specialized static SearchFieldState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (v3 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      return v4;
    }
  }

  if (a1[1] != a2[1])
  {
    return 0;
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (v7 == 2 || ((v7 ^ v6) & 1) != 0)
    {
      return v4;
    }
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8 == 2)
  {
    if (v9 != 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = 0;
    if (v9 == 2 || ((v9 ^ v8) & 1) != 0)
    {
      return v4;
    }
  }

  v4 = a2[8];
  if (a1[8])
  {
    if (!a2[8])
    {
      return v4;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      LOBYTE(v4) = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v12 = type metadata accessor for SearchFieldState(0);
  v15 = 0;
  if ((static AttributedString.== infix(_:_:)() & 1) != 0 && a1[*(v12 + 40)] == a2[*(v12 + 40)])
  {
    v13 = *(v12 + 44);
    v14 = *&a1[v13];
    if (v14 != -1 && v14 == *&a2[v13])
    {
      return 1;
    }
  }

  return v15;
}

double NavigationRequest.ListRequest.init(_:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = xmmword_18CD67BC0;
  v35 = 0;
  v4 = a1[25];
  if (v4 >> 1 == 0xFFFFFFFF)
  {
    v5 = a1 + 13;
    v6 = a1 + 14;
    v7 = a1 + 15;
    v8 = a1 + 16;
    v4 = a1[17];
    v9 = a1 + 18;
  }

  else
  {
    v5 = a1 + 21;
    v6 = a1 + 22;
    v7 = a1 + 23;
    v8 = a1 + 24;
    v9 = a1 + 26;
  }

  if (v4 >> 62 == 1)
  {
    v10 = *v9;
    v11 = *v8;
    v12 = *v7;
    v13 = *v6;
    *(&v30 + 1) = *v5;
    *&v31 = v13;
    *(&v31 + 1) = v12;
    *&v32 = v11;
    BYTE8(v32) = v4 & 1;
    *&v33 = v10;
    outlined init with copy of NavigationRequest.Action?((a1 + 27), v21);
    if (v22 == 255)
    {
      outlined init with copy of NavigationRequest.Action(a1, &v24);
      if (v22 != 255)
      {
        outlined destroy of ToolbarItemPlacement.Role?(v21, &lazy cache variable for type metadata for NavigationRequest.Action?, &type metadata for NavigationRequest.Action, MEMORY[0x1E69E6720]);
      }
    }

    else
    {
      v28 = v21[4];
      v29 = v21[5];
      LOBYTE(v30) = v22;
      v24 = v21[0];
      v25 = v21[1];
      v26 = v21[2];
      v27 = v21[3];
    }

    outlined init with copy of NavigationRequest(a1, v21);
    outlined destroy of NavigationRequest.TargetedRequest(a1);
    v15 = v23;
    outlined destroy of NavigationRequest(v21);
    BYTE8(v33) = v15;
    v16 = v33;
    *(a2 + 128) = v32;
    *(a2 + 144) = v16;
    *(a2 + 160) = v34;
    *(a2 + 176) = v35;
    v17 = v29;
    *(a2 + 64) = v28;
    *(a2 + 80) = v17;
    v18 = v31;
    *(a2 + 96) = v30;
    *(a2 + 112) = v18;
    v19 = v25;
    *a2 = v24;
    *(a2 + 16) = v19;
    result = *&v26;
    v20 = v27;
    *(a2 + 32) = v26;
    *(a2 + 48) = v20;
  }

  else
  {
    outlined destroy of NavigationRequest.TargetedRequest(a1);
    result = 0.0;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 144) = 1;
    *(a2 + 152) = 0u;
    *(a2 + 168) = 0u;
  }

  return result;
}