uint64_t sub_1A454BD80()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v23[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23[-1] - v6;
  v8 = type metadata accessor for PhotosSearchResults(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for PhotosSearchResultsGridView(0);
  v12 = *(v22 + 28);
  sub_1A455280C(v0 + v12, v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v1);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1A3C2C9F8(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A4552A08(v7, v11, type metadata accessor for PhotosSearchResults);
  v15 = MEMORY[0x1E69E6720];
  sub_1A455280C(v0 + v12, v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v16 = v13(v4, 1, v8);
  sub_1A3C2C9F8(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v15, sub_1A4554CD8);
  if (v16 == 1 || (sub_1A3C451FC(v0 + *(v22 + 32), v23), v17 = v23[3], sub_1A3C2CE9C(v23), v17))
  {
    sub_1A454C114(v11, type metadata accessor for PhotosSearchResults);
  }

  else
  {
    v20 = *(*&v11[*(v8 + 20)] + 16);
    v21 = sub_1A454B3D4();
    sub_1A454C114(v11, type metadata accessor for PhotosSearchResults);
    if (v21 >= v20)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  sub_1A4554CD8(0, &qword_1EB13D278, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  sub_1A4A2DA28(1uLL);
  v19 = v18;

  return v19;
}

uint64_t sub_1A454C114(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A454C174()
{
  v1 = MEMORY[0x1E69E6720];
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = type metadata accessor for PhotosSearchResults(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for PhotosSearchResultsGridView(0);
  v12 = *(v20 + 28);
  sub_1A455280C(v0 + v12, v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v1);
  v13 = *(v9 + 48);
  if (v13(v7, 1, v8) == 1)
  {
    sub_1A3C2C9F8(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
  }

  else
  {
    v19 = v11;
    sub_1A4552A08(v7, v11, type metadata accessor for PhotosSearchResults);
    v14 = MEMORY[0x1E69E6720];
    sub_1A455280C(v0 + v12, v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
    v15 = v13(v4, 1, v8);
    sub_1A3C2C9F8(v4, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v14, sub_1A4554CD8);
    if (v15 != 1)
    {
      sub_1A3C451FC(v0 + *(v20 + 32), v21);
      v16 = v22;
      sub_1A3C2CE9C(v21);
      if (!v16)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    sub_1A454C114(v19, type metadata accessor for PhotosSearchResults);
  }

  return MEMORY[0x1E69E7CC0];
}

id PhotosSearchResultViewController.__allocating_init(configuration:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithConfiguration_];

  return v3;
}

void sub_1A454C5C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v119 = a1;
  v136 = type metadata accessor for PhotosSearchResultsGridView(0);
  v120 = *(v136 - 1);
  MEMORY[0x1EEE9AC00](v136);
  v121 = v5;
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A52411C4();
  v124 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v112 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45526E4(0);
  v117 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v118 = &v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E6720];
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v123 = &v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v112 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v112 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v112 - v19;
  v21 = type metadata accessor for PhotosSearchResults(0);
  v134 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v115 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v132 = &v112 - v24;
  sub_1A4554CD8(0, &qword_1EB12AFA0, MEMORY[0x1E69695A8], v11);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v113 = &v112 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v112 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v125 = &v112 - v31;
  sub_1A4552778(0);
  v135 = v32;
  sub_1A5249FD4();
  v33 = aBlock;
  v34 = *&aBlock[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_bodyLayoutProvider];

  v35 = [v34 hostViewController];
  v131 = a2;
  if (v35)
  {
    type metadata accessor for PhotosSearchResultViewController();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      v37 = v36;
      v38 = [v36 viewModelIfLoaded];
      v128 = v37;
      if (v38)
      {
        v39 = v38;
        v40 = [v38 gridActionManager];

        if (v40)
        {
          objc_opt_self();
          v41 = swift_dynamicCastObjCClass();
          if (v41)
          {
            v42 = v41;
            sub_1A5249FD4();
            v43 = aBlock;
            [v42 setUserInfoDelegate_];
          }
        }
      }

LABEL_10:
      v129 = v21;
      v122 = v6;
      sub_1A5249FD4();
      v44 = aBlock;
      v45 = &aBlock[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_container];
      swift_beginAccess();
      v46 = *(v45 + 3);
      v133 = v3;
      if (v46)
      {
        v47 = *(v45 + 4);
        v48 = __swift_project_boxed_opaque_existential_1(v45, v46);
        v49 = *(v46 - 8);
        v50 = MEMORY[0x1EEE9AC00](v48);
        v52 = &v112 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v49 + 16))(v52, v50);

        v53 = (*(v47 + 8))(v46, v47);
        v55 = v54;
        (*(v49 + 8))(v52, v46);
        v3 = v133;
      }

      else
      {

        v53 = 0;
        v55 = 0;
      }

      v127 = v136[8];
      sub_1A3C451FC(v3 + v127, &aBlock);
      v56 = v138;
      if (v138)
      {
        v57 = v139;
        __swift_project_boxed_opaque_existential_1(&aBlock, v138);
        v58 = (*(v57 + 8))(v56, v57);
        v60 = v59;
        __swift_destroy_boxed_opaque_existential_0(&aBlock);
        if (!v55)
        {
          v61 = v129;
          v62 = v134;
          v63 = v125;
          if (!v60)
          {
            LODWORD(v126) = 1;
            v3 = v133;
LABEL_27:
            sub_1A5249FD4();
            v64 = aBlock;
            v65 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
            swift_beginAccess();
            v67 = *(v62 + 48);
            v66 = v62 + 48;
            v130 = v67;
            if (v67(&v64[v65], 1, v61))
            {

              v68 = v124;
              v69 = *(v124 + 56);
              v69(v63, 1, 1, v7);
            }

            else
            {
              v70 = &v64[v65];
              v71 = v132;
              sub_1A45529A0(v70, v132, type metadata accessor for PhotosSearchResults);

              v68 = v124;
              (*(v124 + 16))(v63, v71, v7);
              sub_1A454C114(v71, type metadata accessor for PhotosSearchResults);
              v69 = *(v68 + 56);
              v69(v63, 0, 1, v7);
            }

            v132 = v136[7];
            sub_1A455280C(v3 + v132, v20, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
            v72 = v130(v20, 1, v61);
            v134 = v66;
            if (v72 == 1)
            {
              sub_1A3C2C9F8(v20, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
              v73 = 1;
            }

            else
            {
              (*(v68 + 16))(v29, v20, v7);
              sub_1A454C114(v20, type metadata accessor for PhotosSearchResults);
              v73 = 0;
            }

            v74 = v118;
            v69(v29, v73, 1, v7);
            v75 = *(v117 + 48);
            v76 = MEMORY[0x1E69695A8];
            v77 = MEMORY[0x1E69E6720];
            sub_1A455280C(v63, v74, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
            sub_1A455280C(v29, v74 + v75, &qword_1EB12AFA0, v76, v77);
            v78 = v63;
            v79 = *(v68 + 48);
            if (v79(v74, 1, v7) == 1)
            {
              v80 = MEMORY[0x1E69695A8];
              v81 = MEMORY[0x1E69E6720];
              sub_1A3C2C9F8(v29, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A4554CD8);
              sub_1A3C2C9F8(v78, &qword_1EB12AFA0, v80, v81, sub_1A4554CD8);
              if (v79(v74 + v75, 1, v7) == 1)
              {
                sub_1A3C2C9F8(v74, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A4554CD8);
                v82 = 1;
LABEL_39:
                v86 = v133;
                v87 = v129;
                goto LABEL_41;
              }
            }

            else
            {
              v118 = v29;
              v83 = v113;
              sub_1A455280C(v74, v113, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
              if (v79(v74 + v75, 1, v7) != 1)
              {
                v88 = v124;
                v89 = v112;
                (*(v124 + 32))(v112, v74 + v75, v7);
                sub_1A4553284(&unk_1EB12AFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
                v82 = sub_1A524C594();
                v90 = *(v88 + 8);
                v90(v89, v7);
                v91 = MEMORY[0x1E69695A8];
                v92 = MEMORY[0x1E69E6720];
                sub_1A3C2C9F8(v118, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A4554CD8);
                sub_1A3C2C9F8(v125, &qword_1EB12AFA0, v91, v92, sub_1A4554CD8);
                v90(v83, v7);
                sub_1A3C2C9F8(v74, &qword_1EB12AFA0, v91, v92, sub_1A4554CD8);
                v86 = v133;
                v87 = v129;
LABEL_41:
                sub_1A5249FD4();
                v93 = v140;
                v94 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
                swift_beginAccess();
                sub_1A455287C(v86 + v132, v93 + v94);
                swift_endAccess();

                sub_1A5249FD4();
                v95 = v140;
                v96 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_container;
                swift_beginAccess();
                sub_1A4552910(v86 + v127, v95 + v96);
                swift_endAccess();

                sub_1A5249FD4();
                v97 = aBlock;
                aBlock[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_shouldResetGridToInitialPosition] = (v82 & 1) == 0;

                if (v128)
                {
                  v98 = v116;
                  sub_1A455280C(v86 + v132, v116, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
                  if (v130(v98, 1, v87) != 1)
                  {
                    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
                  }

                  v99 = v128;
                  v100 = v128;
                  sub_1A3C2C9F8(v98, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
                  *&v99[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_debugAssetRetrievalTypeMap] = 0;
                }

                LODWORD(v125) = v82;
                if ((v126 & 1) == 0)
                {
                  sub_1A5249FD4();
                  v101 = aBlock;
                  v102 = *v86;
                  v103 = v127;
                  v104 = sub_1A4009494(*v86, v86 + v127);
                  v105 = *&v101[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection];
                  *&v101[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection] = v104;

                  sub_1A5249FD4();
                  v106 = aBlock;
                  v107 = sub_1A4009928(v102, v86 + v103);
                  v108 = *&v106[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection];
                  *&v106[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection] = v107;

                  sub_1A5249FD4();
                  v109 = aBlock;
                  v110 = sub_1A4009E10(v102, v86 + v103, 0);
                  v111 = *&v109[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_allResultCollection];
                  *&v109[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_allResultCollection] = v110;
                }

                sub_1A5249FD4();
                *&aBlock[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parsecAssetRetrievalTypeMap] = *(v86 + v136[14]);
                _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
              }

              v84 = MEMORY[0x1E69695A8];
              v85 = MEMORY[0x1E69E6720];
              sub_1A3C2C9F8(v118, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1A4554CD8);
              sub_1A3C2C9F8(v125, &qword_1EB12AFA0, v84, v85, sub_1A4554CD8);
              (*(v124 + 8))(v83, v7);
            }

            sub_1A454C114(v74, sub_1A45526E4);
            v82 = 0;
            goto LABEL_39;
          }

          LODWORD(v126) = 0;
          v3 = v133;
LABEL_26:

          goto LABEL_27;
        }

        v3 = v133;
        if (v60)
        {
          if (v53 == v58 && v55 == v60)
          {

            LODWORD(v126) = 1;
          }

          else
          {
            LODWORD(v126) = sub_1A524EAB4();
          }

          goto LABEL_25;
        }
      }

      else
      {
        sub_1A3C2CE9C(&aBlock);
        if (!v55)
        {
          LODWORD(v126) = 1;
          v61 = v129;
          v62 = v134;
          v63 = v125;
          goto LABEL_27;
        }
      }

      LODWORD(v126) = 0;
LABEL_25:
      v61 = v129;
      v62 = v134;
      v63 = v125;
      goto LABEL_26;
    }
  }

  v128 = 0;
  goto LABEL_10;
}

id sub_1A454E204(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E69E6720];
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v30 = type metadata accessor for PhotosSearchResultsGridView(0);
  v14 = *(v30 + 28);
  sub_1A455280C(a2 + v14, v13, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v4);
  v15 = type metadata accessor for PhotosSearchResults(0);
  v16 = *(*(v15 - 8) + 48);
  if (v16(v13, 1, v15) == 1)
  {
    sub_1A3C2C9F8(v13, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
    v17 = 0;
  }

  else
  {
    v17 = *&v13[*(v15 + 40)];
    sub_1A454C114(v13, type metadata accessor for PhotosSearchResults);
  }

  [a1 setSearchQueryMatchInfo_];

  sub_1A455280C(a2 + v14, v10, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  if (v16(v10, 1, v15) != 1)
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C2C9F8(v10, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
  [a1 setSearchContextualVideoThumbnailIdentifiers_];

  v18 = MEMORY[0x1E69E6720];
  sub_1A455280C(a2 + v14, v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  v19 = v16(v7, 1, v15) != 1;
  sub_1A3C2C9F8(v7, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, v18, sub_1A4554CD8);
  [a1 setAllowsEmptyPlaceholderBehavior_];
  v20 = v30;
  v21 = (a2 + *(v30 + 80));
  v22 = *v21;
  v23 = *(v21 + 1);
  v32 = v22;
  v33 = v23;
  sub_1A4554D3C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v31)
  {
    v24 = 2;
  }

  else
  {
    v24 = 0;
  }

  [a1 setFooterVisibilityStyle_];
  v25 = a2 + *(v20 + 44);
  v26 = 0.0;
  if ((*(v25 + 8) & 1) == 0)
  {
    v27 = *v25;
    v28 = sub_1A454B0FC();
    v26 = -12.0;
    if (v28)
    {
      v26 = v27 + -12.0;
    }
  }

  return [a1 setHeaderFloatingThresholdOffset_];
}

Swift::Bool __swiftcall PhotosSearchResultViewController.resetToInitialStateIfPossible()()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_resetToInitialStateIfPossible);
}

id sub_1A454E6E0()
{
  v1 = v0;
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v55 = &v39 - v3;
  v4 = type metadata accessor for PhotosSearchResultsGridView(0);
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v8 = *(v7 + 32);
  v9 = sub_1A4009494(*v0, v0 + v8);
  v10 = sub_1A4009928(v6, v0 + v8);
  v11 = sub_1A4009E10(v6, v0 + v8, 0);
  sub_1A3C451FC(v1 + v8, v59);
  v58[4] = v9;
  v58[5] = v10;
  v58[6] = v11;
  v12 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  v54 = v10;
  v52 = v10;
  v53 = v11;
  v13 = v9;
  result = v9;
  v51 = result;
  v15 = 0;
LABEL_2:
  if (v15 <= 3)
  {
    v16 = 3;
  }

  else
  {
    v16 = v15;
  }

  while (1)
  {
    if (v15 == 3)
    {
      sub_1A454AFA8(0, &qword_1EB120A30, &qword_1EB126AC0, 0x1E6978650, sub_1A3C52C70);
      swift_arrayDestroy();
      v19 = sub_1A400B130(v12);
      v21 = v20;
      v23 = v22;

      v47 = v13;
      v24 = sub_1A400A650(v6, v59, v13, v54, v53, v19, v21, v23);

      sub_1A3C2CE9C(v59);
      v45 = type metadata accessor for PhotosSearchResultsGridView;
      v25 = v56;
      sub_1A45529A0(v1, v56, type metadata accessor for PhotosSearchResultsGridView);
      type metadata accessor for PhotosSearchPhotoKitAssetsDataSourceManager();
      v50 = v24;
      v43 = sub_1A43F36AC(v50);
      v41 = [objc_allocWithZone(PXPhotosSearchBodyLayoutProvider) initWithCollectionSectionProvider_];
      v40 = [objc_allocWithZone(PXPhotosViewOptionsModel) initWithPhotoLibrary_];
      v26 = *(v1 + v4[13]);
      sub_1A3C451FC(v1 + v8, v59);
      v27 = v4[7];
      v49 = type metadata accessor for PhotosSearchResults;
      v48 = MEMORY[0x1E69E6720];
      sub_1A455280C(v1 + v27, v55, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
      v44 = *(v1 + v4[14]);
      v46 = type metadata accessor for PhotosSearchResultsGridView.Coordinator(0);
      v28 = objc_allocWithZone(v46);
      v29 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection;
      *&v28[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection] = 0;
      v30 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection;
      *&v28[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection] = 0;
      v31 = &v28[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_container];
      *v31 = 0u;
      *(v31 + 1) = 0u;
      *(v31 + 4) = 0;
      v32 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
      v42 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
      v33 = type metadata accessor for PhotosSearchResults(0);
      (*(*(v33 - 8) + 56))(&v28[v32], 1, 1, v33);
      *&v28[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parsecAssetRetrievalTypeMap] = 0;
      v28[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_shouldResetGridToInitialPosition] = 1;
      sub_1A45529A0(v25, &v28[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent], v45);
      *&v28[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_dataSourceManager] = v43;
      *&v28[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_bodyLayoutProvider] = v41;
      *&v28[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_viewOptionsModel] = v40;
      *&v28[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_toolbarModel] = v26;
      *&v28[v29] = v47;
      v34 = v53;
      *&v28[v30] = v54;
      *&v28[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_allResultCollection] = v34;
      swift_beginAccess();

      v35 = v51;
      v36 = v52;
      v37 = v34;
      v54 = v35;
      v53 = v36;
      v38 = v37;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (v16 == v15)
    {
      break;
    }

    v17 = v58[v15++ + 4];
    if (v17)
    {
      v18 = v17;
      MEMORY[0x1A5907D70]();
      if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v57 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v50 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1A524CA74();
      }

      result = sub_1A524CAE4();
      v12 = v57;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

id sub_1A454ED9C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(v11);
  v16 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_collectionResultCollection] = 0;
  v17 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_topResultCollection] = 0;
  v18 = &v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_container];
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0;
  v19 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
  v34 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
  v20 = type metadata accessor for PhotosSearchResults(0);
  (*(*(v20 - 8) + 56))(&v15[v19], 1, 1, v20);
  v35 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parsecAssetRetrievalTypeMap;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parsecAssetRetrievalTypeMap] = 0;
  v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_shouldResetGridToInitialPosition] = 1;
  sub_1A45529A0(a1, &v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent], type metadata accessor for PhotosSearchResultsGridView);
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_dataSourceManager] = a2;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_bodyLayoutProvider] = a3;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_viewOptionsModel] = a4;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_toolbarModel] = a5;
  *&v15[v16] = a6;
  *&v15[v17] = a7;
  *&v15[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_allResultCollection] = a8;
  swift_beginAccess();
  v21 = a7;
  v33 = a8;
  v31 = a2;
  v26 = a3;
  v22 = a4;

  v23 = a6;
  sub_1A4552910(a9, v18);
  swift_endAccess();
  swift_beginAccess();
  sub_1A455287C(a10, &v15[v34]);
  swift_endAccess();
  *&v15[v35] = a11;

  v38.receiver = v15;
  v38.super_class = v36;
  v24 = objc_msgSendSuper2(&v38, sel_init);

  sub_1A3C2C9F8(a10, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720], sub_1A4554CD8);
  sub_1A3C2CE9C(a9);
  sub_1A454C114(a1, type metadata accessor for PhotosSearchResultsGridView);
  return v24;
}

void sub_1A454F230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1A4551E1C(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v15;
  }

  else
  {
    v9 = sub_1A3C5DCA4(a2, a3);
    v11 = v10;

    if (v11)
    {
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v4;
      v16 = *v4;
      if (!v12)
      {
        sub_1A4551F94();
        v13 = v16;
      }

      sub_1A3D74B38(v9, v13, v14);
      *v4 = v13;
    }
  }
}

void sub_1A454F328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1A3C57128(a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1A3E98278(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CA0];
    v8 = MEMORY[0x1E69E6720];
    sub_1A3C2C9F8(a1, &qword_1EB126130, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1A4554D3C);
    sub_1A4551904(a2, a3, v10);

    sub_1A3C2C9F8(v10, &qword_1EB126130, v7 + 8, v8, sub_1A4554D3C);
  }
}

void sub_1A454F5BC(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  v36 = sub_1A524BEE4();
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524BF64();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BFC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - v11;
  v13 = v2 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent;
  v14 = (v13 + *(type metadata accessor for PhotosSearchResultsGridView(0) + 60));
  v15 = *v14;
  v16 = v14[1];
  v17 = *(v14 + 16);
  aBlock = *v14;
  v41 = v16;
  LOBYTE(v42) = v17;
  sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  MEMORY[0x1A5906C60](&v46);
  if (v46 == 1)
  {
    aBlock = v15;
    v41 = v16;
    LOBYTE(v42) = v17;
    LOBYTE(v46) = 0;
    sub_1A524B904();
  }

  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  *(v18 + 16) = sub_1A3C5D7A8(MEMORY[0x1E69E7CC0]);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v20 = sub_1A524D474();
  sub_1A524BFA4();
  v21 = v12;
  sub_1A524C014();
  v22 = *(v7 + 8);
  v30 = v6;
  v31 = v22;
  v22(v9, v6);
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v18;
  v24[3] = v23;
  v25 = v34;
  v24[4] = v33;
  v24[5] = v25;
  v44 = sub_1A4553E40;
  v45 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1A3C2E0D0;
  v43 = &block_descriptor_39_1;
  v26 = _Block_copy(&aBlock);

  v27 = v32;
  sub_1A524BF14();
  aBlock = v19;
  sub_1A4553284(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A4554CD8(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v29 = v35;
  v28 = v36;
  sub_1A524E224();
  MEMORY[0x1A5908790](v21, v27, v29, v26);
  _Block_release(v26);

  (*(v39 + 8))(v29, v28);
  (*(v37 + 8))(v27, v38);
  v31(v21, v30);
}

uint64_t sub_1A454FAAC()
{
  v1 = [v0 visibleUUIDs];
  v2 = sub_1A524CA34();

  return v2;
}

void sub_1A454FB88(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosSearchResultsGridView(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v57 = a1;
    if ((a2 & 0x40000) != 0 && [v10 isInteractiveZooming])
    {
      v11 = a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent + v6[15];
      v12 = *v11;
      v13 = *(v11 + 8);
      LOBYTE(v11) = *(v11 + 16);
      v63 = v12;
      v64 = v13;
      v65 = v11;
      LOBYTE(v60) = 0;
      sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      sub_1A524B904();
    }

    if ((a2 & 4) != 0)
    {
      if ([v10 isInSelectMode])
      {
        v14 = a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent + v6[15];
        v15 = *v14;
        v16 = *(v14 + 8);
        LOBYTE(v14) = *(v14 + 16);
        v63 = v15;
        v64 = v16;
        v65 = v14;
        LOBYTE(v60) = 0;
        sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
        sub_1A524B904();
        sub_1A455341C();
      }

      v17 = a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent;
      v18 = [v10 isInSelectMode];
      v19 = (v17 + v6[16]);
      v20 = *v19;
      v21 = v19[1];
      LOBYTE(v19) = *(v19 + 16);
      v63 = v20;
      v64 = v21;
      v65 = v19;
      LOBYTE(v60) = v18;
      sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
      sub_1A524B904();
      v58 = v8;
      if ((a2 & 0x80000000) == 0)
      {
LABEL_7:
        if ((a2 & 0x100000000000000) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v58 = v8;
      if ((a2 & 0x80000000) == 0)
      {
        goto LABEL_7;
      }
    }

    v22 = [v10 isScrolledToTop];
    v23 = a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent;
    v24 = sub_1A524A074();
    v25 = (v23 + v6[18]);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v25 + 16);
    if (v22)
    {
      v63 = *v25;
      v64 = v27;
      v65 = v28;
      sub_1A4554D3C(0, &qword_1EB13D270, MEMORY[0x1E6980D50], MEMORY[0x1E6981948]);
      v30 = v29;

      MEMORY[0x1A5906C60](&v66, v30);
      v31 = v66;
      sub_1A524A0A4();
      if (sub_1A524A0A4() != v24)
      {
        v31 = sub_1A524A0A4();
      }

      v60 = v26;
      v61 = v27;
      v62 = v28;
      v59 = v31;
      sub_1A524B904();
    }

    else
    {
      v56 = a3;
      v63 = v26;
      v64 = v27;
      v65 = v28;
      sub_1A4554D3C(0, &qword_1EB13D270, MEMORY[0x1E6980D50], MEMORY[0x1E6981948]);
      v33 = v32;

      MEMORY[0x1A5906C60](&v66, v33);
      v34 = v66;
      sub_1A524A0A4();
      v35 = sub_1A524A0A4();
      if (v35 != sub_1A524A0A4())
      {
        sub_1A524A0A4();
        sub_1A524A0A4();
        v34 = sub_1A524A0A4();
      }

      v60 = v26;
      v61 = v27;
      v62 = v28;
      v59 = v34;
      sub_1A524B904();

      a3 = v56;
    }

    v8 = v58;
    if ((a2 & 0x100000000000000) == 0)
    {
LABEL_8:
      if ((a2 & 0x2000000) == 0)
      {
LABEL_33:

        return;
      }

LABEL_29:
      sub_1A45529A0(a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent, v8, type metadata accessor for PhotosSearchResultsGridView);
      v50 = [v10 contentFilterState];
      if (v50)
      {
        v51 = v50;
        v52 = [v50 isFiltering];
      }

      else
      {
        v52 = 0;
      }

      v53 = &v8[v6[20]];
      v54 = *v53;
      v55 = *(v53 + 1);
      LOBYTE(v63) = v54;
      v64 = v55;
      LOBYTE(v60) = v52;
      sub_1A4554D3C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      sub_1A524B6B4();
      sub_1A454C114(v8, type metadata accessor for PhotosSearchResultsGridView);
      sub_1A455341C();
      goto LABEL_33;
    }

LABEL_21:
    v36 = [v10 isScrolledToBottom];
    v37 = a3 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent;
    v38 = sub_1A524A084();
    v39 = (v37 + v6[18]);
    v40 = *v39;
    v41 = v39[1];
    v42 = *(v39 + 16);
    if (v36)
    {
      v63 = *v39;
      v64 = v41;
      v65 = v42;
      sub_1A4554D3C(0, &qword_1EB13D270, MEMORY[0x1E6980D50], MEMORY[0x1E6981948]);
      v44 = v43;

      MEMORY[0x1A5906C60](&v66, v44);
      v45 = v66;
      sub_1A524A0A4();
      if (sub_1A524A0A4() != v38)
      {
        v45 = sub_1A524A0A4();
      }

      v60 = v40;
      v61 = v41;
      v62 = v42;
      v59 = v45;
      sub_1A524B904();
    }

    else
    {
      v56 = a3;
      v63 = v40;
      v64 = v41;
      v65 = v42;
      sub_1A4554D3C(0, &qword_1EB13D270, MEMORY[0x1E6980D50], MEMORY[0x1E6981948]);
      v47 = v46;

      MEMORY[0x1A5906C60](&v66, v47);
      v48 = v66;
      sub_1A524A0A4();
      v49 = sub_1A524A0A4();
      if (v49 != sub_1A524A0A4())
      {
        sub_1A524A0A4();
        sub_1A524A0A4();
        v48 = sub_1A524A0A4();
      }

      v60 = v40;
      v61 = v41;
      v62 = v42;
      v59 = v48;
      sub_1A524B904();

      a3 = v56;
    }

    v8 = v58;
    if ((a2 & 0x2000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }
}

void sub_1A45504C8(void *a1)
{
  v2 = [a1 viewModel];
  [v2 registerChangeObserver:v1 context:0];
}

uint64_t sub_1A455052C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for PhotosSearchResults(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
    swift_beginAccess();
    if (!(*(v6 + 48))(&v13[v14], 1, v5))
    {
      sub_1A45529A0(&v13[v14], v11, type metadata accessor for PhotosSearchResults);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
  v15 = [swift_getObjCClassFromMetadata() sharedInstance];
  v16 = [v15 showSearchDebugBadges];

  if (v16)
  {
    swift_beginAccess();
    v17 = swift_unknownObjectWeakLoadStrong();
    if (v17)
    {
      v18 = v17;
      v19 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
      swift_beginAccess();
      if (!(*(v6 + 48))(&v18[v19], 1, v5))
      {
        sub_1A45529A0(&v18[v19], v8, type metadata accessor for PhotosSearchResults);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v22 = v20;
    v23 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
    swift_beginAccess();
    if (!(*(v6 + 48))(&v22[v23], 1, v5))
    {
      sub_1A45529A0(&v22[v23], v11, type metadata accessor for PhotosSearchResults);

      v24 = *&v11[*(v5 + 40)];
      v25 = v24;
      sub_1A454C114(v11, type metadata accessor for PhotosSearchResults);
      goto LABEL_15;
    }
  }

  v24 = 0;
LABEL_15:
  v26 = type metadata accessor for PhotosSearchUtilities(0, v21);
  v27 = (*(v26 + 272))(a1, a2, v24);

  return v27;
}

uint64_t sub_1A4550A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  v38 = type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A3EA751C(a4, a9 + v38[7]);
  v39 = a9 + v38[8];
  v40 = *(a5 + 16);
  *v39 = *a5;
  *(v39 + 1) = v40;
  *(v39 + 4) = *(a5 + 32);
  v41 = (a9 + v38[9]);
  *v41 = a6;
  v41[1] = a7;
  v42 = (a9 + v38[10]);
  *v42 = a10;
  v42[1] = a11;
  v42[2] = a12;
  v42[3] = a13;
  v43 = a9 + v38[11];
  *v43 = a8;
  v43[8] = a14 & 1;
  *(a9 + v38[12]) = a15;
  *(a9 + v38[13]) = a16;
  *(a9 + v38[14]) = a17;
  v44 = a9 + v38[15];
  *v44 = a18;
  *(v44 + 1) = a19;
  v44[16] = a20;
  v45 = a9 + v38[16];
  *v45 = a21;
  *(v45 + 1) = a22;
  v45[16] = a23;
  v46 = a9 + v38[17];
  *v46 = a24;
  *(v46 + 1) = a25;
  v46[16] = a26;
  v47 = a9 + v38[18];
  *v47 = a27;
  *(v47 + 1) = a28;
  v47[16] = a29;
  v48 = (a9 + v38[19]);
  *v48 = a30;
  v48[1] = a31;
  v49 = a9 + v38[20];
  sub_1A524B694();
  *v49 = v57;
  *(v49 + 1) = v58;
  v50 = v38[21];
  *(a9 + v50) = swift_getKeyPath();
  sub_1A4554CD8(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v51 = v38[22];
  *(a9 + v51) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v52 = a9 + v38[23];
  *v52 = swift_getKeyPath();
  v52[8] = 0;
  type metadata accessor for PhotosBatchedSearchStateModel(0);
  return sub_1A5247C74();
}

id sub_1A4550D68(double a1)
{
  v1 = sub_1A4552128(a1);

  return v1;
}

id sub_1A4550D98@<X0>(void *a1@<X8>)
{
  result = sub_1A454E6E0();
  *a1 = result;
  return result;
}

uint64_t sub_1A4550DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4553284(&qword_1EB13D288, type metadata accessor for PhotosSearchResultsGridView, &unk_1A5346E88);

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4550E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A4553284(&qword_1EB13D288, type metadata accessor for PhotosSearchResultsGridView, &unk_1A5346E88);

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4550EE8(uint64_t a1)
{
  sub_1A4553284(&qword_1EB13D288, type metadata accessor for PhotosSearchResultsGridView, &unk_1A5346E88);
  sub_1A5249ED4();
  __break(1u);
}

void *PhotosSearchResultViewController.debugAssetRetrievalMap.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_debugAssetRetrievalTypeMap);
  if (v1)
  {
    sub_1A3D75C90(0, &qword_1EB120460, MEMORY[0x1E69E6158]);
    v2 = sub_1A524E764();
    v3 = v2;
    v4 = 0;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v1 + 64);
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 64;
    if (!v7)
    {
      v11 = 0;
      while (1)
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v4 >= v8)
        {
          return v3;
        }

        v12 = *(v1 + 64 + 8 * v4);
        ++v11;
        if (v12)
        {
          v10 = __clz(__rbit64(v12));
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

    v10 = __clz(__rbit64(v7));
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(v1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = *(*(v1 + 56) + 8 * v13);
    if (v17 > 1)
    {
      if (v17 == 3)
      {
        v18 = 0xE300000000000000;
        v19 = 4533069;
        goto LABEL_20;
      }

      if (v17 == 2)
      {
        v18 = 0xE100000000000000;
        v19 = 69;
LABEL_20:
        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        v20 = 16 * v13;
        v21 = (v3[6] + v20);
        *v21 = v16;
        v21[1] = v15;
        v22 = (v3[7] + v20);
        *v22 = v19;
        v22[1] = v18;
        v23 = v3[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (!v24)
        {
          v3[2] = v25;
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

LABEL_25:
        __break(1u);
      }
    }

    else
    {
      if (!v17)
      {
        v18 = 0xE100000000000000;
        v19 = 85;
        goto LABEL_20;
      }

      if (v17 == 1)
      {
        v18 = 0xE100000000000000;
        v19 = 77;
        goto LABEL_20;
      }
    }

    result = sub_1A524E6E4();
    __break(1u);
    return result;
  }

  return 0;
}

Swift::Void __swiftcall PhotosSearchResultViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = &v0[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v1 + 1);
    ObjectType = swift_getObjectType();
    (*(v2 + 16))(v0, ObjectType, v2);
    swift_unknownObjectRelease();
  }

  sub_1A4554CD8(0, &unk_1EB1202C0, sub_1A3C8B2D8, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52F8E10;
  v5 = sub_1A5247364();
  v6 = MEMORY[0x1E69DC0F8];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1A524D3A4();
  swift_unknownObjectRelease();
}

uint64_t PhotosSearchResultViewController.present(_:animated:completion:)(uint64_t a1, char a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v14[4] = a3;
    v14[5] = a4;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1A3C2E0D0;
    v14[3] = &block_descriptor_42_3;
    a3 = _Block_copy(v14);
  }

  v15.receiver = v4;
  v15.super_class = ObjectType;
  objc_msgSendSuper2(&v15, sel_presentViewController_animated_completion_, a1, a2 & 1, a3);
  _Block_release(a3);
  v10 = &v4[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 1);
    v13 = swift_getObjectType();
    (*(v12 + 24))(v4, a1, v13, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1A45514DC(void *a1)
{
  v6 = [a1 scrollView];
  swift_unknownObjectRelease();
  if (v6)
  {
    [v6 contentOffset];
    if (v2 - *(v1 + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset) >= 500.0)
    {
      *(v1 + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset) = v2;
      v3 = v1 + OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v4 = *(v3 + 8);
        ObjectType = swift_getObjectType();
        (*(v4 + 32))(v1, ObjectType, v4);
        swift_unknownObjectRelease();
      }
    }
  }
}

id PhotosSearchResultViewController.init(configuration:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_debugAssetRetrievalTypeMap] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithConfiguration_, a1);

  return v4;
}

id PhotosSearchResultViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PhotosSearchResultViewController.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_debugAssetRetrievalTypeMap] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

double sub_1A4551904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A3C5DCA4(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1A3E98434();
      v10 = v13;
    }

    sub_1A3C57128((*(v10 + 56) + 32 * v8), a3);
    sub_1A4551C6C(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

void sub_1A45519A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A3C2EF1C(0, &qword_1EB126430, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6EC8]);
  v35 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A524EC94();
      sub_1A524C794();
      v25 = sub_1A524ECE4();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A4551C6C(unint64_t a1, uint64_t a2, __n128 a3)
{
  if ((*(a2 + 64 + ((((a1 + 1) & ~(-1 << *(a2 + 32))) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((a1 + 1) & ~(-1 << *(a2 + 32)))))
  {
    sub_1A524E244();
    sub_1A524EC94();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  *(a2 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v3 = *(a2 + 16);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v5;
    ++*(a2 + 36);
  }
}

void sub_1A4551E1C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A3C5DCA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A45519A8(v16, a4 & 1);
      v11 = sub_1A3C5DCA4(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1A524EB84();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1A4551F94();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = (v21[6] + 16 * v11);
    *v24 = a2;
    v24[1] = a3;
    *(v21[7] + 8 * v11) = a1;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    goto LABEL_17;
  }

  v22 = v21[7];
  v23 = *(v22 + 8 * v11);
  *(v22 + 8 * v11) = a1;
}

void sub_1A4551F94()
{
  v1 = v0;
  sub_1A3C2EF1C(0, &qword_1EB126430, &qword_1EB12B160, 0x1E69E58C0, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = v2 + 64;
    v7 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v6 + 8 * v7)
    {
      memmove(v5, (v2 + 64), 8 * v7);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      v13 = __clz(__rbit64(v11 & v10));
      goto LABEL_14;
    }

    v14 = 0;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_15;
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
LABEL_14:
        v16 = v13 | (v8 << 6);
        v17 = (*(v2 + 48) + 16 * v16);
        v18 = v17[1];
        v19 = *(*(v2 + 56) + 8 * v16);
        v20 = (*(v4 + 48) + 16 * v16);
        *v20 = *v17;
        v20[1] = v18;
        *(*(v4 + 56) + 8 * v16) = v19;
        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v1 = v4;
  }
}

void *sub_1A4552128(double a1)
{
  sub_1A4552778(0);
  sub_1A5249FD4();
  v2 = PXPhotosViewConfigurationForSearchResultsWithDataSourceManager(*&v25[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_dataSourceManager]);
  v3 = [v2 photosAppConfiguration];
  [v3 setViewOptionsModel_];

  v4 = [v2 photosAppConfiguration];
  [v4 setHidesViewOptionsToolbar_];

  [v2 setFooterVisibilityStyle_];
  [v2 setNavBarStyle_];
  [v2 setLightModeBackgroundStyle_];
  [v2 setDarkModeBackgroundStyle_];
  [v2 setGridPresentationType_];
  [v2 setGridStyle_];
  [v2 setPrefersActionsInToolbar_];
  [v2 setDelegate_];
  v5 = type metadata accessor for PhotosSearchResultsGridView(0);
  v6 = v1 + *(v5 + 36);
  if (*v6)
  {
    v7 = *(v6 + 8);
    v30 = *v6;
    v31 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v27 = 1107296256;
    v28 = sub_1A3D8EF18;
    v29 = &block_descriptor_87_4;
    v8 = _Block_copy(&aBlock);
  }

  else
  {
    v8 = 0;
  }

  [v2 setCustomAssetSelectionHandler_];
  _Block_release(v8);
  [v2 setOneUpAssetsViewMode_];
  [v2 setContentStartingPosition_];
  [v2 setSectionBodyStyle_];
  [v2 setSectionBodyLayoutProvider_];
  [v2 setSectionHeaderStyle_];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = sub_1A4554D8C;
  v31 = v9;
  aBlock = MEMORY[0x1E69E9820];
  v27 = 1107296256;
  v28 = sub_1A44D38E0;
  v29 = &block_descriptor_84_3;
  v10 = _Block_copy(&aBlock);

  [v2 setBadgesModifier_];
  _Block_release(v10);
  [v2 setEmptyPlaceholderStatusViewModel_];
  [v2 setWantsFooterVisibleWhenEmpty_];
  [v2 setHidesAssetCountInFooter_];

  v11 = [objc_allocWithZone(type metadata accessor for PhotosSearchResultViewController()) initWithConfiguration_];
  sub_1A5249FD4();
  v12 = aBlock;
  *&v11[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_searchDelegate + 8] = &off_1F1715560;
  swift_unknownObjectWeakAssign();

  v13 = v11;
  if ([v2 toolbarStyle])
  {
    sub_1A5249FD4();
    v14 = aBlock;
  }

  else
  {
    v14 = 0;
  }

  [v13 setGridPresentationBarsUpdateDelegate_];

  swift_unknownObjectRelease();
  sub_1A5249FD4();
  v15 = aBlock;
  v16 = *&aBlock[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_bodyLayoutProvider];

  v17 = v13;
  [v16 setHostViewController_];

  v18 = *(v1 + 8);
  sub_1A4554D3C(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A52F9790;
  *(v19 + 32) = v17;
  sub_1A3C52C70(0, &qword_1EB126B10, 0x1E69DD258);
  v20 = sub_1A524CA14();

  [v18 setViewControllers_];

  sub_1A5249FD4();
  v21 = aBlock;
  [v18 setDelegate_];

  [v18 setToolbarHidden_];
  [v18 setNavigationBarHidden_];
  v22 = [v18 traitCollection];
  v23 = [v22 userInterfaceStyle];

  [v18 _setBuiltinTransitionStyle_];
  return v18;
}

void sub_1A45526E4(uint64_t a1)
{
  if (!qword_1EB126010)
  {
    sub_1A4554CD8(255, &qword_1EB12AFA0, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB126010);
    }
  }
}

void sub_1A4552778(uint64_t a1)
{
  if (!qword_1EB13D280)
  {
    type metadata accessor for PhotosSearchResultsGridView(255);
    sub_1A4553284(&qword_1EB13D288, type metadata accessor for PhotosSearchResultsGridView, &unk_1A5346E88);
    v1 = sub_1A5249FF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D280);
    }
  }
}

uint64_t sub_1A455280C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  sub_1A4554CD8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A455287C(uint64_t a1, uint64_t a2)
{
  sub_1A4554CD8(0, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4552910(uint64_t a1, uint64_t a2)
{
  sub_1A454AFA8(0, &qword_1EB129AC0, &qword_1EB129AD0, &protocol descriptor for LemonadeSearchableContainer, sub_1A3C34400);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A45529A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4552A08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1A4552A70(void *a1)
{
  v3 = type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A3C451FC(v1 + *(v3 + 32) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v8);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v6 = (*(v5 + 24))(v4, v5);
    __swift_destroy_boxed_opaque_existential_0(v8);
  }

  else
  {
    sub_1A3C2CE9C(v8);
    v6 = 0;
  }

  return [a1 setHidesSortOrderMenu_];
}

uint64_t objectdestroy_8Tm_1()
{
  v1 = type metadata accessor for PhotosSearchResultsGridView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v2 + v1[7];
  v4 = type metadata accessor for PhotosSearchResults(0);
  if (!(*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    v5 = sub_1A52411C4();
    (*(*(v5 - 8) + 8))(v3, v5);
  }

  v6 = (v2 + v1[8]);
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  if (*(v2 + v1[9]))
  {
  }

  if (*(v2 + v1[19]))
  {
  }

  v7 = v1[21];
  sub_1A4554CD8(0, &unk_1EB128A40, sub_1A3DC7D88, MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_1A5249A94();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v2 + v7, 1, v8))
    {
      (*(v9 + 8))(v2 + v7, v8);
    }
  }

  else
  {
  }

  v10 = v1[22];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A5249A94();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v2 + v10, 1, v11))
    {
      (*(v12 + 8))(v2 + v10, v11);
    }
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[23]), *(v2 + v1[23] + 8));
  v13 = v2 + v1[24];
  sub_1A4554CD8(0, &qword_1EB13D290, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E6981E90]);
  (*(*(v14 - 8) + 8))(v13, v14);
  sub_1A4554CD8(0, &qword_1EB13D298, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E6981E98]);

  return swift_deallocObject();
}

void sub_1A4553058(void *a1)
{
  type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A4554CD8(0, &qword_1EB13D278, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v2 = sub_1A4A2C468();

  v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  [a1 setSearch:v3 overriddenAllAssetsCount:?];
}

id sub_1A455317C(void *a1)
{
  v3 = *(type metadata accessor for PhotosSearchResultsGridView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A454E204(a1, v4);
}

uint64_t sub_1A45531EC(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  type metadata accessor for PhotosSearchPhotoKitAssetsDataSourceManager();
  v5 = swift_dynamicCastClassUnconditional();
  return (*((*MEMORY[0x1E69E7D40] & *v5) + 0x58))(v2, v3, v4);
}

uint64_t sub_1A4553284(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1A45532EC(void *a1)
{
  type metadata accessor for PhotosSearchResultViewController();
  if (swift_dynamicCastClass())
  {
    goto LABEL_4;
  }

  result = [a1 view];
  if (result)
  {
    v3 = result;
    v4 = [objc_opt_self() clearColor];
    [v3 setBackgroundColor_];

LABEL_4:
    type metadata accessor for PhotosSearchResultsGridView(0);
    sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
    sub_1A524B904();
    return sub_1A455341C();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A455341C()
{
  v1 = type metadata accessor for PhotosSearchResults(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_container;
  swift_beginAccess();
  sub_1A3C451FC(v0 + v5, v11);
  v6 = v12;
  result = sub_1A3C2CE9C(v11);
  if (!v6)
  {
    v8 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_searchResults;
    swift_beginAccess();
    if (!(*(v2 + 48))(v0 + v8, 1, v1))
    {
      sub_1A45529A0(v0 + v8, v4, type metadata accessor for PhotosSearchResults);
      sub_1A3DA6000(*(v0 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent));
      sub_1A454C114(v4, type metadata accessor for PhotosSearchResults);
    }

    v9 = v0 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent;
    result = type metadata accessor for PhotosSearchResultsGridView(0);
    v10 = (v9 + *(result + 76));
    if (*v10)
    {
      return (*v10)();
    }
  }

  return result;
}

void sub_1A45535C0()
{
  type metadata accessor for PhotosSearchResultsGridView(0);
  sub_1A4554CD8(0, &qword_1EB13D278, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v1 = sub_1A4A2C024();

  if (v1)
  {
    sub_1A5247C84();
    sub_1A4A2DDEC();

    v2 = *(v0 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_dataSourceManager);
    sub_1A5247C84();
    sub_1A4A2DA28(1uLL);
    v4 = v3;

    sub_1A3C4467C(v4);

    v5 = sub_1A524CF34();

    [v2 setAllowedUUIDs_];
  }
}

uint64_t sub_1A4553714(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = &v1[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parent];
  v6 = &v5[*(type metadata accessor for PhotosSearchResultsGridView(0) + 60)];
  v7 = *(v6 + 1);
  LOBYTE(v6) = v6[16];
  v41 = v7;
  LOBYTE(v42) = v6;
  LOBYTE(v39) = 0;
  sub_1A4554D3C(0, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
  sub_1A524B904();
  sub_1A4554CD8(0, &qword_1EB126200, sub_1A3F24E98, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v9;
  v43 = ObjectType;
  v40 = v2;
  v10 = v2;
  String.init(forType:)(&v40);
  v11 = sub_1A524C634();

  *(inited + 48) = v11;
  v12 = sub_1A3E75770(inited);
  swift_setDeallocating();
  sub_1A454C114(inited + 32, sub_1A3F24E98);
  v13 = [a1 asset];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v15 = v14;
    v16 = [objc_opt_self() mainBundle];
    v17 = [v16 bundleIdentifier];

    if (v17)
    {
      sub_1A524C674();
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = sub_1A524C674();
    v22 = v21;
    swift_unknownObjectRetain();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1A4551E1C(v15, v20, v22, isUniquelyReferenced_nonNull_native);

    v40 = v12;
    v24 = sub_1A524C674();
    v26 = v25;
    if (v19)
    {
    }

    else
    {

      v17 = 0;
    }

    sub_1A454F230(v17, v24, v26);
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  v27 = objc_opt_self();
  v28 = *MEMORY[0x1E6991CB0];
  sub_1A3C52C70(0, &qword_1EB12B160, 0x1E69E58C0);
  v29 = v28;
  v30 = sub_1A524C3D4();
  [v27 sendEvent:v29 withPayload:v30];

  if ([a1 sectionObject])
  {
    objc_opt_self();
    v31 = swift_dynamicCastObjCClass();
    if (v31)
    {
      v32 = [v31 transientIdentifier];
      if (v32)
      {
        v33 = v32;
        v34 = sub_1A524C674();
        v36 = v35;

        if (v34 != sub_1A524C674() || v36 != v37)
        {
          sub_1A524EAB4();
        }
      }
    }

    swift_unknownObjectRelease();
  }

  if (*&v10[OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_parsecAssetRetrievalTypeMap])
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return sub_1A455341C();
}

double sub_1A4553C9C(void *a1, double result)
{
  v3 = *(v2 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_toolbarModel);
  if (!v3)
  {
    return result;
  }

  v5 = *(*v3 + 120);

  v7 = v5(v6);
  v8 = [a1 toolbarItems];
  if (v8)
  {
    v9 = v8;
    sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
    v10 = sub_1A524CA34();

    if (v7)
    {
      if (v10)
      {
        v12 = sub_1A42AEED0(v7, v10, v11);

        if (v12)
        {
          goto LABEL_16;
        }

LABEL_12:
        v13 = [a1 toolbarItems];
        if (v13)
        {
          v14 = v13;
          sub_1A3C52C70(0, &qword_1EB126B80, 0x1E69DC708);
          v15 = sub_1A524CA34();
        }

        else
        {
          v15 = 0;
        }

        (*(*v3 + 128))(v15);
        goto LABEL_16;
      }

LABEL_11:

      goto LABEL_12;
    }

    if (v10)
    {
      goto LABEL_11;
    }
  }

  else if (v7)
  {
    goto LABEL_11;
  }

LABEL_16:

  return result;
}

void sub_1A4553E40()
{
  v0 = [objc_opt_self() px_mainScreen];
  v1 = [v0 snapshotViewAfterScreenUpdates_];

  [v1 frame];
  v6 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithBounds_];
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1A4554B80;
  *(v8 + 24) = v7;
  v13 = sub_1A3D78DD0;
  v14 = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3D35A90;
  v12 = &block_descriptor_71_0;
  v9 = _Block_copy(aBlock);
  v1;

  v10 = [v6 imageWithActions_];

  _Block_release(v9);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if ((v1 & 1) == 0)
  {
    sub_1A4A38E34();
    v12 = sub_1A3C52C70(0, &qword_1EB126630, 0x1E69DCAB8);
    aBlock[0] = v10;
    swift_beginAccess();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  __break(1u);
  __break(1u);
}

void sub_1A4554378()
{
  v1 = OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_shouldResetGridToInitialPosition;
  if (*(v0 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_shouldResetGridToInitialPosition) == 1)
  {
    v2 = [*(v0 + OBJC_IVAR____TtCV12PhotosUICore27PhotosSearchResultsGridView11Coordinator_bodyLayoutProvider) hostViewController];
    if (v2)
    {
      v3 = v2;
      v4 = type metadata accessor for PhotosSearchResultViewController();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        *&v5[OBJC_IVAR____TtC12PhotosUICore32PhotosSearchResultViewController_previousScrollOffset] = 0;
        v6.receiver = v5;
        v6.super_class = v4;
        objc_msgSendSuper2(&v6, sel_resetToInitialStateIfPossible);
      }
    }

    *(v0 + v1) = 0;
  }
}

void sub_1A4554490(uint64_t a1)
{
  sub_1A3C52C70(319, &qword_1EB126BF0, 0x1E69789A8);
  if (v1 <= 0x3F)
  {
    sub_1A3C52C70(319, &unk_1EB126900, 0x1E69DCCD8);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PhotosSearchCollectionSectionProvider(319, v2);
      if (v3 <= 0x3F)
      {
        sub_1A4554CD8(319, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1A454AFA8(319, &qword_1EB129AC0, &qword_1EB129AD0, &protocol descriptor for LemonadeSearchableContainer, sub_1A3C34400);
          if (v5 <= 0x3F)
          {
            sub_1A4554CD8(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for UIEdgeInsets(319);
              if (v7 <= 0x3F)
              {
                sub_1A4554D3C(319, &qword_1EB12AF10, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  sub_1A3C52C70(319, &qword_1EB13D2C8, &off_1E77218E8);
                  if (v9 <= 0x3F)
                  {
                    sub_1A4554CD8(319, &qword_1EB12A2F0, type metadata accessor for LemonadeToolbarModel, MEMORY[0x1E69E6720]);
                    if (v10 <= 0x3F)
                    {
                      sub_1A4554898(319);
                      if (v11 <= 0x3F)
                      {
                        sub_1A4554D3C(319, &qword_1EB127320, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
                        if (v12 <= 0x3F)
                        {
                          sub_1A4554D3C(319, &qword_1EB13D270, MEMORY[0x1E6980D50], MEMORY[0x1E6981948]);
                          if (v13 <= 0x3F)
                          {
                            sub_1A4554D3C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                            if (v14 <= 0x3F)
                            {
                              sub_1A4554CD8(319, &qword_1EB124700, sub_1A3DC7D88, MEMORY[0x1E697DCC0]);
                              if (v15 <= 0x3F)
                              {
                                sub_1A4554D3C(319, &unk_1EB124790, &type metadata for LemonadeRootViewOrientation, MEMORY[0x1E697DCC0]);
                                if (v16 <= 0x3F)
                                {
                                  sub_1A4554CD8(319, &qword_1EB13D278, type metadata accessor for PhotosBatchedSearchStateModel, MEMORY[0x1E697DA80]);
                                  if (v17 <= 0x3F)
                                  {
                                    swift_cvw_initStructMetadataWithLayoutString();
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1A4554898(uint64_t a1)
{
  if (!qword_1EB120DB0)
  {
    sub_1A3C2EF1C(255, &unk_1EB120DC0, &qword_1EB126610, 0x1E696AD98, MEMORY[0x1E69E5E28]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB120DB0);
    }
  }
}

void sub_1A4554924(uint64_t a1)
{
  type metadata accessor for PhotosSearchResultsGridView(319);
  if (v1 <= 0x3F)
  {
    sub_1A4554CD8(319, &qword_1EB125F80, type metadata accessor for PhotosSearchResults, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A4554A54(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1A524C3D4();
  (*(v2 + 16))(v2, v3);
}

void sub_1A4554AC8(void *a1)
{
  v2 = [a1 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = [a1 navigationController];
  if (v4)
  {
    v5 = v4;
    [v4 _setBuiltinTransitionStyle_];
  }
}

id sub_1A4554B80()
{
  v1 = *(v0 + 16);
  [v1 bounds];

  return [v1 drawViewHierarchyInRect:1 afterScreenUpdates:?];
}

void sub_1A4554BD0(void *a1)
{
  type metadata accessor for PhotosSearchResultViewController();
  if (swift_dynamicCastClass())
  {
    v2 = a1;
    sub_1A4A38E4C();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A4554CD8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4554D3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

id sub_1A4554E5C(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_1A45550C4(a1, a2, 0);
  v5 = [a1 librarySpecificFetchOptions];
  [v5 setSharingFilter_];
  [v5 setIncludeGuestAssets_];
  result = [objc_opt_self() fetchKeyAssetForEachSuggestion:v4 options:v5];
  if (result)
  {
    v7 = result;

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PhotosIntelligenceFetcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosIntelligenceFetcher.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosIntelligenceFetcher();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PhotosIntelligenceFetcher.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PhotosIntelligenceFetcher();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1A45550C4(void *a1, unsigned __int16 a2, uint64_t a3)
{
  v6 = sub_1A5244EE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  v14 = [a1 librarySpecificFetchOptions];
  [v14 setFetchLimit_];
  [v14 setSharingFilter_];
  (*(v7 + 104))(v13, *MEMORY[0x1E69C12A8], v6);
  (*(v7 + 16))(v9, v13, v6);
  sub_1A5244EF4();
  swift_allocObject();
  v15 = v14;
  v16 = a1;
  sub_1A5244ED4();
  sub_1A5244CA4();
  v17 = sub_1A5244C94();

  (*(v7 + 8))(v13, v6);
  return v17;
}

uint64_t sub_1A45552C8()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 304))(KeyPath);

  return *(v0 + *(*v0 + 104));
}

uint64_t sub_1A4555384@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1A45552C8();
  *a1 = result;
  return result;
}

double sub_1A45553D8(char a1)
{
  v3 = *(*v1 + 104);
  sub_1A4557A54();
  v4 = sub_1A524C594();
  if (v4)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    MEMORY[0x1EEE9AC00](v4);
    KeyPath = swift_getKeyPath();
    v7.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 312))(v7);
  }

  return result;
}

void sub_1A45555AC(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_1A52450C4();
  v4 = MEMORY[0x1EEE9AC00](v3);
  *(v1 + v2[13]) = 0;
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C13D8], v4);
  sub_1A52450E4();
  type metadata accessor for SpatialPresentation.AnimatedView(0, v2[10], v2[11], v7);
  *(v1 + (*v1)[15]) = sub_1A524C384();
  sub_1A5246EF4();
}

double sub_1A45557A4(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v9 = *(v3 + 80);
  KeyPath = swift_getKeyPath();
  v7 = v1;
  v8 = a1;
  (*(*v1 + 312))(KeyPath, sub_1A4557C9C, &v6, MEMORY[0x1E69E7CA8] + 8);

  return result;
}

id sub_1A45558B8()
{
  v1 = v0;
  v2 = *v0;
  v42 = sub_1A5246A24();
  v3 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5246A34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_allocWithZone(sub_1A5246A14()) initWithFrame_];
  (*(v7 + 104))(v9, *MEMORY[0x1E69C1B40], v6);
  sub_1A52469F4();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v14 = *(v2 + 80);
  v13[2] = v14;
  v15 = *(v2 + 88);
  v13[3] = v15;
  v13[4] = v11;
  v13[5] = v12;
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);

  sub_1A524D474();
  (*(v3 + 104))(v5, *MEMORY[0x1E69C1B28], v42);
  sub_1A5246A74();
  swift_allocObject();
  v16 = sub_1A5246A64();

  v42 = v16;
  sub_1A5246A54();
  sub_1A5246AB4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = v10;

  v19 = objc_allocWithZone(ObjCClassFromMetadata);
  v20 = v18;
  v21 = [v19 init];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = v20;
  [v22 addSubview_];
  v41 = objc_opt_self();
  sub_1A3CB8F68();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A531C940;
  v24 = [v21 topAnchor];
  v25 = [v22 topAnchor];
  v26 = [v24 constraintEqualToAnchor_];

  *(v23 + 32) = v26;
  v27 = [v21 bottomAnchor];
  v28 = [v22 bottomAnchor];

  v29 = [v27 constraintEqualToAnchor_];
  *(v23 + 40) = v29;
  v30 = [v21 leadingAnchor];
  v31 = [v22 leadingAnchor];

  v32 = [v30 constraintEqualToAnchor_];
  *(v23 + 48) = v32;
  v33 = [v21 trailingAnchor];

  v34 = [v22 trailingAnchor];
  v35 = [v33 constraintEqualToAnchor_];

  *(v23 + 56) = v35;
  sub_1A3C52C70(0, &qword_1EB126A30, 0x1E696ACD8);
  v36 = sub_1A524CA14();

  [v41 activateConstraints_];

  v48 = v22;
  v49 = v21;
  v50 = v42;
  v45 = v14;
  v46 = v15;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 304))(KeyPath);

  v47 = v1;
  v43 = v14;
  v44 = v15;
  swift_getKeyPath();
  type metadata accessor for SpatialPresentation(255, v14, v15, v38);
  swift_getWitnessTable();
  sub_1A52415F4();

  swift_beginAccess();
  type metadata accessor for SpatialPresentation.AnimatedView(255, v14, v15, v39);
  sub_1A524CB74();
  sub_1A524CB14();
  swift_endAccess();
  sub_1A52415B4();
  sub_1A4556C9C(v1);

  return v22;
}

double sub_1A4555FAC(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  v4 = sub_1A5246B74();
  MEMORY[0x1EEE9AC00](v4 - 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      sub_1A52469E4();
      sub_1A5246B64();
      sub_1A5246B84();
    }
  }

  return result;
}

void sub_1A45560DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  MEMORY[0x1EEE9AC00](a1);
  v6[3] = v6 - v3;
  sub_1A4557778();
  v4 = *(v1 + 88);
  v6[8] = v2;
  type metadata accessor for SpatialPresentation.AnimatedView(0, v2, v4, v5);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A455653C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A524CCB4();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v10 = sub_1A524CC44();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v9;

  sub_1A3D4D930(0, 0, v7, &unk_1A5347200, v11);

  return result;
}

uint64_t sub_1A45566C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  sub_1A524CC54();
  *(v4 + 48) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4556760, v6, v5);
}

uint64_t sub_1A4556760()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1A52415B4();
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A455682C(uint64_t a1, double a2)
{
  v3 = *v2;
  sub_1A4557778();
  type metadata accessor for SpatialPresentation.AnimatedView(255, *(v3 + 80), *(v3 + 88), v4);
  sub_1A524CB74();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4556B68(uint64_t a1)
{
  v3 = *(*v1 + 120);
  swift_beginAccess();
  *(v1 + v3) = a1;

  return sub_1A52415B4();
}

void sub_1A4556C0C(double a1)
{
  sub_1A4557778();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A4556C34(uint64_t *a1@<X8>)
{
  *a1 = sub_1A4557778();

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

double sub_1A4556C9C(void *a1)
{
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  swift_getKeyPath();
  type metadata accessor for SpatialPresentation(255, v1, v2, v3);
  swift_getWitnessTable();
  sub_1A52415E4();

  return result;
}

double sub_1A4556D7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = [a1 layer];
  [v4 setCompositingFilter_];

  sub_1A5246AF4();
  swift_allocObject();
  sub_1A5246AE4();

  sub_1A5246AA4();
  sub_1A5246AD4();

  return result;
}

double sub_1A4556FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (sub_1A5246A94())
  {
    sub_1A5246AC4();
  }

  return result;
}

void sub_1A4557158(void *a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  if (sub_1A45552C8() != 2)
  {
    [a1 setAlpha_];

    sub_1A5246A04();
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    v10 = *(v7 + 80);
    v9[2] = v10;
    v11 = *(v7 + 88);
    v9[3] = v11;
    v9[4] = a1;
    v9[5] = a2;
    v9[6] = a3;
    v23 = sub_1A4557AA8;
    v24 = v9;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1A3C2E0D0;
    v22 = &block_descriptor_210;
    v12 = _Block_copy(&v19);
    v13 = a1;
    v14 = a2;

    v15 = swift_allocObject();
    v15[2] = v10;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = v14;
    v15[6] = a3;
    v15[7] = 0x3FD3333333333333;
    v23 = sub_1A4557ABC;
    v24 = v15;
    v19 = MEMORY[0x1E69E9820];
    v20 = 1107296256;
    v21 = sub_1A3E01E70;
    v22 = &block_descriptor_19_5;
    v16 = _Block_copy(&v19);
    v17 = v13;
    v18 = v14;

    [v8 animateWithDuration:v12 animations:v16 completion:0.3];
    _Block_release(v16);
    _Block_release(v12);
  }
}

uint64_t sub_1A4557394(uint64_t a1)
{
  sub_1A5244384();
  sub_1A5244374();
  v1 = sub_1A5244314();

  if (v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1A5245084() ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_1A45575A8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));
  v1 = *(*v0 + 112);
  v2 = sub_1A5245104();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 128);
  v4 = sub_1A5246F24();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 136);
  v6 = sub_1A5241614();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1A4557720()
{
  sub_1A45575A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1A4557778()
{
  KeyPath = swift_getKeyPath();
  (*(*v0 + 304))(KeyPath);

  v2 = *(*v0 + 120);
  swift_beginAccess();
  return *(v0 + v2);
}

uint64_t sub_1A45578AC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1A5245104();
    if (v3 <= 0x3F)
    {
      result = sub_1A5246F24();
      if (v4 <= 0x3F)
      {
        result = sub_1A5241614();
        if (v5 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1A4557A14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1A4557A54()
{
  result = qword_1EB1C62E0[0];
  if (!qword_1EB1C62E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1C62E0);
  }

  return result;
}

void sub_1A4557ABC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v11 = *(v0 + 16);
  [v2 setHidden_];
  v5 = [v1 layer];
  [v5 setCompositingFilter_];

  sub_1A5246A84();
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  *(v7 + 16) = v11;
  *(v7 + 32) = v1;
  *(v7 + 40) = v2;
  *(v7 + 48) = v3;
  aBlock[4] = sub_1A4557C88;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_25_2;
  v8 = _Block_copy(aBlock);
  v9 = v1;
  v10 = v2;

  [v6 animateWithDuration:v8 animations:v4];
  _Block_release(v8);
}

uint64_t objectdestroy_12Tm(uint64_t a1)
{

  return swift_deallocObject();
}

double (*sub_1A4557CD8())()
{
  v1 = *v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  v3[2] = *(v1 + 80);
  v3[3] = *(v1 + 88);
  v3[4] = v2;
  return sub_1A4557D80;
}

uint64_t sub_1A4557D8C()
{
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A45566C8(v3, v4, v5, v2);
}

void sub_1A4557E54(void (*a1)(uint64_t a1), uint64_t a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_1A4557FA8;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3D7692C;
  v11 = &block_descriptor_211;
  v6 = _Block_copy(&v8);

  v12 = a1;
  v13 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3D6084C;
  v11 = &block_descriptor_3_5;
  v7 = _Block_copy(&v8);

  [v2 performAssetChanges:v6 completionHandler:v7];
  _Block_release(v7);
  _Block_release(v6);
}

void sub_1A4557FA8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x50))(a1);
  }
}

id sub_1A4558330(uint64_t a1)
{
  v2 = [objc_allocWithZone(v1) initWithAssets_];
  swift_unknownObjectRelease();
  return v2;
}

id sub_1A4558390(uint64_t a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithAssets_, a1);
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

id sub_1A4558414(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v7.receiver = a1;
  v7.super_class = a4(a1, a2);
  swift_unknownObjectRetain();
  v5 = objc_msgSendSuper2(&v7, sel_initWithAssets_, a3);
  swift_unknownObjectRelease();
  if (v5)
  {
  }

  return v5;
}

id sub_1A45584A0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A455855C(uint64_t a1)
{
  v2 = *off_1E7721FC0;
  sub_1A4076128(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v4;
  *(inited + 48) = 0xD000000000000023;
  *(inited + 56) = 0x80000001A53DBD50;
  v5 = v2;
  sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A3C5DDD4(inited + 32);
  v6 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v7 = sub_1A524C3D4();

  v8 = [v6 initWithDomain:v5 code:-1 userInfo:v7];

  v9 = sub_1A5240B74();
  (*(a1 + 16))(a1, 0, v9);
}

void sub_1A45586C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for LemonadePeopleHomePeopleSection(uint64_t a1)
{
  result = qword_1EB1C6490;
  if (!qword_1EB1C6490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4558778(uint64_t a1)
{
  if (!qword_1EB13D450)
  {
    sub_1A4558864(255);
    sub_1A4559F84(255, &qword_1EB13D488, sub_1A4558A88, sub_1A4558B3C);
    sub_1A455A60C(&qword_1EB13D498, sub_1A4558864, MEMORY[0x1E69C1E20]);
    sub_1A4558BB8();
    v1 = sub_1A5243DD4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D450);
    }
  }
}

void sub_1A4558864(uint64_t a1)
{
  if (!qword_1EB13D458)
  {
    sub_1A45588E4(255);
    sub_1A45589D8();
    v1 = sub_1A52423F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D458);
    }
  }
}

void sub_1A45588E4(uint64_t a1)
{
  if (!qword_1EB13D460)
  {
    sub_1A4558944(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D460);
    }
  }
}

void sub_1A4558944(uint64_t a1)
{
  if (!qword_1EB13D468)
  {
    type metadata accessor for LemonadePeopleHomeSortMenu(255);
    sub_1A455A60C(&qword_1EB13D470, type metadata accessor for LemonadePeopleHomeSortMenu, &unk_1A5369440);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D468);
    }
  }
}

unint64_t sub_1A45589D8()
{
  result = qword_1EB13D478;
  if (!qword_1EB13D478)
  {
    sub_1A45588E4(255);
    sub_1A455A60C(&qword_1EB13D480, sub_1A4558944, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D478);
  }

  return result;
}

void sub_1A4558A88(uint64_t a1)
{
  if (!qword_1EB13D490)
  {
    sub_1A44FD0D4(255);
    sub_1A455A60C(&qword_1EB13CBE0, sub_1A44FD0D4, &unk_1A53341A0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D490);
    }
  }
}

void sub_1A4558B3C(uint64_t a1)
{
  if (!qword_1EB1220A0)
  {
    sub_1A44B38BC(255, &qword_1EB126538, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    v1 = sub_1A5249F44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1220A0);
    }
  }
}

unint64_t sub_1A4558BB8()
{
  result = qword_1EB13D4A0;
  if (!qword_1EB13D4A0)
  {
    sub_1A4559F84(255, &qword_1EB13D488, sub_1A4558A88, sub_1A4558B3C);
    sub_1A44FD0D4(255);
    sub_1A455A60C(&qword_1EB13CBE0, sub_1A44FD0D4, &unk_1A53341A0);
    swift_getOpaqueTypeConformance2();
    sub_1A455A60C(&qword_1EB1220A8, sub_1A4558B3C, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D4A0);
  }

  return result;
}

uint64_t sub_1A4558CF8@<X0>(PHPhotoLibrary *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1A5243334();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for LemonadePeopleHomePeopleSection(0);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v28 = v6;
  v31 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A5242D14();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = sub_1A52486A4();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18._object = 0x80000001A53DBF40;
  v18._countAndFlagsBits = 0xD00000000000001ALL;
  v19 = LemonadeLocalizedPeopleAndPetsTitle(for:key:)(a1[1], v18);
  object = v19._object;
  countAndFlagsBits = v19._countAndFlagsBits;
  sub_1A455A3D4(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v17);
  v20 = sub_1A5248684();
  (*(v15 + 8))(v17, v14);
  if (v20)
  {
    sub_1A455A3D4(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v13);
    (*(v8 + 104))(v10, *MEMORY[0x1E69C2210], v7);
    sub_1A455A60C(&qword_1EB129148, MEMORY[0x1E69C2218], MEMORY[0x1E69C2220]);
    sub_1A524C594();
    v21 = *(v8 + 8);
    v21(v10, v7);
    v21(v13, v7);
  }

  v22 = v31;
  sub_1A455A068(a1, v31, type metadata accessor for LemonadePeopleHomePeopleSection);
  v23 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v24 = swift_allocObject();
  sub_1A455A6BC(v22, v24 + v23, type metadata accessor for LemonadePeopleHomePeopleSection);
  (*(v32 + 104))(v34, *MEMORY[0x1E69C2410], v33);
  sub_1A5247BA4();
  sub_1A45588E4(0);
  sub_1A45589D8();
  return sub_1A52423E4();
}

void sub_1A455921C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A4558944(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v6 = sub_1A5249314();
  *(v6 + 1) = 0;
  v6[16] = 0;
  sub_1A455A654(0);
  sub_1A484CB04(*(a1 + 8), &v6[*(v7 + 44)]);
  if (*a1)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  sub_1A455A6BC(v6, a2, sub_1A4558944);
  sub_1A45588E4(0);
  *(a2 + *(v9 + 36)) = v8;
}

void sub_1A4559304(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = sub_1A5249234();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45586C8(0, &qword_1EB128FB0, MEMORY[0x1E69C2E30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - v6;
  sub_1A44FD0D4(0);
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for LemonadePeopleSectionProvider(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = *(a1 + 1);
  v18 = a1[1];
  v19 = *a1;
  v20 = *(a1 + 3);
  v21 = v20;
  v22 = v17;
  v23 = sub_1A42011B0();
  sub_1A4251F54(v22, v18, v19 ^ 1, v19 ^ 1, v19, v23, v20, v16);
  sub_1A455A068(v16, v13, type metadata accessor for LemonadePeopleSectionProvider);
  v24 = *(a1 + 2);
  v25 = sub_1A52442E4();
  (*(*(v25 - 8) + 56))(v7, 1, 1, v25);
  v46 = 0;
  memset(v45, 0, sizeof(v45));
  v26 = sub_1A455A60C(&qword_1EB136230, type metadata accessor for LemonadePeopleSectionProvider, &unk_1A53285E8);

  v27 = sub_1A3C5A374();
  sub_1A437CBD4(v13, v24, v7, 0, v19 ^ 1, v45, 0, 0, v10, v27 & 1, v11, v26);
  v28 = &a1[*(type metadata accessor for LemonadePeopleHomePeopleSection(0) + 44)];
  v30 = *v28;
  v29 = *(v28 + 1);
  v32 = *(v28 + 2);
  v31 = *(v28 + 3);
  if (v28[32] != 1)
  {

    v33 = sub_1A524D254();
    v34 = sub_1A524A014();
    sub_1A5246DF4(v33, &dword_1A3C1C000, v34, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    v35 = v40;
    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A3D35A84(v30, v29, v32, v31, 0);
    (*(v41 + 8))(v35, v42);
  }

  sub_1A5247B84();
  sub_1A455A60C(&qword_1EB13CBE0, sub_1A44FD0D4, &unk_1A53341A0);
  sub_1A524A604();
  sub_1A455A0D0(v10, sub_1A44FD0D4);
  swift_getKeyPath();
  sub_1A4559F84(0, &qword_1EB13D488, sub_1A4558A88, sub_1A4558B3C);
  v36 = sub_1A49A67AC();
  v38 = *v36;
  v37 = *(v36 + 1);
  *&v45[0] = v38;
  *(&v45[0] + 1) = v37;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A455984C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5;
  v7 = type metadata accessor for LemonadePeopleHomePeopleSection(0);
  v8 = v7[9];
  *(a6 + v8) = swift_getKeyPath();
  v9 = MEMORY[0x1E697DCB8];
  sub_1A45586C8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v10 = v7[10];
  *(a6 + v10) = swift_getKeyPath();
  sub_1A45586C8(0, &qword_1EB128A50, MEMORY[0x1E697E730], v9);
  swift_storeEnumTagMultiPayload();
  v11 = a6 + v7[11];
  result = swift_getKeyPath();
  *v11 = result;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = 0;
  return result;
}

uint64_t sub_1A4559978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v15[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A4558778(0);
  v15[0] = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A455A068(v3, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomePeopleSection);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_1A455A6BC(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for LemonadePeopleHomePeopleSection);
  sub_1A455A068(v3, v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadePeopleHomePeopleSection);
  v12 = swift_allocObject();
  sub_1A455A6BC(v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v10, type metadata accessor for LemonadePeopleHomePeopleSection);
  sub_1A5249584();
  sub_1A4558864(0);
  sub_1A4559F84(0, &qword_1EB13D488, sub_1A4558A88, sub_1A4558B3C);
  sub_1A455A60C(&qword_1EB13D498, sub_1A4558864, MEMORY[0x1E69C1E20]);
  sub_1A4558BB8();
  sub_1A5243DC4();
  sub_1A455A60C(&qword_1EB13D4A8, sub_1A4558778, MEMORY[0x1E69C28E0]);
  v13 = v15[0];
  sub_1A524AA94();
  return (*(v7 + 8))(v9, v13);
}

void sub_1A4559CCC(uint64_t a1, uint64_t a2)
{
  sub_1A3C4B4AC(319, a2);
  if (v2 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v3 <= 0x3F)
    {
      sub_1A45586C8(319, &qword_1EB125A20, type metadata accessor for PickerConfiguration, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        sub_1A45586C8(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v5 <= 0x3F)
        {
          sub_1A45586C8(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
          if (v6 <= 0x3F)
          {
            sub_1A44B38BC(319, &qword_1EB124738, MEMORY[0x1E697DA60], MEMORY[0x1E697DCC0]);
            if (v7 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1A4559E74()
{
  result = qword_1EB13D4B0;
  if (!qword_1EB13D4B0)
  {
    sub_1A4559F84(255, &qword_1EB13D4B8, sub_1A4558778, MEMORY[0x1E697CBE8]);
    sub_1A455A60C(&qword_1EB13D4A8, sub_1A4558778, MEMORY[0x1E69C28E0]);
    sub_1A455A60C(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D4B0);
  }

  return result;
}

void sub_1A4559F84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A4559FF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadePeopleHomePeopleSection(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_1A4558CF8(v4, a1);
}

uint64_t sub_1A455A068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A455A0D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_60()
{
  v1 = type metadata accessor for LemonadePeopleHomePeopleSection(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[9];
  sub_1A45586C8(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[10];
  sub_1A45586C8(0, &qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697DCB8]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A52486A4();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  v7 = v2 + v1[11];
  sub_1A3D35A84(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));

  return swift_deallocObject();
}

uint64_t sub_1A455A350(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LemonadePeopleHomePeopleSection(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1A455A3D4@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v22 = a4;
  v9 = sub_1A5249234();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1E697DCB8];
  sub_1A45586C8(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v21 - v15;
  sub_1A455A724(v8, &v21 - v15, a1, a2, v13, sub_1A45586C8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(v22, v16, v17);
  }

  else
  {
    v19 = sub_1A524D254();
    v20 = sub_1A524A014();
    sub_1A5246DF4(v19, &dword_1A3C1C000, v20, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1A455A60C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A455A654(uint64_t a1)
{
  if (!qword_1EB13D4C0)
  {
    type metadata accessor for LemonadePeopleHomeSortMenu(255);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D4C0);
    }
  }
}

uint64_t sub_1A455A6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A455A724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

double sub_1A455BCD4()
{
  v0 = sub_1A3D3D8F8();
  v1 = *(v0 + 2);
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = (v0 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      v6 = [v2 px_deprecated_appPhotoLibrary];
      if (v6)
      {
        v7 = v6;
        v8 = [v6 px_localDefaults];

        sub_1A3D39474(v4);
        v9 = sub_1A524C634();

        [v8 setValue:0 forKey:v9];
      }

      --v1;
    }

    while (v1);
  }

  return result;
}

double sub_1A455BDD4()
{
  v0 = [objc_opt_self() px_deprecated_appPhotoLibrary];
  if (v0)
  {
    v2 = v0;
    v3 = PHPhotoLibrary.lemonadeBookmarksManager.getter();

    (*(*v3 + 384))();
  }

  return result;
}

id sub_1A455BE74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enablePhototypes];
  *a2 = result;
  return result;
}

id sub_1A455BEBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 oneUpSettings];
  *a2 = result;
  return result;
}

id sub_1A455BF0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 profileButtonShapeOutset];
  *a2 = v4;
  return result;
}

id sub_1A455BF54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 searchButtonShapeOutset];
  *a2 = v4;
  return result;
}

id sub_1A455BF9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 selectButtonShapeOutset];
  *a2 = v4;
  return result;
}

id sub_1A455BFE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarLegibilityEDRBoost];
  *a2 = v4;
  return result;
}

id sub_1A455C02C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableNavigationBarBlur];
  *a2 = result;
  return result;
}

id sub_1A455C074@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowProfileIcon];
  *a2 = result;
  return result;
}

id sub_1A455C0BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarAnimationDuration];
  *a2 = v4;
  return result;
}

id sub_1A455C104@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarTitleAppearDelay];
  *a2 = v4;
  return result;
}

id sub_1A455C14C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarTitleAppearDuration];
  *a2 = v4;
  return result;
}

