void sub_3BDC(uint64_t a1)
{
  InstanceMethod = class_getInstanceMethod(*(a1 + 32), "presentViewController:animated:completion:");
  v3 = class_getInstanceMethod(*(a1 + 32), "as_presentViewController:animated:completion:");
  v4 = *(a1 + 32);
  MethodImplementation = class_getMethodImplementation(v4, "presentViewController:animated:completion:");
  TypeEncoding = method_getTypeEncoding(InstanceMethod);
  class_addMethod(v4, "presentViewController:animated:completion:", MethodImplementation, TypeEncoding);
  v7 = *(a1 + 32);
  v8 = class_getMethodImplementation(v7, "as_presentViewController:animated:completion:");
  v9 = method_getTypeEncoding(v3);
  class_addMethod(v7, "as_presentViewController:animated:completion:", v8, v9);
  v10 = class_getInstanceMethod(*(a1 + 32), "presentViewController:animated:completion:");
  v11 = class_getInstanceMethod(*(a1 + 32), "as_presentViewController:animated:completion:");

  method_exchangeImplementations(v10, v11);
}

uint64_t sub_3E3C(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    [*(a1 + 32) as_viewDidBecomePartiallyVisible];
  }

  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_45E0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_4600(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained dismissViewControllerAnimated:1 completion:0];
  v7 = [WeakRetained configuration];
  v8 = [v7 completion];

  if (v8)
  {
    v9 = [WeakRetained configuration];
    v10 = [v9 completion];
    v11 = [v12 reasonID];
    (v10)[2](v10, WeakRetained, v11, v5);
  }
}

void sub_5318(uint64_t a1)
{
  v2 = [*(a1 + 32) tableView];
  [v2 beginUpdates];

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  [*(a1 + 32) keyboardOverlapHeight];
  v6 = v5;
  v7 = *(a1 + 64);
  v8 = [*(a1 + 32) tableView];
  [v8 setContentInset:{v3, v4, v6, v7}];

  if (JUScreenClassGetMain() == 1)
  {
    v9 = [*(a1 + 32) tableView];
    v10 = [NSIndexPath indexPathForRow:0 inSection:0];
    v11 = [v9 cellForRowAtIndexPath:v10];

    v12 = [*(a1 + 32) tableView];
    [v11 frame];
    MinY = CGRectGetMinY(v22);
    v14 = [*(a1 + 32) tableView];
    [v14 contentInset];
    v16 = MinY - v15;
    v17 = [*(a1 + 32) view];
    [v17 safeAreaInsets];
    [v12 setContentOffset:{0.0, v16 - v18}];
  }

  v19 = [*(a1 + 32) tableView];
  [v19 endUpdates];

  v20 = [*(a1 + 32) view];
  [v20 layoutIfNeeded];
}

void sub_5604(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  [*(a1 + 32) keyboardOverlapHeight];
  v5 = v4;
  v6 = *(a1 + 64);
  v7 = [*(a1 + 32) tableView];
  [v7 setContentInset:{v2, v3, v5, v6}];

  v8 = [*(a1 + 32) view];
  [v8 layoutIfNeeded];

  v9 = [*(a1 + 32) tableView];
  [v9 beginUpdates];

  v10 = [*(a1 + 32) tableView];
  [v10 endUpdates];
}

uint64_t sub_6B98(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

void sub_74A0(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) toastView];
  v4 = v5;
  [v2 setTransform:&v4];

  v3 = [*(a1 + 32) toastView];
  [v3 setAlpha:1.0];
}

id sub_7520(uint64_t a1)
{
  v1 = *(a1 + 32);
  [v1 duration];

  return [v1 _dismissAfterDelay:?];
}

void sub_79DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_7A24(void *a1, void *a2, double a3)
{
  v21 = a2;
  [v21 frame];
  v5 = *(a1[4] + 8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 56);
  [v21 sizeThatFits:{v6, v7}];
  v9 = v8;
  MinX = CGRectGetMinX(*(*(a1[4] + 8) + 32));
  v11 = *(*(a1[5] + 8) + 24);
  if (v11 <= 0.0)
  {
    v14 = CGRectGetMinY(*(*(a1[4] + 8) + 32)) + a3;
  }

  else
  {
    v12 = v11 + a3;
    [v21 _firstBaselineOffsetFromTop];
    *&v13 = v12 - v13;
    v14 = ceilf(*&v13);
  }

  if (v9 >= v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = v9;
  }

  v16 = v15;
  v17 = ceilf(v16);
  [v21 setFrame:{MinX, v14, v6, v17}];
  v23.origin.x = MinX;
  v23.origin.y = v14;
  v23.size.width = v6;
  v23.size.height = v17;
  *(*(a1[4] + 8) + 56) = *(*(a1[4] + 8) + 56) - CGRectGetHeight(v23);
  Height = CGRectGetHeight(*(*(a1[4] + 8) + 32));
  if (Height < 0.0)
  {
    Height = 0.0;
  }

  *(*(a1[4] + 8) + 56) = Height;
  v24.origin.x = MinX;
  v24.origin.y = v14;
  v24.size.width = v6;
  v24.size.height = v17;
  MaxY = CGRectGetMaxY(v24);
  [v21 _baselineOffsetFromBottom];
  *(*(a1[5] + 8) + 24) = MaxY - v20;
  v25.origin.x = MinX;
  v25.origin.y = v14;
  v25.size.width = v6;
  v25.size.height = v17;
  *(*(a1[6] + 8) + 24) = CGRectGetMaxY(v25);
}

id sub_7CF8(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_7DC8;
  v3[3] = &unk_87D678;
  v4 = *(a1 + 32);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_7EA8;
  v2[3] = &unk_87D6A0;
  v2[4] = v4;
  return [UIView animateWithDuration:2 delay:v3 options:v2 animations:0.2 completion:0.0];
}

void sub_7DC8(uint64_t a1)
{
  v2 = [*(a1 + 32) toastView];
  v3 = [v2 contentView];
  v4 = [v3 superview];
  [v4 setAlpha:0.0];

  v5 = +[UIColor clearColor];
  v6 = [*(a1 + 32) toastView];
  [v6 setBackgroundColor:v5];

  CGAffineTransformMakeScale(&v9, 0.88, 0.88);
  v7 = [*(a1 + 32) view];
  v8 = v9;
  [v7 setTransform:&v8];
}

id sub_7EA8(uint64_t a1)
{
  CGAffineTransformMakeScale(&v5, 1.0, 1.0);
  v2 = [*(a1 + 32) view];
  v4 = v5;
  [v2 setTransform:&v4];

  return [*(a1 + 32) dismissViewControllerAnimated:0 completion:0];
}

id sub_82B4()
{
  result = [objc_allocWithZone(UICubicTimingParameters) initWithControlPoint1:0.5 controlPoint2:{0.0, 1.0, 1.0}];
  qword_93C158 = result;
  return result;
}

id sub_82F8()
{
  result = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:350.0 damping:38.0 initialVelocity:{0.0, 0.0}];
  qword_93C168 = result;
  return result;
}

void sub_83E4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  v9.receiver = v2;
  v9.super_class = ObjectType;
  [v4 setHidden:{objc_msgSendSuper2(&v9, "isSelected") ^ 1}];
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel];
  v8.receiver = v2;
  v8.super_class = ObjectType;
  if (objc_msgSendSuper2(&v8, "isSelected"))
  {
    v6 = [objc_opt_self() systemWhiteColor];
  }

  else
  {
    sub_BE70(0, &qword_93E540, UIColor_ptr);
    v6 = sub_769FD0();
  }

  v7 = v6;
  [v5 setTextColor:v6];
}

id sub_84DC(void *a1, uint64_t a2, SEL *a3)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v5, *a3);
}

id sub_8570(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v12.receiver = v2;
  v12.super_class = ObjectType;
  objc_msgSendSuper2(&v12, "setEnabled:", a1 & 1);
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel];
  v11.receiver = v2;
  v11.super_class = ObjectType;
  if (objc_msgSendSuper2(&v11, "isEnabled"))
  {
    v6 = 1.0;
  }

  else
  {
    v6 = 0.4;
  }

  [v5 setAlpha:v6];
  v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView];
  v10.receiver = v2;
  v10.super_class = ObjectType;
  if (objc_msgSendSuper2(&v10, "isEnabled"))
  {
    v8 = 1.0;
  }

  else
  {
    v8 = 0.4;
  }

  return [v7 setAlpha:v8];
}

uint64_t sub_8648@<X0>(uint64_t a1@<X8>)
{
  v37 = a1;
  v2 = sub_7672E0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v34 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v31 = &v30 - v6;
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  __chkstk_darwin(v10);
  v12 = &v30 - v11;
  v36 = sub_766BD0();
  v35 = *(v36 - 8);
  __chkstk_darwin(v36);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v32 = &v30 - v16;
  sub_766BA0();
  v30 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView);
  v17 = v30;
  v48 = sub_759210();
  v49 = sub_A208(&unk_93E520, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v47[0] = v17;
  *(v12 + 3) = &type metadata for CGFloat;
  *(v12 + 4) = &protocol witness table for CGFloat;
  *v12 = 0x4046000000000000;
  v18 = enum case for Resize.Rule.replaced(_:);
  v19 = *(v3 + 104);
  v19(v12, enum case for Resize.Rule.replaced(_:), v2);
  *(v9 + 3) = &type metadata for CGFloat;
  *(v9 + 4) = &protocol witness table for CGFloat;
  *v9 = 0x4046000000000000;
  v19(v9, v18, v2);
  v20 = enum case for Resize.Rule.unchanged(_:);
  v19(v31, enum case for Resize.Rule.unchanged(_:), v2);
  v19(v34, v20, v2);
  v51 = sub_7672F0();
  v52 = &protocol witness table for Resize;
  sub_B1B4(v50);
  v21 = v30;
  sub_767300();
  v22 = v32;
  sub_766BB0();
  v23 = *(v35 + 8);
  v24 = v36;
  v23(v14, v36);
  sub_BEB8(v50);
  v25 = *(v33 + OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel);
  v48 = sub_75BB20();
  v49 = &protocol witness table for UILabel;
  v47[0] = v25;
  v51 = v24;
  v52 = &protocol witness table for HorizontalStack;
  sub_B1B4(v50);
  v26 = v25;
  sub_766BB0();
  v23(v22, v24);
  sub_BEB8(v47);
  v49 = &protocol witness table for CGFloat;
  v48 = &type metadata for CGFloat;
  v46 = &protocol witness table for CGFloat;
  v47[0] = 0x4024000000000000;
  v45 = &type metadata for CGFloat;
  v43 = &protocol witness table for CGFloat;
  v44 = 0x4024000000000000;
  v42 = &type metadata for CGFloat;
  v40 = &protocol witness table for CGFloat;
  v41 = 0x4024000000000000;
  v39 = &type metadata for CGFloat;
  v38 = 0x4024000000000000;
  v27 = sub_767340();
  v28 = v37;
  *(v37 + 24) = v27;
  v28[4] = &protocol witness table for Margins;
  sub_B1B4(v28);
  return sub_767350();
}

id sub_8C00(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v10.receiver = v2;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  sub_8648(v9);
  sub_B170(v9, v9[3]);
  sub_75D650();
  v4 = [v2 traitCollection];
  sub_7673E0();

  sub_BEB8(v9);
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_shadowView];
  [v3 bounds];
  [v5 setFrame:?];
  v6 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_backgroundView];
  [v3 bounds];
  [v6 setFrame:?];
  v7 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView];
  [v6 bounds];
  return [v7 setFrame:?];
}

void sub_8F00(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  if (qword_93C150 != -1)
  {
    swift_once();
  }

  v4 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_93C158 timingParameters:0.08];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = ObjectType;
  v8[4] = sub_C3E4;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_23F0CC;
  v8[3] = &unk_87FB30;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v4 addAnimations:v6];
  _Block_release(v6);
  [v4 startAnimation];
}

id MetadataRibbonView.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_92D4(uint64_t a1, double a2, double a3)
{
  sub_8648(v6);
  sub_B170(v6, v6[3]);
  sub_7673F0();
  v4 = v3;
  sub_BEB8(v6);
  return v4;
}

id variable initialization expression of CondensedEditorialSearchResultContentView.viewButton()
{
  v0 = [objc_opt_self() buttonWithType:0];

  return v0;
}

uint64_t variable initialization expression of CondensedEditorialSearchResultContentView.configuration@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v3 = sub_7631F0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

double variable initialization expression of CondensedEditorialSearchResultContentView.artworkSize()
{
  v0 = sub_7632B0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_7631F0();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v4, v6);
  sub_7631D0();
  (*(v5 + 8))(v8, v4);
  sub_763210();
  v10 = v9;
  (*(v1 + 8))(v3, v0);
  return v10;
}

double variable initialization expression of LinkableHeaderViewLayout.Metrics.bottomSpace@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

char *variable initialization expression of CondensedInAppPurchaseContentView.inAppPurchaseView()
{
  v0 = sub_757CA0();
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_757C20();
  v3 = objc_allocWithZone(type metadata accessor for InAppPurchaseView(0));
  return sub_243D30(v2, 1);
}

uint64_t sub_979C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

__n128 initializeBufferWithCopyOfBuffer for SearchLockupListCollectionViewCell.ListConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_9934(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_9968(uint64_t a1, int a2)
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

uint64_t sub_9988(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for FixedSizedPlaceholder(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for FixedSizedPlaceholder(uint64_t result, int a2, int a3)
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

uint64_t sub_9B04@<X0>(uint64_t *a1@<X8>)
{
  result = sub_769240();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_9B3C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_9B68(void *a1, uint64_t *a2)
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

_DWORD *sub_9BEC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_9C30@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_9C5C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

BOOL sub_9D28(_DWORD *a1, int *a2)
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

uint64_t sub_9DCC(uint64_t a1, id *a2)
{
  result = sub_769220();
  *a2 = 0;
  return result;
}

uint64_t sub_9E44(uint64_t a1, id *a2)
{
  v3 = sub_769230();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_9EC4@<X0>(uint64_t *a2@<X8>)
{
  sub_769240();
  v3 = sub_769210();

  *a2 = v3;
  return result;
}

uint64_t sub_9F10(uint64_t a1, uint64_t a2)
{
  result = sub_769680();
  *a2 = 0;
  *(a2 + 8) = 1;
  return result;
}

uint64_t sub_9F64(uint64_t a1, uint64_t a2)
{
  v3 = sub_769690();
  *a2 = 0;
  *(a2 + 8) = 1;
  return v3 & 1;
}

uint64_t sub_9FBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_7696A0();
  *a1 = result;
  return result;
}

Swift::Int sub_9FE4()
{
  v1 = *v0;
  sub_76AA30();
  sub_76AA40(v1);
  return sub_76AA80();
}

Swift::Int sub_A02C(uint64_t a1)
{
  v2 = *v1;
  sub_76AA30();
  sub_76AA40(v2);
  return sub_76AA80();
}

uint64_t sub_A070@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_CED4(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_A0BC(uint64_t a1)
{
  sub_A208(&qword_93E5F0, type metadata accessor for UIContentSizeCategory, &unk_77BCB0);
  sub_A208(&qword_93E5F8, type metadata accessor for UIContentSizeCategory, &unk_77BC50);

  return sub_76A8D0();
}

uint64_t sub_A208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_A2E0(uint64_t a1)
{
  sub_A208(&qword_93E978, type metadata accessor for DeviceType, &unk_77CD40);
  sub_A208(&qword_93E980, type metadata accessor for DeviceType, &unk_77CCE0);

  return sub_76A8D0();
}

uint64_t sub_A39C(uint64_t a1)
{
  sub_A208(&qword_93E9D8, type metadata accessor for AIDAServiceType, &unk_77D960);
  sub_A208(&unk_93E9E0, type metadata accessor for AIDAServiceType, &unk_77D908);

  return sub_76A8D0();
}

uint64_t sub_A458(uint64_t a1)
{
  sub_A208(&qword_93E928, type metadata accessor for Mode, &unk_77D450);
  sub_A208(&qword_93E930, type metadata accessor for Mode, &unk_77D3F8);

  return sub_76A8D0();
}

uint64_t sub_A514(uint64_t a1)
{
  sub_A208(&qword_93E5C0, type metadata accessor for Category, &unk_77C39C);
  sub_A208(&qword_93E5C8, type metadata accessor for Category, &unk_77C344);

  return sub_76A8D0();
}

uint64_t sub_A5D0(uint64_t a1)
{
  sub_A208(&qword_93E5D0, type metadata accessor for ActivityType, &unk_77C25C);
  sub_A208(&qword_93E5D8, type metadata accessor for ActivityType, &unk_77C204);

  return sub_76A8D0();
}

uint64_t sub_A68C(uint64_t a1)
{
  sub_A208(&qword_93E988, type metadata accessor for TextStyle, &unk_77CB0C);
  sub_A208(&unk_93E990, type metadata accessor for TextStyle, &unk_77CAAC);

  return sub_76A8D0();
}

uint64_t sub_A748(uint64_t a1)
{
  sub_A208(&qword_93E5E0, type metadata accessor for CAGradientLayerType, &unk_77BEFC);
  sub_A208(&qword_93E5E8, type metadata accessor for CAGradientLayerType, &unk_77BE9C);

  return sub_76A8D0();
}

uint64_t sub_A8DC(uint64_t a1)
{
  sub_A208(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
  sub_A208(&qword_93E9A0, type metadata accessor for Key, &unk_77C998);

  return sub_76A8D0();
}

uint64_t sub_A998(uint64_t a1)
{
  sub_A208(&qword_93E918, type metadata accessor for NSKeyValueChangeKey, &unk_77D77C);
  sub_A208(&qword_93E920, type metadata accessor for NSKeyValueChangeKey, &unk_77D540);

  return sub_76A8D0();
}

uint64_t sub_AA54(uint64_t a1)
{
  sub_A208(&qword_93E958, type metadata accessor for FeatureKey, &unk_77D09C);
  sub_A208(&qword_93E960, type metadata accessor for FeatureKey, &unk_77D03C);

  return sub_76A8D0();
}

uint64_t sub_AB10@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_769210();

  *a2 = v3;
  return result;
}

uint64_t sub_AB58(uint64_t a1)
{
  sub_A208(&qword_93E948, type metadata accessor for AttributeName, &unk_77D7C0);
  sub_A208(&qword_93E950, type metadata accessor for AttributeName, &unk_77D194);

  return sub_76A8D0();
}

uint64_t sub_AC14(uint64_t a1)
{
  sub_A208(&qword_93E968, type metadata accessor for BuildType, &unk_77CF44);
  sub_A208(&qword_93E970, type metadata accessor for BuildType, &unk_77CEE4);

  return sub_76A8D0();
}

uint64_t sub_ACD0(uint64_t a1)
{
  sub_A208(&qword_93E938, type metadata accessor for UIBackgroundTaskIdentifier, &unk_77D308);
  sub_A208(&qword_93E940, type metadata accessor for UIBackgroundTaskIdentifier, &unk_77D2A8);
  return sub_76A8D0();
}

uint64_t sub_AEF4()
{
  sub_769240();
  v0 = sub_7693D0();

  return v0;
}

uint64_t sub_AF30(uint64_t a1)
{
  sub_769240();
  sub_769330();
}

Swift::Int sub_AF84(uint64_t a1)
{
  sub_769240();
  sub_76AA30();
  sub_769330();
  v1 = sub_76AA80();

  return v1;
}

void *sub_B170(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *sub_B1B4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_B218(void *a1, uint64_t *a2)
{
  v2 = sub_769240();
  v4 = v3;
  if (v2 == sub_769240() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_76A950();
  }

  return v7 & 1;
}

char *sub_B2EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v82 = a2;
  v83 = a3;
  v91 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_7593D0();
  v88 = *(v5 - 8);
  v89 = v5;
  __chkstk_darwin(v5);
  v87 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_BD88(&qword_94BAC0, qword_77E9E0);
  __chkstk_darwin(v7 - 8);
  v86 = &v80 - v8;
  v9 = sub_768C60();
  v84 = *(v9 - 8);
  v85 = v9;
  __chkstk_darwin(v9);
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_760AD0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v15 - 8);
  v17 = &v80 - v16;
  v18 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel;
  *v17 = UIFontTextStyleSubheadline;
  *(v17 + 1) = UIFontWeightSemibold;
  v19 = enum case for FontUseCase.preferredFontDerivative(_:);
  v20 = sub_7666D0();
  v21 = *(v20 - 8);
  (*(v21 + 104))(v17, v19, v20);
  (*(v21 + 56))(v17, 0, 1, v20);
  (*(v12 + 104))(v14, enum case for DirectionalTextAlignment.none(_:), v11);
  v22 = objc_allocWithZone(sub_75BB20());
  v23 = UIFontTextStyleSubheadline;
  *&v4[v18] = sub_75BB10();
  v24 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_shadowView;
  sub_758E80();
  *&v4[v24] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v25 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView;
  sub_759210();
  *&v4[v25] = sub_759020();
  v26 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_backgroundView;
  sub_75CD70();
  *&v4[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *&v4[v27] = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  v28 = &v4[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_action];
  v29 = v83;
  *v28 = v82;
  v28[1] = v29;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_category] = v91;
  v95.receiver = v4;
  v95.super_class = ObjectType;

  v30 = objc_msgSendSuper2(&v95, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);

  v31 = sub_7619B0();
  v33 = v32;

  v94 = &type metadata for String;
  v93[0] = v31;
  v93[1] = v33;
  memset(v92, 0, sizeof(v92));
  v34 = v81;
  sub_768C50();
  sub_BDD0(v92);
  sub_BDD0(v93);
  sub_769E70();
  (*(v84 + 8))(v34, v85);
  [v30 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  v35 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_shadowView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_shadowView]];
  v36 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_backgroundView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_backgroundView]];
  v37 = *&v30[v36];
  v84 = v36;
  v85 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  [v37 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView]];
  v38 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView]];
  v39 = *&v30[v38];
  v40 = objc_opt_self();
  v41 = v39;
  v42 = [v40 clearColor];
  sub_7590B0();

  v83 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel;
  [v30 addSubview:*&v30[OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel]];
  v43 = qword_93C5B0;
  v44 = *&v30[v35];
  if (v43 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v45 = sub_765080();
    v46 = sub_BE38(v45, qword_99B670);
    v47 = *(v45 - 8);
    v48 = v86;
    (*(v47 + 16))(v86, v46, v45);
    (*(v47 + 56))(v48, 0, 1, v45);
    sub_758E60();

    v49 = *&v30[v35];
    v50 = enum case for CornerStyle.continuous(_:);
    v51 = v87;
    v52 = v88;
    v86 = *(v88 + 104);
    v53 = v89;
    (v86)(v87, enum case for CornerStyle.continuous(_:), v89);
    v54 = v49;
    sub_758E70();

    v55 = *(v52 + 8);
    v55(v51, v53);
    v56 = v84;
    v57 = *&v30[v84];
    v88 = sub_BE70(0, &qword_93E540, UIColor_ptr);
    v58 = v57;
    v59 = sub_76A090();
    [v58 setBackgroundColor:v59];

    v60 = *&v30[v56];
    (v86)(v51, v50, v53);
    v61 = v60;
    sub_75CCD0();

    v55(v51, v53);
    v62 = v83;
    v63 = *&v30[v83];
    sub_7619C0();
    v64 = sub_769210();

    [v63 setText:v64];

    v65 = *&v30[v62];
    v66 = sub_769FD0();
    [v65 setTextColor:v66];

    v67 = v85;
    [*&v30[v85] setHidden:1];
    v68 = *&v30[v67];
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_77B6C0;
    v70 = v68;
    *(v69 + 32) = sub_7619A0();
    *(v69 + 40) = sub_761980();
    *&v70[OBJC_IVAR____TtC18ASMessagesProvider12GradientView_colors] = v69;

    sub_4AC204();

    v71 = [v30 subviews];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v72 = sub_769460();

    if (v72 >> 62)
    {
      break;
    }

    v44 = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
    if (!v44)
    {
      goto LABEL_16;
    }

LABEL_4:
    v35 = 0;
    while (1)
    {
      if ((v72 & 0xC000000000000001) != 0)
      {
        v73 = sub_76A770();
      }

      else
      {
        if (v35 >= *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_13;
        }

        v73 = *(v72 + 8 * v35 + 32);
      }

      v74 = v73;
      v75 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      [v73 setUserInteractionEnabled:0];

      ++v35;
      if (v75 == v44)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    swift_once();
  }

  v44 = sub_76A860();
  if (v44)
  {
    goto LABEL_4;
  }

LABEL_16:

  v76 = v30;
  [v76 addTarget:v76 action:"didTap" forControlEvents:64];
  [v76 addTarget:v76 action:"didPress:" forControlEvents:1];

  [v76 addTarget:v76 action:"didRelease:" forControlEvents:480];
  sub_BD88(&qword_9477F0, qword_780200);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_77B6D0;
  *(v77 + 32) = sub_767B80();
  *(v77 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v94 = ObjectType;
  v93[0] = v76;
  v78 = v76;
  sub_769F30();
  swift_unknownObjectRelease();

  sub_BEB8(v93);
  return v78;
}

uint64_t sub_BD88(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_BDD0(uint64_t a1)
{
  v2 = sub_BD88(&unk_93FBD0, &qword_77DFA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_BE38(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_BE70(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_BEB8(void *a1)
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

void sub_BF04()
{
  v1 = v0;
  v2 = sub_760AD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_titleLabel;
  *v8 = UIFontTextStyleSubheadline;
  *(v8 + 1) = UIFontWeightSemibold;
  v10 = enum case for FontUseCase.preferredFontDerivative(_:);
  v11 = sub_7666D0();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v8, v10, v11);
  (*(v12 + 56))(v8, 0, 1, v11);
  (*(v3 + 104))(v5, enum case for DirectionalTextAlignment.none(_:), v2);
  objc_allocWithZone(sub_75BB20());
  v13 = UIFontTextStyleSubheadline;
  *(v1 + v9) = sub_75BB10();
  v14 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_shadowView;
  sub_758E80();
  *(v1 + v14) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_artworkView;
  sub_759210();
  *(v1 + v15) = sub_759020();
  v16 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_backgroundView;
  sub_75CD70();
  *(v1 + v16) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC18ASMessagesProvider32ArcadeDownloadPackCategoryButton_selectedBackgroundView;
  *(v1 + v17) = [objc_allocWithZone(type metadata accessor for GradientView()) init];
  sub_76A840();
  __break(1u);
}

void sub_C1D4(void *a1)
{
  if (qword_93C160 != -1)
  {
    swift_once();
  }

  v2 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:qword_93C168 timingParameters:0.5];
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_C354;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_23F0CC;
  v6[3] = &unk_87FAE0;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 addAnimations:v4];
  _Block_release(v4);
  [v2 startAnimation];
}

uint64_t sub_C31C()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_C354()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

double sub_C394(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_C3AC()
{

  return _swift_deallocObject(v0, 32, 7);
}

__n128 sub_C43C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_C450(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_C470(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_CED4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void sub_CF48(uint64_t a1, unint64_t *a2, uint64_t a3)
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

id sub_D134(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews] = _swiftEmptyArrayStorage;
  sub_761D50();
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels] = 0;
  v6[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_shouldEvenlyDistribute] = 2;
  v6[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_isInsideSearchAd] = 0;
  *&v6[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsCalculator] = 0;
  v12 = &v6[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsUpdateBlock];
  *v12 = 0;
  v12[1] = 0;
  v20.receiver = v6;
  v20.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = v13;
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  if (qword_93C170 != -1)
  {
    swift_once();
  }

  [v17 setMaximumContentSizeCategory:qword_93EB70];
  sub_BD88(&qword_9477F0, qword_780200);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_77B6D0;
  *(v18 + 32) = sub_7676F0();
  *(v18 + 40) = &protocol witness table for UITraitLegibilityWeight;
  sub_769F40();

  swift_unknownObjectRelease();

  return v17;
}

uint64_t sub_D36C(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

unint64_t sub_D3A4(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews;
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews];
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = 32;
    do
    {
      [*(v5 + v7) removeFromSuperview];
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  *&v2[v4] = a1;

  v8 = *&v2[v4];

  result = sub_761D40();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(v8 + 16) >= result)
    {
      v10 = result;
    }

    else
    {
      v10 = *(v8 + 16);
    }

    if (result)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v12 = (v8 + 32);
      do
      {
        v13 = *v12;
        v12 += 2;
        [v2 addSubview:v13];
        --v10;
      }

      while (v10);
    }

    swift_unknownObjectRelease();

    return [v2 setNeedsLayout];
  }

  return result;
}

uint64_t sub_D4B4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_7664F0();
  v47 = *(v4 - 8);
  v48 = v4;
  __chkstk_darwin(v4);
  v45 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_761D60();
  v41 = *(v6 - 8);
  v42 = v6;
  __chkstk_darwin(v6);
  v40 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_BD88(&unk_93EBE0, qword_77DB20);
  __chkstk_darwin(v8 - 8);
  v52 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v39 - v11;
  v55 = sub_BD88(&qword_9419E0, &unk_781010);
  v13 = *(v55 - 8);
  __chkstk_darwin(v55);
  v54 = &v39 - v14;
  v15 = sub_761D70();
  v43 = *(v15 - 8);
  v44 = v15;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v39 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57.receiver = v2;
  v57.super_class = ObjectType;
  v46 = ObjectType;
  objc_msgSendSuper2(&v57, "layoutSubviews", v16);
  v49 = v2;
  v18 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews];
  v19 = *(v18 + 16);

  v53 = v19;
  if (v19)
  {
    v21 = 0;
    v50 = v13;
    v51 = (v13 + 48);
    v22 = v18 + 40;
    v56 = _swiftEmptyArrayStorage;
    v23 = qword_77DB20;
    while (v21 < *(v18 + 16))
    {
      v24 = *(v22 - 8);
      swift_getObjectType();
      v25 = v24;
      v26 = v23;
      v27 = v52;
      sub_75FCF0();
      v28 = v27;
      v23 = v26;
      sub_109C4(v28, v12, &unk_93EBE0, v26);

      if ((*v51)(v12, 1, v55) == 1)
      {
        result = sub_10A2C(v12, &unk_93EBE0, v26);
      }

      else
      {
        sub_109C4(v12, v54, &qword_9419E0, &unk_781010);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_7AC4C(0, *(v56 + 2) + 1, 1, v56);
        }

        v30 = *(v56 + 2);
        v29 = *(v56 + 3);
        if (v30 >= v29 >> 1)
        {
          v56 = sub_7AC4C((v29 > 1), v30 + 1, 1, v56);
        }

        v31 = v56;
        *(v56 + 2) = v30 + 1;
        result = sub_109C4(v54, v31 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v30, &qword_9419E0, &unk_781010);
      }

      ++v21;
      v22 += 16;
      if (v53 == v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
LABEL_13:

    v32 = v49;
    (*(v41 + 16))(v40, &v49[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metrics], v42);
    v33 = v39;
    sub_761D10();
    sub_75D650();
    v34 = v45;
    sub_761D30();
    (*(v47 + 8))(v34, v48);
    v35 = &v32[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsUpdateBlock];
    swift_beginAccess();
    v36 = *v35;
    if (*v35)
    {
      v37 = *(v35 + 1);
      swift_endAccess();

      v36(v38);
      sub_F704(v36, v37);
      return (*(v43 + 8))(v33, v44);
    }

    else
    {
      (*(v43 + 8))(v33, v44);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_DAB8(uint64_t a1, double a2, double a3)
{
  v32 = a1;
  v29 = sub_761D60();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_761D70();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_BD88(&unk_93EBE0, qword_77DB20);
  __chkstk_darwin(v6 - 8);
  v35 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v25 - v9;
  v38 = sub_BD88(&qword_9419E0, &unk_781010);
  v11 = *(v38 - 8);
  __chkstk_darwin(v38);
  v37 = &v25 - v12;
  v31 = v3;
  v13 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews);
  v14 = *(v13 + 16);

  v36 = v14;
  if (v14)
  {
    v16 = 0;
    v33 = v11;
    v34 = (v11 + 48);
    v17 = v13 + 40;
    v39 = _swiftEmptyArrayStorage;
    while (v16 < *(v13 + 16))
    {
      v18 = *(v17 - 8);
      swift_getObjectType();
      v19 = v18;
      v20 = v35;
      sub_75FCF0();
      sub_109C4(v20, v10, &unk_93EBE0, qword_77DB20);

      if ((*v34)(v10, 1, v38) == 1)
      {
        result = sub_10A2C(v10, &unk_93EBE0, qword_77DB20);
      }

      else
      {
        sub_109C4(v10, v37, &qword_9419E0, &unk_781010);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_7AC4C(0, *(v39 + 2) + 1, 1, v39);
        }

        v22 = *(v39 + 2);
        v21 = *(v39 + 3);
        if (v22 >= v21 >> 1)
        {
          v39 = sub_7AC4C((v21 > 1), v22 + 1, 1, v39);
        }

        v23 = v39;
        *(v39 + 2) = v22 + 1;
        result = sub_109C4(v37, v23 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v22, &qword_9419E0, &unk_781010);
      }

      ++v16;
      v17 += 16;
      if (v36 == v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v39 = _swiftEmptyArrayStorage;
LABEL_13:

    (*(v27 + 16))(v26, v31 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metrics, v29);
    v24 = v25;
    sub_761D10();
    sub_761D20();
    return (*(v28 + 8))(v24, v30);
  }

  return result;
}

id sub_DFF8(unint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v6 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_761C80();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_shouldEvenlyDistribute) = v6;
  v12 = _swiftEmptyArrayStorage;
  *&v42 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_49;
  }

  v37 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  if (v37)
  {
    while (1)
    {
      v29[1] = a3;
      v30 = v4;
      v13 = 0;
      v38 = a1;
      v40 = a1 & 0xFFFFFFFFFFFFFF8;
      v41 = a1 & 0xC000000000000001;
      v4 = (v9 + 88);
      a1 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
      v14 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
      v15 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
      LODWORD(v39) = enum case for MetadataRibbonItemViewType.starRating(_:);
      v35 = enum case for MetadataRibbonItemViewType.divider(_:);
      v36 = enum case for MetadataRibbonItemViewType.textLabel(_:);
      v31 = (v9 + 8);
      v32 = v11;
      v34 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
      while (v41)
      {
        v9 = sub_76A770();
        a3 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          v4 = v30;
          *(v30 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels) = v42;

          v11 = 0;
          v8 = 0;
          v12 = _swiftEmptyArrayStorage;
          v23 = v38;
          while (1)
          {
            if (v41)
            {
              v24 = sub_76A770();
              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            else
            {
              if (v11 >= *(v40 + 16))
              {
                goto LABEL_48;
              }

              v24 = *(v23 + 8 * v11 + 32);

              a3 = (v11 + 1);
              if (__OFADD__(v11, 1))
              {
                goto LABEL_47;
              }
            }

            v43 = v24;
            sub_E43C(&v43, v4, &v42);

            if (v42)
            {
              v39 = v42;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v12 = sub_7AC98(0, *(v12 + 2) + 1, 1, v12);
              }

              a1 = *(v12 + 2);
              v25 = *(v12 + 3);
              v26 = v39;
              if (a1 >= v25 >> 1)
              {
                v27 = sub_7AC98((v25 > 1), a1 + 1, 1, v12);
                v26 = v39;
                v12 = v27;
              }

              *(v12 + 2) = a1 + 1;
              *&v12[2 * a1 + 4] = v26;
            }

            ++v11;
            if (a3 == v9)
            {
              goto LABEL_51;
            }
          }
        }

LABEL_8:
        v12 = v9;
        sub_75D750();
        v16 = (*v4)(v11, v8);
        if (v16 == a1 || v16 == v14 || v16 == v15 || v16 == v39 || v16 == v36 || v16 == v35 || v16 == v34)
        {
          v12 = &v42;
          sub_76A7A0();
          sub_76A7D0();
          v11 = v32;
          sub_76A7E0();
          sub_76A7B0();
        }

        else
        {

          (*v31)(v11, v8);
        }

        ++v13;
        v9 = v37;
        if (a3 == v37)
        {
          goto LABEL_32;
        }
      }

      if (v13 < *(v40 + 16))
      {
        break;
      }

      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v37 = sub_76A860();
      if (!v37)
      {
        goto LABEL_50;
      }
    }

    v9 = *(v38 + 8 * v13 + 32);

    a3 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      goto LABEL_31;
    }

    goto LABEL_8;
  }

LABEL_50:
  *(v4 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels) = v12;

LABEL_51:
  sub_D3A4(v12);
  return [v4 setNeedsLayout];
}

