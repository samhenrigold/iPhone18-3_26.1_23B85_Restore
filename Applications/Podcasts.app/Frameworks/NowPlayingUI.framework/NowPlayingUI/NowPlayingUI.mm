void sub_38DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, ...)
{
  va_start(va, a38);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v38 - 200), 8);
  _Block_object_dispose((v38 - 112), 8);
  _Unwind_Resume(a1);
}

id UITableViewCellDisclosureChevronImage()
{
  v0 = objc_opt_new();
  v1 = [v0 _disclosureChevronImage:0];

  return v1;
}

uint64_t _s12NowPlayingUI0aB21MediaPlayerControllerC19primaryArtworkTrace33_BD6C381424466E5C12AE14FFAD22DB62LL18PodcastsFoundation0I0_pvpfi_0()
{
  v0 = sub_14243C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1423FC();
  sub_144C2C();
  sub_141F8C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t variable initialization expression of NowPlayingMediaPlayerController.playerStylePublisher()
{
  v0 = sub_140D5C();
  v1 = __chkstk_darwin(v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for NowPlayingPlayerStyle.mini(_:), v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C00F0, &unk_149820);
  swift_allocObject();
  return sub_14260C();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t variable initialization expression of NowPlayingMediaPlayerController.selectedContentSubject()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C1DA0, &qword_14EB20);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1417CC();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0100, &unk_149830);
  swift_allocObject();
  return sub_14260C();
}

char *variable initialization expression of NowPlayingMediaPlayerController.miniPlayerSublineController()
{
  type metadata accessor for NowPlayingMiniPlayerSublineController(0);
  v0 = swift_allocObject();
  type metadata accessor for NowPlayingMiniPlayerSublineViewModel(0);
  *(v0 + 2) = 0;
  *(v0 + 3) = 0;
  swift_allocObject();
  v1 = sub_76918();
  *(v0 + 5) = 0;
  *(v0 + 6) = 0;
  *(v0 + 4) = v1;
  v2 = OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___miniPlayerSubtitle;
  v3 = sub_1415DC();
  (*(*(v3 - 8) + 56))(&v0[v2], 1, 1, v3);
  v4 = OBJC_IVAR____TtC12NowPlayingUI37NowPlayingMiniPlayerSublineController____lazy_storage___viewProvider;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0108, &unk_14C910);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  return v0;
}

uint64_t sub_542C(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  a1(0);
  swift_allocObject();
  return a2();
}

uint64_t variable initialization expression of NowPlayingMediaPlayerController.$__lazy_storage_$_viewProvider@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C0110, &unk_149840);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_54F4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2B00, &qword_149850) + 36);
  v15 = sub_141C9C();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0120, &qword_149858) + 36)) = a2;
  *a7 = a3;
  *(a7 + 8) = a4;
  *(a7 + 16) = a5 & 1;
  *(a7 + 24) = a6;
  sub_63AC(a3, a4, a5 & 1);
}

uint64_t sub_55E8@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4 & 1;
  *(a6 + 24) = a5;
  *(a6 + 32) = a7;
  *(a6 + 36) = a1;
  sub_63AC(a2, a3, a4 & 1);
}

uint64_t sub_5644(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a5 != 4)
  {
    sub_14367C();
  }

  return sub_1438EC();
}

uint64_t sub_5714(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1434FC();

    return sub_142C6C();
  }

  else
  {
    sub_142D3C();
    swift_getWitnessTable();
    sub_14334C();
    sub_142C6C();
    sub_1450CC();
    swift_getWitnessTable();
    sub_142D3C();
    swift_getWitnessTable();
    sub_14334C();
    return sub_142C6C();
  }
}

uint64_t sub_5878(uint64_t *a1)
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_1434FC();
    sub_142C6C();
  }

  else
  {
    sub_142D3C();
    swift_getWitnessTable();
    sub_14334C();
    sub_142C6C();
    sub_1450CC();
    swift_getWitnessTable();
    sub_142D3C();
    swift_getWitnessTable();
    sub_14334C();
    sub_142C6C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

double variable initialization expression of NowPlayingContextInteractionDelegate.episodeController@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id variable initialization expression of BaseTabBarController.accessoryView()
{
  v0 = objc_allocWithZone(UIView);

  return [v0 init];
}

id variable initialization expression of BaseTabBarController.separator()
{
  v0 = [objc_allocWithZone(UIView) init];
  v1 = [objc_opt_self() _barHairlineShadowColor];
  [v0 setBackgroundColor:v1];

  return v0;
}

uint64_t variable initialization expression of TickerSlider._colorScheme@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0128, &unk_149890);

  return swift_storeEnumTagMultiPayload();
}

double variable initialization expression of NowPlayingPlaybackControlsViewModel.sliderSelectedPlaybackRate()
{
  sub_141F5C();
  sub_141EDC();
  return v0;
}

uint64_t variable initialization expression of NowPlayingPlaybackControlsViewModel.playbackRatePublisher()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C0130, &unk_14C580);
  swift_allocObject();
  return sub_1425DC();
}

uint64_t variable initialization expression of NowPlayingPlaybackControlsViewModel.isScrollingPublisher()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C92C0, &qword_1498A0);
  swift_allocObject();
  return sub_14260C();
}

uint64_t variable initialization expression of NowPlayingPlaybackControlsViewModel.animationViewModel()
{
  type metadata accessor for NowPlayingSpeedControlsAnimationViewModel(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = xmmword_149810;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 56) = _Q0;
  _s12NowPlayingUI0aB25PlaybackControlsViewModelC22__observationRegistrar33_BBABE4AA5745F1C18638BEFD3E39EDD411Observation0qI0Vvpfi_0();
  return v0;
}

uint64_t sub_5DA0(uint64_t a1, id *a2)
{
  result = sub_1448BC();
  *a2 = 0;
  return result;
}