id sub_1A455C194@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarTitleDisappearDuration];
  *a2 = v4;
  return result;
}

id sub_1A455C1DC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableTabs];
  *a2 = result;
  return result;
}

id sub_1A455C224@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 defaultPhoneFeedNavigationType];
  *a2 = result;
  return result;
}

id sub_1A455C26C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableNavigationBarBlurInCollections];
  *a2 = result;
  return result;
}

id sub_1A455C2B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarBlurLegibilityEDRBoost];
  *a2 = v4;
  return result;
}

id sub_1A455C2FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A455C344@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarBlurDistanceToBaseline];
  *a2 = v4;
  return result;
}

id sub_1A455C38C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarTintCurve];
  *a2 = result;
  return result;
}

id sub_1A455C3D4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationBarTintOpacity];
  *a2 = v4;
  return result;
}

id sub_1A455C41C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hideInlinePlayerOnFirstSegment];
  *a2 = result;
  return result;
}

id sub_1A455C464@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 opacityOfPlayerOnFirstSegment];
  *a2 = v4;
  return result;
}

id sub_1A455C4AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlayerFirstSegmentPlaceholderDuration];
  *a2 = v4;
  return result;
}

id sub_1A455C4F4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlayerFrameLatencyApproximation];
  *a2 = v4;
  return result;
}