uint64_t sub_E43C@<X0>(uint64_t *a1@<X0>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = sub_766D70();
  v68 = *(v7 - 8);
  v69 = v7;
  __chkstk_darwin(v7);
  v67 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_767030();
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v62 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v63 = &v53 - v11;
  __chkstk_darwin(v12);
  v65 = &v53 - v13;
  v14 = sub_BD88(&qword_93EBC0, qword_783DC0);
  __chkstk_darwin(v14 - 8);
  v16 = &v53 - v15;
  v17 = *a1;
  result = sub_5CC98();
  if (result)
  {
    v20 = result;
    v21 = v19;
    v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
    sub_75FD30();
    sub_75D770();
    sub_75FD10();
    sub_75D7A0();
    v23 = sub_75FC90();
    (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
    sub_75FD40();
    v57 = sub_75D740();
    v25 = v24;
    v26 = [a3 traitCollection];
    v60 = v21;
    v61 = a4;
    v58 = v22;
    v59 = v20;
    if (v25)
    {
    }

    else
    {
      v53 = v26;
      v54 = v25;
      v55 = a3;
      v56 = v17;
      v27 = v62;
      sub_767020();
      sub_766B40();
      if (qword_93C740 != -1)
      {
        swift_once();
      }

      v28 = sub_760500();
      v29 = sub_BE38(v28, qword_99BB00);
      v71 = v28;
      v72 = sub_1092C(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
      v30 = sub_B1B4(v70);
      (*(*(v28 - 8) + 16))(v30, v29, v28);
      v31 = v63;
      sub_766F80();
      v32 = v64;
      v33 = *(v64 + 8);
      v34 = v66;
      v33(v27, v66);
      sub_BEB8(v70);
      v35 = v65;
      sub_767010();
      v33(v31, v34);
      v73._countAndFlagsBits = 77;
      v73._object = 0xE100000000000000;
      sub_7693E0(v73, v57);
      (*(v32 + 16))(v31, v35, v34);
      sub_766D50();
      v36 = v67;
      sub_766D90();
      v37 = v53;
      sub_766D60();

      (*(v68 + 8))(v36, v69);
      v33(v35, v34);
      v21 = v60;
      a4 = v61;
      a3 = v55;
      v22 = v58;
    }

    sub_75FCB0();
    v57 = sub_75D780();
    v39 = v38;
    v40 = [a3 traitCollection];
    if (v39)
    {
    }

    else
    {
      v55 = v40;
      LODWORD(v56) = v39;
      v41 = v62;
      sub_767020();
      sub_766B40();
      if (qword_93C740 != -1)
      {
        swift_once();
      }

      v42 = sub_760500();
      v43 = sub_BE38(v42, qword_99BB00);
      v71 = v42;
      v72 = sub_1092C(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
      v44 = sub_B1B4(v70);
      (*(*(v42 - 8) + 16))(v44, v43, v42);
      v45 = v63;
      sub_766F80();
      v46 = v64;
      v47 = *(v64 + 8);
      v48 = v41;
      v49 = v66;
      v47(v48, v66);
      sub_BEB8(v70);
      v50 = v65;
      sub_767010();
      v47(v45, v49);
      v74._countAndFlagsBits = 77;
      v74._object = 0xE100000000000000;
      sub_7693E0(v74, v57);
      (*(v46 + 16))(v45, v50, v49);
      sub_766D50();
      v51 = v67;
      sub_766D90();
      v52 = v55;
      sub_766D60();

      (*(v68 + 8))(v51, v69);
      v47(v50, v49);
      v21 = v60;
      a4 = v61;
      v22 = v58;
    }

    sub_75FD00();
    sub_75D720();
    result = sub_75FCD0();
    *a4 = v22;
    a4[1] = v21;
  }

  else
  {
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

uint64_t sub_EC48(uint64_t a1, uint64_t a2)
{
  swift_getObjectType();

  v3 = sub_101F5C(v2, 0);

  return v3 & 1;
}

void sub_ECB4(uint64_t a1, uint64_t a2)
{
  v2 = sub_BD88(&unk_93FF30, &unk_77DB10);
  __chkstk_darwin(v2 - 8);
  v4 = v38 - v3;
  v5 = sub_768AB0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    v11 = swift_weakLoadStrong();
    if (v11)
    {
      v12 = v11;
      v13 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels];
      if (v13)
      {
        v44 = v8;
        v40 = v10;
        v14 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews];
        v15 = *(v14 + 16);

        v49 = v15;
        if (v15)
        {
          v16 = 0;
          v17 = v13 & 0xFFFFFFFFFFFFFF8;
          if (v13 >= 0)
          {
            v18 = v13 & 0xFFFFFFFFFFFFFF8;
          }

          else
          {
            v18 = v13;
          }

          v38[1] = v18;
          v45 = (v6 + 48);
          v46 = v13 & 0xFFFFFFFFFFFFFF8;
          v41 = (v6 + 8);
          v42 = (v6 + 32);
          v19 = 32;
          v47 = v13 & 0xC000000000000001;
          v48 = v13 >> 62;
          v39 = v4;
          v43 = v13;
          while (v16 < *(v14 + 16))
          {
            v20 = *(v14 + v19);
            if (v48)
            {
              if (v16 == sub_76A860())
              {
                goto LABEL_24;
              }
            }

            else if (v16 == *(v17 + 16))
            {
              goto LABEL_24;
            }

            if (v47)
            {
              v37 = v20;
              sub_76A770();
            }

            else
            {
              if (v16 >= *(v17 + 16))
              {
                goto LABEL_29;
              }

              v21 = v20;
            }

            sub_75D730();
            if ((*v45)(v4, 1, v5) == 1)
            {

              sub_10A2C(v4, &unk_93FF30, &unk_77DB10);
            }

            else
            {
              v22 = v44;
              (*v42)(v44, v4, v5);
              if ([v20 isHidden])
              {
                (*v41)(v22, v5);
              }

              else
              {
                [v20 frame];
                v24 = v23;
                v26 = v25;
                v28 = v27;
                v30 = v29;
                v31 = v5;
                v32 = v14;
                v33 = v12;
                v34 = v40;
                v35 = [v40 superview];
                v36 = v34;
                v12 = v33;
                v14 = v32;
                v5 = v31;
                v4 = v39;
                [v36 convertRect:v35 toView:{v24, v26, v28, v30}];

                sub_75F4B0();

                (*v41)(v22, v5);
              }
            }

            ++v16;
            v19 += 16;
            v17 = v46;
            if (v49 == v16)
            {
              goto LABEL_24;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
        }

        else
        {
LABEL_24:
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t type metadata accessor for SearchTagsRibbonView(uint64_t a1)
{
  result = qword_93EBA8;
  if (!qword_93EBA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F21C(uint64_t a1)
{
  result = sub_761D60();
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

double sub_F2E4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_F32C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_F3E8()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_F444(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

void (*sub_F504(uint64_t a1, uint64_t a2))()
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return sub_F6FC;
}

uint64_t sub_F5A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getObjectType();

  return sub_7633E0();
}

uint64_t sub_F5FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();

  return sub_7633D0();
}

uint64_t sub_F64C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_F684()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_F6BC()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_F704(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_F714(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_F730(void *a1)
{
  sub_B170(a1, a1[3]);
  v2 = sub_767660();
  if (qword_93C170 != -1)
  {
    swift_once();
  }

  v3 = qword_93EB70;
  if (sub_769B40())
  {
    v3;
  }

  sub_10974(a1, a1[3]);
  return sub_767670();
}

uint64_t sub_F7FC(unint64_t a1, int a2, double a3, double a4)
{
  v102 = a2;
  v5 = sub_761D60();
  __chkstk_darwin(v5 - 8);
  v101 = &v95 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_761D70();
  v104 = *(v7 - 8);
  __chkstk_darwin(v7);
  v103 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_766D70();
  v9 = *(v123 - 8);
  __chkstk_darwin(v123);
  v122 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_767030();
  v11 = *(v121 - 8);
  __chkstk_darwin(v121);
  v13 = &v95 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v120 = &v95 - v15;
  __chkstk_darwin(v16);
  v119 = &v95 - v17;
  v133 = sub_BD88(&qword_9419E0, &unk_781010);
  v118 = *(v133 - 1);
  __chkstk_darwin(v133);
  v131 = (&v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v19);
  v117 = &v95 - v20;
  __chkstk_darwin(v21);
  v134 = &v95 - v22;
  v125 = sub_761C80();
  v23 = *(v125 - 8);
  __chkstk_darwin(v125);
  v124 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D7C0();
  v126 = a1;
  result = sub_769490();
  if (result)
  {
    v116 = sub_769A20();
    if (v126 >> 62)
    {
      result = sub_76A860();
    }

    else
    {
      result = *(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8));
    }

    v100 = v7;
    if (result)
    {
      if (result >= 1)
      {
        v26 = 0;
        v114 = v126 & 0xC000000000000001;
        v113 = (v23 + 88);
        v96 = (v23 + 8);
        v111 = (v11 + 8);
        v110 = (v11 + 16);
        v109 = (v9 + 8);
        v27 = _swiftEmptyArrayStorage;
        v112 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v107 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v106 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v105 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v99 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v98 = enum case for MetadataRibbonItemViewType.divider(_:);
        v97 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v108 = v13;
        v115 = result;
        while (1)
        {
          if (v114)
          {
            v28 = sub_76A770();
          }

          else
          {
            v28 = *(v126 + 8 * v26 + 32);
          }

          v29 = v124;
          sub_75D750();
          v30 = (*v113)(v29, v125);
          v129 = v27;
          v130 = v26;
          if (v30 == v112)
          {
            break;
          }

          if (v30 == v107)
          {
            v31 = type metadata accessor for MetadataRibbonEditorsChoiceView(0);
            v32 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v33 = &unk_785408;
            v34 = &unk_93F600;
            goto LABEL_24;
          }

          if (v30 == v106)
          {
            v31 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v32 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v33 = &unk_789E18;
            v34 = &unk_93EBD0;
            goto LABEL_24;
          }

          if (v30 == v105)
          {
            v31 = type metadata accessor for MetadataRibbonStarRatingView(0);
            v32 = type metadata accessor for MetadataRibbonStarRatingView;
            v33 = &unk_79F4C8;
            v34 = &unk_93F610;
            goto LABEL_24;
          }

          if (v30 == v99)
          {
            v31 = type metadata accessor for MetadataRibbonTagView(0);
            v32 = type metadata accessor for MetadataRibbonTagView;
            v33 = &unk_7A8490;
            v34 = &unk_93EBC8;
            goto LABEL_24;
          }

          if (v30 == v98)
          {
            v31 = type metadata accessor for MetadataRibbonBarView(0);
            v32 = type metadata accessor for MetadataRibbonBarView;
            v33 = &unk_7AD020;
            v34 = &unk_93F5F0;
            goto LABEL_24;
          }

          if (v30 == v97)
          {
            v31 = type metadata accessor for MetadataRibbonHighlightedTextView(0);
            v32 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v33 = &unk_7B0870;
            v34 = &unk_93EBB8;
            goto LABEL_24;
          }

          (*v96)(v124, v125);
LABEL_37:
          if (v115 == ++v26)
          {
            goto LABEL_41;
          }
        }

        v31 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(0);
        v32 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
        v33 = &unk_783CE8;
        v34 = &unk_93EBD8;
LABEL_24:
        v35 = sub_1092C(v34, v32, v33);
        v36 = swift_allocObject();
        v36[2] = v31;
        v36[3] = v35;
        v36[4] = v28;
        v37 = sub_7670D0();
        swift_allocObject();

        v38 = sub_767090();
        v39 = v134;
        v40 = v133[20];
        sub_75D770();
        *(v39 + 64) = v37;
        *(v39 + 72) = &protocol witness table for LayoutViewPlaceholder;
        *(v39 + 40) = v38;
        *(v39 + 80) = sub_75FD20() & 1;
        sub_75D7A0();
        v41 = sub_75FC90();
        (*(*(v41 - 8) + 56))(v39 + v40, 0, 1, v41);
        v42 = sub_75D740();
        v44 = v43;
        v45 = 0;
        v46 = 0;
        v132 = v28;
        if ((v43 & 1) == 0)
        {
          v47 = v42;
          sub_767020();
          sub_766B40();
          if (qword_93C740 != -1)
          {
            swift_once();
          }

          v48 = sub_760500();
          v49 = sub_BE38(v48, qword_99BB00);
          v136 = v48;
          v137 = sub_1092C(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
          v50 = sub_B1B4(&v135);
          (*(*(v48 - 8) + 16))(v50, v49, v48);
          v51 = v120;
          sub_766F80();
          v52 = *v111;
          v53 = v121;
          (*v111)(v13, v121);
          sub_BEB8(&v135);
          v54 = v119;
          sub_767010();
          v52(v51, v53);
          v138._countAndFlagsBits = 77;
          v138._object = 0xE100000000000000;
          sub_7693E0(v138, v47);
          (*v110)(v51, v54, v53);
          sub_766D50();
          v55 = v122;
          sub_766D90();
          sub_766D60();
          v46 = v56;
          (*v109)(v55, v123);
          v52(v54, v53);
        }

        v57 = v134 + v133[24];
        *v57 = v46;
        *(v57 + 8) = v44 & 1;
        v58 = sub_75D780();
        v60 = v59;
        if ((v59 & 1) == 0)
        {
          v61 = v58;
          sub_767020();
          sub_766B40();
          if (qword_93C740 != -1)
          {
            swift_once();
          }

          v62 = sub_760500();
          v63 = sub_BE38(v62, qword_99BB00);
          v136 = v62;
          v137 = sub_1092C(&qword_9443B0, &type metadata accessor for MetadataRibbonTextStyle, &protocol conformance descriptor for MetadataRibbonTextStyle);
          v64 = sub_B1B4(&v135);
          (*(*(v62 - 8) + 16))(v64, v63, v62);
          v65 = v120;
          sub_766F80();
          v66 = *v111;
          v67 = v121;
          (*v111)(v13, v121);
          sub_BEB8(&v135);
          v68 = v119;
          sub_767010();
          v66(v65, v67);
          v139._countAndFlagsBits = 77;
          v139._object = 0xE100000000000000;
          sub_7693E0(v139, v61);
          (*v110)(v65, v68, v67);
          sub_766D50();
          v69 = v122;
          sub_766D90();
          sub_766D60();
          v45 = v70;
          (*v109)(v69, v123);
          v66(v68, v67);
        }

        v71 = v133;
        v72 = v134;
        v73 = v134 + v133[28];
        v74 = v133[32];
        *v73 = v45;
        *(v73 + 8) = v60 & 1;
        *(v72 + v74) = sub_75D720();
        v75 = v117;
        sub_108A4(v72, v117);
        v76 = *(v75 + 80);
        v77 = v71[20];
        v78 = v71[24];
        v128 = *(v75 + v78);
        v127 = *(v75 + v78 + 8);
        v79 = v71[28];
        v80 = *(v75 + v79);
        v81 = *(v75 + v79 + 8);
        v82 = v71[32];
        v83 = *(v75 + v82);
        v84 = v131;
        v85 = v131 + v78;
        v86 = v131 + v79;
        v87 = *(v75 + 16);
        *v131 = *v75;
        v84[1] = v87;
        *(v84 + 4) = *(v75 + 32);
        sub_10914((v75 + 40), v84 + 40);
        *(v84 + 80) = v76;
        sub_109C4(v75 + v77, v84 + v77, &qword_93EBC0, qword_783DC0);
        *v85 = v128;
        v85[8] = v127;
        *v86 = v80;
        v86[8] = v81;
        *(v84 + v82) = v83;
        v27 = v129;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_7AC4C(0, *(v27 + 2) + 1, 1, v27);
        }

        v26 = v130;
        v89 = *(v27 + 2);
        v88 = *(v27 + 3);
        v13 = v108;
        if (v89 >= v88 >> 1)
        {
          v27 = sub_7AC4C((v88 > 1), v89 + 1, 1, v27);
        }

        *(v27 + 2) = v89 + 1;
        sub_109C4(v131, v27 + ((*(v118 + 80) + 32) & ~*(v118 + 80)) + *(v118 + 72) * v89, &qword_9419E0, &unk_781010);
        sub_10A2C(v134, &qword_9419E0, &unk_781010);
        goto LABEL_37;
      }

      __break(1u);
    }

    else
    {
LABEL_41:
      sub_761D50();
      v90 = v103;
      sub_761D10();
      sub_7671D0();
      sub_BD88(&unk_93F5C0, &unk_77C600);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_77D9F0;
      v92 = v116;
      *(v91 + 32) = v116;
      v93 = v92;
      v94 = sub_7671E0();
      sub_761D20();

      return (*(v104 + 8))(v90, v100);
    }
  }

  return result;
}

uint64_t sub_1083C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_108A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_9419E0, &unk_781010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10914(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1092C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10974(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_109C4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_BD88(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10A2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_BD88(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_10A8C()
{
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemViews) = _swiftEmptyArrayStorage;
  sub_761D50();
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_metadataRibbonItemModels) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_shouldEvenlyDistribute) = 2;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_isInsideSearchAd) = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsCalculator) = 0;
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider20SearchTagsRibbonView_impressionsUpdateBlock);
  *v1 = 0;
  v1[1] = 0;
  sub_76A840();
  __break(1u);
}

uint64_t sub_10BC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_75DA40();
  *a1 = result;
  return result;
}

uint64_t sub_10C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_11AA0(&qword_93EC10, type metadata accessor for Key, &unk_77D804);
  v9 = sub_7690F0();
  v8(v9, a3, a4, a5);
}

double sub_10CEC(uint64_t a1)
{
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v2 - 8);
  v4 = &v66 - v3;
  v5 = sub_766690();
  v74 = *(v5 - 8);
  __chkstk_darwin(v5);
  v73 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_7656A0();
  v72 = *(v7 - 8);
  __chkstk_darwin(v7);
  v71 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = sub_7656C0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  sub_759490();
  sub_11AA0(&unk_93EC00, &type metadata accessor for FramedVideo, &protocol conformance descriptor for FramedMedia);
  sub_75C750();
  if (!aBlock[0])
  {
    return 0.0;
  }

  v70 = v5;
  v68 = v4;

  v19 = sub_759430();
  swift_getKeyPath();
  sub_75C7B0();

  v20 = (v13 + 8);
  v69 = a1;
  if (v19)
  {
    sub_765630();
    v22 = v21;
    (*v20)(v18, v12);
  }

  else
  {
    sub_765580();
    v24 = *v20;
    (*v20)(v18, v12);
    v67 = v24;
    swift_getKeyPath();
    sub_75C7B0();

    sub_7655A0();
    v24(v15, v12);
    v25 = v72;
    (*(v72 + 104))(v11, enum case for PageGrid.Direction.vertical(_:), v7);
    swift_getKeyPath();
    sub_75C7B0();

    sub_765590();
    v26 = v67;
    v67(v15, v12);
    (*(v25 + 16))(v71, v11, v7);
    sub_40DC7C(0.0);
    sub_765670();
    (*(v25 + 8))(v11, v7);
    sub_765630();
    v22 = v27;
    v26(v18, v12);
  }

  v28 = sub_759480();
  v29 = v70;
  if (v28)
  {
    sub_765260();
    v30 = v73;
    sub_7666A0();
    sub_766660();
    v32 = v31;
    (*(v74 + 8))(v30, v29);
    v33 = sub_759430();

    if (v22 >= v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = v22;
    }

    if (v33)
    {
      v34 = v32;
    }

    v23 = v34 + 0.0;
  }

  else
  {
    v23 = 0.0;
  }

  v35 = sub_759450();
  v36 = [v35 length];

  if (v36 < 1)
  {

    return v23;
  }

  sub_769DA0();
  sub_759460();
  if (v37)
  {
    if (qword_93DA18 != -1)
    {
      swift_once();
    }

    v38 = sub_7666D0();
    sub_BE38(v38, qword_99F640);
    swift_getKeyPath();
    sub_75C7B0();

    v39 = sub_7653B0();
    v77 = v39;
    v78 = sub_11AA0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v40 = sub_B1B4(aBlock);
    (*(*(v39 - 8) + 104))(v40, enum case for Feature.measurement_with_labelplaceholder(_:), v39);
    sub_765C30();
    sub_BEB8(aBlock);
    sub_762CB0();
    swift_unknownObjectRelease();
  }

  v41 = sub_759450();

  swift_getKeyPath();
  sub_75C7B0();

  v42 = v80;
  v43 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v41];
  v44 = [v41 length];
  v45 = swift_allocObject();
  *(v45 + 16) = 0;
  *(v45 + 24) = v42;
  *(v45 + 32) = v43;
  *(v45 + 40) = 1;
  v46 = swift_allocObject();
  v46[2] = sub_119AC;
  v46[3] = v45;
  v78 = sub_119CC;
  v79 = v46;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10C1C;
  v77 = &unk_87FFF0;
  v47 = _Block_copy(aBlock);
  v48 = v42;
  v49 = v43;

  [v41 enumerateAttributesInRange:0 options:v44 usingBlock:{0x100000, v47}];

  _Block_release(v47);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
    goto LABEL_29;
  }

  v50 = qword_93DA10;
  v46 = v49;
  if (v50 != -1)
  {
LABEL_29:
    swift_once();
  }

  v51 = sub_7666D0();
  v52 = sub_BE38(v51, qword_99F628);
  v53 = *(v51 - 8);
  v54 = v68;
  (*(v53 + 16))(v68, v52, v51);
  (*(v53 + 56))(v54, 0, 1, v51);
  swift_getKeyPath();
  sub_75C7B0();

  v55 = sub_7653B0();
  v77 = v55;
  v78 = sub_11AA0(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v56 = sub_B1B4(aBlock);
  (*(*(v55 - 8) + 104))(v56, enum case for Feature.measurement_with_labelplaceholder(_:), v55);
  sub_765C30();
  sub_BEB8(aBlock);
  sub_762CA0();
  v58 = v57;

  swift_unknownObjectRelease();
  sub_11A38(v54);
  if (qword_93E250 != -1)
  {
    swift_once();
  }

  v59 = sub_766CA0();
  sub_BE38(v59, qword_9A09B8);
  swift_getKeyPath();
  sub_75C7B0();

  sub_766720();
  v61 = v60;
  swift_unknownObjectRelease();
  v62 = v58 + v23 + v61;
  if (qword_93E258 != -1)
  {
    swift_once();
  }

  sub_BE38(v59, qword_9A09D0);
  swift_getKeyPath();
  sub_75C7B0();

  sub_7666F0();
  v64 = v63;
  swift_unknownObjectRelease();

  return v62 + v64;
}

uint64_t sub_11964()
{

  return _swift_deallocObject(v0, 41, 7);
}

double sub_119F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_11A0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_75DA40();
  *a1 = result;
  return result;
}

uint64_t sub_11A38(uint64_t a1)
{
  v2 = sub_BD88(&unk_93E530, &unk_77C5F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_11AA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_11AE8(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_999F00 + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_7634F0();
  sub_768900();
  sub_768ED0();
  *(v2 + qword_93EC20) = v10;

  v5 = sub_466E14(a1, a2);
  v6 = *&v5[qword_99E1D8];
  v7 = v5;
  v8 = v6;

  sub_75FA40();

  return v7;
}

id sub_11BF4()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 navigationItem];

    if (v3)
    {
      return v3;
    }
  }

  v5 = [v0 navigationItem];

  return v5;
}

id sub_11C8C(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_768C60();
  v5 = *(v4 - 8);
  *&v6 = __chkstk_darwin(v4).n128_u64[0];
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v2;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, "viewDidLoad", v6);
  v9 = [v2 collectionView];
  if (v9)
  {
    v10 = v9;
    [v9 setKeyboardDismissMode:1];
  }

  v11 = [v2 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 setAllowsSelection:1];
  }

  v13 = [v2 collectionView];
  if (v13)
  {
    v14 = v13;
    [v13 setContentInset:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];
  }

  result = [v2 collectionView];
  if (result)
  {
    v16 = result;
    memset(v17, 0, sizeof(v17));
    sub_768C20();
    sub_10A2C(v17, &unk_93FBD0, &qword_77DFA0);
    sub_769E70();

    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_11E88(void *a1)
{
  v2 = a1;
  sub_11C8C(v2, v1);
}

void sub_11F34(void *a1, uint64_t a2, const char **a3, unsigned int *a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_7634E0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = a1;
  v14.super_class = ObjectType;
  v12 = *a3;
  v13 = a1;
  objc_msgSendSuper2(&v14, v12);
  (*(v9 + 104))(v11, *a4, v8);
  sub_7634A0();
  (*(v9 + 8))(v11, v8);
}

void sub_1207C(void *a1, uint64_t a2, uint64_t a3, const char **a4, unsigned int *a5)
{
  ObjectType = swift_getObjectType();
  v10 = sub_7634E0();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = a1;
  v16.super_class = ObjectType;
  v14 = *a4;
  v15 = a1;
  objc_msgSendSuper2(&v16, v14, a3);
  (*(v11 + 104))(v13, *a5, v10);
  sub_7634A0();
  (*(v11 + 8))(v13, v10);
}

void sub_121E0(void *a1)
{
  v1 = a1;
  sub_121B8();
}

uint64_t sub_12250(unsigned int *a1, void (*a2)(void), unsigned int *a3)
{
  v20 = a1;
  v6 = v3;
  v7 = sub_7634E0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_7587B0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_lifecycleObserver;
  swift_beginAccess();
  sub_13468(v6 + v15, v22);
  if (v23)
  {
    sub_134D8(v22, v21);
    sub_10A2C(v22, &qword_93FED0, &unk_77DCE0);
    v18 = a2;
    v19 = v7;
    sub_B170(v21, v21[3]);
    (*(v12 + 104))(v14, *v20, v11);
    a2 = v18;
    v7 = v19;
    sub_7587C0();
    (*(v12 + 8))(v14, v11);
    v16 = sub_BEB8(v21);
  }

  else
  {
    v16 = sub_10A2C(v22, &qword_93FED0, &unk_77DCE0);
  }

  a2(v16);
  (*(v8 + 104))(v10, *a3, v7);
  sub_7634A0();
  return (*(v8 + 8))(v10, v7);
}

void sub_124E4(void *a1)
{
  v1 = a1;
  sub_12228();
}

id sub_1252C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  sub_BD88(&qword_93F1E8, &qword_77DCD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_77DC20;
  sub_BD88(&qword_93F1F0, &qword_77DCD8);
  swift_allocObject();
  swift_retain_n();

  v5 = sub_763BB0();
  v6 = sub_13374();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  type metadata accessor for BackgroundConfigurationCollectionElementsObserver();
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = sub_13420(&qword_93F200, type metadata accessor for BackgroundConfigurationCollectionElementsObserver, "ez\r");
  *(v4 + 48) = v7;
  *(v4 + 56) = v8;
  sub_13420(&qword_93F1C0, type metadata accessor for SearchLandingDiffablePageViewController, &unk_7A2710);
  sub_763A80();
  sub_761840();

  result = [v3 collectionView];
  if (result)
  {
    sub_764320();
    swift_allocObject();
    *(v4 + 64) = sub_764310();
    *(v4 + 72) = &protocol witness table for ImpressionsCollectionElementsObserver;
    sub_7637E0();
    swift_allocObject();
    v10 = sub_7637D0();
    sub_5FBA38();
    if (swift_dynamicCastClass())
    {
      sub_7637B0();
      sub_7637C0();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_12804@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 24) = &type metadata for SearchLandingPageShelfLayoutSpacingProvider;
  result = sub_13320();
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_12838()
{
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider29StoreCollectionViewController_objectGraph);
  v2 = sub_13420(&qword_93F1D0, &type metadata accessor for SearchLandingDiffablePagePresenter, &protocol conformance descriptor for DiffablePagePresenter<A>);
  type metadata accessor for SearchLandingPageShelfSupplementaryProvider();
  v3 = swift_allocObject();
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 32) = v2;
  swift_unknownObjectWeakAssign();
  *(v3 + 16) = v1;
  sub_13420(&qword_93F1D8, type metadata accessor for SearchLandingPageShelfSupplementaryProvider, &unk_7ADC90);

  return v3;
}

uint64_t sub_12938@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  sub_13420(&qword_93F1C0, type metadata accessor for SearchLandingDiffablePageViewController, &unk_7A2710);
  v3 = sub_763A60();
  v19[3] = swift_getObjectType();
  v19[0] = v3;
  v4 = sub_763A50();
  v20[3] = swift_getObjectType();
  v20[0] = v4;
  sub_132B4(v19, v18);
  sub_13310(v18, v17);
  sub_BD88(&qword_93F1C8, &unk_7840E0);
  if (swift_dynamicCast() && *&v16[0])
  {
    v15 = v16[0];
    v5 = _swiftEmptyArrayStorage;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_7ACBC(0, *&_swiftEmptyArrayStorage[2] + 1, 1, _swiftEmptyArrayStorage);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_7ACBC((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    *&v5[2 * v7 + 4] = v15;
  }

  else
  {
    v5 = _swiftEmptyArrayStorage;
  }

  sub_132B4(v20, v18);
  sub_13310(v18, v17);
  sub_BD88(&qword_93F1C8, &unk_7840E0);
  if (swift_dynamicCast() && *&v16[0])
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_7ACBC(0, *(v5 + 2) + 1, 1, v5);
    }

    v9 = *(v5 + 2);
    v8 = *(v5 + 3);
    v10 = v16[0];
    if (v9 >= v8 >> 1)
    {
      v14 = sub_7ACBC((v8 > 1), v9 + 1, 1, v5);
      v10 = v16[0];
      v5 = v14;
    }

    *(v5 + 2) = v9 + 1;
    *&v5[2 * v9 + 4] = v10;
  }

  swift_arrayDestroy();
  sub_763A80();
  v11 = type metadata accessor for SearchLandingLayoutSectionProvider(0);
  swift_allocObject();
  sub_134D8(v18, v17);
  sub_134D8(v17, v16);

  v12 = sub_762B60();
  sub_BEB8(v17);
  result = sub_BEB8(v18);
  a2[3] = v11;
  a2[4] = &protocol witness table for BasePageLayoutSectionProvider;
  *a2 = v12;
  return result;
}

unint64_t sub_12C4C@<X0>(uint64_t *a1@<X8>)
{
  sub_75A3C0();
  swift_allocObject();
  v2 = sub_75A3B0();
  swift_allocObject();
  v3 = sub_75A3B0();
  a1[3] = &type metadata for SearchLandingPageGridProvider;
  result = sub_13260();
  a1[4] = result;
  *a1 = v2;
  a1[1] = v3;
  return result;
}

void sub_12CCC(void *a1, uint64_t a2, void *a3)
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v9.receiver;
  objc_msgSendSuper2(&v9, "scrollViewWillBeginDragging:", v4);
  v6 = &v5[qword_999F00];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(ObjectType, v7);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_12D7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for SearchLandingShelfComponentTypeMappingProvider();
  v3 = swift_allocObject();
  type metadata accessor for AppPromotionsShelfComponentTypeMappingProvider();
  *(v3 + 16) = swift_allocObject();
  type metadata accessor for SmallStoryCardShelfComponentTypeMappingProvider();
  *(v3 + 24) = swift_allocObject();
  a1[3] = v2;
  result = sub_13420(&qword_93F1B0, type metadata accessor for SearchLandingShelfComponentTypeMappingProvider, &unk_780DC8);
  a1[4] = result;
  *a1 = v3;
  return result;
}

void sub_12E30(uint64_t a1)
{
  v2 = sub_BD88(&qword_93F1A8, &unk_77DCC0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v6 - v4;
  sub_5FE2F8(a1);
  (*(v3 + 16))(v5, a1, v2);
  if ((*(v3 + 88))(v5, v2) == enum case for DiffablePagePresenter.UpdatePhase.initial<A>(_:))
  {
    sub_763480();
  }

  else
  {
    (*(v3 + 8))(v5, v2);
  }
}

void sub_12F68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v13.receiver = v2;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v5 = sub_769A00() & 1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [v2 traitCollection];
  v7 = sub_769A00();

  if (v5 == 2 || ((v7 ^ v5) & 1) != 0 || (!a1 ? (v8 = 2) : (v8 = sub_7699F0() & 1), (v9 = [v3 traitCollection], v10 = sub_7699F0(), v9, v8 == 2) || ((v10 ^ v8) & 1) != 0))
  {
    v11 = [v3 collectionView];
    if (v11)
    {
      v12 = v11;
      [v11 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1309C(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  sub_12F68(a3, v6);
}

uint64_t sub_13108()
{

  v1 = v0 + qword_999F00;

  return sub_13238(v1);
}

uint64_t sub_13148(uint64_t a1)
{

  v2 = a1 + qword_999F00;

  return sub_13238(v2);
}

uint64_t type metadata accessor for SearchLandingDiffablePageViewController(uint64_t a1)
{
  result = qword_93EC50;
  if (!qword_93EC50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_13260()
{
  result = qword_93F1B8;
  if (!qword_93F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F1B8);
  }

  return result;
}

uint64_t sub_132B4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_13310(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_13320()
{
  result = qword_93F1E0;
  if (!qword_93F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F1E0);
  }

  return result;
}

unint64_t sub_13374()
{
  result = qword_93F1F8;
  if (!qword_93F1F8)
  {
    sub_133D8(&qword_93F1F0, &qword_77DCD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F1F8);
  }

  return result;
}

uint64_t sub_133D8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_13420(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_13468(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&qword_93FED0, &unk_77DCE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_134D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_13540()
{
  sub_7688F0();
  if (v1 == 2 || (v1 & 1) == 0)
  {
    sub_758000();
    swift_allocObject();
    sub_757FF0();
    sub_757D80();
    swift_allocObject();
    sub_757D30();
    sub_757D40();
    sub_757ED0();
    sub_757EB0();
    sub_757F00();
    sub_757EF0();
    sub_7576E0();
    sub_7576D0();
  }

  return result;
}

uint64_t sub_1362C(void *a1)
{
  v55 = a1;
  v1 = sub_7580E0();
  v2 = *(v1 - 8);
  v62 = v1;
  v63 = v2;
  __chkstk_darwin(v1);
  v67 = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v70 = v53 - v5;
  v56 = sub_768340();
  v69 = *(v56 - 8);
  __chkstk_darwin(v56);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7682A0();
  *&v54 = v8;
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_768320();
  v61 = *(v12 - 8);
  v13 = v61;
  __chkstk_darwin(v12);
  v15 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13540();
  v68 = sub_768360();
  v66 = sub_768350();
  v76 = 0;
  v74 = 0u;
  v75 = 0u;
  sub_768310();
  v64 = sub_7682C0();
  v16 = *(v9 + 104);
  v53[1] = v9 + 104;
  v16(v11, enum case for DeviceAppQuery.betaApps(_:), v8);
  v65 = v12;
  *(&v75 + 1) = v12;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v17 = sub_B1B4(&v74);
  v18 = *(v13 + 16);
  v58 = v15;
  v18(v17, v15, v12);
  v59 = v18;
  v60 = v13 + 16;
  v73 = 0;
  v71 = 0u;
  v72 = 0u;
  v19 = enum case for AppStoreType.messages(_:);
  v20 = v69[13];
  v69 += 13;
  v21 = v56;
  v20(v7, enum case for AppStoreType.messages(_:), v56);
  v53[0] = v11;
  v57 = sub_7682B0();
  v16(v11, enum case for DeviceAppQuery.allStoreApps(_:), v54);
  v22 = v65;
  *(&v75 + 1) = v65;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v23 = sub_B1B4(&v74);
  v18(v23, v15, v22);
  *(&v72 + 1) = v68;
  v73 = &protocol witness table for DeviceUpdateRegistry;
  *&v71 = v66;
  v20(v7, v19, v21);

  v56 = sub_7682B0();
  sub_757850();

  v69 = sub_757840();
  sub_BD88(&qword_93F208, &qword_77DD00);
  v24 = sub_768330();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  v54 = xmmword_77B6D0;
  *(v27 + 16) = xmmword_77B6D0;
  v28 = enum case for App.Kind.store(_:);
  v29 = *(v25 + 104);
  v29(v27 + v26, enum case for App.Kind.store(_:), v24);
  v69 = v69;
  sub_7580F0();
  sub_757A60();

  v30 = sub_757A50();
  v31 = swift_allocObject();
  *(v31 + 16) = v54;
  v29(v31 + v26, v28, v24);
  v55 = v30;
  v32 = v67;
  sub_7580F0();
  sub_BD88(&qword_93F210, qword_77DD08);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_77DCF0;
  v34 = sub_768290();
  swift_allocObject();
  v35 = sub_768280();
  *(v33 + 56) = v34;
  *(v33 + 64) = &protocol witness table for RemoteInstalledAppStateDataSource;
  *(v33 + 32) = v35;
  v36 = sub_768300();
  swift_allocObject();
  v37 = sub_7682F0();
  *(v33 + 96) = v36;
  *(v33 + 104) = &protocol witness table for WaitingAppStateDataSource;
  *(v33 + 72) = v37;
  v38 = v64;
  *(v33 + 136) = v64;
  *(v33 + 144) = &protocol witness table for DeviceAppStateDataSource;
  *(v33 + 112) = v57;
  *(v33 + 176) = v38;
  *(v33 + 184) = &protocol witness table for DeviceAppStateDataSource;
  *(v33 + 152) = v56;
  v39 = v62;
  *(v33 + 216) = v62;
  v40 = sub_13E64();
  *(v33 + 224) = v40;
  v41 = sub_B1B4((v33 + 192));
  v42 = v63;
  v43 = *(v63 + 16);
  v43(v41, v70, v39);
  *(v33 + 256) = v39;
  *(v33 + 264) = v40;
  v44 = sub_B1B4((v33 + 232));
  v43(v44, v32, v39);
  v45 = sub_7682E0();
  swift_allocObject();

  v46 = sub_7682D0();
  *(v33 + 296) = v45;
  *(v33 + 304) = &protocol witness table for DefaultAppStateDataSource;
  *(v33 + 272) = v46;
  v47 = v65;
  *(&v75 + 1) = v65;
  v76 = &protocol witness table for ASDDeviceAppFetcher;
  v48 = sub_B1B4(&v74);
  v49 = v58;
  v59(v48, v58, v47);
  *(&v72 + 1) = v68;
  v73 = &protocol witness table for DeviceUpdateRegistry;
  *&v71 = v66;

  v50 = sub_7576A0();

  v51 = *(v42 + 8);
  v51(v67, v39);
  v51(v70, v39);
  (*(v61 + 8))(v49, v47);
  sub_BEB8(&v71);
  sub_BEB8(&v74);
  return v50;
}

unint64_t sub_13E64()
{
  result = qword_93F218;
  if (!qword_93F218)
  {
    sub_7580E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F218);
  }

  return result;
}

unint64_t sub_13EE0()
{
  result = qword_93F220;
  if (!qword_93F220)
  {
    sub_75AB30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F220);
  }

  return result;
}

uint64_t sub_13F38()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() generalPasteboard];
  sub_75AB20();
  v5 = sub_769210();

  [v4 setString:v5];

  sub_BD88(&qword_94DDC0, qword_77DE00);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_768F30();
}

unint64_t sub_14098()
{
  result = qword_93F240;
  if (!qword_93F240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F240);
  }

  return result;
}

uint64_t sub_140EC()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_93F228);
  sub_BE38(v4, qword_93F228);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

uint64_t sub_14240(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = sub_75BC10();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  sub_BD88(&unk_940200, &unk_7AEB70);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = sub_764CF0();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_143E0, 0, 0);
}

uint64_t sub_143E0()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  sub_BD88(&unk_944300, &qword_77DEE0);
  sub_768900();
  sub_768ED0();
  v4 = v0[8];
  v0[25] = v0[7];
  v0[26] = v4;
  v0[27] = swift_getObjectType();
  sub_BD88(&qword_93F258, &qword_77DEE8);
  sub_768ED0();
  sub_758170();
  v5 = *(v2 + 48);
  v0[28] = v5;
  v0[29] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v3, 1, v1) == 1)
  {
    sub_10A2C(v0[18], &unk_940200, &unk_7AEB70);
  }

  else
  {
    v6 = v0[24];
    v7 = v0[20];
    v13 = v0[19];
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[12];
    (*(v7 + 32))(v6, v0[18]);
    (*(v8 + 104))(v9, enum case for InstallationType.redownload(_:), v10);
    sub_758310();
    (*(v8 + 8))(v9, v10);
    (*(v7 + 8))(v6, v13);
  }

  v11 = swift_task_alloc();
  v0[30] = v11;
  *v11 = v0;
  v11[1] = sub_14608;

  return sub_151C4();
}

