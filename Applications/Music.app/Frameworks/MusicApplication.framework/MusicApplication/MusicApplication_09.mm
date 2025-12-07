uint64_t sub_C3A70()
{

  return swift_deallocObject();
}

uint64_t sub_C3AB0()
{

  return swift_deallocObject();
}

void sub_C3B38(void *a1)
{
  v2 = sub_AB9260();
  [a1 setInformalStaticAssetID:v2];
}

uint64_t sub_C3BA8()
{

  if (*(v0 + 56))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_C3C60()
{

  return swift_deallocObject();
}

void sub_C3CC0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 264);
  *(v2 + 264) = v1;
  v4 = v1;
  sub_BFE78(v3);
}

uint64_t sub_C3DA8()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_77Tm()
{

  return swift_deallocObject();
}

unint64_t sub_C3E88()
{
  result = qword_DED850;
  if (!qword_DED850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DED850);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_C3FDC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_C4024(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double sub_C4080()
{
  v0 = MTLCreateSystemDefaultDevice();
  sub_C40C0(v0, v2);
  xmmword_E70D50 = v2[0];
  *&qword_E70D60 = v2[1];
  result = *&v3;
  xmmword_E70D70 = v3;
  return result;
}

void sub_C40C0(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  if (!a1)
  {
    goto LABEL_13;
  }

  v4 = [swift_unknownObjectRetain() newCommandQueue];
  if (!v4)
  {
LABEL_12:
    swift_unknownObjectRelease();
LABEL_13:
    v18 = sub_AB9F30();
    sub_C43C0();
    v19 = sub_ABA980();
    sub_AB4A90(v18, &dword_0, v19, "Metal: Could not create default device, Metal rendering unavailable", 67, 2, _swiftEmptyArrayStorage);

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v5 = v4;
  if (qword_DE6AF0 != -1)
  {
    swift_once();
  }

  cacheOut = 0;
  v6 = [v2 newDefaultLibraryWithBundle:qword_E71620 error:&cacheOut];
  if (!v6)
  {
    v17 = cacheOut;
    sub_AB3050();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_12;
  }

  v7 = v6;
  v8 = cacheOut;
  swift_unknownObjectRelease();
  cacheOut = 0;
  v9 = CVMetalTextureCacheCreate(kCFAllocatorDefault, 0, v2, 0, &cacheOut);
  v10 = v9;
  v11 = cacheOut;
  if (cacheOut && !v9)
  {
    v12 = objc_allocWithZone(MTKTextureLoader);
    swift_unknownObjectRetain();
    v13 = v11;
    v14 = [v12 initWithDevice:v2];
    if ([v2 supportsFamily:1003])
    {
      v15 = *DeviceCapabilities.hasExtendedColorDisplay.unsafeMutableAddressor();
      swift_unknownObjectRelease();
      if (v15)
      {
        v16 = 552;
LABEL_21:

        goto LABEL_15;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v16 = 80;
    goto LABEL_21;
  }

  v20 = sub_AB9F30();
  sub_C43C0();
  v21 = sub_ABA980();
  if (os_log_type_enabled(v21, v20))
  {
    v22 = swift_slowAlloc();
    *v22 = 67109120;
    *(v22 + 4) = v10;
    _os_log_impl(&dword_0, v21, v20, "Metal: Unsuccessful creating CVMetalTextureCache, Metal rendering unavailable: %d", v22, 8u);
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

LABEL_14:
  v2 = 0;
  v5 = 0;
  v7 = 0;
  v14 = 0;
  v16 = 0;
  v11 = 0;
LABEL_15:
  *a2 = v2;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v14;
  a2[4] = v16;
  a2[5] = v11;
}

unint64_t sub_C43C0()
{
  result = qword_DED8C0;
  if (!qword_DED8C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DED8C0);
  }

  return result;
}

void sub_C44B8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13.receiver = v2;
  v13.super_class = type metadata accessor for JSBrickModelRequest();
  objc_msgSendSuper2(&v13, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a2, v12);
  if (swift_dynamicCast())
  {
    v5 = *&v2[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel];
    v6 = *&v11[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel];
    *&v11[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel] = v5;
    v7 = v5;

    v8 = *&v2[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse];
    v9 = *&v11[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse];
    *&v11[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_previousResponse] = v8;
    v10 = v8;
  }
}

double sub_C45F8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_60044();
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;

  v13 = a4;

  v14 = a1;
  swift_errorRetain();
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_C56C4, v12);

  return result;
}

double sub_C46C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v13 = *(*a1 + 152);

  v14 = a5;
  swift_errorRetain();
  v13(a2, sub_AAED4, v12);

  return result;
}

void sub_C49A4(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC16MusicApplication28JSBrickModelRequestOperation_request];
  v2 = *(v1 + OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel);
  if (v2)
  {
    v3 = v2;
    v4 = [v1 itemProperties];
    if (v4)
    {
      v5 = v4;
      v6 = [v1 itemKind];
      if (!v6 || (v7 = v6, [v6 modelClass], v7, swift_getObjCClassMetadata(), (v8 = objc_msgSend(swift_getObjCClassFromMetadata(), "requiredStoreLibraryPersonalizationProperties")) == 0))
      {
        v8 = [objc_opt_self() emptyPropertySet];
      }

      v9 = [v5 propertySetByCombiningWithPropertySet:v8];

      v10 = objc_allocWithZone(type metadata accessor for JSModelBrickItemBuilder());
      v11 = sub_405D10(v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v13 = sub_AB9260();
    v36 = v12;
    [v12 appendSection:v13];

    v14 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v15 = sub_AB9260();
    v35 = v14;
    [v14 appendSection:v15];

    v16 = JSBrick.items.getter();
    v18 = v16;
    if (v16 >> 62)
    {
      goto LABEL_24;
    }

    for (i = *(&dword_10 + (v16 & 0xFFFFFFFFFFFFFF8)); i; i = sub_ABB060())
    {
      v33 = v1;
      v34 = v3;
      v1 = 0;
      v3 = &selRef__authenticateReturningError_;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v24 = sub_360828(v1, v18, v17);
        }

        else
        {
          if (v1 >= *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_23;
          }

          v24 = *(v18 + 8 * v1 + 32);
        }

        v25 = v24;
        v26 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v11)
        {
          v27 = [a1 userIdentity];
          if (!v27)
          {
            __break(1u);
LABEL_21:

            v1 = v33;
            v3 = v34;
            goto LABEL_26;
          }

          v20 = v27;
          sub_4053EC(v25, v27);
          v22 = v21;

          [v35 appendItem:v25];
          v23 = v22;
          [v36 appendItem:v23];
        }

        ++v1;
        if (v26 == i)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      ;
    }

LABEL_26:
    v28 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:v1 unpersonalizedContentDescriptors:v36];
    [v28 setRepresentedObjects:v35];
    v29 = swift_allocObject();
    *(v29 + 16) = v1;
    *(v29 + 24) = a1;
    aBlock[4] = sub_C55D8;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_151E0;
    aBlock[3] = &block_descriptor_30;
    v30 = _Block_copy(aBlock);
    v31 = v1;
    v32 = a1;

    [v28 performWithResponseHandler:v30];
    _Block_release(v30);
  }

  else
  {
    __break(1u);
  }
}

void sub_C4DB8(void *a1, uint64_t a2, void *a3, char *a4)
{
  if (a1 && (objc_opt_self(), (v7 = swift_dynamicCastObjCClass()) != 0))
  {
    v8 = v7;
    objc_allocWithZone(type metadata accessor for JSBrickModelResponse());
    v9 = a1;
    v13 = sub_C5014(a3, v8);
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication28JSBrickModelRequestOperation_responseHandler];
    v11 = v13;
    v12 = v13;
  }

  else
  {
    v12 = 0;
    v10 = *&a4[OBJC_IVAR____TtC16MusicApplication28JSBrickModelRequestOperation_responseHandler];
  }

  v14 = v12;
  v10();

  [a4 finish];
}

char *sub_C5014(char *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_itemsDidChangeNotificationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_personalizationResponse] = a2;
  v4 = a2;
  v5 = [v4 representedObjectResults];
  if (!v5)
  {
    v5 = [objc_allocWithZone(MPSectionedCollection) init];
  }

  *&v2[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_jsResults] = v5;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for JSBrickModelResponse();
  result = objc_msgSendSuper2(&v22, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v4;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v21 = a1;
    v11 = *&a1[OBJC_IVAR____TtC16MusicApplication19JSBrickModelRequest_brickViewModel];
    v12 = v11;
    v13 = *JSBrick.itemsDidChangeNotification.unsafeMutableAddressor();
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for NotificationObserver();
    swift_allocObject();
    v15 = v9;
    v16 = v12;
    *&v15[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_itemsDidChangeNotificationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v13, v11, 1, 1, sub_AAF10, v14);

    v17 = MPModelResponseDidInvalidateNotification;
    v18 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v19 = v8;
    v20 = v17;

    swift_allocObject();
    *&v15[OBJC_IVAR____TtC16MusicApplication20JSBrickModelResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v20, v8, 1, 1, sub_AADB4, v18);

    LOBYTE(v18) = [v19 isValid];

    if ((v18 & 1) == 0)
    {
      [v15 _invalidate];
    }

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_C5440(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_C5508()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_C5558()
{

  return swift_deallocObject();
}

uint64_t sub_C5598()
{

  return swift_deallocObject();
}

uint64_t sub_C55E0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_C5618()
{

  return swift_deallocObject();
}

uint64_t sub_C566C()
{

  return swift_deallocObject();
}

uint64_t sub_C56D4()
{

  return swift_deallocObject();
}

void sub_C5728(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle];
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked] = 2;
  v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden] = 0;
  v11 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView;
  *&v4[v12] = sub_C6BB0();
  v13 = &v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_textComponents];
  *v13 = sub_C7580();
  v13[1] = v14;
  v15 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customTopSeparatorView;
  *&v4[v15] = [objc_allocWithZone(UIView) init];
  v16 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customBottomSeparatorView;
  *&v4[v16] = [objc_allocWithZone(UIView) init];
  *&v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView] = 0;
  v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_accessibilityIsSelectedChoice] = 0;
  v31.receiver = v4;
  v31.super_class = type metadata accessor for MultiChoiceCell(0);
  v17 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  v18 = v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment];
  v17[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_leadingSeparatorAlignment] = 1;
  v19 = v17;
  v20 = v19;
  if ((v18 & 1) == 0)
  {
    [v19 setNeedsLayout];
  }

  v21 = *(v20 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView);
  v22 = v20 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_textComponents;
  v23 = swift_beginAccess();
  v24 = *(v22 + 1);
  if (!(v24 >> 62))
  {
    v25 = *(&dword_10 + (v24 & 0xFFFFFFFFFFFFFF8));
    if (v25)
    {
      goto LABEL_5;
    }

LABEL_12:
    (*&stru_658.segname[(swift_isaMask & *v20) - 8])(v23);
    v30 = [v20 contentView];
    [v30 addSubview:*(v20 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView)];
    [v30 addSubview:*(v20 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView)];

    return;
  }

  v23 = sub_ABB060();
  v25 = v23;
  if (!v23)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v25 >= 1)
  {
    v26 = v21;

    for (i = 0; i != v25; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = sub_36003C(i, v24, v27);
      }

      else
      {
        v29 = *(v24 + 8 * i + 32);
      }

      TextStackView.add(_:)(v29);
    }

    goto LABEL_12;
  }

  __break(1u);
}

uint64_t sub_C5AB0(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title] != result || *&v2[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_textComponents;
      swift_beginAccess();
      v5 = *&v2[v4];

      v6 = String.trim()();

      swift_beginAccess();
      v5[7] = v6;

      sub_2EB704();

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

double sub_C5BD0(char *a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t))
{
  v9 = sub_AB92A0();
  v10 = &a1[*a4];
  v11 = *v10;
  v12 = v10[1];
  *v10 = v9;
  v10[1] = v13;
  v14 = a3;
  v15 = a1;
  a5(v11, v12);

  return result;
}

uint64_t sub_C5C64(uint64_t result, uint64_t a2)
{
  if (*&v2[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle] != result || *&v2[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8] != a2)
  {
    result = sub_ABB3C0();
    if ((result & 1) == 0)
    {
      v4 = *&v2[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView];

      v5 = String.trim()();

      v6 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text];
      v7 = *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text + 8];
      *&v4[OBJC_IVAR____TtC16MusicApplication13ParagraphView_text] = v5;
      sub_4CEE20(v6, v7);

      return [v2 setNeedsLayout];
    }
  }

  return result;
}

id sub_C5D5C(id result)
{
  v2 = v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked];
  if (v2 != 2)
  {
    v3 = v1;
    if (result == 2 || ((v2 ^ result) & 1) != 0)
    {
      v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_accessibilityIsSelectedChoice] = v2 & 1;
      p_name = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView;
      v5 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView];
      if (v2)
      {
        if (v5)
        {
          [*&v3[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView] setTintColor:0];
          v6 = *(p_name + v3);
          if (v6)
          {
            v7 = v6;
            v8 = sub_AB9260();
            v9 = [objc_opt_self() systemImageNamed:v8];

            [v7 setImage:v9];
          }
        }

        p_name = &JSDateDescriptor.name;
        result = [v3 tintColor];
        if (!result)
        {
          __break(1u);
          goto LABEL_19;
        }

        v10 = result;
        swift_beginAccess();
        sub_C6040(1, v10);
        swift_endAccess();

        v5 = *&v3[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView];
        v11 = [v3 tintColor];
        if (v11)
        {
LABEL_16:
          sub_4CDC88(v11);

          return [v3 setNeedsLayout];
        }

        __break(1u);
      }

      if (v5)
      {
        v12 = objc_opt_self();
        v13 = v5;
        v14 = [v12 tertiaryLabelColor];
        [v13 setTintColor:v14];

        v15 = *(p_name + v3);
        if (v15)
        {
          v16 = v15;
          v17 = sub_AB9260();
          v18 = [objc_opt_self() systemImageNamed:v17];

          [v16 setImage:v18];
        }
      }

      result = [v3 tintColor];
      if (result)
      {
        v19 = result;
        swift_beginAccess();
        sub_C6040(0, v19);
        swift_endAccess();

        v5 = *&v3[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView];
        v11 = 0;
        goto LABEL_16;
      }

LABEL_19:
      __break(1u);
    }
  }

  return result;
}

void sub_C6040(char a1, void *a2)
{
  if ((a1 & 1) == 0)
  {
    if (qword_DE6C98 != -1)
    {
      swift_once();
    }

    a2 = qword_E718D8;
  }

  v3 = *v2;
  v4 = qword_DE67D0;
  v5 = a2;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = qword_DEDB08;
  v7 = objc_opt_self();
  v8 = v5;
  v9 = v6;
  v10 = [v7 clearColor];
  swift_beginAccess();
  v11 = v3[4];
  v12 = v3[5];
  v13 = v3[6];
  v14 = v3[7];
  v15 = v3[8];
  v16 = v3[9];
  v17 = v3[10];
  v3[4] = v5;
  v3[5] = v10;
  *(v3 + 3) = xmmword_AF7C20;
  v3[8] = 0;
  v3[9] = 0;
  v3[10] = v9;
  sub_C7504(v11, v12, v13, v14, v15, v16, v17);
  sub_2EB2A8();
}

id sub_C61A0(char a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *a2;
  v7 = *&v3[*a2];
  v8 = [v3 contentView];
  v9 = [v7 isDescendantOfView:v8];

  if ((v9 & 1) == 0)
  {
    v10 = [v3 contentView];
    [v10 addSubview:*&v3[v6]];
  }

  v11 = *a3;
  result = [*&v3[v6] setHidden:v3[v11]];
  if (v3[v11] != (a1 & 1))
  {

    return [v3 setNeedsLayout];
  }

  return result;
}

void sub_C62B4()
{
  v1 = [objc_allocWithZone(UIImageView) init];
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView);
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView) = v1;
  v3 = v1;

  if (v3)
  {
    v4 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleBody scale:3];
    [v3 setPreferredSymbolConfiguration:v4];
  }
}

double sub_C6390()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView);
  if (!v1)
  {
    return 0.0;
  }

  [v1 sizeThatFits:{0.0, 0.0}];
  return result;
}

void sub_C63D8()
{
  v1 = v0;
  v91.receiver = v0;
  v91.super_class = type metadata accessor for MultiChoiceCell(0);
  objc_msgSendSuper2(&v91, "layoutSubviews");
  v2 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView;
  v3 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView];
    v5 = v3;
    if (([v5 isDescendantOfView:v4] & 1) == 0)
    {
      [v4 addSubview:v5];
    }
  }

  v6 = [v1 contentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  [v1 music_inheritedLayoutInsets];
  v16 = v15;
  v18 = v17;
  [v1 effectiveUserInterfaceLayoutDirection];
  v19 = UIEdgeInsetsInsetRect(v8, v10, v12, v14, v16, v18);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [v1 traitCollection];
  [v26 displayScale];

  sub_C6FC0(v19, v21, v23, v25);
  v82 = v25;
  v83 = v19;
  sub_C6DE8(v19, v21, v23, v25);
  v27 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView];
  [v27 bounds];
  v32 = *&v1[v2];
  if (v32)
  {
    v33 = v28;
    v34 = v29;
    v35 = v30;
    v36 = v31;
    v37 = v32;
    [v37 sizeThatFits:{v35, v36}];
    v80 = v23;
    v39 = v38;
    v41 = v40;
    v92.origin.x = v33;
    v92.origin.y = v34;
    v92.size.width = v35;
    v92.size.height = v36;
    CGRectGetMaxX(v92);
    v93.origin.x = 0.0;
    v93.origin.y = 0.0;
    v93.size.width = v39;
    v93.size.height = v41;
    CGRectGetWidth(v93);
    [v27 bounds];
    sub_ABA470();
    [v27 bounds];
    v23 = v80;
    sub_ABA490();
    [v37 setFrame:?];
  }

  [v27 frame];
  v42 = v23 - (CGRectGetWidth(v94) + 32.0);
  v43 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle + 8];
  if ((v43 & 0x2000000000000000) != 0)
  {
    v44 = HIBYTE(v43) & 0xF;
  }

  else
  {
    v44 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle] & 0xFFFFFFFFFFFFLL;
  }

  v45 = OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView;
  v81 = v42;
  [*&v1[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView] sizeThatFits:?];
  v47 = v46;
  v49 = v48;
  if (v44)
  {
    v50 = v83;
  }

  else
  {
    sub_ABA470();
    v50 = v51;
    v21 = v52;
    v47 = v53;
    v49 = v54;
  }

  v55 = *&v1[v45];
  sub_ABA490();
  [v55 setFrame:?];

  v95.origin.x = v50;
  v95.origin.y = v21;
  v95.size.width = v47;
  v95.size.height = v49;
  CGRectGetMaxY(v95);
  v96.origin.x = v50;
  v96.origin.y = v21;
  v96.size.width = v47;
  v96.size.height = v49;
  Height = CGRectGetHeight(v96);
  if (v44)
  {
    v57 = v82 - Height;
    v58 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView;
    v59 = *&v1[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView];
    sub_4CDE34(v81, v57);

    v60 = *&v1[v58];
    sub_ABA490();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = type metadata accessor for ParagraphView();
    v90.receiver = v60;
    v90.super_class = v69;
    objc_msgSendSuper2(&v90, "frame");
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v89.receiver = v60;
    v89.super_class = v69;
    objc_msgSendSuper2(&v89, "setFrame:", v62, v64, v66, v68);
    type metadata accessor for CGRect(0);
    v85 = v71;
    v86 = v73;
    v87 = v75;
    v88 = v77;
    v84.receiver = v60;
    v84.super_class = v69;
    objc_msgSendSuper2(&v84, "frame");
    if (sub_AB38D0())
    {
      [v60 setNeedsLayout];
      v78 = *&v60[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
      if (v78)
      {
        v79 = *&v60[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

        v78(v60);
        sub_17654(v78, v79);
      }
    }
  }
}

void sub_C6994()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for MultiChoiceCell(0);
  objc_msgSendSuper2(&v4, "tintColorDidChange");
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked);
  v2 = [v0 tintColor];
  if (v2)
  {
    v3 = v2;
    swift_beginAccess();
    sub_C6040(v1 & 1, v3);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_C6A8C(double a1)
{
  v3 = 0.0;
  if (*(v1 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView))
  {
    [*(v1 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView) frame];
    v3 = CGRectGetWidth(v7) + 32.0;
  }

  v4 = a1 - v3;
  [*(v1 + OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_textStackView) sizeThatFits:{v4, 5.99231045e307}];
  v5 = *(v1 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView);
  sub_4CDE34(v4, 5.99231045e307);

  sub_471A4();
  return sub_AB38F0();
}

_BYTE *sub_C6BB0()
{
  type metadata accessor for ParagraphView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_4CE4D0(0);
  sub_4CE638(0);
  v1 = v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets];
  v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_shouldApplyInheritedLayoutInsets] = 0;
  if (v1 == 1)
  {
    [v0 setNeedsLayout];
    v2 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v2)
    {
      v3 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

      v2(v0);
      sub_17654(v2, v3);
    }
  }

  v4 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle];
  *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textStyle] = 1;
  sub_31838(v4);
  v5 = sub_4CF7F0();
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  [v5 setTextColor:qword_E718D8];

  v6 = v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textSize];
  v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_textSize] = 2;
  if (v6 != 2)
  {
    sub_4CEF60();
    [v0 setNeedsLayout];
    v7 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler];
    if (v7)
    {
      v8 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_layoutInvalidationHandler + 8];

      v7(v0);
      sub_17654(v7, v8);
    }
  }

  v9 = &v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedFirstBaselineOffset];
  v10 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedFirstBaselineOffset];
  v11 = v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedFirstBaselineOffset + 8];
  *v9 = 0x4010000000000000;
  v9[8] = 0;
  sub_4CF890(v10, v11);
  v12 = &v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedLastBaselineOffset];
  v13 = *&v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedLastBaselineOffset];
  v14 = v0[OBJC_IVAR____TtC16MusicApplication13ParagraphView_forcedLastBaselineOffset + 8];
  *v12 = 0x4024000000000000;
  v12[8] = 0;
  sub_4CF89C(v13, v14);
  return v0;
}

id sub_C6DAC()
{
  result = [objc_opt_self() separatorColor];
  qword_DEDB00 = result;
  return result;
}

id sub_C6DE8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = [v4 traitCollection];
  [v9 displayScale];

  if (qword_DE67C8 != -1)
  {
    swift_once();
  }

  v10 = qword_DEDB00;
  [v4 effectiveUserInterfaceLayoutDirection];
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetMinY(v18);
  v11 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customTopSeparatorView;
  v12 = *&v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customTopSeparatorView];
  [v4 bounds];
  sub_ABA490();
  [v12 setFrame:?];

  [*&v4[v11] setBackgroundColor:v10];
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetMaxY(v19);
  v13 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customBottomSeparatorView;
  v14 = *&v4[OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customBottomSeparatorView];
  [v4 bounds];
  sub_ABA490();
  [v14 setFrame:?];

  v15 = *&v4[v13];

  return [v15 setBackgroundColor:v10];
}

id sub_C6FC0(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = [v4 traitCollection];
  [v9 displayScale];

  v10 = [v4 effectiveUserInterfaceLayoutDirection];
  v11 = (*&stru_658.segname[swift_isaMask & *v4])(v10);
  v13 = v12;
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetMaxX(v17);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v11;
  v18.size.height = v13;
  CGRectGetWidth(v18);
  [v4 bounds];
  sub_ABA470();
  [v4 bounds];
  sub_ABA490();
  v14 = *(v4 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView);

  return [v14 setFrame:?];
}