id sub_1A455C53C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackOnHover];
  *a2 = result;
  return result;
}

id sub_1A455C584@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlaybackOnHoverPlaybackDelay];
  *a2 = v4;
  return result;
}

id sub_1A455C5CC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlayerPlaceholderKenBurnsScale];
  *a2 = v4;
  return result;
}

id sub_1A455C614@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlayerPlaceholderKenBurnsExtraDuration];
  *a2 = v4;
  return result;
}

id sub_1A455C65C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 alwaysFilterPlaceholder];
  *a2 = result;
  return result;
}

id sub_1A455C6A4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 iOSPlaceholderActionForMacOS];
  *a2 = result;
  return result;
}

id sub_1A455C6EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlaybackMaxConcurrentPlayers];
  *a2 = result;
  return result;
}

id sub_1A455C734@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlaybackMaxPreloadPlayers];
  *a2 = result;
  return result;
}

id sub_1A455C77C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlaybackMaxSupportedVisiblePlayers];
  *a2 = result;
  return result;
}

id sub_1A455C7C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlaybackVisibilityThreshold];
  *a2 = v4;
  return result;
}

id sub_1A455C80C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 inlinePlayerCoveredDurationForPause];
  *a2 = v4;
  return result;
}

id sub_1A455C854@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 preferNewPlayerForFeeds];
  *a2 = result;
  return result;
}

