uint64_t sub_10037DCBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v4 - 8);
  v6 = v20 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  VisitAssetMetadata.visitStartTime.getter();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_100004F84(v6, &unk_100AD4790, &unk_10093B4E0);
    type metadata accessor for SuggestionImportSession(0);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Discarded visit while identifying durations, missing start time.", v13, 2u);
    }

    v14 = sub_1000F24EC(&qword_100AD64E8, &qword_1009451B0);
    return (*(*(v14 - 8) + 56))(a2, 1, 1, v14);
  }

  else
  {
    v16 = *(v8 + 32);
    v16(v10, v6, v7);
    v17 = sub_1000F24EC(&qword_100AD64E8, &qword_1009451B0);
    v18 = *(v17 + 48);
    v16(a2, v10, v7);
    v19 = type metadata accessor for VisitAssetMetadata();
    (*(*(v19 - 8) + 16))(&a2[v18], a1, v19);
    return (*(*(v17 - 8) + 56))(a2, 0, 1, v17);
  }
}

void sub_10037DFA0(uint64_t a1, unint64_t a2)
{
  v54 = a1;
  v46 = sub_1000F24EC(&unk_100AEE0A0, &unk_100943F50);
  __chkstk_darwin(v46);
  v45 = &v41 - v3;
  v4 = sub_1000F24EC(&qword_100AE0D60, &qword_100952198);
  __chkstk_darwin(v4 - 8);
  v53 = &v41 - v5;
  v52 = type metadata accessor for SuggestionImportSession.VisitDuration(0);
  v6 = *(v52 - 8);
  __chkstk_darwin(v52);
  v55 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v8 - 8);
  v10 = &v41 - v9;
  v62 = type metadata accessor for Date();
  v11 = *(v62 - 8);
  __chkstk_darwin(v62);
  v56 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
  v13 = *(v44 - 8);
  __chkstk_darwin(v44);
  v15 = &v41 - v14;
  v67 = type metadata accessor for PhotoLibraryAssetMetadata();
  v16 = *(v67 - 8);
  __chkstk_darwin(v67);
  v63 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (!v18)
    {
      return;
    }
  }

  else
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      return;
    }
  }

  if (v18 < 1)
  {
    __break(1u);
  }

  else
  {
    v19 = 0;
    v20 = a2 & 0xC000000000000001;
    v64 = (v16 + 48);
    v59 = (v16 + 32);
    v60 = 0;
    v58 = (v11 + 48);
    v49 = (v11 + 32);
    v48 = (v6 + 48);
    v43 = (v16 + 16);
    v42 = (v13 + 56);
    v57 = (v16 + 8);
    v47 = (v11 + 8);
    v41 = xmmword_100941EE0;
    v51 = a2;
    v50 = v10;
    v61 = v15;
    v65 = a2 & 0xC000000000000001;
    v66 = v18;
    do
    {
      if (v20)
      {
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v21 = *(a2 + 8 * v19 + 32);
      }

      v22 = v21;
      v70[0] = v21;
      type metadata accessor for Asset(0);
      v23 = v22;
      sub_1000F24EC(&qword_100AE0D68, &qword_1009521D8);
      if (swift_dynamicCast())
      {
        v25 = v68;
        v24 = v69;
        ObjectType = swift_getObjectType();
        sub_10078B684(ObjectType, v24, v15);
        v27 = v67;
        if ((*v64)(v15, 1, v67) == 1)
        {

          sub_100004F84(v15, &qword_100AD5B20, qword_1009521A0);
        }

        else
        {
          v28 = v63;
          (*v59)(v63, v15, v27);
          PhotoLibraryAssetMetadata.date.getter();
          v29 = v62;
          if ((*v58)(v10, 1, v62) == 1)
          {
            (*v57)(v28, v27);

            sub_100004F84(v10, &unk_100AD4790, &unk_10093B4E0);
            v15 = v61;
          }

          else
          {
            v30 = v10;
            v31 = v56;
            v32 = (*v49)(v56, v30, v29);
            __chkstk_darwin(v32);
            *(&v41 - 2) = v31;
            v33 = v53;
            v34 = v60;
            sub_100565E98(sub_1003A72B4, v54, v53);
            v60 = v34;
            if ((*v48)(v33, 1, v52) == 1)
            {
              (*v57)(v63, v67);

              sub_100004F84(v33, &qword_100AE0D60, &qword_100952198);
              (*v47)(v31, v29);
              a2 = v51;
              v10 = v50;
              v15 = v61;
            }

            else
            {
              sub_1003A6F60(v33, v55, type metadata accessor for SuggestionImportSession.VisitDuration);
              VisitAssetMetadata.latitude.getter();
              v15 = v61;
              if (v35)
              {

                sub_1003A3E80(v55, type metadata accessor for SuggestionImportSession.VisitDuration);
                (*v57)(v63, v67);
                (*v47)(v56, v62);
                a2 = v51;
                v10 = v50;
              }

              else
              {
                VisitAssetMetadata.longitude.getter();
                v10 = v50;
                if (v36)
                {

                  sub_1003A3E80(v55, type metadata accessor for SuggestionImportSession.VisitDuration);
                  (*v57)(v63, v67);
                }

                else
                {
                  v37 = v63;
                  PhotoLibraryAssetMetadata.latitude.setter();
                  v38 = v37;
                  PhotoLibraryAssetMetadata.longitude.setter();
                  VisitAssetMetadata.placeName.getter();
                  PhotoLibraryAssetMetadata.placeName.setter();
                  v39 = v45;
                  (*v43)(v45, v37, v67);
                  swift_storeEnumTagMultiPayload();
                  sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
                  v40 = swift_allocObject();
                  (*v42)(v40 + *(*v40 + 104), 1, 1, v44);
                  *(v40 + *(*v40 + 112)) = v41;
                  sub_100021CEC(v39, v40 + *(*v40 + 120), &unk_100AEE0A0, &unk_100943F50);
                  (*(v24 + 40))(v40, ObjectType, v24);

                  sub_1003A3E80(v55, type metadata accessor for SuggestionImportSession.VisitDuration);
                  (*v57)(v38, v67);
                }

                (*v47)(v56, v62);
                a2 = v51;
              }
            }
          }
        }

        v20 = v65;
        v18 = v66;
      }

      else
      {
      }

      ++v19;
    }

    while (v18 != v19);
  }
}

uint64_t sub_10037E8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[56] = a2;
  v3[57] = a3;
  v3[55] = a1;
  sub_1000F24EC(&qword_100AD3750, &unk_1009421B0);
  v3[58] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v3[59] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v4 = type metadata accessor for MultiPinMapAssetMetadata();
  v3[62] = v4;
  v3[63] = *(v4 - 8);
  v3[64] = swift_task_alloc();
  v5 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  v3[65] = v5;
  v3[66] = *(v5 - 8);
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = sub_1000F24EC(&qword_100AD38D0, &qword_1009522B0);
  v3[73] = swift_task_alloc();
  v6 = type metadata accessor for SuggestionImportSession(0);
  v3[74] = v6;
  v7 = *(v6 - 8);
  v3[75] = v7;
  v3[76] = *(v7 + 64);
  v3[77] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v8 = type metadata accessor for Suggestion.ItemContent(0);
  v3[81] = v8;
  v9 = *(v8 - 8);
  v3[82] = v9;
  v3[83] = *(v9 + 64);
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AE0D98, &qword_1009522B8);
  v3[87] = v10;
  v3[88] = *(v10 - 8);
  v3[89] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0DA0, &unk_1009522C0);
  v3[90] = swift_task_alloc();
  v3[91] = swift_task_alloc();

  return _swift_task_switch(sub_10037ED1C, 0, 0);
}