void sub_C7164()
{
  sub_89F60();
  v0 = UIFontTextStyleBody;
  v1 = sub_ABA550();

  qword_DEDB08 = v1;
}

void sub_C71EC()
{

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView);
}

id sub_C72A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MultiChoiceCell(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MultiChoiceCell(uint64_t a1)
{
  result = qword_DEDB58;
  if (!qword_DEDB58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C7470(uint64_t *a1, int a2)
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

uint64_t sub_C74B8(uint64_t result, int a2, int a3)
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

double sub_C7504(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  if (a6 < 0)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_C7580()
{
  if (qword_DE67D0 != -1)
  {
    swift_once();
  }

  v0 = qword_DE6C98;
  v1 = qword_DEDB08;
  if (v0 != -1)
  {
    swift_once();
  }

  v2 = qword_E718D8;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 clearColor];
  *&v10[0] = v2;
  *(&v10[0] + 1) = v5;
  v10[1] = xmmword_AF7C20;
  v11 = 0;
  v12 = 0;
  v13 = v1;
  v14 = 0;
  v15 = xmmword_AFBCE0;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v6 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_AF82B0;
  *(v7 + 32) = v6;
  v16[0] = v2;
  v16[1] = v5;
  v17 = xmmword_AF7C20;
  v18 = 0;
  v19 = 0;
  v20 = v1;
  v21 = 0;
  v22 = xmmword_AFBCE0;
  sub_2F118(v10, v9);

  sub_2F174(v16);
  return v6;
}

void sub_C772C()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = (v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitle);
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isPicked) = 2;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isTopSeparatorHidden) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_isBottomSeparatorHidden) = 0;
  v3 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_selectorView;
  *(v0 + v3) = [objc_allocWithZone(UIView) init];
  v4 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_subtitleTextView;
  *(v0 + v4) = sub_C6BB0();
  v5 = (v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_textComponents);
  *v5 = sub_C7580();
  v5[1] = v6;
  v7 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customTopSeparatorView;
  *(v0 + v7) = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_customBottomSeparatorView;
  *(v0 + v8) = [objc_allocWithZone(UIView) init];
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_checkmarkView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication15MultiChoiceCell_accessibilityIsSelectedChoice) = 0;
  sub_ABAFD0();
  __break(1u);
}

Class sub_C78D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, Class *a5@<X8>)
{
  v9 = *a1;
  v10 = OBJC_IVAR____TtC11MusicJSCore13JSMenuSection_items;
  swift_beginAccess();
  v11 = *(v9 + v10);
  v22 = a2;
  v23 = a3;
  v24 = a4;

  sub_4BF0FC(sub_C7D88, v21, v11, v12);
  v14 = v13;

  sub_13C80(0, &qword_DF1D50, UIMenu_ptr);
  v15 = (v9 + OBJC_IVAR____TtC11MusicJSCore13JSMenuSection_title);
  swift_beginAccess();
  v16 = *v15;
  v17 = v15[1];

  v26._countAndFlagsBits = v16;
  v26._object = v17;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v25.value.super.isa = 0;
  v25.is_nil = 0;
  v18.value = (&dword_0 + 1);
  result = sub_ABA5B0(v26, v27, v25, v18, 0xFFFFFFFFFFFFFFFFLL, v14, v20).super.super.isa;
  *a5 = result;
  return result;
}

void sub_C7A0C(void **a1@<X0>, void (*a2)(uint64_t a1)@<X2>, uint64_t a3@<X3>, Class *a4@<X8>, _BOOL8 a5@<X1>)
{
  v9 = *a1;
  v10 = (*(&stru_68.offset + (swift_isaMask & **a1)))();
  if (v10)
  {
    v11 = v10;
    v12 = (*&stru_68.segname[(swift_isaMask & *v9) + 8])();
    v14 = v13;
    v15 = JSMenu.sections.getter();
    v16 = __chkstk_darwin();
    v32 = a5;
    v33 = a2;
    v34 = v11;
    sub_4BF0D0(sub_70FB0, v31, v15, v16);
    v18 = v17;

    if (v14)
    {
      v19 = v14;
    }

    else
    {
      v12 = 0;
      v19 = 0xE000000000000000;
    }

    if (v18 >> 62)
    {
      sub_13C80(0, &qword_DEAB30, UIMenuElement_ptr);

      v20 = sub_ABAFF0();
    }

    else
    {

      sub_ABB3E0();
      sub_13C80(0, &qword_DEAB30, UIMenuElement_ptr);
      v20 = v18;
    }

    sub_13C80(0, &qword_DF1D50, UIMenu_ptr);
    v38._countAndFlagsBits = v12;
    v38._object = v19;
    v39.value._countAndFlagsBits = 0;
    v39.value._object = 0;
    v37.value.super.isa = 0;
    v37.is_nil = 0;
    v21.value = 0;
    v22.super.super.isa = sub_ABA5B0(v38, v39, v37, v21, 0xFFFFFFFFFFFFFFFFLL, v20, v35).super.super.isa;
  }

  else
  {
    (*&stru_68.segname[(swift_isaMask & *v9) + 8])();
    v23 = OBJC_IVAR____TtC11MusicJSCore6JSMenu_preselectedItem;
    swift_beginAccess();
    v24 = *(a3 + v23);
    v28 = 0;
    if (v24)
    {
      type metadata accessor for JSMenuItem();
      v25 = v9;
      v26 = v24;
      v27 = sub_ABA790();

      if (v27)
      {
        v28 = 1;
      }
    }

    sub_13C80(0, &unk_E05310, UIAction_ptr);
    sub_15F28(a2, v36);
    v29 = swift_allocObject();
    *(v29 + 16) = v9;
    sub_17704(v36, v29 + 24);
    v30 = v9;
    v31[0] = 0;
    v31[1] = 0;
    v33 = sub_C85DC;
    v34 = v29;
    v32 = v28;
    v22.super.super.isa = sub_ABA7D0();
  }

  *a4 = v22.super.super.isa;
}

void sub_C7DAC(uint64_t a1, void *a2, uint64_t a3)
{
  v54 = a2;
  v51 = sub_AB3430();
  v50 = *(v51 - 8);
  __chkstk_darwin();
  v49 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_AB3820();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = _s23MusicPerformanceContextVMa(0);
  __chkstk_darwin();
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E037A0, &unk_AF8B30);
  __chkstk_darwin();
  v11 = &v47 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v47 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEA510, "\b]\r");
  __chkstk_darwin();
  v17 = &v47 - v16;
  v52 = JSSegueCoordinator.shared.unsafeMutableAddressor();
  v18 = type metadata accessor for PlaybackIntentDescriptor(0);
  memset(v58, 0, sizeof(v58));
  v59 = 0;
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_15F84(v58, &v55, &unk_DE8E30, "\b]\r");
  if (!*(&v56 + 1))
  {
    sub_12E1C(&v55, &unk_DE8E30, "\b]\r");
    v25 = _s30CollectionViewSelectionHandlerVMa(0);
    (*(*(v25 - 8) + 56))(v11, 1, 1, v25);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E50, &qword_AF8060);
  v19 = a3;
  v20 = _s30CollectionViewSelectionHandlerVMa(0);
  v21 = swift_dynamicCast();
  v22 = *(v20 - 8);
  (*(v22 + 56))(v11, v21 ^ 1u, 1, v20);
  v23 = (*(v22 + 48))(v11, 1, v20);
  a3 = v19;
  if (v23 == 1)
  {
LABEL_5:
    sub_12E1C(v11, &qword_E037A0, &unk_AF8B30);
    v24 = 1;
    goto LABEL_6;
  }

  (*(v6 + 16))(v15, &v11[*(v20 + 20)], v5);
  sub_2D6C0(v11, _s30CollectionViewSelectionHandlerVMa);
  v24 = 0;
LABEL_6:
  (*(v6 + 56))(v15, v24, 1, v5);
  v26 = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v28 = Strong, sub_12B2FC(), v30 = v29, v32 = v31, v28, v30))
  {
    ObjectType = swift_getObjectType();
    (*(v32 + 8))(ObjectType, v32);
    v35 = v34;
    swift_unknownObjectRelease();
    sub_15F84(v15, v13, &unk_DE8E20, &qword_AF7990);
    if ((*(v6 + 48))(v13, 1, v5) == 1)
    {
      sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
      v55 = 0u;
      v56 = 0u;
      v57 = 0;
    }

    else
    {
      (*(v6 + 32))(v48, v13, v5);
      sub_2D668();
      sub_ABAD10();
    }

    v37 = swift_getObjectType();
    v38 = v49;
    sub_3B8F68(v37);
    v36 = sub_21CCAC(1, v38, &v55, v37, v35);
    (*(v50 + 8))(v38, v51);
    sub_12E1C(&v55, &qword_DF2BD0, &unk_AFDC00);
    sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_12E1C(v15, &unk_DE8E20, &qword_AF7990);
    v36 = 0;
  }

  v39 = swift_unknownObjectWeakLoadStrong();
  if (v39)
  {
    v40 = v39;
    sub_12AFE8();
    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  sub_15F28(v26, &v55);
  sub_15F84(v58, (v9 + 104), &unk_DE8E30, "\b]\r");
  v43 = v53;
  sub_15F84(v17, &v9[*(v53 + 28)], &unk_DEA510, "\b]\r");
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *(v9 + 8) = 1;
  *(v9 + 9) = 0;
  *(v9 + 10) = 0;
  *(v9 + 11) = 0;
  sub_2D594(&v55, v9);
  *(v9 + 12) = 0;
  v44 = *v52;
  *(&v56 + 1) = v43;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v55);
  sub_2D604(v9, boxed_opaque_existential_0);
  v46 = v44;
  JSSegueCoordinator.initiateSegue(source:type:snapshotImpressions:pageDetailsProvider:performanceContext:)(v54, 0, v36, v42, &v55);
  sub_12E1C(v17, &unk_DEA510, "\b]\r");
  sub_12E1C(v58, &unk_DE8E30, "\b]\r");
  sub_2D6C0(v9, _s23MusicPerformanceContextVMa);

  sub_12E1C(&v55, &unk_DE8E40, &unk_AF8050);
}

uint64_t sub_C8560()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + 72);
  if (v1 != 255)
  {
    sub_17774(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  if (*(v0 + 88))
  {
  }

  if (*(v0 + 104))
  {
  }

  return swift_deallocObject();
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_C8604(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_C864C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_C86C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v1();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980, &qword_AFC050);
  return sub_AB7650();
}

void sub_C8734(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_AB7A30();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB80, &qword_AFC098);
  sub_C8784(a1, a2 + *(v5 + 44));
}

void sub_C8784(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB88, &qword_AFC0A0);
  v4 = *(v20 - 8);
  __chkstk_darwin();
  v6 = &v18 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB90, &qword_AFC0A8);
  __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v18 - v9;
  v11 = a1[1];
  v19 = *a1;
  v22 = *(a1 + 2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980, &qword_AFC050);
  sub_AB7640();
  v12 = v21;
  v22 = *(a1 + 2);
  sub_AB7640();
  if (v21 == 1)
  {
    sub_AB58D0();
    v13 = v20;
    (*(v4 + 32))(v10, v6, v20);
    v14 = 0;
    v15 = v13;
  }

  else
  {
    v14 = 1;
    v15 = v20;
  }

  (*(v4 + 56))(v10, v14, 1, v15);
  if (v12)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  sub_15F84(v10, v8, &qword_DEDB90, &qword_AFC0A8);
  *a2 = v19;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB98, &qword_AFC0B0);
  sub_15F84(v8, a2 + *(v17 + 48), &qword_DEDB90, &qword_AFC0A8);

  sub_C8ED0(v10);
  sub_C8ED0(v8);
}

uint64_t sub_C8A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v13 = *v1;
  v14 = v3;
  v15 = v1[2];
  v16 = v13;
  v4 = v3;
  v17 = v15;
  v5 = swift_allocObject();
  v6 = v1[1];
  v5[1] = *v1;
  v5[2] = v6;
  v5[3] = v1[2];
  sub_C8C3C(&v16, &v12);
  sub_307CC(v4, *(&v4 + 1));
  sub_15F84(&v17, &v12, &qword_DFE980, &qword_AFC050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB68, &qword_AFC058);
  sub_36A00(&qword_DEDB70, &qword_DEDB68, &qword_AFC058, &protocol conformance descriptor for ZStack<A>);
  sub_AB7690();
  v12 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE980, &qword_AFC050);
  sub_AB7640();
  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = v11;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB78, &qword_AFC090);
  v10 = (a1 + *(result + 36));
  *v10 = KeyPath;
  v10[1] = sub_C8EC8;
  v10[2] = v8;
  return result;
}

uint64_t sub_C8BDC()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

void sub_C8C98(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v28 = a1;
  *(&v28 + 1) = a2;
  sub_36A48();

  v4 = sub_AB6F20();
  v6 = v5;
  v8 = v7;
  sub_AB74B0();
  v9 = sub_AB6E10();
  v11 = v10;
  v13 = v12;

  sub_36B74(v4, v6, v8 & 1);

  sub_AB6CC0();
  v14 = sub_AB6E80();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_36B74(v9, v11, v13 & 1);

  KeyPath = swift_getKeyPath();
  sub_AB7A30();
  sub_AB5E90();
  *&v27[55] = v31;
  *&v27[71] = v32;
  *&v27[87] = v33;
  *&v27[103] = v34;
  *&v27[7] = v28;
  *&v27[23] = v29;
  LOBYTE(v11) = v18 & 1;
  *&v27[39] = v30;
  v22 = sub_AB6AA0();
  sub_AB5690();
  *(a3 + 105) = *&v27[64];
  *(a3 + 121) = *&v27[80];
  *(a3 + 137) = *&v27[96];
  *(a3 + 41) = *v27;
  *(a3 + 57) = *&v27[16];
  *(a3 + 73) = *&v27[32];
  *a3 = v14;
  *(a3 + 8) = v16;
  *(a3 + 16) = v11;
  *(a3 + 24) = v20;
  *(a3 + 32) = KeyPath;
  *(a3 + 40) = 1;
  *(a3 + 152) = *(&v34 + 1);
  *(a3 + 89) = *&v27[48];
  *(a3 + 160) = v22;
  *(a3 + 168) = v23;
  *(a3 + 176) = v24;
  *(a3 + 184) = v25;
  *(a3 + 192) = v26;
  *(a3 + 200) = 0;
}

uint64_t sub_C8ED0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDB90, &qword_AFC0A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_C8F4C()
{
  result = qword_DEDBA0;
  if (!qword_DEDBA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEDB78, &qword_AFC090);
    sub_36A00(&qword_DEDBA8, &qword_DEDBB0, &qword_AFC108, &protocol conformance descriptor for Button<A>);
    sub_36A00(&qword_DEDBB8, &qword_DEDBC0, qword_AFC110, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDBA0);
  }

  return result;
}

unint64_t sub_C9058()
{
  result = qword_DEDBC8;
  if (!qword_DEDBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEDBD0, &qword_AFC198);
    sub_C90E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDBC8);
  }

  return result;
}

unint64_t sub_C90E4()
{
  result = qword_DEDBD8;
  if (!qword_DEDBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEDBE0, &unk_AFC1A0);
    sub_C9170();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDBD8);
  }

  return result;
}

unint64_t sub_C9170()
{
  result = qword_DEDBE8;
  if (!qword_DEDBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_DEDBF0, &unk_B08A20);
    sub_36A00(&qword_DEDBF8, &qword_DFE960, &unk_AFC1B0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDBE8);
  }

  return result;
}

id sub_C928C(void *a1)
{
  *&v1[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model] = 0;
  v1[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_preventStoreItemMetadataCaching] = 2;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for StoreModelItemRequest();
  v3 = objc_msgSendSuper2(&v8, "initWithCoder:", a1);
  if (v3)
  {
    sub_13C80(0, &qword_DEDE20, MPModelObject_ptr);
    v4 = v3;
    v5 = sub_ABA710();
    v6 = *&v4[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model];
    *&v4[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model] = v5;

    a1 = v6;
  }

  return v3;
}

void sub_C9448(uint64_t a1@<X0>, void *a3@<X8>)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for StoreModelItemRequest();
  objc_msgSendSuper2(&v11, "copyWithZone:", a1);
  sub_ABAB50();
  swift_unknownObjectRelease();
  sub_808B0(a3, v10);
  if (swift_dynamicCast())
  {
    v6 = *&v3[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model];
    v7 = *&v9[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model];
    *&v9[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model] = v6;
    v8 = v6;
  }
}

id sub_C9574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = JSViewModelRequestCoordinator.sharedCoordinator.unsafeMutableAddressor();
  v7 = *v6;
  v8 = *(**v6 + 144);

  result = v8(v9);
  v11 = v3[OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_preventStoreItemMetadataCaching];
  if (v11 == 2)
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = swift_allocObject();
    *(v13 + 2) = v7;
    *(v13 + 3) = v12;
    *(v13 + 4) = a1;
    *(v13 + 5) = a2;
    v14 = type metadata accessor for StoreModelItemRequestOperation();
    v15 = objc_allocWithZone(v14);

    v16 = v3;
    [v16 copy];
    sub_ABAB50();
    type metadata accessor for StoreModelItemRequest();
    swift_dynamicCast();
    *&v15[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_request] = v20;
    swift_unknownObjectRelease();
    v17 = &v15[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_responseHandler];
    *v17 = sub_CB540;
    v17[1] = v13;
    v15[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_preventStoreItemMetadataCaching] = v11 & 1;
    v19.receiver = v15;
    v19.super_class = v14;
    v18 = objc_msgSendSuper2(&v19, "init");

    return v18;
  }

  return result;
}

double sub_C96F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a5;
  v12[3] = a6;
  v12[4] = a1;
  v12[5] = a2;
  v13 = *(*a3 + 152);

  v14 = a1;
  swift_errorRetain();
  v13(a4, sub_AAED4, v12);

  return result;
}

Swift::Int NSFileManager.Failure.hashValue.getter()
{
  sub_ABB5C0();
  sub_ABB5D0(0);
  return sub_ABB610();
}

Swift::Int sub_C9910(uint64_t a1)
{
  sub_ABB5C0();
  sub_ABB5D0(0);
  return sub_ABB610();
}

void sub_C995C()
{
  v1 = v0;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for StoreModelItemRequestOperation();
  objc_msgSendSuper2(&v19, "execute");
  v2 = *(*&v0[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_request] + OBJC_IVAR____TtC16MusicApplication21StoreModelItemRequest_model);
  if (v2)
  {
    v3 = v2;
    v4 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    v5 = MPModelObject.bestIdentifier(for:)(*v4, 0);
    if (v6)
    {
      v7 = v5;
      v8 = v6;
      v9 = [objc_opt_self() sharedStoreItemMetadataRequestController];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_AF4EC0;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;

      isa = sub_AB9740().super.isa;

      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = swift_allocObject();
      v13[2] = v12;
      v13[3] = v7;
      v13[4] = v8;
      v13[5] = v3;
      v18[4] = sub_CB444;
      v18[5] = v13;
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 1107296256;
      v18[2] = sub_151E0;
      v18[3] = &block_descriptor_26;
      v14 = _Block_copy(v18);
      v15 = v3;

      [v9 requestStoreItemMetadataForReason:1 withItemIdentifiers:isa responseHandler:v14];
      _Block_release(v14);

      return;
    }
  }

  v16 = *&v1[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_responseHandler];
  sub_CB370();
  v17 = swift_allocError();
  v16(0, v17);

  [v1 finish];
}

void sub_C9BB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (!a1 || a2)
    {
      (*(Strong + OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_responseHandler))(0, a2);
      [v9 finish];
LABEL_5:

      return;
    }

    v10 = a1;
    if (![v10 isFinalResponse])
    {

      goto LABEL_5;
    }

    v11 = [objc_allocWithZone(MPMutableSectionedCollection) init];
    v12 = sub_AB9260();
    v13 = [v10 storeItemMetadataForItemIdentifier:v12];

    if (!v13)
    {
LABEL_54:
      v47 = [objc_allocWithZone(MPStoreLibraryPersonalizationRequest) initWithUnpersonalizedRequest:*&v9[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_request] unpersonalizedContentDescriptors:v11];
      v48 = swift_allocObject();
      *(v48 + 16) = v9;
      aBlock[4] = sub_CB488;
      aBlock[5] = v48;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_151E0;
      aBlock[3] = &block_descriptor_32;
      v49 = _Block_copy(aBlock);
      v50 = v9;

      [v47 performWithResponseHandler:v49];

      _Block_release(v49);
      v9 = v47;
      goto LABEL_5;
    }

    v14 = [*&v9[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_request] itemProperties];
    if (v14)
    {
      v15 = v14;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
        v16 = swift_allocObject();
        *(v16 + 16) = xmmword_AF4EC0;
        *(v16 + 32) = sub_AB92A0();
        *(v16 + 40) = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
        v18 = v13;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_AF4EC0;
        v60 = v10;
        v20 = v11;
        *(inited + 32) = sub_AB92A0();
        *(inited + 40) = v21;
        *(inited + 48) = v15;
        v59 = v15;
        sub_96EA4(inited);
        swift_setDeallocating();
        sub_CB490(inited + 32);
        v22 = objc_allocWithZone(MPPropertySet);
        isa = sub_AB9740().super.isa;

        v13 = v18;
        sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
        v24.super.isa = sub_AB8FD0().super.isa;

        v25 = v22;
        v11 = v20;
        v10 = v60;
        v26 = [v25 initWithProperties:isa relationships:v24.super.isa];
      }

      else
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
                objc_opt_self();
                if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
                  v51 = swift_allocObject();
                  *(v51 + 16) = xmmword_AF4EC0;
                  *(v51 + 32) = sub_AB92A0();
                  *(v51 + 40) = v52;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
                  v53 = swift_initStackObject();
                  *(v53 + 16) = xmmword_AF4EC0;
                  *(v53 + 32) = sub_AB92A0();
                  *(v53 + 40) = v54;
                  *(v53 + 48) = v15;
                  v55 = v15;
                  sub_96EA4(v53);
                  swift_setDeallocating();
                  sub_CB490(v53 + 32);
                  v56 = objc_allocWithZone(MPPropertySet);
                  v57 = sub_AB9740().super.isa;

                  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
                  v58 = sub_AB8FD0().super.isa;

                  v26 = [v56 initWithProperties:v57 relationships:v58];
                }

                else
                {
                  v26 = [objc_opt_self() emptyPropertySet];
                }

                goto LABEL_21;
              }
            }
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_AF4EC0;
        *(v27 + 32) = sub_AB92A0();
        *(v27 + 40) = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
        v29 = swift_initStackObject();
        *(v29 + 16) = xmmword_AF4EC0;
        *(v29 + 32) = sub_AB92A0();
        *(v29 + 40) = v30;
        *(v29 + 48) = v15;
        v61 = v15;
        sub_96EA4(v29);
        swift_setDeallocating();
        sub_CB490(v29 + 32);
        v31 = objc_allocWithZone(MPPropertySet);
        v32 = sub_AB9740().super.isa;

        sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
        v24.super.isa = sub_AB8FD0().super.isa;

        v26 = [v31 initWithProperties:v32 relationships:v24.super.isa];
      }
    }

    else
    {
      v26 = [objc_opt_self() emptyPropertySet];
    }

