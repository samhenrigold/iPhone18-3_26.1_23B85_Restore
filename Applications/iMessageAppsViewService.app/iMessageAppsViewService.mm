void sub_1000012B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000139C(id a1, NSError *a2)
{
  v2 = a2;
  v3 = sub_100007044(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100007124(v2, v3);
  }
}

void sub_1000015DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000015F4(id a1, _UIStickerRepresentation *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(_UIStickerRepresentation *)a2 role:a3];
  v5 = [v4 isEqualToString:@"com.apple.stickers.role.still"];

  return v5;
}

uint64_t sub_100001638(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100001650(uint64_t a1, void *a2)
{
  v3 = [a2 __ck_heicsImageData];
  [*(*(*(a1 + 48) + 8) + 40) setData:v3];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

void sub_100001A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001A80(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 _remoteProxy];
  [v4 stageSticker:v3];
}

void *sub_100001AE0(void *result, int a2)
{
  if (a2)
  {
    v2 = result;
    v3 = sub_100007044(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = v2[4];
      *buf = 138412290;
      v6 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Donating sticker to recents with identifier %@", buf, 0xCu);
    }

    return [sub_100001BA8() donateStickerToRecentsWithIdentifier:v2[4] representations:v2[5] stickerEffectType:v2[11] externalURI:v2[6] name:v2[7] accessibilityLabel:v2[8] metadata:v2[9] ckAttributionInfo:v2[10]];
  }

  return result;
}

id sub_100001BA8()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100015DD8;
  v7 = qword_100015DD8;
  if (!qword_100015DD8)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100002BDC;
    v3[3] = &unk_100010560;
    v3[4] = &v4;
    sub_100002BDC(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100001C70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001D28(id a1)
{
  qword_100015D98 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CKUIStickerPickerHostProtocol];

  _objc_release_x1();
}

void sub_100001DB4(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CKUIStickerPickerServiceProtocol];
  v2 = qword_100015DA8;
  qword_100015DA8 = v1;

  v3 = qword_100015DA8;
  v4 = [NSSet setWithObject:objc_opt_class()];
  [v3 setClasses:v4 forSelector:"setHostBundleID:" argumentIndex:0 ofReply:0];
}

int64_t sub_100002370(id a1, STKStickerRepresentation *a2, STKStickerRepresentation *a3)
{
  v4 = a2;
  v5 = a3;
  if ([(STKStickerRepresentation *)v4 isPreferred]&& ([(STKStickerRepresentation *)v5 isPreferred]& 1) != 0)
  {
    v6 = 0;
  }

  else if (([(STKStickerRepresentation *)v4 isPreferred]& 1) != 0)
  {
    v6 = -1;
  }

  else
  {
    v6 = [(STKStickerRepresentation *)v5 isPreferred];
  }

  return v6;
}

void sub_100002814(uint64_t a1, int a2)
{
  if (a2)
  {
    [sub_100001BA8() donateStickerToRecents:*(a1 + 32)];
  }

  if ([qword_100015DC0 isEqual:*(a1 + 40)])
  {
    v3 = qword_100015DB8;
    qword_100015DB8 = 0;

    v4 = qword_100015DC0;
    qword_100015DC0 = 0;
  }
}

Class sub_100002A24(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100015DD0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100002B68;
    v4[4] = &unk_100010598;
    v4[5] = v4;
    v5 = off_100010580;
    v6 = 0;
    qword_100015DD0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100015DD0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("STKStickerKeyboardRecentCollectionViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_100007294();
  }

  qword_100015DC8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002B68(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100015DD0 = result;
  return result;
}

Class sub_100002BDC(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100015DE0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100002D20;
    v4[4] = &unk_100010598;
    v4[5] = v4;
    v5 = off_1000105B8;
    v6 = 0;
    qword_100015DE0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100015DE0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CKChatController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000072BC();
  }

  qword_100015DD8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002D20(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100015DE0 = result;
  return result;
}

Class sub_100002D94(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100015DF0)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100002ED8;
    v4[4] = &unk_100010598;
    v4[5] = v4;
    v5 = off_1000105D0;
    v6 = 0;
    qword_100015DF0 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100015DF0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AVTUsageTracker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000072E4();
  }

  qword_100015DE8 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100002ED8(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100015DF0 = result;
  return result;
}