uint64_t sub_14608()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1488C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 256) = v3;
    *v3 = v2;
    v3[1] = sub_14778;

    return sub_1586C(v2 + 16);
  }
}

uint64_t sub_14778()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_14C0C;
  }

  else
  {
    v2 = sub_14A2C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1488C(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[19];
  v4 = v1[17];
  sub_758170();
  if (v2(v4, 1, v3) == 1)
  {
    v5 = v1[17];
    swift_unknownObjectRelease();
    sub_BEB8(v1 + 2);
    sub_10A2C(v5, &unk_940200, &unk_7AEB70);
  }

  else
  {
    v6 = v1[23];
    v7 = v1[19];
    v8 = v1[20];
    (*(v8 + 32))(v6, v1[17], v7);
    sub_758320();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v6, v7);
    sub_BEB8(v1 + 2);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_14A2C()
{
  v1 = v0[28];
  v2 = v0[19];
  v3 = v0[16];
  v4 = v0[9];
  v5 = enum case for ActionOutcome.performed(_:);
  v6 = sub_7687C0();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  sub_758170();
  if (v1(v3, 1, v2) == 1)
  {
    v7 = v0[16];
    swift_unknownObjectRelease();
    sub_BEB8(v0 + 2);
    sub_10A2C(v7, &unk_940200, &unk_7AEB70);
  }

  else
  {
    v8 = v0[22];
    v9 = v0[19];
    v10 = v0[20];
    (*(v10 + 32))(v8, v0[16], v9);
    sub_758320();
    swift_unknownObjectRelease();
    (*(v10 + 8))(v8, v9);
    sub_BEB8(v0 + 2);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_14C0C(uint64_t a1)
{
  v2 = v1[28];
  v3 = v1[19];
  v4 = v1[15];
  sub_758170();
  if (v2(v4, 1, v3) == 1)
  {
    v5 = v1[15];
    swift_unknownObjectRelease();
    sub_BEB8(v1 + 2);
    sub_10A2C(v5, &unk_940200, &unk_7AEB70);
  }

  else
  {
    v7 = v1[20];
    v6 = v1[21];
    v8 = v1[19];
    (*(v7 + 32))(v6, v1[15], v8);
    sub_758320();
    swift_unknownObjectRelease();
    (*(v7 + 8))(v6, v8);
    sub_BEB8(v1 + 2);
  }

  v9 = v1[1];

  return v9();
}

uint64_t sub_14DAC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_7572E0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *sub_B170((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_BD88(&unk_95F4D0, &unk_77DF30);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;

    return _swift_continuation_throwingResumeWithError(v9, v10);
  }

  else
  {
    sub_7572C0();
    (*(v6 + 32))(*(*(v9 + 64) + 40), v8, v5);
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_14F1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_14FCC;

  return sub_14240(a1, v6, a3);
}

uint64_t sub_14FCC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_150C4()
{
  result = qword_93F248;
  if (!qword_93F248)
  {
    sub_758190();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F248);
  }

  return result;
}

uint64_t sub_1511C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_15170();

  return AsyncActionImplementation.perform(_:asPartOf:)(a1, a2, a3, v6);
}

unint64_t sub_15170()
{
  result = qword_93F250;
  if (!qword_93F250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F250);
  }

  return result;
}

uint64_t sub_151C4()
{
  sub_7685A0();
  v0[22] = swift_task_alloc();
  v1 = sub_7572E0();
  v0[23] = v1;
  v0[24] = *(v1 - 8);
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();

  return _swift_task_switch(sub_152B8, 0, 0);
}

uint64_t sub_152B8()
{
  v1 = v0[25];
  v2 = objc_allocWithZone(ASDSystemAppMetadata);
  v3 = sub_769210();
  v4 = [v2 initWithBundleID:v3];
  v0[27] = v4;

  [v4 setUserInitiated:1];
  v5 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_15454;
  v6 = swift_continuation_init();
  v0[17] = sub_BD88(&qword_93F288, &unk_77DF20);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_14DAC;
  v0[13] = &unk_880078;
  v0[14] = v6;
  [v5 installApp:v4 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_15454()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_157D0;
  }

  else
  {
    v2 = sub_15564;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_15564()
{
  v1 = v0[27];
  (*(v0[24] + 32))(v0[26], v0[25], v0[23]);

  if (qword_93C178 != -1)
  {
    swift_once();
  }

  v2 = v0[26];
  v3 = v0[24];
  v9 = v0[27];
  v4 = v0[23];
  v5 = sub_768FF0();
  sub_BE38(v5, qword_93F228);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v11._object = 0x80000000007C96C0;
  v11._countAndFlagsBits = 0xD000000000000036;
  sub_768580(v11);
  v0[21] = v4;
  v6 = sub_B1B4(v0 + 18);
  (*(v3 + 16))(v6, v2, v4);
  sub_768560();
  sub_10A2C((v0 + 18), &unk_93FBD0, &qword_77DFA0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_768580(v12);
  sub_7685B0();
  sub_768E80();

  (*(v3 + 8))(v2, v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_157D0()
{
  v1 = *(v0 + 216);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1586C(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_BD88(&qword_93F260, &qword_77DF00);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_BD88(&qword_93F268, &qword_77DF08);
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return _swift_task_switch(sub_159AC, 0, 0);
}

uint64_t sub_159AC()
{
  v1 = *(v0 + 16);
  sub_B170(v1, v1[3]);
  if (sub_758920())
  {
    if (qword_93C178 != -1)
    {
      swift_once();
    }

    v2 = sub_768FF0();
    sub_BE38(v2, qword_93F228);
    sub_BD88(&qword_93FD00, &unk_77DF10);
    sub_7685F0();
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_93C178 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 72);
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
    v14 = *(v0 + 64);
    v8 = *(v0 + 16);
    v9 = sub_768FF0();
    *(v0 + 80) = v9;
    *(v0 + 88) = sub_BE38(v9, qword_93F228);
    *(v0 + 96) = sub_BD88(&qword_93FD00, &unk_77DF10);
    v10 = *(sub_7685F0() - 8);
    *(v0 + 104) = *(v10 + 72);
    *(v0 + 120) = *(v10 + 80);
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    sub_B170(v8, v1[3]);
    sub_758910();
    sub_BD88(&qword_9434F0, &qword_782A00);
    sub_16194(&qword_93F270, &qword_9434F0, &qword_782A00, &protocol conformance descriptor for AsyncEvent<A>);
    sub_768740();

    (*(v7 + 16))(v14, v5, v6);
    sub_16194(&qword_93F278, &qword_93F268, &qword_77DF08, &protocol conformance descriptor for AsyncStream<A>);
    sub_7695D0();
    v11 = sub_16194(&qword_93F280, &qword_93F260, &qword_77DF00, &protocol conformance descriptor for AsyncStream<A>.Iterator);
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_15E64;
    v13 = *(v0 + 24);

    return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 124, v13, v11);
  }
}

uint64_t sub_15E64()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[4];
    v3 = v2[5];
    v5 = v2[3];

    (*(v4 + 8))(v3, v5);
    v6 = static CondensedEditorialSearchResultContentView.prefetchArtwork(for:with:asPartOf:);
  }

  else
  {
    v6 = sub_15FA4;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_15FA4()
{
  v1 = *(v0 + 124);
  if (v1 == 2)
  {
LABEL_4:
    v2 = *(v0 + 72);
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    (*(*(v0 + 32) + 8))(*(v0 + 40), *(v0 + 24));
    (*(v4 + 8))(v2, v3);

    v5 = *(v0 + 8);

    return v5();
  }

  if (v1)
  {
    *(swift_allocObject() + 16) = xmmword_77B6D0;
    sub_768540();
    sub_768E80();

    goto LABEL_4;
  }

  v7 = sub_16194(&qword_93F280, &qword_93F260, &qword_77DF00, &protocol conformance descriptor for AsyncStream<A>.Iterator);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *v8 = v0;
  v8[1] = sub_15E64;
  v9 = *(v0 + 24);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 124, v9, v7);
}

uint64_t sub_16194(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_133D8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_161DC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_1626C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_7685A0();
  __chkstk_darwin(v7 - 8);
  if (qword_93DF18 != -1)
  {
    swift_once();
  }

  v8 = sub_768FF0();
  sub_BE38(v8, qword_9A0478);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v15._countAndFlagsBits = 0x5370696B53646964;
  v15._object = 0xED0000203A706574;
  sub_768580(v15);
  v9 = a1[3];
  v10 = sub_B170(a1, v9);
  v14 = v9;
  v11 = sub_B1B4(v13);
  (*(*(v9 - 8) + 16))(v11, v10, v9);
  sub_768560();
  sub_10A2C(v13, &unk_93FBD0, &qword_77DFA0);
  v16._countAndFlagsBits = 0x6E6F73616572202CLL;
  v16._object = 0xEA0000000000203ALL;
  sub_768580(v16);
  v14 = &type metadata for String;
  v13[0] = a2;
  v13[1] = a3;

  sub_768560();
  sub_10A2C(v13, &unk_93FBD0, &qword_77DFA0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_768580(v17);
  sub_7685B0();
  sub_768E80();

  result = swift_beginAccess();
  if (*(*(v3 + 32) + 16))
  {
    sub_4A6908(0, 1);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_16548()
{
  v1 = sub_BD88(&qword_93F340, &qword_77DFA8);
  __chkstk_darwin(v1 - 8);
  v3 = &v11[-v2];
  v4 = sub_75F850();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v8 = *(v0 + 32);
  if (*(v8 + 16))
  {
    sub_134D8(v8 + 32, v12);
    sub_BD88(&qword_93F348, &qword_77DFB0);
    v9 = swift_dynamicCast();
    (*(v5 + 56))(v3, v9 ^ 1u, 1, v4);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      (*(v5 + 32))(v7, v3, v4);
      sub_75F7F0();
      sub_169B4(v7, v0);
      return (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
  }

  return sub_10A2C(v3, &qword_93F340, &qword_77DFA8);
}

double sub_16780(char a1)
{
  swift_beginAccess();
  v4 = *(v1 + 32);
  if (*(v4 + 16))
  {
    sub_134D8(v4 + 32, v8);
    sub_BD88(&qword_93F348, &qword_77DFB0);
    type metadata accessor for AdPrivacyOnboardingStep();
    if (swift_dynamicCast())
    {
      v5 = v1;
      v6 = sub_4F17F4();
      [v6 setPersonalizedAds:a1 & 1];

      sub_4F20C4();
      sub_16CAC(v7, v5);
    }
  }

  return result;
}

uint64_t sub_1685C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  if (*(v1 + 16))
  {
    sub_134D8(v1 + 32, v6);
    sub_BD88(&qword_93F348, &qword_77DFB0);
    if (swift_dynamicCast())
    {
      if (v3)
      {
        v6[0] = v3;
        v6[1] = v4;
        v6[2] = v5;
        sub_270D8C();
        sub_16F74(v6, v0);
        return sub_174E4(v6);
      }
    }

    else
    {
      v4 = 0u;
      v5 = 0u;
      v3 = 0u;
    }
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
    v5 = 0u;
  }

  return sub_10A2C(&v3, &qword_93F360, qword_77DFB8);
}

uint64_t sub_16950()
{

  return swift_deallocClassInstance();
}

uint64_t sub_169B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_7685A0();
  __chkstk_darwin(v4 - 8);
  v5 = sub_75F850();
  v14 = v5;
  v15 = sub_17628(&qword_93F350, &type metadata accessor for WelcomeOnboardingStep, &protocol conformance descriptor for WelcomeOnboardingStep);
  v6 = sub_B1B4(v13);
  (*(*(v5 - 8) + 16))(v6, a1, v5);
  if (qword_93DF18 != -1)
  {
    swift_once();
  }

  v7 = sub_768FF0();
  sub_BE38(v7, qword_9A0478);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v16._object = 0x80000000007C9740;
  v16._countAndFlagsBits = 0xD000000000000011;
  sub_768580(v16);
  v8 = v14;
  v9 = sub_B170(v13, v14);
  v12[3] = v8;
  v10 = sub_B1B4(v12);
  (*(*(v8 - 8) + 16))(v10, v9, v8);
  sub_768560();
  sub_10A2C(v12, &unk_93FBD0, &qword_77DFA0);
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  sub_768580(v17);
  sub_7685B0();
  sub_768E80();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_4A6908(0, 1);
    swift_endAccess();
    return sub_BEB8(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_16CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_7685A0();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for AdPrivacyOnboardingStep();
  v12[3] = v5;
  v12[4] = sub_17628(&qword_93F358, type metadata accessor for AdPrivacyOnboardingStep, &unk_7A1BC8);
  v12[0] = a1;
  v6 = qword_93DF18;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = sub_768FF0();
  sub_BE38(v7, qword_9A0478);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v13._object = 0x80000000007C9740;
  v13._countAndFlagsBits = 0xD000000000000011;
  sub_768580(v13);
  v8 = sub_B170(v12, v5);
  v11[3] = v5;
  v9 = sub_B1B4(v11);
  (*(*(v5 - 8) + 16))(v9, v8, v5);
  sub_768560();
  sub_10A2C(v11, &unk_93FBD0, &qword_77DFA0);
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_768580(v14);
  sub_7685B0();
  sub_768E80();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_4A6908(0, 1);
    swift_endAccess();
    return sub_BEB8(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_16F74(uint64_t a1, uint64_t a2)
{
  v4 = sub_7685A0();
  __chkstk_darwin(v4 - 8);
  v10[3] = &type metadata for LocationPrivacyOnboardingStep;
  v10[4] = sub_17538();
  v10[0] = swift_allocObject();
  sub_175CC(a1, v10[0] + 16);
  if (qword_93DF18 != -1)
  {
    swift_once();
  }

  v5 = sub_768FF0();
  sub_BE38(v5, qword_9A0478);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v11._object = 0x80000000007C9740;
  v11._countAndFlagsBits = 0xD000000000000011;
  sub_768580(v11);
  v6 = sub_B170(v10, &type metadata for LocationPrivacyOnboardingStep);
  v9[3] = &type metadata for LocationPrivacyOnboardingStep;
  v7 = sub_B1B4(v9);
  _swift_cvw_initWithCopy(v7, v6, &type metadata for LocationPrivacyOnboardingStep);
  sub_768560();
  sub_10A2C(v9, &unk_93FBD0, &qword_77DFA0);
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  sub_768580(v12);
  sub_7685B0();
  sub_768E80();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_4A6908(0, 1);
    swift_endAccess();
    return sub_BEB8(v10);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_17220(void *a1, uint64_t a2)
{
  v4 = sub_7685A0();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for JourneyDrivenOnboardingStep();
  v13[3] = v5;
  v13[4] = sub_17628(&qword_93F370, type metadata accessor for JourneyDrivenOnboardingStep, &unk_786FBC);
  v13[0] = a1;
  v6 = qword_93DF18;
  v7 = a1;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_768FF0();
  sub_BE38(v8, qword_9A0478);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77B6D0;
  sub_768590();
  v14._object = 0x80000000007C9740;
  v14._countAndFlagsBits = 0xD000000000000011;
  sub_768580(v14);
  v9 = sub_B170(v13, v5);
  v12[3] = v5;
  v10 = sub_B1B4(v12);
  (*(*(v5 - 8) + 16))(v10, v9, v5);
  sub_768560();
  sub_10A2C(v12, &unk_93FBD0, &qword_77DFA0);
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_768580(v15);
  sub_7685B0();
  sub_768E80();

  result = swift_beginAccess();
  if (*(*(a2 + 32) + 16))
  {
    sub_4A6908(0, 1);
    swift_endAccess();
    return sub_BEB8(v13);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_17538()
{
  result = qword_93F368;
  if (!qword_93F368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F368);
  }

  return result;
}

uint64_t sub_1758C()
{

  sub_BEB8((v0 + 24));

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_17628(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_17670@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_1799C(v1 + v3, a1);
}

uint64_t sub_176CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31RibbonBarItemCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1792C(a1, v1 + v3);
  return swift_endAccess();
}

double sub_177A4(uint64_t a1, uint64_t a2)
{
  sub_75A530();
  sub_17A0C(&qword_93F378, &type metadata accessor for RibbonBarItem, &protocol conformance descriptor for RibbonBarItem);
  sub_75C750();
  if (v3)
  {
    sub_75A110();
    sub_768900();
    sub_768ED0();
    sub_1707C8(v3, v3);
  }

  return result;
}

uint64_t sub_17890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_17A0C(&qword_93F380, type metadata accessor for RibbonBarItemCollectionViewCell, &unk_77E018);

  return static ConfigurableCell<>.dequeueConfiguredCell(in:collectionView:asPartOf:)(a1, a2, a3, v5, a5, v10);
}

uint64_t sub_1792C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F620, &unk_77E220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1799C(uint64_t a1, uint64_t a2)
{
  v4 = sub_BD88(&unk_93F620, &unk_77E220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_17A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_17A54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_75DA30();
  *a1 = result;
  return result;
}

id CondensedEditorialSearchResultContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame:{a1, a2, a3, a4}];
}

char *CondensedEditorialSearchResultContentView.init(frame:)(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  ObjectType = swift_getObjectType();
  v12 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v12 - 8);
  v59 = &v56 - v13;
  v56 = sub_7632B0();
  v14 = *(v56 - 8);
  __chkstk_darwin(v56);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_7631F0();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_itemLayoutContext;
  v22 = sub_75C840();
  (*(*(v22 - 8) + 56))(&v7[v21], 1, 1, v22);
  v23 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel;
  sub_75BB20();
  *&v7[v23] = sub_75BB00();
  v24 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel;
  *&v7[v24] = sub_75BB00();
  v25 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton;
  *&v7[v25] = [objc_opt_self() buttonWithType:0];
  v26 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v57 = v18;
  v27 = *(v18 + 104);
  v27(&v7[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration], enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v17);
  *&v7[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView] = 0;
  *&v7[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid] = 0;
  *&v7[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_action] = 0;
  v28 = &v7[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_buttonHandler];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v7[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkSize];
  v27(v20, v26, v17);
  sub_7631D0();
  v58 = *(v18 + 8);
  v58(v20, v17);
  sub_763210();
  v31 = v30;
  v33 = v32;
  (*(v14 + 8))(v16, v56);
  *v29 = v31;
  *(v29 + 1) = v33;
  v34 = type metadata accessor for CondensedEditorialSearchResultContentView(0);
  v61.receiver = v7;
  v61.super_class = v34;
  v35 = objc_msgSendSuper2(&v61, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v39 = v35;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v40 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel;
  [v39 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel]];
  v41 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel;
  [v39 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel]];
  v42 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton;
  [v39 addSubview:*&v39[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton]];
  [*&v39[v40] setLineBreakMode:4];
  [*&v39[v41] setLineBreakMode:4];
  v43 = *&v39[v42];
  v44 = v43;
  v45 = [v39 traitCollection];
  v46 = v59;
  v47 = ObjectType;
  sub_6960C0(v43, v59);

  v48 = sub_76A3F0();
  (*(*(v48 - 8) + 56))(v46, 0, 1, v48);
  sub_76A420();

  v49 = v47;
  v50 = sub_69635C();
  sub_18190(v50, v51, &OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton);

  v52 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v57 + 16))(v20, &v39[v52], v17);
  v53 = [v39 traitCollection];

  sub_18794(v20, v53);
  v58(v20, v17);
  sub_BD88(&qword_9477F0, qword_780200);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_77B6D0;
  *(v54 + 32) = sub_767B80();
  *(v54 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  *(swift_allocObject() + 16) = v49;
  sub_769F40();

  swift_unknownObjectRelease();

  return v39;
}

uint64_t type metadata accessor for CondensedEditorialSearchResultContentView(uint64_t a1)
{
  result = qword_93F418;
  if (!qword_93F418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18190(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = a3;
  v4 = sub_BD88(&qword_93F428, &unk_79F050);
  __chkstk_darwin(v4 - 8);
  v44 = &v43 - v5;
  v6 = sub_7664A0();
  v48 = *(v6 - 8);
  v49 = v6;
  __chkstk_darwin(v6);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7666D0();
  v45 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v50 = &v43 - v13;
  v14 = sub_756F10();
  __chkstk_darwin(v14 - 8);
  v15 = sub_756EB0();
  v16 = *(v15 - 8);
  v52 = v15;
  v53 = v16;
  __chkstk_darwin(v15);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_BD88(&unk_954ED0, &unk_77E060);
  __chkstk_darwin(v19 - 8);
  v47 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v43 - v22;
  v46 = *(v3 + *v51);
  sub_76A410();

  sub_756F00();
  sub_756EC0();
  v51 = v3;
  v24 = [v3 traitCollection];
  v25 = sub_769350();
  if (v24 && (sub_769A00() & 1) != 0)
  {
    if (v25 < 9)
    {
LABEL_4:
      v26 = v45;
      if (qword_93D8E0 != -1)
      {
        swift_once();
      }

      v27 = qword_99F298;
      goto LABEL_11;
    }
  }

  else if (v25 <= 6)
  {
    goto LABEL_4;
  }

  v26 = v45;
  if (qword_93D8E8 != -1)
  {
    swift_once();
  }

  v27 = qword_99F2B0;
LABEL_11:
  v28 = sub_BE38(v9, v27);
  v29 = *(v26 + 16);
  v29(v11, v28, v9);

  v30 = v50;
  (*(v26 + 32))(v50, v11, v9);
  v29(v8, v30, v9);
  v32 = v48;
  v31 = v49;
  (*(v48 + 104))(v8, enum case for FontSource.useCase(_:), v49);
  v33.super.isa = [v51 traitCollection];
  isa = v33.super.isa;
  v35 = sub_766490(v33).super.isa;

  (*(v32 + 8))(v8, v31);
  v54 = v35;
  sub_1EABC();
  v36 = v35;
  sub_756ED0();
  v37 = sub_76A3F0();
  v38 = (*(*(v37 - 8) + 48))(v23, 1, v37);
  v39 = v52;
  if (!v38)
  {
    v40 = v53;
    v41 = v44;
    (*(v53 + 16))(v44, v18, v52);
    (*(v40 + 56))(v41, 0, 1, v39);
    sub_76A2F0();
  }

  sub_1ED18(v23, v47, &unk_954ED0, &unk_77E060);
  sub_76A420();

  (*(v26 + 8))(v30, v9);
  (*(v53 + 8))(v18, v39);
  return sub_10A2C(v23, &unk_954ED0, &unk_77E060);
}

void sub_18794(uint64_t a1, objc_class *a2)
{
  v4 = sub_7666D0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel);
  [v8 setNumberOfLines:sub_7631C0()];
  v9 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel);
  v10.super.isa = a2;
  [v9 setNumberOfLines:sub_7631B0(v10)];
  sub_BE70(0, &qword_93F900, UIFont_ptr);
  sub_7631A0();
  v11 = sub_769E10();
  v12 = *(v5 + 8);
  v12(v7, v4);
  [v8 setFont:v11];

  sub_7631E0();
  v13 = sub_769E10();
  v12(v7, v4);
  [v9 setFont:v13];

  v14 = [objc_opt_self() systemBlueColor];
  [v8 setTextColor:v14];
}

id sub_18994(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_7631F0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_69635C();
  sub_696380(v9, v10, a3, &off_8801B0);

  v11 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v6 + 16))(v8, &a1[v11], v5);
  v12 = [a1 traitCollection];
  sub_18794(v8, v12);

  (*(v6 + 8))(v8, v5);
  return [a1 setNeedsLayout];
}

Swift::Void __swiftcall CondensedEditorialSearchResultContentView.layoutSubviews()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_BD88(&qword_93F3C8, &unk_77E070);
  v63 = *(v2 - 8);
  v64 = v2;
  __chkstk_darwin(v2);
  v61 = &v56 - v3;
  v4 = sub_7632D0();
  v59 = *(v4 - 8);
  v60 = v4;
  __chkstk_darwin(v4);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7664F0();
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v62 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7631F0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_7632B0();
  v69 = *(v12 - 8);
  v70 = v12;
  __chkstk_darwin(v12);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v56 - v16;
  __chkstk_darwin(v18);
  v68 = &v56 - v19;
  v20 = type metadata accessor for CondensedEditorialSearchResultContentView(0);
  v87.receiver = v0;
  v87.super_class = v20;
  objc_msgSendSuper2(&v87, "layoutSubviews");
  sub_75D650();
  v57 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView;
  v21 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
  if (v21)
  {
    *(&v85 + 1) = sub_759210();
    v86 = sub_1ED80(&unk_93E520, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    *&v84 = v21;
  }

  else if (*&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid])
  {
    *&v72 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid];
    type metadata accessor for IconArtworkGridView();
    sub_7665D0();
  }

  else
  {
    v86 = 0;
    v84 = 0u;
    v85 = 0u;
  }

  v22 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid;
  v23 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid];
  v24 = v21;
  if (v23)
  {
    [v23 _setContinuousCornerRadius:10.0];
  }

  v25 = [v1 traitCollection];
  v26 = sub_769A00();

  if (v26)
  {
    v27 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration;
    swift_beginAccess();
    (*(v9 + 16))(v11, &v1[v27], v8);
    sub_7631D0();
    (*(v9 + 8))(v11, v8);
    sub_763290();
    v28 = v70;
    v29 = *(v69 + 8);
    v29(v17, v70);
    v30 = *&v1[v57];
    if (v30)
    {
      v73 = sub_759210();
      v74 = &protocol witness table for UIView;
      *&v72 = v30;
      sub_10914(&v72, v81);
    }

    else
    {
      v43 = *&v1[v22];
      if (v43)
      {
        v44 = type metadata accessor for IconArtworkGridView();
        v45 = &protocol witness table for UIView;
      }

      else
      {
        v44 = 0;
        v45 = 0;
        v81[1] = 0;
        v81[2] = 0;
      }

      v81[0] = v43;
      v82 = v44;
      v83 = v45;
      v46 = v43;
      v30 = 0;
    }

    v47 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel];
    v79 = sub_75BB20();
    v80 = &protocol witness table for UIView;
    v78[0] = v47;
    v48 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel];
    v76 = v79;
    v77 = &protocol witness table for UILabel;
    v75[0] = v48;
    v49 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton];
    v71[3] = sub_BE70(0, &qword_960F00, UIButton_ptr);
    v71[4] = &protocol witness table for UIView;
    v71[0] = v49;
    v50 = v30;
    v51 = v47;
    v52 = v48;
    v53 = v49;
    v54 = v68;
    sub_1942C(v68, v81, v78, v75, v71, &v72);
    v29(v54, v28);
    sub_10A2C(v81, &unk_943B10, &qword_77E080);
    sub_BEB8(v71);
    sub_BEB8(v75);
    sub_BEB8(v78);
    sub_B170(&v72, v73);
    v55 = v62;
    sub_7672C0();
    (*(v65 + 8))(v55, v66);
    sub_10A2C(&v84, &unk_941EB0, &unk_7814A0);
    sub_BEB8(&v72);
  }

  else
  {
    v31 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration;
    swift_beginAccess();
    (*(v9 + 16))(v11, &v1[v31], v8);
    sub_7631D0();
    (*(v9 + 8))(v11, v8);
    sub_763290();
    (*(v69 + 8))(v14, v70);
    sub_1ED18(&v84, &v72, &unk_941EB0, &unk_7814A0);
    v32 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel];
    v82 = sub_75BB20();
    v83 = &protocol witness table for UILabel;
    v81[0] = v32;
    v33 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel];
    v79 = v82;
    v80 = &protocol witness table for UILabel;
    v78[0] = v33;
    v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton];
    v76 = sub_BE70(0, &qword_960F00, UIButton_ptr);
    v77 = &protocol witness table for UIButton;
    v75[0] = v34;
    v35 = v32;
    v36 = v33;
    v37 = v34;
    v38 = v58;
    sub_7632C0();
    v39 = [v1 traitCollection];
    sub_1ED80(&qword_93F3D0, &type metadata accessor for CondensedSearchResultCardLayout, &protocol conformance descriptor for CondensedSearchResultCardLayout);
    v41 = v60;
    v40 = v61;
    sub_766730();
    swift_getOpaqueTypeConformance2();
    v42 = v64;
    sub_7673E0();

    (*(v63 + 8))(v40, v42);
    (*(v59 + 8))(v38, v41);
    sub_10A2C(&v84, &unk_941EB0, &unk_7814A0);
  }
}

