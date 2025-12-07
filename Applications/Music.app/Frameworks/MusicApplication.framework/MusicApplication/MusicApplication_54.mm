void sub_494F20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v3 = &v81 - v2;
  v4 = sub_AB3430();
  v88 = *(v4 - 8);
  v89 = v4;
  __chkstk_darwin();
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v91 = &v81 - v7;
  type metadata accessor for MetricsEvent.Click(0);
  __chkstk_darwin();
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v11 = &v81 - v10;
  v12 = type metadata accessor for MetricsPageProperties(0);
  v93 = *(v12 - 8);
  __chkstk_darwin();
  v92 = (&v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  *&v14 = __chkstk_darwin().n128_u64[0];
  v90 = &v81 - v15;
  v16 = *&v0[qword_DFE2F0];
  if (!v16)
  {
    return;
  }

  v17 = [v16 results];
  if (!v17)
  {
    goto LABEL_54;
  }

  v18 = v17;
  isa = sub_AB3770().super.isa;
  v20 = [v18 itemAtIndexPath:isa];

  if (!v20)
  {
    return;
  }

  v86 = v9;
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = v21;
  if ([v21 type] == &dword_0 + 3)
  {
    swift_unknownObjectRetain();
    v23 = [v22 name];
    if (v23)
    {
      v24 = v23;
      v25 = sub_AB92A0();
      v27 = v26;
    }

    else
    {
      v25 = 0;
      v27 = 0;
    }

    v42 = *&v1[qword_E09B38];
    if (v42 >= 2)
    {
      v43 = v42;
    }

    else
    {
      v42 = 0;
    }

    v44 = objc_allocWithZone(type metadata accessor for PlaylistsViewController(0));
    v45 = sub_48DDCC(v22, 0, v25, v27, v42);
    v46 = [v1 navigationController];
    if (v46)
    {
      v47 = v46;
      [v46 pushViewController:v45 animated:1];
    }

    else
    {
    }

LABEL_21:

    swift_unknownObjectRelease();
    return;
  }

  v28 = [objc_allocWithZone(MPModelLibraryRequest) init];
  v87 = v20;
  v85 = v1;
  v29 = v28;
  sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
  v30 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v31 = objc_opt_self();
  v32 = v29;
  v33 = [v31 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v30 options:0];
  [v32 setSectionKind:v33];

  v83 = v30;
  [v32 setItemKind:v30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_AF82B0;
  *(v34 + 32) = v22;
  sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
  swift_unknownObjectRetain_n();
  v35 = sub_AB9740().super.isa;

  [v32 setScopedContainers:v35];

  v84 = v32;
  sub_495CA0(v32, 0);
  type metadata accessor for JSContainerDetailComponentController(0);
  swift_unknownObjectRetain();
  v36 = JSContainerDetailComponentController.__allocating_init(modelObject:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(v22, 0, 1, UIScreen.Dimensions.size.getter, 0);
  if (v36)
  {
    v37 = v36;
    v38 = *&v36[OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail];
  }

  else
  {
    v48 = MPModelPropertyPlaylistType;
    swift_unknownObjectRetain();
    if (![v22 hasLoadedValueForKey:v48] || objc_msgSend(v22, "type") != &dword_8 + 1)
    {
      swift_unknownObjectRelease();
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v41 = 0xF000000000000000;
      goto LABEL_25;
    }

    v37 = JSContainerDetailComponentController.__allocating_init(kind:containerStoreItemMetadata:mediaAPIDictionary:isUsingMediaAPI:headerConfigurationHandler:)(0, 0, 0, 0, UIScreen.Dimensions.size.getter, 0, v49);
    v38 = *(v37 + OBJC_IVAR____TtC11MusicJSCore36JSContainerDetailComponentController_containerDetail);
    swift_unknownObjectRelease();
  }

  v39 = JSViewModel.playActivityRecommendationData.getter();
  v41 = v40;
LABEL_25:
  sub_466A4(0, 0xF000000000000000);
  v100[0] = v84;
  v100[1] = v38;
  v100[2] = v22;
  v100[3] = 0;
  v100[5] = 0;
  v100[6] = 0;
  v100[4] = v37;
  v101 = 1;
  v102 = v39;
  v103 = v41;
  v96[0] = v84;
  v96[1] = v38;
  v96[2] = v22;
  v96[3] = 0;
  v96[5] = 0;
  v96[6] = 0;
  v96[4] = v37;
  v97 = 1;
  v98 = v39;
  v99 = v41;
  sub_70EB0(v100, v95);
  sub_70F0C(v96);
  v50 = v85;
  if (*&v85[qword_E09B38] == 1)
  {
    v51 = MPModelObject.bestIdentifier(for:)(0, 2u);
    if (v52)
    {
      v53 = v51;
      v54 = v52;
      v55 = sub_4930CC(v11);
      if ((*(v93 + 48))(v11, 1, v12, v55) == 1)
      {

        sub_12E1C(v11, &unk_DF1330, &qword_AF9120);
        goto LABEL_48;
      }

      v82 = v53;
      v93 = v54;
      v56 = v90;
      sub_28E998(v11, v90, type metadata accessor for MetricsPageProperties);
      v57 = sub_AB31C0();
      v58 = v91;
      (*(*(v57 - 8) + 56))(v91, 1, 1, v57);
      sub_497ED4(v56, v92, type metadata accessor for MetricsPageProperties);
      sub_493000();
      memset(v95, 0, 40);
      sub_AB3420();
      sub_15F84(v95, &v94, &qword_DF2BD0, &unk_AFDC00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF2BD0, &unk_AFDC00);
      v59 = sub_AB3820();
      v60 = swift_dynamicCast();
      (*(*(v59 - 8) + 56))(v3, v60 ^ 1u, 1, v59);
      v61 = sub_2CBD5C(1u, v6, v3);
      (*(v88 + 8))(v6, v89);
      sub_12E1C(v95, &qword_DF2BD0, &unk_AFDC00);
      sub_12E1C(v3, &unk_DE8E20, &qword_AF7990);

      if (v61)
      {
        v62 = v86;
        if (v61 >> 62)
        {
          v63 = sub_ABB060();
          v50 = v85;
          if (v63)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v63 = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));
          v50 = v85;
          if (v63)
          {
LABEL_32:
            v95[0] = _swiftEmptyArrayStorage;
            sub_6D410(0, v63 & ~(v63 >> 63), 0);
            if ((v63 & 0x8000000000000000) == 0)
            {
              v65 = v95[0];
              if ((v61 & 0xC000000000000001) != 0)
              {
                for (i = 0; i != v63; ++i)
                {
                  v67 = *(sub_35FC58(i, v61, v64) + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);

                  swift_unknownObjectRelease();
                  v95[0] = v65;
                  v69 = v65[2];
                  v68 = v65[3];
                  if (v69 >= v68 >> 1)
                  {
                    sub_6D410((v68 > 1), v69 + 1, 1);
                    v65 = v95[0];
                  }

                  v65[2] = v69 + 1;
                  v65[v69 + 4] = v67;
                }
              }

              else
              {
                v70 = (v61 + 32);
                do
                {
                  v71 = *(*v70 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
                  v95[0] = v65;
                  v73 = v65[2];
                  v72 = v65[3];

                  if (v73 >= v72 >> 1)
                  {
                    sub_6D410((v72 > 1), v73 + 1, 1);
                    v65 = v95[0];
                  }

                  v65[2] = v73 + 1;
                  v65[v73 + 4] = v71;
                  ++v70;
                  --v63;
                }

                while (v63);
              }

              v50 = v85;
              v62 = v86;
              v56 = v90;
              v58 = v91;
              goto LABEL_47;
            }

            __break(1u);
LABEL_54:
            __break(1u);
            return;
          }
        }

        v65 = _swiftEmptyArrayStorage;
      }

      else
      {
        v65 = 0;
        v50 = v85;
        v62 = v86;
      }

LABEL_47:
      MetricsEvent.Click.init(targetIdentifier:targetType:actionType:actionURL:locations:actionContext:actionDetails:metricsPageProperties:snapshotImpressions:)(v82, v93, 17, 28, v58, 0, 0, 12, v62, 0, 0, 0xFF00u, v92, v65);
      v74 = MetricsReportingController.shared.unsafeMutableAddressor();
      v75 = *&stru_B8.sectname[swift_isaMask & **v74];
      v76 = *v74;
      v75(v62, 0, 0, 0, 0, 0);
      sub_497F3C(v62, type metadata accessor for MetricsEvent.Click);
      sub_497F3C(v56, type metadata accessor for MetricsPageProperties);
    }
  }

LABEL_48:
  v77 = objc_allocWithZone(type metadata accessor for PlaylistDetailViewController(0));
  sub_70EB0(v100, v95);
  v78 = sub_39891C(v100, 0);
  v79 = [v50 navigationController];
  if (v79)
  {
    v80 = v79;
    [v79 pushViewController:v78 animated:1];
    sub_70F0C(v100);
  }

  else
  {
    sub_70F0C(v100);
  }

  swift_unknownObjectRelease();
}

double sub_495B60()
{
  v1 = &v0[qword_E09B80];
  if ((v0[qword_E09B80 + 16] & 1) == 0)
  {
    return *v1;
  }

  sub_494D44();
  v3 = v2;
  v4 = [v0 traitCollection];
  _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
  v6 = v5;

  sub_2F48A4(v6, v4, 0, 0);

  if (qword_DE6948 != -1)
  {
    swift_once();
  }

  [v4 displayScale];
  sub_AB3A00();
  v8 = v7;

  *v1 = v3;
  *(v1 + 1) = v8;
  v1[16] = 0;
  return v3;
}

void sub_495CA0(void *a1, char a2)
{
  v3 = v2;
  if (a2)
  {
    if (*(*(sub_48E79C() + 120) + OBJC_IVAR____TtCC16MusicApplication23LibrarySearchControllerP33_74DC0E8E86C2700EAF59346E7D7979E311BarDelegate_text + 8))
    {

      v5 = sub_AB9260();
    }

    else
    {
      v5 = 0;
    }

    [a1 setFilterText:v5];
  }

  v6 = [v2 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(a1);

  v7 = *&v3[qword_E09B38];
  if (v7 >= 2)
  {
    v8 = v7;
    v9 = [a1 scopedContainers];
    if (v9)
    {
      v10 = v9;
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
      v11 = sub_AB9760();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_AF82B0;
      *(v12 + 32) = v8;
      v13 = v8;
      sub_19638(v11);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_AF82B0;
      *(v14 + 32) = v8;
      sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
      v15 = v8;
    }

    isa = sub_AB9740().super.isa;

    [a1 setScopedContainers:isa];
    sub_31838(v7);
  }
}

void sub_495EF4(uint64_t a1@<X8>)
{
  v2 = v1;
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  __chkstk_darwin();
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v1[qword_E09B38];
  if (v6 < 2)
  {
    v7 = type metadata accessor for PlaybackIntentDescriptor(0);
    v8 = *(*(v7 - 8) + 56);

    v8(a1, 1, 1, v7);
    return;
  }

  v9 = objc_allocWithZone(MPModelLibraryRequest);
  v10 = v6;
  v11 = [v9 init];
  v12 = v11;
  v13 = qword_DFE2F0;
  v14 = *&v2[qword_DFE2F0];
  if (v14)
  {
    v15 = v11;
    v16 = [v14 request];
    if (!v16)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v17 = v16;
    v18 = [v16 label];
  }

  else
  {
    v19 = v11;
    v18 = 0;
  }

  [v12 setLabel:v18];

  sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
  v20 = static MPModelPlaylistEntry.defaultMusicKind.getter();
  v21 = objc_opt_self();
  v22 = [v21 kindWithVariants:static MPModelPlaylistVariants.allPlaylists.getter() playlistEntryKind:v20 options:0];
  [v12 setSectionKind:v22];

  v45 = _swiftEmptyArrayStorage;
  v23 = *&v2[v13];
  if (!v23)
  {
    v29 = 0;
    v38 = 0;
    goto LABEL_14;
  }

  v37 = a1;
  v24 = [v23 results];
  if (!v24)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v25 = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = &v45;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_140FE8;
  *(v27 + 24) = v26;
  v38 = v26;
  v43 = sub_4974E4;
  v44 = v27;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v42 = sub_48D644;
  *(&v42 + 1) = &block_descriptor_141;
  v28 = _Block_copy(&aBlock);

  [v25 enumerateItemIdentifiersUsingBlock:v28];
  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
    goto LABEL_19;
  }

  v29 = sub_140FE8;
  a1 = v37;
LABEL_14:
  sub_13C80(0, &unk_DE8180, MPIdentifierSet_ptr);

  isa = sub_AB9740().super.isa;

  [v12 setAllowedSectionIdentifiers:isa];

  [v12 setItemKind:v20];
  sub_13C80(0, &unk_DFDE50, NSSortDescriptor_ptr);

  v31 = sub_AB9740().super.isa;

  [v12 setSectionSortDescriptors:v31];

  v32 = [v2 traitCollection];
  UITraitCollection.configure<A, B>(libraryRequest:)(v12);

  v33 = [v12 playbackIntentWithStartItemIdentifiers:0];
  if (v33)
  {
    *v5 = v33;
    swift_storeEnumTagMultiPayload();
    v43 = 0;
    aBlock = 0u;
    v42 = 0u;
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    v34 = v2;
    PlaybackIntentDescriptor.init(intentType:representedObject:intentOptions:replaceIntent:shuffleMode:repeatMode:sourceViewController:issuer:forceSharePlayPrompt:)(v5, &aBlock, 3, 0, 0, 1, 0, 1, a1, v2, v39);

    v35 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v35 - 8) + 56))(a1, 0, 1, v35);
  }

  else
  {

    v36 = type metadata accessor for PlaybackIntentDescriptor(0);
    (*(*(v36 - 8) + 56))(a1, 1, 1, v36);
  }

  sub_31838(v6);
  sub_17654(v29, v38);
}

void sub_4964C8()
{
  if (*&v0[qword_E09B38] >= 2uLL)
  {
    v1 = v0;
    v2 = [v0 traitCollection];
    v3 = UITraitCollection.isMediaPicker.getter(v2);

    if (!v3)
    {
      v12 = 0;
      v4 = *&v1[qword_DFE2F0];
      if (v4)
      {
        v5 = [v4 results];
        if (v5)
        {
          v6 = v5;
          v7 = swift_allocObject();
          *(v7 + 16) = &v12;
          v8 = swift_allocObject();
          *(v8 + 16) = sub_4974B4;
          *(v8 + 24) = v7;
          aBlock[4] = sub_3A7BB8;
          aBlock[5] = v8;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_48D4FC;
          aBlock[3] = &block_descriptor_150;
          v9 = _Block_copy(aBlock);

          [v6 enumerateItemsUsingBlock:v9];
          _Block_release(v9);
          LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

          if ((v9 & 1) == 0)
          {
            v4 = sub_4974B4;
            v10 = v12;
LABEL_8:
            *&v1[qword_E09B88] = v10;
            sub_17654(v4, v7);
            return;
          }

          __break(1u);
        }

        __break(1u);
        return;
      }

      v10 = 0;
      v7 = 0;
      goto LABEL_8;
    }
  }
}

void sub_4966C4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5 && [v5 type] != &dword_0 + 3)
  {
    if (__OFADD__(*a4, 1))
    {
      __break(1u);
      return;
    }

    ++*a4;
  }

  swift_unknownObjectRelease();
}

void sub_496774()
{

  sub_31838(*(v0 + qword_E09B38));

  sub_12E1C(v0 + qword_E09B60, &qword_E0A418, &qword_B11D50);

  v1 = *(v0 + qword_E09B90);
}

id sub_49687C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_4968BC(uint64_t a1)
{

  sub_31838(*(a1 + qword_E09B38));

  sub_12E1C(a1 + qword_E09B60, &qword_E0A418, &qword_B11D50);

  v2 = *(a1 + qword_E09B90);
}

uint64_t type metadata accessor for PlaylistsViewController(uint64_t a1)
{
  result = qword_E09BC8;
  if (!qword_E09BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_496A04(uint64_t a1)
{
  sub_496AF8(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void sub_496AF8(uint64_t a1)
{
  if (!qword_E09BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DF1330, &qword_AF9120);
    v1 = sub_ABA9C0();
    if (!v2)
    {
      atomic_store(v1, &qword_E09BD8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication23PlaylistsViewControllerC9ScopeKindO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_496B7C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_496BD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

id sub_496C3C()
{
  v1 = [*v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == &dword_0 + 1)
  {
    v3 = sub_49414C();
  }

  else
  {
    v3 = [objc_allocWithZone(UICollectionViewFlowLayout) init];
  }

  v4 = v3;
  sub_492904(v4);

  return v4;
}

double sub_496D18()
{
  v1 = *v0;
  v2 = [v1 traitCollection];
  v3 = [v2 horizontalSizeClass];

  v4 = [v1 traitCollection];
  v5 = v4;
  if (v3 == &dword_0 + 1)
  {

    return 64.0;
  }

  else
  {
    v6 = sub_495B60();
  }

  return v6;
}

double sub_496DC0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_49388C(a1, v8);
  v3 = v8[7];
  a2[6] = v8[6];
  a2[7] = v3;
  a2[8] = v9[0];
  *(a2 + 137) = *(v9 + 9);
  v4 = v8[3];
  a2[2] = v8[2];
  a2[3] = v4;
  v5 = v8[5];
  a2[4] = v8[4];
  a2[5] = v5;
  result = *v8;
  v7 = v8[1];
  *a2 = v8[0];
  a2[1] = v7;
  return result;
}

uint64_t sub_496EB0(uint64_t a1)
{
  *(a1 + 8) = sub_497890(&qword_E0A3B8, type metadata accessor for PlaylistsViewController, &unk_B11CA0);
  result = sub_497890(&qword_E0A3C0, type metadata accessor for PlaylistsViewController, &unk_B11CC8);
  *(a1 + 16) = result;
  return result;
}

id sub_496F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_496FB0(uint64_t a1)
{
  sub_AB5C70();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return sub_AB6010();
}

unint64_t sub_497084()
{
  result = qword_E0A430;
  if (!qword_E0A430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0A428, &unk_B11D60);
    sub_497890(&qword_E0A438, type metadata accessor for MediumPlaylistCell, &unk_AF9954);
    sub_497890(&qword_E0A440, type metadata accessor for PlaceholderStyleModifier, &protocol conformance descriptor for PlaceholderStyleModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0A430);
  }

  return result;
}

uint64_t sub_4971A0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4971D8()
{

  return swift_deallocObject();
}

uint64_t sub_497220()
{

  return swift_deallocObject();
}

uint64_t sub_497258()
{
  v1 = type metadata accessor for PlaybackIntentDescriptor(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = (v0 + v2);
  type metadata accessor for PlaybackIntentDescriptor.IntentType(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_AB4C10();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

  else
  {
  }

  v5 = (v3 + *(v1 + 28));
  if (v5[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  v6 = (v3 + *(v1 + 32));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return swift_deallocObject();
}

uint64_t sub_497394()
{
  swift_unknownObjectRelease();
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_497410()
{

  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v1);
  }

  if (*(v0 + 96))
  {
  }

  if (*(v0 + 112))
  {
  }

  if (*(v0 + 128))
  {
  }

  return swift_deallocObject();
}

double block_copy_helper_150(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_497518()
{

  return swift_deallocObject();
}

id sub_497570(uint64_t a1)
{
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  v6 = __chkstk_darwin();
  v8 = &v15 - v7;
  result = (*&stru_158.sectname[swift_isaMask & *v1])(v6);
  if (result)
  {
    v10 = result;
    v11 = [result results];

    if (v11)
    {
      sub_AB3810();
      (*&stru_1F8.segname[(swift_isaMask & *v1) + 16])(v5);
      v12 = *(v3 + 8);
      v12(v5, v2);
      if ((*(v3 + 48))(v8, 1, v2) == 1)
      {
        sub_12E1C(v8, &unk_DE8E20, &qword_AF7990);
        v13 = 0;
      }

      else
      {
        v14 = IndexPath.safeSection.getter();
        v12(v8, v2);
        v13 = [v11 numberOfItemsInSection:v14];
      }

      return v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_4977D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A418, &qword_B11D50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_497850()
{

  return swift_deallocObject();
}

uint64_t sub_497890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_4978D8()
{
  type metadata accessor for CodableModelIdentity();
  v0 = sub_ABA710();
  if (!v0)
  {
    goto LABEL_6;
  }

  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication20CodableModelIdentity_model);

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {

LABEL_6:
    v10 = objc_allocWithZone(type metadata accessor for PlaylistsViewController(0));
    v11 = 0;
    v12 = 0;
    v13 = 0;
    return sub_48DDCC(v11, 0, v12, v13, 0);
  }

  v4 = v3;
  sub_13C80(0, &qword_DE8170, NSString_ptr);
  v5 = sub_ABA710();
  if (v5)
  {
    v6 = v5;
    v7 = sub_AB92A0();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v14 = objc_allocWithZone(type metadata accessor for PlaylistsViewController(0));
  v11 = v4;
  v12 = v7;
  v13 = v9;
  return sub_48DDCC(v11, 0, v12, v13, 0);
}

void sub_497A24()
{
  *(v0 + qword_E09B28) = 0;
  *(v0 + qword_E09B30) = 0;
  *(v0 + qword_E09B48) = 0;
  *(v0 + qword_E09B50) = 0;
  *(v0 + qword_E09B58) = 0;
  v1 = qword_E09B60;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + qword_E09B68) = 0;
  *(v0 + qword_E09B70) = 0;
  *(v0 + qword_E09B78) = _swiftEmptyArrayStorage;
  v3 = v0 + qword_E09B80;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  *(v0 + qword_E09B88) = 0;
  *(v0 + qword_E09B90) = 0;
  *(v0 + qword_E09B98) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_497B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = *(v2 + qword_DFE2F0);
  if (!v9)
  {
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v10 results];
  if (!v11)
  {
    (*(v5 + 8))(v8, v4);

LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  v12 = v11;

  isa = sub_AB3770().super.isa;
  v14 = [v12 itemAtIndexPath:isa];

  if (!v14)
  {
LABEL_12:
    (*(v5 + 8))(v8, v4);
    goto LABEL_13;
  }

  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  v16 = v15;
  if (([v15 userEditableComponents] & 1) != 0 && objc_msgSend(v16, "isOwner"))
  {
    v17 = UICollectionView.isDraggingCell(at:)() ^ 1;
  }

  else
  {
    v17 = 0;
  }

  (*(v5 + 8))(v8, v4);
  swift_unknownObjectRelease();
  return v17 & 1;
}

void sub_497D90(void *a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = UITraitCollection.isMediaPicker.getter(v4);

  if (!v5 && *&v2[qword_E09B38] >= 2uLL)
  {
    if (*&v2[qword_E09B88])
    {
      v6 = [v2 traitCollection];
      [a1 bounds];
      v7 = [objc_opt_self() defaultMetrics];
      sub_AB9EF0();
    }
  }
}

uint64_t sub_497ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_497F3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_497FDC()
{
  result = qword_E0A458;
  if (!qword_E0A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0A458);
  }

  return result;
}

void *sub_498060(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_propertyChangedObservingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v1[v4] = TextDrawing.Cache.init()();
  v5 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel] = 0;
  v6 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItem;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItem] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItemIndex] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView] = 0;
  *&v1[v5] = a1;
  v7 = *&stru_108.segname[(swift_isaMask & *a1) - 8];
  v8 = a1;
  v9 = v7();
  v10 = *&v2[v6];
  *&v2[v6] = v9;

  v11 = [objc_allocWithZone(UICollectionViewTableLayout) init];
  [v11 _setShowsAdditionalSeparators:0];
  isa = sub_AB9740().super.isa;
  [v11 _setFloatingElementKinds:isa];

  v17.receiver = v2;
  v17.super_class = type metadata accessor for JSMultiChoiceViewController();
  v13 = objc_msgSendSuper2(&v17, "initWithCollectionViewLayout:", v11);
  v14 = *(&stru_108.size + (swift_isaMask & *v8));
  v15 = v13;
  v14(v13, &off_D16688);

  return v15;
}

id sub_498288(void *a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_propertyChangedObservingDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges] = 0;
  v4 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *&v1[v4] = TextDrawing.Cache.init()();
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel] = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItem] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItemIndex] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView] = 0;
  *&v1[v5] = a1;
  v6 = objc_allocWithZone(UICollectionViewTableLayout);
  v7 = a1;
  v8 = [v6 init];
  [v8 _setShowsAdditionalSeparators:0];
  isa = sub_AB9740().super.isa;
  [v8 _setFloatingElementKinds:isa];

  v12.receiver = v2;
  v12.super_class = type metadata accessor for JSMultiChoiceViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithCollectionViewLayout:", v8);

  return v10;
}

void sub_498420(uint64_t a1)
{
  v2 = v1;
  v39.receiver = v1;
  v39.super_class = type metadata accessor for JSMultiChoiceViewController();
  objc_msgSendSuper2(&v39, "viewDidLoad");
  v3 = [v1 collectionView];
  if (!v3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  [v3 _setAllowsSelectionDuringEditing:1];
  v5 = type metadata accessor for MultiChoiceCell(0);
  v6 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v5, v6, v7);

  v8 = type metadata accessor for ToggleCell(0);
  v9 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v8, v9, v10);

  v11 = sub_38EF30();
  UICollectionView.register<A>(_:reuseIdentifier:)(v11, 0xD00000000000001FLL, 0x8000000000B66B70);
  v12 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel];
  if (v12)
  {
    v13 = *(&stru_B8.reserved2 + (swift_isaMask & *v12));
    v14 = v12;
    v15 = v13();
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      v19 = type metadata accessor for JSMultiChoiceViewController.FooterView();
      v20 = sub_AB92A0();
      v22 = v21;
      v23 = static UICollectionReusableView.reuseIdentifier.getter();
      UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v19, v20, v22, v23, v24);
    }

    else
    {
    }
  }

  [v4 setAlwaysBounceVertical:1];
  v25 = qword_DE6C58;
  v26 = v4;
  if (v25 != -1)
  {
    swift_once();
  }

  [v26 setBackgroundColor:qword_E71898];

  v27 = [v2 view];
  if (!v27)
  {
    goto LABEL_14;
  }

  v28 = v27;
  v29 = [v2 viewBackgroundColor];
  [v28 setBackgroundColor:v29];

  v30 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache];
  v31 = [v2 traitCollection];
  [v31 displayScale];
  v33 = v32;

  swift_beginAccess();
  *(v30 + 16) = v33;
  sub_106F0C();
  v34 = [v2 view];
  if (v34)
  {
    v35 = v34;
    v36 = [v34 tintColor];
    swift_beginAccess();
    v37 = *(v30 + 24);
    *(v30 + 24) = v36;
    v38 = v36;

    sub_10710C();
    return;
  }

LABEL_15:
  __break(1u);
}

void sub_498890(void *a1)
{
  v13.receiver = v1;
  v13.super_class = type metadata accessor for JSMultiChoiceViewController();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  v3 = [v1 traitCollection];
  v4 = [v3 horizontalSizeClass];

  if (!a1 || v4 != [a1 horizontalSizeClass])
  {
    goto LABEL_7;
  }

  v5 = [v1 traitCollection];
  v6 = [v5 preferredContentSizeCategory];

  v7 = [a1 preferredContentSizeCategory];
  v8 = sub_AB92A0();
  v10 = v9;
  if (v8 == sub_AB92A0() && v10 == v11)
  {

    return;
  }

  v12 = sub_ABB3C0();

  if ((v12 & 1) == 0)
  {
LABEL_7:
    sub_49A890();
  }
}

void sub_498A68(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = type metadata accessor for JSMultiChoiceViewController();
  objc_msgSendSuper2(&v10, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_49C1E0;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_CF24C;
  v9[3] = &block_descriptor_151;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_498B7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_49A890();
  }
}