void sub_10037ED1C()
{
  v261 = v0;
  v1 = *(v0 + 704);
  v2 = *(v0 + 696);
  v3 = *(v0 + 664);
  v255 = *(v0 + 656);
  v252 = *(v0 + 648);
  v249 = *(v0 + 600);
  v4 = *(v0 + 456);
  v5 = *(*(v0 + 592) + 20);
  *(v0 + 768) = v5;
  v6 = *(v4 + v5);
  *(v0 + 736) = v6;
  v253 = (v1 + 48);
  v254 = (v1 + 56);
  v251 = v3 + 7;
  v258 = v6;

  v7 = 0;
  for (i = v2; ; v2 = i)
  {
LABEL_4:
    v18 = *(v258 + 16);
    if (v7 == v18)
    {
      v19 = 1;
      v20 = v255;
    }

    else
    {
      v20 = v255;
      if (v7 >= v18)
      {
        __break(1u);
        return;
      }

      v21 = *(v0 + 720);
      v22 = *(v0 + 712);
      v23 = v258 + ((*(v255 + 80) + 32) & ~*(v255 + 80)) + *(v255 + 72) * v7;
      v24 = *(v2 + 48);
      *v22 = v7;
      sub_1003A6EF8(v23, v22 + v24, type metadata accessor for Suggestion.ItemContent);
      sub_100021CEC(v22, v21, &qword_100AE0D98, &qword_1009522B8);
      v19 = 0;
      ++v7;
    }

    v25 = *(v0 + 728);
    v26 = *(v0 + 720);
    v27 = *(v0 + 696);
    (*v254)(v26, v19, 1, v27);
    sub_100021CEC(v26, v25, &qword_100AE0DA0, &unk_1009522C0);
    if ((*v253)(v25, 1, v27) == 1)
    {
      break;
    }

    v28 = *(v0 + 728);
    v29 = *(v0 + 688);
    v30 = *v28;
    sub_1003A6F60(v28 + *(v2 + 48), v29, type metadata accessor for Suggestion.ItemContent);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = xmmword_1009520F0;
    *(v31 + 48) = _swiftEmptyArrayStorage;
    *(v31 + 56) = _swiftEmptyArrayStorage;
    *(v31 + 64) = _swiftEmptyArrayStorage;
    *(v31 + 72) = 0;
    *(v31 + 80) = 0;
    *(v31 + 88) = v30;
    v259 = v31;
    v32 = *(v29 + *(v252 + 20));
    v33 = (v32 + 32);
    v34 = *(v32 + 16) + 1;
    v35 = v34;
    v36 = v33;
    while (--v35)
    {
      v37 = *v36;
      v36 += 4;
      if (v37 == &type metadata for Suggestion.Reflection)
      {
        v256 = v7;
        v38 = *(v0 + 688);
        v39 = *(v0 + 680);
        v40 = *(v0 + 640);
        v41 = *(v0 + 632);
        v42 = type metadata accessor for TaskPriority();
        v43 = *(v42 - 8);
        (*(v43 + 56))(v40, 1, 1, v42);
        sub_1003A6EF8(v38, v39, type metadata accessor for Suggestion.ItemContent);
        v44 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v45 = swift_allocObject();
        *(v45 + 16) = 0;
        v46 = (v45 + 16);
        *(v45 + 24) = 0;
        sub_1003A6F60(v39, v45 + v44, type metadata accessor for Suggestion.ItemContent);
        *(v45 + ((v44 + v251) & 0xFFFFFFFFFFFFFFF8)) = v259;
        sub_1000082B4(v40, v41, &qword_100AD5170, &unk_100943680);
        LODWORD(v40) = (*(v43 + 48))(v41, 1, v42);

        v47 = *(v0 + 632);
        if (v40 == 1)
        {
          sub_100004F84(*(v0 + 632), &qword_100AD5170, &unk_100943680);
          if (*v46)
          {
            goto LABEL_14;
          }

LABEL_24:
          v48 = 0;
          v50 = 0;
        }

        else
        {
          TaskPriority.rawValue.getter();
          (*(v43 + 8))(v47, v42);
          if (!*v46)
          {
            goto LABEL_24;
          }

LABEL_14:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v48 = dispatch thunk of Actor.unownedExecutor.getter();
          v50 = v49;
          swift_unknownObjectRelease();
        }

        v2 = i;
        v7 = v256;
        v64 = **(v0 + 448);
        v65 = v50 | v48;
        if (v50 | v48)
        {
          v65 = v0 + 336;
          *(v0 + 336) = 0;
          *(v0 + 344) = 0;
          *(v0 + 352) = v48;
          *(v0 + 360) = v50;
        }

        v66 = *(v0 + 688);
        v67 = *(v0 + 640);
        *(v0 + 416) = 1;
        *(v0 + 424) = v65;
        *(v0 + 432) = v64;
        swift_task_create();

        sub_100004F84(v67, &qword_100AD5170, &unk_100943680);
        sub_1003A3E80(v66, type metadata accessor for Suggestion.ItemContent);
LABEL_28:

        goto LABEL_4;
      }
    }

    v51 = v34;
    v52 = v33;
    while (--v51)
    {
      v53 = v52 + 4;
      v54 = *v52;
      v55 = type metadata accessor for Suggestion.Photo(0);
      v52 = v53;
      if (v54 == v55)
      {
        v8 = *(v0 + 688);
        v9 = *(v0 + 680);
        v10 = *(v0 + 624);
        v11 = type metadata accessor for TaskPriority();
        (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
        sub_1003A6EF8(v8, v9, type metadata accessor for Suggestion.ItemContent);
        v12 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v13 = v7;
        v14 = swift_allocObject();
        *(v14 + 16) = 0;
        *(v14 + 24) = 0;
        sub_1003A6F60(v9, v14 + v12, type metadata accessor for Suggestion.ItemContent);
        *(v14 + ((v12 + v251) & 0xFFFFFFFFFFFFFFF8)) = v259;

        v15 = &unk_1009522E8;
LABEL_2:
        v16 = v14;
        v7 = v13;
        sub_100381E00(v10, v15, v16);
        sub_100004F84(v10, &qword_100AD5170, &unk_100943680);
        v17 = v8;
LABEL_3:
        sub_1003A3E80(v17, type metadata accessor for Suggestion.ItemContent);

        goto LABEL_4;
      }
    }

    v56 = v34;
    v57 = v33;
    while (--v56)
    {
      v58 = v57 + 4;
      v59 = *v57;
      v60 = type metadata accessor for Suggestion.Video(0);
      v57 = v58;
      if (v59 == v60)
      {
        v8 = *(v0 + 688);
        v61 = *(v0 + 680);
        v10 = *(v0 + 624);
        v62 = type metadata accessor for TaskPriority();
        (*(*(v62 - 8) + 56))(v10, 1, 1, v62);
        sub_1003A6EF8(v8, v61, type metadata accessor for Suggestion.ItemContent);
        v63 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v13 = v7;
        v14 = swift_allocObject();
        *(v14 + 16) = 0;
        *(v14 + 24) = 0;
        sub_1003A6F60(v61, v14 + v63, type metadata accessor for Suggestion.ItemContent);
        *(v14 + ((v63 + v251) & 0xFFFFFFFFFFFFFFF8)) = v259;

        v15 = &unk_1009522F8;
        goto LABEL_2;
      }
    }

    v68 = v34;
    v69 = v33;
    while (--v68)
    {
      v70 = v69 + 4;
      v71 = *v69;
      v72 = type metadata accessor for Suggestion.LivePhoto(0);
      v69 = v70;
      if (v71 == v72)
      {
        v8 = *(v0 + 688);
        v73 = *(v0 + 680);
        v10 = *(v0 + 624);
        v74 = type metadata accessor for TaskPriority();
        (*(*(v74 - 8) + 56))(v10, 1, 1, v74);
        sub_1003A6EF8(v8, v73, type metadata accessor for Suggestion.ItemContent);
        v75 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v13 = v7;
        v14 = swift_allocObject();
        *(v14 + 16) = 0;
        *(v14 + 24) = 0;
        sub_1003A6F60(v73, v14 + v75, type metadata accessor for Suggestion.ItemContent);
        *(v14 + ((v75 + v251) & 0xFFFFFFFFFFFFFFF8)) = v259;

        v15 = &unk_100952308;
        goto LABEL_2;
      }
    }

    v76 = v34;
    v77 = v33;
    v257 = v7;
    while (--v76)
    {
      v78 = v77 + 4;
      v79 = *v77;
      v80 = type metadata accessor for Suggestion.Song(0);
      v77 = v78;
      if (v79 == v80)
      {
        v81 = *(v0 + 688);
        v247 = v81;
        v82 = *(v0 + 680);
        v83 = *(v0 + 624);
        v84 = *(v0 + 616);
        v85 = *(v0 + 456);
        v86 = type metadata accessor for TaskPriority();
        (*(*(v86 - 8) + 56))(v83, 1, 1, v86);
        sub_1003A6EF8(v81, v82, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v85, v84, type metadata accessor for SuggestionImportSession);
        v87 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v88 = (v87 + v251) & 0xFFFFFFFFFFFFFFF8;
        v89 = (*(v249 + 80) + v88 + 8) & ~*(v249 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        sub_1003A6F60(v82, v90 + v87, type metadata accessor for Suggestion.ItemContent);
        *(v90 + v88) = v259;
        v91 = v90 + v89;
        v2 = i;
        sub_1003A6F60(v84, v91, type metadata accessor for SuggestionImportSession);

        v92 = &unk_100952318;
LABEL_73:
        v217 = v90;
        v7 = v257;
        sub_100381E00(v83, v92, v217);
        sub_100004F84(v83, &qword_100AD5170, &unk_100943680);
        v17 = v247;
        goto LABEL_3;
      }
    }

    v93 = v34;
    v94 = v33;
    while (--v93)
    {
      v95 = v94 + 4;
      v96 = *v94;
      v97 = type metadata accessor for Suggestion.Podcast(0);
      v94 = v95;
      if (v96 == v97)
      {
        v98 = *(v0 + 688);
        v247 = v98;
        v99 = *(v0 + 680);
        v83 = *(v0 + 624);
        v100 = *(v0 + 616);
        v101 = *(v0 + 456);
        v102 = type metadata accessor for TaskPriority();
        (*(*(v102 - 8) + 56))(v83, 1, 1, v102);
        sub_1003A6EF8(v98, v99, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v101, v100, type metadata accessor for SuggestionImportSession);
        v103 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v104 = (v103 + v251) & 0xFFFFFFFFFFFFFFF8;
        v105 = (*(v249 + 80) + v104 + 8) & ~*(v249 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        sub_1003A6F60(v99, v90 + v103, type metadata accessor for Suggestion.ItemContent);
        *(v90 + v104) = v259;
        v106 = v90 + v105;
        v2 = i;
        sub_1003A6F60(v100, v106, type metadata accessor for SuggestionImportSession);

        v92 = &unk_100952328;
        goto LABEL_73;
      }
    }

    v107 = v34;
    v108 = v33;
    while (--v107)
    {
      v109 = v108 + 4;
      v110 = *v108;
      v111 = type metadata accessor for Suggestion.GenericMedia(0);
      v108 = v109;
      if (v110 == v111)
      {
        v112 = *(v0 + 688);
        v247 = v112;
        v113 = *(v0 + 680);
        v83 = *(v0 + 624);
        v114 = *(v0 + 616);
        v115 = *(v0 + 456);
        v116 = type metadata accessor for TaskPriority();
        (*(*(v116 - 8) + 56))(v83, 1, 1, v116);
        sub_1003A6EF8(v112, v113, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v115, v114, type metadata accessor for SuggestionImportSession);
        v117 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v118 = (v117 + v251) & 0xFFFFFFFFFFFFFFF8;
        v119 = (*(v249 + 80) + v118 + 8) & ~*(v249 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        sub_1003A6F60(v113, v90 + v117, type metadata accessor for Suggestion.ItemContent);
        *(v90 + v118) = v259;
        v120 = v90 + v119;
        v2 = i;
        sub_1003A6F60(v114, v120, type metadata accessor for SuggestionImportSession);

        v92 = &unk_100952338;
        goto LABEL_73;
      }
    }

    v121 = v34;
    v122 = v33;
    while (--v121)
    {
      v123 = v122 + 4;
      v124 = *v122;
      v125 = type metadata accessor for Suggestion.Contact(0);
      v122 = v123;
      if (v124 == v125)
      {
        v126 = *(v0 + 688);
        v247 = v126;
        v127 = *(v0 + 680);
        v83 = *(v0 + 624);
        v128 = *(v0 + 616);
        v129 = *(v0 + 456);
        v130 = type metadata accessor for TaskPriority();
        (*(*(v130 - 8) + 56))(v83, 1, 1, v130);
        sub_1003A6EF8(v126, v127, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v129, v128, type metadata accessor for SuggestionImportSession);
        v131 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v132 = (v131 + v251) & 0xFFFFFFFFFFFFFFF8;
        v133 = (*(v249 + 80) + v132 + 8) & ~*(v249 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        sub_1003A6F60(v127, v90 + v131, type metadata accessor for Suggestion.ItemContent);
        *(v90 + v132) = v259;
        v134 = v90 + v133;
        v2 = i;
        sub_1003A6F60(v128, v134, type metadata accessor for SuggestionImportSession);

        v92 = &unk_100952348;
        goto LABEL_73;
      }
    }

    v135 = v34;
    v136 = v33;
    while (--v135)
    {
      v137 = v136 + 4;
      v138 = *v136;
      v139 = type metadata accessor for Suggestion.Location(0);
      v136 = v137;
      if (v138 == v139)
      {
        v140 = *(v0 + 688);
        v247 = v140;
        v141 = *(v0 + 680);
        v83 = *(v0 + 624);
        v142 = *(v0 + 616);
        v143 = *(v0 + 456);
        v144 = type metadata accessor for TaskPriority();
        (*(*(v144 - 8) + 56))(v83, 1, 1, v144);
        sub_1003A6EF8(v140, v141, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v143, v142, type metadata accessor for SuggestionImportSession);
        v145 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v146 = (v145 + v251) & 0xFFFFFFFFFFFFFFF8;
        v147 = (*(v249 + 80) + v146 + 8) & ~*(v249 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        sub_1003A6F60(v141, v90 + v145, type metadata accessor for Suggestion.ItemContent);
        *(v90 + v146) = v259;
        v148 = v90 + v147;
        v2 = i;
        sub_1003A6F60(v142, v148, type metadata accessor for SuggestionImportSession);

        v92 = &unk_100952358;
        goto LABEL_73;
      }
    }

    v149 = v34;
    v150 = v33;
    while (--v149)
    {
      v151 = *v150;
      v150 += 4;
      if (v151 == &type metadata for Suggestion.LocationGroup)
      {
        v152 = *(v0 + 688);
        v247 = v152;
        v153 = *(v0 + 680);
        v83 = *(v0 + 624);
        v154 = *(v0 + 616);
        v155 = *(v0 + 456);
        v156 = type metadata accessor for TaskPriority();
        (*(*(v156 - 8) + 56))(v83, 1, 1, v156);
        sub_1003A6EF8(v152, v153, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v155, v154, type metadata accessor for SuggestionImportSession);
        v157 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v158 = (v157 + v251) & 0xFFFFFFFFFFFFFFF8;
        v159 = (*(v249 + 80) + v158 + 8) & ~*(v249 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        sub_1003A6F60(v153, v90 + v157, type metadata accessor for Suggestion.ItemContent);
        *(v90 + v158) = v259;
        v160 = v90 + v159;
        v2 = i;
        sub_1003A6F60(v154, v160, type metadata accessor for SuggestionImportSession);

        v92 = &unk_100952368;
        goto LABEL_73;
      }
    }

    v161 = v34;
    v162 = v33;
    while (--v161)
    {
      v163 = v162 + 4;
      v164 = *v162;
      v165 = type metadata accessor for Suggestion.Workout(0);
      v162 = v163;
      if (v164 == v165)
      {
        v166 = *(v0 + 688);
        v247 = v166;
        v167 = *(v0 + 680);
        v83 = *(v0 + 624);
        v168 = *(v0 + 616);
        v169 = *(v0 + 456);
        v170 = type metadata accessor for TaskPriority();
        (*(*(v170 - 8) + 56))(v83, 1, 1, v170);
        sub_1003A6EF8(v166, v167, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v169, v168, type metadata accessor for SuggestionImportSession);
        v171 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v172 = (v171 + v251) & 0xFFFFFFFFFFFFFFF8;
        v173 = (*(v249 + 80) + v172 + 8) & ~*(v249 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        sub_1003A6F60(v167, v90 + v171, type metadata accessor for Suggestion.ItemContent);
        *(v90 + v172) = v259;
        v174 = v90 + v173;
        v2 = i;
        sub_1003A6F60(v168, v174, type metadata accessor for SuggestionImportSession);

        v92 = &unk_100952378;
        goto LABEL_73;
      }
    }

    v175 = v34;
    v176 = v33;
    while (--v175)
    {
      v177 = v176 + 4;
      v178 = *v176;
      v179 = type metadata accessor for Suggestion.MotionActivity(0);
      v176 = v177;
      if (v178 == v179)
      {
        v180 = *(v0 + 688);
        v247 = v180;
        v181 = *(v0 + 680);
        v83 = *(v0 + 624);
        v182 = *(v0 + 616);
        v183 = *(v0 + 456);
        v184 = type metadata accessor for TaskPriority();
        (*(*(v184 - 8) + 56))(v83, 1, 1, v184);
        sub_1003A6EF8(v180, v181, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v183, v182, type metadata accessor for SuggestionImportSession);
        v185 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v186 = (v185 + v251) & 0xFFFFFFFFFFFFFFF8;
        v187 = (*(v249 + 80) + v186 + 8) & ~*(v249 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        sub_1003A6F60(v181, v90 + v185, type metadata accessor for Suggestion.ItemContent);
        *(v90 + v186) = v259;
        v188 = v90 + v187;
        v2 = i;
        sub_1003A6F60(v182, v188, type metadata accessor for SuggestionImportSession);

        v92 = &unk_100952388;
        goto LABEL_73;
      }
    }

    v189 = v34;
    v190 = v33;
    while (--v189)
    {
      v191 = v190 + 4;
      v192 = *v190;
      v193 = type metadata accessor for Suggestion.WorkoutGroup(0);
      v190 = v191;
      if (v192 == v193)
      {
        v194 = *(v0 + 688);
        v247 = v194;
        v195 = *(v0 + 680);
        v83 = *(v0 + 624);
        v196 = *(v0 + 616);
        v197 = *(v0 + 456);
        v198 = type metadata accessor for TaskPriority();
        (*(*(v198 - 8) + 56))(v83, 1, 1, v198);
        sub_1003A6EF8(v194, v195, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v197, v196, type metadata accessor for SuggestionImportSession);
        v199 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v200 = (v199 + v251) & 0xFFFFFFFFFFFFFFF8;
        v201 = (*(v249 + 80) + v200 + 8) & ~*(v249 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        sub_1003A6F60(v195, v90 + v199, type metadata accessor for Suggestion.ItemContent);
        *(v90 + v200) = v259;
        v202 = v90 + v201;
        v2 = i;
        sub_1003A6F60(v196, v202, type metadata accessor for SuggestionImportSession);

        v92 = &unk_100952398;
        goto LABEL_73;
      }
    }

    v203 = v34;
    v204 = v33;
    while (--v203)
    {
      v205 = v204 + 4;
      v206 = *v204;
      v207 = type metadata accessor for Suggestion.StateOfMind(0);
      v204 = v205;
      if (v206 == v207)
      {
        v208 = *(v0 + 688);
        v247 = v208;
        v209 = *(v0 + 680);
        v83 = *(v0 + 624);
        v210 = *(v0 + 616);
        v211 = *(v0 + 456);
        v212 = type metadata accessor for TaskPriority();
        (*(*(v212 - 8) + 56))(v83, 1, 1, v212);
        sub_1003A6EF8(v208, v209, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v211, v210, type metadata accessor for SuggestionImportSession);
        v213 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v214 = (v213 + v251) & 0xFFFFFFFFFFFFFFF8;
        v215 = (*(v249 + 80) + v214 + 8) & ~*(v249 + 80);
        v90 = swift_allocObject();
        *(v90 + 16) = 0;
        *(v90 + 24) = 0;
        sub_1003A6F60(v209, v90 + v213, type metadata accessor for Suggestion.ItemContent);
        *(v90 + v214) = v259;
        v216 = v90 + v215;
        v2 = i;
        sub_1003A6F60(v210, v216, type metadata accessor for SuggestionImportSession);

        v92 = &unk_1009523A8;
        goto LABEL_73;
      }
    }

    while (--v34)
    {
      v218 = *v33;
      v33 += 4;
      if (v218 == type metadata accessor for Suggestion.EventPoster(0))
      {
        v219 = *(v0 + 688);
        v248 = v219;
        v220 = *(v0 + 680);
        v221 = *(v0 + 624);
        v222 = *(v0 + 616);
        v223 = *(v0 + 456);
        v224 = type metadata accessor for TaskPriority();
        (*(*(v224 - 8) + 56))(v221, 1, 1, v224);
        sub_1003A6EF8(v219, v220, type metadata accessor for Suggestion.ItemContent);
        sub_1003A6EF8(v223, v222, type metadata accessor for SuggestionImportSession);
        v225 = (*(v20 + 80) + 32) & ~*(v20 + 80);
        v226 = (v225 + v251) & 0xFFFFFFFFFFFFFFF8;
        v227 = (*(v249 + 80) + v226 + 8) & ~*(v249 + 80);
        v228 = swift_allocObject();
        *(v228 + 16) = 0;
        *(v228 + 24) = 0;
        sub_1003A6F60(v220, v228 + v225, type metadata accessor for Suggestion.ItemContent);
        *(v228 + v226) = v259;
        v229 = v228 + v227;
        v2 = i;
        sub_1003A6F60(v222, v229, type metadata accessor for SuggestionImportSession);

        v230 = v228;
        v7 = v257;
        sub_100381E00(v221, &unk_1009523B8, v230);
        sub_100004F84(v221, &qword_100AD5170, &unk_100943680);
        sub_1003A3E80(v248, type metadata accessor for Suggestion.ItemContent);
        goto LABEL_28;
      }
    }

    sub_1003A6EF8(*(v0 + 688), *(v0 + 672), type metadata accessor for Suggestion.ItemContent);
    v231 = Logger.logObject.getter();
    v232 = static os_log_type_t.error.getter();
    v233 = os_log_type_enabled(v231, v232);
    v234 = *(v0 + 688);
    v235 = *(v0 + 672);
    if (v233)
    {
      v236 = swift_slowAlloc();
      v237 = swift_slowAlloc();
      v260 = v237;
      *v236 = 136315138;
      type metadata accessor for UUID();
      v238 = v7;
      sub_10008D160(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v239 = dispatch thunk of CustomStringConvertible.description.getter();
      v241 = v240;
      sub_1003A3E80(v235, type metadata accessor for Suggestion.ItemContent);
      v242 = v239;
      v7 = v238;
      v243 = sub_100008458(v242, v241, &v260);

      *(v236 + 4) = v243;
      _os_log_impl(&_mh_execute_header, v231, v232, "Failed to parse framework asset, unrecognized asset %s", v236, 0xCu);
      sub_10000BA7C(v237);
    }

    else
    {

      sub_1003A3E80(v235, type metadata accessor for Suggestion.ItemContent);
    }

    sub_1003A3E80(v234, type metadata accessor for Suggestion.ItemContent);
  }

  v244 = *(v0 + 448);

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = xmmword_1009520F0;
  *(v0 + 48) = _swiftEmptyArrayStorage;
  *(v0 + 56) = _swiftEmptyArrayStorage;
  *(v0 + 64) = _swiftEmptyArrayStorage;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  v245 = *v244;
  v246 = swift_task_alloc();
  *(v0 + 744) = v246;
  *v246 = v0;
  v246[1] = sub_10038096C;

  sub_1007ABCF8(0, 0, v245);
}

uint64_t sub_10038096C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 752) = a1;
  *(v3 + 760) = v1;

  if (v1)
  {
    v4 = sub_100381868;
  }

  else
  {
    v4 = sub_100380A84;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100380A84()
{
  v120 = v0;
  v1 = *(v0 + 760);
  v119 = *(v0 + 752);

  sub_1003A3B94(&v119);
  if (v1)
  {

    return;
  }

  v2 = v119;
  v3 = *(v119 + 2);
  if (!v3)
  {

    v24 = 0;
LABEL_65:
    v12 = *(v0 + 48);
    v108 = v24;
    if (v12 >> 62)
    {
      goto LABEL_85;
    }

    v59 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v118 = *(v0 + 48);
    if (v59)
    {
      goto LABEL_67;
    }

LABEL_86:
    if (v108 && *&v108[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
    {
      v85 = *(v0 + 536);
      v86 = *(v0 + 496);
      v87 = *(v0 + 504);

      sub_1000768B4(v85);

      v88 = (*(v87 + 48))(v85, 1, v86);
      v89 = *(v0 + 536);
      if (!v88)
      {
        v100 = *(v0 + 504);
        v99 = *(v0 + 512);
        v101 = *(v0 + 496);
        (*(v100 + 16))(v99, *(v0 + 536), v101);
        sub_100004F84(v89, &unk_100AD5B30, &unk_100941F80);
        v90 = MultiPinMapAssetMetadata.visitsData.getter();
        (*(v100 + 8))(v99, v101);
        goto LABEL_91;
      }

      sub_100004F84(*(v0 + 536), &unk_100AD5B30, &unk_100941F80);
    }

    v90 = 0;
LABEL_91:
    v91 = *(v0 + 736);
    v92 = *(v0 + 440);
    sub_10037CA28(v90, v58);
    v94 = v93;

    *(v0 + 64) = v94;
    *(v0 + 72) = *(v91 + 16);
    sub_10037DFA0(v94, v118);

    *v92 = *(v0 + 16);
    v95 = *(v0 + 32);
    v96 = *(v0 + 48);
    v97 = *(v0 + 80);
    v92[3] = *(v0 + 64);
    v92[4] = v97;
    v92[1] = v95;
    v92[2] = v96;

    v98 = *(v0 + 8);

    v98();
    return;
  }

  v4 = 0;
  v113 = 0;
  v109 = 0;
  v111 = 0;
  v5 = *(v0 + 504);
  v106 = (v5 + 48);
  v102 = (v5 + 8);
  v103 = (v5 + 16);
  v104 = (*(v0 + 528) + 56);
  v6 = _swiftEmptyArrayStorage;
  v117 = v3 - 1;
  v7 = 1;
  v8 = 32;
  v105 = v119;
  while (1)
  {
    v115 = v8;
    *(v0 + 176) = *(v2 + v8);
    v9 = *(v2 + v8 + 16);
    v10 = *(v2 + v8 + 32);
    v11 = *(v2 + v8 + 64);
    *(v0 + 224) = *(v2 + v8 + 48);
    *(v0 + 240) = v11;
    *(v0 + 192) = v9;
    *(v0 + 208) = v10;
    if (v7 == 1)
    {
      v7 = *(v0 + 192);
      v113 = *(v0 + 176);
      v109 = *(v0 + 200);
      v111 = *(v0 + 184);
      sub_1003A7574(v113, v111, v7, v109);
    }

    v12 = *(v0 + 216);
    *(v0 + 16) = v113;
    *(v0 + 24) = v111;
    v13 = v7;
    *(v0 + 32) = v7;
    *(v0 + 40) = v109;
    sub_1003A714C(v0 + 176, v0 + 256);

    sub_1006AD688(v14);
    v15 = *(v12 + 16);
    v16 = *(v6 + 2);
    v17 = v16 + v15;
    if (__OFADD__(v16, v15))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v17 <= *(v6 + 3) >> 1)
    {
      if (*(v12 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v16 <= v17)
      {
        v23 = v16 + v15;
      }

      else
      {
        v23 = v16;
      }

      v6 = sub_1003E5DBC(isUniquelyReferenced_nonNull_native, v23, 1, v6);
      if (*(v12 + 16))
      {
LABEL_13:
        v19 = (*(v6 + 3) >> 1) - *(v6 + 2);
        type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0);
        if (v19 < v15)
        {
          goto LABEL_82;
        }

        swift_arrayInitWithCopy();

        if (v15)
        {
          v20 = *(v6 + 2);
          v21 = __OFADD__(v20, v15);
          v22 = v20 + v15;
          if (v21)
          {
            goto LABEL_83;
          }

          *(v6 + 2) = v22;
        }

        goto LABEL_22;
      }
    }

    if (v15)
    {
      goto LABEL_81;
    }

LABEL_22:
    *(v0 + 56) = v6;
    v24 = *(v0 + 240);
    if (v4)
    {
      if (!v24)
      {
        sub_1003A3E50(v0 + 176);
        v24 = v4;
        goto LABEL_61;
      }

      v108 = *(v0 + 240);
      v25 = OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata;
      if (*&v4[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
      {
        v12 = *(v0 + 568);
        v26 = *(v0 + 496);
        v27 = v4;
        v28 = v108;

        sub_1000768B4(v12);

        if ((*v106)(v12, 1, v26))
        {
          sub_100004F84(*(v0 + 568), &unk_100AD5B30, &unk_100941F80);
          v29 = _swiftEmptyArrayStorage;
        }

        else
        {
          v36 = *(v0 + 512);
          v12 = *(v0 + 496);
          v37 = *(v0 + 568);
          (*v103)(v36, v37, v12);
          sub_100004F84(v37, &unk_100AD5B30, &unk_100941F80);
          v38 = MultiPinMapAssetMetadata.visitsData.getter();
          (*v102)(v36, v12);
          if (v38)
          {
            v29 = v38;
          }

          else
          {
            v29 = _swiftEmptyArrayStorage;
          }
        }

        v34 = v108;
      }

      else
      {
        v33 = v4;
        v34 = v108;
        v35 = v108;
        v29 = _swiftEmptyArrayStorage;
      }

      if (*&v34[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata])
      {
        v12 = *(v0 + 560);
        v39 = *(v0 + 496);

        sub_1000768B4(v12);

        if ((*v106)(v12, 1, v39))
        {
          sub_100004F84(*(v0 + 560), &unk_100AD5B30, &unk_100941F80);
          goto LABEL_42;
        }

        v41 = *(v0 + 512);
        v12 = *(v0 + 496);
        v42 = *(v0 + 560);
        (*v103)(v41, v42, v12);
        sub_100004F84(v42, &unk_100AD5B30, &unk_100941F80);
        v43 = MultiPinMapAssetMetadata.visitsData.getter();
        (*v102)(v41, v12);
        if (v43)
        {
          v40 = v43;
        }

        else
        {
          v40 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
LABEL_42:
        v40 = _swiftEmptyArrayStorage;
      }

      v119 = v29;
      sub_1006ADB18(v40);
      if (*&v4[v25])
      {
        v12 = v25;
        v44 = *(v0 + 552);
        v45 = *(v0 + 496);

        sub_1000768B4(v44);

        v46 = *v106;
        if (!(*v106)(v44, 1, v45))
        {
          MultiPinMapAssetMetadata.isSlim.getter();
        }

        sub_100004F84(*(v0 + 552), &unk_100AD5B30, &unk_100941F80);
        if (*&v4[v12])
        {
          v48 = *(v0 + 544);
          v49 = *(v0 + 496);

          sub_1000768B4(v48);

          v50 = v46(v48, 1, v49);
          v51 = *(v0 + 544);
          if (v50)
          {
            sub_100004F84(*(v0 + 544), &unk_100AD5B30, &unk_100941F80);
            goto LABEL_54;
          }

          v52 = MultiPinMapAssetMetadata.revision.getter();
          v54 = v53;
          sub_100004F84(v51, &unk_100AD5B30, &unk_100941F80);
          if (v54)
          {
            v47 = 0;
          }

          else
          {
            v47 = v52;
          }
        }

        else
        {
LABEL_54:
          v47 = 0;
        }

        v25 = v12;
      }

      else
      {
        v47 = 0;
      }

      if (__OFADD__(v47, 1))
      {
        goto LABEL_84;
      }

      v55 = *(v0 + 584);
      v56 = *(v0 + 520);
      MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();

      sub_1003A3E50(v0 + 176);
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AD38D8, &unk_100941FA0);
      v57 = swift_allocObject();
      (*v104)(v57 + *(*v57 + 104), 1, 1, v56);
      *(v57 + *(*v57 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v55, v57 + *(*v57 + 120), &qword_100AD38D0, &qword_1009522B0);
      *&v4[v25] = v57;

      v24 = v4;
      v2 = v105;
LABEL_61:
      v31 = v117;
      v32 = v115;
      if (!v117)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if (!v24)
    {
      sub_1003A3E50(v0 + 176);
      goto LABEL_61;
    }

    *(v0 + 80) = v24;
    v30 = v24;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v31 = v117;
    if (*((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    sub_1003A3E50(v0 + 176);
    v32 = v115;
    if (!v117)
    {
LABEL_63:

      goto LABEL_65;
    }

LABEL_62:
    v117 = v31 - 1;
    v8 = v32 + 80;
    v4 = v24;
    v7 = v13;
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  v59 = _CocoaArrayWrapper.endIndex.getter();
  v118 = v12;
  if (!v59)
  {
    goto LABEL_86;
  }

LABEL_67:
  v60 = *(v0 + 768);
  v61 = *(v0 + 456);
  v62 = type metadata accessor for Suggestion(0);
  if (v59 >= 1)
  {
    v63 = 0;
    v64 = v61 + v60;
    v114 = *(v62 + 28);
    v107 = v62;
    v110 = v12 & 0xC000000000000001;
    v112 = *(v62 + 24);
    v65 = &qword_100AD1420;
    v116 = v59;
    do
    {
      if (v110)
      {
        v70 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v70 = *(v12 + 8 * v63 + 32);
      }

      v71 = v70;
      v72 = *(v0 + 480);
      v73 = v65;
      sub_1000082B4(v64 + v114, v72, v65, &unk_10093C080);
      v74 = type metadata accessor for UUID();
      v75 = *(v74 - 8);
      v76 = *(v75 + 48);
      if (v76(v72, 1, v74) == 1)
      {
        v77 = *(v0 + 480);
        (*(v75 + 16))(*(v0 + 488), *(v0 + 456) + *(v0 + 768) + *(v107 + 44), v74);
        v78 = v76(v77, 1, v74);
        v65 = v73;
        if (v78 != 1)
        {
          sub_100004F84(*(v0 + 480), v73, &unk_10093C080);
        }
      }

      else
      {
        (*(v75 + 32))(*(v0 + 488), *(v0 + 480), v74);
        v65 = v73;
      }

      v79 = *(v0 + 488);
      v80 = *(v0 + 464);
      (*(v75 + 56))(v79, 0, 1, v74);
      v81 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
      swift_beginAccess();
      sub_100014318(v79, v71 + v81, v65, &unk_10093C080);
      swift_endAccess();
      sub_1000082B4(v64 + v112, v80, &qword_100AD3750, &unk_1009421B0);
      v82 = type metadata accessor for DateInterval();
      v83 = *(v82 - 8);
      if ((*(v83 + 48))(v80, 1, v82) == 1)
      {
        sub_100004F84(*(v0 + 464), &qword_100AD3750, &unk_1009421B0);
        v66 = 1;
      }

      else
      {
        v84 = *(v0 + 464);
        DateInterval.start.getter();
        (*(v83 + 8))(v84, v82);
        v66 = 0;
      }

      v12 = v118;
      ++v63;
      v67 = *(v0 + 472);
      v68 = type metadata accessor for Date();
      (*(*(v68 - 8) + 56))(v67, v66, 1, v68);
      v69 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
      swift_beginAccess();
      sub_100014318(v67, v71 + v69, &unk_100AD4790, &unk_10093B4E0);
      swift_endAccess();
    }

    while (v116 != v63);
    goto LABEL_86;
  }

  __break(1u);
}

uint64_t sub_100381868()
{
  v1 = *(v0 + 64);
  *(v0 + 128) = *(v0 + 48);
  *(v0 + 144) = v1;
  *(v0 + 160) = *(v0 + 80);
  v2 = *(v0 + 32);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 112) = v2;
  sub_1003A3E50(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100381A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[51] = a1;
  v5[52] = a5;
  v6 = swift_task_alloc();
  v5[53] = v6;
  *v6 = v5;
  v6[1] = sub_100381AC4;

  return sub_1003756F8(0, 0);
}

uint64_t sub_100381AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[54] = a1;
  v5[55] = a2;
  v5[56] = a3;

  if (v3)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100381BFC, 0, 0);
  }
}

uint64_t sub_100381BFC()
{
  if (*(v0 + 440))
  {
    v1 = *(v0 + 448);
    v2 = objc_allocWithZone(NSAttributedString);
    v3 = String._bridgeToObjectiveC()();
    v4 = [v2 initWithString:v3];

    if (v1)
    {
      sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);

      v5 = UIColor.init(_:)();
    }

    else
    {
      v5 = 0;
    }

    v17 = *(v0 + 408);
    v16 = *(v0 + 416);
    v18 = sub_100532CB0(0, 256, v4, v5);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    swift_beginAccess();
    v25 = *(v16 + 16);
    v26 = *(v16 + 24);
    v27 = *(v16 + 32);
    v28 = *(v16 + 40);
    *(v16 + 16) = v18;
    *(v16 + 24) = v20 & 1;
    *(v16 + 32) = v22;
    *(v16 + 40) = v24;
    sub_1003A75B8(v25, v26, v27, v28);
    swift_beginAccess();
    *(v0 + 176) = *(v16 + 16);
    v29 = *(v16 + 32);
    v30 = *(v16 + 48);
    v31 = *(v16 + 80);
    *(v0 + 224) = *(v16 + 64);
    *(v0 + 240) = v31;
    *(v0 + 192) = v29;
    *(v0 + 208) = v30;
    v32 = *(v16 + 80);
    v34 = *(v16 + 32);
    v33 = *(v16 + 48);
    v17[3] = *(v16 + 64);
    v17[4] = v32;
    v17[1] = v34;
    v17[2] = v33;
    *v17 = *(v16 + 16);
    v14 = v0 + 176;
    v15 = v0 + 256;
  }

  else
  {
    v6 = *(v0 + 408);
    v7 = *(v0 + 416);
    swift_beginAccess();
    *(v0 + 16) = v7[1];
    v8 = v7[2];
    v9 = v7[3];
    v10 = v7[5];
    *(v0 + 64) = v7[4];
    *(v0 + 80) = v10;
    *(v0 + 32) = v8;
    *(v0 + 48) = v9;
    v11 = v7[5];
    v13 = v7[2];
    v12 = v7[3];
    v6[3] = v7[4];
    v6[4] = v11;
    v6[1] = v13;
    v6[2] = v12;
    *v6 = v7[1];
    v14 = v0 + 16;
    v15 = v0 + 96;
  }

  sub_1003A714C(v14, v15);
  v35 = *(v0 + 8);

  return v35();
}

double sub_100381E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v7 - 8);
  v9 = v18 - v8;
  sub_1000082B4(a1, v18 - v8, &qword_100AD5170, &unk_100943680);
  v10 = type metadata accessor for TaskPriority();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100004F84(v9, &qword_100AD5170, &unk_100943680);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = dispatch thunk of Actor.unownedExecutor.getter();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();

  return result;
}

uint64_t sub_100381FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[51] = a1;
  v5[52] = a5;
  v6 = type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0);
  v5[53] = v6;
  v5[54] = *(v6 - 8);
  v5[55] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[56] = v7;
  v5[57] = *(v7 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v5[60] = v8;
  v5[61] = *(v8 - 8);
  v5[62] = swift_task_alloc();
  v5[63] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v5[64] = v9;
  v5[65] = *(v9 - 8);
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01F0, &qword_100951C90);
  v10 = swift_task_alloc();
  v5[68] = v10;
  v11 = type metadata accessor for Suggestion.Photo(0);
  v5[69] = v11;
  v5[70] = *(v11 - 8);
  v5[71] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[72] = v12;
  *v12 = v5;
  v12[1] = sub_1003822D4;

  return sub_100375C2C(v10, 0, 0);
}

uint64_t sub_1003822D4()
{
  *(*v1 + 584) = v0;

  if (v0)
  {
    v2 = sub_1003829D0;
  }

  else
  {
    v2 = sub_1003823E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003823E8()
{
  v1 = *(v0 + 544);
  if ((*(*(v0 + 560) + 48))(v1, 1, *(v0 + 552)) == 1)
  {
    v3 = *(v0 + 408);
    v2 = *(v0 + 416);
    sub_100004F84(v1, &qword_100AE01F0, &qword_100951C90);
    swift_beginAccess();
    *(v0 + 16) = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[5];
    *(v0 + 64) = v2[4];
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    v3[3] = v2[4];
    v3[4] = v7;
    v3[1] = v9;
    v3[2] = v8;
    *v3 = v2[1];
    v10 = v0 + 16;
    v11 = v0 + 96;
  }

  else
  {
    v12 = *(v0 + 536);
    v13 = *(v0 + 520);
    v14 = *(v0 + 504);
    v15 = *(v0 + 512);
    v16 = *(v0 + 488);
    v51 = *(v0 + 528);
    v52 = *(v0 + 496);
    v17 = *(v0 + 480);
    v55 = *(v0 + 472);
    v18 = *(v0 + 456);
    v49 = *(v0 + 464);
    v50 = *(v0 + 448);
    v53 = *(v0 + 416);
    sub_1003A6F60(v1, *(v0 + 568), type metadata accessor for Suggestion.Photo);
    (*(v13 + 104))(v12, enum case for AssetType.photo(_:), v15);
    (*(v16 + 104))(v14, enum case for AssetSource.suggestionSheet(_:), v17);
    UUID.init()();
    objc_allocWithZone(type metadata accessor for PlaceholderAsset(0));
    v54 = *(v18 + 16);
    v54(v49, v55, v50);
    (*(v13 + 16))(v51, v12, v15);
    (*(v16 + 16))(v52, v14, v17);
    v19 = sub_100285908(v49, v51, v52);
    (*(v18 + 8))(v55, v50);
    (*(v16 + 8))(v14, v17);
    (*(v13 + 8))(v12, v15);
    swift_beginAccess();
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v53 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v53 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v21 = *(v0 + 568);
    v22 = *(v0 + 552);
    v23 = *(v0 + 440);
    v24 = *(v0 + 448);
    v25 = *(v0 + 416);
    v26 = *(v0 + 424);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23[3] = v22;
    v23[4] = &off_100A69C98;
    v27 = sub_10001A770(v23);
    sub_1003A6EF8(v21, v27, type metadata accessor for Suggestion.Photo);
    v54(v23 + *(v26 + 20), &v20[OBJC_IVAR____TtC7Journal5Asset_id], v24);
    sub_1000F24EC(&qword_100AD65F0, &qword_1009452C8);
    v28 = type metadata accessor for URL();
    v29 = *(v28 - 8);
    v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100940080;
    (*(v29 + 16))(v31 + v30, v21, v28);
    *(v23 + *(v26 + 24)) = v31;
    v32 = *(v25 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + 56) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_1003E5DBC(0, *(v32 + 2) + 1, 1, v32);
      *(v25 + 56) = v32;
    }

    v35 = *(v32 + 2);
    v34 = *(v32 + 3);
    if (v35 >= v34 >> 1)
    {
      v32 = sub_1003E5DBC((v34 > 1), v35 + 1, 1, v32);
    }

    v36 = *(v0 + 568);
    v38 = *(v0 + 432);
    v37 = *(v0 + 440);
    v40 = *(v0 + 408);
    v39 = *(v0 + 416);
    *(v32 + 2) = v35 + 1;
    sub_1003A6F60(v37, v32 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v35, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
    *(v25 + 56) = v32;
    swift_endAccess();

    sub_1003A3E80(v36, type metadata accessor for Suggestion.Photo);
    swift_beginAccess();
    *(v0 + 176) = v39[1];
    v41 = v39[2];
    v42 = v39[3];
    v43 = v39[5];
    *(v0 + 224) = v39[4];
    *(v0 + 240) = v43;
    *(v0 + 192) = v41;
    *(v0 + 208) = v42;
    v44 = v39[5];
    v46 = v39[2];
    v45 = v39[3];
    v40[3] = v39[4];
    v40[4] = v44;
    v40[1] = v46;
    v40[2] = v45;
    *v40 = v39[1];
    v10 = v0 + 176;
    v11 = v0 + 256;
  }

  sub_1003A714C(v10, v11);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1003829D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100382AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[54] = a1;
  v5[55] = a5;
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v5[56] = swift_task_alloc();
  v5[57] = sub_1000F24EC(&unk_100AEE0A0, &unk_100943F50);
  v5[58] = swift_task_alloc();
  v5[59] = type metadata accessor for AssetAttachment.AssetType(0);
  v5[60] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v5[61] = v6;
  v5[62] = *(v6 - 8);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v7 = type metadata accessor for AssetSource();
  v5[65] = v7;
  v5[66] = *(v7 - 8);
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  v8 = type metadata accessor for AssetType();
  v5[69] = v8;
  v5[70] = *(v8 - 8);
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0238, &qword_100951CD8);
  v9 = swift_task_alloc();
  v5[73] = v9;
  v10 = type metadata accessor for Suggestion.Video(0);
  v5[74] = v10;
  v5[75] = *(v10 - 8);
  v5[76] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[77] = v11;
  *v11 = v5;
  v11[1] = sub_100382DD4;

  return sub_100376320(v9, 0, 0);
}

uint64_t sub_100382DD4()
{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = sub_100383718;
  }

  else
  {
    v2 = sub_100382EE8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100382EE8()
{
  v1 = *(v0 + 584);
  if ((*(*(v0 + 600) + 48))(v1, 1, *(v0 + 592)) == 1)
  {
    v2 = *(v0 + 432);
    v3 = *(v0 + 440);
    sub_100004F84(v1, &qword_100AE0238, &qword_100951CD8);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v4 = v3[2];
    v5 = v3[3];
    v6 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = v3[5];
    v9 = v3[2];
    v8 = v3[3];
    v2[3] = v3[4];
    v2[4] = v7;
    v2[1] = v9;
    v2[2] = v8;
    *v2 = v3[1];
    v10 = v0 + 16;
    v11 = v0 + 96;
  }

  else
  {
    v66 = *(v0 + 608);
    v12 = *(v0 + 576);
    v13 = *(v0 + 560);
    v14 = *(v0 + 552);
    v64 = *(v0 + 568);
    v65 = *(v0 + 536);
    v15 = *(v0 + 528);
    v16 = *(v0 + 520);
    v17 = *(v0 + 512);
    v63 = *(v0 + 504);
    v18 = *(v0 + 496);
    v61 = *(v0 + 544);
    v67 = *(v0 + 480);
    v68 = *(v0 + 488);
    sub_1003A6F60(v1, v66, type metadata accessor for Suggestion.Video);
    v62 = v14;
    (*(v13 + 104))(v12, enum case for AssetType.video(_:), v14);
    (*(v15 + 104))(v61, enum case for AssetSource.suggestionSheet(_:), v16);
    UUID.init()();
    v19 = objc_allocWithZone(type metadata accessor for VideoAsset(0));
    *&v19[OBJC_IVAR____TtC7Journal10VideoAsset_metadata] = 0;
    (*(v18 + 16))(v63, v17, v68);
    (*(v13 + 16))(v64, v12, v14);
    (*(v15 + 16))(v65, v61, v16);
    v20 = sub_100285908(v63, v64, v65);
    v21 = *(v18 + 8);
    v21(v17, v68);
    (*(v15 + 8))(v61, v16);
    (*(v13 + 8))(v12, v62);
    v22 = type metadata accessor for URL();
    (*(*(v22 - 8) + 16))(v67, v66, v22);
    type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v23 = v20;
    UUID.init()();
    v24 = UUID.uuidString.getter();
    v26 = v25;
    v21(v17, v68);
    type metadata accessor for AssetAttachment(0);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    sub_1003A6F60(v67, v27 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
    v28 = (v27 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
    *v28 = v24;
    v28[1] = v26;
    v29 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v23 + v29) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v23 + v29) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v30 = *(v0 + 608);
    v31 = *(v0 + 592);
    v32 = *(v0 + 448);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();
    sub_1000082B4(v30 + *(v31 + 20), v32, &unk_100AD4790, &unk_10093B4E0);
    v33 = v30 + *(v31 + 28);
    if (*(v33 + 32))
    {
    }

    else
    {
      v35 = *(v33 + 16);
      v34 = *(v33 + 24);
      v37 = *v33;
      v36 = *(v33 + 8);

      v70.origin.x = v37;
      v70.origin.y = v36;
      v70.size.width = v35;
      v70.size.height = v34;
      v38 = NSStringFromCGRect(v70);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v39 = *(v0 + 608);
    v40 = *(v0 + 592);
    v41 = v39 + *(v40 + 24);
    if ((*(v41 + 32) & 1) == 0)
    {
      v42 = NSStringFromCGRect(*v41);
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v39 = *(v0 + 608);
      v40 = *(v0 + 592);
    }

    v43 = v39 + *(v40 + 32);
    if ((*(v43 + 32) & 1) == 0)
    {
      v44 = NSStringFromCGRect(*v43);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    v45 = *(v0 + 464);
    v46 = *(v0 + 440);
    PhotoLibraryAssetMetadata.init(assetIdentifier:date:placeName:latitude:longitude:size:squareCropRect:landscapeCropRect:portraitCropRect:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&unk_100AEE0B0, &unk_100943F60);
    v47 = swift_allocObject();
    v48 = *(*v47 + 104);
    v49 = sub_1000F24EC(&qword_100AD5B20, qword_1009521A0);
    (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
    *(v47 + *(*v47 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v45, v47 + *(*v47 + 120), &unk_100AEE0A0, &unk_100943F50);
    *(v23 + OBJC_IVAR____TtC7Journal10VideoAsset_metadata) = v47;

    swift_beginAccess();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v46 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v46 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v50 = *(v0 + 608);
    v52 = *(v0 + 432);
    v51 = *(v0 + 440);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    sub_1003A3E80(v50, type metadata accessor for Suggestion.Video);
    swift_beginAccess();
    *(v0 + 176) = v51[1];
    v53 = v51[2];
    v54 = v51[3];
    v55 = v51[5];
    *(v0 + 224) = v51[4];
    *(v0 + 240) = v55;
    *(v0 + 192) = v53;
    *(v0 + 208) = v54;
    v56 = v51[5];
    v58 = v51[2];
    v57 = v51[3];
    v52[3] = v51[4];
    v52[4] = v56;
    v52[1] = v58;
    v52[2] = v57;
    *v52 = v51[1];
    v10 = v0 + 176;
    v11 = v0 + 256;
  }

  sub_1003A714C(v10, v11);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_100383718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100383814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[51] = a1;
  v5[52] = a5;
  v6 = type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0);
  v5[53] = v6;
  v5[54] = *(v6 - 8);
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v5[57] = v7;
  v5[58] = *(v7 - 8);
  v5[59] = swift_task_alloc();
  v5[60] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v5[61] = v8;
  v5[62] = *(v8 - 8);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v5[65] = v9;
  v5[66] = *(v9 - 8);
  v5[67] = swift_task_alloc();
  v5[68] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01A8, &qword_100951C50);
  v10 = swift_task_alloc();
  v5[69] = v10;
  v11 = type metadata accessor for Suggestion.LivePhoto(0);
  v5[70] = v11;
  v5[71] = *(v11 - 8);
  v5[72] = swift_task_alloc();
  v12 = swift_task_alloc();
  v5[73] = v12;
  *v12 = v5;
  v12[1] = sub_100383B08;

  return sub_100376A14(v10, 0, 0);
}

uint64_t sub_100383B08()
{
  *(*v1 + 592) = v0;

  if (v0)
  {
    v2 = sub_10038427C;
  }

  else
  {
    v2 = sub_100383C1C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100383C1C()
{
  v1 = *(v0 + 552);
  if ((*(*(v0 + 568) + 48))(v1, 1, *(v0 + 560)) == 1)
  {
    v3 = *(v0 + 408);
    v2 = *(v0 + 416);
    sub_100004F84(v1, &qword_100AE01A8, &qword_100951C50);
    swift_beginAccess();
    *(v0 + 16) = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[5];
    *(v0 + 64) = v2[4];
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    v3[3] = v2[4];
    v3[4] = v7;
    v3[1] = v9;
    v3[2] = v8;
    *v3 = v2[1];
    v10 = v0 + 16;
    v11 = v0 + 96;
  }

  else
  {
    v12 = *(v0 + 544);
    v13 = *(v0 + 528);
    v14 = *(v0 + 520);
    v15 = *(v0 + 512);
    v16 = *(v0 + 488);
    v17 = *(v0 + 496);
    v60 = *(v0 + 480);
    v52 = *(v0 + 472);
    v18 = *(v0 + 464);
    v53 = *(v0 + 456);
    v54 = *(v0 + 536);
    v56 = *(v0 + 504);
    v58 = *(v0 + 416);
    sub_1003A6F60(v1, *(v0 + 576), type metadata accessor for Suggestion.LivePhoto);
    (*(v13 + 104))(v12, enum case for AssetType.livePhoto(_:), v14);
    (*(v17 + 104))(v15, enum case for AssetSource.suggestionSheet(_:), v16);
    UUID.init()();
    objc_allocWithZone(type metadata accessor for PlaceholderAsset(0));
    v59 = *(v18 + 16);
    v59(v52, v60, v53);
    (*(v13 + 16))(v54, v12, v14);
    (*(v17 + 16))(v56, v15, v16);
    v19 = sub_100285908(v52, v54, v56);
    (*(v18 + 8))(v60, v53);
    (*(v17 + 8))(v15, v16);
    (*(v13 + 8))(v12, v14);
    swift_beginAccess();
    v20 = v19;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v58 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v58 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v21 = *(v0 + 576);
    v22 = *(v0 + 560);
    v23 = *(v0 + 448);
    v24 = *(v0 + 456);
    v61 = *(v0 + 440);
    v25 = *(v0 + 424);
    v55 = v25;
    v57 = *(v0 + 416);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v23[3] = v22;
    v23[4] = &off_100A69CA8;
    v26 = sub_10001A770(v23);
    sub_1003A6EF8(v21, v26, type metadata accessor for Suggestion.LivePhoto);
    v62 = v20;
    v59(v23 + *(v25 + 20), &v20[OBJC_IVAR____TtC7Journal5Asset_id], v24);
    sub_1000F24EC(&qword_100AD65F0, &qword_1009452C8);
    v27 = type metadata accessor for URL();
    v28 = *(v27 - 8);
    v29 = *(v28 + 72);
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_100940050;
    v32 = v31 + v30;
    v33 = *(v28 + 16);
    v33(v32, v21, v27);
    v33(v32 + v29, v21 + *(v22 + 20), v27);
    *(v23 + *(v55 + 24)) = v31;
    sub_1003A6EF8(v23, v61, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
    v34 = *(v57 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v57 + 56) = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_1003E5DBC(0, *(v34 + 2) + 1, 1, v34);
      *(v57 + 56) = v34;
    }

    v37 = *(v34 + 2);
    v36 = *(v34 + 3);
    if (v37 >= v36 >> 1)
    {
      v34 = sub_1003E5DBC((v36 > 1), v37 + 1, 1, v34);
    }

    v38 = *(v0 + 576);
    v39 = *(v0 + 440);
    v40 = *(v0 + 448);
    v41 = *(v0 + 432);
    v43 = *(v0 + 408);
    v42 = *(v0 + 416);
    *(v34 + 2) = v37 + 1;
    sub_1003A6F60(v39, v34 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v37, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
    *(v57 + 56) = v34;
    swift_endAccess();

    sub_1003A3E80(v40, type metadata accessor for SuggestionImportSession.PendingPhotoAsset);
    sub_1003A3E80(v38, type metadata accessor for Suggestion.LivePhoto);
    swift_beginAccess();
    *(v0 + 176) = v42[1];
    v44 = v42[2];
    v45 = v42[3];
    v46 = v42[5];
    *(v0 + 224) = v42[4];
    *(v0 + 240) = v46;
    *(v0 + 192) = v44;
    *(v0 + 208) = v45;
    v47 = v42[5];
    v49 = v42[2];
    v48 = v42[3];
    v43[3] = v42[4];
    v43[4] = v47;
    v43[1] = v49;
    v43[2] = v48;
    *v43 = v42[1];
    v10 = v0 + 176;
    v11 = v0 + 256;
  }

  sub_1003A714C(v10, v11);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_10038427C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100384360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[79] = a6;
  v6[78] = a5;
  v6[77] = a1;
  sub_1000F24EC(&qword_100ADF198, &unk_100950340);
  v6[80] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v6[81] = swift_task_alloc();
  v6[82] = sub_1000F24EC(&qword_100ADA8E0, &unk_100962D70);
  v6[83] = swift_task_alloc();
  v6[84] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[85] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[86] = v7;
  v6[87] = *(v7 - 8);
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[90] = v8;
  v6[91] = *(v8 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[94] = v9;
  v6[95] = *(v9 - 8);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[100] = v10;
  v6[101] = *(v10 - 8);
  v6[102] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0218, &qword_1009525C0);
  v11 = swift_task_alloc();
  v6[103] = v11;
  v12 = type metadata accessor for Suggestion.Song(0);
  v6[104] = v12;
  v6[105] = *(v12 - 8);
  v6[106] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[107] = v13;
  *v13 = v6;
  v13[1] = sub_100384770;

  return sub_100377108(v11, 0, 0);
}

uint64_t sub_100384770()
{
  *(*v1 + 864) = v0;

  if (v0)
  {
    v2 = sub_1003852A8;
  }

  else
  {
    v2 = sub_100384884;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100384884()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  if ((*(*(v0 + 840) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    sub_100004F84(v2, &qword_100AE0218, &qword_1009525C0);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
  }

  else
  {
    v13 = *(v0 + 848);
    v14 = *(v0 + 808);
    v15 = *(v0 + 800);
    v16 = *(v0 + 792);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.Song);
    sub_1000082B4(v13 + *(v1 + 28), v16, &unk_100AD6DD0, &qword_1009437C0);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 792), &unk_100AD6DD0, &qword_1009437C0);
      type metadata accessor for SuggestionImportSession(0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into music asset, content missing artwork", v19, 2u);
      }

      v20 = *(v0 + 848);
      v21 = *(v0 + 624);
      v22 = *(v0 + 616);

      sub_1003A3E80(v20, type metadata accessor for Suggestion.Song);
      swift_beginAccess();
      *(v0 + 176) = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      *(v0 + 224) = v21[4];
      *(v0 + 240) = v25;
      *(v0 + 192) = v23;
      *(v0 + 208) = v24;
      v26 = v21[5];
      v28 = v21[2];
      v27 = v21[3];
      v22[3] = v21[4];
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      *v22 = v21[1];
      v11 = v0 + 176;
      v12 = v0 + 256;
    }

    else
    {
      v78 = *(v0 + 816);
      v75 = *(v0 + 808);
      v76 = *(v0 + 800);
      v29 = *(v0 + 776);
      v30 = *(v0 + 760);
      v31 = *(v0 + 752);
      v72 = *(v0 + 768);
      v73 = *(v0 + 736);
      v32 = *(v0 + 728);
      v33 = *(v0 + 720);
      v34 = *(v0 + 712);
      v71 = *(v0 + 704);
      v35 = *(v0 + 696);
      v70 = *(v0 + 744);
      v79 = *(v0 + 680);
      v81 = *(v0 + 688);
      (*(v75 + 32))();
      (*(v30 + 104))(v29, enum case for AssetType.music(_:), v31);
      (*(v32 + 104))(v70, enum case for AssetSource.suggestionSheet(_:), v33);
      UUID.init()();
      v36 = objc_allocWithZone(type metadata accessor for MusicAsset(0));
      *&v36[OBJC_IVAR____TtC7Journal10MusicAsset_metadata] = 0;
      (*(v35 + 16))(v71, v34, v81);
      (*(v30 + 16))(v72, v29, v31);
      (*(v32 + 16))(v73, v70, v33);
      v37 = sub_100285908(v71, v72, v73);
      v38 = *(v35 + 8);
      v38(v34, v81);
      (*(v32 + 8))(v70, v33);
      (*(v30 + 8))(v29, v31);
      (*(v75 + 16))(v79, v78, v76);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v39 = v37;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v38(v34, v81);
      type metadata accessor for AssetAttachment(0);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      sub_1003A6F60(v79, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v44 = v40;
      v44[1] = v42;
      v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v80 = v39;
      v46 = *(v0 + 848);
      v47 = *(v0 + 832);
      v77 = *(v0 + 664);
      v48 = *(v0 + 648);
      v49 = *(v0 + 640);
      v74 = *(v0 + 624);
      (*(*(v0 + 808) + 56))();
      sub_1000082B4(v46 + *(v47 + 32), v48, &unk_100AD4790, &unk_10093B4E0);
      v50 = enum case for MediaViewType.song(_:);
      v51 = type metadata accessor for MediaViewType();
      v52 = *(v51 - 8);
      (*(v52 + 104))(v49, v50, v51);
      (*(v52 + 56))(v49, 0, 1, v51);

      MusicAssetMetadata.init(mediaId:mediaURL:artistName:song:albumName:numberOfTimesPlayed:startTime:mediaType:)();
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E90, &unk_1009525D0);
      v53 = swift_allocObject();
      v54 = *(*v53 + 104);
      v55 = sub_1000F24EC(&qword_100AD6F70, &unk_100962D80);
      (*(*(v55 - 8) + 56))(v53 + v54, 1, 1, v55);
      *(v53 + *(*v53 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v77, v53 + *(*v53 + 120), &qword_100ADA8E0, &unk_100962D70);
      *&v80[OBJC_IVAR____TtC7Journal10MusicAsset_metadata] = v53;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v74 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v74 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v56 = *(v0 + 848);
      v57 = *(v0 + 816);
      v58 = *(v0 + 808);
      v59 = *(v0 + 800);
      v60 = *(v0 + 624);
      v61 = *(v0 + 616);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      (*(v58 + 8))(v57, v59);
      sub_1003A3E80(v56, type metadata accessor for Suggestion.Song);
      swift_beginAccess();
      *(v0 + 336) = v60[1];
      v62 = v60[2];
      v63 = v60[3];
      v64 = v60[5];
      *(v0 + 384) = v60[4];
      *(v0 + 400) = v64;
      *(v0 + 352) = v62;
      *(v0 + 368) = v63;
      v65 = v60[5];
      v67 = v60[2];
      v66 = v60[3];
      v61[3] = v60[4];
      v61[4] = v65;
      v61[1] = v67;
      v61[2] = v66;
      *v61 = v60[1];
      v11 = v0 + 336;
      v12 = v0 + 416;
    }
  }

  sub_1003A714C(v11, v12);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1003852A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003853E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[79] = a6;
  v6[78] = a5;
  v6[77] = a1;
  sub_1000F24EC(&qword_100ADF198, &unk_100950340);
  v6[80] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v6[81] = swift_task_alloc();
  v6[82] = sub_1000F24EC(&qword_100ADA958, &unk_100960730);
  v6[83] = swift_task_alloc();
  v6[84] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[85] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[86] = v7;
  v6[87] = *(v7 - 8);
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[90] = v8;
  v6[91] = *(v8 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[94] = v9;
  v6[95] = *(v9 - 8);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v6[98] = swift_task_alloc();
  v6[99] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[100] = v10;
  v6[101] = *(v10 - 8);
  v6[102] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0200, &qword_100951CA0);
  v11 = swift_task_alloc();
  v6[103] = v11;
  v12 = type metadata accessor for Suggestion.Podcast(0);
  v6[104] = v12;
  v6[105] = *(v12 - 8);
  v6[106] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[107] = v13;
  *v13 = v6;
  v13[1] = sub_1003857F0;

  return sub_1003777FC(v11, 0, 0);
}

uint64_t sub_1003857F0()
{
  *(*v1 + 864) = v0;

  if (v0)
  {
    v2 = sub_1003A9FB4;
  }

  else
  {
    v2 = sub_100385904;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100385904()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  if ((*(*(v0 + 840) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    sub_100004F84(v2, &qword_100AE0200, &qword_100951CA0);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
  }

  else
  {
    v13 = *(v0 + 848);
    v14 = *(v0 + 808);
    v15 = *(v0 + 800);
    v16 = *(v0 + 792);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.Podcast);
    sub_1000082B4(v13 + *(v1 + 24), v16, &unk_100AD6DD0, &qword_1009437C0);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 792), &unk_100AD6DD0, &qword_1009437C0);
      type metadata accessor for SuggestionImportSession(0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into music asset, content missing artwork", v19, 2u);
      }

      v20 = *(v0 + 848);
      v21 = *(v0 + 624);
      v22 = *(v0 + 616);

      sub_1003A3E80(v20, type metadata accessor for Suggestion.Podcast);
      swift_beginAccess();
      *(v0 + 176) = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      *(v0 + 224) = v21[4];
      *(v0 + 240) = v25;
      *(v0 + 192) = v23;
      *(v0 + 208) = v24;
      v26 = v21[5];
      v28 = v21[2];
      v27 = v21[3];
      v22[3] = v21[4];
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      *v22 = v21[1];
      v11 = v0 + 176;
      v12 = v0 + 256;
    }

    else
    {
      v83 = *(v0 + 816);
      v80 = *(v0 + 808);
      v82 = *(v0 + 800);
      v29 = *(v0 + 776);
      v30 = *(v0 + 760);
      v31 = *(v0 + 752);
      v76 = *(v0 + 768);
      v78 = *(v0 + 736);
      v32 = *(v0 + 728);
      v33 = *(v0 + 720);
      v34 = *(v0 + 712);
      v75 = *(v0 + 704);
      v35 = *(v0 + 696);
      v74 = *(v0 + 744);
      v84 = *(v0 + 680);
      v86 = *(v0 + 688);
      (*(v80 + 32))();
      (*(v30 + 104))(v29, enum case for AssetType.podcast(_:), v31);
      (*(v32 + 104))(v74, enum case for AssetSource.suggestionSheet(_:), v33);
      UUID.init()();
      v36 = objc_allocWithZone(type metadata accessor for PodcastAsset(0));
      *&v36[OBJC_IVAR____TtC7Journal12PodcastAsset_metadata] = 0;
      (*(v35 + 16))(v75, v34, v86);
      (*(v30 + 16))(v76, v29, v31);
      (*(v32 + 16))(v78, v74, v33);
      v37 = sub_100285908(v75, v76, v78);
      v38 = *(v35 + 8);
      v38(v34, v86);
      (*(v32 + 8))(v74, v33);
      (*(v30 + 8))(v29, v31);
      (*(v80 + 16))(v84, v83, v82);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v39 = v37;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v38(v34, v86);
      type metadata accessor for AssetAttachment(0);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      sub_1003A6F60(v84, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v44 = v40;
      v44[1] = v42;
      v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v46 = *(v0 + 848);
      v79 = *(v0 + 832);
      v47 = *(v0 + 808);
      v48 = *(v0 + 800);
      v49 = v39;
      v50 = *(v0 + 784);
      v85 = *(v0 + 664);
      v77 = *(v0 + 648);
      v51 = *(v0 + 640);
      v81 = *(v0 + 624);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v52 = v50;
      v53 = v49;
      (*(v47 + 56))(v52, 1, 1, v48);
      sub_1000082B4(v46 + *(v79 + 28), v77, &unk_100AD4790, &unk_10093B4E0);
      v54 = enum case for MediaViewType.podcast(_:);
      v55 = type metadata accessor for MediaViewType();
      v56 = *(v55 - 8);
      (*(v56 + 104))(v51, v54, v55);
      (*(v56 + 56))(v51, 0, 1, v55);

      PodcastAssetMetadata.init(mediaId:title:author:mediaURL:timePlayed:numberOfTimesPlayed:mediaType:)();
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E80, &unk_1009525A0);
      v57 = swift_allocObject();
      v58 = *(*v57 + 104);
      v59 = sub_1000F24EC(&qword_100AD2A70, &qword_100952E00);
      (*(*(v59 - 8) + 56))(v57 + v58, 1, 1, v59);
      *(v57 + *(*v57 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v85, v57 + *(*v57 + 120), &qword_100ADA958, &unk_100960730);
      *&v49[OBJC_IVAR____TtC7Journal12PodcastAsset_metadata] = v57;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v81 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v81 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v60 = *(v0 + 848);
      v61 = *(v0 + 816);
      v62 = *(v0 + 808);
      v63 = *(v0 + 800);
      v64 = *(v0 + 624);
      v65 = *(v0 + 616);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      (*(v62 + 8))(v61, v63);
      sub_1003A3E80(v60, type metadata accessor for Suggestion.Podcast);
      swift_beginAccess();
      *(v0 + 336) = v64[1];
      v66 = v64[2];
      v67 = v64[3];
      v68 = v64[5];
      *(v0 + 384) = v64[4];
      *(v0 + 400) = v68;
      *(v0 + 352) = v66;
      *(v0 + 368) = v67;
      v69 = v64[5];
      v71 = v64[2];
      v70 = v64[3];
      v65[3] = v64[4];
      v65[4] = v69;
      v65[1] = v71;
      v65[2] = v70;
      *v65 = v64[1];
      v11 = v0 + 336;
      v12 = v0 + 416;
    }
  }

  sub_1003A714C(v11, v12);

  v72 = *(v0 + 8);

  return v72();
}

uint64_t sub_1003862EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[84] = a6;
  v6[83] = a5;
  v6[82] = a1;
  sub_1000F24EC(&qword_100AD6030, &qword_100944A50);
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v6[87] = swift_task_alloc();
  v7 = type metadata accessor for MediaViewType();
  v6[88] = v7;
  v6[89] = *(v7 - 8);
  v6[90] = swift_task_alloc();
  v6[91] = sub_1000F24EC(&qword_100ADA870, &unk_100952560);
  v6[92] = swift_task_alloc();
  v6[93] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[94] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[95] = v8;
  v6[96] = *(v8 - 8);
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  v9 = type metadata accessor for AssetSource();
  v6[99] = v9;
  v6[100] = *(v9 - 8);
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  v10 = type metadata accessor for AssetType();
  v6[103] = v10;
  v6[104] = *(v10 - 8);
  v6[105] = swift_task_alloc();
  v6[106] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v6[109] = v11;
  v6[110] = *(v11 - 8);
  v6[111] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0188, &qword_100951C38);
  v12 = swift_task_alloc();
  v6[112] = v12;
  v13 = type metadata accessor for Suggestion.GenericMedia(0);
  v6[113] = v13;
  v6[114] = *(v13 - 8);
  v6[115] = swift_task_alloc();
  v14 = swift_task_alloc();
  v6[116] = v14;
  *v14 = v6;
  v14[1] = sub_100386764;

  return sub_100377EF0(v12, 0, 0);
}

uint64_t sub_100386764()
{
  *(*v1 + 936) = v0;

  if (v0)
  {
    v2 = sub_10038749C;
  }

  else
  {
    v2 = sub_100386878;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100386878()
{
  v1 = *(v0 + 904);
  v2 = *(v0 + 896);
  if ((*(*(v0 + 912) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 664);
    v4 = *(v0 + 656);
    sub_100004F84(v2, &qword_100AE0188, &qword_100951C38);
    swift_beginAccess();
    *(v0 + 56) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[4];
    *(v0 + 120) = v3[5];
    *(v0 + 104) = v7;
    *(v0 + 88) = v6;
    *(v0 + 72) = v5;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 56;
    v12 = v0 + 136;
    goto LABEL_26;
  }

  v13 = *(v0 + 920);
  v14 = *(v0 + 880);
  v15 = *(v0 + 872);
  v16 = *(v0 + 864);
  sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.GenericMedia);
  sub_1000082B4(v13 + *(v1 + 32), v16, &unk_100AD6DD0, &qword_1009437C0);
  if ((*(v14 + 48))(v16, 1, v15) == 1)
  {
    sub_100004F84(*(v0 + 864), &unk_100AD6DD0, &qword_1009437C0);
    type metadata accessor for SuggestionImportSession(0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into third party media asset, content missing app icon", v19, 2u);
    }

    v20 = *(v0 + 920);
    v21 = *(v0 + 664);
    v22 = *(v0 + 656);

    sub_1003A3E80(v20, type metadata accessor for Suggestion.GenericMedia);
    swift_beginAccess();
    *(v0 + 216) = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v25 = v21[5];
    *(v0 + 264) = v21[4];
    *(v0 + 280) = v25;
    *(v0 + 232) = v23;
    *(v0 + 248) = v24;
    v26 = v21[5];
    v28 = v21[2];
    v27 = v21[3];
    v22[3] = v21[4];
    v22[4] = v26;
    v22[1] = v28;
    v22[2] = v27;
    *v22 = v21[1];
    v12 = v0 + 296;
    v11 = v0 + 216;
    goto LABEL_26;
  }

  v96 = *(v0 + 880);
  v98 = *(v0 + 872);
  v100 = *(v0 + 888);
  v29 = *(v0 + 848);
  v30 = *(v0 + 832);
  v31 = *(v0 + 824);
  v93 = *(v0 + 808);
  v32 = *(v0 + 800);
  v33 = *(v0 + 792);
  v34 = *(v0 + 784);
  v90 = *(v0 + 776);
  v91 = *(v0 + 840);
  v35 = *(v0 + 768);
  v89 = *(v0 + 816);
  v101 = *(v0 + 752);
  v102 = *(v0 + 760);
  (*(v96 + 32))();
  (*(v30 + 104))(v29, enum case for AssetType.thirdPartyMedia(_:), v31);
  (*(v32 + 104))(v89, enum case for AssetSource.suggestionSheet(_:), v33);
  UUID.init()();
  v36 = objc_allocWithZone(type metadata accessor for ThirdPartyMediaAsset(0));
  *&v36[OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata] = 0;
  (*(v35 + 16))(v90, v34, v102);
  (*(v30 + 16))(v91, v29, v31);
  (*(v32 + 16))(v93, v89, v33);
  v37 = sub_100285908(v90, v91, v93);
  v38 = *(v35 + 8);
  v38(v34, v102);
  (*(v32 + 8))(v89, v33);
  (*(v30 + 8))(v29, v31);
  (*(v96 + 16))(v101, v100, v98);
  type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v39 = v37;
  UUID.init()();
  v40 = UUID.uuidString.getter();
  v42 = v41;
  v38(v34, v102);
  type metadata accessor for AssetAttachment(0);
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  sub_1003A6F60(v101, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v44 = v40;
  v44[1] = v42;
  v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v103 = v39;
  if (*((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v46 = *(v0 + 920);
  v47 = *(v0 + 904);
  v48 = *(v0 + 880);
  v97 = *(v0 + 856);
  v99 = *(v0 + 872);
  v49 = *(v0 + 720);
  v50 = *(v0 + 712);
  v51 = *(v0 + 704);
  v94 = *(v0 + 696);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  (*(v50 + 104))(v49, enum case for MediaViewType.thirdPartyMedia(_:), v51);
  (*(v48 + 56))(v97, 1, 1, v99);
  sub_1000082B4(v46 + *(v47 + 28), v94, &unk_100AD4790, &unk_10093B4E0);
  v52 = *(v46 + *(v47 + 40));
  if (v52)
  {
    sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);

    v53 = UIColor.init(_:)();
    *&v54 = sub_100417798();
    v92 = v55;
    v95 = v54;

    v57 = v92;
    v56 = v95;
  }

  else
  {

    v56 = 0uLL;
    v57 = 0uLL;
  }

  v58 = *(v0 + 920);
  v59 = *(v0 + 904);
  *(v0 + 16) = v56;
  *(v0 + 32) = v57;
  *(v0 + 48) = v52 == 0;
  v60 = *(v58 + *(v59 + 44));
  if (v60 <= 1)
  {
    if (!*(v58 + *(v59 + 44)))
    {
      v63 = *(v0 + 680);
      v64 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
      (*(*(v64 - 8) + 56))(v63, 1, 1, v64);
LABEL_22:
      sub_100021CEC(*(v0 + 680), *(v0 + 688), &qword_100AD6030, &qword_100944A50);
      goto LABEL_23;
    }

    v61 = *(v0 + 680);
    v62 = &enum case for ThirdPartyMediaAssetMetadata.ColorVariant.light(_:);
LABEL_21:
    v67 = *v62;
    v68 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
    v69 = *(v68 - 8);
    (*(v69 + 104))(v61, v67, v68);
    (*(v69 + 56))(v61, 0, 1, v68);
    goto LABEL_22;
  }

  if (v60 == 2)
  {
    v61 = *(v0 + 680);
    v62 = &enum case for ThirdPartyMediaAssetMetadata.ColorVariant.dark(_:);
    goto LABEL_21;
  }

  if (v60 == 3)
  {
    v61 = *(v0 + 680);
    v62 = &enum case for ThirdPartyMediaAssetMetadata.ColorVariant.veryDark(_:);
    goto LABEL_21;
  }

  v65 = *(v0 + 688);
  v66 = type metadata accessor for ThirdPartyMediaAssetMetadata.ColorVariant();
  (*(*(v66 - 8) + 56))(v65, 1, 1, v66);
LABEL_23:
  v70 = *(v0 + 736);
  v71 = *(v0 + 664);
  ThirdPartyMediaAssetMetadata.init(mediaType:song:albumName:artistName:mediaURL:appName:startTime:appBackgroundColor:colorVariant:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE0E70, &unk_100952578);
  v72 = swift_allocObject();
  v73 = *(*v72 + 104);
  v74 = sub_1000F24EC(&qword_100AD50C0, &unk_100950330);
  (*(*(v74 - 8) + 56))(v72 + v73, 1, 1, v74);
  *(v72 + *(*v72 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v70, v72 + *(*v72 + 120), &qword_100ADA870, &unk_100952560);
  *&v103[OBJC_IVAR____TtC7Journal20ThirdPartyMediaAsset_metadata] = v72;

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v71 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v71 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v75 = *(v0 + 920);
  v76 = *(v0 + 888);
  v77 = *(v0 + 880);
  v78 = *(v0 + 872);
  v79 = *(v0 + 664);
  v80 = *(v0 + 656);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  (*(v77 + 8))(v76, v78);
  sub_1003A3E80(v75, type metadata accessor for Suggestion.GenericMedia);
  swift_beginAccess();
  v11 = v0 + 376;
  *(v0 + 376) = v79[1];
  v81 = v79[2];
  v82 = v79[3];
  v83 = v79[5];
  *(v0 + 424) = v79[4];
  *(v0 + 440) = v83;
  *(v0 + 392) = v81;
  *(v0 + 408) = v82;
  v84 = v79[5];
  v86 = v79[2];
  v85 = v79[3];
  v80[3] = v79[4];
  v80[4] = v84;
  v80[1] = v86;
  v80[2] = v85;
  *v80 = v79[1];
  v12 = v0 + 456;
LABEL_26:
  sub_1003A714C(v11, v12);

  v87 = *(v0 + 8);

  return v87();
}

uint64_t sub_10038749C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003875F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[79] = a6;
  v6[78] = a5;
  v6[77] = a1;
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  v6[82] = sub_1000F24EC(&qword_100ADA8F0, &unk_100960720);
  v6[83] = swift_task_alloc();
  v6[84] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[85] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[86] = v7;
  v6[87] = *(v7 - 8);
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[90] = v8;
  v6[91] = *(v8 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[94] = v9;
  v6[95] = *(v9 - 8);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v6[98] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[99] = v10;
  v6[100] = *(v10 - 8);
  v6[101] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0168, &qword_100951C10);
  v11 = swift_task_alloc();
  v6[102] = v11;
  v12 = type metadata accessor for Suggestion.Contact(0);
  v6[103] = v12;
  v6[104] = *(v12 - 8);
  v6[105] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[106] = v13;
  *v13 = v6;
  v13[1] = sub_1003879C8;

  return sub_1003785E4(v11, 0, 0);
}

uint64_t sub_1003879C8()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_10038840C;
  }

  else
  {
    v2 = sub_100387ADC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100387ADC()
{
  v1 = *(v0 + 824);
  v2 = *(v0 + 816);
  if ((*(*(v0 + 832) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    sub_100004F84(v2, &qword_100AE0168, &qword_100951C10);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
  }

  else
  {
    v13 = *(v0 + 840);
    v14 = *(v0 + 800);
    v15 = *(v0 + 792);
    v16 = *(v0 + 784);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.Contact);
    sub_1000082B4(v13 + *(v1 + 20), v16, &unk_100AD6DD0, &qword_1009437C0);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 784), &unk_100AD6DD0, &qword_1009437C0);
      type metadata accessor for SuggestionImportSession(0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into contact asset, content missing photo", v19, 2u);
      }

      v20 = *(v0 + 840);
      v21 = *(v0 + 624);
      v22 = *(v0 + 616);

      sub_1003A3E80(v20, type metadata accessor for Suggestion.Contact);
      swift_beginAccess();
      *(v0 + 176) = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      *(v0 + 224) = v21[4];
      *(v0 + 240) = v25;
      *(v0 + 192) = v23;
      *(v0 + 208) = v24;
      v26 = v21[5];
      v28 = v21[2];
      v27 = v21[3];
      v22[3] = v21[4];
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      *v22 = v21[1];
      v11 = v0 + 176;
      v12 = v0 + 256;
    }

    else
    {
      v73 = *(v0 + 792);
      v74 = *(v0 + 808);
      v29 = *(v0 + 776);
      v30 = *(v0 + 760);
      v31 = *(v0 + 752);
      v71 = *(v0 + 736);
      v72 = *(v0 + 800);
      v32 = *(v0 + 728);
      v33 = *(v0 + 720);
      v34 = *(v0 + 712);
      v69 = *(v0 + 704);
      v70 = *(v0 + 768);
      v35 = *(v0 + 696);
      v68 = *(v0 + 744);
      v77 = *(v0 + 688);
      v75 = *(v0 + 680);
      (*(v72 + 32))();
      (*(v30 + 104))(v29, enum case for AssetType.contact(_:), v31);
      (*(v32 + 104))(v68, enum case for AssetSource.suggestionSheet(_:), v33);
      UUID.init()();
      v36 = objc_allocWithZone(type metadata accessor for ContactAsset(0));
      *&v36[OBJC_IVAR____TtC7Journal12ContactAsset_metadata] = 0;
      (*(v35 + 16))(v69, v34, v77);
      (*(v30 + 16))(v70, v29, v31);
      (*(v32 + 16))(v71, v68, v33);
      v37 = sub_100285908(v69, v70, v71);
      v38 = *(v35 + 8);
      v38(v34, v77);
      (*(v32 + 8))(v68, v33);
      (*(v30 + 8))(v29, v31);
      (*(v72 + 16))(v75, v74, v73);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v39 = v37;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v38(v34, v77);
      type metadata accessor for AssetAttachment(0);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      sub_1003A6F60(v75, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v44 = v40;
      v44[1] = v42;
      v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v39 + v45) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v39 + v45) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v76 = *(v0 + 664);
      v46 = *(v0 + 648);
      v47 = *(v0 + 640);
      v48 = *(v0 + 624);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v49 = type metadata accessor for Date();
      v50 = *(*(v49 - 8) + 56);
      v50(v46, 1, 1, v49);
      v50(v47, 1, 1, v49);

      ContactAssetMetadata.init(name:startTime:endTime:duration:numberOfExchanges:)();
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0E60, &unk_100952540);
      v51 = swift_allocObject();
      v52 = *(*v51 + 104);
      v53 = sub_1000F24EC(&qword_100AD8440, &qword_100966950);
      (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
      *(v51 + *(*v51 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v76, v51 + *(*v51 + 120), &qword_100ADA8F0, &unk_100960720);
      *(v39 + OBJC_IVAR____TtC7Journal12ContactAsset_metadata) = v51;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v48 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v48 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v54 = *(v0 + 840);
      v55 = *(v0 + 808);
      v56 = *(v0 + 800);
      v57 = *(v0 + 792);
      v58 = *(v0 + 624);
      v59 = *(v0 + 616);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      (*(v56 + 8))(v55, v57);
      sub_1003A3E80(v54, type metadata accessor for Suggestion.Contact);
      swift_beginAccess();
      *(v0 + 336) = v58[1];
      v60 = v58[2];
      v61 = v58[3];
      v62 = v58[5];
      *(v0 + 384) = v58[4];
      *(v0 + 400) = v62;
      *(v0 + 352) = v60;
      *(v0 + 368) = v61;
      v63 = v58[5];
      v65 = v58[2];
      v64 = v58[3];
      v59[3] = v58[4];
      v59[4] = v63;
      v59[1] = v65;
      v59[2] = v64;
      *v59 = v58[1];
      v11 = v0 + 336;
      v12 = v0 + 416;
    }
  }

  sub_1003A714C(v11, v12);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_10038840C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100388534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[80] = a6;
  v6[79] = a5;
  v6[78] = a1;
  v6[81] = sub_1000F24EC(&qword_100AD38D0, &qword_1009522B0);
  v6[82] = swift_task_alloc();
  sub_1000F24EC(&unk_100AEED20, &qword_1009457E0);
  v6[83] = swift_task_alloc();
  v6[84] = sub_1000F24EC(&qword_100ADA928, &unk_100962DD0);
  v6[85] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[86] = v7;
  v6[87] = *(v7 - 8);
  v6[88] = swift_task_alloc();
  v6[89] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[90] = v8;
  v6[91] = *(v8 - 8);
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[94] = v9;
  v6[95] = *(v9 - 8);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01B8, &qword_100951C60);
  v10 = swift_task_alloc();
  v6[98] = v10;
  v11 = type metadata accessor for Suggestion.Location(0);
  v6[99] = v11;
  v6[100] = *(v11 - 8);
  v6[101] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[102] = v12;
  *v12 = v6;
  v12[1] = sub_100388878;

  return sub_100378CD8(v10, 0, 0);
}

uint64_t sub_100388878()
{
  *(*v1 + 824) = v0;

  if (v0)
  {
    v2 = sub_100389740;
  }

  else
  {
    v2 = sub_10038898C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038898C()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 784);
  if ((*(v1 + 48))(v2, 1, *(v0 + 792)) == 1)
  {
    v3 = *(v0 + 632);
    v4 = *(v0 + 624);
    sub_100004F84(v2, &qword_100AE01B8, &qword_100951C60);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    sub_1003A714C(v0 + 16, v0 + 96);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 808);
    v14 = *(v0 + 640);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.Location);
    sub_1000F24EC(&qword_100AE0E50, &qword_100952510);
    v15 = *(v1 + 80);
    *(v0 + 856) = v15;
    v16 = (v15 + 32) & ~v15;
    v17 = swift_allocObject();
    *(v0 + 832) = v17;
    *(v17 + 16) = xmmword_100940080;
    sub_1003A6EF8(v13, v17 + v16, type metadata accessor for Suggestion.Location);
    v18 = sub_1000F24EC(&qword_100AD6600, &qword_1009452D8);
    v19 = swift_task_alloc();
    *(v0 + 840) = v19;
    *(v19 + 16) = v17;
    *(v19 + 24) = v14;
    v20 = sub_1000F24EC(&qword_100AE0E30, &qword_1009524C0);
    v21 = swift_task_alloc();
    *(v0 + 848) = v21;
    *v21 = v0;
    v21[1] = sub_100388CB8;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 616, v18, v20, 0, 0, &unk_100952518, v19, v18);
  }
}

uint64_t sub_100388CB8()
{

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100388E34, 0, 0);
}

uint64_t sub_100388E34()
{
  v1 = *(v0 + 808);
  v71 = *(v0 + 616);
  v2 = v1[1];
  if (v2 && ((v2 & 0x2000000000000000) != 0 ? (v3 = HIBYTE(v2) & 0xF) : (v3 = *v1 & 0xFFFFFFFFFFFFLL), v3))
  {
    v4 = *(v0 + 776);
    v5 = *(v0 + 744);
    v59 = v5;
    v60 = *(v0 + 752);
    v63 = *(v0 + 736);
    v64 = *(v0 + 808);
    v6 = *(v0 + 728);
    v7 = *(v0 + 720);
    v8 = *(v0 + 712);
    v61 = *(v0 + 704);
    v62 = *(v0 + 768);
    v9 = *(v0 + 696);
    v10 = *(v0 + 688);
    v66 = *(v0 + 656);
    v11 = *(v0 + 632);
    v69 = *(v0 + 624);
    v58 = *(v0 + 760);
    (*(v58 + 104))(v4, enum case for AssetType.multiPinMap(_:));
    (*(v6 + 104))(v5, enum case for AssetSource.suggestionSheet(_:), v7);
    UUID.init()();
    v12 = objc_allocWithZone(type metadata accessor for MultiPinMapAsset(0));
    *&v12[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = 0;
    (*(v9 + 16))(v61, v8, v10);
    (*(v58 + 16))(v62, v4, v60);
    (*(v6 + 16))(v63, v5, v7);
    v13 = sub_100285908(v61, v62, v63);
    (*(v9 + 8))(v8, v10);
    (*(v6 + 8))(v59, v7);
    (*(v58 + 8))(v4, v60);
    MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100AD38D8, &unk_100941FA0);
    v14 = swift_allocObject();
    v15 = *(*v14 + 104);
    v16 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
    (*(*(v16 - 8) + 56))(v14 + v15, 1, 1, v16);
    *(v14 + *(*v14 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v66, v14 + *(*v14 + 120), &qword_100AD38D0, &qword_1009522B0);
    *&v13[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = v14;

    sub_1003A3E80(v64, type metadata accessor for Suggestion.Location);
    swift_beginAccess();
    v17 = *(v11 + 80);
    *(v11 + 80) = v13;

    swift_beginAccess();
    *(v0 + 336) = *(v11 + 16);
    v18 = *(v11 + 32);
    v19 = *(v11 + 48);
    v20 = *(v11 + 80);
    *(v0 + 384) = *(v11 + 64);
    *(v0 + 400) = v20;
    *(v0 + 352) = v18;
    *(v0 + 368) = v19;
    v21 = *(v11 + 80);
    v23 = *(v11 + 32);
    v22 = *(v11 + 48);
    v69[3] = *(v11 + 64);
    v69[4] = v21;
    v69[1] = v23;
    v69[2] = v22;
    *v69 = *(v11 + 16);
    v24 = v0 + 336;
    v25 = v0 + 416;
  }

  else
  {
    v26 = *(v0 + 776);
    v68 = *(v0 + 768);
    v27 = *(v0 + 760);
    v28 = *(v0 + 744);
    v65 = v28;
    v67 = *(v0 + 752);
    v70 = *(v0 + 736);
    v29 = *(v0 + 728);
    v30 = *(v0 + 720);
    v31 = *(v0 + 712);
    v32 = *(v0 + 704);
    v33 = *(v0 + 696);
    v34 = *(v0 + 688);
    (*(v27 + 104))(v26, enum case for AssetType.genericMap(_:));
    (*(v29 + 104))(v28, enum case for AssetSource.suggestionSheet(_:), v30);
    UUID.init()();
    v35 = objc_allocWithZone(type metadata accessor for GenericMapAsset(0));
    *&v35[OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata] = 0;
    (*(v33 + 16))(v32, v31, v34);
    (*(v27 + 16))(v68, v26, v67);
    (*(v29 + 16))(v70, v28, v30);
    v36 = sub_100285908(v32, v68, v70);
    (*(v33 + 8))(v31, v34);
    (*(v29 + 8))(v65, v30);
    (*(v27 + 8))(v26, v67);
    v37 = *(v0 + 664);
    if (*(v71 + 16))
    {
      v38 = type metadata accessor for VisitAssetMetadata();
      v39 = *(v38 - 8);
      (*(v39 + 16))(v37, v71 + ((*(v39 + 80) + 32) & ~*(v39 + 80)), v38);

      (*(v39 + 56))(v37, 0, 1, v38);
    }

    else
    {

      v40 = type metadata accessor for VisitAssetMetadata();
      (*(*(v40 - 8) + 56))(v37, 1, 1, v40);
    }

    v41 = *(v0 + 680);
    v42 = *(v0 + 632);
    GenericMapAssetMetadata.init(visitsData:)();
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100ADF500, &unk_100952520);
    v43 = swift_allocObject();
    v44 = *(*v43 + 104);
    v45 = sub_1000F24EC(&qword_100ADA938, &unk_10095D500);
    (*(*(v45 - 8) + 56))(v43 + v44, 1, 1, v45);
    *(v43 + *(*v43 + 112)) = xmmword_100941EE0;
    sub_100021CEC(v41, v43 + *(*v43 + 120), &qword_100ADA928, &unk_100962DD0);
    *&v36[OBJC_IVAR____TtC7Journal15GenericMapAsset_metadata] = v43;

    swift_beginAccess();
    v46 = v36;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((*(v42 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v42 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v47 = *(v0 + 808);
    v48 = *(v0 + 632);
    v49 = *(v0 + 624);
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_endAccess();

    sub_1003A3E80(v47, type metadata accessor for Suggestion.Location);
    swift_beginAccess();
    *(v0 + 176) = v48[1];
    v50 = v48[2];
    v51 = v48[3];
    v52 = v48[5];
    *(v0 + 224) = v48[4];
    *(v0 + 240) = v52;
    *(v0 + 192) = v50;
    *(v0 + 208) = v51;
    v53 = v48[5];
    v55 = v48[2];
    v54 = v48[3];
    v49[3] = v48[4];
    v49[4] = v53;
    v49[1] = v55;
    v49[2] = v54;
    *v49 = v48[1];
    v24 = v0 + 176;
    v25 = v0 + 256;
  }

  sub_1003A714C(v24, v25);

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_100389740()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100389840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[53] = a5;
  v6[54] = a6;
  v6[52] = a1;
  v6[55] = sub_1000F24EC(&qword_100AD38D0, &qword_1009522B0);
  v6[56] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[57] = v7;
  v6[58] = *(v7 - 8);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[61] = v8;
  v6[62] = *(v8 - 8);
  v6[63] = swift_task_alloc();
  v6[64] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[65] = v9;
  v6[66] = *(v9 - 8);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  v10 = swift_task_alloc();
  v6[69] = v10;
  *v10 = v6;
  v10[1] = sub_100389A6C;

  return sub_1003793CC(0, 0);
}

uint64_t sub_100389A6C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 560) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100389C0C, 0, 0);
  }
}

uint64_t sub_100389C0C()
{
  v1 = *(v0 + 560);
  if (v1)
  {
    v2 = *(v0 + 432);
    v3 = sub_1000F24EC(&qword_100AD6600, &qword_1009452D8);
    v4 = swift_task_alloc();
    *(v0 + 568) = v4;
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = sub_1000F24EC(&qword_100AE0E30, &qword_1009524C0);
    v6 = swift_task_alloc();
    *(v0 + 576) = v6;
    *v6 = v0;
    v6[1] = sub_100389E10;

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 408, v3, v5, 0, 0, &unk_1009524B8, v4, v3);
  }

  else
  {
    v7 = *(v0 + 416);
    v8 = *(v0 + 424);
    swift_beginAccess();
    *(v0 + 16) = v8[1];
    v9 = v8[2];
    v10 = v8[3];
    v11 = v8[5];
    *(v0 + 64) = v8[4];
    *(v0 + 80) = v11;
    *(v0 + 32) = v9;
    *(v0 + 48) = v10;
    v12 = v8[5];
    v14 = v8[2];
    v13 = v8[3];
    v7[3] = v8[4];
    v7[4] = v12;
    v7[1] = v14;
    v7[2] = v13;
    *v7 = v8[1];
    sub_1003A714C(v0 + 16, v0 + 96);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100389E10()
{

  return _swift_task_switch(sub_100389F44, 0, 0);
}

uint64_t sub_100389F44()
{
  v1 = *(v0 + 544);
  v26 = *(v0 + 536);
  v30 = *(v0 + 528);
  v2 = *(v0 + 512);
  v24 = v2;
  v25 = *(v0 + 520);
  v27 = *(v0 + 504);
  v4 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 472);
  v6 = *(v0 + 480);
  v8 = *(v0 + 456);
  v7 = *(v0 + 464);
  v28 = *(v0 + 448);
  v9 = *(v0 + 424);
  v29 = *(v0 + 416);
  (*(v30 + 104))(v1, enum case for AssetType.multiPinMap(_:));
  (*(v3 + 104))(v2, enum case for AssetSource.suggestionSheet(_:), v4);
  UUID.init()();
  v10 = objc_allocWithZone(type metadata accessor for MultiPinMapAsset(0));
  *&v10[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = 0;
  (*(v7 + 16))(v5, v6, v8);
  (*(v30 + 16))(v26, v1, v25);
  (*(v3 + 16))(v27, v2, v4);
  v11 = sub_100285908(v5, v26, v27);
  (*(v7 + 8))(v6, v8);
  (*(v3 + 8))(v24, v4);
  (*(v30 + 8))(v1, v25);
  MultiPinMapAssetMetadata.init(visitsData:mapCameraData:isSlim:revision:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD38D8, &unk_100941FA0);
  v12 = swift_allocObject();
  v13 = *(*v12 + 104);
  v14 = sub_1000F24EC(&unk_100AD5B30, &unk_100941F80);
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  *(v12 + *(*v12 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v28, v12 + *(*v12 + 120), &qword_100AD38D0, &qword_1009522B0);
  *&v11[OBJC_IVAR____TtC7Journal16MultiPinMapAsset_metadata] = v12;

  swift_beginAccess();
  v15 = *(v9 + 80);
  *(v9 + 80) = v11;

  swift_beginAccess();
  *(v0 + 176) = *(v9 + 16);
  v16 = *(v9 + 32);
  v17 = *(v9 + 48);
  v18 = *(v9 + 80);
  *(v0 + 224) = *(v9 + 64);
  *(v0 + 240) = v18;
  *(v0 + 192) = v16;
  *(v0 + 208) = v17;
  v19 = *(v9 + 80);
  v21 = *(v9 + 32);
  v20 = *(v9 + 48);
  v29[3] = *(v9 + 64);
  v29[4] = v19;
  v29[1] = v21;
  v29[2] = v20;
  *v29 = *(v9 + 16);
  sub_1003A714C(v0 + 176, v0 + 256);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_10038A330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[71] = a6;
  v6[70] = a5;
  v6[69] = a4;
  v6[68] = a1;
  type metadata accessor for Suggestion.ItemContent(0);
  v6[72] = swift_task_alloc();
  v6[73] = sub_1000F24EC(&qword_100ADA888, &unk_100952410);
  v6[74] = swift_task_alloc();
  v6[75] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[76] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v6[77] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[78] = v7;
  v6[79] = *(v7 - 8);
  v6[80] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100AE0DF0, &qword_100952460);
  v6[81] = v8;
  v6[82] = *(v8 - 8);
  v6[83] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100AE0DF8, &qword_100952468);
  v6[84] = v9;
  v6[85] = *(v9 - 8);
  v6[86] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AE0E00, &qword_100952470);
  v6[87] = v10;
  v6[88] = *(v10 - 8);
  v6[89] = swift_task_alloc();
  v11 = sub_1000F24EC(&qword_100AE0E08, &qword_100952478);
  v6[90] = v11;
  v6[91] = *(v11 - 8);
  v6[92] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD8D38, &unk_100948460);
  v6[93] = swift_task_alloc();
  v12 = sub_1000F24EC(&qword_100AD8D40, &unk_100962950);
  v6[94] = v12;
  v6[95] = *(v12 - 8);
  v6[96] = swift_task_alloc();
  v13 = sub_1000F24EC(&qword_100AD8D48, &unk_100948470);
  v6[97] = v13;
  v6[98] = *(v13 - 8);
  v6[99] = swift_task_alloc();
  v14 = sub_1000F24EC(&qword_100AD8D50, &unk_100962960);
  v6[100] = v14;
  v6[101] = *(v14 - 8);
  v6[102] = swift_task_alloc();
  v15 = sub_1000F24EC(&qword_100AD8D58, &unk_100948480);
  v6[103] = v15;
  v6[104] = *(v15 - 8);
  v6[105] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v6[106] = swift_task_alloc();
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v6[109] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD3750, &unk_1009421B0);
  v6[110] = swift_task_alloc();
  v6[111] = swift_task_alloc();
  v6[112] = swift_task_alloc();
  v6[113] = swift_task_alloc();
  v6[114] = swift_task_alloc();
  v6[115] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0260, &qword_100951D00);
  v6[116] = swift_task_alloc();
  v6[117] = swift_task_alloc();
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v6[120] = swift_task_alloc();
  v6[121] = swift_task_alloc();
  v6[122] = swift_task_alloc();
  v6[123] = swift_task_alloc();
  v6[124] = swift_task_alloc();
  v6[125] = swift_task_alloc();
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();
  v6[128] = swift_task_alloc();
  v6[129] = swift_task_alloc();
  v6[130] = swift_task_alloc();
  v6[131] = swift_task_alloc();
  v6[132] = swift_task_alloc();
  v6[133] = swift_task_alloc();
  v6[134] = sub_1000F24EC(&qword_100ADA8A0, &unk_100952480);
  v6[135] = swift_task_alloc();
  v16 = type metadata accessor for UUID();
  v6[136] = v16;
  v6[137] = *(v16 - 8);
  v6[138] = swift_task_alloc();
  v6[139] = swift_task_alloc();
  v17 = type metadata accessor for AssetSource();
  v6[140] = v17;
  v6[141] = *(v17 - 8);
  v6[142] = swift_task_alloc();
  v6[143] = swift_task_alloc();
  v18 = type metadata accessor for AssetType();
  v6[144] = v18;
  v6[145] = *(v18 - 8);
  v6[146] = swift_task_alloc();
  v6[147] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0248, &qword_100951CE8);
  v19 = swift_task_alloc();
  v6[148] = v19;
  v20 = type metadata accessor for Suggestion.Workout(0);
  v6[149] = v20;
  v6[150] = *(v20 - 8);
  v6[151] = swift_task_alloc();
  v21 = swift_task_alloc();
  v6[152] = v21;
  *v21 = v6;
  v21[1] = sub_10038AC7C;

  return sub_1003798F4(v19, 0, 0);
}

uint64_t sub_10038AC7C()
{
  *(*v1 + 1224) = v0;

  if (v0)
  {
    v2 = sub_10038D598;
  }

  else
  {
    v2 = sub_10038AD90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038AD90()
{
  v315 = v0;
  v1 = *(v0 + 1192);
  v2 = *(v0 + 1184);
  if ((*(*(v0 + 1200) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 560);
    v4 = *(v0 + 544);
    sub_100004F84(v2, &qword_100AE0248, &qword_100951CE8);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
    goto LABEL_105;
  }

  v13 = *(v0 + 1208);
  sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.Workout);
  if (*(v13 + *(v1 + 24)))
  {
    v14 = *(v0 + 1176);
    v15 = *(v0 + 1144);
    v296 = *(v0 + 1152);
    v306 = *(v0 + 1136);
    v309 = *(v0 + 1208);
    v16 = *(v0 + 1128);
    v17 = *(v0 + 1120);
    v18 = *(v0 + 1112);
    v299 = *(v0 + 1104);
    v301 = *(v0 + 1168);
    v19 = *(v0 + 1096);
    v20 = *(v0 + 1088);
    v303 = *(v0 + 1064);
    v293 = *(v0 + 1160);
    (*(v293 + 104))(v14, enum case for AssetType.workoutRoute(_:));
    (*(v16 + 104))(v15, enum case for AssetSource.suggestionSheet(_:), v17);

    UUID.init()();
    v21 = objc_allocWithZone(type metadata accessor for WorkoutRouteAsset(0));
    *&v21[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata] = 0;
    (*(v19 + 16))(v299, v18, v20);
    (*(v293 + 16))(v301, v14, v296);
    (*(v16 + 16))(v306, v15, v17);
    v307 = sub_100285908(v299, v301, v306);
    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    (*(v293 + 8))(v14, v296);
    sub_1000082B4(v309, v303, &qword_100AE0260, &qword_100951D00);
    v22 = type metadata accessor for Suggestion.Workout.Details(0);
    v23 = *(*(v22 - 8) + 48);
    v24 = v23(v303, 1, v22);
    v25 = *(v0 + 1064);
    if (v24 == 1)
    {
      sub_100004F84(*(v0 + 1064), &qword_100AE0260, &qword_100951D00);
    }

    else
    {

      sub_1003A3E80(v25, type metadata accessor for Suggestion.Workout.Details);
    }

    v26 = *(v0 + 1056);
    sub_1000082B4(*(v0 + 1208), v26, &qword_100AE0260, &qword_100951D00);
    v27 = v23(v26, 1, v22);
    v28 = *(v0 + 1056);
    if (v27 == 1)
    {
      v29 = &qword_100AE0260;
      v30 = &qword_100951D00;
      v31 = *(v0 + 1056);
    }

    else
    {
      v32 = *(v0 + 920);
      sub_1000082B4(v28 + *(v22 + 32), v32, &qword_100AD3750, &unk_1009421B0);
      sub_1003A3E80(v28, type metadata accessor for Suggestion.Workout.Details);
      v33 = type metadata accessor for DateInterval();
      v34 = *(v33 - 8);
      v35 = (*(v34 + 48))(v32, 1, v33);
      v36 = *(v0 + 920);
      if (v35 != 1)
      {
        DateInterval.duration.getter();
        (*(v34 + 8))(v36, v33);
LABEL_13:
        v37 = *(v0 + 1048);
        sub_1000082B4(*(v0 + 1208), v37, &qword_100AE0260, &qword_100951D00);
        v38 = v23(v37, 1, v22);
        v39 = *(v0 + 1048);
        if (v38 == 1)
        {
          v40 = &qword_100AE0260;
          v41 = &qword_100951D00;
          v42 = *(v0 + 1048);
        }

        else
        {
          v43 = *(v0 + 912);
          sub_1000082B4(v39 + *(v22 + 32), v43, &qword_100AD3750, &unk_1009421B0);
          sub_1003A3E80(v39, type metadata accessor for Suggestion.Workout.Details);
          v44 = type metadata accessor for DateInterval();
          v45 = *(v44 - 8);
          v46 = (*(v45 + 48))(v43, 1, v44);
          v47 = *(v0 + 912);
          if (v46 != 1)
          {
            DateInterval.start.getter();
            (*(v45 + 8))(v47, v44);
            v48 = 0;
LABEL_19:
            v49 = *(v0 + 1208);
            v50 = *(v0 + 1040);
            v51 = *(v0 + 872);
            v52 = type metadata accessor for Date();
            v53 = *(*(v52 - 8) + 56);
            v53(v51, v48, 1, v52);
            sub_1000082B4(v49, v50, &qword_100AE0260, &qword_100951D00);
            v54 = v23(v50, 1, v22);
            v55 = *(v0 + 1040);
            if (v54 == 1)
            {
              v56 = &qword_100AE0260;
              v57 = &qword_100951D00;
              v58 = *(v0 + 1040);
            }

            else
            {
              v59 = *(v0 + 904);
              sub_1000082B4(v55 + *(v22 + 32), v59, &qword_100AD3750, &unk_1009421B0);
              sub_1003A3E80(v55, type metadata accessor for Suggestion.Workout.Details);
              v60 = type metadata accessor for DateInterval();
              v61 = *(v60 - 8);
              v62 = (*(v61 + 48))(v59, 1, v60);
              v63 = *(v0 + 904);
              if (v62 != 1)
              {
                DateInterval.end.getter();
                (*(v61 + 8))(v63, v60);
                v64 = 0;
LABEL_25:
                v65 = *(v0 + 1208);
                v66 = *(v0 + 1032);
                v53(*(v0 + 864), v64, 1, v52);
                sub_1000082B4(v65, v66, &qword_100AE0260, &qword_100951D00);
                v67 = v23;
                v68 = v23(v66, 1, v22);
                v69 = *(v0 + 1032);
                if (v68 == 1)
                {
                  sub_100004F84(*(v0 + 1032), &qword_100AE0260, &qword_100951D00);
                }

                else
                {
                  v70 = *(v69 + 24);
                  v71 = v70;
                  sub_1003A3E80(v69, type metadata accessor for Suggestion.Workout.Details);
                  if (v70)
                  {
                    v72 = objc_opt_self();
                    v73 = [v72 countUnit];
                    v74 = [v72 minuteUnit];
                    v75 = [v73 unitDividedByUnit:v74];

                    [v71 doubleValueForUnit:v75];
                  }
                }

                v76 = *(v0 + 1024);
                sub_1000082B4(*(v0 + 1208), v76, &qword_100AE0260, &qword_100951D00);
                v77 = v23(v76, 1, v22);
                v78 = *(v0 + 1024);
                if (v77 == 1)
                {
                  sub_100004F84(*(v0 + 1024), &qword_100AE0260, &qword_100951D00);
                }

                else
                {
                  v79 = *(v78 + 8);
                  v80 = v79;
                  sub_1003A3E80(v78, type metadata accessor for Suggestion.Workout.Details);
                  if (v79)
                  {
                    v81 = [objc_opt_self() kilocalorieUnit];
                    [v80 doubleValueForUnit:v81];
                  }
                }

                v82 = *(v0 + 1016);
                sub_1000082B4(*(v0 + 1208), v82, &qword_100AE0260, &qword_100951D00);
                v83 = v23(v82, 1, v22);
                v84 = *(v0 + 1016);
                if (v83 == 1)
                {
                  sub_100004F84(*(v0 + 1016), &qword_100AE0260, &qword_100951D00);
                }

                else
                {
                  v85 = *(v84 + 8);
                  v86 = v85;
                  sub_1003A3E80(v84, type metadata accessor for Suggestion.Workout.Details);
                  if (v85)
                  {
                    v291 = *(v0 + 832);
                    v87 = *(v0 + 816);
                    v280 = *(v0 + 824);
                    v284 = *(v0 + 808);
                    v272 = *(v0 + 840);
                    v276 = *(v0 + 800);
                    v88 = *(v0 + 792);
                    v89 = *(v0 + 784);
                    v90 = *(v0 + 768);
                    v91 = *(v0 + 760);
                    v268 = *(v0 + 752);
                    v269 = *(v0 + 776);
                    v92 = *(v0 + 744);
                    sub_10038D8C8();

                    sub_1000065A8(0, &qword_100AD8D60, NSUnitEnergy_ptr);
                    static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
                    static MeasurementFormatUnitUsage<>.workout.getter();
                    v93 = sub_1000F24EC(&qword_100AD8D68, &qword_100956920);
                    (*(*(v93 - 8) + 56))(v92, 1, 1, v93);
                    static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
                    sub_100004F84(v92, &qword_100AD8D38, &unk_100948460);
                    (*(v91 + 8))(v90, v268);
                    v67 = v23;
                    (*(v89 + 8))(v88, v269);
                    sub_1003A9580(&qword_100AD8D70, &qword_100AD8D50, &unk_100962960);
                    Measurement<>.formatted<A>(_:)();
                    (*(v284 + 8))(v87, v276);
                    (*(v291 + 8))(v272, v280);
                  }
                }

                v94 = *(v0 + 1008);
                sub_1000082B4(*(v0 + 1208), v94, &qword_100AE0260, &qword_100951D00);
                v95 = v67(v94, 1, v22);
                v96 = *(v0 + 1008);
                if (v95 == 1)
                {
                  sub_100004F84(*(v0 + 1008), &qword_100AE0260, &qword_100951D00);
                }

                else
                {
                  v97 = *(v96 + *(v22 + 36) + 8);

                  sub_1003A3E80(v96, type metadata accessor for Suggestion.Workout.Details);
                  if (v97)
                  {
                    goto LABEL_45;
                  }
                }

                v98 = *(v0 + 1000);
                sub_1000082B4(*(v0 + 1208), v98, &qword_100AE0260, &qword_100951D00);
                v99 = v67(v98, 1, v22);
                v100 = *(v0 + 1000);
                if (v99 == 1)
                {
                  sub_100004F84(*(v0 + 1000), &qword_100AE0260, &qword_100951D00);
LABEL_44:

                  goto LABEL_45;
                }

                v101 = *(v100 + 16);
                v102 = v101;
                sub_1003A3E80(v100, type metadata accessor for Suggestion.Workout.Details);
                if (!v101)
                {
                  goto LABEL_44;
                }

                v103 = *(v0 + 744);
                v310 = *(v0 + 728);
                v285 = *(v0 + 720);
                v104 = *(v0 + 712);
                v105 = *(v0 + 704);
                v277 = *(v0 + 736);
                v281 = *(v0 + 696);
                v106 = *(v0 + 688);
                v107 = *(v0 + 680);
                v108 = *(v0 + 664);
                v109 = *(v0 + 656);
                v270 = *(v0 + 648);
                v273 = *(v0 + 672);
                sub_10038DBA0();

                sub_1000065A8(0, &qword_100AE0E10, NSUnitLength_ptr);
                static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
                static MeasurementFormatUnitUsage<>.road.getter();
                v110 = sub_1000F24EC(&qword_100AD8D68, &qword_100956920);
                (*(*(v110 - 8) + 56))(v103, 1, 1, v110);
                static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
                sub_100004F84(v103, &qword_100AD8D38, &unk_100948460);
                (*(v109 + 8))(v108, v270);
                (*(v107 + 8))(v106, v273);
                sub_1003A9580(&qword_100AE0E18, &qword_100AE0E00, &qword_100952470);
                Measurement<>.formatted<A>(_:)();
                (*(v105 + 8))(v104, v281);
                (*(v310 + 8))(v277, v285);

LABEL_45:
                v111 = *(v0 + 1080);
                v112 = *(v0 + 560);
                WorkoutRouteAssetMetadata.init(route:type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:)();
                swift_storeEnumTagMultiPayload();
                sub_1000F24EC(&qword_100AE0E20, &unk_100962DF0);
                v113 = swift_allocObject();
                v114 = *(*v113 + 104);
                v115 = sub_1000F24EC(&qword_100AD5B28, &unk_10094FA90);
                (*(*(v115 - 8) + 56))(v113 + v114, 1, 1, v115);
                *(v113 + *(*v113 + 112)) = xmmword_100941EE0;
                sub_100021CEC(v111, v113 + *(*v113 + 120), &qword_100ADA8A0, &unk_100952480);
                *&v307[OBJC_IVAR____TtC7Journal17WorkoutRouteAsset_metadata] = v113;

                swift_beginAccess();
                v116 = v307;
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((*(v112 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v112 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                swift_endAccess();

                goto LABEL_48;
              }

              v56 = &qword_100AD3750;
              v57 = &unk_1009421B0;
              v58 = *(v0 + 904);
            }

            sub_100004F84(v58, v56, v57);
            v64 = 1;
            goto LABEL_25;
          }

          v40 = &qword_100AD3750;
          v41 = &unk_1009421B0;
          v42 = *(v0 + 912);
        }

        sub_100004F84(v42, v40, v41);
        v48 = 1;
        goto LABEL_19;
      }

      v29 = &qword_100AD3750;
      v30 = &unk_1009421B0;
      v31 = *(v0 + 920);
    }

    sub_100004F84(v31, v29, v30);
    goto LABEL_13;
  }

LABEL_48:
  v117 = *(v0 + 632);
  v118 = *(v0 + 624);
  v119 = *(v0 + 616);
  sub_1000082B4(*(v0 + 1208) + *(*(v0 + 1192) + 20), v119, &unk_100AD6DD0, &qword_1009437C0);
  if ((*(v117 + 48))(v119, 1, v118) == 1)
  {
    sub_100004F84(*(v0 + 616), &unk_100AD6DD0, &qword_1009437C0);
    goto LABEL_96;
  }

  v124 = *(v0 + 1176);
  v125 = *(v0 + 1160);
  v126 = *(v0 + 1152);
  v295 = *(v0 + 1168);
  v297 = *(v0 + 1136);
  v127 = *(v0 + 1128);
  v128 = *(v0 + 1120);
  v129 = *(v0 + 1112);
  v294 = *(v0 + 1104);
  v130 = *(v0 + 1096);
  v286 = *(v0 + 1144);
  v300 = *(v0 + 632);
  v302 = *(v0 + 624);
  v304 = *(v0 + 640);
  v305 = *(v0 + 608);
  v311 = *(v0 + 1088);
  (*(v300 + 32))(v304, *(v0 + 616), v302, v120, v121, v122, v123);
  (*(v125 + 104))(v124, enum case for AssetType.workoutIcon(_:), v126);
  (*(v127 + 104))(v286, enum case for AssetSource.suggestionSheet(_:), v128);
  UUID.init()();
  v131 = objc_allocWithZone(type metadata accessor for WorkoutIconAsset(0));
  *&v131[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = 0;
  (*(v130 + 16))(v294, v129, v311);
  (*(v125 + 16))(v295, v124, v126);
  (*(v127 + 16))(v297, v286, v128);
  v132 = sub_100285908(v294, v295, v297);
  v298 = *(v130 + 8);
  v298(v129, v311);
  (*(v127 + 8))(v286, v128);
  (*(v125 + 8))(v124, v126);
  (*(v300 + 16))(v305, v304, v302);
  type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v133 = v132;
  UUID.init()();
  v134 = UUID.uuidString.getter();
  v136 = v135;
  v298(v129, v311);
  type metadata accessor for AssetAttachment(0);
  v137 = swift_allocObject();
  *(v137 + 16) = 0;
  sub_1003A6F60(v305, v137 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
  v138 = (v137 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
  *v138 = v134;
  v138[1] = v136;
  v139 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*&v133[v139] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v133[v139] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v140 = *(v0 + 1208);
  v141 = *(v0 + 992);
  v308 = v133;
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  sub_1000082B4(v140, v141, &qword_100AE0260, &qword_100951D00);
  v142 = type metadata accessor for Suggestion.Workout.Details(0);
  v143 = (*(v142 - 8) + 48);
  v144 = v141;
  v145 = *v143;
  v146 = (*v143)(v144, 1, v142);
  v147 = *(v0 + 992);
  if (v146 == 1)
  {
    sub_100004F84(*(v0 + 992), &qword_100AE0260, &qword_100951D00);
  }

  else
  {

    sub_1003A3E80(v147, type metadata accessor for Suggestion.Workout.Details);
  }

  v148 = *(v0 + 984);
  sub_1000082B4(*(v0 + 1208), v148, &qword_100AE0260, &qword_100951D00);
  v149 = v145(v148, 1, v142);
  v150 = *(v0 + 984);
  if (v149 == 1)
  {
    v151 = &qword_100AE0260;
    v152 = &qword_100951D00;
    v153 = *(v0 + 984);
LABEL_59:
    sub_100004F84(v153, v151, v152);
    goto LABEL_61;
  }

  v154 = *(v0 + 896);
  sub_1000082B4(v150 + *(v142 + 32), v154, &qword_100AD3750, &unk_1009421B0);
  sub_1003A3E80(v150, type metadata accessor for Suggestion.Workout.Details);
  v155 = type metadata accessor for DateInterval();
  v156 = *(v155 - 8);
  v157 = (*(v156 + 48))(v154, 1, v155);
  v158 = *(v0 + 896);
  if (v157 == 1)
  {
    v151 = &qword_100AD3750;
    v152 = &unk_1009421B0;
    v153 = *(v0 + 896);
    goto LABEL_59;
  }

  DateInterval.duration.getter();
  (*(v156 + 8))(v158, v155);
LABEL_61:
  v159 = *(v0 + 976);
  sub_1000082B4(*(v0 + 1208), v159, &qword_100AE0260, &qword_100951D00);
  v160 = v145(v159, 1, v142);
  v161 = *(v0 + 976);
  v312 = v145;
  if (v160 == 1)
  {
    v162 = &qword_100AE0260;
    v163 = &qword_100951D00;
    v164 = *(v0 + 976);
LABEL_65:
    sub_100004F84(v164, v162, v163);
    v170 = 1;
    goto LABEL_67;
  }

  v165 = *(v0 + 888);
  sub_1000082B4(v161 + *(v142 + 32), v165, &qword_100AD3750, &unk_1009421B0);
  sub_1003A3E80(v161, type metadata accessor for Suggestion.Workout.Details);
  v166 = type metadata accessor for DateInterval();
  v167 = *(v166 - 8);
  v168 = (*(v167 + 48))(v165, 1, v166);
  v169 = *(v0 + 888);
  if (v168 == 1)
  {
    v162 = &qword_100AD3750;
    v163 = &unk_1009421B0;
    v164 = *(v0 + 888);
    goto LABEL_65;
  }

  DateInterval.start.getter();
  (*(v167 + 8))(v169, v166);
  v170 = 0;
LABEL_67:
  v171 = *(v0 + 1208);
  v172 = *(v0 + 968);
  v173 = *(v0 + 856);
  v174 = type metadata accessor for Date();
  v175 = *(*(v174 - 8) + 56);
  v175(v173, v170, 1, v174);
  sub_1000082B4(v171, v172, &qword_100AE0260, &qword_100951D00);
  v176 = v312;
  v177 = v312(v172, 1, v142);
  v178 = *(v0 + 968);
  if (v177 == 1)
  {
    v179 = &qword_100AE0260;
    v180 = &qword_100951D00;
    v181 = *(v0 + 968);
LABEL_71:
    sub_100004F84(v181, v179, v180);
    v187 = 1;
    goto LABEL_73;
  }

  v182 = *(v0 + 880);
  sub_1000082B4(v178 + *(v142 + 32), v182, &qword_100AD3750, &unk_1009421B0);
  sub_1003A3E80(v178, type metadata accessor for Suggestion.Workout.Details);
  v183 = type metadata accessor for DateInterval();
  v184 = *(v183 - 8);
  v185 = (*(v184 + 48))(v182, 1, v183);
  v186 = *(v0 + 880);
  if (v185 == 1)
  {
    v179 = &qword_100AD3750;
    v180 = &unk_1009421B0;
    v181 = *(v0 + 880);
    goto LABEL_71;
  }

  DateInterval.end.getter();
  (*(v184 + 8))(v186, v183);
  v187 = 0;
LABEL_73:
  v188 = *(v0 + 1208);
  v189 = *(v0 + 960);
  v175(*(v0 + 848), v187, 1, v174);
  sub_1000082B4(v188, v189, &qword_100AE0260, &qword_100951D00);
  v190 = v312(v189, 1, v142);
  v191 = *(v0 + 960);
  if (v190 == 1)
  {
    sub_100004F84(*(v0 + 960), &qword_100AE0260, &qword_100951D00);
  }

  else
  {
    v192 = *(v191 + 24);
    v193 = v192;
    sub_1003A3E80(v191, type metadata accessor for Suggestion.Workout.Details);
    if (v192)
    {
      v194 = objc_opt_self();
      v195 = [v194 countUnit];
      v196 = [v194 minuteUnit];
      v197 = [v195 unitDividedByUnit:v196];

      [v193 doubleValueForUnit:v197];
      v176 = v312;
    }
  }

  v198 = *(v0 + 952);
  sub_1000082B4(*(v0 + 1208), v198, &qword_100AE0260, &qword_100951D00);
  v199 = v176(v198, 1, v142);
  v200 = *(v0 + 952);
  if (v199 == 1)
  {
    sub_100004F84(*(v0 + 952), &qword_100AE0260, &qword_100951D00);
  }

  else
  {
    v201 = *(v200 + 8);
    v202 = v201;
    sub_1003A3E80(v200, type metadata accessor for Suggestion.Workout.Details);
    if (v201)
    {
      v203 = [objc_opt_self() kilocalorieUnit];
      [v202 doubleValueForUnit:v203];
    }
  }

  v204 = *(v0 + 944);
  sub_1000082B4(*(v0 + 1208), v204, &qword_100AE0260, &qword_100951D00);
  v205 = v176(v204, 1, v142);
  v206 = *(v0 + 944);
  if (v205 == 1)
  {
    sub_100004F84(*(v0 + 944), &qword_100AE0260, &qword_100951D00);
  }

  else
  {
    v207 = *(v206 + 8);
    v208 = v207;
    sub_1003A3E80(v206, type metadata accessor for Suggestion.Workout.Details);
    if (v207)
    {
      v292 = *(v0 + 832);
      v209 = *(v0 + 816);
      v287 = *(v0 + 824);
      v289 = *(v0 + 808);
      v278 = *(v0 + 840);
      v282 = *(v0 + 800);
      v210 = *(v0 + 792);
      v211 = *(v0 + 784);
      v212 = *(v0 + 768);
      v213 = *(v0 + 760);
      v271 = *(v0 + 752);
      v274 = *(v0 + 776);
      v214 = *(v0 + 744);
      sub_10038D8C8();

      sub_1000065A8(0, &qword_100AD8D60, NSUnitEnergy_ptr);
      static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
      static MeasurementFormatUnitUsage<>.workout.getter();
      v215 = sub_1000F24EC(&qword_100AD8D68, &qword_100956920);
      (*(*(v215 - 8) + 56))(v214, 1, 1, v215);
      static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
      sub_100004F84(v214, &qword_100AD8D38, &unk_100948460);
      (*(v213 + 8))(v212, v271);
      v176 = v312;
      (*(v211 + 8))(v210, v274);
      sub_1003A9580(&qword_100AD8D70, &qword_100AD8D50, &unk_100962960);
      Measurement<>.formatted<A>(_:)();
      (*(v289 + 8))(v209, v282);
      (*(v292 + 8))(v278, v287);
    }
  }

  v216 = *(v0 + 936);
  sub_1000082B4(*(v0 + 1208), v216, &qword_100AE0260, &qword_100951D00);
  v217 = v176(v216, 1, v142);
  v218 = *(v0 + 936);
  if (v217 == 1)
  {
    sub_100004F84(*(v0 + 936), &qword_100AE0260, &qword_100951D00);
  }

  else
  {
    v219 = *(v218 + *(v142 + 36) + 8);

    sub_1003A3E80(v218, type metadata accessor for Suggestion.Workout.Details);
    if (v219)
    {
      goto LABEL_93;
    }
  }

  v220 = *(v0 + 928);
  sub_1000082B4(*(v0 + 1208), v220, &qword_100AE0260, &qword_100951D00);
  v221 = v176(v220, 1, v142);
  v222 = *(v0 + 928);
  if (v221 == 1)
  {
    sub_100004F84(*(v0 + 928), &qword_100AE0260, &qword_100951D00);
LABEL_92:

    goto LABEL_93;
  }

  v223 = *(v222 + 16);
  v224 = v223;
  sub_1003A3E80(v222, type metadata accessor for Suggestion.Workout.Details);
  if (!v223)
  {
    goto LABEL_92;
  }

  v225 = *(v0 + 744);
  v313 = *(v0 + 728);
  v290 = *(v0 + 720);
  v226 = *(v0 + 712);
  v227 = *(v0 + 704);
  v283 = *(v0 + 736);
  v288 = *(v0 + 696);
  v228 = *(v0 + 688);
  v229 = *(v0 + 680);
  v230 = *(v0 + 664);
  v231 = *(v0 + 656);
  v275 = *(v0 + 648);
  v279 = *(v0 + 672);
  sub_10038DBA0();

  sub_1000065A8(0, &qword_100AE0E10, NSUnitLength_ptr);
  static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
  static MeasurementFormatUnitUsage<>.road.getter();
  v232 = sub_1000F24EC(&qword_100AD8D68, &qword_100956920);
  (*(*(v232 - 8) + 56))(v225, 1, 1, v232);
  static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
  sub_100004F84(v225, &qword_100AD8D38, &unk_100948460);
  (*(v231 + 8))(v230, v275);
  (*(v229 + 8))(v228, v279);
  sub_1003A9580(&qword_100AE0E18, &qword_100AE0E00, &qword_100952470);
  Measurement<>.formatted<A>(_:)();
  (*(v227 + 8))(v226, v288);
  (*(v313 + 8))(v283, v290);

LABEL_93:
  v233 = *(v0 + 592);
  v234 = *(v0 + 560);
  WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AE0DD0, &unk_100960750);
  v235 = swift_allocObject();
  v236 = *(*v235 + 104);
  v237 = sub_1000F24EC(&qword_100AE4280, &unk_100952430);
  (*(*(v237 - 8) + 56))(v235 + v236, 1, 1, v237);
  *(v235 + *(*v235 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v233, v235 + *(*v235 + 120), &qword_100ADA888, &unk_100952410);
  *&v308[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = v235;

  swift_beginAccess();
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v234 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v234 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v238 = *(v0 + 640);
  v239 = *(v0 + 632);
  v240 = *(v0 + 624);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  (*(v239 + 8))(v238, v240);
LABEL_96:
  v241 = *(v0 + 560);
  swift_beginAccess();
  v242 = *(v241 + 48);
  if (v242 >> 62)
  {
    v243 = _CocoaArrayWrapper.endIndex.getter();
    if (v243)
    {
      goto LABEL_98;
    }

LABEL_100:
    v245 = *(v0 + 576);
    v246 = *(v0 + 552);
    type metadata accessor for SuggestionImportSession(v243);
    sub_1003A6EF8(v246, v245, type metadata accessor for Suggestion.ItemContent);
    v247 = Logger.logObject.getter();
    v248 = static os_log_type_t.error.getter();
    v249 = os_log_type_enabled(v247, v248);
    v250 = *(v0 + 1208);
    v251 = *(v0 + 576);
    if (v249)
    {
      v252 = swift_slowAlloc();
      v253 = swift_slowAlloc();
      v314 = v253;
      *v252 = 136315138;
      sub_10008D160(&qword_100AE19B0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v254 = dispatch thunk of CustomStringConvertible.description.getter();
      v256 = v255;
      sub_1003A3E80(v251, type metadata accessor for Suggestion.ItemContent);
      v257 = sub_100008458(v254, v256, &v314);

      *(v252 + 4) = v257;
      _os_log_impl(&_mh_execute_header, v247, v248, "Failed to parse framework asset into workout route asset, content missing route and icon - %s", v252, 0xCu);
      sub_10000BA7C(v253);
    }

    else
    {

      sub_1003A3E80(v251, type metadata accessor for Suggestion.ItemContent);
    }

    v244 = v250;
    goto LABEL_104;
  }

  v243 = *((v242 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v243)
  {
    goto LABEL_100;
  }

LABEL_98:
  v244 = *(v0 + 1208);
LABEL_104:
  sub_1003A3E80(v244, type metadata accessor for Suggestion.Workout);
  v258 = *(v0 + 560);
  v259 = *(v0 + 544);
  swift_beginAccess();
  *(v0 + 176) = v258[1];
  v260 = v258[2];
  v261 = v258[3];
  v262 = v258[5];
  *(v0 + 224) = v258[4];
  *(v0 + 240) = v262;
  *(v0 + 192) = v260;
  *(v0 + 208) = v261;
  v263 = v258[5];
  v265 = v258[2];
  v264 = v258[3];
  v259[3] = v258[4];
  v259[4] = v263;
  v259[1] = v265;
  v259[2] = v264;
  *v259 = v258[1];
  v11 = v0 + 176;
  v12 = v0 + 256;
LABEL_105:
  sub_1003A714C(v11, v12);

  v266 = *(v0 + 8);

  return v266();
}

uint64_t sub_10038D598()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038D8C8()
{
  v1 = v0;
  v2 = [v0 _unit];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 jouleUnitWithMetricPrefix:9];
  sub_1000065A8(0, &qword_100AE0DD8, HKUnit_ptr);
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {

    [v1 _value];
    v7 = &selRef_kilojoules;
    goto LABEL_9;
  }

  v8 = v4;
  v9 = [v3 jouleUnit];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {

    [v1 _value];
    v7 = &selRef_joules;
    goto LABEL_9;
  }

  v11 = v8;
  v12 = [v3 kilocalorieUnit];
  v13 = static NSObject.== infix(_:_:)();

  if (v13 & 1) != 0 || (v14 = v11, v15 = [v3 largeCalorieUnit], v16 = static NSObject.== infix(_:_:)(), v14, v15, (v16))
  {

    [v1 _value];
LABEL_8:
    v7 = &selRef_kilocalories;
    goto LABEL_9;
  }

  v19 = [v3 smallCalorieUnit];
  v20 = static NSObject.== infix(_:_:)();

  if ((v20 & 1) == 0)
  {
    v21 = [v3 kilocalorieUnit];
    [v1 doubleValueForUnit:v21];

    goto LABEL_8;
  }

  [v1 _value];
  v7 = &selRef_calories;
LABEL_9:
  v17 = [objc_opt_self() *v7];
  sub_1000065A8(0, &qword_100AD8D60, NSUnitEnergy_ptr);

  return Measurement.init(value:unit:)();
}

uint64_t sub_10038DBA0()
{
  v1 = v0;
  v2 = [v0 _unit];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 meterUnitWithMetricPrefix:9];
  sub_1000065A8(0, &qword_100AE0DD8, HKUnit_ptr);
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {

    [v1 _value];
    v7 = &selRef_kilometers;
    goto LABEL_18;
  }

  v8 = v4;
  v9 = [v3 meterUnit];
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {

    [v1 _value];
LABEL_5:
    v7 = &selRef_meters;
    goto LABEL_18;
  }

  v11 = v8;
  v12 = [v3 meterUnitWithMetricPrefix:5];
  v13 = static NSObject.== infix(_:_:)();

  if (v13)
  {

    [v1 _value];
    v7 = &selRef_centimeters;
  }

  else
  {
    v14 = v11;
    v15 = [v3 meterUnitWithMetricPrefix:4];
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {

      [v1 _value];
      v7 = &selRef_millimeters;
    }

    else
    {
      v17 = v14;
      v18 = [v3 inchUnit];
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {

        [v1 _value];
        v7 = &selRef_inches;
      }

      else
      {
        v20 = v17;
        v21 = [v3 footUnit];
        v22 = static NSObject.== infix(_:_:)();

        if (v22)
        {

          [v1 _value];
          v7 = &selRef_feet;
        }

        else
        {
          v23 = v20;
          v24 = [v3 mileUnit];
          v25 = static NSObject.== infix(_:_:)();

          if (v25)
          {

            [v1 _value];
            v7 = &selRef_miles;
          }

          else
          {
            v26 = [v3 yardUnit];
            v27 = static NSObject.== infix(_:_:)();

            if ((v27 & 1) == 0)
            {
              v30 = [v3 meterUnit];
              [v1 doubleValueForUnit:v30];

              goto LABEL_5;
            }

            [v1 _value];
            v7 = &selRef_yards;
          }
        }
      }
    }
  }

LABEL_18:
  v28 = [objc_opt_self() *v7];
  sub_1000065A8(0, &qword_100AE0E10, NSUnitLength_ptr);

  return Measurement.init(value:unit:)();
}

uint64_t sub_10038DFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[63] = a5;
  v6[64] = a6;
  v6[61] = a1;
  v6[62] = a4;
  sub_1000F24EC(&qword_100AD3750, &unk_1009421B0);
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD8B38, &qword_100948358);
  v6[69] = swift_task_alloc();
  v6[70] = swift_task_alloc();
  v6[71] = sub_1000F24EC(&qword_100AD8B30, &qword_100948350);
  v6[72] = swift_task_alloc();
  v6[73] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[74] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v6[75] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v6[76] = v7;
  v6[77] = *(v7 - 8);
  v6[78] = swift_task_alloc();
  v8 = type metadata accessor for UUID();
  v6[79] = v8;
  v6[80] = *(v8 - 8);
  v6[81] = swift_task_alloc();
  v6[82] = swift_task_alloc();
  v9 = type metadata accessor for AssetSource();
  v6[83] = v9;
  v6[84] = *(v9 - 8);
  v6[85] = swift_task_alloc();
  v6[86] = swift_task_alloc();
  v10 = type metadata accessor for AssetType();
  v6[87] = v10;
  v6[88] = *(v10 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE01D0, &qword_100951C78);
  v11 = swift_task_alloc();
  v6[91] = v11;
  v12 = type metadata accessor for Suggestion.MotionActivity(0);
  v6[92] = v12;
  v6[93] = *(v12 - 8);
  v6[94] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[95] = v13;
  *v13 = v6;
  v13[1] = sub_10038E418;

  return sub_100379FE8(v11, 0, 0);
}

uint64_t sub_10038E418()
{
  *(*v1 + 768) = v0;

  if (v0)
  {
    v2 = sub_10038F8EC;
  }

  else
  {
    v2 = sub_10038E52C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10038E52C()
{
  v1 = *(v0 + 728);
  if ((*(*(v0 + 744) + 48))(v1, 1, *(v0 + 736)) == 1)
  {
    v2 = *(v0 + 504);
    v3 = *(v0 + 488);
    sub_100004F84(v1, &qword_100AE01D0, &qword_100951C78);
    swift_beginAccess();
    *(v0 + 16) = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[5];
    *(v0 + 64) = v2[4];
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    v3[3] = v2[4];
    v3[4] = v7;
    v3[1] = v9;
    v3[2] = v8;
    *v3 = v2[1];
    sub_1003A714C(v0 + 16, v0 + 96);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v12 = *(v0 + 720);
    v13 = *(v0 + 704);
    v14 = *(v0 + 696);
    v15 = *(v0 + 688);
    v25 = *(v0 + 712);
    v26 = *(v0 + 680);
    v16 = *(v0 + 672);
    v17 = *(v0 + 664);
    v18 = *(v0 + 656);
    v23 = *(v0 + 648);
    v19 = *(v0 + 640);
    v24 = *(v0 + 632);
    sub_1003A6F60(v1, *(v0 + 752), type metadata accessor for Suggestion.MotionActivity);
    (*(v13 + 104))(v12, enum case for AssetType.motionActivity(_:), v14);
    (*(v16 + 104))(v15, enum case for AssetSource.suggestionSheet(_:), v17);
    UUID.init()();
    v20 = objc_allocWithZone(type metadata accessor for MotionActivityAsset(0));
    *&v20[OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata] = 0;
    (*(v19 + 16))(v23, v18, v24);
    (*(v13 + 16))(v25, v12, v14);
    (*(v16 + 16))(v26, v15, v17);
    *(v0 + 776) = sub_100285908(v23, v25, v26);
    v21 = *(v19 + 8);
    *(v0 + 784) = v21;
    *(v0 + 792) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v18, v24);
    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
    v22 = swift_task_alloc();
    *(v0 + 800) = v22;
    *v22 = v0;
    v22[1] = sub_10038E990;

    return sub_10037A6DC(0, 0);
  }
}

uint64_t sub_10038E990(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 808) = a1;
  *(v3 + 816) = v1;

  if (v1)
  {
    v4 = sub_10038FA54;
  }

  else
  {
    v4 = sub_10038EAA8;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10038EAA8()
{
  v1 = *(v0 + 808);
  if (v1)
  {
    v2 = &selRef_setRegion_;
    v3 = [*(v0 + 808) imageAsset];
    v4 = &selRef_setRegion_;
    v5 = &selRef_setRegion_;
    if (v3 && (v6 = v3, v7 = [objc_opt_self() traitCollectionWithUserInterfaceStyle:1], v8 = objc_msgSend(v6, "imageWithTraitCollection:", v7), v7, v6, v8))
    {
      v112 = v1;
      v9 = *(v0 + 784);
      v10 = *(v0 + 776);
      v11 = *(v0 + 656);
      v12 = *(v0 + 632);
      v13 = *(v0 + 592);
      *v13 = v8;
      swift_storeEnumTagMultiPayload();
      v14 = v10;
      v15 = v8;
      UUID.init()();
      v16 = UUID.uuidString.getter();
      v18 = v17;
      v9(v11, v12);
      type metadata accessor for AssetAttachment(0);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      sub_1003A6F60(v13, v19 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v20 = (v19 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v20 = v16;
      v20[1] = v18;
      v21 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v14 + v21) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v14 + v21) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v22 = *(v0 + 776);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      v1 = v112;
      v5 = &selRef_setRegion_;
      v4 = &selRef_setRegion_;
      v2 = &selRef_setRegion_;
    }

    else
    {
      type metadata accessor for SuggestionImportSession(0);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "Failed to parse framework asset into motion activity asset, light content missing", v24, 2u);
      }
    }

    v25 = [v1 v2[444]];
    if (v25 && (v26 = v25, v27 = [objc_opt_self() v4[452]], v28 = objc_msgSend(v26, v5[453], v27), v27, v26, v28))
    {
      v29 = *(v0 + 784);
      v30 = *(v0 + 776);
      v31 = *(v0 + 656);
      v32 = *(v0 + 632);
      v33 = *(v0 + 592);
      *v33 = v28;
      swift_storeEnumTagMultiPayload();
      v34 = v30;
      v35 = v28;
      UUID.init()();
      v36 = UUID.uuidString.getter();
      v38 = v37;
      v29(v31, v32);
      type metadata accessor for AssetAttachment(0);
      v39 = swift_allocObject();
      *(v39 + 16) = 1;
      sub_1003A6F60(v33, v39 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v40 = (v39 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v40 = v36;
      v40[1] = v38;
      v41 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v34 + v41) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v34 + v41) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v42 = *(v0 + 776);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
    }

    else
    {
      type metadata accessor for SuggestionImportSession(0);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "Failed to parse framework asset into motion activity asset, dark content missing", v44, 2u);
      }
    }
  }

  else
  {
    v45 = *(v0 + 616);
    v46 = *(v0 + 608);
    v47 = *(v0 + 600);
    sub_1000082B4(*(v0 + 752), v47, &unk_100AD6DD0, &qword_1009437C0);
    if ((*(v45 + 48))(v47, 1, v46) == 1)
    {
      sub_100004F84(*(v0 + 600), &unk_100AD6DD0, &qword_1009437C0);
      type metadata accessor for SuggestionImportSession(0);
      v42 = Logger.logObject.getter();
      v48 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v42, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v42, v48, "Failed to parse framework asset into motion activity asset, content missing icon", v49, 2u);
      }
    }

    else
    {
      v50 = *(v0 + 784);
      v51 = *(v0 + 776);
      v52 = *(v0 + 656);
      v53 = *(v0 + 632);
      v54 = *(v0 + 624);
      v55 = *(v0 + 616);
      v56 = *(v0 + 608);
      v57 = *(v0 + 592);
      (*(v55 + 32))(v54, *(v0 + 600), v56);
      (*(v55 + 16))(v57, v54, v56);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v58 = v51;
      UUID.init()();
      v59 = UUID.uuidString.getter();
      v61 = v60;
      v50(v52, v53);
      type metadata accessor for AssetAttachment(0);
      v62 = swift_allocObject();
      *(v62 + 16) = 0;
      sub_1003A6F60(v57, v62 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v63 = (v62 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v63 = v59;
      v63[1] = v61;
      v64 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v58 + v64) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v58 + v64) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v42 = *(v0 + 776);
      v65 = *(v0 + 624);
      v66 = *(v0 + 616);
      v67 = *(v0 + 608);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      (*(v66 + 8))(v65, v67);
    }
  }

  v68 = *(*(v0 + 752) + *(*(v0 + 736) + 28));
  if (v68 <= 1)
  {
    if (*(*(v0 + 752) + *(*(v0 + 736) + 28)))
    {
      v69 = &enum case for MotionActivityTypeEnum.walking(_:);
    }

    else
    {
      v69 = &enum case for MotionActivityTypeEnum.running(_:);
    }

    goto LABEL_29;
  }

  if (v68 == 2)
  {
    v69 = &enum case for MotionActivityTypeEnum.runningAndWalking(_:);
LABEL_29:
    v70 = *(v0 + 560);
    v71 = *(v0 + 552);
    v72 = *v69;
    v73 = type metadata accessor for MotionActivityTypeEnum();
    v74 = *(v73 - 8);
    (*(v74 + 104))(v71, v72, v73);
    (*(v74 + 56))(v71, 0, 1, v73);
    sub_100021CEC(v71, v70, &qword_100AD8B38, &qword_100948358);
    sub_10038FBE4(v68);
    goto LABEL_31;
  }

  v75 = *(v0 + 560);
  v76 = type metadata accessor for MotionActivityTypeEnum();
  (*(*(v76 - 8) + 56))(v75, 1, 1, v76);
LABEL_31:
  v77 = *(v0 + 752);
  v78 = *(v0 + 736);
  v79 = *(v0 + 528);
  *(v0 + 480) = *(v77 + *(v78 + 20));
  dispatch thunk of CustomStringConvertible.description.getter();
  v111 = *(v78 + 24);
  sub_1000082B4(v77 + v111, v79, &qword_100AD3750, &unk_1009421B0);
  v80 = type metadata accessor for DateInterval();
  v81 = *(v80 - 8);
  v110 = *(v81 + 48);
  if (v110(v79, 1, v80) == 1)
  {
    sub_100004F84(*(v0 + 528), &qword_100AD3750, &unk_1009421B0);
    v82 = 1;
  }

  else
  {
    v83 = *(v0 + 528);
    DateInterval.start.getter();
    (*(v81 + 8))(v83, v80);
    v82 = 0;
  }

  v84 = *(v0 + 544);
  v85 = *(v0 + 520);
  v86 = type metadata accessor for Date();
  v87 = (*(v86 - 8) + 56);
  v109 = *v87;
  (*v87)(v84, v82, 1, v86);
  sub_1000082B4(v77 + v111, v85, &qword_100AD3750, &unk_1009421B0);
  if (v110(v85, 1, v80) == 1)
  {
    sub_100004F84(*(v0 + 520), &qword_100AD3750, &unk_1009421B0);
    v88 = 1;
  }

  else
  {
    v89 = *(v0 + 520);
    DateInterval.end.getter();
    (*(v81 + 8))(v89, v80);
    v88 = 0;
  }

  v90 = *(v0 + 776);
  v91 = *(v0 + 576);
  v92 = *(v0 + 504);
  v109(*(v0 + 536), v88, 1, v86);
  MotionActivityAssetMetadata.init(activityType:activityTypeEnum:localizedActivityName:steps:startTime:endTime:)();
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100AD8B40, &unk_100948360);
  v93 = swift_allocObject();
  v94 = *(*v93 + 104);
  v95 = sub_1000F24EC(&qword_100AD8740, &unk_100948340);
  (*(*(v95 - 8) + 56))(v93 + v94, 1, 1, v95);
  *(v93 + *(*v93 + 112)) = xmmword_100941EE0;
  sub_100021CEC(v91, v93 + *(*v93 + 120), &qword_100AD8B30, &qword_100948350);
  *&v90[OBJC_IVAR____TtC7Journal19MotionActivityAsset_metadata] = v93;

  swift_beginAccess();
  v96 = v90;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*(v92 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v92 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  v97 = *(v0 + 776);
  v98 = *(v0 + 752);
  v99 = *(v0 + 504);
  v100 = *(v0 + 488);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();

  sub_1003A3E80(v98, type metadata accessor for Suggestion.MotionActivity);
  swift_beginAccess();
  *(v0 + 176) = v99[1];
  v101 = v99[2];
  v102 = v99[3];
  v103 = v99[5];
  *(v0 + 224) = v99[4];
  *(v0 + 240) = v103;
  *(v0 + 192) = v101;
  *(v0 + 208) = v102;
  v104 = v99[5];
  v106 = v99[2];
  v105 = v99[3];
  v100[3] = v99[4];
  v100[4] = v104;
  v100[1] = v106;
  v100[2] = v105;
  *v100 = v99[1];
  sub_1003A714C(v0 + 176, v0 + 256);

  v107 = *(v0 + 8);

  return v107();
}

uint64_t sub_10038F8EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10038FA54()
{
  v1 = *(v0 + 752);

  sub_1003A3E80(v1, type metadata accessor for Suggestion.MotionActivity);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10038FBE4(char a1)
{
  v1 = type metadata accessor for Locale();
  __chkstk_darwin(v1 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  return String.init(localized:table:bundle:locale:comment:)();
}

uint64_t sub_10038FD24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[81] = a6;
  v6[80] = a5;
  v6[79] = a1;
  sub_1000F24EC(&qword_100AD8D38, &unk_100948460);
  v6[82] = swift_task_alloc();
  v7 = sub_1000F24EC(&qword_100AD8D40, &unk_100962950);
  v6[83] = v7;
  v6[84] = *(v7 - 8);
  v6[85] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100AD8D48, &unk_100948470);
  v6[86] = v8;
  v6[87] = *(v8 - 8);
  v6[88] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100AD8D50, &unk_100962960);
  v6[89] = v9;
  v6[90] = *(v9 - 8);
  v6[91] = swift_task_alloc();
  v10 = sub_1000F24EC(&qword_100AD8D58, &unk_100948480);
  v6[92] = v10;
  v6[93] = *(v10 - 8);
  v6[94] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD3750, &unk_1009421B0);
  v6[95] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0260, &qword_100951D00);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v11 = type metadata accessor for Date();
  v6[98] = v11;
  v6[99] = *(v11 - 8);
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  v6[102] = swift_task_alloc();
  v6[103] = *(type metadata accessor for Suggestion.Workout(0) - 8);
  v6[104] = swift_task_alloc();
  v6[105] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v6[106] = swift_task_alloc();
  v6[107] = swift_task_alloc();
  v6[108] = swift_task_alloc();
  v6[109] = swift_task_alloc();
  v6[110] = swift_task_alloc();
  v6[111] = swift_task_alloc();
  v6[112] = sub_1000F24EC(&qword_100ADA888, &unk_100952410);
  v6[113] = swift_task_alloc();
  v6[114] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[115] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v6[116] = v12;
  v6[117] = *(v12 - 8);
  v6[118] = swift_task_alloc();
  v6[119] = swift_task_alloc();
  v13 = type metadata accessor for AssetSource();
  v6[120] = v13;
  v6[121] = *(v13 - 8);
  v6[122] = swift_task_alloc();
  v6[123] = swift_task_alloc();
  v14 = type metadata accessor for AssetType();
  v6[124] = v14;
  v6[125] = *(v14 - 8);
  v6[126] = swift_task_alloc();
  v6[127] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v6[128] = swift_task_alloc();
  v15 = type metadata accessor for URL();
  v6[129] = v15;
  v6[130] = *(v15 - 8);
  v6[131] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0268, &qword_100951D08);
  v16 = swift_task_alloc();
  v6[132] = v16;
  v17 = type metadata accessor for Suggestion.WorkoutGroup(0);
  v6[133] = v17;
  v6[134] = *(v17 - 8);
  v6[135] = swift_task_alloc();
  v18 = swift_task_alloc();
  v6[136] = v18;
  *v18 = v6;
  v18[1] = sub_100390458;

  return sub_10037AC28(v16, 0, 0);
}

uint64_t sub_100390458()
{
  *(*v1 + 1096) = v0;

  if (v0)
  {
    v2 = sub_1003919E8;
  }

  else
  {
    v2 = sub_10039056C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039056C()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1056);
  if ((*(*(v0 + 1072) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 640);
    v4 = *(v0 + 632);
    sub_100004F84(v2, &qword_100AE0268, &qword_100951D08);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
  }

  else
  {
    v13 = *(v0 + 1080);
    v14 = *(v0 + 1040);
    v15 = *(v0 + 1032);
    v16 = *(v0 + 1024);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.WorkoutGroup);
    sub_1000082B4(v13 + *(v1 + 20), v16, &unk_100AD6DD0, &qword_1009437C0);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 1024), &unk_100AD6DD0, &qword_1009437C0);
      type metadata accessor for SuggestionImportSession(0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into workout group asset, content missing icon", v19, 2u);
      }

      v20 = *(v0 + 1080);
      v21 = *(v0 + 640);
      v22 = *(v0 + 632);

      sub_1003A3E80(v20, type metadata accessor for Suggestion.WorkoutGroup);
      swift_beginAccess();
      *(v0 + 176) = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      *(v0 + 224) = v21[4];
      *(v0 + 240) = v25;
      *(v0 + 192) = v23;
      *(v0 + 208) = v24;
      v26 = v21[5];
      v28 = v21[2];
      v27 = v21[3];
      v22[3] = v21[4];
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      *v22 = v21[1];
      v11 = v0 + 176;
      v12 = v0 + 256;
    }

    else
    {
      v153 = *(v0 + 1032);
      v156 = *(v0 + 1048);
      v29 = *(v0 + 1016);
      v30 = *(v0 + 1000);
      v31 = *(v0 + 992);
      v135 = *(v0 + 984);
      v147 = *(v0 + 976);
      v150 = *(v0 + 1040);
      v32 = *(v0 + 968);
      v33 = *(v0 + 960);
      v34 = *(v0 + 952);
      v143 = *(v0 + 944);
      v146 = *(v0 + 1008);
      v35 = *(v0 + 936);
      v159 = *(v0 + 920);
      v162 = *(v0 + 928);
      (*(v150 + 32))();
      (*(v30 + 104))(v29, enum case for AssetType.workoutIcon(_:), v31);
      (*(v32 + 104))(v135, enum case for AssetSource.suggestionSheet(_:), v33);
      UUID.init()();
      v36 = objc_allocWithZone(type metadata accessor for WorkoutIconAsset(0));
      *&v36[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = 0;
      (*(v35 + 16))(v143, v34, v162);
      (*(v30 + 16))(v146, v29, v31);
      (*(v32 + 16))(v147, v135, v33);
      v37 = sub_100285908(v143, v146, v147);
      v38 = *(v35 + 8);
      v38(v34, v162);
      (*(v32 + 8))(v135, v33);
      (*(v30 + 8))(v29, v31);
      (*(v150 + 16))(v159, v156, v153);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v39 = v37;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v38(v34, v162);
      type metadata accessor for AssetAttachment(0);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      sub_1003A6F60(v159, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v44 = v40;
      v44[1] = v42;
      v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      v131 = v39;
      if (*((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v46 = *(v0 + 1080);
      v47 = *(v0 + 888);
      v48 = *(v0 + 880);
      v49 = *(v0 + 792);
      v50 = *(v0 + 784);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v51 = *(v49 + 56);
      v51(v47, 1, 1, v50);
      v161 = v51;
      v51(v48, 1, 1, v50);
      v52 = *(*v46 + 16);
      v132 = v52;
      if (v52)
      {
        v53 = *(v0 + 824);
        v54 = *(v0 + 792);
        v55 = *v46 + ((*(v53 + 80) + 32) & ~*(v53 + 80));
        v133 = (v54 + 8);
        v134 = (v54 + 16);
        v136 = v54;
        v154 = (v54 + 32);
        v157 = (v54 + 48);
        v139 = v55;
        v142 = _swiftEmptyArrayStorage;
        v151 = *(v53 + 72);
        v56 = v55;
        do
        {
          v57 = *(v0 + 840);
          sub_1003A6EF8(v56, v57, type metadata accessor for Suggestion.Workout);
          v58 = type metadata accessor for Suggestion.Workout.Details(0);
          v148 = *(*(v58 - 8) + 48);
          v163 = v58;
          if (v148(v57, 1, v58) == 1)
          {
            v161(*(v0 + 864), 1, 1, *(v0 + 784));
          }

          else
          {
            v59 = *(v0 + 776);
            sub_1000082B4(*(v0 + 840), v59, &qword_100AE0260, &qword_100951D00);
            v60 = *(v58 + 32);
            v61 = type metadata accessor for DateInterval();
            v62 = *(v61 - 8);
            v63 = (*(v62 + 48))(v59 + v60, 1, v61);
            v64 = *(v0 + 864);
            if (v63 == 1)
            {
              v161(*(v0 + 864), 1, 1, *(v0 + 784));
            }

            else
            {
              v65 = *(v0 + 808);
              v66 = *(v0 + 784);
              v67 = v59 + v60;
              v68 = *(v0 + 760);
              sub_1000082B4(v67, v68, &qword_100AD3750, &unk_1009421B0);
              DateInterval.start.getter();
              (*v134)(v64, v65, v66);
              v161(v64, 0, 1, v66);
              (*v133)(v65, v66);
              (*(v62 + 8))(v68, v61);
            }

            sub_1003A3E80(*(v0 + 776), type metadata accessor for Suggestion.Workout.Details);
            v55 = v139;
            v58 = v163;
          }

          v69 = *(v0 + 872);
          v70 = *(v0 + 840);
          v71 = *(v0 + 784);
          sub_100021CEC(*(v0 + 864), v69, &unk_100AD4790, &unk_10093B4E0);
          sub_1003A3E80(v70, type metadata accessor for Suggestion.Workout);
          v144 = *v157;
          if ((*v157)(v69, 1, v71) == 1)
          {
            sub_100004F84(*(v0 + 872), &unk_100AD4790, &unk_10093B4E0);
          }

          else
          {
            v72 = *v154;
            (*v154)(*(v0 + 816), *(v0 + 872), *(v0 + 784));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v142 = sub_1000881C0(0, *(v142 + 2) + 1, 1, v142);
            }

            v74 = *(v142 + 2);
            v73 = *(v142 + 3);
            if (v74 >= v73 >> 1)
            {
              v142 = sub_1000881C0((v73 > 1), v74 + 1, 1, v142);
            }

            v75 = *(v0 + 816);
            v76 = *(v0 + 784);
            *(v142 + 2) = v74 + 1;
            v72(v142 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v74, v75, v76);
            v58 = v163;
          }

          v56 += v151;
          --v52;
        }

        while (v52);
        v77 = _swiftEmptyArrayStorage;
        v78 = v132;
        do
        {
          v79 = *(v0 + 832);
          sub_1003A6EF8(v55, v79, type metadata accessor for Suggestion.Workout);
          if (v148(v79, 1, v58) == 1)
          {
            v161(*(v0 + 848), 1, 1, *(v0 + 784));
          }

          else
          {
            v138 = v77;
            v140 = v55;
            v80 = *(v0 + 768);
            sub_1000082B4(*(v0 + 832), v80, &qword_100AE0260, &qword_100951D00);
            v81 = *(v58 + 32);
            v82 = type metadata accessor for DateInterval();
            v83 = *(v82 - 8);
            v84 = (*(v83 + 48))(v80 + v81, 1, v82);
            v85 = *(v0 + 848);
            if (v84 == 1)
            {
              v161(*(v0 + 848), 1, 1, *(v0 + 784));
            }

            else
            {
              v86 = *(v0 + 808);
              v87 = *(v0 + 784);
              v88 = *(v0 + 760);
              sub_1000082B4(v80 + v81, v88, &qword_100AD3750, &unk_1009421B0);
              DateInterval.end.getter();
              (*v134)(v85, v86, v87);
              v161(v85, 0, 1, v87);
              (*v133)(v86, v87);
              (*(v83 + 8))(v88, v82);
            }

            sub_1003A3E80(*(v0 + 768), type metadata accessor for Suggestion.Workout.Details);
            v77 = v138;
            v55 = v140;
            v58 = v163;
          }

          v89 = *(v0 + 856);
          v90 = *(v0 + 832);
          v91 = *(v0 + 784);
          sub_100021CEC(*(v0 + 848), v89, &unk_100AD4790, &unk_10093B4E0);
          sub_1003A3E80(v90, type metadata accessor for Suggestion.Workout);
          if (v144(v89, 1, v91) == 1)
          {
            sub_100004F84(*(v0 + 856), &unk_100AD4790, &unk_10093B4E0);
          }

          else
          {
            v92 = *v154;
            (*v154)(*(v0 + 800), *(v0 + 856), *(v0 + 784));
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v77 = sub_1000881C0(0, *(v77 + 2) + 1, 1, v77);
            }

            v94 = *(v77 + 2);
            v93 = *(v77 + 3);
            if (v94 >= v93 >> 1)
            {
              v77 = sub_1000881C0((v93 > 1), v94 + 1, 1, v77);
            }

            v95 = *(v0 + 800);
            v96 = *(v0 + 784);
            *(v77 + 2) = v94 + 1;
            v92(v77 + ((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v94, v95, v96);
            v58 = v163;
          }

          v55 += v151;
          --v78;
        }

        while (v78);
      }

      v97 = *(v0 + 1080);
      v98 = *(v0 + 1064);
      v99 = *(v97 + *(v98 + 28));
      if (v99)
      {
        v100 = objc_opt_self();
        v101 = [v100 countUnit];
        v102 = [v100 minuteUnit];
        v103 = [v101 unitDividedByUnit:v102];

        [v99 doubleValueForUnit:v103];
        v97 = *(v0 + 1080);
        v98 = *(v0 + 1064);
      }

      v104 = *(v97 + *(v98 + 24));
      if (v104)
      {
        v137 = *(v0 + 752);
        v141 = *(v0 + 728);
        v158 = *(v0 + 720);
        v160 = *(v0 + 744);
        v152 = *(v0 + 712);
        v155 = *(v0 + 736);
        v105 = *(v0 + 704);
        v106 = *(v0 + 696);
        v149 = *(v0 + 688);
        v107 = *(v0 + 680);
        v108 = *(v0 + 672);
        v145 = *(v0 + 664);
        v109 = *(v0 + 656);
        v110 = [objc_opt_self() kilocalorieUnit];
        [v104 doubleValueForUnit:v110];

        sub_10038D8C8();
        sub_1000065A8(0, &qword_100AD8D60, NSUnitEnergy_ptr);
        static Measurement<>.FormatStyle.UnitWidth.narrow.getter();
        static MeasurementFormatUnitUsage<>.workout.getter();
        v111 = sub_1000F24EC(&qword_100AD8D68, &qword_100956920);
        (*(*(v111 - 8) + 56))(v109, 1, 1, v111);
        static FormatStyle.measurement<A>(width:usage:numberFormatStyle:)();
        sub_100004F84(v109, &qword_100AD8D38, &unk_100948460);
        (*(v108 + 8))(v107, v145);
        (*(v106 + 8))(v105, v149);
        sub_1003A9580(&qword_100AD8D70, &qword_100AD8D50, &unk_100962960);
        Measurement<>.formatted<A>(_:)();
        (*(v158 + 8))(v141, v152);
        (*(v160 + 8))(v137, v155);
      }

      v112 = *(v0 + 904);
      v113 = *(v0 + 640);
      WorkoutIconAssetMetadata.init(type:duration:startTime:endTime:mindfulnessHeartRate:caloriesBurnt:calories:distance:numberOfWorkouts:totalGroupWorkoutDuration:groupWorkoutStartDates:groupWorkoutEndDates:averageGroupHeartRateBPM:totalGroupWorkoutCaloriesBurnt:totalGroupWorkoutCaloriesBurntWithUnit:)();
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0DD0, &unk_100960750);
      v114 = swift_allocObject();
      v115 = *(*v114 + 104);
      v116 = sub_1000F24EC(&qword_100AE4280, &unk_100952430);
      (*(*(v116 - 8) + 56))(v114 + v115, 1, 1, v116);
      *(v114 + *(*v114 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v112, v114 + *(*v114 + 120), &qword_100ADA888, &unk_100952410);
      *&v131[OBJC_IVAR____TtC7Journal16WorkoutIconAsset_metadata] = v114;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v113 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v113 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v117 = *(v0 + 1080);
      v118 = *(v0 + 1048);
      v119 = *(v0 + 1040);
      v120 = *(v0 + 1032);
      v121 = *(v0 + 640);
      v122 = *(v0 + 632);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      (*(v119 + 8))(v118, v120);
      sub_1003A3E80(v117, type metadata accessor for Suggestion.WorkoutGroup);
      swift_beginAccess();
      *(v0 + 336) = v121[1];
      v123 = v121[2];
      v124 = v121[3];
      v125 = v121[5];
      *(v0 + 384) = v121[4];
      *(v0 + 400) = v125;
      *(v0 + 352) = v123;
      *(v0 + 368) = v124;
      v126 = v121[5];
      v128 = v121[2];
      v127 = v121[3];
      v122[3] = v121[4];
      v122[4] = v126;
      v122[1] = v128;
      v122[2] = v127;
      *v122 = v121[1];
      v11 = v0 + 336;
      v12 = v0 + 416;
    }
  }

  sub_1003A714C(v11, v12);

  v129 = *(v0 + 8);

  return v129();
}

uint64_t sub_1003919E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100391C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[83] = a6;
  v6[82] = a5;
  v6[81] = a4;
  v6[80] = a1;
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v6[84] = swift_task_alloc();
  v6[85] = sub_1000F24EC(&qword_100AD64C0, &unk_100962D50);
  v6[86] = swift_task_alloc();
  v6[87] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[88] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[89] = v7;
  v6[90] = *(v7 - 8);
  v6[91] = swift_task_alloc();
  v6[92] = swift_task_alloc();
  v6[93] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[94] = v8;
  v6[95] = *(v8 - 8);
  v6[96] = swift_task_alloc();
  v6[97] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[98] = v9;
  v6[99] = *(v9 - 8);
  v6[100] = swift_task_alloc();
  v6[101] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0228, &qword_1009523F0);
  v10 = swift_task_alloc();
  v6[102] = v10;
  v11 = type metadata accessor for Suggestion.StateOfMind(0);
  v6[103] = v11;
  v6[104] = *(v11 - 8);
  v6[105] = swift_task_alloc();
  v12 = swift_task_alloc();
  v6[106] = v12;
  *v12 = v6;
  v12[1] = sub_100391F48;

  return sub_10037B31C(v10, 0, 0);
}

uint64_t sub_100391F48()
{
  *(*v1 + 856) = v0;

  if (v0)
  {
    v2 = sub_100393184;
  }

  else
  {
    v2 = sub_10039205C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10039205C()
{
  v1 = *(v0 + 816);
  if ((*(*(v0 + 832) + 48))(v1, 1, *(v0 + 824)) == 1)
  {
    v2 = *(v0 + 656);
    v3 = *(v0 + 640);
    sub_100004F84(v1, &qword_100AE0228, &qword_1009523F0);
    swift_beginAccess();
    *(v0 + 16) = v2[1];
    v4 = v2[2];
    v5 = v2[3];
    v6 = v2[5];
    *(v0 + 64) = v2[4];
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = v2[5];
    v9 = v2[2];
    v8 = v2[3];
    v3[3] = v2[4];
    v3[4] = v7;
    v3[1] = v9;
    v3[2] = v8;
    *v3 = v2[1];
    sub_1003A714C(v0 + 16, v0 + 96);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    sub_1003A6F60(v1, *(v0 + 840), type metadata accessor for Suggestion.StateOfMind);
    v12 = swift_task_alloc();
    *(v0 + 864) = v12;
    *v12 = v0;
    v12[1] = sub_1003922B8;

    return sub_10037A6DC(0, 0);
  }
}

uint64_t sub_1003922B8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 872) = a1;
  *(v3 + 880) = v1;

  if (v1)
  {
    v4 = sub_100393298;
  }

  else
  {
    v4 = sub_1003923D0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003923D0()
{
  v1 = v0;
  v2 = v0[109];
  if (v2)
  {
    v3 = [v2 imageAsset];
    if (v3)
    {
      v4 = v3;
      v5 = objc_opt_self();
      v6 = [v5 traitCollectionWithUserInterfaceStyle:1];
      v7 = [v4 imageWithTraitCollection:v6];

      if (v7)
      {
        v8 = [v2 imageAsset];
        if (v8)
        {
          v9 = v8;
          v10 = [v5 traitCollectionWithUserInterfaceStyle:2];
          v11 = [v9 imageWithTraitCollection:v10];

          if (v11)
          {
            v122 = v11;
            v125 = v2;
            v128 = v1[101];
            v12 = v1[99];
            v13 = v1[98];
            v14 = v1[97];
            v119 = v14;
            v120 = v1[100];
            v121 = v1[96];
            v130 = v1;
            v15 = v1[95];
            v16 = v130[94];
            v118 = v16;
            v17 = v130[93];
            v18 = v130[92];
            v19 = v130[90];
            v20 = v130[89];
            v126 = v130[88];
            (*(v12 + 104))();
            (*(v15 + 104))(v14, enum case for AssetSource.suggestionSheet(_:), v16);
            UUID.init()();
            v21 = objc_allocWithZone(type metadata accessor for StateOfMindAsset(0));
            *&v21[OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata] = 0;
            (*(v19 + 16))(v18, v17, v20);
            (*(v12 + 16))(v120, v128, v13);
            (*(v15 + 16))(v121, v14, v16);
            v22 = sub_100285908(v18, v120, v121);
            v23 = *(v19 + 8);
            v23(v17, v20);
            (*(v15 + 8))(v119, v118);
            v1 = v130;
            (*(v12 + 8))(v128, v13);
            *v126 = v7;
            swift_storeEnumTagMultiPayload();
            v24 = v22;
            v124 = v7;
            UUID.init()();
            v25 = UUID.uuidString.getter();
            v27 = v26;
            v129 = v23;
            v23(v17, v20);
            type metadata accessor for AssetAttachment(0);
            v28 = swift_allocObject();
            *(v28 + 16) = 0;
            sub_1003A6F60(v126, v28 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v29 = (v28 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v29 = v25;
            v29[1] = v27;
            v30 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*&v24[v30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v24[v30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v31 = v130[93];
            v32 = v130[89];
            v33 = v130[88];
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            *v33 = v122;
            swift_storeEnumTagMultiPayload();
            v123 = v122;
            UUID.init()();
            v34 = UUID.uuidString.getter();
            v36 = v35;
            v129(v31, v32);
            v37 = swift_allocObject();
            *(v37 + 16) = 1;
            sub_1003A6F60(v33, v37 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
            v38 = (v37 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
            *v38 = v34;
            v38[1] = v36;
            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            v39 = v24;
            if (*((*&v24[v30] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v24[v30] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v40 = v130[105];
            v41 = v130[91];
            v42 = v130[89];
            v43 = v130[84];
            v127 = v39;
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();
            v44 = *v40;
            v45 = [*v40 UUID];
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            UUID.uuidString.getter();
            v129(v41, v42);
            v46 = [v44 startDate];
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v47 = type metadata accessor for Date();
            (*(*(v47 - 8) + 56))(v43, 0, 1, v47);
            [v44 reflectiveInterval];
            v48 = HKStateOfMind.labels.getter();
            v49 = *(v48 + 16);
            if (v49)
            {
              v50 = v48;
              sub_100199BD4(0, v49, 0);
              v51 = v50;
              v52 = _swiftEmptyArrayStorage;
              v53 = _swiftEmptyArrayStorage[2];
              v54 = 32;
              do
              {
                v55 = *(v51 + v54);
                v131 = v52;
                v56 = *(v52 + 3);
                if (*&v53 >= v56 >> 1)
                {
                  sub_100199BD4((v56 > 1), *&v53 + 1, 1);
                  v51 = v50;
                  v52 = v131;
                }

                *(v52 + 2) = *&v53 + 1;
                v52[*&v53 + 4] = v55;
                v54 += 8;
                ++*&v53;
                --v49;
              }

              while (v49);

              v1 = v130;
            }

            else
            {
            }

            v73 = HKStateOfMind.associations.getter();
            v74 = *(v73 + 16);
            if (v74)
            {
              v75 = v73;
              sub_100199BD4(0, v74, 0);
              v76 = v75;
              v77 = _swiftEmptyArrayStorage;
              v78 = _swiftEmptyArrayStorage[2];
              v79 = 32;
              do
              {
                v80 = *(v76 + v79);
                v132 = v77;
                v81 = *(v77 + 3);
                if (*&v78 >= v81 >> 1)
                {
                  sub_100199BD4((v81 > 1), *&v78 + 1, 1);
                  v76 = v75;
                  v77 = v132;
                }

                *(v77 + 2) = *&v78 + 1;
                v77[*&v78 + 4] = v80;
                v79 += 8;
                ++*&v78;
                --v74;
              }

              while (v74);
            }

            v82 = v1[105];
            v83 = v1[103];
            [v44 valenceClassification];
            v84 = *(v82 + *(v83 + 24));
            if (v84)
            {
              v85 = *(v84 + 16);
              if (v85)
              {
                sub_100199BF4(0, v85, 0);
                sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
                v86 = v84 + 32;
                do
                {
                  swift_retain_n();
                  v87 = UIColor.init(_:)();
                  v88 = NSCoding<>.toData.getter();
                  v90 = v89;

                  v92 = _swiftEmptyArrayStorage[2];
                  v91 = _swiftEmptyArrayStorage[3];
                  if (*&v92 >= *&v91 >> 1)
                  {
                    sub_100199BF4((*&v91 > 1uLL), *&v92 + 1, 1);
                  }

                  *&_swiftEmptyArrayStorage[2] = *&v92 + 1;
                  v93 = &_swiftEmptyArrayStorage[2 * *&v92];
                  *(v93 + 4) = v88;
                  *(v93 + 5) = v90;
                  v86 += 16;
                  --v85;
                }

                while (v85);
                v1 = v130;
              }
            }

            v94 = *(v1[105] + *(v1[103] + 28));
            if (v94)
            {
              v95 = *(v94 + 16);
              if (v95)
              {
                sub_100199BF4(0, v95, 0);
                sub_1000065A8(0, &qword_100AD4C70, UIColor_ptr);
                v96 = v94 + 32;
                do
                {
                  swift_retain_n();
                  v97 = UIColor.init(_:)();
                  v98 = NSCoding<>.toData.getter();
                  v100 = v99;

                  v102 = _swiftEmptyArrayStorage[2];
                  v101 = _swiftEmptyArrayStorage[3];
                  if (*&v102 >= *&v101 >> 1)
                  {
                    sub_100199BF4((*&v101 > 1uLL), *&v102 + 1, 1);
                  }

                  *&_swiftEmptyArrayStorage[2] = *&v102 + 1;
                  v103 = &_swiftEmptyArrayStorage[2 * *&v102];
                  *(v103 + 4) = v98;
                  *(v103 + 5) = v100;
                  v96 += 16;
                  --v95;
                }

                while (v95);
                v1 = v130;
              }
            }

            v104 = v1[86];
            v105 = v1[82];
            StateOfMindAssetMetadata.init(stateOfMindIdentifier:date:reflectiveInterval:labels:domains:valenceClassification:backgroundColorsLight:backgroundColorsDark:)();
            swift_storeEnumTagMultiPayload();
            sub_1000F24EC(&qword_100AD64C8, &qword_100945190);
            v106 = swift_allocObject();
            v107 = *(*v106 + 104);
            v108 = sub_1000F24EC(&qword_100AE6680, &qword_1009400E0);
            (*(*(v108 - 8) + 56))(v106 + v107, 1, 1, v108);
            *(v106 + *(*v106 + 112)) = xmmword_100941EE0;
            sub_100021CEC(v104, v106 + *(*v106 + 120), &qword_100AD64C0, &unk_100962D50);
            *&v127[OBJC_IVAR____TtC7Journal16StateOfMindAsset_metadata] = v106;

            swift_beginAccess();
            specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
            if (*((*(v105 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v105 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            v109 = v1[105];
            v110 = v1[82];
            v111 = v1[80];
            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            swift_endAccess();

            sub_1003A3E80(v109, type metadata accessor for Suggestion.StateOfMind);
            swift_beginAccess();
            *(v1 + 21) = v110[1];
            v112 = v110[2];
            v113 = v110[3];
            v114 = v110[5];
            *(v1 + 24) = v110[4];
            *(v1 + 25) = v114;
            *(v1 + 22) = v112;
            *(v1 + 23) = v113;
            v115 = v110[5];
            v117 = v110[2];
            v116 = v110[3];
            v111[3] = v110[4];
            v111[4] = v115;
            v111[1] = v117;
            v111[2] = v116;
            *v111 = v110[1];
            v69 = (v1 + 42);
            v70 = (v1 + 52);
            goto LABEL_21;
          }
        }
      }
    }
  }

  type metadata accessor for SuggestionImportSession(0);
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&_mh_execute_header, v57, v58, "Failed to parse framework asset into state of mind asset, image content missing", v59, 2u);
  }

  v60 = v1[105];
  v61 = v1[82];
  v62 = v1[80];

  sub_1003A3E80(v60, type metadata accessor for Suggestion.StateOfMind);
  swift_beginAccess();
  *(v1 + 11) = v61[1];
  v63 = v61[2];
  v64 = v61[3];
  v65 = v61[5];
  *(v1 + 14) = v61[4];
  *(v1 + 15) = v65;
  *(v1 + 12) = v63;
  *(v1 + 13) = v64;
  v66 = v61[5];
  v68 = v61[2];
  v67 = v61[3];
  v62[3] = v61[4];
  v62[4] = v66;
  v62[1] = v68;
  v62[2] = v67;
  *v62 = v61[1];
  v69 = (v1 + 22);
  v70 = (v1 + 32);
LABEL_21:
  sub_1003A714C(v69, v70);

  v71 = v1[1];

  return v71();
}

uint64_t sub_100393184()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100393298()
{
  sub_1003A3E80(*(v0 + 840), type metadata accessor for Suggestion.StateOfMind);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003933C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[79] = a6;
  v6[78] = a5;
  v6[77] = a1;
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v6[80] = swift_task_alloc();
  v6[81] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD8D78, &qword_100948490);
  v6[82] = swift_task_alloc();
  v6[83] = sub_1000F24EC(&qword_100ADA970, &qword_10094A610);
  v6[84] = swift_task_alloc();
  v6[85] = type metadata accessor for AssetAttachment.AssetType(0);
  v6[86] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v6[87] = v7;
  v6[88] = *(v7 - 8);
  v6[89] = swift_task_alloc();
  v6[90] = swift_task_alloc();
  v8 = type metadata accessor for AssetSource();
  v6[91] = v8;
  v6[92] = *(v8 - 8);
  v6[93] = swift_task_alloc();
  v6[94] = swift_task_alloc();
  v9 = type metadata accessor for AssetType();
  v6[95] = v9;
  v6[96] = *(v9 - 8);
  v6[97] = swift_task_alloc();
  v6[98] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD6DD0, &qword_1009437C0);
  v6[99] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v6[100] = v10;
  v6[101] = *(v10 - 8);
  v6[102] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0178, &qword_100951C20);
  v11 = swift_task_alloc();
  v6[103] = v11;
  v12 = type metadata accessor for Suggestion.EventPoster(0);
  v6[104] = v12;
  v6[105] = *(v12 - 8);
  v6[106] = swift_task_alloc();
  v13 = swift_task_alloc();
  v6[107] = v13;
  *v13 = v6;
  v13[1] = sub_1003937D8;

  return sub_10037BA10(v11, 0, 0);
}

uint64_t sub_1003937D8()
{
  *(*v1 + 864) = v0;

  if (v0)
  {
    v2 = sub_1003942A4;
  }

  else
  {
    v2 = sub_1003938EC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003938EC()
{
  v1 = *(v0 + 832);
  v2 = *(v0 + 824);
  if ((*(*(v0 + 840) + 48))(v2, 1, v1) == 1)
  {
    v3 = *(v0 + 624);
    v4 = *(v0 + 616);
    sub_100004F84(v2, &qword_100AE0178, &qword_100951C20);
    swift_beginAccess();
    *(v0 + 16) = v3[1];
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[5];
    *(v0 + 64) = v3[4];
    *(v0 + 80) = v7;
    *(v0 + 32) = v5;
    *(v0 + 48) = v6;
    v8 = v3[5];
    v10 = v3[2];
    v9 = v3[3];
    v4[3] = v3[4];
    v4[4] = v8;
    v4[1] = v10;
    v4[2] = v9;
    *v4 = v3[1];
    v11 = v0 + 16;
    v12 = v0 + 96;
  }

  else
  {
    v13 = *(v0 + 848);
    v14 = *(v0 + 808);
    v15 = *(v0 + 800);
    v16 = *(v0 + 792);
    sub_1003A6F60(v2, v13, type metadata accessor for Suggestion.EventPoster);
    sub_1000082B4(v13 + *(v1 + 20), v16, &unk_100AD6DD0, &qword_1009437C0);
    if ((*(v14 + 48))(v16, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 792), &unk_100AD6DD0, &qword_1009437C0);
      type metadata accessor for SuggestionImportSession(0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&_mh_execute_header, v17, v18, "Failed to parse framework asset into event poster asset, content missing icon", v19, 2u);
      }

      v20 = *(v0 + 848);
      v21 = *(v0 + 624);
      v22 = *(v0 + 616);

      sub_1003A3E80(v20, type metadata accessor for Suggestion.EventPoster);
      swift_beginAccess();
      *(v0 + 176) = v21[1];
      v23 = v21[2];
      v24 = v21[3];
      v25 = v21[5];
      *(v0 + 224) = v21[4];
      *(v0 + 240) = v25;
      *(v0 + 192) = v23;
      *(v0 + 208) = v24;
      v26 = v21[5];
      v28 = v21[2];
      v27 = v21[3];
      v22[3] = v21[4];
      v22[4] = v26;
      v22[1] = v28;
      v22[2] = v27;
      *v22 = v21[1];
      v11 = v0 + 176;
      v12 = v0 + 256;
    }

    else
    {
      v75 = *(v0 + 800);
      v76 = *(v0 + 816);
      v29 = *(v0 + 784);
      v30 = *(v0 + 768);
      v31 = *(v0 + 760);
      v73 = *(v0 + 744);
      v74 = *(v0 + 808);
      v32 = *(v0 + 736);
      v33 = *(v0 + 728);
      v34 = *(v0 + 720);
      v71 = *(v0 + 712);
      v72 = *(v0 + 776);
      v35 = *(v0 + 704);
      v70 = *(v0 + 752);
      v81 = *(v0 + 696);
      v78 = *(v0 + 688);
      (*(v74 + 32))();
      (*(v30 + 104))(v29, enum case for AssetType.confetti(_:), v31);
      (*(v32 + 104))(v70, enum case for AssetSource.suggestionSheet(_:), v33);
      UUID.init()();
      v36 = objc_allocWithZone(type metadata accessor for ConfettiAsset(0));
      *&v36[OBJC_IVAR____TtC7Journal13ConfettiAsset_metadata] = 0;
      (*(v35 + 16))(v71, v34, v81);
      (*(v30 + 16))(v72, v29, v31);
      (*(v32 + 16))(v73, v70, v33);
      v37 = sub_100285908(v71, v72, v73);
      v38 = *(v35 + 8);
      v38(v34, v81);
      (*(v32 + 8))(v70, v33);
      (*(v30 + 8))(v29, v31);
      (*(v74 + 16))(v78, v76, v75);
      type metadata accessor for AssetAttachment.AssetType.FilePathType(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v39 = v37;
      UUID.init()();
      v40 = UUID.uuidString.getter();
      v42 = v41;
      v38(v34, v81);
      type metadata accessor for AssetAttachment(0);
      v43 = swift_allocObject();
      *(v43 + 16) = 0;
      sub_1003A6F60(v78, v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, type metadata accessor for AssetAttachment.AssetType);
      v44 = (v43 + OBJC_IVAR____TtC7Journal15AssetAttachment_fileNameID);
      *v44 = v40;
      v44[1] = v42;
      v45 = OBJC_IVAR____TtC7Journal5Asset_sourceAttachments;
      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v39[v45] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v46 = *(v0 + 848);
      v80 = v39;
      v47 = *(v0 + 832);
      v79 = *(v0 + 672);
      v48 = *(v0 + 656);
      v49 = *(v0 + 648);
      v50 = *(v0 + 640);
      v77 = *(v0 + 624);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v51 = type metadata accessor for AttributedString();
      v52 = *(v51 - 8);
      (*(v52 + 16))(v48, v46, v51);
      (*(v52 + 56))(v48, 0, 1, v51);
      sub_1000082B4(v46 + *(v47 + 24), v49, &unk_100AD4790, &unk_10093B4E0);
      sub_1000082B4(v46 + *(v47 + 28), v50, &unk_100AD4790, &unk_10093B4E0);

      ConfettiAssetMetadata.init(isHost:title:placeName:startDate:endDate:)();
      swift_storeEnumTagMultiPayload();
      sub_1000F24EC(&qword_100AE0DA8, &unk_100962DE0);
      v53 = swift_allocObject();
      v54 = *(*v53 + 104);
      v55 = sub_1000F24EC(&qword_100ADA980, &qword_1009523D0);
      (*(*(v55 - 8) + 56))(v53 + v54, 1, 1, v55);
      *(v53 + *(*v53 + 112)) = xmmword_100941EE0;
      sub_100021CEC(v79, v53 + *(*v53 + 120), &qword_100ADA970, &qword_10094A610);
      *&v80[OBJC_IVAR____TtC7Journal13ConfettiAsset_metadata] = v53;

      swift_beginAccess();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(v77 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v77 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v56 = *(v0 + 848);
      v57 = *(v0 + 816);
      v58 = *(v0 + 808);
      v59 = *(v0 + 800);
      v60 = *(v0 + 624);
      v61 = *(v0 + 616);
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      (*(v58 + 8))(v57, v59);
      sub_1003A3E80(v56, type metadata accessor for Suggestion.EventPoster);
      swift_beginAccess();
      *(v0 + 336) = v60[1];
      v62 = v60[2];
      v63 = v60[3];
      v64 = v60[5];
      *(v0 + 384) = v60[4];
      *(v0 + 400) = v64;
      *(v0 + 352) = v62;
      *(v0 + 368) = v63;
      v65 = v60[5];
      v67 = v60[2];
      v66 = v60[3];
      v61[3] = v60[4];
      v61[4] = v65;
      v61[1] = v67;
      v61[2] = v66;
      *v61 = v60[1];
      v11 = v0 + 336;
      v12 = v0 + 416;
    }
  }

  sub_1003A714C(v11, v12);

  v68 = *(v0 + 8);

  return v68();
}

uint64_t sub_1003942A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003943DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1000F24EC(&qword_100AD6600, &qword_1009452D8);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v6 = type metadata accessor for VisitAssetMetadata();
  v4[18] = v6;
  v4[19] = *(v6 - 8);
  v4[20] = swift_task_alloc();
  v7 = *(type metadata accessor for SuggestionImportSession(0) - 8);
  v4[21] = v7;
  v4[22] = *(v7 + 64);
  v4[23] = swift_task_alloc();
  v8 = *(type metadata accessor for Suggestion.Location(0) - 8);
  v4[24] = v8;
  v4[25] = *(v8 + 64);
  v4[26] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v9 = sub_1000F24EC(&qword_100AE0E38, &qword_1009524C8);
  v4[29] = v9;
  v4[30] = *(v9 - 8);
  v4[31] = swift_task_alloc();
  sub_1000F24EC(&qword_100AE0E40, &qword_1009524D0);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return _swift_task_switch(sub_1003946D0, 0, 0);
}

void sub_1003946D0(__n128 a1)
{
  v2 = 0;
  v3 = *(v1 + 240);
  v42 = *(v1 + 192);
  v43 = *(v1 + 232);
  v39 = *(v1 + 168);
  v40 = (v3 + 48);
  v41 = (v3 + 56);
  v38 = *(v1 + 176) + 7;
  v4 = *(*(v1 + 88) + 16);
  for (i = v4; ; v4 = i)
  {
    if (v2 == v4)
    {
      v7 = 1;
      v8 = v4;
    }

    else
    {
      if (v2 >= v4)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        return;
      }

      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        goto LABEL_22;
      }

      v9 = *(v1 + 248);
      v10 = *(v1 + 256);
      v11 = *(v1 + 88) + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v2;
      v12 = *(v43 + 48);
      *v9 = v2;
      sub_1003A6EF8(v11, v9 + v12, type metadata accessor for Suggestion.Location);
      sub_100021CEC(v9, v10, &qword_100AE0E38, &qword_1009524C8);
      v7 = 0;
    }

    v13 = *(v1 + 256);
    v14 = *(v1 + 264);
    v15 = *(v1 + 232);
    (*v41)(v13, v7, 1, v15, a1);
    sub_100021CEC(v13, v14, &qword_100AE0E40, &qword_1009524D0);
    if ((*v40)(v14, 1, v15) == 1)
    {
      break;
    }

    v48 = v8;
    v16 = *(v1 + 264);
    v17 = *(v1 + 224);
    v45 = v17;
    v47 = *(v1 + 216);
    v18 = *(v1 + 208);
    v19 = *(v1 + 184);
    v44 = *(v1 + 200);
    v20 = *(v1 + 96);
    v46 = *v16;
    v21 = *(v43 + 48);
    v22 = type metadata accessor for TaskPriority();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v17, 1, 1, v22);
    v24 = v18;
    sub_1003A6F60(v16 + v21, v18, type metadata accessor for Suggestion.Location);
    sub_1003A6EF8(v20, v19, type metadata accessor for SuggestionImportSession);
    v25 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v26 = (v44 + *(v39 + 80) + v25) & ~*(v39 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    *(v27 + 24) = 0;
    sub_1003A6F60(v24, v27 + v25, type metadata accessor for Suggestion.Location);
    sub_1003A6F60(v19, v27 + v26, type metadata accessor for SuggestionImportSession);
    *(v27 + ((v38 + v26) & 0xFFFFFFFFFFFFFFF8)) = v46;
    sub_1000082B4(v45, v47, &qword_100AD5170, &unk_100943680);
    v28 = (*(v23 + 48))(v47, 1, v22);
    v29 = *(v1 + 216);
    if (v28 == 1)
    {
      sub_100004F84(*(v1 + 216), &qword_100AD5170, &unk_100943680);
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*(v23 + 8))(v29, v22);
    }

    if (*(v27 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v30 = dispatch thunk of Actor.unownedExecutor.getter();
      v32 = v31;
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = 0;
      v32 = 0;
    }

    v33 = **(v1 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = &unk_1009524E0;
    *(v34 + 24) = v27;

    if (v32 | v30)
    {
      v5 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v30;
      *(v1 + 40) = v32;
    }

    else
    {
      v5 = 0;
    }

    v6 = *(v1 + 224);
    *(v1 + 48) = 1;
    *(v1 + 56) = v5;
    *(v1 + 64) = v33;
    swift_task_create();

    sub_100004F84(v6, &qword_100AD5170, &unk_100943680);
    v2 = v48;
  }

  v35 = **(v1 + 80);
  v36 = swift_task_alloc();
  *(v1 + 272) = v36;
  *v36 = v1;
  v36[1] = sub_100394BE8;

  sub_1007AC280(0, 0, v35);
}

void sub_100394BE8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 280) = a1;
  *(v3 + 288) = v1;

  if (v1)
  {
  }

  else
  {

    _swift_task_switch(sub_100394D10, 0, 0);
  }
}

void sub_100394D10()
{
  v30 = v0;
  v1 = *(v0 + 288);
  v29 = *(v0 + 280);

  sub_1003A3D24(&v29);
  if (v1)
  {
  }

  else
  {

    v2 = v29;
    v3 = *(v29 + 2);
    if (v3)
    {
      v4 = *(v0 + 152);
      v5 = *(v0 + 112);
      v25 = *(v0 + 104);
      v29 = _swiftEmptyArrayStorage;
      sub_100199CF8(0, v3, 0);
      v6 = v29;
      v7 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v8 = (v4 + 32);
      v26 = v4;
      v23 = (v4 + 16);
      v24 = *(v5 + 72);
      do
      {
        v27 = *(v0 + 160);
        v28 = v3;
        v10 = *(v0 + 136);
        v9 = *(v0 + 144);
        v11 = v8;
        v12 = *(v0 + 120);
        v13 = *(v0 + 128);
        sub_1000082B4(v7, v10, &qword_100AD6600, &qword_1009452D8);
        sub_1000082B4(v10, v13, &qword_100AD6600, &qword_1009452D8);
        v14 = *(v25 + 48);
        *v12 = *v13;
        v15 = v13 + v14;
        v8 = v11;
        v16 = *v11;
        v16(&v12[v14], v15, v9);
        (*v23)(v27, &v12[v14], v9);
        sub_100004F84(v12, &qword_100AD6600, &qword_1009452D8);
        sub_100004F84(v10, &qword_100AD6600, &qword_1009452D8);
        v29 = v6;
        v18 = *(v6 + 2);
        v17 = *(v6 + 3);
        if (v18 >= v17 >> 1)
        {
          sub_100199CF8((v17 > 1), v18 + 1, 1);
          v6 = v29;
        }

        v19 = *(v0 + 160);
        v20 = *(v0 + 144);
        *(v6 + 2) = v18 + 1;
        v16(v6 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v18, v19, v20);
        v7 += v24;
        --v3;
      }

      while (v28 != 1);

      v21 = v6;
    }

    else
    {

      v21 = _swiftEmptyArrayStorage;
    }

    **(v0 + 72) = v21;

    v22 = *(v0 + 8);

    v22();
  }
}

uint64_t sub_100395038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a1;
  v6[20] = a4;
  sub_1000F24EC(&unk_100AEED30, &qword_100941FB0);
  v6[23] = swift_task_alloc();
  sub_1000F24EC(&qword_100AD3750, &unk_1009421B0);
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v7 = type metadata accessor for VisitAssetMetadata();
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003951D4, 0, 0);
}

uint64_t sub_1003951D4()
{
  v1 = v0[20];
  v2 = type metadata accessor for Suggestion.Location(0);
  v0[33] = v2;
  if (*(v1 + *(v2 + 32) + 8))
  {
    v3 = objc_allocWithZone(MKMapItemIdentifier);
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 initWithIdentifierString:v4];
    v0[34] = v5;

    if (v5)
    {
      v6 = [objc_allocWithZone(MKMapItemRequest) initWithMapItemIdentifier:v5];
      v0[35] = v6;
      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_100395964;
      v7 = swift_continuation_init();
      v0[17] = sub_1000F24EC(&qword_100AE0E48, &unk_1009524F8);
      v0[10] = _NSConcreteStackBlock;
      v0[11] = 1107296256;
      v0[12] = sub_10039677C;
      v0[13] = &unk_100A6A2F8;
      v0[14] = v7;
      [v6 getMapItemWithCompletionHandler:v0 + 10];

      return _swift_continuation_await(v0 + 2);
    }

    v8 = v0[33];
    v1 = v0[20];
  }

  else
  {
    v8 = v2;
  }

  v9 = *(v1 + *(v8 + 40));
  if (v9 == 2 || (v9 & 1) == 0)
  {
    v10 = 4;
  }

  else
  {
    v10 = 1;
  }

  v11 = v0[28];

  v49 = v10;
  sub_1000A0F34(v10);
  sub_1000082B4(v1 + *(v8 + 28), v11, &unk_100AD4790, &unk_10093B4E0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v11, 1, v12) == 1)
  {
    v15 = v0[25];
    v16 = v0[21];
    v17 = v16 + *(type metadata accessor for SuggestionImportSession(0) + 20);
    v18 = type metadata accessor for Suggestion(0);
    sub_1000082B4(v17 + *(v18 + 24), v15, &qword_100AD3750, &unk_1009421B0);
    v19 = type metadata accessor for DateInterval();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v15, 1, v19) == 1)
    {
      sub_100004F84(v0[25], &qword_100AD3750, &unk_1009421B0);
      v21 = 1;
    }

    else
    {
      v24 = v0[25];
      DateInterval.start.getter();
      (*(v20 + 8))(v24, v19);
      v21 = 0;
    }

    v25 = v0[28];
    v23 = *(v13 + 56);
    v23(v0[29], v21, 1, v12);
    if (v14(v25, 1, v12) != 1)
    {
      sub_100004F84(v0[28], &unk_100AD4790, &unk_10093B4E0);
    }
  }

  else
  {
    v22 = v0[29];
    (*(v13 + 32))(v22, v0[28], v12);
    v23 = *(v13 + 56);
    v23(v22, 0, 1, v12);
  }

  v26 = v0[24];
  v27 = v0[21];
  v28 = v27 + *(type metadata accessor for SuggestionImportSession(0) + 20);
  v29 = type metadata accessor for Suggestion(0);
  sub_1000082B4(v28 + *(v29 + 24), v26, &qword_100AD3750, &unk_1009421B0);
  v30 = type metadata accessor for DateInterval();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v26, 1, v30) == 1)
  {
    sub_100004F84(v0[24], &qword_100AD3750, &unk_1009421B0);
    v32 = 1;
  }

  else
  {
    v33 = v0[24];
    DateInterval.end.getter();
    (*(v31 + 8))(v33, v30);
    v32 = 0;
  }

  v34 = v0[26];
  v35 = v0[20];
  v23(v0[27], v32, 1, v12);
  static Date.now.getter();
  v23(v34, 0, 1, v12);
  v36 = *(v35 + 32);
  if (v36)
  {
    [*(v35 + 32) coordinate];
    [v36 coordinate];
    [v36 horizontalAccuracy];
    [v36 horizontalAccuracy];
  }

  v38 = v0[31];
  v37 = v0[32];
  v48 = v0[30];
  v39 = v0[23];
  v47 = v0[22];
  v40 = v0[19];
  v41 = enum case for AssetSource.suggestionSheet(_:);
  v42 = type metadata accessor for AssetSource();
  v43 = *(v42 - 8);
  (*(v43 + 104))(v39, v41, v42);
  (*(v43 + 56))(v39, 0, 1, v42);
  VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
  sub_1003A98C8(v49);
  v44 = *(sub_1000F24EC(&qword_100AD6600, &qword_1009452D8) + 48);
  *v40 = v47;
  (*(v38 + 32))(&v40[v44], v37, v48);

  v45 = v0[1];

  return v45();
}

uint64_t sub_100395964()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_100396154;
  }

  else
  {
    v2 = sub_100395A74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100395A74()
{
  v1 = *(v0 + 280);

  v2 = *(v0 + 264);
  v3 = *(v0 + 160);
  v4 = *(v3 + *(v2 + 40));
  if (v4 == 2 || (v4 & 1) == 0)
  {
    v5 = 4;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v0 + 144);
  v7 = *(v0 + 224);

  v49 = v5;
  sub_1000A0F34(v5);
  sub_1000082B4(v3 + *(v2 + 28), v7, &unk_100AD4790, &unk_10093B4E0);
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) == 1)
  {
    v11 = *(v0 + 200);
    v12 = *(v0 + 168);
    v13 = v12 + *(type metadata accessor for SuggestionImportSession(0) + 20);
    v14 = type metadata accessor for Suggestion(0);
    sub_1000082B4(v13 + *(v14 + 24), v11, &qword_100AD3750, &unk_1009421B0);
    v15 = type metadata accessor for DateInterval();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v11, 1, v15) == 1)
    {
      sub_100004F84(*(v0 + 200), &qword_100AD3750, &unk_1009421B0);
      v17 = 1;
    }

    else
    {
      v20 = *(v0 + 200);
      DateInterval.start.getter();
      (*(v16 + 8))(v20, v15);
      v17 = 0;
    }

    v21 = *(v0 + 224);
    v19 = *(v9 + 56);
    v19(*(v0 + 232), v17, 1, v8);
    if (v10(v21, 1, v8) != 1)
    {
      sub_100004F84(*(v0 + 224), &unk_100AD4790, &unk_10093B4E0);
    }
  }

  else
  {
    v18 = *(v0 + 232);
    (*(v9 + 32))(v18, *(v0 + 224), v8);
    v19 = *(v9 + 56);
    v19(v18, 0, 1, v8);
  }

  v22 = *(v0 + 192);
  v23 = *(v0 + 168);
  v24 = v23 + *(type metadata accessor for SuggestionImportSession(0) + 20);
  v25 = type metadata accessor for Suggestion(0);
  sub_1000082B4(v24 + *(v25 + 24), v22, &qword_100AD3750, &unk_1009421B0);
  v26 = type metadata accessor for DateInterval();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v22, 1, v26) == 1)
  {
    sub_100004F84(*(v0 + 192), &qword_100AD3750, &unk_1009421B0);
    v28 = 1;
  }

  else
  {
    v29 = *(v0 + 192);
    DateInterval.end.getter();
    (*(v27 + 8))(v29, v26);
    v28 = 0;
  }

  v30 = *(v0 + 208);
  v31 = *(v0 + 160);
  v19(*(v0 + 216), v28, 1, v8);
  static Date.now.getter();
  v19(v30, 0, 1, v8);
  v32 = *(v31 + 32);
  if (v32)
  {
    [*(v31 + 32) coordinate];
    [v32 coordinate];
    if (v6)
    {
      goto LABEL_17;
    }
  }

  else if (v6)
  {
LABEL_17:
    v33 = [v6 _styleAttributes];
    if (v33)
    {
      v34 = v33;
      sub_1000065A8(0, &qword_100AD5A80, GEOFeatureStyleAttributes_ptr);
      NSCoding<>.toData.getter();
    }

    sub_1000065A8(0, &qword_100AD5A90, MKMapItem_ptr);
    v35 = v6;
    NSCoding<>.toData.getter();

    v48 = v6;
    if (v32)
    {
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v48 = v6;
  if (v32)
  {
LABEL_23:
    [v32 horizontalAccuracy];
    [v32 horizontalAccuracy];
  }

LABEL_24:
  v37 = *(v0 + 248);
  v36 = *(v0 + 256);
  v47 = *(v0 + 240);
  v38 = *(v0 + 184);
  v46 = *(v0 + 176);
  v39 = *(v0 + 152);
  v40 = enum case for AssetSource.suggestionSheet(_:);
  v41 = type metadata accessor for AssetSource();
  v42 = *(v41 - 8);
  (*(v42 + 104))(v38, v40, v41);
  (*(v42 + 56))(v38, 0, 1, v41);
  VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();

  sub_1003A98C8(v49);
  v43 = *(sub_1000F24EC(&qword_100AD6600, &qword_1009452D8) + 48);
  *v39 = v46;
  (*(v37 + 32))(&v39[v43], v36, v47);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_100396154(uint64_t a1)
{
  v2 = v1[35];
  v3 = v1[34];
  swift_willThrow();

  v4 = v1[33];
  v5 = v1[20];
  v6 = *(v5 + *(v4 + 40));
  if (v6 == 2 || (v6 & 1) == 0)
  {
    v7 = 4;
  }

  else
  {
    v7 = 1;
  }

  v8 = v1[28];

  v46 = v7;
  sub_1000A0F34(v7);
  sub_1000082B4(v5 + *(v4 + 28), v8, &unk_100AD4790, &unk_10093B4E0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v8, 1, v9) == 1)
  {
    v12 = v1[25];
    v13 = v1[21];
    v14 = v13 + *(type metadata accessor for SuggestionImportSession(0) + 20);
    v15 = type metadata accessor for Suggestion(0);
    sub_1000082B4(v14 + *(v15 + 24), v12, &qword_100AD3750, &unk_1009421B0);
    v16 = type metadata accessor for DateInterval();
    v17 = *(v16 - 8);
    if ((*(v17 + 48))(v12, 1, v16) == 1)
    {
      sub_100004F84(v1[25], &qword_100AD3750, &unk_1009421B0);
      v18 = 1;
    }

    else
    {
      v21 = v1[25];
      DateInterval.start.getter();
      (*(v17 + 8))(v21, v16);
      v18 = 0;
    }

    v22 = v1[28];
    v20 = *(v10 + 56);
    v20(v1[29], v18, 1, v9);
    if (v11(v22, 1, v9) != 1)
    {
      sub_100004F84(v1[28], &unk_100AD4790, &unk_10093B4E0);
    }
  }

  else
  {
    v19 = v1[29];
    (*(v10 + 32))(v19, v1[28], v9);
    v20 = *(v10 + 56);
    v20(v19, 0, 1, v9);
  }

  v23 = v1[24];
  v24 = v1[21];
  v25 = v24 + *(type metadata accessor for SuggestionImportSession(0) + 20);
  v26 = type metadata accessor for Suggestion(0);
  sub_1000082B4(v25 + *(v26 + 24), v23, &qword_100AD3750, &unk_1009421B0);
  v27 = type metadata accessor for DateInterval();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v23, 1, v27) == 1)
  {
    sub_100004F84(v1[24], &qword_100AD3750, &unk_1009421B0);
    v29 = 1;
  }

  else
  {
    v30 = v1[24];
    DateInterval.end.getter();
    (*(v28 + 8))(v30, v27);
    v29 = 0;
  }

  v31 = v1[26];
  v32 = v1[20];
  v20(v1[27], v29, 1, v9);
  static Date.now.getter();
  v20(v31, 0, 1, v9);
  v33 = *(v32 + 32);
  if (v33)
  {
    [*(v32 + 32) coordinate];
    [v33 coordinate];
    [v33 horizontalAccuracy];
    [v33 horizontalAccuracy];
  }

  v35 = v1[31];
  v34 = v1[32];
  v45 = v1[30];
  v36 = v1[23];
  v44 = v1[22];
  v37 = v1[19];
  v38 = enum case for AssetSource.suggestionSheet(_:);
  v39 = type metadata accessor for AssetSource();
  v40 = *(v39 - 8);
  (*(v40 + 104))(v36, v38, v39);
  (*(v40 + 56))(v36, 0, 1, v39);
  VisitAssetMetadata.init(placeName:city:typeOfPlace:visitStartTime:visitEndTime:createdDate:latitude:longitude:styleData:mapItemData:isWork:confidenceLevel:horizontalAccuracy:assetSource:)();
  sub_1003A98C8(v46);
  v41 = *(sub_1000F24EC(&qword_100AD6600, &qword_1009452D8) + 48);
  *v37 = v44;
  (*(v35 + 32))(&v37[v41], v34, v45);

  v42 = v1[1];

  return v42();
}

uint64_t sub_10039677C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000CA14((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

double sub_100396854(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD3750, &unk_1009421B0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1000F24EC(&unk_100AD4790, &unk_10093B4E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v26 - v6;
  v8 = sub_1000F24EC(&qword_100AD1420, &unk_10093C080);
  __chkstk_darwin(v8 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for Suggestion(0);
  sub_1000082B4(a1 + v14[7], v10, &qword_100AD1420, &unk_10093C080);
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v10, 1, v15) == 1)
  {
    (*(v16 + 16))(v13, a1 + v14[11], v15);
    if (v17(v10, 1, v15) != 1)
    {
      sub_100004F84(v10, &qword_100AD1420, &unk_10093C080);
    }
  }

  else
  {
    (*(v16 + 32))(v13, v10, v15);
  }

  (*(v16 + 56))(v13, 0, 1, v15);
  v18 = OBJC_IVAR____TtC7Journal5Asset_suggestionId;
  v19 = v26;
  swift_beginAccess();
  sub_100014318(v13, v19 + v18, &qword_100AD1420, &unk_10093C080);
  swift_endAccess();
  sub_1000082B4(a1 + v14[6], v4, &qword_100AD3750, &unk_1009421B0);
  v20 = type metadata accessor for DateInterval();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v4, 1, v20) == 1)
  {
    sub_100004F84(v4, &qword_100AD3750, &unk_1009421B0);
    v22 = 1;
  }

  else
  {
    DateInterval.start.getter();
    (*(v21 + 8))(v4, v20);
    v22 = 0;
  }

  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v7, v22, 1, v23);
  v24 = OBJC_IVAR____TtC7Journal5Asset_suggestionDate;
  swift_beginAccess();
  sub_100014318(v7, v19 + v24, &unk_100AD4790, &unk_10093B4E0);
  swift_endAccess();
  return result;
}

uint64_t sub_100396C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[7] = a5;
  v6[8] = v5;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v8 = type metadata accessor for SuggestionImportSession(0);
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v6[11] = *(v9 + 64);
  v6[12] = swift_task_alloc();
  if (a2)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v6[13] = v10;
  v6[14] = v12;

  return _swift_task_switch(sub_100396D68, v10, v12);
}

uint64_t sub_100396D68(__n128 a1)
{
  if (qword_100AD0A20 != -1)
  {
    swift_once();
  }

  v8 = qword_100B30F68;
  v9 = *v1[8];
  v1[15] = v9;
  v10 = OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
  v11 = *(v9 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = v8 - v12;
    if (!__OFSUB__(v8, v12))
    {
      goto LABEL_5;
    }

LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v108 = _CocoaArrayWrapper.endIndex.getter();
  v13 = v8 - v108;
  if (__OFSUB__(v8, v108))
  {
    goto LABEL_85;
  }

LABEL_5:
  v146 = v13;
  v14 = v1[6];
  v3 = *v14;
  v5 = v14[1];
  v6 = v14[2];
  v7 = v14[3];
  v2 = v14[4];
  v4 = v2 >> 62;
  v147 = *v14;
  v148 = v2;
  v143 = v9;
  v144 = v2 >> 62;
  if (v6 == 1)
  {
    if (v4)
    {
      v35 = _CocoaArrayWrapper.endIndex.getter();
      if (v35)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v35 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_13:
        v140 = v10;
        v36 = _swiftEmptyArrayStorage;
        goto LABEL_16;
      }
    }

    v109 = v1[3];
    v110 = type metadata accessor for SuggestionImportSession.MergeConflict(v35);
    (*(*(v110 - 8) + 56))(v109, 1, 1, v110);
LABEL_119:

    v139 = v1[1];

    return v139();
  }

  v140 = v10;
  v15 = v1[11];
  v16 = v1[12];
  v17 = v1[10];
  v18 = v1[8];
  v1[2] = _swiftEmptyArrayStorage;
  sub_1003A6EF8(v18, v16, type metadata accessor for SuggestionImportSession);
  v19 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  sub_1003A6F60(v16, v21 + v19, type metadata accessor for SuggestionImportSession);
  v22 = v21 + v20;
  *v22 = v3;
  *(v22 + 8) = v5 & 1;
  *(v22 + 16) = v6;
  *(v22 + 24) = v7;
  sub_1003A7574(v3, v5, v6, v7);
  v23 = v7;
  v24 = v6;
  v25 = sub_100049F2C();
  if (v25)
  {
    v26 = v1[7];
    sub_10053256C(v25);
    v28 = v27;

    if ((v26 & 1) == 0)
    {
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&_mh_execute_header, v30, v31, "Encountered contains reflection conflict", v32, 2u);
      }

      v33 = v1[3];

      v34 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
      goto LABEL_119;
    }
  }

  v150 = v24;
  v2 = v23;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_100952280;
  *(v37 + 24) = v21;
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_100952288;
  *(v9 + 24) = v37;

  v38 = sub_1003E5F28(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v38 + 2);
  v39 = *(v38 + 3);
  v36 = v38;
  v3 = v4 + 1;
  if (v4 >= v39 >> 1)
  {
    goto LABEL_90;
  }

  while (1)
  {

    *(v36 + 16) = v3;
    v40 = v36 + 16 * v4;
    *(v40 + 32) = &unk_100952290;
    *(v40 + 40) = v9;
    v9 = v143;
    v4 = v144;
    v2 = v148;
LABEL_16:
    v1[2] = v36;
    v149 = *(v9 + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset);
    v39 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v4)
    {
LABEL_86:
      v36 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v36 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = _swiftEmptyArrayStorage;
    v141 = v7;
    v142 = v5;
    v145 = v6;
    if (!v36)
    {
      v43 = _swiftEmptyArrayStorage;
      goto LABEL_36;
    }

    if (v36 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_90:
    v36 = sub_1003E5F28((v39 > 1), v3, 1, v36);
  }

  v151 = v1[10];
  if ((v2 & 0xC000000000000001) != 0)
  {
    v42 = 0;
    v43 = _swiftEmptyArrayStorage;
    v41 = _swiftEmptyArrayStorage;
    do
    {
      v45 = v1[12];
      v46 = v1[8];
      v47 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      sub_1003A6EF8(v46, v45, type metadata accessor for SuggestionImportSession);
      v48 = (*(v151 + 80) + 24) & ~*(v151 + 80);
      v49 = swift_allocObject();
      *(v49 + 16) = v47;
      sub_1003A6F60(v45, v49 + v48, type metadata accessor for SuggestionImportSession);
      type metadata accessor for MultiPinMapAsset(0);
      if (swift_dynamicCastClass() && v149)
      {
        v50 = swift_allocObject();
        *(v50 + 16) = &unk_100952208;
        *(v50 + 24) = v49;
        v51 = swift_allocObject();
        *(v51 + 16) = &unk_100952240;
        *(v51 + 24) = v50;
        swift_unknownObjectRetain();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1003E5F28(0, *(v43 + 2) + 1, 1, v43);
        }

        v53 = *(v43 + 2);
        v52 = *(v43 + 3);
        if (v53 >= v52 >> 1)
        {
          v43 = sub_1003E5F28((v52 > 1), v53 + 1, 1, v43);
        }

        swift_unknownObjectRelease();

        *(v43 + 2) = v53 + 1;
        v54 = &v43[2 * v53];
        *(v54 + 4) = &unk_100952248;
        *(v54 + 5) = v51;
      }

      else
      {
        v55 = swift_allocObject();
        *(v55 + 16) = &unk_100952208;
        *(v55 + 24) = v49;
        v56 = swift_allocObject();
        *(v56 + 16) = &unk_100952210;
        *(v56 + 24) = v55;
        swift_unknownObjectRetain();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1003E5F4C(0, *(v41 + 2) + 1, 1, v41);
        }

        v58 = *(v41 + 2);
        v57 = *(v41 + 3);
        if (v58 >= v57 >> 1)
        {
          v41 = sub_1003E5F4C((v57 > 1), v58 + 1, 1, v41);
        }

        *(v41 + 2) = v58 + 1;
        v44 = &v41[3 * v58];
        *(v44 + 4) = v47;
        *(v44 + 5) = &unk_100960680;
        *(v44 + 6) = v56;
      }

      ++v42;
    }

    while (v36 != v42);
  }

  else
  {
    v71 = (v2 + 32);
    v43 = _swiftEmptyArrayStorage;
    v41 = _swiftEmptyArrayStorage;
    do
    {
      v73 = v1[12];
      v74 = *v71;
      sub_1003A6EF8(v1[8], v73, type metadata accessor for SuggestionImportSession);
      v75 = (*(v151 + 80) + 24) & ~*(v151 + 80);
      v76 = swift_allocObject();
      *(v76 + 16) = v74;
      sub_1003A6F60(v73, v76 + v75, type metadata accessor for SuggestionImportSession);
      type metadata accessor for MultiPinMapAsset(0);
      if (swift_dynamicCastClass())
      {
        v77 = v149 == 0;
      }

      else
      {
        v77 = 1;
      }

      if (v77)
      {
        v78 = swift_allocObject();
        *(v78 + 16) = &unk_100952250;
        *(v78 + 24) = v76;
        v79 = swift_allocObject();
        *(v79 + 16) = &unk_100952258;
        *(v79 + 24) = v78;
        v80 = v74;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1003E5F4C(0, *(v41 + 2) + 1, 1, v41);
        }

        v82 = *(v41 + 2);
        v81 = *(v41 + 3);
        if (v82 >= v81 >> 1)
        {
          v41 = sub_1003E5F4C((v81 > 1), v82 + 1, 1, v41);
        }

        *(v41 + 2) = v82 + 1;
        v83 = &v41[3 * v82];
        *(v83 + 4) = v80;
        *(v83 + 5) = &unk_100952260;
        *(v83 + 6) = v79;
      }

      else
      {
        v84 = swift_allocObject();
        *(v84 + 16) = &unk_100952250;
        *(v84 + 24) = v76;
        v85 = swift_allocObject();
        *(v85 + 16) = &unk_100952268;
        *(v85 + 24) = v84;
        v86 = v74;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v43 = sub_1003E5F28(0, *(v43 + 2) + 1, 1, v43);
        }

        v89 = *(v43 + 2);
        v88 = *(v43 + 3);
        if (v89 >= v88 >> 1)
        {
          v43 = sub_1003E5F28((v88 > 1), v89 + 1, 1, v43);
        }

        *(v43 + 2) = v89 + 1;
        v72 = &v43[2 * v89];
        *(v72 + 4) = &unk_100952270;
        *(v72 + 5) = v85;
      }

      ++v71;
      --v36;
    }

    while (v36);
  }