uint64_t sub_1942C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v86 = a5;
  v83 = a4;
  v110 = a3;
  v87 = a6;
  v91 = sub_766E60();
  v97 = *(v91 - 8);
  __chkstk_darwin(v91 - 8);
  v9 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_766E50();
  v10 = *(v113 - 8);
  __chkstk_darwin(v113);
  v89 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_766E00();
  v115 = *(v12 - 8);
  __chkstk_darwin(v12);
  *&v114 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v81 - v15;
  v93 = sub_766E90();
  v17 = *(v93 - 8);
  __chkstk_darwin(v93);
  v85 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v112 = v81 - v20;
  __chkstk_darwin(v21);
  v111 = v81 - v22;
  __chkstk_darwin(v23);
  v109 = v81 - v24;
  __chkstk_darwin(v25);
  v27 = v81 - v26;
  v123 = _swiftEmptyArrayStorage;
  sub_1ED18(a2, &v119, &unk_943B10, &qword_77E080);
  v90 = a1;
  v92 = v17;
  v84 = v16;
  v88 = v12;
  if (*(&v120 + 1))
  {
    sub_10914(&v119, v122);
    sub_763240();
    sub_763260();
    (*(v115 + 104))(v16, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v12);
    sub_BD88(&unk_960ED0, &qword_784ED0);
    v28 = v89;
    v29 = v10;
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_77DC20;
    sub_766E40();
    sub_766E20();
    v31 = v97;
    v32 = v91;
    sub_766E30();
    v116 = v30;
    sub_1ED80(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
    sub_BD88(&unk_960EE0, &unk_77E260);
    sub_1EDC8();
    sub_76A5A0();
    (v31[13])(v9, enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:), v32);
    sub_766E80();
    v33 = v31;
    v10 = v29;
    v12 = v88;
    v34 = v33[1];
    v108 = v9;
    v34(v9, v32);
    (*(v10 + 8))(v28, v113);
    (*(v115 + 8))(v16, v12);
    sub_10A2C(v117, &unk_93F9C0, &qword_77EDB0);
    sub_BEB8(&v119);
    v35 = v92;
    v36 = v109;
    v37 = v93;
    (*(v92 + 16))(v109, v27, v93);
    v38 = sub_7AC70(0, 1, 1, _swiftEmptyArrayStorage);
    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = sub_7AC70((v39 > 1), v40 + 1, 1, v38);
    }

    (*(v35 + 8))(v27, v37);
    sub_BEB8(v122);
    *(v38 + 2) = v40 + 1;
    (*(v35 + 32))(v38 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v40, v36, v37);
    v123 = v38;
    v9 = v108;
  }

  else
  {
    sub_10A2C(&v119, &unk_943B10, &qword_77E080);
  }

  sub_763230();
  v121 = 0;
  v119 = 0u;
  v120 = 0u;
  sub_134D8(v110, v117);
  sub_BD88(&unk_9418A0, &qword_780FF0);
  sub_BD88(&unk_941890, &unk_77E250);
  v41 = v9;
  if (swift_dynamicCast())
  {
    sub_BEB8(&v116);
    v42 = *(v115 + 104);
    v108 = (v115 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v43 = v114;
    v82 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
    v109 = v42;
    (v42)(v114);
  }

  else
  {
    v44 = *(v115 + 104);
    v108 = (v115 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v43 = v114;
    v109 = v44;
    (v44)(v114, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v12);
    v82 = enum case for VerticalFlowLayout.VerticalPlacement.firstBaseline(_:);
  }

  v45 = v12;
  v107 = sub_BD88(&unk_960ED0, &qword_784ED0);
  v46 = *(v10 + 72);
  v106 = *(v10 + 80);
  v81[1] = (v106 + 32) & ~v106;
  v105 = 3 * v46;
  v104 = 2 * v46;
  v103 = v46;
  v47 = swift_allocObject();
  v114 = xmmword_77DC20;
  *(v47 + 16) = xmmword_77DC20;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  *&v117[0] = v47;
  v94 = sub_1ED80(&qword_93F448, &type metadata accessor for VerticalFlowLayout.ExclusionCondition, &protocol conformance descriptor for VerticalFlowLayout.ExclusionCondition);
  v102 = sub_BD88(&unk_960EE0, &unk_77E260);
  v101 = sub_1EDC8();
  v48 = v89;
  v49 = v10;
  v50 = v113;
  sub_76A5A0();
  v100 = enum case for VerticalFlowLayout.HorizontalPlacement.leading(_:);
  v51 = v97;
  v52 = v97[13];
  v98 = (v97 + 13);
  v99 = v52;
  v53 = v91;
  v52(v41);
  sub_766E80();
  v110 = v51[1];
  v110(v41, v53);
  v54 = *(v49 + 8);
  v96 = v49 + 8;
  v97 = v54;
  (v54)(v48, v50);
  v55 = *(v115 + 8);
  v115 += 8;
  v95 = v55;
  v55(v43, v45);
  sub_10A2C(&v119, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(v122);
  v56 = v83[3];
  v57 = v83[4];
  v58 = v45;
  v59 = sub_B170(v83, v56);
  v122[3] = v56;
  v122[4] = *(v57 + 8);
  v60 = sub_B1B4(v122);
  (*(*(v56 - 8) + 16))(v60, v59, v56);
  sub_763220();
  v118 = 0;
  memset(v117, 0, sizeof(v117));
  v61 = v84;
  (v109)(v84, v82, v58);
  v62 = swift_allocObject();
  *(v62 + 16) = v114;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  v116 = v62;
  sub_76A5A0();
  v99(v41, v100, v53);
  sub_766E80();
  v110(v41, v53);
  (v97)(v48, v50);
  v63 = v88;
  v95(v61, v88);
  sub_10A2C(v117, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(&v119);
  sub_BEB8(v122);
  sub_763280();
  sub_763250();
  (v109)(v61, enum case for VerticalFlowLayout.VerticalPlacement.top(_:), v63);
  v64 = swift_allocObject();
  *(v64 + 16) = v114;
  sub_766E40();
  sub_766E20();
  sub_766E30();
  *&v117[0] = v64;
  sub_76A5A0();
  v99(v41, v100, v53);
  v65 = v85;
  sub_766E80();
  v110(v41, v53);
  (v97)(v48, v50);
  v95(v61, v63);
  sub_10A2C(&v119, &unk_93F9C0, &qword_77EDB0);
  sub_BEB8(v122);
  sub_BD88(&qword_93F458, &unk_77E270);
  v66 = v92;
  v67 = *(v92 + 72);
  v68 = (*(v92 + 80) + 32) & ~*(v92 + 80);
  v69 = 2 * v67;
  v70 = swift_allocObject();
  *(v70 + 16) = v114;
  v71 = v70 + v68;
  v72 = *(v66 + 16);
  v73 = v111;
  v74 = v93;
  v72(v71, v111, v93);
  v75 = v71 + v67;
  v76 = v112;
  v72(v75, v112, v74);
  v72(v71 + v69, v65, v74);
  sub_10A0B8(v70);
  v77 = sub_766EA0();
  v78 = v87;
  v87[3] = v77;
  v78[4] = &protocol witness table for VerticalFlowLayout;
  v78[5] = &protocol witness table for VerticalFlowLayout;
  sub_B1B4(v78);
  sub_766E70();
  v79 = *(v66 + 8);
  v79(v65, v74);
  v79(v76, v74);
  return (v79)(v73, v74);
}

Swift::Void __swiftcall CondensedEditorialSearchResultContentView.prepareForReuse()()
{
  v1 = sub_BD88(&unk_954ED0, &unk_77E060);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v12 - v3;
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel] setText:{0, v2}];
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel] setText:0];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView;
  v6 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
  if (v6)
  {
    [v6 removeFromSuperview];
    v7 = *&v0[v5];
  }

  else
  {
    v7 = 0;
  }

  *&v0[v5] = 0;

  [v0 setNeedsLayout];
  v8 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid;
  v9 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid];
  if (v9)
  {
    [v9 removeFromSuperview];
    v10 = *&v0[v8];
  }

  else
  {
    v10 = 0;
  }

  *&v0[v8] = 0;

  [v0 setNeedsLayout];
  v11 = sub_76A3F0();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  sub_76A420();
}

