void sub_1D25ACCE8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490, &qword_1D287D3F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v105 = &v100 - v3;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v113 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v107 = &v100 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v100 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v111 = &v100 - v12;
  v132 = sub_1D2871818();
  v13 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v104 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v100 - v16;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0, &qword_1D2882EB0);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v100 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v130 = &v100 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v100 - v21;
  v103 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v23 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v106 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v102 = &v100 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v100 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v110 = &v100 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v112 = &v100 - v33;
  v34 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v137 = v34;
  sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore, &unk_1D28951F8);
  sub_1D28719E8();

  swift_beginAccess();
  v35 = *(v34 + 16);
  v126 = *(v35 + 16);
  if (!v126)
  {
LABEL_13:
    v52 = v113;
    sub_1D28726D8();
    v53 = sub_1D2873CA8();
    v54 = sub_1D2878A18();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1D226E000, v53, v54, "Failed to find preview by current ID.", v55, 2u);
      MEMORY[0x1D38A3520](v55, -1, -1);
    }

    (*(v5 + 8))(v52, v4);
    return;
  }

  v133 = v22;
  v109 = v4;
  v108 = v5;
  v127 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel___observationRegistrar;
  v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  v121 = v35 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
  sub_1D2870F68();
  v128 = v1;
  v122 = v36;
  swift_beginAccess();
  v37 = 0;
  v125 = (v13 + 16);
  v120 = (v13 + 56);
  v38 = (v13 + 48);
  v114 = (v13 + 32);
  v116 = (v13 + 8);
  v39 = v132;
  v40 = v23;
  v119 = v23;
  v124 = v29;
  v123 = v35;
  while (1)
  {
    if (v37 >= *(v35 + 16))
    {
      __break(1u);
      return;
    }

    sub_1D25B9FDC(v121 + *(v40 + 72) * v37, v29, type metadata accessor for ImageGeneration.PreviewImage);
    v41 = v38;
    v42 = v133;
    v117 = *v125;
    v117(v133, v29, v39);
    (*v120)(v42, 0, 1, v39);
    swift_getKeyPath();
    v43 = v128;
    v136 = v128;
    v118 = sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
    sub_1D28719E8();

    v44 = *(v131 + 48);
    v45 = v129;
    sub_1D22BD1D0(v42, v129, &qword_1EC6D8F70, &qword_1D2881410);
    v46 = v43 + v122;
    v39 = v132;
    sub_1D22BD1D0(v46, v45 + v44, &qword_1EC6D8F70, &qword_1D2881410);
    v47 = *v41;
    if ((*v41)(v45, 1, v39) == 1)
    {
      break;
    }

    v48 = v130;
    sub_1D22BD1D0(v45, v130, &qword_1EC6D8F70, &qword_1D2881410);
    v38 = v41;
    if (v47(v45 + v44, 1, v39) == 1)
    {
      sub_1D22BD238(v133, &qword_1EC6D8F70, &qword_1D2881410);
      (*v116)(v48, v39);
      goto LABEL_4;
    }

    v49 = v115;
    (*v114)(v115, v45 + v44, v39);
    sub_1D25B554C(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v50 = sub_1D2877F98();
    v51 = *v116;
    (*v116)(v49, v39);
    sub_1D22BD238(v133, &qword_1EC6D8F70, &qword_1D2881410);
    v51(v130, v39);
    v38 = v41;
    sub_1D22BD238(v45, &qword_1EC6D8F70, &qword_1D2881410);
    if (v50)
    {

      goto LABEL_17;
    }

LABEL_5:
    ++v37;
    v29 = v124;
    sub_1D25B9F7C(v124, type metadata accessor for ImageGeneration.PreviewImage);
    v40 = v119;
    v35 = v123;
    if (v126 == v37)
    {

      v5 = v108;
      v4 = v109;
      goto LABEL_13;
    }
  }

  sub_1D22BD238(v42, &qword_1EC6D8F70, &qword_1D2881410);
  v38 = v41;
  if (v47(v45 + v44, 1, v39) != 1)
  {
LABEL_4:
    sub_1D22BD238(v45, &qword_1EC6D94F0, &qword_1D2882EB0);
    goto LABEL_5;
  }

  sub_1D22BD238(v45, &qword_1EC6D8F70, &qword_1D2881410);
LABEL_17:
  v56 = v110;
  sub_1D25B9A58(v124, v110, type metadata accessor for ImageGeneration.PreviewImage);
  v57 = v112;
  sub_1D25B9A58(v56, v112, type metadata accessor for ImageGeneration.PreviewImage);
  swift_getKeyPath();
  v58 = v128;
  v136 = v128;
  sub_1D28719E8();

  swift_beginAccess();
  v59 = *(v58 + 40);
  sub_1D2870F68();
  v60 = sub_1D25A5DDC(v57, v59);

  v61 = v108;
  v62 = v111;
  if (v60)
  {
    swift_getKeyPath();
    v135 = v58;
    sub_1D28719E8();

    v63 = v58 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__delegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v133 = Strong;
      v131 = *(v63 + 8);
      sub_1D28726D8();
      v65 = v102;
      sub_1D25B9FDC(v57, v102, type metadata accessor for ImageGeneration.PreviewImage);
      v66 = sub_1D2873CA8();
      v67 = sub_1D2878A08();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v135 = v69;
        *v68 = 136315138;
        sub_1D25B554C(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v70 = sub_1D28795C8();
        v72 = v71;
        sub_1D25B9F7C(v65, type metadata accessor for ImageGeneration.PreviewImage);
        v73 = sub_1D23D7C84(v70, v72, &v135);

        *(v68 + 4) = v73;
        _os_log_impl(&dword_1D226E000, v66, v67, "Donating preview with id: %s", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        v74 = v69;
        v57 = v112;
        MEMORY[0x1D38A3520](v74, -1, -1);
        MEMORY[0x1D38A3520](v68, -1, -1);
      }

      else
      {

        sub_1D25B9F7C(v65, type metadata accessor for ImageGeneration.PreviewImage);
      }

      (*(v61 + 8))(v62, v109);
      swift_getKeyPath();
      v135 = v58;
      sub_1D28719E8();

      v92 = v58;
      v93 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__feedbackPresentedMap;
      swift_beginAccess();
      v94 = *(v92 + v93);
      sub_1D2870F68();
      LODWORD(v130) = sub_1D25A5DDC(v57, v94);

      v95 = v104;
      v96 = v132;
      v117(v104, v57, v132);
      swift_getKeyPath();
      v134 = v92;
      sub_1D28719E8();

      v134 = v92;
      swift_getKeyPath();
      sub_1D2871A08();

      swift_beginAccess();
      v97 = v115;
      sub_1D25B59C8(v115, v95);
      (*v116)(v97, v96);
      swift_endAccess();
      v134 = v92;
      swift_getKeyPath();
      sub_1D28719F8();

      ObjectType = swift_getObjectType();
      v99 = v105;
      sub_1D25B9FDC(v57, v105, type metadata accessor for ImageGeneration.PreviewImage);
      (*(v119 + 56))(v99, 0, 1, v103);
      (*(v131 + 72))(v99, (v130 & 1) == 0, ObjectType);
      swift_unknownObjectRelease();
      sub_1D22BD238(v99, &qword_1EC6D9490, &qword_1D287D3F0);
    }

    else
    {
      v88 = v101;
      sub_1D28726D8();
      v89 = sub_1D2873CA8();
      v90 = sub_1D2878A18();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_1D226E000, v89, v90, "Not donating because no delegate is set", v91, 2u);
        MEMORY[0x1D38A3520](v91, -1, -1);
      }

      (*(v61 + 8))(v88, v109);
    }

    v87 = v57;
  }

  else
  {
    v75 = v107;
    sub_1D28726D8();
    v76 = v106;
    sub_1D25B9FDC(v57, v106, type metadata accessor for ImageGeneration.PreviewImage);
    v77 = sub_1D2873CA8();
    v78 = sub_1D2878A18();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v135 = v80;
      *v79 = 136315138;
      sub_1D25B554C(&qword_1ED8A6C90, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v81 = sub_1D28795C8();
      v82 = v76;
      v83 = v81;
      v85 = v84;
      sub_1D25B9F7C(v82, type metadata accessor for ImageGeneration.PreviewImage);
      v86 = sub_1D23D7C84(v83, v85, &v135);

      *(v79 + 4) = v86;
      _os_log_impl(&dword_1D226E000, v77, v78, "Preview %s has not been shown to the user yet.", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x1D38A3520](v80, -1, -1);
      MEMORY[0x1D38A3520](v79, -1, -1);
    }

    else
    {

      sub_1D25B9F7C(v76, type metadata accessor for ImageGeneration.PreviewImage);
    }

    (*(v61 + 8))(v75, v109);
    v87 = v57;
  }

  sub_1D25B9F7C(v87, type metadata accessor for ImageGeneration.PreviewImage);
}

uint64_t sub_1D25ADE74()
{
  v1 = v0;
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  v101 = v2;
  v102 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v80[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v80[-v7];
  MEMORY[0x1EEE9AC00](v9);
  v93 = &v80[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v94 = &v80[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v80[-v14];
  v15 = sub_1D2871818();
  v98 = *(v15 - 8);
  v99 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v91 = &v80[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0, &qword_1D2882EB0);
  MEMORY[0x1EEE9AC00](v17);
  v96 = &v80[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v92 = &v80[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v80[-v22];
  v100 = sub_1D2872008();
  v23 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v25 = &v80[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v26 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel___observationRegistrar;
  v106 = v0;
  v27 = sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGenerationCancelledFromBackgrounding))
  {
    sub_1D2872658();
    v28 = sub_1D2873CA8();
    v29 = sub_1D28789F8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D226E000, v28, v29, "startGeneratingPreviews - isGenerationCancelledFromBackgrounding is true - Ignoring startGeneratingPreviews", v30, 2u);
      MEMORY[0x1D38A3520](v30, -1, -1);
    }

    return (*(v102 + 8))(v5, v101);
  }

  swift_getKeyPath();
  v106 = v0;
  sub_1D28719E8();

  if ((*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages) & 1) == 0)
  {
    v35 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
    swift_getKeyPath();
    v36 = OBJC_IVAR____TtC23ImagePlaygroundInternal22GeneratedPreviewsStore___observationRegistrar;
    v106 = v35;
    v37 = sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore, &unk_1D28951F8);
    v86 = v36;
    v85 = v37;
    sub_1D28719E8();

    swift_beginAccess();
    v87 = v35;
    v38 = *(*(v35 + 16) + 16);
    swift_getKeyPath();
    v105 = v1;
    v84 = v26;
    sub_1D28719E8();

    v39 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
    swift_beginAccess();
    v40 = *(v23 + 16);
    v82 = v39;
    v41 = v100;
    v90 = v23 + 16;
    v89 = v40;
    v40(v25, v1 + v39, v100);
    LOBYTE(v39) = sub_1D2871F78();
    v42 = *(v23 + 8);
    v83 = v23 + 8;
    v88 = v42;
    v42(v25, v41);
    v43 = v27;
    if (v39)
    {
      v44 = v99;
      if (!v38)
      {
LABEL_23:
        swift_getKeyPath();
        v67 = v87;
        v103 = v87;
        sub_1D28719E8();

        v68 = *(*(v67 + 16) + 16);
        swift_getKeyPath();
        v103 = v1;
        sub_1D28719E8();

        v69 = v82;
        v70 = v100;
        v89(v25, v1 + v82, v100);
        v71 = sub_1D2871F78();
        v88(v25, v70);
        if (v71)
        {
          if (!v68)
          {
LABEL_30:
            swift_getKeyPath();
            v73 = v87;
            v103 = v87;
            sub_1D28719E8();

            v74 = *(*(v73 + 16) + 16);
            swift_getKeyPath();
            v103 = v1;
            sub_1D28719E8();

            v89(v25, v1 + v69, v70);
            v75 = sub_1D2871F78();
            v88(v25, v70);
            if (v75)
            {
              if (v74)
              {
LABEL_32:
                v76 = 1;
LABEL_37:
                if ((12 - v74) >= v76)
                {
                  v79 = v76;
                }

                else
                {
                  v79 = 12 - v74;
                }

                if (v79 >= 1)
                {
                  return sub_1D25AFEC4(v79, v74);
                }

                v58 = v93;
                sub_1D2872658();
                v59 = sub_1D2873CA8();
                v60 = sub_1D28789F8();
                if (!os_log_type_enabled(v59, v60))
                {
                  goto LABEL_45;
                }

                v61 = swift_slowAlloc();
                *v61 = 0;
                v62 = "startGeneratingPreviews - We already have the max amount of previews - Ignoring startGeneratingPreviews ";
                goto LABEL_44;
              }
            }

            else if (v74 >= 4)
            {
              goto LABEL_32;
            }

            swift_getKeyPath();
            v103 = v1;
            sub_1D28719E8();

            v89(v25, v1 + v69, v70);
            v77 = sub_1D2871F78();
            v88(v25, v70);
            v78 = 4;
            if (v77)
            {
              v78 = 1;
            }

            v76 = v78 - v74;
            goto LABEL_37;
          }
        }

        else if (v68 < 4)
        {
          goto LABEL_30;
        }

        swift_getKeyPath();
        v103 = v1;
        sub_1D28719E8();

        v89(v25, v1 + v69, v70);
        v72 = sub_1D2871F78();
        v88(v25, v70);
        if ((v72 & 1) == 0)
        {
          goto LABEL_30;
        }

        v58 = v94;
        sub_1D2872658();
        v59 = sub_1D2873CA8();
        v60 = sub_1D28789F8();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          v62 = "startGeneratingPreviews - hit the preview count per recipe for external provider - Ignoring startGeneratingPreviews";
          goto LABEL_44;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v44 = v99;
      if (v38 < 4)
      {
        goto LABEL_23;
      }
    }

    swift_getKeyPath();
    v45 = v87;
    v104 = v87;
    sub_1D28719E8();

    v46 = *(v45 + 16);
    v47 = *(v46 + 16);
    if (!v47)
    {
      goto LABEL_23;
    }

    v48 = v47 - 1;
    v49 = *(type metadata accessor for ImageGeneration.PreviewImage(0) - 8);
    v50 = v98;
    v51 = v43;
    v52 = v97;
    (*(v98 + 16))(v97, v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v48, v44);
    (*(v50 + 56))(v52, 0, 1, v44);
    swift_getKeyPath();
    v104 = v1;
    v99 = v51;
    sub_1D28719E8();

    v53 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
    swift_beginAccess();
    v54 = *(v17 + 48);
    v55 = v96;
    sub_1D22BD1D0(v52, v96, &qword_1EC6D8F70, &qword_1D2881410);
    sub_1D22BD1D0(v1 + v53, &v55[v54], &qword_1EC6D8F70, &qword_1D2881410);
    v56 = *(v50 + 48);
    if (v56(v55, 1, v44) == 1)
    {
      sub_1D22BD238(v52, &qword_1EC6D8F70, &qword_1D2881410);
      if (v56(&v55[v54], 1, v44) == 1)
      {
        sub_1D22BD238(v55, &qword_1EC6D8F70, &qword_1D2881410);
        goto LABEL_23;
      }
    }

    else
    {
      v57 = v92;
      sub_1D22BD1D0(v55, v92, &qword_1EC6D8F70, &qword_1D2881410);
      if (v56(&v55[v54], 1, v44) != 1)
      {
        v63 = v98;
        v64 = &v55[v54];
        v65 = v91;
        (*(v98 + 32))(v91, v64, v44);
        sub_1D25B554C(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v81 = sub_1D2877F98();
        v66 = *(v63 + 8);
        v66(v65, v44);
        sub_1D22BD238(v97, &qword_1EC6D8F70, &qword_1D2881410);
        v66(v57, v44);
        sub_1D22BD238(v55, &qword_1EC6D8F70, &qword_1D2881410);
        if (v81)
        {
          goto LABEL_23;
        }

LABEL_20:
        v58 = v95;
        sub_1D2872658();
        v59 = sub_1D2873CA8();
        v60 = sub_1D28789F8();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 0;
          v62 = "startGeneratingPreviews - current preview is not the last - Ignoring startGeneratingPreviews";
LABEL_44:
          _os_log_impl(&dword_1D226E000, v59, v60, v62, v61, 2u);
          MEMORY[0x1D38A3520](v61, -1, -1);
        }

LABEL_45:

        return (*(v102 + 8))(v58, v101);
      }

      sub_1D22BD238(v97, &qword_1EC6D8F70, &qword_1D2881410);
      (*(v98 + 8))(v57, v44);
    }

    sub_1D22BD238(v55, &qword_1EC6D94F0, &qword_1D2882EB0);
    goto LABEL_20;
  }

  sub_1D2872658();
  v32 = sub_1D2873CA8();
  v33 = sub_1D28789F8();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1D226E000, v32, v33, "startGeneratingPreviews - isGeneratingImages is true - Ignoring startGeneratingPreviews", v34, 2u);
    MEMORY[0x1D38A3520](v34, -1, -1);
  }

  return (*(v102 + 8))(v8, v101);
}

uint64_t sub_1D25AECCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12[-v8];
  sub_1D22BD1D0(a2, &v12[-v8], &qword_1EC6D8F70, &qword_1D2881410);
  v10 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  swift_beginAccess();
  sub_1D22BD1D0(a1 + v10, v6, &qword_1EC6D8F70, &qword_1D2881410);
  swift_beginAccess();
  sub_1D22D7384(v9, a1 + v10, &qword_1EC6D8F70, &qword_1D2881410);
  swift_endAccess();
  sub_1D25AC140(v6);
  sub_1D22BD238(v6, &qword_1EC6D8F70, &qword_1D2881410);
  return sub_1D22BD238(v9, &qword_1EC6D8F70, &qword_1D2881410);
}

double sub_1D25AEE2C(char a1)
{
  v2 = a1 & 1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase;
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase) != v2)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      swift_getKeyPath();
      sub_1D28719E8();

      v7 = *(v1 + v4);
      v8 = swift_allocObject();
      *(v8 + 16) = (v7 & 1) == 0;
      sub_1D2758420(v6, sub_1D25BA35C, v8);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

double sub_1D25AEFEC(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase) = a2;
  return sub_1D25AEE2C(v3);
}

id sub_1D25AF028@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  v4 = v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError;
  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError);
  v6 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError + 8);
  *a2 = v5;
  *(a2 + 8) = v6;
  v7 = *(v4 + 16);
  *(a2 + 16) = v7;
  return sub_1D2415B78(v5, v6, v7);
}

double sub_1D25AF0E8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D25AF260(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D25AF368(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
  swift_beginAccess();
  v5 = sub_1D2872008();
  (*(*(v5 - 8) + 24))(a1 + v4, a2, v5);
  return swift_endAccess();
}

double sub_1D25AF42C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D25AF51C@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  v10 = *a2;
  swift_beginAccess();
  return sub_1D22BD1D0(v12 + v10, a5, a3, a4);
}

uint64_t sub_1D25AF5FC@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t *a4@<X5>, uint64_t *a5@<X6>, uint64_t a6@<X8>)
{
  v10 = *a1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  v11 = *a3;
  swift_beginAccess();
  return sub_1D22BD1D0(v10 + v11, a6, a4, a5);
}

uint64_t sub_1D25AF6E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  sub_1D22BD1D0(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t sub_1D25AF78C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentPreviewGenPriority;
  swift_beginAccess();
  sub_1D22D7384(a2, a1 + v4, &qword_1EC6D8E60, &qword_1D28811F0);
  return swift_endAccess();
}

uint64_t sub_1D25AF81C@<X0>(uint64_t *a1@<X0>, void *a3@<X4>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  v7 = v6 + *a3;
  result = swift_unknownObjectWeakLoadStrong();
  v9 = *(v7 + 8);
  *a4 = result;
  a4[1] = v9;
  return result;
}

double sub_1D25AF8FC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719D8();

  return result;
}

double sub_1D25AF9D4()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v11 = v0;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested) == 1)
    {
      *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v10 - 2) = v0;
      *(&v10 - 8) = 1;
      v11 = v0;
      sub_1D28719D8();
    }
  }

  else
  {
    swift_getKeyPath();
    v11 = v0;
    sub_1D28719E8();

    v7 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v7, v2);
    LOBYTE(v7) = sub_1D2871F78();
    (*(v3 + 8))(v5, v2);
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = 4;
    }

    sub_1D25AFEC4(v8, 0);
  }

  return result;
}

double sub_1D25AFC60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70, &qword_1D287EAC0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, a1, v4, v6);
  swift_getKeyPath();
  v16 = a2;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  v16 = a2;
  swift_getKeyPath();
  sub_1D2871A08();

  v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__cancelContinuations;
  v10 = *(a2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__cancelContinuations);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + v9) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1D27CD384(0, v10[2] + 1, 1, v10);
    *(a2 + v9) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_1D27CD384((v12 > 1), v13 + 1, 1, v10);
  }

  v10[2] = v13 + 1;
  (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  *(a2 + v9) = v10;
  v16 = a2;
  swift_getKeyPath();
  sub_1D28719F8();

  return result;
}

uint64_t sub_1D25AFEC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v43 = a2;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v48 = &v39 - v9;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40, &unk_1D28982A0);
  v44 = *(v49 - 8);
  v10 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDE30, &unk_1D2881A80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v39 - v14;
  v16 = sub_1D2872438();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v45 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v50 = &v39 - v21;
  if ((*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_canStartPreviewGeneration))(v20))
  {
    (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_buildRecipe))();
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      return sub_1D22BD238(v15, &unk_1EC6DDE30, &unk_1D2881A80);
    }

    else
    {
      v26 = v17;
      v40 = *(v17 + 32);
      v41 = v17 + 32;
      v40(v50, v15, v16);
      if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages) == 1)
      {
        *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v39 - 2) = v2;
        *(&v39 - 8) = 1;
        v51[0] = v2;
        sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
        sub_1D28719D8();
      }

      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager), *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager + 24));
      swift_getKeyPath();
      v51[0] = v2;
      sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
      sub_1D28719E8();

      v28 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__precomputedGenerationSeeds[0]);
      v51[0] = v42;
      v51[1] = v43;
      v51[2] = v28;
      sub_1D2870F68();
      v29 = v46;
      sub_1D23B272C(v51, v46);

      v30 = sub_1D28785F8();
      (*(*(v30 - 8) + 56))(v48, 1, 1, v30);
      v31 = v44;
      (*(v44 + 16))(v47, v29, v49);
      (*(v26 + 16))(v45, v50, v16);
      sub_1D2878568();
      sub_1D2870F78();
      v32 = sub_1D2878558();
      v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
      v34 = (v10 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
      v35 = (*(v26 + 80) + v34 + 8) & ~*(v26 + 80);
      v36 = swift_allocObject();
      v37 = MEMORY[0x1E69E85E0];
      *(v36 + 16) = v32;
      *(v36 + 24) = v37;
      v38 = v49;
      (*(v31 + 32))(v36 + v33, v47, v49);
      *(v36 + v34) = v3;
      v40((v36 + v35), v45, v16);
      sub_1D22AE01C(0, 0, v48, &unk_1D28963F8, v36);

      (*(v31 + 8))(v46, v38);
      return (*(v26 + 8))(v50, v16);
    }
  }

  else
  {
    sub_1D2872658();
    v23 = sub_1D2873CA8();
    v24 = sub_1D28789F8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D226E000, v23, v24, "startGeneratingPreviews - canStartPreviewGeneration is false - Ignoring startGeneratingPreviews", v25, 2u);
      MEMORY[0x1D38A3520](v25, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

double sub_1D25B05E4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  sub_1D2870F68();
  return result;
}