unint64_t sub_498CFC(unint64_t a1, uint64_t a2)
{
  v4 = v2;
  v7 = *(v2 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel);
  if (!v7)
  {
    v50 = *(v2 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel);
    if (!v50)
    {
      v86 = sub_38EF30();
      return UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v86, a2, 0xD00000000000001FLL, 0x8000000000B66B70, v86);
    }

    v51 = type metadata accessor for ToggleCell(0);
    v9 = v50;
    v52 = static UICollectionReusableView.reuseIdentifier.getter();
    v8 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v51, a2, v52, v53, v51);

    v3 = &swift_isaMask;
    a1 = (*(&stru_B8.offset + (swift_isaMask & *v9)))(v54);
    result = sub_AB37B0();
    if ((a1 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        v55 = v4;
        v56 = *(a1 + 8 * result + 32);
LABEL_26:
        v57 = v56;

        v58 = v8[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden];
        v8[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden] = 1;
        v59 = v8;
        sub_C6178(v58);
        v60 = v59[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden];
        v59[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden] = 0;
        v61 = sub_C618C(v60);
        v62 = (*&stru_298.segname[*v3 & *v57])(v61);
        if (v63)
        {
          v64 = v62;
        }

        else
        {
          v64 = 0;
        }

        v65 = &v59[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
        v66 = *&v59[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
        v67 = *&v59[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title + 8];
        if (v63)
        {
          v68 = v63;
        }

        else
        {
          v68 = 0xE000000000000000;
        }

        *v65 = v64;
        v65[1] = v68;
        sub_C5AB0(v66, v67);

        v70 = (*(&stru_298.size + (*v3 & *v57)))(v69);
        if (v71)
        {
          v72 = v70;
        }

        else
        {
          v72 = 0;
        }

        if (v71)
        {
          v73 = v71;
        }

        else
        {
          v73 = 0xE000000000000000;
        }

        v74 = &v59[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
        v75 = *&v59[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
        v76 = *&v59[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8];
        *v74 = v72;
        v74[1] = v73;
        sub_C5C64(v75, v76);

        v77 = *(v55 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache);
        v78 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
        swift_beginAccess();
        *&v59[v78] = v77;
        swift_retain_n();
        v79 = v59;

        v80 = *&v79[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
        v81 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
        swift_beginAccess();
        v82 = *&v80[v81];
        *&v80[v81] = v77;

        v83 = v80;
        sub_2E6210(v82);

        v84 = (*(&stru_298.flags + (*v3 & *v57)))([v79 setSelectionStyle:0]);
        if ((v84 & 1) != v79[OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled])
        {
          v79[OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled] = v84 & 1;
          [*&v79[OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView] setOn:? animated:?];
        }

        *&v79[OBJC_IVAR____TtC16MusicApplication10ToggleCell_delegate + 8] = &off_D16698;
        swift_unknownObjectWeakAssign();

        return v79;
      }

      __break(1u);
      return result;
    }

LABEL_50:
    v55 = v4;
    v56 = sub_360AD8(result, a1);
    goto LABEL_26;
  }

  v8 = *(&stru_B8.flags + (swift_isaMask & *v7));
  v9 = v7;
  v10 = (v8)();
  result = sub_AB37B0();
  if ((v10 & 0xC000000000000001) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      v12 = *(v10 + 8 * result + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_50;
  }

  v12 = sub_361AB4(result, v10);
LABEL_6:
  v13 = v12;

  v14 = type metadata accessor for MultiChoiceCell(0);
  v15 = static UICollectionReusableView.reuseIdentifier.getter();
  v17 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v14, a2, v15, v16, v14);

  v18 = sub_AB37B0() != 0;
  v19 = v17[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden];
  v17[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden] = v18;
  sub_C6178(v19);
  v20 = v17[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden];
  v17[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden] = 0;
  v21 = sub_C618C(v20);
  v22 = (*&stru_68.segname[swift_isaMask & *v13])(v21);
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = &v17[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
  v26 = *&v17[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
  v27 = *&v17[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title + 8];
  if (v23)
  {
    v28 = v23;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  *v25 = v24;
  v25[1] = v28;
  sub_C5AB0(v26, v27);

  v30 = (*(&stru_68.size + (swift_isaMask & *v13)))(v29);
  if (v31)
  {
    v32 = v30;
  }

  else
  {
    v32 = 0;
  }

  if (v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  v34 = &v17[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
  v35 = *&v17[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
  v36 = *&v17[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8];
  *v34 = v32;
  v34[1] = v33;
  sub_C5C64(v35, v36);

  v87 = v4;
  v37 = *(v4 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache);
  v38 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
  swift_beginAccess();
  *&v17[v38] = v37;
  swift_retain_n();
  v39 = v17;

  v40 = *&v39[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
  v41 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v42 = *&v40[v41];
  *&v40[v41] = v37;

  v43 = v40;
  sub_2E6210(v42);

  v44 = *&stru_108.segname[(swift_isaMask & *v9) - 8];
  v45 = v13;
  v46 = v44();
  if (!v46)
  {

    goto LABEL_42;
  }

  v47 = v46;
  type metadata accessor for JSMultiChoiceItem();
  v48 = sub_ABA790();

  if ((v48 & 1) == 0)
  {
LABEL_42:
    v85 = v39[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked];
    v39[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked] = 0;
    sub_C5D5C(v85);
    goto LABEL_43;
  }

  v49 = v39[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked];
  v39[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked] = 1;
  sub_C5D5C(v49);
  *(v87 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItemIndex) = sub_AB37B0();
LABEL_43:
  v79 = v39;
  [v79 setSelectionStyle:0];

  return v79;
}

uint64_t sub_499608(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v5 = v4;
  if (sub_AB92A0() != a2 || v9 != a3)
  {
    v11 = sub_ABB3C0();

    if (v11)
    {
      goto LABEL_8;
    }

    sub_ABAD90(23);

    v26._countAndFlagsBits = a2;
    v26._object = a3;
    sub_AB94A0(v26);
    sub_ABAFD0();
    __break(1u);
  }

LABEL_8:
  v12 = type metadata accessor for JSMultiChoiceViewController.FooterView();
  v13 = static UICollectionReusableView.reuseIdentifier.getter();
  v15 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v12, a2, a3, a4, v13, v14, v12);

  v16 = *(v5 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel);
  if (v16)
  {
    v17 = *(&stru_B8.reserved2 + (swift_isaMask & *v16));
    v18 = v16;
    v22 = v17(v18, v19, v20, v21);
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0xE000000000000000;
  }

  sub_49ABE0(v22, v24);
  return v15;
}

void sub_499A70(id a1, uint64_t a2)
{
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel];
  if (v9)
  {
    v48 = v2;
    v10 = *(&stru_B8.flags + (swift_isaMask & *v9));
    v11 = v9;
    v12 = v10();
    v13 = sub_AB37B0();
    if ((v12 & 0xC000000000000001) != 0)
    {
      v14 = sub_361AB4(v13, v12);
LABEL_6:
      v15 = v14;

      v49 = a2;
      isa = sub_AB3770().super.isa;
      v17 = [a1 cellForItemAtIndexPath:isa];

      if (v17)
      {
        v47 = a1;
        type metadata accessor for MultiChoiceCell(0);
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = v18;
          v45 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItemIndex;
          v46 = v15;
          sub_AB37F0();
          sub_AB37A0();
          v20 = sub_AB3770().super.isa;
          v6[1](v8, v5);
          v21 = [v47 cellForItemAtIndexPath:v20];

          if (v21)
          {
            v22 = swift_dynamicCastClass();
            v23 = v22;
            if (v22)
            {
              v24 = *(v22 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked);
              *(v22 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked) = 0;
              v25 = v21;
              sub_C5D5C(v24);
            }

            v26 = v48;
          }

          else
          {
            v23 = 0;
            v26 = v48;
          }

          v38 = *(v19 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked);
          *(v19 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked) = 1;
          sub_C5D5C(v38);
          v39 = sub_AB37B0();
          v40 = v46;
          *&v26[v45] = v39;
          v41 = *&stru_108.segname[swift_isaMask & *v11];
          v42 = v40;
          v41(v40);

          a1 = v47;
        }

        else
        {

          a1 = v47;
        }

        goto LABEL_29;
      }

      goto LABEL_28;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v13 < *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
    {
      v14 = *(v12 + 8 * v13 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_33;
  }

  v27 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel];
  if (!v27)
  {
LABEL_29:
    v43 = sub_AB3770().super.isa;
    [a1 deselectItemAtIndexPath:v43 animated:0];

    return;
  }

  v8 = v2;
  v6 = &swift_isaMask;
  v28 = *(&stru_B8.offset + (swift_isaMask & *v27));
  v11 = v27;
  v12 = v28();
  v13 = sub_AB37B0();
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_33:
    v29 = sub_360AD8(v13, v12);
LABEL_17:
    v15 = v29;

    v31 = *(&stru_298.flags + (*v6 & *v15));
    v32 = (v31)(v30);
    (*(&stru_298.reserved2 + (*v6 & *v15)))((v32 & 1) == 0);
    v8[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges] = 1;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_42FC20();
      swift_unknownObjectRelease();
    }

    v33 = sub_AB3770().super.isa;
    v34 = [a1 cellForItemAtIndexPath:v33];

    if (v34)
    {
      type metadata accessor for ToggleCell(0);
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v36 = v35;
        v37 = v31();
        if ((v37 & 1) != *(v36 + OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled))
        {
          *(v36 + OBJC_IVAR____TtC16MusicApplication10ToggleCell__isToggled) = v37 & 1;
          [*(v36 + OBJC_IVAR____TtC16MusicApplication10ToggleCell_switchView) setOn:? animated:?];
        }
      }

      goto LABEL_29;
    }

LABEL_28:

    goto LABEL_29;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8)))
  {
    v29 = *(v12 + 8 * v13 + 32);
    goto LABEL_17;
  }

  __break(1u);
}

void sub_49A43C(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  swift_unknownObjectRetain();
  v15 = [v3 collectionView];
  if (!v15)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_8:
    sub_11525C(v8);
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v16 = v15;
  v17 = [v15 indexPathForCell:v14];

  if (v17)
  {
    sub_AB3790();

    (*(v10 + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, v9);
  }

  sub_1766C(v6, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_8;
  }

  (*(v10 + 32))(v12, v8, v9);
  v18 = *&v3[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel];
  if (!v18)
  {
    (*(v10 + 8))(v12, v9);
    goto LABEL_9;
  }

  v26 = v3;
  v19 = *(&stru_B8.offset + (swift_isaMask & *v18));
  v20 = v18;
  v21 = v19();
  v22 = sub_AB37B0();
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = sub_360AD8(v22, v21);
    goto LABEL_18;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v22 >= *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_22:
    __break(1u);
    return;
  }

  v23 = *(v21 + 8 * v22 + 32);
LABEL_18:
  v24 = v23;

  (*(&stru_298.reserved2 + (swift_isaMask & *v24)))(a3 & 1);
  (*(v10 + 8))(v12, v9);
  swift_unknownObjectRelease();

  v3 = v26;
LABEL_10:
  v3[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges] = 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_42FC20();
    swift_unknownObjectRelease();
  }
}

id sub_49A80C(__n128 a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView);
  }

  else
  {
    v5 = [objc_allocWithZone(type metadata accessor for JSMultiChoiceViewController.FooterView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v6 = *(v1 + v2);
    *(v1 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

void sub_49A890()
{
  v1 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell];
  *&v0[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell] = 0;

  v2 = *&v0[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell];
  *&v0[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell] = 0;

  if ([v0 isViewLoaded])
  {
    v3 = [v0 collectionView];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 collectionViewLayout];
      [v5 invalidateLayout];

      isa = [v4 indexPathsForVisibleItems];
      if (!isa)
      {
        sub_AB3820();
        sub_AB9760();
        isa = sub_AB9740().super.isa;
      }

      sub_AB3820();
      if (*(sub_AB9760() + 16))
      {
        [v4 reloadItemsAtIndexPaths:isa];
      }
    }
  }
}

char *sub_49A9F8(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_text];
  *v9 = 0;
  *(v9 + 1) = 0xE000000000000000;
  v10 = OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label;
  v11 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v11 setTextColor:qword_E718C8];
  v12 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v11 setFont:v12];

  [v11 setNumberOfLines:0];
  [v11 setTextAlignment:4];
  *&v4[v10] = v11;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for JSMultiChoiceViewController.FooterView();
  v13 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  [v13 addSubview:*&v13[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label]];
  return v13;
}

double sub_49ABE0(uint64_t a1, uint64_t a2)
{
  v4 = &v2[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_text];
  v5 = *&v2[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_text];
  v6 = *&v2[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_text + 8];
  *v4 = a1;
  *(v4 + 1) = a2;
  v7 = v5 == a1 && v6 == a2;
  if (!v7 && (sub_ABB3C0() & 1) == 0)
  {
    v8 = *&v2[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label];

    String.trim()();

    v9 = sub_AB9260();

    [v8 setText:v9];

    [v2 setNeedsLayout];
  }

  return result;
}

void sub_49ACDC(__n128 a1)
{
  v16.receiver = v1;
  v16.super_class = type metadata accessor for JSMultiChoiceViewController.FooterView();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v1 bounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v1 music_inheritedLayoutInsets];
  v11 = v10;
  v13 = v12;
  [v1 effectiveUserInterfaceLayoutDirection];
  UIEdgeInsetsInsetRect(v3, v5, v7, v9, v11, v13);
  v14 = OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label;
  [*&v1[OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label] _firstBaselineOffsetFromTop];
  v15 = *&v1[v14];
  sub_ABA490();
  [v15 setFrame:?];
}

id sub_49AFFC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_49B138()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges) = 0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_42FC20();

    swift_unknownObjectRelease();
  }

  return result;
}

double sub_49B1A0()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges) = 1;
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_42FC20();

    swift_unknownObjectRelease();
  }

  return result;
}

void sub_49B208()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_propertyChangedObservingDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_hasChanges) = 0;
  v1 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache;
  type metadata accessor for TextDrawing.Cache();
  swift_allocObject();
  *(v0 + v1) = TextDrawing.Cache.init()();
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItem) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_selectedItemIndex) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView) = 0;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_49B310()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel);
  if (v1)
  {
    v2 = *(&stru_B8.flags + (swift_isaMask & *v1));
    v3 = v1;
    v4 = v2();
  }

  else
  {
    v5 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel);
    if (!v5)
    {
      return 0;
    }

    v6 = *(&stru_B8.offset + (swift_isaMask & *v5));
    v3 = v5;
    v4 = v6();
  }

  if (v4 >> 62)
  {
    v7 = sub_ABB060();
  }

  else
  {
    v7 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  }

  return v7;
}

void sub_49B414(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
    return;
  }

  v4 = v3;
  v32 = a1;
  v5 = [v4 tableViewCell];
  if (!v5)
  {
    goto LABEL_24;
  }

  v6 = v5;
  [v5 _setDrawsSeparatorAtTopOfSection:0];

  v7 = [v4 tableViewCell];
  if (!v7)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v8 = v7;
  [v7 _setDrawsSeparatorAtBottomOfSection:0];

  v9 = [v4 tableViewCell];
  if (!v9)
  {
LABEL_26:
    __break(1u);
    return;
  }

  v10 = v9;
  [v9 setSeparatorStyle:0];

  type metadata accessor for ToggleCell(0);
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel);
  if (!v12)
  {
    goto LABEL_15;
  }

  v13 = v11;
  v14 = *(&stru_B8.offset + (swift_isaMask & *v12));
  v32 = v32;
  v15 = v12;
  v16 = v14();
  v17 = sub_AB37B0();
  if ((v16 & 0xC000000000000001) != 0)
  {
    v18 = sub_360AD8(v17, v16);
    goto LABEL_11;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v17 >= *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v18 = *(v16 + 8 * v17 + 32);
LABEL_11:
  v19 = v18;

  v20 = *(&stru_108.flags + (swift_isaMask & *v19));
  v21 = v19;
  v22 = v20();
  if (v22)
  {
    v23 = v22;

    v24 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
    swift_beginAccess();
    v25 = *&v23[v24];
    if (v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = ICStoreArtworkInfoCropStyleBoundedBox;
    }

    v27 = v32;
    v28 = v25;
    v29 = JSArtwork.artworkCatalog(defaultCropStyle:)(v26);

    v30 = *(v13 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog);
    *(v13 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog) = v29;
    v31 = v29;

    sub_74EA4(v29);
    return;
  }

LABEL_15:
}

double sub_49B730(void *a1)
{
  v2 = v1;
  [a1 music_inheritedLayoutInsets];
  v5 = v4;
  v7 = v6;
  [a1 bounds];
  v8 = CGRectGetWidth(v94) - v5 - v7;
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceViewModel];
  if (v9)
  {
    v10 = *(&stru_B8.flags + (swift_isaMask & *v9));
    v11 = v9;
    v10();
    sub_AB37E0();
    v12 = type metadata accessor for JSMultiChoiceItem();
    Array.subscript.getter(v12, v93);
    v13 = v93[0];
    if (v93[0])
    {

      v14 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell;
      if (*&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell])
      {
        v15 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_multiChoiceSizingCell];
        v16 = v15;
      }

      else
      {
        type metadata accessor for MultiChoiceCell(0);
        v26 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v27 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache];
        v28 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
        swift_beginAccess();
        *&v26[v28] = v27;
        swift_retain_n();
        v29 = v26;

        v30 = *&v29[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
        v31 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
        swift_beginAccess();
        v32 = *&v30[v31];
        *&v30[v31] = v27;

        v33 = v30;
        sub_2E6210(v32);

        v34 = *&v2[v14];
        *&v2[v14] = v29;
        v35 = v29;

        v16 = v35;
        v15 = 0;
      }

      v36 = (*&stru_68.segname[swift_isaMask & *v13])(v15);
      if (v37)
      {
        v38 = v36;
      }

      else
      {
        v38 = 0;
      }

      v39 = &v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
      v40 = *&v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
      v41 = *&v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title + 8];
      if (v37)
      {
        v42 = v37;
      }

      else
      {
        v42 = 0xE000000000000000;
      }

      *v39 = v38;
      v39[1] = v42;
      sub_C5AB0(v40, v41);

      v44 = (*(&stru_68.size + (swift_isaMask & *v13)))(v43);
      if (v45)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0;
      }

      if (v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = 0xE000000000000000;
      }

      v48 = &v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
      v49 = *&v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
      v50 = *&v16[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8];
      *v48 = v46;
      v48[1] = v47;
      sub_C5C64(v49, v50);

      v51 = [v2 traitCollection];
      v18 = (*&stru_658.segname[(swift_isaMask & *v16) + 8])(v8);

      return v18;
    }
  }

  v17 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel];
  v18 = 0.0;
  if (v17)
  {
    v19 = *(&stru_B8.offset + (swift_isaMask & *v17));
    v20 = v17;
    v19();
    sub_AB37E0();
    v21 = type metadata accessor for JSToggleSelectorItem(0);
    Array.subscript.getter(v21, v93);
    v22 = v93[0];
    if (v93[0])
    {

      v23 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell;
      v24 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell];
      if (v24)
      {
        v25 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSizingCell];
      }

      else
      {
        type metadata accessor for ToggleCell(0);
        v52 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
        v53 = *&v2[OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_textDrawingCache];
        v54 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textDrawingCache;
        swift_beginAccess();
        *&v52[v54] = v53;
        swift_retain_n();
        v55 = v52;

        v56 = *&v55[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];
        v57 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
        swift_beginAccess();
        v58 = *&v56[v57];
        *&v56[v57] = v53;

        v59 = v56;
        sub_2E6210(v58);

        v60 = *&v2[v23];
        *&v2[v23] = v55;
        v61 = v55;

        v25 = v61;
        v24 = 0;
      }

      v62 = *&stru_298.segname[swift_isaMask & *v22];
      v63 = v24;
      v64 = v25;
      v65 = v62();
      if (v66)
      {
        v67 = v65;
      }

      else
      {
        v67 = 0;
      }

      v68 = &v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
      v69 = *&v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
      v70 = *&v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title + 8];
      if (v66)
      {
        v71 = v66;
      }

      else
      {
        v71 = 0xE000000000000000;
      }

      *v68 = v67;
      v68[1] = v71;
      sub_C5AB0(v69, v70);

      v73 = (*(&stru_298.size + (swift_isaMask & *v22)))(v72);
      if (v74)
      {
        v75 = v73;
      }

      else
      {
        v75 = 0;
      }

      if (v74)
      {
        v76 = v74;
      }

      else
      {
        v76 = 0xE000000000000000;
      }

      v77 = &v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
      v78 = *&v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
      v79 = *&v64[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8];
      *v77 = v75;
      v77[1] = v76;
      sub_C5C64(v78, v79);

      v80 = *(&stru_108.flags + (swift_isaMask & *v22));
      v81 = v22;
      v82 = v80();

      if (v82)
      {
        v83 = OBJC_IVAR____TtC11MusicJSCore9JSArtwork_cropStyle;
        swift_beginAccess();
        v84 = *&v82[v83];
        if (v84)
        {
          v85 = *&v82[v83];
        }

        else
        {
          v85 = ICStoreArtworkInfoCropStyleBoundedBox;
          v84 = 0;
        }

        v86 = v84;
        v87 = JSArtwork.artworkCatalog(defaultCropStyle:)(v85);

        v88 = *&v64[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog];
        *&v64[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_lockupImageArtworkCatalog] = v87;
        v89 = v87;

        sub_74EA4(v87);
      }

      v90 = [v2 traitCollection];
      sub_156754(v8);
      v18 = v91;
    }

    else
    {
    }
  }

  return v18;
}

double sub_49BEA4(void *a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController_toggleSelectorViewModel);
  v4 = 20.0;
  if (v3)
  {
    v5 = v1;
    v7 = *(&stru_B8.reserved2 + (swift_isaMask & *v3));
    v8 = v3;
    v9 = v7();
    v11 = v10;

    v13 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v13 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      v14 = sub_49A80C(v12);
      v15 = *(v5 + v2);
      if (v15)
      {
        v16 = *(&stru_B8.reserved2 + (swift_isaMask & *v15));
        v17 = v15;
        v18 = v16();
        v20 = v19;
      }

      else
      {
        v18 = 0;
        v20 = 0xE000000000000000;
      }

      sub_49ABE0(v18, v20);

      v21 = *(v5 + OBJC_IVAR____TtC16MusicApplication27JSMultiChoiceViewController____lazy_storage___sizingFooterView);
      [a1 bounds];
      [v21 sizeThatFits:{v22, v23}];
      v25 = v24;

      return v25 + 30.0;
    }

    else
    {
    }
  }

  return v4;
}

void sub_49C044()
{
  v1 = (v0 + OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_text);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtCC16MusicApplication27JSMultiChoiceViewControllerP33_A8E569B24FF6D407321C1DADBD6A2E9610FooterView_label;
  v3 = [objc_allocWithZone(UILabel) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  [v3 setTextColor:qword_E718C8];
  v4 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  [v3 setFont:v4];

  [v3 setNumberOfLines:0];
  [v3 setTextAlignment:4];
  *(v0 + v2) = v3;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_49C1A8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

double block_copy_helper_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_49C200(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_layoutStyle] = 0;
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_subtitle];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v11 = &v4[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_additionalDescription];
  *v11 = 0;
  v11[1] = 0xE000000000000000;
  v12 = sub_49D368(0);
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents];
  *v13 = v12;
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v16;
  v64.receiver = v4;
  v64.super_class = type metadata accessor for MusicVideoHorizontalCell(0);
  v17 = objc_msgSendSuper2(&v64, "initWithFrame:", a1, a2, a3, a4);
  v18 = Artwork.Placeholder.music.unsafeMutableAddressor();
  v19 = *v18;
  v20 = v18[1];
  v21 = v18[2];
  v22 = v18[3];
  v60 = v18[5];
  v61 = v18[4];
  v23 = &v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v62 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder];
  v59 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 8];
  v58 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 16];
  v57 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkPlaceholder + 24];
  *v23 = *v18;
  v23[1] = v20;
  v23[2] = v21;
  v23[3] = v22;
  v23[4] = v61;
  v23[5] = v60;
  v24 = v19;
  v25 = v20;
  v26 = v21;
  v27 = v22;
  v28 = v24;
  v29 = v25;
  v30 = v26;
  v31 = v27;
  sub_2F1C8(v62, v59, v58, v57);
  v63 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent;
  v32 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
  v33 = *(v32 + 168);
  v65[0] = *(v32 + 152);
  v65[1] = v33;
  v65[2] = *(v32 + 184);
  *(v32 + 152) = v19;
  *(v32 + 160) = v20;
  *(v32 + 168) = v21;
  *(v32 + 176) = v22;
  *(v32 + 184) = v61;
  *(v32 + 192) = v60;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v37 = v31;
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  sub_75948(v65);
  sub_12E1C(v65, &unk_DF8690, &unk_AF9900);

  v42 = v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 0;
  if (v42 == 1)
  {
    [v17 setNeedsLayout];
  }

  v43 = &v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkEdgeInsets];
  type metadata accessor for UIEdgeInsets(0);
  *v43 = 0x4010000000000000;
  *(v43 + 8) = xmmword_AFB130;
  *(v43 + 3) = 0x4026000000000000;
  if (sub_AB38D0())
  {
    [v17 setNeedsLayout];
  }

  *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkSize] = xmmword_B11F60;
  v44 = *&v17[v63];
  v45 = *(v44 + 80);
  v46 = *(v44 + 88);
  *(v44 + 80) = xmmword_B11F60;
  sub_75614(v45, v46);
  v47 = *&v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  v48 = *&v17[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents + 24];
  if (!(v48 >> 62))
  {
    v49 = *(&dword_10 + (v48 & 0xFFFFFFFFFFFFFF8));
    if (v49)
    {
      goto LABEL_7;
    }

LABEL_15:

LABEL_16:
    v53 = objc_opt_self();
    v54 = v17;
    v55 = [v53 whiteColor];
    [v54 setBackgroundColor:v55];

    v56 = [objc_allocWithZone(UIView) initWithFrame:{a1, a2, a3, a4}];
    [v54 setBackgroundView:v56];

    return;
  }

  v49 = sub_ABB060();
  if (!v49)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (v49 >= 1)
  {

    for (i = 0; i != v49; ++i)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v52 = sub_36003C(i, v48, v50);
      }

      else
      {
        v52 = *(v48 + 8 * i + 32);
      }

      TextStackView.add(_:)(v52);
    }

    goto LABEL_16;
  }

  __break(1u);
}

void sub_49CA04(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC16MusicApplication24MusicVideoHorizontalCell21TVShowEpisodeListCell_releaseDate;
  v10 = sub_AB3430();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v24.receiver = v4;
  v24.super_class = type metadata accessor for MusicVideoHorizontalCell.TVShowEpisodeListCell(0);
  v11 = objc_msgSendSuper2(&v24, "initWithFrame:", a1, a2, a3, a4);
  v12 = sub_49D368(1);
  v13 = &v11[OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents];
  *v13 = v12;
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v16;

  v17 = v13[3];
  v18 = *&v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView];

  TextStackView.removeAll()();
  if (v17 >> 62)
  {
    v20 = sub_ABB060();
    if (!v20)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v20 = *(&dword_10 + (v17 & 0xFFFFFFFFFFFFFF8));
    if (!v20)
    {
      goto LABEL_10;
    }
  }

  if (v20 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v20; ++i)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v22 = sub_36003C(i, v17, v19);
    }

    else
    {
      v22 = *(v17 + 8 * i + 32);
    }

    TextStackView.add(_:)(v22);
  }

LABEL_10:

  v23 = v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v11[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  if ((v23 & 1) == 0)
  {
    [v11 setNeedsLayout];
  }
}

double sub_49CCF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v3 = &v18[-v2];
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtCC16MusicApplication24MusicVideoHorizontalCell21TVShowEpisodeListCell_releaseDate;
  swift_beginAccess();
  sub_2EC64(v1 + v8, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_12E1C(v3, &unk_E01230, "|,\r");
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    if (qword_DE6CB8 != -1)
    {
      swift_once();
    }

    v10 = qword_E718F8;
    isa = sub_AB3370().super.isa;
    v12 = [v10 stringFromDate:isa];

    v13 = sub_AB92A0();
    v15 = v14;
    v16 = (v1 + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_subtitle);
    *v16 = v13;
    v16[1] = v14;

    v17 = *(v1 + OBJC_IVAR____TtC16MusicApplication24MusicVideoHorizontalCell_textComponents + 8);
    swift_beginAccess();
    *(v17 + 112) = v13;
    *(v17 + 120) = v15;

    sub_2EB704();
    (*(v5 + 8))(v7, v4);
  }

  return result;
}

double sub_49D004()
{

  return result;
}

id sub_49D0B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_49D244(uint64_t a1)
{
  sub_2EB24(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_49D2F8()
{
  result = qword_E0A588;
  if (!qword_E0A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0A588);
  }

  return result;
}

uint64_t sub_49D368(char a1)
{
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle:UIFontTextStyleBody];
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  v4 = objc_opt_self();
  v5 = v3;
  v19 = [v4 clearColor];
  v18 = [v1 preferredFontForTextStyle:UIFontTextStyleCaption1];
  if (qword_DE6C88 != -1)
  {
    swift_once();
  }

  v6 = qword_E718C8;
  v7 = qword_E718C8;
  v8 = [v4 clearColor];
  v9 = v7;
  v10 = [v1 preferredFontForTextStyle:UIFontTextStyleCaption1];
  v11 = [v4 clearColor];
  *&v53[0] = v3;
  *(&v53[0] + 1) = v19;
  v53[1] = xmmword_AF7C20;
  v54 = 0;
  v55 = 0;
  v56 = v2;
  v57 = 1;
  v58 = xmmword_AF7C30;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v12 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v53);
  *&v47[0] = v6;
  *(&v47[0] + 1) = v8;
  v47[1] = xmmword_AF7C20;
  v48 = 0;
  v49 = 0;
  v50 = v18;
  v51 = 1;
  v52 = xmmword_AF7C30;
  swift_allocObject();
  v13 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974627573, 0xE800000000000000, v47);
  *&v41[0] = v6;
  *(&v41[0] + 1) = v11;
  v41[1] = xmmword_AF7C20;
  v42 = 0;
  v43 = 0;
  v44 = v10;
  v45 = 1;
  v46 = xmmword_AF7C30;
  swift_allocObject();
  v14 = TextStackView.Component.init(identifier:labelProperties:)(0xD000000000000015, 0x8000000000B63370, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_AF82E0;
  if (a1)
  {
    *(v15 + 32) = v13;
    *(v15 + 40) = v12;
  }

  else
  {
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
  }

  *(v15 + 48) = v14;
  v20[0] = v6;
  v20[1] = v11;
  v21 = xmmword_AF7C20;
  v22 = 0;
  v23 = 0;
  v24 = v10;
  v25 = 1;
  v26 = xmmword_AF7C30;
  sub_2F118(v53, v34);
  sub_2F118(v47, v34);
  sub_2F118(v41, v34);

  sub_2F174(v20);
  v27[0] = v6;
  v27[1] = v8;
  v28 = xmmword_AF7C20;
  v29 = 0;
  v30 = 0;
  v31 = v18;
  v32 = 1;
  v33 = xmmword_AF7C30;
  sub_2F174(v27);
  v34[0] = v3;
  v34[1] = v19;
  v35 = xmmword_AF7C20;
  v36 = 0;
  v37 = 0;
  v38 = v2;
  v39 = 1;
  v40 = xmmword_AF7C30;
  sub_2F174(v34);
  return v12;
}

double sub_49D760(void *a1)
{
  sub_49D368(0);
  v3 = v2;
  type metadata accessor for CGSize(0);
  if ((sub_AB38D0() & 1) == 0)
  {
    type metadata accessor for UIEdgeInsets(0);
    sub_AB38D0();
  }

  sub_2F48A4(v3, a1, 0, 0);

  return -1.0;
}

void sub_49D8B4(int a1)
{
  v2 = *(v1 + 17);
  *(v1 + 17) = a1;
  if (v2 != (a1 & 1))
  {
    v3 = *(v1 + 160);
    v4 = v3[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance];
    if (v4 != 2 && ((v4 ^ a1) & 1) != 0)
    {
      v3[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance] = a1 & 1;
      v5 = v3;
      sub_4ED6EC();
    }
  }
}

void sub_49D948(id a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
  if (!a1)
  {
    if (!v2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v2)
  {
    a1 = a1;
LABEL_8:
    v7 = a1;
    goto LABEL_9;
  }

  v6 = a1;
  sub_49F7E4();
  v7 = v6;
  v3 = v2;
  v4 = sub_ABA790();

  if ((v4 & 1) == 0)
  {
LABEL_9:
    sub_49E994();
    sub_49EB38(512);

    v5 = v2;
    goto LABEL_10;
  }

  v5 = v7;
LABEL_10:
}

void sub_49DA1C()
{
  v1 = v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v87 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  v88 = v5;
  v89 = v6;
  __chkstk_darwin();
  v86 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v10 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v12 = &v80 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v80 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v18 = &v80 - v17;
  v19 = *(v1 + 88);
  if (!v19)
  {
    return;
  }

  v83 = v3;
  v84 = v10;
  v20 = v2;
  v85 = v18;
  v21 = v8;
  v22 = *(v1 + 56);
  if (v22)
  {
    v23 = *(v1 + 64);
    v24 = v19;
    sub_307CC(v22, v23);
    v22(v1);
    sub_3FC30(v22, v23);
  }

  else
  {
    v25 = v19;
  }

  static ApplicationCapabilities.shared.getter(v105);
  v26 = v105[4];

  sub_70C54(v105);
  v27 = sub_472A84(3, v26);

  if ((v27 & 1) == 0)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v31 = *(v1 + 48);
      ObjectType = swift_getObjectType();
      (*(v31 + 8))(&v97, v1, ObjectType, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v101 = 1;
      v102 = 0;
      v103 = 0;
      v104 = 0;
    }

    v35 = *JSBridge.shared.unsafeMutableAddressor();
    sub_15F84(&v97, v96, &unk_DEA520, &unk_AFDBF0);
    v36 = swift_allocObject();
    *(v36 + 16) = 4;
    *(v36 + 24) = 0u;
    *(v36 + 40) = 0u;
    *(v36 + 56) = -1;
    sub_111814(v96, v36 + 64);
    *(v36 + 160) = 0;
    *(v36 + 168) = 0;
    v37 = *&stru_B8.segname[(swift_isaMask & *v35) + 16];
    v38 = v35;
    v37(sub_111884, v36);

    sub_12E1C(&v97, &unk_DEA520, &unk_AFDBF0);

    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = *(v1 + 32);
    v29 = swift_getObjectType();
    v30 = swift_allocObject();
    swift_weakInit();
    (*(v28 + 24))(v19, v1, sub_49F614, v30, v29, v28);
    swift_unknownObjectRelease();

    return;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v33 = *(v1 + 48);
    v34 = swift_getObjectType();
    (*(v33 + 8))(&v97, v1, v34, v33);
    swift_unknownObjectRelease();
  }

  else
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v101 = 1;
    v102 = 0;
    v103 = 0;
    v104 = 0;
  }

  v39 = v21;
  if (*(v1 + 97) != 1)
  {
    if (qword_DE6BE8 != -1)
    {
      swift_once();
    }

    sub_43E6CC(v19, &v97, 0, 0);

    goto LABEL_30;
  }

  v40 = v20;
  sub_15F84(&v97, &v92, &unk_DEA520, &unk_AFDBF0);
  if (v95 == 1)
  {
    sub_12E1C(&v97, &unk_DEA520, &unk_AFDBF0);

    sub_12E1C(&v92, &unk_DEA520, &unk_AFDBF0);
    return;
  }

  sub_17704(&v92, v96);
  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8, qword_B0F8E0);
  UnfairLock.locked<A>(_:)(sub_49F834);
  v41 = v92;
  v42 = v89;
  if (!v92 || (v43 = OBJC_IVAR____TtC11MusicJSCore15JSSocialProfile_editProfileLink, swift_beginAccess(), v44 = *&v41[v43], v82 = v44, v41, !v44))
  {

    sub_1611C(v96);
LABEL_30:
    sub_12E1C(&v97, &unk_DEA520, &unk_AFDBF0);
    return;
  }

  v81 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v45 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v90, 0, sizeof(v90));
  v91 = 0;
  (*(*(v45 - 8) + 56))(v85, 1, 1, v45);
  sub_15F84(v90, &v92, &unk_DE8E30, "\b]\r");
  v46 = *(&v93 + 1);
  v80 = v19;
  if (v46)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
    v47 = _s30CollectionViewSelectionHandlerVMa(0);
    v48 = swift_dynamicCast();
    v49 = *(v47 - 8);
    (*(v49 + 56))(v12, v48 ^ 1u, 1, v47);
    if ((*(v49 + 48))(v12, 1, v47) != 1)
    {
      v50 = &v12[*(v47 + 20)];
      v51 = v88;
      (*(v42 + 16))(v16, v50, v88);
      sub_2D6C0(v12, _s30CollectionViewSelectionHandlerVMa);
      v52 = v51;
      v53 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    sub_12E1C(&v92, &unk_DE8E30, "\b]\r");
    v54 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v54 - 8) + 56))(v12, 1, 1, v54);
  }

  sub_12E1C(v12, &qword_E037A0, &unk_AF8B30);
  v53 = 1;
  v52 = v88;
