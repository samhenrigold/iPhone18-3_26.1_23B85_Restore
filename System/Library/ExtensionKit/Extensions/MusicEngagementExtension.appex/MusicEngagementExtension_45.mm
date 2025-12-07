void specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    v15 = *(a2 + 16);
    outlined destroy of String(&v15);
    v14 = *(a2 + 32);
    outlined destroy of TaskPriority?(&v14, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
    *v2 = v12;
  }

  else
  {
    v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    v9 = v8;
    v15 = *(a2 + 16);
    outlined destroy of String(&v15);
    v14 = *(a2 + 32);
    outlined destroy of TaskPriority?(&v14, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
    if (v9)
    {
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v13 = *v3;
      if (!v10)
      {
        specialized _NativeDictionary.copy()();
        v11 = v13;
      }

      specialized _NativeDictionary._delete(at:)(v7, v11);
      *v3 = v11;
    }
  }
}

id SyncedLyricsLineView.SBS_TextContentView.TextView.specs.didset(unsigned __int8 *a1)
{
  memcpy(__dst, &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
  outlined init with copy of SyncedLyricsViewController.Specs(__dst, v6);
  LOBYTE(a1) = specialized static SyncedLyricsViewController.Specs.__derived_struct_equals(_:_:)(__dst, a1);
  result = outlined destroy of SyncedLyricsViewController.Specs(__dst);
  if ((a1 & 1) == 0)
  {
    v4 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
    v5 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
    if (v5)
    {
      if (*(v5 + 96))
      {
        [*(v5 + 96) removeFromSuperview];
      }
    }

    *&v1[v4] = 0;

    return [v1 setNeedsLayout];
  }

  return result;
}

Swift::Void __swiftcall SyncedLyricsLineView.SBS_TextContentView.TextView.setSelected(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) != _)
  {
    *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = _;
    v3 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (v3)
    {
      v5 = _;
      v6 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
      v85 = _;
      if (v6 && (v7 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel)) != 0)
      {
        v8 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);

        v9 = v7;
        v10 = SyncedLyricsLineView.SBS_TextContentView.TextView.translationAttributedText(with:)(v8, v6);

        [v9 setAttributedText:v10];
      }

      else
      {
      }

      v11 = v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v12 = 360;
      if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v12 = 384;
      }

      v13 = *(v11 + 368);
      v14 = *(v11 + v12);
      v15 = v13;
      v16 = String._bridgeToObjectiveC()();
      v17 = [objc_opt_self() animationWithKeyPath:v16];

      v77 = v11;
      CASpringAnimation.springParameters.setter([objc_allocWithZone(UISpringTimingParameters) initWithMass:*(v11 + 664) stiffness:*(v11 + 672) damping:*(v11 + 680) initialVelocity:{0.0, 0.0}]);
      v18 = v17;
      if (v5)
      {
        v19 = v15;
      }

      else
      {
        v19 = v14;
      }

      if (v5)
      {
        v20 = v14;
      }

      else
      {
        v20 = v15;
      }

      v21 = [v19 CGColor];
      [v18 setFromValue:v21];

      v89 = v20;
      v22 = [v20 CGColor];
      [v18 setToValue:v22];
      v73 = v18;

      v23 = swift_allocObject();
      *(v23 + 16) = _swiftEmptyArrayStorage;
      v24 = (v23 + 16);
      v25 = *(v3 + 56);
      v75 = v14;
      v76 = v15;
      v88 = v23;
      v83 = *(v25 + 16);
      if (v83)
      {
        v81 = v25 + 32;
        if (v5)
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.0;
        }

        v27 = 0;
        v79 = v25;
        v74 = animated;
        while (1)
        {
          if (v27 >= *(v25 + 16))
          {
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v28 = *(v81 + 8 * v27);
          if (animated && (v29 = *(v28 + 112)) != 0 && (v30 = *(v29 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer)) != 0)
          {

            v31 = v30;
            v32 = String._bridgeToObjectiveC()();
            [v31 addAnimation:v73 forKey:v32];

            v33 = *(v28 + 112);
            if (!v33)
            {
              goto LABEL_31;
            }
          }

          else
          {

            v33 = *(v28 + 112);
            if (!v33)
            {
              goto LABEL_31;
            }
          }

          v34 = *(v33 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer);
          if (v34)
          {
            v35 = v34;
            v36 = [v89 CGColor];
            [v35 setBackgroundColor:v36];
          }

LABEL_31:
          v5 = swift_allocObject();
          *(v5 + 16) = v28;
          *(v5 + 24) = v85;
          *(v5 + 32) = v23;
          *(v5 + 40) = v14;
          *(v5 + 48) = v15;
          v87 = v27;
          if (animated)
          {
            type metadata accessor for UIAction(0, &_sSo6UIViewCML_2, UIView_ptr);
            v37 = v77[83];
            v38 = v77[84];
            v39 = v77[85];
            v40 = objc_allocWithZone(UISpringTimingParameters);
            v41 = v14;
            v42 = v15;

            v43 = [v40 initWithMass:v37 stiffness:v38 damping:v39 initialVelocity:{0.0, 0.0}];
            v44 = swift_allocObject();
            *(v44 + 16) = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.setSelected(_:animated:);
            *(v44 + 24) = v5;

            static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v43, 0, partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:), v44, 0, 0, 0.0);
          }

          else
          {
            v45 = *(v28 + 112);
            if (v45 && (v46 = *(v45 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
            {
              v47 = v14;
              v48 = v15;

              [v46 setAlpha:v26];
            }

            else
            {
              v49 = v14;
              v50 = v15;
            }

            swift_beginAccess();
            v51 = *(v28 + 16);
            if (v51 >> 62)
            {
              v52 = _CocoaArrayWrapper.endIndex.getter();
              if (v52)
              {
LABEL_39:
                if (v52 < 1)
                {
                  goto LABEL_87;
                }

                for (i = 0; i != v52; ++i)
                {
                  if ((v51 & 0xC000000000000001) != 0)
                  {
                    v54 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    v54 = *(v51 + 8 * i + 32);
                  }

                  swift_beginAccess();

                  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                  if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                  }

                  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
                  swift_endAccess();
                  v55 = *(v54 + 208);
                  if (v55)
                  {
                    v56 = *(v55 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
                    [v56 setBackgroundColor:v89];
                  }
                }

                v14 = v75;
                v15 = v76;
                animated = v74;
                goto LABEL_21;
              }
            }

            else
            {
              v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v52)
              {
                goto LABEL_39;
              }
            }
          }

LABEL_21:
          v23 = v88;
          v27 = v87 + 1;
          v25 = v79;
          if (v87 + 1 == v83)
          {

            break;
          }
        }
      }

      swift_beginAccess();
      v5 = *v24;
      if (*v24 >> 62)
      {
        goto LABEL_88;
      }

      v57 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v57)
      {
        while (1)
        {
          v86 = v5 & 0xC000000000000001;
          v78 = v5 + 32;
          v80 = v5 & 0xFFFFFFFFFFFFFF8;
          v14 = &v92;

          v58 = 0;
          v82 = v57;
          v84 = v5;
          while (1)
          {
            if (v86)
            {
              v59 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              v60 = __OFADD__(v58++, 1);
              if (v60)
              {
                goto LABEL_84;
              }
            }

            else
            {
              if (v58 >= *(v80 + 16))
              {
                goto LABEL_86;
              }

              v59 = *(v78 + 8 * v58);

              v60 = __OFADD__(v58++, 1);
              if (v60)
              {
                goto LABEL_84;
              }
            }

            SyncedLyricsLineView.Word.resetAnimation()();
            v61 = *(v59 + 104);
            if (!(v61 >> 62))
            {
              v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v62)
              {
                break;
              }

              goto LABEL_81;
            }

            v62 = _CocoaArrayWrapper.endIndex.getter();
            if (v62)
            {
              break;
            }

LABEL_81:

LABEL_56:
            if (v58 == v57)
            {

              goto LABEL_90;
            }
          }

          if (v62 >= 1)
          {
            break;
          }

LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v57 = _CocoaArrayWrapper.endIndex.getter();
          if (!v57)
          {
            goto LABEL_89;
          }
        }

        v63 = 0;
        while (1)
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v69 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            v69 = *(v61 + 8 * v63 + 32);
          }

          v70 = *(v69 + 136);
          v71 = *(v69 + 144);
          if (v71 == 1)
          {
            if (!v70)
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (*(v69 + 144))
            {
              v72 = 1;
            }

            else
            {
              v72 = v70 == 0;
            }

            if (v72)
            {
LABEL_79:
              type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator, UIViewPropertyAnimator_ptr);
              v70 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}]).super.isa;
              goto LABEL_69;
            }
          }

          outlined copy of AnimationStatus(*(v69 + 136), *(v69 + 144));
          outlined copy of AnimationStatus(v70, v71);
          [(objc_class *)v70 stopAnimation:1];
LABEL_69:
          ++v63;
          v94 = partial apply for closure #1 in SyncedLyricsLineView.Syllable.resetLift(specs:);
          v95 = v69;
          aBlock = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = thunk for @escaping @callee_guaranteed () -> ();
          v93 = &block_descriptor_456;
          v64 = _Block_copy(&aBlock);

          [(objc_class *)v70 addAnimations:v64];
          _Block_release(v64);
          v94 = partial apply for closure #2 in SyncedLyricsLineView.Syllable.resetLift(specs:);
          v95 = v69;
          aBlock = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
          v93 = &block_descriptor_459;
          v65 = _Block_copy(&aBlock);

          v66 = v70;

          [(objc_class *)v66 addCompletion:v65];
          _Block_release(v65);
          v67 = *(v69 + 136);
          *(v69 + 136) = v66;
          v68 = *(v69 + 144);
          *(v69 + 144) = 1;
          outlined consume of AnimationStatus(v67, v68);
          [(objc_class *)v66 startAnimation];

          if (v62 == v63)
          {

            v57 = v82;
            v5 = v84;
            goto LABEL_56;
          }
        }
      }

LABEL_89:

LABEL_90:
    }
  }
}

void closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.setSelected(_:animated:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 112);
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
    if (v11)
    {
      v12 = 0.0;
      if (a2)
      {
        v12 = 1.0;
      }

      [v11 setAlpha:v12];
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 16);
  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      a4 = a5;
    }

    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      swift_beginAccess();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();
      v17 = *(v16 + 208);
      if (v17)
      {
        v18 = *(v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
        [v18 setBackgroundColor:a4];
      }
    }
  }
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:)(char a1, double a2)
{
  v3 = v2;
  if (v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
  {
    if (a1)
    {
      v5 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
      if (!v5)
      {
        return;
      }

      v6 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448];
      memcpy(__dst, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
      v7 = *(v5 + 56);
      v8 = *(v7 + 16);
      if (!v8)
      {
        return;
      }

      v9 = v6 + a2;

      outlined init with copy of SyncedLyricsViewController.Specs(__dst, v58);

      v10 = 0;
      while (v10 < *(v7 + 16))
      {
        ++v10;

        SyncedLyricsLineView.Line.animate(progress:specs:)(__dst, v9);

        if (v8 == v10)
        {

          outlined destroy of SyncedLyricsViewController.Specs(__dst);
          return;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
      v45 = objc_opt_self();
      v46 = swift_allocObject();
      *(v46 + 16) = v3;
      *(v46 + 24) = a2;
      v47 = swift_allocObject();
      *(v47 + 16) = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:);
      *(v47 + 24) = v46;
      __dst[4] = thunk for @escaping @callee_guaranteed () -> ()partial apply;
      __dst[5] = v47;
      __dst[0] = _NSConcreteStackBlock;
      __dst[1] = 1107296256;
      __dst[2] = thunk for @escaping @callee_guaranteed () -> ();
      __dst[3] = &block_descriptor_447;
      v48 = _Block_copy(__dst);
      v49 = v3;

      [v45 performWithoutAnimation:v48];
      _Block_release(v48);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
    return;
  }

  v11 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  if (!v11)
  {
    _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX06SyncedF8LineViewC0H0C_SayAKGTt0g5(_swiftEmptyArrayStorage);
    v12 = v51;
    v13 = *(v51 + 16);
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_43:

    return;
  }

  v12 = *(v11 + 56);

  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_43;
  }

LABEL_11:
  type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_3, OS_dispatch_queue_ptr);
  v14 = 0;
  v15 = v12 + 32;
  v16 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v54 = v12;
  v55 = v2;
  v53 = v13;
  v52 = v12 + 32;
  v56 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  while (1)
  {
    v17 = *(v15 + 8 * v14++);
    memcpy(__dst, &v3[v16], 0x2B0uLL);
    *(v17 + 120) = 1;

    outlined init with copy of SyncedLyricsViewController.Specs(__dst, v58);
    v18 = static OS_dispatch_queue.main.getter();
    v19 = *&__dst[80];
    v20 = swift_allocObject();
    swift_weakInit();

    OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #1 in SyncedLyricsLineView.Line.resetGradient(specs:), v20, v19);

    if ((*(v17 + 57) & 1) == 0)
    {
      break;
    }

    swift_beginAccess();
    v21 = *(v17 + 16);
    if (v21 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
      if (!v22)
      {
LABEL_36:
        outlined destroy of SyncedLyricsViewController.Specs(__dst);

        v16 = v56;
        if (v14 == v13)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_36;
      }
    }

    if (v22 < 1)
    {
      goto LABEL_47;
    }

    v57 = v14;

    for (i = 0; i != v22; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 208);
        if (!v24)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v25 = *(v21 + 8 * i + 32);

        v24 = *(v25 + 208);
        if (!v24)
        {
          goto LABEL_17;
        }
      }

      v26 = *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
      if (v26)
      {
        v27 = *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
        v28 = *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
        v29 = v24;
        outlined copy of SyncedLyricsLineView.Word.CrossfadeAnimationParameters?(v26, v27);
        v30 = v28;
        v31 = v26;
        [v30 setBackgroundColor:v31];
      }

LABEL_17:
    }

    outlined destroy of SyncedLyricsViewController.Specs(__dst);

    v12 = v54;
    v3 = v55;
    v13 = v53;
    v16 = v56;
    v14 = v57;
    v15 = v52;
    if (v57 == v53)
    {
      goto LABEL_39;
    }

LABEL_37:
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }
  }

  v32 = *(v17 + 112);
  if (v32 && (v33 = *(v32 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
  {
    v34 = __dst[25];
    v35 = v33;
    [v34 lineHeight];
    v37 = vabdd_f64(v36 * *&__dst[32] + *&__dst[58] + *&__dst[58], CGRectGetHeight(*(v17 + 80))) * 0.5;
    if (*(v17 + 58))
    {
      v38 = v37 + CGRectGetWidth(*(v17 + 80));
      v39 = -v37;
    }

    else
    {
      v39 = -v37;
      v38 = -v37;
    }

    v40 = *(v17 + 80);
    v41 = *(v17 + 88);
    v42 = *(v17 + 96);
    v43 = *(v17 + 104);
    v44 = v35;
    v61.origin.x = v40;
    v61.origin.y = v41;
    v61.size.width = v42;
    v61.size.height = v43;
    [v44 setFrame:{v38, v39, v37, v37 + v37 + CGRectGetHeight(v61)}];
    outlined destroy of SyncedLyricsViewController.Specs(__dst);

    if (v14 != v13)
    {
      goto LABEL_37;
    }
  }

  else
  {
    outlined destroy of SyncedLyricsViewController.Specs(__dst);

    if (v14 != v13)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
}

void closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:)(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    v4 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448);
    memcpy(__dst, (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs), sizeof(__dst));
    v5 = *(v2 + 56);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v4 + a2;

      outlined init with copy of SyncedLyricsViewController.Specs(__dst, &v9);

      v8 = 0;
      while (v8 < *(v5 + 16))
      {
        ++v8;

        SyncedLyricsLineView.Line.animate(progress:specs:)(__dst, v7);

        if (v6 == v8)
        {

          outlined destroy of SyncedLyricsViewController.Specs(__dst);
          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t SyncedLyricsLineView.SBS_TextContentView.TextView.needsLayout(for:)(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    if (vabdd_f64(a1, *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth)) < 1.0)
    {
      return 0;
    }

    v4 = v2[8];
    v5 = v2[9];
    v6 = v2[10];
    v7 = v2[11];

    v21.origin.x = v4;
    v21.origin.y = v5;
    v21.size.width = v6;
    v21.size.height = v7;
    if (vabdd_f64(a1, CGRectGetWidth(v21)) < 1.0)
    {

      return 0;
    }

    v8 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (!v8)
    {

      return 1;
    }

    v9 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    if (*(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate) >= 3uLL)
    {
      v16 = v9[3];
      v15 = v9[4];
      v18 = v9[1];
      v17 = v9[2];
      v19 = v8;
      v10 = v18;
      v11 = v17;
      v12 = v16;
      v13 = v15;
    }

    else
    {
      [v8 frame];
    }

    Width = CGRectGetWidth(*&v10);

    if (vabdd_f64(a1, Width) < 1.0)
    {
      return 0;
    }
  }

  return 1;
}

double SyncedLyricsLineView.SBS_TextContentView.TextView.sizeThatFits(_:)(double a1, double a2)
{
  v4 = 0.0;
  if (a1 != 0.0 || a2 != 0.0)
  {
    v6 = SyncedLyricsLineView.SBS_TextContentView.TextView.needsLayout(for:)(a1);
    if (v6)
    {
      v7 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
      _sS2SSysWl_2();
      *v7 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
      v7[1] = v8;

      *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = a1;
    }

    SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(v6 & 1, 0, a1, a2);
    v9 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v10 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v11 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (v11)
    {
      v12 = v10 == 1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
      if (v13)
      {
        return *(v13 + 80);
      }
    }

    else
    {
      v14 = v9[1];
      v15 = v9[2];
      v4 = v9[3];
      v16 = v9[4];
      v17 = v11;
      v18 = v17;
      if (v10 <= 2)
      {
        [v17 frame];
        v14 = v19;
        v15 = v20;
        v4 = v21;
        v16 = v22;
      }

      v24.origin.x = v14;
      v24.origin.y = v15;
      v24.size.width = v4;
      v24.size.height = v16;
      CGRectGetMaxY(v24);
    }
  }

  return v4;
}

Swift::Void __swiftcall SyncedLyricsLineView.SBS_TextContentView.TextView.layoutSubviews()()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SyncedLyricsLineView.SBS_TextContentView.TextView(0);
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v2 = SyncedLyricsLineView.SBS_TextContentView.TextView.needsLayout(for:)(v1);
  if (v2)
  {
    v3 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v8 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v9 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
    v7 = _sS2SSysWl_2();
    *v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v3[1] = v4;

    [v0 bounds];
    *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = CGRectGetWidth(v11);
  }

  [v0 bounds];
  SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(v2 & 1, 0, v5, v6);
  SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()();
  SyncedLyricsLineView.SBS_TextContentView.TextView.updateProgress(_:animated:)(0, *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress]);
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()()
{
  v3 = v0;
  [v0 bounds];
  if (v4 <= 0.0 || !*&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer])
  {
    return;
  }

  v124 = v0;
  v125 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  v6 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  v5 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8];
  v7 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  swift_beginAccess();
  v8 = *(v7 + 48);
  v143[2] = *(v7 + 32);
  v143[3] = v8;
  v9 = *(v7 + 80);
  v143[4] = *(v7 + 64);
  v143[5] = v9;
  v10 = *(v7 + 16);
  v143[0] = *v7;
  v143[1] = v10;
  v11 = *(&v9 + 1);
  v12 = v9;
  if (*(&v143[0] + 1))
  {

    v13 = v12;
    v14 = v11;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v140[0] = v143[0];
  v15 = *(v7 + 32);
  v140[1] = *(v7 + 16);
  v140[2] = v15;
  v16 = *(v7 + 64);
  v140[3] = *(v7 + 48);
  v140[4] = v16;
  v141 = v12;
  v142 = v11;

  v17 = v125;

  outlined init with copy of TaskPriority?(v143, __dst, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);
  outlined destroy of TaskPriority?(v140, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);
  v18 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
  p_opt_class_meths = &OBJC_PROTOCOL___NSObject_5.opt_class_meths;
  if (!v5)
  {
    if (!v14)
    {
      goto LABEL_46;
    }

    goto LABEL_12;
  }

  if (!v14)
  {
LABEL_12:
    v20 = v124;

    goto LABEL_13;
  }

  if (v6 == v13 && v5 == v14)
  {

LABEL_46:
    LODWORD(rect) = 1;
    v20 = v124;
    goto LABEL_49;
  }

  v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v20 = v124;
  if ((v85 & 1) == 0)
  {
LABEL_13:
    v21 = *(v7 + 16);
    __dst[0] = *v7;
    __dst[1] = v21;
    v22 = *(v7 + 48);
    __dst[2] = *(v7 + 32);
    __dst[3] = v22;
    v23 = *(v7 + 80);
    __dst[4] = *(v7 + 64);
    __dst[5] = v23;
    if (*(&__dst[0] + 1))
    {
      v126 = *(&__dst[1] + 1);
      v24 = *&__dst[1];
      v25 = *(&__dst[2] + 1);
      v114 = __dst[4];
      v115 = __dst[3];
      v26 = objc_opt_self();
      v136 = __dst[2];
      v137 = __dst[3];
      v138 = __dst[4];
      v139 = __dst[5];
      v134 = __dst[0];
      v135 = __dst[1];
      outlined init with copy of SyncedLyricsLineView.SBS_TextContentView.TextView.TextLayoutDiffMetadata(&v134, &aBlock);
      if ([v26 _isInAnimationBlockWithAnimationsEnabled] && v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == 1 && *&v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] == 2)
      {
        v119 = *(v25 + 16);
        v113 = v7;
        if (!v119)
        {
          goto LABEL_77;
        }

        v118 = v25 + 32;

        v27 = 0.0;
        v116 = v25;
        v117 = v24;
        while (1)
        {
          if (*&v27 >= *(v25 + 16))
          {
            goto LABEL_95;
          }

          v7 = *(v118 + 8 * *&v27);
          recta = v27;
          if (v24[2] && (v28 = specialized __RawDictionaryStorage.find<A>(_:)(v7), (v29 & 1) != 0))
          {
            v24 = *(v24[7] + 8 * v28);
          }

          else
          {
            v24 = &_swiftEmptySetSingleton;
          }

          swift_beginAccess();

          v32 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX06SyncedB8LineViewC4WordC_SayAHGTt0g5Tf4g_n(v30, v31);

          v33 = specialized Set.subtracting(_:)(v32, v24);

          if ((v33 & 0xC000000000000001) != 0)
          {
            v24 = __CocoaSet.makeIterator()();
            type metadata accessor for SyncedLyricsLineView.Word();
            lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word, &protocol conformance descriptor for SyncedLyricsLineView.Word);
            Set.Iterator.init(_cocoa:)();
            v33 = v144;
            v34 = v145;
            v35 = v146;
            p_opt_class_meths = v147;
            v36 = v148;
          }

          else
          {
            p_opt_class_meths = 0;
            v37 = -1 << *(v33 + 32);
            v34 = v33 + 56;
            v35 = ~v37;
            v38 = -v37;
            v39 = v38 < 64 ? ~(-1 << v38) : -1;
            v36 = v39 & *(v33 + 56);
          }

          *&rect = *&recta + 1;
          v18 = ((v35 + 64) >> 6);
          while (1)
          {
            v17 = p_opt_class_meths;
            if ((v33 & 0x8000000000000000) == 0)
            {
              break;
            }

            v24 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
            v43 = __CocoaSet.Iterator.next()();
            if (!v43)
            {
              goto LABEL_19;
            }

            *&v127[0] = v43;
            type metadata accessor for SyncedLyricsLineView.Word();
            swift_dynamicCast();
            v42 = aBlock;
            if (!aBlock)
            {
              goto LABEL_19;
            }

LABEL_42:
            if (v126[2])
            {
              v24 = v126;
              v44 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
              if (v45)
              {
                v46 = *(v42 + 208);
                if (v46)
                {
                  v47 = v126[7] + 32 * v44;
                  v49 = *(v47 + 16);
                  v48 = *(v47 + 24);
                  v2 = *v47;
                  v1 = *(v47 + 8);
                  v24 = v46;
                  v151.origin.x = v2;
                  v151.origin.y = v1;
                  v151.size.width = v49;
                  v151.size.height = v48;
                  Width = CGRectGetWidth(v151);
                  v51 = Width - CGRectGetWidth(*(v7 + 80));
                  [v24 frame];
                  [v24 setFrame:v52 - v51];
                }
              }
            }
          }

          v40 = p_opt_class_meths;
          v41 = v36;
          if (v36)
          {
            break;
          }

          while (1)
          {
            p_opt_class_meths = (v40 + 1);
            if (__OFADD__(v40, 1))
            {
              __break(1u);
              goto LABEL_93;
            }

            if (p_opt_class_meths >= v18)
            {
              break;
            }

            v41 = *(v34 + 8 * p_opt_class_meths);
            v40 = (v40 + 1);
            if (v41)
            {
              goto LABEL_38;
            }
          }

LABEL_19:
          outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v33);

          v27 = rect;
          v17 = v125;
          v18 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
          v25 = v116;
          v24 = v117;
          if (*&rect == v119)
          {

            v7 = v113;
LABEL_77:
            v92 = *(v17 + 8);
            v93 = v17[9];
            v94 = v17[10];
            v95 = v17[11];
            *(v17 + 4) = v115;
            *(v17 + 5) = v114;
            v24 = swift_allocObject();
            v24[2] = v17;
            v126 = v92;
            v24[3] = v92;
            *(v24 + 4) = v93;
            rect = v93;
            v1 = v94;
            *(v24 + 5) = v94;
            *(v24 + 6) = v95;
            v2 = v95;

            p_opt_class_meths = _swiftEmptyArrayStorage;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_78;
            }

            goto LABEL_96;
          }
        }

LABEL_38:
        v36 = (v41 - 1) & v41;
        v42 = *(*(v33 + 48) + ((p_opt_class_meths << 9) | (8 * __clz(__rbit64(v41)))));

        if (!v42)
        {
          goto LABEL_19;
        }

        goto LABEL_42;
      }

      outlined destroy of TaskPriority?(__dst, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);
    }

    LODWORD(rect) = 0;
    goto LABEL_49;
  }

  LODWORD(rect) = 1;
LABEL_49:
  v53 = *&v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment];
  if (v53 == 1)
  {
    [v20 bounds];
    v54 = (CGRectGetMaxX(v153) - v125[10]) * 0.5;
    goto LABEL_53;
  }

  if (v53 == 2)
  {
    [v20 bounds];
    v54 = CGRectGetMaxX(v152) - v125[10];
LABEL_53:
    v125[8] = v54;
  }

  p_opt_class_meths = _swiftEmptyArrayStorage;
  while (1)
  {
LABEL_55:
    if (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
    {
      v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v56 = (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] & 1) != 0;
      if (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
      {
        v57 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 384];
      }

      else
      {
        v57 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 360];
      }
    }

    else
    {
      v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v57 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 368];
      v56 = v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind];
    }

    v58 = *v57;
    memcpy(__dst, &v20[v55], 0x2B0uLL);
    v59 = v58;
    outlined init with copy of SyncedLyricsViewController.Specs(__dst, &v134);
    SyncedLyricsLineView.TextContainer.updatedView(color:kind:specs:)(v59, v56, __dst);
    v61 = v60;
    outlined destroy of SyncedLyricsViewController.Specs(__dst);

    [v20 addSubview:v61];
    v126 = objc_opt_self();
    if (![v126 v18[59]])
    {

      goto LABEL_68;
    }

    v62 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v63 = v62 + 8;
    v64 = *v62;
    if (*v62 != 2)
    {
      v125 = p_opt_class_meths;
      v120 = v61;
      v66 = *(v62 + 3);
      v65 = *(v62 + 4);
      v67 = v7;
      v68 = *(v62 + 1);
      v69 = *(v62 + 2);
      v149[0] = *v62;
      v149[1] = v68;
      v149[2] = v69;
      v149[3] = v66;
      v149[4] = v65;
      outlined copy of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate(v64);
      SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:)(v149);
      v7 = v67;
      v61 = v120;
      p_opt_class_meths = v125;
      outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v64);
      v70 = *v62;
      *v62 = 2;
      *v63 = 0u;
      *(v62 + 24) = 0u;
      outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v70);
    }

    v71 = *(v7 + 16);
    aBlock = *v7;
    v72 = *(v7 + 32);
    v73 = *(v7 + 64);
    v74 = *(v7 + 80);
    v131 = *(v7 + 48);
    v132 = v73;
    v133 = v74;
    v129 = v71;
    v130 = v72;
    if (*(&aBlock + 1))
    {
      v134 = aBlock;
      v75 = *(v7 + 64);
      v137 = *(v7 + 48);
      v138 = v75;
      v139 = *(v7 + 80);
      v76 = *(v7 + 32);
      v135 = *(v7 + 16);
      v136 = v76;
      if ((LOBYTE(rect) & 1) == 0)
      {
        break;
      }
    }

    if (v64 != 2)
    {

      goto LABEL_74;
    }

    v20 = v124;