uint64_t sub_1D25B0688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[65] = a6;
  v6[63] = a4;
  v6[64] = a5;
  v7 = sub_1D2872008();
  v6[66] = v7;
  v6[67] = *(v7 - 8);
  v6[68] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DDE70, &qword_1D287EAC0);
  v6[69] = v8;
  v6[70] = *(v8 - 8);
  v6[71] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  v6[72] = swift_task_alloc();
  v6[73] = swift_task_alloc();
  v6[74] = type metadata accessor for ImageGeneration.PreviewImage(0);
  v6[75] = swift_task_alloc();
  v6[76] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE660, &unk_1D2896400);
  v6[77] = swift_task_alloc();
  v6[78] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  v6[79] = swift_task_alloc();
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v6[83] = swift_task_alloc();
  v6[84] = swift_task_alloc();
  v6[85] = swift_task_alloc();
  v9 = sub_1D28785F8();
  v6[86] = v9;
  v6[87] = *(v9 - 8);
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v10 = type metadata accessor for ImageGeneration.PreviewStatus(0);
  v6[91] = v10;
  v6[92] = *(v10 - 8);
  v6[93] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA30, &qword_1D2883F58);
  v6[94] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA750, &unk_1D2891990);
  v6[95] = v11;
  v6[96] = *(v11 - 8);
  v6[97] = swift_task_alloc();
  v12 = sub_1D2873CB8();
  v6[98] = v12;
  v6[99] = *(v12 - 8);
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  v6[103] = swift_task_alloc();
  v6[104] = swift_task_alloc();
  v6[105] = swift_task_alloc();
  v6[106] = swift_task_alloc();
  v6[107] = sub_1D2878568();
  v6[108] = sub_1D2878558();
  v14 = sub_1D28784F8();
  v6[109] = v14;
  v6[110] = v13;

  return MEMORY[0x1EEE6DFA0](sub_1D25B0B40, v14, v13);
}

uint64_t sub_1D25B0B40(uint64_t a1)
{
  sub_1D2872658();
  v2 = sub_1D2873CA8();
  v3 = sub_1D28789F8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D226E000, v2, v3, "startGeneratingPreviews - will start listening to stream", v4, 2u);
    MEMORY[0x1D38A3520](v4, -1, -1);
  }

  v5 = v1[106];
  v6 = v1[99];
  v7 = v1[98];

  v8 = *(v6 + 8);
  v1[111] = v8;
  v8(v5, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40, &unk_1D28982A0);
  sub_1D2878658();
  v1[112] = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_servicesFetcher;
  v1[113] = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel___observationRegistrar;
  v1[114] = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentPreviewGenPriority;
  v1[115] = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__delegate;
  v1[116] = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore;
  v1[117] = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID;
  swift_beginAccess();
  swift_beginAccess();
  v9 = sub_1D2878558();
  v1[118] = v9;
  v10 = swift_task_alloc();
  v1[119] = v10;
  *v10 = v1;
  v10[1] = sub_1D25B0D4C;
  v11 = v1[95];
  v12 = v1[94];
  v13 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v12, v9, v13, v11, v1 + 62);
}

uint64_t sub_1D25B0D4C()
{
  v2 = *v1;
  *(*v1 + 960) = v0;

  v3 = *(v2 + 880);
  v4 = *(v2 + 872);
  if (v0)
  {
    v5 = sub_1D25B2D60;
  }

  else
  {
    v5 = sub_1D25B0E78;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D25B0E78()
{
  v1 = *(v0 + 752);
  if ((*(*(v0 + 736) + 48))(v1, 1, *(v0 + 728)) == 1)
  {
    (*(*(v0 + 768) + 8))(*(v0 + 776), *(v0 + 760));

    sub_1D2872658();
    v2 = sub_1D2873CA8();
    v3 = sub_1D28789F8();
    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 888);
    v6 = *(v0 + 840);
    v7 = *(v0 + 784);
    if (v4)
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v2, v3, "startGeneratingPreviews - did stop listening to stream", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    v5(v6, v7);
    v9 = *(v0 + 512);
    if (*(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages))
    {
      swift_getKeyPath();
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = 0;
      *(v0 + 336) = v9;
      sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
      sub_1D28719D8();
    }

    else
    {
      *(v9 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages) = 0;
    }

    v24 = *(v0 + 512);
    swift_getKeyPath();
    *(v0 + 416) = v24;
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
    sub_1D28719E8();

    v25 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__cancelContinuations;
    v26 = *(v0 + 512);
    if (*(*(v24 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__cancelContinuations) + 16))
    {
      swift_getKeyPath();
      *(v0 + 400) = v26;
      sub_1D28719E8();

      v206 = v25;
      v27 = *(v24 + v25);
      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = *(v0 + 560);
        v32 = *(v29 + 16);
        v30 = v29 + 16;
        v31 = v32;
        v33 = v27 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
        v34 = *(v30 + 56);
        sub_1D2870F68();
        do
        {
          v35 = *(v0 + 568);
          v36 = *(v0 + 552);
          v31(v35, v33, v36);
          sub_1D2878518();
          (*(v30 - 8))(v35, v36);
          v33 += v34;
          --v28;
        }

        while (v28);
      }

      v37 = *(v0 + 512);
      swift_getKeyPath();
      *(v0 + 392) = v37;
      sub_1D28719E8();

      *(v0 + 344) = v37;
      swift_getKeyPath();
      sub_1D2871A08();

      *(v24 + v206) = MEMORY[0x1E69E7CC0];

      *(v0 + 352) = v37;
      swift_getKeyPath();
      sub_1D28719F8();

      if (*(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested))
      {
        v38 = *(v0 + 512);
        swift_getKeyPath();
        v39 = swift_task_alloc();
        *(v39 + 16) = v38;
        *(v39 + 24) = 0;
        *(v0 + 360) = v38;
        sub_1D28719D8();
      }

      else
      {
        *(v37 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested) = 0;
      }
    }

    else
    {
      swift_getKeyPath();
      *(v0 + 368) = v26;
      sub_1D28719E8();

      if (*(v26 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested) == 1)
      {
        v82 = *(v0 + 544);
        v83 = *(v0 + 536);
        v208 = *(v0 + 528);
        v84 = *(v0 + 512);
        swift_getKeyPath();
        v85 = swift_task_alloc();
        *(v85 + 16) = v84;
        *(v85 + 24) = 0;
        *(v0 + 376) = v84;
        sub_1D28719D8();

        swift_getKeyPath();
        *(v0 + 384) = v84;
        sub_1D28719E8();

        v86 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
        swift_beginAccess();
        (*(v83 + 16))(v82, v84 + v86, v208);
        LOBYTE(v86) = sub_1D2871F78();
        (*(v83 + 8))(v82, v208);
        if (v86)
        {
          v87 = 1;
        }

        else
        {
          v87 = 4;
        }

        sub_1D25AFEC4(v87, 0);
      }
    }

    v88 = *(v0 + 8);

    return v88();
  }

  sub_1D25B9A58(v1, *(v0 + 744), type metadata accessor for ImageGeneration.PreviewStatus);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v40 = *(v0 + 744);
      v41 = *(v0 + 704);
      v42 = *(v0 + 696);
      v43 = *(v0 + 688);
      v44 = *(v0 + 512);
      v46 = *v40;
      v45 = *(v40 + 8);
      v47 = *(v40 + 16);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA778, &qword_1D28919B0);
      (*(v42 + 32))(v41, v40 + *(v48 + 48), v43);
      sub_1D23C7CA8();
      sub_1D22BCE64();
      v49 = swift_allocError();
      *v50 = v46;
      *(v50 + 8) = v45;
      *(v50 + 16) = v47;
      swift_getKeyPath();
      *(v0 + 408) = v44;
      v203 = v46;
      v207 = v45;
      v200 = v47;
      sub_1D233E72C(v46, v45, v47);
      sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
      sub_1D28719E8();

      v51 = 0xE900000000000064;
      v52 = *(v44 + 16) - 2;
      v53 = 0x7261506472696854;
      if (*(v44 + 16))
      {
        v51 = 0xEA00000000007974;
      }

      else
      {
        v53 = 0x6E61576567616D49;
      }

      v54 = v52 >= 3;
      if (v52 >= 3)
      {
        v55 = v53;
      }

      else
      {
        v55 = 0x616C506567616D49;
      }

      if (!v54)
      {
        v51 = 0xEF646E756F726779;
      }

      if (*(v44 + 16) <= 4u)
      {
        v56 = v55;
      }

      else
      {
        v56 = 0x696A6F6D6E6547;
      }

      if (*(v44 + 16) <= 4u)
      {
        v57 = v51;
      }

      else
      {
        v57 = 0xE700000000000000;
      }

      v58 = *(v0 + 704);
      v59 = *(v0 + 696);
      v60 = *(v0 + 688);
      v61 = *(v0 + 656);
      sub_1D2417810(v49, v56, v57);

      (*(v59 + 16))(v61, v58, v60);
      (*(v59 + 56))(v61, 0, 1, v60);
      sub_1D25AAEE8(v61);
      sub_1D2872658();
      v62 = v207;
      sub_1D233E72C(v46, v207, v47);
      v63 = sub_1D2873CA8();
      v64 = sub_1D28789F8();
      sub_1D22BCDC4(v46, v207, v200);
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v65 = 138412290;
        swift_allocError();
        *v67 = v46;
        *(v67 + 8) = v207;
        *(v67 + 16) = v200;
        sub_1D233E72C(v46, v207, v200);
        v68 = _swift_stdlib_bridgeErrorToNSError();
        *(v65 + 4) = v68;
        *v66 = v68;
        _os_log_impl(&dword_1D226E000, v63, v64, "startGeneratingPreviews - retrying after a failure %@", v65, 0xCu);
        sub_1D22BD238(v66, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v66, -1, -1);
        v69 = v65;
        v62 = v207;
        MEMORY[0x1D38A3520](v69, -1, -1);
      }

      v70 = *(v0 + 888);
      v71 = *(v0 + 816);
      v72 = *(v0 + 784);

      v70(v71, v72);
      *(v0 + 312) = v46;
      *(v0 + 320) = v62;
      *(v0 + 328) = v200;
      sub_1D25B3A94((v0 + 312));
      v73 = sub_1D23C7CA8();
      v74 = sub_1D2878068();
      v75 = sub_1D2878068();
      v76 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
      if (*(v73 + 48))
      {
        sub_1D2870F68();
        v77 = sub_1D2878068();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_1D24E8054(v77, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
      }

      v79 = sub_1D2878068();
      v80 = sub_1D2418030(v76);

      if (v80)
      {
        type metadata accessor for IAPayloadKey(0);
        sub_1D22BCFD0(0, &qword_1ED89CC48, 0x1E69E58C0);
        sub_1D25B554C(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
        v81 = sub_1D2877E78();
      }

      else
      {
        v81 = 0;
      }

      v130 = *(v0 + 704);
      v131 = *(v0 + 696);
      v132 = *(v0 + 688);
      [objc_opt_self() asyncSendSignal:v75 toChannel:v74 withNullableUniqueStringID:v79 withPayload:v81];

      sub_1D22BCDC4(v203, v207, v200);
      (*(v131 + 8))(v130, v132);
      goto LABEL_88;
    }

    v104 = *(v0 + 912);
    v105 = *(v0 + 696);
    v210 = *(v0 + 688);
    v106 = *(v0 + 648);
    v107 = *(v0 + 640);
    v108 = *(v0 + 616);
    v109 = *(v0 + 608);
    v110 = *(v0 + 512);
    (*(v105 + 56))(v106, 1, 1);
    sub_1D22BD1D0(v110 + v104, v107, &qword_1EC6D8E60, &qword_1D28811F0);
    v111 = *(v109 + 48);
    sub_1D22BD1D0(v107, v108, &qword_1EC6D8E60, &qword_1D28811F0);
    sub_1D22BD1D0(v106, v108 + v111, &qword_1EC6D8E60, &qword_1D28811F0);
    v112 = *(v105 + 48);
    v113 = v112(v108, 1, v210);
    v114 = *(v0 + 688);
    if (v113 == 1)
    {
      sub_1D22BD238(*(v0 + 640), &qword_1EC6D8E60, &qword_1D28811F0);
      if (v112(v108 + v111, 1, v114) == 1)
      {
        sub_1D22BD238(*(v0 + 616), &qword_1EC6D8E60, &qword_1D28811F0);
LABEL_83:
        v182 = *(v0 + 912);
        v183 = *(v0 + 648);
        v184 = *(v0 + 512);
        swift_beginAccess();
        sub_1D22D7384(v183, v184 + v182, &qword_1EC6D8E60, &qword_1D28811F0);
        swift_endAccess();
        goto LABEL_84;
      }
    }

    else
    {
      sub_1D22BD1D0(*(v0 + 616), *(v0 + 632), &qword_1EC6D8E60, &qword_1D28811F0);
      if (v112(v108 + v111, 1, v114) != 1)
      {
        v174 = *(v0 + 712);
        v175 = *(v0 + 696);
        v176 = *(v0 + 688);
        v177 = *(v0 + 640);
        v178 = *(v0 + 632);
        v179 = *(v0 + 616);
        (*(v175 + 32))(v174, v108 + v111, v176);
        sub_1D25B554C(&unk_1ED89CFB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8600]);
        v180 = sub_1D2877F98();
        v181 = *(v175 + 8);
        v181(v174, v176);
        sub_1D22BD238(v177, &qword_1EC6D8E60, &qword_1D28811F0);
        v181(v178, v176);
        sub_1D22BD238(v179, &qword_1EC6D8E60, &qword_1D28811F0);
        if (v180)
        {
          goto LABEL_83;
        }

LABEL_62:
        v127 = *(v0 + 648);
        v128 = *(v0 + 512);
        swift_getKeyPath();
        v129 = swift_task_alloc();
        *(v129 + 16) = v128;
        *(v129 + 24) = v127;
        *(v0 + 424) = v128;
        sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
        sub_1D28719D8();

LABEL_84:
        sub_1D22BD238(*(v0 + 648), &qword_1EC6D8E60, &qword_1D28811F0);
        sub_1D2872658();
        v185 = sub_1D2873CA8();
        v186 = sub_1D28789F8();
        if (os_log_type_enabled(v185, v186))
        {
          v187 = swift_slowAlloc();
          *v187 = 0;
          _os_log_impl(&dword_1D226E000, v185, v186, "startGeneratingPreviews - did configure playground", v187, 2u);
          MEMORY[0x1D38A3520](v187, -1, -1);
        }

        v188 = *(v0 + 888);
        v189 = *(v0 + 824);
        v190 = *(v0 + 784);
        v191 = *(v0 + 512);

        v188(v189, v190);
        swift_getKeyPath();
        *(v0 + 432) = v191;
        sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
        sub_1D28719E8();

        if (swift_unknownObjectWeakLoadStrong())
        {
          v192 = *(v0 + 512);
          v193 = *(v192 + *(v0 + 920) + 8);
          ObjectType = swift_getObjectType();
          (*(v193 + 8))(v192, ObjectType, v193);
          swift_unknownObjectRelease();
        }

        goto LABEL_88;
      }

      v124 = *(v0 + 696);
      v125 = *(v0 + 688);
      v126 = *(v0 + 632);
      sub_1D22BD238(*(v0 + 640), &qword_1EC6D8E60, &qword_1D28811F0);
      (*(v124 + 8))(v126, v125);
    }

    sub_1D22BD238(*(v0 + 616), &qword_1EC6DE660, &unk_1D2896400);
    goto LABEL_62;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D25B9A58(*(v0 + 744), *(v0 + 600), type metadata accessor for ImageGeneration.PreviewImage);
    sub_1D2872658();
    v12 = sub_1D2873CA8();
    v13 = sub_1D28789F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D226E000, v12, v13, "startGeneratingPreviews - append preview image", v14, 2u);
      MEMORY[0x1D38A3520](v14, -1, -1);
    }

    v205 = *(v0 + 928);
    v15 = *(v0 + 888);
    v16 = *(v0 + 832);
    v17 = *(v0 + 784);
    v18 = *(v0 + 696);
    v19 = *(v0 + 688);
    v20 = *(v0 + 656);
    v202 = *(v0 + 600);
    v21 = *(v0 + 512);

    v15(v16, v17);
    (*(v18 + 56))(v20, 1, 1, v19);
    sub_1D25AAEE8(v20);
    v22 = *(v21 + v205);
    sub_1D258F598(v202);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA190, &unk_1D28836B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D2880100;
    *(inited + 32) = 0x65727574616546;
    *(inited + 40) = 0xE700000000000000;
    swift_getKeyPath();
    *(v0 + 448) = v21;
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
    sub_1D28719E8();

    v133 = *(v0 + 600);
    v134 = sub_1D2878068();

    *(inited + 48) = v134;
    *(inited + 56) = 0x4449657069636552;
    *(inited + 64) = 0xE800000000000000;
    sub_1D23C7CA8();

    sub_1D2872348();
    v135 = sub_1D2878068();

    *(inited + 72) = v135;
    *(inited + 80) = 0x646E496567616D49;
    *(inited + 88) = 0xEA00000000007865;
    swift_getKeyPath();
    *(v0 + 456) = v22;
    sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore, &unk_1D28951F8);
    sub_1D28719E8();

    swift_beginAccess();
    v136 = *(v22 + 16);
    v137 = swift_task_alloc();
    *(v137 + 16) = v133;
    sub_1D2870F68();
    sub_1D25A6144(sub_1D233E9A0, v137, v136, type metadata accessor for ImageGeneration.PreviewImage);
    v139 = v138;

    v140 = 0;
    if ((v139 & 1) == 0)
    {
      v140 = sub_1D2878808();
    }

    v141 = *(v0 + 600);
    v142 = *(v0 + 592);
    *(inited + 96) = v140;
    *(inited + 104) = 0x6B6F547475706E49;
    *(inited + 112) = 0xEF746E756F436E65;
    v143 = (v141 + *(v142 + 24));
    v144 = v143[3];
    v145 = v143[4];
    __swift_project_boxed_opaque_existential_1(v143, v144);
    (*(v145 + 40))(v144, v145);
    if (v146)
    {
      v147 = 0;
    }

    else
    {
      v147 = sub_1D2878808();
    }

    v148 = *(v0 + 600);
    v149 = *(v0 + 592);
    *(inited + 120) = v147;
    strcpy((inited + 128), "FeatureModel");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    if (*(v148 + *(v149 + 32)))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0, &unk_1D2882750);
      v150 = sub_1D2877E78();
    }

    else
    {
      v150 = 0;
    }

    v151 = *(v0 + 512);
    *(inited + 144) = v150;
    v152 = sub_1D25D6F4C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA198, &qword_1D28816A0);
    swift_arrayDestroy();
    sub_1D23C7CA8();
    sub_1D24165B4(0x6E65476567616D49, 0xEF6E6F6974617265, 0xD000000000000010, 0x80000001D28BB9B0, v152, 1);

    swift_getKeyPath();
    *(v0 + 472) = v151;
    sub_1D28719E8();

    if (swift_unknownObjectWeakLoadStrong())
    {
      v153 = *(v0 + 600);
      v154 = *(v0 + 512);
      v155 = *(v154 + *(v0 + 920) + 8);
      v156 = swift_getObjectType();
      (*(v155 + 16))(v154, v153, v156, v155);
      swift_unknownObjectRelease();
    }

    v157 = *(v0 + 936);
    v158 = *(v0 + 584);
    v159 = *(v0 + 512);
    swift_getKeyPath();
    *(v0 + 480) = v159;
    sub_1D28719E8();

    sub_1D22BD1D0(v159 + v157, v158, &qword_1EC6D8F70, &qword_1D2881410);
    v160 = sub_1D2871818();
    v161 = *(v160 - 8);
    LODWORD(v157) = (*(v161 + 48))(v158, 1, v160);
    sub_1D22BD238(v158, &qword_1EC6D8F70, &qword_1D2881410);
    if (v157 == 1)
    {
      v162 = *(v0 + 576);
      (*(v161 + 16))(v162, *(v0 + 600), v160);
      (*(v161 + 56))(v162, 0, 1, v160);
      sub_1D25A8330(v162);
    }

    v163 = *(v0 + 600);
    sub_1D25B37B4();
    sub_1D25B9F7C(v163, type metadata accessor for ImageGeneration.PreviewImage);
    goto LABEL_88;
  }

  v90 = *(v0 + 744);
  v91 = *(v0 + 720);
  v92 = *(v0 + 696);
  v93 = *(v0 + 688);
  v94 = *(v0 + 680);
  v95 = *(v0 + 672);
  v96 = *(v0 + 624);
  v204 = *(v0 + 608);
  v209 = *(v0 + 912);
  v97 = *(v0 + 512);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA50, &qword_1D2885320);
  v201 = *(v92 + 32);
  v201(v91, v90 + *(v98 + 48), v93);
  (*(v92 + 16))(v94, v91, v93);
  (*(v92 + 56))(v94, 0, 1, v93);
  sub_1D22BD1D0(v97 + v209, v95, &qword_1EC6D8E60, &qword_1D28811F0);
  v99 = *(v204 + 48);
  sub_1D22BD1D0(v95, v96, &qword_1EC6D8E60, &qword_1D28811F0);
  sub_1D22BD1D0(v94, v96 + v99, &qword_1EC6D8E60, &qword_1D28811F0);
  v100 = *(v92 + 48);
  v101 = v100(v96, 1, v93);
  v102 = *(v0 + 688);
  if (v101 == 1)
  {
    sub_1D22BD238(*(v0 + 672), &qword_1EC6D8E60, &qword_1D28811F0);
    if (v100(v96 + v99, 1, v102) == 1)
    {
      v103 = *(v0 + 624);
      (*(*(v0 + 696) + 8))(*(v0 + 720), *(v0 + 688));
      sub_1D22BD238(v103, &qword_1EC6D8E60, &qword_1D28811F0);
LABEL_80:
      v171 = *(v0 + 912);
      v172 = *(v0 + 680);
      v173 = *(v0 + 512);
      swift_beginAccess();
      sub_1D22D7384(v172, v173 + v171, &qword_1EC6D8E60, &qword_1D28811F0);
      swift_endAccess();
      goto LABEL_81;
    }

    goto LABEL_57;
  }

  sub_1D22BD1D0(*(v0 + 624), *(v0 + 664), &qword_1EC6D8E60, &qword_1D28811F0);
  if (v100(v96 + v99, 1, v102) == 1)
  {
    v115 = *(v0 + 696);
    v116 = *(v0 + 688);
    v117 = *(v0 + 664);
    sub_1D22BD238(*(v0 + 672), &qword_1EC6D8E60, &qword_1D28811F0);
    (*(v115 + 8))(v117, v116);
LABEL_57:
    sub_1D22BD238(*(v0 + 624), &qword_1EC6DE660, &unk_1D2896400);
    goto LABEL_58;
  }

  v164 = *(v0 + 712);
  v165 = *(v0 + 696);
  v166 = *(v0 + 688);
  v167 = *(v0 + 672);
  v168 = *(v0 + 664);
  v211 = *(v0 + 624);
  v201(v164, v96 + v99, v166);
  sub_1D25B554C(&unk_1ED89CFB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8600]);
  v169 = sub_1D2877F98();
  v170 = *(v165 + 8);
  v170(v164, v166);
  sub_1D22BD238(v167, &qword_1EC6D8E60, &qword_1D28811F0);
  v170(v168, v166);
  sub_1D22BD238(v211, &qword_1EC6D8E60, &qword_1D28811F0);
  if (v169)
  {
    v170(*(v0 + 720), *(v0 + 688));
    goto LABEL_80;
  }

LABEL_58:
  v118 = *(v0 + 720);
  v119 = *(v0 + 696);
  v120 = *(v0 + 688);
  v121 = *(v0 + 680);
  v122 = *(v0 + 512);
  swift_getKeyPath();
  v123 = swift_task_alloc();
  *(v123 + 16) = v122;
  *(v123 + 24) = v121;
  *(v0 + 488) = v122;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719D8();

  (*(v119 + 8))(v118, v120);

LABEL_81:
  sub_1D22BD238(*(v0 + 680), &qword_1EC6D8E60, &qword_1D28811F0);
LABEL_88:
  v195 = sub_1D2878558();
  *(v0 + 944) = v195;
  v196 = swift_task_alloc();
  *(v0 + 952) = v196;
  *v196 = v0;
  v196[1] = sub_1D25B0D4C;
  v197 = *(v0 + 760);
  v198 = *(v0 + 752);
  v199 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DB90](v198, v195, v199, v197, v0 + 496);
}