LABEL_33:
  (*(v42 + 56))(v16, v53, 1, v52);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v56 = Strong, sub_12B2FC(), v58 = v57, v60 = v59, v56, v58))
  {
    v61 = swift_getObjectType();
    (*(v60 + 8))(v61, v60);
    v63 = v62;
    swift_unknownObjectRelease();
    sub_15F84(v16, v14, &unk_DE8E20, &qword_AF7990);
    v64 = v88;
    if ((*(v42 + 48))(v14, 1, v88) == 1)
    {
      sub_12E1C(v14, &unk_DE8E20, &qword_AF7990);
      v92 = 0u;
      v93 = 0u;
      v94 = 0;
    }

    else
    {
      v66 = *(v42 + 32);
      v89 = v63;
      v66(v86, v14, v64);
      sub_2D668();
      v63 = v89;
      sub_ABAD10();
    }

    v67 = swift_getObjectType();
    v68 = v87;
    sub_3B8F68(v67);
    v65 = sub_21CCAC(1, v68, &v92, v67, v63);
    (*(v83 + 8))(v68, v40);
    sub_12E1C(&v92, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v16, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v16, &unk_DE8E20, &qword_AF7990);
    v65 = 0;
  }

  v69 = swift_unknownObjectWeakLoadStrong();
  if (v69)
  {
    v70 = v69;
    sub_12AFE8();
    v72 = v71;
  }

  else
  {
    v72 = 0;
  }

  sub_15F28(v96, &v92);
  v73 = v84;
  sub_15F84(v90, (v84 + 104), &unk_DE8E30, "\b]\r");
  v74 = v85;
  sub_15F84(v85, v73 + *(v39 + 28), &unk_DEA510, "\b]\r");
  *v73 = 0u;
  *(v73 + 16) = 0u;
  *(v73 + 32) = 0u;
  *(v73 + 48) = 0u;
  *(v73 + 64) = 1;
  *(v73 + 72) = 0;
  *(v73 + 80) = 0;
  *(v73 + 88) = 0;
  sub_2D594(&v92, v73);
  *(v73 + 96) = v19;
  v75 = *v81;
  *(&v93 + 1) = v39;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v92);
  sub_2D604(v73, boxed_opaque_existential_0);
  v77 = v80;
  v78 = v75;
  v79 = v82;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v82, 0, v65, v72, &v92);

  sub_12E1C(v74, &unk_DEA510, "\b]\r");
  sub_12E1C(v90, &unk_DE8E30, "\b]\r");
  sub_1611C(v96);
  sub_12E1C(&v97, &unk_DEA520, &unk_AFDBF0);
  sub_2D6C0(v73, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v92, &unk_DE8E40, &unk_AF8050);
}

double sub_49E680(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_49DA1C();
  }

  return result;
}

double sub_49E6D8()
{
  v1 = v0;
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    *(v0 + 136) = 0;

    v2 = 0;
  }

  else
  {
    if (qword_DE67B8 != -1)
    {
      swift_once();
    }

    v3 = qword_DE67A8;
    v4 = qword_E70D48;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = qword_E70D38;
    v6 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();

    *(v1 + 136) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v5, 1, 1, sub_49F830, v6);

    if (qword_DE6BF0 != -1)
    {
      swift_once();
    }

    v7 = qword_DE6BE8;
    v8 = qword_E71828;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = qword_E71820;
    v10 = swift_allocObject();
    swift_weakInit();
    swift_allocObject();

    v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v8, v9, 1, 1, sub_49F620, v10);
  }

  *(v1 + 144) = v2;

  return result;
}

id sub_49E930()
{
  if (qword_DE6BE0 != -1)
  {
    swift_once();
  }

  v1 = qword_E71818;
  qword_E71A80 = qword_E71818;

  return v1;
}

void sub_49E994()
{
  v1 = v0;
  v2 = v0[20];
  if (v0[14])
  {
    v3 = v0[15];
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = &v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_title];
  v6 = *&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_title];
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication12SocialButton_title + 8];
  *v5 = v3;
  *(v5 + 1) = v4;
  v8 = v2;
  sub_4EC5B8(v6, v7);

  v9 = *(v1 + 96);
  if ((v9 - 1) > 1)
  {
    v11 = v1[20];
    v13 = v11[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance];
    v11[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance] = 2;
    if (v13 == 2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = *(v1 + 17);
    v11 = v1[20];
    v12 = v11[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance];
    v11[OBJC_IVAR____TtC16MusicApplication12SocialButton_appearance] = v10;
    if (v12 != 2 && ((v10 ^ v12) & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  v14 = v11;
  sub_4ED6EC();

LABEL_10:
  v15 = v1[20];
  if (*(v1 + 97))
  {
    [v15 setHidden:(v1[2] & 1) == 0];
    [v1[20] setEnabled:*(v1 + 16)];
  }

  else
  {
    [v15 setEnabled:v9 != 4];
    [v1[20] setHidden:v9 == 4];
  }

  v16 = v1[20];
  [v16 setHidden:{objc_msgSend(v16, "isEnabled") ^ 1}];
}

void sub_49EB38(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  sub_AB35C0();
  __chkstk_darwin();
  v59 = &v55[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_AB9250();
  __chkstk_darwin();
  v58 = &v55[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *(v1 + 88);
  if ((v3 & 0xFF00) != 0x200)
  {
    v11 = (v3 >> 8) & 1;
    v12 = v6;
    goto LABEL_5;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 16);
    v10 = v6;
    LODWORD(v3) = v9(v6, v1, ObjectType, v7);
    swift_unknownObjectRelease();
    v11 = (v3 >> 8) & 1;
    goto LABEL_5;
  }

  if (v6)
  {
    v32 = v6;
    v33 = [v32 identifiers];
    v34 = [v33 universalStore];

    if (v34)
    {
      v35 = [v34 socialProfileID];
      if (v35)
      {
        v36 = v35;
        v37 = sub_AB92A0();
        v39 = v38;

        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      swift_unknownObjectRelease();
    }

    v37 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

LABEL_34:
  if (qword_DE67A8 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DED7C8, qword_B0F8E0);
  UnfairLock.locked<A>(_:)(sub_199998);
  v49 = v60;
  if (!v60)
  {
    if (v39)
    {
      goto LABEL_43;
    }

LABEL_46:
    v11 = 1;
    if (v6)
    {
      goto LABEL_50;
    }

LABEL_47:
    LOBYTE(v3) = 4;
    goto LABEL_5;
  }

  v50 = JSSocialProfile.profileID.getter();
  v52 = v51;

  if (!v39)
  {
    if (v52)
    {
      v11 = 0;
      goto LABEL_49;
    }

    goto LABEL_46;
  }

  if (!v52)
  {
LABEL_43:
    v11 = 0;
    goto LABEL_49;
  }

  if (v37 == v50 && v39 == v52)
  {

    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

LABEL_49:

  if (!v6)
  {
    goto LABEL_47;
  }

LABEL_50:
  if (v11)
  {
    v11 = 1;
    LOBYTE(v3) = 4;
  }

  else
  {
    v53 = qword_DE6BE8;
    v54 = v6;
    if (v53 != -1)
    {
      swift_once();
    }

    LOBYTE(v3) = sub_43D6A8(v54);

    v11 = 0;
  }

LABEL_5:
  if (!swift_unknownObjectWeakLoadStrong() || ((v57 = v6, v13 = *(v2 + 32), v14 = swift_getObjectType(), v15 = *(v2 + 88), v16 = *(v13 + 8), (v11 & 1) == 0) ? (v17 = 0) : (v17 = 256), v18 = v17 & 0xFFFFFF00 | v3, v19 = v15, v56 = v11, v20 = v3, v3 = v19, v21 = v13, v6 = v57, v22 = v16(v15, v18, v2, v14, v21), v24 = v23, v26 = v25, v28 = v27, swift_unknownObjectRelease(), v3, LOBYTE(v3) = v20, LOBYTE(v11) = v56, !v24))
  {
    if (v11)
    {
      v29 = 1953064005;
      v24 = 0xE400000000000000;
      v30 = v3;
LABEL_12:
      sub_AB91E0();
      sub_AB3550();
      LOBYTE(v3) = v30;
      v26 = sub_AB9320();
      v28 = v31;
      v22 = v29 | 0x20;
      goto LABEL_28;
    }

    if (v3 <= 1u)
    {
      if (v3)
      {
        v24 = 0xE900000000000064;
        v40 = 0x6574736575716552;
      }

      else
      {
        v40 = 0x776F6C6C6F46;
        v24 = 0xE600000000000000;
      }

      sub_AB91E0();
      sub_AB3550();
      v26 = sub_AB9320();
      v28 = v41;
      v22 = v40 | 0x20;
    }

    else
    {
      if (v3 == 2)
      {
        v24 = 0xE900000000000067;
        v29 = 0x6E69776F6C6C6F46;
        v30 = v3;
        goto LABEL_12;
      }

      if (v3 == 3)
      {
        v29 = 0x6B636F6C626E55;
        v24 = 0xE700000000000000;
        v30 = v3;
        goto LABEL_12;
      }

      v22 = 0;
      v24 = 0;
      v26 = 0;
      v28 = 0;
    }
  }

LABEL_28:
  v42 = *(v2 + 104);
  v43 = *(v2 + 112);
  v44 = *(v2 + 120);
  v45 = *(v2 + 128);
  *(v2 + 104) = v22;
  *(v2 + 112) = v24;
  *(v2 + 120) = v26;
  *(v2 + 128) = v28;
  sub_344D0C(v42, v43, v44, v45);
  v46 = *(v2 + 96);
  v47 = *(v2 + 97);
  *(v2 + 96) = v3;
  *(v2 + 97) = v11 & 1;
  if (v47)
  {
    v48 = 256;
  }

  else
  {
    v48 = 0;
  }

  sub_49F138(v48 | v46);
}

void sub_49F138(__int16 a1)
{
  v2 = *(v1 + 96);
  if (v2 == 4)
  {
    v3 = a1 == 4;
  }

  else
  {
    v3 = v2 == a1;
  }

  v4 = !v3;
  if ((v4 | *(v1 + 97) ^ ((a1 & 0x100) >> 8)))
  {
    sub_49E994();
    v5 = *(v1 + 72);
    if (v5)
    {
      v6 = *(v1 + 80);

      v5(v1);

      sub_3FC30(v5, v6);
    }
  }

  else if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();

    sub_49E994();
  }
}

double sub_49F210(__int16 a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_49EB38(a1 & 0x1FF);
  }

  return result;
}

uint64_t sub_49F270(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    if (v3 != 4)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  return a1[1] ^ a2[1] ^ 1u;
}

double sub_49F2AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_49EB38(512);
  }

  return result;
}

uint64_t sub_49F308()
{
  sub_176DC(v0 + 24);
  sub_176DC(v0 + 40);
  sub_3FC30(*(v0 + 56), *(v0 + 64));
  sub_3FC30(*(v0 + 72), *(v0 + 80));

  sub_344D0C(*(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return v0;
}

uint64_t sub_49F374()
{
  sub_49F308();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for ApplicationCapabilities.Tabs.Configuration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ApplicationCapabilities.Tabs.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_49F530()
{
  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_1117C4(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), v1 & 1);
  }

  if (*(v0 + 128) != 1)
  {
    swift_unknownObjectWeakDestroy();
    v2 = *(v0 + 112);
    if (v2 != 255)
    {
      sub_17774(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), v2);
    }

    if (*(v0 + 128))
    {
    }

    if (*(v0 + 144))
    {
    }
  }

  if (*(v0 + 160))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_49F5DC()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_49F63C(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = 1;
  *(v4 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 48) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + 88) = 0;
  *(v4 + 72) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 96) = 4;
  v7 = type metadata accessor for SocialButton();
  *(v4 + 104) = 0u;
  *(v4 + 120) = 0u;
  *(v4 + 136) = 0u;
  *(v4 + 152) = 0;
  *(v4 + 160) = [objc_allocWithZone(v7) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *(v4 + 48) = a3;
  swift_unknownObjectWeakAssign();
  [*(v4 + 160) setHidden:1];
  v8 = *(v4 + 160);
  v9 = v8[OBJC_IVAR____TtC16MusicApplication12SocialButton_controlSize];
  v8[OBJC_IVAR____TtC16MusicApplication12SocialButton_controlSize] = a1 & 1;
  if (v9 != (a1 & 1))
  {
    v10 = v8;
    sub_4ED6EC();
  }

  v11 = *(v4 + 160);
  v12 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for ControlEventHandler();
  swift_allocObject();
  *(v4 + 152) = ControlEventHandler.init<A>(control:events:handler:)(v11, 64, sub_49F7DC, v12, v7);

  sub_49E6D8();
  return v4;
}

unint64_t sub_49F7E4()
{
  result = qword_DED7C0;
  if (!qword_DED7C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DED7C0);
  }

  return result;
}

uint64_t sub_49F84C()
{
  v1 = v0;
  v9[0] = sub_ABA140();
  v2 = *(v9[0] - 8);
  __chkstk_darwin();
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_ABA100();
  __chkstk_darwin();
  sub_AB7C50();
  __chkstk_darwin();
  sub_60044();
  sub_AB7C30();
  v9[1] = _swiftEmptyArrayStorage;
  sub_305780();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E01270, &unk_B0BF10);
  sub_3057D8();
  sub_ABABB0();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v9[0]);
  *(v0 + 16) = sub_ABA180();
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  v5 = *ApplicationCapabilities.NotificationNames.activeAccountDidChange.unsafeMutableAddressor();
  v6 = *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor();
  v7 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for NotificationObserver();
  swift_allocObject();

  *(v1 + 40) = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v5, v6, 1, 1, sub_4A1368, v7);

  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  return v1;
}

double sub_49FB2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_AB7C50();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_AB7C10();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    sub_AB7C00();
    aBlock[4] = sub_4A1370;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_36_2;
    v13 = _Block_copy(aBlock);

    sub_AB7C30();
    sub_ABA160();
    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
    _Block_release(v13);
  }

  return result;
}

uint64_t sub_49FD68()
{
  type metadata accessor for UserAuthenticationRequestCoordinator();
  v0 = swift_allocObject();
  result = sub_49F84C();
  qword_E71A88 = v0;
  return result;
}

void sub_49FDA4(uint64_t a1, void (*a2)(void, id), uint64_t a3)
{
  v5 = a1;
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  static ApplicationCapabilities.shared.getter(v41);
  v6 = v41[4];

  sub_70C54(v41);
  v7 = sub_472A84(8, v6);

  if ((v7 & 1) == 0)
  {
    v14 = objc_allocWithZone(NSError);
    v15 = sub_AB9260();
    v16 = [v14 initWithDomain:v15 code:0 userInfo:0];

    if (a2)
    {
      v17 = v16;
      a2(0, v16);

      v16 = v17;
    }

    goto LABEL_22;
  }

  v38 = v3;
  v8 = [objc_allocWithZone(AKAppleIDAuthenticationController) init];
  if (v8)
  {
    v37 = v8;
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    sub_60044();

    static OS_dispatch_queue.syncOnMainIfNeeded(_:)(sub_4A138C, v9);

    swift_beginAccess();
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = objc_allocWithZone(AKAppleIDAuthenticationInAppContext);
      v12 = v10;
      v13 = [v11 init];
      [v13 setPresentingViewController:v12];
    }

    else
    {
      v13 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
    }

    v18 = *(v38 + 32);
    if (v18)
    {
      v19 = *(v38 + 32);
    }

    else
    {
      v20 = [objc_allocWithZone(ACAccountStore) init];
      v21 = [objc_allocWithZone(AIDAServiceOwnersManager) initWithAccountStore:v20];
      v19 = [v21 accountForService:AIDAServiceTypeStore];

      if (!v19)
      {
LABEL_18:
        sub_4A0B78(v5);
        [v13 setAuthenticationType:v28];
        [v13 setServiceType:2];
        [v13 setShouldAllowAppleIDCreation:1];
        v29 = [v13 username];
        if (v29)
        {
          v30 = v29;
          sub_AB92A0();
          v32 = v31;
        }

        else
        {
          v32 = 0;
        }

        [v13 setIsUsernameEditable:v32 == 0];
        sub_AB91E0();
        sub_AB3550();
        sub_AB9320();
        v33 = sub_AB9260();

        [v13 setTitle:v33];

        v34 = swift_allocObject();
        swift_weakInit();
        v35 = swift_allocObject();
        *(v35 + 16) = a2;
        *(v35 + 24) = a3;
        *(v35 + 32) = v34;
        *(v35 + 40) = v5;
        aBlock[4] = sub_4A1178;
        aBlock[5] = v35;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_4A0FA4;
        aBlock[3] = &block_descriptor_152;
        v36 = _Block_copy(aBlock);
        v16 = v13;
        sub_307CC(a2, a3);

        [v37 authenticateWithContext:v16 completion:v36];

        _Block_release(v36);

LABEL_22:

        return;
      }

      v18 = 0;
    }

    v22 = v18;
    v23 = [v19 username];
    [v13 setUsername:v23];

    v24 = [v19 ams_DSID];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 stringValue];
      if (v26)
      {
        v27 = v26;
      }

      else
      {
        sub_AB92A0();
        v27 = sub_AB9260();
      }
    }

    else
    {
      v27 = 0;
    }

    [v13 setDSID:v27];

    goto LABEL_18;
  }

  __break(1u);
}

void sub_4A03E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_4A08BC(a1, a2 == 0);
  if (v7)
  {
    v8 = v7;
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    sub_60044();

    static OS_dispatch_queue.syncOnMainIfNeeded(_:)(sub_4A1248, v9);

    swift_beginAccess();
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithRequest:v8 presentingViewController:v10];
      if (!a2)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v11 = [objc_allocWithZone(AMSAuthenticateTask) initWithRequest:v8];
      if (!a2)
      {
LABEL_28:
        v22 = [v11 performAuthentication];
        v23 = swift_allocObject();
        *(v23 + 16) = a3;
        *(v23 + 24) = a4;
        aBlock[4] = sub_4A1264;
        aBlock[5] = v23;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_151E0;
        aBlock[3] = &block_descriptor_20_5;
        v24 = _Block_copy(aBlock);
        sub_307CC(a3, a4);

        [v22 addFinishBlock:v24];

        _Block_release(v24);

        return;
      }
    }

    sub_AB92A0();
    sub_ABAD10();
    if (*(a2 + 16) && (v13 = sub_2EC004(aBlock), (v14 & 1) != 0))
    {
      sub_808B0(*(a2 + 56) + 32 * v13, v25);
      sub_8085C(aBlock);
      if (swift_dynamicCast())
      {
        v15 = sub_AB9260();

LABEL_15:
        [v11 setUsername:v15];

        sub_AB92A0();
        sub_ABAD10();
        if (*(a2 + 16) && (v16 = sub_2EC004(aBlock), (v17 & 1) != 0))
        {
          sub_808B0(*(a2 + 56) + 32 * v16, v25);
          sub_8085C(aBlock);
          if (swift_dynamicCast())
          {
            v18 = sub_AB9260();

LABEL_21:
            [v11 setPassword:v18];

            sub_AB92A0();
            sub_ABAD10();
            if (*(a2 + 16) && (v19 = sub_2EC004(aBlock), (v20 & 1) != 0))
            {
              sub_808B0(*(a2 + 56) + 32 * v19, v25);
              sub_8085C(aBlock);
              if (swift_dynamicCast())
              {
                v21 = sub_AB9260();

LABEL_27:
                [v11 setAltDSID:v21];

                goto LABEL_28;
              }
            }

            else
            {
              sub_8085C(aBlock);
            }

            v21 = 0;
            goto LABEL_27;
          }
        }

        else
        {
          sub_8085C(aBlock);
        }

        v18 = 0;
        goto LABEL_21;
      }
    }

    else
    {
      sub_8085C(aBlock);
    }

    v15 = 0;
    goto LABEL_15;
  }

  sub_60044();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  sub_307CC(a3, a4);
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4A1210, v12);
}

id sub_4A08BC(uint64_t a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a1;
  v5 = [objc_allocWithZone(AMSAuthenticateOptions) init];
  sub_4A0B78(v4);
  [v5 setAuthenticationType:v6];
  if (a2)
  {
    v7 = *(v2 + 32);
    v8 = v7;
    if (!v7)
    {
      v9 = [objc_allocWithZone(ACAccountStore) init];
      v10 = [objc_allocWithZone(AIDAServiceOwnersManager) initWithAccountStore:v9];
      v8 = [v10 accountForService:AIDAServiceTypeStore];
    }

    v11 = objc_allocWithZone(AMSAuthenticateRequest);
    v12 = v7;
    v13 = [v11 initWithAccount:v8 options:v5];

    v5 = v8;
  }

  else
  {
    v13 = [objc_allocWithZone(AMSAuthenticateRequest) initWithAccount:0 options:v5];
  }

  return v13;
}

double sub_4A0A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 != 0;
  sub_60044();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  *(v8 + 32) = v7;
  *(v8 + 40) = a2;
  sub_307CC(a3, a4);
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4A12B4, v8);

  return result;
}

void sub_4A0AD0(uint64_t a1)
{
  sub_D5B6C();
  if (!v2)
  {
    memset(v6, 0, sizeof(v6));
    v7 = 1;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    goto LABEL_5;
  }

  v3 = v2;
  static PresentationSource.topmost(in:)(v6);

  if (v7 == 1)
  {
LABEL_5:
    sub_111898(v6);
    Strong = 0;
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1611C(v6);
LABEL_6:
  swift_beginAccess();
  v5 = *(a1 + 16);
  *(a1 + 16) = Strong;
}

void sub_4A0B78(char a1)
{
  v3 = sub_AB7CC0();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = (&aBlock[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.notOnQueue(_:), v3, v5);
  v9 = v8;
  v10 = sub_AB7CF0();
  (*(v4 + 8))(v7, v3);
  if (v10)
  {
    v17 = 1;
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = &v17;
    *(v11 + 32) = v1;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_4A1324;
    *(v12 + 24) = v11;
    aBlock[4] = sub_2D4D0;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1822E0;
    aBlock[3] = &block_descriptor_32_1;
    v13 = _Block_copy(aBlock);

    dispatch_sync(v9, v13);
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_4A0DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  sub_60044();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  *(v12 + 56) = a1;
  swift_errorRetain();
  sub_307CC(a3, a4);

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4A11F8, v12);

  return result;
}

void sub_4A0E9C(uint64_t a1, void (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a2)
    {
      swift_errorRetain();
      a2(0, a1);
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      if (a6)
      {
        sub_3E9844(a6);
        a6 = v11;
      }

      sub_4A03E8(a5, a6, a2, a3);
    }

    else if (a2)
    {
      a2(0, 0);
    }
  }
}

double sub_4A0FA4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0A750, &qword_B0D6F8);
    v4 = sub_AB8FF0();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t sub_4A1054()
{

  return swift_deallocClassInstance();
}

uint64_t sub_4A10C0()
{

  return swift_deallocObject();
}

uint64_t sub_4A10F8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_4A1130()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

double block_copy_helper_152(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_4A11A0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4A1210()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(0, 0);
  }

  return result;
}

uint64_t sub_4A126C()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_4A12B4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32), *(v0 + 40));
  }

  return result;
}

uint64_t sub_4A12EC()
{

  return swift_deallocObject();
}

void sub_4A1324()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 == 3)
  {
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    v3 = *(v0 + 32);
    if ((*(v3 + 24) & 1) == 0)
    {
      *(v3 + 24) = 1;
LABEL_5:
      *v2 = 0;
    }
  }
}

void sub_4A1370()
{
  *(v0 + 24) = 0;
  v1 = *(v0 + 32);
  *(v0 + 32) = 0;
}

uint64_t sub_4A13A0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a8;
  v37 = a1;
  v38 = a2;
  v10 = *(a5 - 8);
  __chkstk_darwin();
  v39 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v41 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  v13 = &v26 - v12;
  __chkstk_darwin();
  v35 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v29 = *(v15 - 8);
  v30 = v15;
  __chkstk_darwin();
  v17 = &v26 - v16;
  v18 = sub_AB9C70();
  if (!v18)
  {
    return sub_AB97C0();
  }

  v40 = v18;
  v44 = sub_ABAF10();
  v31 = sub_ABAF20();
  sub_ABAEB0(v40);
  result = sub_AB9C60();
  if ((v40 & 0x8000000000000000) == 0)
  {
    v26 = v10;
    v27 = a5;
    v20 = 0;
    v32 = (v41 + 16);
    v33 = (v41 + 8);
    v34 = v8;
    while (!__OFADD__(v20, 1))
    {
      v41 = v20 + 1;
      v21 = sub_AB9D80();
      v22 = v13;
      v23 = v13;
      v24 = AssociatedTypeWitness;
      (*v32)(v22);
      v21(v43, 0);
      v25 = v42;
      v37(v23, v39);
      if (v25)
      {
        (*v33)(v23, v24);
        (*(v29 + 8))(v17, v30);

        return (*(v26 + 32))(v28, v39, v27);
      }

      v42 = 0;
      (*v33)(v23, v24);
      sub_ABAF00();
      result = sub_AB9CB0();
      ++v20;
      v13 = v23;
      if (v41 == v40)
      {
        (*(v29 + 8))(v17, v30);
        return v44;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_4A17C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v16 = a1;
  v13[16] = a4;
  v13[17] = a3;
  v14 = a2;
  v15 = a7;
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = sub_4A38D4;
  v12[5] = v13;
  type metadata accessor for PrincipalImpressionTracker.History(255, a5, a6, a4);
  v7 = sub_AB9080();
  v8 = type metadata accessor for JSImpression();
  WitnessTable = swift_getWitnessTable();
  return sub_4A13A0(sub_4A38E8, v12, v7, v8, &type metadata for Never, WitnessTable, &protocol witness table for Never, v10);
}

void sub_4A18B4()
{
  v0 = [objc_opt_self() standardUserDefaults];
  byte_E71A90 = sub_4A1924() & 1;
}

uint64_t sub_4A1924()
{
  sub_36A48();
  NSUserDefaults.subscript.getter(&v1);
  if (v2)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return 26;
    }
  }

  else
  {
    sub_9BC10(&v1);
    return 0;
  }

  return result;
}

uint64_t sub_4A19BC(unint64_t a1, __n128 a2)
{
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_27:
    v4 = sub_ABB060();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
LABEL_3:
      v5 = 0;
      v6 = _swiftEmptyArrayStorage;
      while (1)
      {
        v23 = v6;
        v7 = v5;
        while (1)
        {
          if ((a1 & 0xC000000000000001) != 0)
          {
            v8 = sub_35FC58(v7, a1, a2);
          }

          else
          {
            if (v7 >= *(v3 + 16))
            {
              goto LABEL_26;
            }

            v8 = *(a1 + 8 * v7 + 32);
          }

          v9 = v8;
          v5 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v10 = *&v8[OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields];
          strcpy(v24, "impressionId");
          BYTE5(v24[1]) = 0;
          HIWORD(v24[1]) = -5120;
          sub_ABAD10();
          if (*(v10 + 16))
          {
            v11 = sub_2EC004(v25);
            if (v12)
            {
              break;
            }
          }

          sub_8085C(v25);
LABEL_6:

          ++v7;
          if (v5 == v4)
          {
            v6 = v23;
            goto LABEL_23;
          }
        }

        sub_808B0(*(v10 + 56) + 32 * v11, v26);
        sub_8085C(v25);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_6;
        }

        v22 = v24[0];
        v13 = v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v13 = sub_6ABB0(0, v23[2] + 1, 1, v23);
        }

        v16 = v13[2];
        v15 = v13[3];
        v17 = v13;
        if (v16 >= v15 >> 1)
        {
          v17 = sub_6ABB0((v15 > 1), v16 + 1, 1, v13);
        }

        v17[2] = v16 + 1;
        v18 = &v17[2 * v16];
        v6 = v17;
        v18[4] = v22;
        v18[5] = v9;
        if (v5 == v4)
        {
LABEL_23:
          if (!v6[2])
          {
            goto LABEL_29;
          }

LABEL_24:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFF008, &unk_B0A330);
          v19 = sub_ABB0C0();
          goto LABEL_30;
        }
      }
    }
  }

  if (_swiftEmptyArrayStorage[2])
  {
    goto LABEL_24;
  }

LABEL_29:
  v19 = _swiftEmptyDictionarySingleton;
LABEL_30:
  v25[0] = v19;

  sub_4A3098(v20, 1, v25);

  return v25[0];
}

uint64_t sub_4A1C70@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(*a1 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
  sub_ABAD10();
  if (!*(v5 + 16) || (v6 = sub_2EC004(v11), (v7 & 1) == 0))
  {
    result = sub_8085C(v11);
LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  sub_808B0(*(v5 + 56) + 32 * v6, v12);
  sub_8085C(v11);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_8;
  }

  if (!*(a2 + 16))
  {
    goto LABEL_8;
  }

  result = sub_2F5A90(0xD000000000000012);
  if ((v9 & 1) == 0)
  {
    goto LABEL_8;
  }

  v10 = *(*(a2 + 56) + 8 * result);
  result = v10;
LABEL_9:
  *a3 = v10;
  return result;
}