uint64_t sub_5E18(uint64_t a1, id *a2)
{
  v3 = sub_1448CC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_5E98@<X0>(uint64_t *a1@<X8>)
{
  sub_1448DC();
  v2 = sub_14489C();

  *a1 = v2;
  return result;
}

BOOL sub_5EF0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_5F54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1448DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_5F80@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_5FA4(uint64_t a1)
{
  v2 = sub_6814(&qword_1C0430, type metadata accessor for Key, &unk_14A22C);
  v3 = sub_6814(&qword_1C0438, type metadata accessor for Key, &unk_14A180);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_6060(uint64_t a1)
{
  v2 = sub_6814(&qword_1C0308, type metadata accessor for Name, &unk_149EA8);
  v3 = sub_6814(&qword_1C0310, type metadata accessor for Name, &unk_149E48);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_611C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_14489C();

  *a2 = v3;
  return result;
}

uint64_t sub_6164(uint64_t a1)
{
  v2 = sub_6814(&qword_1C0318, type metadata accessor for NSKeyValueChangeKey, &unk_149C20);
  v3 = sub_6814(&qword_1C0320, type metadata accessor for NSKeyValueChangeKey, &unk_149BC0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_6220()
{
  sub_1448DC();
  v0 = sub_14497C();

  return v0;
}

uint64_t sub_625C(uint64_t a1)
{
  sub_1448DC();
  sub_14492C();
}

Swift::Int sub_62B0(uint64_t a1)
{
  sub_1448DC();
  sub_14545C();
  sub_14492C();
  v1 = sub_1454AC();

  return v1;
}

uint64_t sub_6324(void *a1, uint64_t *a2)
{
  v2 = sub_1448DC();
  v4 = v3;
  if (v2 == sub_1448DC() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1453BC();
  }

  return v7 & 1;
}

uint64_t sub_63AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_65A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_65C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_665C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 56))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_66B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_6728(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_6748(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_6814(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_6AE0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

id sub_6BA8()
{
  _s24LoadingStatusCoordinatorCMa();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(NSHashTable) initWithOptions:5 capacity:0];
  result = [objc_allocWithZone(NSMapTable) initWithKeyOptions:5 valueOptions:0 capacity:0];
  *(v0 + 24) = result;
  qword_1D1728 = v0;
  return result;
}

void sub_6C2C(uint64_t a1)
{
  p_ivar_lyt = &SongCell.ivar_lyt;
  [*(v1 + 16) removeObject:a1];
  v4 = sub_139F90(_swiftEmptyArrayStorage);
  v87 = v4;
  v79 = v1;
  v5 = [*(v1 + 24) keyEnumerator];
  v74 = v5;
  v83 = a1;
  if ([v5 nextObject])
  {
    while (1)
    {
      sub_14514C();
      swift_unknownObjectRelease();
      sub_7828(v86, &v84);
      sub_77DC();
      if (swift_dynamicCast())
      {
        v6 = v85;
        v7 = [*(v79 + 24) objectForKey:v85];
        if (v7)
        {
          v8 = v7;
          v9 = v87;
          if ((v87 & 0xC000000000000001) != 0)
          {
            if (v87 < 0)
            {
              v10 = v87;
            }

            else
            {
              v10 = v87 & 0xFFFFFFFFFFFFFF8;
            }

            v11 = sub_1452CC();
            if (__OFADD__(v11, 1))
            {
              goto LABEL_73;
            }

            v9 = sub_7550(v10, v11 + 1);
            v87 = v9;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v84 = v9;
          v13 = sub_F7D28(v6);
          v15 = *(v9 + 16);
          v16 = (v14 & 1) == 0;
          v17 = __OFADD__(v15, v16);
          v18 = v15 + v16;
          if (v17)
          {
            goto LABEL_72;
          }

          v19 = v14;
          if (*(v9 + 24) < v18)
          {
            sub_13546C(v18, isUniquelyReferenced_nonNull_native);
            v13 = sub_F7D28(v6);
            if ((v19 & 1) != (v20 & 1))
            {
              goto LABEL_75;
            }

            goto LABEL_19;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_19:
            v21 = v84;
            if ((v19 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v22 = v13;
            sub_138CFC();
            v13 = v22;
            v5 = v74;
            v21 = v84;
            if ((v19 & 1) == 0)
            {
LABEL_22:
              v21[(v13 >> 6) + 8] |= 1 << v13;
              *(v21[6] + 8 * v13) = v6;
              *(v21[7] + 8 * v13) = v8;
              __swift_destroy_boxed_opaque_existential_0(v86);
              v23 = v21[2];
              v17 = __OFADD__(v23, 1);
              v24 = v23 + 1;
              if (v17)
              {
                goto LABEL_74;
              }

              v21[2] = v24;
              v87 = v21;
              goto LABEL_5;
            }
          }

          *(v21[7] + 8 * v13) = v8;

          __swift_destroy_boxed_opaque_existential_0(v86);
          v87 = v21;
          goto LABEL_5;
        }

        sub_AEA20(v6);
      }

      __swift_destroy_boxed_opaque_existential_0(v86);
LABEL_5:
      if (![v5 nextObject])
      {
        v4 = v87;
        p_ivar_lyt = (&SongCell + 16);
        break;
      }
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    if (sub_1452CC() <= 0)
    {
      goto LABEL_66;
    }

    v25 = sub_1452BC();
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v4 = v25 | 0x8000000000000000;
  }

  else
  {
    if (!*(v4 + 16))
    {
      goto LABEL_66;
    }

    v29 = -1 << *(v4 + 32);
    v26 = v4 + 64;
    v27 = ~v29;
    v30 = -v29;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    else
    {
      v31 = -1;
    }

    v28 = v31 & *(v4 + 64);
  }

  v32 = 0;
  v81 = _swiftEmptyArrayStorage;
  v33 = (v27 + 64) >> 6;
  v75 = v33;
  v72 = v26;
  v73 = v4;
  if ((v4 & 0x8000000000000000) == 0)
  {
    goto LABEL_37;
  }

LABEL_43:
  v43 = sub_1452EC();
  if (!v43 || (v45 = v44, v85 = v43, sub_77DC(), swift_dynamicCast(), v42 = v84, v85 = v45, _s24LoadingStatusCoordinatorC12ObserverListCMa(), swift_dynamicCast(), v82 = v84, v34 = v32, v38 = v28, !v42))
  {
LABEL_62:
    sub_7774(v4);
    v68 = v81[2];
    if (v68)
    {
      v69 = v81 + 5;
      do
      {
        v70 = *(v69 - 1);

        v70(v71);

        v69 += 2;
        --v68;
      }

      while (v68);

      v5 = v74;
      goto LABEL_67;
    }

LABEL_66:

LABEL_67:

    return;
  }

  while (1)
  {
    v77 = v42;
    v78 = v38;
    swift_beginAccess();
    v46 = v82[2];
    v47 = *(v46 + 16);
    v80 = (v46 + 16);
    if (v47)
    {
      v76 = v34;

      v48 = -v47;
      v49 = v47 - 1;
      v50 = 24 * v47 + 32;
      v51 = v80;
      v52 = v81;
      v53 = &selRef_addSublayer_;
      do
      {
        if (!v48)
        {
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
          goto LABEL_71;
        }

        if (v49 >= *v51)
        {
          goto LABEL_69;
        }

        v56 = *(v51 + v50 - 40);
        v57 = *(v51 + v50 - 32);
        v58 = *(v51 + v50 - 24);

        [v58 p:v83 ivar:?lyt[413]];
        if (![v58 v53[186]])
        {
          swift_beginAccess();
          v59 = v82[2];
          v60 = swift_isUniquelyReferenced_nonNull_native();
          v82[2] = v59;
          if ((v60 & 1) == 0)
          {
            v59 = sub_9F040(v59);
            v82[2] = v59;
          }

          v61 = *(v59 + 2);
          if (v49 >= v61)
          {
            goto LABEL_70;
          }

          v62 = v61 - 1;
          v63 = v52;
          v64 = *&v59[v50 - 8];
          memmove(&v59[v50 - 24], &v59[v50], 24 * (v48 + v61));
          *(v59 + 2) = v62;
          v82[2] = v59;
          swift_endAccess();

          v52 = v63;

          v65 = swift_allocObject();
          *(v65 + 16) = v56;
          *(v65 + 24) = v57;
          v66 = v63[2];

          v67 = swift_isUniquelyReferenced_nonNull_native();
          if (!v67 || v66 >= v52[3] >> 1)
          {
            v52 = sub_133E2C(v67, v66 + 1, 1, v52);
          }

          p_ivar_lyt = &SongCell.ivar_lyt;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C06B8, &unk_14A310);
          swift_arrayDestroy();
          v54 = v52[2];
          memmove(v52 + 6, v52 + 4, 16 * v54);
          v52[2] = v54 + 1;
          v52[4] = sub_77B4;
          v52[5] = v65;
          v53 = &selRef_addSublayer_;
          v51 = v80;
        }

        --v49;
        v50 -= 24;
      }

      while (!__CFADD__(v48++, 1));
      v81 = v52;

      v4 = v73;
      if (!*(v82[2] + 16))
      {
        v5 = v74;
        v26 = v72;
        v34 = v76;
        goto LABEL_36;
      }

      v32 = v76;
      v28 = v78;
      v5 = v74;
      v33 = v75;
      v26 = v72;
      if ((v73 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

    else
    {
LABEL_36:
      v35 = *(v79 + 24);
      [v35 removeObjectForKey:v77];

      v32 = v34;
      v28 = v78;
      v33 = v75;
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }
    }

LABEL_37:
    v36 = v32;
    v37 = v28;
    v34 = v32;
    if (!v28)
    {
      break;
    }

LABEL_41:
    v38 = (v37 - 1) & v37;
    v39 = (v34 << 9) | (8 * __clz(__rbit64(v37)));
    v40 = v5;
    v41 = *(*(v4 + 56) + v39);
    v42 = *(*(v4 + 48) + v39);
    v82 = v41;
    v5 = v40;

    if (!v42)
    {
      goto LABEL_62;
    }
  }

  while (1)
  {
    v34 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v34 >= v33)
    {
      goto LABEL_62;
    }

    v37 = *(v26 + 8 * v34);
    ++v36;
    if (v37)
    {
      goto LABEL_41;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  sub_1453EC();
  __break(1u);
}

uint64_t sub_73E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_741C()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_74B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_7500(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

Swift::Int sub_7550(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C06C0, &qword_156080);
    v2 = sub_14534C();
    v19 = v2;
    sub_1452BC();
    v3 = sub_1452EC();
    if (v3)
    {
      v4 = v3;
      sub_77DC();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        _s24LoadingStatusCoordinatorC12ObserverListCMa();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_13546C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_144FEC(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1452EC();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_777C()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_77DC()
{
  result = qword_1C89D0;
  if (!qword_1C89D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C89D0);
  }

  return result;
}

uint64_t sub_7828(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

id sub_78E0()
{
  *(v0 + 24) = 0;
  v1 = [objc_opt_self() mainScreen];
  [v1 scale];
  v3 = v2;

  *(v0 + 32) = v3;
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  result = swift_beginAccess();
  if (!qword_1D1830)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!qword_1D1840)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v5 = qword_1D1840;
  if (![v5 isViewLoaded])
  {

    goto LABEL_10;
  }

  result = [v5 view];
  if (result)
  {
    v6 = result;
    v7 = [result tintColor];

    v8 = v7;
    if (v7)
    {
LABEL_11:
      *(v0 + 40) = v8;
      _s5CacheC3KeyCMa();
      v9 = swift_allocObject();
      *(v9 + 16) = 0;
      *(v9 + 24) = 0xE000000000000000;
      *(v9 + 32) = xmmword_14A330;
      *(v9 + 48) = sub_8E7C;
      *(v9 + 56) = 0;
      *(v9 + 80) = 0x80000000;
      *(v9 + 96) = xmmword_14A340;
      *(v9 + 112) = 0x4030000000000000;
      *(v9 + 120) = 0;
      *(v9 + 128) = 0;
      *(v9 + 136) = 0;
      *(v0 + 56) = v9;
      sub_9918();
      *(v0 + 72) = v10;
      *(v0 + 80) = 0;
      *(v0 + 88) = 0;
      *(v0 + 96) = 0;
      *(v0 + 16) = *(v0 + 32);
      v11 = *(v0 + 40);
      v12 = *(v0 + 24);
      *(v0 + 24) = v11;
      v13 = v11;

      v14 = [objc_allocWithZone(NSCache) init];
      *(v0 + 48) = v14;
      [v14 setTotalCostLimit:200000];
      v15 = [objc_allocWithZone(NSCache) init];
      *(v0 + 64) = v15;
      [v15 setCountLimit:50];
      return v0;
    }

LABEL_10:
    v8 = [objc_opt_self() systemBlueColor];
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

id sub_7B2C()
{
  result = [objc_allocWithZone(NSCache) init];
  qword_1C06C8 = result;
  return result;
}

NSString *sub_7B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, void *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v178 = a4;
  v12 = sub_14095C();
  v13 = *(v12 - 8);
  v171 = v12;
  v172 = v13;
  __chkstk_darwin(v12);
  v170 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0B50, &qword_14A500);
  __chkstk_darwin(v15 - 8);
  *&v175 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v162 - v18;
  __chkstk_darwin(v20);
  v22 = &v162 - v21;
  v23 = v6[4];
  v24 = v6[5];
  v25 = v6[6];
  v27 = v6[7];
  v26 = v6[8];
  v173 = v6[9];
  v174 = v26;
  v177 = a1;
  *(v27 + 16) = a1;
  *(v27 + 24) = a2;
  v28 = v24;

  v29 = *(v27 + 64);
  v30 = *(v27 + 80);
  v31 = *(v27 + 112);
  v201[4] = *(v27 + 96);
  v201[5] = v31;
  v201[2] = v29;
  v201[3] = v30;
  v32 = *(v27 + 48);
  v201[0] = *(v27 + 32);
  v201[1] = v32;
  v33 = a3[2];
  v34 = a3[3];
  v35 = a3[5];
  *(v27 + 96) = a3[4];
  *(v27 + 112) = v35;
  v36 = a3[1];
  *(v27 + 32) = *a3;
  *(v27 + 48) = v36;
  *(v27 + 64) = v33;
  *(v27 + 80) = v34;
  sub_9724(a3, &v185);
  sub_9780(v201);
  *(v27 + 128) = a5;
  *(v27 + 136) = a6;
  v37 = [v25 objectForKey:v27];
  if (v37)
  {
    v38 = v37;

    v39 = v38[6];
    v189 = v38[5];
    v190 = v39;
    v40 = v38[8];
    v191 = v38[7];
    v192 = v40;
    v41 = v38[2];
    v185 = v38[1];
    v186 = v41;
    v42 = v38[4];
    v187 = v38[3];
    v188 = v42;
    sub_9AD8(&v185, v184);

    v44 = *(&v192 + 1);
    v45 = v192;
    v47 = *(&v191 + 1);
    v46 = *&v191;
    v48 = *(&v189 + 1);
    v49 = v189;
    v50 = *(&v190 + 1);
    v51 = *&v190;
    v52 = *(&v188 + 1);
    v53 = *&v188;
    v55 = *(&v187 + 1);
    v54 = v187;
    v57 = *(&v185 + 1);
    v56 = v185;
    v58 = v186;
    LOBYTE(v59) = BYTE8(v186);
LABEL_64:
    LOBYTE(v185) = v59;
    v161 = v178;
    *v178 = v56;
    v161[1] = v57;
    v161[2] = v58;
    *(v161 + 24) = v59;
    v161[4] = v54;
    v161[5] = v55;
    *(v161 + 6) = v53;
    *(v161 + 7) = v52;
    v161[8] = v49;
    *(v161 + 9) = v48;
    *(v161 + 10) = v51;
    *(v161 + 11) = v50;
    *(v161 + 12) = v46;
    *(v161 + 13) = v47;
    v161[14] = v45;
    v161[15] = v44;
    return result;
  }

  v60 = v173;
  v61 = v174;
  v163 = v22;
  v164 = v19;
  v176 = a2;
  v166 = v25;
  v169 = v28;
  v62 = a3[1];
  v193 = *a3;
  v194 = v62;
  v63 = a3[3];
  v195 = a3[2];
  v196 = v63;
  v64 = v63;
  if ((v63 & 0x80000000) != 0)
  {
    *&v196 = v196 & 0xFFFFFFFF7FFFFFFFLL;
    v65 = v194;
    sub_9724(a3, &v185);

    v66 = v65(v177, v176);
    v67 = [v66 MTMPU_tallestFontFromAttributes];

    v68 = 0;
    v173 = 0;
    v69 = 0;
  }

  else
  {
    v162 = v196;
    v70 = v194;
    v197 = v193;
    v198 = v194;
    v71 = v195;
    v199 = v195;
    v200 = v196;
    v72 = a3[3];
    v182[2] = a3[2];
    v183 = v72;
    v73 = a3[1];
    v182[0] = *a3;
    v182[1] = v73;
    *&v183 = v183 & 0xFFFFFFFF7FFFFFFFLL;
    v74 = v173;
    v75 = v173[1];
    v76 = v173[2];
    v77 = v173[3];
    v184[3] = v173[4];
    v184[1] = v76;
    v184[2] = v77;
    v184[0] = v75;
    v78 = v196;
    v173[1] = v193;
    v60[2] = v70;
    v60[3] = v71;
    v60[4] = v78;
    sub_9674(v182, &v185);
    sub_9674(&v193, &v185);
    sub_96D0(v184);
    v79 = v61;
    v80 = [v61 objectForKey:v74];
    v81 = v169;
    if (v80 && (v82 = v80, *&v185 = 0, type metadata accessor for Key(0), sub_9D20(&qword_1C0430, type metadata accessor for Key, &unk_14A22C), sub_1447FC(), v82, v185))
    {
      v69 = v185;
    }

    else
    {
      v83 = sub_94594(v81);
      _s5CacheC17AttributesWrapperCMa();
      v84 = swift_allocObject();
      v85 = v198;
      v84[1] = v197;
      v84[2] = v85;
      v86 = v200;
      v84[3] = v199;
      v84[4] = v86;
      sub_9724(a3, &v185);
      type metadata accessor for Key(0);
      sub_9D20(&qword_1C0430, type metadata accessor for Key, &unk_14A22C);
      v69 = v83;
      isa = sub_1447EC().super.isa;
      [v79 setObject:isa forKey:v84];
    }

    v66 = sub_948A8(v196, v177, v176);
    v88 = *(a3 + 8);
    v173 = v89;
    if (v88 < 2)
    {

      v68 = 0;
    }

    else
    {
      v90 = v193;

      v91 = [v90 textStyle];
      v68 = v91 == &dword_0 + 2 || v91 == &dword_0 + 1;
    }

    v64 = v162;
    v93 = v193;
    v67 = [v93 preferredFont];
    sub_9780(a3);
  }

  v94 = objc_allocWithZone(NSStringDrawingContext);
  v174 = v67;
  v95 = [v94 init];
  [v95 setWantsBaselineOffset:1];
  [v95 setWantsNumberOfLineFragments:1];
  v96 = *(a3 + 8);
  [v95 setMaximumNumberOfLines:v96];
  [v95 setWrapsForTruncationMode:v96 != 1];
  if (a5 >= 0.0)
  {
    v99 = sub_141AFC();
    v98 = v176;
    if (v99)
    {
      v97 = 5.99231045e307;
    }

    else
    {
      if (qword_1BFF20 != -1)
      {
        swift_once();
      }

      v97 = 5.99231045e307;
      if ((sub_141AFC() & 1) == 0 && a5 <= 5.99231045e307)
      {
        v97 = 5.99231045e307;
        if ((sub_141AFC() & 1) == 0)
        {
          v97 = a5;
        }
      }
    }
  }

  else
  {
    v97 = 5.99231045e307;
    v98 = v176;
  }

  if (a6 < 0.0 || (sub_141AFC() & 1) != 0)
  {
    v100 = 5.99231045e307;
  }

  else
  {
    if (qword_1BFF20 != -1)
    {
      swift_once();
    }

    v100 = 5.99231045e307;
    if ((sub_141AFC() & 1) == 0 && a6 <= 5.99231045e307)
    {
      v100 = 5.99231045e307;
      if ((sub_141AFC() & 1) == 0)
      {
        v100 = a6;
      }
    }
  }

  [v95 setCachesLayout:1];
  v165 = a3;
  if ((v64 & 0x80000000) != 0)
  {
    v54 = v95;
    [v66 boundingRectWithSize:1 options:v95 context:{v97, v100}];
  }

  else
  {

    v101 = sub_14489C();

    sub_94D00(v69);

    type metadata accessor for Key(0);
    v102 = v66;
    sub_9D20(&qword_1C0430, type metadata accessor for Key, &unk_14A22C);
    v103 = sub_1447EC().super.isa;

    v54 = v95;
    [v101 boundingRectWithSize:1 options:v103 attributes:v95 context:{v97, v100}];

    v66 = v102;
    v98 = v176;
  }

  v104 = *&v175;
  v105 = v164;
  sub_141ACC();
  if (v97 < v106)
  {
    v106 = v97;
  }

  v175 = v106;
  sub_141ACC();
  if (v100 < v107)
  {
    v107 = v100;
  }

  if (v68)
  {
    v108 = v107 + 2.0;
  }

  else
  {
    v108 = v107;
  }

  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  left = UIEdgeInsetsZero.left;
  *v182 = UIEdgeInsetsZero.top;
  v179 = right;
  v180 = bottom;
  v167 = a5;
  v168 = a6;
  if (!v174)
  {
LABEL_63:
    v59 = (v64 >> 31) & 1;
    [v54 baselineOffset];
    v141 = v140;
    sub_141ABC();
    v143 = v142;
    [v54 firstBaselineOffset];
    v44 = v23;
    v145 = v143 - v141 + v144;
    sub_141ACC();
    v46 = v145 + v146;
    sub_141ACC();
    v47 = v108 - v143 - v147;
    v171 = [v54 numberOfLineFragments];
    v48 = left;
    v49 = *&v182[0];
    v50 = v179;
    v51 = v180;
    *&v185 = v66;
    *(&v185 + 1) = v173;
    *&v186 = v69;
    BYTE8(v186) = (v64 & 0x80000000) != 0;
    v55 = 1;
    *&v187 = v54;
    *(&v187 + 1) = 1;
    *&v188 = v175;
    *(&v188 + 1) = v108;
    *&v189 = *&v182[0];
    *(&v189 + 1) = left;
    *&v190 = v180;
    *(&v190 + 1) = v179;
    *&v191 = v46;
    *(&v191 + 1) = v47;
    *&v192 = v171;
    *(&v192 + 1) = v44;
    _s5CacheC14ContextWrapperCMa();
    v148 = swift_allocObject();
    v172 = v66;
    v149 = v148;
    v150 = v190;
    v148[5] = v189;
    v148[6] = v150;
    v151 = v192;
    v148[7] = v191;
    v148[8] = v151;
    v152 = v186;
    v148[1] = v185;
    v148[2] = v152;
    v153 = v188;
    v148[3] = v187;
    v148[4] = v153;
    _s5CacheC3KeyCMa();
    v154 = swift_allocObject();
    v58 = v69;
    v155 = v176;
    *(v154 + 16) = v177;
    *(v154 + 24) = v155;
    v156 = v165;
    v157 = v165[3];
    *(v154 + 64) = v165[2];
    *(v154 + 80) = v157;
    v158 = v156[5];
    *(v154 + 96) = v156[4];
    *(v154 + 112) = v158;
    v159 = v156[1];
    *(v154 + 32) = *v156;
    *(v154 + 48) = v159;
    v160 = v168;
    *(v154 + 128) = v167;
    *(v154 + 136) = v160;

    sub_9724(v156, v184);
    sub_9AD8(&v185, v184);
    v57 = v173;
    [v166 setObject:v149 forKey:v154 cost:sub_14493C()];

    sub_9B34(v172, v57, v58, v59);
    v56 = v172;

    v45 = v171;
    v52 = v108;
    v53 = v175;
    goto LABEL_64;
  }

  v111 = v98;
  v112 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v112)
  {
    v113 = v112;
    sub_14094C();

    v114 = 0;
  }

  else
  {
    v114 = 1;
  }

  v116 = v171;
  v115 = v172;
  (*(v172 + 7))(v105, v114, 1, v171);
  v117 = v105;
  v118 = v115;
  v119 = v163;
  sub_9B84(v117, v163);
  sub_9BF4(v119, v104);
  if (v118[6](v104, 1, v116) == 1)
  {
    sub_9C64(v119);

    sub_9C64(v104);
    goto LABEL_63;
  }

  v120 = v170;
  v118[4](v170, v104, v116);
  *&v185 = v177;
  *(&v185 + 1) = v111;
  v121 = v118;
  v122 = v120;
  sub_9CCC();
  sub_14510C();
  if (v123)
  {

    (v121[1])(v120, v116);
    sub_9C64(v163);
    goto LABEL_63;
  }

  v124 = v174;
  if (qword_1BFEC8 != -1)
  {
    swift_once();
  }

  v125 = [qword_1C06C8 objectForKey:v124];
  if (v125)
  {
    v126 = v125;
    v202 = UIEdgeInsetsFromString(v125);
    top = v202.top;
    v128 = v202.left;
    v129 = v202.bottom;
    v130 = v202.right;

    left = v128;
    *v182 = top;
    v179 = v130;
    v180 = v129;
LABEL_62:
    sub_141ACC();
    v175 = v175 + v137;
    sub_141ACC();
    v139 = v138;

    (*(v172 + 1))(v122, v171);
    sub_9C64(v163);
    v108 = v108 + v139;
    goto LABEL_63;
  }

  CTFontGetLanguageAwareOutsets();
  v132 = left;
  v131 = *v182;
  v133 = v179;
  v134 = v180;
  v135 = qword_1C06C8;
  v203.top = v131;
  v203.left = v132;
  v203.bottom = v134;
  v203.right = v133;
  result = NSStringFromUIEdgeInsets(v203);
  if (result)
  {
    v136 = result;
    [v135 setObject:result forKey:v124];

    goto LABEL_62;
  }

  __break(1u);
  return result;
}

NSString sub_8958()
{
  result = sub_14489C();
  qword_1D1730 = result;
  return result;
}

id *sub_8990()
{

  return v0;
}

uint64_t sub_89E0()
{
  sub_8990();

  return swift_deallocClassInstance();
}

uint64_t sub_8ABC(uint64_t a1)
{
  if (a1)
  {
    _s5CacheC17AttributesWrapperCMa();
    swift_unknownObjectRetain();
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      if (v2 == v1)
      {
        swift_unknownObjectRelease();
        v8 = 1;
      }

      else
      {
        v3 = v1[4];
        v11[2] = v1[3];
        v11[3] = v3;
        v4 = v1[2];
        v11[0] = v1[1];
        v11[1] = v4;
        v5 = v2[1];
        v6 = v2[2];
        v7 = v2[4];
        v12[2] = v2[3];
        v12[3] = v7;
        v12[0] = v5;
        v12[1] = v6;
        sub_9674(v11, v10);
        sub_9674(v12, v10);
        v8 = sub_94FA8(v11, v12);
        swift_unknownObjectRelease();
        sub_96D0(v12);
        sub_96D0(v11);
      }
    }

    else
    {
      swift_unknownObjectRelease();
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_8BBC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

Swift::Int sub_8C34()
{
  v1 = *v0;
  sub_14545C();
  v2 = v1[2];
  v7[0] = v1[1];
  v7[1] = v2;
  v3 = v1[4];
  v7[2] = v1[3];
  v7[3] = v3;
  sub_9674(v7, v5);
  sub_950A4(v6);
  sub_96D0(v7);
  return sub_1454AC();
}

uint64_t sub_8CA4(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 64);
  v8[2] = *(*v1 + 48);
  v8[3] = v5;
  v8[0] = v3;
  v8[1] = v4;
  sub_9674(v8, &v7);
  sub_950A4(a1);
  return sub_96D0(v8);
}

Swift::Int sub_8D00(uint64_t a1)
{
  sub_14545C();
  v2 = *(*v1 + 16);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 64);
  v8[2] = *(*v1 + 48);
  v8[3] = v4;
  v8[0] = v2;
  v8[1] = v3;
  sub_9674(v8, v6);
  sub_950A4(v7);
  sub_96D0(v8);
  return sub_1454AC();
}

uint64_t sub_8D6C(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*a1 == *a2)
  {
    v10 = 1;
  }

  else
  {
    v4 = v2[1];
    v5 = v2[2];
    v6 = v2[4];
    v13[2] = v2[3];
    v13[3] = v6;
    v13[0] = v4;
    v13[1] = v5;
    v7 = v3[1];
    v8 = v3[2];
    v9 = v3[4];
    v14[2] = v3[3];
    v14[3] = v9;
    v14[0] = v7;
    v14[1] = v8;
    sub_9674(v13, v12);
    sub_9674(v14, v12);
    v10 = sub_94FA8(v13, v14);
    sub_96D0(v14);
    sub_96D0(v13);
  }

  return v10 & 1;
}

uint64_t sub_8E04()
{
  v1 = v0[6];
  v6[4] = v0[5];
  v6[5] = v1;
  v2 = v0[8];
  v6[6] = v0[7];
  v6[7] = v2;
  v3 = v0[2];
  v6[0] = v0[1];
  v6[1] = v3;
  v4 = v0[4];
  v6[2] = v0[3];
  v6[3] = v4;
  sub_9A84(v6);
  return swift_deallocClassInstance();
}

id sub_8E7C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(NSAttributedString);
  v3 = sub_14489C();
  v4 = [v2 initWithString:v3];

  return v4;
}

uint64_t sub_8F20(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_16;
  }

  _s5CacheC3KeyCMa();
  swift_unknownObjectRetain();
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    goto LABEL_15;
  }

  if (v2 != v1)
  {
    if (*(v1 + 16) != *(v2 + 16) || *(v1 + 24) != *(v2 + 24))
    {
      v4 = v2;
      v5 = sub_1453BC();
      v2 = v4;
      if ((v5 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v6 = *(v1 + 112);
    v22 = *(v1 + 96);
    v23 = v6;
    v7 = *(v1 + 80);
    v20 = *(v1 + 64);
    v21 = v7;
    v8 = *(v1 + 48);
    v18 = *(v1 + 32);
    v19 = v8;
    v9 = *(v2 + 64);
    v10 = *(v2 + 80);
    v11 = *(v2 + 96);
    v29 = *(v2 + 112);
    v12 = *(v2 + 48);
    v24 = *(v2 + 32);
    v25 = v12;
    v27 = v10;
    v28 = v11;
    v26 = v9;
    if ((v21 & 0x80000000) != 0)
    {
      if ((BYTE3(v27) & 0x80) == 0)
      {
        goto LABEL_15;
      }

      if (v18 == v24)
      {
        sub_9724(&v24, v17);
        sub_9724(&v18, v17);
      }

      else
      {
        v15 = sub_1453BC();
        sub_9724(&v24, v17);
        sub_9724(&v18, v17);
        if ((v15 & 1) == 0)
        {
LABEL_25:
          swift_unknownObjectRelease();
          sub_9780(&v24);
          sub_9780(&v18);
          goto LABEL_16;
        }
      }
    }

    else
    {
      v30[0] = v18;
      v30[1] = v19;
      v30[2] = v20;
      v30[3] = v21;
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_15;
      }

      v31[0] = v24;
      v31[1] = v25;
      v31[2] = v26;
      v31[3] = v27;
      sub_9724(&v24, v17);
      sub_9724(&v18, v17);
      if ((sub_94FA8(v30, v31) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (v22 != v28 || (sub_141AFC() & 1) == 0)
    {
      goto LABEL_25;
    }

    v16 = sub_141AFC();
    sub_9780(&v24);
    sub_9780(&v18);
    if (v16)
    {
      v13 = sub_144F5C();
      swift_unknownObjectRelease();
      return v13 & 1;
    }

LABEL_15:
    swift_unknownObjectRelease();
LABEL_16:
    v13 = 0;
    return v13 & 1;
  }

  swift_unknownObjectRelease();
  v13 = 1;
  return v13 & 1;
}

uint64_t sub_9184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_unknownObjectRetain();

  LOBYTE(a4) = a4(a3);
  swift_unknownObjectRelease();

  return a4 & 1;
}

uint64_t sub_91E8()
{

  sub_9A08(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

Swift::Int sub_9258()
{
  sub_14545C();
  sub_14492C();
  v1 = *(v0 + 40);
  v2 = *(v0 + 80);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  if ((v2 & 0x80000000) != 0)
  {
    v7 = sub_14497C();
    sub_14546C(~v7);
  }

  else
  {
    v5 = *(v0 + 88);
    v15 = *(v0 + 32);
    v16 = v1;
    v6 = *(v0 + 64);
    v17 = *(v0 + 48);
    v18 = v6;
    v19 = v2;
    v20 = v5;
    sub_950A4(v14);
  }

  sub_14546C(v4);
  sub_14546C(v3);
  v8 = sub_141ADC();
  sub_14546C(v8);
  v9 = sub_141ADC();
  sub_14546C(v9);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  sub_14549C(*&v10);
  if (v11 == 0.0)
  {
    v12 = 0.0;
  }

  else
  {
    v12 = v11;
  }

  sub_14549C(*&v12);
  return sub_1454AC();
}

void sub_9384(uint64_t a1)
{
  v3 = *v1;

  sub_14492C();

  v4 = *(v3 + 32);
  v5 = *(v3 + 80);
  v14 = *(v3 + 64);
  v15 = v5;
  v6 = *(v3 + 112);
  v16 = *(v3 + 96);
  v17 = v6;
  v7 = *(v3 + 48);
  v12 = v4;
  v13 = v7;
  if ((v15 & 0x80000000) != 0)
  {
    sub_9724(&v12, v11);
    v8 = sub_14497C();
    sub_14546C(~v8);
  }

  else
  {
    v11[6] = __PAIR128__(*(&v4 + 1), v12);
    v11[7] = v13;
    v11[8] = v14;
    v11[9] = v15;
    sub_9724(&v12, v11);
    sub_950A4(a1);
  }

  sub_14546C(v16);
  sub_14546C(*(&v16 + 1));
  v9 = sub_141ADC();
  sub_14546C(v9);
  v10 = sub_141ADC();
  sub_14546C(v10);
  sub_9780(&v12);
  sub_97D4(*(v3 + 128), *(v3 + 136));
}

Swift::Int sub_94A0(uint64_t a1)
{
  sub_14545C();
  v2 = *v1;

  sub_14492C();

  v3 = *(v2 + 32);
  v4 = *(v2 + 80);
  v19 = *(v2 + 64);
  v20 = v4;
  v5 = *(v2 + 112);
  v21 = *(v2 + 96);
  v22 = v5;
  v6 = *(v2 + 48);
  v17 = v3;
  v18 = v6;
  if ((v20 & 0x80000000) != 0)
  {
    sub_9724(&v17, v11);
    v7 = sub_14497C();
    sub_14546C(~v7);
  }

  else
  {
    v13 = __PAIR128__(*(&v3 + 1), v17);
    v14 = v18;
    v15 = v19;
    v16 = v20;
    sub_9724(&v17, v11);
    sub_950A4(v12);
  }

  sub_14546C(v21);
  sub_14546C(*(&v21 + 1));
  v8 = sub_141ADC();
  sub_14546C(v8);
  v9 = sub_141ADC();
  sub_14546C(v9);
  sub_9780(&v17);
  sub_97D4(*(v2 + 128), *(v2 + 136));
  return sub_1454AC();
}

void sub_97D4(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_14549C(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_14549C(*&v3);
}

uint64_t sub_9824(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v19 = v2;
  v20 = v3;
  v6 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v6 || (sub_1453BC()) && (v7 = *(a1 + 80), v17[2] = *(a1 + 64), v17[3] = v7, v8 = *(a1 + 112), v17[4] = *(a1 + 96), v17[5] = v8, v9 = *(a1 + 48), v17[0] = *(a1 + 32), v17[1] = v9, v10 = *(a2 + 80), v18[2] = *(a2 + 64), v18[3] = v10, v11 = *(a2 + 112), v18[4] = *(a2 + 96), v18[5] = v11, v12 = *(a2 + 48), v18[0] = *(a2 + 32), v18[1] = v12, sub_9724(v17, v16), sub_9724(v18, v16), v13 = sub_CD494(v17, v18), sub_9780(v18), sub_9780(v17), (v13))
  {
    v14 = sub_144F5C();
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

double sub_9918()
{
  v0 = [objc_opt_self() fontDescriptorWithTextStyle:0];
  v1 = objc_opt_self();
  v2 = [v1 blackColor];
  v3 = [v1 clearColor];
  v4 = [v0 typeSafeCopy];

  _s5CacheC17AttributesWrapperCMa();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 40) = 0;
  *(v5 + 48) = 4;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  result = 0.0000305175781;
  *(v5 + 68) = 0x3F00000000000000;
  *(v5 + 76) = 1065353216;
  return result;
}

void sub_9A08(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  if (a7 < 0)
  {
  }

  else
  {
  }
}

double sub_9B34(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_9B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0B50, &qword_14A500);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_9BF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0B50, &qword_14A500);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9C64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0B50, &qword_14A500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_9CCC()
{
  result = qword_1C0B58;
  if (!qword_1C0B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0B58);
  }

  return result;
}

uint64_t sub_9D20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void CompositeComponentItem.hash(into:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_141ADC();
  }

  sub_14546C(v6);
  sub_14546C([a2 hash]);
}

uint64_t static CompositeComponentItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a4)
  {
    return (a8 & 1) != 0;
  }

  if (a8)
  {
    return 0;
  }

  return sub_141AFC();
}

Swift::Int CompositeComponentItem.hashValue.getter(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_14545C();
  v6 = 0;
  if ((a4 & 1) == 0)
  {
    v6 = sub_141ADC();
  }

  sub_14546C(v6);
  sub_14546C([a1 hash]);
  return sub_1454AC();
}

Swift::Int sub_9E64()
{
  v1 = *v0;
  v2 = *(v0 + 24);
  sub_14545C();
  v3 = 0;
  if ((v2 & 1) == 0)
  {
    v3 = sub_141ADC();
  }

  sub_14546C(v3);
  sub_14546C([v1 hash]);
  return sub_1454AC();
}

void sub_9EE0(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 24))
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_141ADC();
  }

  sub_14546C(v3);
  sub_14546C([v2 hash]);
}

Swift::Int sub_9F38(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 24);
  sub_14545C();
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_141ADC();
  }

  sub_14546C(v4);
  sub_14546C([v2 hash]);
  return sub_1454AC();
}

uint64_t sub_9FB4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 24);
  v4 = *(a1 + 24);
  if (v4 & 1) != 0 || (v3)
  {
    return v4 & v3;
  }

  else
  {
    return sub_141AFC();
  }
}

uint64_t sub_9FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 3) == *(i - 3); i += 32)
    {
      if (*v3)
      {
        if (!*i)
        {
          return 0;
        }
      }

      else if ((*i & 1) != 0 || (sub_141AFC() & 1) == 0)
      {
        return 0;
      }

      v3 += 32;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_A09C(uint64_t a1, uint64_t a2)
{
  v8 = *(a1 + 16);
  if (v8 != *(a2 + 16))
  {
    return 0;
  }

  if (!v8 || a1 == a2)
  {
    return 1;
  }

  v49 = v7;
  v50 = v6;
  v51 = v5;
  v52 = v4;
  v53 = v2;
  v54 = v3;
  v9 = (a1 + 32);
  v10 = (a2 + 32);
  v11 = v8 - 1;
  while (1)
  {
    v12 = v9[5];
    v39 = v9[4];
    v40 = v12;
    v41 = v9[6];
    v13 = v9[1];
    v35 = *v9;
    v36 = v13;
    v14 = v9[3];
    v37 = v9[2];
    v38 = v14;
    v15 = v10[1];
    v42 = *v10;
    v43 = v15;
    v16 = v10[2];
    v17 = v10[3];
    v18 = v10[6];
    v47 = v10[5];
    v48[0] = v18;
    v19 = v10[4];
    v45 = v17;
    v46 = v19;
    v44 = v16;
    if (v35 != v42 && (sub_1453BC() & 1) == 0 || v36 != v43 && (sub_1453BC() & 1) == 0)
    {
      return 0;
    }

    v29 = v11;
    v20 = v37;
    v21 = v38;
    v33 = BYTE8(v38);
    v32 = v39;
    v22 = *(&v40 + 1);
    v23 = v44;
    v24 = v45;
    v25 = BYTE8(v45);
    v26 = v46;
    v30 = v47;
    v31 = v40;
    v27 = *(&v47 + 1);
    if (v37 == v44)
    {
      sub_102A8(&v35, v34);
      sub_102A8(&v42, v34);
      if (!*(&v20 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_102A8(&v35, v34);
      sub_102A8(&v42, v34);
      if (![v20 isEqual:v23])
      {
        goto LABEL_35;
      }

      if (!*(&v20 + 1))
      {
LABEL_17:
        if (*(&v23 + 1))
        {
          goto LABEL_35;
        }

        goto LABEL_18;
      }
    }

    if (!*(&v23 + 1) || *(&v20 + 1) != *(&v23 + 1) && ![*(&v20 + 1) isEqual:*(&v23 + 1)])
    {
LABEL_35:
      sub_10304(&v42);
      sub_10304(&v35);
      return 0;
    }

LABEL_18:
    if (v21)
    {
      if (!v24 || v21 != v24 && ![v21 isEqual:v24])
      {
        goto LABEL_35;
      }
    }

    else if (v24)
    {
      goto LABEL_35;
    }

    if (v33 != v25 || v32 != v26 || (sub_141AFC() & 1) == 0)
    {
      goto LABEL_35;
    }

    sub_10304(&v42);
    sub_10304(&v35);
    if (v22 != v27 || v31 != v30 || *&v41 != *v48 || *(&v41 + 1) != *(v48 + 1))
    {
      return 0;
    }

    if (!v29)
    {
      return 1;
    }

    v11 = v29 - 1;
    v10 += 7;
    v9 += 7;
  }
}

Swift::Int CompositeComponentGroup.hashValue.getter(uint64_t a1)
{
  sub_14545C();
  sub_14546C(*(a1 + 16));
  return sub_1454AC();
}

Swift::Int sub_A3B8()
{
  v1 = *v0;
  sub_14545C();
  sub_14546C(*(v1 + 16));
  return sub_1454AC();
}

Swift::Int sub_A430(uint64_t a1)
{
  v2 = *v1;
  sub_14545C();
  sub_14546C(*(v2 + 16));
  return sub_1454AC();
}

unint64_t sub_A478()
{
  result = qword_1C0B60;
  if (!qword_1C0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0B60);
  }

  return result;
}

unint64_t sub_A4D0()
{
  result = qword_1C0B68;
  if (!qword_1C0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0B68);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_A544(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_A58C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_A5F0()
{
  v1 = v0;

  sub_9E074(v2);
  v4 = v3;

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      ObjectType = swift_getObjectType();
      v9 = *(v7 + 40);
      swift_unknownObjectRetain_n();
      v9(0, ObjectType, v7);
      v10 = (*(v7 + 16))(ObjectType, v7);
      v11 = [v1 view];
      if (v11)
      {
        v12 = v11;
        if ([v1 isViewLoaded])
        {
          if ([v10 isDescendantOfView:v12])
          {
            [v10 removeFromSuperview];
          }

          v13 = (*(v7 + 8))(ObjectType, v7);
          swift_unknownObjectWeakAssign();
          sub_12BAAC();

          v12 = v13;
        }
      }

      [v10 setHidden:0];
      if ((*(v7 + 24))(ObjectType, v7))
      {
        (*(v7 + 32))([v1 isEditing], 0, ObjectType, v7);
      }

      (*(v7 + 48))(0, ObjectType, v7);
      swift_unknownObjectRelease_n();

      v6 += 4;
      --v5;
    }

    while (v5);
  }

  v14 = *&v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  if (v14)
  {
    v15 = type metadata accessor for CompositeCollectionView();
    v23.receiver = v14;
    v23.super_class = v15;
    v16 = v14;
    objc_msgSendSuper2(&v23, "setDataSource:", 0);
    sub_BD5C0();
    v22.receiver = v16;
    v22.super_class = v15;
    objc_msgSendSuper2(&v22, "setDelegate:", 0);
    sub_BD800();
    v21.receiver = v16;
    v21.super_class = v15;
    v17 = objc_msgSendSuper2(&v21, "collectionViewLayout");
    type metadata accessor for CompositeCollectionViewLayout();
    swift_dynamicCastClassUnconditional();
    type metadata accessor for CompositeCollectionViewCountData();
    swift_allocObject();
    v18 = sub_9E240(_swiftEmptyArrayStorage);
    sub_C2818(v18);
  }

  v19 = type metadata accessor for CompositeCollectionViewController();
  v24.receiver = v1;
  v24.super_class = v19;
  return objc_msgSendSuper2(&v24, "dealloc");
}

double sub_A9C8(char a1, char a2)
{
  v5 = [v2 isEditing];
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CompositeCollectionViewController();
  objc_msgSendSuper2(&v16, "setEditing:animated:", a1 & 1, a2 & 1);
  v6 = *&v2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  if (v6)
  {
    [v6 mt_setEditing:a1 & 1];
  }

  if (v5 != [v2 isEditing])
  {

    sub_9E074(v8);
    v10 = v9;

    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = (v10 + 40);
      do
      {
        v13 = *v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 32);
        swift_unknownObjectRetain();
        v15(a1 & 1, a2 & 1, ObjectType, v13);
        swift_unknownObjectRelease();
        v12 += 4;
        --v11;
      }

      while (v11);
    }
  }

  return result;
}

void sub_AB60(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for CompositeCollectionViewController();
  objc_msgSendSuper2(&v26, "viewDidLayoutSubviews");
  if (*&v2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount])
  {
    v2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_didIgnoreLayout] = 1;
    return;
  }

  v4 = [v2 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_23;
  }

  v5 = v4;
  [v4 bounds];
  v6 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView;
  v7 = *&v2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  if (!v7)
  {
LABEL_23:
    __break(1u);
    return;
  }

  [v7 setFrame:?];
  if (v2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_needsCountDataUpdate] == 1)
  {
    v2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_needsCountDataUpdate] = 0;
    v8 = *&v2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData];

    v9 = sub_9E1E0();
    v10 = *(v9 + 16);
    if (v10)
    {
      v24 = v8;
      sub_92B4C(0, v10, 0);
      v11 = 32;
      do
      {
        v13 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];
        v25 = *(v9 + v11);
        swift_unknownObjectRetain();
        if (v13 >= v12 >> 1)
        {
          sub_92B4C((v12 > 1), v13 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v13 + 1;
        *&_swiftEmptyArrayStorage[2 * v13 + 4] = v25;
        v11 += 32;
        --v10;
      }

      while (v10);

      v8 = v24;
    }

    else
    {
    }

    type metadata accessor for CompositeCollectionViewCountData();
    swift_allocObject();

    v15 = sub_9E240(v14);
    v16 = *&v3[v6];
    if (v16)
    {
      v17 = v16;
      if ([v5 _isInAWindow] & 1) != 0 && (v18 = objc_msgSend(v5, "layer"), v19 = objc_msgSend(v18, "hasBeenCommitted"), v18, (v19))
      {
        v20 = swift_allocObject();
        v20[2] = v3;
        v20[3] = v15;
        v20[4] = v8;
        v20[5] = v17;
        v21 = swift_allocObject();
        v21[2] = v15;
        v21[3] = _swiftEmptyArrayStorage;
        v21[4] = v3;
        v22 = v3;
        swift_retain_n();

        v17 = v17;
        v23 = v22;
        sub_BC770(sub_15270, v20, sub_152C4, v21);
      }

      else
      {

        sub_AEE0(0, v3, v15, v8);
        [v17 reloadData];
      }
    }

    else
    {
      sub_AEE0(0, v3, v15, v8);
      sub_D0D4(v15, _swiftEmptyArrayStorage, v3);
    }
  }
}