LABEL_36:
  v59 = v146;
  if (v146)
  {
    v60 = v142;
    v61 = v145;
    v62 = v147;
    if (v146 >= 1)
    {
      v63 = *(v41 + 2);
      if (v146 < v63)
      {
        if (v144)
        {
          v64 = _CocoaArrayWrapper.endIndex.getter();
          v63 = *(v41 + 2);
        }

        else
        {
          v64 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v90 = (v63 - v146);
        if ((v1[7] & 4) == 0)
        {

          v103 = Logger.logObject.getter();
          v104 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v103, v104))
          {
            v105 = swift_slowAlloc();
            *v105 = 134218240;
            *(v105 + 4) = v64;
            *(v105 + 12) = 2048;
            *(v105 + 14) = v90;
            _os_log_impl(&_mh_execute_header, v103, v104, "Encountered asset overflow conflict: total=%ld overflow=%ld", v105, 0x16u);
          }

          v99 = v1[3];

          *v99 = v64;
          v99[1] = v90;
          v102 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
LABEL_77:
          swift_storeEnumTagMultiPayload();
          (*(*(v102 - 8) + 56))(v99, 0, 1, v102);
LABEL_118:

          goto LABEL_119;
        }

        if (__OFSUB__(v63, v90))
        {
          __break(1u);
        }

        else if ((v146 & 0x8000000000000000) == 0)
        {
          if (v63 >= v146)
          {
            if (v63 == v146)
            {
              goto LABEL_100;
            }

            sub_1006102F0(v41, (v41 + 4), 0, (2 * v146) | 1);
            v107 = v106;
            goto LABEL_99;
          }

          goto LABEL_93;
        }

        __break(1u);
LABEL_93:
        __break(1u);
        goto LABEL_94;
      }
    }
  }

  else
  {
    v65 = *(v41 + 2);
    v60 = v142;
    v61 = v145;
    v62 = v147;
    if (v65 >= 2)
    {

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Encountered assets full conflict.", v68, 2u);
      }

      v69 = v1[3];

      v70 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v70 - 8) + 56))(v69, 0, 1, v70);
      goto LABEL_118;
    }

    if (v65 == 1)
    {
      v90 = *(v41 + 4);
      v59 = *(v143 + v140);
      if (!(v59 >> 62))
      {
        result = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v92 = result - 1;
        if (!__OFSUB__(result, 1))
        {
          goto LABEL_65;
        }

        goto LABEL_96;
      }

LABEL_94:
      result = _CocoaArrayWrapper.endIndex.getter();
      v92 = result - 1;
      if (!__OFSUB__(result, 1))
      {
LABEL_65:
        if ((v59 & 0xC000000000000001) == 0)
        {
          if ((v92 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v92 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v93 = *(v59 + 8 * v92 + 32);
            v94 = v90;
            v95 = v93;
            if ((v1[7] & 2) == 0)
            {
LABEL_69:

              v96 = Logger.logObject.getter();
              v97 = static os_log_type_t.debug.getter();
              if (os_log_type_enabled(v96, v97))
              {
                v98 = swift_slowAlloc();
                *v98 = 0;
                _os_log_impl(&_mh_execute_header, v96, v97, "Encountered single asset overflow conflict", v98, 2u);
              }

              v99 = v1[3];

              v100 = OBJC_IVAR____TtC7Journal5Asset_type;
              v101 = type metadata accessor for AssetType();
              (*(*(v101 - 8) + 16))(v99, &v90[v100], v101);

              v102 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
              goto LABEL_77;
            }

LABEL_98:
            v113 = v1[11];
            v112 = v1[12];
            v152 = v95;
            v114 = v61;
            v115 = v1[10];
            v116 = v1[8];
            sub_1000F24EC(&qword_100AE0D90, &qword_100952220);
            v107 = swift_allocObject();
            *(v107 + 16) = xmmword_100940080;
            sub_1003A6EF8(v116, v112, type metadata accessor for SuggestionImportSession);
            v117 = (*(v115 + 80) + 24) & ~*(v115 + 80);
            v118 = (v113 + v117 + 7) & 0xFFFFFFFFFFFFFFF8;
            v119 = swift_allocObject();
            *(v119 + 16) = v90;
            v120 = v119 + v117;
            v61 = v114;
            sub_1003A6F60(v112, v120, type metadata accessor for SuggestionImportSession);
            *(v119 + v118) = v152;
            v60 = v142;
            v121 = swift_allocObject();
            *(v121 + 16) = &unk_100952230;
            *(v121 + 24) = v119;
            v62 = v147;
            *(v107 + 32) = v90;
            *(v107 + 40) = &unk_100952238;
            *(v107 + 48) = v121;
            v122 = v90;
LABEL_99:

            v41 = v107;
            goto LABEL_100;
          }

          __break(1u);
          return result;
        }

LABEL_97:
        v111 = v90;

        v95 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        if ((v1[7] & 2) == 0)
        {
          goto LABEL_69;
        }

        goto LABEL_98;
      }

LABEL_96:
      __break(1u);
      goto LABEL_97;
    }
  }