void sub_100002F4C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

void sub_1000032A4(uint64_t a1)
{
  v1 = [*(a1 + 32) appPresenter];
  [v1 updateAppFrameForRotation];
}

void sub_100003758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = sub_100007044(a1);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 32) stickerIdentifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Donating sticker to recents with identifier %@", &buf, 0xCu);
    }

    v21 = 0;
    v22 = &v21;
    v23 = 0x2050000000;
    v7 = qword_100015E20;
    v24 = qword_100015E20;
    if (!qword_100015E20)
    {
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v26 = sub_100004EFC;
      v27 = &unk_100010560;
      v28 = &v21;
      sub_100004EFC(&buf);
      v7 = v22[3];
    }

    v8 = v7;
    _Block_object_dispose(&v21, 8);
    v9 = *(a1 + 32);
    v11 = *(a1 + 40);
    v10 = a1 + 32;
    v12 = *(v10 + 16);
    v13 = [v9 stickerEffectType];
    v14 = v13;
    if (!v13)
    {
      v13 = &off_100010A70;
    }

    v15 = [v13 intValue];
    v16 = [*v10 externalURI];
    v17 = [*v10 stickerName];
    v18 = [*v10 accessibilityLabel];
    v19 = [*v10 metadata];
    v20 = [*v10 ckAttributionInfo];
    [v7 donateStickerToRecentsWithIdentifier:v11 representations:v12 stickerEffectType:v15 externalURI:v16 name:v17 accessibilityLabel:v18 metadata:v19 ckAttributionInfo:{v20, v21}];
  }
}

void sub_10000399C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100003E9C(uint64_t a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = a2;
  v12 = v11;
  if (v11)
  {
    v13 = sub_100007044(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100007340(v12);
    }
  }

  v27.origin.x = a3;
  v27.origin.y = a4;
  v27.size.width = a5;
  v27.size.height = a6;
  if (!CGRectIsNull(v27))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v15 = [WeakRetained view];
    v16 = [*(a1 + 32) view];
    v17 = [v16 window];
    [v15 convertRect:v17 toCoordinateSpace:{a3, a4, a5, a6}];
    a3 = v18;
    a4 = v19;
    a5 = v20;
    a6 = v21;

    v23 = sub_100007044(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v28.origin.x = a3;
      v28.origin.y = a4;
      v28.size.width = a5;
      v28.size.height = a6;
      v24 = NSStringFromCGRect(v28);
      v25 = 138412290;
      v26 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Added sticker to %@", &v25, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))(a3, a4, a5, a6);
}

void sub_10000420C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100004228(uint64_t a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v13 = a2;
  v14 = a3;
  v15 = v14;
  if (v14)
  {
    v16 = sub_100007044(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100007340(v15);
    }
  }

  v25.origin.x = a4;
  v25.origin.y = a5;
  v25.size.width = a6;
  v25.size.height = a7;
  if (!CGRectIsNull(v25))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v18 = [WeakRetained view];
    v19 = [*(a1 + 32) view];
    v20 = [v19 window];
    [v18 convertRect:v20 toCoordinateSpace:{a4, a5, a6, a7}];
    a4 = v21;
    a5 = v22;
    a6 = v23;
    a7 = v24;
  }

  (*(*(a1 + 40) + 16))(a4, a5, a6, a7);
}