void sub_AEE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v209 = a1;
  v7 = sub_140B0C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v208 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D70, &qword_155F50);
  __chkstk_darwin(v198);
  v207 = &v185 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v185 - v12;
  v14 = sub_140B7C();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v190 = &v185 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v201 = &v185 - v18;
  __chkstk_darwin(v19);
  v202 = &v185 - v20;
  __chkstk_darwin(v21);
  v189 = &v185 - v22;
  __chkstk_darwin(v23);
  v188 = &v185 - v24;
  v25 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
  *(a2 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData) = a3;

  v26 = *(a2 + OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView);
  v193 = v25;
  if (v26)
  {
    v27 = type metadata accessor for CompositeCollectionView();
    v214.receiver = v26;
    v214.super_class = v27;
    v28 = objc_msgSendSuper2(&v214, "collectionViewLayout");
    type metadata accessor for CompositeCollectionViewLayout();
    swift_dynamicCastClassUnconditional();

    sub_C2818(v29);
  }

  v30 = sub_9E1E0();
  v199 = a2;

  v31 = sub_9E1E0();

  sub_C338(v31, v30);
  v33 = v32;

  v197 = *(v33 + 16);
  if (!v197)
  {
LABEL_119:

    return;
  }

  v196 = v33 + 32;
  swift_beginAccess();
  v34 = 0;
  v211 = (v8 + 8);
  v195 = (v15 + 8);
  v205 = v7;
  v210 = v14;
  v192 = v33;
  v200 = a4;
  v191 = v13;
  while (1)
  {
    if (v34 >= *(v33 + 16))
    {
      goto LABEL_122;
    }

    v204 = v34;
    v36 = (v196 + 56 * v34);
    v37 = v36[3];
    v38 = v36[4];
    v39 = v36[5];
    v40 = *(v36 + 48);
    v41 = *(v36 + 8) == 1;
    v206 = v38;
    if (v41)
    {
      v42 = *v36;
      v43 = v199;
      v203 = v39;
      if (v42)
      {
        v44 = v40;
        if (v42 == 1)
        {
          v45 = v193;
          swift_unknownObjectRetain_n();

          v46 = v206;
          v194 = sub_9EA88(v37, v206, v203, v44);

          v47 = *(v43 + v45);
          swift_beginAccess();
          v48 = *(v47 + 32);
          v49 = *(v48 + 16);

          if (v49)
          {

            v50 = sub_F7DD8(v37, v46, v203, v44);
            if (v51)
            {
              v52 = *(*(v48 + 56) + 8 * v50);

              goto LABEL_78;
            }
          }

          ObjectType = swift_getObjectType();
          v103 = (*(v46 + 8))(ObjectType, v46);
          v104 = [v103 dataSource];
          v186 = v103;
          if (v104)
          {
            v105 = v104;
            if ([v104 respondsToSelector:"numberOfSectionsInCollectionView:"])
            {
              v187 = [v105 numberOfSectionsInCollectionView:v103];
            }

            else
            {
              v187 = (&dword_0 + 1);
            }

            swift_unknownObjectRelease();
          }

          else
          {
            v187 = (&dword_0 + 1);
          }

          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v213 = *(v47 + 32);
          v116 = v213;
          *(v47 + 32) = 0x8000000000000000;
          v117 = sub_F7DD8(v37, v46, v203, v44);
          v119 = v116[2];
          v120 = (v118 & 1) == 0;
          v121 = __OFADD__(v119, v120);
          v122 = v119 + v120;
          if (v121)
          {
            goto LABEL_134;
          }

          v123 = v118;
          v124 = v47;
          if (v116[3] >= v122)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v183 = v117;
              sub_138FC4();
              v117 = v183;
            }
          }

          else
          {
            sub_1359A4(v122, isUniquelyReferenced_nonNull_native);
            v117 = sub_F7DD8(v37, v206, v203, v44);
            if ((v123 & 1) != (v125 & 1))
            {
              goto LABEL_139;
            }
          }

          v126 = v44;
          v127 = v203;
          v128 = v213;
          if (v123)
          {
            v52 = v187;
            *(v213[7] + 8 * v117) = v187;
          }

          else
          {
            v213[(v117 >> 6) + 8] |= 1 << v117;
            v129 = v128[6] + 32 * v117;
            v130 = v206;
            *v129 = v37;
            *(v129 + 8) = v130;
            *(v129 + 16) = v127;
            *(v129 + 24) = v126;
            v52 = v187;
            *(v128[7] + 8 * v117) = v187;
            v131 = v128[2];
            v121 = __OFADD__(v131, 1);
            v132 = v131 + 1;
            if (v121)
            {
              goto LABEL_137;
            }

            v128[2] = v132;
            swift_unknownObjectRetain();
          }

          *(v124 + 32) = v128;
          swift_endAccess();

          v33 = v192;
LABEL_78:
          v133 = v188;
          if (__OFADD__(v194, v52))
          {
            goto LABEL_128;
          }

          if (v52 + v194 < v194)
          {
            goto LABEL_130;
          }

          sub_140B1C();
          v135 = v209;
          if (v209)
          {
            sub_140B3C(v134);
            v137 = v136;
            [v135 insertSections:v136];
            swift_unknownObjectRelease_n();

LABEL_118:
            (*v195)(v133, v14);
            goto LABEL_6;
          }

LABEL_117:
          swift_unknownObjectRelease_n();
          goto LABEL_118;
        }

        v94 = v193;
        swift_unknownObjectRetain_n();

        v95 = v206;
        v194 = sub_9EA88(v37, v206, v203, v44);

        v96 = *(v43 + v94);
        swift_beginAccess();
        v97 = *(v96 + 32);
        v98 = *(v97 + 16);

        if (v98)
        {

          v99 = sub_F7DD8(v37, v95, v203, v44);
          if (v100)
          {
            v101 = *(*(v97 + 56) + 8 * v99);

LABEL_113:
            if (__OFADD__(v194, v101))
            {
              goto LABEL_127;
            }

            if (v101 + v194 < v194)
            {
              goto LABEL_132;
            }

            v133 = v190;
            sub_140B1C();
            v180 = v209;
            if (v209)
            {
              sub_140B3C(v179);
              v182 = v181;
              [v180 reloadSections:v181];
            }

            goto LABEL_117;
          }
        }

        v110 = swift_getObjectType();
        v111 = (*(v95 + 8))(v110, v95);
        v112 = [v111 dataSource];
        v186 = v111;
        if (v112)
        {
          v113 = v112;
          if ([v112 respondsToSelector:"numberOfSectionsInCollectionView:"])
          {
            v187 = [v113 numberOfSectionsInCollectionView:v111];
          }

          else
          {
            v187 = (&dword_0 + 1);
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v187 = (&dword_0 + 1);
        }

        swift_beginAccess();
        v162 = swift_isUniquelyReferenced_nonNull_native();
        v213 = *(v96 + 32);
        v163 = v213;
        *(v96 + 32) = 0x8000000000000000;
        v164 = sub_F7DD8(v37, v95, v203, v44);
        v166 = v163[2];
        v167 = (v165 & 1) == 0;
        v121 = __OFADD__(v166, v167);
        v168 = v166 + v167;
        if (v121)
        {
          goto LABEL_135;
        }

        v169 = v165;
        v170 = v96;
        if (v163[3] >= v168)
        {
          if ((v162 & 1) == 0)
          {
            v184 = v164;
            sub_138FC4();
            v164 = v184;
          }
        }

        else
        {
          sub_1359A4(v168, v162);
          v164 = sub_F7DD8(v37, v206, v203, v44);
          if ((v169 & 1) != (v171 & 1))
          {
            goto LABEL_139;
          }
        }

        v172 = v44;
        v173 = v203;
        v174 = v213;
        if (v169)
        {
          v101 = v187;
          *(v213[7] + 8 * v164) = v187;
        }

        else
        {
          v213[(v164 >> 6) + 8] |= 1 << v164;
          v175 = v174[6] + 32 * v164;
          v176 = v206;
          *v175 = v37;
          *(v175 + 8) = v176;
          *(v175 + 16) = v173;
          *(v175 + 24) = v172;
          v101 = v187;
          *(v174[7] + 8 * v164) = v187;
          v177 = v174[2];
          v121 = __OFADD__(v177, 1);
          v178 = v177 + 1;
          if (v121)
          {
            goto LABEL_138;
          }

          v174[2] = v178;
          swift_unknownObjectRetain();
        }

        *(v170 + 32) = v174;
        swift_endAccess();

        v33 = v192;
        goto LABEL_113;
      }

      v83 = swift_unknownObjectRetain_n();
      v84 = v206;
      LODWORD(v194) = v40;
      v85 = v200;
      v86 = sub_9EA88(v83, v206, v39, v40);
      v87 = *(v85 + 32);
      if (*(v87 + 16))
      {
        v88 = v86;

        v89 = sub_F7DD8(v37, v84, v203, v194);
        if (v90)
        {
          v91 = *(*(v87 + 56) + 8 * v89);

          v92 = v88;
          v93 = v91;
LABEL_95:
          if (__OFADD__(v92, v93))
          {
            goto LABEL_129;
          }

          if (&v93[v92] < v92)
          {
            goto LABEL_131;
          }

          v157 = v189;
          sub_140B1C();
          v159 = v209;
          if (v209)
          {
            sub_140B3C(v158);
            v161 = v160;
            [v159 deleteSections:v160];
          }

          swift_unknownObjectRelease_n();
          (*v195)(v157, v14);
          goto LABEL_6;
        }

        v84 = v206;
        v86 = v88;
      }

      v186 = v86;
      v106 = swift_getObjectType();
      v107 = (*(v84 + 8))(v106, v84);
      v108 = [v107 dataSource];
      if (v108)
      {
        v109 = v108;
        if ([v108 respondsToSelector:"numberOfSectionsInCollectionView:"])
        {
          v187 = [v109 numberOfSectionsInCollectionView:v107];
        }

        else
        {
          v187 = (&dword_0 + 1);
        }

        v114 = v37;
        swift_unknownObjectRelease();
      }

      else
      {
        v114 = v37;
        v187 = (&dword_0 + 1);
      }

      v138 = v200;
      swift_beginAccess();
      v139 = swift_isUniquelyReferenced_nonNull_native();
      v213 = *(v138 + 32);
      v140 = v213;
      *(v138 + 32) = 0x8000000000000000;
      v142 = sub_F7DD8(v114, v84, v203, v194);
      v143 = v140[2];
      v144 = (v141 & 1) == 0;
      v145 = v143 + v144;
      if (__OFADD__(v143, v144))
      {
        goto LABEL_133;
      }

      v146 = v141;
      if (v140[3] >= v145)
      {
        v148 = v107;
        if ((v139 & 1) == 0)
        {
          sub_138FC4();
        }

        v149 = v114;
        v152 = v213;
        if ((v146 & 1) == 0)
        {
LABEL_88:
          v152[(v142 >> 6) + 8] |= 1 << v142;
          v153 = v152[6] + 32 * v142;
          v154 = v206;
          *v153 = v149;
          *(v153 + 8) = v154;
          *(v153 + 16) = v203;
          *(v153 + 24) = v194;
          v93 = v187;
          *(v152[7] + 8 * v142) = v187;
          v155 = v152[2];
          v121 = __OFADD__(v155, 1);
          v156 = v155 + 1;
          if (v121)
          {
            goto LABEL_136;
          }

          v152[2] = v156;
          swift_unknownObjectRetain();
          goto LABEL_94;
        }
      }

      else
      {
        v147 = v84;
        v148 = v107;
        sub_1359A4(v145, v139);
        v149 = v114;
        v150 = sub_F7DD8(v114, v147, v203, v194);
        if ((v146 & 1) != (v151 & 1))
        {
          goto LABEL_139;
        }

        v142 = v150;
        v152 = v213;
        if ((v146 & 1) == 0)
        {
          goto LABEL_88;
        }
      }

      v93 = v187;
      *(v152[7] + 8 * v142) = v187;
LABEL_94:
      *(v200 + 32) = v152;
      swift_endAccess();

      v33 = v192;
      v92 = v186;
      goto LABEL_95;
    }

    v53 = swift_unknownObjectRetain();
    v54 = v40;
    v55 = sub_9EA88(v53, v38, v39, v40);
    v56 = sub_9E8F0(v37, v38, v39, v54);
    if (__OFADD__(v55, v56))
    {
      goto LABEL_123;
    }

    if (v56 + v55 < v55)
    {
      break;
    }

    sub_140B1C();

    v57 = sub_9EA88(v37, v206, v39, v54);

    v194 = v37;
    v58 = sub_9E8F0(v37, v206, v39, v54);

    if (__OFADD__(v57, v58))
    {
      goto LABEL_125;
    }

    if (v58 + v57 < v57)
    {
      goto LABEL_126;
    }

    sub_140B1C();
    sub_140B2C();
    sub_152D0(&qword_1C0D78, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    v59 = _swiftEmptyArrayStorage;
    v60 = v208;
    while (1)
    {
      sub_144B9C();
      sub_152D0(&qword_1C0D80, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
      v61 = sub_14486C();
      v62 = *v211;
      (*v211)(v60, v7);
      if (v61)
      {
        break;
      }

      v63 = sub_144BCC();
      v65 = *v64;
      v63(v212, 0);
      sub_144BAC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_13407C(0, *(v59 + 2) + 1, 1, v59);
      }

      v67 = *(v59 + 2);
      v66 = *(v59 + 3);
      if (v67 >= v66 >> 1)
      {
        v59 = sub_13407C((v66 > 1), v67 + 1, 1, v59);
      }

      *(v59 + 2) = v67 + 1;
      *&v59[8 * v67 + 32] = v65;
    }

    v203 = v59;
    sub_15340(v13, &qword_1C0D70, &qword_155F50);
    v68 = v207;
    sub_140B2C();
    v69 = *(v198 + 36);
    sub_144B9C();
    v70 = sub_14486C();
    v62(v60, v7);
    v71 = _swiftEmptyArrayStorage;
    if ((v70 & 1) == 0)
    {
      v206 = v69;
      do
      {
        v76 = sub_144BCC();
        v78 = *v77;
        v76(v212, 0);
        sub_144BAC();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_13407C(0, *(v71 + 2) + 1, 1, v71);
        }

        v80 = *(v71 + 2);
        v79 = *(v71 + 3);
        if (v80 >= v79 >> 1)
        {
          v71 = sub_13407C((v79 > 1), v80 + 1, 1, v71);
        }

        *(v71 + 2) = v80 + 1;
        *&v71[8 * v80 + 32] = v78;
        v68 = v207;
        v81 = v208;
        sub_144B9C();
        v7 = v205;
        v82 = sub_14486C();
        v62(v81, v7);
      }

      while ((v82 & 1) == 0);
    }

    sub_15340(v68, &qword_1C0D70, &qword_155F50);
    v72 = v203;
    if (*(v71 + 2) >= *(v203 + 16))
    {
      v73 = *(v203 + 16);
    }

    else
    {
      v73 = *(v71 + 2);
    }

    v74 = v209;
    v13 = v191;
    if (v73)
    {
      for (i = 0; v73 != i; ++i)
      {
        if (v74)
        {
          if (i >= *(v72 + 16))
          {
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (i >= *(v71 + 2))
          {
            goto LABEL_121;
          }

          [v209 moveSection:*(v72 + 32 + 8 * i) toSection:*&v71[8 * i + 32]];
          v74 = v209;
        }
      }
    }

    swift_unknownObjectRelease();
    v35 = *v195;
    v14 = v210;
    (*v195)(v201, v210);
    v35(v202, v14);

    v33 = v192;
LABEL_6:
    v34 = v204 + 1;
    if (v204 + 1 == v197)
    {
      goto LABEL_119;
    }
  }

LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
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
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  sub_1453EC();
  __break(1u);
}

void sub_C338(unint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v3 = a2[2];
  v109 = a1;
  v4 = *(a1 + 16);
  v5 = sub_10494(_swiftEmptyArrayStorage, v4 + 1, &qword_1C0D98, &unk_14A700);
  v6 = sub_10494(v5, v3 + 1, &qword_1C0D90, &qword_156070);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_141;
  }

  while (1)
  {
    v110 = v6;
    v101 = v4;
    v100 = v3;
    *&v108 = v2;
    if (!v3)
    {
      break;
    }

    v7 = 0;
    v2 += 56;
    v8 = v6 + 40;
    v9 = _swiftEmptyArrayStorage;
    while (1)
    {
      v4 = *(v2 - 8);
      v10 = *v2;
      v111 = *(v2 - 24);
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_134180(0, v9[2] + 1, 1, v9);
      }

      v3 = v9[2];
      v11 = v9[3];
      if (v3 >= v11 >> 1)
      {
        v9 = sub_134180((v11 > 1), v3 + 1, 1, v9);
      }

      v12 = v7 + 1;
      v9[2] = v3 + 1;
      v13 = &v9[7 * v3];
      v13[4] = 0;
      *(v13 + 40) = 1;
      v13[6] = v7;
      *(v13 + 7) = v111;
      v13[9] = v4;
      *(v13 + 80) = v10;
      v6 = *(v110 + 16);

      if (v7 + 1 >= v6)
      {
        goto LABEL_132;
      }

      v14 = *(v8 + 8 * v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + 8 * v7) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_9F068(v14);
        *(v8 + 8 * v7) = v14;
      }

      v4 = v101;
      v3 = v100;
      if (!v14[2])
      {
        break;
      }

      v14[4] = v9;

      v2 += 32;
      ++v7;
      if (v3 == v12)
      {
        goto LABEL_13;
      }
    }

LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    v6 = sub_9F07C(v6);
  }