id sub_1A455C89C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackDebugHUD];
  *a2 = result;
  return result;
}

id sub_1A455C8E4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 inlinePlaybackSimulateMainPresenterDisappearanceOnDismissal];
  *a2 = result;
  return result;
}

id sub_1A455C92C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackMemories];
  *a2 = result;
  return result;
}

id sub_1A455C974@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackTripsShelf];
  *a2 = result;
  return result;
}

id sub_1A455C9BC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackTrips];
  *a2 = result;
  return result;
}

id sub_1A455CA04@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackEvents];
  *a2 = result;
  return result;
}

id sub_1A455CA4C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackSocialGroupShelf];
  *a2 = result;
  return result;
}

id sub_1A455CA94@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableInlinePlaybackSocialGroupFeed];
  *a2 = result;
  return result;
}

id sub_1A455CADC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableCuratedLibrary];
  *a2 = result;
  return result;
}

id sub_1A455CB24@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 resetAllPhotosOnDismiss];
  *a2 = result;
  return result;
}

id sub_1A455CB6C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableCubeMode];
  *a2 = result;
  return result;
}

id sub_1A455CBB4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableRadarButton];
  *a2 = result;
  return result;
}

id sub_1A455CBFC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableMonthLocationTitles];
  *a2 = result;
  return result;
}

id sub_1A455CC44@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableMonthHeroPromotion];
  *a2 = result;
  return result;
}

id sub_1A455CC8C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showSharedLibraryPill];
  *a2 = result;
  return result;
}

id sub_1A455CCD4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 sharedWithYouOnlyFilterIncludesUnsaved];
  *a2 = result;
  return result;
}

id sub_1A455CD1C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minimumCuratedLibraryVisibleFractionForExpansion];
  *a2 = v4;
  return result;
}

id sub_1A455CD64@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableEventsCellCollageStyle];
  *a2 = result;
  return result;
}

id sub_1A455CDAC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 eventsCellItemAspectRatio];
  *a2 = v4;
  return result;
}

id sub_1A455CDF4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 eventFilterType];
  *a2 = result;
  return result;
}

id sub_1A455CE3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 eventsPromotionScoreThreshold];
  *a2 = v4;
  return result;
}

id sub_1A455CE84@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 eventsExtendedCountThreshold];
  *a2 = result;
  return result;
}

id sub_1A455CECC@<X0>(id *a1@<X0>, _DWORD *a2@<X8>)
{
  result = [*a1 eventsSummaryCountThreshold];
  *a2 = result;
  return result;
}

id sub_1A455CF14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableEventsDebugOverlay];
  *a2 = result;
  return result;
}

id sub_1A455CF5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableSavedToday];
  *a2 = result;
  return result;
}

id sub_1A455CFA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 savedTodayToleranceInHours];
  *a2 = v4;
  return result;
}

id sub_1A455CFEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tripsSource];
  *a2 = result;
  return result;
}

id sub_1A455D034@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ignoreSharedLibraryFilterForFeaturedPhotos];
  *a2 = result;
  return result;
}

id sub_1A455D07C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryExpansionGestureSpringStiffness];
  *a2 = v4;
  return result;
}

id sub_1A455D0C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryExpansionToggleSpringStiffness];
  *a2 = v4;
  return result;
}

id sub_1A455D10C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryExpansionFastToggleSpringStiffness];
  *a2 = v4;
  return result;
}

id sub_1A455D154@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryChromeAutoAnimateSpringStiffness];
  *a2 = v4;
  return result;
}

id sub_1A455D19C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryExpansionMinScrollDistance];
  *a2 = v4;
  return result;
}

id sub_1A455D1E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryCollapseMinScrollDistance];
  *a2 = v4;
  return result;
}

id sub_1A455D22C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryBottomPadding];
  *a2 = v4;
  return result;
}

id sub_1A455D274@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryTransitionToolbarBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A455D2BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryTransitionShelfHeaderBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A455D304@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryTransitionChromeExpandPercentage];
  *a2 = v4;
  return result;
}

id sub_1A455D34C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 curatedLibraryTransitionChromeCollapsePercentage];
  *a2 = v4;
  return result;
}

void sub_1A455D394()
{
  v0 = [objc_opt_self() px_deprecated_appPhotoLibrary];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 px_localDefaults];

    v3 = sub_1A524C634();
    [v2 setDate:0 forKey:v3];
  }
}

id sub_1A455D45C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxNumberOfSharedAlbumActivityItemsToShow];
  *a2 = result;
  return result;
}

id sub_1A455D4A4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableCollectionsSortButton];
  *a2 = result;
  return result;
}

id sub_1A455D4EC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableUserSmartAlbums];
  *a2 = result;
  return result;
}

id sub_1A455D534@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableLiveBlurForAllAssets];
  *a2 = result;
  return result;
}

id sub_1A455D57C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 eventsAlgorithm];
  *a2 = result;
  return result;
}

uint64_t sub_1A455D5C8(uint64_t *a1)
{
  v1 = PXHomeEventsAlgorithmDescription(*a1);
  v2 = sub_1A524C674();

  return v2;
}

id sub_1A455D618@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableNewDetailsView];
  *a2 = result;
  return result;
}

id sub_1A455D660@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableSolariumDetailsView];
  *a2 = result;
  return result;
}

id sub_1A455D6A8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 detailsViewHeaderImplementation];
  *a2 = result;
  return result;
}

id sub_1A455D6F0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 solariumDetailsViewPreviewHeaderKind];
  *a2 = result;
  return result;
}

id sub_1A455D738@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 solariumDetailsViewPreviewHeaderAssetDisplayDuration];
  *a2 = v4;
  return result;
}

id sub_1A455D780@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 solariumDetailsViewPreviewHeaderCrossFadeDuration];
  *a2 = v4;
  return result;
}

id sub_1A455D7C8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enablePreviewSharing];
  *a2 = result;
  return result;
}

id sub_1A455D810@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enablePreviewCaching];
  *a2 = result;
  return result;
}

id sub_1A455D858@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enablePreviewKeyAsset];
  *a2 = result;
  return result;
}

id sub_1A455D8A0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 simulateDetailsViewLeaking];
  *a2 = result;
  return result;
}

id sub_1A455D8E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 simulatedDetailsViewLoadingDelay];
  *a2 = v4;
  return result;
}

id sub_1A455D930@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 simulatedPreviewPlayerDelay];
  *a2 = v4;
  return result;
}

id sub_1A455D978@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scrubberKind];
  *a2 = result;
  return result;
}

id sub_1A455D9C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableDetailsViewHorizontalPaging];
  *a2 = result;
  return result;
}

id sub_1A455DA08@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableDetailsViewHorizontalKeyboardScrolling];
  *a2 = result;
  return result;
}

id sub_1A455DA50@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 horizontalPagingTechnique];
  *a2 = result;
  return result;
}

id sub_1A455DA98@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableHorizontalPagingHint];
  *a2 = result;
  return result;
}

id sub_1A455DAE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 horizontalPagingHintMaximumScale];
  *a2 = v4;
  return result;
}

id sub_1A455DB28@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableAggregatedHighlightGridInEditorial];
  *a2 = result;
  return result;
}

id sub_1A455DB70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 aggregatedHighlightColumns];
  *a2 = result;
  return result;
}

id sub_1A455DBB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lowQualityAggregationPromotionScoreThreshold];
  *a2 = v4;
  return result;
}

id sub_1A455DC00@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 detailsViewHeaderAspectRatio];
  *a2 = v4;
  return result;
}

id sub_1A455DC48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableFocusMapLensOnAnchors];
  *a2 = result;
  return result;
}

id sub_1A455DC90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mapLensAnchorFocusKilometerRadius];
  *a2 = v4;
  return result;
}

id sub_1A455DCD8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableDetailsViewPrototype];
  *a2 = result;
  return result;
}

id sub_1A455DD20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderChromeHidingDelay];
  *a2 = v4;
  return result;
}

id sub_1A455DD68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderDebugOverlay];
  *a2 = result;
  return result;
}

id sub_1A455DDB0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderDebugBehavior];
  *a2 = result;
  return result;
}

id sub_1A455DDF8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderMaximumDelayFromPreview];
  *a2 = v4;
  return result;
}

id sub_1A455DE40@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderMaximumDelayFromMovie];
  *a2 = v4;
  return result;
}

id sub_1A455DE88@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dynamicHeaderDismissAreaBottomInset];
  *a2 = v4;
  return result;
}

id sub_1A455DED0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 detailsDismissArea];
  *a2 = result;
  return result;
}

id sub_1A455DF18@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableProtoBanner];
  *a2 = result;
  return result;
}

id sub_1A455DF60@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 movieCurationAffordance];
  *a2 = result;
  return result;
}

id sub_1A455DFA8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 alwaysShowCurationToggleButton];
  *a2 = result;
  return result;
}

id sub_1A455DFF0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 scrollThresholdForTopCenteredTitle];
  *a2 = v4;
  return result;
}

id sub_1A455E038@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 topTitleVerticalSpace];
  *a2 = v4;
  return result;
}

id sub_1A455E080@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 titleOverlayScaleAtTop];
  *a2 = v4;
  return result;
}

id sub_1A455E0C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bannerTopMargin];
  *a2 = v4;
  return result;
}

id sub_1A455E110@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 titleOverlayScaleDistance];
  *a2 = v4;
  return result;
}

id sub_1A455E158@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 titleOverlayTopDetentTolerance];
  *a2 = v4;
  return result;
}

id sub_1A455E1A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 titleOverlaySingleLineTopDetentTolerance];
  *a2 = v4;
  return result;
}

id sub_1A455E1E8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maximumBlurRadius];
  *a2 = v4;
  return result;
}

id sub_1A455E230@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mapTabInitialKilometerRadius];
  *a2 = v4;
  return result;
}

id sub_1A455E278@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableUtilityPrototypeCollections];
  *a2 = result;
  return result;
}

id sub_1A455E2C0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableRecentlyViewedCollection];
  *a2 = result;
  return result;
}

id sub_1A455E308@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableRecentlyEditedCollection];
  *a2 = result;
  return result;
}

id sub_1A455E350@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableRecentlySharedCollection];
  *a2 = result;
  return result;
}

id sub_1A455E398@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableDocumentsSection];
  *a2 = result;
  return result;
}

id sub_1A455E3E0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minimumNumberOfAssetsForPlaybackAsMemory];
  *a2 = result;
  return result;
}

id sub_1A455E428@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 yearsAndMonthsMode];
  *a2 = result;
  return result;
}

id sub_1A455E470@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 collectionPreviewTransition];
  *a2 = result;
  return result;
}

id sub_1A455E4B8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableKenBurnsInCollectionPreview];
  *a2 = result;
  return result;
}

id sub_1A455E500@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 collectionPreviewKenBurnsScaleDirection];
  *a2 = result;
  return result;
}

id sub_1A455E548@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxSearchResults];
  *a2 = result;
  return result;
}

id sub_1A455E590@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxRankedAssetSearchResults];
  *a2 = result;
  return result;
}

id sub_1A455E5D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxSearchSuggestions];
  *a2 = result;
  return result;
}

id sub_1A455E620@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableNextTokenSuggestions];
  *a2 = result;
  return result;
}

id sub_1A455E668@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxCuratedCollectionsPerType];
  *a2 = result;
  return result;
}

id sub_1A455E6B0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableSearchResultDiffAnimation];
  *a2 = result;
  return result;
}

id sub_1A455E6F8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableMetadataSearch];
  *a2 = result;
  return result;
}

id sub_1A455E740@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableEmbeddingSearch];
  *a2 = result;
  return result;
}

id sub_1A455E788@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableExactMatchResults];
  *a2 = result;
  return result;
}

id sub_1A455E7D0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableHybridMatchResults];
  *a2 = result;
  return result;
}

id sub_1A455E818@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableEmbeddingOnlyResultsInExactMatches];
  *a2 = result;
  return result;
}

id sub_1A455E860@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 overrideSuggestionPills];
  *a2 = result;
  return result;
}

id sub_1A455E8A8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableZKWForPad];
  *a2 = result;
  return result;
}

id sub_1A455E8F0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showSearchDebugBadges];
  *a2 = result;
  return result;
}

id sub_1A455E938@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 implicitSearchScopeForPickerSuggestionScopeSearch];
  *a2 = result;
  return result;
}

id sub_1A455E980@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 minNumberOfResultsForNextTokenGeneration];
  *a2 = result;
  return result;
}

id sub_1A455E9C8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 searchQueryTimeout];
  *a2 = v4;
  return result;
}

id sub_1A455EA10@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableFullPageScreenshots];
  *a2 = result;
  return result;
}

id sub_1A455EA58@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableFullPageScreenshotDebuggingOverlays];
  *a2 = result;
  return result;
}

id sub_1A455EAA0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 limitFullPageScreenshotScale];
  *a2 = result;
  return result;
}

id sub_1A455EAE8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 limitFullPageScreenshotSize];
  *a2 = result;
  return result;
}

id sub_1A455EB30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maximumFullPageScreenshotDimension];
  *a2 = v4;
  return result;
}

id sub_1A455EB78@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableStackCounting];
  *a2 = result;
  return result;
}

id sub_1A455EBC0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enablePhotosChallenge];
  *a2 = result;
  return result;
}

id sub_1A455EC08@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableShelfIPadLayout];
  *a2 = result;
  return result;
}

id sub_1A455EC50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableShelfDrawBorders];
  *a2 = result;
  return result;
}

id sub_1A455EC98@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableHeaderTitleChevron];
  *a2 = result;
  return result;
}

id sub_1A455ECE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 shelfSpacing];
  *a2 = v4;
  return result;
}

id sub_1A455ED28@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableSidebarHeaderSelection];
  *a2 = result;
  return result;
}

id sub_1A455ED70@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableDismissPersistence];
  *a2 = result;
  return result;
}

id sub_1A455EDB8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 onlyDismissedInProfile];
  *a2 = result;
  return result;
}

id sub_1A455EE00@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 includeSharedAlbumsActivityInProfileNotifications];
  *a2 = result;
  return result;
}

id sub_1A455EE48@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 hideNotifications];
  *a2 = result;
  return result;
}

id sub_1A455EE90@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxNumberOfMainViewUnreadSharedAlbumsActivityNotifications];
  *a2 = result;
  return result;
}

id sub_1A455EED8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 maxNumberOfAccountViewUnreadSharedAlbumsActivityNotifications];
  *a2 = result;
  return result;
}

id sub_1A455EF20@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 wallpaperLoadingTimeout];
  *a2 = v4;
  return result;
}

id sub_1A455EF68@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 wallpaperLoadingArtificialDelay];
  *a2 = v4;
  return result;
}

id sub_1A455EFB0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useFeatureAvailabilityReporter];
  *a2 = result;
  return result;
}

id sub_1A455EFF8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceShowProcessingUI];
  *a2 = result;
  return result;
}

id sub_1A455F040@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceHideProcessingUI];
  *a2 = result;
  return result;
}

id sub_1A455F088@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 forceRenderingStatus];
  *a2 = result;
  return result;
}

id sub_1A455F0D0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sectionedFeedTabBarItemSpacing];
  *a2 = v4;
  return result;
}

id sub_1A455F118@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 defaultFloatingToolbarBottomInset];
  *a2 = v4;
  return result;
}

id sub_1A455F160@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableShelves];
  *a2 = result;
  return result;
}

id sub_1A455F1A8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableShelvesLoader];
  *a2 = result;
  return result;
}

id sub_1A455F1F0@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableShelvesLoaderGradualDelivery];
  *a2 = result;
  return result;
}

id sub_1A455F238@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enabledShelvesLazyVStack];
  *a2 = result;
  return result;
}

id sub_1A455F280@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableResponsiveScrolling];
  *a2 = result;
  return result;
}

id sub_1A455F2C8@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 enableLoadingStatusHUD];
  *a2 = result;
  return result;
}

id sub_1A455F310@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 simulateEmptyShelves];
  *a2 = result;
  return result;
}

id sub_1A455F358@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 simulateFromMyMacAlbums];
  *a2 = result;
  return result;
}

id sub_1A455F3A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 samplePhototypeVisibility];
  *a2 = result;
  return result;
}

char *sub_1A455F420@<X0>(char **a1@<X8>)
{
  result = _sSo21PXHomeEventsAlgorithmV12PhotosUICoreE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

char *sub_1A455F5A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D670, type metadata accessor for PXLemonadeFeedNavigationType);
  *v3 = result;
  return result;
}

char *sub_1A455F5DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D658, type metadata accessor for PXValueAnimationCurve);
  *v3 = result;
  return result;
}