LABEL_21:
    sub_13C80(0, &unk_DEDE10, MPModelStoreBrowseContentItem_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v34 = v26;
    v35 = [ObjCClassFromMetadata requiredStoreLibraryPersonalizationProperties];
    v36 = [v34 propertySetByCombiningWithPropertySet:v35];

    v37 = [objc_allocWithZone(MPModelStoreBrowseContentItemBuilder) initWithRequestedPropertySet:v36];
    if (!v37)
    {
      __break(1u);
      JUMPOUT(0xCAD20);
    }

    v38 = v37;
    [v37 setPreventStoreItemMetadataCaching:v9[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_preventStoreItemMetadataCaching]];
    v39 = v13;
    v40 = [v9 userIdentity];
    v41 = [v38 modelObjectWithStoreItemMetadata:v39 userIdentity:v40];

    if (v41)
    {
      switch([v41 itemType])
      {
        case 1uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 album];
            goto LABEL_50;
          }

          break;
        case 2uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 artist];
            goto LABEL_50;
          }

          break;
        case 3uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 curator];
            goto LABEL_50;
          }

          break;
        case 4uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 playlist];
            goto LABEL_50;
          }

          break;
        case 5uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 radioStation];
            goto LABEL_50;
          }

          break;
        case 6uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 socialPerson];
            goto LABEL_50;
          }

          break;
        case 7uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 song];
            goto LABEL_50;
          }

          break;
        case 8uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 episode];
            goto LABEL_50;
          }

          break;
        case 9uLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 show];
            goto LABEL_50;
          }

          break;
        case 0xAuLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 season];
            goto LABEL_50;
          }

          break;
        case 0xBuLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 showCreator];
            goto LABEL_50;
          }

          break;
        case 0xCuLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 movie];
            goto LABEL_50;
          }

          break;
        case 0xEuLL:
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v42 = [v41 recordLabel];
LABEL_50:
            v43 = v42;
            if (v43)
            {
              v44 = v43;
              v45 = sub_AB9260();
              [v11 appendSection:v45];

              v46 = [objc_allocWithZone(MPStoreLibraryPersonalizationContentDescriptor) initWithModel:v44 personalizationStyle:1];
              [v11 appendItem:v46];

              v41 = v44;
              v36 = v44;
            }
          }

          break;
        default:
          break;
      }
    }

    goto LABEL_54;
  }
}

void sub_CAD58(void *a1, uint64_t a2, char *a3)
{
  if (a1 && (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
  {
    v6 = v5;
    v7 = *&a3[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_request];
    objc_allocWithZone(type metadata accessor for StoreModelItemResponse());
    v8 = a1;
    v12 = sub_CAF58(v7, v6);
    v9 = *&a3[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_responseHandler];
    v10 = v12;
    v11 = v12;
  }

  else
  {
    v11 = 0;
    v9 = *&a3[OBJC_IVAR____TtC16MusicApplication30StoreModelItemRequestOperation_responseHandler];
  }

  v13 = v11;
  v9();

  [a3 finish];
}

char *sub_CAF58(void *a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC16MusicApplication22StoreModelItemResponse_personalizationResponseInvalidationObserver] = 0;
  *&v2[OBJC_IVAR____TtC16MusicApplication22StoreModelItemResponse_personalizationResponse] = a2;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for StoreModelItemResponse();
  v5 = a2;
  result = objc_msgSendSuper2(&v15, "initWithRequest:", a1);
  if (result)
  {
    v7 = result;
    v8 = v5;
    v9 = v7;
    v10 = [v8 results];
    [v9 setResults:v10];

    v11 = MPModelResponseDidInvalidateNotification;
    v12 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v13 = v8;
    v14 = v11;

    type metadata accessor for NotificationObserver();
    swift_allocObject();
    *&v9[OBJC_IVAR____TtC16MusicApplication22StoreModelItemResponse_personalizationResponseInvalidationObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v14, v8, 1, 1, sub_B5984, v12);

    LOBYTE(v8) = [v13 isValid];

    if ((v8 & 1) == 0)
    {
      [v9 _invalidate];
    }

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_CB278(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_CB320()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_CB370()
{
  result = qword_DEDE00;
  if (!qword_DEDE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDE00);
  }

  return result;
}

uint64_t sub_CB3C4()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_CB3FC()
{

  return swift_deallocObject();
}

uint64_t sub_CB450()
{

  return swift_deallocObject();
}

uint64_t sub_CB490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_CB4F8()
{

  return swift_deallocObject();
}

uint64_t sub_CB54C()
{

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for JSPlaybackIntent.ShuffleMode(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for JSPlaybackIntent.ShuffleMode(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_CB678()
{
  result = qword_DEDE28;
  if (!qword_DEDE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDE28);
  }

  return result;
}

void sub_CB6E4(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_28F80C(a1);
  v4 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerStoreItemMetadata;
  swift_beginAccess();
  v5 = *&v2[v4];
  v97 = a1;
  v98 = v2;
  if (!v5)
  {
    v107 = 0u;
    v108 = 0u;
LABEL_11:
    sub_9BC10(&v107);
    goto LABEL_12;
  }

  v6 = v5;
  if ([v6 storeID])
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v100 = 0u;
    v101 = 0u;
  }

  v107 = v100;
  v108 = v101;

  if (!*(&v101 + 1))
  {
    goto LABEL_11;
  }

  sub_9ACFC(&v107, &v102);
  __swift_project_boxed_opaque_existential_1(&v102, v104);
  sub_ABB3A0();
  v7 = MPStoreItemMetadataStringNormalizeStoreIDValue();
  swift_unknownObjectRelease();
  if (v7)
  {
    v8 = sub_AB92A0();
    v10 = v9;

    v11 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
    v13 = *(v11 + 2);
    v12 = *(v11 + 3);
    if (v13 >= v12 >> 1)
    {
      v11 = sub_6B0F0((v12 > 1), v13 + 1, 1, v11);
    }

    *(v11 + 2) = v13 + 1;
    v14 = &v11[16 * v13];
    *(v14 + 4) = v8;
    *(v14 + 5) = v10;
    __swift_destroy_boxed_opaque_existential_0(&v102);
    goto LABEL_63;
  }

  __swift_destroy_boxed_opaque_existential_0(&v102);
LABEL_12:
  v15 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerIdentifierSet;
  swift_beginAccess();
  v16 = *&v2[v15];
  if (v16)
  {
    v17 = *(&stru_B8.reserved2 + (swift_isaMask & *v16));
    v18 = v16;
    v19 = v17();
    v21 = v20;

    if (v21)
    {
      v22 = sub_6B0F0(0, 1, 1, _swiftEmptyArrayStorage);
      v24 = *(v22 + 2);
      v23 = *(v22 + 3);
      if (v24 >= v23 >> 1)
      {
        v22 = sub_6B0F0((v23 > 1), v24 + 1, 1, v22);
      }

      *(v22 + 2) = v24 + 1;
      v25 = &v22[16 * v24];
      *(v25 + 4) = v19;
      *(v25 + 5) = v21;
      goto LABEL_63;
    }
  }

  v26 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_items;
  swift_beginAccess();
  v27 = *&v2[v26];
  if (v27 >> 62)
  {
    if (sub_ABB060())
    {
      goto LABEL_19;
    }
  }

  else if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_19:
    v99 = *&v2[v26];
    if (v99 >> 62)
    {
      v28 = sub_ABB060();
      if (!v28)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v28 = *(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8));
      if (!v28)
      {
        goto LABEL_63;
      }
    }

    if (v28 >= 1)
    {
      v29 = v99 & 0xC000000000000001;

      v30 = 0;
      v31 = _swiftEmptyArrayStorage;
      v32 = &selRef_performWithResponseHandler_;
      v96 = v99 & 0xC000000000000001;
      while (1)
      {
        v33 = v29 ? sub_3608C4(v30, v99) : *(v99 + 8 * v30 + 32);
        v34 = v33;
        if (![v33 v32[311]])
        {
          break;
        }

        sub_ABAB50();
        sub_9ACFC(&v102, &v107);
        swift_unknownObjectRelease();
        if (!*(&v108 + 1))
        {
          goto LABEL_24;
        }

        sub_9ACFC(&v107, &v102);
        __swift_project_boxed_opaque_existential_1(&v102, v104);
        sub_ABB3A0();
        v35 = MPStoreItemMetadataStringNormalizeStoreIDValue();
        swift_unknownObjectRelease();
        if (v35)
        {
          v36 = v32;
          v37 = sub_AB92A0();
          v39 = v38;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_6B0F0(0, *(v31 + 2) + 1, 1, v31);
          }

          v41 = *(v31 + 2);
          v40 = *(v31 + 3);
          if (v41 >= v40 >> 1)
          {
            v31 = sub_6B0F0((v40 > 1), v41 + 1, 1, v31);
          }

          *(v31 + 2) = v41 + 1;
          v42 = &v31[16 * v41];
          *(v42 + 4) = v37;
          *(v42 + 5) = v39;
          __swift_destroy_boxed_opaque_existential_0(&v102);

          v29 = v96;
          v32 = v36;
          goto LABEL_26;
        }

        __swift_destroy_boxed_opaque_existential_0(&v102);
LABEL_25:

LABEL_26:
        if (v28 == ++v30)
        {
          goto LABEL_58;
        }
      }

      v107 = 0u;
      v108 = 0u;
LABEL_24:
      sub_9BC10(&v107);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_62;
  }

  v28 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_itemIdentifiers;
  swift_beginAccess();
  v43 = *&v2[v28];
  if (v43 >> 62)
  {
LABEL_62:
    if (!sub_ABB060())
    {
      goto LABEL_63;
    }

    goto LABEL_44;
  }

  if (!*(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_63;
  }

LABEL_44:
  v44 = *&v2[v28];
  if (v44 >> 62)
  {
    goto LABEL_68;
  }

  v45 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
  if (v45)
  {
    goto LABEL_46;
  }

  while (1)
  {
    do
    {
LABEL_63:
      v44 = [objc_allocWithZone(MPCModelStorePlaybackItemsRequest) init];
      [v44 setInGroupSession:0];
      isa = sub_AB9740().super.isa;

      [v44 setStoreIDs:isa];

      v59 = [objc_allocWithZone(MPCModelPlaybackIntentTracklistToken) init];
      [v59 setRequest:v44];
      v60 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_startItemIdentifier;
      v61 = v98;
      v62 = swift_beginAccess();
      v68 = *&v61[v60];
      if (!v68)
      {
        goto LABEL_66;
      }

      v69 = [objc_opt_self() kindWithVariants:7];
      v99 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE38, &qword_B127D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_AF8600;
      *(inited + 32) = sub_AB92A0();
      *(inited + 40) = v71;
      *(inited + 48) = v69;
      *(inited + 56) = sub_AB92A0();
      *(inited + 64) = v72;
      v73 = objc_opt_self();
      v74 = v69;
      *(inited + 72) = [v73 kindWithSongKind:v74];
      *(inited + 80) = sub_AB92A0();
      *(inited + 88) = v75;
      v76 = objc_opt_self();
      v98 = v74;
      v77 = [v73 kindWithSongKind:v74];
      v78 = [v76 kindWithAlbumKind:v77];

      *(inited + 96) = v78;
      *(inited + 104) = sub_AB92A0();
      *(inited + 112) = v79;
      sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
      *(inited + 120) = static MPModelPlaylist.defaultMusicKind.getter();
      *(inited + 128) = sub_AB92A0();
      *(inited + 136) = v80;
      sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
      *(inited + 144) = static MPModelPlaylistEntry.defaultMusicKind.getter();
      sub_97B14(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE40, &unk_B013E0);
      swift_arrayDestroy();
      sub_13C80(0, &qword_DE7580, MPModelKind_ptr);
      v81 = sub_AB8FD0().super.isa;

      v82 = [v99 kindWithRelationshipKinds:v81];

      __chkstk_darwin();
      v95[2] = v68;
      v83 = objc_allocWithZone(MPIdentifierSet);
      v84 = swift_allocObject();
      *(v84 + 16) = sub_CCA84;
      *(v84 + 24) = v95;
      v105 = sub_57B84;
      v106 = v84;
      *&v102 = _NSConcreteStackBlock;
      *(&v102 + 1) = 1107296256;
      v103 = sub_41A314;
      v104 = &block_descriptor_23;
      v85 = _Block_copy(&v102);

      v86 = [v83 initWithModelKind:v82 block:v85];
      _Block_release(v85);

      LOBYTE(v83) = swift_isEscapingClosureAtFileLocation();

      if ((v83 & 1) == 0)
      {
        [v59 setStartItemIdentifiers:v86];

LABEL_66:
        v87 = PlaybackIntentDescriptor.intent.getter(v67, v62, v63, v64, v65, v66);
        [v87 setTracklistToken:v59];

        v94 = PlaybackIntentDescriptor.intent.getter(v93, v88, v89, v90, v91, v92);
        [v94 setTracklistSource:3];

        return;
      }

      __break(1u);
LABEL_68:
      v45 = sub_ABB060();
    }

    while (!v45);
LABEL_46:
    if (v45 < 1)
    {
      break;
    }

    v99 = v44 & 0xC000000000000001;

    v47 = 0;
    v48 = _swiftEmptyArrayStorage;
    do
    {
      if (v99)
      {
        v50 = sub_36088C(v47, v44, v46);
      }

      else
      {
        v50 = *(v44 + 8 * v47 + 32);
      }

      v51 = v50;
      v52 = (*(&stru_B8.reserved2 + (swift_isaMask & *v50)))();
      if (v53)
      {
        v54 = v52;
        v55 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v48 = sub_6B0F0(0, *(v48 + 2) + 1, 1, v48);
        }

        v57 = *(v48 + 2);
        v56 = *(v48 + 3);
        if (v57 >= v56 >> 1)
        {
          v48 = sub_6B0F0((v56 > 1), v57 + 1, 1, v48);
        }

        *(v48 + 2) = v57 + 1;
        v49 = &v48[16 * v57];
        *(v49 + 4) = v54;
        *(v49 + 5) = v55;
      }

      ++v47;
    }

    while (v45 != v47);
LABEL_58:
  }

  __break(1u);
}

void sub_CC1F0(void *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_CCAC4;
  *(v5 + 24) = v4;
  v7[4] = sub_57B84;
  v7[5] = v5;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1107296256;
  v7[2] = sub_4522E8;
  v7[3] = &block_descriptor_9;
  v6 = _Block_copy(v7);

  [a1 setUniversalStoreIdentifiersWithBlock:v6];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }
}

id sub_CC344()
{
  v1 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerStoreItemMetadata;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = v2;
    v4 = sub_CC58C();
    v5 = [objc_allocWithZone(MPStoreModelGenericObjectBuilder) initWithRequestedPropertySet:v4];

    if (v5)
    {
      v6 = objc_opt_self();
      v7 = v3;
      v8 = [v6 activeAccount];
      v9 = [v5 modelObjectWithStoreItemMetadata:v7 userIdentity:v8];

      if (v9)
      {
        v10 = [v9 innermostModelObject];

        return v10;
      }
    }

    else
    {
      v5 = v3;
    }
  }

  v12 = OBJC_IVAR____TtC11MusicJSCore23JSCatalogPlaybackIntent_containerIdentifierSet;
  swift_beginAccess();
  v13 = *(v0 + v12);
  if (v13)
  {
    v14 = *&stru_158.segname[swift_isaMask & *v13];
    v15 = v13;
    v16 = v14();

    if (v16)
    {
      v17 = [objc_opt_self() sharedServerObjectDatabase];
      v18 = sub_CC58C();
      v19 = [v17 modelObjectMatchingIdentifierSet:v16 propertySet:v18];

      if (v19)
      {
        v20 = [v19 innermostModelObject];

        return v20;
      }
    }
  }

  return 0;
}

id sub_CC58C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8600;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v1;
  v2 = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [ObjCClassFromMetadata requiredLibraryNavigationHandlerProperties];
  v5 = [ObjCClassFromMetadata requiredStoreNavigationHandlerProperties];
  v6 = [v4 propertySetByCombiningWithPropertySet:v5];

  v7 = sub_10F414(v2);
  v8 = [v6 propertySetByCombiningWithPropertySet:v7];

  *(inited + 48) = v8;
  *(inited + 56) = sub_AB92A0();
  *(inited + 64) = v9;
  v10 = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
  v11 = swift_getObjCClassFromMetadata();
  v12 = [v11 requiredLibraryNavigationHandlerProperties];
  v13 = [v11 requiredStoreNavigationHandlerProperties];
  v14 = [v12 propertySetByCombiningWithPropertySet:v13];

  v15 = sub_10F414(v10);
  v16 = [v14 propertySetByCombiningWithPropertySet:v15];

  *(inited + 72) = v16;
  *(inited + 80) = sub_AB92A0();
  *(inited + 88) = v17;
  v18 = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
  v19 = swift_getObjCClassFromMetadata();
  v20 = [v19 requiredLibraryNavigationHandlerProperties];
  v21 = [v19 requiredStoreNavigationHandlerProperties];
  v22 = [v20 propertySetByCombiningWithPropertySet:v21];

  v23 = sub_10F414(v18);
  v24 = [v22 propertySetByCombiningWithPropertySet:v23];

  *(inited + 96) = v24;
  *(inited + 104) = sub_AB92A0();
  *(inited + 112) = v25;
  v26 = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
  v27 = swift_getObjCClassFromMetadata();
  v28 = [v27 requiredLibraryNavigationHandlerProperties];
  v29 = [v27 requiredStoreNavigationHandlerProperties];
  v30 = [v28 propertySetByCombiningWithPropertySet:v29];

  v31 = sub_10F414(v26);
  v32 = [v30 propertySetByCombiningWithPropertySet:v31];

  *(inited + 120) = v32;
  *(inited + 128) = sub_AB92A0();
  *(inited + 136) = v33;
  v34 = sub_13C80(0, &qword_DE9C10, MPModelPlaylistEntry_ptr);
  v35 = swift_getObjCClassFromMetadata();
  v36 = [v35 requiredLibraryNavigationHandlerProperties];
  v37 = [v35 requiredStoreNavigationHandlerProperties];
  v38 = [v36 propertySetByCombiningWithPropertySet:v37];

  v39 = sub_10F414(v34);
  v40 = [v38 propertySetByCombiningWithPropertySet:v39];

  *(inited + 144) = v40;
  sub_96EA4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v41 = objc_allocWithZone(MPPropertySet);
  isa = sub_AB9740().super.isa;
  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v43 = sub_AB8FD0().super.isa;

  v44 = [v41 initWithProperties:isa relationships:v43];

  return v44;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall JSSplitWidgetViewController.populateViewModelKinds(for:)(Swift::OpaquePointer *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController);
  if (v3)
  {
    v4 = v3;
    v5 = JSSplitWidgetViewModel.leftViewModelKind.getter();
    if ((~v5 & 0xF000000000000007) != 0)
    {
      v6 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      rawValue = a1->_rawValue;
      sub_91ABC(v4, v6, isUniquelyReferenced_nonNull_native);
      sub_2D4D8(v6);
      a1->_rawValue = rawValue;
    }

    else
    {
    }
  }

  v8 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController);
  if (v8)
  {
    v12 = v8;
    v9 = JSSplitWidgetViewModel.rightViewModelKind.getter();
    if ((~v9 & 0xF000000000000007) != 0)
    {
      v10 = v9;
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v14 = a1->_rawValue;
      sub_91ABC(v12, v10, v11);
      sub_2D4D8(v10);
      a1->_rawValue = v14;
    }

    else
    {
    }
  }
}

Swift::Int LaunchURL.Resolver.PerformOption.hashValue.getter(char a1)
{
  sub_ABB5C0();
  sub_ABB5D0(a1 & 1);
  return sub_ABB610();
}

id JSSplitWidgetViewController.init(splitWidgetViewModel:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController] = 0;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_lastSeenViewBounds];
  *v4 = 0u;
  v4[1] = 0u;
  v5 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_contentSizeObserverMap;
  *&v1[v5] = sub_96FE0(_swiftEmptyArrayStorage);
  v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState] = 0x80;
  *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_splitWidgetViewModel] = a1;
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v15, "initWithNibName:bundle:", 0, 0);
  v8 = JSSplitWidgetViewModel.viewModelKinds.getter();
  sub_CCE28(v8);

  v9 = sub_4D3C64();

  v10 = &v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v11 = *&v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod];
  v12 = *&v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 8];
  v13 = v9[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item__sizingMethod + 10];
  *v10 = 0;
  *(v10 + 4) = 256;
  v10[10] = 0;
  sub_4DBD3C(v11, v12 | (v13 << 16));

  return v7;
}

void sub_CCE28(uint64_t a1)
{
  v77 = sub_AB7C10();
  v2 = *(v77 - 8);
  __chkstk_darwin();
  v76 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_AB7C50();
  __chkstk_darwin();
  v74 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v81 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController;
    v7 = (a1 + 32);
    v80 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController;
    v78 = &v85;
    v73 = (v2 + 8);
    v72 = (v4 + 8);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
    do
    {
      v13 = *v7++;
      v12 = v13;
      v14 = (v13 >> 58) & 0x3C | (v13 >> 1) & 3;
      if (v14 > 11)
      {
        if (v14 == 12)
        {
          v31 = type metadata accessor for JSParagraphViewController();
          v32 = objc_allocWithZone(v31);
          v33 = &v32[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_additionalContentInsets];
          *v33 = UIEdgeInsetsZero.top;
          v33[1] = left;
          v33[2] = bottom;
          v33[3] = right;
          *&v32[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController____lazy_storage___paragraphView] = 0;
          *&v32[OBJC_IVAR____TtC16MusicApplication25JSParagraphViewController_paragraphViewModel] = v12 & 0xFFFFFFFFFFFFFF9;
          v91.receiver = v32;
          v91.super_class = v31;
          v34 = (v12 & 0xFFFFFFFFFFFFFF9);
          v35 = objc_msgSendSuper2(&v91, "initWithNibName:bundle:", 0, 0);
          v36 = qword_DE6D80;
          v23 = v35;
          if (v36 != -1)
          {
            swift_once();
          }

          v37 = qword_E0BF40;
          if (objc_getAssociatedObject(v23, qword_E0BF40))
          {
            sub_ABAB50();
            swift_unknownObjectRelease();
          }

          else
          {
            v89 = 0u;
            v90 = 0u;
          }

          v85 = v90;
          aBlock = v89;
          if (*(&v90 + 1))
          {
            type metadata accessor for VerticalStackViewController.Item();
            if (swift_dynamicCast())
            {
              v38 = v11;
              v39 = v83;
              goto LABEL_34;
            }

            v79 = v7;
          }

          else
          {
            v79 = v7;
            sub_12E1C(&aBlock, &unk_DE8E40, &unk_AF8050);
          }

          v40 = type metadata accessor for VerticalStackViewController.Item();
          v41 = objc_allocWithZone(v40);
          v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isReadyForDisplay] = 1;
          v42 = &v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_extendedEdgeInsets];
          *v42 = UIEdgeInsetsZero.top;
          v42[1] = left;
          v42[2] = bottom;
          v42[3] = right;
          v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_appearanceState] = 0x80;
          v43 = &v41[v11[8].vtable];
          *v43 = 0;
          *(v43 + 4) = 0;
          v43[10] = 1;
          *&v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;
          *&v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;
          v38 = v11;
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakInit();
          v44 = &v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_relativeFrame];
          *v44 = 0u;
          v44[1] = 0u;
          v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_isUpdatingContentOffset] = 0;
          v45 = &v41[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_lastAppliedContentOffset];
          *v45 = 0;
          *(v45 + 1) = 0;
          v45[16] = 1;
          swift_unknownObjectWeakAssign();
          v88.receiver = v41;
          v88.super_class = v40;
          v39 = objc_msgSendSuper2(&v88, "init");
          objc_setAssociatedObject(v23, v37, v39, &dword_0 + 1);
          v7 = v79;