LABEL_13:

  if (!v4)
  {

    v25 = v110;
    goto LABEL_85;
  }

  v3 = 0;
  v97 = v109 + 32;
  v99 = (v110 + 32);
  v2 = v109 + 56;
  v16 = _swiftEmptyArrayStorage;
  do
  {
    v17 = *(v2 - 8);
    v18 = *v2;
    v111 = *(v2 - 24);
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v16 = sub_134180(0, v16[2] + 1, 1, v16);
    }

    v20 = v16[2];
    v19 = v16[3];
    if (v20 >= v19 >> 1)
    {
      v16 = sub_134180((v19 > 1), v20 + 1, 1, v16);
    }

    v16[2] = v20 + 1;
    v21 = &v16[7 * v20];
    v21[4] = 1;
    *(v21 + 40) = 1;
    v21[6] = v3;
    *(v21 + 7) = v111;
    v21[9] = v17;
    *(v21 + 80) = v18;
    v6 = *(v110 + 16);

    if (!v6)
    {
      goto LABEL_134;
    }

    v22 = v99;
    v23 = *v99;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *v22 = v23;
    if ((v24 & 1) == 0)
    {
      v23 = sub_9F068(v23);
      *v99 = v23;
    }

    v6 = v3 + 1;
    if (v3 + 1 >= v23[2])
    {
      goto LABEL_135;
    }

    v23[v3 + 5] = v16;

    v2 += 32;
    ++v3;
  }

  while (v4 != v6);

  v25 = v110;
  v3 = v100;
  if (!v100)
  {
LABEL_85:
    if (v3 >= *(v25 + 16))
    {
      __break(1u);
    }

    else if (v4 < *(*(v25 + 8 * v3 + 32) + 16))
    {

LABEL_88:

      return;
    }

    __break(1u);
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  v26 = 0;
  v96 = v108 + 32;
  v107 = v100 - 1;
  v95 = (v110 + 40);
  v27 = 1;
  while (2)
  {
    v3 = 0;
    v98 = v26;
    v28 = v97 + 32 * v26;
    v29 = *v28;
    v103 = *(v28 + 8);
    v30 = *(v28 + 16);
    LODWORD(v104) = *(v28 + 24);
    v102 = v30;
    v109 = v27 - 1;
    v2 = v95;
    v4 = v96;
    v106 = v27;
    while (1)
    {
      v31 = *v4;
      v32 = *(v4 + 16);
      v33 = *(v4 + 24);
      if (*v4 == v29)
      {
        if (*(v4 + 24))
        {
          if (v104)
          {
            goto LABEL_71;
          }
        }

        else if ((v104 & 1) == 0)
        {
          v108 = *v4;
          v62 = v32;
          v63 = sub_141AFC();
          v32 = v62;
          v31 = v108;
          if (v63)
          {
LABEL_71:
            v6 = *(v25 + 16);
            if (v3 >= v6)
            {
              goto LABEL_136;
            }

            v64 = *(v2 - 8);
            if (v109 >= *(v64 + 16))
            {
              goto LABEL_137;
            }

            v38 = *(v64 + 8 * v109 + 32);

            if (v3 + 1 >= v6)
            {
              goto LABEL_138;
            }

            v52 = *v2;
            v65 = swift_isUniquelyReferenced_nonNull_native();
            *v2 = v52;
            if ((v65 & 1) == 0)
            {
              v52 = sub_9F068(v52);
              *v2 = v52;
            }

            if (v27 >= v52[2])
            {
              goto LABEL_139;
            }

            goto LABEL_77;
          }
        }
      }

      v34 = *(v25 + 16);
      if (v3 >= v34)
      {
        __break(1u);
LABEL_122:
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:

        goto LABEL_88;
      }

      v35 = *(v2 - 8);
      if (v27 >= *(v35 + 16))
      {
        goto LABEL_122;
      }

      if (v3 + 1 >= v34)
      {
        goto LABEL_123;
      }

      v36 = *v2;
      if (v27 > *(*v2 + 16))
      {
        goto LABEL_124;
      }

      *&v111 = v3 + 1;
      v6 = v29;
      v37 = v35 + 32;
      v38 = *(v37 + 8 * v27);
      v39 = *(v36 + 8 * v109 + 32);
      v40 = *(v37 + 8 * v109);
      v41 = v38[2];
      v42 = v39[2];
      v43 = v40[2];
      if (v42 >= v41)
      {
        v44 = v38[2];
      }

      else
      {
        v44 = v39[2];
      }

      if (v43 >= v44)
      {
        v43 = v44;
      }

      if (v41 == v43)
      {
        v105 = v4;
        v45 = v32;
        v108 = v31;

        swift_unknownObjectRetain();
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v4 = v110;
        if ((v46 & 1) == 0)
        {
          v38 = sub_134180(0, v41 + 1, 1, v38);
        }

        v48 = v38[2];
        v47 = v38[3];
        v29 = v6;
        v49 = v108;
        if (v48 >= v47 >> 1)
        {
          v66 = sub_134180((v47 > 1), v48 + 1, 1, v38);
          v50 = v45;
          v49 = v108;
          v38 = v66;
        }

        else
        {
          v50 = v45;
        }

        v38[2] = v48 + 1;
        v51 = &v38[7 * v48];
        v51[4] = 0;
        *(v51 + 40) = 1;
        v51[6] = v3;
        *(v51 + 7) = v49;
        v51[9] = v50;
        *(v51 + 80) = v33;
        if (v111 >= *(v4 + 16))
        {
          __break(1u);
LABEL_127:
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
          goto LABEL_133;
        }

        v25 = v4;
        v52 = *v2;
        v53 = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v52;
        if ((v53 & 1) == 0)
        {
          v52 = sub_9F068(v52);
          *v2 = v52;
        }

        v27 = v106;
        v4 = v105;
        if (v106 >= v52[2])
        {
          goto LABEL_127;
        }
      }

      else if (v42 == v43)
      {

        v29 = v6;
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_134180(0, v39[2] + 1, 1, v39);
        }

        v25 = v110;
        v6 = v39[2];
        v54 = v39[3];
        if (v6 >= v54 >> 1)
        {
          v38 = sub_134180((v54 > 1), v6 + 1, 1, v39);
        }

        else
        {
          v38 = v39;
        }

        v38[2] = v6 + 1;
        v55 = &v38[7 * v6];
        v55[4] = 1;
        *(v55 + 40) = 1;
        v55[6] = v109;
        v55[7] = v29;
        v56 = v102;
        v55[8] = v103;
        v55[9] = v56;
        *(v55 + 80) = v104;
        v27 = v106;
        if (v111 >= *(v25 + 16))
        {
          goto LABEL_128;
        }

        v52 = *v2;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v52;
        if ((v57 & 1) == 0)
        {
          v52 = sub_9F068(v52);
          *v2 = v52;
        }

        if (v27 >= v52[2])
        {
          goto LABEL_130;
        }
      }

      else
      {

        v29 = v6;
        swift_unknownObjectRetain();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_134180(0, v40[2] + 1, 1, v40);
        }

        v27 = v106;
        v6 = v40[2];
        v58 = v40[3];
        if (v6 >= v58 >> 1)
        {
          v38 = sub_134180((v58 > 1), v6 + 1, 1, v40);
        }

        else
        {
          v38 = v40;
        }

        v38[2] = v6 + 1;
        v59 = &v38[7 * v6];
        v59[4] = 2;
        *(v59 + 40) = 1;
        v59[6] = v3;
        v59[7] = v29;
        v60 = v102;
        v59[8] = v103;
        v59[9] = v60;
        *(v59 + 80) = v104;
        v25 = v110;
        if (v111 >= *(v110 + 16))
        {
          goto LABEL_129;
        }

        v52 = *v2;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v52;
        if ((v61 & 1) == 0)
        {
          v52 = sub_9F068(v52);
          *v2 = v52;
        }

        if (v27 >= v52[2])
        {
          goto LABEL_131;
        }
      }

LABEL_77:
      v52[v27 + 4] = v38;

      if (v107 == v3)
      {
        break;
      }

      ++v3;
      v4 += 32;
      v2 += 8;
    }

    if (v27 != v101)
    {
      v26 = v98 + 1;
      ++v27;
      continue;
    }

    break;
  }

  if (v100 < *(v25 + 16))
  {
    v67 = v99[v100];
    if (v101 >= v67[2])
    {
      goto LABEL_147;
    }

    v68 = v67[v101 + 4];
    v2 = *(v68 + 16);

    v106 = v2;
    if (v2)
    {
      v4 = 0;
      v105 = 0;
      v70 = (v68 + 80);
      v71 = _swiftEmptyArrayStorage;
      v104 = v68;
      while (1)
      {
        if (v4 >= *(v68 + 16))
        {
          goto LABEL_140;
        }

        v74 = *(v70 - 6);
        v3 = *(v70 - 40);
        v75 = *(v70 - 4);
        v76 = *(v70 - 3);
        v78 = *(v70 - 2);
        v77 = *(v70 - 1);
        v79 = *v70;
        v112 = v71;
        v113 = v74;
        v114 = v3;
        v115 = v75;
        v116 = v76;
        v117 = v78;
        v118 = v77;
        v119 = v79;
        v109 = v78;
        *&v108 = v77;
        LODWORD(v107) = v79;
        *&v111 = v74;
        if (v3 != 1 || v74 >= 2)
        {
          break;
        }

        __chkstk_darwin(v69);
        v92[2] = v82;
        v93 = 1;
        v94 = &v113;
        swift_unknownObjectRetain();

        v83 = v105;
        v84 = sub_D408(sub_15318, v92, v71);
        v105 = v83;
        if (v85)
        {
          swift_unknownObjectRetain();
          v80 = v71;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_134180(0, v71[2] + 1, 1, v71);
          }

          v2 = v80[2];
          v86 = v80[3];
          v6 = v2 + 1;
          v68 = v104;
          if (v2 >= v86 >> 1)
          {
            v80 = sub_134180((v86 > 1), v2 + 1, 1, v80);
          }

          v3 = 1;
          goto LABEL_94;
        }

        if ((v84 & 0x8000000000000000) != 0)
        {
          goto LABEL_144;
        }

        if (v84 >= v71[2])
        {
          goto LABEL_145;
        }

        v87 = v71[7 * v84 + 6];
        if (v111)
        {
          v88 = v75;
        }

        else
        {
          v88 = v71[7 * v84 + 6];
        }

        if (!v111)
        {
          v87 = v75;
        }

        *&v111 = v87;
        v89 = v84;
        swift_unknownObjectRetain();
        sub_9DE64(v89, v120);
        sub_15340(v120, &qword_1C0D88, &unk_14A6F0);
        v90 = v112;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_134180(0, v90[2] + 1, 1, v90);
        }

        v2 = v90[2];
        v91 = v90[3];
        v6 = v2 + 1;
        if (v2 >= v91 >> 1)
        {
          v90 = sub_134180((v91 > 1), v2 + 1, 1, v90);
        }

        v3 = 0;
        v71 = v90;
        v75 = v88;
        v68 = v104;
LABEL_95:
        v71[2] = v6;
        v72 = &v71[7 * v2];
        v72[4] = v111;
        ++v4;
        *(v72 + 40) = v3;
        v72[6] = v75;
        v72[7] = v76;
        v73 = v108;
        v72[8] = v109;
        v72[9] = v73;
        *(v72 + 80) = v107;
        v69 = swift_unknownObjectRelease();
        v70 += 56;
        if (v106 == v4)
        {
          goto LABEL_125;
        }
      }

      swift_unknownObjectRetain_n();

      v80 = v71;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_134180(0, v71[2] + 1, 1, v71);
      }

      v2 = v80[2];
      v81 = v80[3];
      v6 = v2 + 1;
      if (v2 >= v81 >> 1)
      {
        v80 = sub_134180((v81 > 1), v2 + 1, 1, v80);
      }

LABEL_94:
      v71 = v80;
      goto LABEL_95;
    }

    goto LABEL_125;
  }

LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_D0D4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_9E1E0();
  v5 = *(v4 + 16);
  if (v5)
  {
    sub_92B4C(0, v5, 0);
    v6 = 32;
    do
    {
      v8 = _swiftEmptyArrayStorage[2];
      v7 = _swiftEmptyArrayStorage[3];
      v26 = *(v4 + v6);
      swift_unknownObjectRetain();
      if (v8 >= v7 >> 1)
      {
        sub_92B4C((v7 > 1), v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      *&_swiftEmptyArrayStorage[2 * v8 + 4] = v26;
      v6 += 32;
      --v5;
    }

    while (v5);

    v9 = *(a2 + 16);
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  else
  {

    v9 = *(a2 + 16);
    if (!v9)
    {
LABEL_25:

      return;
    }
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage[2];
  v27 = a2 + 32;
  v24 = &_swiftEmptyArrayStorage[4];
  while (1)
  {
    v12 = (v27 + 16 * v10);
    v13 = *v12;
    v14 = v12[1];
    if (v11)
    {
      break;
    }

LABEL_17:
    ObjectType = swift_getObjectType();
    v19 = *(v14 + 40);
    swift_unknownObjectRetain();
    v19(0, ObjectType, v14);
    v20 = (*(v14 + 16))(ObjectType, v14);
    v21 = [a3 view];
    if (v21)
    {
      v22 = v21;
      if ([a3 isViewLoaded])
      {
        if ([v20 isDescendantOfView:v22])
        {
          [v20 removeFromSuperview];
        }

        v23 = (*(v14 + 8))(ObjectType, v14);
        swift_unknownObjectWeakAssign();
        sub_12BAAC();

        v22 = v23;
      }
    }

    [v20 setHidden:{0, v24}];
    if ((*(v14 + 24))(ObjectType, v14))
    {
      (*(v14 + 32))([a3 isEditing], 0, ObjectType, v14);
    }

    (*(v14 + 48))(0, ObjectType, v14);
    swift_unknownObjectRelease();

LABEL_11:
    if (++v10 == v9)
    {
      goto LABEL_25;
    }
  }

  v15 = _swiftEmptyArrayStorage[2];
  v16 = v24;
  v17 = v11;
  while (v15)
  {
    if (*v16 == v13)
    {
      goto LABEL_11;
    }

    --v15;
    v16 += 2;
    if (!--v17)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_D408(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = (a3 + 40); ; i += 56)
  {
    v8 = *i;
    v9 = *(i + 1);
    v10 = *(i + 4);
    v11 = i[40];
    v14 = *(i - 1);
    v15 = v8;
    v16 = v9;
    v17 = *(i + 1);
    v18 = v10;
    v19 = v11;
    swift_unknownObjectRetain();
    v12 = a1(&v14);
    swift_unknownObjectRelease();
    if (v3 || (v12 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_D53C(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v68.receiver = v2;
  v68.super_class = type metadata accessor for CompositeCollectionViewController();
  objc_msgSendSuper2(&v68, "viewDidLoad");

  sub_9E074(v4);
  v6 = v5;

  v7 = *(v6 + 16);
  p_ivar_lyt = &SongCell.ivar_lyt;
  v9 = &OBJC_IVAR____TtC12NowPlayingUI32CompositeComponentCollectionView_compositeCollectionView;
  if (v7)
  {
    v62 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView;
    v10 = (v6 + 40);
    v11 = &SongCell.ivar_lyt;
    do
    {
      v12 = *v10;
      swift_unknownObjectRetain_n();
      v13 = [v3 p_ivar_lyt[423]];
      if (v13)
      {
        v14 = v13;
        if ([v3 v11[419]])
        {
          v15 = v9;
          ObjectType = swift_getObjectType();
          v17 = (*(v12 + 8))(ObjectType, v12);
          v18 = *&v3[v62];
          swift_unknownObjectWeakAssign();
          v19 = v18;
          sub_12BAAC();

          p_ivar_lyt = (&SongCell + 16);
          v20 = ObjectType;
          v9 = v15;
          v21 = (*(v12 + 16))(v20, v12);
          [v14 addSubview:v21];

          v11 = (&SongCell + 16);
          [v14 setNeedsLayout];
        }
      }

      swift_unknownObjectRelease_n();
      v10 += 4;
      --v7;
    }

    while (v7);
  }

  v22 = [v3 p_ivar_lyt[423]];
  if (!v22)
  {
    __break(1u);
    goto LABEL_22;
  }

  v23 = v22;
  [v22 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v32 = [objc_allocWithZone(type metadata accessor for CompositeCollectionViewLayout()) init];
  v33 = type metadata accessor for CompositeCollectionView();
  v34 = [objc_allocWithZone(v33) initWithFrame:v32 collectionViewLayout:{v25, v27, v29, v31}];

  v67.receiver = v34;
  v67.super_class = v33;
  v35 = v34;
  objc_msgSendSuper2(&v67, "setDataSource:", v3);
  sub_BD5C0();
  v66.receiver = v35;
  v66.super_class = v33;
  objc_msgSendSuper2(&v66, "setDelegate:", v3);
  sub_BD800();
  [v35 setPrefetchDataSource:v3];

  [v35 setAlwaysBounceVertical:1];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 whiteColor];
  [v37 setBackgroundColor:v38];

  [v37 _setSafeAreaInsetsFrozen:1];
  v39 = [v3 p_ivar_lyt[423]];
  if (!v39)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v40 = v39;
  [v39 addSubview:v37];

  v41 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView;
  v42 = *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView] = v37;
  v63 = v41;
  if (v42)
  {
    if (v37 == v42)
    {
LABEL_20:

      return;
    }

    v60 = v42;
    v64.receiver = v42;
    v64.super_class = v33;
    v43 = v37;
    v44 = objc_msgSendSuper2(&v64, "collectionViewLayout");
    swift_dynamicCastClassUnconditional();
    type metadata accessor for CompositeCollectionViewCountData();
    swift_allocObject();
    v45 = sub_9E240(_swiftEmptyArrayStorage);
    sub_C2818(v45);

    v41 = v63;

    v46 = *&v3[v63];
  }

  else
  {
    v60 = 0;
    v47 = v37;
    v46 = v37;
  }

  if (!v46)
  {
    goto LABEL_23;
  }

  v65.receiver = v46;
  v65.super_class = v33;

  v48 = objc_msgSendSuper2(&v65, "collectionViewLayout");
  swift_dynamicCastClassUnconditional();

  sub_C2818(v49);

  v61 = sub_9E1E0();
  v50 = *(v61 + 16);
  if (v50)
  {
    v51 = (v61 + 40);
    do
    {
      v52 = *v51;
      v53 = swift_getObjectType();
      v54 = *(v52 + 8);
      swift_unknownObjectRetain();
      v55 = v54(v53, v52);
      v41 = v63;
      v56 = v55;
      v57 = *&v3[v63];
      swift_unknownObjectWeakAssign();
      v58 = v57;
      sub_12BAAC();
      swift_unknownObjectRelease();

      v51 += 4;
      --v50;
    }

    while (v50);
  }

  v59 = *&v3[v41];
  if (v59)
  {
    [v59 reloadData];

    v42 = v60;
    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

void sub_DB18(uint64_t a1, void *a2)
{
  v3 = v2;
  if (![v2 isViewLoaded] || (v6 = objc_msgSend(v2, "traitCollection"), sub_15160(), v7 = sub_144FFC(), v6, (v7 & 1) != 0))
  {
    v28.receiver = v3;
    v28.super_class = type metadata accessor for CompositeCollectionViewController();
    objc_msgSendSuper2(&v28, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
    return;
  }

  v8 = *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount] = v10;
  v11 = *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  if (v11)
  {
    v12 = *(v11 + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_layoutSubviewsIgnoreCount);
    v9 = __OFADD__(v12, 1);
    v13 = v12 + 1;
    if (!v9)
    {
      *(v11 + OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_layoutSubviewsIgnoreCount) = v13;
      v27.receiver = v3;
      v27.super_class = type metadata accessor for CompositeCollectionViewController();
      objc_msgSendSuper2(&v27, "willTransitionToTraitCollection:withTransitionCoordinator:", a1, a2);
      v14 = swift_allocObject();
      *(v14 + 16) = 0;
      v15 = swift_allocObject();
      *(v15 + 16) = v14;
      *(v15 + 24) = v3;
      v25 = sub_1549C;
      v26 = v15;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_DC658;
      v24 = &block_descriptor;
      v16 = _Block_copy(&v21);

      v17 = v3;

      v18 = swift_allocObject();
      *(v18 + 16) = v14;
      *(v18 + 24) = v17;
      v25 = sub_15218;
      v26 = v18;
      v21 = _NSConcreteStackBlock;
      v22 = 1107296256;
      v23 = sub_DC658;
      v24 = &block_descriptor_62;
      v19 = _Block_copy(&v21);

      v20 = v17;

      [a2 animateAlongsideTransition:v16 completion:v19];
      _Block_release(v19);
      _Block_release(v16);

      return;
    }

    goto LABEL_9;
  }

LABEL_10:
  __break(1u);
}

void sub_DDB4(uint64_t a1, _BYTE *a2)
{
  swift_beginAccess();
  if (*(a1 + 16))
  {
    return;
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
  v4 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount;
  v5 = *&a2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount];
  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
    __break(1u);
    goto LABEL_14;
  }

  *&a2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount] = v7;
  v8 = *&a2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView];
  if (!v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *&v8[OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_layoutSubviewsIgnoreCount];
  v6 = __OFSUB__(v9, 1);
  v10 = v9 - 1;
  if (v6)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *&v8[OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_layoutSubviewsIgnoreCount] = v10;
  if (!v10 && v8[OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_didIgnoreLayoutSubviews] == 1)
  {
    v8[OBJC_IVAR____TtC12NowPlayingUI23CompositeCollectionView_didIgnoreLayoutSubviews] = 1;
    [v8 setNeedsLayout];
  }

  if (!*&a2[v4] && a2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_didIgnoreLayout] == 1)
  {
    a2[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_didIgnoreLayout] = 0;
    v11 = [a2 view];
    if (v11)
    {
      v12 = v11;
      [v11 setNeedsLayout];

      return;
    }

LABEL_16:
    __break(1u);
  }
}

id sub_DFB4(uint64_t a1, uint64_t a2)
{

  sub_9E3E8(a2, 0, 0, 0, v13);
  v4 = v13[0];

  if (v4)
  {
    v5 = v13[4];
    v6 = v13[1];
    ObjectType = swift_getObjectType();
    v8 = *(v6 + 8);
    swift_unknownObjectRetain();
    v9 = v8(ObjectType, v6);
    sub_15340(v13, &qword_1C0D60, &unk_14A6E0);
    v10 = [v9 dataSource];

    if (v10)
    {
      v11 = [v10 collectionView:a1 numberOfItemsInSection:v5];
      sub_15340(v13, &qword_1C0D60, &unk_14A6E0);
      swift_unknownObjectRelease();
      return v11;
    }

    sub_15340(v13, &qword_1C0D60, &unk_14A6E0);
  }

  return 0;
}

uint64_t sub_E55C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = a5(v11);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t sub_E678(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = a3;
  v13 = a1;
  sub_12CAC(v11, a5);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_E7A4(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = a3;
  v13 = a1;
  LOBYTE(a5) = sub_137C4(v11, a5);

  (*(v9 + 8))(v11, v8);
  return a5 & 1;
}

uint64_t sub_E8CC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(char *))
{
  v8 = sub_140C2C();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v12 = a3;
  v13 = a1;
  a5(v11);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_E9EC(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, SEL *a6)
{
  v10 = sub_140C2C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_140BAC();
  v14 = a3;
  v15 = a4;
  v16 = a1;
  sub_142E4(v15, v13, a6);

  return (*(v11 + 8))(v13, v10);
}

double sub_EB20(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  sub_140C2C();
  v8 = sub_1449DC();
  v9 = a3;
  v10 = a1;
  sub_14844(v8, a5);

  return result;
}

uint64_t sub_EBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v163 = a3;
  v141 = a1;
  v157 = a4;
  v6 = sub_140C2C();
  v159 = *(v6 - 8);
  __chkstk_darwin(v6);
  v145 = &v140 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v146 = &v140 - v9;
  __chkstk_darwin(v10);
  v144 = &v140 - v11;
  __chkstk_darwin(v12);
  v14 = &v140 - v13;
  __chkstk_darwin(v15);
  v149 = &v140 - v16;
  __chkstk_darwin(v17);
  v152 = &v140 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v19 - 8);
  v155 = (&v140 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v150 = &v140 - v22;
  __chkstk_darwin(v23);
  v25 = &v140 - v24;
  __chkstk_darwin(v26);
  v28 = &v140 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v30 = *(v29 - 8);
  __chkstk_darwin(v29);
  v143 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v148 = &v140 - v33;
  __chkstk_darwin(v34);
  v36 = &v140 - v35;
  v38 = __chkstk_darwin(v37);
  v40 = (&v140 - v39);
  v154 = v4;
  v153 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
  v164 = v30;
  v161 = *(v30 + 7);
  v162 = v41;
  (v161)(v25, 1, 1, v38);

  v42 = sub_140C0C();
  if (v42 == 2)
  {
    v43 = sub_140BFC();
  }

  else if (v42 <= 0)
  {
    v43 = sub_14093C();
  }

  else
  {
    v43 = sub_140C3C();
  }

  v156 = a2;
  v142 = v14;
  v151 = v36;
  sub_9E3E8(v43, 0, 0, 0, v165);
  v44 = v165[0];
  v160 = v6;
  v158 = v40;
  if (v165[0])
  {
    v45 = v165[2];
    v147 = v165[1];
    v46 = v166;
    if (sub_140C0C() >= 2)
    {
      v50 = sub_140C0C();
      if (v50 == 2)
      {
        sub_140BEC();
      }

      else if (v50 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v48 = v162;
      v47 = v152;
      sub_140BDC();
    }

    else
    {
      v47 = v152;
      sub_140C1C();
      v48 = v162;
    }

    sub_15340(v25, &qword_1C0D50, &unk_14A6D0);
    v51 = *(v48 + 48);
    v52 = v147;
    *v25 = v44;
    *(v25 + 1) = v52;
    *(v25 + 2) = v45;
    v25[24] = v46 & 1;
    v49 = v159;
    v6 = v160;
    (*(v159 + 32))(&v25[v51], v47, v160);
    (v161)(v25, 0, 1, v48);
    v40 = v158;
  }

  else
  {

    v49 = v159;
    v48 = v162;
  }

  sub_10358(v25, v28, &qword_1C0D50, &unk_14A6D0);
  v53 = v164 + 48;
  v54 = *(v164 + 6);
  if (v54(v28, 1, v48) != 1)
  {
    sub_10358(v28, v40, &qword_1C0D58, qword_1523D0);
    v55 = v155;
    (v161)(v155, 1, 1, v48);

    v56 = sub_140C0C();
    if (v56 == 2)
    {
      v57 = sub_140BFC();
    }

    else if (v56 <= 0)
    {
      v57 = sub_14093C();
    }

    else
    {
      v57 = sub_140C3C();
    }

    sub_9E3E8(v57, 0, 0, 0, v167);
    v58 = v167[0];
    v164 = v53;
    if (v167[0])
    {
      v59 = v167[2];
      v152 = v167[1];
      v60 = v168;
      if (sub_140C0C() >= 2)
      {
        v63 = sub_140C0C();
        if (v63 == 2)
        {
          sub_140BEC();
        }

        else if (v63 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        v62 = v162;
        v61 = v149;
        sub_140BDC();
      }

      else
      {
        v61 = v149;
        sub_140C1C();
        v62 = v162;
      }

      v64 = v155;
      sub_15340(v155, &qword_1C0D50, &unk_14A6D0);
      v65 = *(v62 + 48);
      v66 = v152;
      *v64 = v58;
      *(v64 + 1) = v66;
      *(v64 + 2) = v59;
      LOBYTE(v66) = v60 & 1;
      v55 = v64;
      *(v64 + 24) = v66;
      v6 = v160;
      (*(v49 + 32))(v64 + v65, v61, v160);
      (v161)(v64, 0, 1, v62);
      v40 = v158;
    }

    else
    {

      v6 = v160;
      v62 = v162;
    }

    v67 = v150;
    sub_10358(v55, v150, &qword_1C0D50, &unk_14A6D0);
    if (v54(v67, 1, v62) == 1)
    {
      sub_15340(v67, &qword_1C0D50, &unk_14A6D0);
      sub_15340(v40, &qword_1C0D58, qword_1523D0);
      return (*(v49 + 16))(v157, v163, v6);
    }

    v68 = v151;
    sub_10358(v67, v151, &qword_1C0D58, qword_1523D0);
    v69 = v148;
    sub_103C0(v40, v148);
    v70 = *(v69 + 8);
    v71 = *(v62 + 48);
    ObjectType = swift_getObjectType();
    v164 = (*(v70 + 8))(ObjectType, v70);
    swift_unknownObjectRelease();
    v73 = *(v49 + 8);
    v73(v69 + v71, v6);
    sub_103C0(v68, v69);
    v74 = *(v69 + 8);
    v75 = *(v62 + 48);
    v76 = swift_getObjectType();
    v77 = (*(v74 + 8))(v76, v74);
    v78 = v164;
    swift_unknownObjectRelease();
    v155 = v73;
    v73(v69 + v75, v6);
    v161 = v77;
    if (v77 == v78)
    {
      v88 = [v78 delegate];
      if (v88)
      {
        v89 = v88;
        if ([v88 respondsToSelector:"collectionView:targetIndexPathForMoveFromItemAtIndexPath:toProposedIndexPath:"])
        {
          sub_103C0(v40, v69);
          swift_unknownObjectRelease();
          v90 = v162;
          v91 = *(v162 + 48);
          isa = sub_140B9C().super.isa;
          v93 = v155;
          v155(v69 + v91, v6);
          v94 = v151;
          sub_103C0(v151, v69);
          swift_unknownObjectRelease();
          v95 = *(v90 + 48);
          v96 = sub_140B9C().super.isa;
          v93(v69 + v95, v6);
          v97 = [v89 collectionView:v164 targetIndexPathForMoveFromItemAtIndexPath:isa toProposedIndexPath:v96];

          sub_140BAC();
          v98 = *v94;
          v99 = *(v94 + 8);
          v100 = *(v94 + 16);
          v101 = *(v94 + 24);

          v102 = sub_140C0C();
          if (v102 == 2)
          {
            v103 = sub_140BFC();
          }

          else if (v102 <= 0)
          {
            v103 = sub_14093C();
          }

          else
          {
            v103 = sub_140C3C();
          }

          v132 = v103;
          result = sub_9EA88(v98, v99, v100, v101);
          v133 = v132 + result;
          if (!__OFADD__(v132, result))
          {
            v134 = v142;
            v135 = sub_140C0C();
            v136 = v160;
            v137 = v151;
            if (v135 == 2)
            {
              v138 = sub_140BFC();
            }

            else if (v135 <= 0)
            {
              v138 = sub_14093C();
            }

            else
            {
              v138 = sub_140C3C();
            }

            if (v133 == v138)
            {

              swift_unknownObjectRelease();
              (*(v159 + 32))(v157, v134, v136);
            }

            else
            {
              if (sub_140C0C() >= 2)
              {
                v139 = sub_140C0C();
                if (v139 == 2)
                {
                  sub_140BEC();
                }

                else if (v139 <= 2)
                {
                  sub_14093C();
                }

                else
                {
                  sub_140C3C();
                }

                sub_140BDC();
              }

              else
              {
                sub_140C1C();
              }

              swift_unknownObjectRelease();

              v155(v134, v136);
            }

            sub_15340(v137, &qword_1C0D58, qword_1523D0);
            v131 = v158;
            return sub_15340(v131, &qword_1C0D58, qword_1523D0);
          }

LABEL_110:
          __break(1u);
          return result;
        }

        swift_unknownObjectRelease();
        v78 = v164;
      }

      sub_15340(v151, &qword_1C0D58, qword_1523D0);
      sub_15340(v40, &qword_1C0D58, qword_1523D0);
      v49 = v159;
      return (*(v49 + 16))(v157, v163, v6);
    }

    v79 = sub_140BFC();
    if (v79 >= sub_140BFC())
    {
      v104 = *v40;
      v105 = v40[1];
      v106 = v40;
      v107 = v40[2];
      v108 = *(v106 + 24);

      v109 = sub_9E8F0(v104, v105, v107, v108);

      v110 = v106;
      v111 = v143;
      sub_103C0(v110, v143);
      v112 = *(v111 + 8);
      v113 = swift_getObjectType();
      v114 = (*(v112 + 8))(v113, v112);
      swift_unknownObjectRelease();
      v115 = [v114 dataSource];

      if (v115)
      {
        v116 = [v115 collectionView:v141 numberOfItemsInSection:v109];
        swift_unknownObjectRelease();
      }

      else
      {
        v116 = 0;
      }

      v155(v111 + *(v162 + 48), v160);
      result = v116 - 1;
      if (!__OFSUB__(v116, 1))
      {
        v87 = v151;
        if (!__OFSUB__(v109, 1))
        {
          sub_140BDC();

          v119 = sub_140C0C();
          if (v119 == 2)
          {
            v120 = sub_140BFC();
          }

          else if (v119 <= 0)
          {
            v120 = sub_14093C();
          }

          else
          {
            v120 = sub_140C3C();
          }

          v123 = v120;
          result = sub_9EA88(v104, v105, v107, v108);
          v121 = v123 + result;
          if (!__OFADD__(v123, result))
          {
            v122 = &v169;
LABEL_69:
            v124 = *(v122 - 32);
            v125 = sub_140C0C();
            v126 = v160;
            v127 = v158;
            if (v125 == 2)
            {
              if (v121 == sub_140BFC())
              {
LABEL_71:

                v128 = v159;
                v129 = v144;
                (*(v159 + 32))(v144, v124, v126);
LABEL_85:
                (*(v128 + 32))(v157, v129, v126);
                sub_15340(v87, &qword_1C0D58, qword_1523D0);
                v131 = v127;
                return sub_15340(v131, &qword_1C0D58, qword_1523D0);
              }
            }

            else if (v125 <= 0)
            {
              if (v121 == sub_14093C())
              {
                goto LABEL_71;
              }
            }

            else if (v121 == sub_140C3C())
            {
              goto LABEL_71;
            }

            if (sub_140C0C() > 1)
            {
              v130 = sub_140C0C();
              if (v130 == 2)
              {
                sub_140BEC();
              }

              else if (v130 <= 2)
              {
                sub_14093C();
              }

              else
              {
                sub_140C3C();
              }

              v129 = v144;
              sub_140BDC();
            }

            else
            {
              v129 = v144;
              sub_140C1C();
            }

            v155(v124, v126);
            v128 = v159;
            goto LABEL_85;
          }

          goto LABEL_109;
        }

LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      __break(1u);
    }

    else
    {
      sub_140BDC();
      v80 = *v40;
      v81 = v40[1];
      v82 = v40;
      v83 = v40[2];
      v84 = *(v82 + 24);

      v85 = sub_140C0C();
      if (v85 == 2)
      {
        v86 = sub_140BFC();
        v87 = v151;
      }

      else
      {
        v87 = v151;
        if (v85 <= 0)
        {
          v117 = sub_14093C();
        }

        else
        {
          v117 = sub_140C3C();
        }

        v86 = v117;
      }

      result = sub_9EA88(v80, v81, v83, v84);
      v121 = v86 + result;
      if (!__OFADD__(v86, result))
      {
        v122 = &v170;
        goto LABEL_69;
      }
    }

    __break(1u);
    goto LABEL_108;
  }

  sub_15340(v28, &qword_1C0D50, &unk_14A6D0);
  return (*(v49 + 16))(v157, v163, v6);
}

uint64_t sub_FE54(void *a1)
{

  v1 = sub_9E1E0();

  v10 = *(v1 + 16);
  if (v10)
  {
    v3 = 0;
    v4 = v1 + 56;
    while (v3 < *(v1 + 16))
    {
      v6 = *(v4 - 24);
      v5 = *(v4 - 16);
      ObjectType = swift_getObjectType();
      v8 = *(v5 + 8);
      swift_unknownObjectRetain_n();
      v9 = v8(ObjectType, v5);

      swift_unknownObjectRelease();
      if (v9 == a1)
      {

        return v6;
      }

      result = swift_unknownObjectRelease();
      ++v3;
      v4 += 32;
      if (v10 == v3)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    return 0;
  }

  return result;
}

id sub_FF90(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_didIgnoreLayout] = 0;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_needsCountDataUpdate] = 1;
  v7 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
  type metadata accessor for CompositeCollectionViewCountData();
  swift_allocObject();
  *&v3[v7] = sub_9E240(_swiftEmptyArrayStorage);
  *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_componentGroups] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView] = 0;
  if (a2)
  {
    v8 = sub_14489C();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v4;
  v11.super_class = type metadata accessor for CompositeCollectionViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_10118(void *a1)
{
  v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_didIgnoreLayout] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_shouldIgnoreLayoutFromTraitCollectionChangeCount] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_needsCountDataUpdate] = 1;
  v3 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
  type metadata accessor for CompositeCollectionViewCountData();
  swift_allocObject();
  *&v1[v3] = sub_9E240(_swiftEmptyArrayStorage);
  *&v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_componentGroups] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_collectionView] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for CompositeCollectionViewController();
  v4 = objc_msgSendSuper2(&v6, "initWithCoder:", a1);

  if (v4)
  {
  }

  return v4;
}

uint64_t sub_10358(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_103C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_10494(void *result, uint64_t a2, uint64_t *a3, uint64_t *a4)
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

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v6 = sub_144A1C();
    v7 = v6;
    *(v6 + 16) = a2;
    *(v6 + 32) = v5;
    v8 = a2 - 1;
    if (v8)
    {
      v9 = (v6 + 40);
      do
      {
        *v9++ = v5;

        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

uint64_t sub_10528()
{

  v0 = sub_9E1E0();
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_5;
  }

  v2 = v0 + 32 * v1;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  swift_unknownObjectRetain();

  v7 = sub_9EA88(v3, v4, v5, v6);
  v8 = sub_9E8F0(v3, v4, v5, v6);
  swift_unknownObjectRelease();

  result = v8 + v7;
  if (__OFADD__(v7, v8))
  {
    __break(1u);
LABEL_5:

    return 0;
  }

  return result;
}

id sub_105F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_140C2C();
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  __chkstk_darwin(v3);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v16);
  v19 = &v46 - v18;
  v51 = *(v13 + 56);
  v51(v8, 1, 1, v12, v17);

  v20 = sub_140C0C();
  v53 = a1;
  if (v20 == 2)
  {
    v21 = sub_140BFC();
  }

  else if (v20 <= 0)
  {
    v21 = sub_14093C();
  }

  else
  {
    v21 = sub_140C3C();
  }

  sub_9E3E8(v21, 0, 0, 0, v59);
  v22 = v59[0];
  if (v59[0])
  {
    v47 = v11;
    v23 = v19;
    v49 = v59[2];
    v50 = v59[1];
    v48 = v60;
    v24 = v61;
    if (sub_140C0C() >= 2)
    {
      v46 = v24;
      v27 = sub_140C0C();
      if (v27 == 2)
      {
        sub_140BEC();
        v25 = v52;
        v19 = v23;
      }

      else
      {
        v19 = v23;
        if (v27 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        v25 = v52;
      }

      v11 = v47;
      sub_140BDC();
    }

    else
    {
      v25 = v52;
      sub_140C1C();
      v19 = v23;
      v11 = v47;
    }

    sub_15340(v8, &qword_1C0D50, &unk_14A6D0);
    v28 = *(v12 + 48);
    v29 = v49;
    v30 = v50;
    *v8 = v22;
    *(v8 + 1) = v30;
    *(v8 + 2) = v29;
    v8[24] = v48 & 1;
    v26 = v54;
    (*(v55 + 32))(&v8[v28], v25, v54);
    (v51)(v8, 0, 1, v12);
  }

  else
  {

    v26 = v54;
  }

  sub_10358(v8, v11, &qword_1C0D50, &unk_14A6D0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_15340(v11, &qword_1C0D50, &unk_14A6D0);
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1451EC(60);
    v62._countAndFlagsBits = 0xD000000000000039;
    v62._object = 0x8000000000160D20;
    sub_14494C(v62);
    v56 = sub_140BFC();
    v63._countAndFlagsBits = sub_14538C();
    sub_14494C(v63);

    v64._countAndFlagsBits = 46;
    v64._object = 0xE100000000000000;
    sub_14494C(v64);
  }

  else
  {
    sub_10358(v11, v19, &qword_1C0D58, qword_1523D0);
    sub_103C0(v19, v15);
    v31 = *(v15 + 1);
    v32 = *(v12 + 48);
    ObjectType = swift_getObjectType();
    v34 = (*(v31 + 8))(ObjectType, v31);
    swift_unknownObjectRelease();
    v35 = *(v55 + 8);
    v35(&v15[v32], v26);
    v36 = [v34 dataSource];
    if (v36)
    {
      v37 = v36;
      sub_103C0(v19, v15);
      swift_unknownObjectRelease();
      v38 = *(v12 + 48);
      isa = sub_140B9C().super.isa;
      v35(&v15[v38], v26);
      v40 = [v37 collectionView:v34 cellForItemAtIndexPath:isa];
      swift_unknownObjectRelease();

      sub_15340(v19, &qword_1C0D58, qword_1523D0);
      return v40;
    }

    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1451EC(59);
    v65._object = 0x8000000000160DA0;
    v65._countAndFlagsBits = 0xD00000000000001ALL;
    sub_14494C(v65);
    v42 = [v34 description];
    v43 = sub_1448DC();
    v45 = v44;

    v66._countAndFlagsBits = v43;
    v66._object = v45;
    sub_14494C(v66);

    v67._countAndFlagsBits = 0xD00000000000001FLL;
    v67._object = 0x8000000000160DC0;
    sub_14494C(v67);
  }

  result = sub_1452FC();
  __break(1u);
  return result;
}

id sub_10C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v5 = sub_140C2C();
  v59 = *(v5 - 8);
  v60 = v5;
  __chkstk_darwin(v5);
  v56 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v7 - 8);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v20 = v50 - v19;
  v55 = *(v14 + 56);
  v55(v9, 1, 1, v13, v18);

  v21 = sub_140C0C();
  v58 = a3;
  if (v21 == 2)
  {
    v22 = sub_140BFC();
  }

  else if (v21 <= 0)
  {
    v22 = sub_14093C();
  }

  else
  {
    v22 = sub_140C3C();
  }

  v57 = a2;
  sub_9E3E8(v22, 1, v61, a2, v65);
  v23 = v65[0];
  if (v65[0])
  {
    v51 = v12;
    v24 = v20;
    v53 = v65[2];
    v54 = v65[1];
    v52 = v66;
    v25 = v67;
    if (sub_140C0C() >= 2)
    {
      v50[1] = v25;
      v27 = sub_140C0C();
      if (v27 == 2)
      {
        sub_140BEC();
        v26 = v56;
        v20 = v24;
      }

      else
      {
        v20 = v24;
        if (v27 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        v26 = v56;
      }

      v12 = v51;
      sub_140BDC();
    }

    else
    {
      v26 = v56;
      sub_140C1C();
      v20 = v24;
      v12 = v51;
    }

    sub_15340(v9, &qword_1C0D50, &unk_14A6D0);
    v28 = *(v13 + 48);
    v29 = v53;
    v30 = v54;
    *v9 = v23;
    *(v9 + 1) = v30;
    *(v9 + 2) = v29;
    v9[24] = v52 & 1;
    (*(v59 + 32))(&v9[v28], v26, v60);
    (v55)(v9, 0, 1, v13);
  }

  else
  {
  }

  sub_10358(v9, v12, &qword_1C0D50, &unk_14A6D0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_15340(v12, &qword_1C0D50, &unk_14A6D0);
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1451EC(60);
    v68._countAndFlagsBits = 0xD000000000000039;
    v68._object = 0x8000000000160D20;
    sub_14494C(v68);
    v44 = sub_140C0C();
    if (v44 == 2)
    {
      v45 = sub_140BFC();
    }

    else if (v44 <= 0)
    {
      v45 = sub_14093C();
    }

    else
    {
      v45 = sub_140C3C();
    }

    v62 = v45;
    v72._countAndFlagsBits = sub_14538C();
    sub_14494C(v72);

    v73._countAndFlagsBits = 46;
    v73._object = 0xE100000000000000;
    sub_14494C(v73);
  }

  else
  {
    sub_10358(v12, v20, &qword_1C0D58, qword_1523D0);
    sub_103C0(v20, v16);
    v31 = *(v16 + 1);
    v32 = *(v13 + 48);
    ObjectType = swift_getObjectType();
    v34 = (*(v31 + 8))(ObjectType, v31);
    swift_unknownObjectRelease();
    v35 = v60;
    v36 = *(v59 + 8);
    v36(&v16[v32], v60);
    v37 = [v34 dataSource];
    if (v37)
    {
      v38 = v37;
      v39 = sub_14489C();
      sub_103C0(v20, v16);
      swift_unknownObjectRelease();
      v40 = *(v13 + 48);
      isa = sub_140B9C().super.isa;
      v36(&v16[v40], v35);
      v42 = [v38 collectionView:v34 viewForSupplementaryElementOfKind:v39 atIndexPath:isa];
      swift_unknownObjectRelease();

      sub_15340(v20, &qword_1C0D58, qword_1523D0);
      return v42;
    }

    v63 = 0;
    v64 = 0xE000000000000000;
    sub_1451EC(59);
    v69._object = 0x8000000000160DA0;
    v69._countAndFlagsBits = 0xD00000000000001ALL;
    sub_14494C(v69);
    v46 = [v34 description];
    v47 = sub_1448DC();
    v49 = v48;

    v70._countAndFlagsBits = v47;
    v70._object = v49;
    sub_14494C(v70);

    v71._countAndFlagsBits = 0xD00000000000001FLL;
    v71._object = 0x8000000000160DC0;
    sub_14494C(v71);
  }

  result = sub_1452FC();
  __break(1u);
  return result;
}

id sub_11328(uint64_t a1, uint64_t a2)
{
  v2 = sub_140C2C();
  v49 = *(v2 - 8);
  v50 = v2;
  __chkstk_darwin(v2);
  v47 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v41[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v13);
  v46 = &v41[-v15];
  v16 = *(v11 + 56);
  v16(v6, 1, 1, v10, v14);

  v17 = sub_140C0C();
  if (v17 == 2)
  {
    v18 = sub_140BFC();
  }

  else if (v17 <= 0)
  {
    v18 = sub_14093C();
  }

  else
  {
    v18 = sub_140C3C();
  }

  sub_9E3E8(v18, 0, 0, 0, v51);
  v19 = v51[0];
  if (v51[0])
  {
    v44 = v51[1];
    v45 = v16;
    v43 = v51[2];
    v42 = v52;
    if (sub_140C0C() >= 2)
    {
      v23 = sub_140C0C();
      if (v23 == 2)
      {
        sub_140BEC();
      }

      else if (v23 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v20 = v47;
      sub_140BDC();
    }

    else
    {
      v20 = v47;
      sub_140C1C();
    }

    v21 = v50;

    sub_15340(v6, &qword_1C0D50, &unk_14A6D0);
    v24 = *(v10 + 48);
    v25 = v43;
    v26 = v44;
    *v6 = v19;
    *(v6 + 1) = v26;
    *(v6 + 2) = v25;
    v6[24] = v42 & 1;
    v22 = v49;
    (*(v49 + 32))(&v6[v24], v20, v21);
    v45(v6, 0, 1, v10);
  }

  else
  {

    v22 = v49;
    v21 = v50;
  }

  sub_10358(v6, v9, &qword_1C0D50, &unk_14A6D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_15340(v9, &qword_1C0D50, &unk_14A6D0);
  }

  else
  {
    v27 = v46;
    sub_10358(v9, v46, &qword_1C0D58, qword_1523D0);
    v28 = v48;
    sub_103C0(v27, v48);
    v29 = *(v28 + 1);
    v30 = *(v10 + 48);
    ObjectType = swift_getObjectType();
    v32 = (*(v29 + 8))(ObjectType, v29);
    swift_unknownObjectRelease();
    v33 = *(v22 + 8);
    v33(&v28[v30], v21);
    v34 = [v32 dataSource];
    if (v34)
    {
      v35 = v34;
      if ([v34 respondsToSelector:"collectionView:canMoveItemAtIndexPath:"])
      {
        v36 = v48;
        sub_103C0(v27, v48);
        swift_unknownObjectRelease();
        v37 = *(v10 + 48);
        isa = sub_140B9C().super.isa;
        v33(&v36[v37], v21);
        v39 = [v35 collectionView:v32 canMoveItemAtIndexPath:isa];
        swift_unknownObjectRelease();

        sub_15340(v27, &qword_1C0D58, qword_1523D0);
        return v39;
      }

      sub_15340(v27, &qword_1C0D58, qword_1523D0);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_15340(v27, &qword_1C0D58, qword_1523D0);
    }
  }

  return 0;
}

uint64_t sub_11888(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v85 = sub_140C2C();
  v87 = *(v85 - 8);
  __chkstk_darwin(v85);
  v77 = &v72[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v72[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v7 - 8);
  v83 = &v72[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v80 = &v72[-v10];
  __chkstk_darwin(v11);
  v13 = &v72[-v12];
  __chkstk_darwin(v14);
  v16 = &v72[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v76 = &v72[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v81 = &v72[-v21];
  v23 = __chkstk_darwin(v22);
  v84 = &v72[-v24];
  v78 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
  v79 = v2;
  v86 = *(v18 + 7);
  v86(v13, 1, 1, v17, v23);

  v25 = sub_140C0C();
  if (v25 == 2)
  {
    v26 = sub_140BFC();
  }

  else if (v25 <= 0)
  {
    v26 = sub_14093C();
  }

  else
  {
    v26 = sub_140C3C();
  }

  sub_9E3E8(v26, 0, 0, 0, v89);
  v27 = v89[0];
  if (v89[0])
  {
    isa = v18;
    v75 = v89[1];
    v74 = v89[2];
    v73 = v90;
    if (sub_140C0C() >= 2)
    {
      v29 = sub_140C0C();
      if (v29 == 2)
      {
        sub_140BEC();
      }

      else if (v29 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      sub_140BDC();
    }

    else
    {
      sub_140C1C();
    }

    sub_15340(v13, &qword_1C0D50, &unk_14A6D0);
    v30 = *(v17 + 48);
    v31 = v75;
    *v13 = v27;
    *(v13 + 1) = v31;
    *(v13 + 2) = v74;
    v13[24] = v73 & 1;
    v32 = v6;
    v28 = v85;
    (*(v87 + 32))(&v13[v30], v32, v85);
    (v86)(v13, 0, 1, v17);
    v18 = isa;
  }

  else
  {

    v28 = v85;
  }

  sub_10358(v13, v16, &qword_1C0D50, &unk_14A6D0);
  v35 = *(v18 + 6);
  v33 = (v18 + 48);
  v34 = v35;
  if (v35(v16, 1, v17) == 1)
  {
    v36 = &qword_1C0D50;
    v37 = &unk_14A6D0;
    v38 = v16;
  }

  else
  {
    isa = v33;
    v39 = v84;
    sub_10358(v16, v84, &qword_1C0D58, qword_1523D0);
    v40 = v81;
    sub_103C0(v39, v81);
    v41 = *(v40 + 1);
    v42 = *(v17 + 48);
    ObjectType = swift_getObjectType();
    v75 = (*(v41 + 8))(ObjectType, v41);
    swift_unknownObjectRelease();
    v74 = *(v87 + 8);
    v74(&v40[v42], v28);
    (v86)(v83, 1, 1, v17);

    v44 = sub_140C0C();
    if (v44 == 2)
    {
      v45 = sub_140BFC();
    }

    else if (v44 <= 0)
    {
      v45 = sub_14093C();
    }

    else
    {
      v45 = sub_140C3C();
    }

    sub_9E3E8(v45, 0, 0, 0, v91);
    v46 = v91[0];
    if (v91[0])
    {
      v48 = v91[1];
      v47 = v91[2];
      LODWORD(v79) = v92;
      if (sub_140C0C() >= 2)
      {
        v51 = sub_140C0C();
        if (v51 == 2)
        {
          sub_140BEC();
        }

        else if (v51 <= 2)
        {
          sub_14093C();
        }

        else
        {
          sub_140C3C();
        }

        v49 = v77;
        sub_140BDC();
      }

      else
      {
        v49 = v77;
        sub_140C1C();
      }

      v50 = v83;
      sub_15340(v83, &qword_1C0D50, &unk_14A6D0);
      v52 = *(v17 + 48);
      *v50 = v46;
      *(v50 + 1) = v48;
      *(v50 + 2) = v47;
      v50[24] = v79 & 1;
      v28 = v85;
      (*(v87 + 32))(&v50[v52], v49, v85);
      (v86)(v50, 0, 1, v17);
      v40 = v81;
    }

    else
    {

      v50 = v83;
    }

    v53 = v50;
    v54 = v80;
    sub_10358(v53, v80, &qword_1C0D50, &unk_14A6D0);
    v55 = v34(v54, 1, v17);
    v56 = v74;
    if (v55 == 1)
    {
      sub_15340(v84, &qword_1C0D58, qword_1523D0);

      v36 = &qword_1C0D50;
      v37 = &unk_14A6D0;
      v38 = v54;
    }

    else
    {
      v57 = v76;
      sub_10358(v54, v76, &qword_1C0D58, qword_1523D0);
      sub_103C0(v57, v40);
      v58 = *(v40 + 1);
      v59 = *(v17 + 48);
      v60 = swift_getObjectType();
      v61 = (*(v58 + 8))(v60, v58);
      swift_unknownObjectRelease();
      v56(&v40[v59], v28);
      v62 = v75;
      if (v75 == v61 && (v64 = [v75 dataSource]) != 0)
      {
        v65 = v64;
        if ([v64 respondsToSelector:"collectionView:moveItemAtIndexPath:toIndexPath:"])
        {
          sub_103C0(v84, v40);
          swift_unknownObjectRelease();
          v66 = v40;
          v67 = *(v17 + 48);
          v68 = v62;
          isa = sub_140B9C().super.isa;
          v56((v66 + v67), v28);
          sub_103C0(v76, v66);
          swift_unknownObjectRelease();
          v69 = *(v17 + 48);
          v70 = sub_140B9C().super.isa;
          v56((v66 + v69), v28);
          v71 = isa;
          [v65 collectionView:v68 moveItemAtIndexPath:isa toIndexPath:v70];

          swift_unknownObjectRelease();
          v57 = v76;
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }

      sub_15340(v57, &qword_1C0D58, qword_1523D0);
      v38 = v84;
      v36 = &qword_1C0D58;
      v37 = qword_1523D0;
    }
  }

  return sub_15340(v38, v36, v37);
}

id sub_12190(uint64_t a1, uint64_t a2)
{
  v2 = sub_140C2C();
  v53 = *(v2 - 8);
  __chkstk_darwin(v2);
  v51 = &v45[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v45[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v45[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v13);
  v52 = &v45[-v15];
  v50 = *(v11 + 56);
  v50(v6, 1, 1, v10, v14);

  v16 = sub_140C0C();
  v54 = v2;
  if (v16 == 2)
  {
    v17 = sub_140BFC();
  }

  else if (v16 <= 0)
  {
    v17 = sub_14093C();
  }

  else
  {
    v17 = sub_140C3C();
  }

  sub_9E3E8(v17, 0, 0, 0, v56);
  v18 = v56[0];
  if (v56[0])
  {
    v47 = v56[2];
    v48 = v56[1];
    v46 = v57;
    if (sub_140C0C() >= 2)
    {
      v22 = sub_140C0C();
      if (v22 == 2)
      {
        sub_140BEC();
      }

      else if (v22 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v19 = v51;
      sub_140BDC();
    }

    else
    {
      v19 = v51;
      sub_140C1C();
    }

    v21 = v53;

    sub_15340(v6, &qword_1C0D50, &unk_14A6D0);
    v23 = *(v10 + 48);
    v24 = v47;
    v25 = v48;
    *v6 = v18;
    *(v6 + 1) = v25;
    *(v6 + 2) = v24;
    v6[24] = v46 & 1;
    v20 = v54;
    (*(v21 + 32))(&v6[v23], v19, v54);
    (v50)(v6, 0, 1, v10);
  }

  else
  {

    v21 = v53;
    v20 = v54;
  }

  sub_10358(v6, v9, &qword_1C0D50, &unk_14A6D0);
  v26 = (*(v11 + 48))(v9, 1, v10);
  v27 = v52;
  if (v26 != 1)
  {
    sub_10358(v9, v52, &qword_1C0D58, qword_1523D0);
    v31 = v49;
    sub_103C0(v27, v49);
    v32 = *(v31 + 1);
    v33 = *(v10 + 48);
    ObjectType = swift_getObjectType();
    v35 = (*(v32 + 8))(ObjectType, v32);
    swift_unknownObjectRelease();
    v36 = *(v21 + 8);
    v36(&v31[v33], v20);
    v37 = v35;
    if ([v37 dataSource])
    {
      v55 = &OBJC_PROTOCOL___UICollectionViewDataSource_Private;
      v38 = swift_dynamicCastObjCProtocolConditional();
      if (!v38)
      {

        swift_unknownObjectRelease();
LABEL_26:
        v28 = &qword_1C0D58;
        v29 = qword_1523D0;
        v30 = v27;
        goto LABEL_27;
      }

      v39 = v38;
      if ([v38 respondsToSelector:"_collectionView:canEditItemAtIndexPath:"])
      {
        v40 = v49;
        sub_103C0(v27, v49);
        swift_unknownObjectRelease();
        v41 = *(v10 + 48);
        isa = sub_140B9C().super.isa;
        v36(&v40[v41], v20);
        v43 = [v39 _collectionView:v37 canEditItemAtIndexPath:isa];
        swift_unknownObjectRelease();

        sub_15340(v27, &qword_1C0D58, qword_1523D0);
        return v43;
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_26;
  }

  v28 = &qword_1C0D50;
  v29 = &unk_14A6D0;
  v30 = v9;
LABEL_27:
  sub_15340(v30, v28, v29);
  return &dword_0 + 1;
}

id sub_12714(uint64_t a1, uint64_t a2)
{
  v2 = sub_140C2C();
  v51 = *(v2 - 8);
  __chkstk_darwin(v2);
  v49 = &v43[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v43[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v13);
  v50 = &v43[-v15];
  v48 = *(v11 + 56);
  v48(v6, 1, 1, v10, v14);

  v16 = sub_140C0C();
  v52 = v2;
  if (v16 == 2)
  {
    v17 = sub_140BFC();
  }

  else if (v16 <= 0)
  {
    v17 = sub_14093C();
  }

  else
  {
    v17 = sub_140C3C();
  }

  sub_9E3E8(v17, 0, 0, 0, v53);
  v18 = v53[0];
  if (v53[0])
  {
    v45 = v53[2];
    v46 = v53[1];
    v44 = v54;
    if (sub_140C0C() >= 2)
    {
      v22 = sub_140C0C();
      if (v22 == 2)
      {
        sub_140BEC();
      }

      else if (v22 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v19 = v49;
      sub_140BDC();
    }

    else
    {
      v19 = v49;
      sub_140C1C();
    }

    v21 = v51;

    sub_15340(v6, &qword_1C0D50, &unk_14A6D0);
    v23 = *(v10 + 48);
    v24 = v45;
    v25 = v46;
    *v6 = v18;
    *(v6 + 1) = v25;
    *(v6 + 2) = v24;
    v6[24] = v44 & 1;
    v20 = v52;
    (*(v21 + 32))(&v6[v23], v19, v52);
    (v48)(v6, 0, 1, v10);
  }

  else
  {

    v21 = v51;
    v20 = v52;
  }

  sub_10358(v6, v9, &qword_1C0D50, &unk_14A6D0);
  v26 = (*(v11 + 48))(v9, 1, v10);
  v27 = v50;
  if (v26 == 1)
  {
    sub_15340(v9, &qword_1C0D50, &unk_14A6D0);
    return 0;
  }

  else
  {
    sub_10358(v9, v50, &qword_1C0D58, qword_1523D0);
    v29 = v47;
    sub_103C0(v27, v47);
    v30 = *(v29 + 1);
    v31 = *(v10 + 48);
    ObjectType = swift_getObjectType();
    v33 = (*(v30 + 8))(ObjectType, v30);
    swift_unknownObjectRelease();
    v34 = *(v21 + 8);
    v34(&v29[v31], v20);
    v35 = v33;
    v36 = [v35 mt_isEditing];
    v37 = &selRef__allowsSelectionDuringEditing;
    if (!v36)
    {
      v37 = &selRef_allowsSelection;
    }

    v28 = [v35 *v37];
    v38 = [v35 delegate];

    if (v38)
    {
      if ((v28 & 1) != 0 && [v38 respondsToSelector:"collectionView:shouldSelectItemAtIndexPath:"])
      {
        v39 = v47;
        sub_103C0(v27, v47);
        swift_unknownObjectRelease();
        v40 = *(v10 + 48);
        isa = sub_140B9C().super.isa;
        v34(&v39[v40], v20);
        v28 = [v38 collectionView:v35 shouldSelectItemAtIndexPath:isa];
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      sub_15340(v27, &qword_1C0D58, qword_1523D0);
    }

    else
    {
      sub_15340(v27, &qword_1C0D58, qword_1523D0);
    }
  }

  return v28;
}

void sub_12CAC(uint64_t a1, SEL *a2)
{
  v43 = a2;
  v49 = sub_140C2C();
  v2 = *(v49 - 8);
  __chkstk_darwin(v49);
  v46 = &v39[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v39[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v13);
  v44 = &v39[-v15];
  v45 = *(v11 + 56);
  v45(v6, 1, 1, v10, v14);

  v16 = sub_140C0C();
  if (v16 == 2)
  {
    v17 = sub_140BFC();
  }

  else if (v16 <= 0)
  {
    v17 = sub_14093C();
  }

  else
  {
    v17 = sub_140C3C();
  }

  sub_9E3E8(v17, 0, 0, 0, v50);
  v18 = v50[0];
  if (v50[0])
  {
    v48 = v2;
    v41 = v50[2];
    v42 = v50[1];
    v40 = v51;
    if (sub_140C0C() >= 2)
    {
      v21 = sub_140C0C();
      if (v21 == 2)
      {
        sub_140BEC();
      }

      else if (v21 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v19 = v46;
      sub_140BDC();
    }

    else
    {
      v19 = v46;
      sub_140C1C();
    }

    v20 = v49;

    sub_15340(v6, &qword_1C0D50, &unk_14A6D0);
    v22 = *(v10 + 48);
    v23 = v41;
    v24 = v42;
    *v6 = v18;
    *(v6 + 1) = v24;
    *(v6 + 2) = v23;
    v6[24] = v40 & 1;
    v2 = v48;
    (*(v48 + 32))(&v6[v22], v19, v20);
    (v45)(v6, 0, 1, v10);
  }

  else
  {

    v20 = v49;
  }

  sub_10358(v6, v9, &qword_1C0D50, &unk_14A6D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_15340(v9, &qword_1C0D50, &unk_14A6D0);
  }

  else
  {
    v25 = v44;
    sub_10358(v9, v44, &qword_1C0D58, qword_1523D0);
    v26 = v47;
    sub_103C0(v25, v47);
    v27 = *(v26 + 1);
    v28 = *(v10 + 48);
    ObjectType = swift_getObjectType();
    v30 = (*(v27 + 8))(ObjectType, v27);
    swift_unknownObjectRelease();
    v31 = v2 + 8;
    v32 = *(v2 + 8);
    v48 = v31;
    v32(&v26[v28], v20);
    v33 = [v30 delegate];
    if (v33)
    {
      v34 = v33;
      v35 = v43;
      if ([v33 respondsToSelector:*v43])
      {
        v36 = v47;
        sub_103C0(v25, v47);
        swift_unknownObjectRelease();
        v37 = *(v10 + 48);
        isa = sub_140B9C().super.isa;
        v32(&v36[v37], v20);
        [v34 *v35];
        swift_unknownObjectRelease();

        sub_15340(v25, &qword_1C0D58, qword_1523D0);
      }

      else
      {
        sub_15340(v25, &qword_1C0D58, qword_1523D0);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_15340(v25, &qword_1C0D58, qword_1523D0);
    }
  }
}

void sub_13214(uint64_t a1, uint64_t a2)
{
  v2 = sub_140C2C();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v47 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v42[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v13);
  v49 = &v42[-v15];
  v16 = *(v11 + 56);
  v16(v6, 1, 1, v10, v14);

  v17 = sub_140C0C();
  if (v17 == 2)
  {
    v18 = sub_140BFC();
  }

  else if (v17 <= 0)
  {
    v18 = sub_14093C();
  }

  else
  {
    v18 = sub_140C3C();
  }

  sub_9E3E8(v18, 0, 0, 0, v52);
  v19 = v52[0];
  if (v52[0])
  {
    v45 = v52[1];
    v46 = v16;
    v44 = v52[2];
    v43 = v53;
    if (sub_140C0C() >= 2)
    {
      v23 = sub_140C0C();
      if (v23 == 2)
      {
        sub_140BEC();
      }

      else if (v23 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v20 = v47;
      sub_140BDC();
    }

    else
    {
      v20 = v47;
      sub_140C1C();
    }

    v21 = v51;

    sub_15340(v6, &qword_1C0D50, &unk_14A6D0);
    v24 = *(v10 + 48);
    v25 = v44;
    v26 = v45;
    *v6 = v19;
    *(v6 + 1) = v26;
    *(v6 + 2) = v25;
    v6[24] = v43 & 1;
    v22 = v50;
    (*(v50 + 32))(&v6[v24], v20, v21);
    v46(v6, 0, 1, v10);
  }

  else
  {

    v22 = v50;
    v21 = v51;
  }

  sub_10358(v6, v9, &qword_1C0D50, &unk_14A6D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_15340(v9, &qword_1C0D50, &unk_14A6D0);
  }

  else
  {
    v27 = v49;
    sub_10358(v9, v49, &qword_1C0D58, qword_1523D0);
    v28 = v48;
    sub_103C0(v27, v48);
    v29 = *(v28 + 1);
    v30 = *(v10 + 48);
    ObjectType = swift_getObjectType();
    v32 = (*(v29 + 8))(ObjectType, v29);
    swift_unknownObjectRelease();
    v33 = *(v22 + 8);
    v33(&v28[v30], v21);
    v34 = [v32 delegate];
    if (v34)
    {
      v35 = v34;
      if ([v34 respondsToSelector:"collectionView:didSelectItemAtIndexPath:"])
      {
        v36 = v48;
        sub_103C0(v27, v48);
        swift_unknownObjectRelease();
        v37 = *(v10 + 48);
        isa = sub_140B9C().super.isa;
        v33(&v36[v37], v21);
        [v32 selectItemAtIndexPath:isa animated:0 scrollPosition:0];

        v39 = v49;
        sub_103C0(v49, v36);
        swift_unknownObjectRelease();
        v40 = *(v10 + 48);
        v41 = sub_140B9C().super.isa;
        v33(&v36[v40], v21);
        [v35 collectionView:v32 didSelectItemAtIndexPath:v41];
        swift_unknownObjectRelease();

        sub_15340(v39, &qword_1C0D58, qword_1523D0);
      }

      else
      {
        sub_15340(v27, &qword_1C0D58, qword_1523D0);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_15340(v27, &qword_1C0D58, qword_1523D0);
    }
  }
}

id sub_137C4(uint64_t a1, SEL *a2)
{
  v45 = a2;
  v51 = sub_140C2C();
  v2 = *(v51 - 8);
  __chkstk_darwin(v51);
  v48 = &v41[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v41[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v49 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v13);
  v46 = &v41[-v15];
  v47 = *(v11 + 56);
  v47(v6, 1, 1, v10, v14);

  v16 = sub_140C0C();
  if (v16 == 2)
  {
    v17 = sub_140BFC();
  }

  else if (v16 <= 0)
  {
    v17 = sub_14093C();
  }

  else
  {
    v17 = sub_140C3C();
  }

  sub_9E3E8(v17, 0, 0, 0, v52);
  v18 = v52[0];
  if (v52[0])
  {
    v50 = v2;
    v43 = v52[2];
    v44 = v52[1];
    v42 = v53;
    if (sub_140C0C() >= 2)
    {
      v21 = sub_140C0C();
      if (v21 == 2)
      {
        sub_140BEC();
      }

      else if (v21 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v19 = v48;
      sub_140BDC();
    }

    else
    {
      v19 = v48;
      sub_140C1C();
    }

    v20 = v51;

    sub_15340(v6, &qword_1C0D50, &unk_14A6D0);
    v22 = *(v10 + 48);
    v23 = v43;
    v24 = v44;
    *v6 = v18;
    *(v6 + 1) = v24;
    *(v6 + 2) = v23;
    v6[24] = v42 & 1;
    v2 = v50;
    (*(v50 + 32))(&v6[v22], v19, v20);
    (v47)(v6, 0, 1, v10);
  }

  else
  {

    v20 = v51;
  }

  sub_10358(v6, v9, &qword_1C0D50, &unk_14A6D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_15340(v9, &qword_1C0D50, &unk_14A6D0);
  }

  else
  {
    v25 = v46;
    sub_10358(v9, v46, &qword_1C0D58, qword_1523D0);
    v26 = v49;
    sub_103C0(v25, v49);
    v27 = *(v26 + 1);
    v28 = *(v10 + 48);
    ObjectType = swift_getObjectType();
    v30 = (*(v27 + 8))(ObjectType, v27);
    swift_unknownObjectRelease();
    v31 = v2 + 8;
    v32 = *(v2 + 8);
    v50 = v31;
    v32(&v26[v28], v20);
    v33 = [v30 delegate];
    if (v33)
    {
      v34 = v33;
      v35 = v45;
      if ([v33 respondsToSelector:*v45])
      {
        v36 = v49;
        sub_103C0(v25, v49);
        swift_unknownObjectRelease();
        v37 = *(v10 + 48);
        isa = sub_140B9C().super.isa;
        v32(&v36[v37], v20);
        v39 = [v34 *v35];
        swift_unknownObjectRelease();

        sub_15340(v25, &qword_1C0D58, qword_1523D0);
        return v39;
      }

      sub_15340(v25, &qword_1C0D58, qword_1523D0);

      swift_unknownObjectRelease();
    }

    else
    {
      sub_15340(v25, &qword_1C0D58, qword_1523D0);
    }
  }

  return &dword_0 + 1;
}

void sub_13D38(uint64_t a1, uint64_t a2)
{
  v2 = sub_140C2C();
  v50 = *(v2 - 8);
  v51 = v2;
  __chkstk_darwin(v2);
  v47 = &v42[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v42[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v48 = &v42[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v13);
  v49 = &v42[-v15];
  v16 = *(v11 + 56);
  v16(v6, 1, 1, v10, v14);

  v17 = sub_140C0C();
  if (v17 == 2)
  {
    v18 = sub_140BFC();
  }

  else if (v17 <= 0)
  {
    v18 = sub_14093C();
  }

  else
  {
    v18 = sub_140C3C();
  }

  sub_9E3E8(v18, 0, 0, 0, v52);
  v19 = v52[0];
  if (v52[0])
  {
    v45 = v52[1];
    v46 = v16;
    v44 = v52[2];
    v43 = v53;
    if (sub_140C0C() >= 2)
    {
      v23 = sub_140C0C();
      if (v23 == 2)
      {
        sub_140BEC();
      }

      else if (v23 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v20 = v47;
      sub_140BDC();
    }

    else
    {
      v20 = v47;
      sub_140C1C();
    }

    v21 = v51;

    sub_15340(v6, &qword_1C0D50, &unk_14A6D0);
    v24 = *(v10 + 48);
    v25 = v44;
    v26 = v45;
    *v6 = v19;
    *(v6 + 1) = v26;
    *(v6 + 2) = v25;
    v6[24] = v43 & 1;
    v22 = v50;
    (*(v50 + 32))(&v6[v24], v20, v21);
    v46(v6, 0, 1, v10);
  }

  else
  {

    v22 = v50;
    v21 = v51;
  }

  sub_10358(v6, v9, &qword_1C0D50, &unk_14A6D0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_15340(v9, &qword_1C0D50, &unk_14A6D0);
  }

  else
  {
    v27 = v49;
    sub_10358(v9, v49, &qword_1C0D58, qword_1523D0);
    v28 = v48;
    sub_103C0(v27, v48);
    v29 = *(v28 + 1);
    v30 = *(v10 + 48);
    ObjectType = swift_getObjectType();
    v32 = (*(v29 + 8))(ObjectType, v29);
    swift_unknownObjectRelease();
    v33 = *(v22 + 8);
    v33(&v28[v30], v21);
    v34 = [v32 delegate];
    if (v34)
    {
      v35 = v34;
      if ([v34 respondsToSelector:"collectionView:didDeselectItemAtIndexPath:"])
      {
        v36 = v48;
        sub_103C0(v27, v48);
        swift_unknownObjectRelease();
        v37 = *(v10 + 48);
        isa = sub_140B9C().super.isa;
        v33(&v36[v37], v21);
        [v32 deselectItemAtIndexPath:isa animated:0];

        v39 = v49;
        sub_103C0(v49, v36);
        swift_unknownObjectRelease();
        v40 = *(v10 + 48);
        v41 = sub_140B9C().super.isa;
        v33(&v36[v40], v21);
        [v35 collectionView:v32 didDeselectItemAtIndexPath:v41];
        swift_unknownObjectRelease();

        sub_15340(v39, &qword_1C0D58, qword_1523D0);
      }

      else
      {
        sub_15340(v27, &qword_1C0D58, qword_1523D0);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_15340(v27, &qword_1C0D58, qword_1523D0);
    }
  }
}

void sub_142E4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v42 = a3;
  v37 = a1;
  v47 = sub_140C2C();
  v3 = *(v47 - 8);
  __chkstk_darwin(v47);
  v46 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v43 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v14);
  v44 = &v37 - v16;
  v45 = *(v12 + 56);
  v45(v7, 1, 1, v11, v15);

  v17 = sub_140C0C();
  if (v17 == 2)
  {
    v18 = sub_140BFC();
  }

  else if (v17 <= 0)
  {
    v18 = sub_14093C();
  }

  else
  {
    v18 = sub_140C3C();
  }

  sub_9E3E8(v18, 0, 0, 0, v48);
  v19 = v48[0];
  if (v48[0])
  {
    v40 = v48[1];
    v41 = v3;
    v39 = v48[2];
    v38 = v49;
    if (sub_140C0C() >= 2)
    {
      v21 = sub_140C0C();
      if (v21 == 2)
      {
        sub_140BEC();
      }

      else if (v21 <= 2)
      {
        sub_14093C();
      }

      else
      {
        sub_140C3C();
      }

      v20 = v46;
      sub_140BDC();
    }

    else
    {
      v20 = v46;
      sub_140C1C();
    }

    sub_15340(v7, &qword_1C0D50, &unk_14A6D0);
    v22 = *(v11 + 48);
    v23 = v39;
    v24 = v40;
    *v7 = v19;
    *(v7 + 1) = v24;
    *(v7 + 2) = v23;
    v7[24] = v38 & 1;
    v3 = v41;
    (*(v41 + 32))(&v7[v22], v20, v47);
    (v45)(v7, 0, 1, v11);
  }

  else
  {
  }

  sub_10358(v7, v10, &qword_1C0D50, &unk_14A6D0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_15340(v10, &qword_1C0D50, &unk_14A6D0);
  }

  else
  {
    v25 = v44;
    sub_10358(v10, v44, &qword_1C0D58, qword_1523D0);
    v26 = v43;
    sub_103C0(v25, v43);
    v27 = *(v26 + 8);
    v28 = *(v11 + 48);
    ObjectType = swift_getObjectType();
    v30 = (*(v27 + 8))(ObjectType, v27);
    swift_unknownObjectRelease();
    v31 = *(v3 + 8);
    v31(v26 + v28, v47);
    v32 = [v30 delegate];
    if (v32)
    {
      v33 = v32;
      v34 = v42;
      if ([v32 respondsToSelector:*v42])
      {
        sub_103C0(v25, v26);
        swift_unknownObjectRelease();
        v35 = *(v11 + 48);
        isa = sub_140B9C().super.isa;
        v31(v26 + v35, v47);
        [v33 *v34];
        swift_unknownObjectRelease();

        sub_15340(v25, &qword_1C0D58, qword_1523D0);
      }

      else
      {
        sub_15340(v25, &qword_1C0D58, qword_1523D0);

        swift_unknownObjectRelease();
      }
    }

    else
    {
      sub_15340(v25, &qword_1C0D58, qword_1523D0);
    }
  }
}

void sub_14844(uint64_t a1, SEL *a2)
{
  v79 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D50, &unk_14A6D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v79 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0D58, qword_1523D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v82 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v79 - v13;
  __chkstk_darwin(v14);
  v98 = &v79 - v15;
  __chkstk_darwin(v16);
  v80 = &v79 - v17;
  v18 = sub_140C2C();
  __chkstk_darwin(v18);
  v83 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v25 = __chkstk_darwin(v21);
  v27 = &v79 - v26;
  v28 = *(a1 + 16);
  v89 = v9;
  v90 = v22;
  v84 = v23;
  v85 = v10;
  if (v28)
  {
    v88 = v24;
    v30 = *(v23 + 16);
    v29 = v23 + 16;
    v94 = v30;
    v31 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v32 = *(v29 + 56);
    v33 = (v10 + 56);
    v92 = (v29 - 8);
    v93 = v32;
    v95 = v29;
    v96 = OBJC_IVAR____TtC12NowPlayingUI33CompositeCollectionViewController_countData;
    v86 = (v29 + 16);
    v91 = (v10 + 48);
    v34 = _swiftEmptyArrayStorage;
    v97 = v8;
    v87 = (v10 + 56);
    v35 = v22;
    do
    {
      v103 = v34;
      v94(v27, v31, v35, v25);
      v102 = *v33;
      v102(v5, 1, 1, v9);

      v36 = sub_140C0C();
      v37 = v9;
      v38 = v35;
      if (v36 == 2)
      {
        v39 = sub_140BFC();
      }

      else if (v36 <= 0)
      {
        v39 = sub_14093C();
      }

      else
      {
        v39 = sub_140C3C();
      }

      sub_9E3E8(v39, 0, 0, 0, v104);
      v40 = v104[0];
      if (v104[0])
      {
        v100 = v104[2];
        v101 = v104[1];
        v99 = v105;
        if (sub_140C0C() >= 2)
        {
          v42 = sub_140C0C();
          if (v42 == 2)
          {
            sub_140BEC();
          }

          else if (v42 <= 2)
          {
            sub_14093C();
          }

          else
          {
            sub_140C3C();
          }

          v41 = v88;
          sub_140BDC();
        }

        else
        {
          v41 = v88;
          sub_140C1C();
        }

        sub_15340(v5, &qword_1C0D50, &unk_14A6D0);
        v43 = v90;
        (*v92)(v27, v90);
        v9 = v89;
        v44 = *(v89 + 48);
        v45 = v100;
        v46 = v101;
        *v5 = v40;
        *(v5 + 1) = v46;
        v35 = v43;
        *(v5 + 2) = v45;
        v5[24] = v99 & 1;
        (*v86)(&v5[v44], v41, v43);
        v33 = v87;
        v102(v5, 0, 1, v9);
      }

      else
      {

        v35 = v38;
        (*v92)(v27, v38);
        v9 = v37;
      }

      v47 = v97;
      sub_10358(v5, v97, &qword_1C0D50, &unk_14A6D0);
      v48 = (*v91)(v47, 1, v9) == 1;
      v34 = v103;
      if (v48)
      {
        sub_15340(v47, &qword_1C0D50, &unk_14A6D0);
      }

      else
      {
        sub_10358(v47, v98, &qword_1C0D58, qword_1523D0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_134470(0, v34[2] + 1, 1, v34);
        }

        v50 = v34[2];
        v49 = v34[3];
        if (v50 >= v49 >> 1)
        {
          v34 = sub_134470((v49 > 1), v50 + 1, 1, v34);
        }

        v34[2] = v50 + 1;
        sub_10358(v98, v34 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v50, &qword_1C0D58, qword_1523D0);
      }

      v31 += v93;
      --v28;
    }

    while (v28);
  }

  else
  {
    v34 = _swiftEmptyArrayStorage;
    v35 = v22;
  }

  v51 = v34[2];
  if (!v51)
  {

    return;
  }

  v52 = v9;
  v53 = v34 + ((*(v85 + 80) + 32) & ~*(v85 + 80));
  v54 = v80;
  sub_103C0(v53, v80);
  v56 = *v54;
  v55 = *(v54 + 1);
  v57 = v35;
  v58 = v84;
  (*(v84 + 8))(&v54[*(v52 + 48)], v57);
  ObjectType = swift_getObjectType();
  v60 = v34;
  v61 = *(v55 + 8);
  swift_unknownObjectRetain();
  v62 = v61(ObjectType, v55);
  v102 = v56;
  swift_unknownObjectRelease();
  v63 = [v62 prefetchDataSource];
  if (v63)
  {
    v64 = v63;
    v103 = v60;
    if ([v63 respondsToSelector:*v79])
    {
      v100 = v64;
      v101 = v62;
      v65 = *(v85 + 72);
      v66 = (v58 + 32);
      v67 = _swiftEmptyArrayStorage;
      v68 = v90;
      v69 = v83;
      do
      {
        v70 = v81;
        sub_103C0(v53, v81);
        v71 = v70;
        v72 = v82;
        sub_10358(v71, v82, &qword_1C0D58, qword_1523D0);
        swift_unknownObjectRelease();
        v73 = *v66;
        (*v66)(v69, v72 + *(v89 + 48), v68);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_134448(0, v67[2] + 1, 1, v67);
        }

        v75 = v67[2];
        v74 = v67[3];
        if (v75 >= v74 >> 1)
        {
          v67 = sub_134448((v74 > 1), v75 + 1, 1, v67);
        }

        v67[2] = v75 + 1;
        v76 = v67 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v75;
        v69 = v83;
        v68 = v90;
        v73(v76, v83, v90);
        v53 += v65;
        --v51;
      }

      while (v51);

      isa = sub_1449CC().super.isa;

      v78 = v101;
      [v100 *v79];
      swift_unknownObjectRelease();

      goto LABEL_42;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

LABEL_42:
  swift_unknownObjectRelease();
}

unint64_t sub_15160()
{
  result = qword_1C0D68;
  if (!qword_1C0D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C0D68);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_55Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_15220()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1527C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_152D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_15340(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_153A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, unint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, uint64_t a17, uint64_t a18, double a19, char a20)
{
  if (a2)
  {
    if (a1)
    {
      if (a1 != 1)
      {
        v20 = a3 != a17;
        v25 = a7 < 2;
LABEL_18:
        v24 = a8 ^ 1 | v25 | v20;
        goto LABEL_19;
      }

      v20 = a3 != a17;
      v21 = a7 == 1;
    }

    else
    {
      v20 = a3 != a17;
      v21 = a7 == 0;
    }

    v25 = !v21;
    goto LABEL_18;
  }

  if (a8)
  {
    return 0;
  }

  v24 = a1 != a7 || a3 != a17;
LABEL_19:
  v26 = v24 | a6;
  v27 = (v24 ^ (v24 | a6)) & a20;
  if (v26 & 1) != 0 || (a20)
  {
    return v27 & 1;
  }

  else
  {
    return sub_141AFC() & 1;
  }
}

uint64_t sub_154A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v25 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DC8, &qword_14A830);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DD0, &qword_14A838);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = &v22 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DD8, &qword_14A840);
  __chkstk_darwin(v24);
  v12 = &v22 - v11;
  v26 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DE0, &qword_14A848);
  sub_1D4A4(&qword_1C0DE8, &qword_1C0DE0, &qword_14A848, &protocol conformance descriptor for TupleView<A>);
  sub_14130C();
  sub_1D4A4(&qword_1C0DF0, &qword_1C0DC8, &qword_14A830, &protocol conformance descriptor for NowPlayingQueue<A>);
  sub_14383C();
  (*(v4 + 8))(v6, v3);
  v23 = sub_143EAC();
  v14 = v13;
  LOBYTE(v3) = sub_1441DC();
  LOBYTE(v4) = sub_14422C();
  v15 = sub_1441EC();
  v28 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
  sub_143CBC();
  v16 = v27;
  v17 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E00, &qword_14A858) + 36)];
  *v17 = v3 & 1;
  v17[1] = v4 & 1;
  v17[2] = v15 & 1;
  *(v17 + 1) = v16;
  *(v17 + 2) = v23;
  *(v17 + 3) = v14;
  v18 = sub_143F1C();
  v19 = &v10[*(v8 + 44)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E08, &qword_14A860);
  sub_14423C();
  *v19 = v18;
  sub_1D19C(v10, v12, &qword_1C0DD0, &qword_14A838);
  v20 = &v12[*(v24 + 36)];
  *v20 = sub_160BC;
  v20[1] = 0;
  v20[2] = 0;
  v20[3] = 0;
  sub_15340(v10, &qword_1C0DD0, &qword_14A838);
  sub_1ACF0();
  sub_143AFC();
  return sub_15340(v12, &qword_1C0DD8, &qword_14A840);
}

uint64_t sub_1584C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v42 = a2;
  v39 = sub_14416C();
  v37 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E40, &qword_14A870);
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E48, &qword_14A878);
  v40 = *(v8 - 8);
  v41 = v8;
  __chkstk_darwin(v8);
  v38 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v43 = &v34 - v12;
  if (a1[4])
  {
    __chkstk_darwin(v11);
    *(&v34 - 2) = a1;
    type metadata accessor for NowPlayingMediaPlayerController(0);
    type metadata accessor for ChaptersList(0);
    sub_1AF64(&qword_1C0E58, type metadata accessor for NowPlayingMediaPlayerController, &protocol conformance descriptor for NowPlayingMediaPlayerController);
    sub_1AF64(&qword_1C0E60, type metadata accessor for ChaptersList, &unk_15108C);

    sub_14117C();
    v13 = swift_allocObject();
    v14 = *(a1 + 1);
    v13[1] = *a1;
    v13[2] = v14;
    v15 = *(a1 + 3);
    v13[3] = *(a1 + 2);
    v13[4] = v15;
    sub_1B00C(a1, v44);
    sub_1D4A4(&qword_1C0E68, &qword_1C0E40, &qword_14A870, &protocol conformance descriptor for NowPlayingQueuePlayingItem<A, B>);
    v16 = v36;
    sub_14384C();

    (*(v35 + 8))(v7, v16);
    v17 = *a1;
    swift_retain_n();
    sub_14423C();
    v36 = sub_14403C();
    v18 = *(v37 + 8);
    v19 = v39;
    v18(v4, v39);
    v20 = sub_1441FC();
    sub_14423C();
    v21 = sub_14404C();
    v18(v4, v19);
    v23 = v40;
    v22 = v41;
    v24 = *(v40 + 16);
    v25 = v38;
    v26 = v43;
    v24(v38, v43, v41);
    v27 = v42;
    v24(v42, v25, v22);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E70, &qword_14A880);
    v29 = &v27[*(v28 + 48)];
    v30 = v36;
    *v29 = v17;
    *(v29 + 1) = v30;
    v29[16] = v20 & 1;
    v31 = &v27[*(v28 + 64)];
    *v31 = v17;
    *(v31 + 1) = v21;
    v32 = *(v23 + 8);
    swift_retain_n();

    v32(v26, v22);

    return (v32)(v25, v22);
  }

  else
  {
    type metadata accessor for NowPlayingMediaPlayerController(0);
    sub_1AF64(&qword_1C0E50, type metadata accessor for NowPlayingMediaPlayerController, &protocol conformance descriptor for NowPlayingMediaPlayerController);
    result = sub_142DAC();
    __break(1u);
  }

  return result;
}

uint64_t sub_15D9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ChaptersList(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + 1);

  if (sub_1441EC())
  {
    *v7 = *a1;
    sub_14427C();
    sub_1AF64(&qword_1C0E88, &type metadata accessor for QueueViewModel, &protocol conformance descriptor for QueueViewModel);

    v7[1] = sub_142B9C();
    v7[2] = v8;
    sub_14157C();
    sub_1AF64(&qword_1C0E90, &type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
    v7[3] = sub_142B9C();
    v7[4] = v9;
    v10 = *(v4 + 28);
    *(v7 + v10) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0E98, &qword_14A8E8);
    swift_storeEnumTagMultiPayload();
    sub_1C810(v7, a2, type metadata accessor for ChaptersList);
    v11 = 0;
  }

  else
  {
    sub_15340(&v13, &qword_1C0E80, &qword_14A890);
    v11 = 1;
  }

  return (*(v5 + 56))(a2, v11, 1, v4);
}

uint64_t sub_15FDC(uint64_t result, double a2, double a3)
{
  if (a2 > 0.0)
  {
    v12[1] = v6;
    v12[2] = v5;
    v12[7] = v3;
    v12[8] = v4;
    if (a3 > 0.0)
    {
      v10 = *(result + 48);
      v11 = v10;
      v12[0] = *(&v10 + 1);
      sub_1D19C(v12, &v9, &qword_1C0E78, &qword_14A888);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0DF8, &qword_14A850);
      sub_143CBC();
      v8 = v9;
      if (v9 <= a3)
      {
        v8 = a3;
      }

      v10 = v11;
      v9 = v8;
      sub_143CCC();
      return sub_15340(&v11, &qword_1C0DF8, &qword_14A850);
    }
  }

  return result;
}

void sub_160BC()
{
  v4 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];

  v0 = sub_14489C();

  v1 = [v4 BOOLForKey:v0];

  if ((v1 & 1) == 0)
  {
    isa = sub_144A7C().super.super.isa;

    v3 = sub_14489C();

    [v4 setValue:isa forKey:v3];
  }
}

uint64_t sub_161F8@<X0>(int a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v37 = a1;
  v36 = a2;
  v4 = sub_14354C();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1432EC();
  v30 = *(v32 - 8);
  __chkstk_darwin(v32);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EB0, &qword_14AAB0);
  v28 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EB8, &qword_14AAB8);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EC0, &qword_14AAC0);
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v16 = &v27 - v15;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EC8, &qword_14AAC8);
  v17 = *(v35 - 8);
  __chkstk_darwin(v35);
  v19 = &v27 - v18;
  v38[3] = &type metadata for HoveringChapterPicker;
  v38[4] = sub_1B34C();
  v20 = swift_allocObject();
  v38[0] = v20;
  *(v20 + 16) = "MediaCoreUI";
  *(v20 + 24) = 11;
  *(v20 + 32) = 2;
  *(v20 + 40) = "HoveringChapterPicker";
  *(v20 + 48) = 21;
  *(v20 + 56) = 2;
  v21 = sub_141B2C();
  __swift_destroy_boxed_opaque_existential_0(v38);
  if (v21)
  {
    if ((v37 & 1) == 0)
    {
      v22 = 1;
      return (*(v17 + 56))(v36, v22, 1, v35);
    }

LABEL_6:
    sub_14337C();
    sub_1432DC();
    sub_1D4A4(&qword_1C0ED8, &qword_1C0EB0, &qword_14AAB0, &protocol conformance descriptor for ContentUnavailableView<A, B, C>);
    sub_143A8C();
    (*(v30 + 8))(v8, v32);
    (*(v28 + 8))(v11, v9);
    v23 = &v14[*(v12 + 36)];
    *v23 = 0;
    *(v23 + 1) = a3;
    sub_14353C();
    v24 = sub_1B3B0();
    sub_143A7C();
    (*(v33 + 8))(v6, v34);
    sub_15340(v14, &qword_1C0EB8, &qword_14AAB8);
    v38[0] = v12;
    v38[1] = v24;
    swift_getOpaqueTypeConformance2();
    v25 = v31;
    sub_143A3C();
    (*(v29 + 8))(v16, v25);
    sub_10358(v19, v36, &qword_1C0EC8, &qword_14AAC8);
    v22 = 0;
    return (*(v17 + 56))(v36, v22, 1, v35);
  }

  v22 = 1;
  if (~v37 & 0x10100) != 0 && (v37)
  {
    goto LABEL_6;
  }

  return (*(v17 + 56))(v36, v22, 1, v35);
}

void sub_167C0(uint64_t a1@<X8>)
{
  sub_1430EC();
  v2 = sub_1437DC();
  v4 = v3;
  v6 = v5;
  sub_1436AC();
  v7 = sub_1437CC();
  v9 = v8;
  v11 = v10;

  sub_1B4AC(v2, v4, v6 & 1);

  v12 = sub_1437BC();
  v14 = v13;
  v16 = v15;
  sub_1B4AC(v7, v9, v11 & 1);

  sub_14338C();
  v17 = sub_14378C();
  v19 = v18;
  LOBYTE(v9) = v20;
  v22 = v21;
  sub_1B4AC(v12, v14, v16 & 1);

  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v22;
}

uint64_t sub_16948@<X0>(uint64_t *a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EE8, &qword_14B6E0);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  __chkstk_darwin(v1);
  v4 = &v25 - v3;
  sub_1430EC();
  v5 = sub_1437DC();
  v7 = v6;
  v9 = v8;
  sub_1436AC();
  v10 = sub_1437CC();
  v12 = v11;
  v14 = v13;

  sub_1B4AC(v5, v7, v9 & 1);

  sub_14295C();
  swift_getOpaqueTypeConformance2();
  v15 = v26;
  v16 = sub_14378C();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1B4AC(v10, v12, v14 & 1);

  result = (*(v27 + 8))(v4, v15);
  v24 = v28;
  *v28 = v16;
  v24[1] = v18;
  *(v24 + 16) = v20 & 1;
  v24[3] = v22;
  return result;
}

uint64_t sub_16B78@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 1))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2 | *v1;
  if (*(v1 + 2))
  {
    v4 = 0x10000;
  }

  else
  {
    v4 = 0;
  }

  return sub_161F8(v3 | v4, a1, v1[1]);
}

uint64_t sub_16BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F50, &qword_14AC38);
  v35 = *(v8 - 8);
  v36 = v8;
  __chkstk_darwin(v8);
  v34 = v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F58, &qword_14AC40);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v29 - v12;
  v37 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F00, &qword_14AB00);
  sub_1D4A4(&qword_1C0F08, &qword_1C0F00, &qword_14AB00, &protocol conformance descriptor for [A]);
  if (sub_144B8C())
  {
    v37 = a2;
    v14 = swift_allocObject();
    v32 = v29;
    v33 = a4;
    *(v14 + 16) = a1;
    *(v14 + 24) = a2;
    *(v14 + 32) = a3 & 1;
    v31 = a3 & 1;
    __chkstk_darwin(v14);
    v29[3] = v28;
    v29[2] = type metadata accessor for HardQueueHeaderView(0);
    v29[1] = type metadata accessor for RowContent(0);
    v29[0] = sub_1AF64(&qword_1C0F60, type metadata accessor for HardQueueHeaderView, &unk_14AD28);
    v15 = sub_1D4A4(&qword_1C0F18, &qword_1C0F00, &qword_14AB00, &protocol conformance descriptor for [A]);
    v30 = v10;
    v16 = v15;
    v17 = a1;
    v18 = sub_1AF64(&qword_1C0F20, type metadata accessor for RowContent, &unk_14ADC8);
    v19 = sub_1AF64(&qword_1C0F28, type metadata accessor for RowContent, &unk_14AD78);
    v20 = sub_1AF64(&qword_1C0F30, &type metadata accessor for QueueModel.Episode, &protocol conformance descriptor for QueueModel.Episode);

    v28[3] = v19;
    v28[4] = v20;
    v28[1] = v16;
    v28[2] = v18;
    v28[0] = v29[0];
    v21 = v34;
    sub_14176C();
    v22 = swift_allocObject();
    *(v22 + 16) = v17;
    *(v22 + 24) = a2;
    *(v22 + 32) = v31;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1B99C;
    *(v23 + 24) = v22;
    (*(v35 + 32))(v13, v21, v36);
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F68, &qword_14AC48) + 36)];
    *v24 = sub_1DCD0;
    *(v24 + 1) = v23;
    v25 = v30;
    v13[*(v30 + 36)] = 1;
    v26 = v33;
    sub_10358(v13, v33, &qword_1C0F58, &qword_14AC40);
    (*(v11 + 56))(v26, 0, 1, v25);
  }

  else
  {

    return (*(v11 + 56))(a4, 1, 1, v10);
  }
}