char *sub_1A455F618(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D640, type metadata accessor for PXLemonadeEventsFilterType);
  *v3 = result;
  return result;
}

char *sub_1A455F654(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D620, type metadata accessor for PXLemonadeTripsSource);
  *v3 = result;
  return result;
}

char *sub_1A455F690(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D4E0, type metadata accessor for PXHomeEventsAlgorithm);
  *v3 = result;
  return result;
}

char *sub_1A455F6CC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5C8, type metadata accessor for PXLemonadeMovieCurationAffordance);
  *v3 = result;
  return result;
}

char *sub_1A455F708(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5D0, type metadata accessor for PXLemonadeDetailsDismissArea);
  *v3 = result;
  return result;
}

char *sub_1A455F744(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5D8, type metadata accessor for PXLemonadeDynamicHeaderDebugBehavior);
  *v3 = result;
  return result;
}

char *sub_1A455F780(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5E0, type metadata accessor for PXLemonadeDynamicHeaderDebugOverlay);
  *v3 = result;
  return result;
}

char *sub_1A455F7BC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5E8, type metadata accessor for PXLemonadeHorizontalPagingTechnique);
  *v3 = result;
  return result;
}

char *sub_1A455F7F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5F0, type metadata accessor for PXLemonadeStoryScrubberKind);
  *v3 = result;
  return result;
}

char *sub_1A455F834(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D5F8, type metadata accessor for PXSolariumDetailsViewPreviewHeaderKind);
  *v3 = result;
  return result;
}

char *sub_1A455F870(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D600, type metadata accessor for PXDetailsViewHeaderImplementation);
  *v3 = result;
  return result;
}

char *sub_1A455F8AC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D540, type metadata accessor for PXLemonadeYearsAndMonthsMode);
  *v3 = result;
  return result;
}

char *sub_1A455F8E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455F980(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A455F908(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D528, type metadata accessor for PXLemonadePreviewTransitionKind);
  *v3 = result;
  return result;
}

char *sub_1A455F944(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A455FA98(a1, a2, a3, *v3, &qword_1EB13D4F8, type metadata accessor for PXLemonadePhototypeVisibility);
  *v3 = result;
  return result;
}

char *sub_1A455F980(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A456A47C(0, &qword_1EB13D520, type metadata accessor for PXStoryScaleDirection, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_1A455FA98(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1A456A47C(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void sub_1A455FE10()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 0;
  *&v3[0] = 0x403E000000000000;
  *&v2 = 0x3FF0000000000000;
  v1 = sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD000000000000014, 0x80000001A53DD260, KeyPath, &v4, v3, &v2, &type metadata for LemonadeSettingsUI, &off_1EE6E3BC8, v1);
}

void sub_1A45603B8()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 0;
  *&v3[0] = 0x3FF0000000000000;
  *&v2 = 0x3F847AE147AE147BLL;
  v1 = sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x6E6F697461727544, 0xE800000000000000, KeyPath, &v4, v3, &v2, &type metadata for LemonadeSettingsUI, &off_1EE6E3BC8, v1);
}

void sub_1A45616C4()
{
  KeyPath = swift_getKeyPath();
  *&v5 = 0;
  *&v4[0] = 10;
  *&v3 = 1;
  v1 = sub_1A3DA24EC();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD000000000000016, 0x80000001A53DD020, KeyPath, &v5, v4, &v3, &v2, v1);
}

void sub_1A4563120()
{
  swift_getKeyPath();
  sub_1A456A730(qword_1F1715CC0, sub_1A455F654);
  sub_1A456AB9C(0, &qword_1EB13D610, type metadata accessor for PXLemonadeTripsSource);
  swift_arrayDestroy();
  v0 = sub_1A456B458(&qword_1EB13D618, type metadata accessor for PXLemonadeTripsSource, &unk_1A534B028);
  *&v1 = &off_1EE6E3BC8;
  *(&v1 + 1) = &protocol witness table for Int;
  sub_1A3F3E83C(0x756F532061746144, 0xEB00000000656372, &v2, v1, v0);
}

void sub_1A4563420()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 0;
  *&v3[0] = 0x407F400000000000;
  *&v2 = 0x4024000000000000;
  v1 = sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD000000000000018, 0x80000001A53DCD30, KeyPath, &v4, v3, &v2, &type metadata for LemonadeSettingsUI, &off_1EE6E3BC8, v1);
}

void sub_1A4563DFC()
{
  KeyPath = swift_getKeyPath();
  *&v5 = 1;
  *&v4[0] = 50;
  *&v3 = 1;
  v1 = sub_1A3DA24EC();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD00000000000001DLL, 0x80000001A53DCC80, KeyPath, &v5, v4, &v3, &v2, v1);
}

void sub_1A4564198()
{
  KeyPath = swift_getKeyPath();
  v1 = _sSo21PXHomeEventsAlgorithmV12PhotosUICoreE8allCasesSayABGvgZ_0();
  v2 = sub_1A456B458(&qword_1EB13D608, type metadata accessor for PXHomeEventsAlgorithm, &unk_1A5347518);
  *&v3 = &off_1EE6E3BC8;
  *(&v3 + 1) = &protocol witness table for Int;
  static SettingsUIProvider.ChoiceRow<A, B>(_:_:choiceValues:titleFormatter:)(0xD000000000000010, 0x80000001A53DCC40, KeyPath, v1, sub_1A455D5C8, 0, &type metadata for LemonadeSettingsUI, MEMORY[0x1E69E6530], v3, v2);
}

void sub_1A4564320(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  swift_getKeyPath();
  static SettingsUIProvider.SwitchRow(_:_:)();
}

void sub_1A4566534()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 0;
  *&v3[0] = 0x4069000000000000;
  *&v2 = 0x3FF0000000000000;
  v1 = sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x6361705320706F54, 0xE900000000000065, KeyPath, &v4, v3, &v2, &type metadata for LemonadeSettingsUI, &off_1EE6E3BC8, v1);
}

void sub_1A4566A40()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 0;
  *&v2 = 0x4034000000000000;
  v3 = 0x3FF0000000000000;
  v1 = sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x696461522078614DLL, 0xEA00000000007375, KeyPath, &v4, &v2, &v3, &type metadata for LemonadeSettingsUI, &off_1EE6E3BC8, v1);
}

void sub_1A4566B90()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 0x4024000000000000;
  *&v2 = 0x407F400000000000;
  v3 = 0x4024000000000000;
  v1 = sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x696461522070614DLL, 0xEF294D4B28207375, KeyPath, &v4, &v2, &v3, &type metadata for LemonadeSettingsUI, &off_1EE6E3BC8, v1);
}

void sub_1A4567054()
{
  KeyPath = swift_getKeyPath();
  *&v5 = 1;
  *&v4[0] = 10;
  *&v3 = 1;
  v1 = sub_1A3DA24EC();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD000000000000016, 0x80000001A53DC780, KeyPath, &v5, v4, &v3, &v2, v1);
}

void sub_1A4567278()
{
  swift_getKeyPath();
  sub_1A456A730(qword_1F1716038, sub_1A455F8AC);
  sub_1A456AB9C(0, &qword_1EB13D530, type metadata accessor for PXLemonadeYearsAndMonthsMode);
  swift_arrayDestroy();
  v0 = sub_1A456B458(&qword_1EB13D538, type metadata accessor for PXLemonadeYearsAndMonthsMode, &unk_1A534B220);
  *&v1 = &off_1EE6E3BC8;
  *(&v1 + 1) = &protocol witness table for Int;
  sub_1A3F3E83C(0x202F207372616559, 0xEE007368746E6F4DLL, &v2, v1, v0);
}

void sub_1A456746C()
{
  swift_getKeyPath();
  sub_1A456A730(qword_1F17160A0, sub_1A455F908);
  sub_1A456AB9C(0, &qword_1EB13D500, type metadata accessor for PXLemonadePreviewTransitionKind);
  swift_arrayDestroy();
  v0 = sub_1A456B458(&qword_1EB13D508, type metadata accessor for PXLemonadePreviewTransitionKind, &unk_1A534B290);
  *&v1 = &off_1EE6E3BC8;
  *(&v1 + 1) = &protocol witness table for Int;
  sub_1A3F3E83C(0x697469736E617254, 0xEA00000000006E6FLL, &v2, v1, v0);
}

void sub_1A456784C()
{
  KeyPath = swift_getKeyPath();
  *&v5 = 0;
  *&v4[0] = 10000;
  *&v3 = 100;
  v1 = sub_1A3DA24EC();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x4C20746C75736552, 0xEC00000074696D69, KeyPath, &v5, v4, &v3, &v2, v1);
}

void sub_1A45689A4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  KeyPath = swift_getKeyPath();
  a4(&v8, a2, a3, KeyPath);

  sub_1A5246624();
}

void sub_1A45692EC()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 0;
  *&v3[0] = 0x403E000000000000;
  *&v2 = 0x3FB999999999999ALL;
  v1 = sub_1A3F185D4();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x20676E6964616F4CLL, 0xEF74756F656D6954, KeyPath, &v4, v3, &v2, &type metadata for LemonadeSettingsUI, &off_1EE6E3BC8, v1);
}

void sub_1A45697E8()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 0x3FF0000000000000;
  *&v2 = 0x4059000000000000;
  v3 = 0x3FF0000000000000;
  v1 = sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0x617053206D657449, 0xEC000000676E6963, KeyPath, &v4, &v2, &v3, &type metadata for LemonadeSettingsUI, &off_1EE6E3BC8, v1);
}

void sub_1A456993C()
{
  KeyPath = swift_getKeyPath();
  *&v4 = 0;
  *&v2 = 0x4049000000000000;
  v3 = 0x3FF0000000000000;
  v1 = sub_1A3F93828();
  static SettingsUIProvider.SliderRow<A>(_:_:min:max:step:)(0xD000000000000014, 0x80000001A53DC2F0, KeyPath, &v4, &v2, &v3, &type metadata for LemonadeSettingsUI, &off_1EE6E3BC8, v1);
}

char *_sSo21PXHomeEventsAlgorithmV12PhotosUICoreE8allCasesSayABGvgZ_0()
{
  v0 = PXHomeAllEventsAlgorithms();
  sub_1A3C52C70(0, &qword_1EB126610, 0x1E696AD98);
  v1 = sub_1A524CA34();

  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1A524E2B4();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v11 = MEMORY[0x1E69E7CC0];
  result = sub_1A455F690(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    v5 = v11;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1A59097F0](v4, v1);
      }

      else
      {
        v6 = *(v1 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1A455F690((v9 > 1), v10 + 1, 1);
      }

      ++v4;
      *(v11 + 16) = v10 + 1;
      *(v11 + 8 * v10 + 32) = v8;
    }

    while (v2 != v4);

    return v5;
  }

  __break(1u);
  return result;
}

unint64_t sub_1A456A3BC()
{
  result = qword_1EB13D4C8;
  if (!qword_1EB13D4C8)
  {
    sub_1A456A47C(255, &qword_1EB13D4D0, type metadata accessor for PXHomeEventsAlgorithm, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D4C8);
  }

  return result;
}

void sub_1A456A47C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A456A4EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A456B408(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A456A570(void *a1)
{
  v8 = MEMORY[0x1E69E7CC0];
  v2 = a1[2];
  sub_1A3F41E2C(v2, 0);
  sub_1A455F8E8(0, v2, 0);
  if (v2)
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = *(v8 + 16);
    if (v5)
    {
      v6 = (v8 + 40);
      do
      {
        v7 = *(v6 - 1) == v4 && *v6 == v3;
        if (v7 || (sub_1A524EAB4() & 1) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A456A730(void *a1, void (*a2)(BOOL, unint64_t, uint64_t))
{
  v10 = MEMORY[0x1E69E7CC0];
  v4 = a1[2];
  sub_1A3F41E2C(v4, 0);
  a2(0, v4, 0);
  if (v4)
  {
    v6 = a1[4];
    v5 = a1[5];
    v7 = *(v10 + 16);
    if (v7)
    {
      v8 = (v10 + 40);
      do
      {
        v9 = *(v8 - 1) == v6 && *v8 == v5;
        if (v9 || (sub_1A524EAB4() & 1) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v8 += 2;
        --v7;
      }

      while (v7);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }
}

void sub_1A456AB9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A456B160()
{
  result = qword_1EB13D638;
  if (!qword_1EB13D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D638);
  }

  return result;
}

void sub_1A456B408(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A456B458(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *StoryViewCurationBarButtonItem.init(storyViewModel:)(void *a1)
{
  v2 = v1;
  *(v2 + qword_1EB13D6E0) = 0;
  *(v2 + qword_1EB13D6E8) = a1;
  type metadata accessor for StoryViewCurationModel(0);
  v4 = a1;
  v8 = StoryViewCurationModel.__allocating_init(storyViewModel:)(v4);

  v5 = LemonadeCurationBarButtonItem.init(model:)(&v8);
  v6 = sub_1A456B700();
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x88))(v6, &off_1F17163C0);

  return v5;
}

uint64_t (*sub_1A456B638(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = sub_1A42DC6CC();
  a1[1] = v3;
  return sub_1A456B680;
}

void sub_1A456B698(uint64_t a1)
{
  *(a1 + qword_1EB13D6E0) = 0;
  sub_1A524E6E4();
  __break(1u);
}

double sub_1A456B744()
{

  return result;
}

double sub_1A456B7BC(uint64_t a1)
{

  return result;
}

void *StoryViewCurationButton.init(storyViewModel:)(void *a1)
{
  v2 = v1;
  *(v2 + qword_1EB13D6F0) = 0;
  *(v2 + qword_1EB13D6F8) = a1;
  type metadata accessor for StoryViewCurationModel(0);
  v4 = a1;
  v8 = StoryViewCurationModel.__allocating_init(storyViewModel:)(v4);

  v5 = LemonadeCurationButton.init(model:)(&v8);
  v6 = sub_1A456BA84();
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xA8))(v6, &off_1F17163C0);

  return v5;
}

uint64_t (*sub_1A456B940(uint64_t *a1))()
{
  a1[2] = v1;
  *a1 = sub_1A42DA320();
  a1[1] = v3;
  return sub_1A456B988;
}

uint64_t sub_1A456B9A0(void *a1, char a2, void (*a3)(__n128))
{
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return (a3)(*a1, v4);
  }

  v5 = swift_unknownObjectRetain();
  (a3)(v5, v4);

  return swift_unknownObjectRelease();
}

void sub_1A456BA1C(uint64_t a1)
{
  *(a1 + qword_1EB13D6F0) = 0;
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A456BA98(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    type metadata accessor for StoryViewCurationProxy();
    v5 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    *(v2 + v3) = v5;
  }

  return v5;
}

double sub_1A456BB4C()
{

  return result;
}

id sub_1A456BBA4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

double sub_1A456BC04(uint64_t a1)
{

  return result;
}

void sub_1A456BD6C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

uint64_t sub_1A456BDB4()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocClassInstance();
}

void sub_1A456BE10(__n128 a1, uint64_t a2, char a3)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = sub_1A456BEF0;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1A3D59380;
  v7[3] = &block_descriptor_212;
  v6 = _Block_copy(v7);

  [Strong performChanges_];
  _Block_release(v6);
}

void sub_1A456BEF0(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1A524C634();
  [a1 setMenuIsOpen:v3 withIdentifier:v4];
}

uint64_t sub_1A456BF88()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  swift_beginAccess();
  return v0[16];
}

uint64_t sub_1A456C008@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result & 1;
  return result;
}

void sub_1A456C0A0(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[16] == v2)
  {
    v1[16] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 416))(v4);
  }
}

uint64_t (*sub_1A456C19C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 408))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore19TimelineEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A456D100(&qword_1EB13D700, type metadata accessor for TimelineEngineModel, &unk_1A534B400);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030(v4);
  return sub_1A456C2EC;
}

uint64_t type metadata accessor for TimelineEngineModel(uint64_t a1)
{
  result = qword_1EB16BEA0;
  if (!qword_1EB16BEA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A456C394()
{
  swift_getKeyPath();
  (*(*v0 + 408))();

  swift_beginAccess();
  return v0[17];
}

uint64_t sub_1A456C414@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

void sub_1A456C4AC(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (v1[17] == v2)
  {
    v1[17] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 416))(v4);
  }
}

uint64_t (*sub_1A456C5A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 408))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore19TimelineEngineModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A456D100(&qword_1EB13D700, type metadata accessor for TimelineEngineModel, &unk_1A534B400);
  sub_1A52415F4();

  v4[7] = sub_1A456C344(v4);
  return sub_1A456C6F8;
}

void sub_1A456C7EC(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 40) = a1;
  *(v2 + 48) = a2 & 1;
}

void sub_1A456C878(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2 & 1;
}

uint64_t sub_1A456C8CC()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_1A3D607F0(v1, *(v0 + 80));
  return v1;
}

uint64_t sub_1A456C91C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return sub_1A3C784D4(v5, v6);
}

uint64_t sub_1A456C970()
{
  (*(*v0 + 176))(1);
  (*(*v0 + 224))(0);
  v1 = sub_1A5240EE4();
  (*(*v0 + 248))(v1);
  v2 = sub_1A5240EE4();
  (*(*v0 + 272))(v2);
  (*(*v0 + 296))(0, 1);
  v3 = *(*v0 + 320);

  return v3(0, 1);
}

uint64_t sub_1A456CAC4()
{
  (*(*v0 + 360))();
  v1 = *(*v0 + 376);

  return v1();
}

uint64_t sub_1A456CB3C()
{
  result = (*(*v0 + 168))();
  if (result)
  {
    (*(*v0 + 176))(0);
    (*(*v0 + 224))(0);
    sub_1A5240EE4();
    v2 = *(*v0 + 272);

    return v2();
  }

  return result;
}

uint64_t sub_1A456CC18(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v32 = a1;
  v33 = a2;
  v6 = sub_1A524BEE4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A524BF64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A524BFC4();
  v34 = *(v14 - 8);
  v35 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.n128_f64[0] = MEMORY[0x1EEE9AC00](v17);
  v20 = &v30 - v19;
  result = (*(*v3 + 288))(v18);
  if (v22)
  {
    sub_1A5240EE4();
    (*(*v3 + 296))(v23, 0);
    (*(*v3 + 320))(*&a3, 0);
    v24 = *v3;
    v30 = v11;
    v31 = v10;
    v25 = *(v24 + 344);
    v26 = v33;

    v25(v32, v26);
    sub_1A3C29A58(0, v27);
    v28 = sub_1A524D474();
    sub_1A524BFA4();
    sub_1A524C014();
    v34 = *(v34 + 8);
    (v34)(v16, v35);
    aBlock[4] = sub_1A456D0D4;
    aBlock[5] = v4;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3C2E0D0;
    aBlock[3] = &block_descriptor_213;
    v29 = _Block_copy(aBlock);

    sub_1A524BF14();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1A456D100(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    sub_1A3C38394(0);
    sub_1A456D100(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
    sub_1A524E224();
    MEMORY[0x1A5908790](v20, v13, v9, v29);
    _Block_release(v29);

    (*(v7 + 8))(v9, v6);
    (*(v30 + 8))(v13, v31);
    return (v34)(v20, v35);
  }

  return result;
}

uint64_t sub_1A456D100(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A456D148()
{
  v1 = v0;
  result = (*(*v0 + 216))();
  if ((result & 1) == 0)
  {
    result = (*(*v0 + 288))();
    if ((v3 & 1) == 0)
    {
      v4 = (*(*v0 + 336))(result);
      if (v4)
      {
        v6 = v5;
        v7 = v4;
        v4();
        sub_1A3C784D4(v7, v6);
      }

      (*(*v1 + 224))(1);
      v8 = *(*v1 + 176);

      return v8(1);
    }
  }

  return result;
}

uint64_t sub_1A456D28C()
{
  v1 = (*(*v0 + 168))();
  v2 = sub_1A5240EE4();
  v4 = *v0;
  if (v1)
  {
    v5 = v3 - (*(v4 + 240))(v2);
    v6.n128_f64[0] = v5 + (*(*v0 + 264))();
    v7 = (*(*v0 + 272))(v6);
    v8 = COERCE_DOUBLE((*(*v0 + 288))(v7));
    if ((v9 & 1) == 0)
    {
      (*(*v0 + 296))(v5 + v8, 0);
    }
  }

  else
  {
    (*(v4 + 248))(v2);
  }

  v10 = (*(*v0 + 184))(v13);
  *v11 = !*v11;
  return v10(v13, 0);
}

uint64_t sub_1A456D5B0()
{
  sub_1A3C784D4(*(v0 + 72), *(v0 + 80));
  v1 = OBJC_IVAR____TtC12PhotosUICore19TimelineEngineModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A456D654()
{
  v0 = swift_allocObject();
  sub_1A456D68C(v1);
  return v0;
}

uint64_t sub_1A456D68C(__n128 a1)
{
  *(v1 + 16) = 0;
  sub_1A5240EE4();
  *(v1 + 24) = v2;
  sub_1A5240EE4();
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  *(v1 + 56) = 0;
  *(v1 + 64) = 1;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  sub_1A5241604();
  return v1;
}

uint64_t sub_1A456D6E8(uint64_t a1)
{
  result = sub_1A5241614();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A456D7AC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A5249234();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3E31270(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  sub_1A4575674(v1 + *(v10 + 28), v9, sub_1A3E31270);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1A52486A4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    v13 = sub_1A524D254();
    v14 = sub_1A524A014();
    sub_1A5246DF4(v13, &dword_1A3C1C000, v14, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

void sub_1A456D9C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A456DA2C@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1A534B4C0;
  *(a2 + 16) = 0x4028000000000000;
  v3 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v4 = v3[7];
  *(a2 + v4) = swift_getKeyPath();
  sub_1A3E31270(0);
  swift_storeEnumTagMultiPayload();
  v5 = v3[8];
  *(a2 + v5) = swift_getKeyPath();
  sub_1A3FA5378(0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v3[9];
  sub_1A524B694();
  *v6 = v10;
  *(v6 + 8) = v11;
  v7 = (a2 + v3[10]);
  type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel(0);
  sub_1A4575088(&unk_1EB125E30, type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel, &unk_1A533DFE8);
  result = sub_1A5248494();
  *v7 = result;
  v7[1] = v9;
  return result;
}

void sub_1A456DB64(uint64_t a1@<X8>)
{
  v2 = v1;
  v45 = a1;
  v3 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v4 = v3 - 8;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v38 = v6;
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456E0A8(0);
  v39 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456E5F0(0);
  v12 = *(v11 - 8);
  v43 = v11;
  v44 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1A456EB44(v1, v10);
  v47 = (*((*MEMORY[0x1E69E7D40] & **(v1 + *(v4 + 48) + 8)) + 0x180))(v14);
  v36 = v7;
  v41 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView;
  sub_1A4575674(v1, v7, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v46 = *(v5 + 80);
  v15 = (v46 + 16) & ~v46;
  v16 = swift_allocObject();
  sub_1A457560C(v7, v16 + v15, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v17 = sub_1A456E688();
  v18 = v39;
  sub_1A524B144();

  sub_1A45752D4(v10, sub_1A456E0A8);
  v19 = *(v4 + 44);
  v40 = v1;
  v20 = (v1 + v19);
  v21 = *v20;
  v22 = *(v20 + 1);
  v51 = v21;
  v52 = v22;
  sub_1A457552C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v37 = v49;
  v23 = v36;
  sub_1A4575674(v2, v36, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v24 = swift_allocObject();
  v25 = v23;
  sub_1A457560C(v23, v24 + v15, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  sub_1A4570BF4(0);
  v47 = v18;
  v48 = MEMORY[0x1E69E6530];
  v49 = v17;
  v50 = MEMORY[0x1E69E6550];
  swift_getOpaqueTypeConformance2();
  sub_1A4570CA8(255);
  v27 = v26;
  v28 = sub_1A4575088(&qword_1EB13D810, sub_1A4570CA8, MEMORY[0x1E697C0C0]);
  v47 = v27;
  v48 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v45;
  v30 = v42;
  v31 = v43;
  sub_1A524AFF4();

  (*(v44 + 8))(v30, v31);
  sub_1A4575674(v40, v25, v41);
  v32 = swift_allocObject();
  sub_1A457560C(v25, v32 + v15, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  sub_1A456E4D8(0, &qword_1EB13D818, sub_1A4570DF4, MEMORY[0x1E69805D8]);
  v34 = (v29 + *(v33 + 36));
  *v34 = 0;
  v34[1] = 0;
  v34[2] = sub_1A4570D3C;
  v34[3] = v32;
}

void sub_1A456E0A8(uint64_t a1)
{
  if (!qword_1EB13D708)
  {
    sub_1A4575140(255, &qword_1EB13D710, sub_1A456E144, sub_1A456E338, MEMORY[0x1E697F960]);
    v1 = sub_1A524B514();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D708);
    }
  }
}

void sub_1A456E1B4(uint64_t a1)
{
  if (!qword_1EB13D728)
  {
    sub_1A4574E18(255, &qword_1EB13D730, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697D670]);
    sub_1A52489A4();
    sub_1A456E2B4();
    sub_1A4575088(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D728);
    }
  }
}

unint64_t sub_1A456E2B4()
{
  result = qword_1EB13D738;
  if (!qword_1EB13D738)
  {
    sub_1A4574E18(255, &qword_1EB13D730, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697D670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D738);
  }

  return result;
}

void sub_1A456E338(uint64_t a1)
{
  if (!qword_1EB13D748)
  {
    sub_1A4575140(255, &qword_1EB13D750, sub_1A456E3DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D748);
    }
  }
}

void sub_1A456E3DC(uint64_t a1)
{
  if (!qword_1EB13D758)
  {
    sub_1A456E470(255);
    sub_1A4575088(&qword_1EB13D798, sub_1A456E470, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D758);
    }
  }
}

void sub_1A456E4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A456E564(uint64_t a1)
{
  if (!qword_1EB13D788)
  {
    sub_1A4574E18(255, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D788);
    }
  }
}

void sub_1A456E5F0(uint64_t a1)
{
  if (!qword_1EB13D7B0)
  {
    sub_1A456E0A8(255);
    sub_1A456E688();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D7B0);
    }
  }
}

unint64_t sub_1A456E688()
{
  result = qword_1EB13D7B8;
  if (!qword_1EB13D7B8)
  {
    sub_1A456E0A8(255);
    sub_1A456E700();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7B8);
  }

  return result;
}

unint64_t sub_1A456E700()
{
  result = qword_1EB13D7C0;
  if (!qword_1EB13D7C0)
  {
    sub_1A4575140(255, &qword_1EB13D710, sub_1A456E144, sub_1A456E338, MEMORY[0x1E697F960]);
    sub_1A456E7C4();
    sub_1A456E9A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7C0);
  }

  return result;
}

unint64_t sub_1A456E7C4()
{
  result = qword_1EB13D7C8;
  if (!qword_1EB13D7C8)
  {
    sub_1A456E144(255);
    sub_1A456E874();
    sub_1A4575088(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7C8);
  }

  return result;
}

unint64_t sub_1A456E874()
{
  result = qword_1EB13D7D0;
  if (!qword_1EB13D7D0)
  {
    sub_1A456E18C(255);
    sub_1A4574E18(255, &qword_1EB13D730, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697D670]);
    sub_1A52489A4();
    sub_1A456E2B4();
    sub_1A4575088(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7D0);
  }

  return result;
}