LABEL_34:
          v46 = &v39[v38[8].vtable];
          v47 = *(v46 + 4);
          v48 = v46[10];
          *v46 = 0;
          *(v46 + 4) = 256;
          v46[10] = 0;
          if ((v48 & 1) != 0 || (v47 & 0x100) == 0)
          {
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v50 = Strong;
              if ((*(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) & 1) == 0)
              {
                *(Strong + OBJC_IVAR____TtC16MusicApplication27VerticalStackViewController_needsItemsRecomputation) = 1;
                sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
                v79 = sub_ABA150();
                v51 = swift_allocObject();
                *(v51 + 16) = v50;
                v86 = sub_A95F0;
                v87 = v51;
                *&aBlock = _NSConcreteStackBlock;
                *(&aBlock + 1) = 1107296256;
                *&v85 = sub_1B5EB4;
                *(&v85 + 1) = &block_descriptor_43;
                v70 = _Block_copy(&aBlock);
                v71 = v50;

                v52 = v74;
                sub_AB7C30();
                *&aBlock = _swiftEmptyArrayStorage;
                sub_8FFF0();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
                sub_D1010();
                v53 = v76;
                v54 = v77;
                sub_ABABB0();
                v55 = v70;
                v56 = v79;
                sub_ABA160();
                (*v73)(v53, v54);
                (*v72)(v52, v75);
                _Block_release(v55);

                v50 = v56;
              }
            }

            v57 = swift_unknownObjectWeakLoadStrong();
            if (v57 && (v58 = v57, v59 = [v57 contentScrollView], v58, v59))
            {
              v60 = swift_allocObject();
              swift_unknownObjectWeakInit();
              v61 = objc_allocWithZone(ScrollViewContentOffsetObserver);
              v86 = sub_D1074;
              v87 = v60;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              *&v85 = sub_2DDCF4;
              *(&v85 + 1) = &block_descriptor_49;
              v62 = _Block_copy(&aBlock);
              v63 = v59;

              v64 = [v61 initWithScrollView:v63 changeHandler:v62];
              _Block_release(v62);

              v65 = *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver];
              *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = v64;

              *&aBlock = v63;
              swift_getKeyPath();
              swift_allocObject();
              swift_unknownObjectWeakInit();
              v66 = sub_AB3080();

              v67 = *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver];
              *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = v66;

              v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
            }

            else
            {
              v68 = *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver];
              *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewOffsetObserver] = 0;

              v69 = *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver];
              *&v39[OBJC_IVAR____TtCC16MusicApplication27VerticalStackViewController4Item_scrollViewSizeObserver] = 0;

              v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
            }
          }

          else
          {

            v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
          }

LABEL_15:
          swift_getObjectType();
          v24 = swift_conformsToProtocol2();
          if (v24)
          {
            v25 = v23 == 0;
          }

          else
          {
            v25 = 1;
          }

          if (!v25)
          {
            v26 = v24;
            ObjectType = swift_getObjectType();
            v28 = *(v26 + 16);
            v29 = v23;
            v28(0, ObjectType, v26);
            v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
          }

          v30 = v81;
          if (*(v82 + v81) && (v30 = v80, *(v82 + v80)))
          {
          }

          else
          {
            *(v82 + v30) = v23;
          }

          goto LABEL_5;
        }

        if (v14 == 38)
        {
          v17 = type metadata accessor for JSBiographyViewController();
          v18 = objc_allocWithZone(v17);
          v19 = OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_textDrawingCache;
          type metadata accessor for TextDrawing.Cache();
          swift_allocObject();
          v20 = (v12 & 0xFFFFFFFFFFFFFF9);
          *&v18[v19] = TextDrawing.Cache.init()();
          *&v18[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController____lazy_storage___biographyView] = 0;
          *&v18[OBJC_IVAR____TtC16MusicApplication25JSBiographyViewController_viewModel] = v20;
          v92.receiver = v18;
          v92.super_class = v17;
          v11 = _TtCC16MusicApplication27VerticalStackViewControllerP33_B59BDA9C42E977881C7820B2B0D4CE4016AnimationContext;
          v21 = v20;
          v16 = objc_msgSendSuper2(&v92, "initWithNibName:bundle:", 0, 0);
          goto LABEL_14;
        }
      }

      else
      {
        if (v14 == 1)
        {
          v22 = objc_allocWithZone(type metadata accessor for JSShelfViewController(0));
          v16 = JSShelfViewController.init(shelf:)((v12 & 0xFFFFFFFFFFFFFF9));
LABEL_14:
          v23 = v16;
          goto LABEL_15;
        }

        if (v14 == 4)
        {
          v15 = objc_allocWithZone(type metadata accessor for JSGridViewController(0));
          v16 = sub_4A50FC((v12 & 0xFFFFFFFFFFFFFF9));
          goto LABEL_14;
        }
      }

LABEL_5:
      --v6;
    }

    while (v6);
  }
}

Swift::Void __swiftcall JSSplitWidgetViewController.viewDidLoad()()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v2 = sub_CDA4C();
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = v2;
  [v4 addSubview:v5];

  [v5 setClipsToBounds:1];
  v6 = JSSplitWidgetViewModel.displayStyle.getter();
  v7 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView];
  v8 = v7[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle];
  if (v6)
  {
    v7[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle] = 1;
    if (v8)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle] = 0;
  if (v8)
  {
LABEL_6:
    [v7 setNeedsLayout];
  }

LABEL_7:
  v9 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
  if (v9)
  {
    v10 = v9;
    sub_CDAD0(v10);
  }

  v11 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController];
  if (v11)
  {
    v12 = v11;
    sub_CDAD0(v12);
  }

  sub_CE094();
}

id sub_CDA4C()
{
  v1 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for SplitDisplayView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_CDAD0(void *a1)
{
  v3 = v1;
  v5 = [a1 parentViewController];
  if (!v5 || (v6 = v5, v5, v6 != v3))
  {
    v7 = [v3 childViewControllers];
    sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    v8 = sub_AB9760();
    v42 = a1;
    __chkstk_darwin();
    v40[2] = &v42;
    v9 = sub_1B3840(sub_72E3C, v40, v8);

    if ((v9 & 1) == 0)
    {
      [a1 willMoveToParentViewController:v3];
      [v3 addChildViewController:a1];
      [a1 didMoveToParentViewController:v3];
    }
  }

  if (![v3 isViewLoaded])
  {
    goto LABEL_29;
  }

  type metadata accessor for JSParagraphViewController();
  if (swift_dynamicCastClass())
  {
    v10 = a1;
    v11 = sub_37F240();
    v12 = sub_4CF7F0();
    v13 = [v12 font];

    v2 = UIView.maxReadableContentWidth(for:)();
  }

  else
  {
    v2 = 1.79769313e308;
  }

  v14 = sub_CDA4C();
  v15 = *&v3[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
  if (v15 && (ObjectType = swift_getObjectType(), (v17 = swift_conformsToProtocol2()) != 0) || (v15 = *&v3[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController]) != 0 && (ObjectType = swift_getObjectType(), (v17 = swift_conformsToProtocol2()) != 0))
  {
    v18 = *(v17 + 8);
    v19 = v17;
    v20 = v15;
    v21 = v18(ObjectType, v19);

    if (v21)
    {
      goto LABEL_16;
    }
  }

  if (qword_DE67D8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v21 = qword_DEDE48;
LABEL_16:
    v22 = *&v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor];
    *&v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor] = v21;

    v23 = &v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem];
    if (!*&v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem])
    {
      break;
    }

    v23 = &v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem];
    if (!*&v14[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem])
    {
      v24 = [a1 view];
      if (!v24)
      {
        goto LABEL_42;
      }

      v25 = &OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem;
      goto LABEL_22;
    }

LABEL_23:
    v30 = v3[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState];
    if (v30 != 128)
    {
      if (v30 >> 6)
      {
        if (v30 >> 6 != 1)
        {
          [a1 beginAppearanceTransition:1 animated:0];
          [a1 endAppearanceTransition];
        }
      }

      else
      {
        [a1 beginAppearanceTransition:1 animated:v30 & 1];
      }
    }

LABEL_29:
    v31 = [a1 contentScrollView];
    if (v31)
    {
      v42 = v31;
      v32 = v31;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v33 = sub_AB3080();

      v14 = v33;
    }

    else
    {
      v42 = a1;
      swift_getKeyPath();
      swift_allocObject();
      swift_unknownObjectWeakInit();
      v34 = sub_AB3080();

      v14 = v34;
    }

    v35 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_contentSizeObserverMap;
    swift_beginAccess();
    v36 = *&v3[v35];
    if ((v36 & 0xC000000000000001) == 0)
    {
      goto LABEL_38;
    }

    if (v36 < 0)
    {
      v37 = *&v3[v35];
    }

    else
    {
      v37 = v36 & 0xFFFFFFFFFFFFFF8;
    }

    v38 = sub_ABAFA0();
    if (!__OFADD__(v38, 1))
    {
      *&v3[v35] = sub_426A9C(v37, v38 + 1);
LABEL_38:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = *&v3[v35];
      sub_92FE8(v14, a1, isUniquelyReferenced_nonNull_native);
      *&v3[v35] = v41;
      swift_endAccess();

      return;
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v24 = [a1 view];
  if (v24)
  {
    v25 = &OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem;
LABEL_22:
    v27 = *v23;
    v26 = *(v23 + 1);
    v28 = *(v23 + 2);
    *v23 = v24;
    *(v23 + 1) = 0;
    *(v23 + 2) = v2;
    v29 = v24;
    sub_CFFE8(v27, v26, v28, v25);

    goto LABEL_23;
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_CE094()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [v0 traitCollection];
  [v3 displayScale];
  v4 = sub_CDA4C();
  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v83 = ObjectType;
    [v5 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;

    v96.origin.x = v8;
    v96.origin.y = v10;
    v96.size.width = v12;
    v96.size.height = v14;
    Width = CGRectGetWidth(v96);
    *&v90 = Width;
    *&v87 = 0x408F400000000000;
    sub_471A4();
    v16 = sub_AB38F0();
    v17 = [v0 childViewControllers];
    v18 = sub_13C80(0, &qword_DE7500, UIViewController_ptr);
    v19 = sub_AB9760();

    v84 = v3;
    v85 = v4;
    if (v19 >> 62)
    {
      v20 = sub_ABB060();
      if (v20)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v20 = *(&dword_10 + (v19 & 0xFFFFFFFFFFFFFF8));
      if (v20)
      {
LABEL_4:
        if (v20 >= 1)
        {
          v21 = 0;
          v22 = v19 & 0xC000000000000001;
          v86 = v20;
          while (1)
          {
            if (v22)
            {
              v24 = sub_35F8D4(v21, v19);
              if ((v16 & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            else
            {
              v24 = *(v19 + 8 * v21 + 32);
              if ((v16 & 1) == 0)
              {
                goto LABEL_7;
              }
            }

            *&v87 = v24;
            v25 = v24;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE98, &qword_AFC2F8);
            if (swift_dynamicCast())
            {
              v26 = v22;
              v27 = v19;
              v28 = v16;
              v29 = v1;
              v30 = v18;
              v32 = *(&v91 + 1);
              v31 = v92;
              __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
              v33 = (*(v31 + 8))(v32, v31);
              __swift_destroy_boxed_opaque_existential_0(&v90);
              if (v33)
              {
                v23 = [objc_opt_self() traitCollectionWithHorizontalSizeClass:1];
              }

              else
              {
                v23 = 0;
              }

              v18 = v30;
              v1 = v29;
              v16 = v28;
              v19 = v27;
              v22 = v26;
              v20 = v86;
              goto LABEL_8;
            }

            v92 = 0;
            v90 = 0u;
            v91 = 0u;
            sub_12E1C(&v90, &qword_DEDE90, &qword_AFC2F0);
LABEL_7:
            v23 = 0;
LABEL_8:
            ++v21;
            [v1 setOverrideTraitCollection:v23 forChildViewController:v24];

            if (v20 == v21)
            {
              goto LABEL_19;
            }
          }
        }

        __break(1u);
        goto LABEL_60;
      }
    }

LABEL_19:
    v82 = v18;

    v34 = &v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
    v35 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
    v36 = v35;
    sub_CFC44(v35);
    v38 = v37;
    v40 = v39;

    if (v40 & 1) != 0 || (v41 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController], v42 = v41, sub_CFC44(v41), v44 = v43, v46 = v45, v42, (v46))
    {
      v47 = v85;
      if (*v34)
      {
        v48 = *v34;
        [v48 preferredContentSize];
        v49 = [v48 contentScrollView];
        if (v49)
        {
          v50 = v49;
          [v49 contentSize];
          [v50 contentInset];
          [v50 contentInset];
        }

        else
        {
        }
      }

      sub_AB3A10();
      v51 = v53;
      v54 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController];
      if (v54)
      {
        v55 = v54;
        [v55 preferredContentSize];
        v56 = [v55 contentScrollView];
        if (v56)
        {
          v57 = v56;
          [v56 contentSize];
          [v57 contentInset];
          [v57 contentInset];
        }

        else
        {
        }
      }

      sub_AB3A10();
      v52 = v58;
    }

    else
    {
      v51 = v38;
      v52 = v44;
      v47 = v85;
    }

    v60 = sub_CFF44(&v90);
    if (*v59)
    {
      *(v59 + 8) = v51;
    }

    v60(&v90, 0);
    v62 = sub_D0154(&v90);
    if (*v61)
    {
      *(v61 + 8) = v52;
    }

    v62(&v90, 0);
    v63 = v52 + v51;
    if (v51 > v52)
    {
      v64 = v51;
    }

    else
    {
      v64 = v52;
    }

    if (v16)
    {
      v65 = v64;
    }

    else
    {
      v65 = v52 + v51;
    }

    v95.receiver = v1;
    v95.super_class = v83;
    objc_msgSendSuper2(&v95, "preferredContentSize", v63, v82);
    v68 = v67 == v65 && v66 == Width;
    v94.receiver = v1;
    v94.super_class = v83;
    objc_msgSendSuper2(&v94, "preferredContentSize");
    v70 = v69;
    v72 = v71;
    v93.receiver = v1;
    v93.super_class = v83;
    objc_msgSendSuper2(&v93, "setPreferredContentSize:", Width, v65);
    sub_CF4D8(v70, v72);
    v73 = JSSplitWidgetViewModel.displayStyle.getter();
    v74 = &v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController];
    if ((v73 & 1) == 0)
    {
      v74 = v34;
    }

    v75 = *v74;
    if (*v74 && (v76 = v75, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE98, &qword_AFC2F8), (swift_dynamicCast() & 1) != 0))
    {
      if (*(&v88 + 1))
      {
        sub_70DF8(&v87, &v90);
        v77 = *(&v91 + 1);
        v78 = v92;
        __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
        v79 = (*(v78 + 16))(v77, v78);
        if ((v80 & 1) == 0 && *&v47[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns] != v79)
        {
          *&v47[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns] = v79;
          [v47 setNeedsLayout];
          __swift_destroy_boxed_opaque_existential_0(&v90);
          goto LABEL_53;
        }

        __swift_destroy_boxed_opaque_existential_0(&v90);
        if (!v68)
        {
LABEL_52:
          v76 = v75;
LABEL_53:
          v81 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView];
          [v81 setNeedsLayout];

LABEL_57:
          return;
        }

LABEL_56:

        v47 = v75;
        goto LABEL_57;
      }
    }

    else
    {
      v89 = 0;
      v87 = 0u;
      v88 = 0u;
    }

    sub_12E1C(&v87, &qword_DEDE90, &qword_AFC2F0);
    if (!v68)
    {
      goto LABEL_52;
    }

    goto LABEL_56;
  }

LABEL_60:
  __break(1u);
}

Swift::Void __swiftcall JSSplitWidgetViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v38.receiver = v0;
  v38.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v38, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = sub_CDA4C();
  [v12 setFrame:{v5, v7, v9, v11}];

  v13 = &v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_lastSeenViewBounds];
  *&v34 = CGRectGetWidth(*&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_lastSeenViewBounds]);
  v39.origin.x = v5;
  v39.origin.y = v7;
  v39.size.width = v9;
  v39.size.height = v11;
  Width = CGRectGetWidth(v39);
  if ((sub_AB38D0() & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView];
  [v14 bounds];
  *&v34 = CGRectGetWidth(v40);
  Width = 1000.0;
  sub_471A4();
  v15 = sub_AB38F0();

  v16 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
  if (v16 && (Width = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController], sub_13C80(0, &qword_DE7500, UIViewController_ptr), v17 = v16, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE98, &qword_AFC2F8), (swift_dynamicCast() & 1) != 0))
  {
    v18 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      v19 = v36;
      __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
      (*(v19 + 32))((v15 ^ 1) & 1, v18, v19, v9, v11);
      __swift_destroy_boxed_opaque_existential_0(&v34);
      goto LABEL_9;
    }
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  sub_12E1C(&v34, &qword_DEDE90, &qword_AFC2F0);
LABEL_9:
  v20 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController];
  if (v20 && (Width = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController], sub_13C80(0, &qword_DE7500, UIViewController_ptr), v21 = v20, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE98, &qword_AFC2F8), (swift_dynamicCast() & 1) != 0))
  {
    v22 = *(&v35 + 1);
    if (*(&v35 + 1))
    {
      v23 = v36;
      __swift_project_boxed_opaque_existential_1(&v34, *(&v35 + 1));
      (*(v23 + 32))((v15 ^ 1) & 1, v22, v23, v9, v11);
      __swift_destroy_boxed_opaque_existential_0(&v34);
      goto LABEL_15;
    }
  }

  else
  {
    v36 = 0;
    v34 = 0u;
    v35 = 0u;
  }

  sub_12E1C(&v34, &qword_DEDE90, &qword_AFC2F0);
LABEL_15:
  v24 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController;
  v25 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController];
  if (v25 && (ObjectType = swift_getObjectType(), (v27 = swift_conformsToProtocol2()) != 0) || (v25 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController]) != 0 && (ObjectType = swift_getObjectType(), (v27 = swift_conformsToProtocol2()) != 0))
  {
    v28 = *(v27 + 8);
    v29 = v27;
    v30 = v25;
    v31 = v28(ObjectType, v29);

    if (v31)
    {
      v32 = *&v1[v24];
      if (v32)
      {
        [v32 setViewBackgroundColor:v31];
      }

      v33 = *&v1[OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController];
      if (v33)
      {
        [v33 setViewBackgroundColor:v31];
      }
    }
  }

  *v13 = v5;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = v11;
  sub_CE094();
}

void *JSSplitWidgetViewController.verticalStackItemPreferredBackgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController);
  if (v1)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (v3)
    {
LABEL_5:
      v4 = *(v3 + 8);
      v5 = v3;
      v6 = v1;
      v1 = v4(ObjectType, v5);

      return v1;
    }
  }

  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController);
  if (v1)
  {
    ObjectType = swift_getObjectType();
    v3 = swift_conformsToProtocol2();
    if (!v3)
    {
      return 0;
    }

    goto LABEL_5;
  }

  return v1;
}

Swift::Void __swiftcall JSSplitWidgetViewController.music_viewInheritedLayoutInsetsDidChange()()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "music_viewInheritedLayoutInsetsDidChange");
  sub_CE094();
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall JSSplitWidgetViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v14.receiver = v1;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "traitCollectionDidChange:", isa);
  v3 = [v1 traitCollection];
  if (isa)
  {
    v4 = [(objc_class *)isa horizontalSizeClass];
  }

  else
  {
    v4 = 0;
  }

  v5 = [v3 horizontalSizeClass];
  if (isa && v4 == v5)
  {
    goto LABEL_8;
  }

  sub_CE094();
  v6 = [v1 view];
  if (!v6)
  {
    __break(1u);
    return;
  }

  v7 = v6;
  [v6 setNeedsLayout];

  if (isa)
  {
LABEL_8:
    v8 = [(objc_class *)isa userInterfaceStyle];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v3 userInterfaceStyle];
  if (isa && v8 == v9)
  {
    v10 = v3;
  }

  else
  {
    v10 = sub_CDA4C();
    v11 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView;
    v12 = *&v10[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView];
    if (v12)
    {
      [v12 removeFromSuperview];
      v13 = *&v10[v11];
    }

    else
    {
      v13 = 0;
    }

    *&v10[v11] = 0;

    [v10 setNeedsLayout];
  }
}

void JSSplitWidgetViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v10.receiver = v3;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_D0D24;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_CF24C;
  v9[3] = &block_descriptor_24;
  v8 = _Block_copy(v9);

  [a1 animateAlongsideTransition:v8 completion:0];
  _Block_release(v8);
}

void sub_CF19C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_CE094();
  }

  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 view];

    if (v6)
    {
      [v6 layoutIfNeeded];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_CF24C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id JSSplitWidgetViewController.preferredContentSize.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "preferredContentSize");
}

void JSSplitWidgetViewController.preferredContentSize.setter(double a1, double a2)
{
  ObjectType = swift_getObjectType();
  v11.receiver = v2;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, "preferredContentSize");
  v7 = v6;
  v9 = v8;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  objc_msgSendSuper2(&v10, "setPreferredContentSize:", a1, a2);
  sub_CF4D8(v7, v9);
}

void sub_CF4D8(double a1, double a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  type metadata accessor for CGSize(0);
  v15 = a1;
  v16 = a2;
  v14.receiver = v3;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, "preferredContentSize");
  v12 = v7;
  v13 = v8;
  if (sub_AB38D0())
  {
    v9 = [v3 view];
    if (v9)
    {
      v10 = v9;
      [v9 setNeedsLayout];

      v11 = sub_CDA4C();
      [v11 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void (*JSSplitWidgetViewController.preferredContentSize.modify(objc_super **a1))(double **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[6].receiver = v1;
  ObjectType = swift_getObjectType();
  v4[6].super_class = ObjectType;
  v4[1].receiver = v1;
  v4[1].super_class = ObjectType;
  objc_msgSendSuper2(v4 + 1, "preferredContentSize");
  v4->receiver = v6;
  v4->super_class = v7;
  return sub_CF654;
}

void sub_CF654(double **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[1];
  v5 = (*a1)[12];
  v6 = (*a1)[13];
  if (a2)
  {
    v7 = 6;
  }

  else
  {
    v7 = 10;
  }

  v8 = 8;
  if (a2)
  {
    v8 = 4;
  }

  v9 = 9;
  if (a2)
  {
    v9 = 5;
    v10 = 7;
  }

  else
  {
    v10 = 11;
  }

  v2[v8] = v5;
  v2[v9] = v6;
  objc_msgSendSuper2(&v2[v8], "preferredContentSize");
  v12 = v11;
  v14 = v13;
  v2[v7] = v5;
  v2[v10] = v6;
  objc_msgSendSuper2(&v2[v7], "setPreferredContentSize:", v3, v4);
  sub_CF4D8(v12, v14);

  free(v2);
}

Swift::Void __swiftcall JSSplitWidgetViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewWillAppear:", a1);
  sub_CF788(a1);
}

void sub_CF788(int a1)
{
  v2 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState;
  v3 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState);
  *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState) = a1;
  if (v3 >> 6)
  {
    if (v3 >> 6 == 1)
    {
      if ((a1 & 0xC0) != 0x40)
      {
        goto LABEL_12;
      }

LABEL_6:
      if (((v3 ^ a1) & 1) == 0)
      {
        return;
      }

      goto LABEL_12;
    }

    if (v3 == 128)
    {
      if (a1 == 128)
      {
        return;
      }
    }

    else if (a1 == 129)
    {
      return;
    }
  }

  else if (a1 <= 0x3Fu)
  {
    goto LABEL_6;
  }

LABEL_12:
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController);
  if (v4)
  {
    v5 = a1;
    v6 = v4;
    sub_69014(v3, v5, v7, v8);
  }

  v9 = *(v1 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController);
  if (v9)
  {
    v10 = *(v1 + v2);
    v12 = v9;
    sub_69014(v3, v10, v12, v11);
  }
}