LABEL_100:
  v1[16] = v41;
  sub_1003A7574(v62, v60, v61, v141);

  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v123, v124))
  {
    v77 = v61 == 1;
    v125 = v60;
    v126 = v62;
    v127 = !v77;
    v128 = swift_slowAlloc();
    *v128 = 134218496;
    *(v128 + 4) = v127;
    sub_1003A75B8(v126, v125, v145, v141);
    *(v128 + 12) = 2048;
    *(v128 + 14) = v43[2];
    *(v128 + 22) = 2048;
    *(v128 + 24) = v41[2];
    _os_log_impl(&_mh_execute_header, v123, v124, "Asset merge identified: reflections=%ld, locationMerges=%ld assetAdditions=%ld", v128, 0x20u);
  }

  else
  {
    sub_1003A75B8(v62, v60, v61, v141);
  }

  sub_1006ADDA4(v43);
  v129 = *(v41 + 2);
  if (v129)
  {

    sub_10019A060(0, v129, 0);
    v130 = _swiftEmptyArrayStorage[2];
    v131 = 5;
    do
    {
      v132 = _swiftEmptyArrayStorage[3];
      v153 = *&v41[v131];

      if (*&v130 >= *&v132 >> 1)
      {
        sub_10019A060((*&v132 > 1uLL), *&v130 + 1, 1);
      }

      *&_swiftEmptyArrayStorage[2] = *&v130 + 1;
      *&_swiftEmptyArrayStorage[2 * *&v130 + 4] = v153;
      v131 += 3;
      ++*&v130;
      --v129;
    }

    while (v129);
  }

  else
  {
  }

  sub_1006ADDA4(_swiftEmptyArrayStorage);
  v133 = v1[2];
  v1[17] = v133;
  v134 = v133[2];
  v1[18] = v134;
  if (!v134)
  {

    v137 = v1[3];
    v138 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
    (*(*(v138 - 8) + 56))(v137, 1, 1, v138);
    goto LABEL_118;
  }

  v1[19] = 0;
  v135 = v133[4];
  v1[20] = v133[5];

  v154 = (v135 + *v135);
  v136 = swift_task_alloc();
  v1[21] = v136;
  *v136 = v1;
  v136[1] = sub_100398004;

  return v154();
}