LABEL_68:
    v24 = swift_allocObject();
    v24[2] = v20;
    v24[3] = v17;
    v77 = swift_allocObject();
    *(v77 + 16) = partial apply for closure #4 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews();
    *(v77 + 24) = v24;
    *&v130 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
    *(&v130 + 1) = v77;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v129 = thunk for @escaping @callee_guaranteed () -> ();
    *(&v129 + 1) = &block_descriptor_425;
    v78 = _Block_copy(&aBlock);
    v18 = *(&v130 + 1);

    v17 = v20;

    [v126 performWithoutAnimation:v78];

    _Block_release(v78);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

    if ((v78 & 1) == 0)
    {
      v79 = v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
      v80 = *(v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
      *v79 = 2;
      *(v79 + 8) = 0u;
      *(v79 + 24) = 0u;
      outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v80);
      v81 = *(v7 + 32);
      v82 = *(v7 + 64);
      v83 = *(v7 + 80);
      v131 = *(v7 + 48);
      v132 = v82;
      v133 = v83;
      v84 = *(v7 + 16);
      aBlock = *v7;
      v129 = v84;
      v130 = v81;
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      outlined destroy of TaskPriority?(&aBlock, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);

      return;
    }

    while (1)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      p_opt_class_meths = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1(0, (p_opt_class_meths[2] + 1), 1, p_opt_class_meths);
LABEL_78:
      v97 = p_opt_class_meths[2];
      v96 = p_opt_class_meths[3];
      if (v97 >= v96 >> 1)
      {
        p_opt_class_meths = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1((v96 > 1), v97 + 1, 1, p_opt_class_meths);
      }

      p_opt_class_meths[2] = (v97 + 1);
      v98 = &p_opt_class_meths[2 * v97];
      v98[4] = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews();
      v98[5] = v24;
      v24 = *(v17 + 7);
      v99 = v24[2];
      if (!v99)
      {
        break;
      }

      v121 = Int.seconds.getter(0);

      v7 = 0;
      while (v7 < v24[2])
      {
        v18 = v24[v7 + 4];
        v100 = *(v18 + 10);
        v101 = *(v18 + 11);
        v103 = *(v18 + 12);
        v102 = *(v18 + 13);

        v154.origin.x = v100;
        v154.origin.y = v101;
        v154.size.width = v103;
        v154.size.height = v102;
        MaxX = CGRectGetMaxX(v154);
        *&v155.origin.x = v126;
        v155.origin.y = rect;
        v155.size.width = v1;
        v155.size.height = v2;
        v105 = v121;
        if (CGRectGetWidth(v155) < MaxX)
        {
          v106 = CGRectGetMaxX(*(v18 + 10));
          *&v156.origin.x = v126;
          v156.origin.y = rect;
          v156.size.width = v1;
          v156.size.height = v2;
          v105 = v106 - CGRectGetWidth(v156);
        }

        v107 = CGRectGetWidth(*(v17 + 8));
        v157.origin.x = v105 + v107 - CGRectGetWidth(*(v18 + 10));
        *&v157.size.width = v18[12];
        *&v157.size.height = v18[13];
        *&v158.origin.x = v18[10];
        *&v157.origin.y = v18[11];
        v18[10] = *&v157.origin.x;
        v158.origin.y = v157.origin.y;
        v158.size.width = v157.size.width;
        v158.size.height = v157.size.height;
        if (!CGRectEqualToRect(v157, v158))
        {
          v18[16] = 0;
        }

        v108 = swift_allocObject();
        *(v108 + 2) = v18;
        v108[3] = v100;
        v108[4] = v101;
        v108[5] = v103;
        v108[6] = v102;
        v109 = p_opt_class_meths[2];
        v110 = p_opt_class_meths[3];
        New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1 = p_opt_class_meths;

        if (v109 >= v110 >> 1)
        {
          New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1((v110 > 1), v109 + 1, 1, p_opt_class_meths);
        }

        ++v7;

        New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[2] = (v109 + 1);
        p_opt_class_meths = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1;
        v112 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFyyc_Tg5_1[2 * v109];
        v112[4] = partial apply for closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews();
        v112[5] = v108;
        v17 = v125;
        if (v99 == v7)
        {

          outlined destroy of TaskPriority?(__dst, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);
          LODWORD(rect) = 0;
          v7 = v113;
          v20 = v124;
          v18 = &selRef_reloadRowsAtIndexPaths_withRowAnimation_;
          goto LABEL_55;
        }
      }

LABEL_93:
      __break(1u);
    }

    outlined destroy of TaskPriority?(__dst, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);
    LODWORD(rect) = 0;
    v20 = v124;
  }

  v86 = swift_allocObject();
  *(v86 + 16) = p_opt_class_meths;
  *(v86 + 24) = v124;
  outlined init with copy of TaskPriority?(&aBlock, v127, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);
  v87 = v124;
  SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(&v134, partial apply for specialized closure #3 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews(), v86);

  outlined destroy of TaskPriority?(&aBlock, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);
LABEL_74:
  v88 = *v62;
  *v62 = 2;
  *v63 = 0u;
  *(v62 + 24) = 0u;
  outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v88);
  v89 = *(v7 + 48);
  v127[2] = *(v7 + 32);
  v127[3] = v89;
  v90 = *(v7 + 80);
  v127[4] = *(v7 + 64);
  v127[5] = v90;
  v91 = *(v7 + 16);
  v127[0] = *v7;
  v127[1] = v91;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  outlined destroy of TaskPriority?(v127, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);
}

void *specialized Set.subtracting(_:)(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = __CocoaSet.count.getter();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    specialized Set._subtract<A>(_:)(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= __CocoaSet.count.getter() / 8)
  {
    goto LABEL_13;
  }

  v6 = __CocoaSet.count.getter();
  v2 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC7LyricsX06SyncedE8LineViewC4WordC_Tt1g5(v5, v6);
LABEL_10:

  return specialized _NativeSet.subtracting<A>(_:)(a1, v2);
}

double closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = *(a1 + 80);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
  if (!CGRectEqualToRect(*&a2, v8))
  {
    *(a1 + 128) = 0;
  }

  return result;
}

void specialized closure #3 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v2;
    }

    while (v2);
    SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()();
    v7 = [a2 superview];
    [v7 setNeedsLayout];
  }
}

void closure #4 in SyncedLyricsLineView.SBS_TextContentView.TextView.updateViews()(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata);
  swift_beginAccess();
  v4 = v3[1];
  v129 = *v3;
  v130 = v4;
  v5 = v3[3];
  v131 = v3[2];
  v132 = v5;
  v6 = v3[5];
  v133 = v3[4];
  v134 = v6;
  v7 = *(&v129 + 1);
  if (*(&v129 + 1))
  {
    v8 = v129;
    v10 = *(&v131 + 1);
    v9 = v131;
    v105 = *(*(&v131 + 1) + 16);
    if (!v105)
    {

      goto LABEL_62;
    }

    v102 = v129;
    v106 = *(&v131 + 1) + 32;
    v108 = v130;
    outlined init with copy of TaskPriority?(&v129, v128, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);
    v101 = v9;

    v11 = 0;
    v104 = v10;
LABEL_5:
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_129;
    }

    v112 = v11;
    v12 = *(v106 + 8 * v11);
    swift_beginAccess();

    v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX06SyncedB8LineViewC4WordC_SayAHGTt0g5Tf4g_n(v13, v14);

    if (*(v108 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v12), (v16 & 1) != 0))
    {
    }

    else
    {
      v17 = &_swiftEmptySetSingleton;
    }

    v18 = specialized Set.subtracting(_:)(v15, v17);

    if ((v18 & 0xC000000000000001) != 0)
    {
      __CocoaSet.makeIterator()();
      type metadata accessor for SyncedLyricsLineView.Word();
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word, &protocol conformance descriptor for SyncedLyricsLineView.Word);
      Set.Iterator.init(_cocoa:)();
      v18 = v128[0];
      v19 = v128[1];
      v20 = v128[2];
      v21 = v128[3];
      v22 = v128[4];
    }

    else
    {
      v21 = 0;
      v23 = -1 << *(v18 + 32);
      v19 = v18 + 56;
      v20 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v22 = v25 & *(v18 + 56);
    }

    v26 = (v20 + 64) >> 6;
    v116 = v18;
    v117 = v19;
    v113 = v112 + 1;
    for (i = v26; ; v26 = i)
    {
      if (v18 < 0)
      {
        if (!__CocoaSet.Iterator.next()() || (type metadata accessor for SyncedLyricsLineView.Word(), swift_dynamicCast(), v32 = v127, v121 = v22, v123 = v21, !v127))
        {
LABEL_4:
          outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v18);

          v10 = v104;
          v11 = v113;
          if (v113 == v105)
          {
            goto LABEL_61;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v29 = v21;
        v30 = v22;
        for (j = v21; !v30; ++v29)
        {
          j = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_128;
          }

          if (j >= v26)
          {
            goto LABEL_4;
          }

          v30 = *(v19 + 8 * j);
        }

        v121 = (v30 - 1) & v30;
        v123 = j;

        if (!v32)
        {
          goto LABEL_4;
        }
      }

      v119 = v32;
      v33 = *(v32 + 104);
      v125 = v33;
      if (v33 >> 62)
      {
        break;
      }

      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v34)
      {
        goto LABEL_29;
      }

LABEL_53:
      v49 = *(v119 + 208);
      if (v49)
      {
        [v49 removeFromSuperview];
        v50 = *(v119 + 208);
      }

      else
      {
        v50 = 0;
      }

      v18 = v116;
      *(v119 + 208) = 0;

      if (!*(v119 + 208))
      {
        v51 = *(v119 + 128);
        *(v119 + 128) = 0;
        v52 = *(v119 + 136);
        *(v119 + 136) = 2;
        outlined consume of AnimationStatus(v51, v52);
      }

      v27 = *(v119 + 128);
      *(v119 + 128) = 0;
      v28 = *(v119 + 136);
      *(v119 + 136) = 2;
      outlined consume of AnimationStatus(v27, v28);

      v22 = v121;
      v21 = v123;
      v19 = v117;
    }

    v34 = _CocoaArrayWrapper.endIndex.getter();
    if (!v34)
    {
      goto LABEL_53;
    }

LABEL_29:
    v35 = 0;
    v36 = v125 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v125 & 0xC000000000000001) != 0)
      {
        v41 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v42 = __OFADD__(v35++, 1);
        if (v42)
        {
          break;
        }

        goto LABEL_39;
      }

      if (v35 >= *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_120;
      }

      v41 = *(v125 + 32 + 8 * v35);

      v42 = __OFADD__(v35++, 1);
      if (v42)
      {
        break;
      }

LABEL_39:
      v43 = *(v41 + 88);
      if (!(v43 >> 62))
      {
        v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v44)
        {
          goto LABEL_41;
        }

        goto LABEL_30;
      }

      v44 = _CocoaArrayWrapper.endIndex.getter();
      if (v44)
      {
LABEL_41:
        if (v44 < 1)
        {
          goto LABEL_60;
        }

        v45 = 0;
        while (2)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v47 = *(v46 + 96);
            if (!v47)
            {
LABEL_48:
              v48 = 0;
LABEL_45:
              ++v45;
              *(v46 + 96) = 0;

              if (v44 == v45)
              {
                goto LABEL_30;
              }

              continue;
            }
          }

          else
          {
            v46 = *(v43 + 8 * v45 + 32);

            v47 = *(v46 + 96);
            if (!v47)
            {
              goto LABEL_48;
            }
          }

          break;
        }

        [v47 removeFromSuperview];
        v48 = *(v46 + 96);
        goto LABEL_45;
      }

LABEL_30:
      v37 = *(v41 + 184);
      if (v37)
      {
        [v37 removeFromSuperview];
        v38 = *(v41 + 184);
      }

      else
      {
        v38 = 0;
      }

      *(v41 + 184) = 0;

      v39 = *(v41 + 136);
      *(v41 + 136) = 0;
      v40 = *(v41 + 144);
      *(v41 + 144) = 2;
      outlined consume of AnimationStatus(v39, v40);

      if (v35 == v34)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:

    v7 = *(&v102 + 1);
    v8 = v102;
LABEL_62:
    v53 = *(a2 + 48);
    v54 = *(a2 + 56);

    specialized OrderedSet._subtracting<A>(_:)(v53, v54, v8, v7);
    v56 = v55;

    v110 = *(v56 + 16);
    if (v110)
    {
      v57 = 0;
      v111 = v56 + 32;
      v109 = v56;
      while (1)
      {
        if (v57 >= *(v56 + 16))
        {
          goto LABEL_130;
        }

        v114 = v57;
        v58 = *(v111 + 8 * v57);
        swift_beginAccess();
        v59 = v58;
        v60 = *(v58 + 16);
        if (!(v60 >> 62))
        {
          v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v61)
          {
            break;
          }

          goto LABEL_105;
        }

        v84 = *(v58 + 16);
        v85 = _CocoaArrayWrapper.endIndex.getter();
        v60 = v84;
        v61 = v85;
        v59 = v58;
        if (v61)
        {
          break;
        }

LABEL_105:
        v83 = v59;

LABEL_106:
        v86 = *(v83 + 112);
        v87 = v83;
        if (v86)
        {
          [v86 removeFromSuperview];
          v87 = v83;
          v88 = *(v83 + 112);
        }

        else
        {
          v88 = 0;
        }

        *(v87 + 112) = 0;

        v57 = v114 + 1;
        v56 = v109;
        if (v114 + 1 == v110)
        {
          goto LABEL_110;
        }
      }

      if (v61 < 1)
      {
LABEL_131:
        __break(1u);
        return;
      }

      v120 = v60 & 0xC000000000000001;
      v107 = v59;

      v62 = 0;
      v118 = v61;
      while (2)
      {
        if (v120)
        {
          v65 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
        }

        v66 = *(v65 + 104);
        v126 = v66;
        v122 = v65;
        v124 = v62;
        if (!(v66 >> 62))
        {
          v34 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v34)
          {
            goto LABEL_75;
          }

LABEL_98:
          v79 = *(v122 + 208);
          if (v79)
          {
            [v79 removeFromSuperview];
            v80 = *(v122 + 208);
          }

          else
          {
            v80 = 0;
          }

          *(v122 + 208) = 0;

          if (!*(v122 + 208))
          {
            v81 = *(v122 + 128);
            *(v122 + 128) = 0;
            v82 = *(v122 + 136);
            *(v122 + 136) = 2;
            outlined consume of AnimationStatus(v81, v82);
          }

          v62 = v124 + 1;
          v63 = *(v122 + 128);
          *(v122 + 128) = 0;
          v64 = *(v122 + 136);
          *(v122 + 136) = 2;
          outlined consume of AnimationStatus(v63, v64);

          if (v124 + 1 == v118)
          {

            v83 = v107;
            goto LABEL_106;
          }

          continue;
        }

        break;
      }

      v34 = _CocoaArrayWrapper.endIndex.getter();
      if (!v34)
      {
        goto LABEL_98;
      }

LABEL_75:
      v67 = 0;
      while (2)
      {
        if ((v126 & 0xC000000000000001) != 0)
        {
          v71 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v42 = __OFADD__(v67++, 1);
          if (v42)
          {
            goto LABEL_118;
          }

LABEL_84:
          v72 = *(v71 + 88);
          if (!(v72 >> 62))
          {
            v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v73)
            {
              goto LABEL_86;
            }

LABEL_95:
            v78 = *(v71 + 184);
            if (v78)
            {
              [v78 removeFromSuperview];
              v68 = *(v71 + 184);
            }

            else
            {
              v68 = 0;
            }

            *(v71 + 184) = 0;

            v69 = *(v71 + 136);
            *(v71 + 136) = 0;
            v70 = *(v71 + 144);
            *(v71 + 144) = 2;
            outlined consume of AnimationStatus(v69, v70);

            if (v67 == v34)
            {
              goto LABEL_98;
            }

            continue;
          }

          v73 = _CocoaArrayWrapper.endIndex.getter();
          if (!v73)
          {
            goto LABEL_95;
          }

LABEL_86:
          if (v73 >= 1)
          {
            v74 = 0;
            while (1)
            {
              if ((v72 & 0xC000000000000001) != 0)
              {
                v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v76 = *(v75 + 96);
                if (!v76)
                {
LABEL_93:
                  v77 = 0;
                  goto LABEL_90;
                }
              }

              else
              {
                v75 = *(v72 + 8 * v74 + 32);

                v76 = *(v75 + 96);
                if (!v76)
                {
                  goto LABEL_93;
                }
              }

              [v76 removeFromSuperview];
              v77 = *(v75 + 96);
LABEL_90:
              ++v74;
              *(v75 + 96) = 0;

              if (v73 == v74)
              {
                goto LABEL_95;
              }
            }
          }
        }

        else
        {
          if (v67 >= *((v126 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v71 = *(v126 + 32 + 8 * v67);

          v42 = __OFADD__(v67++, 1);
          if (!v42)
          {
            goto LABEL_84;
          }

LABEL_118:
          __break(1u);
        }

        break;
      }

      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

LABEL_110:

    outlined destroy of TaskPriority?(&v129, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);
  }

  v36 = a1;
  v89 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  v90 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  if (v90)
  {
    if (v90 == 1)
    {
      v34 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v97 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      if (v97)
      {
        [v97 removeFromSuperview];
        v36 = a1;
        v98 = *(a1 + v34);
LABEL_122:
        *(v36 + v34) = 0;

        return;
      }

LABEL_121:
      v98 = 0;
      goto LABEL_122;
    }

    if (v90 != 2)
    {
      v91 = v89[1];
      v92 = v89[2];
      v93 = v89[3];
      v94 = v89[4];
      v95 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v96 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      outlined copy of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate(*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate));
      if (v96)
      {
        [v96 setAttributedText:v90];
      }

      v99 = *(a1 + v95);
      if (v99)
      {
        v100 = v99;
        [v100 setFrame:{v91, v92, v93, v94}];
        outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v90);
      }

      else
      {
        outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v90);
      }
    }
  }
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:)(double *a1)
{
  v2 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (v2)
  {
    v3 = *a1;
    if (*a1 == 1)
    {
      v19 = objc_allocWithZone(UISpringTimingParameters);
      v20 = v2;
      v21 = [v19 initWithMass:1.0 stiffness:130.0 damping:30.0 initialVelocity:{0.0, 0.0}];
      type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator, UIViewPropertyAnimator_ptr);
      v22 = v21;
      v23 = v1;
      isa = UIViewPropertyAnimator.init(springTimingParameters:)(v22).super.isa;
      v25 = swift_allocObject();
      *(v25 + 16) = v20;
      v60 = partial apply for closure #4 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
      v61 = v25;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = thunk for @escaping @callee_guaranteed () -> ();
      v59 = &block_descriptor_381;
      v26 = _Block_copy(&aBlock);
      v27 = v20;

      [(objc_class *)isa addAnimations:v26];
      _Block_release(v26);
      v28 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.14 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      v60 = partial apply for closure #5 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
      v61 = v29;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = thunk for @escaping @callee_guaranteed () -> ();
      v59 = &block_descriptor_387;
      v30 = _Block_copy(&aBlock);
      v31 = v27;

      [v28 addAnimations:v30];
      _Block_release(v30);
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v23;
      v60 = partial apply for closure #6 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
      v61 = v32;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
      v59 = &block_descriptor_393_0;
      v33 = _Block_copy(&aBlock);
      v18 = v31;
      v34 = v23;

      [(objc_class *)isa addCompletion:v33];
      _Block_release(v33);
      [(objc_class *)isa startAnimation];
      [v28 startAnimation];

LABEL_11:
      return;
    }

    if (!v3)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v6 = swift_allocObject();
      *(v6 + 16) = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
      *(v6 + 24) = v5;
      v60 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
      v61 = v6;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = thunk for @escaping @callee_guaranteed () -> ();
      v59 = &block_descriptor_403_0;
      v7 = _Block_copy(&aBlock);
      v8 = v2;

      [v4 performWithoutAnimation:v7];
      _Block_release(v7);
      LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

      if ((v4 & 1) == 0)
      {
        v9 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}];
        type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator, UIViewPropertyAnimator_ptr);
        v10 = v9;
        v11.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)(v10).super.isa;
        v12 = swift_allocObject();
        *(v12 + 16) = v8;
        v60 = partial apply for closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
        v61 = v12;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed () -> ();
        v59 = &block_descriptor_409;
        v13 = _Block_copy(&aBlock);
        v14 = v8;

        [(objc_class *)v11.super.isa addAnimations:v13];
        _Block_release(v13);
        v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        v60 = partial apply for closure #3 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
        v61 = v16;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed () -> ();
        v59 = &block_descriptor_415;
        v17 = _Block_copy(&aBlock);
        v18 = v14;

        [v15 addAnimations:v17];
        _Block_release(v17);
        [(objc_class *)v11.super.isa startAnimation];
        [v15 startAnimation];
LABEL_10:

        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_17;
    }

    v36 = a1[1];
    v35 = a1[2];
    v38 = a1[3];
    v37 = a1[4];
    v54 = v2;
    v40 = [v54 snapshotViewAfterScreenUpdates:0];
    if (v40)
    {
      v41 = v40;
      v42 = objc_opt_self();
      v43 = swift_allocObject();
      *(v43 + 2) = v41;
      *(v43 + 3) = v54;
      *(v43 + 4) = v1;
      *(v43 + 5) = v3;
      v43[6] = v36;
      v43[7] = v35;
      v43[8] = v38;
      v43[9] = v37;
      v44 = swift_allocObject();
      *(v44 + 16) = partial apply for closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
      *(v44 + 24) = v43;
      v60 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
      v61 = v44;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = thunk for @escaping @callee_guaranteed () -> ();
      v59 = &block_descriptor_363_0;
      v45 = _Block_copy(&aBlock);
      v46 = v54;
      v47 = v1;
      v48 = v41;
      outlined init with copy of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate(a1, v55);

      [v42 performWithoutAnimation:v45];
      _Block_release(v45);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        [v48 frame];
        [v48 setFrame:?];
        [v46 setFrame:{v36, v35, v38, v37}];

        v11.super.isa = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        v60 = partial apply for closure #8 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
        v61 = v50;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed () -> ();
        v59 = &block_descriptor_369;
        v51 = _Block_copy(&aBlock);
        v10 = v48;

        [(objc_class *)v11.super.isa addAnimations:v51];
        _Block_release(v51);
        v52 = swift_allocObject();
        *(v52 + 16) = v46;
        v60 = partial apply for closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:);
        v61 = v52;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = thunk for @escaping @callee_guaranteed () -> ();
        v59 = &block_descriptor_375;
        v53 = _Block_copy(&aBlock);
        v18 = v46;

        [v15 addAnimations:v53];
        _Block_release(v53);
        [(objc_class *)v11.super.isa startAnimation];
        [v15 startAnimationAfterDelay:0.1];
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      return;
    }

    [v54 setAttributedText:v3];
    [v54 setFrame:{v36, v35, v38, v37}];
  }
}

id closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:)(void *a1)
{
  CGAffineTransformMakeTranslation(&v3, 0.0, -20.0);
  [a1 setTransform:&v3];
  return [a1 setAlpha:0.0];
}

id closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTranslation(update:)(void *a1, id a2, void *a3, uint64_t a4)
{
  [a2 frame];
  [a1 setFrame:?];
  [a3 addSubview:a1];
  [a2 setAlpha:0.0];
  [a2 setAttributedText:a4];
  [a2 frame];

  return [a2 setFrame:?];
}

void closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateBlur(on:from:to:duration:delay:)(uint64_t a1, void *a2)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  [a2 setFilters:isa];

  v4 = String._bridgeToObjectiveC()();
  [a2 removeAnimationForKey:v4];
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (!v4)
  {
    return;
  }

  v203 = a2;
  v204 = a3;
  if (a1[11])
  {
    v212 = 0;
  }

  else
  {
    v212 = v4[5] != 0;
  }

  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for UIViewPropertyAnimator, UIViewPropertyAnimator_ptr);
  v6 = objc_allocWithZone(UISpringTimingParameters);

  isa = UIViewPropertyAnimator.init(springTimingParameters:)([v6 initWithMass:1.0 stiffness:120.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v221 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v226 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.32 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  v7 = v4[6];
  v8 = v4[7];
  v9 = *a1;
  v10 = a1[1];

  specialized OrderedSet._subtracting<A>(_:)(v9, v10, v7, v8);
  v208 = v11;
  v12 = v4[6];
  v13 = v4[7];

  specialized OrderedSet._subtracting<A>(_:)(v12, v13, v9, v10);
  v209 = v14;

  v15 = a1[5];
  v16 = &stru_1005F2000;
  v207 = *(v15 + 16);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (!v207)
  {
    goto LABEL_54;
  }

  v20 = 0;
  v206 = v15 + 32;
  v220 = a1;
  v21 = a1[2];
  v219 = kCAFilterGaussianBlur;
  v217 = kCAFilterInputRadius;
  v205 = v21;
LABEL_8:
  v213 = v20;
  v22 = *(v206 + 8 * v20);
  swift_beginAccess();

  v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX06SyncedB8LineViewC4WordC_SayAHGTt0g5Tf4g_n(v23, v24);

  if (*(v21 + 16) && (v26 = specialized __RawDictionaryStorage.find<A>(_:)(v22), (v27 & 1) != 0))
  {
    v28 = *(*(v21 + 56) + 8 * v26);
  }

  else
  {
    v28 = &_swiftEmptySetSingleton;
  }

  v29 = specialized Set.subtracting(_:)(v28, v25);
  v230 = specialized Set.subtracting(_:)(v25, v28);

  if ((v29 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for SyncedLyricsLineView.Word();
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word, &protocol conformance descriptor for SyncedLyricsLineView.Word);
    Set.Iterator.init(_cocoa:)();
    v29 = v249;
    v30 = v250;
    v31 = v251;
    v32 = v252;
    v33 = v253;
  }

  else
  {
    v32 = 0;
    v34 = -1 << *(v29 + 32);
    v30 = v29 + 56;
    v31 = ~v34;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v33 = v36 & *(v29 + 56);
  }

  v214 = v213 + 1;
  v37 = (v31 + 64) >> 6;
  v227 = v30;
  v222 = v37;
  v225 = v29;
  while ((v29 & 0x8000000000000000) == 0)
  {
    v38 = v32;
    v39 = v33;
    v40 = v32;
    if (!v33)
    {
      while (1)
      {
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v40 >= v37)
        {
          goto LABEL_33;
        }

        v39 = *(v30 + 8 * v40);
        ++v38;
        if (v39)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_123;
    }

LABEL_25:
    v41 = (v39 - 1) & v39;
    v42 = *(*(v29 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));

    if (!v42)
    {
      goto LABEL_33;
    }

LABEL_29:
    v235 = v41;
    v44 = objc_opt_self();
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    *(v45 + 24) = v238;
    v46 = *(v220 + 3);
    *(v45 + 64) = *(v220 + 2);
    *(v45 + 80) = v46;
    v47 = *(v220 + 5);
    *(v45 + 96) = *(v220 + 4);
    *(v45 + 112) = v47;
    v48 = *(v220 + 1);
    *(v45 + 32) = *v220;
    *(v45 + 48) = v48;
    *(v45 + 128) = v22;
    v49 = v238;
    v50 = v22;

    outlined init with copy of SyncedLyricsLineView.SBS_TextContentView.TextView.TextLayoutDiffMetadata(v220, &aBlock);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v17, v18);
    v51 = swift_allocObject();
    *(v51 + 16) = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
    *(v51 + 24) = v45;
    v246 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
    v247 = v51;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = thunk for @escaping @callee_guaranteed () -> ();
    v245 = &block_descriptor_343_0;
    v52 = _Block_copy(&aBlock);

    [v44 performWithoutAnimation:v52];
    _Block_release(v52);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if (v44)
    {
      goto LABEL_125;
    }

    v246 = partial apply for closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
    v247 = v42;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = thunk for @escaping @callee_guaranteed () -> ();
    v245 = &block_descriptor_346;
    v53 = _Block_copy(&aBlock);

    [(objc_class *)isa addAnimations:v53];
    _Block_release(v53);
    v54 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v246 = partial apply for closure #3 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
    v247 = v42;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = thunk for @escaping @callee_guaranteed () -> ();
    v245 = &block_descriptor_349;
    v55 = _Block_copy(&aBlock);

    [v54 addAnimations:v55];
    _Block_release(v55);
    v56 = v42[26];
    if (v56)
    {
      v57 = [v56 layer];
      if (v57)
      {
        v58 = v57;
        v59 = [objc_allocWithZone(CAFilter) initWithType:v219];
        v60 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v59 setValue:v60 forKey:v217];

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3, &_ss23_ContiguousArrayStorageCyypGMR_3);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_1004F2400;
        *(v61 + 56) = type metadata accessor for UIAction(0, &_sSo8CAFilterCML_1, CAFilter_ptr);
        *(v61 + 32) = v59;
        v62 = v59;
        v63 = Array._bridgeToObjectiveC()().super.isa;

        [v58 setFilters:v63];

        v64 = String._bridgeToObjectiveC()();
        v65 = [objc_opt_self() animationWithKeyPath:v64];

        v66 = v65;
        [v66 setDuration:0.23];
        [v66 setBeginTime:CACurrentMediaTime() + 0.15];
        [v66 setFillMode:kCAFillModeBoth];
        v67 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v66 setFromValue:v67];

        v68 = CGFloat._bridgeToObjectiveC()().super.super.isa;
        [v66 setToValue:v68];

        [v66 setRemovedOnCompletion:0];
        v69 = objc_allocWithZone(CAMediaTimingFunction);
        LODWORD(v70) = 1051260355;
        LODWORD(v71) = 1059816735;
        LODWORD(v72) = 1.0;
        v73 = [v69 initWithControlPoints:v70 :0.0 :v71 :v72];
        [v66 setTimingFunction:v73];

        v74 = swift_allocObject();
        *(v74 + 16) = v58;
        v75 = v58;
        CAAnimation.completion.setter(closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateBlur(on:from:to:duration:delay:)partial apply, v74);

        v76 = String._bridgeToObjectiveC()();
        [v75 addAnimation:v66 forKey:v76];
      }
    }

    [v54 startAnimationAfterDelay:{0.1, v203, v204}];

    v19 = 1;
    v17 = partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
    v18 = v45;
    v32 = v40;
    v33 = v235;
    v22 = v50;
    v37 = v222;
    v29 = v225;
    v30 = v227;
  }

  v43 = __CocoaSet.Iterator.next()();
  if (v43)
  {
    v248 = v43;
    type metadata accessor for SyncedLyricsLineView.Word();
    swift_dynamicCast();
    v42 = aBlock;
    v40 = v32;
    v41 = v33;
    if (aBlock)
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v223 = v17;
  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v29);
  v77 = v230;
  v210 = v18;
  v78 = v19;
  if ((v230 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    type metadata accessor for SyncedLyricsLineView.Word();
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type SyncedLyricsLineView.Word and conformance SyncedLyricsLineView.Word, type metadata accessor for SyncedLyricsLineView.Word, &protocol conformance descriptor for SyncedLyricsLineView.Word);
    Set.Iterator.init(_cocoa:)();
    v77 = v254;
    v79 = v255;
    v80 = v256;
    v81 = v257;
    v82 = v258;
  }

  else
  {
    v81 = 0;
    v83 = -1 << *(v230 + 32);
    v79 = (v230 + 56);
    v80 = ~v83;
    v84 = -v83;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    else
    {
      v85 = -1;
    }

    v82 = v85 & *(v230 + 56);
  }

  v231 = v77;
  v86 = (v80 + 64) >> 6;
  while (2)
  {
    if (v77 < 0)
    {
      v92 = __CocoaSet.Iterator.next()();
      if (v92)
      {
        v248 = v92;
        type metadata accessor for SyncedLyricsLineView.Word();
        swift_dynamicCast();
        v91 = aBlock;
        v89 = v81;
        v90 = v82;
        if (aBlock)
        {
LABEL_51:
          v236 = v90;
          v93 = swift_allocObject();
          *(v93 + 16) = v238;
          *(v93 + 24) = v91;
          v246 = partial apply for closure #4 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v247 = v93;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = thunk for @escaping @callee_guaranteed () -> ();
          v245 = &block_descriptor_323_0;
          v94 = _Block_copy(&aBlock);
          v95 = v238;

          [(objc_class *)v221 addAnimations:v94];
          _Block_release(v94);
          v246 = partial apply for closure #5 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v247 = v91;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
          v245 = &block_descriptor_326;
          v96 = _Block_copy(&aBlock);

          [(objc_class *)v221 addCompletion:v96];
          _Block_release(v96);
          v246 = partial apply for closure #6 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v247 = v91;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = thunk for @escaping @callee_guaranteed () -> ();
          v245 = &block_descriptor_329;
          v97 = _Block_copy(&aBlock);

          [v226 addAnimations:v97];
          _Block_release(v97);
          v98 = v91[26];
          if (v98 && (v99 = [v98 layer]) != 0)
          {
            v100 = v99;
            v101 = [objc_allocWithZone(CAFilter) initWithType:v219];
            v102 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v101 setValue:v102 forKey:v217];

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3, &_ss23_ContiguousArrayStorageCyypGMR_3);
            v103 = swift_allocObject();
            *(v103 + 16) = xmmword_1004F2400;
            *(v103 + 56) = type metadata accessor for UIAction(0, &_sSo8CAFilterCML_1, CAFilter_ptr);
            *(v103 + 32) = v101;
            v104 = v101;
            v105 = Array._bridgeToObjectiveC()().super.isa;

            [v100 setFilters:v105];

            v106 = String._bridgeToObjectiveC()();
            v107 = [objc_opt_self() animationWithKeyPath:v106];

            v108 = v107;
            [v108 setDuration:0.32];
            [v108 setBeginTime:CACurrentMediaTime() + 0.15];
            [v108 setFillMode:kCAFillModeBoth];
            v109 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v108 setFromValue:v109];

            v110 = CGFloat._bridgeToObjectiveC()().super.super.isa;
            [v108 setToValue:v110];

            [v108 setRemovedOnCompletion:0];
            v111 = objc_allocWithZone(CAMediaTimingFunction);
            LODWORD(v112) = 1051260355;
            LODWORD(v113) = 1059816735;
            LODWORD(v114) = 1.0;
            v115 = [v111 initWithControlPoints:v112 :0.0 :v113 :v114];
            [v108 setTimingFunction:v115];

            v116 = swift_allocObject();
            *(v116 + 16) = v100;
            v117 = v100;
            CAAnimation.completion.setter(closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateBlur(on:from:to:duration:delay:)partial apply, v116);

            v118 = String._bridgeToObjectiveC()();
            [v117 addAnimation:v108 forKey:v118];
          }

          else
          {
          }

          v78 = 1;
          v81 = v89;
          v82 = v236;
          v77 = v231;
          continue;
        }
      }

LABEL_7:
      outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v231);
      v20 = v214;
      v16 = &stru_1005F2000;
      v17 = v223;
      v19 = v78;
      v21 = v205;
      v18 = v210;
      if (v214 != v207)
      {
        goto LABEL_8;
      }

LABEL_54:
      v211 = v18;
      v224 = v17;
      v228 = *(v208 + 16);
      if (v228)
      {
        v239 = objc_opt_self();
        v119 = *(v208 + 16);

        if (!v119)
        {
          goto LABEL_126;
        }

        v120 = 0;
        v121 = 0;
        v232 = 0;
        v122 = 0;
        v123 = 0;
        v216 = kCAFilterGaussianBlur;
        v215 = kCAFilterInputRadius;
        v237 = v19;
        while (1)
        {
          v124 = *(v208 + 32 + 8 * v120);
          v234 = v120;
          if (*(v124 + 56) == 1)
          {
            if (v19)
            {

              v237 = 1;
            }

            else
            {
              swift_beginAccess();
              v125 = *(v124 + 16);
              if (v125 >> 62)
              {
                v126 = _CocoaArrayWrapper.endIndex.getter();
                if (v126)
                {
LABEL_63:
                  if (v126 < 1)
                  {
                    goto LABEL_129;
                  }

                  v127 = 0;
                  do
                  {
                    if ((v125 & 0xC000000000000001) != 0)
                    {
                      v128 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                    }

                    else
                    {
                      v128 = *(v125 + 8 * v127 + 32);
                    }

                    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v123, v122);
                    v129 = swift_allocObject();
                    *(v129 + 16) = partial apply for closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
                    *(v129 + 24) = v128;
                    v246 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
                    v247 = v129;
                    aBlock = _NSConcreteStackBlock;
                    v243 = 1107296256;
                    v244 = thunk for @escaping @callee_guaranteed () -> ();
                    v245 = &block_descriptor_314;
                    v130 = _Block_copy(&aBlock);

                    [v239 performWithoutAnimation:v130];
                    _Block_release(v130);
                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    if (isEscapingClosureAtFileLocation)
                    {
                      goto LABEL_124;
                    }

                    ++v127;
                    v246 = partial apply for closure #8 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
                    v247 = v128;
                    aBlock = _NSConcreteStackBlock;
                    v243 = 1107296256;
                    v244 = thunk for @escaping @callee_guaranteed () -> ();
                    v245 = &block_descriptor_317;
                    v132 = _Block_copy(&aBlock);

                    [(objc_class *)isa addAnimations:v132];
                    _Block_release(v132);

                    v123 = partial apply for closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
                    v122 = v128;
                  }

                  while (v126 != v127);

                  v237 = 0;
                  v123 = partial apply for closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
                  v122 = v128;
                  v16 = &stru_1005F2000;
                  goto LABEL_73;
                }
              }

              else
              {
                v126 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v126)
                {
                  goto LABEL_63;
                }
              }

              v237 = 0;
            }
          }

          else
          {
          }

LABEL_73:
          v133 = swift_allocObject();
          *(v133 + 16) = v212;
          *(v133 + 24) = v124;

          outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v232, v121);
          v134 = swift_allocObject();
          *(v134 + 16) = partial apply for closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          *(v134 + 24) = v133;
          v246 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
          v247 = v134;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = thunk for @escaping @callee_guaranteed () -> ();
          v245 = &block_descriptor_80;
          v135 = v124;
          v136 = _Block_copy(&aBlock);

          [v239 performWithoutAnimation:v136];
          _Block_release(v136);
          LOBYTE(v136) = swift_isEscapingClosureAtFileLocation();

          if (v136)
          {
            goto LABEL_128;
          }

          v120 = v234 + 1;
          v246 = partial apply for closure #10 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v247 = v135;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = thunk for @escaping @callee_guaranteed () -> ();
          v245 = &block_descriptor_267_0;
          v137 = _Block_copy(&aBlock);

          [isa v16[52].name];
          _Block_release(v137);
          v246 = partial apply for closure #11 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v247 = v135;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = thunk for @escaping @callee_guaranteed () -> ();
          v245 = &block_descriptor_270;
          v138 = _Block_copy(&aBlock);

          [v226 v16[52].name];
          _Block_release(v138);
          if ((v237 & 1) == 0)
          {
            goto LABEL_86;
          }

          v139 = v135[14];
          if (!v139)
          {
            goto LABEL_86;
          }

          v140 = [v139 maskView];
          if (v140)
          {
            goto LABEL_77;
          }

          v160 = v135[14];
          if (!v160)
          {
            goto LABEL_86;
          }

          v161 = [v160 subviews];
          type metadata accessor for UIAction(0, &_sSo6UIViewCML_2, UIView_ptr);
          v162 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v162 >> 62)
          {
            if (_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_82:
              if ((v162 & 0xC000000000000001) != 0)
              {
                v163 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (!*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_131;
                }

                v163 = *(v162 + 32);
              }

              v140 = v163;

LABEL_77:
              v141 = [v140 layer];

              if (v141)
              {
                v142 = [objc_allocWithZone(CAFilter) initWithType:v216];
                v143 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v142 setValue:v143 forKey:v215];

                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3, &_ss23_ContiguousArrayStorageCyypGMR_3);
                v144 = swift_allocObject();
                *(v144 + 16) = xmmword_1004F2400;
                *(v144 + 56) = type metadata accessor for UIAction(0, &_sSo8CAFilterCML_1, CAFilter_ptr);
                *(v144 + 32) = v142;
                v145 = v142;
                v146 = Array._bridgeToObjectiveC()().super.isa;

                [v141 setFilters:v146];

                v147 = String._bridgeToObjectiveC()();
                v148 = [objc_opt_self() animationWithKeyPath:v147];

                v149 = v148;
                [v149 setDuration:0.32];
                [v149 setBeginTime:CACurrentMediaTime() + 0.15];
                [v149 setFillMode:kCAFillModeBoth];
                v150 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v149 setFromValue:v150];

                v151 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                [v149 setToValue:v151];

                [v149 setRemovedOnCompletion:0];
                v152 = objc_allocWithZone(CAMediaTimingFunction);
                LODWORD(v153) = 1051260355;
                LODWORD(v154) = 1059816735;
                LODWORD(v155) = 1.0;
                v156 = [v152 initWithControlPoints:v153 :0.0 :v154 :v155];
                [v149 setTimingFunction:v156];

                v157 = swift_allocObject();
                *(v157 + 16) = v141;
                v158 = v141;
                CAAnimation.completion.setter(closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateBlur(on:from:to:duration:delay:)partial apply, v157);

                v159 = String._bridgeToObjectiveC()();
                [v158 addAnimation:v149 forKey:v159];

                v120 = v234 + 1;

                goto LABEL_87;
              }

LABEL_86:

              goto LABEL_87;
            }
          }

          else if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_82;
          }

LABEL_87:
          if (v120 == v228)
          {

            v218 = partial apply for closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
            goto LABEL_96;
          }

          v232 = partial apply for closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v121 = v133;
          if (v120 >= *(v208 + 16))
          {
            goto LABEL_126;
          }
        }
      }

      v123 = 0;
      v122 = 0;
      v218 = 0;
      v133 = 0;
      v237 = v19;
LABEL_96:
      v240 = *(v209 + 16);
      if (!v240)
      {
LABEL_120:
        v198 = swift_allocObject();
        *(v198 + 16) = 0;
        v199 = swift_allocObject();
        v199[2] = v198;
        v199[3] = v203;
        v199[4] = v204;
        v246 = partial apply for closure #17 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
        v247 = v199;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
        v245 = &block_descriptor_288;
        v200 = _Block_copy(&aBlock);

        [(objc_class *)isa addCompletion:v200];
        _Block_release(v200);
        [(objc_class *)isa startAnimation];
        v201 = swift_allocObject();
        v201[2] = v198;
        v201[3] = v203;
        v201[4] = v204;
        v246 = partial apply for closure #18 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
        v247 = v201;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
        v245 = &block_descriptor_294;
        v202 = _Block_copy(&aBlock);

        [(objc_class *)v221 addCompletion:v202];
        _Block_release(v202);
        [(objc_class *)v221 startAnimation];
        [v226 startAnimationAfterDelay:0.1];

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v224, v211);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v123, v122);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v218, v133);
        return;
      }

      v233 = kCAFilterGaussianBlur;
      v229 = kCAFilterInputRadius;

      v164 = 0;
      while (1)
      {
        if (v164 >= *(v209 + 16))
        {
          goto LABEL_127;
        }

        v165 = *(v209 + 8 * v164 + 32);
        if (v212)
        {
          v246 = partial apply for closure #12 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = thunk for @escaping @callee_guaranteed () -> ();
          v245 = &block_descriptor_300;
          v166 = _Block_copy(&aBlock);
          swift_retain_n();

          v167 = isa;
          [isa v16[52].name];
          _Block_release(v166);
          v246 = partial apply for closure #13 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
          v168 = &block_descriptor_303_0;
        }

        else
        {
          v246 = partial apply for closure #14 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = thunk for @escaping @callee_guaranteed () -> ();
          v245 = &block_descriptor_273_1;
          v169 = _Block_copy(&aBlock);
          swift_retain_n();

          v167 = v221;
          [v221 v16[52].name];
          _Block_release(v169);
          v246 = partial apply for closure #15 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = thunk for @escaping @callee_guaranteed (@unowned UIViewAnimatingPosition) -> ();
          v168 = &block_descriptor_276;
        }

        v245 = v168;
        v170 = _Block_copy(&aBlock);

        [(objc_class *)v167 addCompletion:v170];
        _Block_release(v170);
        v171 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v246 = partial apply for closure #16 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:);
        v247 = v165;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = thunk for @escaping @callee_guaranteed () -> ();
        v245 = &block_descriptor_279_0;
        v172 = _Block_copy(&aBlock);

        [v171 v16[52].name];
        _Block_release(v172);
        if (v237)
        {
          v173 = v165[14];
          if (v173)
          {
            v174 = [v173 maskView];
            if (v174)
            {
              goto LABEL_107;
            }

            v194 = v165[14];
            if (v194)
            {
              v195 = [v194 subviews];
              type metadata accessor for UIAction(0, &_sSo6UIViewCML_2, UIView_ptr);
              v196 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

              if (v196 >> 62)
              {
                if (_CocoaArrayWrapper.endIndex.getter())
                {
LABEL_112:
                  if ((v196 & 0xC000000000000001) != 0)
                  {
                    v197 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (!*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_130;
                    }

                    v197 = *(v196 + 32);
                  }

                  v174 = v197;

LABEL_107:
                  v175 = [v174 layer];

                  if (v175)
                  {
                    v176 = [objc_allocWithZone(CAFilter) initWithType:v233];
                    v177 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v176 setValue:v177 forKey:v229];

                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_3, &_ss23_ContiguousArrayStorageCyypGMR_3);
                    v178 = swift_allocObject();
                    *(v178 + 16) = xmmword_1004F2400;
                    *(v178 + 56) = type metadata accessor for UIAction(0, &_sSo8CAFilterCML_1, CAFilter_ptr);
                    *(v178 + 32) = v176;
                    v179 = v176;
                    v180 = Array._bridgeToObjectiveC()().super.isa;

                    [v175 setFilters:v180];

                    v181 = String._bridgeToObjectiveC()();
                    v182 = [objc_opt_self() animationWithKeyPath:v181];

                    v183 = v182;
                    [v183 setDuration:0.23];
                    [v183 setBeginTime:CACurrentMediaTime() + 0.0];
                    [v183 setFillMode:kCAFillModeBoth];
                    v184 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v183 setFromValue:v184];

                    v185 = CGFloat._bridgeToObjectiveC()().super.super.isa;
                    [v183 setToValue:v185];

                    [v183 setRemovedOnCompletion:0];
                    v186 = objc_allocWithZone(CAMediaTimingFunction);
                    LODWORD(v187) = 1051260355;
                    LODWORD(v188) = 1059816735;
                    LODWORD(v189) = 1.0;
                    v190 = [v186 initWithControlPoints:v187 :0.0 :v188 :v189];
                    [v183 setTimingFunction:v190];

                    v191 = swift_allocObject();
                    *(v191 + 16) = v175;
                    v192 = v175;
                    CAAnimation.completion.setter(partial apply for closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateBlur(on:from:to:duration:delay:), v191);

                    v193 = String._bridgeToObjectiveC()();
                    [v192 addAnimation:v183 forKey:v193];

                    v16 = &stru_1005F2000;
                  }

                  goto LABEL_99;
                }
              }

              else if (*((v196 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_112;
              }
            }
          }
        }

LABEL_99:
        ++v164;
        [v171 startAnimation];

        if (v240 == v164)
        {

          goto LABEL_120;
        }
      }
    }

    break;
  }

  v87 = v81;
  v88 = v82;
  v89 = v81;
  if (v82)
  {
LABEL_47:
    v90 = (v88 - 1) & v88;
    v91 = *(*(v77 + 48) + ((v89 << 9) | (8 * __clz(__rbit64(v88)))));

    if (!v91)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

  while (1)
  {
    v89 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v89 >= v86)
    {
      goto LABEL_7;
    }

    v88 = *&v79[8 * v89];
    ++v87;
    if (v88)
    {
      goto LABEL_47;
    }
  }

LABEL_123:
  __break(1u);
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
}

void closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt a4)
{
  Width = CGRectGetWidth(*(a1 + 176));
  if (*(a2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == 1)
  {
    v9 = *(a3 + 24);
    if (*(v9 + 16))
    {
      v10 = Width;
      v11 = specialized __RawDictionaryStorage.find<A>(_:)(a4);
      Width = v10;
      if (v12)
      {
        v13 = CGRectGetWidth(*(*(v9 + 56) + 32 * v11));
        Width = v10 + vabdd_f64(v13, CGRectGetWidth(*(a4 + 80)));
      }
    }

    Width = -Width;
  }

  v14 = *(a1 + 208);
  if (v14)
  {
    CGAffineTransformMakeTranslation(&v16, Width, 0.0);
    [v14 setTransform:&v16];
    v15 = *(a1 + 208);
    if (v15)
    {
      [v15 setAlpha:0.0];
    }
  }
}

void closure #4 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(uint64_t a1, uint64_t a2)
{
  v4 = Int.seconds.getter(50);
  v5 = *(a2 + 208);
  if (v5)
  {
    if (*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction))
    {
      v4 = -v4;
    }

    CGAffineTransformMakeTranslation(&v6, v4, 0.0);
    [v5 setTransform:&v6];
  }
}

void closure #7 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(uint64_t a1)
{
  v1 = *(a1 + 208);
  if (v1)
  {
    v2 = *(a1 + 144);
    v3 = *(a1 + 152);
    v4 = *(a1 + 160);
    v5 = *(a1 + 168);
    v7 = v1;
    v11.origin.x = v2;
    v11.origin.y = v3;
    v11.size.width = v4;
    v11.size.height = v5;
    MinX = CGRectGetMinX(v11);
    v9 = CGRectGetMinX(*(a1 + 176));
    CGAffineTransformMakeTranslation(&v10, MinX - v9, 0.0);
    [v7 setTransform:&v10];
  }
}

id closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(char a1, double *a2)
{
  v3 = *(a2 + 14);
  if (a1)
  {
    if (v3)
    {
      v4 = a2[10];
      v5 = a2[11];
      v6 = a2[12];
      v7 = a2[13];
      v8 = v3;
      v12.origin.x = v4;
      v12.origin.y = v5;
      v12.size.width = v6;
      v12.size.height = v7;
      Height = CGRectGetHeight(v12);
      CGAffineTransformMakeTranslation(&v11, 0.0, -Height);
      [v8 setTransform:&v11];
    }
  }

  else if (v3)
  {
    CGAffineTransformMakeTranslation(&v11, 0.0, 20.0);
    [v3 setTransform:&v11];
  }

  result = *(a2 + 14);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

void *closure #12 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(void *result, CGFloat a2)
{
  v2 = result[14];
  if (v2)
  {
    CGAffineTransformMakeTranslation(&v3, 0.0, a2);
    return [v2 setTransform:&v3];
  }

  return result;
}

void closure #17 in SyncedLyricsLineView.SBS_TextContentView.TextView.animateTransliteration(metadata:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_beginAccess();
  if ((*(a2 + 16) & 1) == 0)
  {
    v5 = swift_beginAccess();
    *(a2 + 16) = 1;
    a3(v5);
  }
}