Swift::Void __swiftcall JSSplitWidgetViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v2 = a1;
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, "viewWillDisappear:", v2);
  sub_CF788(v2 | 0x40);
}

void sub_CFA08(char a1, SEL *a2, int a3)
{
  v7.receiver = v3;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  sub_CF788(a3);
}

void sub_CFA74(void *a1, uint64_t a2, uint64_t a3, const char **a4, int a5)
{
  v10.receiver = a1;
  v10.super_class = swift_getObjectType();
  v8 = *a4;
  v9 = v10.receiver;
  objc_msgSendSuper2(&v10, v8, a3);
  sub_CF788(a5);
}

void *sub_CFAE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController);
  v9 = *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController);
  v10 = v1;
  v2 = v1;
  v3 = v9;
  for (i = 0; i != 2; ++i)
  {
    v5 = v8[i + 4];
    if (v5)
    {
      v6 = v5;
      sub_AB9730();
      if (*(&dword_10 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDF28, &unk_AFC508);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

void sub_CFBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_CE094();
  }
}

id sub_CFC44(void *a1)
{
  if (!a1 || (v17[0] = a1, sub_13C80(0, &qword_DE7500, UIViewController_ptr), v3 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDE98, &qword_AFC2F8), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_7;
  }

  if (!*(&v15 + 1))
  {
LABEL_7:
    sub_12E1C(&v14, &qword_DEDE90, &qword_AFC2F0);
    return 0;
  }

  sub_70DF8(&v14, v17);
  v4 = v18;
  v5 = v19;
  __swift_project_boxed_opaque_existential_1(v17, v18);
  v6 = [v1 traitCollection];
  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result bounds];
    v10 = v9;
    v12 = v11;

    v13 = (*(v5 + 24))(v6, v4, v5, v10, v12);
    __swift_destroy_boxed_opaque_existential_0(v17);
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_CFEC0(double *a1, double *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v5 = a2[1];
  v4 = a2[2];
  sub_13C80(0, &qword_DFA720, NSObject_ptr);
  v6 = sub_ABA790();
  result = 0;
  if ((v6 & 1) != 0 && v3 == v5)
  {
    return v2 == v4;
  }

  return result;
}

void (*sub_CFF44(uint64_t *a1))(void ***a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = (v1 + v4);
  v6 = *(v5 + 2);
  v7 = *v5;
  *v3 = *v5;
  *(v3 + 16) = v6;
  v8 = v7;
  return sub_CFFDC;
}

void sub_CFFE8(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v6 = &v4[*a4];
  v7 = *v6;
  if (!a1)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v7 || (v11 = v6[1], v12 = v6[2], sub_13C80(0, &qword_DFA720, NSObject_ptr), v13 = v7, v14 = sub_ABA790(), v13, (v14 & 1) == 0) || (v11 == *&a2 ? (v15 = v12 == *&a3) : (v15 = 0), !v15))
  {
    v16 = a1;
    if ([v16 isDescendantOfView:v5])
    {
      [v16 removeFromSuperview];
    }

LABEL_12:
    [v5 setNeedsLayout];
  }

LABEL_13:
  if (*v6)
  {
    v17 = *v6;
    if (([v17 isDescendantOfView:v5] & 1) == 0)
    {
      [v5 addSubview:v17];
    }
  }
}

void (*sub_D0154(uint64_t *a1))(void ***a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = (v1 + v4);
  v6 = *(v5 + 2);
  v7 = *v5;
  *v3 = *v5;
  *(v3 + 16) = v6;
  v8 = v7;
  return sub_D01EC;
}

void sub_D01F8(void ***a1, char a2, void *a3)
{
  v5 = *a1;
  v6 = (*a1)[2];
  v7 = (*a1)[4] + (*a1)[3];
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v7 + 2);
  v11 = **a1;
  *v7 = v11;
  *(v7 + 2) = v6;
  v12 = v11;
  v13 = v12;
  if (a2)
  {
    v14 = v12;
    sub_CFFE8(v8, v9, v10, a3);

    v8 = *v5;
  }

  else
  {
    sub_CFFE8(v8, v9, v10, a3);
  }

  free(v5);
}

void sub_D02C8()
{
  v1 = v0;
  v68.receiver = v0;
  v68.super_class = type metadata accessor for SplitDisplayView();
  objc_msgSendSuper2(&v68, "layoutSubviews");
  v2 = [v0 traitCollection];
  [v0 bounds];
  v67 = v3;
  MaxY = v4;
  v7 = v6;
  v9 = v8;
  [v0 music_inheritedLayoutInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v0 bounds];
  *&v71[0] = CGRectGetWidth(v72);
  v70 = 0x408F400000000000;
  sub_471A4();
  if ((sub_AB38F0() & 1) == 0)
  {
    v40 = v11;
    v41 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem];
    if (v41)
    {
      v42 = *&v0[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem + 8];
      v43 = v41;
      [v43 music_setLayoutInsets:{v40, v13, v15, v17}];
      [v43 setFrame:{v67, MaxY, v7, v42}];
      [v43 frame];
      MaxY = CGRectGetMaxY(v76);
      [v43 frame];
      Height = CGRectGetHeight(v77);

      v9 = v9 - Height;
    }

    v45 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem];
    if (v45)
    {
      v46 = v45;
      [v46 music_setLayoutInsets:{v40, v13, v15, v17}];
      [v46 setFrame:{v67, MaxY, v7, v9}];
    }

    v47 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView];
    if (!v47)
    {
      goto LABEL_25;
    }

    v39 = v47;
    if ([v39 isDescendantOfView:v1])
    {
      [v39 removeFromSuperview];
    }

    goto LABEL_24;
  }

  v62 = v13;
  MaxX = UIEdgeInsetsInsetRect(v67, MaxY, v7, v9, v11, v13);
  v63 = v19;
  v64 = v18;
  v21 = v20;
  v22 = [v0 traitCollection];
  v23 = sub_45B2C4(v22, v67, MaxY, v7, v9);

  v24 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns];
  if (__OFSUB__(v23, v24))
  {
    __break(1u);
  }

  else
  {
    if (v23 - v24 >= v24)
    {
      v25 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns];
    }

    else
    {
      v25 = v23 - v24;
    }

    if (v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle] != 1 || !__OFSUB__(v23, v25))
    {
      v26 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem];
      if (v26)
      {
        v58 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem + 16];
        rect = MaxY;
        left = UIEdgeInsetsZero.left;
        v61 = v17;
        v59 = v11;
        bottom = UIEdgeInsetsZero.bottom;
        right = UIEdgeInsetsZero.right;
        v30 = v26;
        [v30 music_setLayoutInsets:{UIEdgeInsetsZero.top, left, bottom, right}];
        sub_45B2C4(v2, v67, rect, v7, v9);
        HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1, 1u, 0, v69, v7);
        v60 = v15;
        [v2 displayScale];
        v73.origin.x = v67;
        v73.origin.y = rect;
        v73.size.width = v7;
        v73.size.height = v9;
        CGRectGetWidth(v73);
        v17 = v61;
        sub_AB3A00();
        HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1, 1u, 0, &v70, v7);
        [v2 displayScale];
        MaxY = rect;
        sub_AB3A00();
        if (v58 < v31)
        {
          v31 = v58;
        }

        [v30 setFrame:{MaxX, v64, v31 - v61, v63}];
        [v30 frame];
        MaxX = CGRectGetMaxX(v74);
        v75.origin.x = v67;
        v75.origin.y = rect;
        v75.size.width = v7;
        v75.size.height = v9;
        v32 = CGRectGetWidth(v75) - v61;
        [v30 frame];
        v34 = v33;

        v21 = v32 - v34;
        v11 = v59;
        v15 = v60;
      }

      v35 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem];
      if (!v35)
      {
        goto LABEL_25;
      }

      v36 = v35;
      [v36 music_setLayoutInsets:{v11, v62, v15, v17}];
      [v36 setFrame:{MaxX, v64, v21, v63}];
      v37 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView;
      v38 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView];
      if (v38)
      {
        v39 = *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
        v48 = swift_allocObject();
        *(v48 + 16) = xmmword_AF7C50;
        v49 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor;
        *(v48 + 32) = [*&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor] colorWithAlphaComponent:1.0];
        *(v48 + 40) = [*&v1[v49] colorWithAlphaComponent:0.0];
        static Gradient.horizontal(colors:locations:interpolations:)(v48, 0, 0, v71);

        v50 = objc_allocWithZone(type metadata accessor for Gradient.View());
        v51 = Gradient.View.init(configuration:)(v71);
        v52 = *&v1[v37];
        *&v1[v37] = v51;
        v39 = v51;

        v38 = 0;
      }

      v53 = v38;
      [v1 insertSubview:v39 above:v36];
      [v36 frame];
      MinX = CGRectGetMinX(v78);
      v79.origin.x = v67;
      v79.origin.y = MaxY;
      v79.size.width = v7;
      v79.size.height = v9;
      MinY = CGRectGetMinY(v79);
      [v1 music_inheritedLayoutInsets];
      v57 = v56;
      v80.origin.x = v67;
      v80.origin.y = MaxY;
      v80.size.width = v7;
      v80.size.height = v9;
      [v39 setFrame:{MinX, MinY, v57, CGRectGetHeight(v80)}];

      v2 = v39;
LABEL_24:

      v2 = v39;
LABEL_25:

      return;
    }
  }

  __break(1u);
}

id sub_D09B4()
{
  if (qword_DE6C58 != -1)
  {
    swift_once();
  }

  v1 = qword_E71898;
  qword_DEDE48 = qword_E71898;

  return v1;
}

id sub_D0A18(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem];
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  v10 = &v4[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem];
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  v4[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns] = 2;
  v11 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor;
  if (qword_DE67D8 != -1)
  {
    swift_once();
  }

  v12 = qword_DEDE48;
  *&v4[v11] = qword_DEDE48;
  *&v4[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SplitDisplayView();
  v13 = v12;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
}

id sub_D0B88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SplitDisplayView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void _s16MusicApplication27JSSplitWidgetViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_leftContentViewController) = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_rightContentViewController) = 0;
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_lastSeenViewBounds);
  *v1 = 0u;
  v1[1] = 0u;
  v2 = OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_contentSizeObserverMap;
  *(v0 + v2) = sub_96FE0(_swiftEmptyArrayStorage);
  *(v0 + OBJC_IVAR____TtC16MusicApplication27JSSplitWidgetViewController_appearanceState) = 0x80;
  sub_ABAFD0();
  __break(1u);
}

uint64_t sub_D0CEC()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_D0D48()
{
  result = qword_DEDEA8;
  if (!qword_DEDEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDEA8);
  }

  return result;
}

unint64_t sub_D0E20()
{
  result = qword_DEDF20;
  if (!qword_DEDF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDF20);
  }

  return result;
}

id sub_D0E74(uint64_t a1)
{
  v3 = &v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_leftContentItem];
  v3[1] = 0;
  v3[2] = 0;
  *v3 = 0;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_rightContentItem];
  *v4 = 0;
  v4[1] = 0;
  v4[2] = 0;
  v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_preferredDisplayStyle] = 0;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_compactNumberOfGridColumns] = 2;
  v5 = OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientColor;
  if (qword_DE67D8 != -1)
  {
    swift_once();
  }

  v6 = qword_DEDE48;
  *&v1[v5] = qword_DEDE48;
  *&v1[OBJC_IVAR____TtC16MusicApplicationP33_F7781D2616362938348079397DDE4DAC16SplitDisplayView_gradientView] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for SplitDisplayView();
  v7 = v6;
  return objc_msgSendSuper2(&v9, "initWithCoder:", a1);
}

id sub_D0F6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 preferredContentSize];
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_D0FD8()
{

  return swift_deallocObject();
}

unint64_t sub_D1010()
{
  result = qword_DF06D0;
  if (!qword_DF06D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_DE9C30, &qword_AF8920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DF06D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication33ContainerDetailPlaylistPropertiesV06EditedE11UserArtworkOSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_D1104(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_D114C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_D11C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2EBF88(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_808B0(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

double sub_D1224@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2EBF88(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_9ACA0(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void *sub_D12E0(void *a1, uint64_t a2, uint64_t (*a3)(void *), unint64_t *a4, void *a5)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      v11 = a3(a1);
      if (v12)
      {
        v9 = *(*(a2 + 56) + 8 * v11);
        v13 = v9;
        return v9;
      }
    }

    return 0;
  }

  v7 = a1;
  v8 = sub_ABAFB0();

  if (!v8)
  {
    return 0;
  }

  sub_13C80(0, a4, a5);
  swift_unknownObjectRetain();
  swift_dynamicCast();
  v9 = v15;
  swift_unknownObjectRelease();
  return v9;
}

void *sub_D13C8(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      v6 = sub_2ECAB0(a1);
      if (v7)
      {
        v5 = *(*(a2 + 56) + 8 * v6);
        v8 = v5;
        return v5;
      }
    }

    return 0;
  }

  v3 = a1;
  v4 = sub_ABAFB0();

  if (!v4)
  {
    return 0;
  }

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E02CC0, &qword_AFC6B0);
  swift_dynamicCast();
  v5 = v10;
  swift_unknownObjectRelease();
  return v5;
}

void *sub_D1498(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) == 0)
  {
    if (*(a2 + 16))
    {
      v6 = sub_2EC3D0(a1);
      if (v7)
      {
        v5 = *(*(a2 + 56) + 8 * v6);
        v8 = v5;
        return v5;
      }
    }

    return 0;
  }

  v3 = a1;
  v4 = sub_ABAFB0();

  if (!v4)
  {
    return 0;
  }

  sub_AB2FA0();
  swift_unknownObjectRetain();
  swift_dynamicCast();
  v5 = v10;
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_D1560()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    v2 = MPModelRelationshipPlaylistCurator;
    v3 = v1;
    if ([v3 hasLoadedValueForKey:v2])
    {
      v4 = [v3 curator];
      if (v4)
      {
        v5 = v4;
        if ([v4 hasLoadedValueForKey:MPModelPropertyCuratorName])
        {
          v6 = v5;
          v7 = [v6 name];
          if (v7)
          {
            v8 = v7;
            v9 = sub_AB92A0();

            return v9;
          }
        }
      }
    }

    if ([v3 hasLoadedValueForKey:MPModelPropertyPlaylistIsOwner])
    {
      v11 = [v3 ownerName];
      if (v11)
      {
        v12 = v11;
        v13 = sub_AB92A0();

        return v13;
      }
    }
  }

  return 0;
}