uint64_t sub_100398004()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_100398124, v3, v2);
}

uint64_t sub_100398124()
{
  v1 = v0[19];
  v2 = v0[18];

  if (v1 + 1 == v2)
  {

    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_1003982DC;
    v5 = v0[4];
    v4 = v0[5];

    return sub_10062833C(v5, v4);
  }

  else
  {
    v7 = v0[19] + 1;
    v0[19] = v7;
    v8 = v0[17] + 16 * v7;
    v9 = *(v8 + 32);
    v0[20] = *(v8 + 40);

    v11 = (v9 + *v9);
    v10 = swift_task_alloc();
    v0[21] = v10;
    *v10 = v0;
    v10[1] = sub_100398004;

    return v11();
  }
}

uint64_t sub_1003982DC()
{
  v1 = *v0;

  v2 = *(v1 + 112);
  v3 = *(v1 + 104);

  return _swift_task_switch(sub_1003983FC, v3, v2);
}

uint64_t sub_1003983FC()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for SuggestionImportSession.MergeConflict(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1003984AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 80) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for AssetSource();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return _swift_task_switch(sub_100398574, 0, 0);
}

uint64_t sub_100398574()
{
  v1 = *(v0 + 80);
  (*(*(v0 + 56) + 104))(*(v0 + 64), enum case for AssetSource.suggestionSheet(_:), *(v0 + 48));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_100398650;
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 24);

  return sub_100530984(0, 0, v6, v1 & 1, v4, v5, v3);
}