double sub_1A574(uint64_t a1, uint64_t a2, objc_class *a3, double a4, double a5)
{
  v70 = a3;
  v69 = sub_7664A0();
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v61 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_762D10();
  v72 = *(v64 - 8);
  __chkstk_darwin(v64);
  v62 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_766690();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_7632B0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v50 - v18;
  sub_7631D0();
  sub_7666A0();
  v60 = a1;
  sub_1C75C();
  (*(v10 + 8))(v12, v9);
  v20 = *(v14 + 8);
  v65 = v19;
  v67 = v13;
  v20(v19, v13);
  v66 = v20;
  v68 = v14 + 8;
  v21 = a2;
  sub_7631D0();
  sub_763290();
  v20(v16, v13);
  v22 = sub_7670D0();
  swift_allocObject();
  v63 = sub_7670B0();
  v55 = sub_75F2A0();
  v54 = v23;
  v24 = v61;
  v53 = v21;
  sub_7631A0();
  v59 = enum case for FontSource.useCase(_:);
  v25 = v71;
  v58 = *(v71 + 104);
  v26 = v69;
  v58(v24);
  v27 = v70;
  v28.super.isa = v70;
  sub_766490(v28);
  v29 = *(v25 + 8);
  v71 = v25 + 8;
  v57 = v29;
  v29(v24, v26);
  sub_7631C0();
  v30 = sub_7653B0();
  v77 = v30;
  v56 = sub_1ED80(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v78 = v56;
  v31 = sub_B1B4(&v76);
  v51 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v32 = *(v30 - 8);
  v50 = *(v32 + 104);
  v52 = v32 + 104;
  v50(v31);
  sub_765C30();
  sub_BEB8(&v76);
  v33 = v62;
  sub_762D00();
  sub_762CE0();
  v34 = *(v72 + 8);
  v72 += 8;
  v55 = v34;
  v35 = v64;
  v34(v33, v64);
  v60 = sub_75F300();
  v54 = v36;
  sub_7631E0();
  v37 = v69;
  (v58)(v24, v59, v69);
  v38.super.isa = v27;
  sub_766490(v38);
  v57(v24, v37);
  v39.super.isa = v27;
  sub_7631B0(v39);
  v77 = v30;
  v78 = v56;
  v40 = sub_B1B4(&v76);
  (v50)(v40, v51, v30);
  sub_765C30();
  sub_BEB8(&v76);
  sub_762D00();
  sub_762CE0();
  v55(v33, v35);
  sub_763200();
  swift_allocObject();
  v41 = sub_7670B0();
  v75[4] = &protocol witness table for LayoutViewPlaceholder;
  v75[3] = v22;
  v75[0] = v63;
  v42 = v81;
  v43 = v82;
  v44 = sub_B170(&v80, v81);
  v74[3] = v42;
  v74[4] = *(v43 + 8);
  v45 = sub_B1B4(v74);
  (*(*(v42 - 8) + 16))(v45, v44, v42);
  v73[4] = &protocol witness table for LayoutViewPlaceholder;
  v73[3] = v22;
  v73[0] = v41;

  v46 = v65;
  sub_1942C(v65, v75, v74, &v79, v73, &v76);
  sub_BEB8(v73);
  sub_BEB8(v74);
  sub_10A2C(v75, &unk_943B10, &qword_77E080);
  sub_B170(&v76, v77);
  sub_7665C0();
  v48 = v47;

  sub_BEB8(&v79);
  v66(v46, v67);
  sub_BEB8(&v76);
  sub_BEB8(&v80);
  return v48;
}

void sub_1AE34(uint64_t a1, uint64_t a2, uint64_t a3, CGFloat a4, CGFloat a5)
{
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v14[0] = _swiftEmptyArrayStorage;
    sub_76A7C0();
    v11 = a1 + 32;
    do
    {
      v11 += 16;

      sub_76A7A0();
      sub_76A7D0();
      sub_76A7E0();
      sub_76A7B0();
      --v9;
    }

    while (v9);
    v10 = v14[0];
  }

  if (qword_93C680 == -1)
  {
    if (a4 <= 0.0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = v10;
    swift_once();
    v10 = v13;
    if (a4 <= 0.0)
    {
      goto LABEL_10;
    }
  }

  if (a5 > 0.0)
  {
    __chkstk_darwin(v10);
    sub_1EBC0();
    sub_765470();

    v12 = OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_config;
    swift_beginAccess();
    sub_1EC14(v14, a2 + v12);
    swift_endAccess();
    sub_1FEEE0();
    sub_1EC70(v14);
    sub_1FF26C(a4, a5);
    return;
  }

LABEL_10:
}

void CondensedEditorialSearchResultContentView.applyData(from:asPartOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v110 = a2;
  v5 = sub_7593D0();
  v102 = *(v5 - 8);
  v103 = v5;
  __chkstk_darwin(v5);
  v101 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_766690();
  v105 = *(v7 - 8);
  v106 = v7;
  __chkstk_darwin(v7);
  v104 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_7632B0();
  v108 = *(v9 - 8);
  v109 = v9;
  __chkstk_darwin(v9);
  v114 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_761380();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v100 - v16;
  __chkstk_darwin(v18);
  v20 = &v100 - v19;
  v113 = sub_7631F0();
  v115 = *(v113 - 8);
  __chkstk_darwin(v113);
  v22 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v100 - v24;
  __chkstk_darwin(v26);
  v112 = &v100 - v27;
  sub_75F330();
  sub_1ED80(&qword_956680, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  v107 = a1;
  sub_75C750();
  if (!v116)
  {
    return;
  }

  v111 = v116;
  sub_75F2F0();
  (*(v12 + 32))(v17, v20, v11);
  v28 = (*(v12 + 88))(v17, v11);
  if (v28 == enum case for EditorialSearchResultType.category(_:))
  {
    v29 = v115;
    v30 = v113;
    (*(v115 + 104))(v25, enum case for CondensedSearchResultCardLayout.Configuration.category(_:), v113);
    goto LABEL_9;
  }

  v30 = v113;
  if (v28 == enum case for EditorialSearchResultType.story(_:))
  {
    v31 = &enum case for CondensedSearchResultCardLayout.Configuration.stories(_:);
LABEL_8:
    v29 = v115;
    (*(v115 + 104))(v25, *v31, v113);
    goto LABEL_9;
  }

  if (v28 == enum case for EditorialSearchResultType.developer(_:))
  {
    v31 = &enum case for CondensedSearchResultCardLayout.Configuration.developer(_:);
    goto LABEL_8;
  }

  v67 = *(v115 + 104);
  if (v28 == enum case for EditorialSearchResultType.appEventStory(_:))
  {
    v67(v25, enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:), v113);
  }

  else
  {
    v67(v25, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v113);
    (*(v12 + 8))(v17, v11);
  }

  v29 = v115;
LABEL_9:
  v32 = v112;
  (*(v29 + 32))(v112, v25, v30);
  sub_7631D0();
  (*(v29 + 16))(v22, v32, v30);
  v33 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration;
  swift_beginAccess();
  (*(v29 + 24))(&v3[v33], v22, v30);
  swift_endAccess();
  [v3 setNeedsLayout];
  v34 = *(v29 + 8);
  v115 = v29 + 8;
  v100 = v34;
  v34(v22, v30);
  swift_getKeyPath();
  sub_75C7B0();

  v35 = v116;
  sub_18794(v32, v116);

  v36 = sub_75F2A0();
  v38 = v37;
  sub_75F2F0();
  sub_1BD04(v36, v38, v14);

  (*(v12 + 8))(v14, v11);
  v39 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel];
  sub_75F300();
  if (v40)
  {
    v41 = sub_769210();
  }

  else
  {
    v41 = 0;
  }

  [v39 setText:v41];

  if (sub_75F2C0())
  {
    sub_764CF0();
    v42 = sub_769490();

    if (v42)
    {
      sub_75A920();
      sub_768900();
      sub_768ED0();
      sub_763210();
      v44 = v43;
      v46 = v45;
      v47 = sub_75A810();
      v48 = objc_allocWithZone(type metadata accessor for IconArtworkGridView());
      v49 = sub_1FE9F8(v47 & 1, 0.0, 0.0, v44, v46);
      v50 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid;
      v51 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid];
      if (v51)
      {
        [v51 removeFromSuperview];
        v52 = *&v3[v50];
      }

      else
      {
        v52 = 0;
      }

      *&v3[v50] = v49;
      v68 = v49;

      [v3 addSubview:v68];
      [v3 setNeedsLayout];

      sub_763210();
      v69 = &v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkSize];
      *v69 = v70;
      *(v69 + 1) = v71;
      [v3 setNeedsLayout];

      goto LABEL_30;
    }
  }

  if (sub_75F280())
  {
    sub_764BC0();

LABEL_19:

    v53 = v104;
    sub_7666A0();
    sub_1C75C();
    v55 = v54;
    v57 = v56;
    (*(v105 + 8))(v53, v106);
    v58 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, v55, v57}];
    v59 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView;
    v60 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
    if (v60)
    {
      [v60 removeFromSuperview];
      v61 = *&v3[v59];
    }

    else
    {
      v61 = 0;
    }

    *&v3[v59] = v58;
    v62 = v58;

    if (v62)
    {
      [v3 addSubview:v62];
      v64 = v101;
      v63 = v102;
      v65 = v103;
      (*(v102 + 104))(v101, enum case for CornerStyle.continuous(_:), v103);
      sub_759200();

      (*(v63 + 8))(v64, v65);
    }

    [v3 setNeedsLayout];

    v66 = &v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkSize];
    *v66 = v55;
    v66[1] = v57;
    goto LABEL_25;
  }

  if (sub_75F2B0())
  {
    goto LABEL_19;
  }

  if (!sub_75F270())
  {
    goto LABEL_30;
  }

  sub_763210();
  v89 = [objc_allocWithZone(sub_759210()) initWithFrame:{0.0, 0.0, v87, v88}];
  v90 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView;
  v91 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
  if (v91)
  {
    [v91 removeFromSuperview];
    v92 = *&v3[v90];
  }

  else
  {
    v92 = 0;
  }

  *&v3[v90] = v89;
  v93 = v89;

  if (v93)
  {
    [v3 addSubview:v93];
    v95 = v101;
    v94 = v102;
    v96 = v103;
    (*(v102 + 104))(v101, enum case for CornerStyle.continuous(_:), v103);
    sub_759200();

    (*(v94 + 8))(v95, v96);
  }

  [v3 setNeedsLayout];

  sub_763210();
  v97 = &v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkSize];
  *v97 = v98;
  *(v97 + 1) = v99;
LABEL_25:
  [v3 setNeedsLayout];
LABEL_30:
  v72 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v73 = swift_allocObject();
  swift_weakInit();
  v74 = swift_allocObject();
  *(v74 + 2) = v72;
  *(v74 + 3) = v73;
  *(v74 + 4) = v110;
  v75 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_action;
  v76 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_action];
  if (v76)
  {
    v77 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton];

    [v77 removeAction:v76 forControlEvents:4095];
    v78 = *&v3[v75];
  }

  else
  {

    v78 = 0;
  }

  *&v3[v75] = 0;

  v79 = &v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_buttonHandler];
  v80 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_buttonHandler];
  v81 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_buttonHandler + 8];
  *v79 = sub_1E678;
  v79[1] = v74;

  sub_F704(v80, v81);
  sub_BE70(0, &qword_955FA0, UIAction_ptr);

  v82 = sub_76A1F0();
  v83 = *&v3[v75];
  if (v83)
  {
    [*&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton] removeAction:v83 forControlEvents:4095];
    v84 = *&v3[v75];
  }

  else
  {
    v84 = 0;
  }

  v85 = v114;
  *&v3[v75] = v82;
  v86 = v82;

  [*&v3[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton] addAction:v86 forControlEvents:64];

  (*(v108 + 8))(v85, v109);
  v100(v112, v113);

  [v3 setNeedsLayout];
}