void sub_4A1D7C(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = sub_97420(_swiftEmptyArrayStorage);
  v5 = OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields;
  v6 = *(v3 + OBJC_IVAR____TtC11MusicJSCore12JSImpression_fields);
  *&v30 = 25705;
  *(&v30 + 1) = 0xE200000000000000;
  sub_ABAD10();
  if (*(v6 + 16) && (v7 = sub_2EC004(&v31), (v8 & 1) != 0))
  {
    sub_808B0(*(v6 + 56) + 32 * v7, v33);
    sub_8085C(&v31);
    if (swift_dynamicCast())
    {
      v32 = &type metadata for String;
      v31 = v30;
      sub_9ACFC(&v31, v33);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v30 = v4;
      sub_9330C(v33, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
    }
  }

  else
  {
    sub_8085C(&v31);
  }

  v10 = *(v3 + v5);
  *&v30 = 1701667182;
  *(&v30 + 1) = 0xE400000000000000;
  sub_ABAD10();
  if (*(v10 + 16) && (v11 = sub_2EC004(&v31), (v12 & 1) != 0))
  {
    sub_808B0(*(v10 + 56) + 32 * v11, v33);
    sub_8085C(&v31);
    if (swift_dynamicCast())
    {
      v32 = &type metadata for String;
      v31 = v30;
      sub_9ACFC(&v31, v33);
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *&v30 = v4;
      sub_9330C(v33, 1701667182, 0xE400000000000000, v13);
    }
  }

  else
  {
    sub_8085C(&v31);
  }

  v14 = *(v3 + v5);
  strcpy(&v30, "impressionType");
  HIBYTE(v30) = -18;
  sub_ABAD10();
  if (*(v14 + 16) && (v15 = sub_2EC004(&v31), (v16 & 1) != 0))
  {
    sub_808B0(*(v14 + 56) + 32 * v15, v33);
    sub_8085C(&v31);
    if (swift_dynamicCast())
    {
      v32 = &type metadata for String;
      v31 = v30;
      sub_9ACFC(&v31, v33);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *&v30 = v4;
      sub_9330C(v33, 0x6E6F697461636F6CLL, 0xEC00000065707954, v17);
    }
  }

  else
  {
    sub_8085C(&v31);
  }

  v18 = *(v3 + v5);
  *&v30 = 0x6973736572706D69;
  *(&v30 + 1) = 0xEF7865646E496E6FLL;
  sub_ABAD10();
  if (*(v18 + 16) && (v19 = sub_2EC004(&v31), (v20 & 1) != 0))
  {
    sub_808B0(*(v18 + 56) + 32 * v19, v33);
    sub_8085C(&v31);
    if (swift_dynamicCast())
    {
      v32 = &type metadata for Int;
      *&v31 = v30;
      sub_9ACFC(&v31, v33);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *&v30 = v4;
      sub_9330C(v33, 0xD000000000000010, 0x8000000000B66470, v21);
    }
  }

  else
  {
    sub_8085C(&v31);
  }

  v22 = *(v3 + v5);
  *&v30 = 1684957547;
  *(&v30 + 1) = 0xE400000000000000;
  sub_ABAD10();
  if (*(v22 + 16) && (v23 = sub_2EC004(&v31), (v24 & 1) != 0))
  {
    sub_808B0(*(v22 + 56) + 32 * v23, v33);
    sub_8085C(&v31);
    if (swift_dynamicCast())
    {
      v32 = &type metadata for String;
      v31 = v30;
      sub_9ACFC(&v31, v33);
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *&v30 = v4;
      sub_9330C(v33, 1684957547, 0xE400000000000000, v25);
    }
  }

  else
  {
    sub_8085C(&v31);
  }

  v26 = *(v3 + v5);
  *&v30 = 0xD000000000000013;
  *(&v30 + 1) = 0x8000000000B5B050;
  sub_ABAD10();
  if (*(v26 + 16) && (v27 = sub_2EC004(&v31), (v28 & 1) != 0))
  {
    sub_808B0(*(v26 + 56) + 32 * v27, v33);
    sub_8085C(&v31);
    if (swift_dynamicCast())
    {
      v32 = &type metadata for String;
      v31 = v30;
      sub_9ACFC(&v31, v33);
      v29 = swift_isUniquelyReferenced_nonNull_native();
      *&v30 = v4;
      sub_9330C(v33, 0xD000000000000013, 0x8000000000B5B050, v29);
    }
  }

  else
  {
    sub_8085C(&v31);
  }

  *a2 = v4;
}

uint64_t *sub_4A232C(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, char a5, char a6, uint64_t a7)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v53 = *(a4 + 7);
  v54 = v11;
  *v55 = *(a4 + 9);
  *&v55[9] = *(a4 + 153);
  v12 = *(a4 + 4);
  v49 = *(a4 + 3);
  v50 = v12;
  v13 = *(a4 + 6);
  v51 = *(a4 + 5);
  v52 = v13;
  v14 = *(a4 + 2);
  v47 = *(a4 + 1);
  v48 = v14;
  v15 = v10;
  v16 = sub_27AB70();
  strcpy(&v42, "impressionId");
  BYTE13(v42) = 0;
  HIWORD(v42) = -5120;
  sub_ABAD10();
  v17 = a4[22];
  v43 = &type metadata for Int;
  *&v42 = v17;
  sub_9ACFC(&v42, v44);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_913C0(v44, v45, isUniquelyReferenced_nonNull_native);
  sub_8085C(v45);
  v19 = v16;
  v46 = v16;
  if ((a4[24] & 1) == 0)
  {
    v20 = a4[23];
    *&v42 = 0xD000000000000012;
    *(&v42 + 1) = 0x8000000000B5D560;
    sub_ABAD10();
    v43 = &type metadata for Int;
    *&v42 = v20;
    sub_9ACFC(&v42, v44);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v44, v45, v21);
    sub_8085C(v45);
    v46 = v19;
  }

  v22 = *(a4 + 193);
  if (v22 != 2)
  {
    strcpy(&v42, "motionActive");
    BYTE13(v42) = 0;
    HIWORD(v42) = -5120;
    sub_ABAD10();
    v43 = &type metadata for Bool;
    LOBYTE(v42) = v22 & 1;
    sub_9ACFC(&v42, v44);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v44, v45, v23);
    sub_8085C(v45);
    *&v42 = 0x76416E6F69746F6DLL;
    *(&v42 + 1) = 0xEF656C62616C6961;
    sub_ABAD10();
    v43 = &type metadata for Bool;
    LOBYTE(v42) = v22 & 1;
    sub_9ACFC(&v42, v44);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v44, v45, v24);
    sub_8085C(v45);
    v46 = v19;
  }

  if (v50 != 2)
  {
    v56 = v50;
    *&v42 = 0x76416E6F69746F6DLL;
    *(&v42 + 1) = 0xEF656C62616C6961;
    sub_ABAD10();
    sub_ABAD10();
    if (*(v19 + 16) && (v25 = sub_2EC004(&v42), (v26 & 1) != 0))
    {
      sub_808B0(*(v19 + 56) + 32 * v25, v44);
      sub_8085C(&v42);
      if (swift_dynamicCast())
      {
        v27 = 1;
LABEL_12:
        v43 = &type metadata for Bool;
        LOBYTE(v42) = v27 & 1;
        sub_9ACFC(&v42, v44);
        v28 = v46;
        v29 = swift_isUniquelyReferenced_nonNull_native();
        sub_913C0(v44, v45, v29);
        sub_8085C(v45);
        v19 = v28;
        v46 = v28;
        goto LABEL_13;
      }
    }

    else
    {
      sub_8085C(&v42);
    }

    v27 = v56 & a5;
    goto LABEL_12;
  }

LABEL_13:
  if (a6)
  {
    *&v42 = 0x6973736572706D69;
    *(&v42 + 1) = 0xEF73656D69546E6FLL;
    sub_ABAD10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA840, &qword_AF8E40);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_AF4EC0;
    sub_AB33D0();
    *(v30 + 32) = Double.toMillisecondsInServerTime.getter(v31);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD70, qword_B122A0);
    *&v42 = v30;
    sub_9ACFC(&v42, v44);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_913C0(v44, v45, v32);
    sub_8085C(v45);
    v33 = v19;
    v46 = v19;
  }

  else
  {
    swift_beginAccess();
    v34 = *(v15 + 80);
    v35 = *(v15 + 88);

    sub_4A28A4(v36, a1, a7, &v46, v34, v35);

    v33 = v46;
  }

  v37 = *(&v51 + 1);
  objc_allocWithZone(type metadata accessor for JSImpression());
  v38 = v37;
  return JSImpression.init(fields:jsObject:)(v33, v37);
}

void sub_4A28A4(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for PrincipalImpressionTracker.History.Event(0, a5, a6, a5);
  if (sub_AB9850())
  {
    v41 = 0.0;
    v8 = 0;
    v38 = a2;
    v9 = a1 + 40;
    v10 = 0.0;
    v11 = 1;
    v12 = 1;
    v39 = _swiftEmptyArrayStorage;
    v40 = _swiftEmptyArrayStorage;
    while (1)
    {
      v16 = sub_AB97E0();
      sub_AB9790();
      if ((v16 & 1) == 0)
      {
        sub_ABAE10();
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

      v17 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_71;
      }

      v18 = *(v9 - 8);
      v19 = *v9;
      if (!static LaunchURL.Resolver.PerformOption.__derived_enum_equals(_:_:)(v19, 0))
      {
        v13 = static LaunchURL.Resolver.PerformOption.__derived_enum_equals(_:_:)(v19, 1);
        v14 = v18;
        v15 = v41;
        if (v12)
        {
          v14 = v41;
        }

        if (v13)
        {
          v15 = v14;
        }

        v41 = v15;
        if (v13)
        {
          v11 = v12 & v11;
        }

        else
        {
          v11 = v11;
        }

        goto LABEL_10;
      }

      if (v12)
      {
        v12 = 0;
        v10 = v18;
      }

      else if (v11)
      {
        v12 = 0;
        v11 = 1;
      }

      else
      {
        if (v18 - v41 >= 0.0166666667)
        {
          if (v41 - v10 > 0.0166666667)
          {
            v16 = sub_4A36D8(v10, v41);

            v12 = v40;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v12 = sub_6A7D8(0, v40[2] + 1, 1, v40);
            }

            v11 = *(v12 + 16);
            v20 = *(v12 + 24);
            if (v11 >= v20 >> 1)
            {
              v12 = sub_6A7D8((v20 > 1), v11 + 1, 1, v12);
            }

            *(v12 + 16) = v11 + 1;
            *(v12 + 8 * v11 + 32) = v16;
            if (!*(v16 + 16))
            {
              goto LABEL_72;
            }

            v21 = sub_2EBF88(100, 0xE100000000000000);
            if ((v22 & 1) == 0)
            {
              goto LABEL_73;
            }

            if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_74;
            }

            if (a2 <= -1.0)
            {
              goto LABEL_75;
            }

            if (a2 >= 1.84467441e19)
            {
              goto LABEL_76;
            }

            v40 = v12;
            if (*(*(v16 + 56) + 8 * v21) > v38)
            {
              if (!*(v16 + 16))
              {
                goto LABEL_83;
              }

              v23 = sub_2EBF88(115, 0xE100000000000000);
              if ((v24 & 1) == 0)
              {
                goto LABEL_84;
              }

              v37 = *(*(v16 + 56) + 8 * v23);

              v25 = v39;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v25 = sub_6A7C4(0, *(v39 + 2) + 1, 1, v39);
              }

              v27 = *(v25 + 2);
              v26 = *(v25 + 3);
              if (v27 >= v26 >> 1)
              {
                v39 = sub_6A7C4((v26 > 1), v27 + 1, 1, v25);
              }

              else
              {
                v39 = v25;
              }

              v41 = 0.0;
              v12 = 0;
              *(v39 + 2) = v27 + 1;
              *&v39[8 * v27 + 32] = v37;
              goto LABEL_40;
            }
          }

          v41 = 0.0;
          v12 = 0;
LABEL_40:
          v11 = 1;
          v10 = v18;
          goto LABEL_10;
        }

        v41 = 0.0;
        v12 = 0;
        v11 = 1;
      }

LABEL_10:
      ++v8;
      v9 += 16;
      if (v17 == sub_AB9850())
      {
        if (v12)
        {
          v11 = v39;
          v12 = v40;
          if (v40[2])
          {
            goto LABEL_47;
          }

          goto LABEL_44;
        }

        if (v11)
        {
          sub_AB33D0();
          v29 = v28;
        }

        else
        {
          v29 = v41;
        }

        v12 = v40;
        v16 = sub_4A36D8(v10, v29);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_53:
          v9 = *(v12 + 16);
          v30 = *(v12 + 24);
          if (v9 >= v30 >> 1)
          {
            v12 = sub_6A7D8((v30 > 1), v9 + 1, 1, v12);
          }

          *(v12 + 16) = v9 + 1;
          *(v12 + 8 * v9 + 32) = v16;
          if (*(v16 + 16))
          {
            v31 = sub_2EBF88(100, 0xE100000000000000);
            if (v32)
            {
              if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (a2 > -1.0)
                {
                  if (a2 < 1.84467441e19)
                  {
                    if (*(*(v16 + 56) + 8 * v31) <= v38)
                    {

                      v11 = v39;
                      if (*(v12 + 16))
                      {
                        goto LABEL_47;
                      }

                      goto LABEL_44;
                    }

                    v11 = v39;
                    if (*(v16 + 16))
                    {
                      v33 = sub_2EBF88(115, 0xE100000000000000);
                      if (v34)
                      {
                        v9 = *(*(v16 + 56) + 8 * v33);

                        if (swift_isUniquelyReferenced_nonNull_native())
                        {
                          goto LABEL_64;
                        }

LABEL_87:
                        v11 = sub_6A7C4(0, *(v11 + 16) + 1, 1, v11);
LABEL_64:
                        v36 = *(v11 + 16);
                        v35 = *(v11 + 24);
                        if (v36 >= v35 >> 1)
                        {
                          v11 = sub_6A7C4((v35 > 1), v36 + 1, 1, v11);
                        }

                        *(v11 + 16) = v36 + 1;
                        *(v11 + 8 * v36 + 32) = v9;
                        if (*(v12 + 16))
                        {
                          goto LABEL_47;
                        }

LABEL_44:

                        if (!*(v11 + 16))
                        {
                          goto LABEL_45;
                        }

LABEL_48:
                        v42 = 0x6973736572706D69;
                        v43 = 0xEF73656D69546E6FLL;
                        sub_ABAD10();
                        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD70, qword_B122A0);
                        v42 = v11;
                        sub_2E4B68(&v42, v45);
                        return;
                      }

LABEL_86:
                      __break(1u);
                      goto LABEL_87;
                    }

LABEL_85:
                    __break(1u);
                    goto LABEL_86;
                  }

LABEL_82:
                  __break(1u);
LABEL_83:
                  __break(1u);
LABEL_84:
                  __break(1u);
                  goto LABEL_85;
                }

LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

LABEL_80:
              __break(1u);
              goto LABEL_81;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_80;
        }

LABEL_77:
        v12 = sub_6A7D8(0, *(v12 + 16) + 1, 1, v12);
        goto LABEL_53;
      }
    }
  }

  v12 = _swiftEmptyArrayStorage;
  v11 = _swiftEmptyArrayStorage;
  if (!_swiftEmptyArrayStorage[2])
  {
    goto LABEL_44;
  }

LABEL_47:
  v43 = 0xEA00000000006F66;
  sub_ABAD10();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFDD78, &qword_B08B70);
  v42 = v12;
  sub_2E4B68(&v42, v45);
  if (*(v11 + 16))
  {
    goto LABEL_48;
  }

LABEL_45:
}

uint64_t sub_4A2F4C()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  qword_E0A758 = result;
  return result;
}

void sub_4A2F8C()
{
  if (__OFADD__(qword_E0A760, 1))
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  if (qword_E0A760 != 0x7FFFFFFFFFFFFFFELL)
  {
    ++qword_E0A760;
    return;
  }

  qword_E0A760 = 0;
  if (qword_DE6888 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v0 = sub_AB4BC0();
  __swift_project_value_buffer(v0, qword_E70EB0);
  v1 = sub_AB4BA0();
  v2 = sub_AB9F30();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_0, v1, v2, "Coordinator ID reached maximum value.  Reset to zero to avoid overflow.", v3, 2u);
  }
}

void sub_4A3098(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_23;
  }

  v6 = a1[4];
  v5 = a1[5];
  v7 = *a3;
  v8 = sub_2F5A90(v6);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  v16 = v5;
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_330E04();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF3F90, &unk_AF98B0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_327138(v12, a2 & 1);
  v17 = sub_2F5A90(v6);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_ABB4C0();
    __break(1u);
LABEL_29:
    sub_ABAD90(30);
    v43._object = 0x8000000000B5D6F0;
    v43._countAndFlagsBits = 0xD00000000000001BLL;
    sub_AB94A0(v43);
    sub_ABAF70();
    v44._countAndFlagsBits = 39;
    v44._object = 0xE100000000000000;
    sub_AB94A0(v44);
    sub_ABAFD0();
    __break(1u);
    return;
  }

  v13 = v17;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v19 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v19[6] + 8 * v13) = v6;
  *(v19[7] + 8 * v13) = v16;
  v20 = v19[2];
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v19[2] = v22;
  if (v41 != 1)
  {
    v23 = (a1 + 7);
    v24 = 1;
    while (v24 < a1[2])
    {
      v26 = *(v23 - 1);
      v25 = *v23;
      v27 = *a3;
      v28 = sub_2F5A90(v26);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v32 = v30 + v31;
      if (__OFADD__(v30, v31))
      {
        goto LABEL_25;
      }

      v33 = v28;
      v34 = v29;
      v35 = v27[3];
      v16 = v25;
      if (v35 < v32)
      {
        sub_327138(v32, 1);
        v36 = sub_2F5A90(v26);
        if ((v34 & 1) != (v37 & 1))
        {
          goto LABEL_28;
        }

        v33 = v36;
      }

      if (v34)
      {
        goto LABEL_9;
      }

      v38 = *a3;
      *(*a3 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      *(v38[6] + 8 * v33) = v26;
      *(v38[7] + 8 * v33) = v16;
      v39 = v38[2];
      v21 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v21)
      {
        goto LABEL_26;
      }

      ++v24;
      v38[2] = v40;
      v23 += 2;
      if (v41 == v24)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

void *sub_4A340C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v25 = _swiftEmptyArrayStorage;
    v4 = a1;

    sub_6D4F0(0, 0, 0);
    v5 = _swiftEmptyArrayStorage;
    v6 = v4;
    v24 = v6;
    sub_4A1D7C(&v24, &v23);

    v7 = v23;
    v9 = _swiftEmptyArrayStorage[2];
    v8 = _swiftEmptyArrayStorage[3];
    if (v9 >= v8 >> 1)
    {
      sub_6D4F0((v8 > 1), v9 + 1, 1);
      v5 = v25;
    }

    v5[2] = v9 + 1;
    v5[v9 + 4] = v7;
    v22 = a1;
    for (i = a1; ; i = v12)
    {
      v11 = i;
      sub_4A1C70(&v22, a2, &v23);

      v12 = v23;
      v13 = v23;

      if (!v12)
      {
        break;
      }

      v24 = v13;
      sub_4A1D7C(&v24, &v23);

      v14 = v23;
      v25 = v5;
      v16 = v5[2];
      v15 = v5[3];
      if (v16 >= v15 >> 1)
      {
        sub_6D4F0((v15 > 1), v16 + 1, 1);
        v5 = v25;
      }

      v5[2] = v16 + 1;
      v5[v16 + 4] = v14;
      v22 = v12;
    }
  }

  else
  {
    if (qword_DE6888 != -1)
    {
      swift_once();
    }

    v17 = sub_AB4BC0();
    __swift_project_value_buffer(v17, qword_E70EB0);
    v18 = sub_AB4BA0();
    v19 = sub_AB9F10();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "No clicked element was found. Please verify that the clicked element is tracked in the impression hierarchy", v20, 2u);
    }

    return _swiftEmptyArrayStorage;
  }

  return v5;
}

void *sub_4A365C(uint64_t a1, unint64_t a2, __n128 a3)
{
  v4 = sub_4A19BC(a2, a3);
  if (*(v4 + 16) && (v5 = sub_2F5A90(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    v8 = v7;
  }

  else
  {
    v7 = 0;
  }

  v9 = sub_4A340C(v7, v4);

  return v9;
}

uint64_t sub_4A36D8(double a1, double a2)
{
  v17 = sub_AB9020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA850, &qword_AF8E50);
  sub_AB9030(3);
  v4 = Double.toMillisecondsInServerTime.getter(a1);
  v5 = Double.toMillisecondsInServerTime.getter(a2);
  v6 = v5 - v4;
  if (v5 >= v4)
  {
    v13 = v17;
  }

  else
  {
    v7 = v5;
    if (qword_DE6888 != -1)
    {
      swift_once();
    }

    v8 = sub_AB4BC0();
    __swift_project_value_buffer(v8, qword_E70EB0);
    v9 = sub_AB4BA0();
    v10 = sub_AB9F30();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134218240;
      *(v11 + 4) = a2;
      *(v11 + 12) = 2048;
      *(v11 + 14) = a1;
      _os_log_impl(&dword_0, v9, v10, "Overflow detected when subtracting %f %f. Reporting truncated duration value", v11, 0x16u);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_95214(v7, 101, 0xE100000000000000, isUniquelyReferenced_nonNull_native);
    v13 = v17;
  }

  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_95214(v4, 115, 0xE100000000000000, v14);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_95214(v6, 100, 0xE100000000000000, v15);
  return v13;
}

uint64_t sub_4A38E8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 32))(*a1, a1[1], a1[2]);
  *a2 = result;
  return result;
}

double sub_4A3934(uint64_t a1)
{
  if (*(v1 + 81) != 1)
  {
    return result;
  }

  v2 = v1;
  v4 = sub_4A3ECC(v21);
  if (*v5)
  {
    sub_1A5B0(v20, a1);
  }

  (v4)(v21, 0);
  swift_beginAccess();
  v7 = *(v1 + 112);
  if (!*(v7 + 16))
  {
    return result;
  }

  v8 = sub_2F5A90(a1);
  if ((v9 & 1) == 0)
  {
    return result;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  v11 = *(v10 + 88);
  if (*(v10 + 144))
  {
    v12 = *(v10 + 16);
  }

  else
  {
    v12 = 0;
  }

  if (*(v10 + 144))
  {
    v13 = *(v10 + 24);
  }

  else
  {
    v13 = 0;
  }

  if (v11)
  {
    v14 = (v11 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
    v12 = *v14;
    v13 = v14[1];
  }

  else if (!v13)
  {
    v20[0] = *(v10 + 56);

    v12 = sub_ABB330();
    v13 = v19;
    goto LABEL_16;
  }

LABEL_16:
  swift_beginAccess();
  v15 = *(v2 + 104);
  if (*(v15 + 16))
  {

    v16 = sub_2EBF88(v12, v13);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

      *(v18 + 193) = 1;

      return result;
    }
  }

  else
  {
  }

  return result;
}

double sub_4A3B1C(uint64_t a1, uint64_t (*a2)(_BYTE *))
{
  v4 = v2;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B488, &qword_B12570);
  v10 = __chkstk_darwin();
  v12 = &v34[-1] - v11;
  if (*(v2 + 81) == 1)
  {
    v13 = (a2)(v35, v10);
    if (*v14)
    {
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B490, &qword_B12578);
      v16 = *(v15 + 48);
      (*(v7 + 16))(v9, a1, v6);
      v17 = sub_1C47C(&v12[v16], v9);
      v13(v35, 0);
      *v12 = v17 & 1;
      (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
    }

    else
    {
      v13(v35, 0);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B490, &qword_B12578);
      (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    }

    sub_12E1C(v12, &qword_E0B488, &qword_B12570);
    swift_beginAccess();
    v19 = *(v4 + 112);
    if (*(v19 + 16))
    {

      v20 = sub_2EC048(a1);
      if ((v21 & 1) == 0)
      {
        goto LABEL_23;
      }

      v22 = *(*(v19 + 56) + 8 * v20);

      v23 = *(v22 + 88);
      if (*(v22 + 144))
      {
        v24 = *(v22 + 16);
      }

      else
      {
        v24 = 0;
      }

      if (*(v22 + 144))
      {
        v25 = *(v22 + 24);
      }

      else
      {
        v25 = 0;
      }

      if (v23)
      {
        v26 = (v23 + OBJC_IVAR____TtC11MusicJSCore8JSObject_nativeBridgeIdentifier);
        v24 = *v26;
        v25 = v26[1];
      }

      else if (!v25)
      {
        v34[0] = *(v22 + 56);
        v24 = sub_ABB330();
        v25 = v31;
LABEL_18:
        swift_beginAccess();
        v27 = *(v4 + 104);
        if (*(v27 + 16))
        {

          v28 = sub_2EBF88(v24, v25);
          if (v29)
          {
            v30 = *(*(v27 + 56) + 8 * v28);

            *(v30 + 193) = 1;

            return v10.n128_f64[0];
          }
        }

        else
        {
        }

LABEL_23:

        return v10.n128_f64[0];
      }

      goto LABEL_18;
    }
  }

  return v10.n128_f64[0];
}

id sub_4A3F1C()
{
  v1 = qword_DFE2B8;
  v2 = *(v0 + qword_DFE2B8);
  if (v2)
  {
    v3 = *(v0 + qword_DFE2B8);
  }

  else
  {
    v4 = sub_4A3F7C();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_4A3F7C()
{
  if (qword_DE6838 != -1)
  {
    swift_once();
  }

  v7[5] = v0;
  v1 = qword_E70E48;
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540, &unk_B0D150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0B478, &qword_B12568);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v7);
    if (qword_DE6830 != -1)
    {
      swift_once();
    }

    v3 = qword_E70E40;
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v5 = v1;
    *&v2[qword_DFE2B0] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v3, v1, 1, 1, sub_4BE4EC, v4);
  }

  return v1;
}

void sub_4A4110(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_2F8138();
  }
}

double sub_4A4164()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v67 = v58 - v1;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v66 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin();
  v65 = v58 - v6;
  v7 = qword_DFE308;
  v8 = *(v0 + qword_DFE308);
  if (v8)
  {
    v9 = (*&stru_158.sectname[swift_isaMask & *v0])(v5);
    v10 = *(v8 + 96);
    *(v8 + 96) = v9;

    v11 = *(v0 + v7);
    if (v11)
    {
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = *(v11 + 64);
      v14 = *(v11 + 72);
      *(v11 + 64) = sub_4BE3C0;
      *(v11 + 72) = v12;

      sub_17654(v13, v14);

      v15 = *(v0 + v7);
      if (v15)
      {
        v16 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v17 = *(v15 + 48);
        v18 = *(v15 + 56);
        *(v15 + 48) = sub_4BE3C8;
        *(v15 + 56) = v16;

        sub_17654(v17, v18);

        v19 = *(v0 + v7);
        if (v19)
        {
          v20 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v21 = *(v19 + 32);
          v22 = *(v19 + 40);
          *(v19 + 32) = sub_4BE3D0;
          *(v19 + 40) = v20;

          sub_17654(v21, v22);
        }
      }
    }
  }

  if ([v0 isViewLoaded])
  {
    v24 = *(v0 + v7);
    if (v24)
    {
      v25 = v24[11];

      v26 = [v25 indexPathsForVisibleItems];
      v27 = sub_AB9760();

      v28 = *(v27 + 16);
      if (v28)
      {
        v29 = *(v3 + 16);
        v30 = (*(v3 + 80) + 32) & ~*(v3 + 80);
        v58[1] = v27;
        v31 = v27 + v30;
        v69 = *(v3 + 72);
        v70 = v29;
        v32 = (v3 + 48);
        v62 = (v3 + 32);
        v68 = (v3 + 8);
        v33 = v3 + 16;
        v63 = (v33 + 40);
        v64 = v32;
        v34 = v65;
        v29(v65, v31, v2);
        while (1)
        {
          v35 = v24[6];
          if (!v35 || (v36 = v24[7], , v37 = v35(v24, v34), v39 = v38, sub_17654(v35, v36), !v37))
          {
            (*v68)(v34, v2);
            goto LABEL_11;
          }

          v40 = v24[8];
          if (!v40)
          {
            break;
          }

          v41 = v33;
          v42 = v24[9];

          v43 = v2;
          v44 = v67;
          v40(v24, v37, v39);
          v45 = v40;
          v46 = v44;
          v2 = v43;
          sub_17654(v45, v42);
          if ((*v64)(v46, 1, v43) == 1)
          {
            v47 = v65;
            (*v68)(v65, v43);
            v33 = v41;
            v34 = v47;
LABEL_19:
            sub_12E1C(v46, &unk_DE8E20, &qword_AF7990);
LABEL_25:
            swift_unknownObjectRelease();
            goto LABEL_11;
          }

          (*v62)(v66, v46, v43);
          v48 = v24[4];
          v33 = v41;
          if (!v48 || (v49 = v24[5], , v50 = v48(v66), sub_17654(v48, v49), !v50))
          {
            ObjectType = swift_getObjectType();
            (*(v39 + 16))(0, 0, ObjectType, v39);
            (*(v39 + 32))(0, 0, ObjectType, v39);
            v54 = *v68;
            (*v68)(v66, v2);
            v34 = v65;
            v54(v65, v2);
            goto LABEL_25;
          }

          v51 = v66;
          v60 = v50;
          v61 = [v50 relativeModelObjectForStoreLibraryPersonalization];
          if (v61)
          {
            swift_unknownObjectRetain();
            v59 = v24;
            v52 = &off_CF2AC8;
          }

          else
          {
            v59 = 0;
            v52 = 0;
          }

          v55 = v51;
          v56 = swift_getObjectType();
          (*(v39 + 16))(v59, v52, v56, v39);
          (*(v39 + 32))(v61, 0, v56, v39);
          v57 = *v68;
          (*v68)(v55, v2);
          v34 = v65;
          v57(v65, v2);
          swift_unknownObjectRelease();

LABEL_11:
          v31 += v69;
          if (!--v28)
          {

            return result;
          }

          v70(v34, v31, v2);
        }

        (*v68)(v34, v2);
        v46 = v67;
        (*v63)(v67, 1, 1, v2);
        goto LABEL_19;
      }
    }
  }

  return result;
}

void sub_4A48A0(uint64_t a1@<X1>, char *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v24 - v7;
  v9 = sub_AB3820();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
    (*(v10 + 56))(a3, 1, 1, v9);
    return;
  }

  v14 = v13;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v21 = *(v10 + 56);
    v21(v8, 1, 1, v9);
    swift_unknownObjectRetain();