uint64_t sub_100398650()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 48);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1003987A8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for AssetPlacement();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_100398868, 0, 0);
}

uint64_t sub_100398868(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(v1 + 32);
  v5 = **(v1 + 24);
  *v2 = static AssetPlacement.maxGridCount.getter();
  (*(v3 + 104))(v2, enum case for AssetPlacement.grid(_:), v4);
  v6 = swift_task_alloc();
  *(v1 + 56) = v6;
  *v6 = v1;
  v6[1] = sub_100398968;
  v7 = *(v1 + 48);
  v8 = *(v1 + 16);

  return sub_10044C1DC(0, 0, v8, v5, 0, v7, 1);
}

uint64_t sub_100398968()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 32);
  v6 = *v0;

  (*(v2 + 8))(v1, v3);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100398AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = type metadata accessor for AssetPlacement();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v5[10] = v8;
  v5[11] = v10;

  return _swift_task_switch(sub_100398BB8, v8, v10);
}

uint64_t sub_100398BB8(uint64_t a1)
{
  v3 = *(v1 + 64);
  v2 = *(v1 + 72);
  v5 = *(v1 + 48);
  v4 = *(v1 + 56);
  v6 = **(v1 + 40);
  *v2 = static AssetPlacement.maxGridCount.getter();
  (*(v3 + 104))(v2, enum case for AssetPlacement.grid(_:), v4);
  v7 = swift_task_alloc();
  *(v1 + 96) = v7;
  *v7 = v1;
  v7[1] = sub_100398CC0;
  v8 = *(v1 + 72);
  v9 = *(v1 + 24);
  v10 = *(v1 + 32);
  v11 = *(v1 + 16);

  return sub_10044C1DC(v11, v9, v10, v6, v5, v8, 1);
}