void sub_1BD04(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_759950();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_761380();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    (*(v13 + 16))(v16, a3, v12, v14);
    v17 = (*(v13 + 88))(v16, v12);
    if (v17 == enum case for EditorialSearchResultType.category(_:) || v17 == enum case for EditorialSearchResultType.story(_:))
    {
      v19 = &enum case for SystemImage.appstore(_:);
    }

    else
    {
      if (v17 != enum case for EditorialSearchResultType.developer(_:))
      {
        (*(v13 + 8))(v16, v12);
        v29 = objc_allocWithZone(NSMutableAttributedString);
        v30 = sub_769210();
        v31 = [v29 initWithString:v30];

        v28 = v31;
        v22 = 0;
        goto LABEL_12;
      }

      v19 = &enum case for SystemImage.personCropSquare(_:);
    }

    (*(v9 + 104))(v11, *v19, v8);
    v20 = sub_759930();
    (*(v9 + 8))(v11, v8);
    v21 = objc_opt_self();
    v22 = v20;
    v23 = [v21 textAttachmentWithImage:v22];
    v24 = [objc_opt_self() attributedStringWithAttachment:v23];
    v32[0] = 32;
    v32[1] = 0xE100000000000000;
    v33._countAndFlagsBits = a1;
    v33._object = a2;
    sub_769370(v33);
    v25 = objc_allocWithZone(NSMutableAttributedString);
    v26 = sub_769210();

    v27 = [v25 initWithString:v26];

    v28 = v27;
    [v28 insertAttributedString:v24 atIndex:0];

LABEL_12:
    [*(v4 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel) setAttributedText:v28];
  }
}

void sub_1C094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13[-v6];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    swift_beginAccess();
    if (swift_weakLoadStrong() && (v10 = sub_75F260(), , v10))
    {
      v11 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v7, 1, v11) == 1)
      {

        sub_10A2C(v7, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        sub_32A6C0(v10, 1, a4, v7);

        (*(v12 + 8))(v7, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t static CondensedEditorialSearchResultContentView.sizingForArtworkPrefetch(in:asPartOf:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_7601F0();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id CondensedEditorialSearchResultContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CondensedEditorialSearchResultContentView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1C450()
{
  v1 = v0;
  v2 = sub_7632B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_7631F0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_itemLayoutContext;
  v11 = sub_75C840();
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_headerLabel;
  sub_75BB20();
  *(v1 + v12) = sub_75BB00();
  v13 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_titleLabel;
  *(v1 + v13) = sub_75BB00();
  v14 = OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_viewButton;
  *(v1 + v14) = [objc_opt_self() buttonWithType:0];
  v15 = enum case for CondensedSearchResultCardLayout.Configuration.standard(_:);
  v16 = *(v7 + 104);
  v16(v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_configuration, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v6);
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid) = 0;
  *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_action) = 0;
  v17 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_buttonHandler);
  *v17 = 0;
  v17[1] = 0;
  v18 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkSize);
  v16(v9, v15, v6);
  sub_7631D0();
  (*(v7 + 8))(v9, v6);
  sub_763210();
  v20 = v19;
  v22 = v21;
  (*(v3 + 8))(v5, v2);
  *v18 = v20;
  v18[1] = v22;
  sub_76A840();
  __break(1u);
}

void sub_1C75C()
{
  v0 = sub_76A920();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_766690();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_75F280())
  {
    sub_764BC0();

    sub_765260();
    sub_7666A0();
    sub_763210();
    sub_766650();
    sub_763210();
    sub_766650();
    sub_763210();
    (*(v1 + 104))(v3, enum case for FloatingPointRoundingRule.up(_:), v0);
    sub_769D80();

    (*(v1 + 8))(v3, v0);
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    sub_763210();
  }
}

double sub_1C998(uint64_t a1, uint64_t a2, objc_class *a3, double a4, double a5)
{
  v95 = a3;
  v97 = a1;
  v86 = sub_BD88(&qword_93F3C8, &unk_77E070);
  v87 = *(v86 - 8);
  __chkstk_darwin(v86);
  v84 = &v69 - v6;
  v83 = sub_7632D0();
  v85 = *(v83 - 8);
  __chkstk_darwin(v83);
  v82 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_766D70();
  v81 = *(v80 - 8);
  __chkstk_darwin(v80);
  v94 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v91 = &v69 - v10;
  v92 = sub_7666D0();
  v96 = *(v92 - 8);
  __chkstk_darwin(v92);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_767030();
  v74 = *(v88 - 8);
  __chkstk_darwin(v88);
  v77 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v69 - v15;
  __chkstk_darwin(v17);
  v89 = &v69 - v18;
  __chkstk_darwin(v19);
  v93 = &v69 - v20;
  v21 = sub_766690();
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_7632B0();
  v75 = *(v25 - 8);
  v26 = v75;
  __chkstk_darwin(v25);
  v28 = &v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v69 - v30;
  sub_7631D0();
  sub_7666A0();
  sub_1C75C();
  v33 = v32;
  v35 = v34;
  (*(v22 + 8))(v24, v21);
  v36 = *(v26 + 8);
  v73 = v31;
  v72 = v25;
  v36(v31, v25);
  v78 = v36;
  v79 = v26 + 8;
  v71 = v28;
  sub_7631D0();
  sub_763290();
  v36(v28, v25);
  sub_767020();
  v69 = a2;
  sub_7631A0();
  v37 = v89;
  sub_766FF0();
  v38 = *(v96 + 8);
  v96 += 8;
  v70 = v38;
  v38(v12, v92);
  v39 = v74;
  v40 = v74 + 8;
  v41 = *(v74 + 8);
  v42 = v88;
  v41(v16, v88);
  v90 = v40;
  sub_7631C0();
  v43 = v93;
  sub_767010();
  v44 = v42;
  v41(v37, v42);
  sub_75F2A0();
  v74 = *(v39 + 16);
  (v74)(v37, v43, v42);
  sub_766D50();
  v45 = v91;
  v46 = v37;
  sub_766D90();
  v47 = v77;
  sub_767020();
  sub_7631E0();
  sub_766FF0();
  v70(v12, v92);
  v76 = v41;
  v41(v47, v44);
  v48.super.isa = v95;
  sub_7631B0(v48);
  sub_767010();
  v41(v16, v44);
  sub_75F300();
  (v74)(v16, v46, v44);
  sub_766D50();
  v49 = v94;
  sub_766D90();
  v50 = v73;
  v51 = v72;
  (*(v75 + 16))(v71, v73, v72);
  v102[8] = &type metadata for FixedSizedPlaceholder;
  v102[9] = sub_1ECC4();
  v102[5] = v33;
  v102[6] = v35;
  v52 = v80;
  v102[3] = v80;
  v102[4] = &protocol witness table for LabelPlaceholder;
  v53 = sub_B1B4(v102);
  v54 = v81;
  v55 = *(v81 + 16);
  v55(v53, v45, v52);
  v101[3] = v52;
  v101[4] = &protocol witness table for LabelPlaceholder;
  v56 = sub_B1B4(v101);
  v55(v56, v49, v52);
  v57 = sub_75AB90();
  swift_allocObject();
  v58 = sub_75AB80();
  v99 = v57;
  v100 = sub_1ED80(&qword_93F440, &type metadata accessor for EmptyPlaceable, &protocol conformance descriptor for EmptyPlaceable);
  v98 = v58;
  v59 = v82;
  sub_7632C0();
  sub_1ED80(&qword_93F3D0, &type metadata accessor for CondensedSearchResultCardLayout, &protocol conformance descriptor for CondensedSearchResultCardLayout);
  v60 = v84;
  v61 = v83;
  sub_766730();
  swift_getOpaqueTypeConformance2();
  v62 = v86;
  sub_7673F0();
  v64 = v63;
  (*(v87 + 8))(v60, v62);
  (*(v85 + 8))(v59, v61);
  v65 = *(v54 + 8);
  v65(v94, v52);
  v66 = v88;
  v67 = v76;
  v76(v89, v88);
  v65(v91, v52);
  v67(v93, v66);
  v78(v50, v51);
  return v64;
}

double _s18ASMessagesProvider41CondensedEditorialSearchResultContentViewC6height2in8asPartOf12CoreGraphics7CGFloatV11AppStoreKit17ItemLayoutContextV_9JetEngine15BaseObjectGraphCtFZ_0()
{
  v0 = sub_761380();
  v34 = *(v0 - 8);
  __chkstk_darwin(v0);
  v2 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v33 - v4;
  v38 = sub_7631F0();
  v6 = *(v38 - 8);
  __chkstk_darwin(v38);
  v36 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v33 - v9;
  v11 = sub_75DAB0();
  __chkstk_darwin(v11 - 8);
  v37 = sub_7656C0();
  v35 = *(v37 - 8);
  __chkstk_darwin(v37);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75F330();
  sub_1ED80(&qword_956680, &type metadata accessor for EditorialSearchResult, &protocol conformance descriptor for SearchResult);
  sub_75C750();
  v14 = v39;
  if (!v39)
  {
    return 0.0;
  }

  v33 = v10;
  sub_75C720();
  if (qword_93D050 != -1)
  {
    swift_once();
  }

  sub_765660();
  sub_75F2F0();
  v15 = v34;
  (*(v34 + 32))(v2, v5, v0);
  v16 = (*(v15 + 88))(v2, v0);
  if (v16 == enum case for EditorialSearchResultType.category(_:))
  {
    v17 = v36;
    v18 = v38;
    (*(v6 + 104))(v36, enum case for CondensedSearchResultCardLayout.Configuration.category(_:), v38);
    v19 = v33;
  }

  else
  {
    v17 = v36;
    if (v16 == enum case for EditorialSearchResultType.story(_:))
    {
      v18 = v38;
      (*(v6 + 104))(v36, enum case for CondensedSearchResultCardLayout.Configuration.stories(_:), v38);
      v19 = v33;
    }

    else
    {
      v19 = v33;
      if (v16 == enum case for EditorialSearchResultType.developer(_:))
      {
        v21 = enum case for CondensedSearchResultCardLayout.Configuration.developer(_:);
        v22 = *(v6 + 104);
      }

      else
      {
        v22 = *(v6 + 104);
        if (v16 != enum case for EditorialSearchResultType.appEventStory(_:))
        {
          v18 = v38;
          v22(v36, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v38);
          (*(v15 + 8))(v2, v0);
          goto LABEL_15;
        }

        v21 = enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:);
      }

      v18 = v38;
      v22(v36, v21, v38);
    }
  }

LABEL_15:
  (*(v6 + 32))(v19, v17, v18);
  swift_getKeyPath();
  sub_75C7B0();

  v23 = v39;
  sub_765630();
  v25 = v24;
  v27 = v26;
  v28 = sub_769A00();
  v29 = (v6 + 8);
  v30 = (v35 + 8);
  if (v28)
  {
    v31 = sub_1A574(v14, v19, v23, v25, v27);
  }

  else
  {
    v31 = sub_1C998(v14, v19, v23, v25, v27);
  }

  v20 = v31;

  (*v29)(v19, v18);
  (*v30)(v13, v37);
  return v20;
}

uint64_t _s18ASMessagesProvider41CondensedEditorialSearchResultContentViewC5fetch3for2in2on8asPartOfy11AppStoreKit27ManagedArtworkModelProtocol_p_So6CGRectVAI0T6LoaderC9JetEngine15BaseObjectGraphCtF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v78 = a2;
  v5 = sub_7652D0();
  __chkstk_darwin(v5 - 8);
  v69 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_765240();
  v71 = *(v72 - 8);
  __chkstk_darwin(v72);
  v70 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_766690();
  v75 = *(v8 - 8);
  v76 = v8;
  __chkstk_darwin(v8);
  v74 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_7632B0();
  v10 = *(v79 - 8);
  __chkstk_darwin(v79);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v65 - v14;
  v16 = sub_761380();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v77 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v65 - v20;
  __chkstk_darwin(v22);
  v24 = &v65 - v23;
  v25 = sub_7631F0();
  v26 = *(v25 - 8);
  v82 = v25;
  v83 = v26;
  __chkstk_darwin(v25);
  v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v81 = &v65 - v30;
  sub_134D8(a1, v85);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_75F330();
  result = swift_dynamicCast();
  if (result)
  {
    v67 = v3;
    v80 = v15;
    sub_75F2F0();
    (*(v17 + 32))(v21, v24, v16);
    v66 = *(v17 + 88);
    v32 = v66(v21, v16);
    v65 = v17;
    if (v32 == enum case for EditorialSearchResultType.category(_:))
    {
      v33 = enum case for CondensedSearchResultCardLayout.Configuration.category(_:);
      v35 = v82;
      v34 = v83;
    }

    else
    {
      v35 = v82;
      if (v32 == enum case for EditorialSearchResultType.story(_:))
      {
        v36 = &enum case for CondensedSearchResultCardLayout.Configuration.stories(_:);
      }

      else
      {
        if (v32 != enum case for EditorialSearchResultType.developer(_:))
        {
          v64 = *(v83 + 104);
          if (v32 == enum case for EditorialSearchResultType.appEventStory(_:))
          {
            v64(v28, enum case for CondensedSearchResultCardLayout.Configuration.appEvent(_:), v82);
          }

          else
          {
            v64(v28, enum case for CondensedSearchResultCardLayout.Configuration.standard(_:), v82);
            (*(v17 + 8))(v21, v16);
          }

          v34 = v83;
LABEL_10:
          (*(v34 + 32))(v81, v28, v35);
          sub_7631D0();
          sub_7631D0();
          sub_763210();
          v38 = v37;
          v40 = v39;
          v41 = *(v10 + 8);
          v42 = v79;
          v68 = v10 + 8;
          v41(v12, v79);
          v43 = v41;
          v44 = sub_75F2C0();
          v45 = v67;
          if (v44)
          {
            v46 = *&v67[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid];
            if (v46)
            {
              sub_75D310();
              v47 = v46;
              sub_7688F0();
              if (v85[0])
              {
                v48 = swift_allocObject();
                v49 = v78;
                v48[2] = v47;
                v48[3] = v49;
                v48[4] = v38;
                v48[5] = v40;
                v50 = swift_allocObject();
                v50[2] = v47;
                v50[3] = v49;
                v50[4] = v38;
                v50[5] = v40;
                v85[0] = v45;
                type metadata accessor for CondensedEditorialSearchResultContentView(0);
                v77 = v41;
                sub_1ED80(&qword_93F430, type metadata accessor for CondensedEditorialSearchResultContentView, &protocol conformance descriptor for NSObject);
                v51 = v47;
                swift_retain_n();
                v52 = v51;
                v53 = v45;
                sub_76A6E0();
                sub_75D2E0();

                sub_10A2C(v84, &unk_9443A0, &unk_77E240);
                sub_1EB60(v85);
                (v77)(v80, v79);
                return (*(v83 + 8))(v81, v82);
              }
            }

            else
            {
            }
          }

          if (sub_75F280())
          {
            sub_764BC0();
          }

          else if (!sub_75F2B0())
          {
            goto LABEL_24;
          }

          v54 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
          if (v54)
          {
            v55 = v54;
            v56 = v74;
            sub_7666A0();
            sub_1C75C();
            (*(v75 + 8))(v56, v76);
            [v55 setContentMode:0];
            v57 = v77;
            sub_75F2F0();
            v58 = v66(v57, v16);
            if (v58 != enum case for EditorialSearchResultType.developer(_:) && v58 != enum case for EditorialSearchResultType.appEventStory(_:))
            {
              v59 = v70;
              sub_765250();
              sub_765210();
              (*(v71 + 8))(v59, v72);
              (*(v65 + 8))(v77, v16);
            }

            sub_765330();
            sub_759210();
            sub_1ED80(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
            sub_75A050();

            v43(v80, v42);
            return (*(v83 + 8))(v81, v82);
          }

LABEL_24:
          if (sub_75F270())
          {
            v60 = *&v45[OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView];
            v61 = v80;
            if (v60)
            {
              v62 = v60;
              sub_763210();
              v63 = v70;
              sub_765250();
              sub_765210();
              (*(v71 + 8))(v63, v72);
              sub_765330();
              sub_7652E0();
              sub_7591B0();
              [v62 setContentMode:sub_765140()];
              sub_75DEF0();
              sub_7591F0();
              if (!sub_7651A0())
              {
                sub_BE70(0, &qword_93E540, UIColor_ptr);
                sub_76A030();
              }

              sub_759070();
              sub_759210();
              sub_1ED80(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
              sub_75A050();
            }

            v41(v61, v42);
          }

          else
          {

            v41(v80, v42);
          }

          return (*(v83 + 8))(v81, v82);
        }

        v36 = &enum case for CondensedSearchResultCardLayout.Configuration.developer(_:);
      }

      v33 = *v36;
      v34 = v83;
    }

    (*(v34 + 104))(v28, v33, v35);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1E594@<X0>(uint64_t *a1@<X8>)
{
  result = sub_75DA30();
  *a1 = result;
  return result;
}

uint64_t sub_1E5C0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1E5F8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1E630()
{

  return _swift_deallocObject(v0, 40, 7);
}

void _s18ASMessagesProvider41CondensedEditorialSearchResultContentViewC20cancelArtworkFetches2on8asPartOf014deprioritizingK0y11AppStoreKit0J6LoaderC_9JetEngine15BaseObjectGraphCSbtF_0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_iconGrid);
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider19IconArtworkGridView_iconViews];
    if (v3 >> 62)
    {
      v4 = sub_76A860();
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
      if (!v4)
      {
        goto LABEL_11;
      }
    }

    if (v4 < 1)
    {
      __break(1u);
      return;
    }

    v5 = v2;

    v6 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = sub_76A770();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      sub_759210();
      sub_1ED80(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A0C0();
    }

    while (v4 != v6);
  }

LABEL_11:
  v9 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider41CondensedEditorialSearchResultContentView_artworkView);
  if (v9)
  {
    v10 = v9;
    v11 = v10;
    v12 = v10;
    v14.value.super.isa = 0;
    v14.is_nil = 0;
    sub_7591D0(v14, v11);
    sub_759210();
    sub_1ED80(&qword_945810, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
    sub_75A0C0();
  }
}

uint64_t sub_1E898(uint64_t a1)
{
  *(a1 + 24) = sub_1ED80(&qword_93F3D8, type metadata accessor for CondensedEditorialSearchResultContentView, &protocol conformance descriptor for CondensedEditorialSearchResultContentView);
  result = sub_1ED80(&qword_93F3E0, type metadata accessor for CondensedEditorialSearchResultContentView, &protocol conformance descriptor for CondensedEditorialSearchResultContentView);
  *(a1 + 32) = result;
  return result;
}

void sub_1E96C(uint64_t a1)
{
  sub_1EA64(319);
  if (v1 <= 0x3F)
  {
    sub_7631F0();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1EA64(uint64_t a1)
{
  if (!qword_940840)
  {
    sub_75C840();
    v1 = sub_76A480();
    if (!v2)
    {
      atomic_store(v1, &qword_940840);
    }
  }
}

unint64_t sub_1EABC()
{
  result = qword_9562B0;
  if (!qword_9562B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_9562B0);
  }

  return result;
}

uint64_t sub_1EB20()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_1EBC0()
{
  result = qword_93F438;
  if (!qword_93F438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F438);
  }

  return result;
}

unint64_t sub_1ECC4()
{
  result = qword_956280;
  if (!qword_956280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_956280);
  }

  return result;
}

uint64_t sub_1ED18(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_BD88(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1ED80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1EDC8()
{
  result = qword_93F450;
  if (!qword_93F450)
  {
    sub_133D8(&unk_960EE0, &unk_77E260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F450);
  }

  return result;
}

unint64_t sub_1EE48()
{
  result = qword_93F478;
  if (!qword_93F478)
  {
    sub_75A5D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F478);
  }

  return result;
}

uint64_t sub_1EEA0()
{
  v0 = sub_768FD0();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_768FF0();
  sub_161DC(v4, qword_93F460);
  sub_BE38(v4, qword_93F460);
  if (qword_93DEE8 != -1)
  {
    swift_once();
  }

  v5 = sub_BE38(v0, qword_9A03E8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_768FE0();
}

uint64_t sub_1EFF4(id *a1, void *a2, uint64_t a3)
{
  v5 = *a1;
  [*a1 setActive:0];
  sub_BD88(&qword_93F488, qword_77E320);
  v6 = [a2 ams_saveAccount:v5 verifyCredentials:0];
  sub_768F80();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1F7DC;
  *(v7 + 24) = a3;
  v8 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  swift_retain_n();
  v10[3] = v8;
  v10[4] = &protocol witness table for OS_dispatch_queue;
  v10[0] = sub_769970();
  sub_768F10();

  return sub_BEB8(v10);
}

uint64_t sub_1F148()
{
  v0 = sub_7687C0();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for ActionOutcome.performed(_:), v0, v2);
  sub_768F60();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1F234(uint64_t a1)
{
  if (qword_93C180 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_93F460);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_B1B4(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_7685C0();
  sub_BDD0(v5);
  sub_768EA0();

  return sub_768F50();
}

uint64_t sub_1F40C(uint64_t a1)
{
  if (qword_93C180 != -1)
  {
    swift_once();
  }

  v1 = sub_768FF0();
  sub_BE38(v1, qword_93F460);
  sub_BD88(&qword_93FD00, &unk_77DF10);
  sub_7685F0();
  *(swift_allocObject() + 16) = xmmword_77E280;
  sub_768540();
  swift_getErrorValue();
  v5[3] = v4;
  v2 = sub_B1B4(v5);
  (*(*(v4 - 8) + 16))(v2);
  sub_7685C0();
  sub_BDD0(v5);
  sub_768EA0();

  return sub_768F50();
}

uint64_t sub_1F5EC(uint64_t a1)
{
  sub_BD88(&qword_94DDC0, qword_77DE00);
  v1 = sub_768F90();
  sub_BE70(0, &qword_959CF0, ACAccountStore_ptr);
  sub_768900();
  sub_768ED0();
  v2 = v8[0];
  sub_BD88(&qword_93F480, &qword_77E318);
  v3 = [v8[0] ams_activeiTunesAccountForMediaType:AMSAccountMediaTypeProduction];
  sub_768F70();
  v4 = swift_allocObject();
  *(v4 + 16) = v8[0];
  *(v4 + 24) = v1;
  v5 = sub_BE70(0, &qword_940340, OS_dispatch_queue_ptr);
  swift_retain_n();
  v6 = v2;
  v8[3] = v5;
  v8[4] = &protocol witness table for OS_dispatch_queue;
  v8[0] = sub_769970();
  sub_768F10();

  sub_BEB8(v8);
  return v1;
}

uint64_t sub_1F78C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F7E4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1F830(unint64_t a1, unint64_t a2)
{
  v4 = sub_761C80();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_7653B0();
  v32[3] = v8;
  v32[4] = sub_241D0(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v9 = sub_B1B4(v32);
  (*(*(v8 - 8) + 104))(v9, enum case for Feature.search_tags(_:), v8);
  LOBYTE(v8) = sub_765C30();
  sub_BEB8(v32);
  if (v8)
  {
    a2 = a1;
  }

  if (a2)
  {
    sub_75D7C0();
    if (sub_769490())
    {
      v10 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)); i; i = sub_76A860())
      {
        v12 = 0;
        v31 = a2 & 0xC000000000000001;
        v13 = (v5 + 88);
        v29 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v30 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v27 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v28 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v25 = enum case for MetadataRibbonItemViewType.divider(_:);
        v26 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v14 = (v5 + 8);
        v15 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v24 = v10;
        while (v31)
        {
          v5 = sub_76A770();
          v10 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            goto LABEL_38;
          }

LABEL_11:
          sub_75D750();

          v16 = (*v13)(v7, v4);
          v17 = v16 == v30 || v16 == v29;
          v22 = v17 || v16 == v28 || v16 == v27 || v16 == v26 || v16 == v25 || v16 == v15;
          v5 = v22;
          if (!v22)
          {
            (*v14)(v7, v4);
            ++v12;
            v17 = v10 == i;
            v10 = v24;
            if (!v17)
            {
              continue;
            }
          }

          return v5;
        }

        if (v12 >= *(v10 + 16))
        {
          goto LABEL_39;
        }

        v5 = *(a2 + 8 * v12 + 32);

        v10 = v12 + 1;
        if (!__OFADD__(v12, 1))
        {
          goto LABEL_11;
        }

LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }
    }
  }

  return 0;
}

uint64_t sub_1FB30()
{
  if (qword_93DCE0 != -1)
  {
    swift_once();
  }

  v0 = sub_766CA0();
  v1 = sub_BE38(v0, qword_99FDE8);
  qword_999F30 = v0;
  unk_999F38 = &protocol witness table for StaticDimension;
  v2 = sub_B1B4(qword_999F18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v2, v1, v0);
}