unint64_t sub_1A456E9A0()
{
  result = qword_1EB13D7E0;
  if (!qword_1EB13D7E0)
  {
    sub_1A456E338(255);
    sub_1A456EA20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7E0);
  }

  return result;
}

unint64_t sub_1A456EA20()
{
  result = qword_1EB13D7E8;
  if (!qword_1EB13D7E8)
  {
    sub_1A4575140(255, &qword_1EB13D750, sub_1A456E3DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    sub_1A4575088(&qword_1EB13D7F0, sub_1A456E3DC, MEMORY[0x1E6981870]);
    sub_1A4575088(&qword_1EB12F910, sub_1A3FA9268, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D7E8);
  }

  return result;
}

uint64_t sub_1A456EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v79 = a2;
  sub_1A456E338(0);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4575140(0, &qword_1EB13DA48, sub_1A456E144, sub_1A456E338, MEMORY[0x1E697F948]);
  v77 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v78 = &v65 - v7;
  v73 = sub_1A52486A4();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1A52489A4();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v66 = *(v12 - 8);
  v13 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v12);
  sub_1A4574E18(0, &qword_1EB13D730, MEMORY[0x1E6981910], MEMORY[0x1E6981900], MEMORY[0x1E697D670]);
  v68 = v14;
  v67 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  sub_1A456E18C(0);
  v71 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v75 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456E144(0);
  v76 = v19;
  v20.n128_f64[0] = MEMORY[0x1EEE9AC00](v19);
  v74 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  v23 = *(a1 + *(v12 + 40) + 8);
  if ((*((*MEMORY[0x1E69E7D40] & *v23) + 0x140))(v20) == 5)
  {
    sub_1A4575674(v22, &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
    v24 = (*(v66 + 80) + 16) & ~*(v66 + 80);
    v25 = swift_allocObject();
    v26 = sub_1A457560C(&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v24, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
    MEMORY[0x1EEE9AC00](v26);
    *(&v65 - 2) = v22;
    sub_1A524B704();
    sub_1A5248994();
    sub_1A456E2B4();
    sub_1A4575088(&qword_1EB122F70, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    v27 = v68;
    v28 = v70;
    sub_1A524A934();
    (*(v69 + 8))(v11, v28);
    (*(v67 + 8))(v16, v27);
    sub_1A456D7AC(v9);
    sub_1A4394B64(v9, v12, &off_1EE6E41F0);
    v29 = *(v72 + 8);
    v30 = v73;
    v29(v9, v73);
    sub_1A456D7AC(v9);
    v31 = sub_1A4394B64(v9, v12, &off_1EE6E41F0);
    (v29)(v9, v30, v31);
    sub_1A524BC74();
    v32 = sub_1A52481F4();
    v33 = v75;
    v34 = &v75[*(v71 + 36)];
    v35 = v84;
    *v34 = v83;
    *(v34 + 1) = v35;
    *(v34 + 2) = v85;
    v81 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0x198))(v32);
    v82 = v36;
    sub_1A3D5F9DC();
    v37 = sub_1A524A464();
    v39 = v38;
    v41 = v40;
    sub_1A456E874();
    v42 = v74;
    sub_1A524AAB4();
    sub_1A3E04DF4(v37, v39, v41 & 1);

    sub_1A45752D4(v33, sub_1A456E18C);
    sub_1A4575230(v42, v78, sub_1A456E144);
    swift_storeEnumTagMultiPayload();
    sub_1A456E7C4();
    sub_1A456E9A0();
    sub_1A5249744();
    v43 = sub_1A456E144;
    v44 = v42;
  }

  else
  {
    *v5 = sub_1A5249574();
    *(v5 + 1) = 0;
    v5[16] = 0;
    sub_1A45751C4(0, &qword_1EB13DA50, sub_1A456E470, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A456FEC0(v22, &v5[*(v45 + 44)]);
    sub_1A4575140(0, &qword_1EB13D750, sub_1A456E3DC, sub_1A3FA9268, MEMORY[0x1E697E830]);
    v47 = &v5[*(v46 + 36)];
    sub_1A4110614(v23);
    v48 = sub_1A524BC74();
    v50 = v49;
    sub_1A3FA9268(0, v49);
    v52 = &v47[*(v51 + 36)];
    *v52 = v48;
    v52[1] = v50;
    v53 = (*((*MEMORY[0x1E69E7D40] & *v23) + 0xC0))();
    [v53 contentGuideInsets];

    EdgeInsets.init(_:)();
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v61 = v60;
    v62 = sub_1A524A064();
    v63 = &v5[*(v80 + 36)];
    *v63 = v62;
    *(v63 + 1) = v55;
    *(v63 + 2) = v57;
    *(v63 + 3) = v59;
    *(v63 + 4) = v61;
    v63[40] = 0;
    sub_1A4575230(v5, v78, sub_1A456E338);
    swift_storeEnumTagMultiPayload();
    sub_1A456E7C4();
    sub_1A456E9A0();
    sub_1A5249744();
    v43 = sub_1A456E338;
    v44 = v5;
  }

  return sub_1A45752D4(v44, v43);
}

uint64_t sub_1A456F544()
{
  v1 = sub_1A5248334();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  (*((*MEMORY[0x1E69E7D40] & **(v0 + *(v12 + 40) + 8)) + 0x1B0))();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1A45756DC(v7, sub_1A3EE53E0);
    v13 = (v0 + *(v12 + 36));
    v14 = *v13;
    v15 = *(v13 + 1);
    v17[16] = v14;
    v18 = v15;
    v17[15] = 1;
    sub_1A457552C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    return sub_1A524B6B4();
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1A3EE4C48(v4);
    sub_1A5248304();
    (*(v2 + 8))(v4, v1);
    return (*(v9 + 8))(v11, v8);
  }
}

void sub_1A456F834(uint64_t *a1@<X8>)
{
  sub_1A4570F44(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52486A4();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1A52407E4();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView.StackedShapeView(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v12 = *(v32 + 40);
  v39 = v1;
  v13 = *(v1 + v12 + 8);
  v14 = MEMORY[0x1E69E7D40];
  v15 = (*((*MEMORY[0x1E69E7D40] & *v13) + 0x188))();
  v16 = v15;
  if (v15 >> 62)
  {
    v17 = sub_1A524E2B4();
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v40 = a1;
  if (v17 < 1)
  {
    v18 = 0;
  }

  else if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x1A59097F0](0, v16);
    if (v17 != 1)
    {
      v17 = MEMORY[0x1A59097F0](1, v16);
LABEL_9:

      goto LABEL_12;
    }
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v18 = *(v16 + 32);

    if (v17 != 1)
    {
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        __break(1u);
        goto LABEL_41;
      }

      v17 = *(v16 + 40);

      goto LABEL_9;
    }
  }

  v17 = 0;
LABEL_12:
  if ((*((*v14 & *v13) + 0x140))(v19) != 5)
  {
    *v5 = sub_1A5249314();
    *(v5 + 1) = 0xC037553F7CED9168;
    v5[16] = 0;
    sub_1A45751C4(0, &qword_1EB13D8A0, sub_1A4570FD8, MEMORY[0x1E697E258], MEMORY[0x1E697E250]);
    sub_1A45718B0(v17, v39, v18, &v5[*(v22 + 44)]);
    sub_1A4575088(&unk_1EB13D8A8, sub_1A4570F44, MEMORY[0x1E69817F8]);
    v23 = sub_1A524B8E4();
LABEL_39:

    *v40 = v23;
    return;
  }

  (*((*v14 & *v13) + 0x1A0))(5);
  if (v18)
  {

    v13 = sub_1A5242704();

    if (!(v13 >> 62))
    {
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

LABEL_27:

      goto LABEL_28;
    }

LABEL_26:
    if (sub_1A524E2B4())
    {
LABEL_16:
      if ((v13 & 0xC000000000000001) == 0)
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_44;
        }

        v20 = *(v13 + 32);
        goto LABEL_19;
      }

LABEL_41:
      v20 = MEMORY[0x1A59097F0](0, v13);
LABEL_19:
      v21 = v20;

      if (!v17)
      {
        goto LABEL_37;
      }

      goto LABEL_29;
    }

    goto LABEL_27;
  }

LABEL_28:
  v21 = 0;
  if (!v17)
  {
LABEL_37:
    v26 = 0;
    goto LABEL_38;
  }

LABEL_29:

  v24 = sub_1A5242704();

  if (v24 >> 62)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_31;
    }

    goto LABEL_36;
  }

  if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:

    goto LABEL_37;
  }

LABEL_31:
  if ((v24 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1A59097F0](0, v24);
    goto LABEL_34;
  }

  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v25 = *(v24 + 32);
LABEL_34:
    v26 = v25;

LABEL_38:
    v27 = v34;
    sub_1A456D7AC(v34);
    v28 = sub_1A4394B64(v27, v32, &off_1EE6E41F0);
    v30 = v29;
    (*(v36 + 8))(v27, v37);
    (*(v33 + 32))(v11, v38, v35);
    *&v11[v9[5]] = v21;
    *&v11[v9[6]] = v26;
    v31 = &v11[v9[7]];
    *v31 = v28;
    *(v31 + 1) = v30;
    v41 = 0x4059000000000000;
    sub_1A3F93828();
    sub_1A52480C4();
    *&v11[v9[9]] = 0x4030000000000000;
    *&v11[v9[10]] = 0x3FEE666666666666;
    sub_1A4575088(&qword_1EB13D8B8, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView.StackedShapeView, &unk_1A534B598);
    v23 = sub_1A524B8E4();
    goto LABEL_39;
  }

LABEL_44:
  __break(1u);
}

uint64_t sub_1A456FEC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v4 = v3 - 8;
  v83 = *(v3 - 8);
  v82 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v81 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456D9C8(0, &qword_1EB12B0D0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v80 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v76 - v9;
  sub_1A4574E18(0, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v76 - v11;
  sub_1A456E564(0);
  v88 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v87 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456E53C(0);
  v86 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v76 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v76 - v19;
  v77 = sub_1A524B9A4();
  v20 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE16E8(0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3FA8D64(0);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v84 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v76 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v76 - v34;
  v36 = sub_1A524B994();
  v37 = *(a1 + *(v4 + 48) + 8);
  if ((*((*MEMORY[0x1E69E7D40] & *v37) + 0x108))(v36))
  {
    v38 = 0.8;
  }

  else
  {
    v38 = 0.0;
  }

  (*(v20 + 32))(v26, v22, v77);
  *&v26[*(v24 + 44)] = v38;
  v39 = sub_1A524A094();
  v40 = *(a1 + 8);
  sub_1A5247BC4();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  sub_1A457560C(v26, v32, sub_1A3EE16E8);
  v49 = &v32[*(v28 + 44)];
  *v49 = v39;
  *(v49 + 1) = v42;
  *(v49 + 2) = v44;
  *(v49 + 3) = v46;
  *(v49 + 4) = v48;
  v49[40] = 0;
  sub_1A457560C(v32, v35, sub_1A3FA8D64);
  sub_1A456F834(&v93);
  v92 = v93;
  v50 = v79;
  (*((*MEMORY[0x1E69E7D40] & *v37) + 0x1A0))();
  v51 = sub_1A52407E4();
  v52 = *(*(v51 - 8) + 56);
  v52(v50, 0, 1, v51);
  v53 = v80;
  v52(v80, 1, 1, v51);
  v54 = v81;
  sub_1A4575674(a1, v81, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v55 = (*(v83 + 80) + 16) & ~*(v83 + 80);
  v56 = swift_allocObject();
  sub_1A457560C(v54, v56 + v55, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v57 = MEMORY[0x1E6981910];
  v58 = MEMORY[0x1E6981900];
  v59 = sub_1A3C30368();
  v60 = v78;
  sub_1A42F9768(&v92, v50, 0, 0, 0, v53, 0, 0, v78, sub_1A45754CC, v56, v59, v57, v58);
  sub_1A457552C(0, &unk_1EB1202B0, MEMORY[0x1E6980D50], MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52FC9F0;
  LOBYTE(v53) = sub_1A524A094();
  *(inited + 32) = v53;
  v62 = sub_1A524A0B4();
  *(inited + 33) = v62;
  v63 = sub_1A524A0A4();
  sub_1A524A0A4();
  if (sub_1A524A0A4() != v53)
  {
    v63 = sub_1A524A0A4();
  }

  sub_1A524A0A4();
  if (sub_1A524A0A4() != v62)
  {
    v63 = sub_1A524A0A4();
  }

  v64 = v87;
  sub_1A457557C(v60, v87);
  *(v64 + *(v88 + 36)) = v63;
  v65 = *(a1 + 16);
  v66 = sub_1A524A064();
  v67 = v64;
  v68 = v85;
  sub_1A457560C(v67, v85, sub_1A456E564);
  v69 = v68 + *(v86 + 36);
  *v69 = v66;
  *(v69 + 8) = v65;
  *(v69 + 16) = v40;
  *(v69 + 24) = v65;
  *(v69 + 32) = v40;
  *(v69 + 40) = 0;
  v70 = v89;
  sub_1A457560C(v68, v89, sub_1A456E53C);
  v71 = v84;
  sub_1A4575674(v35, v84, sub_1A3FA8D64);
  v72 = v90;
  sub_1A4575674(v70, v90, sub_1A456E53C);
  v73 = v91;
  sub_1A4575674(v71, v91, sub_1A3FA8D64);
  sub_1A456E4A4(0);
  sub_1A4575674(v72, v73 + *(v74 + 48), sub_1A456E53C);
  sub_1A45756DC(v70, sub_1A456E53C);
  sub_1A45756DC(v35, sub_1A3FA8D64);
  sub_1A45756DC(v72, sub_1A456E53C);
  return sub_1A45756DC(v71, sub_1A3FA8D64);
}

uint64_t sub_1A45707FC(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  sub_1A457552C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  return sub_1A524B6B4();
}

uint64_t sub_1A45708F0(uint64_t a1)
{
  sub_1A4570CA8(0);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = a1;
  type metadata accessor for PhotosDetailsAlbumAttributionListView(0);
  sub_1A4575088(&qword_1EB13D808, type metadata accessor for PhotosDetailsAlbumAttributionListView, &unk_1A5334FA0);
  sub_1A5248474();
  sub_1A456D9C8(0, &unk_1EB13DA30, MEMORY[0x1E697C4F8], MEMORY[0x1E69E6F90]);
  sub_1A5249484();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52FC9F0;
  sub_1A5249474();
  sub_1A5249454();
  sub_1A44A1F10(v7);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1A4575088(&qword_1EB13D810, sub_1A4570CA8, MEMORY[0x1E697C0C0]);
  sub_1A524AD94();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1A4570B84()
{
  v1 = *(type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A45708F0(v2);
}

void sub_1A4570BF4(uint64_t a1)
{
  if (!qword_1EB13D7F8)
  {
    sub_1A4570CA8(255);
    sub_1A4575088(&qword_1EB13D810, sub_1A4570CA8, MEMORY[0x1E697C0C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D7F8);
    }
  }
}

void sub_1A4570CA8(uint64_t a1)
{
  if (!qword_1EB13D800)
  {
    type metadata accessor for PhotosDetailsAlbumAttributionListView(255);
    sub_1A4575088(&qword_1EB13D808, type metadata accessor for PhotosDetailsAlbumAttributionListView, &unk_1A5334FA0);
    v1 = sub_1A5248484();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D800);
    }
  }
}

uint64_t sub_1A4570D3C()
{
  type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  sub_1A457552C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  return sub_1A524B6B4();
}

void sub_1A4570DF4(uint64_t a1)
{
  if (!qword_1EB13D820)
  {
    sub_1A456E5F0(255);
    sub_1A4570BF4(255);
    sub_1A456E0A8(255);
    sub_1A456E688();
    swift_getOpaqueTypeConformance2();
    sub_1A4570CA8(255);
    sub_1A4575088(&qword_1EB13D810, sub_1A4570CA8, MEMORY[0x1E697C0C0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D820);
    }
  }
}

void sub_1A4570F44(uint64_t a1)
{
  if (!qword_1EB13D828)
  {
    sub_1A4570FD8(255);
    sub_1A4575088(&qword_1EB13D898, sub_1A4570FD8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D828);
    }
  }
}

void sub_1A4571040(uint64_t a1)
{
  if (!qword_1EB13D840)
  {
    sub_1A4575140(255, &qword_1EB13D848, sub_1A41EC744, sub_1A45710DC, MEMORY[0x1E697E830]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D840);
    }
  }
}

void sub_1A45710DC(uint64_t a1)
{
  if (!qword_1EB13D858)
  {
    sub_1A4571170(255);
    sub_1A4575088(&qword_1EB13D888, sub_1A4571170, MEMORY[0x1E697F368]);
    v1 = sub_1A5247FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D858);
    }
  }
}

void sub_1A4571170(uint64_t a1)
{
  if (!qword_1EB13D860)
  {
    sub_1A5248A14();
    sub_1A457125C(255);
    sub_1A4575088(&qword_1EB128080, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAE0]);
    sub_1A4575088(&qword_1EB13D880, sub_1A457125C, MEMORY[0x1E697DD00]);
    v1 = sub_1A5249324();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D860);
    }
  }
}

void sub_1A457125C(uint64_t a1)
{
  if (!qword_1EB13D868)
  {
    sub_1A5248A04();
    sub_1A4575088(&unk_1EB13D870, MEMORY[0x1E697EAB8], MEMORY[0x1E697EAB0]);
    v1 = sub_1A5247E84();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D868);
    }
  }
}

uint64_t sub_1A4571358@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = sub_1A52407E4();
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + *(v5 + 48) + 8);
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v12) + 0x1A8))(v9);
  LOBYTE(v13) = (*((*v13 & *v12) + 0x140))(v14) == 5;
  v15 = *(v12 + OBJC_IVAR____TtC12PhotosUICore44PhotosDetailsAlbumAttributionWidgetViewModel_modelFactory);
  sub_1A4575674(a1, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);
  v16 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v17 = swift_allocObject();
  sub_1A457560C(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView);

  return sub_1A43A0DDC(v11, v13, v15, sub_1A45750D0, v17, a2);
}

uint64_t sub_1A4571598(uint64_t a1, uint64_t a2)
{
  v3 = sub_1A5248334();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5240E64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v14 = *(a2 + *(v13 + 40) + 8);
  sub_1A52426D4();
  v15 = *(v24 + 16);

  (*((*MEMORY[0x1E69E7D40] & *v14) + 0x1B8))(v15);

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1A45756DC(v8, sub_1A3EE53E0);
  }

  (*(v10 + 32))(v12, v8, v9);
  v17 = (a2 + *(v13 + 36));
  v18 = *v17;
  v19 = *(v17 + 1);
  LOBYTE(v24) = v18;
  v25 = v19;
  v23 = 0;
  sub_1A457552C(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A3EE4C48(v5);
  sub_1A5248304();
  (*(v21 + 8))(v5, v22);
  return (*(v10 + 8))(v12, v9);
}