uint64_t sub_1D25B2D60()
{
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = *(v0 + 760);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 496);
  *(v0 + 464) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast() && *(v0 + 329) == 3)
  {

    sub_1D2872658();
    v6 = sub_1D2873CA8();
    v7 = sub_1D2878A38();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D226E000, v6, v7, "previews generation was cancelled because a new generation has been started", v8, 2u);
      MEMORY[0x1D38A3520](v8, -1, -1);
    }

    v9 = *(v0 + 888);
    v10 = *(v0 + 808);
    v11 = *(v0 + 784);

    v9(v10, v11);
  }

  else
  {
    v12 = *(v0 + 512);

    sub_1D23C7CA8();
    swift_getKeyPath();
    *(v0 + 440) = v12;
    v13 = v4;
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
    sub_1D28719E8();

    v14 = 0xE900000000000064;
    v15 = 0x6E61576567616D49;
    if (*(v12 + 16))
    {
      v15 = 0x7261506472696854;
      v14 = 0xEA00000000007974;
    }

    if (*(v12 + 16) - 2 < 3)
    {
      v15 = 0x616C506567616D49;
      v14 = 0xEF646E756F726779;
    }

    if (*(v12 + 16) <= 4u)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0x696A6F6D6E6547;
    }

    if (*(v12 + 16) <= 4u)
    {
      v17 = v14;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    sub_1D2417810(v4, v16, v17);

    sub_1D25B3CB8(v4);
    sub_1D2872658();
    v18 = v4;
    v19 = sub_1D2873CA8();
    v20 = sub_1D2878A18();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v4;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1D226E000, v19, v20, "previews generation failed with error: %@", v21, 0xCu);
      sub_1D22BD238(v22, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v22, -1, -1);
      MEMORY[0x1D38A3520](v21, -1, -1);
    }

    else
    {
    }

    (*(v0 + 888))(*(v0 + 800), *(v0 + 784));
  }

  v25 = *(v0 + 512);
  if (*(v25 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages))
  {
    swift_getKeyPath();
    v26 = swift_task_alloc();
    *(v26 + 16) = v25;
    *(v26 + 24) = 0;
    *(v0 + 336) = v25;
    sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
    sub_1D28719D8();
  }

  else
  {
    *(v25 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isGeneratingImages) = 0;
  }

  v27 = *(v0 + 512);
  swift_getKeyPath();
  *(v0 + 416) = v27;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  v28 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__cancelContinuations;
  v29 = *(v0 + 512);
  if (*(*(v27 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__cancelContinuations) + 16))
  {
    swift_getKeyPath();
    *(v0 + 400) = v29;
    sub_1D28719E8();

    v51 = v28;
    v30 = *(v27 + v28);
    v31 = *(v30 + 16);
    if (v31)
    {
      v32 = *(v0 + 560);
      v35 = *(v32 + 16);
      v33 = v32 + 16;
      v34 = v35;
      v36 = v30 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
      v37 = *(v33 + 56);
      sub_1D2870F68();
      do
      {
        v38 = *(v0 + 568);
        v39 = *(v0 + 552);
        v34(v38, v36, v39);
        sub_1D2878518();
        (*(v33 - 8))(v38, v39);
        v36 += v37;
        --v31;
      }

      while (v31);
    }

    v40 = *(v0 + 512);
    swift_getKeyPath();
    *(v0 + 392) = v40;
    sub_1D28719E8();

    *(v0 + 344) = v40;
    swift_getKeyPath();
    sub_1D2871A08();

    *(v27 + v51) = MEMORY[0x1E69E7CC0];

    *(v0 + 352) = v40;
    swift_getKeyPath();
    sub_1D28719F8();

    if (*(v40 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested))
    {
      v41 = *(v0 + 512);
      swift_getKeyPath();
      v42 = swift_task_alloc();
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v0 + 360) = v41;
      sub_1D28719D8();
    }

    else
    {
      *(v40 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested) = 0;
    }
  }

  else
  {
    swift_getKeyPath();
    *(v0 + 368) = v29;
    sub_1D28719E8();

    if (*(v29 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__generationRequested) == 1)
    {
      v43 = *(v0 + 544);
      v44 = *(v0 + 536);
      v52 = *(v0 + 528);
      v45 = *(v0 + 512);
      swift_getKeyPath();
      v46 = swift_task_alloc();
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v0 + 376) = v45;
      sub_1D28719D8();

      swift_getKeyPath();
      *(v0 + 384) = v45;
      sub_1D28719E8();

      v47 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
      swift_beginAccess();
      (*(v44 + 16))(v43, v45 + v47, v52);
      LOBYTE(v47) = sub_1D2871F78();
      (*(v44 + 8))(v43, v52);
      if (v47)
      {
        v48 = 1;
      }

      else
      {
        v48 = 4;
      }

      sub_1D25AFEC4(v48, 0);
    }
  }

  v49 = *(v0 + 8);

  return v49();
}

double sub_1D25B37B4()
{
  v1 = v0;
  v2 = sub_1D2872008();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12 = v0;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  LOBYTE(v6) = sub_1D2871F78();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v8 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_previewsStore);
  swift_getKeyPath();
  v11[2] = v8;
  sub_1D25B554C(&qword_1ED8A0FD0, type metadata accessor for GeneratedPreviewsStore, &unk_1D28951F8);
  sub_1D28719E8();

  swift_beginAccess();
  if (*(*(v8 + 16) + 16) == v7 && (sub_1D25A3F44() & 1) == 0)
  {
    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) == 1)
    {
      *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__allowsPreviewMode) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v11[-2] = v1;
      LOBYTE(v11[-1]) = 1;
      v11[1] = v1;
      sub_1D28719D8();
    }
  }

  return result;
}

uint64_t sub_1D25B3A94(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  v9 = a1[1];
  v10 = *(a1 + 16);
  swift_getKeyPath();
  v19[0] = v2;
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  v11 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 8);
    ObjectType = swift_getObjectType();
    v19[0] = v8;
    v19[1] = v9;
    v20 = v10;
    (*(v12 + 32))(v2, v19, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1D2872658();
    v15 = sub_1D2873CA8();
    v16 = sub_1D2878A18();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1D226E000, v15, v16, "showErrorIfNeeded - delegate is nil!", v17, 2u);
      MEMORY[0x1D38A3520](v17, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1D25B3CB8(void *a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  if (swift_dynamicCast())
  {
    v9 = v23;
    v10 = v24;
    if ((v24 & 0xF0) == 0xA0 && v23 == 0 && v24 == 160)
    {
      if (qword_1EC6D8968 != -1)
      {
        swift_once();
      }

      sub_1D22BCE64();
      v11 = swift_allocError();
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = -96;
      sub_1D25428EC(v11);
    }

    else
    {
      v20 = v5;
      v21 = v4;
      KeyPath = swift_getKeyPath();
      v22 = &v20;
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v20 - 4) = v2;
      *(&v20 - 3) = v9;
      *(&v20 - 8) = v10;
      *&v23 = v2;
      sub_1D233E72C(v9, *(&v9 + 1), v10);
      sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
      sub_1D28719D8();
      sub_1D22BCDC4(v9, *(&v9 + 1), v10);

      swift_getKeyPath();
      *&v23 = v2;
      sub_1D28719E8();

      v14 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v15 = *(v14 + 8);
        ObjectType = swift_getObjectType();
        (*(v15 + 24))(v2, ObjectType, v15);
        sub_1D22BCDC4(v9, *(&v9 + 1), v10);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1D2872658();
        v17 = sub_1D2873CA8();
        v18 = sub_1D2878A18();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_1D226E000, v17, v18, "showErrorIfNeeded - delegate is nil!", v19, 2u);
          MEMORY[0x1D38A3520](v19, -1, -1);

          sub_1D22BCDC4(v9, *(&v9 + 1), v10);
        }

        else
        {
          sub_1D22BCDC4(v9, *(&v9 + 1), v10);
        }

        (*(v20 + 8))(v7, v21);
      }
    }
  }
}

double sub_1D25B4094(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 17))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
      sub_1D28719D8();
    }

    else
    {
      *(Strong + 17) = 0;
    }
  }

  return result;
}

uint64_t sub_1D25B41DC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  return *(v2 + *a2);
}

void sub_1D25B427C(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  *a4 = *(v6 + *a3);
}

double sub_1D25B4344@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  *a4 = *(v6 + *a3);
  sub_1D2870F68();
  return result;
}

double sub_1D25B4410(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  swift_beginAccess();
  sub_1D2870F68();
  return result;
}

double sub_1D25B44C8(uint64_t a1)
{
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  swift_getKeyPath();
  sub_1D2871A08();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__previewIndicesToSavedSeedMap;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  *(v1 + v3) = 0x8000000000000000;
  sub_1D24E9FA4(1, a1, isUniquelyReferenced_nonNull_native);
  *(v1 + v3) = v6;
  swift_endAccess();
  swift_getKeyPath();
  sub_1D28719F8();

  return result;
}

double sub_1D25B4630@<D0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D25B554C(&qword_1ED8A2D20, type metadata accessor for PreviewsViewModel, &unk_1D2896328);
  sub_1D28719E8();

  v7 = *a3;
  swift_beginAccess();
  *a4 = *(v6 + v7);
  sub_1D2870F68();
  return result;
}