uint64_t sub_100398CC0()
{
  v1 = *v0;
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);
  v4 = *(*v0 + 56);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_100398E44, v6, v5);
}

uint64_t sub_100398E44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100398EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  v7 = type metadata accessor for CocoaError.Code();
  v5[27] = v7;
  v5[28] = *(v7 - 8);
  v5[29] = swift_task_alloc();
  v8 = type metadata accessor for CancellationError();
  v5[30] = v8;
  v5[31] = *(v8 - 8);
  v5[32] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v5[33] = v9;
  v5[34] = *(v9 - 8);
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v10 = dispatch thunk of Actor.unownedExecutor.getter();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v5[40] = v10;
  v5[41] = v12;

  return _swift_task_switch(sub_100399090, v10, v12);
}

uint64_t sub_100399090(__n128 a1)
{
  v2 = v1[38];
  v3 = v1[39];
  v4 = v1[33];
  v5 = v1[34];
  v6 = v1[24];
  static Date.now.getter();
  v7 = *(v5 + 16);
  v1[42] = v7;
  v1[43] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v3, v4);
  v8 = [objc_allocWithZone(NSFileCoordinator) init];
  v1[44] = v8;
  v9 = swift_task_alloc();
  v1[45] = v9;
  *(v9 + 16) = v6;
  *(v9 + 24) = v8;
  v10 = swift_task_alloc();
  v1[46] = v10;
  *(v10 + 16) = v8;
  v11 = v8;
  v12 = swift_task_alloc();
  v1[47] = v12;
  v13 = type metadata accessor for Asset(0);
  *v12 = v1;
  v12[1] = sub_100399204;
  v14 = v1[22];
  v15 = v1[23];

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)(v1 + 18, &unk_100952188, v9, sub_1003A7230, v10, v14, v15, v13);
}