uint64_t sub_D16B0()
{
  result = sub_D1CF8(&MPModelPropertyPlaylistDescriptionText);
  if (!v2)
  {
    v4 = *(v0 + 56);
    if (!v4 || ![*(v0 + 56) hasLoadedValueForKey:MPModelPropertyPlaylistDescriptionText])
    {
      return 0;
    }

    result = [v4 descriptionText];
    if (!result)
    {
      return result;
    }

    v5 = result;
    v6 = sub_AB92A0();
    v8 = v7;

    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      return v6;
    }

LABEL_5:

    return 0;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_D1780()
{
  v1 = *(v0 + 48);
  v2 = sub_AB92A0();
  if (!*(v1 + 16) || (v4 = sub_2EBF88(v2, v3), (v5 & 1) == 0))
  {
    v8 = 0u;
    v9 = 0u;

    goto LABEL_8;
  }

  sub_808B0(*(v1 + 56) + 32 * v4, &v8);

  if (!*(&v9 + 1))
  {
LABEL_8:
    sub_12E1C(&v8, &unk_DE8E40, &unk_AF8050);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

id sub_D1854()
{
  if (*(v0 + 16))
  {

    v1 = sub_AB43F0();

    return v1;
  }

  v3 = *(v0 + 56);
  if (v3)
  {
    v4 = MPModelPropertyPlaylistVisiblePlaylist;
    v5 = v3;
    if ([v5 hasLoadedValueForKey:v4])
    {
      v6 = [v5 isVisiblePlaylist];

      return v6;
    }
  }

  return &dword_0 + 2;
}

uint64_t sub_D18F4@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0, &unk_B03B20);
  *&v3 = __chkstk_darwin().n128_u64[0];
  v5 = &v14 - v4;
  v6 = *(v1 + 56);
  if (v6 && [*(v1 + 56) hasLoadedValueForKey:{MPModelPropertyPlaylistLastModifiedDateComponents, v3}])
  {
    v7 = [v6 lastModifiedDateComponents];
    if (v7)
    {
      v8 = v7;
      sub_AB2D70();

      v9 = sub_AB2DC0();
      (*(*(v9 - 8) + 56))(v5, 0, 1, v9);
    }

    else
    {
      v13 = sub_AB2DC0();
      (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
    }

    return sub_D321C(v5, a1);
  }

  else
  {
    v10 = sub_AB2DC0();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

void sub_D1A9C(uint64_t a1@<X8>)
{
  v3 = sub_D1CF8(&MPModelPropertyPlaylistCoverArtworkRecipe);
  if (!v4)
  {
    v17 = *(v1 + 56);
    v12 = 0uLL;
    if (!v17)
    {
      v11 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      goto LABEL_8;
    }

    v5 = MPModelPropertyPlaylistCoverArtworkRecipe;
    v6 = v17;
    if (([v6 hasLoadedValueForKey:v5] & 1) == 0)
    {

      v17 = 0;
      v11 = 0uLL;
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      v12 = 0uLL;
      goto LABEL_8;
    }

    v7 = [v6 coverArtworkRecipe];
    v8 = sub_AB92A0();
    v10 = v9;

    v4 = v10;
    v3 = v8;
  }

  PlaylistCovers.Recipe.init(_:)(v18, v3, v4);
  v12 = v18[0];
  v11 = v18[1];
  v13 = v18[2];
  v14 = v18[3];
  v15 = v18[4];
  v16 = v18[5];
  v17 = v19;
LABEL_8:
  *a1 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v13;
  *(a1 + 48) = v14;
  *(a1 + 64) = v15;
  *(a1 + 80) = v16;
  *(a1 + 96) = v17;
}

uint64_t sub_D1CF8(void *a1)
{
  v2 = *(v1 + 48);
  v3 = sub_AB92A0();
  if (!*(v2 + 16) || (v5 = sub_2EBF88(v3, v4), (v6 & 1) == 0))
  {
    v9 = 0u;
    v10 = 0u;

    goto LABEL_9;
  }

  sub_808B0(*(v2 + 56) + 32 * v5, &v9);

  if (!*(&v10 + 1))
  {
LABEL_9:
    sub_12E1C(&v9, &unk_DE8E40, &unk_AF8050);
    return 0;
  }

  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

id sub_D1DC8()
{
  v1 = *(v0 + 64);
  if (v1 >= 2)
  {
    return [objc_opt_self() staticArtworkCatalogWithImage:v1];
  }

  v2 = *(v0 + 56);
  if (!v2)
  {
    return 0;
  }

  v3 = MPModelPropertyPlaylistArtwork;
  v4 = v2;
  if (![v4 hasLoadedValueForKey:v3])
  {
    if ([v4 hasLoadedValueForKey:MPModelPropertyPlaylistTracksTiledArtwork])
    {
      v17 = [v4 tracksTiledArtworkCatalogWithRows:2 columns:2];
LABEL_17:
      v18 = v17;

      return v18;
    }

    return 0;
  }

  v5 = sub_D1CF8(&MPModelPropertyPlaylistCoverArtworkRecipe);
  if (!v6)
  {
LABEL_16:
    v17 = MPModelPlaylist.preferredArtworkCatalog.getter();
    goto LABEL_17;
  }

  v7 = v6;
  v8 = v5;
  v9 = sub_D1FC0();
  if (!v10)
  {
LABEL_14:

    goto LABEL_16;
  }

  v11 = v9;
  v12 = v10;
  v13 = MPModelPropertyPlaylistUserEditableComponents;
  v14 = v4;
  if (([v14 hasLoadedValueForKey:v13] & 1) == 0)
  {

    goto LABEL_16;
  }

  v15 = [v14 userEditableComponents];

  if ((v15 & 2) == 0)
  {

    goto LABEL_14;
  }

  type metadata accessor for PlaylistCovers.ArtworkToken();
  v19 = PlaylistCovers.ArtworkToken.__allocating_init(rawJSON:playlistTitle:)(v8, v7, v11, v12);
  if (!v19)
  {
    goto LABEL_16;
  }

  v20 = v19;
  v21 = [objc_allocWithZone(MPArtworkCatalog) initWithToken:v19 dataSource:*PlaylistCovers.ArtworkDataSource.shared.unsafeMutableAddressor()];

  return v21;
}

uint64_t sub_D1FC0()
{
  result = sub_D1CF8(&MPModelPropertyPlaylistName);
  if (!v2)
  {
LABEL_6:
    v4 = *(v0 + 56);
    if (!v4 || ![v4 hasLoadedValueForKey:MPModelPropertyPlaylistName])
    {
      return 0;
    }

    result = [v4 name];
    if (result)
    {
      v5 = result;
      v6 = sub_AB92A0();

      return v6;
    }

    return result;
  }

  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {

    goto LABEL_6;
  }

  return result;
}

BOOL sub_D2078(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (v2)
    {
      sub_13C80(0, &qword_DFA720, NSObject_ptr);
      return sub_ABA790() & 1;
    }

    return 0;
  }

  return !v2;
}

uint64_t sub_D20E8()
{
  v1 = *(v0 + 56);
  v2 = xmmword_AF82C0;
  v3 = 0uLL;
  if (v1)
  {
    sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v5 = v1;
    v6 = [ObjCClassFromMetadata requiredLibraryAddStatusObservationProperties];
    v7 = [v5 hasLoadedValuesForPropertySet:v6];

    if (v7)
    {
      v8 = [v5 libraryAddStatusObserverConfiguration];

      v9 = v8 & 0x100000000;
      v10 = vdupq_n_s64(v8);
      v3 = vandq_s8(v10, xmmword_AFC580);
      v2 = vandq_s8(v10, xmmword_AFC590);
    }

    else
    {

      v9 = 0;
      v3 = 0uLL;
      v2 = xmmword_AF82C0;
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = vorrq_s8(v2, v3);
  return *&vorr_s8(*v11.i8, *&vextq_s8(v11, v11, 8uLL)) | v9;
}

id sub_D2204()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v3 = v1;
    v4 = [ObjCClassFromMetadata requiredKeepLocalStatusObservationProperties];
    v5 = [v3 hasLoadedValuesForPropertySet:v4];

    if (v5)
    {
      v6 = [v3 newKeepLocalStatusObserverConfiguration];

      return v6;
    }
  }

  v8 = objc_allocWithZone(MPLibraryKeepLocalStatusObserverIndividualEntityConfiguration);

  return [v8 init];
}

void *MetricsEvent.ComponentRender.componentEndTime.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

id sub_D2318()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return 0;
  }

  v2 = MPModelPropertyPlaylistIsFavorite;
  v3 = v1;
  if ([v3 hasLoadedValueForKey:v2])
  {
    v4 = [v3 isFavorite];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_D23C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_D24AC(v11, v13) & 1;
}

uint64_t sub_D2448()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E70DC0);
  __swift_project_value_buffer(v0, qword_E70DC0);
  return static Logger.music(_:)(0xD00000000000001DLL, 0x8000000000B4FA40);
}

unint64_t sub_D24AC(double *a1, uint64_t *a2)
{
  v4 = sub_AB2DC0();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEDFB0, &unk_AFC690);
  __chkstk_darwin();
  v10 = &v81 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0, &unk_B03B20);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v14 = *(a1 + 7);
  v15 = a2[7];
  if (v14)
  {
    if (!v15)
    {
LABEL_69:
      LOBYTE(v30) = 0;
      return v30 & 1;
    }

    v95 = v13;
    v96 = &v81 - v11;
    v92 = v7;
    v93 = v12;
    v97 = v5;
    v98 = v4;
    v94 = v10;
    sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
    v16 = v15;
    v17 = v14;
    v18 = a1;
    v19 = a2;
    v20 = v14;
    v21 = v16;
    v22 = v20;
    a2 = v19;
    a1 = v18;
    v23 = v22;
    v24 = sub_ABA790();

    if ((v24 & 1) == 0)
    {

      goto LABEL_69;
    }
  }

  else
  {
    v95 = v13;
    v96 = &v81 - v11;
    v92 = v7;
    v93 = v12;
    v97 = v5;
    v98 = v4;
    v94 = v10;
    v17 = 0;
    if (v15)
    {
      goto LABEL_69;
    }
  }

  v25 = sub_D16B0();
  v27 = v26;
  v91 = a2;
  v28 = sub_D16B0();
  LOBYTE(v30) = v29;
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_19;
    }

    if (v25 == v28 && v27 == v29)
    {
    }

    else
    {
      v31 = sub_ABB3C0();

      if ((v31 & 1) == 0)
      {
        goto LABEL_67;
      }
    }
  }

  else if (v29)
  {
    goto LABEL_21;
  }

  v32 = sub_D1FC0();
  v34 = v33;
  v35 = sub_D1FC0();
  LOBYTE(v30) = v36;
  if (!v34)
  {
    if (!v36)
    {
      goto LABEL_23;
    }

LABEL_21:

    goto LABEL_69;
  }

  if (v36)
  {
    if (v32 == v35 && v34 == v36)
    {
    }

    else
    {
      v37 = sub_ABB3C0();

      if ((v37 & 1) == 0)
      {
        goto LABEL_67;
      }
    }

LABEL_23:
    v38 = *(a1 + 8);
    v39 = v91[8];
    if (v38 == 1)
    {
      if (v39 == &dword_0 + 1)
      {
LABEL_25:
        v40 = *(a1 + 5);
        v41 = v91[5];
        if (v40)
        {
          if (!v41)
          {
            goto LABEL_67;
          }

          sub_13C80(0, &unk_E04570, MPModelCurator_ptr);
          v42 = v41;
          v43 = v40;
          v44 = sub_ABA790();

          if ((v44 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else if (v41)
        {
          goto LABEL_67;
        }

        if (a1[14])
        {
          if ((v91[14] & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else if ((v91[14] & 1) != 0 || *(a1 + 13) != v91[13])
        {
          goto LABEL_67;
        }

        if (a1[12])
        {
          if ((v91[12] & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        else if ((v91[12] & 1) != 0 || a1[11] != *(v91 + 11))
        {
          goto LABEL_67;
        }

        v47 = sub_D1780();
        if (v47 == 2)
        {
          v47 = sub_D1854();
        }

        v48 = sub_D1780();
        if (v48 == 2 && (v48 = sub_D1854(), v48 == 2))
        {
          if (v47)
          {
            goto LABEL_67;
          }
        }

        else if ((v47 ^ v48))
        {
          goto LABEL_67;
        }

        if (v17)
        {
          v49 = MPModelPropertyPlaylistIsFavorite;
          v50 = v17;
          if ([v50 hasLoadedValueForKey:v49])
          {
            v51 = [v50 isFavorite];
          }

          else
          {
            v51 = 0;
          }
        }

        else
        {
          v51 = 0;
        }

        if (v15)
        {
          v52 = MPModelPropertyPlaylistIsFavorite;
          v53 = v15;
          if ([v53 hasLoadedValueForKey:v52])
          {
            v54 = [v53 isFavorite];

            if (v51 != v54)
            {

LABEL_68:
              goto LABEL_69;
            }

LABEL_71:
            v90 = v17;
            v56 = v96;
            sub_D18F4(v96);
            v57 = v95;
            sub_D18F4(v95);
            v58 = *(v8 + 48);
            v59 = v94;
            sub_D3154(v56, v94);
            v89 = v58;
            sub_D3154(v57, v59 + v58);
            v60 = v98;
            v61 = *(v97 + 48);
            if (v61(v59, 1, v98) == 1)
            {
              v98 = v60;
              sub_12E1C(v57, &qword_DF43E0, &unk_B03B20);
              sub_12E1C(v56, &qword_DF43E0, &unk_B03B20);
              if (v61(v59 + v89, 1, v98) == 1)
              {
                sub_12E1C(v59, &qword_DF43E0, &unk_B03B20);
                v62 = v90;
                goto LABEL_79;
              }
            }

            else
            {
              v63 = v93;
              sub_D3154(v59, v93);
              if (v61(v59 + v89, 1, v60) != 1)
              {
                v64 = v97;
                v65 = v92;
                (*(v97 + 32))(v92, v59 + v89, v60);
                sub_D31C4();
                v93 = v63;
                LODWORD(v89) = sub_AB91C0();
                v66 = *(v64 + 8);
                v66(v65, v60);
                sub_12E1C(v95, &qword_DF43E0, &unk_B03B20);
                sub_12E1C(v96, &qword_DF43E0, &unk_B03B20);
                v66(v93, v60);
                sub_12E1C(v59, &qword_DF43E0, &unk_B03B20);
                v62 = v90;
                if (v89)
                {
LABEL_79:
                  if (v62)
                  {
                    if ([v62 hasLoadedValueForKey:MPModelPropertyPlaylistTraits])
                    {
                      v67 = [v90 traits];
                    }

                    else
                    {
                      v67 = 0;
                    }
                  }

                  else
                  {
                    v67 = 0;
                  }

                  if (v15)
                  {
                    if ([v15 hasLoadedValueForKey:MPModelPropertyPlaylistTraits])
                    {
                      v68 = [v15 traits];

                      if (v67 != v68)
                      {
                        goto LABEL_69;
                      }

LABEL_91:
                      v69 = *(a1 + 1);
                      v30 = v91[1];
                      if (v69)
                      {
                        if (!v30)
                        {
                          return v30 & 1;
                        }

                        v70 = sub_12BDDC(v69, v30);

                        if ((v70 & 1) == 0)
                        {
                          goto LABEL_69;
                        }
                      }

                      else if (v30)
                      {
                        goto LABEL_69;
                      }

                      v71 = *a1;
                      v30 = *v91;
                      if (*a1)
                      {
                        if (!v30)
                        {
                          return v30 & 1;
                        }

                        v72 = sub_12BDDC(v71, v30);

                        if ((v72 & 1) == 0)
                        {
                          goto LABEL_69;
                        }
                      }

                      else if (v30)
                      {
                        goto LABEL_69;
                      }

                      sub_D1A9C(&v126);
                      sub_D1A9C(&v139);
                      v73 = v126;
                      v74 = v127;
                      v97 = v129;
                      v98 = v128;
                      v95 = v131;
                      v96 = v130;
                      v93 = v133;
                      v94 = v132;
                      v91 = v135;
                      v92 = v134;
                      v89 = v137;
                      v90 = v136;
                      v75 = v139;
                      v76 = v140;
                      v78 = v141;
                      v77 = v142;
                      v79 = v143;
                      v80 = v144;
                      v87 = v145;
                      v88 = v138;
                      v85 = v147;
                      v86 = v146;
                      v83 = v149;
                      v84 = v148;
                      v81 = v151;
                      v82 = v150;
                      if (v127)
                      {
                        if (v140)
                        {
                          if (v126 == v139 && v140 == v127)
                          {
                            if (v98 != v141)
                            {
LABEL_126:
                              LOBYTE(v30) = 0;
LABEL_127:
                              v99[0] = v75;
                              v99[1] = v76;
                              v99[2] = v78;
                              v99[3] = v77;
                              v99[4] = v79;
                              v99[5] = v80;
                              v99[6] = v87;
                              v99[7] = v86;
                              v99[8] = v85;
                              v99[9] = v84;
                              v99[10] = v83;
                              v99[11] = v82;
                              v99[12] = v81;
                              sub_12E1C(v99, &unk_E02CB0, &unk_B0C610);
                              v100 = v73;
                              v101 = v74;
                              v102 = v98;
                              v103 = v97;
                              v104 = v96;
                              v105 = v95;
                              v106 = v94;
                              v107 = v93;
                              v108 = v92;
                              v109 = v91;
                              v110 = v90;
                              v111 = v89;
                              v112 = v88;
                              sub_12E1C(&v100, &unk_E02CB0, &unk_B0C610);
                              return v30 & 1;
                            }
                          }

                          else
                          {
                            LOBYTE(v30) = 0;
                            if ((sub_ABB3C0() & 1) == 0 || v98 != v78)
                            {
                              goto LABEL_127;
                            }
                          }

                          if (v97 == v77 && v96 == v79 || (sub_ABB3C0()) && (v95 == v80 && v94 == v87 || (sub_ABB3C0()) && (v93 == v86 && v92 == v85 || (sub_ABB3C0()) && (v91 == v84 && v90 == v83 || (sub_ABB3C0()))
                          {
                            if (v89 == v82 && v88 == v81)
                            {
                              LOBYTE(v30) = 1;
                            }

                            else
                            {
                              LOBYTE(v30) = sub_ABB3C0();
                            }

                            goto LABEL_127;
                          }

                          goto LABEL_126;
                        }
                      }

                      else if (!v140)
                      {
                        v100 = v126;
                        v101 = 0;
                        v102 = v98;
                        v103 = v97;
                        v104 = v96;
                        v105 = v95;
                        v106 = v94;
                        v107 = v93;
                        v108 = v92;
                        v109 = v91;
                        v110 = v90;
                        v111 = v89;
                        v112 = v88;
                        sub_12E1C(&v100, &unk_E02CB0, &unk_B0C610);
                        LOBYTE(v30) = 1;
                        return v30 & 1;
                      }

                      v100 = v126;
                      v101 = v127;
                      v102 = v98;
                      v103 = v97;
                      v104 = v96;
                      v105 = v95;
                      v106 = v94;
                      v107 = v93;
                      v108 = v92;
                      v109 = v91;
                      v110 = v90;
                      v111 = v89;
                      v112 = v88;
                      v113 = v139;
                      v114 = v140;
                      v115 = v141;
                      v116 = v142;
                      v117 = v143;
                      v118 = v144;
                      v119 = v87;
                      v120 = v86;
                      v121 = v85;
                      v122 = v84;
                      v123 = v83;
                      v124 = v82;
                      v125 = v81;
                      sub_12E1C(&v100, &qword_DEDFB8, &unk_AFC6A0);
                      goto LABEL_69;
                    }
                  }

                  if (v67)
                  {
                    goto LABEL_69;
                  }

                  goto LABEL_91;
                }

LABEL_77:

                goto LABEL_69;
              }

              sub_12E1C(v95, &qword_DF43E0, &unk_B03B20);
              sub_12E1C(v96, &qword_DF43E0, &unk_B03B20);
              (*(v97 + 8))(v63, v60);
            }

            sub_12E1C(v59, &qword_DEDFB0, &unk_AFC690);
            v62 = v90;
            goto LABEL_77;
          }
        }

        if (!v51)
        {
          goto LABEL_71;
        }

LABEL_67:

        goto LABEL_68;
      }
    }

    else
    {
      if (v39 == &dword_0 + 1)
      {
        goto LABEL_67;
      }

      if (v38)
      {
        if (v39)
        {
          sub_13C80(0, &qword_DFA720, NSObject_ptr);
          v45 = v39;
          if (sub_ABA790())
          {
            sub_D3144(v39);
            goto LABEL_25;
          }

LABEL_40:

          sub_D3144(v39);
          goto LABEL_69;
        }
      }

      else if (!v39)
      {
        goto LABEL_25;
      }
    }

    v46 = v39;
    goto LABEL_40;
  }

LABEL_19:

  return v30 & 1;
}

void sub_D3144(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

uint64_t sub_D3154(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0, &unk_B03B20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_D31C4()
{
  result = qword_DEDFC0;
  if (!qword_DEDFC0)
  {
    sub_AB2DC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEDFC0);
  }

  return result;
}

uint64_t sub_D321C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0, &unk_B03B20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_D328C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_97420(_swiftEmptyArrayStorage);
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  *(a2 + 48) = v4;
  *(a2 + 56) = a1;
  *(a2 + 64) = 1;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  *(a2 + 104) = 0;
  *(a2 + 112) = 1;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  return result;
}

void sub_D3310(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v11 = qword_E718D8;
  *&v4[v10] = qword_E718D8;
  v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textAlignment] = 4;
  v12 = &v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_handler];
  *v12 = 0;
  v12[1] = 0;
  *&v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textDrawingCache] = 0;
  v13 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView;
  v14 = objc_allocWithZone(UIImageView);
  v15 = v11;
  *&v4[v13] = [v14 initWithImage:0];
  v16 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView;
  type metadata accessor for TextStackView();
  *&v4[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = &v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents];
  sub_D481C(v37);
  v18 = v37[1];
  *v17 = v37[0];
  *(v17 + 1) = v18;
  *(v17 + 4) = v38;
  v19 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button;
  *&v4[v19] = [objc_opt_self() buttonWithType:0];
  *&v4[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_buttonActionEventHandler] = 0;
  v36.receiver = v4;
  v36.super_class = type metadata accessor for CollectionAccessoryView();
  v20 = objc_msgSendSuper2(&v36, "initWithFrame:", a1, a2, a3, a4);
  v21 = [v20 layer];
  [v21 setAllowsGroupOpacity:0];

  v22 = [v20 layer];
  [v22 setAllowsGroupBlending:0];

  [v20 addSubview:*&v20[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView]];
  v23 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView;
  v24 = *&v20[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView];
  v25 = &v20[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents];
  swift_beginAccess();
  v26 = *(v25 + 4);
  if (!(v26 >> 62))
  {
    v27 = *(&dword_10 + (v26 & 0xFFFFFFFFFFFFFF8));
    if (v27)
    {
      goto LABEL_5;
    }

LABEL_12:
    [v20 addSubview:*&v20[v23]];
    v32 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button;
    [v20 addSubview:*&v20[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button]];
    v33 = *&v20[v32];
    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for ControlEventHandler();
    swift_allocObject();
    v35 = sub_13C80(0, &qword_DF13D0, UIButton_ptr);
    *&v20[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_buttonActionEventHandler] = ControlEventHandler.init<A>(control:events:handler:)(v33, 64, sub_D4C58, v34, v35);

    return;
  }

  v27 = sub_ABB060();
  if (!v27)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v27 >= 1)
  {
    v28 = v24;

    for (i = 0; i != v27; ++i)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v31 = sub_36003C(i, v26, v29);
      }

      else
      {
        v31 = *(v26 + 8 * i + 32);
      }

      TextStackView.add(_:)(v31);
    }

    goto LABEL_12;
  }

  __break(1u);
}

void sub_D370C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_handler);
    if (v4)
    {
      v5 = *(Strong + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_handler + 8);

      v4(v3);
      sub_17654(v4, v5);
    }
  }
}

void sub_D392C(uint64_t a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor;
  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor);
  sub_13C80(0, qword_DFAAC0, UIColor_ptr);
  v5 = v4;
  v6 = sub_ABA790();

  if ((v6 & 1) == 0)
  {
    v7 = *(v2 + v3);
    v8 = v2 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents;
    swift_beginAccess();
    v9 = *(v8 + 24);
    *(v8 + 24) = v7;
    v10 = v7;

    v11 = *(v8 + 8);
    sub_D4B88(*v8, *(v8 + 16), v10, v19);
    swift_beginAccess();
    v13 = v11[3];
    v12 = v11[4];
    v14 = v11[6];
    v18[3] = v11[5];
    v18[4] = v14;
    v18[1] = v13;
    v18[2] = v12;
    v18[0] = v11[2];
    v15 = v19[4];
    v11[5] = v19[3];
    v11[6] = v15;
    v16 = v19[1];
    v11[2] = v19[0];
    v11[3] = v16;
    v11[4] = v19[2];
    sub_2F118(v19, &v17);
    sub_2F174(v18);
    sub_2EB2A8();
    swift_endAccess();
    sub_2F174(v19);
  }
}

double sub_D3A68(double a1, double a2)
{
  [v2 intrinsicContentSize];
  v5 = v4;
  sub_7FD28();
  v6 = sub_AB38E0();
  if (v5 <= a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1;
  }

  if (v6)
  {
    v8 = v5;
  }

  else
  {
    v8 = v7;
  }

  sub_AB38E0();
  return v8;
}

void sub_D3C38()
{
  v36.receiver = v0;
  v36.super_class = type metadata accessor for CollectionAccessoryView();
  objc_msgSendSuper2(&v36, "layoutSubviews");
  v1 = [v0 traitCollection];
  [v0 music_inheritedLayoutInsets];
  v3 = v2;
  v5 = v4;
  [v1 displayScale];
  [v0 bounds];
  v34 = v7;
  v35 = v6;
  v9 = v8;
  v11 = v10;
  v12 = UIEdgeInsetsInsetRect(v6, v7, v8, v10, v3, v5);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [v0 effectiveUserInterfaceLayoutDirection];
  v19 = *&v0[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView];
  [v19 sizeThatFits:{v16, v18}];
  v21 = v20;
  v23 = v22;
  v37.origin.x = v12;
  v37.origin.y = v14;
  v37.size.width = v16;
  v37.size.height = v18;
  CGRectGetMaxX(v37);
  v38.origin.x = 0.0;
  v38.origin.y = 0.0;
  v38.size.width = v21;
  v38.size.height = v23;
  CGRectGetWidth(v38);
  sub_ABA470();
  sub_ABA490();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  [v19 setFrame:*&v23];
  v39.origin.x = v25;
  v39.origin.y = v27;
  v39.size.width = v29;
  v39.size.height = v31;
  CGRectGetWidth(v39);
  v32 = *&v0[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView];
  sub_ABA490();
  [v32 setFrame:?];
  v33 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button;
  [*&v0[OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button] setFrame:{v35, v34, v9, v11}];
  [v0 bringSubviewToFront:*&v0[v33]];
}

uint64_t (*sub_D3FA8(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textDrawingCache;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_D4030;
}

void sub_D4030(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView);
    v6 = *(v4 + v3[4]);
    v7 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
    swift_beginAccess();
    v8 = *(v5 + v7);
    *(v5 + v7) = v6;
    swift_retain_n();
    sub_2E6210(v8);
  }

  free(v3);
}

double sub_D4250(uint64_t a1)
{
  sub_D4760(a1);

  return result;
}

void (*sub_D4288(uint64_t **a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_D3FA8(v2);
  return sub_A8F90;
}

id sub_D42F8(void *a1, double a2, double a3, double a4, double a5)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for AccessoryReusableView(0);
  v9 = objc_msgSendSuper2(&v13, "initWithFrame:", a2, a3, a4, a5);
  v10 = [v9 layer];
  [v10 setAllowsGroupOpacity:0];

  v11 = [v9 layer];
  [v11 setAllowsGroupBlending:0];

  return v9;
}

double sub_D4440(uint64_t a1)
{
  v1 = [objc_opt_self() defaultMetrics];
  sub_AB9EF0();
  v3 = v2;

  return v3;
}

void sub_D44F4()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for AccessoryReusableView(0);
  objc_msgSendSuper2(&v6, "tintColorDidChange");
  v2 = *&v0[qword_DF4010];
  v3 = [v1 tintColor];
  if (v3)
  {
    v4 = *(v2 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor);
    *(v2 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor) = v3;
    v5 = v3;
    sub_D392C(v4);
  }

  else
  {
    __break(1u);
  }
}

void sub_D4598(void *a1)
{
  v1 = a1;
  sub_D44F4();
}