uint64_t sub_17094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for RowContent(0);
  v7 = v6[5];
  v8 = sub_14413C();
  (*(*(v8 - 8) + 16))(&a3[v7], a1, v8);
  *a3 = a2;
  a3[v6[6]] = 1;
  a3[v6[7]] = 1;
  v9 = &a3[v6[8]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v6[9];
  *&a3[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F40, &qword_14AB70);
  swift_storeEnumTagMultiPayload();
  v11 = &a3[v6[10]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v6[11];
  *&a3[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F48, &qword_14AC30);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_171EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = *(a2 + 16);
  *(a4 + 8) = a1;
  *(a4 + 16) = a3;

  sub_143CAC();
  *(a4 + 24) = v7;
  *(a4 + 32) = v8;
  v5 = *(type metadata accessor for HardQueueHeaderView(0) + 32);
  *(a4 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70, &qword_14AC80);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_17298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EF0, &qword_14AAF0);
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EF8, &qword_14AAF8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v21 - v11;
  v28 = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F00, &qword_14AB00);
  sub_1D4A4(&qword_1C0F08, &qword_1C0F00, &qword_14AB00, &protocol conformance descriptor for [A]);
  if (sub_144B8C())
  {
    v28 = a2;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v24 = type metadata accessor for RowContent(0);
    v23 = sub_1B4EC();
    v21 = sub_1D4A4(&qword_1C0F18, &qword_1C0F00, &qword_14AB00, &protocol conformance descriptor for [A]);
    v22 = v8;
    v14 = a1;
    sub_1AF64(&qword_1C0F20, type metadata accessor for RowContent, &unk_14ADC8);
    v25 = a3;
    sub_1AF64(&qword_1C0F28, type metadata accessor for RowContent, &unk_14AD78);
    sub_1AF64(&qword_1C0F30, &type metadata accessor for QueueModel.Episode, &protocol conformance descriptor for QueueModel.Episode);

    v15 = v22;
    sub_14176C();
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = a2;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1DCCC;
    *(v17 + 24) = v16;
    (*(v26 + 32))(v12, v15, v27);
    v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F38, &qword_14AB08) + 36)];
    *v18 = sub_1B7D8;
    *(v18 + 1) = v17;
    v12[*(v9 + 36)] = 1;
    v19 = v25;
    sub_10358(v12, v25, &qword_1C0EF8, &qword_14AAF8);
    (*(v10 + 56))(v19, 0, 1, v9);
  }

  else
  {

    return (*(v10 + 56))(a3, 1, 1, v9);
  }
}