uint64_t sub_1D25B46FC(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE670, &qword_1D2896638);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD060, &qword_1D2895950);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  sub_1D25B9FDC(a1, &v21 - v14, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
  (*(v4 + 56))(v15, 0, 1, v3);
  v16 = *(v7 + 56);
  sub_1D22BD1D0(v15, v9, &qword_1EC6DD060, &qword_1D2895950);
  sub_1D22BD1D0(v22, &v9[v16], &qword_1EC6DD060, &qword_1D2895950);
  v17 = *(v4 + 48);
  if (v17(v9, 1, v3) == 1)
  {
    sub_1D22BD238(v15, &qword_1EC6DD060, &qword_1D2895950);
    if (v17(&v9[v16], 1, v3) == 1)
    {
      sub_1D22BD238(v9, &qword_1EC6DD060, &qword_1D2895950);
      v18 = 1;
      return v18 & 1;
    }

LABEL_6:
    sub_1D22BD238(v9, &qword_1EC6DE670, &qword_1D2896638);
    v18 = 0;
    return v18 & 1;
  }

  sub_1D22BD1D0(v9, v12, &qword_1EC6DD060, &qword_1D2895950);
  if (v17(&v9[v16], 1, v3) == 1)
  {
    sub_1D22BD238(v15, &qword_1EC6DD060, &qword_1D2895950);
    sub_1D25B9F7C(v12, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
    goto LABEL_6;
  }

  v19 = v21;
  sub_1D25B9A58(&v9[v16], v21, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
  if (_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0())
  {
    v18 = _s23ImagePlaygroundInternal32LoadingPageControlIndicatorStyleO2eeoiySbAC_ACtFZ_0(&v12[*(v3 + 20)], v19 + *(v3 + 20));
  }

  else
  {
    v18 = 0;
  }

  sub_1D25B9F7C(v19, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
  sub_1D22BD238(v15, &qword_1EC6DD060, &qword_1D2895950);
  sub_1D25B9F7C(v12, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
  sub_1D22BD238(v9, &qword_1EC6DD060, &qword_1D2895950);
  return v18 & 1;
}

void *sub_1D25B4AB8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD060, &qword_1D2895950);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v15[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15[-v4];
  v6 = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D25A9658(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D22BD238(v5, &qword_1EC6DD060, &qword_1D2895950);
  }

  sub_1D25B9A58(v5, v9, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
  v11 = sub_1D25A8EC8();
  MEMORY[0x1EEE9AC00](v11);
  *&v15[-16] = v9;
  v12 = sub_1D25A6144(sub_1D25BA064, &v15[-32], v11, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
  v14 = v13;

  if ((v14 & 1) == 0 && v12 >= 1)
  {
    result = sub_1D25A8EC8();
    if (v12 > result[2])
    {
      __break(1u);
      return result;
    }

    sub_1D25B9FDC(result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * (v12 - 1), v2, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);

    (*(v7 + 56))(v2, 0, 1, v6);
    sub_1D25A9FE0(v2);
    sub_1D22BD238(v2, &qword_1EC6DD060, &qword_1D2895950);
  }

  return sub_1D25B9F7C(v9, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
}

void sub_1D25B4D88()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DD060, &qword_1D2895950);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v18[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18[-v4];
  v6 = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D25A9658(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1D22BD238(v5, &qword_1EC6DD060, &qword_1D2895950);
    return;
  }

  sub_1D25B9A58(v5, v9, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
  v10 = sub_1D25A8EC8();
  MEMORY[0x1EEE9AC00](v10);
  *&v18[-16] = v9;
  v11 = sub_1D25A6144(sub_1D25BA408, &v18[-32], v10, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
  v13 = v12;

  if (v13)
  {
    goto LABEL_9;
  }

  v14 = __OFADD__(v11, 1);
  v15 = v11 + 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_12;
  }

  v16 = sub_1D25A8EC8()[2];

  if (v15 < v16)
  {
    v17 = sub_1D25A8EC8();
    if ((v15 & 0x8000000000000000) == 0)
    {
      if (v15 < v17[2])
      {
        sub_1D25B9FDC(v17 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, v2, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);

        (*(v7 + 56))(v2, 0, 1, v6);
        sub_1D25A9FE0(v2);
        sub_1D22BD238(v2, &qword_1EC6DD060, &qword_1D2895950);
        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
      return;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_9:
  sub_1D25B9F7C(v9, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator);
}

uint64_t sub_1D25B5078(uint64_t a1, uint64_t a2)
{
  if ((_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator(0);
  return _s23ImagePlaygroundInternal32LoadingPageControlIndicatorStyleO2eeoiySbAC_ACtFZ_0(a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1;
}

uint64_t sub_1D25B50D8()
{
  v0 = sub_1D2871818();
  __swift_allocate_value_buffer(v0, qword_1ED8B0180);
  __swift_project_value_buffer(v0, qword_1ED8B0180);
  return sub_1D2871808();
}

uint64_t sub_1D25B515C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);

  return _s23ImagePlaygroundInternal32LoadingPageControlIndicatorStyleO2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t sub_1D25B51C4()
{
  sub_1D22729C0(v0 + 24);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__visiblePreviewID, &qword_1EC6D8F70, &qword_1D2881410);
  sub_1D2415B64(*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError + 8), *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError + 16));

  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__delegate);
  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentStyle;
  v2 = sub_1D2872008();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel_imageGenerationManager));

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentPreviewGenPriority, &qword_1EC6D8E60, &qword_1D28811F0);
  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__animatedEffectsInteractable);

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel___observationRegistrar;
  v4 = sub_1D2871A28();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_1D25B5398()
{
  sub_1D25B51C4();

  return swift_deallocClassInstance();
}

uint64_t ImageGeneration.PreviewImage.style.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D28785F8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D25B545C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D28785F8();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D25B54C8(uint64_t a1)
{
  *(a1 + 8) = sub_1D25B554C(&qword_1EC6DAB58, type metadata accessor for ImageGeneration.PreviewImage, &protocol conformance descriptor for ImageGeneration.PreviewImage);
  result = sub_1D25B554C(&qword_1EC6DE658, type metadata accessor for ImageGeneration.PreviewImage, &protocol conformance descriptor for ImageGeneration.PreviewImage);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D25B554C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D25B55BC(uint64_t a1)
{
  sub_1D25B57CC(319, &qword_1ED8A6C80, MEMORY[0x1E69695A8]);
  if (v1 <= 0x3F)
  {
    sub_1D2872008();
    if (v2 <= 0x3F)
    {
      sub_1D25B57CC(319, &qword_1ED89CE40, MEMORY[0x1E69E85F0]);
      if (v3 <= 0x3F)
      {
        sub_1D2871A28();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1D25B57CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D2878F18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D25B5850(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDA40, &unk_1D28982A0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1D2872438() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D22BC8FC;

  return sub_1D25B0688(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_1D25B59C8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D25B554C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1D2877EF8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D25B554C(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1D2877F98();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D25B6F94(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D25B5CA8(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v4 = type metadata accessor for Bubble(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v23 = v2;
  v11 = *v2;
  sub_1D28797D8();
  sub_1D2846EE0();
  sub_1D2877F38();

  v12 = sub_1D2879828();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    while (1)
    {
      sub_1D25B9FDC(*(v11 + 48) + v16 * v14, v7, type metadata accessor for Bubble);
      v17 = sub_1D2849278(v7, a2);
      sub_1D25B9F7C(v7, type metadata accessor for Bubble);
      if (v17)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D25B9F7C(a2, type metadata accessor for Bubble);
    sub_1D25B9FDC(*(v11 + 48) + v16 * v14, v24, type metadata accessor for Bubble);
    return 0;
  }

  else
  {
LABEL_5:
    v18 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D25B9FDC(a2, v10, type metadata accessor for Bubble);
    v25 = *v18;
    sub_1D25B725C(v10, v14, isUniquelyReferenced_nonNull_native);
    v20 = v24;
    *v18 = v25;
    sub_1D25B9A58(a2, v20, type metadata accessor for Bubble);
    return 1;
  }
}

uint64_t sub_1D25B5F28(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D28797D8();
  sub_1D2877F38();
  v8 = sub_1D2879828();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1D2879618() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_1D2870F68();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_1D2870F68();
    sub_1D25B74BC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1D25B6078(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D25B554C(&qword_1ED8A6C10, MEMORY[0x1E696E310], MEMORY[0x1E696E320]);
  v33 = a2;
  v11 = sub_1D2877EF8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D25B554C(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
      v21 = sub_1D2877F98();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D25B763C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_1D25B6358(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D2871818();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE668, &qword_1D28965D8);
  v6 = sub_1D2879108();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1D25B554C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_1D2877EF8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

void sub_1D25B66B4(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Bubble(0);
  v32 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE678, &qword_1D28966A0);
  v7 = sub_1D2879108();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      sub_1D25B9A58(*(v6 + 48) + v20 * (v17 | (v9 << 6)), v5, type metadata accessor for Bubble);
      sub_1D28797D8();
      sub_1D2846EE0();
      sub_1D2877F38();

      v21 = sub_1D2879828();
      v22 = -1 << *(v8 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_1D25B9A58(v5, *(v8 + 48) + v16 * v20, type metadata accessor for Bubble);
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero((v6 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v31;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_1D25B69D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF88, &unk_1D2885F80);
  v4 = sub_1D2879108();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D28797D8();
      sub_1D2877F38();
      v21 = sub_1D2879828();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D25B6C38(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1D2872008();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE680, &qword_1D28966A8);
  v6 = sub_1D2879108();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1D25B554C(&qword_1ED8A6C10, MEMORY[0x1E696E310], MEMORY[0x1E696E320]);
      v21 = sub_1D2877EF8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

uint64_t sub_1D25B6F94(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1D2871818();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D25B6358(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D25B7C94(MEMORY[0x1E69695A8], &qword_1EC6DE668, &qword_1D28965D8);
      goto LABEL_12;
    }

    sub_1D25B7ECC(v11 + 1);
  }

  v13 = *v3;
  sub_1D25B554C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v14 = sub_1D2877EF8();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1D25B554C(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v22 = sub_1D2877F98();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D28796D8();
  __break(1u);
  return result;
}

uint64_t sub_1D25B725C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for Bubble(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 > v13 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v26 = v10;
    sub_1D25B66B4(v13 + 1);
  }

  else
  {
    if (v14 > v13)
    {
      sub_1D25B792C();
      goto LABEL_12;
    }

    v26 = v10;
    sub_1D25B81E8(v13 + 1);
  }

  v15 = *v4;
  sub_1D28797D8();
  sub_1D2846EE0();
  sub_1D2877F38();

  v16 = sub_1D2879828();
  v17 = -1 << *(v15 + 32);
  a2 = v16 & ~v17;
  if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v9 + 72);
    do
    {
      sub_1D25B9FDC(*(v15 + 48) + v19 * a2, v12, type metadata accessor for Bubble);
      v20 = sub_1D2849278(v12, a1);
      sub_1D25B9F7C(v12, type metadata accessor for Bubble);
      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D25B9A58(a1, *(v21 + 48) + *(v9 + 72) * a2, type metadata accessor for Bubble);
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v21 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D28796D8();
  __break(1u);
  return result;
}

void sub_1D25B74BC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1D25B69D8(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1D25B7B38();
      goto LABEL_16;
    }

    sub_1D25B84DC(v8 + 1);
  }

  v10 = *v4;
  sub_1D28797D8();
  sub_1D2877F38();
  v11 = sub_1D2879828();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1D28796D8();
  __break(1u);
}

uint64_t sub_1D25B763C(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1D2872008();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D25B6C38(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D25B7C94(MEMORY[0x1E696E310], &unk_1EC6DE680, &qword_1D28966A8);
      goto LABEL_12;
    }

    sub_1D25B8714(v11 + 1);
  }

  v13 = *v3;
  sub_1D25B554C(&qword_1ED8A6C10, MEMORY[0x1E696E310], MEMORY[0x1E696E320]);
  v14 = sub_1D2877EF8();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1D25B554C(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
      v22 = sub_1D2877F98();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D28796D8();
  __break(1u);
  return result;
}

void sub_1D25B792C()
{
  v1 = v0;
  v2 = type metadata accessor for Bubble(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE678, &qword_1D28966A0);
  v6 = *v0;
  v7 = sub_1D28790F8();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1D25B9FDC(*(v6 + 48) + v21, v5, type metadata accessor for Bubble);
        sub_1D25B9A58(v5, *(v8 + 48) + v21, type metadata accessor for Bubble);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_1D25B7B38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF88, &unk_1D2885F80);
  v2 = *v0;
  v3 = sub_1D28790F8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        sub_1D2870F68();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1D25B7C94(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_1D28790F8();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    v29 = v8 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
      (*(v8 + 32))(*(v13 + 48) + v25, v10, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }
}

void sub_1D25B7ECC(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1D2871818();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE668, &qword_1D28965D8);
  v7 = sub_1D2879108();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1D25B554C(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_1D2877EF8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_1D25B81E8(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for Bubble(0);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE678, &qword_1D28966A0);
  v7 = sub_1D2879108();
  v8 = v7;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v30 + 72);
      sub_1D25B9FDC(*(v6 + 48) + v19 * (v16 | (v9 << 6)), v5, type metadata accessor for Bubble);
      sub_1D28797D8();
      sub_1D2846EE0();
      sub_1D2877F38();

      v20 = sub_1D2879828();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      sub_1D25B9A58(v5, *(v8 + 48) + v15 * v19, type metadata accessor for Bubble);
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_1D25B84DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAF88, &unk_1D2885F80);
  v4 = sub_1D2879108();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D28797D8();
      sub_1D2870F68();
      sub_1D2877F38();
      v20 = sub_1D2879828();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D25B8714(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1D2872008();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE680, &qword_1D28966A8);
  v7 = sub_1D2879108();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1D25B554C(&qword_1ED8A6C10, MEMORY[0x1E696E310], MEMORY[0x1E696E320]);
      v21 = sub_1D2877EF8();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_1D25B8A30(uint64_t a1)
{
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  isUniquelyReferenced_nonNull = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((isUniquelyReferenced_nonNull & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = v1[2];
  v8 = v4 - v7;
  if (__OFSUB__(v4, v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = v1[1];
  sub_1D2879678();
  swift_unknownObjectRetain();
  v10 = swift_dynamicCastClass();
  if (!v10)
  {
    swift_unknownObjectRelease();
    v10 = MEMORY[0x1E69E7CC0];
  }

  v11 = *(v10 + 16);
  if (v9 + 8 * v7 + 8 * v8 != v10 + 8 * v11 + 32)
  {

    goto LABEL_9;
  }

  v12 = *(v10 + 24);

  v13 = (v12 >> 1) - v11;
  v14 = __OFADD__(v8, v13);
  v8 += v13;
  if (!v14)
  {
LABEL_9:
    if (v8 >= a1)
    {
LABEL_17:
      *v1 = v5;
      return;
    }

LABEL_10:
    v15 = v1[2];
    if (__OFSUB__(v4, v15))
    {
      __break(1u);
    }

    else
    {
      v16 = sub_1D27CE9A8(v4 - v15, a1);
      if (v4 >= v15)
      {
        v5 = v16;
        v17 = v16 + 4;
        memcpy(v16 + 4, (v1[1] + 8 * v15), 8 * (v4 - v15));
        if (!__OFSUB__(0, v15))
        {
          v18 = v5[2];
          v14 = __OFADD__(v15, v18);
          v19 = v15 + v18;
          if (!v14)
          {
            if (v19 >= v15)
            {
              if ((v19 & 0x8000000000000000) == 0)
              {
                v20 = (2 * v19) | 1;
                swift_unknownObjectRelease();
                v1[1] = &v17[-v15];
                v1[2] = v15;
                v1[3] = v20;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
}

void sub_1D25B8BA8(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  v8 = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v31 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v31)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v14 = v12 - a3;
  if (__OFSUB__(v12, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v15 = v8 - a2;
  if (__OFSUB__(v8, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v31 = __OFSUB__(v15, v14);
  v16 = v15 - v14;
  if (v31)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v39 = v16;
  v18 = (v10 + 32);
  v19 = v10 + 32 + 8 * a2;
  v37 = v10;
  v38 = (v19 + 8 * a3);
  sub_1D25B9070(v8);
  if (v20)
  {
    v21 = v20;
    v36 = a4;
    v22 = v4[2];
    v23 = (v4[1] + 8 * v22);
    v24 = &v23[8 * a2];
    if (v18 != v23 || v18 >= v24)
    {
      memmove(v18, v23, 8 * a2);
    }

    v36(v19, a3);
    v25 = &v24[8 * v39];
    if (v38 != v25 || v38 >= &v25[8 * v14])
    {
      memmove(v38, v25, 8 * v14);
    }

    *(v21 + 16) = 0;
  }

  else
  {
    v22 = v4[2];
    v27 = v22 + a2;
    if (__OFADD__(v22, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v27 < v22)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v27, v22))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v28 = v4[1];
    memcpy(v18, (v28 + 8 * v22), 8 * a2);
    a4(&v18[8 * a2], a3);
    v29 = v27 + v39;
    if (__OFADD__(v27, v39))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v30 = v4[3] >> 1;
    v31 = __OFSUB__(v30, v29);
    v32 = v30 < v29;
    v33 = v30 - v29;
    if (v32)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v31)
    {
LABEL_45:
      __break(1u);
      return;
    }

    memcpy(v38, (v28 + 8 * v29), 8 * v33);
  }

  swift_unknownObjectRelease();
  if (__OFSUB__(0, v22))
  {
    goto LABEL_36;
  }

  v34 = *(v37 + 16);
  v31 = __OFADD__(v22, v34);
  v35 = v22 + v34;
  if (v31)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v35 < v22)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v35 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v37;
  v4[1] = &v18[-8 * v22];
  v4[2] = v22;
  v4[3] = (2 * v35) | 1;

  sub_1D2870F78();
}

void sub_1D25B8DDC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = a1 - v6;
  if (__OFSUB__(a1, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return;
  }

  sub_1D2879678();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);
  v5 = __OFADD__(v9, v7);
  v10 = v9 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(v8 + 16) = v10;

  v11 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v11 < 0)
  {
LABEL_15:
    __break(1u);
    return;
  }

  *(v1 + 24) = v3 & 1 | (2 * v11);
}

void sub_1D25B8E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = a1;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_1D2879678();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = *(v11 + 16);
  v13 = a4 + 8 * a5 + 8 * v8;
  if (v13 == v11 + 8 * v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x1E69E7CC0];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + 8 * v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + 8 * v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  sub_1D27CE9A8(v6, v25);
}

void sub_1D25B9070(uint64_t a1)
{
  if (swift_isUniquelyReferenced_nonNull())
  {
    v4 = v1[2];
    v3 = v1[3];
    v5 = (v3 >> 1) - v4;
    if (__OFSUB__(v3 >> 1, v4))
    {
      __break(1u);
      goto LABEL_20;
    }

    v6 = v1[1] + 8 * v4;
    if (v3)
    {
      sub_1D2879678();
      swift_unknownObjectRetain();
      v7 = swift_dynamicCastClass();
      if (!v7)
      {
        swift_unknownObjectRelease();
        v7 = MEMORY[0x1E69E7CC0];
      }

      v8 = *(v7 + 16);
      if (v6 + 8 * v5 == v7 + 8 * v8 + 32)
      {
        v10 = *(v7 + 24);

        v11 = (v10 >> 1) - v8;
        v12 = __OFADD__(v5, v11);
        v9 = v5 + v11;
        if (v12)
        {
          __break(1u);
          return;
        }

LABEL_10:
        if (v9 < a1)
        {
          return;
        }

        sub_1D2879678();
        swift_unknownObjectRetain();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          swift_unknownObjectRelease();
          v13 = MEMORY[0x1E69E7CC0];
        }

        v14 = v6 - v13 - 25;
        if (v6 - v13 - 32 >= 0)
        {
          v14 = v6 - v13 - 32;
        }

        v12 = __OFADD__(v5, v14 >> 3);
        v3 = v5 + (v14 >> 3);
        if (!v12)
        {
          if (v3 >= *(v13 + 16))
          {
            return;
          }

LABEL_21:
          sub_1D278CD30(v3);
          return;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    v9 = v5;
    goto LABEL_10;
  }
}

void sub_1D25B91D0(void *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    goto LABEL_49;
  }

  v5 = a1[4];
  v37 = a1[3] >> 1;
  if (v5 == v37)
  {
    return;
  }

  v33 = a1[2];
  if (v5 < v33 || v5 >= v37)
  {
    goto LABEL_50;
  }

  v7 = v1;
  v8 = v5 + 1;
  v9 = *(a1[1] + 8 * v5);
  v32 = a1[1];
  while (!__OFADD__(v4, 1))
  {
    sub_1D25B8E94(v4, v4 + 1, *v7, v7[1], v3, v2);
    v38 = v11;
    v12 = sub_1D25B9054();
    v13 = v7;
    sub_1D25B8BA8(&v38, v4, 0, v12);

    v3 = v7[2];
    v2 = v7[3];
    v14 = (v2 >> 1) - v3;
    if (__OFSUB__(v2 >> 1, v3))
    {
      goto LABEL_44;
    }

    v35 = v2 >> 1;
    v34 = v7[1];
    v15 = v34 + 8 * v3;
    if (v2)
    {
      v36 = v7[3];
      sub_1D2879678();
      swift_unknownObjectRetain();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
        swift_unknownObjectRelease();
        v16 = MEMORY[0x1E69E7CC0];
      }

      v17 = *(v16 + 16);
      if (v15 + 8 * v14 == v16 + 8 * v17 + 32)
      {
        v19 = *(v16 + 24);

        v20 = (v19 >> 1) - v17;
        v21 = __OFADD__(v14, v20);
        v18 = v14 + v20;
        if (v21)
        {
          goto LABEL_48;
        }

        v7 = v13;
      }

      else
      {

        v18 = v14;
      }

      v2 = v36;
      if (v4 >= v18)
      {
LABEL_33:
        v10 = 0;
        goto LABEL_34;
      }
    }

    else
    {
      v18 = (v2 >> 1) - v3;
      if (v4 >= v14)
      {
        goto LABEL_33;
      }
    }

    *(v15 + 8 * v4) = v9;
    v22 = v4 + 1;
    if (v8 != v37)
    {
      v23 = 0;
      while (1)
      {
        if (v8 < v33)
        {
          goto LABEL_42;
        }

        v24 = v23;
        if (v8 + v23 >= v37)
        {
          goto LABEL_42;
        }

        v9 = *(v32 + 8 * v8 + 8 * v23);
        if (!(v22 - v18 + v23))
        {
          break;
        }

        *(v34 + 8 * v4 + 8 * v3 + 8 + 8 * v23++) = v9;
        if (!(v8 - v37 + v24 + 1))
        {
          v9 = 0;
          v4 = v22 + v23;
          v8 = v37;
LABEL_31:
          v10 = v22 + v24 < v18;
          goto LABEL_34;
        }
      }

      v8 += v23 + 1;
      v4 = v18;
      goto LABEL_31;
    }

    v9 = 0;
    v10 = 1;
    v8 = v37;
    ++v4;
LABEL_34:
    v25 = v4 - v14;
    if (__OFSUB__(v4, v14))
    {
      goto LABEL_45;
    }

    if (v25)
    {
      v26 = v10;
      v27 = v2;
      sub_1D2879678();
      swift_unknownObjectRetain();
      v28 = swift_dynamicCastClass();
      if (!v28)
      {
        swift_unknownObjectRelease();
        v28 = MEMORY[0x1E69E7CC0];
      }

      v29 = *(v28 + 16);
      v21 = __OFADD__(v29, v25);
      v30 = v29 + v25;
      if (v21)
      {
        goto LABEL_46;
      }

      *(v28 + 16) = v30;

      v31 = v35 + v25;
      if (__OFADD__(v35, v25))
      {
        goto LABEL_47;
      }

      if ((v31 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v2 = v27 & 1 | (2 * v31);
      v7[3] = v2;
      v10 = v26;
    }

    if (v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1D25B94E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_1D2879678();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x1E69E7CC0];
  }

  v14 = *(v13 + 16);
  if (v12 + 8 * v8 + 8 * v9 != v13 + 8 * v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  v19 = v9 + v6;
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < v19)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v20 = 2 * v15;
    if (v20 > v19)
    {
      v19 = v20;
    }
  }

  sub_1D25B8A30(v19);
  v22 = v4[2];
  v21 = v4[3];
  v23 = (v21 >> 1) - v22;
  if (__OFSUB__(v21 >> 1, v22))
  {
    goto LABEL_37;
  }

  v24 = (v4[1] + 8 * v22 + 8 * v23);
  if ((v21 & 1) == 0)
  {
LABEL_21:
    v27 = v23;
    goto LABEL_23;
  }

  sub_1D2879678();
  swift_unknownObjectRetain();
  v25 = swift_dynamicCastClass();
  if (!v25)
  {
    swift_unknownObjectRelease();
    v25 = MEMORY[0x1E69E7CC0];
  }

  v26 = *(v25 + 16);
  if (v24 != (v25 + 8 * v26 + 32))
  {

    goto LABEL_21;
  }

  v28 = *(v25 + 24);

  v29 = (v28 >> 1) - v26;
  v18 = __OFADD__(v23, v29);
  v27 = v23 + v29;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v30 = v27 - v23;
  if (__OFSUB__(v27, v23))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v30 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  memcpy(v24, (a2 + 8 * a3), 8 * v6);
  if (v6 > 0)
  {
    if (__OFADD__(v23, v6))
    {
LABEL_44:
      __break(1u);
      return;
    }

    sub_1D25B8DDC(v23 + v6);
  }

LABEL_31:
  if (v6 == v30)
  {
    v33[0] = a1;
    v33[1] = a2;
    v33[2] = a3;
    v33[3] = a4;
    v33[4] = v5;
    sub_1D25B91D0(v33);
  }
}

uint64_t sub_1D25B971C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94F0, &qword_1D2882EB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, &v21 - v12, &qword_1EC6D8F70, &qword_1D2881410);
  sub_1D22BD1D0(a2, &v13[v15], &qword_1EC6D8F70, &qword_1D2881410);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D22BD1D0(v13, v10, &qword_1EC6D8F70, &qword_1D2881410);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D25B554C(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v13, &qword_1EC6D8F70, &qword_1D2881410);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6D94F0, &qword_1D2882EB0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &qword_1EC6D8F70, &qword_1D2881410);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D25B9A58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D25B9BF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D28785F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE660, &unk_1D2896400);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, &v21 - v12, &qword_1EC6D8E60, &qword_1D28811F0);
  sub_1D22BD1D0(a2, &v13[v15], &qword_1EC6D8E60, &qword_1D28811F0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D22BD1D0(v13, v10, &qword_1EC6D8E60, &qword_1D28811F0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D25B554C(&unk_1ED89CFB0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E8600]);
      v18 = sub_1D2877F98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1D22BD238(v13, &qword_1EC6D8E60, &qword_1D28811F0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6DE660, &unk_1D2896400);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &qword_1EC6D8E60, &qword_1D28811F0);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D25B9F7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D25B9FDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D25BA0EC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__currentLocalizedGenerationError;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v0 + 40);
  *v3 = v1;
  *(v3 + 8) = v2;
  v7 = *(v3 + 16);
  *(v3 + 16) = v6;
  sub_1D2415B78(v1, v2, v6);
  sub_1D2415B64(v4, v5, v7);
}

uint64_t sub_1D25BA17C(uint64_t a1)
{
  result = sub_1D2871818();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LoadingPageControlIndicatorStyle(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D25BA248(uint64_t a1)
{
  *(a1 + 8) = sub_1D25B554C(&unk_1ED8A2DF8, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator, &unk_1D28966FC);
  result = sub_1D25B554C(&qword_1ED8A2DF0, type metadata accessor for PreviewsViewModel.LoadingPageControlIndicator, &unk_1D2896724);
  *(a1 + 16) = result;
  return result;
}

double sub_1D25BA364()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase);
  *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal17PreviewsViewModel__isInIdleScrollPhase) = *(v0 + 24);
  return sub_1D25AEE2C(v2);
}

uint64_t sub_1D25BA4D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99B8, &unk_1D287E890);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D22BD1D0(a1, &v5 - v3, &qword_1EC6D99B8, &unk_1D287E890);
  return sub_1D2875498();
}

void *sub_1D25BA580@<X0>(_BYTE *a1@<X8>)
{
  sub_1D25CD71C();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

void *sub_1D25BA61C@<X0>(void *a1@<X8>)
{
  sub_1D2459778();
  result = sub_1D2875638();
  *a1 = v3;
  return result;
}

uint64_t sub_1D25BA66C(uint64_t *a1)
{
  sub_1D2459778();
  sub_1D2870F78();
  return sub_1D2875648();
}

uint64_t PlaygroundHomeView.init(viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a1;
  v3 = sub_1D28764E8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = 0;
  sub_1D28772F8();
  v7 = v19;
  *(a2 + 16) = v18;
  *(a2 + 24) = v7;
  v8 = type metadata accessor for PlaygroundHomeView(0);
  v9 = v8[6];
  *(a2 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  swift_storeEnumTagMultiPayload();
  *(a2 + v8[7]) = 0;
  v18 = 0x403E000000000000;
  v10 = *MEMORY[0x1E6980F00];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_1D2459314();
  sub_1D2874748();
  v12 = a2 + v8[9];
  *v12 = swift_getKeyPath();
  *(v12 + 8) = 0;
  v13 = a2 + v8[10];
  *v13 = swift_getKeyPath();
  *(v13 + 8) = 0;
  v14 = v8[11];
  if (qword_1EC6D8968 != -1)
  {
    swift_once();
  }

  *(a2 + v14) = qword_1EC6E3B98;
  v18 = 0x403E000000000000;
  v11(v6, v10, v3);
  sub_1D2870F78();
  result = sub_1D2874748();
  *a2 = v16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t type metadata accessor for PlaygroundHomeView(uint64_t a1)
{
  result = qword_1EC6D8A40;
  if (!qword_1EC6D8A40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D25BA970(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 96);
}

void sub_1D25BAA40(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 97);
}

void sub_1D25BAB10(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D25CD3A8(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
  sub_1D28719E8();

  *a2 = *(v3 + 80);
}

void sub_1D25BABE0(BOOL *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v3 = *(v5 + 16);
  sub_1D2870F78();

  swift_getKeyPath();
  sub_1D25CD3A8(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource);

  *a2 = v4 == 1;
}

double sub_1D25BACDC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v5 = *(v12 + 16);
  sub_1D2870F78();

  sub_1D2877308();
  sub_1D2870F78();

  v6 = sub_1D23008B0();

  v7 = v6 & v4;
  if (v6 & v4)
  {
    v8 = 1;
  }

  else
  {
    v8 = 3;
  }

  v9 = *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource);
  if (v9 == 3)
  {
    if ((v7 & 1) == 0)
    {
LABEL_6:
      *(v5 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource) = v8;

      return result;
    }
  }

  else if (v9 == v8)
  {
    goto LABEL_6;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1D25CD3A8(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719D8();

  return result;
}

uint64_t PlaygroundHomeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v2 = type metadata accessor for PlaygroundHomeView(0);
  v31 = *(v2 - 8);
  v30 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6A0, &qword_1D28968E8);
  MEMORY[0x1EEE9AC00](v32);
  v5 = v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6A8, &qword_1D28968F0);
  MEMORY[0x1EEE9AC00](v33);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v28 - v9;
  v35 = v1;
  v28[2] = sub_1D2877848();
  v28[1] = v11;
  v28[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6B0, &qword_1D28968F8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6B8, &unk_1D2896900);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0, &unk_1D2884AD0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAD0, &unk_1D2896910);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0, &unk_1D287D430);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C8, &qword_1D2896920);
  v17 = type metadata accessor for HomeAnimationCoordinator(255);
  v18 = sub_1D25BBCF8();
  v19 = sub_1D25CD3A8(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  v36 = v16;
  v37 = v17;
  v38 = v18;
  v39 = v19;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = sub_1D22BD06C();
  v22 = sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0, &unk_1D2884AD0, MEMORY[0x1E697D680]);
  v23 = sub_1D23D4398();
  v36 = v12;
  v37 = MEMORY[0x1E69E6158];
  v38 = v13;
  v39 = v14;
  v40 = v15;
  v41 = OpaqueTypeConformance2;
  v42 = v21;
  v43 = v22;
  v44 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1D28774B8();
  v24 = v29;
  sub_1D25CC8CC(v28[3], v29, type metadata accessor for PlaygroundHomeView);
  v25 = (*(v31 + 80) + 16) & ~*(v31 + 80);
  v26 = swift_allocObject();
  sub_1D25CD3F0(v24, v26 + v25, type metadata accessor for PlaygroundHomeView);
  sub_1D22BB9D8(&qword_1EC6D7640, &qword_1EC6DE6A0, &qword_1D28968E8, MEMORY[0x1E6981880]);
  sub_1D2876828();

  sub_1D22BD238(v5, &qword_1EC6DE6A0, &qword_1D28968E8);
  sub_1D25BFCF0();
  sub_1D245980C();
  sub_1D22BD238(v7, &qword_1EC6DE6A8, &qword_1D28968F0);
  sub_1D245980C();
  return sub_1D22BD238(v10, &qword_1EC6DE6A8, &qword_1D28968F0);
}

uint64_t sub_1D25BB350@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a1;
  v84 = a2;
  v75 = sub_1D28758F8();
  v76 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE758, &qword_1D2896AF0);
  MEMORY[0x1EEE9AC00](v74);
  v5 = &v67 - v4;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C8, &qword_1D2896920);
  MEMORY[0x1EEE9AC00](v72);
  v7 = &v67 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6B8, &unk_1D2896900);
  v9 = *(v8 - 8);
  v79 = v8;
  v80 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v67 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6B0, &qword_1D28968F8);
  v12 = *(v11 - 8);
  v82 = v11;
  v83 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v78 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v67 - v15;
  v85 = a1;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE760, &qword_1D2896AF8);
  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE768, &qword_1D2896B00);
  v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE770, &qword_1D2896B08);
  v16 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE778, &qword_1D2896B10);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE780, &qword_1D2896B18);
  v18 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE788, &qword_1D2896B20);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE790, &qword_1D2896B28);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE798, &qword_1D2896B30);
  v21 = sub_1D25CB2E8();
  v86 = v20;
  v87 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v86 = v19;
  v87 = OpaqueTypeConformance2;
  v23 = swift_getOpaqueTypeConformance2();
  v86 = v18;
  v87 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE7B8, &qword_1D2896B48);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE7C0, &qword_1D2896B50);
  v27 = sub_1D2875FB8();
  v28 = sub_1D22BB9D8(&qword_1EC6D7978, &unk_1EC6DE7C0, &qword_1D2896B50, MEMORY[0x1E697C1A8]);
  v86 = v26;
  v87 = v27;
  v88 = v28;
  v89 = MEMORY[0x1E697C950];
  v29 = swift_getOpaqueTypeConformance2();
  v86 = v25;
  v87 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v86 = v16;
  v87 = v17;
  v88 = v24;
  v89 = v30;
  v31 = swift_getOpaqueTypeConformance2();
  v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE7D0, &qword_1D2896B58);
  v33 = sub_1D25CB3CC();
  v86 = v32;
  v87 = v33;
  v34 = swift_getOpaqueTypeConformance2();
  v86 = v69;
  v87 = v68;
  v88 = v31;
  v89 = v34;
  swift_getOpaqueTypeConformance2();
  v67 = v7;
  sub_1D2874F78();
  v70 = sub_1D28777F8();
  v36 = v35;
  v37 = v72;
  v38 = &v7[*(v72 + 36)];
  *v5 = sub_1D28756A8();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE7F0, &qword_1D2896B68);
  v40 = v71;
  sub_1D25BE2F8(v71, &v5[*(v39 + 44)]);
  v41 = v73;
  sub_1D28758E8();
  sub_1D22BB9D8(&unk_1EC6D76A8, &qword_1EC6DE758, &qword_1D2896AF0, MEMORY[0x1E69817F8]);
  sub_1D25CD3A8(&unk_1EC6D78F0, MEMORY[0x1E697C540], MEMORY[0x1E697C538]);
  v42 = v75;
  sub_1D28767A8();
  (*(v76 + 8))(v41, v42);
  sub_1D22BD238(v5, &qword_1EC6DE758, &qword_1D2896AF0);
  LOBYTE(v5) = sub_1D2876328();
  v43 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE7F8, &qword_1D2896B70) + 36)];
  *v43 = v5;
  *(v43 + 8) = 0u;
  *(v43 + 24) = 0u;
  v43[40] = 1;
  v44 = &v38[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6E0, &unk_1D2896930) + 36)];
  *v44 = v70;
  v44[1] = v36;
  v45 = v40[1];
  v46 = v40;
  v86 = *v40;
  v87 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  sub_1D2870F78();

  v47 = type metadata accessor for HomeAnimationCoordinator(0);
  v48 = sub_1D25BBCF8();
  v49 = sub_1D25CD3A8(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  v50 = v77;
  v51 = v67;
  sub_1D28767E8();

  sub_1D22BD238(v51, &qword_1EC6DE6C8, &qword_1D2896920);
  v52 = *(v46 + *(type metadata accessor for PlaygroundHomeView(0) + 44));
  v86 = v37;
  v87 = v47;
  v88 = v48;
  v89 = v49;
  v53 = swift_getOpaqueTypeConformance2();
  v55 = v78;
  v54 = v79;
  v56 = sub_1D24D15C0(v52, v79, v53, v78);
  (*(v80 + 8))(v50, v54, v56);
  v57 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0, &unk_1D2884AD0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DAAD0, &unk_1D2896910);
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D94B0, &unk_1D287D430);
  v60 = sub_1D22BD06C();
  v61 = sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0, &unk_1D2884AD0, MEMORY[0x1E697D680]);
  v62 = sub_1D23D4398();
  v86 = v54;
  v87 = MEMORY[0x1E69E6158];
  v88 = v57;
  v89 = v58;
  v90 = v59;
  v91 = v53;
  v92 = v60;
  v93 = v61;
  v94 = v62;
  swift_getOpaqueTypeConformance2();
  v64 = v81;
  v63 = v82;
  sub_1D245980C();
  v65 = *(v83 + 8);
  v65(v55, v63);
  sub_1D245980C();
  return (v65)(v64, v63);
}

unint64_t sub_1D25BBCF8()
{
  result = qword_1EC6D7D80;
  if (!qword_1EC6D7D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C8, &qword_1D2896920);
    sub_1D22BB9D8(&qword_1EC6D7968, &unk_1EC6DE6D0, &qword_1D2896928, MEMORY[0x1E697C1A8]);
    sub_1D22BB9D8(&qword_1EC6D7948, &unk_1EC6DE6E0, &unk_1D2896930, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7D80);
  }

  return result;
}