LABEL_10:
    sub_12E1C(v8, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
    v21(a3, 1, 1, v9);
    return;
  }

  v16 = Strong;
  v24[1] = a1;
  swift_unknownObjectRetain();
  [v16 loadViewIfNeeded];
  v17 = *&v16[qword_DFE2F8];
  if (v17)
  {
    v18 = v17;

    v19 = [v18 indexPathForCell:v14];
    if (v19)
    {
      sub_AB3790();

      v20 = 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = *(v10 + 56);
    v21(v6, v20, 1, v9);
    sub_1766C(v6, v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      goto LABEL_10;
    }

    (*(v10 + 32))(v12, v8, v9);
    swift_beginAccess();
    v22 = swift_unknownObjectWeakLoadStrong();
    if (v22)
    {
      v23 = v22;
      (*&stru_1F8.segname[(swift_isaMask & *v22) + 16])(v12);
      (*(v10 + 8))(v12, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      v21(a3, 1, 1, v9);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    __break(1u);
  }
}

void *sub_4A4C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v5 = &v27 - v4;
  v6 = sub_AB3820();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    (*&stru_1F8.segname[(swift_isaMask & *result) + 16])(a2);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_12E1C(v5, &unk_DE8E20, &qword_AF7990);
    }

    else
    {
      v12 = (*(v7 + 32))(v9, v5, v6);
      v13 = (*&stru_158.sectname[swift_isaMask & *v11])(v12);
      if (v13 && (v14 = v13, v15 = [v13 results], v14, v15))
      {
        v16 = [v15 numberOfSections];
        if (sub_AB37F0() >= v16 || (v17 = [v15 numberOfItemsInSection:sub_AB37F0()], sub_AB37E0() >= v17))
        {
          (*(v7 + 8))(v9, v6);
        }

        else
        {
          isa = sub_AB3770().super.isa;
          v19 = [v15 itemAtIndexPath:isa];

          v20 = [v19 relativeModelObjectForStoreLibraryPersonalization];
          if (v20)
          {
            v21 = v20;
            swift_unknownObjectRelease();
            if ((*(&stru_248.size + (swift_isaMask & *v11)))(v21, v9))
            {
              result = [v11 loadViewIfNeeded];
              v22 = *(v11 + qword_DFE2F8);
              if (!v22)
              {
                __break(1u);
                return result;
              }

              v23 = v22;
              v24 = sub_AB3770().super.isa;
              v25 = [v23 cellForItemAtIndexPath:v24];
              (*(v7 + 8))(v9, v6);

              if (v25)
              {
                swift_getObjectType();
                v26 = swift_conformsToProtocol2();

                if (v26)
                {
                  return v25;
                }

                return 0;
              }
            }

            else
            {
              (*(v7 + 8))(v9, v6);
            }
          }

          else
          {
            (*(v7 + 8))(v9, v6);

            swift_unknownObjectRelease();
          }
        }
      }

      else
      {
        (*(v7 + 8))(v9, v6);
      }
    }

    return 0;
  }

  return result;
}

id sub_4A50FC(uint64_t a1)
{
  v1[qword_E0A768] = 1;
  v1[qword_E0A770] = 0;
  *&v1[qword_E0A778] = 0;
  *&v1[qword_E0A780] = 0;
  *&v1[qword_E0A788] = 0;
  v2 = &v1[qword_E0A798];
  *v2 = 0;
  v2[1] = 0;
  *&v1[qword_E0A7A0] = 0;
  v3 = &v1[qword_E0A7A8];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v1[qword_E0A7B0];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = &v1[qword_E0A7B8];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v1[qword_E0A7C0];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v1[qword_E0A7C8];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = &v1[qword_E0A7D0];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = &v1[qword_E0A7D8];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = &v1[qword_E0A7E0];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v1[qword_E0A7E8];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = &v1[qword_E0A7F0];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v1[qword_E0A7F8];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v1[qword_E0A800];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = &v1[qword_E0A808];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v1[qword_E0A810];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &v1[qword_E0A818];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &v1[qword_E0A820];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v1[qword_E0A828] = 2;
  *&v1[qword_E0A830] = 0;
  *&v1[qword_E0A838] = 0;
  *&v1[qword_E0A840] = 0;
  *&v1[qword_E0A848] = 0;
  v1[qword_E0A850] = 2;
  v1[qword_E0A858] = 3;
  v19 = &v1[qword_E0A860];
  *v19 = 0xD000000000000015;
  v19[1] = 0x8000000000B48DF0;
  *&v1[qword_E0A790] = a1;
  v21.receiver = v1;
  v21.super_class = type metadata accessor for JSGridViewController(0);
  return objc_msgSendSuper2(&v21, "init");
}

id sub_4A5394(uint64_t a1)
{
  swift_beginAccess();

  v1 = sub_AB9260();

  return v1;
}

Class sub_4A5424()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

void sub_4A549C()
{
  v1 = v0;
  v33.receiver = v0;
  v33.super_class = type metadata accessor for JSGridViewController(0);
  objc_msgSendSuper2(&v33, "viewDidLoad");
  sub_3B4C14(1);
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  v4 = [v1 viewBackgroundColor];
  [v3 setBackgroundColor:v4];

  [v1 loadViewIfNeeded];
  v5 = *&v1[qword_DFE2F8];
  if (!v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v6 = *&v1[qword_DFE2F0];
  type metadata accessor for CollectionViewArtworkVideoPlaybackController(0);
  swift_allocObject();
  v7 = v6;
  v8 = sub_389BA0(v5, v6);
  v9 = sub_4B28CC();
  v10 = *(v8 + 56);
  *(v9 + 80) = v10;
  swift_retain_n();
  if (v10 == 1)
  {
    *(v9 + 144) = 1;
  }

  swift_retain_n();

  v11 = [v1 traitCollection];
  v12 = [v11 horizontalSizeClass];

  *(v8 + 224) = v12 == &dword_0 + 2;
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = *(v8 + 40);
  v15 = *(v8 + 48);
  *(v8 + 40) = sub_4BEF84;
  *(v8 + 48) = v13;

  sub_17654(v14, v15);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = *(v8 + 80);
  v18 = *(v8 + 88);
  *(v8 + 80) = sub_4BEF8C;
  *(v8 + 88) = v16;
  sub_17654(v17, v18);

  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = *(v8 + 96);
  v21 = *(v8 + 104);
  *(v8 + 96) = sub_4BEF94;
  *(v8 + 104) = v19;
  sub_17654(v20, v21);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = *(v8 + 112);
  v24 = *(v8 + 120);
  *(v8 + 112) = sub_4BEF9C;
  *(v8 + 120) = v22;
  sub_17654(v23, v24);

  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = *(v8 + 64);
  v27 = *(v8 + 72);
  *(v8 + 64) = sub_4BEFA4;
  *(v8 + 72) = v25;
  sub_17654(v26, v27);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = *(v8 + 128);
  v30 = *(v8 + 136);
  *(v8 + 128) = sub_4BEFAC;
  *(v8 + 136) = v28;
  sub_17654(v29, v30);

  *&v1[qword_E0A788] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E087F0, &unk_B0CE70);
  swift_allocObject();
  v31 = ArtworkVideoReportingController.init()();
  (*(*v31 + 136))(*(v8 + 56));
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(*v31 + 160))(sub_3E01FC, v32);

  *&v1[qword_E0A7A0] = v31;
}

double sub_4A58D8(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E0A7A0];
    if (v5)
    {

      (*(*v5 + 136))(a1 & 1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v8 = v6;
    v9 = sub_4B28CC();

    *(v9 + 80) = a1 & 1;
    if (a1)
    {
      *(v9 + 144) = 1;
    }
  }

  return result;
}

void sub_4A59D0(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *&Strong[qword_E0A7A0];
    if (v7)
    {

      (*(*v7 + 192))(a1, a2 & 1);
    }

    else
    {
    }
  }
}

double sub_4A5A88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E0A7A0];
    if (v5)
    {

      (*(*v5 + 216))(a1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v8 = v6;
    sub_4B28CC();

    sub_4A3B1C(a1, sub_1287E8);
  }

  return result;
}

void sub_4A5B8C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E0A7A0];
    if (v5)
    {

      (*(*v5 + 224))(a1);
    }

    else
    {
    }
  }
}

void sub_4A5C38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E0A7A0];
    if (v5)
    {

      (*(*v5 + 200))(a1);
    }

    else
    {
    }
  }
}

void sub_4A5CE4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E0A7A0];
    if (v5)
    {

      (*(*v5 + 208))(a1);
    }

    else
    {
    }
  }
}

void sub_4A5D90(void *a1)
{
  v1 = a1;
  sub_4A549C();
}

void sub_4A5DD8(int a1, char *a2)
{
  [a2 loadViewIfNeeded];
  v3 = *&a2[qword_DFE2F8];
  if (v3)
  {
    v4 = [v3 collectionViewLayout];
    sub_4B8734(v4, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_4A5E58(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for JSGridViewController(0);
  swift_unknownObjectRetain();
  v8 = v13.receiver;
  objc_msgSendSuper2(&v13, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v12[4] = sub_4BEF7C;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_CF24C;
  v12[3] = &block_descriptor_273;
  v10 = _Block_copy(v12);
  v11 = v8;

  [a5 animateAlongsideTransition:0 completion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

void sub_4A5F94(void *a1)
{
  v2 = v1;
  v47 = sub_AB3820();
  v50 = *(v47 - 8);
  __chkstk_darwin();
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JSGridViewController(0);
  v51.receiver = v2;
  v51.super_class = v6;
  objc_msgSendSuper2(&v51, "traitCollectionDidChange:", a1);
  if ([v2 isViewLoaded])
  {
    v7 = [v2 traitCollection];
    v8 = [v7 horizontalSizeClass];

    if (!a1 || v8 != [a1 horizontalSizeClass])
    {
      goto LABEL_8;
    }

    v9 = [v2 traitCollection];
    v10 = [v9 preferredContentSizeCategory];

    v11 = [a1 preferredContentSizeCategory];
    v12 = sub_AB92A0();
    v14 = v13;
    if (v12 == sub_AB92A0() && v14 == v15)
    {

      return;
    }

    v16 = sub_ABB3C0();

    if ((v16 & 1) == 0)
    {
LABEL_8:
      [v2 loadViewIfNeeded];
      v46 = qword_DFE2F8;
      v17 = *&v2[qword_DFE2F8];
      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = [v17 collectionViewLayout];
      sub_4B8734(v18, 1);
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v19;
        v21 = v18;
        sub_4A8388(v20);
      }

      [v2 loadViewIfNeeded];
      v22 = v47;
      v23 = *&v2[v46];
      if (v23)
      {
        v24 = v23;
        v25 = [v24 indexPathsForVisibleItems];
        v26 = sub_AB9760();

        v27 = *(v26 + 16);
        if (v27)
        {
          v28 = 0;
          v48 = v26 + ((*(v50 + 80) + 32) & ~*(v50 + 80));
          v49 = qword_DFE2F0;
          v29 = (v50 + 8);
          while (1)
          {
            if (v28 >= *(v26 + 16))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            (*(v50 + 16))(v5, v48 + *(v50 + 72) * v28, v22);
            if (!*&v2[v49])
            {
              goto LABEL_25;
            }

            type metadata accessor for JSGridModelResponse();
            v30 = swift_dynamicCastClass();
            if (!v30)
            {
              goto LABEL_25;
            }

            v31 = [v30 results];
            if (!v31)
            {
              goto LABEL_33;
            }

            v32 = v31;
            v33 = [v31 sectionAtIndex:sub_AB37F0()];

            if (!v33)
            {
              goto LABEL_25;
            }

            objc_opt_self();
            v34 = swift_dynamicCastObjCClass();
            if (!v34)
            {
              break;
            }

            v35 = [v34 uniformCellType];
            swift_unknownObjectRelease();
            if (v35 != &dword_4 + 3)
            {
              goto LABEL_25;
            }

            [v2 loadViewIfNeeded];
            v36 = *&v2[v46];
            if (!v36)
            {
              goto LABEL_34;
            }

            v37 = v2;
            v38 = v36;
            isa = sub_AB3770().super.isa;
            v40 = [v38 cellForItemAtIndexPath:isa];

            v2 = v37;
            v22 = v47;
            if (!v40)
            {
              goto LABEL_25;
            }

            sub_4B8D60(v40);
            (*v29)(v5, v22);

LABEL_26:
            if (v27 == ++v28)
            {
              goto LABEL_27;
            }
          }

          swift_unknownObjectRelease();
LABEL_25:
          (*v29)(v5, v22);
          goto LABEL_26;
        }

LABEL_27:

        v41 = qword_E0A788;
        v42 = *&v2[qword_E0A788];
        if (v42)
        {

          v43 = [v2 traitCollection];
          v44 = [v43 horizontalSizeClass];

          *(v42 + 224) = v44 == &dword_0 + 2;

          if (*&v2[v41])
          {

            sub_38AC10();
          }
        }
      }

      else
      {
LABEL_36:
        __break(1u);
      }
    }
  }
}

void sub_4A64E8(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_4A5F94(a3);
}

void sub_4A6554()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for JSGridViewController(0);
  objc_msgSendSuper2(&v5, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    sub_4B2F58(v3, v4);

    if (*&v0[qword_E0A788])
    {

      sub_38AC10();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_4A65F8(void *a1)
{
  v1 = a1;
  sub_4A6554();
}

void sub_4A6640(void *a1)
{
  v4.receiver = a1;
  v4.super_class = type metadata accessor for JSGridViewController(0);
  v1 = v4.receiver;
  objc_msgSendSuper2(&v4, "music_viewInheritedLayoutInsetsDidChange");
  [v1 loadViewIfNeeded];
  v2 = *&v1[qword_DFE2F8];
  if (v2)
  {
    v3 = [v2 collectionViewLayout];
    sub_4B8734(v3, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_4A66E4()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 isViewLoaded])
  {
    return;
  }

  [v1 loadViewIfNeeded];
  v32 = qword_DFE2F8;
  v7 = *&v1[qword_DFE2F8];
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = v7;
  v31 = "";
  v9 = sub_AB9260();
  v10 = [v8 indexPathsForVisibleSupplementaryElementsOfKind:v9];

  v11 = sub_AB9760();
  v30 = *(v11 + 16);
  if (!v30)
  {
LABEL_15:

    return;
  }

  v12 = 0;
  v29 = v3 + 16;
  v27 = qword_E0A768;
  v28 = (v3 + 8);
  while (v12 < *(v11 + 16))
  {
    v13 = v11;
    v14 = v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12;
    v15 = v2;
    (*(v3 + 16))(v6, v14, v2);
    [v1 loadViewIfNeeded];
    v16 = *&v1[v32];
    if (!v16)
    {
      goto LABEL_18;
    }

    v17 = v1;
    v18 = v16;
    v19 = sub_AB9260();
    isa = sub_AB3770().super.isa;
    v21 = [v18 supplementaryViewForElementKind:v19 atIndexPath:isa];

    if (v21)
    {
      type metadata accessor for TitleSectionHeaderView(0);
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v23 = v22;
        v24 = v17[v27];
        v25 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible;
        swift_beginAccess();
        v23[v25] = v24;
        if (v24 != v23[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible])
        {
          v23[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible] = v24;
          [v23 setNeedsLayout];
        }

        v2 = v15;
        (*v28)(v6, v15);

        goto LABEL_7;
      }
    }

    v2 = v15;
    (*v28)(v6, v15);
LABEL_7:
    v1 = v17;
    ++v12;
    v11 = v13;
    if (v30 == v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
}

void sub_4A6A1C()
{
  v1 = v0;
  v2 = sub_AB3820();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin().n128_u64[0];
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 isViewLoaded])
  {
    return;
  }

  v30 = v2;
  [v1 loadViewIfNeeded];
  v35 = qword_DFE2F8;
  v7 = *&v1[qword_DFE2F8];
  if (!v7)
  {
    goto LABEL_30;
  }

  v8 = v7;
  v34 = "";
  v9 = sub_AB9260();
  v10 = [v8 indexPathsForVisibleSupplementaryElementsOfKind:v9];

  v11 = v30;
  v12 = sub_AB9760();

  v33 = *(v12 + 16);
  if (!v33)
  {
LABEL_25:

    return;
  }

  v13 = 0;
  v29 = qword_E0A770;
  v31 = (v3 + 8);
  v32 = v3 + 16;
  while (v13 < *(v12 + 16))
  {
    v14 = v12;
    (*(v3 + 16))(v6, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v11);
    [v1 loadViewIfNeeded];
    v15 = *&v1[v35];
    if (!v15)
    {
      goto LABEL_28;
    }

    v16 = v15;
    v17 = sub_AB9260();
    isa = sub_AB3770().super.isa;
    v19 = [v16 supplementaryViewForElementKind:v17 atIndexPath:isa];

    if (!v19)
    {
      goto LABEL_6;
    }

    type metadata accessor for TitleSectionHeaderView(0);
    v20 = swift_dynamicCastClass();
    if (!v20)
    {

LABEL_6:
      (*v31)(v6, v11);
      goto LABEL_7;
    }

    v21 = v1[v29];
    if (v21)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    v23 = v20 + OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle;
    swift_beginAccess();
    v24 = *v23;
    if (v21)
    {
      v25 = v24 ^ 2;
    }

    else
    {
      v25 = v24 ^ 1;
    }

    if (*(v23 + 16))
    {
      v26 = (v25 | *(v23 + 8)) == 0;
    }

    else
    {
      v26 = 0;
    }

    if (v26)
    {
      v11 = v30;
      (*v31)(v6, v30);
    }

    else
    {
      *v23 = v22;
      *(v23 + 8) = 0;
      *(v23 + 16) = 1;
      sub_1846A0();
      [v1 loadViewIfNeeded];
      v27 = *&v1[v35];
      v11 = v30;
      if (!v27)
      {
        goto LABEL_29;
      }

      v28 = [v27 collectionViewLayout];
      sub_4B8734(v28, 1);
      (*v31)(v6, v11);
    }

LABEL_7:
    ++v13;
    v12 = v14;
    if (v33 == v13)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

double sub_4A6DD8(void *a1)
{
  v2 = v1;
  sub_3B316C(a1);
  v4 = [v1 viewBackgroundColor];
  [a1 setBackgroundColor:v4];

  [a1 setAlwaysBounceVertical:0];
  [a1 setAlwaysBounceHorizontal:0];
  [a1 setShowsHorizontalScrollIndicator:0];
  [a1 setShowsVerticalScrollIndicator:0];
  v5 = type metadata accessor for PlaylistCell(0);
  v6 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v5, v6, v7);

  v8 = type metadata accessor for AlbumCell(0);
  v9 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v8, v9, v10);

  v11 = type metadata accessor for RadioStationCell(0);
  v12 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v11, v12, v13);

  v14 = type metadata accessor for TVShowCell(0);
  v15 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v14, v15, v16);

  v17 = type metadata accessor for RankedMusicVideoVerticalCell(0);
  v18 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v17, v18, v19);

  v20 = type metadata accessor for FeaturedMusicVideoVerticalCell(0);
  v21 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v20, v21, v22);

  v23 = type metadata accessor for SongCell(0);
  v24 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v23, v24, v25);

  v26 = type metadata accessor for PersonVerticalCell(0);
  v27 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v26, v27, v28);

  v29 = type metadata accessor for PersonHorizontalCell(0);
  v30 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v29, v30, v31);

  v32 = type metadata accessor for CuratorActivityCell(0);
  v33 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v32, v33, v34);

  v35 = type metadata accessor for RadioShowCell(0);
  v36 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v35, v36, v37);

  v38 = type metadata accessor for CustomRoomAlbumCell(0);
  v39 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v38, v39, v40);

  v41 = type metadata accessor for CustomRoomMusicVideoCell(0);
  v42 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v41, v42, v43);

  v44 = type metadata accessor for GridItemButtonCell();
  v45 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v44, v45, v46);

  v47 = type metadata accessor for TVShowEpisodeCell(0);
  v48 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v47, v48, v49);

  v50 = type metadata accessor for SocialPersonHorizontalCell(0);
  v51 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v50, v51, v52);

  v53 = type metadata accessor for ShowcaseCell(0);
  v54 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v53, v54, v55);

  v56 = type metadata accessor for FeaturedRadioShowCell(0);
  v57 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v56, v57, v58);

  v59 = type metadata accessor for PosterCell(0);
  v60 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v59, v60, v61);

  v62 = sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
  UICollectionView.register<A>(_:reuseIdentifier:)(v62, 0xD000000000000021, 0x8000000000B67350);
  v63 = type metadata accessor for TitleSectionHeaderView(0);
  v64 = sub_AB92A0();
  v66 = v65;
  v67 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v63, v64, v66, v67, v68);

  v69 = type metadata accessor for SocialProfilesAccessoryView();
  v70 = &v2[qword_E0A860];
  v71 = *&v2[qword_E0A860];
  v72 = *(v70 + 1);
  v73 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v69, v71, v72, v73, v74);

  return result;
}

void sub_4A73A8()
{
  if ([v0 isViewLoaded])
  {

    sub_4B8938();
  }
}

id sub_4A73E8(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 traitCollection];
  v4 = UITraitCollection.isMediaPicker.getter(v3);

  if (v4)
  {
    return 0;
  }

  v6 = *&v2[qword_DFE2F0];
  if (!v6)
  {
    return &dword_0 + 1;
  }

  result = [v6 results];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = [result sectionAtIndex:sub_AB37F0()];

  if (!v8)
  {
    return &dword_0 + 1;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9 && [v9 uniformCellType] != &dword_4 + 1)
  {
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass() != 0;
  }

  else
  {
    v10 = 1;
  }

  swift_unknownObjectRelease();
  return v10;
}

void sub_4A7520(uint64_t a1)
{
  v2 = qword_DFE308;
  *(v1 + qword_DFE308) = a1;

  sub_4A4164();

  v3 = *(v1 + v2);
  if (v3)
  {
    *(v3 + 24) = &off_D16BE0;

    swift_unknownObjectWeakAssign();
  }
}

void sub_4A75B0()
{
  v1 = *(v0 + qword_E0A790);
  v2 = type metadata accessor for JSGridModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication18JSGridModelRequest_gridViewModel] = v1;
  v83.receiver = v3;
  v83.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v83, "init");
  sub_13C80(0, &qword_E0B480, off_CE5580);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setSectionKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF8820;
  *(v10 + 32) = sub_AB92A0();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_AB92A0();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_AB92A0();
  *(v10 + 72) = v13;
  isa = sub_AB9740().super.isa;
  v15 = [objc_opt_self() propertySetWithProperties:isa];

  v80 = v8;
  [v8 setSectionProperties:v15];

  sub_13C80(0, &qword_DFC880, off_CE5578);
  v16 = [v7 kindWithModelClass:swift_getObjCClassFromMetadata()];
  [v8 setItemKind:v16];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_B122D0;
  *(v17 + 32) = sub_AB92A0();
  *(v17 + 40) = v18;
  *(v17 + 48) = sub_AB92A0();
  *(v17 + 56) = v19;
  *(v17 + 64) = sub_AB92A0();
  *(v17 + 72) = v20;
  *(v17 + 80) = sub_AB92A0();
  *(v17 + 88) = v21;
  *(v17 + 96) = sub_AB92A0();
  *(v17 + 104) = v22;
  *(v17 + 112) = sub_AB92A0();
  *(v17 + 120) = v23;
  *(v17 + 128) = sub_AB92A0();
  *(v17 + 136) = v24;
  *(v17 + 144) = sub_AB92A0();
  *(v17 + 152) = v25;
  *(v17 + 160) = sub_AB92A0();
  *(v17 + 168) = v26;
  *(v17 + 176) = sub_AB92A0();
  *(v17 + 184) = v27;
  *(v17 + 192) = sub_AB92A0();
  *(v17 + 200) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  v78 = inited;
  v79 = inited + 32;
  *(inited + 40) = v30;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_AF4EC0;
  *(v31 + 32) = sub_AB92A0();
  *(v31 + 40) = v32;
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_B122E0;
  *(v33 + 32) = sub_AB92A0();
  *(v33 + 40) = v34;
  v35 = sub_3DB858();
  v36 = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v37 = sub_2BAFF8(v36);
  v38 = [v35 propertySetByCombiningWithPropertySet:v37];

  *(v33 + 48) = v38;
  *(v33 + 56) = sub_AB92A0();
  *(v33 + 64) = v39;
  v40 = sub_3DB858();
  v41 = sub_2BAFF8(v36);
  v42 = [v40 propertySetByCombiningWithPropertySet:v41];

  *(v33 + 72) = v42;
  *(v33 + 80) = sub_AB92A0();
  *(v33 + 88) = v43;
  v44 = sub_3DBCF8();
  v45 = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
  v46 = sub_2BAFF8(v45);
  v47 = [v44 propertySetByCombiningWithPropertySet:v46];

  *(v33 + 96) = v47;
  *(v33 + 104) = sub_AB92A0();
  *(v33 + 112) = v48;
  v49 = sub_3DBCF8();
  v50 = sub_2BAFF8(v45);
  v51 = [v49 propertySetByCombiningWithPropertySet:v50];

  *(v33 + 120) = v51;
  *(v33 + 128) = sub_AB92A0();
  *(v33 + 136) = v52;
  *(v33 + 144) = sub_3DC0D0();
  *(v33 + 152) = sub_AB92A0();
  *(v33 + 160) = v53;
  *(v33 + 168) = sub_3DC0D0();
  *(v33 + 176) = sub_AB92A0();
  *(v33 + 184) = v54;
  *(v33 + 192) = sub_3DC3BC();
  *(v33 + 200) = sub_AB92A0();
  *(v33 + 208) = v55;
  *(v33 + 216) = sub_3DC5B0();
  *(v33 + 224) = sub_AB92A0();
  *(v33 + 232) = v56;
  *(v33 + 240) = sub_3DC5B0();
  *(v33 + 248) = sub_AB92A0();
  *(v33 + 256) = v57;
  *(v33 + 264) = sub_3DC9FC();
  *(v33 + 272) = sub_AB92A0();
  *(v33 + 280) = v58;
  *(v33 + 288) = sub_3DC9FC();
  *(v33 + 296) = sub_AB92A0();
  *(v33 + 304) = v59;
  *(v33 + 312) = sub_3DCBF0();
  *(v33 + 320) = sub_AB92A0();
  *(v33 + 328) = v60;
  *(v33 + 336) = sub_3DCBF0();
  *(v33 + 344) = sub_AB92A0();
  *(v33 + 352) = v61;
  *(v33 + 360) = sub_3DD0AC();
  *(v33 + 368) = sub_AB92A0();
  *(v33 + 376) = v62;
  *(v33 + 384) = sub_3DD0AC();
  *(v33 + 392) = sub_AB92A0();
  *(v33 + 400) = v63;
  *(v33 + 408) = sub_3DD3D4();
  *(v33 + 416) = sub_AB92A0();
  *(v33 + 424) = v64;
  *(v33 + 432) = sub_3DD3D4();
  *(v33 + 440) = sub_AB92A0();
  *(v33 + 448) = v65;
  *(v33 + 456) = sub_3DD72C();
  *(v33 + 464) = sub_AB92A0();
  *(v33 + 472) = v66;
  *(v33 + 480) = sub_3DD72C();
  sub_96EA4(v33);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v67 = objc_allocWithZone(MPPropertySet);
  v68 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v69 = sub_AB8FD0().super.isa;

  v70 = [v67 initWithProperties:v68 relationships:v69];

  *(v78 + 48) = v70;
  sub_96EA4(v78);
  swift_setDeallocating();
  sub_12E1C(v79, &unk_DE8E80, &unk_AF87C0);
  v71 = objc_allocWithZone(MPPropertySet);
  v72 = sub_AB9740().super.isa;

  v73 = sub_AB8FD0().super.isa;

  v74 = [v71 initWithProperties:v72 relationships:v73];

  [v80 setItemProperties:v74];
  v75 = swift_allocObject();
  *(v75 + 16) = v81;
  aBlock[4] = sub_4BE594;
  aBlock[5] = v75;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_253_0;
  v76 = _Block_copy(aBlock);
  v77 = v81;

  [v80 performWithResponseHandler:v76];
  _Block_release(v76);
}

double sub_4A7ED8(void *a1)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_4BE5DC, v3);

  return result;
}

void sub_4A7FA8(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + qword_E0A828) = 2;
    v4 = Strong;
    v5 = a2;
    v6 = v4;
    sub_3B4724(a2);

    v7 = *&v6[qword_E0A788];
    if (v7)
    {
      v8 = *(v7 + 216);
      *(v7 + 216) = a2;
      v9 = v5;
    }

    if (*(sub_4B28CC() + 81) == 1)
    {
      v11 = sub_1287E8(v13);
      if (*v10)
      {
        v12 = v10;

        *v12 = &_swiftEmptySetSingleton;
      }

      (v11)(v13, 0);
    }
  }
}

void sub_4A80BC(_BYTE *a1, void *a2)
{
  v3 = v2;
  v6 = v2[qword_E0A768];
  v7 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_isTopHairlineVisible;
  swift_beginAccess();
  a1[v7] = v6;
  if (v6 != a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible])
  {
    a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView__isTopHairlineVisible] = v6;
    [a1 setNeedsLayout];
  }

  v8 = [a2 title];
  v9 = sub_AB92A0();
  v11 = v10;
  v12 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_title];
  swift_beginAccess();
  *v12 = v9;
  v12[1] = v11;

  v13 = *&a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_textComponents + 8];

  v14 = String.trim()();

  swift_beginAccess();
  v13[7] = v14;

  sub_2EB704();
  [a1 setNeedsLayout];

  TitleSectionHeaderView.titleMaximumNumberOfLines.setter(2);
  v15 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_regularLayoutStyle];
  swift_beginAccess();
  *v15 = xmmword_AF8610;
  v15[16] = 1;
  sub_1848CC();
  if (v3[qword_E0A770])
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  v17 = &a1[OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_compactLayoutStyle];
  swift_beginAccess();
  *v17 = v16;
  *(v17 + 1) = 0;
  v17[16] = 1;
  sub_1846A0();
  v18 = [v3 viewBackgroundColor];
  [a1 setBackgroundColor:v18];

  v19 = [a2 uniformCellType];
  v20 = v19 == &dword_4 + 3;
  v21 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineLeadingAlignment;
  swift_beginAccess();
  v22 = a1[v21];
  a1[v21] = v20;
  if (v20 != v22)
  {
    [a1 setNeedsLayout];
  }

  v23 = OBJC_IVAR____TtC16MusicApplication22TitleSectionHeaderView_topHairlineTrailingAlignment;
  swift_beginAccess();
  v24 = a1[v23];
  a1[v23] = v20;
  if ((v19 == &dword_4 + 3) != v24)
  {
    [a1 setNeedsLayout];
  }
}