void *SyncedLyricsLineView.SBS_TextContentView.TextView.updatedTextKitManager(with:)(double a1, double a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
  __chkstk_darwin();
  v102 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v100 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
  __chkstk_darwin();
  v9 = &v100 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  __chkstk_darwin();
  v108 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v105 = (&v100 - v11);
  __chkstk_darwin();
  v13 = &v100 - v12;
  v14 = type metadata accessor for Locale.Language();
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v101 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v100 = &v100 - v17;
  __chkstk_darwin();
  v110 = &v100 - v18;
  v19 = [objc_allocWithZone(NSMutableParagraphStyle) init];
  [v19 setAlignment:*&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];
  v111 = v19;
  [v19 setLineBreakStrategy:3];
  v20 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
  v21 = v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 216];
  v103 = v15;
  if ((v21 & 1) == 0)
  {
    v22 = *(v20 + 26);
    v23 = v14;
    v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind;
    if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
    {
      v25 = 224;
    }

    else
    {
      v25 = 200;
    }

    [*&v20[v25] ascender];
    v27 = v3[v24];
    v14 = v23;
    v15 = v103;
    if (v27)
    {
      v28 = 224;
    }

    else
    {
      v28 = 200;
    }

    v29 = v22 - v26;
    [*&v20[v28] descender];
    [v111 setLineSpacing:v29 + v30];
  }

  v31 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v33 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  v32 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];

  LOBYTE(v33) = String.containsExcessiveHeightCharacters.getter(v33, v32);

  if (v33)
  {
    v113 = Int.seconds.getter(0);
    v112[0] = v113;
    CTFontGetLanguageAwareOutsets();
    v34 = v113 + v112[0];
    v35 = v111;
    [v111 lineSpacing];
    [v35 setLineSpacing:v34 + v36];
  }

  v37 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(&v3[v37], v13, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  v109 = *(v15 + 48);
  v38 = v109(v13, 1, v14);
  v107 = v37;
  v106 = v15 + 48;
  if (v38 == 1)
  {
    v39 = &_s10Foundation6LocaleV8LanguageVSgMd_0;
    v40 = &_s10Foundation6LocaleV8LanguageVSgMR_0;
    v41 = v13;
LABEL_17:
    outlined destroy of TaskPriority?(v41, v39, v40);
    goto LABEL_20;
  }

  v42 = v110;
  (*(v15 + 32))(v110, v13, v14);
  Locale.Language.script.getter();
  v43 = type metadata accessor for Locale.Script();
  if ((*(*(v43 - 8) + 48))(v9, 1, v43) != 1)
  {
    (*(v15 + 8))(v42, v14);
    v39 = &_s10Foundation6LocaleV6ScriptVSgMd_0;
    v40 = &_s10Foundation6LocaleV6ScriptVSgMR_0;
    v41 = v9;
    goto LABEL_17;
  }

  outlined destroy of TaskPriority?(v9, &_s10Foundation6LocaleV6ScriptVSgMd_0, &_s10Foundation6LocaleV6ScriptVSgMR_0);
  v44 = v105;
  outlined init with copy of TaskPriority?(&v3[v37], v105, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  if (v109(v44, 1, v14))
  {
    outlined destroy of TaskPriority?(v44, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
    (*(v15 + 8))(v42, v14);
LABEL_20:
    v49 = v14;
    goto LABEL_21;
  }

  v45 = v100;
  (*(v15 + 16))(v100, v44, v14);
  outlined destroy of TaskPriority?(v44, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  v46 = v104;
  Locale.Language.languageCode.getter();
  v47 = *(v15 + 8);
  (v47)(v45, v14);
  v48 = type metadata accessor for Locale.LanguageCode();
  v49 = v14;
  v50 = *(v48 - 8);
  if ((*(v50 + 48))(v46, 1, v48) == 1)
  {
    outlined destroy of TaskPriority?(v46, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
    v14 = v49;
    (v47)(v42, v49);
    goto LABEL_20;
  }

  v105 = v47;
  Locale.LanguageCode.identifier.getter();
  (*(v50 + 8))(v46, v48);

  (v105)(v42, v49);
LABEL_21:
  v105 = *v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd_0, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EE0;
  *(inited + 32) = NSFontAttributeName;
  v104 = (inited + 32);
  v52 = 200;
  if (v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
  {
    v52 = 224;
  }

  v53 = *&v20[v52];
  v54 = type metadata accessor for UIAction(0, &_sSo6UIFontCML_1, UIFont_ptr);
  *(inited + 40) = v53;
  v110 = v3;
  *(inited + 64) = v54;
  *(inited + 72) = NSParagraphStyleAttributeName;
  v55 = type metadata accessor for UIAction(0, &_sSo23NSMutableParagraphStyleCML_0, NSMutableParagraphStyle_ptr);
  v56 = v111;
  *(inited + 80) = v111;
  *(inited + 104) = v55;
  *(inited + 112) = NSForegroundColorAttributeName;
  v57 = objc_opt_self();
  v58 = v53;

  v59 = NSFontAttributeName;
  v60 = NSParagraphStyleAttributeName;
  v61 = v110;
  v111 = v56;
  v62 = NSForegroundColorAttributeName;
  v63 = [v57 whiteColor];
  v64 = type metadata accessor for UIAction(0, &_sSo7UIColorCML_1, UIColor_ptr);
  *(inited + 120) = v63;
  *(inited + 144) = v64;
  *(inited + 152) = NSLanguageIdentifierAttributeName;
  v65 = v108;
  outlined init with copy of TaskPriority?(&v61[v107], v108, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  if (v109(v65, 1, v49))
  {
    v66 = NSLanguageIdentifierAttributeName;
    v67 = &_s10Foundation6LocaleV8LanguageVSgMd_0;
    v68 = &_s10Foundation6LocaleV8LanguageVSgMR_0;
LABEL_27:
    outlined destroy of TaskPriority?(v65, v67, v68);
    v74 = (inited + 160);
    *(inited + 184) = &type metadata for String;
LABEL_28:
    *v74 = 0;
    v75 = 0xE000000000000000;
    goto LABEL_29;
  }

  v69 = v103;
  v70 = v101;
  (*(v103 + 16))(v101, v65, v49);
  v71 = NSLanguageIdentifierAttributeName;
  outlined destroy of TaskPriority?(v65, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  v65 = v102;
  Locale.Language.languageCode.getter();
  (*(v69 + 8))(v70, v49);
  v72 = type metadata accessor for Locale.LanguageCode();
  v73 = *(v72 - 8);
  if ((*(v73 + 48))(v65, 1, v72) == 1)
  {
    v67 = &_s10Foundation6LocaleV12LanguageCodeVSgMd_0;
    v68 = &_s10Foundation6LocaleV12LanguageCodeVSgMR_0;
    goto LABEL_27;
  }

  v98 = Locale.LanguageCode.identifier.getter();
  v75 = v99;
  (*(v73 + 8))(v65, v72);
  v74 = (inited + 160);
  *(inited + 184) = &type metadata for String;
  if (!v75)
  {
    goto LABEL_28;
  }

  *v74 = v98;
LABEL_29:
  *(inited + 168) = v75;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd_0, &_sSo21NSAttributedStringKeya_yptMR_0);
  swift_arrayDestroy();
  v76 = objc_allocWithZone(NSAttributedString);
  v77 = String._bridgeToObjectiveC()();

  _sSo21NSAttributedStringKeyaMa_1(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo21NSAttributedStringKeyaABSHSCWL_1, _sSo21NSAttributedStringKeyaMa_1, &_sSo21NSAttributedStringKeyaSHSCMc_1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v79 = [v76 initWithString:v77 attributes:isa];

  v80 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager;
  v81 = *&v61[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager];
  if (v81)
  {
    v82 = v81[3];

    v83 = [v82 attributedString];
    if (!v83 || (v84 = v83, type metadata accessor for UIAction(0, &_sSo18NSAttributedStringCML_0, NSAttributedString_ptr), v85 = v79, v86 = static NSObject.== infix(_:_:)(), v84, v85, v87 = v81, (v86 & 1) == 0))
    {
      v87 = v81;
      (*(*v81 + 176))(v79);
    }
  }

  else
  {
    type metadata accessor for TextKitManager();
    swift_allocObject();
    TextKitManager.init(text:size:)(v79, a1);
    v87 = v88;
    *&v61[v80] = v88;
    swift_retain_n();
  }

  v89 = *(*v87 + 112);

  v91 = v89(v90);

  [v91 size];
  v93 = v92;

  if (v93 == a1)
  {
  }

  else
  {
    (*(*v87 + 184))(a1, a2);
    v94 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);

    v95 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v96 = v110;
    swift_beginAccess();
    *&v96[v95] = v94;
  }

  return v87;
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(char a1, char a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
  v11 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v11)
  {
    v12 = *(v11 + 48);
    v13 = *(v11 + 56);
  }

  else
  {
    v13 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
    v12 = 0;
  }

  v153 = v12;
  v154 = v13;
  v151 = 0;
  v152 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
  v132 = v10;
  if (a2)
  {
    goto LABEL_48;
  }

  v14 = *(v5 + v10);
  if (!v14)
  {
    goto LABEL_48;
  }

  v15 = v14[3];
  *&v137[0] = v14[2];
  *(&v137[0] + 1) = v15;
  v140 = 10;
  v141 = 0xE100000000000000;
  v138 = 0;
  v139 = 0xE000000000000000;
  _sS2SSysWl_2();

  if (StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)() == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text) && v16 == *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8))
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
      v22 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
      swift_beginAccess();
      *(v5 + v22) = v21;

      SyncedLyricsLineView.TextContainer.destroyViews()();

      *(v5 + v10) = 0;

      v153 = 0;
      v154 = _swiftEmptyArrayStorage;
      goto LABEL_48;
    }
  }

  v18 = v14[5];
  v19 = *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8);
  if (v18)
  {
    if (!v19 || (v14[4] != *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText) || v18 != v19) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_17:
    if ((a1 & 1) == 0)
    {
      SyncedLyricsLineView.SBS_TextContentView.TextView.updateTranslationLabel(size:forceLayout:)(a1 & 1, a3);

      goto LABEL_84;
    }

    goto LABEL_19;
  }

  if (!v19)
  {
    goto LABEL_17;
  }

LABEL_19:
  v20 = v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata;
  swift_beginAccess();
  if (*(v20 + 8))
  {

    goto LABEL_48;
  }

  v126 = v20;
  v127 = v13;
  v128 = v12;
  v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v129 = v14;
  v24 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  swift_beginAccess();
  *(v5 + v24) = v23;
  v25 = v129;

  v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX06SyncedC8LineViewC0E0C_ShyAE4WordCGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v27 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX06SyncedC8LineViewC0E0C_So6CGRectVTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v28 = v129[7];
  v130 = *(v28 + 16);
  if (!v130)
  {
    goto LABEL_47;
  }

  v125 = v5;

  v29 = 0;
  while (1)
  {
    if (v29 >= *(v28 + 16))
    {
      goto LABEL_87;
    }

    v30 = *(v28 + 8 * v29 + 32);
    swift_beginAccess();
    swift_retain_n();

    v33 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC7LyricsX06SyncedB8LineViewC4WordC_SayAHGTt0g5Tf4g_n(v31, v32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v137[0] = v26;
    v36 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
    v37 = v26[2];
    v38 = (v35 & 1) == 0;
    v39 = v37 + v38;
    if (__OFADD__(v37, v38))
    {
      break;
    }

    v40 = v35;
    if (v26[3] >= v39)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v26 = *&v137[0];
        if ((v35 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v26 = *&v137[0];
        if ((v40 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
      v41 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
      if ((v40 & 1) != (v42 & 1))
      {
        goto LABEL_91;
      }

      v36 = v41;
      v26 = *&v137[0];
      if ((v40 & 1) == 0)
      {
LABEL_31:
        specialized _NativeDictionary._insert(at:key:value:)(v36, v30, v33, v26);
        goto LABEL_35;
      }
    }

    *(v26[7] + 8 * v36) = v33;

LABEL_35:
    v133 = *(v30 + 80);
    v135 = *(v30 + 96);

    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v137[0] = v27;
    v44 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
    v46 = v27[2];
    v47 = (v45 & 1) == 0;
    v48 = __OFADD__(v46, v47);
    v49 = v46 + v47;
    if (v48)
    {
      goto LABEL_89;
    }

    v50 = v45;
    if (v27[3] < v49)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, v43);
      v44 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
      if ((v50 & 1) != (v51 & 1))
      {
        goto LABEL_91;
      }

LABEL_40:
      v27 = *&v137[0];
      if (v50)
      {
        goto LABEL_41;
      }

      goto LABEL_24;
    }

    if (v43)
    {
      goto LABEL_40;
    }

    v53 = v44;
    specialized _NativeDictionary.copy()();
    v44 = v53;
    v27 = *&v137[0];
    if (v50)
    {
LABEL_41:
      v52 = (v27[7] + 32 * v44);
      *v52 = v133;
      v52[1] = v135;

      goto LABEL_25;
    }

LABEL_24:
    specialized _NativeDictionary._insert(at:key:value:)(v44, v30, v27, *&v133, *(&v133 + 1), *&v135, *(&v135 + 1));
LABEL_25:
    ++v29;

    if (v130 == v29)
    {

      v5 = v125;
      v25 = v129;
LABEL_47:

      v54 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
      v55 = v25[5];
      v136 = v25[4];

      v134 = *(v25 + 5);
      v131 = *(v25 + 4);

      v56 = *(v126 + 48);
      v137[2] = *(v126 + 32);
      v137[3] = v56;
      v57 = *(v126 + 80);
      v137[4] = *(v126 + 64);
      v137[5] = v57;
      v58 = *(v126 + 16);
      v137[0] = *v126;
      v137[1] = v58;
      *v126 = v128;
      *(v126 + 8) = v127;
      *(v126 + 16) = v26;
      *(v126 + 24) = v27;
      *(v126 + 32) = 0;
      *(v126 + 40) = v54;
      *(v126 + 48) = v131;
      *(v126 + 64) = v134;
      *(v126 + 80) = v136;
      *(v126 + 88) = v55;
      outlined destroy of TaskPriority?(v137, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C0F18LayoutDiffMetadataVSgMR);
LABEL_48:
      v150 = 0;
      v148 = Int.seconds.getter(0);
      v149 = v148;
      v146 = 0;
      v147 = 0;
      if (*(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords))
      {

        _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX0F0C4WordV_SayAKGTt0g5(v59);
        v146 = v60;
        v147 = v61;
      }

      v145 = 0;
      v62 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(_swiftEmptyArrayStorage, specialized Array._copyContents(initializing:));
      v143 = 0;
      v144 = v62;
      v142 = _swiftEmptyArrayStorage;
      v63 = v5;
      v64 = SyncedLyricsLineView.SBS_TextContentView.TextView.updatedTextKitManager(with:)(a3, a4);
      v65 = [v64[2] usageBoundsForTextContainer];
      v67 = v66;
      MaxY = v68;
      v70 = (*(*v64 + 24))(v65);
      v71 = (v70 + 80);
      v72 = -*(v70 + 16);
      v73 = -1;
      while (v72 + v73 != -1)
      {
        if (++v73 >= *(v70 + 16))
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          goto LABEL_88;
        }

        v74 = *(v71 - 5);
        v75 = *(v71 - 4);
        v76 = *(v71 - 3);
        v77 = *(v71 - 2);
        v78 = *(v71 - 1);
        v79 = *v71;
        v80 = *(v71 - 6);
        v81 = [v80 lineRef];
        if (!v81)
        {
          goto LABEL_90;
        }

        v82 = v81;
        v71 += 7;
        specialized closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(v80, v81, v78, v79, 0, &v149, v63, &v153, v74, v75, v76, v77, a3, a4, &v143, &v150, &v142, &v146, &v148, &v145, &v151);
        v84 = v83;

        if ((v84 & 1) == 0)
        {

          outlined consume of NoticeDismissal?(v146, v147);

          goto LABEL_84;
        }
      }

      v85 = v63;
      v86 = (v63 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
      if (*(v63 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
      {
        swift_beginAccess();
        if (v148 > v67)
        {
          v87 = v148;
        }

        else
        {
          v87 = v67;
        }

        v88 = v132;
        if (*(v63 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) == 2)
        {
          swift_beginAccess();
          v89 = v144;
          v90 = v144[2];
          if (v90)
          {
            v91 = 0;
            v92 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
            do
            {
              if (v91 >= v89[2])
              {
                goto LABEL_86;
              }

              v93 = v89[v91 + 4];
              if (*(v93 + 56) == 1)
              {
                v94 = *(v93 + 58) ^ v85[v92];
                v95 = *(v93 + 104);
                if (!v85[v92])
                {
                  goto LABEL_71;
                }
              }

              else
              {
                v94 = 0;
                v95 = *(v93 + 104);
                if (!v85[v92])
                {
                  goto LABEL_71;
                }
              }

              if (v94)
              {
LABEL_71:
                v96 = *(v93 + 88);
                v98 = *(v93 + 96);
                v99 = v87 - v98;
                v97 = *(v93 + 80);
                goto LABEL_72;
              }

              v97 = *(v93 + 80);
              v96 = *(v93 + 88);
              v98 = *(v93 + 96);
              v99 = v87 - v67 + v97;
LABEL_72:
              *(v93 + 80) = v99;
              v100 = v96;
              v101 = v98;
              v102 = v95;
              if (!CGRectEqualToRect(*(&v95 - 3), *&v97))
              {
                *(v93 + 128) = 0;
              }

              ++v91;
            }

            while (v90 != v91);
          }
        }

        swift_beginAccess();
        v103 = v144[2];
        if (v103)
        {
          v104 = v144[v103 + 3];

          if (v104)
          {
            MaxY = CGRectGetMaxY(*(v104 + 80));

            v67 = v87;
          }
        }

        v105 = *&v85[v132];
        if (v105)
        {
LABEL_78:
          v106 = v105[8];
          v107 = v105[9];
          v108 = v105[10];
          v109 = v105[11];
          v110 = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
          v105[2] = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
          *(v105 + 3) = v110;

          v111 = *(v86 + 1);
          v105[4] = *v86;
          *(v105 + 5) = v111;

          swift_beginAccess();
          v112 = v144;
          *(v105 + 6) = v143;
          *(v105 + 7) = v112;

          v105[8] = 0.0;
          v105[9] = 0.0;
          v105[10] = v67;
          v105[11] = MaxY;
          v156.origin.x = 0.0;
          v156.origin.y = 0.0;
          v155.origin.x = v106;
          v155.origin.y = v107;
          v155.size.width = v108;
          v155.size.height = v109;
          v156.size.width = v67;
          v156.size.height = MaxY;
          v113 = CGRectEqualToRect(v155, v156);
          SyncedLyricsLineView.SBS_TextContentView.TextView.updateTranslationLabel(size:forceLayout:)(!v113, a3);

          goto LABEL_81;
        }
      }

      else
      {
        v88 = v132;
        v105 = *(v63 + v132);
        if (v105)
        {
          goto LABEL_78;
        }
      }

      v114 = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
      v115 = *&v85[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
      v116 = *v86;
      v117 = *(v86 + 1);
      swift_beginAccess();
      v118 = v143;
      v119 = v144;
      type metadata accessor for SyncedLyricsLineView.TextContainer();
      v120 = swift_allocObject();
      *(v120 + 96) = 0;
      *(v120 + 16) = v114;
      *(v120 + 24) = v115;
      *(v120 + 32) = v116;
      *(v120 + 40) = v117;
      *(v120 + 48) = v118;
      *(v120 + 56) = v119;
      *(v120 + 64) = 0;
      *(v120 + 72) = 0;
      *(v120 + 80) = v67;
      *(v120 + 88) = MaxY;
      *&v85[v88] = v120;

      SyncedLyricsLineView.SBS_TextContentView.TextView.updateTranslationLabel(size:forceLayout:)(1, a3);
LABEL_81:
      v122 = SyncedLyricsLineView.SBS_TextContentView.TextView.textLayoutDiffMetadata.modify(v137);
      if (*(v121 + 8))
      {
        v123 = v121;
        swift_beginAccess();
        v124 = v152;
        *(v123 + 32) = v151;
        *(v123 + 40) = v124;
      }

      (v122)(v137, 0);
      [v85 setNeedsLayout];

      outlined consume of NoticeDismissal?(v146, v147);

LABEL_84:

      return;
    }
  }

LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  type metadata accessor for SyncedLyricsLineView.Line();
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX06SyncedF8LineViewC0H0C_SayAKGTt0g5(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm = _s19CollectionsInternal10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm(&v32, a1, 0, 1, v5, partial apply for specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:), specialized Array._copyContents(initializing:), v6);
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v32;
  if (v32 == v9)
  {
    _ss15ContiguousArrayVyAByxGqd__c7ElementQyd__RszSTRd__lufC7LyricsX06SyncedD8LineViewC0F0C_SayAJGTt0g5Tm(a1, specialized Array._copyContents(initializing:));
    return DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm;
  }

  if (v32 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v8)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_52;
    }

    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < v10)
  {
    goto LABEL_48;
  }

  v12 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v10)
  {
    type metadata accessor for SyncedLyricsLineView.Line();

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v13);
      v13 = v14;
    }

    while (v10 != v14);
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = _CocoaArrayWrapper.subscript.getter();
    i = v16;
    v3 = v17;
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v8)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v10) | 1;
LABEL_23:
  v30 = v15;
  v31 = a1 & 0xC000000000000001;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v20 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v12 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v18)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v33 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm;
    v34 = i;
    if (v9 < v10)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v8)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < v9)
    {
      goto LABEL_50;
    }

    if (!v12)
    {

      goto LABEL_41;
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v15 = v30;
    v12 = v31;
LABEL_22:
    specialized _copyCollectionToContiguousArray<A>(_:)(v1, v15, i, v3, type metadata accessor for SyncedLyricsLineView.Line);
  }

  type metadata accessor for SyncedLyricsLineView.Line();

  v22 = v10;
  do
  {
    v23 = v22 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v22);
    v22 = v23;
  }

  while (v9 != v23);
LABEL_41:

  if (v8)
  {
    _CocoaArrayWrapper.subscript.getter();
    v24 = v26;
    v10 = v27;
    v25 = v28;
  }

  else
  {
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v9) | 1;
  }

  specialized OrderedSet.append<A>(contentsOf:)(v24, v10, v25);
  swift_unknownObjectRelease();

  return v33;
}

uint64_t _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX06SyncedF8LineViewC4WordC_SayAKGTt0g5(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm = _s19CollectionsInternal10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm(&v32, a1, 0, 1, v5, partial apply for specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(untilFirstDuplicateIn:), specialized Array._copyContents(initializing:), v6);
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v32;
  if (v32 == v9)
  {
    _ss15ContiguousArrayVyAByxGqd__c7ElementQyd__RszSTRd__lufC7LyricsX06SyncedD8LineViewC0F0C_SayAJGTt0g5Tm(a1, specialized Array._copyContents(initializing:));
    return DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm;
  }

  if (v32 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v8)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_52;
    }

    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < v10)
  {
    goto LABEL_48;
  }

  v12 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v10)
  {
    type metadata accessor for SyncedLyricsLineView.Word();

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v13);
      v13 = v14;
    }

    while (v10 != v14);
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = _CocoaArrayWrapper.subscript.getter();
    i = v16;
    v3 = v17;
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v8)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v10) | 1;
LABEL_23:
  v30 = v15;
  v31 = a1 & 0xC000000000000001;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v20 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v12 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v18)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v33 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX06SyncedQ8LineViewC0S0CG_Tt3g5Tm;
    v34 = i;
    if (v9 < v10)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v8)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < v9)
    {
      goto LABEL_50;
    }

    if (!v12)
    {

      goto LABEL_41;
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v15 = v30;
    v12 = v31;
LABEL_22:
    specialized _copyCollectionToContiguousArray<A>(_:)(v1, v15, i, v3, type metadata accessor for SyncedLyricsLineView.Word);
  }

  type metadata accessor for SyncedLyricsLineView.Word();

  v22 = v10;
  do
  {
    v23 = v22 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v22);
    v22 = v23;
  }

  while (v9 != v23);
LABEL_41:

  if (v8)
  {
    _CocoaArrayWrapper.subscript.getter();
    v24 = v26;
    v10 = v27;
    v25 = v28;
  }

  else
  {
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v9) | 1;
  }

  specialized OrderedSet.append<A>(contentsOf:)(v24, v10, v25);
  swift_unknownObjectRelease();

  return v33;
}

void _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX0F0C4WordV_SayAKGTt0g5(uint64_t a1)
{
  v2 = static MPMediaLibraryFilteringOptions.none.getter();
  DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX0Q0C4WordVG_Tt3g5 = _s19CollectionsInternal10_HashTableV6create21untilFirstDuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX0Q0C4WordVG_Tt3g5(&v20, a1, 0, 1, v2, v3);
  v5 = *(a1 + 16);
  v6 = v20;
  if (v20 != v5)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (v5 < v20)
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      specialized _copyCollectionToContiguousArray<A>(_:)(a1, a1 + 32, 0, (2 * v20) | 1);
      v21 = DuplicateIn5scale13reservedScaleACSg04hashD0_5IndexQz3endtx_SiSgSitSkRzSH7ElementRpzlFZSay7LyricsX0Q0C4WordVG_Tt3g5;
      v22 = v7;
      if (*(a1 + 16) >= v5)
      {

        for (i = a1 + 56 * v6 + 48; ; i += 56)
        {
          if (v6 >= v5)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

          v9 = *(i + 16);
          v24 = *i;
          v25 = v9;
          v23 = *(i - 16);
          v26 = *(i + 32);
          v27 = v24;
          v28 = v9;
          v10 = v21;
          v11 = v22;
          v12 = *(v22 + 16);
          if (v21)
          {
            outlined init with copy of String(&v27, v19);
            outlined init with copy of TaskPriority?(&v28, v19, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);

            specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v23, v11 + 32, v12, (v10 + 16), v10 + 32);
            v14 = v13;
            v16 = v15;

            if ((v14 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            specialized UnsafeBufferPointer<A>._firstIndex(of:)(v23.n128_f64, v22 + 32, v12);
            v18 = v17;
            outlined init with copy of String(&v27, v19);
            outlined init with copy of TaskPriority?(&v28, v19, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
            if ((v18 & 1) == 0)
            {
              goto LABEL_7;
            }

            v16 = 0;
          }

          specialized OrderedSet._appendNew(_:in:)(&v23, v16);
LABEL_7:
          ++v6;
          outlined destroy of String(&v27);
          outlined destroy of TaskPriority?(&v28, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
          if (v5 == v6)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(void *a1, uint64_t a2, CFIndex a3, NSObject *a4, char a5, double *a6, int64_t a7, uint64_t a8, double a9, double a10, double MaxX, double y, double a13, CGFloat a14, uint64_t a15, uint64_t *a16, unint64_t *a17, uint64_t *a18, double *a19, void *a20, uint64_t a21)
{
  rect = *&a17;
  swift_beginAccess();
  v207 = a6;
  width = *a6 + a10;
  v214 = a7;
  v210 = (a7 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);

  v33 = String._bridgeToObjectiveC()();

  v211 = a1;
  v34 = [a1 characterRange];
  v36 = [v33 substringWithRange:{v34, v35}];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v222 = v37;
  v223 = v39;
  v220 = 10;
  v221 = 0xE100000000000000;
  v218 = 0;
  v219 = 0xE000000000000000;
  v184 = _sS2SSysWl_2();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v40 = String.trim()();

  swift_beginAccess();
  v41 = *(a8 + 8);
  v42 = *(v41 + 16);
  swift_beginAccess();
  v43 = 32;
  while (v42)
  {
    v44 = *(v41 + v43);
    if (*(*(a15 + 8) + 16))
    {
      if (*(v44 + 24) != v40._countAndFlagsBits || *(v44 + 32) != v40._object)
      {
        v43 += 8;
        --v42;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }
    }

    swift_beginAccess();

    v46 = swift_retain_n();
    specialized OrderedSet.remove(_:)(v46);
    swift_endAccess();

    goto LABEL_11;
  }

  v44 = 0;
LABEL_11:
  [v211 boundsWithType:0 options:{0, &type metadata for String, v184, v184, v184}];
  MinX = v47;
  v50 = v49;
  v51 = v214;
  v52 = *(v214 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
  v54 = *v210;
  v53 = v210[1];
  swift_beginAccess();
  v55 = *a16;
  v209 = a5;
  v204 = a3;
  if (a5)
  {
    v56 = 0;
  }

  else
  {
    v56 = a3;
  }

  if (v44)
  {
    swift_beginAccess();
    v57 = *(v44 + 16);
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
  }

  specialized SyncedLyricsLineView.SBS_TextContentView.TextView.wordVisualRepresentations(for:lineFrame:typographicOrigin:lyricsWords:text:wordRangeAdjustment:lineStartingIndex:existingRepresentations:)(a9, width, MaxX, y, MinX, v50, a2, v52, v54, v53, v55, v56, v57);
  v59 = v58;
  v61 = v60;

  swift_beginAccess();
  *a17 = v59;

  v62 = a16;
  swift_beginAccess();
  *a16 = v61;
  v217 = _swiftEmptyArrayStorage;
  v63 = String.lowercased()();
  v64 = v214 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText;
  if (*(v214 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    v65 = String.lowercased()();
    if (v63._countAndFlagsBits == v65._countAndFlagsBits && v63._object == v65._object)
    {

LABEL_133:
      v67 = _swiftEmptyArrayStorage;
LABEL_134:
      if (*(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) != 2)
      {
        goto LABEL_196;
      }

      v79 = *(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager);
      if (*&v79 == 0.0)
      {
        goto LABEL_196;
      }

      v81 = width;
      v195 = y;
      v132 = *(v79 + 16);

      [v132 usageBoundsForTextContainer];
      x = v230.origin.x;
      y = v230.origin.y;
      width = v230.size.width;
      height = v230.size.height;
      MinX = CGRectGetWidth(v230);
      if ((v59 & 0x8000000000000000) != 0 || (v59 & 0x4000000000000000) != 0)
      {
LABEL_164:
        v133 = _CocoaArrayWrapper.endIndex.getter();
        if (!v133)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v133 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v133)
        {
LABEL_146:
          if (vabdd_f64(a13, MinX) < 1.0)
          {
            y = v195;
            width = v81;
            goto LABEL_195;
          }

          goto LABEL_180;
        }
      }

      v88 = __OFSUB__(v133, 1);
      v134 = v133 - 1;
      if (v88)
      {
        goto LABEL_169;
      }

      if ((v59 & 0xC000000000000001) != 0)
      {
        goto LABEL_170;
      }

      if ((v134 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v134 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v135 = *(v59 + 8 * v134 + 32);

        goto LABEL_144;
      }

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
      goto LABEL_178;
    }

    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v66)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  if (!*(v64 + 8))
  {
    goto LABEL_133;
  }

  swift_beginAccess();
  v67 = _swiftEmptyArrayStorage;
  v196 = a18[1];
  if (!v196)
  {
    goto LABEL_134;
  }

  v68 = *a18;
  v197 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v187 = *(v214 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection);
  if (v187 == 2)
  {

    outlined copy of NoticeDismissal?(v68, v196);

    goto LABEL_133;
  }

  swift_beginAccess();
  v69 = v68;
  v70 = *a17;

  v185 = v69;
  outlined copy of NoticeDismissal?(v69, v196);

  v71 = a3;
  v72 = a4;
  if (v209)
  {
    v71 = CTLineRef.stringRange.getter();
    v72 = v73;
  }

  swift_beginAccess();
  SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:)(v185, v196, v70, v59, v71, v72, *a16, &v222, a13, a14);

  v74 = v223;
  if (!v223)
  {

    SyncedLyricsLineView.SBS_TextContentView.TextView.prepareVisualRepresentations(size:forceLayout:resetFlow:)(0, 1, a13, a14);

    return;
  }

  if (v223 == 1)
  {

    goto LABEL_133;
  }

  MinX = v225;
  v75 = v224;
  v76 = v222;
  swift_beginAccess();
  v67 = *a18;
  v77 = a18[1];
  *a18 = v76;
  a18[1] = v74;

  outlined consume of NoticeDismissal?(v67, v77);
  v194 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment;
  if (!*(v214 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) || *(v214 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == (v187 & 1))
  {
    MaxX = MinX + MaxX;
  }

  v78 = *(v75 + 16);
  if (!v78)
  {

    outlined destroy of TaskPriority?(&v222, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLOSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLOSgMR);
    goto LABEL_133;
  }

  v189 = v78 != 1;
  v193 = v214 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v186 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
  v192 = v75 + 32;
  swift_beginAccess();
  v79 = a19;
  swift_beginAccess();
  swift_beginAccess();
  v80 = 0;
  v81 = a9;
  v188 = width;
  x = width;
  rect = MaxX;
  height = y;
  v190 = v78;
  v191 = v75;
  v195 = y;
  while (1)
  {
    if (v80 >= *(v75 + 16))
    {
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v84 = (v192 + 16 * v80);
    v79 = *v84;
    v85 = v84[1];

    v203 = v85;
    v226.origin.x = CTLineRef.bounds.getter();
    width = CGRectGetHeight(v226) + *(v193 + 328);
    *v207 = *v207 + width;
    v86 = v79 >> 62;
    if (*(v51 + v194) != 2 || *(v51 + v186) == (v187 & 1))
    {
LABEL_52:
      v228.origin.x = a9;
      v228.origin.y = v188;
      v228.size.width = MaxX;
      v228.size.height = y;
      MinX = CGRectGetMinX(v228);
      v229.origin.x = v81;
      v229.origin.y = x;
      v229.size.width = rect;
      v229.size.height = height;
      x = CGRectGetMaxY(v229);
      height = MinX;
      rect = MaxX;
      goto LABEL_53;
    }

    if (v86)
    {
      v87 = _CocoaArrayWrapper.endIndex.getter();
      if (!v87)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v87 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v87)
      {
        goto LABEL_52;
      }
    }

    v88 = __OFSUB__(v87, 1);
    v89 = v87 - 1;
    if (v88)
    {
      goto LABEL_173;
    }

    if ((v79 & 0xC000000000000001) != 0)
    {
      v90 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v89 & 0x8000000000000000) != 0)
      {
        goto LABEL_174;
      }

      if (v89 >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_175;
      }

      v90 = *(v79 + 8 * v89 + 32);
    }

    MinX = CGRectGetMaxX(*(v90 + 176));
    v227.origin.x = v81;
    v227.origin.y = x;
    v227.size.width = rect;
    v227.size.height = height;
    x = CGRectGetMaxY(v227);

    if (*a19 < MinX)
    {
      *a19 = MinX;
    }

    height = a13 - MinX;
    rect = MinX;
    y = v195;
LABEL_53:
    v216[0] = v79;
    v91 = *(v51 + v197);
    v202 = v80;
    if (v91 == 2)
    {

      v92 = v79;
    }

    else
    {

      v92 = v79;
      if (v91)
      {
        specialized MutableCollection<>.reverse()();
        v92 = v216[0];
      }
    }

    if (v92 >> 62)
    {
      break;
    }

    if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_59;
    }

LABEL_76:

    v96 = 0;
    v100 = 0;
LABEL_77:
    v101 = String._bridgeToObjectiveC()();
    v200 = v96;
    v201 = v100;
    v67 = [v101 substringWithRange:{v100, v96}];

    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v198 = v103;
    v199 = v102;

    type metadata accessor for SyncedLyricsLineView.Line();
    v51 = swift_allocObject();
    *(v51 + 112) = 0;
    *(v51 + 120) = 0;
    *(v51 + 128) = 0;
    *(v51 + 16) = *&v79;
    if (v86)
    {
      v104 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v104 = *((v79 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v105 = _swiftEmptyArrayStorage;
    v106 = v104 & ~(v104 >> 63);
    if (v104)
    {
      v215[0] = _swiftEmptyArrayStorage;

      _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(0, v104 & ~(v104 >> 63), 0);
      if (v104 < 0)
      {
        goto LABEL_162;
      }

      v105 = v215[0];
      if ((v79 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v104; ++i)
        {
          v108 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
          if (*(v108 + 16))
          {
            v109 = *(v108 + 32);
          }

          else
          {
            v109 = 0;
          }

          swift_unknownObjectRelease();
          v215[0] = v105;
          v111 = *(v105 + 2);
          v110 = *(v105 + 3);
          if (v111 >= v110 >> 1)
          {
            _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v110 > 1), v111 + 1, 1);
            v105 = v215[0];
          }

          *(v105 + 2) = v111 + 1;
          *&v105[8 * v111 + 32] = v109;
        }
      }

      else
      {
        v112 = v79 + 32;
        v113 = v104;
        do
        {
          v114 = *(*v112 + 48);
          if (*(v114 + 16))
          {
            v115 = *(v114 + 32);
          }

          else
          {
            v115 = 0;
          }

          v215[0] = v105;
          v117 = *(v105 + 2);
          v116 = *(v105 + 3);
          if (v117 >= v116 >> 1)
          {
            _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v116 > 1), v117 + 1, 1);
            v105 = v215[0];
          }

          *(v105 + 2) = v117 + 1;
          *&v105[8 * v117 + 32] = v115;
          v112 += 8;
          --v113;
        }

        while (v113);
      }

      v62 = a16;
      v106 = v104 & ~(v104 >> 63);
    }

    else
    {
    }

    v215[0] = v105;

    v67 = 0;
    specialized MutableCollection<>.sort(by:)(v215);

    if (*(v215[0] + 2))
    {
      MinX = *(v215[0] + 4);
    }

    else
    {
      MinX = 0.0;
    }

    *(v51 + 64) = MinX;
    if (v104)
    {
      v215[0] = _swiftEmptyArrayStorage;
      _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(0, v106, 0);
      if (v104 < 0)
      {
        goto LABEL_163;
      }

      v118 = v215[0];
      if ((v79 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v104; ++j)
        {
          v120 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
          v121 = *(v120 + 16);
          if (v121)
          {
            v122 = *(v120 + 56 * v121 - 16);
          }

          else
          {
            v122 = 0;
          }

          swift_unknownObjectRelease();
          v215[0] = v118;
          v124 = *(v118 + 2);
          v123 = *(v118 + 3);
          if (v124 >= v123 >> 1)
          {
            _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v123 > 1), v124 + 1, 1);
            v118 = v215[0];
          }

          *(v118 + 2) = v124 + 1;
          *&v118[8 * v124 + 32] = v122;
        }
      }

      else
      {
        v125 = v79 + 32;
        do
        {
          v126 = *(*v125 + 48);
          v127 = *(v126 + 16);
          if (v127)
          {
            v128 = *(v126 + 56 * v127 - 16);
          }

          else
          {
            v128 = 0;
          }

          v215[0] = v118;
          v130 = *(v118 + 2);
          v129 = *(v118 + 3);
          if (v130 >= v129 >> 1)
          {
            _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v129 > 1), v130 + 1, 1);
            v118 = v215[0];
          }

          *(v118 + 2) = v130 + 1;
          *&v118[8 * v130 + 32] = v128;
          v125 += 8;
          --v104;
        }

        while (v104);
      }

      v62 = a16;
    }

    else
    {
      v118 = _swiftEmptyArrayStorage;
    }

    v215[0] = v118;

    specialized MutableCollection<>.sort(by:)(v215);
    v75 = v191;

    v131 = *(v215[0] + 2);
    if (v131)
    {
      MinX = *&v215[0][8 * v131 + 24];
    }

    else
    {
      MinX = 0.0;
    }

    v67 = v199;

    *(v51 + 24) = v199;
    *(v51 + 32) = v198;
    *(v51 + 40) = v201;
    *(v51 + 48) = v200;
    *(v51 + 72) = MinX;
    *(v51 + 80) = height;
    v81 = height;
    *(v51 + 88) = x;
    *(v51 + 96) = rect;
    *(v51 + 104) = width;
    *(v51 + 56) = 1;
    *(v51 + 57) = v189;
    *(v51 + 58) = v187 & 1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v217 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v217 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v67 = *((v217 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v80 = v202 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    height = width;
    v51 = v214;
    if (v202 + 1 == v190)
    {
      v67 = v217;

      outlined destroy of TaskPriority?(&v222, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLOSgMd, &_s7LyricsX06SyncedA8LineViewC015SBS_TextContentD0C0fD0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLOSgMR);
      width = v188;
      goto LABEL_134;
    }
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_76;
  }

LABEL_59:
  v67 = v92 & 0xC000000000000001;
  if ((v92 & 0xC000000000000001) != 0)
  {
    v93 = v62;

    v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_161;
    }

    v93 = v62;
    v51 = *(v92 + 32);
  }

  v62 = *(v51 + 88);
  if (!(v92 >> 62))
  {
    v94 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v94)
    {
      goto LABEL_64;
    }

LABEL_68:

    v96 = 0;
LABEL_74:
    v100 = v62;
    v62 = v93;
    v86 = v79 >> 62;
    goto LABEL_77;
  }

  v94 = _CocoaArrayWrapper.endIndex.getter();
  if (!v94)
  {
    goto LABEL_68;
  }

LABEL_64:
  v88 = __OFSUB__(v94, 1);
  v95 = v94 - 1;
  if (!v88)
  {
    if (v67)
    {
      v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v95 & 0x8000000000000000) != 0)
      {
        goto LABEL_176;
      }

      if (v95 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_177;
      }

      v67 = *(v92 + 8 * v95 + 32);
    }

    v97 = *(v67 + 88);
    v98 = *(v67 + 96);

    v88 = __OFADD__(v97, v98);
    v99 = v97 + v98;
    if (v88)
    {
      goto LABEL_167;
    }

    v67 = *(v51 + 88);

    v96 = v99 - v67;
    if (__OFSUB__(v99, v67))
    {
      goto LABEL_168;
    }

    goto LABEL_74;
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  v135 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_144:
  if (vabdd_f64(CGRectGetMaxX(*(v135 + 176)), MaxX) < 1.0)
  {

    goto LABEL_146;
  }

  MaxX = CGRectGetMaxX(*(v135 + 176));
  if (v67 >> 62)
  {
LABEL_178:
    v136 = _CocoaArrayWrapper.endIndex.getter();
    if (!v136)
    {
      goto LABEL_179;
    }

LABEL_150:
    rect = *&v79;
    if (v136 < 1)
    {
      goto LABEL_266;
    }

    v137 = 0;
    v138 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
    v139 = v67 & 0xC000000000000001;
    v140 = v67;
    do
    {
      if (v139)
      {
        v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v141 = *(v67 + 8 * v137 + 32);
      }

      if (*(v141 + 58) == *(v214 + v138))
      {
        v231.origin.x = *(v141 + 80);
        v231.origin.y = *(v141 + 88);
        v239.size.width = *(v141 + 96);
        v231.size.height = *(v141 + 104);
        *(v141 + 96) = MaxX;
        v231.size.width = MaxX;
        v239.origin.x = v231.origin.x;
        v239.origin.y = v231.origin.y;
        v239.size.height = v231.size.height;
        if (!CGRectEqualToRect(v231, v239))
        {
          *(v141 + 128) = 0;
        }
      }

      ++v137;
      v67 = v140;
    }

    while (v136 != v137);

    v62 = a16;
    v51 = v214;
    *&v79 = rect;
    goto LABEL_180;
  }

  v136 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v136)
  {
    goto LABEL_150;
  }