unint64_t sub_1A45718B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v119 = a2;
  v112 = a4;
  sub_1A439D384(0);
  v110 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v95 - v9;
  sub_1A4575140(0, &qword_1EB13DA08, sub_1A439D384, sub_1A3E3527C, MEMORY[0x1E697F948]);
  v109 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v95 - v11);
  sub_1A45712F0(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v95 - v17;
  v118 = sub_1A5243834();
  v116 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v20 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456D9C8(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v114 = &v95 - v22;
  v117 = sub_1A5243EC4();
  v115 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v102 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v95 - v25;
  sub_1A41EC744(0);
  v113 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v103 = &v95 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v95 - v30;
  sub_1A4575140(0, &qword_1EB13D848, sub_1A41EC744, sub_1A45710DC, MEMORY[0x1E697E830]);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v107 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v106 = &v95 - v37;
  sub_1A4571040(0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v111 = &v95 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  __asm { FMOV            V0.2D, #6.0 }

  v121 = _Q0;
  v120 = &v95 - v46;
  v108 = v20;
  if (!a1)
  {
    (*(v34 + 56))();
    if (a3)
    {
      goto LABEL_11;
    }

LABEL_9:
    v51 = sub_1A524B544();
    v52 = sub_1A524A0E4();
    KeyPath = swift_getKeyPath();
    v54 = sub_1A524B484();
    v55 = swift_getKeyPath();
    *v12 = v51;
    v12[1] = KeyPath;
    v12[2] = v52;
    v12[3] = v55;
    v12[4] = v54;
    swift_storeEnumTagMultiPayload();
    sub_1A3E3527C(0);
    sub_1A45741A4(&unk_1EB13DA10, sub_1A439D384, sub_1A41EC900);
    sub_1A44C8CB4();
    sub_1A5249744();
LABEL_18:
    v90 = v120;
    v91 = v111;
    sub_1A4575674(v120, v111, sub_1A4571040);
    sub_1A4575674(v18, v15, sub_1A45712F0);
    v92 = v112;
    sub_1A4575674(v91, v112, sub_1A4571040);
    sub_1A457100C(0);
    sub_1A4575674(v15, v92 + *(v93 + 48), sub_1A45712F0);
    sub_1A45756DC(v18, sub_1A45712F0);
    sub_1A45756DC(v90, sub_1A4571040);
    sub_1A45756DC(v15, sub_1A45712F0);
    return sub_1A45756DC(v91, sub_1A4571040);
  }

  v97 = v34;
  v98 = v12;

  v47 = sub_1A5242704();
  v48 = v47;
  if (v47 >> 62)
  {
    result = sub_1A524E2B4();
  }

  else
  {
    result = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = v15;
  v100 = v18;
  v99 = a3;
  if (result)
  {
    if ((v48 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1A59097F0](0, v48);
    }

    else
    {
      if (!*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_24;
      }

      v50 = *(v48 + 32);
    }
  }

  v131 = 0u;
  v132 = 0u;
  v133 = 1;
  v56 = sub_1A52429A4();
  (*(*(v56 - 8) + 56))(v114, 1, 1, v56);
  (*(v116 + 104))(v20, *MEMORY[0x1E69C2678], v118);
  sub_1A5243ED4();
  sub_1A524BC74();
  sub_1A52481F4();

  (*(v115 + 32))(v31, v26, v117);
  v57 = &v31[*(v113 + 36)];
  v58 = v123;
  *v57 = v122;
  *(v57 + 1) = v58;
  *(v57 + 2) = v124;
  v96 = v33;
  v59 = *(v33 + 36);
  v60 = v107;
  v61 = &v107[v59];
  v62 = sub_1A5248A14();
  v63 = *(v62 + 20);
  v64 = *MEMORY[0x1E697F468];
  v65 = sub_1A52494A4();
  v66 = *(*(v65 - 8) + 104);
  v66(&v61[v63], v64, v65);
  *v61 = v121;
  sub_1A4571170(0);
  v68 = v67;
  v69 = &v61[*(v67 + 52)];
  v66(&v69[*(v62 + 20)], v64, v65);
  *v69 = v121;
  *&v69[*(sub_1A5248A04() + 20)] = 0xBFF0000000000000;
  sub_1A457125C(0);
  *&v69[*(v70 + 36)] = xmmword_1A534B4D0;
  v61[*(v68 + 56)] = 0;
  sub_1A45710DC(0);
  *&v61[*(v71 + 36)] = 256;
  sub_1A457560C(v31, v60, sub_1A41EC744);
  v72 = v106;
  sub_1A4574FD8(v60, v106);
  v73 = v72;
  v74 = v120;
  sub_1A4574FD8(v73, v120);
  (*(v97 + 56))(v74, 0, 1, v96);
  v15 = v101;
  v18 = v100;
  v12 = v98;
  if (!v99)
  {
    goto LABEL_9;
  }

LABEL_11:

  result = sub_1A5242704();
  if (result >> 62)
  {
    v94 = result;
    v75 = sub_1A524E2B4();
    result = v94;
  }

  else
  {
    v75 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v76 = v108;
  if (!v75)
  {
    goto LABEL_17;
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
    goto LABEL_17;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v77 = *(result + 32);
LABEL_17:

    v128 = 0u;
    v129 = 0u;
    v130 = 1;
    v78 = sub_1A52429A4();
    (*(*(v78 - 8) + 56))(v114, 1, 1, v78);
    (*(v116 + 104))(v76, *MEMORY[0x1E69C2678], v118);
    v79 = v102;
    sub_1A5243ED4();
    sub_1A524BC74();
    sub_1A52481F4();
    v80 = v103;
    (*(v115 + 32))(v103, v79, v117);
    v81 = (v80 + *(v113 + 36));
    v82 = v126;
    *v81 = v125;
    v81[1] = v82;
    v81[2] = v127;
    v83 = v104;
    v84 = &v104[*(v110 + 36)];
    v85 = *(sub_1A5248A14() + 20);
    v86 = *MEMORY[0x1E697F468];
    v87 = sub_1A52494A4();
    (*(*(v87 - 8) + 104))(&v84[v85], v86, v87);
    *v84 = v121;
    sub_1A3E42C88(0);
    *&v84[*(v88 + 36)] = 256;
    sub_1A457560C(v80, v83, sub_1A41EC744);
    v89 = v105;
    sub_1A457560C(v83, v105, sub_1A439D384);
    sub_1A4575674(v89, v12, sub_1A439D384);
    swift_storeEnumTagMultiPayload();
    sub_1A3E3527C(0);
    sub_1A45741A4(&unk_1EB13DA10, sub_1A439D384, sub_1A41EC900);
    sub_1A44C8CB4();
    sub_1A5249744();

    sub_1A45756DC(v89, sub_1A439D384);
    goto LABEL_18;
  }

LABEL_24:
  __break(1u);
  return result;
}

double sub_1A4572708@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_1A524B414();
  sub_1A457552C(0, &qword_1EB126210, MEMORY[0x1E6981AA8], MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A52FF950;
  sub_1A524B404();
  sub_1A524B474();

  *(v4 + 32) = sub_1A524BB34();
  *(v4 + 40) = v5;
  sub_1A524B404();
  sub_1A524B474();

  *(v4 + 48) = sub_1A524BB34();
  *(v4 + 56) = v6;
  sub_1A524B404();
  sub_1A524B474();

  *(v4 + 64) = sub_1A524BB34();
  *(v4 + 72) = v7;
  sub_1A524BB44();
  sub_1A524BE74();
  sub_1A524BE84();
  sub_1A5248434();
  v8 = sub_1A524A064();
  *a2 = v3;
  *(a2 + 8) = v10;
  result = *&v11;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  *(a2 + 48) = v8;
  return result;
}

uint64_t sub_1A457289C()
{
  v1 = sub_1A5249764();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4573D18(0);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v8 = (v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v8 = sub_1A524BC64();
  v8[1] = v9;
  sub_1A45751C4(0, &qword_1EB13D9B8, sub_1A4573E1C, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
  sub_1A4572B70(v0, v8 + *(v10 + 44));
  v11 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView.StackedShapeView(0);
  sub_1A524BC74();
  sub_1A52481F4();
  sub_1A4573D60(0);
  v13 = (v8 + *(v12 + 36));
  v14 = v22[1];
  *v13 = v22[0];
  v13[1] = v14;
  v13[2] = v22[2];
  v15 = *(v0 + *(v11 + 36));
  v16 = v8 + *(v6 + 36);
  v17 = *(sub_1A5248A14() + 20);
  v18 = *MEMORY[0x1E697F468];
  v19 = sub_1A52494A4();
  (*(*(v19 - 8) + 104))(&v16[v17], v18, v19);
  *v16 = v15;
  *(v16 + 1) = v15;
  sub_1A3EC447C(0);
  v16[*(v20 + 36)] = 0;
  sub_1A5248B84();
  sub_1A4574660();
  sub_1A4575088(&qword_1EB122360, MEMORY[0x1E697C658], MEMORY[0x1E697C650]);
  sub_1A524A974();
  (*(v2 + 8))(v4, v1);
  return sub_1A45752D4(v8, sub_1A4573D18);
}

uint64_t sub_1A4572B70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v3 = sub_1A5243EC4();
  v113 = *(v3 - 8);
  v114 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v110 = v104 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4575140(0, &qword_1EB13D948, sub_1A4574398, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v111 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v116 = v104 - v6;
  sub_1A45742F4(0);
  v115 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v118 = v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45742AC(0);
  v117 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v122 = v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v120 = v104 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v121 = v104 - v14;
  v15 = sub_1A5243834();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v124 = v104 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A456D9C8(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v123 = v104 - v19;
  sub_1A4573F34(0);
  v21 = v20;
  v22 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v104 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4573F00(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v119 = v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v125 = v104 - v28;
  v29 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView.StackedShapeView(0);
  v30 = v29;
  v31 = a1;
  v32 = *(a1 + *(v29 + 24));
  if (v32)
  {
    v33 = v29;
    v34 = (v31 + *(v29 + 28));
    v108 = *v34;
    v104[0] = v24;
    v104[2] = v34[1];
    v160 = 0u;
    v161 = 0u;
    v106 = v22;
    v162 = 1;
    v35 = sub_1A52429A4();
    (*(*(v35 - 8) + 56))(v123, 1, 1, v35);
    v36 = *MEMORY[0x1E69C2678];
    v37 = *(v16 + 104);
    v105 = v21;
    v30 = v33;
    v37(v124, v36, v15);
    swift_unknownObjectRetain_n();
    v38 = v104[0];
    sub_1A5243ED4();
    v39 = *(v31 + *(v33 + 36));
    sub_1A4574000(0);
    v41 = *(v40 + 36);
    v107 = v31;
    v42 = (v38 + v41);
    v43 = sub_1A5248A14();
    v44 = *(v43 + 20);
    v45 = *MEMORY[0x1E697F468];
    v46 = sub_1A52494A4();
    v47 = *(*(v46 - 8) + 104);
    v104[1] = v32;
    v47(&v42[v44], v45, v46);
    *v42 = v39;
    *(v42 + 1) = v39;
    sub_1A3E42C88(0);
    v49 = v48;
    *&v42[*(v48 + 36)] = 256;
    sub_1A4575140(0, &unk_1EB13D900, sub_1A4574000, sub_1A4574048, MEMORY[0x1E697E830]);
    v51 = (v38 + *(v50 + 36));
    v52 = v51 + *(v43 + 20);
    v109 = v45;
    v47(v52, v45, v46);
    *v51 = v39;
    v51[1] = v39;
    *(v51 + *(v49 + 36)) = 256;
    v53 = sub_1A524BC74();
    v55 = v54;
    sub_1A4574048(0);
    v57 = (v51 + *(v56 + 36));
    v58 = v107;
    *v57 = v53;
    v57[1] = v55;
    v31 = v58;
    v59 = *(v58 + *(v30 + 40));
    sub_1A524BE74();
    v61 = v60;
    v63 = v62;
    sub_1A4573F5C(0);
    v65 = (v38 + *(v64 + 36));
    *v65 = v59;
    v65[1] = v59;
    v65[2] = v61;
    v65[3] = v63;
    sub_1A524BC54();
    sub_1A52481F4();
    swift_unknownObjectRelease();
    v66 = v105;
    v67 = (v38 + *(v105 + 36));
    v68 = v152;
    *v67 = v151;
    v67[1] = v68;
    v67[2] = v153;
    v69 = v125;
    sub_1A457560C(v38, v125, sub_1A4573F34);
    (*(v106 + 56))(v69, 0, 1, v66);
  }

  else
  {
    (*(v22 + 56))(v125, 1, 1, v21);
    v109 = *MEMORY[0x1E697F468];
  }

  v70 = v31;
  v157 = 0u;
  v158 = 0u;
  v159 = 1;
  v71 = sub_1A52429A4();
  (*(*(v71 - 8) + 56))(v123, 1, 1, v71);
  swift_unknownObjectRetain();
  sub_1A5243824();
  v72 = v110;
  sub_1A5243ED4();
  v73 = v70;
  sub_1A4074924(0);
  sub_1A52480D4();
  sub_1A4575088(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
  v74 = v116;
  v75 = v114;
  sub_1A524A644();
  (*(v113 + 8))(v72, v75);
  v76 = *(v70 + *(v30 + 36));
  v77 = (v74 + *(v111 + 36));
  v78 = *(sub_1A5248A14() + 20);
  v79 = sub_1A52494A4();
  (*(*(v79 - 8) + 104))(&v77[v78], v109, v79);
  *v77 = v76;
  *(v77 + 1) = v76;
  sub_1A3E42C88(0);
  *&v77[*(v80 + 36)] = 256;
  sub_1A524BC74();
  sub_1A52481F4();
  v81 = v118;
  sub_1A3D092F8(v74, v118);
  v82 = (v81 + *(v115 + 36));
  v83 = v155;
  *v82 = v154;
  v82[1] = v83;
  v82[2] = v156;
  v84 = sub_1A5249574();
  v128 = 1;
  sub_1A4573910(v73, &v146);
  v137 = *&v147[112];
  v138 = *&v147[128];
  v139 = *&v147[144];
  v133 = *&v147[48];
  v134 = *&v147[64];
  v135 = *&v147[80];
  v136 = *&v147[96];
  v129 = v146;
  v130 = *v147;
  v131 = *&v147[16];
  v132 = *&v147[32];
  v141[8] = *&v147[112];
  v141[9] = *&v147[128];
  v141[10] = *&v147[144];
  v141[4] = *&v147[48];
  v141[5] = *&v147[64];
  v141[6] = *&v147[80];
  v141[7] = *&v147[96];
  v141[0] = v146;
  v141[1] = *v147;
  v140 = v147[160];
  v142 = v147[160];
  v141[2] = *&v147[16];
  v141[3] = *&v147[32];
  sub_1A4575674(&v129, &v143, sub_1A4574574);
  sub_1A45756DC(v141, sub_1A4574574);
  *&v127[135] = v137;
  *&v127[151] = v138;
  *&v127[167] = v139;
  *&v127[71] = v133;
  *&v127[87] = v134;
  *&v127[103] = v135;
  *&v127[119] = v136;
  *&v127[7] = v129;
  *&v127[23] = v130;
  *&v127[39] = v131;
  v127[183] = v140;
  *&v127[55] = v132;
  LOBYTE(v73) = v128;
  v85 = sub_1A524BC74();
  v87 = v86;
  *(&v144[8] + 1) = *&v127[128];
  *(&v144[9] + 1) = *&v127[144];
  *(&v144[10] + 1) = *&v127[160];
  *(&v144[4] + 1) = *&v127[64];
  *(&v144[5] + 1) = *&v127[80];
  *(&v144[6] + 1) = *&v127[96];
  *(&v144[7] + 1) = *&v127[112];
  *(v144 + 1) = *v127;
  *(&v144[1] + 1) = *&v127[16];
  *(&v144[2] + 1) = *&v127[32];
  v143 = v84;
  LOBYTE(v144[0]) = v73;
  *(&v144[11] + 1) = *&v127[176];
  *(&v144[3] + 1) = *&v127[48];
  *&v145 = v85;
  *(&v145 + 1) = v86;
  v88 = v120;
  sub_1A4574F70(v81, v120, sub_1A45742F4);
  v89 = (v88 + *(v117 + 36));
  v90 = v144[10];
  v89[10] = v144[9];
  v89[11] = v90;
  v91 = v145;
  v89[12] = v144[11];
  v89[13] = v91;
  v92 = v144[6];
  v89[6] = v144[5];
  v89[7] = v92;
  v93 = v144[8];
  v89[8] = v144[7];
  v89[9] = v93;
  v94 = v144[2];
  v89[2] = v144[1];
  v89[3] = v94;
  v95 = v144[4];
  v89[4] = v144[3];
  v89[5] = v95;
  v96 = v144[0];
  *v89 = v143;
  v89[1] = v96;
  *&v147[129] = *&v127[128];
  *&v147[145] = *&v127[144];
  *&v147[161] = *&v127[160];
  *&v147[65] = *&v127[64];
  *&v147[81] = *&v127[80];
  *&v147[97] = *&v127[96];
  *&v147[113] = *&v127[112];
  *&v147[1] = *v127;
  *&v147[17] = *&v127[16];
  *&v147[33] = *&v127[32];
  v146 = v84;
  v147[0] = v73;
  v148 = *&v127[176];
  *&v147[49] = *&v127[48];
  v149 = v85;
  v150 = v87;
  sub_1A4575674(&v143, &v126, sub_1A457444C);
  sub_1A45756DC(&v146, sub_1A457444C);
  v97 = v121;
  sub_1A4574F70(v88, v121, sub_1A45742AC);
  v98 = v125;
  v99 = v119;
  sub_1A4575674(v125, v119, sub_1A4573F00);
  v100 = v122;
  sub_1A4575230(v97, v122, sub_1A45742AC);
  v101 = v112;
  sub_1A4575674(v99, v112, sub_1A4573F00);
  sub_1A4573E50(0);
  sub_1A4575230(v100, v101 + *(v102 + 48), sub_1A45742AC);
  sub_1A45752D4(v97, sub_1A45742AC);
  sub_1A45756DC(v98, sub_1A4573F00);
  sub_1A45752D4(v100, sub_1A45742AC);
  return sub_1A45756DC(v99, sub_1A4573F00);
}

uint64_t sub_1A4573910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A52407E4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(&v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v8 = sub_1A524A454();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  KeyPath = swift_getKeyPath();
  v41 = swift_getKeyPath();
  LOBYTE(a1) = v12 & 1;
  LOBYTE(v51) = v12 & 1;
  v42[0] = 0;
  v16 = sub_1A524A084();
  sub_1A5247BC4();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  LOBYTE(v62[0]) = 0;
  v40 = sub_1A524A054();
  sub_1A5247BC4();
  v44 = 1;
  *&v51 = v8;
  *(&v51 + 1) = v10;
  LOBYTE(v52) = a1;
  *(&v52 + 1) = *v46;
  DWORD1(v52) = *&v46[3];
  *(&v52 + 1) = v14;
  *&v53 = KeyPath;
  BYTE8(v53) = 1;
  HIDWORD(v53) = *&v45[3];
  v25 = *v45;
  *(&v53 + 9) = *v45;
  v26 = v41;
  *&v54 = v41;
  *(&v54 + 1) = 2;
  LOBYTE(v55) = 0;
  DWORD1(v55) = *(v48 + 3);
  *(&v55 + 1) = v48[0];
  v27 = v16;
  BYTE8(v55) = v16;
  HIDWORD(v55) = *&v47[3];
  *(&v55 + 9) = *v47;
  *&v56 = v18;
  *(&v56 + 1) = v20;
  *&v57 = v22;
  *(&v57 + 1) = v24;
  LOBYTE(v58) = 0;
  DWORD1(v58) = *&v50[3];
  *(&v58 + 1) = *v50;
  v28 = v40;
  BYTE8(v58) = v40;
  HIDWORD(v58) = *&v49[3];
  *(&v58 + 9) = *v49;
  *&v59 = v29;
  *(&v59 + 1) = v30;
  *&v60 = v31;
  *(&v60 + 1) = v32;
  v61 = 0;
  v43[167] = 0;
  *&v43[151] = v60;
  *&v43[135] = v59;
  *&v43[119] = v58;
  *&v43[39] = v53;
  *&v43[23] = v52;
  *&v43[7] = v51;
  *&v43[103] = v57;
  *&v43[87] = v56;
  *&v43[71] = v55;
  *&v43[55] = v54;
  *a2 = 0;
  *(a2 + 8) = 1;
  v33 = *&v43[96];
  *(a2 + 121) = *&v43[112];
  v34 = *&v43[144];
  *(a2 + 137) = *&v43[128];
  *(a2 + 153) = v34;
  *(a2 + 169) = *&v43[160];
  v35 = *&v43[32];
  *(a2 + 57) = *&v43[48];
  v36 = *&v43[80];
  *(a2 + 73) = *&v43[64];
  *(a2 + 89) = v36;
  *(a2 + 105) = v33;
  v37 = *&v43[16];
  *(a2 + 9) = *v43;
  *(a2 + 25) = v37;
  *(a2 + 41) = v35;
  v62[0] = v8;
  v62[1] = v10;
  v63 = a1;
  *v64 = *v46;
  *&v64[3] = *&v46[3];
  v65 = v14;
  v66 = KeyPath;
  v67 = 1;
  *v68 = v25;
  *&v68[3] = *&v45[3];
  v69 = v26;
  v70 = 2;
  v71 = 0;
  *&v72[3] = *(v48 + 3);
  *v72 = v48[0];
  v73 = v27;
  *&v74[3] = *&v47[3];
  *v74 = *v47;
  v75 = v18;
  v76 = v20;
  v77 = v22;
  v78 = v24;
  v79 = 0;
  *v80 = *v50;
  *&v80[3] = *&v50[3];
  v81 = v28;
  *&v82[3] = *&v49[3];
  *v82 = *v49;
  v83 = v29;
  v84 = v30;
  v85 = v31;
  v86 = v32;
  v87 = 0;
  sub_1A4575674(&v51, v42, sub_1A4574610);
  return sub_1A45756DC(v62, sub_1A4574610);
}

void sub_1A4573D88(uint64_t a1)
{
  if (!qword_1EB13D8D0)
  {
    sub_1A4573E1C(255);
    sub_1A4575088(&unk_1EB13D9A8, sub_1A4573E1C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D8D0);
    }
  }
}

void sub_1A4573E84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A4573F5C(uint64_t a1)
{
  if (!qword_1EB13D8F8)
  {
    sub_1A4575140(255, &unk_1EB13D900, sub_1A4574000, sub_1A4574048, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D8F8);
    }
  }
}

void sub_1A4574090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4574110(uint64_t a1)
{
  if (!qword_1EB13D918)
  {
    sub_1A3E42C88(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D918);
    }
  }
}

uint64_t sub_1A45741A4(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A4575088(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A4574258()
{
  result = qword_1EB13D928;
  if (!qword_1EB13D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D928);
  }

  return result;
}

void sub_1A45742F4(uint64_t a1)
{
  if (!qword_1EB13D940)
  {
    sub_1A4575140(255, &qword_1EB13D948, sub_1A4574398, sub_1A3E42C88, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D940);
    }
  }
}

void sub_1A4574398(uint64_t a1)
{
  if (!qword_1EB13D950)
  {
    sub_1A5243EC4();
    sub_1A4575088(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13D950);
    }
  }
}

void sub_1A457444C(uint64_t a1)
{
  if (!qword_1EB13D960)
  {
    sub_1A45744E0(255);
    sub_1A4575088(&qword_1EB13D9A0, sub_1A45744E0, MEMORY[0x1E6981870]);
    v1 = sub_1A5248AE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D960);
    }
  }
}

void sub_1A45744E0(uint64_t a1)
{
  if (!qword_1EB13D968)
  {
    sub_1A4574574(255);
    sub_1A4575088(&qword_1EB13D998, sub_1A4574574, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D968);
    }
  }
}

void sub_1A45745A8(uint64_t a1)
{
  if (!qword_1EB13D978)
  {
    sub_1A4574610(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB13D978);
    }
  }
}

unint64_t sub_1A4574660()
{
  result = qword_1EB13D9C0;
  if (!qword_1EB13D9C0)
  {
    sub_1A4573D18(255);
    sub_1A4574710();
    sub_1A4575088(&qword_1EB122308, sub_1A3EC447C, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D9C0);
  }

  return result;
}

unint64_t sub_1A4574710()
{
  result = qword_1EB13D9C8;
  if (!qword_1EB13D9C8)
  {
    sub_1A4573D60(255);
    sub_1A4575088(&qword_1EB13D9D0, sub_1A4573D88, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D9C8);
  }

  return result;
}

uint64_t sub_1A45747F8(uint64_t a1)
{
  result = sub_1A4575088(&qword_1EB13B368, type metadata accessor for PhotosDetailsAlbumAttributionWidgetView, &unk_1A534B614);
  *(a1 + 8) = result;
  return result;
}

void sub_1A4574894(uint64_t a1)
{
  sub_1A456D9C8(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1A456D9C8(319, &unk_1EB124720, MEMORY[0x1E697E178], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      sub_1A457552C(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        sub_1A45749E4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A45749E4(uint64_t a1)
{
  if (!qword_1EB124390)
  {
    type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel(255);
    sub_1A4575088(&unk_1EB125E30, type metadata accessor for PhotosDetailsAlbumAttributionWidgetViewModel, &unk_1A533DFE8);
    v1 = sub_1A52484C4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB124390);
    }
  }
}

void sub_1A4574AB0(uint64_t a1)
{
  sub_1A52407E4();
  if (v1 <= 0x3F)
  {
    sub_1A456D9C8(319, &qword_1EB126BC0, sub_1A3D435C4, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CGSize(319);
      if (v3 <= 0x3F)
      {
        sub_1A4074924(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1A4574BA4()
{
  result = qword_1EB13D9D8;
  if (!qword_1EB13D9D8)
  {
    sub_1A456E4D8(255, &qword_1EB13D818, sub_1A4570DF4, MEMORY[0x1E69805D8]);
    sub_1A456E5F0(255);
    sub_1A4570BF4(255);
    sub_1A456E0A8(255);
    sub_1A456E688();
    swift_getOpaqueTypeConformance2();
    sub_1A4570CA8(255);
    sub_1A4575088(&qword_1EB13D810, sub_1A4570CA8, MEMORY[0x1E697C0C0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13D9D8);
  }

  return result;
}

void sub_1A4574D8C(uint64_t a1)
{
  if (!qword_1EB13D9F0)
  {
    sub_1A4574E18(255, &unk_1EB1221F8, MEMORY[0x1E697E3F0], MEMORY[0x1E697E3E0], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13D9F0);
    }
  }
}

void sub_1A4574E18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A4574E6C()
{
  result = qword_1EB13DA00;
  if (!qword_1EB13DA00)
  {
    sub_1A4574D8C(255);
    sub_1A4574EEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DA00);
  }

  return result;
}

unint64_t sub_1A4574EEC()
{
  result = qword_1EB122208;
  if (!qword_1EB122208)
  {
    sub_1A4574E18(255, &unk_1EB1221F8, MEMORY[0x1E697E3F0], MEMORY[0x1E697E3E0], MEMORY[0x1E6980460]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122208);
  }

  return result;
}

uint64_t sub_1A4574F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4574FD8(uint64_t a1, uint64_t a2)
{
  sub_1A4575140(0, &qword_1EB13D848, sub_1A41EC744, sub_1A45710DC, MEMORY[0x1E697E830]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A4575088(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A45750D0(uint64_t a1)
{
  v3 = *(type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1A4571598(a1, v4);
}

void sub_1A4575140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A45751C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A4575230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45752D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_61()
{
  v1 = type metadata accessor for PhotosDetailsAlbumAttributionWidgetView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));
  v3 = v1[7];
  sub_1A3E31270(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A52486A4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[8];
  sub_1A3FA5378(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248334();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_1A457552C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A457557C(uint64_t a1, uint64_t a2)
{
  sub_1A4574E18(0, &qword_1EB13D790, MEMORY[0x1E6981910], MEMORY[0x1E6981900], type metadata accessor for PhotosDetailsDiscoverableView);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A457560C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A4575674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A45756DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for LemonadeAccountView(uint64_t a1)
{
  result = qword_1EB189880;
  if (!qword_1EB189880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A457578C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v50 = a1;
  v52 = a3;
  v53 = sub_1A52488B4();
  v5 = *(v53 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v47 = v6;
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LemonadeAccountView(0);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A45789E0(0);
  v41 = v11;
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4578898(0, v13);
  v48 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v39 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for LemonadeAccountView;
  sub_1A457A6B8(a2, v10, type metadata accessor for LemonadeAccountView);
  v49 = *(v5 + 16);
  v40 = v7;
  v18 = a1;
  v19 = v53;
  v49(v7, v18, v53);
  v20 = *(v46 + 80);
  v21 = *(v5 + 80);
  v22 = v9 + v21 + ((v20 + 16) & ~v20);
  v23 = (v20 + 16) & ~v20;
  v24 = v22 & ~v21;
  v45 = v23;
  v46 = v20 | v21;
  v25 = swift_allocObject();
  v44 = type metadata accessor for LemonadeAccountView;
  sub_1A4579BF0(v10, v25 + v23, type metadata accessor for LemonadeAccountView);
  v42 = *(v5 + 32);
  v42(v25 + v24, v7, v19);
  sub_1A524A044();
  sub_1A4579424(0, &qword_1EB13DA88, sub_1A4578A7C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
  sub_1A4579490();
  sub_1A5241F44();
  sub_1A457A2D4(&qword_1EB13DB48, sub_1A45789E0, MEMORY[0x1E69C1CB8]);
  v26 = v39;
  v27 = v41;
  sub_1A524A734();
  (*(v12 + 8))(v15, v27);
  v28 = [objc_opt_self() systemGroupedBackgroundColor];
  v29 = sub_1A524B284();
  v30 = sub_1A524A064();
  v31 = &v26[*(v48 + 36)];
  v32 = v26;
  *v31 = v29;
  v31[8] = v30;
  v33 = v43;
  (*(**v43 + 352))(v54);
  sub_1A457A6B8(v33, v10, v51);
  v34 = v40;
  v35 = v53;
  v49(v40, v50, v53);
  v36 = swift_allocObject();
  sub_1A4579BF0(v10, v36 + v45, v44);
  v42(v36 + v24, v34, v35);
  sub_1A45795CC(0, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
  sub_1A457961C(v37);
  sub_1A45796FC();
  sub_1A524B144();

  sub_1A4579A80(v54);
  return sub_1A457A31C(v32, sub_1A4578898);
}

void sub_1A4575CFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A4575D64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v212[2] = a2;
  v252 = a3;
  v4 = type metadata accessor for LemonadeGeneralSettingsView(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v267 = v212 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v274 = v212 - v7;
  v213 = sub_1A52488B4();
  v212[3] = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213);
  v212[0] = v8;
  v212[1] = v212 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A5247D34();
  v214 = *(v9 - 8);
  v215 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v212[5] = v212 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A43C3634(0);
  v217 = *(v11 - 8);
  v218 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v216 = v212 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4579374(0);
  v238 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v239 = (v212 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4579270(0, v14);
  v250 = *(v16 - 1);
  v251 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v212[4] = v212 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A457923C(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v266 = v212 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v264 = v212 - v21;
  v22 = type metadata accessor for LemonadeInAppNotificationsSettingsView(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v265 = v212 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v273 = v212 - v25;
  sub_1A4579200(0);
  v232 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v233 = v212 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4579424(0, &qword_1EB13DAF8, sub_1A4579200, MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
  v259 = v28;
  v249 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v231 = v212 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v230 = v212 - v31;
  sub_1A4579170(0);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v263 = v212 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v276 = v212 - v35;
  v36 = sub_1A5242D14();
  v256 = *(v36 - 1);
  v257 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v255 = (v212 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v254 = (v212 - v39);
  v40 = type metadata accessor for LemonadeShelvesStack(0);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v248 = v212 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v237 = v212 - v43;
  sub_1A45790E4(0);
  v253 = v44;
  MEMORY[0x1EEE9AC00](v44);
  v229 = v212 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v236 = v212 - v47;
  sub_1A4578DAC(0, &qword_1EB13DAE0, sub_1A45790E4, sub_1A41EF370);
  v246 = *(v48 - 8);
  v247 = v48;
  MEMORY[0x1EEE9AC00](v48);
  v235 = v212 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v234 = v212 - v51;
  sub_1A457905C(0);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v262 = v212 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v272 = v212 - v55;
  v56 = type metadata accessor for LemonadeAccountView(0);
  v240 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v241 = v57;
  v242 = v212 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1A5249524();
  v225 = *(v58 - 8);
  v226 = v58;
  MEMORY[0x1EEE9AC00](v58);
  v224 = v212 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1A5249D74();
  v219 = *(v60 - 8);
  v220 = v60;
  MEMORY[0x1EEE9AC00](v60);
  v62 = v212 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for LemonadeStatusView(0);
  v64 = MEMORY[0x1EEE9AC00](v63);
  v66 = (v212 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4578E20(0, v64);
  v222 = *(v67 - 8);
  v223 = v67;
  v68 = MEMORY[0x1EEE9AC00](v67);
  sub_1A4578D78(0, v68);
  v258 = v69;
  MEMORY[0x1EEE9AC00](v69);
  v221 = v212 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v227 = v212 - v72;
  v74 = MEMORY[0x1EEE9AC00](v73);
  v243 = v212 - v75;
  sub_1A4578C74(0, v74);
  v244 = *(v76 - 1);
  v245 = v76;
  MEMORY[0x1EEE9AC00](v76);
  v228 = v212 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4578C40(0);
  MEMORY[0x1EEE9AC00](v78 - 8);
  v271 = v212 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x1EEE9AC00](v80);
  v270 = v212 - v82;
  v83 = *a1;
  v268 = (*(**a1 + 184))(v81);
  v84 = *(v268 + 40);
  v261 = v56;
  sub_1A4575CFC(0, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]);
  v269 = v84;

  v275 = a1;
  sub_1A5247C84();
  sub_1A43D4180(*&v280[0], &v282);
  v85 = *(**(v83 + 48) + 144);

  LOBYTE(v85) = v85(v86);

  v260 = v83;
  if (v85)
  {
    sub_1A46A786C(*(v83 + 32), v66);
    sub_1A5249D44();
    sub_1A457A2D4(&qword_1EB13DAC8, type metadata accessor for LemonadeStatusView, &unk_1A53562D0);
    sub_1A524ADB4();
    (*(v219 + 8))(v62, v220);
    sub_1A457A274(v66, type metadata accessor for LemonadeStatusView);
    v87 = *(v83 + 32);
    sub_1A524D4F4();
  }

  v88 = 1;
  v89 = (*(v244 + 56))(v270, 1, 1, v245);
  v90 = v260;
  v91 = (*(*v260 + 208))(v89);
  v92 = MEMORY[0x1E69C2210];
  if (v91)
  {
    v93 = v275[1];
    v94 = v91;

    v95 = sub_1A3C5A374();
    v96 = v90;
    v97 = v237;
    sub_1A409485C(v94, v93, v95 & 1, v237);
    KeyPath = swift_getKeyPath();
    v99 = v254;
    sub_1A3D61808(v254);
    v100 = *v92;
    v102 = v255;
    v101 = v256;
    v103 = v257;
    (*(v256 + 13))(v255, v100, v257);
    LOBYTE(v93) = sub_1A5242D04();

    v104 = *(v101 + 1);
    v104(v102, v103);
    v104(v99, v103);
    if (v93)
    {
      v105 = 32.0;
    }

    else
    {
      v105 = 16.0;
    }

    v106 = v97;
    v90 = v96;
    v107 = v236;
    sub_1A4579BF0(v106, v236, type metadata accessor for LemonadeShelvesStack);
    v108 = v107 + *(v253 + 9);
    *v108 = KeyPath;
    *(v108 + 8) = 0;
    *(v108 + 16) = v105;
    *(v108 + 24) = 0;
    *(v108 + 32) = v105;
    v109 = v107;
    v110 = v235;
    sub_1A4579BF0(v109, v235, sub_1A45790E4);
    v111 = v247;
    *(v110 + *(v247 + 36)) = 0x3FF0000000000000;
    v112 = v110;
    v113 = v234;
    sub_1A457A1E0(v112, v234);
    v114 = v113;
    v115 = v272;
    sub_1A457A1E0(v114, v272);
    v88 = 0;
  }

  else
  {
    v115 = v272;
    v111 = v247;
  }

  v116 = 1;
  v117 = (*(v246 + 56))(v115, v88, 1, v111);
  v118 = *(*v90 + 232);
  v119 = *v118(v117);
  v120 = (*(v119 + 840))();

  if ((v120 & 1) == 0)
  {
    v247 = v118(v121);
    v122 = v275[1];
    v258 = *(v261 + 24);

    v123 = v254;
    sub_1A3D61808(v254);
    LODWORD(v246) = *MEMORY[0x1E69C2210];
    v125 = v255;
    v124 = v256;
    v245 = *(v256 + 13);
    v126 = v257;
    v245(v255);
    v127 = sub_1A5242D04();
    v128 = *(v124 + 1);
    v128(v125, v126);
    v128(v123, v126);
    sub_1A409485C(v247, v122, v127 & 1, v248);
    v129 = swift_getKeyPath();
    v130 = v260;
    sub_1A3D61808(v123);
    (v245)(v125, v246, v126);
    v90 = v130;
    v131 = sub_1A5242D04();
    v128(v125, v126);
    v128(v123, v126);
    if (v131)
    {
      v132 = 32.0;
    }

    else
    {
      v132 = 16.0;
    }

    v133 = v229;
    sub_1A4579BF0(v248, v229, type metadata accessor for LemonadeShelvesStack);
    v134 = v133 + *(v253 + 9);
    *v134 = v129;
    *(v134 + 8) = 0;
    *(v134 + 16) = v132;
    *(v134 + 24) = 0;
    *(v134 + 32) = v132;
    v135 = sub_1A524A074();
    sub_1A5247BC4();
    v137 = v136;
    v139 = v138;
    v141 = v140;
    v143 = v142;
    v144 = v133;
    v145 = v233;
    sub_1A4579BF0(v144, v233, sub_1A45790E4);
    v146 = v145 + *(v232 + 36);
    *v146 = v135;
    *(v146 + 8) = v137;
    *(v146 + 16) = v139;
    *(v146 + 24) = v141;
    *(v146 + 32) = v143;
    *(v146 + 40) = 0;
    v147 = sub_1A524A084();
    sub_1A5247BC4();
    v149 = v148;
    v151 = v150;
    v153 = v152;
    v155 = v154;
    v156 = v145;
    v157 = v231;
    sub_1A4579BF0(v156, v231, sub_1A4579200);
    v158 = v157 + *(v259 + 36);
    *v158 = v147;
    *(v158 + 8) = v149;
    *(v158 + 16) = v151;
    *(v158 + 24) = v153;
    *(v158 + 32) = v155;
    *(v158 + 40) = 0;
    v159 = v230;
    sub_1A4579C58(v157, v230);
    sub_1A4579C58(v159, v276);
    v116 = 0;
  }

  (*(v249 + 56))(v276, v116, 1, v259);
  v160 = v268;

  v162 = sub_1A458BFAC(v161);
  v164 = sub_1A4582CE8(v162, v163 & 1, v273);
  v165 = v269;
  if ((*(*v269 + 200))(v164) & 1) != 0 || ((*(*v165 + 248))())
  {
    v166 = (*(*v165 + 296))();
    v167 = v264;
    if ((v166 & 1) == 0)
    {
      v168 = (*(*v165 + 584))();
      v169 = v239;
      sub_1A429B29C(v168, v239);
      v170 = (v275 + *(v261 + 36));
      v172 = *v170;
      v171 = v170[1];
      v173 = (v169 + *(v238 + 52));
      *v173 = v172;
      v173[1] = v171;
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else
  {
    v167 = v264;
  }

  (*(v250 + 56))(v167, 1, 1, v251);

  v175 = sub_1A458BFAC(v174);
  sub_1A4583A54(v175, v176 & 1, v274);
  v177 = [objc_opt_self() standardUserDefaults];
  v178 = sub_1A524C634();
  v179 = [v177 BOOLForKey_];

  if (v179)
  {
    (*(*v90 + 256))();
    PXDisplayCollectionDetailedCountsMake();
    v275 = v180;
  }

  else
  {
    v275 = 0;
  }

  v181 = sub_1A426E758();
  v260 = v182;
  v261 = v181;

  v183 = sub_1A45856E8();
  v257 = sub_1A458570C(v183, v184 & 1, v160);
  v258 = v185;
  v187 = v186;
  v259 = v188;
  v256 = sub_1A4578C40;
  sub_1A4579CF4(v270, v271, sub_1A4578C40);
  v255 = sub_1A457905C;
  v189 = v262;
  sub_1A457A6B8(v272, v262, sub_1A457905C);
  v254 = sub_1A4579170;
  v190 = v263;
  sub_1A457A6B8(v276, v263, sub_1A4579170);
  v253 = type metadata accessor for LemonadeInAppNotificationsSettingsView;
  v191 = v265;
  sub_1A457A6B8(v273, v265, type metadata accessor for LemonadeInAppNotificationsSettingsView);
  v251 = sub_1A457923C;
  v192 = v266;
  sub_1A4579CF4(v167, v266, sub_1A457923C);
  v193 = v267;
  sub_1A457A6B8(v274, v267, type metadata accessor for LemonadeGeneralSettingsView);
  v187 &= 1u;
  v277 = v187;
  v194 = *&v284;
  v195 = v285;
  v278[2] = v284;
  v278[3] = v285;
  v196 = v286;
  v278[4] = v286;
  v197 = v287;
  v279 = v287;
  v199 = v283;
  v278[0] = v282;
  v198 = v282;
  v278[1] = v283;
  v200 = v252;
  *(v252 + 32) = v284;
  *(v200 + 48) = v195;
  *(v200 + 64) = v196;
  *(v200 + 80) = v197;
  *v200 = v198;
  *(v200 + 16) = v199;
  sub_1A4578B44(0, v194);
  v202 = v201;
  sub_1A4579CF4(v271, v200 + v201[12], v256);
  sub_1A457A6B8(v189, v200 + v202[16], v255);
  sub_1A457A6B8(v190, v200 + v202[20], v254);
  sub_1A457A6B8(v191, v200 + v202[24], v253);
  sub_1A4579CF4(v192, v200 + v202[28], v251);
  sub_1A457A6B8(v193, v200 + v202[32], type metadata accessor for LemonadeGeneralSettingsView);
  v203 = v275;
  *(v200 + v202[36]) = v275;
  v204 = v203;
  v205 = (v200 + v202[40]);
  v206 = v260;
  *v205 = v261;
  v205[1] = v206;
  v207 = v200 + v202[44];

  v208 = v257;
  sub_1A4579D5C(v257, v187);
  v209 = v258;

  v210 = v259;

  sub_1A4579D68(v278, v280);
  v275 = v204;

  sub_1A4579D5C(v208, v187);

  sub_1A3D35BAC(v208, v187);

  *v207 = v208;
  *(v207 + 8) = v187;
  *(v207 + 16) = v210;
  *(v207 + 24) = v209;

  sub_1A457A274(v274, type metadata accessor for LemonadeGeneralSettingsView);
  sub_1A457A31C(v264, sub_1A457923C);
  sub_1A457A274(v273, type metadata accessor for LemonadeInAppNotificationsSettingsView);
  sub_1A457A274(v276, sub_1A4579170);
  sub_1A457A274(v272, sub_1A457905C);
  sub_1A457A31C(v270, sub_1A4578C40);
  sub_1A3D35BAC(v208, v277);

  sub_1A457A274(v267, type metadata accessor for LemonadeGeneralSettingsView);
  sub_1A457A31C(v266, sub_1A457923C);
  sub_1A457A274(v265, type metadata accessor for LemonadeInAppNotificationsSettingsView);
  sub_1A457A274(v263, sub_1A4579170);
  sub_1A457A274(v262, sub_1A457905C);
  sub_1A457A31C(v271, sub_1A4578C40);
  v280[2] = v284;
  v280[3] = v285;
  v280[4] = v286;
  v281 = v287;
  v280[0] = v282;
  v280[1] = v283;
  return sub_1A4579DC4(v280);
}

uint64_t sub_1A4577DBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LemonadeAccountView(0);
  v32 = *(v4 - 8);
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1A4579578(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v7 = v6;
  v33 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - v8;
  sub_1A3D938FC(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = *a1;
  v18 = [*(*a1 + 32) actionConfirmationAlertButtonTitle];
  if (v18)
  {
    v19 = v18;
    v30 = a1;
    v31 = a2;
    v20 = sub_1A524C674();
    v22 = v21;

    if ([*(v17 + 32) actionStyle] == 2)
    {
      sub_1A5247B14();
      v23 = sub_1A5247B54();
      (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
    }

    else
    {
      v26 = sub_1A5247B54();
      (*(*(v26 - 8) + 56))(v16, 1, 1, v26);
    }

    v34 = v20;
    v35 = v22;
    sub_1A457A6B8(v16, v12, sub_1A3D938FC);
    sub_1A457A6B8(v30, &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeAccountView);
    v27 = (*(v32 + 80) + 16) & ~*(v32 + 80);
    v28 = swift_allocObject();
    sub_1A4579BF0(&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for LemonadeAccountView);
    sub_1A3D5F9DC();
    sub_1A524B734();
    sub_1A457A274(v16, sub_1A3D938FC);
    v29 = v31;
    (*(v33 + 32))(v31, v9, v7);
    return (*(v33 + 56))(v29, 0, 1, v7);
  }

  else
  {
    v24 = *(v33 + 56);

    return v24(a2, 1, 1, v7);
  }
}

id sub_1A45781C0()
{
  v0 = objc_opt_self();

  return [v0 loadAsyncUpdatesImmediately];
}

uint64_t sub_1A45781F8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1A4579B00(a1, &v9);
  if (v10[24] == 255)
  {
    return sub_1A4579A80(&v9);
  }

  v11 = v9;
  v12[0] = *v10;
  *(v12 + 9) = *&v10[9];
  v4 = *a2;
  v5 = (*(*v4 + 400))(v3);
  v6 = MEMORY[0x1A5907080](v5, 1.0, 0.0);
  MEMORY[0x1EEE9AC00](v6);
  sub_1A52483D4();

  (*(*v4 + 320))(v7);
  return sub_1A3F6857C(&v11);
}

void *sub_1A4578344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = type metadata accessor for LemonadeAccountView(0);
  v6 = v5[6];
  *(a4 + v6) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for LemonadeUserInfoViewModel(0);
  sub_1A5247C74();
  v7 = a4 + v5[8];
  result = sub_1A524B694();
  *v7 = v10;
  *(v7 + 1) = v11;
  v9 = (a4 + v5[9]);
  *v9 = 0xD00000000000001FLL;
  v9[1] = 0x80000001A53DD500;
  return result;
}

uint64_t sub_1A4578454@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_1A457A6B8(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeAccountView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_1A4579BF0(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LemonadeAccountView);
  *a2 = sub_1A457A720;
  a2[1] = v7;
  return result;
}

void sub_1A4578590(uint64_t a1)
{
  type metadata accessor for LemonadeAccountViewModel(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for LemonadeNavigationContext(319);
    if (v2 <= 0x3F)
    {
      sub_1A4575CFC(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v3 <= 0x3F)
      {
        sub_1A4575CFC(319, &qword_1EB124958, type metadata accessor for LemonadeUserInfoViewModel, MEMORY[0x1E697DA80]);
        if (v4 <= 0x3F)
        {
          sub_1A45795CC(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1A45786E8(uint64_t a1, double a2)
{
  if (!qword_1EB13DA60)
  {
    sub_1A45787D0(255, a2);
    sub_1A4578898(255, v2);
    sub_1A45795CC(255, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
    sub_1A457961C(v3);
    sub_1A45796FC();
    swift_getOpaqueTypeConformance2();
    v4 = sub_1A5248A24();
    if (!v5)
    {
      atomic_store(v4, &qword_1EB13DA60);
    }
  }
}

void sub_1A45787D0(uint64_t a1, double a2)
{
  if (!qword_1EB13DA68)
  {
    sub_1A4578898(255, a2);
    sub_1A45795CC(255, &qword_1EB129778, &type metadata for LemonadeScrollTargetIdentifier, MEMORY[0x1E69E6720]);
    sub_1A457961C(v2);
    sub_1A45796FC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DA68);
    }
  }
}

void sub_1A4578898(uint64_t a1, double a2)
{
  if (!qword_1EB13DA70)
  {
    sub_1A457892C(255, a2);
    sub_1A4579578(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB13DA70);
    }
  }
}

void sub_1A457892C(uint64_t a1, double a2)
{
  if (!qword_1EB13DA78)
  {
    sub_1A45789E0(255);
    sub_1A457A2D4(&qword_1EB13DB48, sub_1A45789E0, MEMORY[0x1E69C1CB8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DA78);
    }
  }
}

void sub_1A45789E0(uint64_t a1)
{
  if (!qword_1EB13DA80)
  {
    sub_1A4579424(255, &qword_1EB13DA88, sub_1A4578A7C, MEMORY[0x1E69805D8], MEMORY[0x1E697E830]);
    sub_1A4579490();
    v1 = sub_1A5241F34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DA80);
    }
  }
}

void sub_1A4578A7C(uint64_t a1)
{
  if (!qword_1EB13DA90)
  {
    sub_1A4578B10(255);
    sub_1A457A2D4(&qword_1EB13DB30, sub_1A4578B10, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB13DA90);
    }
  }
}

void sub_1A4578B44(uint64_t a1, double a2)
{
  if (!qword_1EB13DAA0)
  {
    sub_1A4578C40(255);
    sub_1A457905C(255);
    sub_1A4579170(255);
    type metadata accessor for LemonadeInAppNotificationsSettingsView(255);
    sub_1A457923C(255);
    type metadata accessor for LemonadeGeneralSettingsView(255);
    sub_1A45795CC(255, &qword_1EB13DB28, &type metadata for LemonadeStorageManagementSettingsView, MEMORY[0x1E69E6720]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB13DAA0);
    }
  }
}

void sub_1A4578C74(uint64_t a1, double a2)
{
  if (!qword_1EB13DAB0)
  {
    sub_1A4578D78(255, a2);
    sub_1A41C3F80(255);
    sub_1A45795CC(255, &qword_1EB127690, MEMORY[0x1E6981148], MEMORY[0x1E69E6720]);
    sub_1A4578ED4(v2);
    sub_1A3D5F9DC();
    sub_1A4578FE4();
    sub_1A4283548();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v4)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DAB0);
    }
  }
}

void sub_1A4578DAC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A4578E20(uint64_t a1, double a2)
{
  if (!qword_1EB13DAC0)
  {
    type metadata accessor for LemonadeStatusView(255);
    sub_1A457A2D4(&qword_1EB13DAC8, type metadata accessor for LemonadeStatusView, &unk_1A53562D0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB13DAC0);
    }
  }
}

unint64_t sub_1A4578ED4(double a1)
{
  result = qword_1EB13DAD0;
  if (!qword_1EB13DAD0)
  {
    sub_1A4578D78(255, a1);
    type metadata accessor for LemonadeStatusView(255);
    sub_1A457A2D4(&qword_1EB13DAC8, type metadata accessor for LemonadeStatusView, &unk_1A53562D0);
    swift_getOpaqueTypeConformance2();
    sub_1A457A2D4(&qword_1EB127710, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB13DAD0);
  }

  return result;
}