uint64_t sub_100399204()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_10039B140;
  }

  else
  {

    v3 = *(v2 + 320);
    v4 = *(v2 + 328);
    v5 = sub_100399328;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100399328(__n128 a1)
{
  v88 = v1;
  v3 = *(v1 + 296);
  v2 = *(v1 + 304);
  v5 = *(v1 + 264);
  v4 = *(v1 + 272);
  v6 = *(v1 + 208);
  v86 = *(v1 + 200);
  v7 = *(v1 + 144);
  *(v1 + 392) = v7;
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v9 = v8;
  *(v1 + 400) = v8;
  v10 = *(v4 + 8);
  *(v1 + 408) = v10;
  *(v1 + 416) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v3, v5);
  v11 = type metadata accessor for SuggestionImportSession(0);
  *(v1 + 424) = v11;
  sub_100396854(v6 + *(v11 + 20));
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100941D50;
  *(inited + 32) = v7;
  v13 = v7;
  sub_10037DFA0(v86, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  static Date.now.getter();
  v10(v2, v5);
  (*(v4 + 32))(v2, v3, v5);
  v14 = *v6;
  *(v1 + 432) = *v6;
  NSManagedObjectContext.performAndWait<A>(_:)();
  if (*(v1 + 552))
  {
    v15 = "ace placeholder asset.";
    LOBYTE(v16) = 1;
    v17 = 0xD000000000000047;
  }

  else
  {
    v18 = *(v1 + 192);
    v19 = v18 + *(type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) + 20);
    v20 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
    swift_beginAccess();
    v21 = *(v14 + v20);
    v22 = swift_task_alloc();
    *(v22 + 16) = v19;

    v16 = sub_100068DDC(sub_100068DC0, v22, v21);
    *(v1 + 440) = v16;

    if (v16)
    {
      v23 = swift_task_alloc();
      *(v1 + 448) = v23;
      *v23 = v1;
      v23[1] = sub_100399D70;
      v25 = *(v1 + 176);
      v24 = *(v1 + 184);

      return sub_100566FD4(v25, v24, v16, v13);
    }

    v15 = "ivate.swiftinterface";
    v17 = 0xD00000000000004FLL;
  }

  v27 = *(v1 + 352);
  v28 = v15 | 0x8000000000000000;
  sub_1003A7240();
  v29 = swift_allocError();
  *v30 = v16;
  *(v30 + 8) = v17;
  *(v30 + 16) = v28;
  swift_willThrow();

  *(v1 + 488) = v9;
  *(v1 + 472) = v29;
  *(v1 + 480) = 0xBFF0000000000000;
  *(v1 + 152) = v29;
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
  if (swift_dynamicCast())
  {
    v32 = *(v1 + 248);
    v31 = *(v1 + 256);
    v33 = *(v1 + 240);

    (*(v32 + 8))(v31, v33);
LABEL_11:

    v38 = *(v1 + 272);
    sub_10008D160(&qword_100AE0D58, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v39 = *(v38 + 8);
LABEL_12:
    v40 = *(v1 + 312);
    v41 = *(v1 + 264);
    v39(*(v1 + 304), v41);
    v39(v40, v41);

    v42 = *(v1 + 8);

    return v42();
  }

  v34 = *(v1 + 224);
  v35 = *(v1 + 232);
  v36 = *(v1 + 216);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_10008D160(&qword_100AE0D48, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v37 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v34 + 8))(v35, v36);
  if (v37)
  {
    goto LABEL_11;
  }

  *(v1 + 160) = v29;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v43 = *(v1 + 56);
    v44 = *(v1 + 64);
    v45 = *(v1 + 72);
  }

  else
  {
    *(v1 + 128) = 0;
    *(v1 + 136) = 0xE000000000000000;
    *(v1 + 168) = v29;
    _print_unlocked<A, B>(_:_:)();
    v43 = 0;
    v44 = *(v1 + 128);
    v45 = *(v1 + 136);
  }

  *(v1 + 496) = v44;
  *(v1 + 504) = v45;
  *(v1 + 554) = v43;
  v46 = *(v1 + 208);
  v47 = *(v1 + 192);
  v48 = *v46;
  *(v1 + 512) = *v46;
  v49 = v47 + *(type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) + 20);
  v50 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v51 = *(v48 + v50);
  v52 = swift_task_alloc();
  *(v52 + 16) = v49;

  v53 = sub_100068DDC(sub_100069618, v52, v51);
  *(v1 + 520) = v53;

  if (!v53)
  {
    (*(v1 + 336))(*(v1 + 280), *(v1 + 312), *(v1 + 264));

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v65 = *(v1 + 496);
      v64 = *(v1 + 504);
      v66 = *(v1 + 480);
      v67 = *(v1 + 488);
      v69 = *(v1 + 272);
      v68 = *(v1 + 280);
      v70 = *(v1 + 264);
      v71 = swift_slowAlloc();
      v87[0] = swift_slowAlloc();
      *v71 = 136315906;

      v72 = sub_100008458(v65, v64, v87);

      *(v71 + 4) = v72;
      *(v71 + 12) = 2080;
      sub_10008D160(&qword_100AE1D80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v75 = v74;
      v76 = v70;
      v77 = *(v69 + 8);
      v77(v68, v76);
      v78 = sub_100008458(v73, v75, v87);

      *(v71 + 14) = v78;
      *(v71 + 22) = 2048;
      *(v71 + 24) = v67;
      *(v71 + 32) = 2048;
      *(v71 + 34) = v66;
      _os_log_impl(&_mh_execute_header, v62, v63, "%s startedAt=%s; fetchDuration=%f seconds; cacheDuration=%f seconds.", v71, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v80 = *(v1 + 272);
      v79 = *(v1 + 280);
      v81 = *(v1 + 264);

      v77 = *(v80 + 8);
      v77(v79, v81);
    }

    v83 = *(v1 + 496);
    v82 = *(v1 + 504);
    v84 = *(v1 + 554);
    sub_1003A7240();
    swift_allocError();
    *v85 = v84;
    *(v85 + 8) = v83;
    *(v85 + 16) = v82;
    swift_willThrow();

    v39 = v77;
    goto LABEL_12;
  }

  sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
  v54 = type metadata accessor for UUID();
  v55 = *(v54 - 8);
  v56 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_100940080;
  (*(v55 + 16))(v57 + v56, v53 + OBJC_IVAR____TtC7Journal5Asset_id, v54);
  v58 = sub_1004960D4(v57);
  *(v1 + 528) = v58;
  swift_setDeallocating();
  (*(v55 + 8))(v57 + v56, v54);
  swift_deallocClassInstance();
  v59 = swift_task_alloc();
  *(v1 + 536) = v59;
  *v59 = v1;
  v59[1] = sub_10039AB30;
  v61 = *(v1 + 176);
  v60 = *(v1 + 184);

  return sub_10056824C(v61, v60, v58);
}

uint64_t sub_100399D70(char a1)
{
  v2 = *v1;
  *(*v1 + 553) = a1;

  v3 = *(v2 + 328);
  v4 = *(v2 + 320);

  return _swift_task_switch(sub_100399E98, v4, v3);
}

uint64_t sub_100399E98(__n128 a1)
{
  v77 = v1;
  v2 = *(v1 + 553);
  v3 = *(v1 + 408);
  v4 = *(v1 + 296);
  v5 = *(v1 + 264);
  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v7 = v6;
  *(v1 + 456) = v6;
  v3(v4, v5);
  if (v2 == 1)
  {

    v8 = swift_task_alloc();
    *(v1 + 464) = v8;
    *v8 = v1;
    v8[1] = sub_10039A73C;
    v10 = *(v1 + 176);
    v9 = *(v1 + 184);

    return sub_10062833C(v10, v9);
  }

  v12 = *(v1 + 440);
  v13 = *(v1 + 392);
  v14 = *(v1 + 352);
  sub_1003A7240();
  v15 = swift_allocError();
  *v16 = 0;
  *(v16 + 8) = 0xD000000000000046;
  *(v16 + 16) = 0x80000001008ED0F0;
  swift_willThrow();

  v17 = *(v1 + 400);
  *(v1 + 480) = v7;
  *(v1 + 488) = v17;
  *(v1 + 472) = v15;
  *(v1 + 152) = v15;
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
  if (swift_dynamicCast())
  {
    v19 = *(v1 + 248);
    v18 = *(v1 + 256);
    v20 = *(v1 + 240);

    (*(v19 + 8))(v18, v20);
LABEL_8:

    v25 = *(v1 + 272);
    sub_10008D160(&qword_100AE0D58, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v26 = *(v25 + 8);
LABEL_9:
    v27 = *(v1 + 312);
    v28 = *(v1 + 264);
    v26(*(v1 + 304), v28);
    v26(v27, v28);

    v29 = *(v1 + 8);

    return v29();
  }

  v22 = *(v1 + 224);
  v21 = *(v1 + 232);
  v23 = *(v1 + 216);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_10008D160(&qword_100AE0D48, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v24 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v22 + 8))(v21, v23);
  if (v24)
  {
    goto LABEL_8;
  }

  *(v1 + 160) = v15;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v30 = *(v1 + 56);
    v31 = *(v1 + 64);
    v32 = *(v1 + 72);
  }

  else
  {
    *(v1 + 128) = 0;
    *(v1 + 136) = 0xE000000000000000;
    *(v1 + 168) = v15;
    _print_unlocked<A, B>(_:_:)();
    v30 = 0;
    v31 = *(v1 + 128);
    v32 = *(v1 + 136);
  }

  *(v1 + 496) = v31;
  *(v1 + 504) = v32;
  *(v1 + 554) = v30;
  v33 = *(v1 + 208);
  v34 = *(v1 + 192);
  v35 = *v33;
  *(v1 + 512) = *v33;
  v36 = v34 + *(type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) + 20);
  v37 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v38 = *(v35 + v37);
  v39 = swift_task_alloc();
  *(v39 + 16) = v36;

  v40 = sub_100068DDC(sub_100069618, v39, v38);
  *(v1 + 520) = v40;

  if (!v40)
  {
    v49 = *(v1 + 336);
    v50 = *(v1 + 312);
    v51 = *(v1 + 280);
    v52 = *(v1 + 264);
    type metadata accessor for SuggestionImportSession(0);
    v49(v51, v50, v52);

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v53, v54))
    {
      v56 = *(v1 + 496);
      v55 = *(v1 + 504);
      v57 = *(v1 + 480);
      v58 = *(v1 + 488);
      v60 = *(v1 + 272);
      v59 = *(v1 + 280);
      v61 = *(v1 + 264);
      v62 = swift_slowAlloc();
      v76[0] = swift_slowAlloc();
      *v62 = 136315906;

      v63 = sub_100008458(v56, v55, v76);

      *(v62 + 4) = v63;
      *(v62 + 12) = 2080;
      sub_10008D160(&qword_100AE1D80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v64 = dispatch thunk of CustomStringConvertible.description.getter();
      v66 = v65;
      v75 = *(v60 + 8);
      v75(v59, v61);
      v67 = sub_100008458(v64, v66, v76);

      *(v62 + 14) = v67;
      *(v62 + 22) = 2048;
      *(v62 + 24) = v58;
      *(v62 + 32) = 2048;
      *(v62 + 34) = v57;
      _os_log_impl(&_mh_execute_header, v53, v54, "%s startedAt=%s; fetchDuration=%f seconds; cacheDuration=%f seconds.", v62, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v69 = *(v1 + 272);
      v68 = *(v1 + 280);
      v70 = *(v1 + 264);

      v75 = *(v69 + 8);
      v75(v68, v70);
    }

    v72 = *(v1 + 496);
    v71 = *(v1 + 504);
    v73 = *(v1 + 554);
    swift_allocError();
    *v74 = v73;
    *(v74 + 8) = v72;
    *(v74 + 16) = v71;
    swift_willThrow();

    v26 = v75;
    goto LABEL_9;
  }

  sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
  v41 = type metadata accessor for UUID();
  v42 = *(v41 - 8);
  v43 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_100940080;
  (*(v42 + 16))(v44 + v43, v40 + OBJC_IVAR____TtC7Journal5Asset_id, v41);
  v45 = sub_1004960D4(v44);
  *(v1 + 528) = v45;
  swift_setDeallocating();
  (*(v42 + 8))(v44 + v43, v41);
  swift_deallocClassInstance();
  v46 = swift_task_alloc();
  *(v1 + 536) = v46;
  *v46 = v1;
  v46[1] = sub_10039AB30;
  v48 = *(v1 + 176);
  v47 = *(v1 + 184);

  return sub_10056824C(v48, v47, v45);
}

uint64_t sub_10039A73C()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return _swift_task_switch(sub_10039A85C, v3, v2);
}

uint64_t sub_10039A85C()
{
  v29 = v0;
  (*(v0 + 336))(*(v0 + 288), *(v0 + 312), *(v0 + 264));
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 456);
    v4 = *(v0 + 408);
    v5 = *(v0 + 400);
    v23 = *(v0 + 352);
    v24 = *(v0 + 440);
    v27 = *(v0 + 312);
    v25 = *(v0 + 304);
    v26 = *(v0 + 392);
    v6 = *(v0 + 288);
    v7 = *(v0 + 264);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 136315650;
    sub_10008D160(&qword_100AE1D80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v4(v6, v7);
    v13 = sub_100008458(v10, v12, &v28);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v5;
    *(v8 + 22) = 2048;
    *(v8 + 24) = v3;
    _os_log_impl(&_mh_execute_header, v1, v2, "Replaced placeholder with fetched photo asset. startedAt=%s; fetchDuration=%f seconds; cacheDuration=%f seconds.", v8, 0x20u);
    sub_10000BA7C(v9);

    v4(v25, v7);
    v4(v27, v7);
  }

  else
  {
    v14 = *(v0 + 440);
    v15 = *(v0 + 408);
    v16 = *(v0 + 392);
    v18 = *(v0 + 304);
    v17 = *(v0 + 312);
    v19 = *(v0 + 288);
    v20 = *(v0 + 264);

    v15(v19, v20);
    v15(v18, v20);
    v15(v17, v20);
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_10039AB30()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[68] = v3;
  *v3 = v2;
  v3[1] = sub_10039ACD4;
  v4 = v1[23];
  v5 = v1[22];

  return sub_10062833C(v5, v4);
}

uint64_t sub_10039ACD4()
{
  v1 = *v0;

  v2 = *(v1 + 328);
  v3 = *(v1 + 320);

  return _swift_task_switch(sub_10039ADF4, v3, v2);
}

uint64_t sub_10039ADF4()
{
  v33 = v0;

  v1 = *(v0 + 336);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  type metadata accessor for SuggestionImportSession(0);
  v1(v3, v2, v4);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 496);
    v7 = *(v0 + 504);
    v9 = *(v0 + 480);
    v10 = *(v0 + 488);
    v12 = *(v0 + 272);
    v11 = *(v0 + 280);
    v13 = *(v0 + 264);
    v14 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v14 = 136315906;

    v15 = sub_100008458(v8, v7, v32);

    *(v14 + 4) = v15;
    *(v14 + 12) = 2080;
    sub_10008D160(&qword_100AE1D80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v17;
    v31 = *(v12 + 8);
    v31(v11, v13);
    v19 = sub_100008458(v16, v18, v32);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v10;
    *(v14 + 32) = 2048;
    *(v14 + 34) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s startedAt=%s; fetchDuration=%f seconds; cacheDuration=%f seconds.", v14, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {
    v21 = *(v0 + 272);
    v20 = *(v0 + 280);
    v22 = *(v0 + 264);

    v31 = *(v21 + 8);
    v31(v20, v22);
  }

  v24 = *(v0 + 496);
  v23 = *(v0 + 504);
  v25 = *(v0 + 554);
  sub_1003A7240();
  swift_allocError();
  *v26 = v25;
  *(v26 + 8) = v24;
  *(v26 + 16) = v23;
  swift_willThrow();

  v27 = *(v0 + 312);
  v28 = *(v0 + 264);
  v31(*(v0 + 304), v28);
  v31(v27, v28);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10039B140()
{
  v69 = v0;
  v1 = *(v0 + 352);

  v2 = *(v0 + 384);
  *(v0 + 152) = v2;
  __asm { FMOV            V0.2D, #-1.0 }

  *(v0 + 480) = _Q0;
  *(v0 + 472) = v2;
  swift_errorRetain();
  sub_1000F24EC(&qword_100AD5BC0, &qword_100943550);
  if (swift_dynamicCast())
  {
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = *(v0 + 240);

    (*(v9 + 8))(v8, v10);
LABEL_4:

    v15 = *(v0 + 272);
    sub_10008D160(&qword_100AE0D58, &type metadata accessor for CancellationError, &protocol conformance descriptor for CancellationError);
    swift_allocError();
    CancellationError.init()();
    swift_willThrow();
    v16 = *(v15 + 8);
LABEL_5:
    v17 = *(v0 + 312);
    v18 = *(v0 + 264);
    v16(*(v0 + 304), v18);
    v16(v17, v18);

    v19 = *(v0 + 8);

    return v19();
  }

  v12 = *(v0 + 224);
  v11 = *(v0 + 232);
  v13 = *(v0 + 216);

  swift_errorRetain();
  static CocoaError.userCancelled.getter();
  sub_10008D160(&qword_100AE0D48, &type metadata accessor for CocoaError.Code, &protocol conformance descriptor for CocoaError.Code);
  v14 = static _ErrorCodeProtocol.~= infix(_:_:)();

  (*(v12 + 8))(v11, v13);
  if (v14)
  {
    goto LABEL_4;
  }

  *(v0 + 160) = v2;
  swift_errorRetain();
  if (swift_dynamicCast())
  {
    v21 = *(v0 + 56);
    v22 = *(v0 + 64);
    v23 = *(v0 + 72);
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 136) = 0xE000000000000000;
    *(v0 + 168) = v2;
    _print_unlocked<A, B>(_:_:)();
    v21 = 0;
    v22 = *(v0 + 128);
    v23 = *(v0 + 136);
  }

  *(v0 + 496) = v22;
  *(v0 + 504) = v23;
  *(v0 + 554) = v21;
  v24 = *(v0 + 208);
  v25 = *(v0 + 192);
  v26 = *v24;
  *(v0 + 512) = *v24;
  v27 = v25 + *(type metadata accessor for SuggestionImportSession.PendingPhotoAsset(0) + 20);
  v28 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v29 = *(v26 + v28);
  v30 = swift_task_alloc();
  *(v30 + 16) = v27;

  v31 = sub_100068DDC(sub_100069618, v30, v29);
  *(v0 + 520) = v31;

  if (!v31)
  {
    v40 = *(v0 + 336);
    v41 = *(v0 + 312);
    v42 = *(v0 + 280);
    v43 = *(v0 + 264);
    type metadata accessor for SuggestionImportSession(0);
    v40(v42, v41, v43);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v47 = *(v0 + 496);
      v46 = *(v0 + 504);
      v48 = *(v0 + 480);
      v49 = *(v0 + 488);
      v51 = *(v0 + 272);
      v50 = *(v0 + 280);
      v52 = *(v0 + 264);
      v53 = swift_slowAlloc();
      v68[0] = swift_slowAlloc();
      *v53 = 136315906;

      v54 = sub_100008458(v47, v46, v68);

      *(v53 + 4) = v54;
      *(v53 + 12) = 2080;
      sub_10008D160(&qword_100AE1D80, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v55 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v56;
      v58 = v52;
      v59 = *(v51 + 8);
      v59(v50, v58);
      v60 = sub_100008458(v55, v57, v68);

      *(v53 + 14) = v60;
      *(v53 + 22) = 2048;
      *(v53 + 24) = v49;
      *(v53 + 32) = 2048;
      *(v53 + 34) = v48;
      _os_log_impl(&_mh_execute_header, v44, v45, "%s startedAt=%s; fetchDuration=%f seconds; cacheDuration=%f seconds.", v53, 0x2Au);
      swift_arrayDestroy();
    }

    else
    {
      v62 = *(v0 + 272);
      v61 = *(v0 + 280);
      v63 = *(v0 + 264);

      v59 = *(v62 + 8);
      v59(v61, v63);
    }

    v65 = *(v0 + 496);
    v64 = *(v0 + 504);
    v66 = *(v0 + 554);
    sub_1003A7240();
    swift_allocError();
    *v67 = v66;
    *(v67 + 8) = v65;
    *(v67 + 16) = v64;
    swift_willThrow();

    v16 = v59;
    goto LABEL_5;
  }

  sub_1000F24EC(&unk_100AE1A40, &qword_10094C3D0);
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  v34 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100940080;
  (*(v33 + 16))(v35 + v34, v31 + OBJC_IVAR____TtC7Journal5Asset_id, v32);
  v36 = sub_1004960D4(v35);
  *(v0 + 528) = v36;
  swift_setDeallocating();
  (*(v33 + 8))(v35 + v34, v32);
  swift_deallocClassInstance();
  v37 = swift_task_alloc();
  *(v0 + 536) = v37;
  *v37 = v0;
  v37[1] = sub_10039AB30;
  v39 = *(v0 + 176);
  v38 = *(v0 + 184);

  return sub_10056824C(v39, v38, v36);
}

uint64_t sub_10039B8D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return _swift_task_switch(sub_10039B8F8, 0, 0);
}

uint64_t sub_10039B8F8()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = type metadata accessor for Asset(0);
  *v2 = v0;
  v2[1] = sub_10039B9F4;
  v4 = *(v0 + 16);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v4, 0, 0, 0xD00000000000001DLL, 0x80000001008ED190, sub_1003A72EC, v1, v3);
}