LABEL_179:

  v51 = v214;
LABEL_180:
  v232.origin.x = x;
  v232.origin.y = y;
  v232.size.width = width;
  v232.size.height = height;
  v142 = CGRectGetWidth(v232);
  v233.origin.x = a9;
  width = v81;
  v233.origin.y = v81;
  v233.size.width = MaxX;
  y = v195;
  v233.size.height = v195;
  v143 = CGRectGetWidth(v233);
  v234.origin.x = a9;
  v234.origin.y = v81;
  v234.size.width = MaxX;
  v234.size.height = v195;
  v144 = CGRectGetMaxX(v234) - a13;
  if (v144 > 0.0)
  {
    a9 = v144;
  }

  else
  {
    a9 = 0.0;
  }

  MinX = v142 - v143;
  if (v67 >> 62)
  {
    goto LABEL_263;
  }

  v145 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  a9 = MinX + a9;
  if (v145)
  {
    goto LABEL_185;
  }

LABEL_195:
  while (2)
  {
    while (2)
    {

LABEL_196:
      CTLineRef.stringRange.getter();
      v79 = v151;
      v152 = a20;
      swift_beginAccess();
      if (__OFADD__(*a20, v79))
      {
        __break(1u);
        goto LABEL_259;
      }

      *a20 += v79;
      if (!v44)
      {
        v211 = [v211 characterRange];
        rect = v155;
        v152 = *(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction);
        type metadata accessor for SyncedLyricsLineView.Line();
        *&v79 = COERCE_DOUBLE(swift_allocObject());
        *(v79 + 112) = 0;
        *(v79 + 120) = 0;
        *(v79 + 128) = 0;
        *(v79 + 16) = v59;
        if (!(v59 >> 62))
        {
          v62 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_203;
        }

LABEL_259:
        v62 = _CocoaArrayWrapper.endIndex.getter();
LABEL_203:
        v213 = v152;
        v214 = v67;
        if (v62)
        {
          v215[0] = _swiftEmptyArrayStorage;

          _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(0, v62 & ~(v62 >> 63), 0);
          if (v62 < 0)
          {
            goto LABEL_261;
          }

          v156 = v215[0];
          if ((v59 & 0xC000000000000001) != 0)
          {
            for (k = 0; k != v62; ++k)
            {
              v158 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
              if (*(v158 + 16))
              {
                v159 = *(v158 + 32);
              }

              else
              {
                v159 = 0;
              }

              swift_unknownObjectRelease();
              v215[0] = v156;
              v161 = *(v156 + 2);
              v160 = *(v156 + 3);
              if (v161 >= v160 >> 1)
              {
                _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v160 > 1), v161 + 1, 1);
                v156 = v215[0];
              }

              *(v156 + 2) = v161 + 1;
              *&v156[8 * v161 + 32] = v159;
            }
          }

          else
          {
            v169 = v59 + 32;
            v51 = v62;
            do
            {
              v170 = *(*v169 + 48);
              if (*(v170 + 16))
              {
                v171 = *(v170 + 32);
              }

              else
              {
                v171 = 0;
              }

              v215[0] = v156;
              v173 = *(v156 + 2);
              v172 = *(v156 + 3);
              if (v173 >= v172 >> 1)
              {
                _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v172 > 1), v173 + 1, 1);
                v156 = v215[0];
              }

              *(v156 + 2) = v173 + 1;
              *&v156[8 * v173 + 32] = v171;
              v169 += 8;
              --v51;
            }

            while (v51);
          }
        }

        else
        {

          v156 = _swiftEmptyArrayStorage;
        }

        v215[0] = v156;

        v67 = 0;
        specialized MutableCollection<>.sort(by:)(v215);

        if (*(v215[0] + 2))
        {
          MinX = *(v215[0] + 4);
        }

        else
        {
          MinX = 0.0;
        }

        *(v79 + 64) = MinX;
        if (v62)
        {
          v215[0] = _swiftEmptyArrayStorage;
          _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0(0, v62 & ~(v62 >> 63), 0);
          if (v62 < 0)
          {
            goto LABEL_262;
          }

          v162 = v215[0];
          if ((v59 & 0xC000000000000001) != 0)
          {
            v163 = 0;
            v51 = 56;
            do
            {
              v164 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
              v165 = *(v164 + 16);
              if (v165)
              {
                v166 = *(v164 + 56 * v165 - 16);
              }

              else
              {
                v166 = 0;
              }

              swift_unknownObjectRelease();
              v215[0] = v162;
              v168 = *(v162 + 2);
              v167 = *(v162 + 3);
              if (v168 >= v167 >> 1)
              {
                _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v167 > 1), v168 + 1, 1);
                v162 = v215[0];
              }

              ++v163;
              *(v162 + 2) = v168 + 1;
              *&v162[8 * v168 + 32] = v166;
            }

            while (v62 != v163);
          }

          else
          {
            v51 = 32;
            do
            {
              v174 = *(*(v59 + v51) + 48);
              v175 = *(v174 + 16);
              if (v175)
              {
                v176 = *(v174 + 56 * v175 - 16);
              }

              else
              {
                v176 = 0;
              }

              v215[0] = v162;
              v178 = *(v162 + 2);
              v177 = *(v162 + 3);
              if (v178 >= v177 >> 1)
              {
                _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtFSd_Tg5_0((v177 > 1), v178 + 1, 1);
                v162 = v215[0];
              }

              *(v162 + 2) = v178 + 1;
              *&v162[8 * v178 + 32] = v176;
              v51 += 8;
              --v62;
            }

            while (v62);
          }
        }

        else
        {

          v162 = _swiftEmptyArrayStorage;
        }

        v215[0] = v162;

        specialized MutableCollection<>.sort(by:)(v215);
        v62 = a16;
        v154 = a19;

        v179 = *(v215[0] + 2);
        if (v179)
        {
          v180 = *&v215[0][8 * v179 + 24];
        }

        else
        {
          v180 = 0;
        }

        v67 = v214;

        *(v79 + 24) = v40;
        *(v79 + 40) = v211;
        *(v79 + 48) = rect;
        *(v79 + 72) = v180;
        *(v79 + 80) = a9;
        *(v79 + 88) = width;
        *(v79 + 96) = MaxX;
        *(v79 + 104) = y;
        *(v79 + 56) = 0;
        *(v79 + 58) = v213;
        swift_beginAccess();
        specialized OrderedSet._append(_:)(v79);
        swift_endAccess();

        goto LABEL_250;
      }

      swift_beginAccess();
      *(v44 + 16) = v59;

      SyncedLyricsLineView.Line.words.didset();
      *(v44 + 24) = v40;

      v241 = *(v44 + 80);
      *(v44 + 80) = a9;
      *(v44 + 88) = width;
      *(v44 + 96) = MaxX;
      *(v44 + 104) = y;
      v236.origin.x = a9;
      v236.origin.y = width;
      v236.size.width = MaxX;
      v236.size.height = y;
      if (!CGRectEqualToRect(v236, v241))
      {
        *(v44 + 128) = 0;
      }

      *(v44 + 40) = [v211 characterRange];
      *(v44 + 48) = v153;
      swift_beginAccess();
      specialized OrderedSet._append(_:)(v44);
      swift_endAccess();
      swift_beginAccess();
      specialized OrderedSet._append(_:)(v44);
      swift_endAccess();

      v154 = a19;
LABEL_250:
      v237.origin.x = a9;
      v237.origin.y = width;
      v237.size.width = MaxX;
      v237.size.height = y;
      MinX = CGRectGetWidth(v237);
      swift_beginAccess();
      if (*v154 < MinX)
      {
        v238.origin.x = a9;
        v238.origin.y = width;
        v238.size.width = MaxX;
        v238.size.height = y;
        MinX = CGRectGetWidth(v238);
        swift_beginAccess();
        *v154 = MinX;
      }

      swift_beginAccess();
      specialized OrderedSet.append<A>(contentsOf:)(v67);
      swift_endAccess();

      if (v209)
      {

        return;
      }

      v181 = String._bridgeToObjectiveC()();

      v182 = [v181 substringWithRange:{v204, a4}];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v183;

      *&v79 = COERCE_DOUBLE(StringProtocol.contains<A>(_:)());

      if ((v79 & 1) == 0)
      {
        return;
      }

      swift_beginAccess();
      if (!__OFADD__(*v62, 1))
      {
        ++*v62;
        return;
      }

      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      v145 = _CocoaArrayWrapper.endIndex.getter();
      a9 = MinX + a9;
      if (!v145)
      {
        continue;
      }

      break;
    }

LABEL_185:
    rect = *&v79;
    if (v145 >= 1)
    {
      v146 = 0;
      v147 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
      v148 = v67 & 0xC000000000000001;
      v149 = v67;
      do
      {
        if (v148)
        {
          v150 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v150 = *(v67 + 8 * v146 + 32);
        }

        if (*(v150 + 58) == *(v214 + v147))
        {
          v235.size.width = *(v150 + 96);
          v235.size.height = *(v150 + 104);
          v240.origin.x = *(v150 + 80);
          v235.origin.y = *(v150 + 88);
          *(v150 + 80) = a9;
          v235.origin.x = a9;
          v240.origin.y = v235.origin.y;
          v240.size.width = v235.size.width;
          v240.size.height = v235.size.height;
          if (!CGRectEqualToRect(v235, v240))
          {
            *(v150 + 128) = 0;
          }
        }

        ++v146;
        v67 = v149;
      }

      while (v145 != v146);
      v51 = v214;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_266:
  __break(1u);

  __break(1u);
}

void specialized OrderedSet.remove(_:)(uint64_t a1)
{
  v3 = v1[1];
  v4 = *(v3 + 16);
  if (*v1)
  {
    v5 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)();
    if ((v7 & 1) == 0)
    {
LABEL_9:
      specialized OrderedSet._removeExistingMember(at:in:)(v5, v6, specialized _ContiguousArrayBuffer._consumeAndCreateNew());
    }
  }

  else
  {
    v5 = 0;
    if (v4)
    {
      while (*(v3 + 32 + 8 * v5) != a1)
      {
        if (v4 == ++v5)
        {
          return;
        }
      }

      v6 = 0;
      goto LABEL_9;
    }
  }
}

void specialized MutableCollection<>.reverse()()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v4 + 32);
        v9 = *(v1 + 8 * v2 + 24);

LABEL_10:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v10 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v10) = 0;
        }

        v11 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v9;

        if ((v1 & 0x8000000000000000) != 0 || v10)
        {
          v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
          v11 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v11 + 16))
        {
          goto LABEL_24;
        }

        *(v11 + 8 * v2 + 24) = v8;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v12 = v2 - 2;
        --v2;
        if (v4 >= v12)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }

      v2 = _CocoaArrayWrapper.endIndex.getter();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (v1 - 1);
  if (v1 == 1)
  {
    return;
  }

  v3 = *v0;
  v20 = v0;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = v3;
  }

  else
  {
LABEL_18:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
  }

  v5 = 0;
  v6 = 56 * v1;
  v7 = 1;
  while (1)
  {
    if (v7 - 1 == v2)
    {
      goto LABEL_7;
    }

    v9 = *(v4 + 2);
    if (v7 - 1 >= v9)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v2 >= v9)
    {
      goto LABEL_17;
    }

    v10 = &v4[v5];
    v11 = *&v4[v5 + 48];
    v21 = *&v4[v5 + 56];
    v22 = *&v4[v5 + 32];
    v12 = *&v4[v5 + 72];
    v13 = v4[v5 + 80];
    v1 = &v4[v6];
    v15 = *&v4[v6 - 8];
    v14 = *&v4[v6];
    v17 = *&v4[v6 + 8];
    v16 = *&v4[v6 + 16];
    v18 = v4[v6 + 24];
    *(v10 + 2) = *&v4[v6 - 24];
    *(v10 + 6) = v15;
    *(v10 + 7) = v14;
    *(v10 + 8) = v17;
    *(v10 + 9) = v16;
    v10[80] = v18;
    v19 = v4;
    v23 = *(v4 + 2);

    if (v2 >= v23)
    {
      break;
    }

    v3 = *v1;
    *(v1 - 24) = v22;
    *(v1 - 1) = v11;
    *v1 = v21;
    *(v1 + 2) = v12;
    v1[24] = v13;

    v4 = v19;
LABEL_7:
    --v2;
    v6 -= 56;
    v5 += 56;
    if (v7++ >= v2)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v20 = v4;
}

{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2 >= 2)
  {
    v3 = v2 - 1;
    v4 = 56 * v2 - 24;
    v5 = 80;
    v6 = 1;
    while (1)
    {
      v7 = *(v1 + 2);
      if (v6 - 1 >= v7)
      {
        break;
      }

      if (v3 >= v7)
      {
        goto LABEL_12;
      }

      v21 = *&v1[v5 - 48];
      v8 = *&v1[v5 - 24];
      v9 = *&v1[v5 - 16];
      v19 = *&v1[v5 - 8];
      v20 = *&v1[v5 - 32];
      v18 = v1[v5];
      v10 = *&v1[v4];
      v11 = *&v1[v4 + 8];
      v12 = *&v1[v4 + 24];
      v13 = *&v1[v4 + 32];
      v23 = *&v1[v4 + 40];
      v24 = *&v1[v4 + 16];
      v22 = v1[v4 + 48];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v1);
      }

      if ((v6 - 1) >= *(v1 + 2))
      {
        goto LABEL_13;
      }

      v14 = &v1[v5];
      *(v14 - 6) = v10;
      *(v14 - 5) = v11;
      *(v14 - 4) = v24;
      *(v14 - 3) = v12;
      *(v14 - 2) = v13;
      *(v14 - 1) = v23;
      *v14 = v22;

      if (v3 >= *(v1 + 2))
      {
        goto LABEL_14;
      }

      v15 = &v1[v4];
      *v15 = v21;
      *(v15 + 2) = v20;
      *(v15 + 3) = v8;
      *(v15 + 4) = v9;
      *(v15 + 5) = v19;
      v15[48] = v18;

      *v17 = v1;
      --v3;
      v4 -= 56;
      v5 += 56;
      if (v6++ >= v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void specialized OrderedSet.append<A>(contentsOf:)(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
LABEL_35:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v5 = *(a1 + 32 + 8 * v4);

      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v8 = *v2;
    v7 = v2[1];
    v9 = (v7 + 32);
    v10 = *(v7 + 16);
    if (*v2)
    {
      specialized _HashTable.UnsafeHandle._find<A>(_:in:)();
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v10)
    {
      while (*v9 != v5)
      {
        ++v9;
        if (!--v10)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_6;
    }

LABEL_17:

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v12 = v2[1];
    v13 = *(v12 + 16);
    if (!v8)
    {
      if (v13 > 0xF)
      {
        v14 = 0;
LABEL_24:
        v15 = static _HashTable.scale(forCapacity:)();
        if (v14 <= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v14;
        }

        v18 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy7LyricsX06SyncedO8LineViewC0Q0CG_Tt2g5Tm(v12, v17, 0, v14, v16);

        *v2 = v18;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v13)
    {
      break;
    }

    v14 = *(v8 + 24) & 0x3FLL;
    if (v13 > 0xF || v14)
    {
      goto LABEL_24;
    }

    *v2 = 0;
LABEL_7:
    if (v4 == v3)
    {
      return;
    }
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v20 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v20)
    {
      goto LABEL_38;
    }

    v21 = _HashTable.copy()();

    *v2 = v21;
    v20 = v21;
  }

  if (v20)
  {
    _HashTable.UnsafeHandle.subscript.setter();
LABEL_6:

    goto LABEL_7;
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

id SyncedLyricsLineView.SBS_TextContentView.TextView.translationAttributedText(with:)(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v54 = a1;
  v3 = type metadata accessor for Locale.Language();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  __chkstk_darwin();
  v7 = &v47 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
  __chkstk_darwin();
  v9 = &v47 - v8;
  v10 = v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v11 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v12 = 264;
  if (!*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    v12 = 272;
  }

  v13 = *(v10 + v12);
  v14 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v52 = v14;
  if (!v11)
  {
    if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) == 1)
    {
      v15 = 360;
      if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v15 = 384;
      }
    }

    else
    {
      v15 = 368;
    }

    v14 = *(v10 + v15);
    v16 = v14;
  }

  v50 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd_0, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2EB0;
  v51 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v53 = inited + 32;
  v18 = type metadata accessor for UIAction(0, &_sSo6UIFontCML_1, UIFont_ptr);
  *(inited + 40) = v13;
  *(inited + 64) = v18;
  *(inited + 72) = NSForegroundColorAttributeName;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7UIColorCSgMd_0, &_sSo7UIColorCSgMR_0);
  *(inited + 80) = v14;
  *(inited + 104) = v19;
  *(inited + 112) = NSLanguageIdentifierAttributeName;
  v20 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v20, v7, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  if ((*(v4 + 48))(v7, 1, v3))
  {
    v21 = v14;
    v22 = NSLanguageIdentifierAttributeName;
    v23 = v13;
    v24 = v52;
    v25 = v51;
    v26 = NSForegroundColorAttributeName;
    outlined destroy of TaskPriority?(v7, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
    v27 = v13;
LABEL_14:
    v38 = (inited + 120);
    *(inited + 144) = &type metadata for String;
    goto LABEL_15;
  }

  v28 = v49;
  (*(v4 + 16))(v49, v7, v3);
  v48 = v14;
  v29 = NSLanguageIdentifierAttributeName;
  v30 = v13;
  v31 = v13;
  v32 = v52;
  v33 = v51;
  v34 = NSForegroundColorAttributeName;
  outlined destroy of TaskPriority?(v7, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  v35 = v50;
  Locale.Language.languageCode.getter();
  (*(v4 + 8))(v28, v3);
  v36 = type metadata accessor for Locale.LanguageCode();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    outlined destroy of TaskPriority?(v35, &_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
    v27 = v30;
    v21 = v48;
    goto LABEL_14;
  }

  v45 = Locale.LanguageCode.identifier.getter();
  v39 = v46;
  (*(v37 + 8))(v35, v36);
  v38 = (inited + 120);
  *(inited + 144) = &type metadata for String;
  if (v39)
  {
    *v38 = v45;
    v27 = v30;
    v21 = v48;
    goto LABEL_16;
  }

  v27 = v30;
  v21 = v48;
LABEL_15:
  *v38 = 0;
  v39 = 0xE000000000000000;
LABEL_16:
  *(inited + 128) = v39;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd_0, &_sSo21NSAttributedStringKeya_yptMR_0);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(NSAttributedString);
  v41 = String._bridgeToObjectiveC()();
  _sSo21NSAttributedStringKeyaMa_1(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo21NSAttributedStringKeyaABSHSCWL_1, _sSo21NSAttributedStringKeyaMa_1, &_sSo21NSAttributedStringKeyaSHSCMc_1);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v43 = [v40 initWithString:v41 attributes:isa];

  return v43;
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.updateTranslationLabel(size:forceLayout:)(char a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  v5 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8];
  if (!v5)
  {
    goto LABEL_11;
  }

  v8 = *v4;
  v9 = String.lowercased()();
  v10 = String.lowercased()();
  if (v9._countAndFlagsBits == v10._countAndFlagsBits && v9._object == v10._object)
  {

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {

LABEL_10:

LABEL_11:
    v13 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v14 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v13 = 1;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
LABEL_12:

    outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v14);
    return;
  }

  v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
  v16 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (!v16 || (v17 = [v16 attributedText]) == 0)
  {
    v23 = v4[1];
LABEL_24:
    if (v23)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v18 = v17;
  v19 = [v17 string];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v4[1];
  if (!v22)
  {
    goto LABEL_24;
  }

  if (!v23)
  {

    goto LABEL_30;
  }

  if (v20 == *v4 && v23 == v22)
  {

    if (a1)
    {
      goto LABEL_30;
    }

LABEL_26:

    return;
  }

  v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v42 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if ((a1 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_30:
  v24 = *&v2[v15];
  if (v24)
  {
    v25 = *&v2[v15];
  }

  else
  {
    v25 = [objc_allocWithZone(UILabel) init];
    [v25 setNumberOfLines:0];
    [v25 setClipsToBounds:0];
    [v2 addSubview:v25];
    v26 = *&v2[v15];
    *&v2[v15] = v25;

    v27 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v28 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v27 = 0u;
    *(v27 + 1) = 0u;
    *(v27 + 4) = 0;
    outlined consume of SyncedLyricsLineView.SBS_TextContentView.TextView.TranslationLabelUpdate?(v28);
    v24 = 0;
  }

  v29 = 264;
  if (!*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8])
  {
    v29 = 272;
  }

  v30 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + v29];
  v31 = v24;
  v43 = v30;
  v32 = SyncedLyricsLineView.SBS_TextContentView.TextView.translationAttributedText(with:)(v8, v5);

  [v32 boundingRectWithSize:1 options:0 context:{a2, INFINITY}];
  v34 = v33;
  v36 = v35;
  Height = CGRectGetHeight(v3[2]);
  v38 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 296];
  Width = CGRectGetWidth(v3[2]);
  if (v34 <= Width)
  {
    v34 = Width;
  }

  v40 = Height + v38;
  [v25 setTextAlignment:*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];

  v41 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  if (*v41)
  {

    v14 = *v41;
    *v41 = v32;
    *(v41 + 1) = 0;
    *(v41 + 2) = v40;
    *(v41 + 3) = v34;
    *(v41 + 4) = v36;
    goto LABEL_12;
  }

  [v25 setAttributedText:v32];
  [v25 setFrame:{0.0, v40, v34, v36}];
}

void SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:)(NSObject *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, NSObject *a6@<X5>, uint64_t a7@<X6>, double *a8@<X8>, CGFloat a9@<D0>, CGFloat a10@<D1>)
{
  v743 = a6;
  v744 = a5;
  v741 = a3;
  v18 = type metadata accessor for Locale.Language();
  v745 = *(v18 - 1);
  __chkstk_darwin();
  v20 = (&v699 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
  __chkstk_darwin();
  v742 = &v699 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleV12LanguageCodeVSgMd_0, &_s10Foundation6LocaleV12LanguageCodeVSgMR_0);
  __chkstk_darwin();
  object = &v699 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
  __chkstk_darwin();
  v25 = &v699 - v24;
  v26 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8);
  v27 = 0.0;
  if (*&v26 == 0.0)
  {
    goto LABEL_178;
  }

  v28 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
  v751 = a4;
  if (a4 >> 62)
  {
    goto LABEL_177;
  }

  v29 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v29 - 1;
  if (v29 < 1)
  {
LABEL_178:
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 1;
    goto LABEL_179;
  }

LABEL_4:
  v738 = v25;
  v739 = v28;
  v721 = v30;
  v722 = v29;
  v733 = a7;
  v728 = a8;
  v746 = v10;
  v725 = (v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v740 = v26;

  v732 = String._bridgeToObjectiveC()();

  v768 = a1;
  v769 = a2;
  v766 = a1;
  v767 = a2;
  swift_retain_n();
  swift_retain_n();

  v764 = _s19CollectionsInternal10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufC7LyricsX06SyncedF8LineViewC4WordC_SayAKGTt0g5(v31);
  v765 = v32;
  isa = v32[2].isa;
  v736 = object;
  v737 = v18;
  v735 = v20;
  if (!isa)
  {
    goto LABEL_9;
  }

  v34 = v32[4].isa;
  v35 = v32[isa + 3].isa;

  if (!v35)
  {
    goto LABEL_9;
  }

  if (*(v35 + 11) >= *(v34 + 11))
  {

LABEL_9:
    v731 = 0;
    v18 = a2;
    goto LABEL_10;
  }

  specialized MutableCollection<>.reverse()();
  specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:), v36);

  v731 = 1;
  v18 = v767;
LABEL_10:
  v20 = &v777;
  a2 = _swiftEmptyArrayStorage;
  v763 = _swiftEmptyArrayStorage;
  v762 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7LyricsX0C0C4WordV_SayAC06SyncedC8LineViewCAFCGTt0g5Tf4g_n(_swiftEmptyArrayStorage);
  v748 = *(v18 + 2);
  v749 = v18;
  if (!v748)
  {
    v753 = 0;
    object = _swiftEmptyArrayStorage;
    v91 = _swiftEmptyArrayStorage[2];
    if (!v91)
    {
      goto LABEL_114;
    }

    goto LABEL_100;
  }

  v753 = 0;
  v37 = 0;
  v747 = v18 + 4;
  object = _swiftEmptyArrayStorage;
  do
  {
    if (v37 >= *(v18 + 2))
    {
      __break(1u);
      goto LABEL_160;
    }

    location = object;
    v10 = 56;
    v38 = &v747[7 * v37];
    v39 = *(v38 + 2);
    v824 = *(v38 + 1);
    v825 = v39;
    v823 = *v38;
    v826 = *(v38 + 48);
    v827 = v824;
    v40 = v39;
    v828 = v39;
    *&v816 = _swiftEmptyArrayStorage;
    a7 = v765;
    if (v765[2].isa)
    {
      v41 = v764;
      a1 = v765 + 4;
      v42 = *&v823;
      v43 = *(v825 + 16);
      outlined init with copy of String(&v827, v820);
      outlined init with copy of TaskPriority?(&v828, v820, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
      object = v40 + 56 * v43 - 16;
      v10 = *(a7 + 16);
      v750 = v41;

      *&v45 = 0.0;
      while (1)
      {
        if (v45 >= v10)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:

          a7 = v37;
          goto LABEL_139;
        }

        v41 = a1[v45].isa;
        if (v43)
        {
          if (v43 > *(v40 + 16))
          {
            __break(1u);
            goto LABEL_123;
          }

          v44 = *object;
          if (v42 > *object)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v44 = 0.0;
          if (v42 > 0.0)
          {
            goto LABEL_119;
          }
        }

        v47 = *&v41[2].isa;
        v48 = *&v41[3].isa;
        if (v47 > v48)
        {
          goto LABEL_120;
        }

        v49 = v47 == v48 || v42 == v44;
        v50 = !v49 && v44 > v47;
        if (v50 && v48 > v42)
        {
          break;
        }

LABEL_21:
        if (++v45 == v10)
        {

          a2 = v816;
          v18 = v749;
          v20 = &v777;
          goto LABEL_52;
        }
      }

      swift_retain_n();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v816 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v816 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v734 = *((v816 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v52 = v765[2].isa;
      if (v764)
      {
        v53 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)();
        if (v54)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!v52)
        {
          goto LABEL_20;
        }

        v53 = 0;
        while (v765[v53 + 4].isa != v41)
        {
          if (v52 == ++v53)
          {
            goto LABEL_20;
          }
        }

        v46 = 0;
      }

      specialized OrderedSet._removeExistingMember(at:in:)(v53, v46, specialized _ContiguousArrayBuffer._consumeAndCreateNew());

LABEL_20:

      v10 = *(a7 + 16);
      v753 = v41;
      goto LABEL_21;
    }

    outlined init with copy of String(&v827, v820);
    outlined init with copy of TaskPriority?(&v828, v820, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
LABEL_52:
    a8 = (a2 >> 62);
    if (!(a2 >> 62))
    {
      object = location;
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

LABEL_54:
      v10 = a2 & 0xC000000000000001;
      if ((a2 & 0xC000000000000001) != 0)
      {
        a7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v55 = a2 & 0xFFFFFFFFFFFFFF8;
        if (!a8)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_162;
        }

        a7 = *(a2 + 32);

        v55 = a2 & 0xFFFFFFFFFFFFFF8;
        if (!a8)
        {
LABEL_57:
          v56 = *(v55 + 16);
          if (v56)
          {
            goto LABEL_58;
          }

LABEL_78:

          goto LABEL_79;
        }
      }

      v56 = _CocoaArrayWrapper.endIndex.getter();
      if (v56)
      {
LABEL_58:
        v57 = __OFSUB__(v56, 1);
        v58 = v56 - 1;
        if (v57)
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          if (v10 == *(a8 + 5))
          {
LABEL_167:
            v183 = a1;
            v184 = v741;
            v185 = specialized Array._getCount()(v741);
            if (v185)
            {
              v186 = v185 - 1;
              if (__OFSUB__(v185, 1))
              {
                __break(1u);
              }

              else
              {
                specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v185 - 1, (v184 & 0xC000000000000001) == 0, v184);
                if ((v184 & 0xC000000000000001) == 0)
                {
                  v187 = *(v184 + 8 * v186 + 32);

                  goto LABEL_171;
                }
              }

              v187 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_171:
              v188 = specialized Lyrics.Word.range.getter(a7);

              a1 = v183;
              if (v188 > 0)
              {
                v750 = v187;
                if (one-time initialization token for lyrics != -1)
                {
                  goto LABEL_569;
                }

                goto LABEL_173;
              }
            }

            else
            {

              a1 = v183;
            }

LABEL_153:
            if (one-time initialization token for lyrics != -1)
            {
              swift_once();
            }

            v159 = type metadata accessor for Logger();
            __swift_project_value_buffer(v159, static Logger.lyrics);
            v160 = swift_allocObject();
            v161 = v746;
            *(v160 + 16) = v746;
            v162 = v161;
            v163 = Logger.logObject.getter();
            v164 = static os_log_type_t.default.getter();
            v165 = swift_allocObject();
            *(v165 + 16) = 34;
            v166 = swift_allocObject();
            *(v166 + 16) = 8;
            v167 = swift_allocObject();
            *(v167 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
            *(v167 + 24) = v160;
            v168 = swift_allocObject();
            *(v168 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
            *(v168 + 24) = v167;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            v169 = swift_allocObject();
            *(v169 + 16) = xmmword_1004F2EB0;
            *(v169 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v169 + 40) = v165;
            *(v169 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v169 + 56) = v166;
            *(v169 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v169 + 72) = v168;
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2, &_syycMR_2);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v163, v164))
            {
              v170 = swift_slowAlloc();
              v751 = swift_slowAlloc();
              *&v788 = v751;
              *v170 = 136446210;
              v171 = v725[1];
              v802._countAndFlagsBits = *v725;
              v802._object = v171;
              v795 = 10519010;
              v796 = 0xA300000000000000;
              *&v792[0] = 44226;
              *(&v792[0] + 1) = 0xA200000000000000;
              _sS2SSysWl_2();
              v172 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              location = v162;
              v802._countAndFlagsBits = v172;
              v802._object = v173;
              v174 = String.nonBreakingSpace.unsafeMutableAddressor();
              v175 = v174[1];
              v795 = *v174;
              v796 = v175;
              *&v792[0] = 0x3B7073626E26;
              *(&v792[0] + 1) = 0xE600000000000000;
              v176 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v178 = v177;

              v802._countAndFlagsBits = v176;
              v802._object = v178;
              v795 = 10;
              v796 = 0xE100000000000000;
              *&v792[0] = 28252;
              *(&v792[0] + 1) = 0xE200000000000000;
              v179 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v181 = v180;

              v182 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v179, v181, &v788);

              *(v170 + 4) = v182;
              _os_log_impl(&_mh_execute_header, v163, v164, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to make it fit with the previous line by forcing a line break after it. New text: %{public}s", v170, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v751);
            }

            a8 = v728;
            SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(a1[11].isa, a1[12].isa);

            goto LABEL_158;
          }

LABEL_152:

          goto LABEL_153;
        }

        if (v10)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_164;
          }

          if (v58 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_165;
          }
        }

        v59 = v768;
        v60 = v769;
        a1 = *(v769 + 16);
        if (v768)
        {

          v61 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v823, v60 + 32, a1, (v59 + 16), v59 + 32);
          v63 = v62;
          a1 = v64;

          if (v63)
          {
            goto LABEL_69;
          }

LABEL_68:
          specialized OrderedSet._removeExistingMember(at:in:)(v61, a1, &v770);
          v779 = v771;
          outlined destroy of String(&v779);
          v778 = v772;
          outlined destroy of TaskPriority?(&v778, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
        }

        else
        {
          v65 = specialized UnsafeBufferPointer<A>._firstIndex(of:)(&v823, v769 + 32, *(v769 + 16));
          if ((v66 & 1) == 0)
          {
            v61 = v65;
            a1 = 0;
            goto LABEL_68;
          }
        }

LABEL_69:
        outlined init with copy of String(&v827, v820);
        outlined init with copy of TaskPriority?(&v828, v820, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
        object = location;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
        }

        v68 = *(object + 16);
        v67 = *(object + 24);
        v20 = &v777;
        if (v68 >= v67 >> 1)
        {
          object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1, object);
        }

        *(object + 16) = v68 + 1;
        v69 = object + 56 * v68;
        v70 = v823;
        v71 = v824;
        v72 = v825;
        *(v69 + 80) = v826;
        *(v69 + 48) = v71;
        *(v69 + 64) = v72;
        *(v69 + 32) = v70;
        specialized Dictionary.subscript.setter(a2, &v823);

        v18 = v749;
        goto LABEL_13;
      }

      goto LABEL_78;
    }

    v73 = _CocoaArrayWrapper.endIndex.getter();
    object = location;
    if (v73)
    {
      goto LABEL_54;
    }

LABEL_79:

    if (!v753)
    {
      outlined destroy of String(&v827);
      outlined destroy of TaskPriority?(&v828, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
LABEL_13:
      a2 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    a2 = _swiftEmptyArrayStorage;
    if (*&v823 > *(&v823 + 1))
    {
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      v739 = v28;
      v740 = v26;
      v213 = v25;
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v739;
      v26 = v740;
      v25 = v213;
      v30 = v29 - 1;
      if (v29 < 1)
      {
        goto LABEL_178;
      }

      goto LABEL_4;
    }

    v75 = *&v753[2].isa;
    v74 = *&v753[3].isa;
    if (v75 > v74)
    {
      goto LABEL_176;
    }

    if (v75 == v74 || *&v823 == *(&v823 + 1) || *(&v823 + 1) <= v75 || v74 <= *&v823)
    {
      outlined destroy of String(&v827);
      outlined destroy of TaskPriority?(&v828, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
      goto LABEL_14;
    }

    outlined init with copy of String(&v827, v820);
    outlined init with copy of TaskPriority?(&v828, v820, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);

    specialized Dictionary.subscript.setter(_swiftEmptyArrayStorage, &v823);
    v76 = v768;
    v77 = v769;
    v78 = *(v769 + 16);
    if (v768)
    {

      v79 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(&v823, v77 + 32, v78, (v76 + 16), v76 + 32);
      v81 = v80;
      a1 = v82;

      if (v81)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    v83 = specialized UnsafeBufferPointer<A>._firstIndex(of:)(&v823, v769 + 32, *(v769 + 16));
    if ((v84 & 1) == 0)
    {
      v79 = v83;
      a1 = 0;
LABEL_92:
      specialized OrderedSet._removeExistingMember(at:in:)(v79, a1, &v773);
      v777 = v774;
      outlined destroy of String(&v777);
      v776 = v775;
      outlined destroy of TaskPriority?(&v776, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
    }

LABEL_93:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(object + 16) + 1, 1, object);
    }

    v86 = *(object + 16);
    v85 = *(object + 24);
    if (v86 >= v85 >> 1)
    {
      object = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v85 > 1), v86 + 1, 1, object);
    }

    *(object + 16) = v86 + 1;
    v87 = object + 56 * v86;
    v88 = v823;
    v89 = v824;
    v90 = v825;
    *(v87 + 80) = v826;
    *(v87 + 48) = v89;
    *(v87 + 64) = v90;
    *(v87 + 32) = v88;
LABEL_14:
    ++v37;
  }

  while (v37 != v748);
  v763 = object;
  v91 = *(object + 16);
  if (!v91)
  {
LABEL_114:

LABEL_115:

    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 1;
    goto LABEL_116;
  }

LABEL_100:
  v92 = *(object + 48);
  v93 = *(object + 56);
  v45 = *(object + 64);
  v94 = *(object + 72);
  v95 = *(object + 80);
  v806 = *(object + 32);
  v807 = v92;
  v808 = v93;
  v809 = v45;
  v810 = v94;
  v811 = v95;
  v96 = v91 - 1;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v91 - 1, 1, object);
  v97 = object + 32 + 56 * v96;
  v98 = *(v97 + 16);
  v99 = *(v97 + 24);
  v41 = *(v97 + 32);
  v100 = *(v97 + 40);
  v101 = *(v97 + 48);
  v780 = *v97;
  v781 = v98;
  v782 = v99;
  v783 = v41;
  v784 = v100;
  v785 = v101;
  a7 = v762;
  v747 = v93;

  v734 = v99;

  specialized Dictionary.subscript.getter(&v780, a7);
  v748 = v41;
  v750 = v45;
  if (!v102)
  {
    goto LABEL_139;
  }

  v103 = v102;
  *&v792[0] = v102;
  if (v731)
  {
    specialized MutableCollection<>.reverse()();
    v103 = *&v792[0];
  }

  if (!specialized Array._getCount()(v103))
  {

    goto LABEL_139;
  }

  v104 = v103 & 0xC000000000000001;
  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v103 & 0xC000000000000001) == 0, v103);
  v37 = a7;
  if ((v103 & 0xC000000000000001) != 0)
  {
    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v40 = *(v103 + 32);
  }

  v105 = specialized Array._getCount()(v103);
  if (!v105)
  {
    goto LABEL_121;
  }

  if (__OFSUB__(v105, 1))
  {
    goto LABEL_544;
  }

  specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v105 - 1, v104 == 0, v103);
  if (v104)
  {
    goto LABEL_545;
  }

  while (2)
  {

    SyncedLyricsLineView.Word.endTime.getter();
    v106 = v41[2].isa;
    a7 = v37;
    if (!v106)
    {
LABEL_123:
      if (v44 != 0.0)
      {
        v107 = 0.0;
        goto LABEL_125;
      }

      goto LABEL_138;
    }

    v107 = *&v41[7 * v106 - 2].isa;
    if (v44 == v107)
    {
LABEL_138:

      goto LABEL_139;
    }

LABEL_125:
    v20 = a7;
    v112 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words];
    v113 = *(v112 + 16);
    if (!v113)
    {

      a7 = v20;
      goto LABEL_139;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v113 - 1, 1, *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words]);
    v114 = *(v112 + 56 * v113 + 8);
    v115 = *(v114 + 16);
    if (v115)
    {
      v116 = v107 == *(v114 + 56 * v115 - 16);
    }

    else
    {
      v116 = v107 == 0.0;
    }

    a7 = v20;
    if (!v116 || *(v40 + 88) < 1)
    {
      goto LABEL_138;
    }

    location = object;
    v821 = *(v40 + 48);
    v117 = *(v40 + 32);
    v820[0] = *(v40 + 16);
    v820[1] = v117;
    v822 = *(v40 + 64);
    v829 = v117;
    v830 = v821;
    v118 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v119 = v746;
    swift_beginAccess();
    v120 = *&v119[v118];
    outlined init with copy of String(&v829, &v816);
    outlined init with copy of TaskPriority?(&v830, &v816, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);

    specialized Dictionary.subscript.getter(v820, v120);
    v122 = v121;

    outlined destroy of String(&v829);
    outlined destroy of TaskPriority?(&v830, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
    if (v122)
    {

      v123 = *(v40 + 32);
      v816 = *(v40 + 16);
      v817 = v123;
      v818 = *(v40 + 48);
      v819 = *(v40 + 64);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v802._countAndFlagsBits = *&v119[v118];
      *&v119[v118] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, &v816, isUniquelyReferenced_nonNull_native);
      *&v119[v118] = v802._countAndFlagsBits;
      swift_endAccess();
      SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v40);
      if (one-time initialization token for lyrics != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      __swift_project_value_buffer(v125, static Logger.lyrics);
      v126 = swift_allocObject();
      *(v126 + 16) = v119;
      v127 = v119;
      v37 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();
      v129 = swift_allocObject();
      *(v129 + 16) = 34;
      v130 = swift_allocObject();
      *(v130 + 16) = 8;
      v131 = swift_allocObject();
      *(v131 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
      *(v131 + 24) = v126;
      v132 = swift_allocObject();
      *(v132 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
      *(v132 + 24) = v131;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_1004F2EB0;
      *(v133 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v133 + 40) = v129;
      *(v133 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v133 + 56) = v130;
      *(v133 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v133 + 72) = v132;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2, &_syycMR_2);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v37, v128))
      {
        v134 = swift_slowAlloc();
        location = swift_slowAlloc();
        *&v788 = location;
        *v134 = 136446210;
        v135 = v725[1];
        *&v812 = *v725;
        *(&v812 + 1) = v135;
        v802._countAndFlagsBits = 10519010;
        v802._object = 0xA300000000000000;
        v795 = 44226;
        v796 = 0xA200000000000000;
        _sS2SSysWl_2();
        *&v812 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        *(&v812 + 1) = v136;
        v137 = String.nonBreakingSpace.unsafeMutableAddressor();
        v138 = v137[1];
        v802._countAndFlagsBits = *v137;
        v802._object = v138;
        v795 = 0x3B7073626E26;
        v796 = 0xE600000000000000;
        v139 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        LODWORD(v751) = v128;
        v141 = v140;

        *&v812 = v139;
        *(&v812 + 1) = v141;
        v802._countAndFlagsBits = 10;
        v802._object = 0xE100000000000000;
        v795 = 28252;
        v796 = 0xE200000000000000;
        v142 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v144 = v143;

        v145 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v142, v144, &v788);

        *(v134 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v37, v751, "[Transliteration] Last transliterated word in this line has more original words to match in the next line, and the next line only contains words that match this transliteration. Insert a line break before this word to make sure they are all in the same line. New text: %{public}s", v134, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(location);

        goto LABEL_220;
      }

LABEL_162:

LABEL_219:

LABEL_220:

      goto LABEL_410;
    }

LABEL_160:

    a7 = v20;
    v41 = v748;
    v45 = v750;
LABEL_139:
    v146 = v765[2].isa;
    v712 = v764;
    v713 = v765;
    v720 = a7;
    if (!v146)
    {
      goto LABEL_188;
    }

    v147 = v765[4].isa;
    if (!specialized Array._getCount()(v751))
    {
      goto LABEL_188;
    }

    v148 = v751;
    v149 = v751 & 0xC000000000000001;
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v751 & 0xC000000000000001) == 0, v751);
    if (v149)
    {

      v214 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      if (v147 == v214)
      {
LABEL_144:
        v150 = v746;
        if (v744 >= 1)
        {
          v818 = *(v147 + 48);
          v151 = *(v147 + 32);
          v816 = *(v147 + 16);
          v817 = v151;
          v819 = *(v147 + 64);
          v831 = v151;
          v832 = v818;
          v152 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
          swift_beginAccess();
          v153 = *&v150[v152];
          outlined init with copy of String(&v831, &v812);
          outlined init with copy of TaskPriority?(&v832, &v812, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);

          specialized Dictionary.subscript.getter(&v816, v153);
          v155 = v154;

          outlined destroy of String(&v831);
          outlined destroy of TaskPriority?(&v832, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
          if (v155)
          {

            v156 = *(v147 + 32);
            v812 = *(v147 + 16);
            v813 = v156;
            v814 = *(v147 + 48);
            v815 = *(v147 + 64);
            swift_beginAccess();
            v157 = swift_isUniquelyReferenced_nonNull_native();
            v795 = *&v150[v152];
            *&v150[v152] = 0x8000000000000000;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(1, &v812, v157);
            *&v150[v152] = v795;
            swift_endAccess();
            a1 = v147;
            if (v713[2].isa >= 2)
            {
              a7 = v748;
              if (v722 != 1)
              {
                v10 = v713[5].isa;
                a8 = v751;
                specialized Array._checkSubscript(_:wasNativeTypeChecked:)(1uLL, v149 == 0, v751);
                if (!v149)
                {
                  goto LABEL_166;
                }

                v158 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                swift_unknownObjectRelease();

                if (v10 == v158)
                {
                  goto LABEL_167;
                }
              }
            }

            goto LABEL_152;
          }

          v41 = v748;
          goto LABEL_187;
        }
      }

LABEL_187:
      v45 = v750;
      goto LABEL_188;
    }

    if (v147 == *(v148 + 32))
    {

      goto LABEL_144;
    }

LABEL_188:
    v215 = specialized Lyrics.Word.range.getter(v45);
    v217 = v216;
    v840.location = specialized Lyrics.Word.range.getter(v41);
    v840.length = v218;
    v839.location = v215;
    v839.length = v217;
    v219 = NSUnionRange(v839, v840);
    v220 = String._bridgeToObjectiveC()();
    location = v219.location;
    v221 = [v220 substringWithRange:{v219.location, v219.length}];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v730 = String.trim()();

    v45 = v743;
    v37 = v744;
    v222 = [v732 substringWithRange:{v744, v743}];
    v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v224;

    v225 = String.trim()();
    object = v225._object;
    *&v812 = v223;
    *(&v812 + 1) = v40;
    countAndFlagsBits = v225._countAndFlagsBits;
    v802 = v225;
    v226 = type metadata accessor for Locale();
    v227 = v738;
    (*(*(v226 - 8) + 56))(v738, 1, 1, v226);
    v228 = _sS2SSysWl_2();

    v711 = v228;
    v229 = StringProtocol.range<A>(of:options:range:locale:)();
    v231 = v230;
    v41 = v232;
    outlined destroy of TaskPriority?(v227, &_s10Foundation6LocaleVSgMd_2, &_s10Foundation6LocaleVSgMR_2);
    v724 = v225._object;

    if ((v41 & 1) == 0)
    {
      v233 = _NSRange.init(range:in:)(v229, v231, v223, v40);
      v57 = __OFADD__(v37, v233);
      v37 += v233;
      if (!v57)
      {
        v45 = v234;
        goto LABEL_192;
      }

LABEL_541:
      __break(1u);
LABEL_542:
      __break(1u);
LABEL_543:
      __break(1u);
LABEL_544:
      __break(1u);
LABEL_545:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      continue;
    }

    break;
  }