uint64_t sub_176F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for RowContent(0);
  v7 = v6[5];
  v8 = sub_14413C();
  (*(*(v8 - 8) + 16))(&a3[v7], a1, v8);
  *a3 = a2;
  a3[v6[6]] = 0;
  a3[v6[7]] = 1;
  v9 = &a3[v6[8]];
  *v9 = swift_getKeyPath();
  v9[8] = 0;
  v10 = v6[9];
  *&a3[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F40, &qword_14AB70);
  swift_storeEnumTagMultiPayload();
  v11 = &a3[v6[10]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  v12 = v6[11];
  *&a3[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F48, &qword_14AC30);
  swift_storeEnumTagMultiPayload();
}

double sub_17854@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v105 = a1;
  v110 = a2;
  v2 = sub_14332C();
  v103 = *(v2 - 8);
  v104 = v2;
  __chkstk_darwin(v2);
  v102 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0EE8, &qword_14B6E0);
  __chkstk_darwin(v85);
  v84 = &v80 - v4;
  v5 = sub_14317C();
  v100 = *(v5 - 8);
  v101 = v5;
  __chkstk_darwin(v5);
  v97 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v96 = &v80 - v8;
  v94 = type metadata accessor for HardQueueHeaderView(0);
  v86 = *(v94 - 8);
  __chkstk_darwin(v94);
  v87 = v9;
  v88 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1220, &qword_14AEC0);
  v92 = *(v93 - 8);
  __chkstk_darwin(v93);
  v90 = &v80 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1268, &qword_14AF00);
  __chkstk_darwin(v91);
  v89 = &v80 - v11;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1270, &qword_14AF08);
  __chkstk_darwin(v98);
  v99 = &v80 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1278, &qword_14AF10);
  v107 = *(v13 - 8);
  v108 = v13;
  __chkstk_darwin(v13);
  v95 = &v80 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1280, &qword_14AF18);
  __chkstk_darwin(v15 - 8);
  v109 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v80 - v18;
  sub_1430EC();
  LOWORD(v79._object) = 256;
  v20 = sub_1437DC();
  v22 = v21;
  v24 = v23;
  sub_1436AC();
  v25 = sub_1437CC();
  v27 = v26;
  v29 = v28;

  sub_1B4AC(v20, v22, v24 & 1);

  v30 = sub_1437BC();
  v32 = v31;
  v34 = v33;
  v35 = v27;
  v36 = v105;
  sub_1B4AC(v25, v35, v29 & 1);

  sub_143BFC();
  v37 = sub_14377C();
  v39 = v38;
  v106 = v40;
  v42 = v41;

  sub_1B4AC(v30, v32, v34 & 1);

  if (*(v36 + 16) == 1)
  {
    v80 = v37;
    v81 = v39;
    v82 = v42;
    v83 = v19;
    sub_1430EC();
    v43 = v88;
    sub_1D204(v36, v88, type metadata accessor for HardQueueHeaderView);
    v44 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v45 = swift_allocObject();
    sub_1C810(v43, v45 + v44, type metadata accessor for HardQueueHeaderView);
    v46 = v90;
    sub_143D1C();
    v47 = [objc_opt_self() mainBundle];
    v79._countAndFlagsBits = 0x8000000000160FB0;
    v116._object = 0x8000000000160F90;
    v116._countAndFlagsBits = 0xD000000000000017;
    v117.value._countAndFlagsBits = 0;
    v117.value._object = 0;
    v48.super.isa = v47;
    v118._countAndFlagsBits = 0;
    v118._object = 0xE000000000000000;
    sub_1409DC(v116, v117, v48, v118, 0xD00000000000001ELL, v79);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9410, &unk_150C00);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_14A710;
    v50 = *v36;
    *(v49 + 56) = &type metadata for Int;
    *(v49 + 64) = &protocol witness table for Int;
    *(v49 + 32) = v50;
    v51 = sub_1448AC();
    v53 = v52;

    v114 = v51;
    v115 = v53;
    v54 = *(v36 + 32);
    v112 = *(v36 + 24);
    v113 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
    v55 = sub_143CDC();
    __chkstk_darwin(v55);
    sub_1D4A4(&qword_1C1218, &qword_1C1220, &qword_14AEC0, &protocol conformance descriptor for Button<A>);
    sub_9CCC();
    v56 = v93;
    v57 = v89;
    sub_143A0C();

    (*(v92 + 8))(v46, v56);
    v58 = sub_1436AC();
    KeyPath = swift_getKeyPath();
    v60 = v57;
    v61 = &v57[*(v91 + 36)];
    *v61 = KeyPath;
    v61[1] = v58;
    v62 = v96;
    sub_FA518(v96);
    v64 = v100;
    v63 = v101;
    v65 = v97;
    (*(v100 + 104))(v97, enum case for ColorSchemeContrast.standard(_:), v101);
    LOBYTE(v58) = sub_14316C();
    v66 = *(v64 + 8);
    v66(v65, v63);
    v66(v62, v63);
    if (v58)
    {
      sub_14295C();
      swift_getOpaqueTypeConformance2();
    }

    else
    {
      v111 = sub_143B9C();
    }

    v67 = sub_142AAC();
    v19 = v83;
    v69 = v107;
    v68 = v108;
    v70 = v99;
    sub_10358(v60, v99, &qword_1C1268, &qword_14AF00);
    *(v70 + *(v98 + 36)) = v67;
    v71 = v102;
    sub_14331C();
    sub_1D2AC();
    sub_1AF64(&qword_1C12B8, &type metadata accessor for BorderlessButtonStyle, &protocol conformance descriptor for BorderlessButtonStyle);
    v72 = v95;
    v73 = v104;
    sub_1438AC();
    (*(v103 + 8))(v71, v73);
    sub_15340(v70, &qword_1C1270, &qword_14AF08);
    (*(v69 + 32))(v19, v72, v68);
    (*(v69 + 56))(v19, 0, 1, v68);
    v42 = v82;
    v39 = v81;
    v37 = v80;
  }

  else
  {
    (*(v107 + 56))(v19, 1, 1, v108);
  }

  v74 = v109;
  sub_1D19C(v19, v109, &qword_1C1280, &qword_14AF18);
  v75 = v110;
  *v110 = v37;
  v75[1] = v39;
  v76 = v106 & 1;
  *(v75 + 16) = v106 & 1;
  v75[3] = v42;
  v75[4] = 0;
  *(v75 + 40) = 1;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1288, &unk_14AF20);
  sub_1D19C(v74, v75 + *(v77 + 64), &qword_1C1280, &qword_14AF18);
  sub_63AC(v37, v39, v76);

  sub_15340(v19, &qword_1C1280, &qword_14AF18);
  sub_15340(v74, &qword_1C1280, &qword_14AF18);
  sub_1B4AC(v37, v39, v76);

  return result;
}