void sub_4A8388(id result)
{
  v2 = qword_E0A850;
  v1[qword_E0A850] = v1[qword_E0A828];
  v3 = qword_DFE2F8;
  if (*&v1[qword_DFE2F8])
  {
    sub_4B8734(result, 0);
    v4 = v1[v2];
    sub_4B306C();
    if (v4 == 2 || ((v5 ^ v4) & 1) != 0)
    {
      [v1 loadViewIfNeeded];
      v6 = *&v1[v3];
      if (v6)
      {

        [v6 reloadData];
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_4A8438(void *a1)
{
  v2 = *(v1 + qword_DFE2F0);
  if (!v2)
  {
    return;
  }

  type metadata accessor for JSGridModelResponse();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v26 = v2;
  v6 = [v5 results];
  if (!v6 || (v7 = v6, isa = sub_AB3770().super.isa, v9 = [v7 itemAtIndexPath:isa], v7, isa, !v9))
  {
    v21 = v26;
LABEL_24:

    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 contentItem];
    if (v11)
    {
      v25 = v11;
      v12 = MPModelStoreBrowseContentItem.kind.getter();
      if (v13 == 0xFF)
      {

LABEL_23:
        swift_unknownObjectRelease();
        v21 = v25;
        goto LABEL_24;
      }

      v14 = v12;
      v15 = v13;
      v16 = sub_3CE180(v12, v13);
      if (v16 >= 0x100u)
      {
        v17 = v16;
        type metadata accessor for HorizontalLockupCollectionViewCell(0);
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = *&stru_248.segname[(swift_isaMask & *v18) + 16];
          v20 = a1;
          v19(v17 & 1);
LABEL_21:

          goto LABEL_22;
        }

        type metadata accessor for VerticalLockupCollectionViewCell(0);
        v22 = swift_dynamicCastClass();
        if (v22)
        {
          v23 = *(&stru_158.offset + (swift_isaMask & *v22));
          v20 = a1;
          v23(v17 & 1);
          goto LABEL_21;
        }

        type metadata accessor for TVShowEpisodeCell(0);
        v24 = swift_dynamicCastClass();
        if (v24)
        {
          *(v24 + OBJC_IVAR____TtC16MusicApplication17TVShowEpisodeCell_isDisabled) = v17 & 1;
          v20 = a1;
          sub_43ADD8();
          goto LABEL_21;
        }
      }

LABEL_22:

      sub_3EB30(v14, v15);
      goto LABEL_23;
    }
  }

  swift_unknownObjectRelease();
}

void sub_4A8714(char *a1, char **a2)
{
  v3 = v2;
  v1258 = type metadata accessor for CollectionViewCellArtworkComponentLoggingContext(0);
  __chkstk_darwin();
  v1259 = &v1247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1264 = sub_AB3820();
  v1262 = *(v1264 - 8);
  __chkstk_darwin();
  v1261 = v7;
  v1263 = &v1247 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB9230();
  *&v8 = __chkstk_darwin().n128_u64[0];
  v9 = qword_DFE2F0;
  v10 = *(v2 + qword_DFE2F0);
  v1266 = a2;
  if (!v10)
  {
LABEL_23:
    v14 = 0;
    goto LABEL_49;
  }

  v11 = [v10 results];
  if (!v11)
  {
    __break(1u);
    goto LABEL_793;
  }

  v12 = v11;
  v13 = [v11 sectionAtIndex:sub_AB37F0()];

  if (v13)
  {
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = *(v3 + v9);
      if (v15)
      {
        goto LABEL_6;
      }

LABEL_25:
      a2 = v1266;
      goto LABEL_49;
    }

    swift_unknownObjectRelease();
    v15 = *(v3 + v9);
    if (!v15)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v14 = 0;
    v15 = *(v3 + v9);
    if (!v15)
    {
      goto LABEL_25;
    }
  }

LABEL_6:
  v1257 = a1;
  type metadata accessor for JSGridModelResponse();
  v16 = swift_dynamicCastClass();
  if (!v16)
  {
    goto LABEL_28;
  }

  v17 = v16;
  v1260 = v14;
  v1265 = v3;
  v18 = v15;
  v19 = [v17 results];
  if (!v19 || (v20 = v19, v1256 = v17, v21 = sub_AB3770().super.isa, v22 = [v20 itemAtIndexPath:v21], v20, v21, !v22))
  {

    v3 = v1265;
LABEL_27:
    v14 = v1260;
LABEL_28:
    if (*(v3 + v9))
    {
      v41 = swift_dynamicCastClass();
      if (v41)
      {
        v42 = *(v41 + OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults);
        isa = sub_AB3770().super.isa;
        v44 = [v42 itemAtIndexPath:isa];

        if (v44)
        {
          type metadata accessor for JSGridItemButton(0);
          v45 = swift_dynamicCastClass();
          if (v45)
          {
            v46 = v45;
            v47 = v3;
            v48 = v1266;
            v49 = sub_3B3898(v1266);
            v50 = *(&stru_338.offset + (swift_isaMask & *v46));
            v51 = swift_unknownObjectRetain();
            v52 = v50(v51);
            v54.n128_f64[0] = sub_262ECC(v52, v53);
            v55 = (*(&stru_338.reserved2 + (swift_isaMask & *v46)))(v54);
            v57 = v56;
            swift_unknownObjectRelease();
            v58.n128_f64[0] = sub_263108(v55, v57);
            v59 = (*&stru_478.segname[swift_isaMask & *v46])(v58);
            v60 = j___s9MusicCore13StagedInstallV11isInstalledSbvg(v59 & 1);
            v1256 = v49;
            sub_2632E0(v60 & 1);
            v61 = (*(&stru_478.size + (swift_isaMask & *v46)))();
            v62 = StagedInstall.isInstalled.getter(v61 & 1);
            sub_2631F4(v62 & 1);
            v63 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v64 = v1262;
            v65 = v14;
            v67 = v1263;
            v66 = v1264;
            (*(v1262 + 16))(v1263, v48, v1264);
            v68 = (*(v64 + 80) + 40) & ~*(v64 + 80);
            v69 = swift_allocObject();
            v1265 = v47;
            v70 = v69;
            *(v69 + 2) = v63;
            *(v69 + 3) = v46;
            v71 = v1257;
            *(v69 + 4) = v1257;
            v72 = v67;
            v14 = v65;
            (*(v64 + 32))(&v69[v68], v72, v66);
            swift_unknownObjectRetain();

            v73 = v71;
            v74 = v1256;
            sub_2640F0(sub_4BDFAC, v70);

            swift_unknownObjectRelease();
            v3 = v1265;
            a2 = v1266;

            v75 = v74;
LABEL_50:
            v99 = v75;
            goto LABEL_51;
          }

          swift_unknownObjectRelease();
        }
      }

      v76 = *(v3 + v9);
      if (v76)
      {
        v77 = swift_dynamicCastClass();
        if (v77)
        {
          v78 = v77;
          v79 = v3;
          v80 = v76;
          v81 = [v78 results];
          if (v81)
          {
            v82 = v81;
            a2 = v1266;
            v83 = sub_AB3770().super.isa;
            v84 = [v82 itemAtIndexPath:v83];

            if (v84)
            {
              objc_opt_self();
              v85 = swift_dynamicCastObjCClass();
              v3 = v79;
              if (v85 && v14 && (v86 = v85, j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v14 uniformCellType], 7)))
              {
                v87 = *&v78[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
                v88 = sub_AB3770().super.isa;
                v89 = [v87 itemAtIndexPath:v88];

                type metadata accessor for JSPosterItem(0);
                v90 = swift_dynamicCastClass();
                if (v90)
                {
                  v91 = v90;
                  v1265 = v89;
                  v1260 = v14;
                  v92 = sub_3B356C(a2);
                  v93 = [v86 titleText];
                  if (v93)
                  {
                    v94 = v93;
                    v95 = sub_AB92A0();
                    v97 = v96;
                  }

                  else
                  {
                    v95 = 0;
                    v97 = 0xE000000000000000;
                  }

                  sub_37AC4(v95, v97);
                  v254 = [v86 subtitleText];
                  if (v254)
                  {
                    v255 = v254;
                    v256 = sub_AB92A0();
                    v258 = v257;
                  }

                  else
                  {
                    v256 = 0;
                    v258 = 0xE000000000000000;
                  }

                  sub_37B14(v256, v258);
                  v259 = *(&stru_1F8.size + (swift_isaMask & *v91));
                  v260 = swift_unknownObjectRetain();
                  v261 = v259(v260);
                  v263 = v262;
                  swift_unknownObjectRelease();
                  if (v263)
                  {
                    v264 = v261;
                  }

                  else
                  {
                    v264 = 0;
                  }

                  v265 = 0xE000000000000000;
                  if (v263)
                  {
                    v266 = v263;
                  }

                  else
                  {
                    v266 = 0xE000000000000000;
                  }

                  sub_38508(v264, v266);
                  sub_39AC8(1);
                  v267 = [v86 descriptionText];
                  if (v267)
                  {
                    v268 = v267;
                    v269 = sub_AB92A0();
                    v265 = v270;
                  }

                  else
                  {
                    v269 = 0;
                  }

                  a2 = v1266;
                  sub_37CA8(v269, v265);
                  v271 = [v86 overlayTitleText];
                  if (v271)
                  {
                    v272 = v271;
                    v273 = sub_AB92A0();
                    v275 = v274;
                  }

                  else
                  {
                    v273 = 0;
                    v275 = 0xE000000000000000;
                  }

                  v3 = v79;
                  v276 = sub_37EC8(v273, v275);
                  v277 = (*(&stru_478.reloff + (swift_isaMask & *v91)))(v276);
                  v278 = sub_3863C(v277);
                  v279 = (*&stru_4C8.segname[(swift_isaMask & *v91) + 8])(v278);
                  sub_38720(v279);
                  v280 = (*(&stru_4C8.offset + (swift_isaMask & *v91)))();
                  sub_38A9C(v280);

                  swift_unknownObjectRelease();
                  v99 = v92;
                  swift_unknownObjectRelease();
                  v14 = v1260;
                  goto LABEL_51;
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              else
              {

                swift_unknownObjectRelease();
              }
            }

            else
            {

              v3 = v79;
            }

            goto LABEL_49;
          }
        }
      }
    }

    a2 = v1266;
LABEL_49:
    v98 = sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
    v75 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v98, a2, 0xD000000000000021, 0x8000000000B67350, v98);
    goto LABEL_50;
  }

  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  v3 = v1265;
  if (!v23)
  {

    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v24 = v23;
  v25 = [v23 contentItem];
  if (!v25)
  {
    swift_unknownObjectRelease();

    goto LABEL_27;
  }

  v1254 = v24;
  v1255 = v18;
  v1252 = v22;
  v26 = v25;
  v27 = MPModelStoreBrowseContentItem.kind.getter();
  if (v28 == 0xFF)
  {
    swift_unknownObjectRelease();

    v131 = v1255;
    goto LABEL_27;
  }

  v29 = v27;
  v1250 = v26;
  v1251 = v28;
  v30 = sub_3CE180(v27, v28);
  v31 = v1251;
  v1253 = v29;
  if (v1251 > 5u)
  {
    v132 = v1256;
    if (v1251 > 7u)
    {
      if (v1251 == 8)
      {

        a2 = v1266;
        v189 = v1260;
        if (v1260)
        {
          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 5))
          {
            v190 = v30;
            v191 = sub_3B3820(a2);
            v192 = [v1254 headlineText];
            if (v192)
            {
              v193 = v192;
              v194 = sub_AB92A0();
              v196 = v195;
            }

            else
            {
              v194 = 0;
              v196 = 0xE000000000000000;
            }

            v437 = sub_BA224(v194, v196);
            v438 = [v1254 titleText];
            if (v438 || (v438 = [v1253 title]) != 0)
            {
              v439 = v438;
              v440 = sub_AB92A0();
              v442 = v441;
            }

            else
            {
              v440 = 0;
              v442 = 0xE000000000000000;
            }

            v443 = sub_BA428(v440, v442);
            v444 = [v1254 subtitleText];
            if (v444)
            {
              v445 = v444;
              v446 = sub_AB92A0();
              v448 = v447;
            }

            else
            {
              v446 = 0;
              v448 = 0xE000000000000000;
            }

            sub_BA588(v446, v448);
            *(&v1268 + 1) = sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
            v1269 = &off_D17AC0;
            v449 = v1253;
            *&v1267 = v1253;
            v450 = 8;
            goto LABEL_241;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v189 uniformCellType], 7))
          {
            v310 = *&v132[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
            v311 = sub_AB3770().super.isa;
            [v310 itemAtIndexPath:v311];

            type metadata accessor for JSPosterItem(0);
            v312 = swift_dynamicCastClass();
            if (v312)
            {
              v313 = v312;
              v314 = sub_3B356C(a2);
              v315 = [v1254 titleText];
              if (v315)
              {
                v316 = v315;
                v317 = sub_AB92A0();
                v319 = v318;
              }

              else
              {
                v317 = 0;
                v319 = 0xE000000000000000;
              }

              sub_37AC4(v317, v319);
              v703 = [v1254 subtitleText];
              if (v703)
              {
                v704 = v703;
                v705 = sub_AB92A0();
                v707 = v706;
              }

              else
              {
                v705 = 0;
                v707 = 0xE000000000000000;
              }

              sub_37B14(v705, v707);
              v708 = [v1254 descriptionText];
              if (v708)
              {
                v709 = v708;
                v710 = sub_AB92A0();
                v712 = v711;
              }

              else
              {
                v710 = 0;
                v712 = 0xE000000000000000;
              }

              sub_37CA8(v710, v712);
              v713 = [v1254 overlayTitleText];
              if (v713)
              {
                v714 = v713;
                v715 = sub_AB92A0();
                v717 = v716;
              }

              else
              {
                v715 = 0;
                v717 = 0xE000000000000000;
              }

              sub_37EC8(v715, v717);
              v718 = *(&stru_1F8.size + (swift_isaMask & *v313));
              v719 = swift_unknownObjectRetain();
              v720 = v718(v719);
              v722 = v721;
              swift_unknownObjectRelease();
              if (v722)
              {
                v723 = v720;
              }

              else
              {
                v723 = 0;
              }

              if (v722)
              {
                v724 = v722;
              }

              else
              {
                v724 = 0xE000000000000000;
              }

              sub_38508(v723, v724);
              v725 = sub_39AC8(1);
              v726 = (*(&stru_478.reloff + (swift_isaMask & *v313)))(v725);
              v727 = sub_3863C(v726);
              v728 = (*&stru_4C8.segname[(swift_isaMask & *v313) + 8])(v727);
              sub_38720(v728);
              v729 = (*(&stru_4C8.offset + (swift_isaMask & *v313)))();
              v730 = v314;
              v731 = sub_38A9C(v729);
              v732 = *(&stru_4C8.reserved2 + (swift_isaMask & *v313));
              v733 = v732(v731);
              if (v733)
              {
                v734 = v733;
                v735 = (*&stru_298.sectname[swift_isaMask & *v733])();
                v737 = v736;
              }

              else
              {
                v735 = 0;
                v737 = 0;
              }

              v738 = sub_38F48(v735, v737);
              v739 = v732(v738);
              if (v739)
              {
                v740 = v739;
                v741 = (*&stru_298.segname[(swift_isaMask & *v739) + 8])();

                v742 = v741 & 1;
              }

              else
              {
                v742 = 2;
              }

              v3 = v1265;
              a2 = v1266;
              v156 = v730;
              sub_38F98(v742);
              v743 = (*&stru_518.segname[swift_isaMask & *v313])();
              sub_39C54(v743 & 1);

              swift_unknownObjectRelease();
              goto LABEL_657;
            }

            swift_unknownObjectRelease();
          }
        }

        v609 = sub_3B3880(a2);
        v610 = [v1254 headlineText];
        if (v610)
        {
          v611 = v610;
          v612 = sub_AB92A0();
          v614 = v613;
        }

        else
        {
          v612 = 0;
          v614 = 0xE000000000000000;
        }

        v615 = sub_43A61C(v612, v614);
        v616 = [v1254 titleText];
        if (v616 || (v616 = [v1253 title]) != 0)
        {
          v617 = v616;
          v618 = sub_AB92A0();
          v620 = v619;
        }

        else
        {
          v618 = 0;
          v620 = 0xE000000000000000;
        }

        v621 = sub_43A82C(v618, v620);
        v622 = [v1254 descriptionText];
        v1249 = v30;
        if (v622 || (v622 = [v1253 descriptionText]) != 0)
        {
          v623 = v1253;
          v624 = v622;
          v625 = sub_AB92A0();
          v627 = v626;
        }

        else
        {
          v623 = v1253;
          v625 = 0;
          v627 = 0xE000000000000000;
        }

        sub_43AAD8(v625, v627);
        v628 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v629 = v609;
        v631 = v1262;
        v630 = v1263;
        v632 = v1264;
        (*(v1262 + 16))(v1263, a2, v1264);
        v633 = (*(v631 + 80) + 24) & ~*(v631 + 80);
        v634 = (v1261 + v633 + 7) & 0xFFFFFFFFFFFFFFF8;
        v635 = swift_allocObject();
        *(v635 + 16) = v628;
        v636 = v631;
        v156 = v629;
        (*(v636 + 32))(v635 + v633, v630, v632);
        *(v635 + v634) = v1254;

        swift_unknownObjectRetain();
        sub_43ACC4(sub_4BE108, v635);

        v637 = [v623 playbackPosition];
        if (v637)
        {
          v638 = v637;
          [v637 bookmarkTime];
          v640 = v639;
        }

        else
        {
          v640 = 0.0;
        }

        v641 = v1249;
        v642 = v1253;
        [v1253 duration];
        sub_43ACE4(v640 / v643);
        v644 = [v642 playbackPosition];
        a2 = v1266;
        if (v644)
        {
          v645 = v644;
          v646 = [v644 hasBeenPlayed];
        }

        else
        {
          v646 = 0;
        }

        sub_43AD74(v646);
        sub_439D3C(v641 & 1);
        goto LABEL_656;
      }

      if (v1251 != 9)
      {
        if (v1251 != 12)
        {
          goto LABEL_117;
        }

        a2 = v1266;
        v133 = v1260;
        if (v1260)
        {
          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 1))
          {
            v134 = sub_3B34DC(a2);
            v135 = sub_AB37F0();
            v33 = sub_4B808C(v135);
            if (v33)
            {
              v136 = sub_AB37B0();
              v39 = __OFADD__(v136, 1);
              v137 = v136 + 1;
              if (v39)
              {
                __break(1u);
                goto LABEL_75;
              }
            }

            else
            {
              v137 = 0;
            }

            AlbumCell.rank.setter(v137, (v33 & 1) == 0);
            v397 = [v1254 titleText];
            if (v397)
            {
              LOBYTE(v35) = v30;
            }

            else
            {
              v397 = [v1253 title];
              LOBYTE(v35) = v30;
              if (!v397)
              {
                v455 = 0;
                v457 = 0xE000000000000000;
                goto LABEL_245;
              }
            }

            v454 = v397;
            v455 = sub_AB92A0();
            v457 = v456;

LABEL_245:
            v458 = AlbumCell.title.setter(v455, v457);
            v459 = [v1254 subtitleText];
            if (v459)
            {
              v460 = v459;
              v461 = sub_AB92A0();
              v463 = v462;
            }

            else
            {
              v461 = 0;
              v463 = 0xE000000000000000;
            }

            AlbumCell.artistName.setter(v461, v463);
            *(&v1268 + 1) = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
            v1269 = &off_D17B10;
            v476 = v1253;
            *&v1267 = v1253;
            v477 = 12;
            goto LABEL_481;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v133 uniformCellType], 4))
          {
            v156 = sub_3B3850(a2);
            v326 = [v1254 titleText];
            if (v326 || (v326 = [v1253 title]) != 0)
            {
              v327 = v326;
              v328 = sub_AB92A0();
              v330 = v329;
            }

            else
            {
              v328 = 0;
              v330 = 0xE000000000000000;
            }

            v331 = sub_3E1A04(v328, v330);
            v332 = [v1254 subtitleText];
            if (!v332)
            {
              goto LABEL_174;
            }

            goto LABEL_512;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v133 uniformCellType], 5))
          {
            v190 = v30;
            v191 = sub_3B3820(a2);
            v406 = [v1254 headlineText];
            if (v406)
            {
              v407 = v406;
              v408 = sub_AB92A0();
              v410 = v409;
            }

            else
            {
              v408 = 0;
              v410 = 0xE000000000000000;
            }

            v884 = sub_BA224(v408, v410);
            v885 = [v1254 titleText];
            if (v885 || (v885 = [v1253 title]) != 0)
            {
              v886 = v885;
              v887 = sub_AB92A0();
              v889 = v888;
            }

            else
            {
              v887 = 0;
              v889 = 0xE000000000000000;
            }

            v890 = sub_BA428(v887, v889);
            v891 = [v1254 subtitleText];
            if (v891)
            {
              v892 = v891;
              v893 = sub_AB92A0();
              v895 = v894;
            }

            else
            {
              v893 = 0;
              v895 = 0xE000000000000000;
            }

            sub_BA588(v893, v895);
            *(&v1268 + 1) = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
            v1269 = &off_D17B10;
            v449 = v1253;
            *&v1267 = v1253;
            v450 = 12;
LABEL_241:
            sub_37C074(v449, v450);
            sub_3B8F50(&v1267, &off_CEFDE8);
            sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
            v451 = 1;
LABEL_242:
            sub_BA6C4(v451);
            v452 = v191;
LABEL_361:
            v156 = v452;
            v668 = v190 & 1;
LABEL_362:
            sub_200620(v668, v453);
LABEL_655:

            goto LABEL_656;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v133 uniformCellType], 7))
          {
            v516 = *&v132[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
            v517 = sub_AB3770().super.isa;
            [v516 itemAtIndexPath:v517];

            type metadata accessor for JSPosterItem(0);
            v518 = swift_dynamicCastClass();
            if (v518)
            {
              v353 = v518;
              v354 = sub_3B356C(a2);
              v519 = [v1254 titleText];
              if (v519)
              {
                v520 = v519;
                v521 = sub_AB92A0();
                v523 = v522;
              }

              else
              {
                v521 = 0;
                v523 = 0xE000000000000000;
              }

              sub_37AC4(v521, v523);
              v1102 = [v1254 subtitleText];
              if (v1102)
              {
                v1103 = v1102;
                v1104 = sub_AB92A0();
                v1106 = v1105;
              }

              else
              {
                v1104 = 0;
                v1106 = 0xE000000000000000;
              }

              sub_37B14(v1104, v1106);
              v969 = [v1254 descriptionText];
              if (v969)
              {
                goto LABEL_771;
              }

              v975 = 0;
              v976 = 0xE000000000000000;
              goto LABEL_773;
            }

            swift_unknownObjectRelease();
            v3 = v1265;
          }
        }

        v1249 = v30;
        v1042 = sub_3B3880(a2);
        v1043 = [v1254 headlineText];
        if (v1043)
        {
          v1044 = v1043;
          v1045 = sub_AB92A0();
          v1047 = v1046;
        }

        else
        {
          v1045 = 0;
          v1047 = 0xE000000000000000;
        }

        v1048 = sub_43A61C(v1045, v1047);
        v1049 = [v1254 titleText];
        if (v1049 || (v1049 = [v1253 title]) != 0)
        {
          v1050 = v1049;
          v1051 = sub_AB92A0();
          v1053 = v1052;
        }

        else
        {
          v1051 = 0;
          v1053 = 0xE000000000000000;
        }

        v1054 = sub_43A82C(v1051, v1053);
        v1055 = [v1254 descriptionText];
        if (v1055)
        {
          v1056 = v1055;
          v1057 = sub_AB92A0();
          v1059 = v1058;
        }

        else
        {
          v1057 = 0;
          v1059 = 0xE000000000000000;
        }

        sub_43AAD8(v1057, v1059);
        v1060 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v1062 = v1262;
        v1061 = v1263;
        v1063 = v1264;
        (*(v1262 + 16))(v1263, a2, v1264);
        v1064 = (*(v1062 + 80) + 24) & ~*(v1062 + 80);
        v1065 = (v1261 + v1064 + 7) & 0xFFFFFFFFFFFFFFF8;
        v1066 = swift_allocObject();
        *(v1066 + 16) = v1060;
        (*(v1062 + 32))(v1066 + v1064, v1061, v1063);
        *(v1066 + v1065) = v1254;
        swift_unknownObjectRetain();

        sub_43ACC4(sub_4BE018, v1066);

        v1067 = [v1253 playbackPosition];
        if (v1067)
        {
          v1068 = v1067;
          [v1067 bookmarkTime];
          v1070 = v1069;
        }

        else
        {
          v1070 = 0.0;
        }

        v1071 = v1249;
        v1072 = v1253;
        [v1253 duration];
        sub_43ACE4(v1070 / v1073);
        sub_439D3C(v1071 & 1);

        swift_unknownObjectRelease();
        v99 = v1042;
        sub_3EB30(v1072, 12);

        a2 = v1266;
        v14 = v1260;
        goto LABEL_51;
      }

      a2 = v1266;
      v207 = v1260;
      if (v1260)
      {
        if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 1))
        {
          v134 = sub_3B34DC(a2);
          v208 = sub_AB37F0();
          v209 = sub_4B808C(v208);
          if (v209)
          {
            v210 = sub_AB37B0();
            v39 = __OFADD__(v210, 1);
            v211 = v210 + 1;
            if (v39)
            {
              __break(1u);
              goto LABEL_117;
            }
          }

          else
          {
            v211 = 0;
          }

          AlbumCell.rank.setter(v211, (v209 & 1) == 0);
          v398 = [v1254 titleText];
          if (v398)
          {
            LOBYTE(v35) = v30;
          }

          else
          {
            v398 = [v1253 title];
            LOBYTE(v35) = v30;
            if (!v398)
            {
              v465 = 0;
              v467 = 0xE000000000000000;
              goto LABEL_249;
            }
          }

          v464 = v398;
          v465 = sub_AB92A0();
          v467 = v466;

LABEL_249:
          v468 = AlbumCell.title.setter(v465, v467);
          v469 = [v1254 subtitleText];
          if (v469)
          {
            v470 = v469;
            v471 = sub_AB92A0();
            v473 = v472;

            v474 = v473;
            v475 = v471;
          }

          else
          {
            v475 = MPModelTVShow.localizedEpisodeCount.getter();
          }

          AlbumCell.artistName.setter(v475, v474);
          v1269 = 0;
          v1267 = 0u;
          v1268 = 0u;
          goto LABEL_482;
        }

        if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v207 uniformCellType], 5))
        {
          v335 = sub_3B3820(a2);
          v336 = [v1254 headlineText];
          v190 = v30;
          if (v336)
          {
            v337 = v336;
            v338 = sub_AB92A0();
            v340 = v339;
          }

          else
          {
            v338 = 0;
            v340 = 0xE000000000000000;
          }

          v654 = sub_BA224(v338, v340);
          v655 = [v1254 titleText];
          if (v655 || (v655 = [v1253 title]) != 0)
          {
            v656 = v655;
            v657 = sub_AB92A0();
            v659 = v658;
          }

          else
          {
            v657 = 0;
            v659 = 0xE000000000000000;
          }

          v660 = sub_BA428(v657, v659);
          v661 = [v1254 subtitleText];
          if (v661)
          {
            v662 = v661;
            v663 = sub_AB92A0();
            v665 = v664;

            v666 = v665;
            v667 = v663;
          }

          else
          {
            v667 = MPModelTVShow.localizedEpisodeCount.getter();
          }

          sub_BA588(v667, v666);
          v1269 = 0;
          v1267 = 0u;
          v1268 = 0u;
          sub_3B8F50(&v1267, &off_CEFDE8);
          sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
          sub_BA6C4(1);
          v452 = v335;
          goto LABEL_361;
        }

        if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v207 uniformCellType], 7))
        {
          v411 = *&v132[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
          v412 = sub_AB3770().super.isa;
          [v411 itemAtIndexPath:v412];

          type metadata accessor for JSPosterItem(0);
          v413 = swift_dynamicCastClass();
          if (v413)
          {
            v353 = v413;
            v354 = sub_3B356C(a2);
            v414 = [v1254 titleText];
            if (v414)
            {
              v415 = v414;
              v416 = sub_AB92A0();
              v418 = v417;
            }

            else
            {
              v416 = 0;
              v418 = 0xE000000000000000;
            }

            sub_37AC4(v416, v418);
            v1007 = [v1254 subtitleText];
            if (v1007)
            {
              v1008 = v1007;
              v1009 = sub_AB92A0();
              v1011 = v1010;
            }

            else
            {
              v1009 = 0;
              v1011 = 0xE000000000000000;
            }

            sub_37B14(v1009, v1011);
            v969 = [v1254 descriptionText];
            if (v969)
            {
              goto LABEL_771;
            }

            v975 = 0;
            v976 = 0xE000000000000000;
            goto LABEL_773;
          }

          swift_unknownObjectRelease();
        }
      }

      v156 = sub_3B3850(a2);
      v896 = [v1254 titleText];
      if (v896 || (v896 = [v1253 title]) != 0)
      {
        v897 = v896;
        v898 = sub_AB92A0();
        v900 = v899;
      }

      else
      {
        v898 = 0;
        v900 = 0xE000000000000000;
      }

      v901 = sub_3E1A04(v898, v900);
      v332 = [v1254 subtitleText];
      if (!v332)
      {
        goto LABEL_174;
      }

      goto LABEL_512;
    }

    if (v1251 == 6)
    {

      if (v1260 && j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 2))
      {
        a2 = v1266;
        v164 = sub_3B35B4(v1266);
        v165 = [v1254 titleText];
        if (v165 || (v165 = [v1253 name]) != 0)
        {
          v166 = v165;
          v167 = sub_AB92A0();
          v169 = v168;
        }

        else
        {
          v167 = 0;
          v169 = 0xE000000000000000;
        }

        sub_1FD7A8(v167, v169);
        sub_1FDACC(0, 0xE000000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03790, &qword_B0CE88);
        v170 = swift_allocObject();
        sub_3E127C(v170, 1);
        *(v171 + 8) = 0;
        *(v171 + 16) = 0;
        *v171 = 1;
        *(v171 + 24) = 0;
        UIScreen.Dimensions.size.getter();
        v173 = v172;
        v174 = v164;
        v175 = sub_272D38(v173);
        v177 = v176;
        v179 = v178;
        v181 = v180;

        sub_361EF0(v175, v177, v179, v181);
        v156 = v174;
        sub_7FCC4(v175);
        VerticalLockupCollectionViewCell.isDisabled.setter(0);

        sub_1FDD00(2);
        swift_unknownObjectRelease();
        v3 = v1265;
      }

      else
      {
        v214 = sub_3B34F4(v1266);
        v215 = [v1254 titleText];
        if (v215 || (v215 = [v1253 name]) != 0)
        {
          v216 = v215;
          v217 = sub_AB92A0();
          v219 = v218;
        }

        else
        {
          v217 = 0;
          v219 = 0xE000000000000000;
        }

        v220 = sub_B1070(v217, v219);
        v221 = [v1254 subtitleText];
        if (v221 || (v221 = [v1253 handle]) != 0)
        {
          v222 = v221;
          v223 = sub_AB92A0();
          v225 = v224;
        }

        else
        {
          v223 = 0;
          v225 = 0xE000000000000000;
        }

        sub_B1194(v223, v225);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03790, &qword_B0CE88);
        v226 = swift_allocObject();
        sub_3E127C(v226, 1);
        *(v227 + 8) = 0;
        *(v227 + 16) = 0;
        *v227 = 1;
        *(v227 + 24) = 0;
        UIScreen.Dimensions.size.getter();
        v229 = v228;
        v1257 = v214;

        v230 = sub_272D38(v229);
        v232 = v231;
        v234 = v233;
        v236 = v235;

        type metadata accessor for ArtworkComponentImageView();
        v237 = swift_dynamicCastClass();
        if (v237)
        {
          v238 = v237 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
          v239 = *(v237 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle);
          v240 = *(v237 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 8);
          v241 = *(v237 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 16);
          *v238 = v230;
          *(v238 + 8) = v232;
          *(v238 + 16) = v234;
          v242 = *(v238 + 24);
          *(v238 + 24) = v236;
          sub_7FCB4(v230);
          sub_7D6F4(v239, v240, v241, v242);
          sub_7FCC4(v239);
        }

        sub_7FCC4(v230);

        v156 = v1257;
        sub_200620(0, v243);

        v244 = OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController;
        *(*&v156[OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController] + 48) = &off_D16C30;
        v245 = v1265;
        swift_unknownObjectWeakAssign();
        v246 = v1253;
        sub_37C074(v1253, 6);

        sub_49D948(v246);

        swift_unknownObjectRelease();
        v247 = *&v156[v244];
        v248 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v249 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v250 = swift_allocObject();
        *(v250 + 16) = v248;
        *(v250 + 24) = v249;
        v251 = *(v247 + 56);
        v252 = *(v247 + 64);
        *(v247 + 56) = sub_4BE204;
        *(v247 + 64) = v250;

        v253 = v252;
        v3 = v245;
        sub_17654(v251, v253);

        a2 = v1266;
      }

      goto LABEL_658;
    }

    if (v1251 != 7)
    {
      goto LABEL_117;
    }

    v145 = v1260;
    if (v1260)
    {
      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 3))
      {

        if ([v1253 hasVideo])
        {
          a2 = v1266;
          v146 = sub_3B35FC(v1266);
          v147 = [v1254 headlineText];
          v148 = v30;
          if (v147)
          {
            v149 = v147;
            v150 = sub_AB92A0();
            v152 = v151;
          }

          else
          {
            v150 = 0;
            v152 = 0xE000000000000000;
          }

          v535 = sub_14D848(v150, v152);
          v536 = [v1253 title];
          if (v536)
          {
            v537 = v536;
            v538 = sub_AB92A0();
            v540 = v539;
          }

          else
          {
            v538 = 0;
            v540 = 0xE000000000000000;
          }

          v577 = sub_14DAA0(v538, v540);
          v578 = [v1253 artist];
          if (v578)
          {
            v579 = v578;
            v580 = [v578 name];
            if (v580)
            {
              v581 = v580;
              v582 = sub_AB92A0();
              v584 = v583;

              v585 = v584;
              v3 = v1265;
              v578 = v582;
LABEL_380:
              v687 = sub_14DD00(v578, v585);
              v688 = [v1254 descriptionText];
              if (v688)
              {
                v689 = v688;
                v690 = sub_AB92A0();
                v692 = v691;
              }

              else
              {
                v690 = 0;
                v692 = 0xE000000000000000;
              }

              sub_14DFF4(v690, v692);
              v693 = v146;
              v694 = v1253;
              [v1253 duration];
              sub_28FAC0(v695, 0);

              sub_14E270(v148 & 1);
              *(&v1268 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
              v1269 = &off_D179F8;
              *&v1267 = v694;
              sub_37C074(v694, 7);
              sub_3B8D88(&v1267, &off_CEFDE8);

              swift_unknownObjectRelease();
              sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
LABEL_663:
              v99 = v693;
              v599 = v694;
              v600 = 7;
              goto LABEL_659;
            }

            v578 = 0;
          }

          v585 = 0xE000000000000000;
          goto LABEL_380;
        }

        a2 = v1266;
        v156 = sub_3B3554(v1266);
        v341 = sub_4B4A50();
        sub_4C5CB8(v341);
        sub_4C5DC0(0);
        *(&v1268 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
        v1269 = &off_D179F8;
        *&v1267 = v1253;
        v342 = v1253;
        sub_3B8D28(&v1267, &off_CEFDE8);
        sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
        v343 = [v1254 headlineText];
        v344 = v30;
        if (v343)
        {
          v345 = v343;
          v346 = sub_AB92A0();
          v348 = v347;
        }

        else
        {
          v346 = 0;
          v348 = 0xE000000000000000;
        }

        v572 = [v342 title];
        if (v572)
        {
          v573 = v572;
          v574 = sub_AB92A0();
          v576 = v575;
        }

        else
        {
          v574 = 0;
          v576 = 0xE000000000000000;
        }

        v601 = [v342 artist];
        if (v601)
        {
          v602 = v601;
          v603 = [v601 name];
          if (v603)
          {
            v604 = v603;
            v605 = sub_AB92A0();
            v607 = v606;

            v608 = v607;
            v601 = v605;
LABEL_386:
            v696 = sub_4C5820(v601, v608);
            v697 = [v1254 descriptionText];
            if (v697)
            {
              v698 = v697;
              v699 = sub_AB92A0();
              v701 = v700;
            }

            else
            {
              v699 = 0;
              v701 = 0xE000000000000000;
            }

            sub_4C5ACC(v699, v701);
            v702 = v344 & 1;
            goto LABEL_534;
          }

          v601 = 0;
        }

        v608 = 0xE000000000000000;
        goto LABEL_386;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v145 uniformCellType], 5))
      {

        a2 = v1266;
        v296 = sub_3B3820(v1266);
        v297 = [v1254 headlineText];
        v298 = v30;
        if (v297)
        {
          v299 = v297;
          v300 = sub_AB92A0();
          v302 = v301;
        }

        else
        {
          v300 = 0;
          v302 = 0xE000000000000000;
        }

        v546 = sub_BA224(v300, v302);
        v547 = [v1254 titleText];
        if (v547 || (v547 = [v1253 title]) != 0)
        {
          v548 = v547;
          v549 = sub_AB92A0();
          v551 = v550;
        }

        else
        {
          v549 = 0;
          v551 = 0xE000000000000000;
        }

        v552 = sub_BA428(v549, v551);
        v553 = [v1254 subtitleText];
        if (v553)
        {
          v554 = v553;
          v555 = sub_AB92A0();
          v557 = v556;
        }

        else
        {
          v590 = [v1253 artist];
          if (v590)
          {
            v591 = v590;
            v592 = [v590 name];
            if (v592)
            {
              v593 = v592;
              v555 = sub_AB92A0();
              v557 = v594;
            }

            else
            {

              v555 = 0;
              v557 = 0xE000000000000000;
            }

            v3 = v1265;
          }

          else
          {
            v555 = 0;
            v557 = 0xE000000000000000;
          }
        }

        sub_BA588(v555, v557);
        *(&v1268 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
        v1269 = &off_D179F8;
        v694 = v1253;
        *&v1267 = v1253;
        sub_37C074(v1253, 7);
        sub_3B8F50(&v1267, &off_CEF8C8);
        sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
        sub_BA6C4([v694 hasVideo]);
        v693 = v296;
        sub_200620(v298 & 1, v1087);
        sub_200598([v694 isFavorite]);

        swift_unknownObjectRelease();
        goto LABEL_663;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v145 uniformCellType], 7))
      {
        v360 = *&v132[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
        v361 = v1266;
        v362 = sub_AB3770().super.isa;
        [v360 itemAtIndexPath:v362];

        type metadata accessor for JSPosterItem(0);
        v363 = swift_dynamicCastClass();
        if (v363)
        {
          v364 = v363;

          v365 = sub_3B356C(v361);
          v366 = [v1254 titleText];
          if (v366)
          {
            v367 = v366;
            v368 = sub_AB92A0();
            v370 = v369;
          }

          else
          {
            v368 = 0;
            v370 = 0xE000000000000000;
          }

          sub_37AC4(v368, v370);
          v959 = [v1254 subtitleText];
          if (v959)
          {
            v960 = v959;
            v961 = sub_AB92A0();
            v963 = v962;
          }

          else
          {
            v961 = 0;
            v963 = 0xE000000000000000;
          }

          sub_37B14(v961, v963);
          v970 = [v1254 descriptionText];
          if (v970)
          {
            v971 = v970;
            v972 = sub_AB92A0();
            v974 = v973;
          }

          else
          {
            v972 = 0;
            v974 = 0xE000000000000000;
          }

          sub_37CA8(v972, v974);
          v977 = [v1254 overlayTitleText];
          if (v977)
          {
            v978 = v977;
            v979 = sub_AB92A0();
            v981 = v980;
          }

          else
          {
            v979 = 0;
            v981 = 0xE000000000000000;
          }

          sub_37EC8(v979, v981);
          v982 = *(&stru_1F8.size + (swift_isaMask & *v364));
          v983 = swift_unknownObjectRetain();
          v984 = v982(v983);
          v986 = v985;
          swift_unknownObjectRelease();
          if (v986)
          {
            v987 = v984;
          }

          else
          {
            v987 = 0;
          }

          if (v986)
          {
            v988 = v986;
          }

          else
          {
            v988 = 0xE000000000000000;
          }

          sub_38508(v987, v988);
          v989 = sub_39AC8(1);
          v990 = (*(&stru_478.reloff + (swift_isaMask & *v364)))(v989);
          v991 = sub_3863C(v990);
          v992 = (*&stru_4C8.segname[(swift_isaMask & *v364) + 8])(v991);
          sub_38720(v992);
          v993 = (*(&stru_4C8.offset + (swift_isaMask & *v364)))();
          v994 = sub_38A9C(v993);
          v995 = *(&stru_4C8.reserved2 + (swift_isaMask & *v364));
          v996 = v995(v994);
          if (v996)
          {
            v997 = v996;
            v998 = (*&stru_298.sectname[swift_isaMask & *v996])();
            v1000 = v999;
          }

          else
          {
            v998 = 0;
            v1000 = 0;
          }

          v1001 = sub_38F48(v998, v1000);
          v1002 = v995(v1001);
          if (v1002)
          {
            v1003 = v1002;
            v1004 = (*&stru_298.segname[(swift_isaMask & *v1002) + 8])();

            v1005 = v1004 & 1;
          }

          else
          {
            v1005 = 2;
          }

          sub_38F98(v1005);
          v1006 = *&stru_518.segname[swift_isaMask & *v364];
          v156 = v365;
          goto LABEL_789;
        }

        swift_unknownObjectRelease();
      }
    }

    if ([v1253 hasVideo])
    {

      if (v1260 && j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 4))
      {
        v772 = v1253;
        a2 = v1266;
        v156 = sub_3B3850(v1266);
        v773 = [v1254 titleText];
        if (v773)
        {
          v774 = v773;
        }

        else
        {
          v913 = [v772 title];
          if (!v913)
          {
            v914 = 0;
            v916 = 0xE000000000000000;
            v3 = v1265;
            a2 = v1266;
LABEL_525:
            v917 = sub_3E1A04(v914, v916);
            v332 = [v1254 subtitleText];
            if (!v332)
            {
LABEL_174:
              v333 = 0;
              v334 = 0xE000000000000000;
LABEL_513:
              sub_3E1CA8(v333, v334);
LABEL_656:

              goto LABEL_657;
            }

LABEL_512:
            v902 = v332;
            v333 = sub_AB92A0();
            v334 = v903;

            goto LABEL_513;
          }

          v774 = v913;
          v3 = v1265;
          a2 = v1266;
        }

        v914 = sub_AB92A0();
        v916 = v915;

        goto LABEL_525;
      }

      a2 = v1266;
      v783 = sub_AB37F0();
      if (sub_4B808C(v783))
      {
        v134 = sub_3B362C(a2);
        v784 = sub_AB37B0();
        v39 = __OFADD__(v784, 1);
        v786 = (v784 + 1);
        if (!v39)
        {
          LOBYTE(v35) = v30;
          sub_42B3B0(v786, 0, v785);
          v787 = [v1253 title];
          if (v787)
          {
            v788 = v787;
            v789 = sub_AB92A0();
            v791 = v790;
          }

          else
          {
            v789 = 0;
            v791 = 0xE000000000000000;
          }

          v823 = sub_42B4A8(v789, v791);
          v824 = [v1253 artist];
          if (v824)
          {
            v825 = v824;
            v826 = [v824 name];
            if (v826)
            {
              v827 = v826;
              v828 = sub_AB92A0();
              v830 = v829;

              v831 = v830;
              v824 = v828;
            }

            else
            {

              v824 = 0;
              v831 = 0xE000000000000000;
            }

            v3 = v1265;
          }

          else
          {
            v831 = 0xE000000000000000;
          }

          sub_42B754(v824, v831);
          *(&v1268 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
          v1269 = &off_D179F8;
          *&v1267 = v1253;
          sub_37C074(v1253, 7);
          sub_3B8DA0(&v1267, &off_CEFDE8);
          sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
          goto LABEL_483;
        }

        goto LABEL_794;
      }

      v803 = v1253;
      v804 = sub_3B3614(a2);
      v805 = [v1254 titleText];
      if (v805)
      {
        v806 = v805;
        v807 = v30;
      }

      else
      {
        v807 = v30;
        v808 = [v803 title];
        if (!v808)
        {
          v809 = 0;
          v811 = 0xE000000000000000;
LABEL_454:
          v812 = sub_171DC0(v809, v811);
          v813 = [v1254 subtitleText];
          if (v813)
          {
            v814 = v813;
            v815 = sub_AB92A0();
            v817 = v816;

LABEL_753:
            v3 = v1265;
            a2 = v1266;
            sub_172064(v815, v817);
            *(&v1268 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
            v1269 = &off_D179F8;
            *&v1267 = v803;
            sub_37C074(v803, 7);
            sub_3B8C28(&v1267, &off_CEFDE8);
            sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
            v1201 = v804;
            v857 = v807 & 1;
            v156 = v1201;
            goto LABEL_654;
          }

          v818 = [v803 artist];
          if (v818)
          {
            v819 = v818;
            v820 = [v818 name];
            if (v820)
            {
              v821 = v820;
              v815 = sub_AB92A0();
              v817 = v822;

              goto LABEL_753;
            }
          }

          v815 = 0;
          v817 = 0xE000000000000000;
          goto LABEL_753;
        }

        v806 = v808;
      }

      v809 = sub_AB92A0();
      v811 = v810;

      goto LABEL_454;
    }

    v1249 = v30;
    v775 = sub_3B3354(v1266);
    v776 = sub_AB37F0();
    v777 = sub_4B808C(v776);
    sub_14377C(v777 & 1 | 0x8000);
    v778 = [v1253 title];
    if (v778)
    {
      v779 = v778;
      v780 = sub_AB92A0();
      v782 = v781;
    }

    else
    {
      v780 = 0;
      v782 = 0xE000000000000000;
    }

    v792 = sub_142740(v780, v782);
    v793 = [v1254 subtitleText];
    if (v793)
    {
      v794 = v793;
      v795 = sub_AB92A0();
      v797 = v796;

      goto LABEL_543;
    }

    v798 = [v1253 artist];
    if (v798)
    {
      v799 = v798;
      v800 = [v798 name];
      if (v800)
      {
        v801 = v800;
        v795 = sub_AB92A0();
        v797 = v802;

        goto LABEL_543;
      }
    }

    v795 = 0;
    v797 = 0xE000000000000000;
LABEL_543:
    sub_142958(v795, v797);
    *(&v1268 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
    v1269 = &off_D179F8;
    *&v1267 = v1253;
    v921 = v1253;
    sub_3B8C10(&v1267, &off_CEF8C8);
    sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
    v922 = [v921 album];
    v3 = v1265;
    if (v922)
    {
      v923 = v922;
      v924 = [v922 title];
      if (v924)
      {
        v925 = v924;
        v926 = sub_AB92A0();
        v928 = v927;

        v3 = v1265;
        v929 = v928;
        v132 = v1256;
        v922 = v926;
LABEL_548:
        sub_142C04(v922, v929);
        if ((v777 & 1) == 0)
        {
          v934 = v1255;

          a2 = v1266;
          goto LABEL_553;
        }

        v930 = sub_AB37B0();
        v39 = __OFADD__(v930, 1);
        v931 = v930 + 1;
        if (!v39)
        {
          sub_1438F0(v931, 0);
          v932 = [v132 results];

          if (!v932)
          {
LABEL_795:
            __break(1u);
            goto LABEL_796;
          }

          a2 = v1266;
          v933 = [v932 numberOfItemsInSection:sub_AB37F0()];

          sub_14391C(v933, 0);
          v934 = v1255;
LABEL_553:
          v935 = v775;
          sub_200878(1);
          sub_20085C(1);

          sub_143184([v921 isFavorite]);
          sub_143BBC(v1249 & 1, v936);

          swift_unknownObjectRelease();
          v99 = v935;
          v599 = v1253;
          v600 = 7;
LABEL_659:
          sub_3EB30(v599, v600);

          v14 = v1260;
          goto LABEL_51;
        }

LABEL_793:
        __break(1u);
LABEL_794:
        __break(1u);
        goto LABEL_795;
      }

      v922 = 0;
    }

    v929 = 0xE000000000000000;
    goto LABEL_548;
  }

  v32 = v1254;
  v33 = v1256;
  if (v1251 > 2u)
  {
    if (v1251 != 3)
    {
      if (v1251 != 4)
      {
        if (v1251 == 5)
        {

          a2 = v1266;
          v34 = v1260;
          if (v1260)
          {
            if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 1))
            {
              LOBYTE(v35) = v30;
              v33 = sub_3B34DC(a2);
              v36 = sub_AB37F0();
              v37 = sub_4B808C(v36);
              if ((v37 & 1) == 0)
              {
                v40 = 0;
                goto LABEL_196;
              }

              v38 = sub_AB37B0();
              v39 = __OFADD__(v38, 1);
              v40 = v38 + 1;
              if (!v39)
              {
LABEL_196:
                AlbumCell.rank.setter(v40, (v37 & 1) == 0);
                v384 = [v1254 titleText];
                if (v384 || (v384 = [v1253 name]) != 0)
                {
                  v385 = v384;
                  v386 = sub_AB92A0();
                  v388 = v387;

                  v3 = v1265;
                }

                else
                {
                  v386 = 0;
                  v388 = 0xE000000000000000;
                }

                v389 = AlbumCell.title.setter(v386, v388);
                v390 = [v1254 subtitleText];
                if (v390 || (v390 = [v1253 shortEditorNotes]) != 0)
                {
                  v391 = v390;
                  v392 = sub_AB92A0();
                  v394 = v393;
                }

                else
                {
                  v669 = sub_AB91E0();
                  sub_5F26C(v669);
                  v392 = sub_AB9320();
                  v394 = v670;
                }

                AlbumCell.artistName.setter(v392, v394);
                *(&v1268 + 1) = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
                v1269 = &off_D17A98;
                v395 = v1253;
                *&v1267 = v1253;
                sub_37C074(v1253, 5);
                sub_3B8D10(&v1267, &off_CEFDE8);
                sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
                v396 = j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v395 type], 3);
                goto LABEL_285;
              }

              __break(1u);
              goto LABEL_23;
            }

            if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v34 uniformCellType], 3))
            {
              v156 = sub_3B3554(a2);
              v320 = sub_4B4A50();
              sub_4C5CB8(v320);
              sub_4C5DC0(0);
              v321 = [v1254 headlineText];
              if (v321)
              {
                v322 = v321;
                v323 = sub_AB92A0();
                v325 = v324;
              }

              else
              {
                v323 = 0;
                v325 = 0xE000000000000000;
              }

              v647 = sub_4C53F0(v323, v325);
              v648 = [v1254 titleText];
              if (v648 || (v648 = [v1253 name]) != 0)
              {
                v649 = v648;
                v650 = sub_AB92A0();
                v652 = v651;
              }

              else
              {
                v650 = 0;
                v652 = 0xE000000000000000;
              }

              v653 = sub_4C5610(v650, v652);
              v426 = [v1254 subtitleText];
              if (!v426)
              {
                v428 = 0;
                v430 = 0xE000000000000000;
                goto LABEL_529;
              }

LABEL_227:
              v427 = v426;
              v428 = sub_AB92A0();
              v430 = v429;

LABEL_529:
              v918 = sub_4C5820(v428, v430);
              v499 = [v1254 descriptionText];
              goto LABEL_530;
            }

            if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v34 uniformCellType], 5))
            {
              v399 = v30;
              v400 = sub_3B3820(a2);
              v401 = [v1254 headlineText];
              if (v401)
              {
                v402 = v401;
                v403 = sub_AB92A0();
                v405 = v404;
              }

              else
              {
                v403 = 0;
                v405 = 0xE000000000000000;
              }

              v870 = v1253;
              v871 = sub_BA224(v403, v405);
              v872 = [v1254 titleText];
              if (v872 || (v872 = [v870 name]) != 0)
              {
                v873 = v872;
                v874 = sub_AB92A0();
                v876 = v875;
              }

              else
              {
                v874 = 0;
                v876 = 0xE000000000000000;
              }

              v877 = sub_BA428(v874, v876);
              v878 = [v1254 subtitleText];
              if (v878 || (v878 = [v870 shortEditorNotes]) != 0)
              {
                v879 = v878;
                v3 = v1265;
                a2 = v1266;
                v880 = sub_AB92A0();
                v882 = v881;
              }

              else
              {
                v880 = 0;
                v882 = 0xE000000000000000;
                v3 = v1265;
                a2 = v1266;
              }

              sub_BA588(v880, v882);
              *(&v1268 + 1) = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
              v1269 = &off_D17A98;
              *&v1267 = v1253;
              sub_37C074(v1253, 5);
              sub_3B8F50(&v1267, &off_CEFDE8);
              sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
              sub_BA6C4(0);
              v883 = v400;
              v668 = v399 & 1;
              v156 = v883;
              goto LABEL_362;
            }

            if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v34 uniformCellType], 6))
            {
              v508 = v30;
              v509 = v1253;
              v510 = sub_3B3584(a2);
              v511 = [v1254 headlineText];
              if (v511)
              {
                v512 = v511;
                v513 = sub_AB92A0();
                v515 = v514;
              }

              else
              {
                v513 = 0;
                v515 = 0xE000000000000000;
              }

              v1026 = sub_233E78(v513, v515);
              v1027 = [v1254 titleText];
              if (v1027 || (v1027 = [v509 name]) != 0)
              {
                v1028 = v1027;
                v1029 = sub_AB92A0();
                v1031 = v1030;
              }

              else
              {
                v1029 = 0;
                v1031 = 0xE000000000000000;
              }

              v1032 = sub_234088(v1029, v1031);
              v1033 = [v1254 subtitleText];
              if (v1033 || (v1033 = [v509 shortEditorNotes]) != 0)
              {
                v1034 = v1033;
                v1035 = sub_AB92A0();
                v1037 = v1036;
              }

              else
              {
                v1035 = 0;
                v1037 = 0xE000000000000000;
              }

              sub_234334(v1035, v1037);
              v156 = v510;
              sub_200878(0);
              sub_20085C(1);
              sub_200620(v508 & 1, v1038);

              [v156 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0}];
              *(&v1268 + 1) = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
              v1269 = &off_D17A98;
              *&v1267 = v509;
              v1039 = v509;
              sub_3B8D40(&v1267, &off_CEFDE8);
              sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
              if ([v1254 headlineColor] == &dword_0 + 1)
              {
                v1025 = [(SEL *)v1265 view];
                if (v1025)
                {
LABEL_628:
                  v1040 = v1025;
                  v1041 = [v1025 tintColor];
                  sub_235010(v1041);

                  swift_unknownObjectRelease();
LABEL_791:
                  v3 = v1265;
                  a2 = v1266;
                  goto LABEL_658;
                }

LABEL_797:
                __break(1u);
                return;
              }

              goto LABEL_629;
            }

            if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v34 uniformCellType], 7))
            {
              v679 = *&v33[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
              v680 = sub_AB3770().super.isa;
              [v679 itemAtIndexPath:v680];

              type metadata accessor for JSPosterItem(0);
              v681 = swift_dynamicCastClass();
              if (v681)
              {
                v353 = v681;
                v354 = sub_3B356C(v1266);
                v682 = [v1254 titleText];
                if (v682)
                {
                  v683 = v682;
                  v684 = sub_AB92A0();
                  v686 = v685;
                }

                else
                {
                  v684 = 0;
                  v686 = 0xE000000000000000;
                }

                sub_37AC4(v684, v686);
                v1210 = [v1254 subtitleText];
                if (v1210)
                {
                  v1211 = v1210;
                  v1212 = sub_AB92A0();
                  v1214 = v1213;
                }

                else
                {
                  v1212 = 0;
                  v1214 = 0xE000000000000000;
                }

                sub_37B14(v1212, v1214);
                v969 = [v1254 descriptionText];
                if (!v969)
                {
                  v975 = 0;
                  v976 = 0xE000000000000000;
                  goto LABEL_773;
                }

                goto LABEL_771;
              }

              swift_unknownObjectRelease();
              v3 = v1265;
              a2 = v1266;
            }
          }

          v1187 = sub_3B359C(a2);
          v1188 = [v1254 titleText];
          if (v1188)
          {
            v1189 = v30;
          }

          else
          {
            v1188 = [v1253 name];
            v1189 = v30;
            if (!v1188)
            {
              v1191 = 0;
              v1193 = 0xE000000000000000;
LABEL_744:
              v1194 = sub_B32CC(v1191, v1193);
              v1195 = [v1254 subtitleText];
              if (v1195 || (v1195 = [v1253 shortEditorNotes]) != 0)
              {
                v1196 = v1195;
                v1197 = sub_AB92A0();
                v1199 = v1198;
              }

              else
              {
                v1197 = 0;
                v1199 = 0xE000000000000000;
              }

              sub_B35F8(v1197, v1199);
              v156 = v1187;
              sub_200878(1);
              sub_20085C(1);
              sub_200620(v1189 & 1, v1200);

              *(&v1268 + 1) = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
              v1269 = &off_D17A98;
              *&v1267 = v1253;
              sub_37C074(v1253, 5);
              sub_3B8D58(&v1267, &off_CEFDE8);
              goto LABEL_748;
            }
          }

          v1190 = v1188;
          v1191 = sub_AB92A0();
          v1193 = v1192;

          goto LABEL_744;
        }