LABEL_192:
  if (one-time initialization token for shared != -1)
  {
    goto LABEL_530;
  }

  while (2)
  {
    v235 = _sSh8containsySbxF7LyricsX0B14OptionsManagerC6OptionO_Tg5_0(3, *(static LyricsOptionsManager.shared + 40));
    v710 = a10;
    v741 = v45;
    v739 = v37;
    if (!v235)
    {
      goto LABEL_199;
    }

    v236 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
    v237 = v746;
    swift_beginAccess();
    v238 = v742;
    outlined init with copy of TaskPriority?(&v237[v236], v742, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
    v239 = v745;
    v240 = v737;
    if ((*(*&v745 + 48))(v238, 1, v737))
    {
      v241 = &_s10Foundation6LocaleV8LanguageVSgMd_0;
      v242 = &_s10Foundation6LocaleV8LanguageVSgMR_0;
      v243 = v238;
      goto LABEL_198;
    }

    v244 = v735;
    (*(*&v239 + 16))(v735, v238, v240);
    outlined destroy of TaskPriority?(v238, &_s10Foundation6LocaleV8LanguageVSgMd_0, &_s10Foundation6LocaleV8LanguageVSgMR_0);
    v245 = v736;
    Locale.Language.languageCode.getter();
    (*(*&v239 + 8))(v244, v240);
    v246 = type metadata accessor for Locale.LanguageCode();
    v247 = *(v246 - 8);
    if ((*(v247 + 48))(v245, 1, v246) == 1)
    {
      v241 = &_s10Foundation6LocaleV12LanguageCodeVSgMd_0;
      v242 = &_s10Foundation6LocaleV12LanguageCodeVSgMR_0;
      v243 = v245;
LABEL_198:
      outlined destroy of TaskPriority?(v243, v241, v242);
LABEL_199:
      v248 = 0;
      v249 = 0xE000000000000000;
    }

    else
    {
      v248 = Locale.LanguageCode.identifier.getter();
      v249 = v315;
      (*(v247 + 8))(v245, v246);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd_0, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR_0);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_1004F2EF0;
    *(v250 + 32) = NSFontAttributeName;
    v251 = v746;
    object = &v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
    v252 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 312];
    v253 = type metadata accessor for UIAction(0, &_sSo6UIFontCML_1, UIFont_ptr);
    *(v250 + 40) = v252;
    *(v250 + 64) = v253;
    *(v250 + 72) = NSLanguageIdentifierAttributeName;
    *(v250 + 104) = &type metadata for String;
    *(v250 + 80) = v248;
    *(v250 + 88) = v249;
    v254 = NSFontAttributeName;
    v255 = v252;
    v256 = NSLanguageIdentifierAttributeName;

    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n_0(v250);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd_0, &_sSo21NSAttributedStringKeya_yptMR_0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v257 = objc_allocWithZone(NSAttributedString);
    v258 = *&v730._object;
    v259 = String._bridgeToObjectiveC()();
    _sSo21NSAttributedStringKeyaMa_1(0);
    lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&_sSo21NSAttributedStringKeyaABSHSCWL_1, _sSo21NSAttributedStringKeyaMa_1, &_sSo21NSAttributedStringKeyaSHSCMc_1);
    v260 = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v261 = COERCE_DOUBLE([v257 initWithString:v259 attributes:v260]);

    *&v45 = COERCE_DOUBLE(CTLineCreateWithAttributedString(v261));
    v27 = CTLineRef.bounds.getter();
    a10 = v262;
    v264 = v263;
    v266 = v265;
    v267 = v251[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection];
    v714 = v261;
    if (v267 != 2 && v251[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == (v267 & 1))
    {
      v302 = specialized static Lyrics.Word.__derived_struct_equals(_:_:)(&v806, &v780);
      v41 = v720;
      if (v302)
      {
        v842.origin.x = v27;
        v842.origin.y = a10;
        v842.size.width = v264;
        v842.size.height = v266;
        if (CGRectGetWidth(v842) > a9)
        {
          v27 = Int.seconds.getter(0);
          specialized Dictionary.subscript.getter(&v780, v762);
          MaxX = v27;
          if (!v303)
          {
            goto LABEL_428;
          }

          v305 = v303;
          v306 = specialized Array._getCount()(v303);
          if (!v306)
          {

            MaxX = v27;
            goto LABEL_428;
          }

          v307 = v306 - 1;
          if (__OFSUB__(v306, 1))
          {
            __break(1u);
          }

          else
          {
            v258 = *&v261;
            specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v306 - 1, (v305 & 0xC000000000000001) == 0, v305);
            if ((v305 & 0xC000000000000001) == 0)
            {
              v308 = *(v305 + 8 * v307 + 32);

              goto LABEL_229;
            }
          }

          v308 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_229:

          MaxX = CGRectGetMaxX(*(v308 + 176));
          v309 = specialized Lyrics.Word.range.getter(*(v308 + 48));
          v311 = v310;

          v312 = v309 + v733;
          if (__OFADD__(v309, v733))
          {
            __break(1u);
          }

          else if (!__OFADD__(v739, v741))
          {
            v57 = __OFADD__(v312, v311);
            v313 = v312 + v311;
            if (!v57)
            {
              *&v261 = v258;
              if (v739 + v741 != v313)
              {

LABEL_383:
                v108 = 0;
                v109 = 0;
                v110 = 0;
                v111 = 1;
                a8 = v728;
                v27 = 0.0;
                goto LABEL_179;
              }

LABEL_428:
              v703 = v45;
              type metadata accessor for TextKitManager();
              swift_allocObject();
              v743 = v261;
              TextKitManager.init(text:size:)(v743, a9);
              v540 = *(*v539 + 192);
              v744 = v539;
              v541 = v540();
              v751 = v541[2];
              if (v751)
              {
                v542 = 0;
                v749 = (v541 + 4);
                *&v745 = -location;
                v746 = v541;
                v543 = __OFSUB__(0, location);
                LODWORD(location) = v543;
                v109 = _swiftEmptyArrayStorage;
                while (v542 < v541[2])
                {
                  v544 = &v749[7 * v542];
                  v545 = *(v544 + 1);
                  v546 = *(v544 + 2);
                  v547 = *(v544 + 3);
                  v548 = *(v544 + 4);
                  v549 = *(v544 + 5);
                  v258 = COERCE_DOUBLE(*v544);
                  v550 = [*&v258 lineRef];
                  if (!v550)
                  {
                    __break(1u);
LABEL_569:
                    swift_once();
LABEL_173:
                    v189 = type metadata accessor for Logger();
                    __swift_project_value_buffer(v189, static Logger.lyrics);
                    v190 = swift_allocObject();
                    v191 = v746;
                    *(v190 + 16) = v746;
                    v751 = v191;
                    v192 = Logger.logObject.getter();
                    v193 = static os_log_type_t.default.getter();
                    v194 = swift_allocObject();
                    *(v194 + 16) = 34;
                    v195 = swift_allocObject();
                    *(v195 + 16) = 8;
                    v196 = swift_allocObject();
                    *(v196 + 16) = partial apply for implicit closure #2 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
                    *(v196 + 24) = v190;
                    v197 = swift_allocObject();
                    *(v197 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
                    *(v197 + 24) = v196;
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
                    v198 = swift_allocObject();
                    *(v198 + 16) = xmmword_1004F2EB0;
                    *(v198 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
                    *(v198 + 40) = v194;
                    *(v198 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
                    *(v198 + 56) = v195;
                    *(v198 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
                    *(v198 + 72) = v197;
                    swift_setDeallocating();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2, &_syycMR_2);
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    LODWORD(v749) = v193;
                    location = v192;
                    if (os_log_type_enabled(v192, v193))
                    {
                      v199 = swift_slowAlloc();
                      v200 = swift_slowAlloc();
                      *&v788 = v200;
                      *v199 = 136446210;
                      v201 = v725[1];
                      v802._countAndFlagsBits = *v725;
                      v802._object = v201;
                      v795 = 10519010;
                      v796 = 0xA300000000000000;
                      *&v792[0] = 44226;
                      *(&v792[0] + 1) = 0xA200000000000000;
                      _sS2SSysWl_2();
                      v802._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v802._object = v202;
                      v203 = String.nonBreakingSpace.unsafeMutableAddressor();
                      v204 = v203[1];
                      v795 = *v203;
                      v796 = v204;
                      *&v792[0] = 0x3B7073626E26;
                      *(&v792[0] + 1) = 0xE600000000000000;
                      v205 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v207 = v206;

                      v802._countAndFlagsBits = v205;
                      v802._object = v207;
                      v795 = 10;
                      v796 = 0xE100000000000000;
                      *&v792[0] = 28252;
                      *(&v792[0] + 1) = 0xE200000000000000;
                      v208 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v210 = v209;

                      v211 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v208, v210, &v788);

                      *(v199 + 4) = v211;
                      v212 = location;
                      _os_log_impl(&_mh_execute_header, location, v749, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to bring the previous line's last word into this line by forcing a line break before it. New text: %{public}s", v199, 0xCu);
                      __swift_destroy_boxed_opaque_existential_0Tm(v200);
                    }

                    else
                    {
                    }

                    SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v750);

                    a8 = v728;
LABEL_158:

LABEL_511:

                    v108 = 0;
                    v111 = 0;
                    v109 = 0;
                    v110 = 0;
                    goto LABEL_179;
                  }

                  v551 = v550;
                  v552 = _swiftEmptyArrayStorage[2];
                  if (v552)
                  {
                    v553 = 0;
                    v554 = &_swiftEmptyArrayStorage[4];
                    do
                    {
                      v556 = *v554++;
                      v555 = v556;
                      if ((v556 & ~v553) == 0)
                      {
                        v555 = 0;
                      }

                      v553 |= v555;
                      --v552;
                    }

                    while (v552);
                  }

                  else
                  {
                    v553 = 0;
                  }

                  [*&v258 boundsWithType:0 options:v553];
                  if (location)
                  {
                    goto LABEL_532;
                  }

                  specialized SyncedLyricsLineView.SBS_TextContentView.TextView.wordVisualRepresentations(for:lineFrame:typographicOrigin:lyricsWords:text:wordRangeAdjustment:lineStartingIndex:existingRepresentations:)(v545, v546, v547, v548, v557, v558, v551, v763, v730._countAndFlagsBits, v730._object, *&v745, v549, _swiftEmptyArrayStorage);
                  v560 = v559;
                  v844.origin.x = v545;
                  v844.origin.y = v546;
                  v844.size.width = v547;
                  v844.size.height = v548;
                  Width = CGRectGetWidth(v844);
                  if (Width > v27)
                  {
                    v27 = Width;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v109 + 2) + 1, 1, v109);
                  }

                  v563 = *(v109 + 2);
                  v562 = *(v109 + 3);
                  if (v563 >= v562 >> 1)
                  {
                    v109 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v562 > 1), v563 + 1, 1, v109);
                  }

                  ++v542;

                  *(v109 + 2) = v563 + 1;
                  v564 = &v109[16 * v563];
                  *(v564 + 4) = v560;
                  *(v564 + 5) = v551;
                  v541 = v746;
                  if (v542 == v751)
                  {
                    goto LABEL_452;
                  }
                }

                __break(1u);
LABEL_532:
                __break(1u);
LABEL_533:
                __break(1u);
                goto LABEL_534;
              }

              v109 = _swiftEmptyArrayStorage;
LABEL_452:

              if (v27 - MaxX > 0.0)
              {
                v27 = v27 - MaxX;
              }

              else
              {
                v27 = 0.0;
              }

              specialized Dictionary.subscript.getter(&v780, v762);
              v566 = v565;

              if (v566)
              {
                v567 = specialized Array._getCount()(v566);
                if (v567)
                {
                  v568 = v567 - 1;
                  if (__OFSUB__(v567, 1))
                  {
                    __break(1u);
                  }

                  else
                  {
                    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v567 - 1, (v566 & 0xC000000000000001) == 0, v566);
                    if ((v566 & 0xC000000000000001) == 0)
                    {
                      v569 = *(v566 + 8 * v568 + 32);

                      goto LABEL_460;
                    }
                  }

                  v569 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_460:

                  SyncedLyricsLineView.Word.frame.setter(v569[22], v569[23], v27 + v569[24], v569[25]);
                }

                else
                {
                }
              }

              else
              {
              }

              v108 = v768;
              v111 = v769;

LABEL_401:
              a8 = v728;
              v110 = v731;
              goto LABEL_179;
            }

LABEL_557:
            __break(1u);
LABEL_558:
            swift_once();
LABEL_425:
            v516 = type metadata accessor for Logger();
            __swift_project_value_buffer(v516, static Logger.lyrics);
            v517 = swift_allocObject();
            *(v517 + 16) = v249;
            v518 = v249;
            v519 = Logger.logObject.getter();
            v520 = static os_log_type_t.default.getter();
            v521 = swift_allocObject();
            *(v521 + 16) = 34;
            v522 = swift_allocObject();
            *(v522 + 16) = 8;
            v523 = swift_allocObject();
            *(v523 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
            *(v523 + 24) = v517;
            v524 = swift_allocObject();
            *(v524 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
            *(v524 + 24) = v523;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            v525 = swift_allocObject();
            *(v525 + 16) = xmmword_1004F2EB0;
            *(v525 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v525 + 40) = v521;
            *(v525 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v525 + 56) = v522;
            *(v525 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v525 + 72) = v524;
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2, &_syycMR_2);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v519, v520))
            {
              v526 = swift_slowAlloc();
              v527 = swift_slowAlloc();
              v756 = v527;
              *v526 = 136446210;
              v528 = v725[1];
              v757 = *v725;
              v758 = v528;
              v759 = 10519010;
              v760 = 0xA300000000000000;
              v754 = 44226;
              v755 = 0xA200000000000000;
              LODWORD(v751) = v520;
              v757 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v758 = v529;
              v530 = String.nonBreakingSpace.unsafeMutableAddressor();
              v531 = v530[1];
              v759 = *v530;
              v760 = v531;
              v754 = 0x3B7073626E26;
              v755 = 0xE600000000000000;
              v532 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v534 = v533;

              v757 = v532;
              v758 = v534;
              v759 = 10;
              v760 = 0xE100000000000000;
              v754 = 28252;
              v755 = 0xE200000000000000;
              v535 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v537 = v536;

              v538 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v535, v537, &v756);

              *(v526 + 4) = v538;
              _os_log_impl(&_mh_execute_header, v519, v751, "[Transliteration][Last word timing check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v526, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v527);

LABEL_507:

              goto LABEL_510;
            }

LABEL_509:

LABEL_510:

            a8 = v728;
            goto LABEL_511;
          }

          __break(1u);
          goto LABEL_557;
        }
      }

      v249 = 1;
      v314 = 1;
      if (v731)
      {
        goto LABEL_241;
      }

      goto LABEL_242;
    }

    v841.origin.x = v27;
    v841.origin.y = a10;
    v841.size.width = v264;
    v841.size.height = v266;
    v268 = CGRectGetWidth(v841);
    v41 = v720;
    if (v268 <= a9)
    {

      goto LABEL_239;
    }

    v41 = v762;
    specialized Dictionary.subscript.getter(&v806, v762);
    v270 = v269;

    if (!v270)
    {
LABEL_238:

      goto LABEL_239;
    }

    if (!specialized Array._getCount()(v270))
    {

      goto LABEL_238;
    }

    specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v270 & 0xC000000000000001) == 0, v270);
    if ((v270 & 0xC000000000000001) != 0)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v40 = *(v270 + 32);
    }

    specialized Dictionary.subscript.getter(&v780, v41);
    v272 = v271;

    if (v272)
    {
      v273 = specialized Array._getCount()(v272);
      if (v273)
      {
        v274 = v273;
        v703 = v45;

        v57 = __OFSUB__(v274, 1);
        v275 = v274 - 1;
        if (!v57)
        {
          specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v275, (v272 & 0xC000000000000001) == 0, v272);
          v27 = 0.0;
          if ((v272 & 0xC000000000000001) == 0)
          {
            v276 = *(v272 + 8 * v275 + 32);

LABEL_212:

            if (v731)
            {
              v277 = v40;
            }

            else
            {
              v277 = v276;
            }

            v278 = v746;
            SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v277);
            if (one-time initialization token for lyrics != -1)
            {
              swift_once();
            }

            v279 = type metadata accessor for Logger();
            __swift_project_value_buffer(v279, static Logger.lyrics);
            v280 = swift_allocObject();
            *(v280 + 16) = v278;
            v281 = v278;
            v282 = Logger.logObject.getter();
            v283 = static os_log_type_t.default.getter();
            v284 = swift_allocObject();
            *(v284 + 16) = 34;
            v285 = swift_allocObject();
            *(v285 + 16) = 8;
            v286 = swift_allocObject();
            *(v286 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
            *(v286 + 24) = v280;
            v287 = swift_allocObject();
            *(v287 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
            *(v287 + 24) = v286;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
            v288 = swift_allocObject();
            *(v288 + 16) = xmmword_1004F2EB0;
            *(v288 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v288 + 40) = v284;
            *(v288 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v288 + 56) = v285;
            *(v288 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
            *(v288 + 72) = v287;
            swift_setDeallocating();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2, &_syycMR_2);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v282, v283))
            {
              v289 = swift_slowAlloc();
              v290 = swift_slowAlloc();
              *&v792[0] = v290;
              *v289 = 136446210;
              v291 = v725[1];
              *&v812 = *v725;
              *(&v812 + 1) = v291;
              v802._countAndFlagsBits = 10519010;
              v802._object = 0xA300000000000000;
              v795 = 44226;
              v796 = 0xA200000000000000;
              location = v276;
              LODWORD(v751) = v283;
              *&v812 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              *(&v812 + 1) = v292;
              v293 = String.nonBreakingSpace.unsafeMutableAddressor();
              v294 = v293[1];
              v802._countAndFlagsBits = *v293;
              v802._object = v294;
              v795 = 0x3B7073626E26;
              v796 = 0xE600000000000000;
              v295 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v297 = v296;

              *&v812 = v295;
              *(&v812 + 1) = v297;
              v802._countAndFlagsBits = 10;
              v802._object = 0xE100000000000000;
              v795 = 28252;
              v796 = 0xE200000000000000;
              v298 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v300 = v299;

              v301 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v298, v300, v792);

              *(v289 + 4) = v301;
              _os_log_impl(&_mh_execute_header, v282, v751, "[Transliteration] Directions don't match and transliterated line goes beyond view bounds. Inserting line break. New text: %{public}s", v289, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v290);

              goto LABEL_219;
            }

LABEL_410:

LABEL_411:

            goto LABEL_477;
          }

LABEL_552:
          v276 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_212;
        }

LABEL_551:
        __break(1u);
        goto LABEL_552;
      }

LABEL_239:
    }

    else
    {
    }

    v249 = 0;
    v314 = 0;
    if (v731)
    {
LABEL_241:
      specialized MutableCollection<>.reverse()();
      v314 = v249;
    }

LABEL_242:
    if (__OFSUB__(0, location))
    {
      goto LABEL_533;
    }

    v316 = v763;
    specialized SyncedLyricsLineView.SBS_TextContentView.TextView.wordVisualRepresentations(for:lineFrame:typographicOrigin:lyricsWords:text:wordRangeAdjustment:lineStartingIndex:existingRepresentations:)(v27, a10, v264, v266, v27, a10, v45, v763, v730._countAndFlagsBits, *&v258, -location, 0, _swiftEmptyArrayStorage);
    v318 = v317;
    v761 = v317;
    v319 = specialized Array._getCount()(v317);
    v37 = v749;
    if (v319 < 1)
    {

      goto LABEL_383;
    }

    v320 = Int.seconds.getter(0);
    v27 = 0.0;
    if (!v314)
    {

      v108 = v768;
      v111 = v769;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX06SyncedD8LineViewC015SBS_TextContentG0C0iG0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLO8MetadataV0F0VGMd, &_ss23_ContiguousArrayStorageCy7LyricsX06SyncedD8LineViewC015SBS_TextContentG0C0iG0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLO8MetadataV0F0VGMR);
      v109 = swift_allocObject();
      *(v109 + 1) = xmmword_1004F2400;
      *(v109 + 4) = v318;
      *(v109 + 5) = *&v45;

      goto LABEL_400;
    }

    if (v731)
    {
      specialized MutableCollection<>.reverse()();
    }

    v699 = v316;
    v40 = v761;
    v716 = specialized Array._getCount()(v761);
    if (!v716)
    {

      location = 0;
      v444 = v320;
      v445 = v40;
      goto LABEL_392;
    }

    v736 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v707 = v40 + 32;
    v708 = v40 & 0xFFFFFFFFFFFFFF8;
    v321 = v751;
    v717 = v40 & 0xC000000000000001;
    v718 = v751 & 0xC000000000000001;
    v719 = v40;

    v745 = 0.0;
    *&v740 = 0.0;
    v258 = 0.0;
    v322 = 0;
    v323 = 0;
    v704 = v321 + 40;
    LODWORD(v748) = 1;
    *&v324 = 136446466;
    v705 = v324;
    *&v324 = 136315394;
    v706 = v324;
    v700 = v320;
    v701 = v320;
    LODWORD(v738) = 1;
    v703 = v45;
    v723 = object;
LABEL_252:
    if (v717)
    {
      v325 = object;
      v326 = v322;
      location = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v57 = __OFADD__(v326, 1);
      v327 = v326 + 1;
      if (v57)
      {
        goto LABEL_528;
      }

      break;
    }

    if (v322 >= *(v708 + 16))
    {
      __break(1u);
      goto LABEL_541;
    }

    v325 = object;
    location = *(v707 + 8 * v322);
    v328 = v322;

    v57 = __OFADD__(v328, 1);
    v327 = v328 + 1;
    if (v57)
    {
LABEL_528:
      __break(1u);
LABEL_529:
      __break(1u);
LABEL_530:
      swift_once();
      continue;
    }

    break;
  }

  v727 = v327;
  v329 = *(location + 32);
  v812 = *(location + 16);
  v813 = v329;
  v814 = *(location + 48);
  v815 = *(location + 64);
  v41 = v762;
  if (!v762[2].isa)
  {
    goto LABEL_269;
  }

  v833 = *(location + 32);
  v834 = v814;
  outlined init with copy of String(&v833, &v788);
  v37 = &_sSay7LyricsX0A0C8SyllableVGMd;
  outlined init with copy of TaskPriority?(&v834, &v788, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
  v330 = specialized __RawDictionaryStorage.find<A>(_:)(&v812);
  v40 = v331;
  outlined destroy of String(&v833);
  outlined destroy of TaskPriority?(&v834, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
  if ((v40 & 1) == 0)
  {
    goto LABEL_269;
  }

  v40 = *(v41[7].isa + v330);
  if (!(v40 >> 62))
  {
    object = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (object)
    {
      goto LABEL_262;
    }

LABEL_269:
    if (v748)
    {

      LODWORD(v748) = 1;
    }

    else
    {
      if (v258 != 0.0)
      {
        object = v325;
        if (v323)
        {
          a10 = v745;
          v340 = *(v323 + 144);
          v341 = *(v323 + 152);
          v342 = *(v323 + 160);
          v343 = *(v323 + 168);

          v843.origin.x = v340;
          v843.origin.y = v341;
          v843.size.width = v342;
          v843.size.height = v343;
          v344 = CGRectGetMaxX(v843);
          v345 = location;
          *(location + 144) = v344 + *(v325 + 336);
          SyncedLyricsLineView.Word.frame.setter(*(v345 + 176) + a10, *(v345 + 184), *(v345 + 192), *(v345 + 200));
          v346 = CGRectGetMaxX(*(v345 + 176));
          v347 = v346 - CGRectGetMinX(*(*&v258 + 176));
          if (CGRectGetWidth(*(*&v258 + 176)) >= v347)
          {

            LODWORD(v748) = 0;
            v27 = 0.0;
          }

          else
          {
            v348 = *(*&v258 + 192);
            v349 = v347 - v348 + *(v325 + 336);
            SyncedLyricsLineView.Word.frame.setter(*(*&v258 + 176), *(*&v258 + 184), v348 + v349, *(*&v258 + 200));
            v320 = v320 + v349;
            v27 = 0.0;
            if (CGRectGetMaxX(*(*&v258 + 176)) > a9)
            {
              v350 = *(v323 + 32);
              v786[0] = *(v323 + 16);
              v786[1] = v350;
              v786[2] = *(v323 + 48);
              v787 = *(v323 + 64);
              if (v41[2].isa)
              {
                v351 = specialized __RawDictionaryStorage.find<A>(_:)(v786);
                if (v352)
                {
                  v353 = *(v41[7].isa + v351);
                  if (v353 >> 62)
                  {
                    if (_CocoaArrayWrapper.endIndex.getter())
                    {
LABEL_378:
                      v702 = v323;
                      v720 = v41;

                      swift_bridgeObjectRelease_n();
                      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(0, (v353 & 0xC000000000000001) == 0, v353);
                      if ((v353 & 0xC000000000000001) != 0)
                      {
                        v249 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v249 = *(v353 + 32);
                      }

                      if (v731)
                      {
                        SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(*(v249 + 88), *(v249 + 96));
                        goto LABEL_535;
                      }

LABEL_534:
                      SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v249);
LABEL_535:
                      if (one-time initialization token for lyrics != -1)
                      {
                        swift_once();
                      }

                      v680 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v680, static Logger.lyrics);
                      v681 = v746;

                      v682 = Logger.logObject.getter();
                      v683 = static os_log_type_t.default.getter();

                      if (os_log_type_enabled(v682, v683))
                      {
                        v684 = swift_slowAlloc();
                        v751 = swift_slowAlloc();
                        v754 = v751;
                        *v684 = v706;
                        v685 = *(*&v258 + 72);
                        v686 = *(*&v258 + 80);

                        v687 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v685, v686, &v754);

                        *(v684 + 4) = v687;
                        *(v684 + 12) = 2082;
                        v688 = v725[1];
                        *&v788 = *v725;
                        *(&v788 + 1) = v688;
                        v757 = 10519010;
                        v758 = 0xA300000000000000;
                        v759 = 44226;
                        v760 = 0xA200000000000000;
                        *&v788 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        *(&v788 + 1) = v689;
                        v690 = String.nonBreakingSpace.unsafeMutableAddressor();
                        v691 = v690[1];
                        v757 = *v690;
                        v758 = v691;
                        v759 = 0x3B7073626E26;
                        v760 = 0xE600000000000000;
                        v692 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        v726 = v258;
                        v694 = v693;

                        *&v788 = v692;
                        *(&v788 + 1) = v694;
                        v757 = 10;
                        v758 = 0xE100000000000000;
                        v759 = 28252;
                        v760 = 0xE200000000000000;
                        v695 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        v697 = v696;

                        v698 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v695, v697, &v754);

                        *(v684 + 14) = v698;
                        _os_log_impl(&_mh_execute_header, v682, v683, "[Transliteration][Empty Map Entry] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v684, 0x16u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }

LABEL_521:

                      goto LABEL_475;
                    }
                  }

                  else if (*((v353 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_378;
                  }
                }
              }
            }

            LODWORD(v748) = 0;
          }
        }

        else
        {
          LODWORD(v748) = 0;
        }

LABEL_251:
        v323 = location;
        v322 = v727;
        if (v727 == v716)
        {

          v445 = v719;

          if (v258 != 0.0)
          {
            v446 = *(*&v258 + 112);
            if (v446 < v721)
            {

              v447 = v722;
              v448 = v751;
              if (v446 + 1 != v722)
              {
                v614 = v751 & 0xFFFFFFFFFFFFFF8;
                v615 = v446;
                while (1)
                {
                  if (v615 < v446 || v615 + 1 >= v447)
                  {
                    __break(1u);
LABEL_548:
                    __break(1u);
LABEL_549:
                    __break(1u);
                    goto LABEL_550;
                  }

                  if (v718)
                  {
                    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v615 < -1)
                    {
                      goto LABEL_548;
                    }

                    if ((v615 + 1) >= *(v614 + 16))
                    {
                      goto LABEL_549;
                    }

                    v40 = *(v448 + 8 * v615 + 40);
                  }

                  SyncedLyricsLineView.Word.frame.setter(v320 + *(v40 + 176), *(v40 + 184), *(v40 + 192), *(v40 + 200));
                  if (CGRectGetMaxX(*(v40 + 176)) > a9)
                  {
                    break;
                  }

                  ++v615;
                  v447 = v722;
                  v448 = v751;
                  if (v721 == v615)
                  {
                    goto LABEL_390;
                  }
                }

                if (!v731)
                {
                  goto LABEL_515;
                }

                SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(*(v40 + 88), *(v40 + 96));
LABEL_516:
                if (one-time initialization token for lyrics != -1)
                {
                  swift_once();
                }

                v659 = type metadata accessor for Logger();
                __swift_project_value_buffer(v659, static Logger.lyrics);
                v660 = v746;

                v661 = Logger.logObject.getter();
                v662 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v661, v662))
                {
                  v663 = swift_slowAlloc();
                  v664 = swift_slowAlloc();
                  v750 = v661;
                  v751 = v664;
                  v754 = v664;
                  *v663 = v706;
                  v665 = *(v40 + 72);
                  v666 = *(v40 + 80);

                  v667 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v665, v666, &v754);

                  *(v663 + 4) = v667;
                  *(v663 + 12) = 2082;
                  v668 = v725[1];
                  *&v788 = *v725;
                  *(&v788 + 1) = v668;
                  v757 = 10519010;
                  v758 = 0xA300000000000000;
                  v759 = 44226;
                  v760 = 0xA200000000000000;
                  LODWORD(v748) = v662;
                  *&v788 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  *(&v788 + 1) = v669;
                  v670 = String.nonBreakingSpace.unsafeMutableAddressor();
                  v671 = v670[1];
                  v757 = *v670;
                  v758 = v671;
                  v759 = 0x3B7073626E26;
                  v760 = 0xE600000000000000;
                  v672 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  v726 = v258;
                  v674 = v673;

                  *&v788 = v672;
                  *(&v788 + 1) = v674;
                  v757 = 10;
                  v758 = 0xE100000000000000;
                  v759 = 28252;
                  v760 = 0xE200000000000000;
                  v675 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  v677 = v676;

                  v678 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v675, v677, &v754);

                  *(v663 + 14) = v678;
                  v679 = v750;
                  _os_log_impl(&_mh_execute_header, v750, v748, "[Transliteration] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v663, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {
                }

                goto LABEL_521;
              }

LABEL_390:
            }
          }

          v444 = v701;
LABEL_392:
          v449 = specialized Array._getCount()(v445);
          if (v449)
          {
            v450 = v449;
            if (v449 < 1)
            {
LABEL_550:
              __break(1u);
              goto LABEL_551;
            }

            for (i = 0; i != v450; ++i)
            {
              if ((v445 & 0xC000000000000001) != 0)
              {
                v452 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
              }

              *(v452 + 224) = v444 + *(v452 + 224);
            }
          }

          v453 = v714;
          v108 = v768;
          v111 = v769;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7LyricsX06SyncedD8LineViewC015SBS_TextContentG0C0iG0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLO8MetadataV0F0VGMd, &_ss23_ContiguousArrayStorageCy7LyricsX06SyncedD8LineViewC015SBS_TextContentG0C0iG0C21TransliterationResult33_2B1CF170FA12E5118C57D48B547982CALLO8MetadataV0F0VGMR);
          v109 = swift_allocObject();
          *(v109 + 1) = xmmword_1004F2400;

          *&v788 = _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC7LyricsX06SyncedE8LineViewC0G0C_Tt0g5Tm(v454, specialized Array._copyContents(initializing:));
          specialized MutableCollection<>.sort(by:)(&v788);

          *(v109 + 4) = v788;
          *(v109 + 5) = *&v45;

LABEL_400:

          v27 = v320;
          goto LABEL_401;
        }

        goto LABEL_252;
      }

      LODWORD(v748) = 0;
    }

    object = v325;
    goto LABEL_251;
  }

  object = _CocoaArrayWrapper.endIndex.getter();
  if (!object)
  {
    goto LABEL_269;
  }