uint64_t sub_1D25BBDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for PlaygroundHomeView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE778, &qword_1D2896B10);
  v7 = *(v6 - 8);
  v48 = v6;
  v49 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v43 - v8;
  v47 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE768, &qword_1D2896B00);
  v11 = *(v10 - 8);
  v50 = v10;
  v51 = v11;
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v43 - v12;
  sub_1D25BC418(v9);
  v13 = a1;
  sub_1D25CC8CC(a1, &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundHomeView);
  sub_1D2878568();
  v14 = sub_1D2878558();
  v15 = *(v4 + 80);
  v16 = (v15 + 32) & ~v15;
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  *(v17 + 16) = v14;
  *(v17 + 24) = v18;
  sub_1D25CD3F0(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for PlaygroundHomeView);
  v45 = a1;
  sub_1D25CC8CC(a1, &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundHomeView);
  v19 = sub_1D2878558();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = MEMORY[0x1E69E85E0];
  sub_1D25CD3F0(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v16, type metadata accessor for PlaygroundHomeView);
  sub_1D2877528();
  v43 = v55;
  v44 = v56;
  sub_1D25CC8CC(v13, &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundHomeView);
  v21 = swift_allocObject();
  sub_1D25CD3F0(&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + ((v15 + 16) & ~v15), type metadata accessor for PlaygroundHomeView);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE780, &qword_1D2896B18);
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE788, &qword_1D2896B20);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE790, &qword_1D2896B28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE798, &qword_1D2896B30);
  v26 = sub_1D25CB2E8();
  v54 = v25;
  v55 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v54 = v24;
  v55 = OpaqueTypeConformance2;
  v28 = swift_getOpaqueTypeConformance2();
  v54 = v23;
  v55 = v28;
  v29 = swift_getOpaqueTypeConformance2();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE7B8, &qword_1D2896B48);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE7C0, &qword_1D2896B50);
  v32 = sub_1D2875FB8();
  v33 = sub_1D22BB9D8(&qword_1EC6D7978, &unk_1EC6DE7C0, &qword_1D2896B50, MEMORY[0x1E697C1A8]);
  v54 = v31;
  v55 = v32;
  v56 = v33;
  v57 = MEMORY[0x1E697C950];
  v34 = swift_getOpaqueTypeConformance2();
  v54 = v30;
  v55 = v34;
  v42 = swift_getOpaqueTypeConformance2();
  v36 = v46;
  v35 = v47;
  v37 = v48;
  sub_1D28769D8();

  (*(v49 + 8))(v35, v37);
  v53 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE770, &qword_1D2896B08);
  v54 = v37;
  v55 = v22;
  v56 = v29;
  v57 = v42;
  swift_getOpaqueTypeConformance2();
  v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6DE7D0, &qword_1D2896B58);
  v39 = sub_1D25CB3CC();
  v54 = v38;
  v55 = v39;
  swift_getOpaqueTypeConformance2();
  v40 = v50;
  sub_1D2876F08();
  return (*(v51 + 8))(v36, v40);
}

uint64_t sub_1D25BC418@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE798, &qword_1D2896B30);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v27 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE790, &qword_1D2896B28);
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE788, &qword_1D2896B20);
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - v11;
  *v5 = sub_1D2877848();
  v5[1] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA68, &qword_1D2896F80);
  sub_1D25BFDA8(v2, v5 + *(v14 + 44));
  v15 = sub_1D2877848();
  v17 = v16;
  v18 = v5 + *(v3 + 36);
  sub_1D2876F18();
  v19 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE7B0, &qword_1D2896B40) + 36)];
  *v19 = v15;
  v19[1] = v17;
  sub_1D2875798();
  v20 = sub_1D25CB2E8();
  sub_1D28769E8();

  sub_1D22BD238(v5, &qword_1EC6DE798, &qword_1D2896B30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA8, &qword_1D287F8B8);
  sub_1D2873AA8();
  *(swift_allocObject() + 16) = xmmword_1D287F500;
  sub_1D2873A68();
  v34[3] = type metadata accessor for PlaygroundHomeView(0);
  v34[4] = sub_1D25CD3A8(&qword_1EC6D8A50, type metadata accessor for PlaygroundHomeView, &protocol conformance descriptor for PlaygroundHomeView);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v34);
  sub_1D25CC8CC(v27, boxed_opaque_existential_1, type metadata accessor for PlaygroundHomeView);
  v32 = v3;
  v33 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1D2876E88();

  (*(v28 + 8))(v8, v6);
  __swift_destroy_boxed_opaque_existential_0(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6E0D60, &qword_1D2896F88);
  sub_1D28751E8();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D287F550;
  sub_1D28751C8();
  sub_1D28751D8();
  v34[0] = v6;
  v34[1] = OpaqueTypeConformance2;
  v24 = swift_getOpaqueTypeConformance2();
  v25 = v29;
  MEMORY[0x1D389F7C0](2, v23, v29, v24);

  return (*(v30 + 8))(v12, v25);
}

double sub_1D25BC934@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v45 = sub_1D2875FB8();
  v40 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE7C0, &qword_1D2896B50);
  v39 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE7B8, &qword_1D2896B48);
  v8 = *(v7 - 8);
  v41 = v7;
  v42 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v37 - v9;
  v47 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE9C8, &qword_1D2896E58);
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9D0, &qword_1D2896E60);
  v11 = type metadata accessor for HomeAnimationCoordinator(255);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9D8, &qword_1D2896E68);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9E0, &qword_1D2896E70);
  v14 = sub_1D25CBF24();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9F8, &qword_1D2896E78);
  v16 = sub_1D25CC010();
  v52 = v15;
  v53 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52 = v12;
  v53 = v13;
  v54 = v14;
  v55 = OpaqueTypeConformance2;
  v18 = swift_getOpaqueTypeConformance2();
  v19 = sub_1D25CD3A8(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  v52 = v10;
  v53 = v11;
  v54 = v18;
  v55 = v19;
  swift_getOpaqueTypeConformance2();
  sub_1D2874F78();
  v20 = a1[1];
  v52 = *a1;
  v53 = v20;
  v21 = v52;
  v22 = v20;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  sub_1D2870F78();

  v23 = sub_1D25E29D8();
  v25 = v24;

  v52 = v23;
  v53 = v25;
  type metadata accessor for PlaygroundHomeView(0);
  sub_1D28779E8();
  sub_1D2875B58();

  v38 = sub_1D22BB9D8(&qword_1EC6D7978, &unk_1EC6DE7C0, &qword_1D2896B50, MEMORY[0x1E697C1A8]);
  v26 = v45;
  v27 = v44;
  sub_1D2876C18();
  (*(v40 + 8))(v4, v26);
  (*(v39 + 8))(v6, v27);
  v49 = v21;
  v50 = v22;
  v28 = v21;
  v29 = v22;
  sub_1D2877328();
  v30 = v52;
  v31 = v53;
  v32 = v54;
  swift_getKeyPath();
  v49 = v30;
  v50 = v31;
  v51 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE888, &unk_1D2896C50);
  sub_1D2877508();

  v33 = v48;

  swift_allocObject();
  v52 = v28;
  v53 = v29;
  sub_1D2877308();
  swift_weakInit();

  sub_1D2870F78();
  v52 = v44;
  v53 = v45;
  v54 = v38;
  v55 = MEMORY[0x1E697C950];
  swift_getOpaqueTypeConformance2();
  v34 = v41;
  v35 = v46;
  sub_1D28766E8();

  (*(v42 + 8))(v35, v34);

  return result;
}

uint64_t sub_1D25BCF48(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE9D0, &qword_1D2896E60);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - v4;
  sub_1D25BD180(&v14 - v4);
  v6 = a1[1];
  v15 = *a1;
  v16 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  sub_1D2870F78();

  type metadata accessor for HomeAnimationCoordinator(0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9D8, &qword_1D2896E68);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9E0, &qword_1D2896E70);
  v9 = sub_1D25CBF24();
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9F8, &qword_1D2896E78);
  v11 = sub_1D25CC010();
  v15 = v10;
  v16 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v15 = v7;
  v16 = v8;
  v17 = v9;
  v18 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1D25CD3A8(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  sub_1D28767E8();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1D25BD180@<X0>(uint64_t a1@<X8>)
{
  v32[1] = a1;
  v2 = type metadata accessor for DetailView(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE9D8, &qword_1D2896E68);
  MEMORY[0x1EEE9AC00](v32[0]);
  v6 = v32 - v5;
  v8 = v1[1];
  *&v35 = *v1;
  v7 = v35;
  *(&v35 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v9 = sub_1D2565F18();

  type metadata accessor for PlaygroundHomeView(0);
  v10 = sub_1D28779E8();
  *&v35 = v7;
  *(&v35 + 1) = v8;
  sub_1D2877308();
  v11 = *(v34 + 16);
  sub_1D2870F78();

  swift_getKeyPath();
  *&v35 = v11;
  sub_1D25CD3A8(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  LODWORD(v7) = *(v11 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

  *v4 = v9;
  *(v4 + 1) = v10;
  v4[16] = v7 == 1;
  LOBYTE(v34) = 0;
  sub_1D28772F8();
  v12 = *(&v35 + 1);
  v4[24] = v35;
  *(v4 + 4) = v12;
  *(v4 + 5) = swift_getKeyPath();
  v4[48] = 0;
  v13 = v2[9];
  *&v4[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE690, &qword_1D287F5B0);
  swift_storeEnumTagMultiPayload();
  v14 = &v4[v2[10]];
  type metadata accessor for HomeAnimationCoordinator(0);
  sub_1D25CD3A8(&qword_1ED89FD50, type metadata accessor for HomeAnimationCoordinator, &unk_1D2897B40);
  *v14 = sub_1D28744C8();
  v14[8] = v15 & 1;
  v16 = &v4[v2[11]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = &v4[v2[12]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = &v4[v2[13]];
  LOBYTE(v34) = 0;
  sub_1D28772F8();
  v19 = *(&v35 + 1);
  *v18 = v35;
  *(v18 + 1) = v19;
  v20 = &v4[v2[14]];
  LOBYTE(v34) = 0;
  sub_1D28772F8();
  v21 = *(&v35 + 1);
  *v20 = v35;
  *(v20 + 1) = v21;
  v22 = &v4[v2[15]];
  v34 = 0x3FF0000000000000;
  sub_1D28772F8();
  v23 = *(&v35 + 1);
  *v22 = v35;
  *(v22 + 1) = v23;
  v24 = &v4[v2[16]];
  *v24 = sub_1D28742D8() & 1;
  *(v24 + 1) = v25;
  v24[16] = v26 & 1;
  v27 = &v4[v2[17]];
  *v27 = xmmword_1D2896840;
  *(v27 + 1) = xmmword_1D2896850;
  *(v27 + 4) = 0x3FE4CCCCCCCCCCCDLL;
  v28 = v2[18];
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA20, &qword_1D2896F10);
  sub_1D28772F8();
  *&v4[v28] = v35;
  sub_1D25CD3A8(&qword_1EC6DE9F0, type metadata accessor for DetailView, &unk_1D28A14C8);
  sub_1D2876CC8();
  sub_1D25CC934(v4, type metadata accessor for DetailView);
  v33 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE9E0, &qword_1D2896E70);
  sub_1D25CBF24();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9F8, &qword_1D2896E78);
  v30 = sub_1D25CC010();
  *&v35 = v29;
  *(&v35 + 1) = v30;
  swift_getOpaqueTypeConformance2();
  sub_1D2876F08();
  return sub_1D22BD238(v6, &qword_1EC6DE9D8, &qword_1D2896E68);
}

void sub_1D25BD6C8(void *a1@<X8>)
{
  v2 = sub_1D23C7998()[4];

  *a1 = v2;
}

void sub_1D25BD718(void **a1)
{
  v1 = *a1;
  v2 = sub_1D23C7998();
  v4 = v2[4];
  v2[4] = v1;
  v3 = v1;
}

uint64_t sub_1D25BD784@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE968, &qword_1D2896D88);
  v4 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v37 = v34 - v5;
  v6 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34[1] = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE7E0, &qword_1D2896B60);
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v35 = v34 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE7D0, &qword_1D2896B58);
  MEMORY[0x1EEE9AC00](v40);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v34 - v12;
  v14 = *a1;
  v15 = a1[1];
  v34[0] = a1;
  v43 = v14;
  v44 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v16 = sub_1D25670A4();

  if (v16)
  {
    goto LABEL_7;
  }

  v43 = v14;
  v44 = v15;
  sub_1D2877308();
  v17 = v42;
  v18 = *(v42 + 100);
  v38 = a2;
  if (v18)
  {
    swift_getKeyPath();
    v43 = v17;
    sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719E8();

    v19 = *(v17 + 112);

    if (v19 != 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v43 = v14;
  v44 = v15;
  sub_1D2877308();
  v20 = v42;
  swift_getKeyPath();
  v43 = v20;
  sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  v21 = *(v20 + 99);

  if ((v21 & 1) == 0)
  {
    v27 = sub_1D2875BF8();
    MEMORY[0x1EEE9AC00](v27);
    v34[-2] = v34[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE970, &qword_1D2896DE0);
    sub_1D25CBB0C();
    v28 = v35;
    sub_1D28745C8();
    v29 = sub_1D22BB9D8(&unk_1EC6D7EB8, &unk_1EC6DE7E0, &qword_1D2896B60, MEMORY[0x1E697BEF0]);
    v30 = v37;
    v31 = v39;
    MEMORY[0x1D389E720](v28, v39, v29);
    v32 = v41;
    (*(v4 + 16))(v10, v30, v41);
    (*(v4 + 56))(v10, 0, 1, v32);
    v43 = v31;
    v44 = v29;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D389E750](v10, v32, OpaqueTypeConformance2);
    sub_1D22BD238(v10, &unk_1EC6DE7D0, &qword_1D2896B58);
    (*(v4 + 8))(v30, v32);
    (*(v36 + 8))(v28, v31);
    goto LABEL_8;
  }

LABEL_7:
  v22 = v41;
  (*(v4 + 56))(v10, 1, 1, v41);
  v23 = sub_1D22BB9D8(&unk_1EC6D7EB8, &unk_1EC6DE7E0, &qword_1D2896B60, MEMORY[0x1E697BEF0]);
  v43 = v39;
  v44 = v23;
  v24 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1D389E750](v10, v22, v24);
  sub_1D22BD238(v10, &unk_1EC6DE7D0, &qword_1D2896B58);
LABEL_8:
  v25 = sub_1D25CB3CC();
  MEMORY[0x1D389E720](v13, v40, v25);
  return sub_1D22BD238(v13, &unk_1EC6DE7D0, &qword_1D2896B58);
}

uint64_t sub_1D25BDDAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_1D2873998();
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaygroundHomeView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8, &qword_1D2888DB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE998, &qword_1D2896DF8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE988, &qword_1D2896DF0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE978, &qword_1D2896DE8);
  MEMORY[0x1EEE9AC00](v33);
  v18 = &v32 - v17;
  sub_1D2874278();
  v19 = sub_1D2874288();
  (*(*(v19 - 8) + 56))(v10, 0, 1, v19);
  sub_1D25CC8CC(a1, &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundHomeView);
  v20 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v21 = swift_allocObject();
  sub_1D25CD3F0(&v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for PlaygroundHomeView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE9B8, &unk_1D2896E10);
  v22 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9C0, &qword_1D28A1800);
  v23 = sub_1D22BB9D8(&qword_1EC6D76B8, &qword_1EC6DE9C0, &qword_1D28A1800, MEMORY[0x1E69817F8]);
  v38 = v22;
  v39 = v23;
  swift_getOpaqueTypeConformance2();
  sub_1D2877358();
  if (qword_1EC6D8B60 != -1)
  {
    swift_once();
  }

  v24 = v36;
  v25 = __swift_project_value_buffer(v36, qword_1EC6E3BC0);
  (*(v35 + 16))(v34, v25, v24);
  *&v13[*(v11 + 36)] = sub_1D2877108();
  sub_1D25CBCE0();
  sub_1D2876CC8();
  sub_1D22BD238(v13, &unk_1EC6DE998, &qword_1D2896DF8);
  v26 = sub_1D2874FA8();
  v27 = sub_1D2876338();
  sub_1D22EC9BC(v16, v18, &unk_1EC6DE988, &qword_1D2896DF0);
  v28 = &v18[*(v33 + 36)];
  *v28 = v26;
  v28[8] = v27;
  v29 = v37;
  sub_1D22EC9BC(v18, v37, &unk_1EC6DE978, &qword_1D2896DE8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE970, &qword_1D2896DE0);
  v31 = v29 + *(result + 36);
  *v31 = 1;
  *(v31 + 8) = 0xD000000000000028;
  *(v31 + 16) = 0x80000001D28AFF80;
  return result;
}

uint64_t sub_1D25BE2F8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE800, &qword_1D2896B78);
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v71 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998, &unk_1D288E3E0);
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v71 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE810, &qword_1D28A1730);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v81 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v86 = &v71 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE818, &qword_1D2896B80);
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v71 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE820, &qword_1D2896B88);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v88 = &v71 - v17;
  v18 = type metadata accessor for PlaygroundHomeView(0);
  v83 = *(v18 - 8);
  v19 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v84 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE828, &qword_1D2896B90);
  v74 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE830, &qword_1D2896B98);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v77 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v87 = &v71 - v26;
  v28 = *a1;
  v27 = a1[1];
  v85 = a1;
  v92 = v28;
  v93 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v29 = v91;
  swift_getKeyPath();
  v92 = v29;
  sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  if (*(v29 + 98) == 1)
  {

    v30 = 1;
    return (*(v89 + 56))(a2, v30, 1, v90);
  }

  v71 = a2;
  v31 = *(v29 + 48);
  swift_getKeyPath();
  v92 = v31;
  sub_1D25CD3A8(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  v32 = *(v31 + 16);

  if (v32)
  {
    v30 = 1;
    a2 = v71;
    return (*(v89 + 56))(a2, v30, 1, v90);
  }

  v92 = v28;
  v93 = v27;
  sub_1D2877308();
  v33 = *(v91 + 100);

  if (v33)
  {
    v35 = v84;
    v34 = v85;
    sub_1D25CC8CC(v85, v84, type metadata accessor for PlaygroundHomeView);
    v36 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v37 = swift_allocObject();
    v38 = sub_1D25CD3F0(v35, v37 + v36, type metadata accessor for PlaygroundHomeView);
    MEMORY[0x1EEE9AC00](v38);
    *(&v71 - 4) = v34;
    *(&v71 - 3) = 0x6B72616D78;
    *(&v71 - 2) = 0xE500000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE838, &unk_1D2896BF0);
    sub_1D25CB528();
    sub_1D2877368();
    v39 = v74;
    v40 = v87;
    (*(v74 + 32))(v87, v22, v20);
    v41 = 0;
  }

  else
  {
    v41 = 1;
    v40 = v87;
    v39 = v74;
  }

  (*(v39 + 56))(v40, v41, 1, v20);
  v92 = v28;
  v93 = v27;
  sub_1D2877308();
  if (os_variant_has_internal_diagnostics())
  {
    v42 = v78;
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
    v43 = sub_1D2878A58();
    v44 = sub_1D2878068();
    v45 = [v43 BOOLForKey_];

    if ((v45 & 1) == 0)
    {
      v49 = v72;
      sub_1D25BEEA4(v72);
      v48 = v75;
      v50 = v49;
      v51 = v76;
      (*(v75 + 32))(v88, v50, v76);
      v47 = v51;
      v46 = 0;
      goto LABEL_16;
    }

    v46 = 1;
  }

  else
  {

    v46 = 1;
    v42 = v78;
  }

  v48 = v75;
  v47 = v76;
LABEL_16:
  (*(v48 + 56))(v88, v46, 1, v47);
  v92 = v28;
  v93 = v27;
  sub_1D2877308();
  v52 = sub_1D2567450();

  v53 = 1;
  v54 = v79;
  if (v52)
  {
    v56 = v84;
    v55 = v85;
    sub_1D25CC8CC(v85, v84, type metadata accessor for PlaygroundHomeView);
    v57 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v58 = swift_allocObject();
    v59 = sub_1D25CD3F0(v56, v58 + v57, type metadata accessor for PlaygroundHomeView);
    MEMORY[0x1EEE9AC00](v59);
    *(&v71 - 2) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
    v60 = v73;
    sub_1D2877368();
    (*(v42 + 32))(v86, v60, v54);
    v53 = 0;
  }

  v61 = v86;
  (*(v42 + 56))(v86, v53, 1, v54);
  v62 = v87;
  v63 = v77;
  sub_1D22BD1D0(v87, v77, &qword_1EC6DE830, &qword_1D2896B98);
  v64 = v88;
  v65 = v80;
  sub_1D22BD1D0(v88, v80, &qword_1EC6DE820, &qword_1D2896B88);
  v66 = v81;
  sub_1D22BD1D0(v61, v81, &qword_1EC6DE810, &qword_1D28A1730);
  v67 = v82;
  sub_1D22BD1D0(v63, v82, &qword_1EC6DE830, &qword_1D2896B98);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE850, &unk_1D2896C00);
  v69 = v67 + v68[12];
  *v69 = 0;
  *(v69 + 8) = 1;
  sub_1D22BD1D0(v65, v67 + v68[16], &qword_1EC6DE820, &qword_1D2896B88);
  sub_1D22BD1D0(v66, v67 + v68[20], &qword_1EC6DE810, &qword_1D28A1730);
  sub_1D22BD238(v61, &qword_1EC6DE810, &qword_1D28A1730);
  sub_1D22BD238(v64, &qword_1EC6DE820, &qword_1D2896B88);
  sub_1D22BD238(v62, &qword_1EC6DE830, &qword_1D2896B98);
  sub_1D22BD238(v66, &qword_1EC6DE810, &qword_1D28A1730);
  sub_1D22BD238(v65, &qword_1EC6DE820, &qword_1D2896B88);
  sub_1D22BD238(v63, &qword_1EC6DE830, &qword_1D2896B98);
  a2 = v71;
  sub_1D22EC9BC(v67, v71, &unk_1EC6DE800, &qword_1D2896B78);
  v30 = 0;
  return (*(v89 + 56))(a2, v30, 1, v90);
}