LABEL_117:
        v212 = v1255;

        v213 = sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
        a2 = v1266;
        v156 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v213, v1266, 0xD000000000000021, 0x8000000000B67350, v213);

LABEL_657:
        swift_unknownObjectRelease();
LABEL_658:
        v99 = v156;
        v599 = v1253;
        v600 = v1251;
        goto LABEL_659;
      }

      v3 = &selRef__authenticateReturningError_;
      v197 = [v32 titleText];
      if (v197 || (v197 = [v1253 name]) != 0)
      {
        v198 = v197;
        v199 = sub_AB92A0();
        v201 = v200;

        v32 = v1254;
      }

      else
      {
        v199 = 0;
        v201 = 0xE000000000000000;
      }

      a2 = &selRef__authenticateReturningError_;
      v202 = [v32 subtitleText];
      if (v202)
      {
        v203 = v202;
        v204 = sub_AB92A0();
        v206 = v205;

LABEL_259:
        v478 = v1260;
        if (v1260)
        {
          v35 = &selRef_isMovingFromParentViewController;
          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 3))
          {
            v1256 = v201;
            a2 = v1266;
            v479 = sub_3B3554(v1266);
            v3 = v1265;
            v480 = sub_4B4A50();
            sub_4C5CB8(v480);
            sub_4C5DC0(0);
            *(&v1268 + 1) = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
            v1269 = &off_D17A48;
            *&v1267 = v1253;
            v481 = v1253;
            v482 = v479;
            sub_3B8D28(&v1267, &off_CEFDE8);
            sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
            v483 = [v1254 headlineText];
            if (v483)
            {
              v484 = v30;
              v30 = v483;
              v485 = sub_AB92A0();
              v487 = v486;

              LOBYTE(v30) = v484;
            }

            else
            {
              v485 = 0;
              v487 = 0xE000000000000000;
            }

            sub_4C53F0(v485, v487);
            sub_4C5610(v199, v1256);
            v156 = v482;
            v498 = sub_4C5820(v204, v206);
            v499 = [v1254 descriptionText];
LABEL_530:
            v588 = v499;
            if (!v588)
            {
              v589 = 0;
              v586 = 0xE000000000000000;
              goto LABEL_533;
            }

            goto LABEL_531;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v478 uniformCellType], 1))
          {
            v35 = v30;
            a2 = v1266;
            v33 = sub_3B34DC(v1266);
            v488 = sub_AB37F0();
            v3 = v1265;
            LOBYTE(v30) = sub_4B808C(v488);
            if ((v30 & 1) == 0)
            {
              v490 = 0;
LABEL_284:
              AlbumCell.rank.setter(v490, (v30 & 1) == 0);
              AlbumCell.title.setter(v199, v201);
              AlbumCell.artistName.setter(v204, v206);
              *(&v1268 + 1) = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
              v1269 = &off_D17A48;
              *&v1267 = v1253;
              sub_37C074(v1253, 4);
              sub_3B8D10(&v1267, &off_CEFDE8);
              sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
              v396 = 0;
LABEL_285:
              AlbumCell.layoutStyle.setter(v396);
              v524 = v33;
LABEL_484:
              v156 = v524;
              v857 = v35 & 1;
LABEL_654:
              VerticalLockupCollectionViewCell.isDisabled.setter(v857);
              goto LABEL_655;
            }

            v478 = a2;
            v489 = sub_AB37B0();
            v39 = __OFADD__(v489, 1);
            v490 = v489 + 1;
            if (!v39)
            {
              goto LABEL_284;
            }

            __break(1u);
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v478 v35[196]], 5))
          {
            v491 = v30;

            v492 = sub_3B3820(v1266);
            v493 = [v1254 headlineText];
            if (v493)
            {
              v494 = v493;
              v495 = sub_AB92A0();
              v497 = v496;
            }

            else
            {
              v495 = 0;
              v497 = 0xE000000000000000;
            }

            sub_BA224(v495, v497);
            v904 = sub_BA428(v199, v201);
            v905 = [v1254 a2[318]];
            v3 = v1265;
            if (v905)
            {
              v906 = v905;
              v907 = sub_AB92A0();
              v909 = v908;
            }

            else
            {
              v907 = 0;
              v909 = 0xE000000000000000;
            }

            a2 = v1266;
            sub_BA588(v907, v909);
            *(&v1268 + 1) = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
            v1269 = &off_D17A48;
            v910 = v1253;
            *&v1267 = v1253;
            sub_37C074(v1253, 4);
            sub_3B8F50(&v1267, &off_CEF8C8);
            sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
            sub_BA6C4(0);
            v911 = v492;
            sub_200620(v491 & 1, v912);
            sub_200598([v910 isFavorite]);

            swift_unknownObjectRelease();
            v99 = v911;
            v599 = v910;
            goto LABEL_651;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v478 v35[196]], 7))
          {
            v525 = *&v33[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
            v526 = sub_AB3770().super.isa;
            v527 = [v525 itemAtIndexPath:v526];

            type metadata accessor for JSPosterItem(0);
            v1256 = v527;
            v528 = swift_dynamicCastClass();
            if (v528)
            {
              v529 = v528;

              v156 = sub_3B356C(v1266);
              v530 = [v1254 v3[332]];
              if (v530)
              {
                v531 = v530;
                v532 = sub_AB92A0();
                v534 = v533;
              }

              else
              {
                v532 = 0;
                v534 = 0xE000000000000000;
              }

              sub_37AC4(v532, v534);
              v1107 = [v1254 a2[318]];
              if (v1107)
              {
                v1108 = v1107;
                v1109 = sub_AB92A0();
                v1111 = v1110;
              }

              else
              {
                v1109 = 0;
                v1111 = 0xE000000000000000;
              }

              sub_37B14(v1109, v1111);
              v1112 = [v1254 descriptionText];
              if (v1112)
              {
                v1113 = v1112;
                v1114 = sub_AB92A0();
                v1116 = v1115;
              }

              else
              {
                v1114 = 0;
                v1116 = 0xE000000000000000;
              }

              sub_37CA8(v1114, v1116);
              v1117 = [v1254 overlayTitleText];
              if (v1117)
              {
                v1118 = v1117;
                v1119 = sub_AB92A0();
                v1121 = v1120;
              }

              else
              {
                v1119 = 0;
                v1121 = 0xE000000000000000;
              }

              sub_37EC8(v1119, v1121);
              v1122 = *(&stru_1F8.size + (swift_isaMask & *v529));
              v1123 = swift_unknownObjectRetain();
              v1124 = v1122(v1123);
              v1126 = v1125;
              swift_unknownObjectRelease();
              if (v1126)
              {
                v1127 = v1124;
              }

              else
              {
                v1127 = 0;
              }

              if (v1126)
              {
                v1128 = v1126;
              }

              else
              {
                v1128 = 0xE000000000000000;
              }

              sub_38508(v1127, v1128);
              v1129 = sub_39AC8(1);
              v1130 = (*(&stru_478.reloff + (swift_isaMask & *v529)))(v1129);
              v1131 = sub_3863C(v1130);
              v1132 = (*&stru_4C8.segname[(swift_isaMask & *v529) + 8])(v1131);
              sub_38720(v1132);
              v1133 = (*(&stru_4C8.offset + (swift_isaMask & *v529)))();
              v1134 = sub_38A9C(v1133);
              v1135 = *(&stru_4C8.reserved2 + (swift_isaMask & *v529));
              v1136 = v1135(v1134);
              if (v1136)
              {
                v1137 = v1136;
                v1138 = (*&stru_298.sectname[swift_isaMask & *v1136])();
                v1140 = v1139;
              }

              else
              {
                v1138 = 0;
                v1140 = 0;
              }

              v1141 = sub_38F48(v1138, v1140);
              v1142 = v1135(v1141);
              if (v1142)
              {
                v1143 = v1142;
                v1144 = (*&stru_298.segname[(swift_isaMask & *v1142) + 8])();

                v1145 = v1144 & 1;
              }

              else
              {
                v1145 = 2;
              }

              sub_38F98(v1145);
              v1146 = (*&stru_518.segname[swift_isaMask & *v529])();
              sub_39C54(v1146 & 1);

              swift_unknownObjectRelease();
              goto LABEL_790;
            }

            swift_unknownObjectRelease();
            v478 = v1260;
          }

          if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v478 v35[196]], 6))
          {
            v1074 = v30;
            v1075 = v1253;
            v14 = v478;

            v1076 = sub_3B3584(v1266);
            v1077 = [v1254 headlineText];
            if (v1077)
            {
              v1078 = v1077;
              v1079 = sub_AB92A0();
              v1081 = v1080;
            }

            else
            {
              v1079 = 0;
              v1081 = 0xE000000000000000;
            }

            v1088 = sub_233E78(v1079, v1081);
            v1089 = [v1254 v3[332]];
            if (v1089)
            {
              v1090 = v1089;
              v1091 = sub_AB92A0();
              v1093 = v1092;
            }

            else
            {
              v1091 = 0;
              v1093 = 0xE000000000000000;
            }

            v1094 = sub_234088(v1091, v1093);
            v1095 = [v1254 a2[318]];
            if (v1095)
            {
              v1096 = v1095;
              v1097 = sub_AB92A0();
              v1099 = v1098;
            }

            else
            {
              v1097 = 0;
              v1099 = 0xE000000000000000;
            }

            sub_234334(v1097, v1099);
            *(&v1268 + 1) = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
            v1269 = &off_D17A48;
            *&v1267 = v1075;
            sub_37C074(v1075, 4);
            sub_3B8D40(&v1267, &off_CEFDE8);
            sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
            v1100 = v1076;
            sub_200878(0);
            sub_20085C(1);
            [v1100 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0}];
            sub_200620(v1074 & 1, v1101);

            swift_unknownObjectRelease();
            v99 = v1100;
            sub_3EB30(v1075, 4);

            v3 = v1265;
            a2 = v1266;
            goto LABEL_51;
          }
        }

        v3 = v1265;
        sub_4B306C();
        if (v1082)
        {
          a2 = v1266;
          v1083 = sub_3B3838(v1266);
          sub_1ABE74(v199, v201);
          sub_1AC118(v204, v206);
          v1084 = v1083;
          sub_200878(1);
          sub_20085C(1);
          sub_1AC36C(v30 & 1, v1085);
          v1086 = v1253;
          sub_200598([v1253 isFavorite]);

          swift_unknownObjectRelease();
          v99 = v1084;
          v599 = v1086;
LABEL_651:
          v600 = 4;
          goto LABEL_659;
        }

        a2 = v1266;
        v183 = sub_3B34DC(v1266);
        AlbumCell.title.setter(v199, v201);
        AlbumCell.artistName.setter(v204, v206);
        *(&v1268 + 1) = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
        v1269 = &off_D17A48;
        *&v1267 = v1253;
        sub_37C074(v1253, 4);
        sub_3B8D10(&v1267, &off_CEFDE8);
        sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