LABEL_262:
  v37 = v40 & 0xC000000000000001;
  if ((v40 & 0xC000000000000001) != 0)
  {

    v332 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_542;
    }

    v332 = *(v40 + 32);
  }

  v735 = object;
  v741 = v40 & 0xC000000000000001;
  v742 = v40;
  v737 = v332;
  v720 = v41;
  v702 = v323;
  v726 = v258;
  if (!v323)
  {
    LODWORD(v750) = 0;
    v747 = 0;
    v739 = 0;
    v734 = 0;
    v37 = 0;
    v354 = location;
    v355 = *(location + 32);
    v802 = *(location + 16);
    v803 = v355;
    v804 = *(location + 48);
    v805 = *(location + 64);
LABEL_285:
    object = *(v354 + 64);
    v356 = *(v354 + 32);
    v40 = *(v354 + 40);
    v45 = *(v354 + 16);
    v357 = *(v354 + 24);
    v835 = v803;
    v836 = v804;
    outlined init with copy of String(&v835, &v788);
    outlined init with copy of TaskPriority?(&v836, &v788, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
    outlined consume of Lyrics.Word?(v37, v734, v739, 0);
    outlined consume of Lyrics.Word?(v45, v357, v356, v40);
    goto LABEL_286;
  }

  v334 = *(v323 + 16);
  v333 = *(v323 + 24);
  v40 = *(v323 + 32);
  object = *(v323 + 40);
  v335 = v323;
  v336 = *(v323 + 48);
  v337 = *(v335 + 56);
  v37 = *(v335 + 64);
  v338 = *(location + 32);
  v802 = *(location + 16);
  v803 = v338;
  v804 = *(location + 48);
  v805 = *(location + 64);

  if (!object)
  {
    v354 = location;
    LODWORD(v750) = v37;
    v747 = v337;
    v739 = v40;
    v734 = v333;
    v37 = v334;
    goto LABEL_285;
  }

  v795 = v334;
  v796 = v333;
  v797 = v40;
  v798 = object;
  v799 = v336;
  v800 = v337;
  v801 = v37;
  v339 = specialized static Lyrics.Word.__derived_struct_equals(_:_:)(&v795, &v802);
  outlined consume of Lyrics.Word?(v334, v333, v40, object);
  if (v339)
  {

    v323 = v702;
    v45 = v703;
    v258 = v726;
    v41 = v720;
    v325 = v723;
    goto LABEL_269;
  }

LABEL_286:
  v734 = v735 - 1;
  v41 = v737;
  if (__OFSUB__(v735, 1))
  {
    goto LABEL_543;
  }

  swift_beginAccess();
  v358 = 0;
  v359 = v741;
  v37 = v742;
  v729 = v742 & 0xFFFFFFFFFFFFFF8;
  v739 = v742 + 32;
  a10 = v700;
  *&v45 = v726;
  v258 = *&v740;
  while (2)
  {
    if (v359)
    {
      v360 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v57 = __OFADD__(v358, 1);
      v361 = (v358 + 1);
      if (v57)
      {
        goto LABEL_514;
      }
    }

    else
    {
      if (v358 >= *(v729 + 16))
      {
        goto LABEL_525;
      }

      v360 = *(v739 + 8 * v358);

      v57 = __OFADD__(v358, 1);
      v361 = (v358 + 1);
      if (v57)
      {
LABEL_514:
        __break(1u);
LABEL_515:
        SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v40);
        goto LABEL_516;
      }
    }

    v362 = CGRectGetWidth(*(v360 + 176));

    if (v359)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v363 = === infix(_:_:)();

    v364 = *(v360 + 176);
    if (v363)
    {
      *(location + 144) = v364;
    }

    SyncedLyricsLineView.Word.frame.setter(v320 + v364, *(v360 + 184), *(v360 + 192), *(v360 + 200));
    v750 = v360;
    v747 = v361;
    if (*&v45 == 0.0)
    {
LABEL_322:
      swift_retain_n();
      if (v359)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v385 = === infix(_:_:)();

      if (v385)
      {
        v386 = v750[22].isa;
        v258 = *&v386 - *(location + 176);
        SyncedLyricsLineView.Word.frame.setter(*&v386, *&v750[23].isa, *(location + 192), *(location + 200));
        LODWORD(v748) = 0;
        LODWORD(v738) = 0;
        v745 = v258;
      }
    }

    else
    {
      v365 = v41;
      v366 = *(v45 + 112);
      v367 = *(v360 + 112);
      if (v367 <= v366)
      {
        v37 = *(v45 + 112);
      }

      else
      {
        v37 = *(v360 + 112);
      }

      if (v367 >= v366)
      {
        v368 = *(v45 + 112);
      }

      else
      {
        v368 = *(v360 + 112);
      }

      if (__OFADD__(v368, 1))
      {
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
        goto LABEL_528;
      }

      if (v368 + 1 < v37)
      {
        *&v740 = v258;
        v369 = v718;
        v370 = v751;
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v368 + 1, v718 == 0, v751);
        specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v37 - 1, v369 == 0, v370);

        v371 = (v368 + 1);
        if (v369)
        {
          do
          {
            v372 = v371 + 1;
            v373 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            SyncedLyricsLineView.Word.frame.setter(v320 + v373[22], v373[23], v373[24], v373[25]);
            swift_unknownObjectRelease();
            v371 = v372;
          }

          while (v37 != v372);
        }

        else
        {
          v374 = ~v368 + v37;
          v375 = (v704 + 8 * v368);
          do
          {
            v376 = *v375++;
            v27 = v376[23];
            v377 = v376[24];
            v378 = v376[25];
            v379 = v320 + v376[22];

            SyncedLyricsLineView.Word.frame.setter(v379, v27, v377, v378);

            --v374;
          }

          while (v374);
        }

        v365 = v737;
        v258 = *&v740;
        v359 = v741;
      }

      v380 = v745;
      if (v360 == v45)
      {
        v380 = v258;
      }

      v745 = v380;
      v381 = v748;
      if (v360 == v45)
      {
        v381 = v738;
      }

      if ((v360 != v45) | v738 & 1)
      {
        LODWORD(v748) = v381;
        v37 = v742;
        v41 = v365;
        goto LABEL_322;
      }

      v382 = *(location + 184);
      v383 = *(location + 192);
      v384 = *(location + 200);
      v27 = *(location + 176) + v258;

      SyncedLyricsLineView.Word.frame.setter(v27, v382, v383, v384);
      LODWORD(v748) = 0;
      LODWORD(v738) = 0;
      v745 = v258;
      v37 = v742;
      v41 = v365;
    }

    v387 = *&v41[4].isa;
    v792[0] = *&v41[2].isa;
    v792[1] = v387;
    v793 = *&v41[6].isa;
    v794 = v41[8].isa;
    v388 = *&v746[v736];
    if (*(v388 + 16))
    {
      v389 = v41;
      v837 = *&v41[4].isa;
      v838[0] = v793;
      outlined init with copy of String(&v837, &v788);
      outlined init with copy of TaskPriority?(v838, &v788, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);

      v390 = specialized __RawDictionaryStorage.find<A>(_:)(v792);
      v392 = v391;
      outlined destroy of String(&v837);
      outlined destroy of TaskPriority?(v838, &_sSay7LyricsX0A0C8SyllableVGMd, &_sSay7LyricsX0A0C8SyllableVGMR);
      if (v392)
      {
        v740 = *(*(v388 + 56) + 8 * v390);
      }

      else
      {

        *&v740 = 0.0;
      }

      v359 = v741;
      v37 = v742;
      v41 = v389;
      if (v741)
      {
LABEL_337:
        v393 = v750;

        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v358 = v747;
        goto LABEL_338;
      }
    }

    else
    {
      *&v740 = 0.0;
      if (v359)
      {
        goto LABEL_337;
      }
    }

    v358 = v747;
    if ((v734 & 0x8000000000000000) != 0)
    {
      goto LABEL_526;
    }

    if (v734 >= *(v729 + 16))
    {
      goto LABEL_527;
    }

    v393 = v750;

LABEL_338:
    a10 = a10 + v362;
    v40 = === infix(_:_:)();

    if ((v40 & 1) == 0)
    {
      goto LABEL_362;
    }

    v394 = v393[6].isa;
    v395 = *(v394 + 2);
    if (v395)
    {
      v396 = v394 + 56 * v395;
      v398 = *(v396 + 1);
      v397 = *(v396 + 2);
      v57 = __OFADD__(v398, v397);
      v395 = v398 + v397;
      if (v57)
      {
        goto LABEL_529;
      }

      v399 = *(v394 + 8);
    }

    else
    {
      v399 = 0;
    }

    v400 = v395 - v399;
    if (__OFSUB__(v395, v399))
    {
      goto LABEL_523;
    }

    v401 = v399 + v733;
    if (__OFADD__(v399, v733))
    {
      goto LABEL_524;
    }

    v402.location = v399 + v733;
    v402.length = v395 - v399;
    if (_NSRange.contains(_:)(v402))
    {
      goto LABEL_359;
    }

    if (v740 == 1)
    {

      v455 = v736;
      v456 = *&v737[4].isa;
      v788 = *&v737[2].isa;
      v789 = v456;
      v790 = *&v737[6].isa;
      v791 = v737[8].isa;
      v457 = v746;
      swift_beginAccess();
      v458 = swift_isUniquelyReferenced_nonNull_native();
      v759 = *&v457[v455];
      *&v457[v455] = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(2, &v788, v458);
      *&v457[v455] = v759;
      swift_endAccess();
      if (v741)
      {
        v459 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v460 = *(v459 + 88);
        swift_unknownObjectRelease();
      }

      else
      {
        v505 = *(v742 + 32);

        v460 = *(v505 + 88);
      }

      v27 = 0.0;
      if (v460 != v744)
      {
        v726 = *&v45;
        v249 = v746;
        v514 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8];
        v515 = v725;
        *v725 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v515[1] = v514;

        if (one-time initialization token for lyrics != -1)
        {
          goto LABEL_558;
        }

        goto LABEL_425;
      }

      v506 = String._bridgeToObjectiveC()();

      v507 = String._bridgeToObjectiveC()();
      v508 = String._bridgeToObjectiveC()();
      v509 = _swiftEmptyArrayStorage[2];
      if (v509)
      {
        v510 = 0;
        v511 = &_swiftEmptyArrayStorage[4];
        do
        {
          v513 = *v511++;
          v512 = v513;
          if ((v513 & ~v510) == 0)
          {
            v512 = 0;
          }

          v510 |= v512;
          --v509;
        }

        while (v509);
      }

      else
      {
        v510 = 0;
      }

      v616 = [v506 stringByReplacingOccurrencesOfString:v507 withString:v508 options:v510 range:{v401, v400}];

      v617 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v619 = v618;

      v620 = v725;
      *v725 = v617;
      v620[1] = v619;

      v621 = [v506 length];
      v463 = v620[1];

      v622 = String.count.getter();

      v57 = __OFSUB__(v621, v622);
      v470 = &v621[-v622];
      if (v57)
      {
        __break(1u);
      }

      else
      {
        v623 = specialized Lyrics.Word.range.getter(v393[6].isa);
        if (!__OFSUB__(v733, v470))
        {
          v625 = (v733 - v470) & ~((v733 - v470) >> 63);
          v470 = (v623 + v625);
          if (!__OFADD__(v623, v625))
          {
            v626 = v624;
            v627 = &v470[v624];
            if (!__OFADD__(v470, v624))
            {

              v628 = String.count.getter();

              if (v627 == v628)
              {

                goto LABEL_115;
              }

              v749 = v506;
              v726 = *&v45;
              v629 = v626;
              v630 = v746;
              SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(v470, v629);
              if (one-time initialization token for lyrics != -1)
              {
                swift_once();
              }

              v631 = type metadata accessor for Logger();
              __swift_project_value_buffer(v631, static Logger.lyrics);
              v632 = swift_allocObject();
              *(v632 + 16) = v630;
              v633 = v630;

              v748 = Logger.logObject.getter();
              LODWORD(v751) = static os_log_type_t.default.getter();
              v634 = swift_allocObject();
              *(v634 + 16) = 32;
              v635 = swift_allocObject();
              *(v635 + 16) = 8;
              v636 = swift_allocObject();
              *(v636 + 16) = partial apply for implicit closure #9 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
              *(v636 + 24) = *&v393;
              v637 = swift_allocObject();
              *(v637 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
              *(v637 + 24) = v636;
              v638 = swift_allocObject();
              *(v638 + 16) = 34;
              v639 = swift_allocObject();
              *(v639 + 16) = 8;
              v640 = swift_allocObject();
              *(v640 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
              *(v640 + 24) = v632;
              v641 = swift_allocObject();
              *(v641 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
              *(v641 + 24) = v640;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
              v642 = swift_allocObject();
              *(v642 + 16) = xmmword_1004F3070;
              *(v642 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v642 + 40) = v634;
              *(v642 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v642 + 56) = v635;
              *(v642 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v642 + 72) = v637;
              *(v642 + 80) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v642 + 88) = v638;
              *(v642 + 96) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v642 + 104) = v639;
              *(v642 + 112) = closure #1 in OSLogArguments.append(_:)partial apply;
              *(v642 + 120) = v641;
              swift_setDeallocating();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2, &_syycMR_2);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v643 = v748;
              if (os_log_type_enabled(v748, v751))
              {
                v644 = swift_slowAlloc();
                v756 = swift_slowAlloc();
                *v644 = v706;
                v645 = v393[9].isa;
                v646 = v393[10].isa;

                v647 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v645, v646, &v756);

                *(v644 + 4) = v647;
                *(v644 + 12) = 2082;
                v648 = v725[1];
                v757 = *v725;
                v758 = v648;
                v759 = 10519010;
                v760 = 0xA300000000000000;
                v754 = 44226;
                v755 = 0xA200000000000000;
                v757 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v758 = v649;
                v650 = String.nonBreakingSpace.unsafeMutableAddressor();
                v651 = v650[1];
                v759 = *v650;
                v760 = v651;
                v754 = 0x3B7073626E26;
                v755 = 0xE600000000000000;
                v652 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v654 = v653;

                v757 = v652;
                v758 = v654;
                v759 = 10;
                v760 = 0xE100000000000000;
                v754 = 28252;
                v755 = 0xE200000000000000;
                v655 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v657 = v656;

                v658 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v655, v657, &v756);

                *(v644 + 14) = v658;
                _os_log_impl(&_mh_execute_header, v643, v751, "[Transliteration] Word %s is not fully contained in this line, and it's the only word in this line. Adding line break after it and trying again. New text: %{public}s", v644, 0x16u);
                swift_arrayDestroy();

                goto LABEL_507;
              }

              goto LABEL_509;
            }

LABEL_562:
            __break(1u);
            goto LABEL_563;
          }

LABEL_561:
          __break(1u);
          goto LABEL_562;
        }
      }

      __break(1u);
      goto LABEL_561;
    }

    if (v740 >= 2)
    {
      if (one-time initialization token for lyrics != -1)
      {
        swift_once();
      }

      v414 = type metadata accessor for Logger();
      __swift_project_value_buffer(v414, static Logger.lyrics);
      v415 = v724;

      v416 = v730._object;

      v407 = Logger.logObject.getter();
      v417 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v407, v417))
      {
        v409 = swift_slowAlloc();
        v418 = swift_slowAlloc();
        v726 = *&v45;
        *&v788 = v418;
        *v409 = v705;
        *(v409 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(countAndFlagsBits, v415, &v788);
        *(v409 + 12) = 2082;
        *(v409 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v730._countAndFlagsBits, v416, &v788);
        v411 = v417;
        v412 = v407;
        v413 = "[Transliteration] Trying to insert a line break for the third time. The view might be too small to fulfill the layout requirements. Not doing any more adjustments. Line: %{public}s transliterated line: %{public}s";
LABEL_357:
        _os_log_impl(&_mh_execute_header, v412, v411, v413, v409, 0x16u);
        swift_arrayDestroy();
        *&v45 = v726;
      }
    }

    else
    {
      v403 = v737;
      if (v737[14].isa)
      {
        v500 = v740;

        v501 = *(v403 + 32);
        v788 = *(v403 + 16);
        v789 = v501;
        v790 = *(v403 + 48);
        v791 = *(v403 + 64);
        v502 = v746;
        v503 = v736;
        swift_beginAccess();
        v504 = swift_isUniquelyReferenced_nonNull_native();
        v759 = *&v502[v503];
        *&v502[v503] = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v500 + 1, &v788, v504);
        *&v502[v503] = v759;
        swift_endAccess();
        if (v731)
        {
          SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(*(v403 + 88), *(v403 + 96));
        }

        else
        {
          SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v403);
        }

        v27 = 0.0;
        v726 = *&v45;
        if (one-time initialization token for lyrics != -1)
        {
          swift_once();
        }

        v590 = type metadata accessor for Logger();
        __swift_project_value_buffer(v590, static Logger.lyrics);
        v591 = swift_allocObject();
        v592 = v746;
        *(v591 + 16) = v746;
        v593 = v592;
        v594 = Logger.logObject.getter();
        v595 = static os_log_type_t.default.getter();
        v596 = swift_allocObject();
        *(v596 + 16) = 34;
        v597 = swift_allocObject();
        *(v597 + 16) = 8;
        v598 = swift_allocObject();
        *(v598 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
        *(v598 + 24) = v591;
        v599 = swift_allocObject();
        *(v599 + 16) = implicit closure #1 in OSLogInterpolation.appendInterpolation(_:align:privacy:)partial apply;
        *(v599 + 24) = v598;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
        v600 = swift_allocObject();
        *(v600 + 16) = xmmword_1004F2EB0;
        *(v600 + 32) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v600 + 40) = v596;
        *(v600 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v600 + 56) = v597;
        *(v600 + 64) = closure #1 in OSLogArguments.append(_:)partial apply;
        *(v600 + 72) = v599;
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2, &_syycMR_2);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (os_log_type_enabled(v594, v595))
        {
          v601 = swift_slowAlloc();
          v602 = swift_slowAlloc();
          v756 = v602;
          *v601 = 136446210;
          v603 = v725[1];
          v757 = *v725;
          v758 = v603;
          v759 = 10519010;
          v760 = 0xA300000000000000;
          v754 = 44226;
          v755 = 0xA200000000000000;
          LODWORD(v751) = v595;
          v757 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v758 = v604;
          v605 = String.nonBreakingSpace.unsafeMutableAddressor();
          v606 = v605[1];
          v759 = *v605;
          v760 = v606;
          v754 = 0x3B7073626E26;
          v755 = 0xE600000000000000;
          v607 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v609 = v608;

          v757 = v607;
          v758 = v609;
          v759 = 10;
          v760 = 0xE100000000000000;
          v754 = 28252;
          v755 = 0xE200000000000000;
          v610 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v612 = v611;

          v613 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v610, v612, &v756);

          *(v601 + 4) = v613;
          _os_log_impl(&_mh_execute_header, v594, v751, "[Transliteration] Word is incomplete in this line, adding line break. New text: %{public}s", v601, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v602);
        }

        else
        {
        }

        goto LABEL_411;
      }

      if (one-time initialization token for lyrics != -1)
      {
        swift_once();
      }

      v404 = type metadata accessor for Logger();
      __swift_project_value_buffer(v404, static Logger.lyrics);
      v405 = v724;

      v406 = v730._object;

      v407 = Logger.logObject.getter();
      v408 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v407, v408))
      {
        v409 = swift_slowAlloc();
        v410 = swift_slowAlloc();
        v726 = *&v45;
        *&v788 = v410;
        *v409 = v705;
        *(v409 + 4) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(countAndFlagsBits, v405, &v788);
        *(v409 + 12) = 2082;
        *(v409 + 14) = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v730._countAndFlagsBits, v406, &v788);
        v411 = v408;
        v412 = v407;
        v413 = "[Transliteration] Word is incomplete in this line, but the current view size will not accomodate all of it. Not doing any adjustments. Line: %{public}s transliterated line: %{public}s";
        goto LABEL_357;
      }
    }

    v37 = v742;
LABEL_359:
    v40 = location;
    v419 = CGRectGetWidth(*(location + 176));
    v420 = v723;
    if (a10 < v419 + *(v723 + 336))
    {
      v421 = CGRectGetWidth(*(v40 + 176)) - a10 + *(v420 + 336);
      v320 = v320 + v421;
      SyncedLyricsLineView.Word.frame.setter(*&v393[22].isa, *&v393[23].isa, v421 + *&v393[24].isa, *&v393[25].isa);
    }

    v41 = v737;
    v359 = v741;
LABEL_362:
    v422 = CGRectGetMaxX(*&v393[22].isa);
    *&v788 = v422;
    v757 = *&a9;
    if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) != 0 || v422 <= a9)
    {

      goto LABEL_289;
    }

    if (v740 > 1)
    {
      v40 = v41;
      if (one-time initialization token for lyrics != -1)
      {
        swift_once();
      }

      v423 = type metadata accessor for Logger();
      __swift_project_value_buffer(v423, static Logger.lyrics);
      v424 = v746;
      v425 = Logger.logObject.getter();
      v426 = static os_log_type_t.default.getter();

      v715 = v426;
      if (os_log_type_enabled(v425, v426))
      {
        v427 = swift_slowAlloc();
        v754 = swift_slowAlloc();
        *v427 = v706;
        v428 = CGSize.description.getter();
        v40 = v425;
        v430 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v428, v429, &v754);

        *(v427 + 4) = v430;
        *(v427 + 12) = 2082;
        v431 = v725[1];
        *&v788 = *v725;
        *(&v788 + 1) = v431;
        v757 = 10519010;
        v758 = 0xA300000000000000;
        v759 = 44226;
        v760 = 0xA200000000000000;
        v726 = *&v45;
        *&v740 = v258;
        *&v788 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        *(&v788 + 1) = v432;
        v433 = String.nonBreakingSpace.unsafeMutableAddressor();
        v434 = v433[1];
        v757 = *v433;
        v758 = v434;
        v759 = 0x3B7073626E26;
        v760 = 0xE600000000000000;
        v435 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v437 = v436;

        *&v788 = v435;
        *(&v788 + 1) = v437;
        v757 = 10;
        v758 = 0xE100000000000000;
        v759 = 28252;
        v760 = 0xE200000000000000;
        v258 = *&v740;
        v37 = v742;
        v438 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v440 = v439;

        v441 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v438, v440, &v754);

        *(v427 + 14) = v441;
        _os_log_impl(&_mh_execute_header, v40, v715, "[Transliteration][Width check] Tried too many times to add a line break before the same word. This layout might be impossible, usually when the width is too narrow. Give up on adjustments. Size: %s Text: %{public}s", v427, 0x16u);
        swift_arrayDestroy();

        v359 = v741;
        v41 = v737;
      }

      else
      {

        v41 = v40;
      }

      v393 = v750;
LABEL_289:
      v45 = v393;
      if (v358 == v735)
      {
        v40 = v41;
        *&v740 = v258;

        v442 = location;
        v443 = CGRectGetMaxX(*(location + 176));
        v41 = v720;
        if (v701 < v443)
        {
          v701 = CGRectGetMaxX(*(v442 + 176));
        }

        v258 = *&v393;
        v27 = 0.0;
        v45 = v703;
        object = v723;
        goto LABEL_251;
      }

      continue;
    }

    break;
  }

  if (v740 == 1)
  {
    v726 = *&v45;
    v461 = v725;
    v462 = v725[1];
    *&v788 = *v725;
    *(&v788 + 1) = v462;

    v463 = String.nonBreakingSpace.unsafeMutableAddressor();
    v464 = v463[1];
    v757 = *v463;
    v758 = v464;
    v759 = 0;
    v760 = 0xE000000000000000;
    v465 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v466 = v41;
    v468 = v467;

    *v461 = v465;
    v461[1] = v468;

    v469 = *&v466[4].isa;
    v788 = *&v466[2].isa;
    v789 = v469;
    v790 = *&v466[6].isa;
    v791 = v466[8].isa;
    v470 = v746;
    v471 = v736;
    swift_beginAccess();
    v472 = swift_isUniquelyReferenced_nonNull_native();
    v759 = *&v470[v471];
    *&v470[v471] = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(2, &v788, v472);
    *&v470[v471] = v759;
    swift_endAccess();
    v27 = 0.0;
    if (one-time initialization token for lyrics == -1)
    {
LABEL_406:
      v473 = type metadata accessor for Logger();
      __swift_project_value_buffer(v473, static Logger.lyrics);
      v474 = swift_allocObject();
      *(v474 + 16) = v470;
      v475 = v470;
      v476 = Logger.logObject.getter();
      v477 = static os_log_type_t.default.getter();
      v478 = swift_allocObject();
      *(v478 + 16) = 34;
      v479 = swift_allocObject();
      *(v479 + 16) = 8;
      v480 = swift_allocObject();
      *(v480 + 16) = partial apply for implicit closure #19 in SyncedLyricsLineView.SBS_TextContentView.TextView.transliterationMetadata(transliteratedWords:previousLineWordRepresentations:originalWordRepresentations:originalStringRange:wordRangeAdjustment:size:);
      *(v480 + 24) = v474;
      v481 = swift_allocObject();
      *(v481 + 16) = _s2os18OSLogInterpolationV06appendC0_5align7privacyySSyXA_AA0B15StringAlignmentVAA0B7PrivacyVtFSSycfu_TA_0;
      *(v481 + 24) = v480;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMd, &_ss23_ContiguousArrayStorageCyySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcGMR);
      v482 = swift_allocObject();
      *(v482 + 16) = xmmword_1004F2EB0;
      *(v482 + 32) = _s2os14OSLogArgumentsV6appendyys5UInt8VFySpyAFGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      *(v482 + 40) = v478;
      *(v482 + 48) = closure #1 in OSLogArguments.append(_:)partial apply;
      *(v482 + 56) = v479;
      *(v482 + 64) = _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU_TA_0;
      *(v482 + 72) = v481;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd_2, &_syycMR_2);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v476, v477))
      {
        v483 = swift_slowAlloc();
        v484 = swift_slowAlloc();
        v756 = v484;
        *v483 = 136446210;
        v485 = v725[1];
        v757 = *v725;
        v758 = v485;
        v759 = 10519010;
        v760 = 0xA300000000000000;
        v754 = 44226;
        v755 = 0xA200000000000000;
        LODWORD(v751) = v477;
        v757 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v758 = v486;
        v487 = v463[1];
        v759 = *v463;
        v760 = v487;
        v754 = 0x3B7073626E26;
        v755 = 0xE600000000000000;
        v488 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v490 = v489;

        v757 = v488;
        v758 = v490;
        v759 = 10;
        v760 = 0xE100000000000000;
        v754 = 28252;
        v755 = 0xE200000000000000;
        v491 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v493 = v492;

        v494 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v491, v493, &v756);

        *(v483 + 4) = v494;
        _os_log_impl(&_mh_execute_header, v476, v751, "[Transliteration][Width check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v483, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v484);
      }

      else
      {
      }

      goto LABEL_476;
    }

LABEL_563:
    swift_once();
    goto LABEL_406;
  }

  v495 = *&v41[4].isa;
  v788 = *&v41[2].isa;
  v789 = v495;
  v790 = *&v41[6].isa;
  v791 = v41[8].isa;
  v496 = v746;
  v497 = v736;
  v498 = v740;
  swift_beginAccess();
  v499 = swift_isUniquelyReferenced_nonNull_native();
  v759 = *&v496[v497];
  *&v496[v497] = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v498 + 1, &v788, v499);
  *&v496[v497] = v759;
  swift_endAccess();
  v27 = 0.0;
  if (v731)
  {
    SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(after:)(v41[11].isa, v41[12].isa);
  }

  else
  {
    SyncedLyricsLineView.SBS_TextContentView.TextView.insertLineBreak(before:)(v41);
  }

  v570 = location;
  if (one-time initialization token for lyrics != -1)
  {
    swift_once();
  }

  v571 = type metadata accessor for Logger();
  __swift_project_value_buffer(v571, static Logger.lyrics);
  v572 = v746;

  v573 = Logger.logObject.getter();
  v574 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v573, v574))
  {
    v575 = swift_slowAlloc();
    v751 = swift_slowAlloc();
    location = v570;
    v756 = v751;
    *v575 = v706;
    v576 = v570[9];
    v577 = v570[10];

    v578 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v576, v577, &v756);

    *(v575 + 4) = v578;
    *(v575 + 12) = 2082;
    v579 = v725[1];
    v757 = *v725;
    v758 = v579;
    v759 = 10519010;
    v760 = 0xA300000000000000;
    v754 = 44226;
    v755 = 0xA200000000000000;
    v726 = *&v45;
    v757 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v758 = v580;
    v581 = String.nonBreakingSpace.unsafeMutableAddressor();
    v582 = v581[1];
    v759 = *v581;
    v760 = v582;
    v754 = 0x3B7073626E26;
    v755 = 0xE600000000000000;
    v583 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v585 = v584;

    v757 = v583;
    v758 = v585;
    v759 = 10;
    v760 = 0xE100000000000000;
    v754 = 28252;
    v755 = 0xE200000000000000;
    v586 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v588 = v587;

    v589 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_4(v586, v588, &v756);

    *(v575 + 14) = v589;
    _os_log_impl(&_mh_execute_header, v573, v574, "[Transliteration] Word %s crossed view bounds after adjustment, adding line break. New text: %{public}s", v575, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_475:

LABEL_476:

LABEL_477:
  v108 = 0;
  v111 = 0;
  v109 = 0;
  v110 = 0;
LABEL_116:
  a8 = v728;
LABEL_179:
  *a8 = v108;
  *(a8 + 1) = v111;
  *(a8 + 2) = v109;
  a8[3] = v27;
  *(a8 + 32) = v110;
}