void sub_1D25BEEA4(uint64_t a1@<X8>)
{
  v2 = v1;
  v75 = a1;
  v71 = sub_1D2875EE8();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = (v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE860, &unk_1D287CD70);
  MEMORY[0x1EEE9AC00](v66);
  v5 = v60 - v4;
  v6 = type metadata accessor for PlaygroundHomeView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9078, &unk_1D28955D0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v60 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D90A0, &qword_1D287CD68);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v76 = v60 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9088, &qword_1D2896C10);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v60 - v14;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE870, &qword_1D2896C18);
  v68 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v79 = v60 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE878, &qword_1D2896C20);
  v73 = *(v16 - 8);
  v74 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v80 = v60 - v17;
  v81 = v2;
  sub_1D25CC8CC(v2, v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundHomeView);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v64 = *(v7 + 80);
  v63 = v18 + v8;
  v19 = swift_allocObject();
  v65 = v18;
  v67 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D25CD3F0(v67, v19 + v18, type metadata accessor for PlaygroundHomeView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE880, &unk_1D28955E0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D99E8, &unk_1D288C480);
  v21 = sub_1D2875718();
  v22 = sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  v23 = sub_1D25CD3A8(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v87 = v20;
  v88 = v21;
  v89 = v22;
  v90 = v23;
  swift_getOpaqueTypeConformance2();
  v24 = v76;
  sub_1D2877368();
  v25 = sub_1D22BB9D8(&qword_1ED89D148, &qword_1EC6D9078, &unk_1D28955D0, MEMORY[0x1E697D680]);
  sub_1D2876DA8();
  (*(v10 + 8))(v12, v9);
  v26 = *MEMORY[0x1E697E720];
  v27 = sub_1D2874E88();
  (*(*(v27 - 8) + 104))(v5, v26, v27);
  sub_1D25CD3A8(&qword_1ED89DE70, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  if ((sub_1D2877F98() & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v87 = v9;
  v88 = v25;
  swift_getOpaqueTypeConformance2();
  sub_1D22BB9D8(&qword_1ED89CBF0, &unk_1EC6DE860, &unk_1D287CD70, MEMORY[0x1E69E6ED8]);
  v28 = v77;
  v29 = v62;
  sub_1D28769B8();
  sub_1D22BD238(v5, &unk_1EC6DE860, &unk_1D287CD70);
  (*(v61 + 8))(v24, v29);
  v30 = &v28[*(v78 + 36)];
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90B0, &unk_1D28807F0);
  v32 = *(v31 + 36);
  v33 = sub_1D2874518();
  (*(*(v33 - 8) + 56))(&v30[v32], 1, 1, v33);
  *&v30[*(v31 + 40)] = 0;
  *v30 = 1;
  v34 = v81;
  v35 = v81[1];
  v76 = *v81;
  v66 = v35;
  v84 = v76;
  v85 = v35;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877328();
  v36 = v87;
  v37 = v88;
  v38 = v89;
  swift_getKeyPath();
  v87 = v36;
  v88 = v37;
  v89 = v38;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE888, &unk_1D2896C50);
  sub_1D2877508();

  v60[1] = v86;

  v39 = v67;
  sub_1D25CC8CC(v34, v67, type metadata accessor for PlaygroundHomeView);
  v40 = swift_allocObject();
  sub_1D25CD3F0(v39, v40 + v65, type metadata accessor for PlaygroundHomeView);
  v41 = sub_1D2877348();
  v42 = v69;
  *v69 = v41;
  v43 = v70;
  v44 = v71;
  (*(v70 + 104))(v42, *MEMORY[0x1E697C8C0], v71);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6D9090, &qword_1D287CD60);
  v67 = sub_1D22BB75C();
  v45 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D90B8, &qword_1D287CD80);
  v46 = sub_1D22BB920();
  v82 = v45;
  v83 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v78;
  v48 = v77;
  sub_1D2876848();

  (*(v43 + 8))(v42, v44);
  sub_1D22BD238(v48, &qword_1EC6D9088, &qword_1D2896C10);
  v84 = v76;
  v85 = v66;
  sub_1D2877328();
  v49 = v87;
  v50 = v88;
  v51 = v89;
  swift_getKeyPath();
  v84 = v49;
  v85 = v50;
  v86 = v51;
  sub_1D2877508();

  v77 = type metadata accessor for DebugSettingsView(0);
  v87 = v47;
  v88 = v65;
  v89 = v67;
  v90 = OpaqueTypeConformance2;
  v78 = swift_getOpaqueTypeConformance2();
  v52 = sub_1D25CD3A8(&qword_1ED8A3090, type metadata accessor for DebugSettingsView, &protocol conformance descriptor for DebugSettingsView);
  v53 = v72;
  v54 = v79;
  sub_1D2876E48();

  (*(v68 + 8))(v54, v53);
  v79 = sub_1D2875798();
  LODWORD(v76) = v55;
  v56 = v81[3];
  LOBYTE(v84) = *(v81 + 16);
  v85 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877328();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0, &unk_1D2884AD0);
  v87 = v53;
  v88 = v77;
  v89 = v78;
  v90 = v52;
  swift_getOpaqueTypeConformance2();
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0, &unk_1D2884AD0, MEMORY[0x1E697D680]);
  v57 = v74;
  v58 = v80;
  sub_1D2876E18();

  (*(v73 + 8))(v58, v57);
  sub_1D2875798();

  if (qword_1ED89E0E8 != -1)
  {
LABEL_5:
    swift_once();
  }
}

double sub_1D25BFC54(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  sub_1D2870F78();

  sub_1D22F7E14();

  sub_1D27567B0();

  return result;
}

unint64_t sub_1D25BFCF0()
{
  result = qword_1EC6D7C18;
  if (!qword_1EC6D7C18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6A8, &qword_1D28968F0);
    sub_1D22BB9D8(&qword_1EC6D7640, &qword_1EC6DE6A0, &qword_1D28968E8, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6D7C18);
  }

  return result;
}

uint64_t sub_1D25BFDA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA70, &qword_1D2896F90);
  MEMORY[0x1EEE9AC00](v43);
  v4 = (&v35 - v3);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA78, &qword_1D2896F98);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v35 - v5;
  v6 = sub_1D2875678();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA80, &qword_1D2896FA0);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v35 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA88, &qword_1D2896FA8);
  v37 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v36 = &v35 - v14;
  v15 = a1[1];
  v35 = *a1;
  v50 = v35;
  v51 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v16 = sub_1D25670A4();

  if (v16)
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v35 - 2) = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEAB0, &qword_1D2896FD0);
    sub_1D25CC2B0();
    v18 = v38;
    sub_1D2874F78();
    sub_1D2875668();
    (*(v7 + 16))(v9, v12, v6);
    sub_1D25CD3A8(&qword_1ED89D6C8, MEMORY[0x1E697F260], MEMORY[0x1E697F258]);
    v19 = sub_1D2874988();
    (*(v7 + 8))(v12, v6);
    *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DEA98, &qword_1D2896FB8) + 36)] = v19;
    v20 = v35;
    v47 = v35;
    v48 = v15;
    sub_1D2877328();
    v21 = v50;
    v22 = v51;
    v23 = v52;
    swift_getKeyPath();
    v50 = v21;
    v51 = v22;
    v52 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE888, &unk_1D2896C50);
    sub_1D2877508();

    v24 = v49;

    swift_allocObject();
    v45 = v20;
    v46 = v15;
    sub_1D2877308();
    swift_weakInit();

    v25 = sub_1D25CC138();
    sub_1D2870F78();
    v26 = v36;
    v27 = v38;
    v28 = v39;
    sub_1D28766E8();

    sub_1D22BD238(v27, &qword_1EC6DEA80, &qword_1D2896FA0);

    v29 = v37;
    v30 = v41;
    (*(v37 + 16))(v42, v26, v41);
    swift_storeEnumTagMultiPayload();
    v50 = v28;
    v51 = v25;
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6D7658, &qword_1EC6DEA70, &qword_1D2896F90, MEMORY[0x1E6981880]);
    sub_1D2875AF8();
    return (*(v29 + 8))(v26, v30);
  }

  else
  {
    *v4 = sub_1D2877848();
    v4[1] = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA90, &qword_1D2896FB0);
    sub_1D25C04E0(a1, v4 + *(v33 + 44));
    sub_1D22BD1D0(v4, v42, &qword_1EC6DEA70, &qword_1D2896F90);
    swift_storeEnumTagMultiPayload();
    v34 = sub_1D25CC138();
    v50 = v39;
    v51 = v34;
    swift_getOpaqueTypeConformance2();
    sub_1D22BB9D8(&qword_1EC6D7658, &qword_1EC6DEA70, &qword_1D2896F90, MEMORY[0x1E6981880]);
    sub_1D2875AF8();
    return sub_1D22BD238(v4, &qword_1EC6DEA70, &qword_1D2896F90);
  }
}

double sub_1D25C0470(void *a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1D256F0D0(a1, a2 & 1);
  }

  return result;
}

uint64_t sub_1D25C04E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEBB0, &qword_1D2897160);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEBB8, &qword_1D2897168);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEBC0, &qword_1D2897170);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = a1[1];
  v23 = *a1;
  v24 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v13 = v22;
  if (*(v22 + 100))
  {
    swift_getKeyPath();
    v23 = v13;
    sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719E8();

    v14 = *(v13 + 112);

    if ((v14 & 1) == 0)
    {
      v15 = sub_1D2875918();
      sub_1D25C0824(a1, v11);
      v16 = sub_1D2874838();
      v17 = MEMORY[0x1D389EE30]((2 * v16));
      v18 = sub_1D2874FB8();
      v19 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DEBC8, &qword_1D2897178) + 36)];
      *v19 = v18;
      *(v19 + 1) = 0;
      v19[16] = 0;
      v19[17] = v17;
      *(v19 + 3) = v15;
      sub_1D22BD1D0(v11, v8, &qword_1EC6DEBC0, &qword_1D2897170);
      swift_storeEnumTagMultiPayload();
      sub_1D25CD03C();
      sub_1D25CD148();
      sub_1D2875AF8();
      return sub_1D22BD238(v11, &qword_1EC6DEBC0, &qword_1D2897170);
    }
  }

  else
  {
  }

  sub_1D25C0F30(v5);
  sub_1D22BD1D0(v5, v8, &qword_1EC6DEBB0, &qword_1D2897160);
  swift_storeEnumTagMultiPayload();
  sub_1D25CD03C();
  sub_1D25CD148();
  sub_1D2875AF8();
  return sub_1D22BD238(v5, &qword_1EC6DEBB0, &qword_1D2897160);
}

uint64_t sub_1D25C0824@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_1D2873998();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaygroundHomeView(0);
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8, &qword_1D2888DB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE998, &qword_1D2896DF8);
  MEMORY[0x1EEE9AC00](v48);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE988, &qword_1D2896DF0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v47 = &v43 - v13;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE978, &qword_1D2896DE8);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v43 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE970, &qword_1D2896DE0);
  v15 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v44 = &v43 - v19;
  v20 = a1[1];
  v55 = *a1;
  v56 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v21 = v54;
  swift_getKeyPath();
  v55 = v21;
  sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  v22 = *(v21 + 99);

  if (v22)
  {
    v23 = 1;
    v25 = v52;
    v24 = v53;
  }

  else
  {
    sub_1D2874278();
    v26 = sub_1D2874288();
    (*(*(v26 - 8) + 56))(v9, 0, 1, v26);
    sub_1D25CC8CC(a1, &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundHomeView);
    v27 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v28 = swift_allocObject();
    sub_1D25CD3F0(&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for PlaygroundHomeView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE9B8, &unk_1D2896E10);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE9C0, &qword_1D28A1800);
    v30 = sub_1D22BB9D8(&qword_1EC6D76B8, &qword_1EC6DE9C0, &qword_1D28A1800, MEMORY[0x1E69817F8]);
    v55 = v29;
    v56 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1D2877358();
    if (qword_1EC6D8B60 != -1)
    {
      swift_once();
    }

    v31 = v51;
    v32 = __swift_project_value_buffer(v51, qword_1EC6E3BC0);
    (*(v50 + 16))(v49, v32, v31);
    *&v11[*(v48 + 36)] = sub_1D2877108();
    sub_1D25CBCE0();
    v33 = v47;
    sub_1D2876CC8();
    sub_1D22BD238(v11, &unk_1EC6DE998, &qword_1D2896DF8);
    v34 = sub_1D2874FA8();
    v35 = sub_1D2876338();
    v36 = v33;
    v37 = v45;
    sub_1D22EC9BC(v36, v45, &unk_1EC6DE988, &qword_1D2896DF0);
    v38 = v37 + *(v46 + 36);
    *v38 = v34;
    *(v38 + 8) = v35;
    sub_1D22EC9BC(v37, v17, &unk_1EC6DE978, &qword_1D2896DE8);
    v25 = v52;
    v39 = &v17[*(v52 + 36)];
    *v39 = 1;
    *(v39 + 1) = 0xD000000000000028;
    *(v39 + 2) = 0x80000001D28AFF80;
    v40 = v44;
    sub_1D22EC9BC(v17, v44, &qword_1EC6DE970, &qword_1D2896DE0);
    v41 = v40;
    v24 = v53;
    sub_1D22EC9BC(v41, v53, &qword_1EC6DE970, &qword_1D2896DE0);
    v23 = 0;
  }

  return (*(v15 + 56))(v24, v23, 1, v25);
}

uint64_t sub_1D25C0F30@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = type metadata accessor for PlaygroundHomeView(0);
  v4 = v3 - 8;
  v48 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v49 = v5;
  v50 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2875628();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotoGridView(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEBF8, &qword_1D2897190);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v39 - v12;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DEBE8, &qword_1D2897188);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v39 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DEBD8, &qword_1D2897180);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v39 - v14;
  v15 = sub_1D28779E8();
  v17 = *v1;
  v16 = v1[1];
  v53 = *v1;
  v54 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  PlaygroundHomeViewModel.photoGridViewModel.getter();

  sub_1D258C42C(v15, v11);
  v18 = v1 + *(v4 + 48);
  v19 = *v18;
  if (v18[8] == 1)
  {
    LOBYTE(v53) = *v18;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v20 = sub_1D28762E8();
    sub_1D2873BE8();

    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v19, 0);
    (*(v40 + 8))(v8, v41);
    LOBYTE(v19) = v53;
  }

  v21 = v11;
  v22 = v44;
  sub_1D25CD3F0(v21, v44, type metadata accessor for PhotoGridView);
  *(v22 + *(v42 + 36)) = v19;
  v53 = v17;
  v54 = v16;
  sub_1D2877308();
  v23 = *(v52 + 48);
  swift_getKeyPath();
  v53 = v23;
  sub_1D25CD3A8(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  v24 = *(v23 + 16);

  if (v24)
  {
    LOBYTE(v25) = 0;
  }

  else
  {
    v53 = v17;
    v54 = v16;
    sub_1D2877308();
    v26 = PlaygroundHomeViewModel.photoGridViewModel.getter();

    swift_getKeyPath();
    v53 = v26;
    sub_1D25CD3A8(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
    sub_1D28719E8();

    v25 = *(v26 + 80);
  }

  v27 = v22;
  v28 = v46;
  sub_1D22EC9BC(v27, v46, &qword_1EC6DEBF8, &qword_1D2897190);
  *(v28 + *(v43 + 36)) = v25;
  v29 = v50;
  sub_1D25CC8CC(v2, v50, type metadata accessor for PlaygroundHomeView);
  v30 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v31 = swift_allocObject();
  sub_1D25CD3F0(v29, v31 + v30, type metadata accessor for PlaygroundHomeView);
  v32 = v28;
  v33 = v47;
  sub_1D22EC9BC(v32, v47, &unk_1EC6DEBE8, &qword_1D2897188);
  v34 = (v33 + *(v45 + 36));
  *v34 = sub_1D25CD458;
  v34[1] = v31;
  v34[2] = 0;
  v34[3] = 0;
  sub_1D25CC8CC(v2, v29, type metadata accessor for PlaygroundHomeView);
  v35 = swift_allocObject();
  sub_1D25CD3F0(v29, v35 + v30, type metadata accessor for PlaygroundHomeView);
  v36 = v51;
  sub_1D22EC9BC(v33, v51, &unk_1EC6DEBD8, &qword_1D2897180);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEBB0, &qword_1D2897160);
  v38 = (v36 + *(result + 36));
  *v38 = 0;
  v38[1] = 0;
  v38[2] = sub_1D25CD470;
  v38[3] = v35;
  return result;
}

double sub_1D25C159C()
{
  v1 = v0;
  v2 = sub_1D2873C28();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D2873C48();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D28720E8();
  sub_1D2873C18();
  v10 = sub_1D2873C38();
  v11 = sub_1D2878BC8();
  if (sub_1D2878EE8())
  {
    v12 = swift_slowAlloc();
    v22 = v0;
    v13 = v12;
    *v12 = 0;
    v14 = sub_1D2873C08();
    _os_signpost_emit_with_name_impl(&dword_1D226E000, v10, v11, v14, "GenerationDismissed", "", v13, 2u);
    v15 = v13;
    v1 = v22;
    MEMORY[0x1D38A3520](v15, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v16 = v1[1];
  v23 = *v1;
  v24 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v17 = v25;
  swift_getKeyPath();
  v23 = v17;
  sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 88);
    ObjectType = swift_getObjectType();
    (*(v18 + 8))(v17, ObjectType, v18);
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D25C1890@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v48 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE960, &qword_1D2896D58);
  MEMORY[0x1EEE9AC00](v51);
  v7 = &v43 - v6;
  v8 = sub_1D2875718();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
  v49 = *(v12 - 8);
  v50 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE880, &unk_1D28955E0);
  v15 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v17 = &v43 - v16;
  v18 = a1[1];
  v53 = *a1;
  v54 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  sub_1D2870F78();

  v19 = sub_1D230BE78();

  if (v19)
  {
    v44 = v9;
    v45 = v8;
    v46 = a4;
    v20 = sub_1D2875798();
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    if (qword_1ED89E0E8 != -1)
    {
      v20 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v20);
    *(&v43 - 8) = v21;
    *(&v43 - 7) = v23;
    *(&v43 - 48) = v25 & 1;
    *(&v43 - 5) = v27;
    *(&v43 - 4) = 0;
    *(&v43 - 3) = 0;
    MEMORY[0x1EEE9AC00](v28);
    v41 = v47;
    v42 = v48;
    sub_1D2877248();

    sub_1D2875708();
    v29 = sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
    v30 = sub_1D25CD3A8(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    v31 = v50;
    v32 = v45;
    sub_1D2876768();
    (*(v44 + 8))(v11, v32);
    (*(v49 + 8))(v14, v31);
    v33 = v52;
    (*(v15 + 16))(v7, v17, v52);
    swift_storeEnumTagMultiPayload();
    v53 = v31;
    v54 = v32;
    v55 = v29;
    v56 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    return (*(v15 + 8))(v17, v33);
  }

  else
  {
    sub_1D2875798();
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v35 = qword_1ED8B0058;
    *v7 = sub_1D2876668();
    *(v7 + 1) = v36;
    v7[16] = v37 & 1;
    *(v7 + 3) = v38;
    swift_storeEnumTagMultiPayload();
    v39 = sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
    v40 = sub_1D25CD3A8(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    v53 = v50;
    v54 = v8;
    v55 = v39;
    v56 = v40;
    swift_getOpaqueTypeConformance2();
    return sub_1D2875AF8();
  }
}

double sub_1D25C1F0C(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v3 = type metadata accessor for PlaygroundHomeView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v24 - v8;
  v10 = *v2;
  v11 = v2[1];
  v28 = v2;
  v29 = v10;
  v30 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v12 = PlaygroundHomeViewModel.photoGridViewModel.getter();

  if (*(v12 + 80))
  {
    KeyPath = swift_getKeyPath();
    v25 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v24[1] = v24;
    MEMORY[0x1EEE9AC00](KeyPath);
    v24[0] = 0;
    v24[-2] = v12;
    LOBYTE(v24[-1]) = 0;
    v29 = v12;
    sub_1D25CD3A8(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
    sub_1D28719D8();

    v6 = v25;
  }

  else
  {
    *(v12 + 80) = 0;
  }

  v29 = v10;
  v30 = v11;
  sub_1D2877308();
  v14 = PlaygroundHomeViewModel.photoGridViewModel.getter();

  *(v14 + 81) = 1;

  v16 = MEMORY[0x1D38A0390](v15, 0.3, 1.0, 0.0);
  MEMORY[0x1EEE9AC00](v16);
  v17 = v27;
  v24[-2] = v26;
  v24[-1] = v17;
  sub_1D2874BE8();

  v18 = sub_1D28785F8();
  (*(*(v18 - 8) + 56))(v9, 1, 1, v18);
  sub_1D25CC8CC(v28, v6, type metadata accessor for PlaygroundHomeView);
  sub_1D2878568();
  v19 = sub_1D2878558();
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = swift_allocObject();
  v22 = MEMORY[0x1E69E85E0];
  *(v21 + 16) = v19;
  *(v21 + 24) = v22;
  sub_1D25CD3F0(v6, v21 + v20, type metadata accessor for PlaygroundHomeView);
  sub_1D23C8994(0, 0, v9, &unk_1D2896E28, v21);

  return result;
}

double sub_1D25C2308(uint64_t a1)
{
  v1 = sub_1D28756A8();
  sub_1D25C2424(&v8);
  v3 = v8;
  v2 = v9;
  v4 = v10;
  v5 = v11;
  v6 = v12;
  v17 = 1;
  v16 = v11;
  v8 = v1;
  v9 = 0;
  LOBYTE(v10) = 1;
  v11 = v3;
  v12 = v2;
  v13 = v4;
  v14 = v16;
  v15 = v6;
  sub_1D2876438();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE9C0, &qword_1D28A1800);
  sub_1D22BB9D8(&qword_1EC6D76B8, &qword_1EC6DE9C0, &qword_1D28A1800, MEMORY[0x1E69817F8]);
  sub_1D2876758();

  sub_1D22ED6E0(v2, v4, v5);

  return result;
}

double sub_1D25C2424@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1D2877198();
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1ED8B0058;
  v4 = sub_1D2876668();
  v6 = v5;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v8 = v7 & 1;
  *(a1 + 24) = v7 & 1;
  *(a1 + 32) = v9;
  sub_1D2870F78();
  sub_1D22BBFAC(v4, v6, v8);
  sub_1D2870F68();
  sub_1D22ED6E0(v4, v6, v8);

  return result;
}

void sub_1D25C257C(BOOL *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v3 = *(v5 + 48);
  swift_getKeyPath();
  sub_1D25CD3A8(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  v4 = *(v3 + 16);

  *a2 = v4 == 2;
}

double sub_1D25C2668(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if ((*a1 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
    sub_1D2877308();
    v4 = *(v8 + 48);
    swift_getKeyPath();
    sub_1D25CD3A8(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
    sub_1D28719E8();

    v5 = *(v4 + 16);

    if (v5 == 2)
    {
      sub_1D2877308();
      v7 = sub_1D2565F18();

      swift_getKeyPath();
      sub_1D25CD3A8(&qword_1EC6D8880, type metadata accessor for DetailViewModel, &unk_1D28A1018);
      sub_1D28719E8();

      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_1D256B210(v7);
        swift_unknownObjectRelease();
      }

      sub_1D2714110();
    }
  }

  return result;
}

uint64_t sub_1D25C2828@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v44 = sub_1D28758D8();
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1D2876088();
  v4 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D2875628();
  v42 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEAC8, &qword_1D2896FE8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEAC0, &qword_1D2896FE0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEAD0, &qword_1D2896FF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v43 = &v37 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEAB8, &qword_1D2896FD8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v37 - v19;
  *v11 = sub_1D2875918();
  *(v11 + 1) = 0;
  v11[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEAD8, &qword_1D2896FF8);
  sub_1D25C2DA0(a1, &v11[*(v21 + 44)]);
  v22 = a1 + *(type metadata accessor for PlaygroundHomeView(0) + 40);
  v23 = *v22;
  if (v22[8] == 1)
  {
    LOBYTE(v49) = *v22;
  }

  else
  {
    sub_1D2870F78();
    sub_1D2878A28();
    v38 = v20;
    v39 = v12;
    v24 = v7;
    v25 = sub_1D28762E8();
    v40 = v4;
    v26 = v25;
    v12 = v39;
    sub_1D2873BE8();

    v4 = v40;
    v27 = v41;
    sub_1D2875618();
    swift_getAtKeyPath();
    sub_1D22EE66C(v23, 0);
    v28 = v24;
    v20 = v38;
    (*(v42 + 8))(v27, v28);
    LOBYTE(v23) = v49;
  }

  sub_1D22EC9BC(v11, v14, &qword_1EC6DEAC8, &qword_1D2896FE8);
  v14[*(v12 + 36)] = v23;
  sub_1D2876078();
  v29 = sub_1D25CC434();
  v30 = v43;
  sub_1D2876BE8();
  (*(v4 + 8))(v6, v48);
  sub_1D22BD238(v14, &qword_1EC6DEAC0, &qword_1D2896FE0);
  v31 = v47;
  sub_1D28758A8();
  v49 = v12;
  v50 = v29;
  swift_getOpaqueTypeConformance2();
  sub_1D2876918();
  (*(v46 + 8))(v31, v44);
  (*(v16 + 8))(v30, v15);
  v32 = sub_1D2874FB8();
  v33 = sub_1D2876378();
  v34 = v45;
  sub_1D22EC9BC(v20, v45, &qword_1EC6DEAB8, &qword_1D2896FD8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEAB0, &qword_1D2896FD0);
  v36 = v34 + *(result + 36);
  *v36 = v32;
  *(v36 + 8) = v33;
  return result;
}

uint64_t sub_1D25C2DA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v15[0] = *a1;
  v15[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  sub_1D2870F78();

  type metadata accessor for PlaygroundHomeView(0);
  v3 = sub_1D28779E8();
  KeyPath = swift_getKeyPath();
  LOBYTE(v11) = 0;
  sub_1D28772F8();
  v5 = swift_getKeyPath();
  type metadata accessor for ComposingViewModel(0);
  sub_1D28772F8();
  *&v12 = v3;
  *(&v12 + 1) = KeyPath;
  LOBYTE(v13) = 0;
  BYTE8(v13) = v15[0];
  *&v14 = v2;
  *(&v14 + 1) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DEAE0, &qword_1D2897000);
  sub_1D23D4344();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEAF0, &qword_1D2897008);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEAF8, &qword_1D2897010);
  sub_1D25CC568();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1D2876F08();
  v17 = v13;
  v18 = v14;
  v19 = 0;
  v16 = v12;
  sub_1D2594114(v15);
  sub_1D2877308();
  swift_getKeyPath();
  sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  v6 = *(v11 + 74);

  v7 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB08, &qword_1D2897048);
  v9 = a2 + *(result + 36);
  *v9 = v7;
  *(v9 + 8) = v6;
  return result;
}