char *sub_1FBEC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView;
  *&v4[v9] = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v10 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView;
  *&v4[v10] = [objc_allocWithZone(type metadata accessor for AppEventView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v11 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *&v4[v11] = [objc_allocWithZone(UITapGestureRecognizer) init];
  v12 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventViewTappedAction];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsCalculator] = 0;
  v13 = &v4[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsUpdateBlock];
  v14 = type metadata accessor for AppEventSearchResultContentView();
  *v13 = 0;
  *(v13 + 1) = 0;
  v23.receiver = v4;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v19 = v15;
  [v19 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v19 addSubview:*&v19[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView]];
  v20 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView;
  [v19 addSubview:*&v19[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView]];
  v21 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  [*&v19[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventTapGestureRecognizer] addTarget:v19 action:"handleTapWithGestureRecognizer:"];
  [*&v19[v21] setDelegate:v19];
  [*&v19[v20] addGestureRecognizer:*&v19[v21]];

  return v19;
}

id sub_1FE18()
{
  [*&v0[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventTapGestureRecognizer] removeTarget:v0 action:0];
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppEventSearchResultContentView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1FF68()
{
  v1 = v0;
  v2 = type metadata accessor for AppEventCardLayout(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v39.receiver - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v39 - v7;
  v9 = type metadata accessor for AppEventSearchResultContentView();
  v39.receiver = v0;
  v39.super_class = v9;
  objc_msgSendSuper2(&v39, "layoutSubviews");
  sub_75D650();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = *&v0[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView];
  sub_12EE70();
  sub_769D20();
  v19 = &selRef_setSpeed_;
  [v18 setFrame:?];
  v20 = MetadataRibbonView.hasContent.getter();
  if (v20 & 1) != 0 || (sub_EC48(v20, v21))
  {
    sub_763F60();
    v22 = [v0 traitCollection];
    sub_7671D0();
    v23 = v6;
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_77D9F0;
    *(v24 + 32) = v22;
    v25 = v22;
    v19 = &selRef_setSpeed_;
    v26 = sub_7671E0();
    sub_24128();
    sub_7666E0();
    v28 = v27;

    (*(v23 + 8))(v8, v5);
  }

  else
  {
    if (qword_93C188 != -1)
    {
      swift_once();
    }

    sub_B170(qword_999F18, qword_999F30);
    v29 = [v0 traitCollection];
    sub_766710();
    v28 = v30;
  }

  v40.origin.x = v11;
  v40.origin.y = v13;
  v40.size.width = v15;
  v40.size.height = v17;
  CGRectGetMinX(v40);
  [v18 frame];
  MaxY = CGRectGetMaxY(v41);
  v42.origin.x = v11;
  v42.origin.y = v13;
  v42.size.width = v15;
  v42.size.height = v17;
  Width = CGRectGetWidth(v42);
  v43.origin.x = v11;
  v43.origin.y = v13;
  v43.size.width = v15;
  v43.size.height = v17;
  v33 = CGRectGetMaxY(v43);
  v34 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView];
  if (qword_93C808 != -1)
  {
    v38 = v33;
    swift_once();
    v33 = v38;
  }

  v35 = v33 - (v28 + MaxY);
  sub_634BB8(&unk_99BE98, v34, Width, v35);
  v36 = *&v34[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView];
  sub_17BC9C(v4);
  sub_5CB710(v36, v4, Width, v35);
  sub_2467C(v4);
  [v1 bounds];
  sub_769D20();
  return [v34 v19[478]];
}

void sub_204F4(void *a1)
{
  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_241D0(&qword_93F500, 255, type metadata accessor for VideoView, &unk_77FEB0);
    v5 = [v4 superview];
    if (!v5)
    {
LABEL_6:

      goto LABEL_7;
    }

    v6 = v5;
    v7 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView];
    sub_BE70(0, &qword_93E550, UIView_ptr);
    v8 = v7;
    v9 = sub_76A1C0();

    if (v9)
    {
      v10 = swift_unknownObjectWeakLoadStrong();
      if (v10)
      {
        v4 = v10;
        [v10 removeFromSuperview];
        goto LABEL_6;
      }
    }
  }

LABEL_7:
  swift_unknownObjectWeakAssign();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    [*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v11 aboveSubview:*&v2[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v2 setNeedsLayout];
  }
}

void (*sub_206A4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView;
  a1[1] = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView);
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_20718;
}

void sub_20718(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if (a2)
  {
    v6 = v4;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [*&v5[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:Strong aboveSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
      [v5 setNeedsLayout];
    }

    v10 = v6;
  }

  else
  {
    v10 = v4;
    sub_17D2EC();
    swift_unknownObjectWeakAssign();
    v9 = swift_unknownObjectWeakLoadStrong();
    if (!v9)
    {
      goto LABEL_8;
    }

    v6 = v9;
    [*&v5[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView] insertSubview:v9 aboveSubview:*&v5[OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView]];
    [v5 setNeedsLayout];
  }

LABEL_8:
}

id sub_2085C()
{
  sub_12F484();
  v1 = *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView);
  sub_26E5C0();
  v2 = OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView;
  sub_17CC38();
  v3 = &v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_initialLongPressLocation];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_longPressGestureRecognizer] setEnabled:1];
  v4 = *&v1[v2];

  return [v1 addSubview:v4];
}

void *sub_20968(uint64_t a1, char *a2)
{
  v3 = v2;
  swift_getObjectType();
  v5 = sub_BD88(&unk_93F620, &unk_77E220);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_7656C0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7583C0();
  sub_241D0(&qword_93F5B0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_75C750();
  v13 = v26;
  if (v26)
  {
    static SearchPageGridBreakpointOverridable.pageGridWithSearchOverrides(for:)();
    sub_765560();
    v14 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView];
    *&v14[OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_regularWidthColumnSpacing] = v15;
    [v14 setNeedsLayout];
    v16 = sub_7583B0();
    v25 = v8;
    v17 = v16;
    v18 = sub_75C840();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    sub_223E1C(v17, v7, a2);

    sub_10A2C(v7, &unk_93F620, &unk_77E220);
    v19 = sub_7583A0();
    sub_527DE4();
    sub_650D38(v19, a2);

    swift_unknownObjectRelease();
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = swift_allocObject();
    *(v21 + 2) = v20;
    *(v21 + 3) = v13;
    *(v21 + 4) = a2;
    v22 = &v3[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventViewTappedAction];
    v23 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventViewTappedAction];
    v24 = *&v3[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventViewTappedAction + 8];
    *v22 = sub_24670;
    v22[1] = v21;

    sub_F704(v23, v24);

    [v3 setNeedsLayout];

    return (*(v9 + 8))(v11, v25);
  }

  return result;
}

void sub_20CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = v13 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_7583A0();
    v9 = sub_758780();

    if (v9)
    {
      v13[4] = type metadata accessor for AppEventSearchResultContentView();
      v13[1] = v8;

      v10 = v8;
      sub_764C00();

      v11 = sub_BD88(&unk_93F630, &unk_77E230);
      sub_768860();
      v12 = *(v11 - 8);
      if ((*(v12 + 48))(v6, 1, v11) == 1)
      {

        sub_10A2C(v6, &unk_93F980, &qword_77EDA0);
      }

      else
      {
        sub_32A6C0(v9, 1, a3, v6);

        (*(v12 + 8))(v6, v11);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_20EB4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  if (*(v1 + v3))
  {

    sub_75F4E0();
  }

  *(v1 + v3) = 0;

  v4 = (v1 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  sub_F704(v5, v6);
  return sub_12F734(a1);
}

uint64_t (*sub_20FB8(uint64_t **a1))()
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
  v2[4] = sub_206A4(v2);
  return sub_21028;
}

double sub_21064()
{
  [*(*(*v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView) frame];
  CGRectGetMaxY(v2);
  type metadata accessor for AppEventView(0);
  sub_75D650();
  CGRectGetHeight(v3);
  sub_75D650();
  CGRectGetWidth(v4);
  return 0.0;
}

CGFloat sub_210F0()
{
  v1 = *(*v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView);
  [*&v1[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_formattedDateView] frame];
  CGRectGetMaxY(v3);
  type metadata accessor for AppEventView(0);
  sub_75D650();
  CGRectGetHeight(v4);
  [v1 bounds];
  return CGRectGetWidth(v5) * 0.5;
}

double sub_21180()
{
  swift_beginAccess();

  return result;
}

double sub_211C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsCalculator;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_21280()
{
  v1 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v2 = *v1;
  sub_F714(*v1, v1[1]);
  return v2;
}

uint64_t sub_212DC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsUpdateBlock);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_F704(v6, v7);
}

uint64_t sub_2139C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SearchTagsRibbonView(0);
  sub_241D0(&qword_94AE40, 255, type metadata accessor for SearchTagsRibbonView, &unk_77DA98);
  return sub_7633E0();
}

uint64_t sub_21448(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_2149C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_21508(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  swift_getWitnessTable();
  *(v4 + 32) = sub_75DC50();
  return sub_246E0;
}

void sub_215A4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_215EC(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView) + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView);
  v3 = [a1 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = *(v2 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_mediaContentView);
  sub_BE70(0, &qword_93E550, UIView_ptr);
  v6 = v5;
  v7 = sub_76A1C0();

  return v7 & 1;
}

uint64_t sub_217D8(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = sub_241D0(&qword_93F508, a2, type metadata accessor for AppEventSearchResultContentView, &unk_77E41C);
  result = sub_241D0(&unk_93F510, v3, type metadata accessor for AppEventSearchResultContentView, &unk_77E44C);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2185C(unint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v62 = sub_761C80();
  v8 = *(v62 - 8);
  __chkstk_darwin(v62);
  v61 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_760D90();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_760DA0();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v53 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75D7C0();
  result = sub_769490();
  if (result)
  {
    v46 = v13;
    v47 = v11;
    if (a1 >> 62)
    {
      result = sub_76A860();
      v18 = result;
    }

    else
    {
      v18 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    }

    v51 = a2;
    v52 = a3;
    v49 = v10;
    v50 = v14;
    v48 = v15;
    if (v18)
    {
      if (v18 >= 1)
      {
        v19 = 0;
        v60 = a1 & 0xC000000000000001;
        v59 = (v8 + 88);
        v58 = enum case for MetadataRibbonItemViewType.borderedTextLabel(_:);
        v55 = enum case for MetadataRibbonItemViewType.imageWithLabel(_:);
        v56 = enum case for MetadataRibbonItemViewType.editorsChoice(_:);
        v54 = enum case for MetadataRibbonItemViewType.starRating(_:);
        v45 = enum case for MetadataRibbonItemViewType.textLabel(_:);
        v44 = enum case for MetadataRibbonItemViewType.divider(_:);
        v42 = (v8 + 8);
        v43 = enum case for MetadataRibbonItemViewType.highlightedText(_:);
        v20 = _swiftEmptyArrayStorage;
        v57 = a1;
        while (1)
        {
          if (v60)
          {
            v21 = sub_76A770();
          }

          else
          {
            v21 = *(a1 + 8 * v19 + 32);
          }

          v22 = v61;
          sub_75D750();
          v23 = (*v59)(v22, v62);
          if (v23 == v58)
          {
            break;
          }

          if (v23 == v56)
          {
            v24 = type metadata accessor for MetadataRibbonEditorsChoiceView(0);
            v25 = type metadata accessor for MetadataRibbonEditorsChoiceView;
            v26 = &unk_785408;
            v27 = &unk_93F600;
            goto LABEL_24;
          }

          if (v23 == v55)
          {
            v24 = type metadata accessor for MetadataRibbonIconWithLabelView(0);
            v25 = type metadata accessor for MetadataRibbonIconWithLabelView;
            v26 = &unk_789E18;
            v27 = &unk_93EBD0;
            goto LABEL_24;
          }

          if (v23 == v54)
          {
            v24 = type metadata accessor for MetadataRibbonStarRatingView(0);
            v25 = type metadata accessor for MetadataRibbonStarRatingView;
            v26 = &unk_79F4C8;
            v27 = &unk_93F610;
            goto LABEL_24;
          }

          if (v23 == v45)
          {
            v24 = type metadata accessor for MetadataRibbonTagView(0);
            v25 = type metadata accessor for MetadataRibbonTagView;
            v26 = &unk_7A8490;
            v27 = &unk_93EBC8;
            goto LABEL_24;
          }

          if (v23 == v44)
          {
            v24 = type metadata accessor for MetadataRibbonBarView(0);
            v25 = type metadata accessor for MetadataRibbonBarView;
            v26 = &unk_7AD020;
            v27 = &unk_93F5F0;
            goto LABEL_24;
          }

          if (v23 == v43)
          {
            v24 = type metadata accessor for MetadataRibbonHighlightedTextView(0);
            v25 = type metadata accessor for MetadataRibbonHighlightedTextView;
            v26 = &unk_7B0870;
            v27 = &unk_93EBB8;
            goto LABEL_24;
          }

          (*v42)(v61, v62);
LABEL_29:
          if (v18 == ++v19)
          {
            goto LABEL_33;
          }
        }

        v24 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView(0);
        v25 = type metadata accessor for MetadataRibbonBorderedLabelWithDescriptionView;
        v26 = &unk_783CE8;
        v27 = &unk_93EBD8;
LABEL_24:
        v28 = sub_241D0(v27, 255, v25, v26);
        v29 = swift_allocObject();
        v29[2] = v24;
        v29[3] = v28;
        v29[4] = v21;
        v30 = sub_7670D0();
        swift_allocObject();

        v31 = sub_767090();
        sub_75D770();
        v74 = v30;
        v75 = &protocol witness table for LayoutViewPlaceholder;
        v73 = v31;
        v76 = sub_75FCE0() & 1;
        v77 = sub_75FD20() & 1;
        sub_1ED18(v72, v67, &unk_93F5E0, qword_77E5B8);
        v32 = v70;
        LOBYTE(v28) = v71;
        v63 = v67[0];
        v64 = v67[1];
        *&v65[0] = v68;
        sub_10914(&v69, v65 + 8);
        LOBYTE(v66) = v32;
        HIBYTE(v66) = v28;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_7AB00(0, *(v20 + 2) + 1, 1, v20);
        }

        a1 = v57;
        v34 = *(v20 + 2);
        v33 = *(v20 + 3);
        if (v34 >= v33 >> 1)
        {
          v20 = sub_7AB00((v33 > 1), v34 + 1, 1, v20);
        }

        *(v20 + 2) = v34 + 1;
        v35 = &v20[11 * v34];
        v36 = v64;
        *(v35 + 2) = v63;
        *(v35 + 3) = v36;
        v37 = v65[0];
        v38 = v65[1];
        v39 = v65[2];
        *(v35 + 56) = v66;
        *(v35 + 5) = v38;
        *(v35 + 6) = v39;
        *(v35 + 4) = v37;
        sub_10A2C(v72, &unk_93F5E0, qword_77E5B8);
        goto LABEL_29;
      }

      __break(1u);
    }

    else
    {
LABEL_33:
      (*(v47 + 16))(v46, v51, v49);
      v40 = v53;
      sub_760D40();
      sub_760D50();
      return (*(v48 + 8))(v40, v50);
    }
  }

  return result;
}

void sub_22028()
{
  v1 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView;
  *(v0 + v1) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v2 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView;
  *(v0 + v2) = [objc_allocWithZone(type metadata accessor for AppEventView(0)) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v3 = OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventTapGestureRecognizer;
  *(v0 + v3) = [objc_allocWithZone(UITapGestureRecognizer) init];
  v4 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventViewTappedAction);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsCalculator) = 0;
  v5 = (v0 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_impressionsUpdateBlock);
  *v5 = 0;
  v5[1] = 0;
  sub_76A840();
  __break(1u);
}

BOOL sub_22140(void *a1)
{
  v2 = *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView];
  v3 = *(*&v2[OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView] + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView);
  if (!v3)
  {
    return 0;
  }

  v5 = v3;
  [a1 locationInView:v1];
  v7 = v6;
  v9 = v8;
  v10 = [v1 hitTest:0 withEvent:?];
  [a1 locationInView:v2];
  v12 = v11;
  v14 = v13;
  [a1 locationInView:v5];
  v16 = v15;
  v18 = v17;
  [v2 bounds];
  v21.x = v12;
  v21.y = v14;
  if (CGRectContainsPoint(v24, v21) && ([v5 bounds], v22.x = v16, v22.y = v18, !CGRectContainsPoint(v25, v22)) && *&v1[OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventViewTappedAction])
  {
    [v1 bounds];
    v23.x = v7;
    v23.y = v9;
    v19 = CGRectContainsPoint(v26, v23);

    if (v19)
    {
      if (!v10)
      {
        return 1;
      }

      objc_opt_self();
      v19 = swift_dynamicCastObjCClass() == 0;
    }
  }

  else
  {

    v19 = 0;
  }

  return v19;
}