id sub_D45FC(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t type metadata accessor for AccessoryReusableView(uint64_t a1)
{
  result = qword_DEE068;
  if (!qword_DEE068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D46C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_D4708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_D4760(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textDrawingCache;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_retain_n();

  v4 = *(v1 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView);
  v5 = OBJC_IVAR____TtC16MusicApplication13TextStackView_textDrawingCache;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *(v4 + v5) = a1;

  sub_2E6210(v6);

  return result;
}

uint64_t sub_D481C@<X0>(uint64_t a1@<X8>)
{
  sub_13C80(0, &qword_DE6EE0, UIFont_ptr);
  v2 = sub_ABA560();
  v3 = qword_DE6C98;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = qword_E718D8;
  v6 = objc_opt_self();
  v7 = v5;
  v8 = [v6 clearColor];
  *&v13[0] = v5;
  *(&v13[0] + 1) = v8;
  v13[1] = xmmword_AF7C20;
  v14 = 0;
  v15 = 0;
  v16 = v4;
  v17 = 1;
  v18 = xmmword_AF7C40;
  type metadata accessor for TextStackView.Component();
  swift_allocObject();
  v9 = TextStackView.Component.init(identifier:labelProperties:)(0x656C746974, 0xE500000000000000, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AF82B0;
  *(v10 + 32) = v9;
  v19[0] = v5;
  v19[1] = v8;
  v20 = xmmword_AF7C20;
  v21 = 0;
  v22 = 0;
  v23 = v4;
  v24 = 1;
  v25 = xmmword_AF7C40;
  sub_2F118(v13, v12);

  result = sub_2F174(v19);
  *a1 = 4;
  *(a1 + 8) = v9;
  *(a1 + 16) = v4;
  *(a1 + 24) = v7;
  *(a1 + 32) = v10;
  return result;
}

void sub_D49E4()
{
  v1 = (v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_titleTextColor;
  if (qword_DE6C98 != -1)
  {
    swift_once();
  }

  v3 = qword_E718D8;
  *(v0 + v2) = qword_E718D8;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textAlignment) = 4;
  v4 = (v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_handler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textDrawingCache) = 0;
  v5 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_accessoryImageView;
  v6 = objc_allocWithZone(UIImageView);
  v7 = v3;
  *(v0 + v5) = [v6 initWithImage:0];
  v8 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textStackView;
  type metadata accessor for TextStackView();
  *(v0 + v8) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_textComponents;
  sub_D481C(v12);
  v10 = v12[1];
  *v9 = v12[0];
  *(v9 + 16) = v10;
  *(v9 + 32) = v13;
  v11 = OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_button;
  *(v0 + v11) = [objc_opt_self() buttonWithType:0];
  *(v0 + OBJC_IVAR____TtC16MusicApplication23CollectionAccessoryView_buttonActionEventHandler) = 0;
  sub_ABAFD0();
  __break(1u);
}

double sub_D4B88@<D0>(unsigned __int8 a1@<W0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = objc_opt_self();
  v9 = a2;
  v10 = a3;
  v11 = [v8 clearColor];
  *a4 = a3;
  *(a4 + 8) = v11;
  *(a4 + 16) = a1;
  *(a4 + 24) = 4;
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = v9;
  *(a4 + 56) = 1;
  result = 16.0;
  *(a4 + 64) = xmmword_AF9C80;
  return result;
}

uint64_t sub_D4C20()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

void sub_D4CC8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for EditingSectionedCollection.ChangeRecord(0) - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  if (a2)
  {
    if (!a1)
    {

      goto LABEL_22;
    }

    sub_307CC(a2, a3);
    v9 = a1;
    v10 = [v3 results];
    if (v10)
    {
      v11 = v10;
      type metadata accessor for EditingSectionedCollection();
      v12 = swift_dynamicCastClass();
      if (!v12)
      {
        goto LABEL_12;
      }

      v13 = v12;
      v14 = [v9 results];
      if (v14)
      {
        v43 = v9;
        v15 = v14;
        v16 = swift_dynamicCastClass();
        if (v16)
        {
          v42 = v15;
          if (*(v16 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection) != *&v13[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_baseSectionedCollection])
          {

LABEL_22:
            v23 = 0;
            goto LABEL_23;
          }

          v24 = *(v16 + OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_changeRecords);
          v25 = *&v13[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_changeRecords];
          v26 = *(v25 + 16);
          v27 = *(v24 + 16);
          if (v26 == v27 + 1)
          {
            v38 = *(v7 + 80);
            v40 = (2 * v27) | 1;
            v28 = v24;

            v41 = v25;
            v39 = v25 + ((v38 + 32) & ~v38);
            sub_13099C(v25, v39, 0, v40);
            v30 = v29;
            if (sub_12CF30(v29, v28))
            {
              v37[1] = v30;
              v40 = v28;
              if (v26 <= *(v41 + 16))
              {
                v31 = v38;
                sub_57E38(v39 + *(v7 + 72) * (v26 - 1), v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
                v32 = swift_allocObject();
                sub_D587C(v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + ((v31 + 16) & ~v31));
                v33 = objc_allocWithZone(MPChangeDetails);
                v48 = sub_D58E0;
                v49 = v32;
                aBlock = _NSConcreteStackBlock;
                v45 = 1107296256;
                v46 = sub_1546C;
                v47 = &block_descriptor_9_0;
                v34 = _Block_copy(&aBlock);
                v23 = [v33 initWithBlock:v34];
                _Block_release(v34);

                goto LABEL_23;
              }

              __break(1u);
LABEL_28:
              __break(1u);
              return;
            }
          }

          goto LABEL_22;
        }

        v9 = v43;
      }

      if (*(*&v13[OBJC_IVAR____TtC16MusicApplication26EditingSectionedCollection_changeRecords] + 16))
      {
LABEL_12:

        goto LABEL_22;
      }

      v17 = [v13 totalItemCount];
      v18 = [v9 results];
      if (!v18)
      {
        goto LABEL_28;
      }

      v19 = v18;
      v20 = [v18 totalItemCount];

      if (v17 == v20)
      {
        v21 = objc_allocWithZone(MPChangeDetails);
        v48 = UIScreen.Dimensions.size.getter;
        v49 = 0;
        aBlock = _NSConcreteStackBlock;
        v45 = 1107296256;
        v46 = sub_1546C;
        v47 = &block_descriptor_25;
        v22 = _Block_copy(&aBlock);
        v23 = [v21 initWithBlock:v22];
        _Block_release(v22);

LABEL_23:
        sub_60044();
        v35 = swift_allocObject();
        v35[2] = a2;
        v35[3] = a3;
        v35[4] = v23;
        sub_307CC(a2, a3);
        v36 = v23;
        static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_C3964, v35);

        sub_17654(a2, a3);
        return;
      }
    }

    goto LABEL_22;
  }
}

void sub_D51E4(void *a1, uint64_t a2)
{
  v4 = sub_AB3820();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EditingSectionedCollection.ChangeRecord(0);
  __chkstk_darwin();
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_57E38(a2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38, &qword_AF89A0);
      v12 = *(v5 + 8);
      v12(v9 + *(v11 + 48), v4);
      v12(v9, v4);
      return;
    }

    (*(v5 + 32))(v7, v9, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530, &qword_AFF5D0);
    v18 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_AF4EC0;
    (*(v5 + 16))(v19 + v18, v7, v4);
    v17.super.isa = sub_AB9740().super.isa;

    [a1 setDeletedItemIndexPaths:v17.super.isa];
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    v13 = *v9;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D40, &qword_AF89B8);
    (*(v5 + 32))(v7, v9 + *(v14 + 48), v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DEA530, &qword_AFF5D0);
    v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_AF4EC0;
    (*(v5 + 16))(v16 + v15, v7, v4);
    v17.super.isa = sub_AB9740().super.isa;

    [a1 setInsertedItemIndexPaths:v17.super.isa];
    (*(v5 + 8))(v7, v4);
  }
}

id sub_D55D4(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditingModelResponse();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_D562C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_D5664()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_D56BC()
{
  v1 = *(type metadata accessor for EditingSectionedCollection.ChangeRecord(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (v0 + v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v10 = sub_AB3820();
      (*(*(v10 - 8) + 8))(v0 + v2, v10);
      break;
    case 1:
      v7 = sub_AB3820();
      v8 = *(*(v7 - 8) + 8);
      v8(v0 + v2, v7);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D38, &qword_AF89A0);
      v8(v3 + *(v9 + 48), v7);
      break;
    case 0:

      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE9D40, &qword_AF89B8) + 48);
      v6 = sub_AB3820();
      (*(*(v6 - 8) + 8))(v3 + v5, v6);
      break;
  }

  return swift_deallocObject();
}