uint64_t sub_1D25C3084()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEAF0, &qword_1D2897008);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v8 - v2;
  sub_1D25C31B4(v8 - v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DEAF8, &qword_1D2897010);
  v5 = sub_1D25CC568();
  v8[0] = v4;
  v8[1] = v5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1D389E720](v3, v0, OpaqueTypeConformance2);
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1D25C31B4@<X0>(uint64_t a1@<X8>)
{
  v114 = a1;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB10, &qword_1D2897050);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v83 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB00, &qword_1D2897018);
  v112 = *(v3 - 8);
  v113 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v104 = &v83 - v4;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB18, &qword_1D2897058);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v111 = &v83 - v5;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB20, &qword_1D2897060);
  MEMORY[0x1EEE9AC00](v88);
  v86 = &v83 - v6;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB28, &qword_1D2897068);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v91 = &v83 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB30, &qword_1D2897070);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v87 = &v83 - v8;
  v92 = type metadata accessor for ComposingViewModel.AvailabilityStatus(0);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v83 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB38, &qword_1D2897078);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v119 = &v83 - v15;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA08, &qword_1D2896E80);
  v99 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v118 = &v83 - v16;
  v17 = sub_1D28747B8();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v105 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_1D2874B88();
  v106 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v83 - v21;
  v22 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v22 - 8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB40, &qword_1D2897080);
  v107 = *(v23 - 8);
  v108 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v83 - v24;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEAF8, &qword_1D2897010);
  MEMORY[0x1EEE9AC00](v109);
  v27 = &v83 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v83 - v29;
  v31 = *v1;
  v32 = *(v1 + 1);
  v120 = *v1;
  v121 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v33 = sub_1D25677EC();

  if (v33)
  {
    v84 = v27;
    v85 = v30;
    v34 = sub_1D2875BC8();
    MEMORY[0x1EEE9AC00](v34);
    *(&v83 - 2) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB48, &qword_1D2897088);
    sub_1D25CC63C();
    v98 = v25;
    sub_1D28745C8();
    sub_1D28747A8();
    sub_1D2875BE8();
    sub_1D2874B98();
    sub_1D25C4830(v118);
    v120 = v31;
    v121 = v32;
    sub_1D2877308();
    v35 = v122;
    v36 = v1;
    if (sub_1D25677EC())
    {
      v37 = *(v35 + 16);
      swift_getKeyPath();
      v120 = v37;
      sub_1D25CD3A8(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
      sub_1D28719E8();

      v38 = OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__generativeModelsStatus;
      swift_beginAccess();
      v39 = v93;
      sub_1D25CC8CC(v37 + v38, v93, type metadata accessor for ComposingViewModel.AvailabilityStatus);
      v40 = v94;
      swift_storeEnumTagMultiPayload();
      LOBYTE(v38) = sub_1D233C3CC(v39, v40);
      sub_1D25CC934(v40, type metadata accessor for ComposingViewModel.AvailabilityStatus);
      sub_1D25CC934(v39, type metadata accessor for ComposingViewModel.AvailabilityStatus);

      if (v38)
      {
        sub_1D28747A8();
        sub_1D2875BE8();
        v41 = v116;
        v42 = sub_1D2874B98();
        MEMORY[0x1EEE9AC00](v42);
        *(&v83 - 2) = v36;
        sub_1D2875BE8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB78, &qword_1D28970D0);
        sub_1D25CC9B8();
        v43 = v87;
        sub_1D28745C8();
        v44 = *(v88 + 48);
        v45 = v86;
        v46 = v41;
        v47 = v115;
        (*(v106 + 16))(v86, v46, v115);
        v94 = v36;
        v48 = v89;
        v49 = v90;
        (*(v89 + 16))(&v45[v44], v43, v90);
        v50 = v91;
        sub_1D28759C8();
        v51 = v96;
        v52 = v95;
        v53 = v97;
        (*(v96 + 16))(v95, v50, v97);
        (*(v51 + 56))(v52, 0, 1, v53);
        v54 = sub_1D22BB9D8(&qword_1EC6D78C8, &qword_1EC6DEB28, &qword_1D2897068, MEMORY[0x1E697C5E0]);
        MEMORY[0x1D389E750](v52, v53, v54);
        sub_1D22BD238(v52, &qword_1EC6DEB38, &qword_1D2897078);
        (*(v51 + 8))(v50, v53);
        (*(v48 + 8))(v43, v49);
        v36 = v94;
        (*(v106 + 8))(v116, v47);
LABEL_8:
        v60 = v98;
        sub_1D28747A8();
        sub_1D2875BE8();
        sub_1D2874B98();
        v61 = sub_1D2875BD8();
        MEMORY[0x1EEE9AC00](v61);
        *(&v83 - 2) = v36;
        type metadata accessor for ComposingCreateButton(0);
        sub_1D25CD3A8(&qword_1EC6D8480, type metadata accessor for ComposingCreateButton, &unk_1D28A2648);
        v62 = v111;
        sub_1D28745C8();
        v63 = v101[12];
        v64 = v101[16];
        v65 = v101[20];
        v97 = v101[24];
        v105 = v101[28];
        v66 = v100;
        (*(v107 + 16))(v100, v60, v108);
        v67 = v106;
        v68 = *(v106 + 16);
        v69 = v115;
        v68(&v66[v63], v117, v115);
        v70 = v99;
        (*(v99 + 16))(&v66[v64], v118, v110);
        sub_1D22BD1D0(v119, &v66[v65], &qword_1EC6DEB38, &qword_1D2897078);
        v71 = v116;
        v68(&v66[v97], v116, v69);
        v72 = v102;
        v73 = v103;
        (*(v102 + 16))(&v105[v66], v62, v103);
        v74 = v104;
        sub_1D28759C8();
        v76 = v112;
        v75 = v113;
        v77 = v84;
        (*(v112 + 16))(v84, v74, v113);
        (*(v76 + 56))(v77, 0, 1, v75);
        v78 = sub_1D22BB9D8(&qword_1EC6D78E8, &qword_1EC6DEB00, &qword_1D2897018, MEMORY[0x1E697C5E0]);
        v30 = v85;
        MEMORY[0x1D389E750](v77, v75, v78);
        sub_1D22BD238(v77, &qword_1EC6DEAF8, &qword_1D2897010);
        (*(v76 + 8))(v74, v75);
        (*(v72 + 8))(v111, v73);
        v79 = *(v67 + 8);
        v80 = v115;
        v79(v71, v115);
        sub_1D22BD238(v119, &qword_1EC6DEB38, &qword_1D2897078);
        (*(v70 + 8))(v118, v110);
        v79(v117, v80);
        (*(v107 + 8))(v98, v108);
        goto LABEL_9;
      }
    }

    else
    {
    }

    v57 = v95;
    v58 = v97;
    (*(v96 + 56))(v95, 1, 1, v97);
    v59 = sub_1D22BB9D8(&qword_1EC6D78C8, &qword_1EC6DEB28, &qword_1D2897068, MEMORY[0x1E697C5E0]);
    MEMORY[0x1D389E750](v57, v58, v59);
    sub_1D22BD238(v57, &qword_1EC6DEB38, &qword_1D2897078);
    goto LABEL_8;
  }

  v55 = v113;
  (*(v112 + 56))(v27, 1, 1, v113);
  v56 = sub_1D22BB9D8(&qword_1EC6D78E8, &qword_1EC6DEB00, &qword_1D2897018, MEMORY[0x1E697C5E0]);
  MEMORY[0x1D389E750](v27, v55, v56);
  sub_1D22BD238(v27, &qword_1EC6DEAF8, &qword_1D2897010);
LABEL_9:
  v81 = sub_1D25CC568();
  MEMORY[0x1D389E720](v30, v109, v81);
  return sub_1D22BD238(v30, &qword_1EC6DEAF8, &qword_1D2897010);
}

uint64_t sub_1D25C41D0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v3 = sub_1D2875718();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PlaygroundHomeView(0);
  v33[0] = *(v5 - 8);
  v6 = *(v33[0] + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8, &qword_1D2888DB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998, &unk_1D288E3E0);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DEB50, &qword_1D2897090);
  v13 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v15 = v33 - v14;
  v16 = *v1;
  v34 = v1[1];
  v35 = v16;
  v44 = v16;
  v45 = v34;
  v33[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v17 = v43;
  swift_getKeyPath();
  v44 = v17;
  sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  v18 = *(v17 + 112);

  v19 = 1;
  if (v18 == 1)
  {
    sub_1D2874268();
    v20 = sub_1D2874288();
    (*(*(v20 - 8) + 56))(v9, 0, 1, v20);
    sub_1D25CC8CC(v2, v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundHomeView);
    v21 = (*(v33[0] + 80) + 16) & ~*(v33[0] + 80);
    v22 = swift_allocObject();
    sub_1D25CD3F0(v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for PlaygroundHomeView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
    sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
    sub_1D2877358();
    v23 = v38;
    sub_1D2875708();
    sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998, &unk_1D288E3E0, MEMORY[0x1E697D680]);
    sub_1D25CD3A8(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
    v24 = v37;
    v25 = v40;
    sub_1D2876768();
    (*(v39 + 8))(v23, v25);
    (*(v36 + 8))(v12, v24);
    v44 = v35;
    v45 = v34;
    sub_1D2877308();
    sub_1D2870F78();

    sub_1D22F7DF4();
    v26 = sub_1D22C26A8();

    KeyPath = swift_getKeyPath();
    v28 = swift_allocObject();
    *(v28 + 16) = v26 & 1;
    v29 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DEB60, &unk_1D2897098) + 36)];
    *v29 = KeyPath;
    v29[1] = sub_1D22C04E0;
    v29[2] = v28;
    v30 = v42;
    v31 = &v15[*(v41 + 36)];
    *v31 = 1;
    *(v31 + 1) = 0xD000000000000028;
    *(v31 + 2) = 0x80000001D28AFF80;
    sub_1D22EC9BC(v15, v30, &unk_1EC6DEB50, &qword_1D2897090);
    v19 = 0;
  }

  return (*(v13 + 56))(v42, v19, 1, v41);
}

uint64_t sub_1D25C4830@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA30, &qword_1D2896F20);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v62 - v2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA38, &unk_1D2896F28);
  v81 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v76 = &v62 - v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA40, &qword_1D2895590);
  v75 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v74 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA48, &qword_1D2896F38);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v83 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA50, &qword_1D2896F40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v62 - v12;
  v14 = sub_1D2875C08();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v80 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA58, &qword_1D2896F48);
  v72 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v62 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA60, &qword_1D2896F50);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  v25 = *v1;
  v24 = v1[1];
  v77 = v1;
  v88 = v25;
  v89 = v24;
  v79 = v24;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  if (os_variant_has_internal_diagnostics())
  {
    v70 = v13;
    v73 = v25;
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
    v26 = sub_1D2878A58();
    v27 = sub_1D2878068();
    v28 = [v26 BOOLForKey_];

    v25 = v73;
    if ((v28 & 1) == 0)
    {
      v29 = sub_1D2875BE8();
      v69 = &v62;
      MEMORY[0x1EEE9AC00](v29);
      v68 = &v62 - 4;
      *(&v62 - 2) = v77;
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE818, &qword_1D2896B80);
      v66 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE878, &qword_1D2896C20);
      v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE6C0, &unk_1D2884AD0);
      v64 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DE870, &qword_1D2896C18);
      v63 = type metadata accessor for DebugSettingsView(255);
      v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D9088, &qword_1D2896C10);
      v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC6D9090, &qword_1D287CD60);
      v32 = sub_1D22BB75C();
      v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D90B8, &qword_1D287CD80);
      v34 = sub_1D22BB920();
      v88 = v33;
      v89 = v34;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v88 = v30;
      v89 = v31;
      v90 = v32;
      v91 = OpaqueTypeConformance2;
      v25 = v73;
      v36 = swift_getOpaqueTypeConformance2();
      v37 = sub_1D25CD3A8(&qword_1ED8A3090, type metadata accessor for DebugSettingsView, &protocol conformance descriptor for DebugSettingsView);
      v88 = v64;
      v89 = v63;
      v90 = v36;
      v91 = v37;
      v38 = swift_getOpaqueTypeConformance2();
      v39 = sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0, &unk_1D2884AD0, MEMORY[0x1E697D680]);
      v88 = v66;
      v89 = v65;
      v90 = v38;
      v91 = v39;
      swift_getOpaqueTypeConformance2();
      v40 = v71;
      sub_1D28745C8();
      v41 = sub_1D22BB9D8(&qword_1EC6D7EA8, &qword_1EC6DEA58, &qword_1D2896F48, MEMORY[0x1E697BEF0]);
      v42 = v70;
      MEMORY[0x1D389E720](v40, v16, v41);
      (*(v11 + 16))(v20, v42, v10);
      (*(v11 + 56))(v20, 0, 1, v10);
      v88 = v16;
      v89 = v41;
      v43 = swift_getOpaqueTypeConformance2();
      MEMORY[0x1D389E750](v20, v10, v43);
      sub_1D22BD238(v20, &qword_1EC6DEA60, &qword_1D2896F50);
      (*(v11 + 8))(v42, v10);
      (*(v72 + 8))(v40, v16);
      goto LABEL_8;
    }
  }

  else
  {
  }

  (*(v11 + 56))(v20, 1, 1, v10);
  v44 = sub_1D22BB9D8(&qword_1EC6D7EA8, &qword_1EC6DEA58, &qword_1D2896F48, MEMORY[0x1E697BEF0]);
  v88 = v16;
  v89 = v44;
  v45 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1D389E750](v20, v10, v45);
  sub_1D22BD238(v20, &qword_1EC6DEA60, &qword_1D2896F50);
LABEL_8:
  v88 = v25;
  v89 = v79;
  sub_1D2877308();
  v46 = sub_1D2567450();

  v47 = v83;
  if (v46)
  {
    v48 = sub_1D2875BE8();
    MEMORY[0x1EEE9AC00](v48);
    *(&v62 - 2) = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC998, &unk_1D288E3E0);
    sub_1D22BB9D8(&qword_1ED89D130, &qword_1EC6DC998, &unk_1D288E3E0, MEMORY[0x1E697D680]);
    v49 = v74;
    sub_1D28745C8();
    v50 = sub_1D22BB9D8(&qword_1EC6D7EA0, &qword_1EC6DEA40, &qword_1D2895590, MEMORY[0x1E697BEF0]);
    v51 = v76;
    v52 = v82;
    MEMORY[0x1D389E720](v49, v82, v50);
    v53 = v81;
    v54 = v84;
    (*(v81 + 16))(v7, v51, v84);
    (*(v53 + 56))(v7, 0, 1, v54);
    v88 = v52;
    v89 = v50;
    v55 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D389E750](v7, v54, v55);
    sub_1D22BD238(v7, &qword_1EC6DEA48, &qword_1D2896F38);
    (*(v53 + 8))(v51, v54);
    (*(v75 + 8))(v49, v52);
  }

  else
  {
    v56 = v84;
    (*(v81 + 56))(v7, 1, 1, v84);
    v57 = sub_1D22BB9D8(&qword_1EC6D7EA0, &qword_1EC6DEA40, &qword_1D2895590, MEMORY[0x1E697BEF0]);
    v88 = v82;
    v89 = v57;
    v58 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D389E750](v7, v56, v58);
    sub_1D22BD238(v7, &qword_1EC6DEA48, &qword_1D2896F38);
  }

  v59 = v85;
  v60 = *(v86 + 48);
  sub_1D22BD1D0(v23, v85, &qword_1EC6DEA60, &qword_1D2896F50);
  sub_1D22BD1D0(v47, v59 + v60, &qword_1EC6DEA48, &qword_1D2896F38);
  sub_1D28759C8();
  sub_1D22BD238(v47, &qword_1EC6DEA48, &qword_1D2896F38);
  return sub_1D22BD238(v23, &qword_1EC6DEA60, &qword_1D2896F50);
}

uint64_t sub_1D25C5490@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9490, &qword_1D287D3F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v76 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v68 - v6;
  v7 = type metadata accessor for PlaygroundHomeView(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = v9;
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DEB80, &qword_1D28970D8);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v68 - v13;
  v73 = type metadata accessor for PlaygroundHomeView;
  v71 = v10;
  sub_1D25CC8CC(v1, v10, type metadata accessor for PlaygroundHomeView);
  v15 = *(v8 + 80);
  v16 = swift_allocObject();
  v74 = type metadata accessor for PlaygroundHomeView;
  sub_1D25CD3F0(v10, v16 + ((v15 + 16) & ~v15), type metadata accessor for PlaygroundHomeView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE880, &unk_1D28955E0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6D99E8, &unk_1D288C480);
  v18 = sub_1D2875718();
  v19 = sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  v20 = sub_1D25CD3A8(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v83 = v17;
  v84 = v18;
  v85 = v19;
  v86 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1D2877368();
  v70 = *v1;
  v69 = v1[1];
  v83 = v70;
  v84 = v69;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  sub_1D2870F78();

  LOBYTE(v18) = sub_1D245E898();

  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = (v18 & 1) == 0;
  v23 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DEB90, &qword_1D28970E0) + 36)];
  *v23 = KeyPath;
  v23[1] = sub_1D22C03D8;
  v23[2] = v22;
  v24 = *(v12 + 44);
  v77 = v14;
  v25 = &v14[v24];
  *v25 = 1;
  *(v25 + 1) = 0xD000000000000028;
  *(v25 + 2) = 0x80000001D28AFF80;
  v26 = v71;
  v27 = v73;
  sub_1D25CC8CC(v2, v71, v73);
  sub_1D2878568();
  v28 = sub_1D2878558();
  v29 = (v15 + 32) & ~v15;
  v30 = swift_allocObject();
  v31 = MEMORY[0x1E69E85E0];
  *(v30 + 16) = v28;
  *(v30 + 24) = v31;
  v32 = v30 + v29;
  v33 = v26;
  v34 = v26;
  v35 = v74;
  sub_1D25CD3F0(v34, v32, v74);
  v36 = v2;
  v37 = v33;
  sub_1D25CC8CC(v36, v33, v27);
  v38 = sub_1D2878558();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;
  *(v39 + 24) = v31;
  v40 = v70;
  v41 = v69;
  sub_1D25CD3F0(v37, v39 + v29, v35);
  sub_1D2877528();
  v75 = v83;
  v74 = v84;
  LODWORD(v73) = v85;
  v83 = v40;
  v84 = v41;
  sub_1D2877308();
  v42 = *(v80 + 16);
  sub_1D2870F78();
  v43 = v72;

  sub_1D23015FC(v43);
  v44 = type metadata accessor for ImageGeneration.PreviewImage(0);
  v45 = *(*(v44 - 8) + 48);
  if (v45(v43, 1, v44) == 1)
  {

    sub_1D22BD238(v43, &qword_1EC6D9490, &qword_1D287D3F0);
    v83 = v40;
    v84 = v41;
    sub_1D2877308();
    v46 = *(v80 + 16);
    sub_1D2870F78();

    v47 = *(v46 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable + 8);
    v72 = *(v46 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable);
    v71 = v47;
    sub_1D2870F78();
  }

  else
  {
    v71 = v42;
    sub_1D22BD238(v43, &qword_1EC6D9490, &qword_1D287D3F0);
    v72 = &unk_1D2897130;
  }

  v83 = v40;
  v84 = v41;
  sub_1D2877308();
  v48 = *(v80 + 16);
  sub_1D2870F78();

  v49 = v41;
  v50 = v40;
  v51 = v76;
  sub_1D23015FC(v76);
  if (v45(v51, 1, v44) == 1)
  {

    sub_1D22BD238(v51, &qword_1EC6D9490, &qword_1D287D3F0);
    v83 = v50;
    v84 = v49;
    sub_1D2877308();
    v52 = *(v80 + 16);
    sub_1D2870F78();

    v53 = *(v52 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable);
    v48 = *(v52 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel_emptyPreviewImageTransferable + 8);
    sub_1D2870F78();
  }

  else
  {
    sub_1D22BD238(v51, &qword_1EC6D9490, &qword_1D287D3F0);
    v53 = &unk_1D289EDC0;
  }

  v83 = v50;
  v84 = v49;
  sub_1D2877308();
  v54 = *(v80 + 16);
  sub_1D2870F78();

  if (sub_1D2309BC4(v55) && (sub_1D22FFBF8(), v56 = sub_1D25A43F4(), , (v56 & 1) != 0))
  {
    swift_getKeyPath();
    v83 = v54;
    sub_1D25CD3A8(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719E8();

    v57 = *(v54 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);

    v58 = v57 != 1;
  }

  else
  {

    v58 = 1;
  }

  v59 = v75;
  v60 = v74;
  *&v80 = v75;
  *(&v80 + 1) = v74;
  v61 = v73;
  LOBYTE(v81) = v73;
  BYTE1(v81) = 1;
  v62 = v72;
  v63 = v71;
  *(&v81 + 1) = v72;
  *v82 = v71;
  *&v82[8] = v53;
  *&v82[16] = v48;
  v82[24] = v58;
  v64 = v78;
  sub_1D22EC9BC(v77, v78, &unk_1EC6DEB80, &qword_1D28970D8);
  v65 = (v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEB78, &qword_1D28970D0) + 36));
  v66 = v81;
  *v65 = v80;
  v65[1] = v66;
  v65[2] = *v82;
  *(v65 + 41) = *&v82[9];
  v83 = v59;
  v84 = v60;
  LOBYTE(v85) = v61;
  BYTE1(v85) = 1;
  v86 = v62;
  v87 = v63;
  v88 = v53;
  v89 = v48;
  v90 = v58;
  sub_1D22BD1D0(&v80, v79, &unk_1EC6DEBA0, &unk_1D28970E8);
  return sub_1D22BD238(&v83, &unk_1EC6DEBA0, &unk_1D28970E8);
}