void sub_1000044F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100007044(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100007340(v7);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000046F8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = sub_100007044(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100007340(v7);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000049D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100004A38(id a1)
{
  qword_100015E00 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CKUIStickerPickerHostProtocol];

  _objc_release_x1();
}

void sub_100004AC4(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CKUIStickerPickerServiceProtocol];
  v2 = qword_100015E10;
  qword_100015E10 = v1;

  v3 = qword_100015E10;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [v3 setClasses:v5 forSelector:"addStickerToStoreWithRepresentations:completionHandler:" argumentIndex:0 ofReply:0];

  v6 = qword_100015E10;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [NSSet setWithObjects:v7, v8, objc_opt_class(), 0];
  [v6 setClasses:v9 forSelector:"addStickerToStoreWithRepresentations:completionWithStickerIDs:" argumentIndex:0 ofReply:0];

  v10 = qword_100015E10;
  v11 = objc_opt_class();
  v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
  [v10 setClasses:v12 forSelector:"addStickerToStoreWithRepresentations:completionWithStickerIDs:" argumentIndex:1 ofReply:1];

  v13 = qword_100015E10;
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = [NSSet setWithObjects:v14, v15, objc_opt_class(), 0];
  [v13 setClasses:v16 forSelector:"addStickerToStoreWithRepresentations:sourceRect:completion:" argumentIndex:0 ofReply:0];

  v17 = qword_100015E10;
  v18 = objc_opt_class();
  v19 = [NSSet setWithObjects:v18, objc_opt_class(), 0];
  [v17 setClasses:v19 forSelector:"addStickerToStoreWithRepresentations:sourceRect:completion:" argumentIndex:0 ofReply:1];

  v20 = qword_100015E10;
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v25 = [NSSet setWithObjects:v21, v22, v23, v24, objc_opt_class(), 0];
  [v20 setClasses:v25 forSelector:"animatedStickerCreationProgressChanged:progress:" argumentIndex:0 ofReply:0];

  v26 = qword_100015E10;
  v27 = [NSSet setWithObject:objc_opt_class()];
  [v26 setClasses:v27 forSelector:"setHostBundleID:" argumentIndex:0 ofReply:0];
}

void sub_100004EFC(uint64_t a1)
{
  sub_100004F54();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKChatController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015E20 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000072BC();
    sub_100004F54();
  }
}

void sub_100004F54()
{
  v1[0] = 0;
  if (!qword_100015E28)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100005050;
    v1[4] = &unk_100010598;
    v1[5] = v1;
    v2 = off_100010718;
    v3 = 0;
    qword_100015E28 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100015E28)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100005050(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100015E28 = result;
  return result;
}

Class sub_1000050C4(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100015E38)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_100005208;
    v4[4] = &unk_100010598;
    v4[5] = v4;
    v5 = off_100010730;
    v6 = 0;
    qword_100015E38 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100015E38)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AVTUsageTracker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000072E4();
  }

  qword_100015E30 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_100005208(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100015E38 = result;
  return result;
}

void sub_10000527C(uint64_t a1)
{
  sub_100004F54();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CKPluginExtensionStateObserver");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015E40 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000073EC();
    sub_1000052D4(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void sub_1000052D4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t sub_1000054AC(uint64_t a1, int token)
{
  state64 = 0;
  result = notify_get_state(token, &state64);
  v4 = state64;
  v5 = state64 != 0;
  v6 = *(a1 + 32);
  if (*(v6 + 28) != v5)
  {
    *(v6 + 28) = v5;
    result = SBSGetScreenLockStatus();
    if (v4)
    {
      return [*(a1 + 32) _didBecomeLocked];
    }
  }

  return result;
}

void sub_1000055FC(uint64_t a1)
{
  v1 = sub_100007044([*(*(a1 + 32) + 16) resume]);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_INFO, "Listening", v2, 2u);
  }
}