uint64_t sub_184A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v11[-v3];
  if (*a1 >= 5)
  {
    v10 = *(a1 + 32);
    v11[16] = *(a1 + 24);
    v12 = v10;
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1290, &qword_14AF30);
    return sub_143CCC();
  }

  else
  {
    v5 = *(a1 + 8);
    v6 = sub_144ADC();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_144ABC();

    v7 = sub_144AAC();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    sub_43CFC(0, 0, v4, &unk_14AF80, v8);
  }
}

uint64_t sub_1861C(uint64_t a1)
{
  v2 = type metadata accessor for HardQueueHeaderView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1238, &qword_14AEC8);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  sub_1430EC();
  sub_1428EC();
  v8 = sub_1428FC();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  sub_1D204(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HardQueueHeaderView);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1C810(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for HardQueueHeaderView);
  return sub_143D0C();
}

uint64_t sub_18830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = *(a1 + 8);
  v6 = sub_144ADC();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_144ABC();

  v7 = sub_144AAC();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = &protocol witness table for MainActor;
  v8[4] = v5;
  sub_43CFC(0, 0, v4, &unk_14AF78, v8);
}

uint64_t sub_18958()
{
  v1 = sub_14315C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1250, &qword_14AEF0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  *v7 = sub_14307C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1258, &qword_14AEF8);
  sub_17854(v0, &v7[*(v8 + 44)]);
  sub_14314C();
  sub_1D4A4(&qword_1C1260, &qword_1C1250, &qword_14AEF0, &protocol conformance descriptor for HStack<A>);
  sub_143ACC();
  (*(v2 + 8))(v4, v1);
  return sub_15340(v7, &qword_1C1250, &qword_14AEF0);
}

uint64_t sub_18B18()
{
  v0 = sub_14315C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_14318C();
  v10 = 1;
  sub_18DD4(&v21);
  v17 = v27;
  v18 = v28;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v11 = v21;
  v12 = v22;
  v20[5] = v26;
  v20[6] = v27;
  v20[7] = v28;
  v20[8] = v29;
  v20[1] = v22;
  v20[2] = v23;
  v20[3] = v24;
  v20[4] = v25;
  v19 = v29;
  v20[0] = v21;
  sub_1D19C(&v11, &v7, &qword_1C1190, &qword_14AE70);
  sub_15340(v20, &qword_1C1190, &qword_14AE70);
  *&v9[103] = v17;
  *&v9[87] = v16;
  *&v9[39] = v13;
  *&v9[23] = v12;
  *&v9[119] = v18;
  *&v9[135] = v19;
  *&v9[55] = v14;
  *&v9[71] = v15;
  *&v9[7] = v11;
  *&v8[97] = *&v9[96];
  *&v8[113] = *&v9[112];
  *&v8[129] = *&v9[128];
  *&v8[33] = *&v9[32];
  *&v8[49] = *&v9[48];
  *&v8[65] = *&v9[64];
  *&v8[81] = *&v9[80];
  *&v8[1] = *v9;
  v7 = v4;
  v8[0] = v10;
  *&v8[144] = *(&v19 + 1);
  *&v8[17] = *&v9[16];
  sub_14314C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1198, &qword_14AE78);
  sub_1D4A4(&qword_1C11A0, &qword_1C1198, &qword_14AE78, &protocol conformance descriptor for VStack<A>);
  sub_143ACC();
  (*(v1 + 8))(v3, v0);
  v29 = *&v8[112];
  v30 = *&v8[128];
  v31 = *&v8[144];
  v25 = *&v8[48];
  v26 = *&v8[64];
  v27 = *&v8[80];
  v28 = *&v8[96];
  v21 = v7;
  v22 = *v8;
  v23 = *&v8[16];
  v24 = *&v8[32];
  return sub_15340(&v21, &qword_1C1198, &qword_14AE78);
}

__n128 sub_18DD4@<Q0>(uint64_t a1@<X8>)
{
  sub_1430EC();
  v2 = sub_1437DC();
  v4 = v3;
  v6 = v5;
  sub_1436AC();
  v7 = sub_1437CC();
  v9 = v8;
  v11 = v10;

  sub_1B4AC(v2, v4, v6 & 1);

  v12 = sub_1437BC();
  v14 = v13;
  v16 = v15;
  sub_1B4AC(v7, v9, v11 & 1);

  sub_143BFC();
  v17 = sub_14377C();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_1B4AC(v12, v14, v16 & 1);

  sub_143EBC();
  sub_142D4C();
  *a1 = v17;
  *(a1 + 8) = v19;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v23;
  *(a1 + 96) = v29;
  *(a1 + 112) = v30;
  *(a1 + 128) = v31;
  *(a1 + 32) = v25;
  *(a1 + 48) = v26;
  result = v28;
  *(a1 + 64) = v27;
  *(a1 + 80) = v28;
  return result;
}

uint64_t sub_18FC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v103 = a1;
  v79 = sub_140A3C();
  v78 = *(v79 - 8);
  __chkstk_darwin(v79);
  v77 = &v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11A8, &qword_14AE80);
  __chkstk_darwin(v4 - 8);
  v102 = &v76 - v5;
  *&v99 = sub_14354C();
  *&v98 = *(v99 - 8);
  __chkstk_darwin(v99);
  v97 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RowContent(0);
  v8 = v7 - 8;
  v89 = *(v7 - 8);
  v88 = *(v89 + 64);
  __chkstk_darwin(v7);
  v86 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_142C0C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v76 - v15;
  v17 = sub_14413C();
  v81 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v20;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11B0, &qword_14AE88);
  __chkstk_darwin(v90);
  v87 = &v76 - v21;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11B8, &qword_14AE90);
  v94 = *(v93 - 8);
  __chkstk_darwin(v93);
  v92 = &v76 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11C0, &qword_14AE98);
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v91 = &v76 - v23;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11C8, &qword_14AEA0);
  v24 = __chkstk_darwin(v100);
  v101 = &v76 - v25;
  (*(v18 + 16))(v20, v2 + *(v8 + 28), v17, v24);
  v105 = v2;
  v106 = sub_14411C();
  v107 = v26;
  sub_9CCC();
  v84 = sub_1437EC();
  v83 = v27;
  v80 = v28;
  v82 = v29;
  sub_FA564(v16);
  (*(v11 + 104))(v13, enum case for LayoutDirection.rightToLeft(_:), v10);
  LOBYTE(v8) = sub_142BFC();
  v30 = *(v11 + 8);
  v30(v13, v10);
  v30(v16, v10);
  v31 = sub_AF1B8();
  v33 = v32;
  v110.value._countAndFlagsBits = v31;
  v110.value._object = v33;
  v34 = sub_1440FC(v8 & 1, v110);
  v36 = v35;

  v106 = v34;
  v107 = v36;
  sub_1437EC();
  v37 = v86;
  sub_1D204(v2, v86, type metadata accessor for RowContent);
  v38 = (*(v89 + 80) + 16) & ~*(v89 + 80);
  v39 = swift_allocObject();
  sub_1C810(v37, v39 + v38, type metadata accessor for RowContent);
  sub_14460C();
  sub_1AF64(&qword_1C11D0, &type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_1AF64(&qword_1C11D8, &type metadata accessor for QueueModel.Episode, &protocol conformance descriptor for QueueModel.Episode);
  v40 = v87;
  sub_14144C();
  v41 = sub_143EAC();
  v43 = v42;
  v44 = v90;
  v45 = (v40 + *(v90 + 36));
  sub_1440CC();
  v45[5] = [objc_allocWithZone(UIView) init];
  v45[6] = v41;
  v45[7] = v43;
  v104 = v2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C11E0, &qword_14AEA8);
  v47 = sub_1C8AC();
  v48 = sub_1C990();
  v49 = v92;
  sub_14393C();
  sub_15340(v40, &qword_1C11B0, &qword_14AE88);
  v50 = v97;
  sub_14353C();
  v106 = v44;
  v107 = v46;
  v108 = v47;
  v109 = v48;
  v51 = v91;
  swift_getOpaqueTypeConformance2();
  v52 = v93;
  sub_143A7C();
  (*(v98 + 8))(v50, v99);
  (*(v94 + 8))(v49, v52);
  v53 = sub_14365C();
  sub_1A580();
  v55 = v54;
  v56 = 0uLL;
  v57 = 0uLL;
  if ((v54 & 1) == 0)
  {
    sub_14290C();
    *(&v57 + 1) = v58;
    *(&v56 + 1) = v59;
  }

  v98 = v57;
  v99 = v56;
  v60 = v101;
  (*(v95 + 32))(v101, v51, v96);
  v61 = v60 + *(v100 + 36);
  *v61 = v53;
  v62 = v99;
  *(v61 + 24) = v98;
  *(v61 + 8) = v62;
  *(v61 + 40) = v55 & 1;
  v63 = sub_14412C();
  v66 = v63;
  if (!v65)
  {
    v106 = v63;
    sub_1CB9C();
    v66 = sub_14513C();
    goto LABEL_7;
  }

  if (v65 != 1)
  {
LABEL_7:
    v72 = v64;
    goto LABEL_8;
  }

  v67 = v64;
  v68 = [v63 URIRepresentation];
  v69 = v77;
  sub_140A2C();

  v70 = sub_140A0C();
  v72 = v71;
  (*(v78 + 8))(v69, v79);
  sub_1CB78(v66, v67, 1);
  v66 = v70;
LABEL_8:
  sub_141B3C();
  v106 = v66;
  v107 = v72;
  sub_1AF64(&qword_1C1228, &type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
  v73 = v102;
  sub_14091C();
  v74 = sub_14092C();
  (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
  sub_1CA40();
  sub_1437FC();
  sub_15340(v73, &qword_1C11A8, &qword_14AE80);
  return sub_15340(v60, &qword_1C11C8, &qword_14AEA0);
}

uint64_t sub_19B5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1240, &unk_14AEE0);
  __chkstk_darwin(v0 - 8);
  v2 = v8 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1248, &qword_14DA00);
  __chkstk_darwin(v3 - 8);
  v5 = v8 - v4;
  type metadata accessor for RowContent(0);
  sub_19CD4(v5);
  v6 = sub_14214C();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_143E9C();
  return sub_1445FC();
}

uint64_t sub_19CD4@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_141DCC();
  __chkstk_darwin(v4 - 8);
  v5 = sub_1440EC();
  v6 = [v5 metadataObject];

  if (v6)
  {
    v7 = [v6 podcastEpisode];

    if (v7)
    {
      v8 = [v7 showArtworkTemplateURL];
      if (v8)
      {
        v9 = v8;
        sub_1448DC();

        v10 = [v7 podcast];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 identifiers];

          v13 = [v12 library];
          if (v13)
          {
            v14 = [v13 databaseID];
            swift_unknownObjectRelease();
            sub_1448DC();
          }
        }

        sub_141DBC();
        sub_141DFC();
        sub_141DDC();

        v18 = sub_141DEC();
        return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
      }
    }
  }

  v15 = sub_141DEC();
  v16 = *(*(v15 - 8) + 56);

  return v16(a1, 1, 1, v15);
}

uint64_t sub_19FC0(char *a1)
{
  v2 = sub_14413C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  v9 = *a1;
  v10 = *(type metadata accessor for RowContent(0) + 20);
  v11 = sub_144ADC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  (*(v3 + 16))(v5, &a1[v10], v2);
  sub_144ABC();

  v12 = sub_144AAC();
  v13 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = &protocol witness table for MainActor;
  *(v14 + 4) = v9;
  (*(v3 + 32))(&v14[v13], v5, v2);
  sub_C8D08(0, 0, v8, &unk_14AED8, v14);
}

uint64_t sub_1A1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RowContent(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1238, &qword_14AEC8);
  __chkstk_darwin(v8 - 8);
  v10 = v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1220, &qword_14AEC0);
  v13 = __chkstk_darwin(v11);
  v15 = v23 - v14;
  if (*(a1 + *(v5 + 36)) == 1)
  {
    v24 = v12;
    v16 = sub_1430EC();
    v23[1] = v17;
    v23[2] = v16;
    sub_1428EC();
    v18 = sub_1428FC();
    (*(*(v18 - 8) + 56))(v10, 0, 1, v18);
    sub_1D204(a1, v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RowContent);
    v19 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v20 = swift_allocObject();
    sub_1C810(v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for RowContent);
    sub_143D0C();
    (*(v24 + 32))(a2, v15, v11);
    return (*(v24 + 56))(a2, 0, 1, v11);
  }

  else
  {
    v22 = *(v12 + 56);

    return v22(a2, 1, 1, v11, v13);
  }
}

void sub_1A504()
{
  type metadata accessor for RowContent(0);
  sub_141B5C();
  v0 = sub_1440EC();
  sub_141B4C();
}

uint64_t sub_1A580()
{
  v1 = sub_142FFC();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F48, &qword_14AC30);
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C10C0, &qword_14ACF8);
  __chkstk_darwin(v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v28 - v12;
  v14 = type metadata accessor for RowContent(0);
  if ((*(v0 + *(v14 + 24)) & 1) == 0)
  {
    v16 = v14;
    sub_1D19C(v0 + *(v14 + 44), v7, &qword_1C0F48, &qword_14AC30);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10358(v7, v13, &unk_1C10C0, &qword_14ACF8);
    }

    else
    {
      sub_144C4C();
      v17 = sub_1435DC();
      sub_1423BC();

      sub_142FEC();
      swift_getAtKeyPath();

      (*(v2 + 8))(v4, v1);
    }

    v18 = sub_1411CC();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v13, 1, v18) != 1)
    {
      sub_1D19C(v13, v10, &unk_1C10C0, &qword_14ACF8);
      v20 = (*(v19 + 88))(v10, v18);
      if (v20 == enum case for DeviceMetrics.Layout.compact(_:))
      {
        v21 = v0 + *(v16 + 40);
        v22 = *v21;
        if (*(v21 + 8) == 1)
        {
          v23 = *v21;
        }

        else
        {

          sub_144C4C();
          v24 = sub_1435DC();
          sub_1423BC();

          sub_142FEC();
          swift_getAtKeyPath();
          sub_1C804(v22, 0);
          (*(v2 + 8))(v4, v1);
          v23 = v29;
        }

        v15 = v23 + -13.5;
        goto LABEL_15;
      }

      if (v20 == enum case for DeviceMetrics.Layout.regular(_:))
      {
        v15 = 16.0;
        goto LABEL_15;
      }

      if (v20 == enum case for DeviceMetrics.Layout.regularExtended(_:))
      {
        v26 = v0 + *(v16 + 40);
        v15 = *v26;
        if ((*(v26 + 8) & 1) == 0)
        {

          sub_144C4C();
          v27 = sub_1435DC();
          sub_1423BC();

          sub_142FEC();
          swift_getAtKeyPath();
          sub_1C804(*&v15, 0);
          (*(v2 + 8))(v4, v1);
          v15 = v29;
        }

        goto LABEL_15;
      }

      (*(v19 + 8))(v10, v18);
    }

    v15 = 0.0;
LABEL_15:
    sub_15340(v13, &unk_1C10C0, &qword_14ACF8);
    return *&v15;
  }

  v15 = 0.0;
  return *&v15;
}

uint64_t sub_1AA90(uint64_t a1)
{
  v2 = sub_142C0C();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_142EDC();
}

id sub_1AB6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextMenuInteractionView.Coordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1ABDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1AC24(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1ACF0()
{
  result = qword_1C0E10;
  if (!qword_1C0E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0DD8, &qword_14A840);
    sub_1AD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0E10);
  }

  return result;
}

unint64_t sub_1AD7C()
{
  result = qword_1C0E18;
  if (!qword_1C0E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0DD0, &qword_14A838);
    sub_1AE34();
    sub_1D4A4(&qword_1C0E38, &qword_1C0E08, &qword_14A860, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0E18);
  }

  return result;
}

unint64_t sub_1AE34()
{
  result = qword_1C0E20;
  if (!qword_1C0E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0E00, &qword_14A858);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C0DC8, &qword_14A830);
    sub_1D4A4(&qword_1C0DF0, &qword_1C0DC8, &qword_14A830, &protocol conformance descriptor for NowPlayingQueue<A>);
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C0E28, &qword_1C0E30, &qword_14A868, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0E20);
  }

  return result;
}

uint64_t sub_1AF64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AFAC()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t getEnumTagSinglePayload for NowPlayingQueuePlaceholderIfEmpty(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[16])
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

uint64_t storeEnumTagSinglePayload for NowPlayingQueuePlaceholderIfEmpty(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B0F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B140(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}