uint64_t sub_1D25C5E20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v18 = *a1;
  v19 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v4 = v17[2];
  sub_1D2870F78();

  v19 = v3;
  sub_1D2877308();
  v5 = sub_1D2567268();

  type metadata accessor for ComposingCreateButton(0);
  sub_1D2874278();
  *a2 = v4;
  *(a2 + 8) = v5 & 1;
  sub_1D28772F8();
  v6 = v19;
  *(a2 + 16) = v18;
  *(a2 + 24) = v6;
  LOBYTE(v17) = 0;
  sub_1D28772F8();
  v7 = v19;
  *(a2 + 32) = v18;
  *(a2 + 40) = v7;
  v8 = type metadata accessor for KeyboardEventListener();
  v9 = objc_allocWithZone(v8);
  v10 = &v9[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillShow];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11 = &v9[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardWillHide];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v9[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidShow];
  *v12 = 0;
  *(v12 + 1) = 0;
  v13 = &v9[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_keyboardDidHide];
  *v13 = 0;
  *(v13 + 1) = 0;
  *&v9[OBJC_IVAR____TtC23ImagePlaygroundInternal21KeyboardEventListener_targetsOfInterest] = 1;
  v16.receiver = v9;
  v16.super_class = v8;
  v17 = objc_msgSendSuper2(&v16, sel_init);
  sub_1D28772F8();
  v14 = v19;
  *(a2 + 48) = v18;
  *(a2 + 56) = v14;
  result = swift_getKeyPath();
  *(a2 + 64) = result;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_1D25C5FEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA28, &qword_1D2896F18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DEA08, &qword_1D2896E80);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v24 - v6;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE9F8, &qword_1D2896E78);
  MEMORY[0x1EEE9AC00](v27);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = a1[1];
  v30 = *a1;
  v31 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v14 = *(v29 + 48);
  swift_getKeyPath();
  v30 = v14;
  sub_1D25CD3A8(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  v15 = *(v14 + 16);

  if (v15 == 2)
  {
    sub_1D25C4830(v7);
    v16 = sub_1D22BB9D8(&unk_1EC6DEA10, &qword_1EC6DEA08, &qword_1D2896E80, MEMORY[0x1E697C5E0]);
    v18 = v25;
    v17 = v26;
    MEMORY[0x1D389E720](v7, v26, v16);
    (*(v4 + 16))(v9, v18, v3);
    (*(v4 + 56))(v9, 0, 1, v3);
    v30 = v17;
    v31 = v16;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D389E750](v9, v3, OpaqueTypeConformance2);
    sub_1D22BD238(v9, &qword_1EC6DE9F8, &qword_1D2896E78);
    (*(v4 + 8))(v18, v3);
    (*(v24 + 8))(v7, v17);
  }

  else
  {
    (*(v4 + 56))(v9, 1, 1, v3);
    v20 = sub_1D22BB9D8(&unk_1EC6DEA10, &qword_1EC6DEA08, &qword_1D2896E80, MEMORY[0x1E697C5E0]);
    v30 = v26;
    v31 = v20;
    v21 = swift_getOpaqueTypeConformance2();
    MEMORY[0x1D389E750](v9, v3, v21);
    sub_1D22BD238(v9, &qword_1EC6DE9F8, &qword_1D2896E78);
  }

  v22 = sub_1D25CC010();
  MEMORY[0x1D389E720](v12, v27, v22);
  return sub_1D22BD238(v12, &qword_1EC6DE9F8, &qword_1D2896E78);
}

double sub_1D25C6458(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  sub_1D2870F78();

  sub_1D2309CF4(0);

  return result;
}

double sub_1D25C64CC()
{
  v0 = sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    v3 = v0;
    swift_once();
    v0 = v3;
  }

  MEMORY[0x1EEE9AC00](v0);
  MEMORY[0x1EEE9AC00](v1);
  sub_1D2877248();

  return result;
}

double sub_1D25C6638(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v1 = *(v4 + 16);
  sub_1D2870F78();

  sub_1D22F7DF4();
  sub_1D22CC218();

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource) != 1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25CD3A8(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D25C67B4()
{
  v0 = sub_1D2875718();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1D2875798();
  sub_1D2877268();
  sub_1D2875708();
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  sub_1D25CD3A8(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  sub_1D2876768();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D25C69E8(uint64_t a1)
{
  v2 = type metadata accessor for PlaygroundHomeView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D25CC8CC(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for PlaygroundHomeView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1D25CD3F0(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5, type metadata accessor for PlaygroundHomeView);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  return sub_1D2877368();
}

double sub_1D25C6B84(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  swift_getKeyPath();
  sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
  sub_1D28719E8();

  swift_getKeyPath();
  sub_1D2871A08();

  *(v2 + 96) = (*(v2 + 96) & 1) == 0;
  swift_getKeyPath();
  sub_1D28719F8();

  return result;
}

uint64_t sub_1D25C6CC8()
{
  v0 = sub_1D2875718();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D99E8, &unk_1D288C480);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = sub_1D2875798();
  v10 = v9;
  v12 = v11;
  if (qword_1ED89E0E8 != -1)
  {
    v18 = v8;
    swift_once();
    v8 = v18;
  }

  MEMORY[0x1EEE9AC00](v8);
  *(&v17 - 8) = v13;
  *(&v17 - 7) = v10;
  *(&v17 - 48) = v14 & 1;
  *(&v17 - 5) = v12;
  *(&v17 - 4) = 0;
  *(&v17 - 3) = 0;
  *(&v17 - 2) = v15;
  MEMORY[0x1EEE9AC00](v13);
  *(&v17 - 2) = 7630433;
  *(&v17 - 1) = 0xE300000000000000;
  sub_1D2877248();

  sub_1D2875708();
  sub_1D22BB9D8(&qword_1ED89D200, &qword_1EC6D99E8, &unk_1D288C480, MEMORY[0x1E697D658]);
  sub_1D25CD3A8(&qword_1ED89D6B0, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  sub_1D2876768();
  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D25C7008(uint64_t a1)
{
  v2 = sub_1D2875DE8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D90B8, &qword_1D287CD80);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14[-v7];
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE8A8, &qword_1D2896CC0);
  sub_1D22BB9D8(&qword_1EC6DE8B0, &qword_1EC6DE8A8, &qword_1D2896CC0, MEMORY[0x1E6981F48]);
  sub_1D2876508();
  sub_1D2877848();
  sub_1D2875208();
  v9 = &v8[*(v6 + 36)];
  v10 = v21;
  v9[4] = v20;
  v9[5] = v10;
  v9[6] = v22;
  v11 = v17;
  *v9 = v16;
  v9[1] = v11;
  v12 = v19;
  v9[2] = v18;
  v9[3] = v12;
  sub_1D2875DD8();
  sub_1D22BB920();
  sub_1D2876D88();
  (*(v3 + 8))(v5, v2);
  return sub_1D22BD238(v8, &qword_1EC6D90B8, &qword_1D287CD80);
}

uint64_t sub_1D25C725C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE8B8, &qword_1D2896CC8);
  v3 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE8C0, &qword_1D2896CD0);
  v30 = *(v8 - 8);
  v9 = v30;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v26 - v13;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE8C8, &qword_1D2896CD8);
  sub_1D22BB9D8(&qword_1EC6DE8D0, &qword_1EC6DE8C8, &qword_1D2896CD8, MEMORY[0x1E6981F48]);
  v29 = v14;
  sub_1D28775E8();
  v34 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE6C0, &unk_1D2884AD0);
  sub_1D22BB9D8(&qword_1ED89D158, &qword_1EC6DE6C0, &unk_1D2884AD0, MEMORY[0x1E697D680]);
  v27 = v7;
  sub_1D28775E8();
  v15 = *(v9 + 16);
  v28 = v11;
  v15(v11, v14, v8);
  v16 = *(v3 + 16);
  v17 = v31;
  v18 = v7;
  v19 = v32;
  v16(v31, v18, v32);
  v20 = v33;
  v15(v33, v11, v8);
  v21 = &v20[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE8D8, &unk_1D2896CE0) + 48)];
  v22 = v17;
  v16(v21, v17, v19);
  v23 = *(v3 + 8);
  v23(v27, v19);
  v24 = *(v30 + 8);
  v24(v29, v8);
  v23(v22, v19);
  return (v24)(v28, v8);
}

uint64_t sub_1D25C75E0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v76 = a2;
  v3 = sub_1D28750E8();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v65 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE8E0, &unk_1D2896CF0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v57 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE260, &qword_1D2895670);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v62 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE8F0, &unk_1D2896D00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v57 - v10;
  v11 = type metadata accessor for PlaygroundHomeView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE238, &qword_1D2895628);
  v70 = *(v14 - 8);
  v71 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v69 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57 - v17;
  v19 = a1[1];
  v78 = *a1;
  v20 = v78;
  v79 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v21 = sub_1D256BD7C();

  v78 = v21;
  swift_getKeyPath();
  v61 = a1;
  sub_1D25CC8CC(a1, &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundHomeView);
  v22 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v59 = v13;
  v23 = swift_allocObject();
  v58 = v22;
  v60 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D25CD3F0(v60, v23 + v22, type metadata accessor for PlaygroundHomeView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE900, &unk_1D2895630);
  sub_1D22BB9D8(&qword_1EC6DE258, &unk_1EC6DE910, &qword_1D2895668, MEMORY[0x1E69E6338]);
  sub_1D2594490();
  v56 = sub_1D25CD3A8(&qword_1EC6DE940, type metadata accessor for TapToRadarManager.LogItem, &unk_1D2888374);
  v68 = v18;
  sub_1D2874728();
  v78 = v20;
  v79 = v19;
  sub_1D2877308();
  v24 = *(v77 + 48);
  swift_getKeyPath();
  v78 = v24;
  sub_1D25CD3A8(&qword_1EC6D87B0, type metadata accessor for NavigationManager, &unk_1D28823E0);
  sub_1D28719E8();

  v25 = *(v24 + 16);

  if (v25 == 1)
  {
    v26 = sub_1D2875798();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    if (qword_1ED89E0E8 != -1)
    {
      swift_once();
    }

    v33 = qword_1ED8B0058;
    v34 = v60;
    sub_1D25CC8CC(v61, v60, type metadata accessor for PlaygroundHomeView);
    v35 = v58;
    v36 = swift_allocObject();
    v37 = sub_1D25CD3F0(v34, v36 + v35, type metadata accessor for PlaygroundHomeView);
    MEMORY[0x1EEE9AC00](v37);
    *(&v57 - 6) = v26;
    *(&v57 - 5) = v28;
    *(&v57 - 32) = v30 & 1;
    *(&v57 - 3) = v32;
    v56 = v33;
    sub_1D2870F78();
    v38 = v64;
    sub_1D2877368();

    *(v38 + *(v63 + 36)) = sub_1D2875D98();
    v39 = v65;
    sub_1D28750D8();
    sub_1D25945A8();
    sub_1D25CD3A8(&qword_1ED89D748, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    v40 = v62;
    v41 = v67;
    sub_1D28767A8();
    (*(v66 + 8))(v39, v41);
    sub_1D22BD238(v38, &unk_1EC6DE8E0, &unk_1D2896CF0);
    v42 = v72;
    v43 = v73;
    v44 = v74;
    (*(v72 + 32))(v73, v40, v74);
    v45 = 0;
  }

  else
  {
    v45 = 1;
    v43 = v73;
    v44 = v74;
    v42 = v72;
  }

  (*(v42 + 56))(v43, v45, 1, v44);
  v47 = v69;
  v46 = v70;
  v48 = *(v70 + 16);
  v49 = v68;
  v50 = v71;
  v48(v69, v68, v71);
  v51 = v75;
  sub_1D22BD1D0(v43, v75, &unk_1EC6DE8F0, &unk_1D2896D00);
  v52 = v76;
  v48(v76, v47, v50);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE948, &qword_1D2896D38);
  sub_1D22BD1D0(v51, &v52[*(v53 + 48)], &unk_1EC6DE8F0, &unk_1D2896D00);
  sub_1D22BD238(v43, &unk_1EC6DE8F0, &unk_1D2896D00);
  v54 = *(v46 + 8);
  v54(v49, v50);
  sub_1D22BD238(v51, &unk_1EC6DE8F0, &unk_1D2896D00);
  return (v54)(v47, v50);
}

uint64_t sub_1D25C7EB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v5 = sub_1D28750E8();
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlaygroundHomeView(0);
  v42 = *(v7 - 8);
  v8 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE8E0, &unk_1D2896CF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE260, &qword_1D2895670);
  v45 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v44 = &v41 - v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE950, &unk_1D2896D40);
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v41 - v15;
  v17 = *a1;
  type metadata accessor for TapToRadarManager.LogReason();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = v18;
    v41 = v10;
    v20 = *(v18 + 24);
    v49 = *(v18 + 16);
    v50 = v20;
    sub_1D25CC8CC(v43, &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundHomeView);
    v21 = *(v42 + 80);
    v42 = v13;
    v43 = a3;
    v22 = (v21 + 16) & ~v21;
    v23 = v5;
    v24 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    sub_1D25CD3F0(v9, v25 + v22, type metadata accessor for PlaygroundHomeView);
    *(v25 + v24) = v19;
    sub_1D22BD06C();
    sub_1D2870F78();
    sub_1D2870F68();
    sub_1D2877398();
    v26 = sub_1D2875D98();
    v27 = v41;
    *&v12[*(v41 + 36)] = v26;
    v28 = v46;
    sub_1D28750D8();
    v29 = sub_1D25945A8();
    v30 = sub_1D25CD3A8(&qword_1ED89D748, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    v31 = v44;
    sub_1D28767A8();
    (*(v47 + 8))(v28, v23);
    sub_1D22BD238(v12, &unk_1EC6DE8E0, &unk_1D2896CF0);
    v32 = v45;
    v33 = v42;
    (*(v45 + 16))(v16, v31, v42);
    swift_storeEnumTagMultiPayload();
    v49 = v27;
    v50 = v23;
    v51 = v29;
    v52 = v30;
    swift_getOpaqueTypeConformance2();
    sub_1D2875AF8();
    return (*(v32 + 8))(v31, v33);
  }

  else
  {
    v35 = *(v17 + 24);
    v49 = *(v17 + 16);
    v50 = v35;
    sub_1D22BD06C();
    sub_1D2870F68();
    *v16 = sub_1D2876698();
    *(v16 + 1) = v36;
    v16[16] = v37 & 1;
    *(v16 + 3) = v38;
    swift_storeEnumTagMultiPayload();
    v39 = sub_1D25945A8();
    v40 = sub_1D25CD3A8(&qword_1ED89D748, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    v49 = v10;
    v50 = v5;
    v51 = v39;
    v52 = v40;
    swift_getOpaqueTypeConformance2();
    return sub_1D2875AF8();
  }
}

double sub_1D25C8430(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  v7 = a1[1];
  v14[2] = *a1;
  v14[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v8 = v14[1];
  v9 = sub_1D28785F8();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  sub_1D2878568();
  sub_1D2870F78();
  sub_1D2870F78();
  v10 = sub_1D2878558();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v8;
  v11[5] = a2;
  sub_1D22AE01C(0, 0, v6, &unk_1D2896D50, v11);

  return result;
}

double sub_1D25C8598(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE890, &qword_1D287F9F0);
  sub_1D2877318();
  return result;
}

uint64_t sub_1D25C85F8(uint64_t a1)
{
  v2 = type metadata accessor for PlaygroundHomeView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D25CC8CC(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundHomeView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1D25CD3F0(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for PlaygroundHomeView);
  return sub_1D2877368();
}

double sub_1D25C874C(uint64_t *a1)
{
  v2 = sub_1D2877B48();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D2877B68();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaygroundHomeView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v33 = sub_1D2877BA8();
  v26 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  v14 = a1[1];
  aBlock = *a1;
  v35 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v15 = v40;
  if (*(v40 + 96))
  {
    KeyPath = swift_getKeyPath();
    v25[1] = v25;
    MEMORY[0x1EEE9AC00](KeyPath);
    v25[-2] = v15;
    LOBYTE(v25[-1]) = 0;
    aBlock = v15;
    sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  else
  {
    *(v40 + 96) = 0;
  }

  sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
  v17 = sub_1D2878AB8();
  sub_1D2877B88();
  sub_1D2877BC8();
  v26 = *(v26 + 8);
  (v26)(v10, v33);
  sub_1D25CC8CC(a1, v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PlaygroundHomeView);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1D25CD3F0(v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18, type metadata accessor for PlaygroundHomeView);
  v38 = sub_1D25CB7E4;
  v39 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1D23DFBA8;
  v37 = &block_descriptor_27;
  v20 = _Block_copy(&aBlock);
  v21 = v27;
  sub_1D2877B58();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1D25CD3A8(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D22BB9D8(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00, MEMORY[0x1E69E6328]);
  v22 = v30;
  v23 = v32;
  sub_1D2879088();
  MEMORY[0x1D38A1510](v13, v21, v22, v20);
  _Block_release(v20);

  (*(v31 + 8))(v22, v23);
  (*(v28 + 8))(v21, v29);
  (v26)(v13, v33);

  return result;
}

double sub_1D25C8D18(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  if (*(v3 + 97) == 1)
  {
    *(v3 + 97) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D25CD3A8(&qword_1EC6D8A80, type metadata accessor for PlaygroundHomeViewModel, &protocol conformance descriptor for PlaygroundHomeViewModel);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D25C8E64@<X0>(uint64_t a1@<X8>)
{
  sub_1D2875798();
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  result = sub_1D2876668();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double sub_1D25C8F44@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE8A0, &qword_1D2888A38);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for DebugSettingsView(0);
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v4 = a1 + v2[6];
  sub_1D28772F8();
  *v4 = v7;
  *(v4 + 1) = *(&v7 + 1);
  v5 = a1 + v2[7];
  sub_1D28772F8();
  result = *&v7;
  *v5 = v7;
  *(v5 + 2) = v8;
  return result;
}

uint64_t sub_1D25C9034@<X0>(uint64_t a1@<X8>)
{
  v18[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DB0C8, &qword_1D2888DB0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v18 - v2;
  v4 = sub_1D2874288();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D2875798();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED8B0058;
  sub_1D2874268();
  (*(v5 + 16))(v3, v7, v4);
  v16 = (*(v5 + 56))(v3, 0, 1, v4);
  MEMORY[0x1EEE9AC00](v16);
  v18[-6] = v8;
  v18[-5] = v10;
  LOBYTE(v18[-4]) = v12 & 1;
  v18[-3] = v14;
  v18[-2] = v15;
  sub_1D2877358();

  return (*(v5 + 8))(v7, v4);
}

double sub_1D25C9288(void *a1, void (*a2)(void *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  v3 = sub_1D2877308();
  a2(v3);

  return result;
}

double sub_1D25C92EC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = sub_1D2871CA8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_1D2875798();
  v25 = v7;
  v23 = v8;
  v10 = v9;
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v11 = qword_1ED8B0058;
  v12 = a1[1];
  v27 = *a1;
  v28 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v13 = sub_1D23C7998()[4];
  (*(v4 + 104))(v6, *MEMORY[0x1E699C1D8], v3);
  v14 = v13;
  v15 = sub_1D2877C18();
  v17 = v16;

  v18 = (*(v4 + 8))(v6, v3);
  MEMORY[0x1EEE9AC00](v18);
  v19 = v25;
  *&v22[-64] = v24;
  *&v22[-56] = v19;
  v22[-48] = v23 & 1;
  *&v22[-40] = v10;
  *&v22[-32] = 0;
  *&v22[-24] = 0;
  *&v22[-16] = v11;
  MEMORY[0x1EEE9AC00](v20);
  *&v22[-16] = v15;
  *&v22[-8] = v17;
  sub_1D2877248();

  return result;
}

uint64_t sub_1D25C9590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v5 = sub_1D2879328();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  sub_1D2878568();
  v4[13] = sub_1D2878558();
  v7 = sub_1D28784F8();
  v4[14] = v7;
  v4[15] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D25C9684, v7, v6);
}

uint64_t sub_1D25C9684()
{
  v1 = sub_1D2879908();
  v3 = v2;
  sub_1D2879718();
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_1D25C9768;

  return sub_1D233BA38(v1, v3, 0, 0, 1);
}

uint64_t sub_1D25C9768()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 80);
  *(*v1 + 136) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_1D25C9AE8;
  }

  else
  {
    v8 = sub_1D25C9900;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1D25C9900()
{
  v1 = v0[9];

  v2 = *v1;
  v3 = v1[1];
  v0[2] = *v1;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v4 = PlaygroundHomeViewModel.photoGridViewModel.getter();

  if (*(v4 + 80) == 1)
  {
    *(v4 + 80) = 1;
  }

  else
  {
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;
    v0[7] = v4;
    sub_1D25CD3A8(&qword_1EC6D8690, type metadata accessor for PhotoGridViewModel, &protocol conformance descriptor for PhotoGridViewModel);
    sub_1D28719D8();
  }

  v0[4] = v2;
  v0[5] = v3;
  sub_1D2877308();
  v6 = PlaygroundHomeViewModel.photoGridViewModel.getter();

  *(v6 + 81) = 0;

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D25C9AE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t PlaygroundHomeView.validateDrop(info:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
  sub_1D2877308();
  v0 = sub_1D25675F4();

  if ((v0 & 1) != 0 && (v1 = *(sub_1D2877668() + 16), , !v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA8, &qword_1D287F8B8);
    sub_1D2873AA8();
    *(swift_allocObject() + 16) = xmmword_1D287F500;
    sub_1D2873A68();
    v2 = sub_1D2877678();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t PlaygroundHomeView.performDrop(info:)()
{
  v0 = sub_1D2871818();
  v21 = *(v0 - 8);
  v22 = v0;
  v1 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9BA8, &qword_1D287F8B8);
  sub_1D2873AA8();
  v6 = swift_allocObject();
  v23 = xmmword_1D287F500;
  *(v6 + 16) = xmmword_1D287F500;
  sub_1D2873A68();
  v7 = sub_1D2877678();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  *(swift_allocObject() + 16) = v23;
  sub_1D2873A68();
  v8 = sub_1D2877658();

  if (v8 >> 62)
  {
    result = sub_1D2879368();
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_9:

    return 0;
  }

LABEL_4:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1D38A1C30](0, v8);
    goto LABEL_7;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);
LABEL_7:
    v11 = v10;

    v13 = v20[1];
    v24 = *v20;
    v12 = v24;
    v25 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE6F0, &unk_1D2896940);
    sub_1D2877308();
    PlaygroundHomeViewModel.enterComposing()();

    sub_1D2871808();
    v24 = v12;
    v25 = v13;
    sub_1D2877308();
    sub_1D2870F78();

    sub_1D22F7DF4();

    v15 = v21;
    v14 = v22;
    (*(v21 + 16))(v2, v5, v22);
    v16 = (*(v15 + 80) + 24) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = v11;
    (*(v15 + 32))(v17 + v16, v2, v14);
    v18 = v11;
    sub_1D22CC674(&unk_1D2896958, v17);

    (*(v15 + 8))(v5, v14);
    return 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D25CA018(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v2[6] = sub_1D2878568();
  v2[7] = sub_1D2878558();
  v4 = sub_1D28784F8();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D25CA0B4, v4, v3);
}

uint64_t sub_1D25CA0B4(uint64_t a1)
{
  v2 = v1[4];
  v3 = sub_1D2878558();
  v1[10] = v3;
  v4 = swift_task_alloc();
  v1[11] = v4;
  *(v4 + 16) = v2;
  v5 = swift_task_alloc();
  v1[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE740, &unk_1D2899B90);
  *v5 = v1;
  v5[1] = sub_1D25CA1D0;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v1 + 2, v3, v7, 0xD000000000000012, 0x80000001D28B3820, sub_1D25CB220, v4, v6);
}

uint64_t sub_1D25CA1D0()
{
  v1 = *v0;

  v2 = *(v1 + 72);
  v3 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D25CA330, v3, v2);
}

uint64_t sub_1D25CA330()
{

  v1 = v0[2];
  v2 = v0[3];
  v4 = sub_1D28717B8();
  v5 = v0[1];

  return v5(v1, v2, v4, v3);
}

uint64_t sub_1D25CA3B8()
{
  v2 = *(sub_1D2871818() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D22EC04C;

  return sub_1D25CA018(v4, v0 + v3);
}

uint64_t sub_1D25CA4AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE748, &unk_1D2896AE0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = sub_1D2873AA8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2873A68();
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v5, v2);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D25CA69C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1D2873CB8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 60 == 15)
  {
    sub_1D28724A8();
    v12 = a3;
    v13 = sub_1D2873CA8();
    v14 = sub_1D2878A18();

    if (os_log_type_enabled(v13, v14))
    {
      v21[1] = a4;
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      if (a3)
      {
        v17 = a3;
        v18 = _swift_stdlib_bridgeErrorToNSError();
        v19 = v18;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      *(v15 + 4) = v18;
      *v16 = v19;
      _os_log_impl(&dword_1D226E000, v13, v14, "Cannot get data for dropped image: %@", v15, 0xCu);
      sub_1D22BD238(v16, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v16, -1, -1);
      MEMORY[0x1D38A3520](v15, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }

  v21[2] = a1;
  v21[3] = a2;
  sub_1D22D6CE4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE748, &unk_1D2896AE0);
  return sub_1D2878518();
}