LABEL_653:
        AlbumCell.layoutStyle.setter(0);
        v156 = v183;
        v857 = v30 & 1;
        goto LABEL_654;
      }

      v281 = [v1253 curator];
      if (v281)
      {
        v282 = v281;
        v283 = [v281 name];
        if (v283)
        {
          v284 = v30;
          v285 = v283;
          v204 = sub_AB92A0();
          v206 = v286;

          v30 = v284;
          goto LABEL_259;
        }
      }

      v204 = 0;
      v206 = 0xE000000000000000;
      goto LABEL_259;
    }

    a2 = v1266;
    v182 = v1260;
    if (v1260)
    {
      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 1))
      {
        v183 = sub_3B34DC(a2);
        v184 = [v1253 name];
        if (v184)
        {
          v185 = v30;
          v30 = v184;
          v186 = sub_AB92A0();
          v188 = v187;

          LOBYTE(v30) = v185;
        }

        else
        {
          v186 = 0;
          v188 = 0xE000000000000000;
        }

        AlbumCell.title.setter(v186, v188);
        AlbumCell.artistName.setter(0, 0xE000000000000000);
        goto LABEL_653;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v182 uniformCellType], 2))
      {
LABEL_724:
        v156 = sub_3B35B4(a2);
        sub_361EF0(0, 0, 0, 0);
        v1176 = [v1253 name];
        if (v1176)
        {
          v1177 = v1176;
          v1178 = sub_AB92A0();
          v1180 = v1179;
        }

        else
        {
          v1178 = 0;
          v1180 = 0xE000000000000000;
        }

        sub_1FD7A8(v1178, v1180);
        sub_1FDACC(0, 0xE000000000000000);
        v857 = v30 & 1;
        goto LABEL_654;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v182 uniformCellType], 5))
      {
        v190 = v30;
        v191 = sub_3B3820(a2);
        v379 = [v1254 headlineText];
        if (v379)
        {
          v380 = v379;
          v381 = sub_AB92A0();
          v383 = v382;
        }

        else
        {
          v381 = 0;
          v383 = 0xE000000000000000;
        }

        v858 = sub_BA224(v381, v383);
        v859 = [v1254 titleText];
        if (v859 || (v859 = [v1253 name]) != 0)
        {
          v860 = v859;
          v861 = sub_AB92A0();
          v863 = v862;
        }

        else
        {
          v861 = 0;
          v863 = 0xE000000000000000;
        }

        v864 = sub_BA428(v861, v863);
        v865 = [v1254 subtitleText];
        if (v865)
        {
          v866 = v865;
          v867 = sub_AB92A0();
          v869 = v868;
        }

        else
        {
          v867 = 0;
          v869 = 0xE000000000000000;
        }

        sub_BA588(v867, v869);
        v1269 = 0;
        v1267 = 0u;
        v1268 = 0u;
        sub_3B8F50(&v1267, &off_CEFDE8);
        sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
        v451 = 0;
        goto LABEL_242;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v182 uniformCellType], 6))
      {
        v500 = v30;
        v501 = v1253;
        v502 = sub_3B3584(a2);
        v503 = [v1254 headlineText];
        if (v503)
        {
          v504 = v503;
          v505 = sub_AB92A0();
          v507 = v506;
        }

        else
        {
          v505 = 0;
          v507 = 0xE000000000000000;
        }

        v1012 = sub_233E78(v505, v507);
        v1013 = [v1254 titleText];
        if (v1013 || (v1013 = [v501 name]) != 0)
        {
          v1014 = v1013;
          v1015 = sub_AB92A0();
          v1017 = v1016;
        }

        else
        {
          v1015 = 0;
          v1017 = 0xE000000000000000;
        }

        v1018 = sub_234088(v1015, v1017);
        v1019 = [v1254 subtitleText];
        if (v1019)
        {
          v1020 = v1019;
          v1021 = sub_AB92A0();
          v1023 = v1022;
        }

        else
        {
          v1021 = 0;
          v1023 = 0xE000000000000000;
        }

        sub_234334(v1021, v1023);
        v156 = v502;
        sub_200878(0);
        sub_20085C(1);
        sub_200620(v500 & 1, v1024);

        [v156 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0}];
        if ([v1254 headlineColor] != &dword_0 + 1)
        {
LABEL_629:
          sub_235010(0);

LABEL_790:
          swift_unknownObjectRelease();
          goto LABEL_791;
        }

        v1025 = [(SEL *)v1265 view];
        if (v1025)
        {
          goto LABEL_628;
        }

LABEL_796:
        __break(1u);
        goto LABEL_797;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v182 uniformCellType], 7))
      {
        v671 = *&v33[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
        v672 = sub_AB3770().super.isa;
        [v671 itemAtIndexPath:v672];

        type metadata accessor for JSPosterItem(0);
        v673 = swift_dynamicCastClass();
        if (v673)
        {
          v353 = v673;
          v354 = sub_3B356C(v1266);
          v674 = [v1254 titleText];
          if (v674)
          {
            v675 = v674;
            v676 = sub_AB92A0();
            v678 = v677;
          }

          else
          {
            v676 = 0;
            v678 = 0xE000000000000000;
          }

          sub_37AC4(v676, v678);
          v1205 = [v1254 subtitleText];
          if (v1205)
          {
            v1206 = v1205;
            v1207 = sub_AB92A0();
            v1209 = v1208;
          }

          else
          {
            v1207 = 0;
            v1209 = 0xE000000000000000;
          }

          sub_37B14(v1207, v1209);
          v969 = [v1254 descriptionText];
          if (!v969)
          {
            v975 = 0;
            v976 = 0xE000000000000000;
            goto LABEL_773;
          }

LABEL_771:
          v1215 = v969;
          v975 = sub_AB92A0();
          v976 = v1216;

          goto LABEL_773;
        }

        swift_unknownObjectRelease();
        v3 = v1265;
        a2 = v1266;
      }
    }

    if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1253 curatorKind], 3))
    {
      sub_4B306C();
      LOBYTE(v35) = v30;
      if (v1147)
      {
        v1148 = sub_3B3838(a2);
        v1149 = [v1253 name];
        if (v1149)
        {
          v1150 = v1149;
          v1151 = sub_AB92A0();
          v1153 = v1152;
        }

        else
        {
          v1151 = 0;
          v1153 = 0xE000000000000000;
        }

        sub_1ABE74(v1151, v1153);
        sub_1AC118(0, 0xE000000000000000);
        v156 = v1148;
        sub_200878(1);
        sub_20085C(1);

        sub_1AC36C(v35 & 1, v1181);
        goto LABEL_656;
      }

      v1170 = sub_3B35CC(a2);
      v1171 = [v1253 name];
      if (v1171)
      {
        v1172 = v1171;
        v1173 = sub_AB92A0();
        v1175 = v1174;
      }

      else
      {
        v1173 = 0;
        v1175 = 0xE000000000000000;
      }

      CuratorActivityCell.title.setter(v1173, v1175);
      v524 = v1170;
      goto LABEL_484;
    }

    if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1253 curatorKind], 1))
    {
      v1154 = sub_3B35E4(a2);
      v1155 = [v1254 titleText];
      LOBYTE(v35) = v30;
      if (v1155 || (v1155 = [v1253 shortName]) != 0)
      {
        v1156 = v1155;
        v1157 = sub_AB92A0();
        v1159 = v1158;
      }

      else
      {
        v1157 = 0;
        v1159 = 0xE000000000000000;
      }

      RadioShowCell.title.setter(v1157, v1159);
      v1160 = [v1254 subtitleText];
      if (v1160 || (v1160 = [v1253 name]) != 0)
      {
        v1161 = v1160;
        v1162 = sub_AB92A0();
        v1164 = v1163;
      }

      else
      {
        v1162 = 0;
        v1164 = 0xE000000000000000;
      }

      RadioShowCell.subtitle.setter(v1162, v1164);
      v1165 = [v1254 overlayTitleText];
      if (v1165)
      {
        v1166 = v1165;
        v1167 = sub_AB92A0();
        v1169 = v1168;
      }

      else
      {
        v1167 = 0;
        v1169 = 0xE000000000000000;
      }

      RadioShowCell.overlayTitle.setter(v1167, v1169);
      v1182 = [v1254 overlaySubtitleText];
      if (v1182)
      {
        v1183 = v1182;
        v1184 = sub_AB92A0();
        v1186 = v1185;
      }

      else
      {
        v1184 = 0;
        v1186 = 0xE000000000000000;
      }

      RadioShowCell.overlaySubtitle.setter(v1184, v1186);
      v524 = v1154;
      goto LABEL_484;
    }

    goto LABEL_724;
  }

LABEL_75:
  if (v31)
  {
    if (v31 != 1)
    {
      goto LABEL_117;
    }

    a2 = v1266;
    v138 = v1260;
    if (v1260)
    {
      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 1))
      {
        v139 = sub_3B34DC(a2);
        v140 = [v1253 name];
        if (v140)
        {
          v141 = v30;
          v30 = v140;
          v142 = sub_AB92A0();
          v144 = v143;

          LOBYTE(v30) = v141;
        }

        else
        {
          v142 = 0;
          v144 = 0xE000000000000000;
        }

        AlbumCell.title.setter(v142, v144);
        AlbumCell.artistName.setter(0, 0xE000000000000000);
        AlbumCell.layoutStyle.setter(0);
        v156 = v139;
        VerticalLockupCollectionViewCell.isDisabled.setter(v30 & 1);

        *(&v1268 + 1) = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
        v1269 = &off_D17A70;
        *&v1267 = v1253;
        sub_37C074(v1253, 1);
        sub_3B8D10(&v1267, &off_CEFDE8);
LABEL_748:

        swift_unknownObjectRelease();
        sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
        goto LABEL_658;
      }

      if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v138 uniformCellType], 3))
      {
        v156 = sub_3B3554(v1266);
        v287 = sub_4B4A50();
        v288 = v287;
        sub_4C5CB8(v287);
        if (v288 == 2)
        {
          v289 = 0;
        }

        else
        {
          v289 = &dword_0 + 3;
        }

        sub_4C5DC0(v289);
        *(&v1268 + 1) = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
        v1269 = &off_D17A70;
        *&v1267 = v1253;
        v290 = v1253;
        sub_3B8D28(&v1267, &off_CEFDE8);
        sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
        v291 = [v1254 headlineText];
        if (v291)
        {
          v292 = v30;
          v30 = v291;
          v293 = sub_AB92A0();
          v295 = v294;

          LOBYTE(v30) = v292;
        }

        else
        {
          v293 = 0;
          v295 = 0xE000000000000000;
        }

        v541 = [v290 name];
        a2 = v1266;
        if (v541)
        {
          v542 = v541;
          v543 = sub_AB92A0();
          v545 = v544;
        }

        else
        {
          v543 = 0;
          v545 = 0xE000000000000000;
        }

        sub_4C5610(v543, v545);
        v586 = 0xE000000000000000;
        v587 = sub_4C5820(0, 0xE000000000000000);
        v588 = [v1254 descriptionText];
        if (!v588)
        {
          v589 = 0;
LABEL_533:
          sub_4C5ACC(v589, v586);
          v702 = v30 & 1;
LABEL_534:
          sub_4C5EA0(v702);
          goto LABEL_656;
        }

LABEL_531:
        v919 = v588;
        v589 = sub_AB92A0();
        v586 = v920;

        goto LABEL_533;
      }

      v349 = j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v138 uniformCellType], 7);
      a2 = v1266;
      if (v349)
      {
        v350 = *&v33[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
        v351 = sub_AB3770().super.isa;
        [v350 itemAtIndexPath:v351];

        type metadata accessor for JSPosterItem(0);
        v352 = swift_dynamicCastClass();
        if (v352)
        {
          v353 = v352;
          v354 = sub_3B356C(a2);
          v355 = [v1254 titleText];
          if (v355)
          {
            v356 = v355;
            v357 = sub_AB92A0();
            v359 = v358;
          }

          else
          {
            v357 = 0;
            v359 = 0xE000000000000000;
          }

          sub_37AC4(v357, v359);
          v954 = [v1254 subtitleText];
          if (v954)
          {
            v955 = v954;
            v956 = sub_AB92A0();
            v958 = v957;
          }

          else
          {
            v956 = 0;
            v958 = 0xE000000000000000;
          }

          sub_37B14(v956, v958);
          v969 = [v1254 descriptionText];
          if (v969)
          {
            goto LABEL_771;
          }

          v975 = 0;
          v976 = 0xE000000000000000;
LABEL_773:
          sub_37CA8(v975, v976);
          v1217 = [v1254 overlayTitleText];
          if (v1217)
          {
            v1218 = v1217;
            v1219 = sub_AB92A0();
            v1221 = v1220;
          }

          else
          {
            v1219 = 0;
            v1221 = 0xE000000000000000;
          }

          sub_37EC8(v1219, v1221);
          v1222 = *(&stru_1F8.size + (swift_isaMask & *v353));
          v1223 = swift_unknownObjectRetain();
          v1224 = v1222(v1223);
          v1226 = v1225;
          swift_unknownObjectRelease();
          if (v1226)
          {
            v1227 = v1224;
          }

          else
          {
            v1227 = 0;
          }

          if (v1226)
          {
            v1228 = v1226;
          }

          else
          {
            v1228 = 0xE000000000000000;
          }

          sub_38508(v1227, v1228);
          v1229 = sub_39AC8(1);
          v1230 = (*(&stru_478.reloff + (swift_isaMask & *v353)))(v1229);
          v1231 = sub_3863C(v1230);
          v1232 = (*&stru_4C8.segname[(swift_isaMask & *v353) + 8])(v1231);
          sub_38720(v1232);
          v1233 = (*(&stru_4C8.offset + (swift_isaMask & *v353)))();
          v1234 = sub_38A9C(v1233);
          v1235 = *(&stru_4C8.reserved2 + (swift_isaMask & *v353));
          v1236 = v1235(v1234);
          if (v1236)
          {
            v1237 = v1236;
            v1238 = (*&stru_298.sectname[swift_isaMask & *v1236])();
            v1240 = v1239;
          }

          else
          {
            v1238 = 0;
            v1240 = 0;
          }

          v1241 = sub_38F48(v1238, v1240);
          v1242 = v1235(v1241);
          if (v1242)
          {
            v1243 = v1242;
            v1244 = (*&stru_298.segname[(swift_isaMask & *v1242) + 8])();

            v1245 = v1244 & 1;
          }

          else
          {
            v1245 = 2;
          }

          v156 = v354;
          sub_38F98(v1245);
          v1006 = *&stru_518.segname[swift_isaMask & *v353];
LABEL_789:
          v1246 = v1006();
          sub_39C54(v1246 & 1);

          swift_unknownObjectRelease();
          goto LABEL_790;
        }

        swift_unknownObjectRelease();
      }
    }

    sub_4B306C();
    if (v744)
    {
      v745 = sub_3B3868(a2);
      sub_15D33C(1);
      v746 = [v1254 titleText];
      v747 = v30;
      if (v746 || (v746 = [v1253 name]) != 0)
      {
        v748 = v746;
        v749 = sub_AB92A0();
        v751 = v750;
      }

      else
      {
        v749 = 0;
        v751 = 0xE000000000000000;
      }

      v752 = sub_15D360(v749, v751);
      v753 = [v1254 subtitleText];
      if (v753)
      {
        v754 = v753;
        v755 = sub_AB92A0();
        v757 = v756;
      }

      else
      {
        v755 = 0;
        v757 = 0xE000000000000000;
      }

      sub_15D488(v755, v757);
      v769 = v745;
      sub_200620(v747 & 1, v770);
      v771 = v1253;
      sub_200598([v1253 isFavorite]);

      swift_unknownObjectRelease();
      v99 = v769;
      v599 = v771;
      v600 = 1;
      goto LABEL_659;
    }

    v156 = sub_3B35B4(a2);
    sub_361EF0(0, 0, 0, 0);
    sub_1FDD00(1);
    v758 = [v1254 titleText];
    if (v758 || (v758 = [v1253 name]) != 0)
    {
      v759 = v758;
      v760 = sub_AB92A0();
      v762 = v761;
    }

    else
    {
      v760 = 0;
      v762 = 0xE000000000000000;
    }

    v763 = sub_1FD7A8(v760, v762);
    v764 = [v1254 subtitleText];
    if (v764)
    {
      v765 = v764;
      v766 = sub_AB92A0();
      v768 = v767;
    }

    else
    {
      v766 = 0;
      v768 = 0xE000000000000000;
    }

    sub_1FDACC(v766, v768);
    VerticalLockupCollectionViewCell.isDisabled.setter(v30 & 1);

    *(&v1268 + 1) = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
    v1269 = &off_D17A70;
    *&v1267 = v1253;
    sub_37C074(v1253, 1);
    sub_3B8D70(&v1267, &off_CEFDE8);
    goto LABEL_748;
  }

  v153 = sub_3CAC50(v1253);
  v1248 = v154;
  a2 = v1266;
  v155 = v1260;
  if (!v1260)
  {
    goto LABEL_468;
  }

  if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 3))
  {
    v156 = sub_3B3554(a2);
    v157 = sub_4B4A50();
    sub_4C5CB8(v157);
    sub_4C5DC0(0);
    *(&v1268 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
    v1269 = &off_D17A20;
    *&v1267 = v1253;
    v158 = v1253;
    sub_3B8D28(&v1267, &off_CEFDE8);
    sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
    v159 = [v1254 headlineText];
    if (v159)
    {
      v160 = v30;
      v30 = v159;
      v161 = sub_AB92A0();
      v163 = v162;

      LOBYTE(v30) = v160;
    }

    else
    {
      v161 = 0;
      v163 = 0xE000000000000000;
    }

    v419 = sub_4C53F0(v161, v163);
    v420 = [v1254 titleText];
    if (v420)
    {
      v421 = v420;
      v153 = sub_AB92A0();
      v423 = v422;

      v424 = v423;
    }

    else
    {
      v424 = v1248;
    }

    v425 = sub_4C5610(v153, v424);
    v426 = [v1254 subtitleText];
    if (!v426)
    {
      v431 = [v158 artist];
      if (v431)
      {
        v432 = v431;
        v433 = v30;
        v434 = [v431 name];
        if (v434)
        {
          v435 = v434;
          v428 = sub_AB92A0();
          v430 = v436;
        }

        else
        {

          v428 = 0;
          v430 = 0xE000000000000000;
        }

        LOBYTE(v30) = v433;
      }

      else
      {
        v428 = 0;
        v430 = 0xE000000000000000;
      }

      goto LABEL_529;
    }

    goto LABEL_227;
  }

  if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v155 uniformCellType], 5))
  {
    v303 = v30;

    v304 = sub_3B3820(a2);
    v305 = [v1254 headlineText];
    if (v305)
    {
      v306 = v305;
      v307 = sub_AB92A0();
      v309 = v308;
    }

    else
    {
      v307 = 0;
      v309 = 0xE000000000000000;
    }

    v558 = sub_BA224(v307, v309);
    v559 = [v1254 titleText];
    if (v559 || (v559 = [v1253 title]) != 0)
    {
      v560 = v559;
      v561 = sub_AB92A0();
      v563 = v562;
    }

    else
    {
      v561 = 0;
      v563 = 0xE000000000000000;
    }

    v564 = sub_BA428(v561, v563);
    v565 = [v1254 subtitleText];
    v3 = v1265;
    if (v565)
    {
      v566 = v565;
      v567 = sub_AB92A0();
      v569 = v568;

      v570 = v569;
      v571 = v567;
    }

    else
    {
      sub_AB9220();
      v1270._countAndFlagsBits = 0;
      v1270._object = 0xE000000000000000;
      sub_AB9210(v1270);
      *&v1267 = [v1253 trackCount];
      sub_AB91F0();
      v1271._countAndFlagsBits = 0x297328676E6F7320;
      v1271._object = 0xE800000000000000;
      sub_AB9210(v1271);
      v595 = sub_AB9240();
      sub_5F26C(v595);
      v571 = sub_AB9320();
    }

    sub_BA588(v571, v570);
    *(&v1268 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
    v1269 = &off_D17A20;
    v596 = v1253;
    *&v1267 = v1253;
    sub_37C074(v1253, 0);
    sub_3B8F50(&v1267, &off_CEF8C8);
    sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
    sub_BA6C4(0);
    v597 = v304;
    sub_200620(v303 & 1, v598);
    sub_200598([v596 isFavorite]);

    swift_unknownObjectRelease();
    v99 = v597;
    v599 = v596;
    v600 = 0;
    goto LABEL_659;
  }

  if (j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v155 uniformCellType], 7))
  {
    v371 = *&v33[OBJC_IVAR____TtC16MusicApplication19JSGridModelResponse_jsResults];
    v372 = sub_AB3770().super.isa;
    [v371 itemAtIndexPath:v372];

    type metadata accessor for JSPosterItem(0);
    v373 = swift_dynamicCastClass();
    if (v373)
    {
      v353 = v373;

      v354 = sub_3B356C(a2);
      v374 = [v1254 titleText];
      if (v374)
      {
        v375 = v374;
        v376 = sub_AB92A0();
        v378 = v377;
      }

      else
      {
        v376 = 0;
        v378 = 0xE000000000000000;
      }

      sub_37AC4(v376, v378);
      v964 = [v1254 subtitleText];
      if (v964)
      {
        v965 = v964;
        v966 = sub_AB92A0();
        v968 = v967;
      }

      else
      {
        v966 = 0;
        v968 = 0xE000000000000000;
      }

      sub_37B14(v966, v968);
      v969 = [v1254 descriptionText];
      if (v969)
      {
        goto LABEL_771;
      }

      v975 = 0;
      v976 = 0xE000000000000000;
      goto LABEL_773;
    }

    swift_unknownObjectRelease();
  }

  v832 = v1260;
  if (!j___s11MusicCoreUI7ArtworkV7CachingV9ReferenceC2eeoiySbAG_AGtFZ([v1260 uniformCellType], 6))
  {
LABEL_468:
    v134 = sub_3B34DC(a2);
    v842 = sub_AB37F0();
    v843 = sub_4B808C(v842);
    if (v843)
    {
      v844 = sub_AB37B0();
      v39 = __OFADD__(v844, 1);
      v845 = v844 + 1;
      if (!v39)
      {
LABEL_473:
        LOBYTE(v35) = v30;
        AlbumCell.rank.setter(v845, (v843 & 1) == 0);
        v846 = AlbumCell.title.setter(v153, v1248);
        v847 = [v1254 subtitleText];
        if (v847)
        {
          v848 = v847;
          v849 = sub_AB92A0();
          v851 = v850;

LABEL_480:
          AlbumCell.artistName.setter(v849, v851);
          *(&v1268 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
          v1269 = &off_D17A20;
          v476 = v1253;
          *&v1267 = v1253;
          v477 = 0;
LABEL_481:
          sub_37C074(v476, v477);
LABEL_482:
          sub_3B8D10(&v1267, &off_CEFDE8);
          sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
          AlbumCell.layoutStyle.setter(0);
LABEL_483:
          v524 = v134;
          goto LABEL_484;
        }

        v852 = [v1253 artist];
        if (v852)
        {
          v853 = v852;
          v854 = [v852 name];
          if (v854)
          {
            v855 = v854;
            v849 = sub_AB92A0();
            v851 = v856;

            v3 = v1265;
            goto LABEL_480;
          }
        }

        v849 = 0;
        v851 = 0xE000000000000000;
        goto LABEL_480;
      }

      __break(1u);
    }

    v845 = 0;
    goto LABEL_473;
  }

  v833 = v30;
  v834 = v1253;
  v835 = v832;
  v836 = sub_3B3584(a2);
  v837 = [v1254 headlineText];
  if (v837)
  {
    v838 = v837;
    v839 = sub_AB92A0();
    v841 = v840;
  }

  else
  {
    v839 = 0;
    v841 = 0xE000000000000000;
  }

  v937 = sub_233E78(v839, v841);
  v938 = [v1254 titleText];
  if (v938)
  {
    v939 = v938;
    v153 = sub_AB92A0();
    v941 = v940;

    v942 = v941;
  }

  else
  {
    v942 = v1248;
  }

  v943 = sub_234088(v153, v942);
  v944 = [v1254 subtitleText];
  if (!v944)
  {
    v949 = [v834 artist];
    if (v949)
    {
      v950 = v949;
      v951 = [v949 name];
      if (v951)
      {
        v952 = v951;
        v946 = sub_AB92A0();
        v948 = v953;

        goto LABEL_759;
      }
    }

    v946 = 0;
    v948 = 0xE000000000000000;
    goto LABEL_759;
  }

  v945 = v944;
  v946 = sub_AB92A0();
  v948 = v947;

LABEL_759:
  sub_234334(v946, v948);
  *(&v1268 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v1269 = &off_D17A20;
  *&v1267 = v834;
  sub_37C074(v834, 0);
  sub_3B8D40(&v1267, &off_CEF8C8);
  sub_12E1C(&v1267, &unk_DE9C60, &unk_AF8940);
  v1202 = v836;
  sub_200878(0);
  sub_20085C(1);
  sub_200620(v833 & 1, v1203);
  sub_200598([v834 isFavorite]);

  v1204 = v1202;
  [v1204 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0}];

  swift_unknownObjectRelease();
  v99 = v1204;
  sub_3EB30(v834, 0);

  v3 = v1265;
  a2 = v1266;
  v14 = v835;
LABEL_51:
  swift_getObjectType();
  v100 = swift_conformsToProtocol2();
  p_name = &JSDateDescriptor.name;
  if (v100 && v99)
  {
    v102 = v100;
    ObjectType = swift_getObjectType();
    v104 = v99;
    (*(v102 + 16))([(SEL *)v3 viewBackgroundColor], ObjectType, v102);
  }

  swift_getObjectType();
  v105 = swift_conformsToProtocol2();
  if (v105 && v99)
  {
    v106 = v105;
    v1254 = swift_getObjectType();
    v107 = *(v106 + 8);
    v1255 = (v106 + 8);
    v1256 = v107;
    v108 = (v107)(v1254, v106);
    v1260 = v14;
    v109 = v108;
    v110 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v111 = swift_allocObject();
    *(v111 + 24) = v106;
    swift_unknownObjectWeakInit();
    v112 = v1262;
    v1253 = *(v1262 + 16);
    v1257 = v99;
    v114 = v1263;
    v113 = v1264;
    (v1253)(v1263, a2, v1264);
    v115 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v116 = swift_allocObject();
    v1265 = v3;
    v117 = v116;
    *(v116 + 16) = v111;
    *(v116 + 24) = v110;
    (*(v112 + 32))(v116 + v115, v114, v113);
    v118 = (v109 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
    v120 = *(v109 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
    v119 = v118[1];
    *v118 = sub_4BDE2C;
    v118[1] = v117;
    v3 = v1265;

    v121 = v120;
    v14 = v1260;
    v122 = v119;
    a2 = v1266;
    sub_17654(v121, v122);

    (v1253)(v114, a2, v113);
    v123 = v1257;
    v124 = v1259;
    v125 = v114;
    v99 = v1257;
    sub_74D38(v125, v1257, v1259);
    v126 = (v1256)(v1254, v106);
    *(&v1268 + 1) = v1258;
    v1269 = sub_4BDE90(&unk_E087E0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext, &unk_AF9750);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v1267);
    sub_4BE210(v124, boxed_opaque_existential_0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
    v128 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext;
    swift_beginAccess();
    v129 = v126 + v128;
    p_name = (&JSDateDescriptor + 24);
    sub_160B4(&v1267, v129, &unk_E03770, &unk_B105D0);
    swift_endAccess();
  }

  else
  {
  }

  if (*(v3 + qword_E0A788))
  {

    sub_389E3C(a2, v99);
  }

  v130 = [v3 p_name[488]];
  [v99 setBackgroundColor:v130];
}