void *sub_222E4(uint64_t a1, uint64_t a2)
{
  v139 = a2;
  v3 = sub_BD88(&unk_93F5A0, &unk_77E570);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v108[-v5];
  v7 = sub_760840();
  v137 = *(v7 - 8);
  __chkstk_darwin(v7);
  v136 = &v108[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v142 = sub_760D90();
  *&v141 = *(v142 - 8);
  __chkstk_darwin(v142);
  v131 = &v108[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_762D10();
  v133 = *(v10 - 8);
  v134 = v10;
  __chkstk_darwin(v10);
  v132 = &v108[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_75D850();
  v146 = *(v12 - 8);
  v147 = v12;
  __chkstk_darwin(v12);
  v14 = &v108[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v145 = &v108[-v16];
  v153 = sub_760820();
  v144 = *(v153 - 8);
  __chkstk_darwin(v153);
  v135 = &v108[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v154 = &v108[-v19];
  v20 = sub_BD88(&unk_94AE30, qword_7864D0);
  __chkstk_darwin(v20 - 8);
  v130 = &v108[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v22);
  v152 = &v108[-v23];
  v24 = sub_75DAB0();
  __chkstk_darwin(v24 - 8);
  v25 = sub_7656C0();
  v138 = *(v25 - 8);
  __chkstk_darwin(v25);
  v149 = &v108[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_7583C0();
  sub_241D0(&qword_93F5B0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_75C750();
  v148 = v191[0];
  if (v191[0])
  {
    v127 = v7;
    sub_75C720();
    if (qword_93D050 != -1)
    {
      swift_once();
    }

    sub_765660();
    sub_765630();
    v29 = v28;
    v31 = v30;
    v32 = sub_7583B0();

    v33 = sub_764EF0();
    v118 = v34;
    v119 = v33;
    v35 = sub_764F70();
    v120 = v36;
    v121 = v35;
    v37 = sub_764E90();
    v151 = v32;

    if (v37 && (v38 = sub_75E5C0(), , v38))
    {
      v39 = sub_765720();
      v122 = v40;
      v123 = v39;
    }

    else
    {
      v122 = 0;
      v123 = 0;
    }

    v143 = sub_75BC90();
    (*(v141 + 56))(v152, 1, 1, v142);
    v140 = sub_75BCB0();
    v109 = sub_75BCD0();
    swift_getKeyPath();
    sub_75C7B0();

    v41 = v191[5];
    if (qword_93C3F8 != -1)
    {
      swift_once();
    }

    v42 = v153;
    v43 = sub_BE38(v153, qword_99B150);
    v124 = *(v144 + 16);
    v125 = v144 + 16;
    v124(v154, v43, v42);
    v44 = sub_769A00();
    v150 = v41;
    v128 = v25;
    v129 = a1;
    v111 = v4;
    v112 = v3;
    v110 = v6;
    if (v44)
    {
      if (qword_93C440 != -1)
      {
        swift_once();
      }

      v45 = qword_946920;
    }

    else
    {
      if (qword_93C448 != -1)
      {
        swift_once();
      }

      v45 = qword_946938;
    }

    v46 = v147;
    v47 = sub_BE38(v147, v45);
    v48 = v146;
    (*(v146 + 16))(v14, v47, v46);
    (*(v48 + 32))(v145, v14, v46);
    v49 = [v150 preferredContentSizeCategory];
    sub_769B20();

    sub_75D800();
    sub_75D830();
    sub_760810();
    sub_760800();
    v117 = sub_7670D0();
    swift_allocObject();
    v126 = sub_7670B0();
    v50 = objc_opt_self();
    v115 = v50;
    v51 = [v50 preferredFontForTextStyle:UIFontTextStyleBody];
    v52 = sub_7653B0();
    v191[3] = v52;
    v53 = sub_241D0(&qword_93F9B0, 255, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
    v191[4] = v53;
    v114 = v53;
    v54 = sub_B1B4(v191);
    v55 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v56 = *(v52 - 8);
    v57 = *(v56 + 104);
    v116 = v56 + 104;
    v113 = enum case for Feature.measurement_with_labelplaceholder(_:);
    v57(v54, enum case for Feature.measurement_with_labelplaceholder(_:), v52);
    sub_765C30();
    sub_BEB8(v191);
    v58 = v132;
    sub_762D00();
    sub_762CE0();
    v59 = v134;
    v133 = *(v133 + 8);
    (v133)(v58, v134);
    v60 = [v50 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v190[3] = v52;
    v190[4] = v53;
    v61 = sub_B1B4(v190);
    v57(v61, v55, v52);
    sub_765C30();
    sub_BEB8(v190);
    sub_762D00();
    sub_762CE0();
    v62 = v133;
    (v133)(v58, v59);
    v63 = [v115 preferredFontForTextStyle:UIFontTextStyleFootnote];
    v189[3] = v52;
    v189[4] = v114;
    v64 = sub_B1B4(v189);
    v57(v64, v113, v52);
    sub_765C30();
    sub_BEB8(v189);
    sub_762D00();
    sub_762CE0();
    v62(v58, v59);
    v65 = v143;
    LODWORD(v134) = sub_1F830(0, v143) & (v65 != 0);
    if (v134 == 1)
    {
      v66 = v117;
      v67 = objc_allocWithZone(sub_7671D0());
      v68 = v150;
      v69 = sub_7671C0();
      v70 = v130;
      sub_1ED18(v152, v130, &unk_94AE30, qword_7864D0);
      v71 = v141;
      v72 = *(v141 + 48);
      v73 = v142;
      if (v72(v70, 1, v142) == 1)
      {
        v74 = v131;
        _s18ASMessagesProvider18MetadataRibbonViewC7metrics11AppStoreKit0cdE6LayoutV7MetricsVvpfi_0();
        if (v72(v70, 1, v73) != 1)
        {
          sub_10A2C(v70, &unk_94AE30, qword_7864D0);
        }
      }

      else
      {
        v74 = v131;
        (*(v71 + 32))(v131, v70, v73);
      }

      v76 = v69;
      sub_2185C(v143, v74, v76, v29, v31);

      (*(v71 + 8))(v74, v73);
      swift_allocObject();
      v75 = sub_7670A0();
    }

    else
    {
      v66 = v117;
      swift_allocObject();
      v75 = sub_7670B0();
    }

    v77 = v75;

    v78 = v140;
    if ((sub_1F830(v140, 0) & (v78 != 0)) == 1)
    {
      sub_F7FC(v78, v109 & 1, v29, v31);
      swift_allocObject();
      v79 = sub_7670A0();
    }

    else
    {
      swift_allocObject();
      v79 = sub_7670B0();
    }

    v80 = v79;
    v124(v135, v154, v153);
    v188 = &protocol witness table for LayoutViewPlaceholder;
    v187 = v66;
    v186 = v126;
    v185 = 0;
    *&v183[40] = 0u;
    v184 = 0u;
    sub_134D8(v191, v183);
    sub_134D8(v190, &v182);
    v181 = 0;
    v179 = 0u;
    v180 = 0u;
    v178 = 0;
    v176 = 0u;
    v177 = 0u;

    v142 = v80;
    v81 = sub_7670C0();
    v175 = &protocol witness table for LayoutViewPlaceholder;
    v174 = v66;
    v173 = v81;
    v172 = 0;
    v170 = 0u;
    v171 = 0u;
    v169 = 0;
    v167 = 0u;
    v168 = 0u;
    v166 = 0;
    v164 = 0u;
    v165 = 0u;
    v163 = 0;
    v162 = 0u;
    *&v161[40] = 0u;
    sub_134D8(v189, v161);
    v159 = v66;
    v160 = &protocol witness table for LayoutViewPlaceholder;
    v157 = &protocol witness table for LayoutViewPlaceholder;
    v158 = v77;
    v156 = v66;
    v155 = v80;
    v82 = v136;
    sub_760830();
    sub_7671D0();
    sub_BD88(&unk_93F5C0, &unk_77C600);
    v83 = swift_allocObject();
    v141 = xmmword_77D9F0;
    *(v83 + 16) = xmmword_77D9F0;
    v84 = v150;
    *(v83 + 32) = v150;
    v85 = v84;
    v86 = sub_7671E0();
    sub_241D0(&qword_945FA0, 255, &type metadata accessor for SmallSearchLockupLayout, &protocol conformance descriptor for SmallSearchLockupLayout);
    v87 = v127;
    sub_7665A0();
    v89 = v88;

    (*(v137 + 8))(v82, v87);
    sub_BEB8(v189);
    sub_BEB8(v190);
    sub_BEB8(v191);
    (*(v146 + 8))(v145, v147);
    (*(v144 + 8))(v154, v153);
    sub_10A2C(v152, &unk_94AE30, qword_7864D0);

    v90 = sub_75BCB0();
    v91 = sub_75BC90();
    v92 = sub_1F830(v90, v91);

    if (v92)
    {
      v93 = v110;
      sub_763F60();
      swift_getKeyPath();
      sub_75C7B0();

      v94 = v191[0];
      v95 = swift_allocObject();
      *(v95 + 16) = v141;
      *(v95 + 32) = v94;
      v96 = v94;
      v97 = sub_7671E0();
      sub_24128();
      v98 = v112;
      sub_7666E0();
      v100 = v99;

      (*(v111 + 8))(v93, v98);
    }

    else
    {
      if (qword_93C188 != -1)
      {
        swift_once();
      }

      sub_B170(qword_999F18, qword_999F30);
      swift_getKeyPath();
      sub_75C7B0();

      v101 = v191[0];
      sub_766710();
      v100 = v102;
    }

    v103 = v128;
    v104 = type metadata accessor for AppEventView(0);
    v105 = sub_7583A0();
    v106 = sub_527DE4();
    ObjectType = swift_getObjectType();
    sub_650A20(v29, v31 - (v89 + v100), v105, v106, v139, v104, ObjectType);

    swift_unknownObjectRelease();

    return (*(v138 + 8))(v149, v103);
  }

  return result;
}

void sub_2350C(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView);
  v4 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
  v5 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
  v18.value.super.isa = 0;
  v18.is_nil = 0;
  sub_7591D0(v18, v6);

  v7 = *(v3 + v4);
  sub_759210();
  sub_241D0(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
  v8 = v7;
  sub_75A0C0();

  v10 = *(v3 + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
  v11 = *&v10[OBJC_IVAR____TtC18ASMessagesProvider18MetadataRibbonView_metadataRibbonItemViews];
  v12 = *(v11 + 16);
  if (v12)
  {
    type metadata accessor for MetadataRibbonIconWithLabelView(0);
    v17 = v10;

    v13 = 32;
    do
    {
      v14 = *(v11 + v13);
      if (swift_dynamicCastClass())
      {
        v15 = v14;
        v19.value.super.isa = 0;
        v19.is_nil = 0;
        sub_7591D0(v19, v16);
        sub_75A0C0();
      }

      v13 += 16;
      --v12;
    }

    while (v12);
  }

  sub_524C60(a1, 1, v9);
}

uint64_t sub_236EC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = sub_75CF00();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_7652D0();
  __chkstk_darwin(v10 - 8);
  v11 = sub_765240();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = sub_758700();
  v42[4] = &protocol witness table for AppPromotion;
  v42[0] = a1;
  sub_134D8(v42, v41);

  sub_BD88(&unk_93F520, &unk_77E560);
  if (!swift_dynamicCast())
  {
    return sub_BEB8(v42);
  }

  v39 = v11;
  v15 = v40;
  if (qword_93C4F0 != -1)
  {
    swift_once();
  }

  v35 = v12;
  v16 = type metadata accessor for AppEventCardLayout.Metrics(0);
  sub_BE38(v16, qword_99B3E8);
  sub_766660();
  v17 = sub_758630();
  v36 = v15;
  v37 = a2;
  if (v17)
  {
    sub_764BC0();

LABEL_7:

    sub_765250();
    sub_765210();
    (*(v35 + 1))(v14, v39);
    sub_765330();
    v18 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_artworkView);
    sub_7652E0();
    sub_7591B0();
    [v18 setContentMode:sub_765140()];
    sub_75DEF0();
    sub_7591F0();
    if (!sub_7651A0())
    {
      sub_BE70(0, &qword_93E540, UIColor_ptr);
      sub_76A030();
    }

    sub_759070();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v20 = Strong;
      type metadata accessor for VideoView(0);
      sub_241D0(&unk_93F530, 255, type metadata accessor for VideoView, &unk_7AD180);
      sub_75A050();
    }

    else
    {
      sub_759210();
      sub_241D0(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
    }

    goto LABEL_13;
  }

  if (sub_758650())
  {
    goto LABEL_7;
  }

LABEL_13:
  v21 = *(a3 + OBJC_IVAR____TtC18ASMessagesProvider16AppEventCardView_lockupView);
  if (v21)
  {
    v22 = v21;
    sub_7586E0();
    v23 = sub_764F20();

    if (v23)
    {
      v24 = OBJC_IVAR____TtC18ASMessagesProvider15SmallLockupView_metrics;
      swift_beginAccess();
      v25 = v38;
      (*(v38 + 16))(v9, &v22[v24], v7);
      sub_75CDD0();
      (*(v25 + 8))(v9, v7);
      sub_765250();
      sub_765210();
      v34 = *(v35 + 1);
      v34(v14, v39);
      v26 = sub_765330();
      v27 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
      v28 = *&v22[OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView];
      v35 = v22;
      v29 = v28;
      sub_7652E0();
      sub_7591B0();
      [v29 setContentMode:sub_765140()];
      v38 = v26;
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();

      v30 = *&v22[v27];
      sub_765250();
      v31 = sub_765210();
      v34(v14, v39);
      [v30 setContentMode:v31];

      v22 = *&v22[v27];
      v32 = v35;

      sub_759210();
      sub_241D0(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      sub_75A050();
    }
  }

  else
  {
  }

  return sub_BEB8(v42);
}

void sub_23DEC(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v6 = v5;
  v10 = sub_7652D0();
  __chkstk_darwin(v10 - 8);
  sub_134D8(a1, v22);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_7583C0();
  if (swift_dynamicCast())
  {
    sub_2350C(a2);
    sub_7583B0();
    v11 = sub_764EE0();

    if (v11)
    {
      v12 = OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView;
      v21 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView);
      v13 = qword_93C668;
      v14 = *(v21 + OBJC_IVAR____TtC18ASMessagesProvider14BaseLockupView_artworkView);
      if (v13 != -1)
      {
        swift_once();
      }

      v15 = sub_75CF00();
      sub_BE38(v15, qword_99B898);
      sub_75CDD0();
      [v14 contentMode];
      sub_765330();
      sub_7652E0();
      sub_7591B0();
      [v14 setContentMode:sub_765140()];
      sub_75DEF0();
      sub_7591F0();
      if (!sub_7651A0())
      {
        sub_BE70(0, &qword_93E540, UIColor_ptr);
        sub_76A030();
      }

      sub_759070();
      v16 = *(v21 + v12);
      sub_759210();
      sub_241D0(&qword_945810, 255, &type metadata accessor for ArtworkView, &protocol conformance descriptor for ArtworkView);
      v17 = v16;
      sub_75A050();
    }

    v18 = *(*(v6 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_lockupView) + OBJC_IVAR____TtC18ASMessagesProvider21SmallSearchLockupView_metadataRibbonView);
    sub_1BA288(a1, a2);

    v19 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider31AppEventSearchResultContentView_appEventView);
    v20 = sub_7583A0();
    sub_236EC(v20, a2, *(v19 + OBJC_IVAR____TtC18ASMessagesProvider12AppEventView_appEventCardView), a5);
  }
}

unint64_t sub_24128()
{
  result = qword_93F5D0;
  if (!qword_93F5D0)
  {
    sub_133D8(&unk_93F5A0, &unk_77E570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_93F5D0);
  }

  return result;
}

uint64_t sub_2418C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_241D0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_24218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_75DAB0();
  __chkstk_darwin(v5 - 8);
  v6 = sub_7656C0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_7583C0();
  sub_241D0(&qword_93F5B0, 255, &type metadata accessor for AppEventSearchResult, &protocol conformance descriptor for SearchResult);
  result = sub_75C750();
  if (v27)
  {
    v24 = a3;
    v25 = v6;
    v27 = _swiftEmptyArrayStorage;
    sub_7583B0();
    v11 = sub_764EE0();

    if (v11)
    {
      if (qword_93C668 != -1)
      {
        swift_once();
      }

      v12 = sub_75CF00();
      sub_BE38(v12, qword_99B898);
      sub_75CDD0();
      sub_765330();
      sub_769440();
      if (*(&dword_10 + (v27 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v27 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_7694C0();
      }

      sub_769500();
    }

    sub_7583B0();
    v13 = sub_75BC90();

    swift_getKeyPath();
    sub_75C7B0();

    v14 = v26;
    v15 = sub_1BA624(v13, v26);

    sub_10A0E4(v15);
    sub_75C720();
    if (qword_93D050 != -1)
    {
      swift_once();
    }

    sub_765660();
    sub_765560();
    v17 = v16;
    sub_222E4(a1, v24);
    v19 = v18;
    type metadata accessor for AppEventView(0);
    v20 = sub_7583A0();
    v21 = sub_527DE4();
    swift_getObjectType();
    v22 = sub_650B68(v20, v21, v17, v19);

    swift_unknownObjectRelease();
    sub_10A0E4(v22);
    v23._rawValue = v27;
    sub_75A070(v23);

    return (*(v7 + 8))(v9, v25);
  }

  return result;
}

uint64_t sub_245F0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_24628()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_2467C(uint64_t a1)
{
  v2 = type metadata accessor for AppEventCardLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2470C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_766690();
  sub_161DC(v3, a2);
  sub_BE38(v3, a2);
  return sub_7666A0();
}

void sub_2476C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v83 = a3;
  v10 = sub_BD88(&unk_948710, &qword_77FF90);
  __chkstk_darwin(v10 - 8);
  v82 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v81 = &v72 - v13;
  v14 = sub_BD88(&unk_93FD30, qword_77F240);
  __chkstk_darwin(v14 - 8);
  v80 = &v72 - v15;
  v16 = sub_75A6B0();
  __chkstk_darwin(v16 - 8);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v72 - v20;
  v22 = sub_BD88(&unk_948720, &unk_784970);
  __chkstk_darwin(v22 - 8);
  v24 = &v72 - v23;
  v25 = sub_75A6E0();
  v79 = *(v25 - 8);
  __chkstk_darwin(v25);
  v89 = &v72 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_75DC30();
  v84 = *(v27 - 8);
  v85 = v27;
  __chkstk_darwin(v27);
  v90 = &v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_766690();
  v30 = *(v29 - 8);
  v87 = v29;
  v88 = v30;
  __chkstk_darwin(v29);
  v78 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_759450();
  v33 = [v32 length];

  v86 = a6;
  if (v33 < 1)
  {
    [*&v7[qword_964310] setText:0];
    v7[qword_9A0A18] = 0;
    [*&v7[qword_964300] setHidden:1];
  }

  else
  {
    v73 = v25;
    v74 = v24;
    v75 = v21;
    v76 = v18;
    v77 = a1;
    v34 = sub_759450();
    v35 = [a6 traitCollection];
    v36 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v34];
    v37 = [v34 length];
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    *(v38 + 24) = v35;
    *(v38 + 32) = v36;
    *(v38 + 40) = 1;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_119AC;
    *(v39 + 24) = v38;
    aBlock[4] = sub_2636C;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    aBlock[3] = &unk_880470;
    v40 = _Block_copy(aBlock);
    v41 = v35;
    v42 = v36;

    [v34 enumerateAttributesInRange:0 options:v37 usingBlock:{0x100000, v40}];

    _Block_release(v40);
    LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

    if (v34)
    {
      __break(1u);
      return;
    }

    [*&v7[qword_964310] setAttributedText:v42];
    v7[qword_9A0A18] = 1;
    [*&v7[qword_964300] setHidden:0];

    v24 = v74;
    v25 = v73;
  }

  v43 = *&v7[qword_964308];
  sub_759460();
  if (v44)
  {
    v45 = sub_769210();
  }

  else
  {
    v45 = 0;
  }

  v46 = v86;
  [v43 setText:v45];

  bottom = UIEdgeInsetsZero.bottom;
  if (sub_759430())
  {
    left = UIEdgeInsetsZero.left;
    right = UIEdgeInsetsZero.right;
  }

  else
  {
    [v46 pageMarginInsets];
    left = v50;
    right = v51;
  }

  v52 = v87;
  v53 = [v7 contentView];
  [v53 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (sub_759480())
  {
    v54 = [v7 contentView];
    sub_2630C();
    sub_75D650();

    sub_765260();
    v55 = v78;
    sub_7666A0();
    sub_766600();
    v57 = v56;
    v59 = v58;

    (*(v88 + 8))(v55, v52);
    v60 = &v7[qword_99C4E0];
    *v60 = v57;
    v60[1] = v59;
  }

  if (sub_759470())
  {
    (*(v79 + 104))(v89, enum case for VideoFillMode.scaleAspectFill(_:), v25);
    if (sub_759480())
    {
      sub_765260();
      sub_7666A0();

      v61 = 0;
    }

    else
    {
      v61 = 1;
    }

    (*(v88 + 56))(v24, v61, 1, v52);
    sub_764B60();
    sub_764BA0();
    sub_764B70();
    sub_764B50();
    sub_764BB0();
    sub_75DC10();
    sub_75C360();
    sub_768880();
    sub_764B40();
    v62 = v80;
    sub_764BD0();
    v63 = sub_7570A0();
    (*(*(v63 - 8) + 56))(v62, 0, 1, v63);
    v64 = v81;
    sub_764B90();
    v65 = v82;
    sub_764B80();
    type metadata accessor for VideoView(0);
    sub_263D4(&qword_93F500, type metadata accessor for VideoView, &unk_77FEB0);
    v66 = sub_75C340();
    sub_10A2C(v65, &unk_948710, &qword_77FF90);
    sub_10A2C(v64, &unk_948710, &qword_77FF90);
    sub_10A2C(v62, &unk_93FD30, qword_77F240);
    sub_10A2C(aBlock, &unk_9443A0, &unk_77E240);
    sub_287808();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v68 = Strong;
      v69 = *&v7[qword_94C798];
      if (v69)
      {
        v70 = *&v7[qword_94C798];
      }

      else
      {
        v70 = [v7 contentView];
        v69 = 0;
      }

      v71 = v69;
      [v70 addSubview:v68];
      [v7 setNeedsLayout];
    }

    else
    {
    }

    (*(v84 + 8))(v90, v85);
  }

  v7[qword_9A0A10] = sub_759440() & 1;
  sub_253F8();
}

double sub_2526C(char a1)
{
  if ((a1 & 1) == 0)
  {
    return 0.0;
  }

  return result;
}

void sub_25294(uint64_t a1, uint64_t a2, char a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    type metadata accessor for VideoView(0);
    sub_263D4(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
    sub_75A0C0();
  }
}

id sub_253F8()
{
  v1 = sub_7593D0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v0[qword_9A0A10] == 1)
  {
    sub_759210();
    sub_759090();
    sub_75CD10();
    sub_759080();
    sub_75CD00();
  }

  (*(v2 + 104))(v4, enum case for CornerStyle.continuous(_:), v1);
  sub_75CCD0();
  (*(v2 + 8))(v4, v1);
  return [v0 setNeedsLayout];
}

uint64_t sub_25570()
{
  v0 = sub_766690();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = ASKDeviceTypeGetCurrent();
  v5 = sub_769240();
  v7 = v6;
  if (v5 == sub_769240() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_76A950();

    if ((v10 & 1) == 0)
    {
      if (qword_93C190 != -1)
      {
        swift_once();
      }

      v11 = qword_999F40;
      goto LABEL_13;
    }
  }

  if (qword_93C198 != -1)
  {
    swift_once();
  }

  v11 = qword_999F58;
LABEL_13:
  v12 = sub_BE38(v0, v11);
  (*(v1 + 16))(v3, v12, v0);
  swift_getObjectType();
  PageTraitEnvironment.pageColumnWidth.getter();
  v14 = v13;
  sub_766660();
  v15 = [objc_opt_self() absoluteDimension:v14];
  v16 = sub_75F970();

  (*(v1 + 8))(v3, v0);
  return v16;
}

void sub_257D4(double a1, double a2, uint64_t a3, void *a4, uint64_t a5)
{
  v20 = a5;
  v17 = a4;
  v19 = sub_766690();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_764AD0();
  v9 = *(v8 + 16);
  v21 = v8 + 32;
  v18 = (v5 + 8);
  v22 = v8;

  v10 = 0;
  v11 = &unk_944DA0;
  v12 = v19;
  while (1)
  {
    if (v10 == v9)
    {
      v30 = 0;
      v10 = v9;
      v28 = 0u;
      v29 = 0u;
      goto LABEL_8;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *(v22 + 16))
    {
      goto LABEL_18;
    }

    sub_134D8(v21 + 40 * v10++, &v28);
LABEL_8:
    v26[0] = v28;
    v26[1] = v29;
    v27 = v30;
    if (!*(&v29 + 1))
    {
      swift_bridgeObjectRelease_n();
      return;
    }

    sub_10914(v26, v25);
    sub_134D8(v25, v23);
    sub_BD88(v11, &unk_77EB70);
    sub_759490();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v24 = 0;
    }

    sub_BEB8(v25);
    if (v24)
    {
      if (sub_759470())
      {
        v14 = v11;
        sub_764BC0();

        v15 = sub_759430();

        if ((v15 & 1) == 0)
        {
          [v17 pageMarginInsets];
        }

        sub_765260();
        sub_7666A0();
        sub_766610();
        v13 = *v18;
        (*v18)(v7, v12);
        sub_765260();
        sub_7666A0();
        sub_766600();
        v13(v7, v12);
        sub_765330();
        sub_75A060();

        v11 = v14;
      }

      else
      {
      }
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_25B4C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = sub_BD88(&unk_93E530, &unk_77C5F0);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = sub_766690();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_759430() & 1) == 0)
  {
    [a6 pageMarginInsets];
  }

  if (sub_759480())
  {
    sub_765260();
    sub_7666A0();
    sub_766660();
    (*(v11 + 8))(v13, v10);
    sub_759430();
  }

  v14 = sub_759450();
  v15 = [v14 length];

  if (v15 >= 1)
  {
    sub_759460();
    if (v16)
    {
      if (qword_93DA18 != -1)
      {
        swift_once();
      }

      v17 = sub_7666D0();
      sub_BE38(v17, qword_99F640);
      v18 = sub_7653B0();
      v39 = v18;
      v40 = sub_263D4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
      v19 = sub_B1B4(aBlock);
      (*(*(v18 - 8) + 104))(v19, enum case for Feature.measurement_with_labelplaceholder(_:), v18);
      sub_765C30();
      sub_BEB8(aBlock);
      sub_762CB0();
    }

    v20 = sub_759450();
    v37[1] = a6;
    v21 = [a6 traitCollection];
    v22 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v20];
    v23 = [v20 length];
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = v21;
    *(v24 + 32) = v22;
    *(v24 + 40) = 1;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_266A8;
    *(v25 + 24) = v24;
    v40 = sub_26694;
    v41 = v25;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10C1C;
    v39 = &unk_8804E8;
    v26 = _Block_copy(aBlock);
    v27 = v21;
    v28 = v22;

    [v20 enumerateAttributesInRange:0 options:v23 usingBlock:{0x100000, v26}];

    _Block_release(v26);
    LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

    if (v27)
    {
      __break(1u);
    }

    else
    {
      v29 = qword_93DA10;
      v20 = v28;
      if (v29 == -1)
      {
LABEL_12:
        v30 = sub_7666D0();
        v31 = sub_BE38(v30, qword_99F628);
        v32 = *(v30 - 8);
        (*(v32 + 16))(v9, v31, v30);
        (*(v32 + 56))(v9, 0, 1, v30);
        v33 = sub_7653B0();
        v39 = v33;
        v40 = sub_263D4(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
        v34 = sub_B1B4(aBlock);
        (*(*(v33 - 8) + 104))(v34, enum case for Feature.measurement_with_labelplaceholder(_:), v33);
        sub_765C30();
        sub_BEB8(aBlock);
        sub_762CA0();

        sub_10A2C(v9, &unk_93E530, &unk_77C5F0);
        if (qword_93E250 != -1)
        {
          swift_once();
        }

        v35 = sub_766CA0();
        sub_BE38(v35, qword_9A09B8);
        sub_766720();
        if (qword_93E258 != -1)
        {
          swift_once();
        }

        sub_BE38(v35, qword_9A09D0);
        sub_7666F0();

        return sub_769D90();
      }
    }

    swift_once();
    goto LABEL_12;
  }

  return sub_769D90();
}

unint64_t sub_2630C()
{
  result = qword_93E550;
  if (!qword_93E550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_93E550);
  }

  return result;
}

double sub_26374(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2638C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_263D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2641C(uint64_t a1)
{
  v2 = sub_766690();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_134D8(a1, v10);
  sub_BD88(&unk_93F520, &unk_77E560);
  sub_759490();
  if (swift_dynamicCast())
  {
    if (sub_759470())
    {
      sub_764BC0();

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        sub_765260();
        sub_7666A0();
        sub_766610();
        v8 = *(v3 + 8);
        v8(v5, v2);
        sub_765260();
        sub_7666A0();
        sub_766600();
        v8(v5, v2);
        sub_765330();
        type metadata accessor for VideoView(0);
        sub_263D4(&unk_93F530, type metadata accessor for VideoView, &unk_7AD180);
        sub_75A050();
      }
    }
  }
}

uint64_t sub_266D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_BD88(&unk_93F980, &qword_77EDA0);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_75BB70();
  if (v7)
  {
    v8 = v7;
    v9 = sub_BD88(&unk_93F630, &unk_77E230);
    sub_768860();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v6, 1, v9) == 1)
    {

      sub_268C8(v6);
    }

    else
    {
      sub_32A6C0(v8, 1, a3, v6);

      (*(v10 + 8))(v6, v9);
    }
  }

  return 3;
}

uint64_t sub_268C8(uint64_t a1)
{
  v2 = sub_BD88(&unk_93F980, &qword_77EDA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_26930(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = sub_762D10();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_93D158 != -1)
  {
    v31 = v12;
    swift_once();
    v12 = v31;
  }

  v41 = v12;
  v40 = sub_7670D0();
  swift_allocObject();
  v39 = sub_7670B0();
  sub_75BB60();
  v15 = sub_26F08();
  v36 = a1;
  v16 = v15;
  if (qword_93D850 != -1)
  {
    swift_once();
  }

  v17 = sub_7666D0();
  sub_BE38(v17, qword_99F0E8);
  ObjectType = swift_getObjectType();
  v18 = [a6 traitCollection];
  v37 = a6;
  v19 = v18;
  sub_769E10();

  v20 = sub_7653B0();
  v43 = v20;
  v35 = sub_26F54(&qword_93F9B0, &type metadata accessor for Feature, &protocol conformance descriptor for Feature);
  v44 = v35;
  v21 = sub_B1B4(v42);
  v22 = *(*(v20 - 8) + 104);
  v32[1] = v16;
  v33 = v22;
  v34 = enum case for Feature.measurement_with_labelplaceholder(_:);
  v22(v21);
  sub_765C30();
  sub_BEB8(v42);
  sub_762D00();
  sub_762CE0();
  v23 = *(v11 + 8);
  v24 = v41;
  v23(v14, v41);
  v36 = sub_75BB50();
  v32[0] = v25;
  if (qword_93D858 != -1)
  {
    swift_once();
  }

  sub_BE38(v17, qword_99F100);
  v26 = v37;
  v27 = [v37 traitCollection];
  sub_769E10();

  v43 = v20;
  v44 = v35;
  v28 = sub_B1B4(v42);
  v33(v28, v34, v20);
  sub_765C30();
  sub_BEB8(v42);
  sub_762D00();
  sub_762CE0();
  v23(v14, v24);
  sub_26F9C(&xmmword_99DBA0, v42);
  v46 = v40;
  v47 = &protocol witness table for LayoutViewPlaceholder;
  v45 = v39;
  sub_134D8(v51, &v49);
  sub_134D8(v50, &v48);
  v29 = sub_646C6C(v26, v42, a2, a3);
  sub_26FF8(v42);
  sub_BEB8(v50);
  sub_BEB8(v51);
  return v29;
}

void sub_26DD0(int a1, int a2, uint64_t a3, uint64_t a4, id a5)
{
  v6 = v5;
  [a5 pageMarginInsets];
  v7 = (v5 + OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_insets);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  v12 = *(v5 + OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_artworkView);
  v21.value.super.isa = 0;
  v21.is_nil = 0;
  sub_7591D0(v21, v13);

  v14 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_displayName);
  sub_75BB50();
  if (v15)
  {
    v16 = sub_769210();
  }

  else
  {
    v16 = 0;
  }

  [v14 setText:v16];

  v17 = *(v6 + OBJC_IVAR____TtC18ASMessagesProvider39SmallGameCenterPlayerCollectionViewCell_alias);
  sub_75BB60();
  if (v18)
  {
    v19 = sub_769210();
  }

  else
  {
    v19 = 0;
  }

  [v17 setText:v19];
}