void sub_10000586C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak((v19 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000058A4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100007044(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109120;
    v3[1] = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Source connection interrupted from PID %d", v3, 8u);
  }

  [WeakRetained invalidate];
}

void sub_100005964(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = sub_100007044(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3[0] = 67109120;
    v3[1] = [WeakRetained processIdentifier];
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Source connection invalidated from PID %d", v3, 8u);
  }
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  objc_autoreleasePoolPop(v4);
  return v7;
}

void sub_100005E7C(uint64_t a1)
{
  v1 = [*(a1 + 32) appPresenter];
  [v1 updateAppFrameForRotation];
}

void sub_100006090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006358(id a1)
{
  qword_100015E50 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UIKeyboardMediaHostProtocol];

  _objc_release_x1();
}

void sub_1000063E4(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CKUIKeyboardMediaServiceProtocol];
  v2 = qword_100015E60;
  qword_100015E60 = v1;

  v3 = qword_100015E60;
  v4 = [NSSet setWithObject:objc_opt_class()];
  [v3 setClasses:v4 forSelector:"setHostBundleID:" argumentIndex:0 ofReply:0];
}

Class sub_100006518(uint64_t a1)
{
  v4[0] = 0;
  if (!qword_100015E78)
  {
    v4[1] = _NSConcreteStackBlock;
    v4[2] = 3221225472;
    v4[3] = sub_10000665C;
    v4[4] = &unk_100010598;
    v4[5] = v4;
    v5 = off_100010800;
    v6 = 0;
    qword_100015E78 = _sl_dlopen();
    v2 = v4[0];
    if (qword_100015E78)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AVTUsageTracker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1000072E4();
  }

  qword_100015E70 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10000665C(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100015E78 = result;
  return result;
}

void sub_100006910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006C98(id a1)
{
  qword_100015E80 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UIKeyboardMediaHostProtocol];

  _objc_release_x1();
}

void sub_100006D24(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___CKUIKeyboardMediaServiceProtocol];
  v2 = qword_100015E90;
  qword_100015E90 = v1;

  v3 = qword_100015E90;
  v4 = [NSSet setWithObject:objc_opt_class()];
  [v3 setClasses:v4 forSelector:"setHostBundleID:" argumentIndex:0 ofReply:0];
}

void sub_100006DCC(uint64_t a1)
{
  sub_100006E24();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("AVTStickerRecentsViewController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015EA0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_100007464();
    sub_100006E24();
  }
}

void sub_100006E24()
{
  v1[0] = 0;
  if (!qword_100015EA8)
  {
    v1[1] = _NSConcreteStackBlock;
    v1[2] = 3221225472;
    v1[3] = sub_100006F20;
    v1[4] = &unk_100010598;
    v1[5] = v1;
    v2 = off_100010858;
    v3 = 0;
    qword_100015EA8 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!qword_100015EA8)
  {
    v0 = abort_report_np("%s", v1[0]);
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100006F20(uint64_t a1)
{
  result = _sl_dlopen();
  qword_100015EA8 = result;
  return result;
}

Class sub_100006F94(uint64_t a1)
{
  sub_100006E24();
  result = objc_getClass("AVTAvatarStore");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015EB0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_10000748C();
    return sub_100006FEC(v3);
  }

  return result;
}

Class sub_100006FEC(uint64_t a1)
{
  sub_100006E24();
  result = objc_getClass("AVTUsageTracker");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100015EB8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    sub_1000072E4();
    return sub_100007044(v3);
  }

  return result;
}

id sub_100007044(uint64_t a1)
{
  if (qword_100015EC8 != -1)
  {
    sub_1000074B4();
  }

  v2 = qword_100015EC0;

  return v2;
}

void sub_100007088(id a1)
{
  qword_100015EC0 = os_log_create("com.apple.Messages", "iMessageAppsViewService");

  _objc_release_x1();
}

void sub_100007124(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Remote proxy error: %@", &v2, 0xCu);
}

void sub_100007340(void *a1)
{
  v1 = [a1 localizedDescription];
  sub_1000052F4();
  sub_1000052D4(&_mh_execute_header, v2, v3, "Unable to add sticker to store: %@", v4, v5, v6, v7);
}