uint64_t sub_D587C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditingSectionedCollection.ChangeRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_D58E0(void *a1)
{
  v3 = *(type metadata accessor for EditingSectionedCollection.ChangeRecord(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_D51E4(a1, v4);
}

id sub_D5958@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for VerticalLockupCollectionViewCell(0);
  v2 = swift_dynamicCastClass();
  if (v2)
  {
    [*(*(v2 + OBJC_IVAR____TtC16MusicApplication32VerticalLockupCollectionViewCell_artworkComponent) + 112) frame];
    goto LABEL_12;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  v8 = v26;
  if (v7)
  {
    v9 = v26;
    v10 = [v7 _collectionView];
    if (v10)
    {
      v11 = v10;
      v12 = sub_AB9260();
      v13 = NSSelectorFromString(v12);

      if ([v11 respondsToSelector:v13])
      {
        v14 = [v11 _currentTouch];
        if (v14)
        {
          v15 = v14;
          [v14 locationInView:v9];
          v17 = v16;
          v19 = v18;

          v32.size.width = 0.0;
          v32.size.height = 0.0;
          v32.origin.x = v17;
          v32.origin.y = v19;
          v33 = CGRectInset(v32, -20.0, -20.0);
          x = v33.origin.x;
          y = v33.origin.y;
          width = v33.size.width;
          height = v33.size.height;

          v6 = height;
          v5 = width;
          v4 = y;
          v3 = x;
          goto LABEL_12;
        }
      }
    }

    else
    {
      v11 = v9;
    }

    v8 = v26;
  }

  [v8 bounds];
LABEL_12:
  v29[0] = v26;
  *&v29[1] = v3;
  *&v29[2] = v4;
  *&v29[3] = v5;
  *&v29[4] = v6;
  v30 = 0;
  PresentationSource.Position.init(source:permittedArrowDirections:)(v29, 15, v27);
  v24 = v27[1];
  *a1 = v27[0];
  *(a1 + 16) = v24;
  *(a1 + 32) = v27[2];
  *(a1 + 48) = v28;

  return v26;
}

void sub_D5B6C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 connectedScenes];
  sub_D5EA8();
  sub_D5EF4();
  v2 = sub_AB9B40();

  v27 = v1;
  if ((v2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_ABAC10();
    sub_AB9BC0();
    v2 = v29;
    v3 = v30;
    v4 = v31;
    v5 = v32;
    v6 = v33;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  v26 = v4;
  v10 = (v4 + 64) >> 6;
  if (v2 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v11 = v5;
  v12 = v6;
  v13 = v5;
  if (v6)
  {
LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v2 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v15)
    {
      while (1)
      {
        v16 = v2;
        v17 = v15;
        v18 = [v15 session];
        v19 = [v18 role];

        v20 = sub_AB92A0();
        v22 = v21;
        if (v20 == sub_AB92A0() && v22 == v23)
        {
          break;
        }

        v25 = sub_ABB3C0();

        if (v25)
        {
          goto LABEL_26;
        }

        v5 = v13;
        v6 = v14;
        v2 = v16;
        if ((v16 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (sub_ABAC90())
        {
          swift_unknownObjectRetain();
          swift_dynamicCast();
          swift_unknownObjectRelease();
          v15 = v28;
          v13 = v5;
          v14 = v6;
          if (v28)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_26:
      sub_2BB88(v16);

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {
      }
    }

    else
    {
LABEL_23:
      sub_2BB88(v2);
    }
  }

  else
  {
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_23;
      }

      v12 = *(v3 + 8 * v13);
      ++v11;
      if (v12)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

unint64_t sub_D5EA8()
{
  result = qword_DEE360;
  if (!qword_DEE360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_DEE360);
  }

  return result;
}

unint64_t sub_D5EF4()
{
  result = qword_DEE368;
  if (!qword_DEE368)
  {
    sub_D5EA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_DEE368);
  }

  return result;
}

void sub_D5F78()
{
  v61.receiver = v0;
  v61.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v61, "viewDidLoad");
  v1 = objc_allocWithZone(UIColor);
  aBlock[4] = sub_D658C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_119878;
  aBlock[3] = &block_descriptor_26;
  v2 = _Block_copy(aBlock);
  v3 = [v1 initWithDynamicProvider:v2];
  _Block_release(v2);

  v4 = [v3 CGColor];

  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v62.origin.x = v8;
  v62.origin.y = v10;
  v62.size.width = v12;
  v62.size.height = v14;
  MinX = CGRectGetMinX(v62);
  v16 = [v0 view];
  if (!v16)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v17 = v16;
  [v16 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;

  v63.origin.x = v19;
  v63.origin.y = v21;
  v63.size.width = v23;
  v63.size.height = v25;
  v26 = [objc_allocWithZone(UIView) initWithFrame:{MinX, CGRectGetMinY(v63), 270.0, 100.0}];
  [v26 setAlpha:0.5];
  [v26 center];
  v28 = v27;
  [v26 center];
  v30 = v29 + -10.0;
  if (qword_DE67E8 != -1)
  {
    swift_once();
  }

  v31 = *&qword_E70DD8;
  v32 = objc_opt_self();
  v33 = [v32 bezierPathWithArcCenter:1 radius:v28 startAngle:v30 endAngle:17.0 clockwise:{v31, 4.71238898}];
  [v26 center];
  v35 = v34;
  [v26 center];
  v37 = [v32 bezierPathWithArcCenter:1 radius:v35 startAngle:v36 + -10.0 endAngle:7.5 clockwise:{v31, 4.71238898}];
  v38 = [objc_allocWithZone(CAShapeLayer) init];
  v59 = v33;
  v39 = [v33 CGPath];
  [v38 setPath:v39];

  v40 = objc_opt_self();
  v41 = [v40 clearColor];
  v42 = [v41 CGColor];

  [v38 setFillColor:v42];
  v43 = v4;
  [v38 setStrokeColor:v43];
  [v38 setLineWidth:4.0];
  [v38 setStrokeEnd:1.0];
  v44 = [v26 layer];
  [v44 addSublayer:v38];

  v45 = *&v0[OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_circleLayer];
  *&v0[OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_circleLayer] = v38;
  v58 = v38;

  v46 = [objc_allocWithZone(CAShapeLayer) init];
  v47 = [v37 CGPath];
  [v46 setPath:v47];

  v48 = [v40 clearColor];
  v49 = [v48 CGColor];

  [v46 setFillColor:v49];
  [v46 setStrokeColor:v43];

  v50 = [v0 traitCollection];
  [v50 displayScale];
  v52 = v51;

  [v46 setLineWidth:1.0 / v52 + 15.0];
  [v46 setStrokeEnd:0.0];
  v53 = [v26 layer];
  [v53 addSublayer:v46];

  v54 = *&v0[OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_progressLayer];
  *&v0[OBJC_IVAR____TtC16MusicApplication29CircularLoadingViewController_progressLayer] = v46;
  v55 = v46;

  v56 = [v0 view];
  if (v56)
  {
    v57 = v56;
    [v56 addSubview:v26];

    return;
  }

LABEL_9:
  __break(1u);
}

id sub_D658C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_whiteColor;
  if (v1 != &dword_0 + 2)
  {
    v3 = &selRef_blackColor;
  }

  v4 = [v2 *v3];

  return v4;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_D6830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_AB3820();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_D68BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_AB3820();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t _s30CollectionViewSelectionHandlerVMa(uint64_t a1)
{
  result = qword_DEE400;
  if (!qword_DEE400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D6984(uint64_t a1)
{
  result = sub_AB3820();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_D6A04(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v5 = &v34 - v4;
  v6 = sub_AB31C0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v34 - v10;
  v12 = JSStoreFlowSegue.url.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6, v12) == 1)
  {
    sub_12E1C(v5, &unk_DF2AE0, &qword_AFC930);
  }

  else
  {
    v38 = *(v7 + 32);
    v38(v11, v5, v6);
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = sub_F6EF4();

    if (v14)
    {
      (*(v7 + 8))(v11, v6);
    }

    else
    {
      sub_13C80(0, &qword_DEE560, ICStoreRequestContext_ptr);
      v15 = static ICStoreRequestContext.storeFlow.getter();
      v16 = [objc_allocWithZone(ICAMSBagAdapter) initWithRequestContext:v15];

      v17 = [objc_allocWithZone(AMSURLParser) initWithBag:v16];
      v35 = v2;
      v18 = v17;
      v19 = v11;
      sub_AB30F0(v20);
      v36 = v11;
      v22 = v21;
      v37 = [v18 typeForURL:v21];

      (*(v7 + 16))(v9, v19, v6);
      sub_2D384(a1, v40);
      v23 = (*(v7 + 80) + 24) & ~*(v7 + 80);
      v24 = (v8 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      v26 = v35;
      *(v25 + 16) = v35;
      v38((v25 + v23), v9, v6);
      *(v25 + v24) = v16;
      v27 = v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
      *(v27 + 48) = v41;
      v28 = v40[2];
      v29 = v40[0];
      *(v27 + 16) = v40[1];
      *(v27 + 32) = v28;
      *v27 = v29;
      aBlock[4] = sub_DB124;
      aBlock[5] = v25;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_DBA68;
      aBlock[3] = &block_descriptor_30_0;
      v30 = _Block_copy(aBlock);
      v31 = v26;
      v32 = v16;

      v33 = v37;
      [v37 addFinishBlock:v30];

      (*(v7 + 8))(v36, v6);
      _Block_release(v30);
    }
  }
}

double sub_D6E00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v26 = a5;
  v9 = sub_AB31C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  *&v13 = __chkstk_darwin().n128_u64[0];
  v14 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v12)
  {
    v15 = [v12 integerValue];
  }

  else
  {
    v15 = &dword_0 + 1;
  }

  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v9);
  sub_2D384(a6, v27);
  v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v17 = (v11 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = a3;
  (*(v10 + 32))(v18 + v16, v14, v9);
  v19 = v26;
  *(v18 + v17) = v26;
  v20 = v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v20 + 48) = v28;
  v21 = v27[2];
  v22 = v27[0];
  *(v20 + 16) = v27[1];
  *(v20 + 32) = v21;
  *v20 = v22;
  v23 = a3;
  v24 = v19;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_DB2F4, v18);

  return result;
}

void sub_D6FE8(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = *(sub_AB31C0() - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && a1 != 2)
  {
    if (a1 == 1)
    {
      v14 = v12;
      BagProvider.shared.unsafeMutableAddressor();
      (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v14);
      sub_2D384(a5, v23);
      v15 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      v17 = swift_allocObject();
      (*(v10 + 32))(v17 + v15, v13, v14);
      *(v17 + v16) = a2;
      v18 = v17 + ((v16 + 15) & 0xFFFFFFFFFFFFFFF8);
      *(v18 + 48) = v24;
      v19 = v23[2];
      v20 = v23[0];
      *(v18 + 16) = v23[1];
      *(v18 + 32) = v19;
      *v18 = v20;

      v21 = a2;
      BagProvider.getBag(completion:)(sub_DB460, v17);
    }

    else
    {
      sub_ABAFD0();
      __break(1u);
    }
  }

  else
  {

    sub_D97A4(a3, a4, a1, a5, a2);
  }
}

uint64_t sub_D724C()
{
  if (qword_DE67F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = off_DEE440;
  if (*(&dword_10 + off_DEE440) && (v2 = sub_2EC708(v0), (v3 & 1) != 0))
  {
    sub_DB588(*&stru_20.segname[v1 + 16] + 16 * v2, v6);
    v7 = 0;
  }

  else
  {
    v6[0] = 0;
    v6[1] = 0;
    v7 = 1;
  }

  swift_endAccess();
  if (v7)
  {
    sub_12E1C(v6, &qword_DEE460, qword_AFC890);
    return 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_DA7FC(v6);
    return Strong;
  }
}

uint64_t sub_D7348@<X0>(uint64_t a1@<X8>)
{
  if (qword_DE67F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = off_DEE440;
  if (*(&dword_10 + off_DEE440) && (v4 = sub_2EC708(v1), (v5 & 1) != 0))
  {
    sub_DB588(*&stru_20.segname[v3 + 16] + 16 * v4, a1);
    *(a1 + 16) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }

  return swift_endAccess();
}

uint64_t sub_D740C(int a1, id a2, void *a3)
{
  v4 = a2;
  v5 = [a2 viewControllers];
  v6 = sub_13C80(0, &qword_DE7500, UIViewController_ptr);
  v7 = sub_AB9760();
  v8 = v7;
  if (v7 >> 62)
  {
    if (sub_ABB060())
    {
      goto LABEL_3;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (!*(&dword_10 + (v7 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = sub_35F8D4(0, v8);
  }

  else
  {
    if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
LABEL_21:
      result = sub_ABB060();
      if (result)
      {
        goto LABEL_13;
      }

LABEL_22:

      goto LABEL_23;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();

  if (v11)
  {
    JSStoreFlowPresentationCoordinator.viewControllerDidDismiss(_:from:)(v11, a3);

    goto LABEL_23;
  }

LABEL_11:
  v4 = [v4 viewControllers];
  v12 = sub_AB9760();
  v6 = v12;
  if (v12 >> 62)
  {
    goto LABEL_21;
  }

  result = *(&dword_10 + (v12 & 0xFFFFFFFFFFFFFF8));
  if (!result)
  {
    goto LABEL_22;
  }

LABEL_13:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = sub_35F8D4(0, v6);
  }

  else
  {
    if (!*(&dword_10 + (v6 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      return result;
    }

    v14 = *(v6 + 32);
  }

  v15 = v14;

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();

  if (v16)
  {
    JSStoreFlowPresentationCoordinator.viewControllerDidDismiss(_:from:)(v16, a3);
  }

LABEL_23:
  if (qword_DE67F0 != -1)
  {
    swift_once();
  }

  v17[0] = 0;
  v17[1] = 0;
  v18 = 1;
  swift_beginAccess();
  sub_2E5440(v17, a3);
  return swift_endAccess();
}

uint64_t sub_D7688(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF1330, &qword_AF9120);
  __chkstk_darwin();
  v3 = &v23[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v5 = &v23[-v4];
  v6 = *(a1 + 16);
  if (v6)
  {
    type metadata accessor for JSComponentController(0);
    v7 = swift_dynamicCastClass();
    if (v7)
    {
      v8 = *(&stru_1A8.offset + (swift_isaMask & *v7));
      v9 = v6;
      v10 = v8();

      return v10;
    }
  }

  sub_4148FC(v23);
  if (v24 == 1)
  {
    sub_12E1C(v23, &unk_DEA520, &unk_AFDBF0);
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_1611C(v23);
  result = 0;
  if (Strong)
  {
    type metadata accessor for JSDrivenViewController(0);
    v13 = swift_dynamicCastClass();
    if (!v13)
    {
      v17 = [Strong parentViewController];

      if (v17)
      {
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
          v20 = v18;
          swift_beginAccess();
          sub_15F84(v20 + v19, v3, &unk_DF1330, &qword_AF9120);
          v21 = type metadata accessor for MetricsPageProperties(0);
          if ((*(*(v21 - 8) + 48))(v3, 1, v21) != 1)
          {
            v10 = *&v3[*(v21 + 28)];

            sub_DB5CC(v3, type metadata accessor for MetricsPageProperties);

            return v10;
          }

          sub_12E1C(v3, &unk_DF1330, &qword_AF9120);
        }
      }

      return 0;
    }

    v14 = OBJC_IVAR____TtC16MusicApplication22JSDrivenViewController_metricsPageProperties;
    v15 = v13;
    swift_beginAccess();
    sub_15F84(v15 + v14, v5, &unk_DF1330, &qword_AF9120);
    v16 = type metadata accessor for MetricsPageProperties(0);
    if ((*(*(v16 - 8) + 48))(v5, 1, v16) == 1)
    {
      sub_12E1C(v5, &unk_DF1330, &qword_AF9120);

      return 0;
    }

    v22 = *&v5[*(v16 + 28)];

    sub_DB5CC(v5, type metadata accessor for MetricsPageProperties);

    return v22;
  }

  return result;
}

double sub_D79FC(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v5 = *JSBridge.shared.unsafeMutableAddressor();
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = ObjectType;
  v7 = *&stru_B8.segname[(swift_isaMask & *v5) + 16];
  v8 = v5;
  v9 = a1;
  v10 = a2;
  v7(sub_DB5C0, v6);

  return result;
}

double sub_D7AE4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_AB31C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  (*(v9 + 16))(v11, a2, v8);
  sub_2D384(a4, v22);
  v12 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v13 = (v10 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  (*(v9 + 32))(v14 + v12, v11, v8);
  *(v14 + v13) = a3;
  v15 = v14 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8);
  *(v15 + 48) = v23;
  v16 = v22[2];
  v17 = v22[0];
  *(v15 + 16) = v22[1];
  *(v15 + 32) = v16;
  *v15 = v17;
  v18 = a1;
  v19 = a3;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_DB740, v14);

  return result;
}

double sub_D7CA4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v47 = a4;
  v48 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v45 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = v42 - v7;
  v9 = sub_AB31C0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v42 - v13;
  v15 = swift_allocBox();
  v16 = *(v10 + 56);
  v44 = v17;
  v16(v17, 1, 1, v9);
  v18 = sub_AB9260();
  v19 = [a1 dictionaryForBagKey:v18];

  if (!v19)
  {
    goto LABEL_12;
  }

  v46 = a2;
  v20 = sub_AB8FF0();

  sub_16A318(v20);
  v22 = v21;

  if (!v22)
  {
    LOBYTE(v19) = 0;
    a2 = v46;
    goto LABEL_12;
  }

  a2 = v46;
  if (!*(v22 + 16) || (v23 = sub_2EBF88(0x6C725565736162, 0xE700000000000000), (v24 & 1) == 0) || (v49 = *(*(v22 + 56) + 8 * v23), swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0))
  {
LABEL_10:

    LOBYTE(v19) = 0;
    goto LABEL_12;
  }

  v43 = v50[0];
  v25 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
  v27 = v26;
  v42[1] = v25;
  if (!sub_AB9530(v43))
  {

    goto LABEL_10;
  }

  v42[2] = v27;
  v28 = [objc_opt_self() standardUserDefaults];
  sub_F6FBC(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_12E1C(v8, &unk_DF2AE0, &qword_AFC930);
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);

    v38 = sub_AB9260();
    v43._countAndFlagsBits = sub_AB9420();
    _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
    v39 = sub_AB9260();

    v40 = [v38 stringByReplacingCharactersInRange:0 withString:{v43._countAndFlagsBits, v39}];

    sub_AB92A0();
    v41 = v45;
    sub_AB3180();
    (*(v10 + 8))(v14, v9);
    sub_DB970(v41, v44);

    a2 = v46;
  }

  LOBYTE(v19) = 1;
LABEL_12:
  v29 = *JSBridge.shared.unsafeMutableAddressor();
  sub_2D384(v47, v50);
  (*(v10 + 16))(v12, a2, v9);
  v30 = (*(v10 + 80) + 88) & ~*(v10 + 80);
  v31 = swift_allocObject();
  v32 = v48;
  *(v31 + 16) = v48;
  v33 = v50[1];
  *(v31 + 24) = v50[0];
  *(v31 + 40) = v33;
  *(v31 + 56) = v50[2];
  *(v31 + 72) = v51;
  *(v31 + 80) = v15;
  (*(v10 + 32))(v31 + v30, v12, v9);
  *(v31 + v30 + v11) = v19;
  v34 = *&stru_B8.segname[(swift_isaMask & *v29) + 16];
  v35 = v29;
  v36 = v32;

  v34(sub_DB8D4, v31);

  return result;
}

uint64_t sub_D823C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v19 = a6;
  v18 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = sub_AB31C0();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_projectBox();
  swift_beginAccess();
  sub_15F84(v14, v9, &unk_DF2AE0, &qword_AFC930);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) == 1)
  {
    (*(v11 + 16))(v13, v18, v10);
    if (v15(v9, 1, v10) != 1)
    {
      sub_12E1C(v9, &unk_DF2AE0, &qword_AFC930);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  sub_D8464(a3, v13, v19 & 1, *a1);
  return (*(v11 + 8))(v13, v10);
}

void sub_D8464(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF2AE0, &qword_AFC930);
  __chkstk_darwin();
  v9 = &v52[-v8 - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570, &qword_B0E730);
  __chkstk_darwin();
  v11 = &v52[-v10 - 8];
  sub_15F84(a1 + 24, v61, &unk_DE8E40, &unk_AF8050);
  if (!v62)
  {
    sub_12E1C(v61, &unk_DE8E40, &unk_AF8050);
    v21 = _s23MusicPerformanceContextVMa(0);
    (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
    goto LABEL_7;
  }

  v12 = _s23MusicPerformanceContextVMa(0);
  v13 = swift_dynamicCast();
  v14 = *(v12 - 8);
  (*(v14 + 56))(v11, v13 ^ 1u, 1, v12);
  if ((*(v14 + 48))(v11, 1, v12) == 1)
  {
LABEL_7:
    sub_12E1C(v11, &unk_DEE570, &qword_B0E730);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 1;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    goto LABEL_8;
  }

  sub_15F84(v11, &v53, &unk_DEA520, &unk_AFDBF0);
  sub_DB5CC(v11, _s23MusicPerformanceContextVMa);
  if (v57 == 1)
  {
LABEL_8:
    sub_12E1C(&v53, &unk_DEA520, &unk_AFDBF0);
    return;
  }

  sub_17704(&v53, v61);
  v15 = [objc_allocWithZone(SKCloudServiceSetupReloadContext) init];
  sub_AB30F0(v16);
  v18 = v17;
  [v15 setCloudServiceSetupURL:v17];

  JSStoreFlowSegue.sourceApplicationBundleIdentifier.getter();
  if (v19)
  {
    v20 = sub_AB9260();
  }

  else
  {
    v20 = 0;
  }

  [v15 setSourceApplicationBundleIdentifier:v20];

  JSStoreFlowSegue.referrerURL.getter(v9);
  v22 = sub_AB31C0();
  v23 = *(v22 - 8);
  v25 = 0;
  if ((*(v23 + 48))(v9, 1, v22) != 1)
  {
    sub_AB30F0(v24);
    v25 = v26;
    (*(v23 + 8))(v9, v22);
  }

  [v15 setReferrerURL:v25];

  if (JSStoreFlowSegue.userInfo.getter())
  {
    v27.super.isa = sub_AB8FD0().super.isa;
  }

  else
  {
    v27.super.isa = 0;
  }

  [v15 setUserInfo:v27.super.isa];

  if ((a3 & 1) == 0)
  {
    goto LABEL_21;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_21;
  }

  v29 = Strong;
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30 || (v31 = v30, v32 = [v30 configuration], v33 = objc_msgSend(v32, "targetsFinanceApplication"), v32, !v33))
  {

LABEL_21:
    v40 = [objc_allocWithZone(SKCloudServiceSetupConfiguration) init];
    v41 = sub_AB9260();
    [v40 setApplicationIdentifier:v41];

    v42 = sub_AB9260();
    [v40 setApplicationVersion:v42];

    [v40 setTargetsFinanceApplication:a3 & 1];
    v43 = [objc_allocWithZone(SKCloudServiceSetupViewController) initWithConfiguration:v40];
    [v43 reloadWithContext:v15];
    [v43 setModalPresentationStyle:2];
    [v43 setDelegate:v5];
    PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v43, 0, 1, 0, 0);
    sub_D7348(&v53);
    LODWORD(v42) = v54;
    sub_12E1C(&v53, &qword_DEE460, qword_AFC890);
    if (v42 == 1)
    {
      if (qword_DE67F0 != -1)
      {
        swift_once();
      }

      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakInit();
      swift_unknownObjectWeakAssign();
      swift_unknownObjectWeakAssign();
      v52[16] = 0;
      swift_beginAccess();
      sub_2E5440(v52, v5);
      swift_endAccess();
    }

    v44 = *JSBridge.shared.unsafeMutableAddressor();
    v45 = swift_allocObject();
    *(v45 + 16) = v43;
    *(v45 + 24) = v5;
    v46 = *&stru_B8.segname[(swift_isaMask & *v44) + 16];
    v47 = v5;
    v37 = v44;
    v38 = v43;
    v46(sub_DB9E0, v45);

    goto LABEL_26;
  }

  [v31 reloadWithContext:v15];
  v34 = *JSBridge.shared.unsafeMutableAddressor();
  v35 = swift_allocObject();
  *(v35 + 16) = v31;
  *(v35 + 24) = v5;
  v36 = *&stru_B8.segname[(swift_isaMask & *v34) + 16];
  v37 = v34;
  v38 = v29;
  v39 = v5;
  v36(sub_DBA0C, v35);
LABEL_26:

  sub_414AFC(&v53);
  if (*(&v54 + 1))
  {
    __swift_project_boxed_opaque_existential_1(&v53, *(&v54 + 1));
    v48 = swift_unknownObjectWeakLoadStrong();
    if (v48)
    {
      v49 = v48;
      _s30CollectionViewSelectionHandlerVMa(0);
      isa = sub_AB3770().super.isa;
      [v49 deselectItemAtIndexPath:isa animated:1];
      sub_1611C(v61);
    }

    else
    {
      sub_1611C(v61);
    }

    __swift_destroy_boxed_opaque_existential_0(&v53);
  }

  else
  {
    sub_1611C(v61);
    sub_12E1C(&v53, &unk_DE8E30, "\b]\r");
  }
}

int *sub_D8CB8()
{
  result = sub_97D48(_swiftEmptyArrayStorage);
  off_DEE440 = result;
  return result;
}

Swift::Void __swiftcall JSStoreFlowSegue.cloudServiceSetupViewControllerDidDismiss(_:)(SKCloudServiceSetupViewController a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_D724C();
  if (v4)
  {
    v5 = v4;
    if ([v4 respondsToSelector:"cloudServiceSetupViewControllerDidDismiss:"])
    {
      [v5 cloudServiceSetupViewControllerDidDismiss:a1.super.super.super.isa];
    }

    swift_unknownObjectRelease();
  }

  v6 = *JSBridge.shared.unsafeMutableAddressor();
  v7 = swift_allocObject();
  v7[2].super.super.super.isa = a1.super.super.super.isa;
  v7[3].super.super.super.isa = v1;
  v7[4].super.super.super.isa = ObjectType;
  v8 = *&stru_B8.segname[(swift_isaMask & *v6) + 16];
  v9 = v6;
  v10 = a1.super.super.super.isa;
  v11 = v1;
  v8(sub_D8EE8, v7);
}

uint64_t sub_D8E00(uint64_t a1, uint64_t a2, void *a3)
{
  JSStoreFlowPresentationCoordinator.viewControllerDidDismiss(_:from:)(a2, a3);
  if (qword_DE67F0 != -1)
  {
    swift_once();
  }

  v5[0] = 0;
  v5[1] = 0;
  v6 = 1;
  swift_beginAccess();
  sub_2E5440(v5, a3);
  return swift_endAccess();
}

uint64_t sub_D8EA8()
{

  return swift_deallocObject();
}

void JSStoreFlowSegue.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, id), uint64_t a4)
{
  sub_D7348(v13);
  if (v14)
  {
    sub_12E1C(v13, &qword_DEE460, qword_AFC890);
LABEL_5:
    v11 = sub_AB9260();
    v12 = sub_AB9260();
    v9 = AMSError();

    a3(0, v9);
    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_DA7FC(v13);
  if (!Strong)
  {
    goto LABEL_5;
  }

  v8 = [objc_allocWithZone(AMSUIAlertDialogTask) initWithRequest:a2 presentingViewController:Strong];
  v9 = [v8 present];
  v16 = a3;
  v17 = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v14 = sub_DBA68;
  v15 = &block_descriptor_27;
  v10 = _Block_copy(v13);

  [v9 addFinishBlock:v10];
  _Block_release(v10);

LABEL_6:
}

void JSStoreFlowSegue.dynamicViewController(_:contentViewWith:frame:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v10 = objc_allocWithZone(type metadata accessor for UpsellArtworkGrid());

  sub_3624F4(v11, a1, a2, a3, a4);
}

uint64_t sub_D950C()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_DEE448);
  __swift_project_value_buffer(v0, qword_DEE448);
  return static Logger.music(_:)(0x6F6C4665726F7453, 0xEE00657567655377);
}

id sub_D970C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CommerceNavigationController();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_D9758@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_808B0((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

uint64_t sub_D97A4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE570, &qword_B0E730);
  __chkstk_darwin();
  v11 = &v38[-v10 - 8];
  sub_15F84(a4 + 24, v48, &unk_DE8E40, &unk_AF8050);
  if (!v49)
  {
    sub_12E1C(v48, &unk_DE8E40, &unk_AF8050);
    v17 = _s23MusicPerformanceContextVMa(0);
    (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
    goto LABEL_9;
  }

  v12 = _s23MusicPerformanceContextVMa(0);
  v13 = swift_dynamicCast();
  v14 = *(v12 - 8);
  (*(v14 + 56))(v11, v13 ^ 1u, 1, v12);
  if ((*(v14 + 48))(v11, 1, v12) == 1)
  {
LABEL_9:
    sub_12E1C(v11, &unk_DEE570, &qword_B0E730);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 1;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    goto LABEL_10;
  }

  sub_15F84(v11, &v40, &unk_DEA520, &unk_AFDBF0);
  sub_DB5CC(v11, _s23MusicPerformanceContextVMa);
  if (v44 == 1)
  {
LABEL_10:
    v18 = &unk_DEA520;
    v19 = &unk_AFDBF0;
    return sub_12E1C(&v40, v18, v19);
  }

  sub_17704(&v40, v48);
  v15 = sub_D9D54(a3, a1, a2, a4, a5);
  if (!v15)
  {
    return sub_1611C(v48);
  }

  v16 = v15;
  sub_D7348(&v40);
  if (v41)
  {
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    if (v41 != 1)
    {
      sub_12E1C(&v40, &qword_DEE460, qword_AFC890);
    }
  }

  else
  {
    sub_9AFE0(&v40, v39);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  v22 = *JSBridge.shared.unsafeMutableAddressor();
  v23 = swift_allocObject();
  *(v23 + 16) = v16;
  *(v23 + 24) = a5;
  v24 = *&stru_B8.segname[(swift_isaMask & *v22) + 16];
  v25 = v22;
  v26 = v16;
  v27 = a5;
  v24(sub_DBA4C, v23);

  v28 = [objc_allocWithZone(type metadata accessor for CommerceNavigationController()) init];
  [v28 setModalPresentationStyle:2];
  [v28 pushViewController:v26 animated:0];
  v29 = swift_allocObject();
  *(v29 + 16) = v27;
  v30 = &v28[OBJC_IVAR____TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController_dismissCallback];
  v31 = *&v28[OBJC_IVAR____TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController_dismissCallback];
  v32 = *&v28[OBJC_IVAR____TtC16MusicApplicationP33_ACDED154BD7D27D1EDCE9CE66AA9990C28CommerceNavigationController_dismissCallback + 8];
  *v30 = sub_DB580;
  v30[1] = v29;
  v33 = v27;
  sub_17654(v31, v32);
  if (qword_DE67F0 != -1)
  {
    swift_once();
  }

  sub_DB588(v39, v38);
  v38[16] = 0;
  swift_beginAccess();
  sub_2E5440(v38, v33);
  swift_endAccess();
  PresentationSource.present(_:wantsAutomaticModalPresentationStyle:animated:completion:)(v28, 0, 1, 0, 0);
  sub_414AFC(&v40);
  if (!*(&v41 + 1))
  {

    sub_DA7FC(v39);
    sub_1611C(v48);
    v18 = &unk_DE8E30;
    v19 = "\b]\r";
    return sub_12E1C(&v40, v18, v19);
  }

  __swift_project_boxed_opaque_existential_1(&v40, *(&v41 + 1));
  v34 = swift_unknownObjectWeakLoadStrong();
  if (v34)
  {
    v35 = v34;
    _s30CollectionViewSelectionHandlerVMa(0);
    isa = sub_AB3770().super.isa;
    [v35 deselectItemAtIndexPath:isa animated:1];

    sub_DA7FC(v39);
    sub_1611C(v48);
  }

  else
  {

    sub_DA7FC(v39);
    sub_1611C(v48);
  }

  return __swift_destroy_boxed_opaque_existential_0(&v40);
}

id sub_D9D54(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  sub_13C80(0, &qword_DF0600, ICUserIdentityStore_ptr);
  v8 = static ICUserIdentityStore.activeAccountDSID.getter();
  v9 = v8;
  if (v8)
  {
    v10 = [v8 longLongValue];
  }

  else
  {
    v10 = 0;
  }

  sub_2D384(a4, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE580, &qword_AFBB60);
  inited = swift_initStackObject();
  v12 = inited;
  *(inited + 32) = 7368801;
  *(inited + 16) = xmmword_AF8600;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = 0x6C7070612E6D6F63;
  *(inited + 56) = 0xEF636973754D2E65;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6369706F74;
  *(inited + 88) = 0xE500000000000000;
  *(inited + 96) = 0xD000000000000011;
  *(inited + 104) = 0x8000000000B4FE20;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 1682535268;
  *(inited + 136) = 0xE400000000000000;
  if (v9)
  {
    v41 = &type metadata for Int64;
    *&v40 = v10;
    sub_9ACFC(&v40, (inited + 144));
  }

  else
  {
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = 0;
    *(inited + 152) = 0xE000000000000000;
  }

  *(v12 + 176) = 0x746E6F4365676170;
  *(v12 + 184) = 0xEB00000000747865;
  *(v12 + 192) = 0;
  *(v12 + 200) = 0xE000000000000000;
  *(v12 + 216) = &type metadata for String;
  *(v12 + 224) = 0x6174654465676170;
  *(v12 + 232) = 0xEB00000000736C69;
  v13 = sub_D7688(v42);
  sub_16170(v42);
  v14 = a3;
  if (v13)
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DEE590, &unk_B02860);
    *&v40 = v13;
    sub_9ACFC(&v40, (v12 + 240));
  }

  else
  {
    *(v12 + 264) = &type metadata for String;
    *(v12 + 240) = 0;
    *(v12 + 248) = 0xE000000000000000;
  }

  v15 = sub_97420(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF06F0, &qword_AFA4B0);
  swift_arrayDestroy();
  v16 = JSStoreFlowSegue.scriptingMetricsOverlay.getter();
  if (v16)
  {
    v17 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40 = v15;
    sub_DA3C8(v17, sub_D9758, 0, isUniquelyReferenced_nonNull_native, &v40);

    v15 = v40;
  }

  if (a1 == 2)
  {
    v19 = objc_allocWithZone(AMSUIDynamicViewController);
    sub_AB30F0(v20);
    v22 = v21;
    v23 = [v19 initWithBag:a3 URL:v21];

    [v23 setDelegate:a5];
    v24 = [objc_opt_self() ams_sharedAccountStore];
    v25 = [v24 ams_activeiTunesAccount];

    [v23 setAccount:v25];
    sub_3E8814(v15);
    isa = sub_AB8FD0().super.isa;

    [v23 setMetricsOverlay:isa];

    if (JSStoreFlowSegue.userInfo.getter())
    {
      v27.super.isa = sub_AB8FD0().super.isa;
    }

    else
    {
      v27.super.isa = 0;
    }

    [v23 setClientOptions:v27.super.isa];

    v35 = sub_AB9260();
    [v23 setMediaClientIdentifier:v35];

    v36 = [objc_opt_self() bagKeySet];
    if (v36)
    {
      v37 = v36;

      v34 = [v14 profile];
      if (!v34)
      {
        sub_AB92A0();
        v34 = sub_AB9260();
      }

      v33 = [v14 profileVersion];
      if (!v33)
      {
        sub_AB92A0();
        v33 = sub_AB9260();
      }

      [objc_opt_self() registerBagKeySet:v37 forProfile:v34 profileVersion:v33];

      goto LABEL_24;
    }

    __break(1u);
  }

  else if (!a1)
  {
    v28 = [objc_opt_self() ams_sharedAccountStore];
    v29 = [v28 ams_activeiTunesAccount];

    v23 = [objc_allocWithZone(AMSUIWebViewController) initWithBag:a3 account:v29 clientInfo:0];
    [v23 setDelegate:a5];
    v30 = sub_AB8FD0().super.isa;

    [v23 setMetricsOverlay:v30];

    sub_AB30F0(v31);
    v33 = v32;
    v34 = [v23 loadURL:v32];
LABEL_24:

    return v23;
  }

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

void sub_DA3C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v46 = a1;
  v47 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v48 = v8;
  v49 = 0;
  v50 = v11 & v9;
  v51 = a2;
  v52 = a3;

  sub_1B6194(&v44);
  v12 = *(&v44 + 1);
  if (!*(&v44 + 1))
  {
    goto LABEL_25;
  }

  v13 = v44;
  sub_9ACFC(v45, v43);
  v14 = *a5;
  v15 = sub_2EBF88(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_329034(v20, a4 & 1);
    v15 = sub_2EBF88(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    v15 = sub_ABB4C0();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = v15;
    sub_331FD8();
    v15 = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = v15;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_0(v25);
    sub_9ACFC(v43, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(v15 >> 6) + 8] |= 1 << v15;
  v27 = (v23[6] + 16 * v15);
  *v27 = v13;
  v27[1] = v12;
  sub_9ACFC(v43, (v23[7] + 32 * v15));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1B6194(&v44);
    v12 = *(&v44 + 1);
    if (*(&v44 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v44;
        sub_9ACFC(v45, v43);
        v32 = *a5;
        v33 = sub_2EBF88(v13, v12);
        v35 = v32[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v32[3] < v37)
        {
          sub_329034(v37, 1);
          v33 = sub_2EBF88(v13, v12);
          if ((a4 & 1) != (v38 & 1))
          {
            goto LABEL_8;
          }
        }

        v39 = *a5;
        if (a4)
        {
          v30 = v33;

          v31 = (v39[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_0(v31);
          sub_9ACFC(v43, v31);
        }

        else
        {
          v39[(v33 >> 6) + 8] |= 1 << v33;
          v40 = (v39[6] + 16 * v33);
          *v40 = v13;
          v40[1] = v12;
          sub_9ACFC(v43, (v39[7] + 32 * v33));
          v41 = v39[2];
          v19 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v39[2] = v42;
        }

        sub_1B6194(&v44);
        v12 = *(&v44 + 1);
      }

      while (*(&v44 + 1));
    }

LABEL_25:
    sub_2BB88(v46);

    return;
  }

LABEL_27:
  __break(1u);
}

void _s11MusicJSCore16JSStoreFlowSegueC0A11ApplicationE17webViewController_6handle10completionySo08AMSUIWebhI0C_So22AMSAuthenticateRequestCySo0M6ResultCSg_s5Error_pSgtctF_0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = PresentationSource.PresentingViewControllerOptions.allowsPresentation.unsafeMutableAddressor();
  v9 = static PresentationSource.topmostPresentedViewController(from:options:)(a1, *v8);
  v10 = [objc_allocWithZone(AMSUIAuthenticateTask) initWithRequest:a2 presentingViewController:v9];
  v11 = [v10 performAuthentication];
  v13[4] = a3;
  v13[5] = a4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_151E0;
  v13[3] = &block_descriptor_60;
  v12 = _Block_copy(v13);

  [v11 addFinishBlock:v12];
  _Block_release(v12);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_DA844(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  sub_D7348(v12);
  if (v13)
  {
    sub_12E1C(v12, &qword_DEE460, qword_AFC890);
LABEL_5:
    v10 = sub_AB9260();
    v11 = sub_AB9260();
    v7 = AMSError();

    v8 = sub_AB3040();
    (a3)[2](a3, 0, v8);

    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  sub_DA7FC(v12);
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = [objc_allocWithZone(AMSUIAlertDialogTask) initWithRequest:a1 presentingViewController:Strong];
  v8 = [v7 present];
  v15 = sub_DB118;
  v16 = v5;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v13 = sub_DBA68;
  v14 = &block_descriptor_21;
  v9 = _Block_copy(v12);

  [v8 addFinishBlock:v9];
  _Block_release(v9);

LABEL_6:
}

void sub_DAA6C(void *a1, uint64_t a2)
{
  if (a1)
  {
    JSStoreFlowSegue.didCompleteSubscriptionPurchase.setter(1);
    v3 = [a1 responseDictionary];
    if (v3)
    {
      v4 = v3;
      v5 = sub_AB8FF0();

      sub_ABAD10();
      if (*(v5 + 16) && (v6 = sub_2EC004(v22), (v7 & 1) != 0))
      {
        sub_808B0(*(v5 + 56) + 32 * v6, v23);
        sub_8085C(v22);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE680, &qword_AF7B70);
        if (swift_dynamicCast())
        {
          JSStoreFlowSegue.subscriptionStatus.setter(0xD000000000000012);
        }
      }

      else
      {
        sub_8085C(v22);
      }
    }

    v16 = [objc_opt_self() sharedController];
    [v16 refreshMusicSubscriptionStatus];

    if (qword_DE67F8 != -1)
    {
      swift_once();
    }

    v17 = sub_AB4BC0();
    __swift_project_value_buffer(v17, qword_DEE448);
    v18 = sub_AB4BA0();
    v19 = sub_AB9F50();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_0, v18, v19, "Did complete subscription purchase.", v20, 2u);
    }
  }

  else
  {
    JSStoreFlowSegue.didCompleteSubscriptionPurchase.setter(0);
    if (a2)
    {
      swift_errorRetain();
      if (qword_DE67F8 != -1)
      {
        swift_once();
      }

      v9 = sub_AB4BC0();
      __swift_project_value_buffer(v9, qword_DEE448);
      swift_errorRetain();
      oslog = sub_AB4BA0();
      v10 = sub_AB9F30();

      if (os_log_type_enabled(oslog, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v22[0] = v12;
        *v11 = 136315138;
        swift_getErrorValue();
        v13 = sub_ABB520();
        v15 = sub_425E68(v13, v14, v22);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_0, oslog, v10, "Subscription purchase failed with error: %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
      }

      else
      {
      }
    }
  }
}