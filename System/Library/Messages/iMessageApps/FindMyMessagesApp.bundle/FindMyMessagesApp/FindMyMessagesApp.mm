uint64_t sub_1748()
{
  v0 = sub_E5D4();
  sub_E214(v0, qword_18628);
  sub_1BD8(v0, qword_18628);
  return sub_E5C4();
}

id variable initialization expression of FindMyMessagesAppViewController.viewModel()
{
  v0 = sub_E634();
  __chkstk_darwin(v0 - 8);
  v1 = sub_E434();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v14 - v6;
  sub_E524();
  swift_allocObject();
  v8 = sub_E514();

  sub_E424();
  (*(v2 + 16))(v5, v7, v1);
  v9 = objc_allocWithZone(sub_19DC(&qword_184A8, &qword_EE60));
  v10 = sub_E614();
  sub_E624();
  sub_E5F4();
  sub_E5E4();
  sub_E604();
  result = [v10 view];
  if (result)
  {
    v12 = result;
    v13 = [objc_opt_self() clearColor];
    [v12 setBackgroundColor:v13];

    (*(v2 + 8))(v7, v1);
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_19DC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

id FindMyMessagesAppViewController.__deallocating_deinit()
{
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v1 = sub_E5D4();
  sub_1BD8(v1, qword_18628);
  v2 = v0;
  v3 = sub_E5B4();
  v4 = sub_E704();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = v2;
    *(v5 + 14) = sub_C740(0x74696E696564, 0xE600000000000000, &v11);
    _os_log_impl(&dword_0, v3, v4, "FindMyMessagesAppViewController: %@ - %s", v5, 0x16u);
    sub_E1B0(v6, &qword_184B0, &qword_EE68);

    sub_C80C(v7);
  }

  sub_1D9C();
  MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
  v12.receiver = v2;
  v12.super_class = MyMessagesAppViewController;
  return objc_msgSendSuper2(&v12, "dealloc");
}

uint64_t sub_1BD8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1C84()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 addObserver:v0 selector:"sceneWillEnterForegroundWithNotification:" name:UISceneWillEnterForegroundNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 addObserver:v0 selector:"sceneDidEnterBackgroundWithNotification:" name:UISceneDidEnterBackgroundNotification object:0];

  v4 = [v1 defaultCenter];
  [v4 addObserver:v0 selector:"sceneDidDisconnectWithNotification:" name:UISceneDidDisconnectNotification object:0];
}

void sub_1D9C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  [v2 removeObserver:v0 name:UISceneWillEnterForegroundNotification object:0];

  v3 = [v1 defaultCenter];
  [v3 removeObserver:v0 name:UISceneDidEnterBackgroundNotification object:0];

  v4 = [v1 defaultCenter];
  [v4 removeObserver:v0 name:UISceneDidDisconnectNotification object:0];
}

void sub_1EC0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E364();
  if (!v56[3])
  {
    sub_E1B0(v56, &qword_18530, &qword_EFD8);
    goto LABEL_14;
  }

  sub_DC18(0, &qword_18540, UIWindowScene_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_184A0 != -1)
    {
      swift_once();
    }

    v31 = sub_E5D4();
    sub_1BD8(v31, qword_18628);
    (*(v5 + 16))(v7, a1, v4);
    v32 = v2;
    v33 = sub_E5B4();
    v34 = sub_E714();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      v56[0] = v55[0];
      *v35 = 138412802;
      *(v35 + 4) = v32;
      *v36 = v32;
      *(v35 + 12) = 2080;
      v37 = v32;
      *(v35 + 14) = sub_C740(0xD000000000000027, 0x80000000000102E0, v56);
      *(v35 + 22) = 2080;
      sub_E168(&qword_18538, &type metadata accessor for Notification, &protocol conformance descriptor for Notification);
      v38 = sub_E7A4();
      v40 = v39;
      (*(v5 + 8))(v7, v4);
      v41 = sub_C740(v38, v40, v56);

      *(v35 + 24) = v41;
      _os_log_impl(&dword_0, v33, v34, "FindMyMessagesAppViewController: %@ - %s - No Scene %s", v35, 0x20u);
      sub_E1B0(v36, &qword_184B0, &qword_EE68);

      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return;
  }

  v8 = v55[1];
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v9 = sub_E5D4();
  sub_1BD8(v9, qword_18628);
  v10 = v2;
  v11 = sub_E5B4();
  v12 = sub_E724();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56[0] = v15;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2080;
    v16 = v10;
    *(v13 + 14) = sub_C740(0xD000000000000027, 0x80000000000102E0, v56);
    _os_log_impl(&dword_0, v11, v12, "FindMyMessagesAppViewController: %@ - %s", v13, 0x16u);
    sub_E1B0(v14, &qword_184B0, &qword_EE68);

    sub_C80C(v15);
  }

  v17 = [v10 view];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 window];

    if (!v19 || (v20 = [v19 windowScene], v19, !v20))
    {
      v42 = v10;
      v43 = sub_E5B4();
      v44 = sub_E724();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v56[0] = v47;
        *v45 = 138412546;
        *(v45 + 4) = v42;
        *v46 = v42;
        *(v45 + 12) = 2080;
        v48 = v42;
        *(v45 + 14) = sub_C740(0xD000000000000027, 0x80000000000102E0, v56);
        _os_log_impl(&dword_0, v43, v44, "MessagesAppViewController: %@ - %s - Can't find view scene", v45, 0x16u);
        sub_E1B0(v46, &qword_184B0, &qword_EE68);

        sub_C80C(v47);
      }

      goto LABEL_27;
    }

    v21 = [v8 session];
    v22 = [v21 role];

    v23 = sub_E644();
    v24 = sub_E654();
    v26 = v25;
    v27 = sub_E654();
    v29 = v28;

    if (v24 == v27 && v26 == v29)
    {
      v30 = 1;
    }

    else
    {
      v30 = sub_E7B4();
    }

    sub_DC18(0, &qword_18548, NSObject_ptr);
    if ((sub_E734() & 1) == 0 && (v30 & 1) == 0)
    {
      v49 = v10;
      v43 = sub_E5B4();
      v50 = sub_E724();

      if (os_log_type_enabled(v43, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v56[0] = v53;
        *v51 = 138412546;
        *(v51 + 4) = v49;
        *v52 = v49;
        *(v51 + 12) = 2080;
        v54 = v49;
        *(v51 + 14) = sub_C740(0xD000000000000027, 0x80000000000102E0, v56);
        _os_log_impl(&dword_0, v43, v50, "MessagesAppViewController: %@ - %s - Skipping, not same view scene", v51, 0x16u);
        sub_E1B0(v52, &qword_184B0, &qword_EE68);

        sub_C80C(v53);
      }

LABEL_27:
      return;
    }

    sub_E4A4();
  }

  else
  {
    __break(1u);
  }
}

void sub_2778(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E364();
  if (!v56[3])
  {
    sub_E1B0(v56, &qword_18530, &qword_EFD8);
    goto LABEL_14;
  }

  sub_DC18(0, &qword_18540, UIWindowScene_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_184A0 != -1)
    {
      swift_once();
    }

    v31 = sub_E5D4();
    sub_1BD8(v31, qword_18628);
    (*(v5 + 16))(v7, a1, v4);
    v32 = v2;
    v33 = sub_E5B4();
    v34 = sub_E714();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      v56[0] = v55[0];
      *v35 = 138412802;
      *(v35 + 4) = v32;
      *v36 = v32;
      *(v35 + 12) = 2080;
      v37 = v32;
      *(v35 + 14) = sub_C740(0xD000000000000026, 0x80000000000102B0, v56);
      *(v35 + 22) = 2080;
      sub_E168(&qword_18538, &type metadata accessor for Notification, &protocol conformance descriptor for Notification);
      v38 = sub_E7A4();
      v40 = v39;
      (*(v5 + 8))(v7, v4);
      v41 = sub_C740(v38, v40, v56);

      *(v35 + 24) = v41;
      _os_log_impl(&dword_0, v33, v34, "FindMyMessagesAppViewController: %@ - %s - No Scene %s", v35, 0x20u);
      sub_E1B0(v36, &qword_184B0, &qword_EE68);

      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return;
  }

  v8 = v55[1];
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v9 = sub_E5D4();
  sub_1BD8(v9, qword_18628);
  v10 = v2;
  v11 = sub_E5B4();
  v12 = sub_E724();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56[0] = v15;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2080;
    v16 = v10;
    *(v13 + 14) = sub_C740(0xD000000000000026, 0x80000000000102B0, v56);
    _os_log_impl(&dword_0, v11, v12, "FindMyMessagesAppViewController: %@ - %s", v13, 0x16u);
    sub_E1B0(v14, &qword_184B0, &qword_EE68);

    sub_C80C(v15);
  }

  v17 = [v10 view];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 window];

    if (!v19 || (v20 = [v19 windowScene], v19, !v20))
    {
      v42 = v10;
      v43 = sub_E5B4();
      v44 = sub_E724();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v56[0] = v47;
        *v45 = 138412546;
        *(v45 + 4) = v42;
        *v46 = v42;
        *(v45 + 12) = 2080;
        v48 = v42;
        *(v45 + 14) = sub_C740(0xD000000000000026, 0x80000000000102B0, v56);
        _os_log_impl(&dword_0, v43, v44, "MessagesAppViewController: %@ - %s - Can't find view scene", v45, 0x16u);
        sub_E1B0(v46, &qword_184B0, &qword_EE68);

        sub_C80C(v47);
      }

      goto LABEL_27;
    }

    v21 = [v8 session];
    v22 = [v21 role];

    v23 = sub_E644();
    v24 = sub_E654();
    v26 = v25;
    v27 = sub_E654();
    v29 = v28;

    if (v24 == v27 && v26 == v29)
    {
      v30 = 1;
    }

    else
    {
      v30 = sub_E7B4();
    }

    sub_DC18(0, &qword_18548, NSObject_ptr);
    if ((sub_E734() & 1) == 0 && (v30 & 1) == 0)
    {
      v49 = v10;
      v43 = sub_E5B4();
      v50 = sub_E724();

      if (os_log_type_enabled(v43, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v56[0] = v53;
        *v51 = 138412546;
        *(v51 + 4) = v49;
        *v52 = v49;
        *(v51 + 12) = 2080;
        v54 = v49;
        *(v51 + 14) = sub_C740(0xD000000000000026, 0x80000000000102B0, v56);
        _os_log_impl(&dword_0, v43, v50, "MessagesAppViewController: %@ - %s - Skipping, not same view scene", v51, 0x16u);
        sub_E1B0(v52, &qword_184B0, &qword_EE68);

        sub_C80C(v53);
      }

LABEL_27:
      return;
    }

    sub_E484();
  }

  else
  {
    __break(1u);
  }
}

void sub_3030(uint64_t a1)
{
  v2 = v1;
  v4 = sub_E374();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E364();
  if (!v56[3])
  {
    sub_E1B0(v56, &qword_18530, &qword_EFD8);
    goto LABEL_14;
  }

  sub_DC18(0, &qword_18540, UIWindowScene_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_184A0 != -1)
    {
      swift_once();
    }

    v31 = sub_E5D4();
    sub_1BD8(v31, qword_18628);
    (*(v5 + 16))(v7, a1, v4);
    v32 = v2;
    v33 = sub_E5B4();
    v34 = sub_E714();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      v56[0] = v55[0];
      *v35 = 138412802;
      *(v35 + 4) = v32;
      *v36 = v32;
      *(v35 + 12) = 2080;
      v37 = v32;
      *(v35 + 14) = sub_C740(0xD000000000000021, 0x8000000000010250, v56);
      *(v35 + 22) = 2080;
      sub_E168(&qword_18538, &type metadata accessor for Notification, &protocol conformance descriptor for Notification);
      v38 = sub_E7A4();
      v40 = v39;
      (*(v5 + 8))(v7, v4);
      v41 = sub_C740(v38, v40, v56);

      *(v35 + 24) = v41;
      _os_log_impl(&dword_0, v33, v34, "FindMyMessagesAppViewController: %@ - %s - No Scene %s", v35, 0x20u);
      sub_E1B0(v36, &qword_184B0, &qword_EE68);

      swift_arrayDestroy();
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return;
  }

  v8 = v55[1];
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v9 = sub_E5D4();
  sub_1BD8(v9, qword_18628);
  v10 = v2;
  v11 = sub_E5B4();
  v12 = sub_E724();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v56[0] = v15;
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2080;
    v16 = v10;
    *(v13 + 14) = sub_C740(0xD000000000000021, 0x8000000000010250, v56);
    _os_log_impl(&dword_0, v11, v12, "FindMyMessagesAppViewController: %@ - %s", v13, 0x16u);
    sub_E1B0(v14, &qword_184B0, &qword_EE68);

    sub_C80C(v15);
  }

  v17 = [v10 view];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 window];

    if (!v19 || (v20 = [v19 windowScene], v19, !v20))
    {
      v42 = v10;
      v43 = sub_E5B4();
      v44 = sub_E724();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v56[0] = v47;
        *v45 = 138412546;
        *(v45 + 4) = v42;
        *v46 = v42;
        *(v45 + 12) = 2080;
        v48 = v42;
        *(v45 + 14) = sub_C740(0xD000000000000021, 0x8000000000010250, v56);
        _os_log_impl(&dword_0, v43, v44, "MessagesAppViewController: %@ - %s - Can't find view scene", v45, 0x16u);
        sub_E1B0(v46, &qword_184B0, &qword_EE68);

        sub_C80C(v47);
      }

      goto LABEL_27;
    }

    v21 = [v8 session];
    v22 = [v21 role];

    v23 = sub_E644();
    v24 = sub_E654();
    v26 = v25;
    v27 = sub_E654();
    v29 = v28;

    if (v24 == v27 && v26 == v29)
    {
      v30 = 1;
    }

    else
    {
      v30 = sub_E7B4();
    }

    sub_DC18(0, &qword_18548, NSObject_ptr);
    if ((sub_E734() & 1) == 0 && (v30 & 1) == 0)
    {
      v49 = v10;
      v43 = sub_E5B4();
      v50 = sub_E724();

      if (os_log_type_enabled(v43, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v56[0] = v53;
        *v51 = 138412546;
        *(v51 + 4) = v49;
        *v52 = v49;
        *(v51 + 12) = 2080;
        v54 = v49;
        *(v51 + 14) = sub_C740(0xD000000000000021, 0x8000000000010250, v56);
        _os_log_impl(&dword_0, v43, v50, "MessagesAppViewController: %@ - %s - Skipping, not same view scene", v51, 0x16u);
        sub_E1B0(v52, &qword_184B0, &qword_EE68);

        sub_C80C(v53);
      }

LABEL_27:
      return;
    }

    sub_E474();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_38E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  v6 = sub_E374();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E354();
  v10 = a1;
  a4(v9);

  return (*(v7 + 8))(v9, v6);
}

Swift::Void __swiftcall FindMyMessagesAppViewController.willBecomeActive(with:)(MSConversation with)
{
  v3 = sub_E584();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
  v19.receiver = v1;
  v19.super_class = MyMessagesAppViewController;
  objc_msgSendSuper2(&v19, "willBecomeActiveWithConversation:", with.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v8 = sub_E5D4();
  sub_1BD8(v8, qword_18628);
  v9 = v1;
  v10 = sub_E5B4();
  v11 = sub_E724();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v17 = v4;
    v18 = v14;
    v15 = v14;
    *v12 = 138412546;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v16 = v9;
    *(v12 + 14) = sub_C740(0xD000000000000017, 0x800000000000FE10, &v18);
    _os_log_impl(&dword_0, v10, v11, "FindMyMessagesAppViewController: %@ - %s", v12, 0x16u);
    sub_E1B0(v13, &qword_184B0, &qword_EE68);

    sub_C80C(v15);
    v4 = v17;
  }

  sub_72CC(with.super.isa, [v9 presentationStyle], v6);
  sub_E494();
  (*(v4 + 8))(v6, v3);
}

id FindMyMessagesAppViewController.preferredContentSizeDidChange(forChildContentContainer:)(void *a1)
{
  v15.receiver = v1;
  v15.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v15, "preferredContentSizeDidChangeForChildContentContainer:", a1);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  v4 = v1;
  swift_unknownObjectRetain();
  v5 = sub_E5B4();
  v6 = sub_E704();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 138412802;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v9 = v4;
    *(v7 + 14) = sub_C740(0xD000000000000038, 0x800000000000FE30, &v14);
    *(v7 + 22) = 2080;
    [a1 preferredContentSize];
    type metadata accessor for CGSize(0);
    v10 = sub_E664();
    v12 = sub_C740(v10, v11, &v14);

    *(v7 + 24) = v12;
    _os_log_impl(&dword_0, v5, v6, "FindMyMessagesAppViewController: %@ - %s - Request Resize - %s", v7, 0x20u);
    sub_E1B0(v8, &qword_184B0, &qword_EE68);

    swift_arrayDestroy();
  }

  return [v4 requestResize];
}

Swift::Void __swiftcall FindMyMessagesAppViewController.didBecomeActive(with:)(MSConversation with)
{
  v3 = sub_19DC(&qword_184C0, &qword_EE70);
  __chkstk_darwin(v3 - 8);
  v5 = &v20 - v4;
  MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
  v22.receiver = v1;
  v22.super_class = MyMessagesAppViewController;
  objc_msgSendSuper2(&v22, "didBecomeActiveWithConversation:", with.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v7 = sub_E5D4();
  sub_1BD8(v7, qword_18628);
  v8 = v1;
  v9 = sub_E5B4();
  v10 = sub_E724();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v8;
    *v12 = v8;
    *(v11 + 12) = 2080;
    v14 = v8;
    *(v11 + 14) = sub_C740(0xD000000000000016, 0x800000000000FE70, &v21);
    _os_log_impl(&dword_0, v9, v10, "FindMyMessagesAppViewController: %@ - %s", v11, 0x16u);
    sub_E1B0(v12, &qword_184B0, &qword_EE68);

    sub_C80C(v13);
  }

  if ([v8 presentationStyle] == &dword_0 + 2)
  {
    v15 = *&v8[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController];
    [v8 _balloonMaskEdgeInsets];
    [v15 setAdditionalSafeAreaInsets:?];
  }

  v16 = sub_E6F4();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  sub_E6D4();
  v17 = v8;
  v18 = sub_E6C4();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = &protocol witness table for MainActor;
  v19[4] = v17;
  sub_4658(0, 0, v5, &unk_EE80, v19);
}

uint64_t sub_4288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_E784();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_E6D4();
  v4[6] = sub_E6C4();
  v7 = sub_E6B4();
  v4[7] = v7;
  v4[8] = v6;

  return _swift_task_switch(sub_437C, v7, v6);
}

uint64_t sub_437C()
{
  sub_E7E4();
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_4448;

  return sub_BBE0(600000000000000000, 0, 0, 0, 1);
}

uint64_t sub_4448()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_E2F8;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[7];
    v8 = v3[8];
    v9 = sub_45DC;
  }

  return _swift_task_switch(v9, v7, v8);
}

uint64_t sub_45DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);

  [v3 setReadyForDisplay];

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_4658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_19DC(&qword_184C0, &qword_EE70);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_DF50(a3, v25 - v10);
  v12 = sub_E6F4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_E1B0(v11, &qword_184C0, &qword_EE70);
  }

  else
  {
    sub_E6E4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_E6B4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_E674() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_E1B0(a3, &qword_184C0, &qword_EE70);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_E1B0(a3, &qword_184C0, &qword_EE70);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

Swift::Bool __swiftcall FindMyMessagesAppViewController.displaysAfterAppearance()()
{
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v1 = sub_E5D4();
  sub_1BD8(v1, qword_18628);
  v2 = v0;
  v3 = sub_E5B4();
  v4 = sub_E704();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = v2;
    *(v5 + 14) = sub_C740(0xD000000000000019, 0x800000000000FE90, &v10);
    _os_log_impl(&dword_0, v3, v4, "FindMyMessagesAppViewController: %@ - %s", v5, 0x16u);
    sub_E1B0(v6, &qword_184B0, &qword_EE68);

    sub_C80C(v7);
  }

  return 0;
}

Swift::Void __swiftcall FindMyMessagesAppViewController.didResignActive(with:)(MSConversation with)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v12, "didResignActiveWithConversation:", with.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  v4 = v1;
  v5 = sub_E5B4();
  v6 = sub_E724();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = v4;
    *(v7 + 14) = sub_C740(0xD000000000000016, 0x800000000000FEB0, &v11);
    _os_log_impl(&dword_0, v5, v6, "FindMyMessagesAppViewController: %@ - %s", v7, 0x16u);
    sub_E1B0(v8, &qword_184B0, &qword_EE68);

    sub_C80C(v9);
  }

  sub_E474();
}

Swift::Void __swiftcall FindMyMessagesAppViewController.didReceive(_:conversation:)(MSMessage _, MSConversation conversation)
{
  v14.receiver = v2;
  v14.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v14, "didReceiveMessage:conversation:", _.super.isa, conversation.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v5 = sub_E5D4();
  sub_1BD8(v5, qword_18628);
  v6 = v2;
  v7 = sub_E5B4();
  v8 = sub_E724();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    *(v9 + 14) = sub_C740(0xD00000000000001BLL, 0x800000000000FED0, &v13);
    _os_log_impl(&dword_0, v7, v8, "FindMyMessagesAppViewController: %@ - %s", v9, 0x16u);
    sub_E1B0(v10, &qword_184B0, &qword_EE68);

    sub_C80C(v11);
  }
}

Swift::Void __swiftcall FindMyMessagesAppViewController.didStartSending(_:conversation:)(MSMessage _, MSConversation conversation)
{
  v14.receiver = v2;
  v14.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v14, "didStartSendingMessage:conversation:", _.super.isa, conversation.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v5 = sub_E5D4();
  sub_1BD8(v5, qword_18628);
  v6 = v2;
  v7 = sub_E5B4();
  v8 = sub_E724();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    *(v9 + 14) = sub_C740(0xD000000000000020, 0x800000000000FEF0, &v13);
    _os_log_impl(&dword_0, v7, v8, "FindMyMessagesAppViewController: %@ - %s", v9, 0x16u);
    sub_E1B0(v10, &qword_184B0, &qword_EE68);

    sub_C80C(v11);
  }
}

Swift::Void __swiftcall FindMyMessagesAppViewController.didCancelSending(_:conversation:)(MSMessage _, MSConversation conversation)
{
  v14.receiver = v2;
  v14.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v14, "didCancelSendingMessage:conversation:", _.super.isa, conversation.super.isa);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v5 = sub_E5D4();
  sub_1BD8(v5, qword_18628);
  v6 = v2;
  v7 = sub_E5B4();
  v8 = sub_E724();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v9 = 138412546;
    *(v9 + 4) = v6;
    *v10 = v6;
    *(v9 + 12) = 2080;
    v12 = v6;
    *(v9 + 14) = sub_C740(0xD000000000000021, 0x800000000000FF20, &v13);
    _os_log_impl(&dword_0, v7, v8, "FindMyMessagesAppViewController: %@ - %s", v9, 0x16u);
    sub_E1B0(v10, &qword_184B0, &qword_EE68);

    sub_C80C(v11);
  }
}

void FindMyMessagesAppViewController.willTransition(to:)(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v14, "willTransitionToPresentationStyle:", a1);
  sub_E464();
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  v4 = v1;
  v5 = sub_E5B4();
  v6 = sub_E724();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 138412802;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v9 = v4;
    *(v7 + 14) = sub_C740(0xD000000000000013, 0x800000000000FF50, &v13);
    *(v7 + 22) = 2080;
    type metadata accessor for MSMessagesAppPresentationStyle(0);
    v10 = sub_E664();
    v12 = sub_C740(v10, v11, &v13);

    *(v7 + 24) = v12;
    _os_log_impl(&dword_0, v5, v6, "FindMyMessagesAppViewController: %@ - %s presentationStyle: %s", v7, 0x20u);
    sub_E1B0(v8, &qword_184B0, &qword_EE68);

    swift_arrayDestroy();
  }
}

void FindMyMessagesAppViewController.didTransition(to:)(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v14, "didTransitionToPresentationStyle:", a1);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  v4 = v1;
  v5 = sub_E5B4();
  v6 = sub_E724();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v7 = 138412802;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v9 = v4;
    *(v7 + 14) = sub_C740(0xD000000000000012, 0x800000000000FF70, &v13);
    *(v7 + 22) = 2080;
    type metadata accessor for MSMessagesAppPresentationStyle(0);
    v10 = sub_E664();
    v12 = sub_C740(v10, v11, &v13);

    *(v7 + 24) = v12;
    _os_log_impl(&dword_0, v5, v6, "FindMyMessagesAppViewController: %@ - %s presentationStyle: %s", v7, 0x20u);
    sub_E1B0(v8, &qword_184B0, &qword_EE68);

    swift_arrayDestroy();
  }
}

double FindMyMessagesAppViewController.contentSizeThatFits(_:)(double a1)
{
  if ([v1 presentationStyle] == &dword_0 + 2)
  {
    [v1 _balloonMaskEdgeInsets];
    v4 = v3;
    v6 = v5;
    [*&v1[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController] preferredContentSize];
    return v6 + v4 + v7;
  }

  return a1;
}

id FindMyMessagesAppViewController.navigationItem.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController) navigationItem];

  return v1;
}

UIScrollView_optional __swiftcall FindMyMessagesAppViewController.contentScrollView(for:)(NSDirectionalRectEdge a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController) contentScrollViewForEdge:a1];

  v3 = v2;
  result.value.super.super.super.isa = v3;
  result.is_nil = v4;
  return result;
}

Swift::Void __swiftcall FindMyMessagesAppViewController.viewDidLoad()()
{
  v48.receiver = v0;
  v48.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v48, "viewDidLoad");
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v1 = sub_E5D4();
  sub_1BD8(v1, qword_18628);
  v2 = v0;
  v3 = sub_E5B4();
  v4 = sub_E724();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v47 = v7;
    *v5 = 138412546;
    *(v5 + 4) = v2;
    *v6 = v2;
    *(v5 + 12) = 2080;
    v8 = v2;
    *(v5 + 14) = sub_C740(0x4C64694477656976, 0xED0000292864616FLL, &v47);
    _os_log_impl(&dword_0, v3, v4, "FindMyMessagesAppViewController: %@ - %s", v5, 0x16u);
    sub_E1B0(v6, &qword_184B0, &qword_EE68);

    sub_C80C(v7);
  }

  v9 = *&v2[OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController];
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_18;
  }

  v11 = v10;
  [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [v2 view];
  if (!v12)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v13 = v12;
  v14 = [v9 view];
  if (!v14)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v14;
  [v13 addSubview:v14];

  sub_19DC(&qword_184D0, &qword_EE88);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_EE50;
  v17 = [v9 view];
  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v17 topAnchor];

  v20 = [v2 view];
  if (!v20)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v21 = v20;
  v22 = [v20 topAnchor];

  v23 = [v19 constraintEqualToAnchor:v22];
  *(v16 + 32) = v23;
  v24 = [v9 view];
  if (!v24)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v25 = v24;
  v26 = [v24 bottomAnchor];

  v27 = [v2 view];
  if (!v27)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v28 = v27;
  v29 = [v27 bottomAnchor];

  v30 = [v26 constraintEqualToAnchor:v29];
  *(v16 + 40) = v30;
  v31 = [v9 view];
  if (!v31)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v32 = v31;
  v33 = [v31 leadingAnchor];

  v34 = [v2 view];
  if (!v34)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v35 = v34;
  v36 = [v34 leadingAnchor];

  v37 = [v33 constraintEqualToAnchor:v36];
  *(v16 + 48) = v37;
  v38 = [v9 view];
  if (!v38)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v39 = v38;
  v40 = [v38 trailingAnchor];

  v41 = [v2 view];
  if (v41)
  {
    v42 = v41;
    v43 = objc_opt_self();
    v44 = [v42 trailingAnchor];

    v45 = [v40 constraintEqualToAnchor:v44];
    *(v16 + 56) = v45;
    sub_DC18(0, &qword_184D8, NSLayoutConstraint_ptr);
    isa = sub_E694().super.isa;

    [v43 activateConstraints:isa];

    [v2 addChildViewController:v9];
    [v9 didMoveToParentViewController:v2];
    sub_E4F4();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_E4D4();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_E4E4();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_E4C4();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_E444();

    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_E4B4();

    sub_1C84();
    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_633C(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_E6D4();
  v2[7] = sub_E6C4();
  v4 = sub_E6B4();
  v2[8] = v4;
  v2[9] = v3;

  return _swift_task_switch(sub_63D4, v4, v3);
}

uint64_t sub_63D4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_64CC;
    v3 = v0[5];

    return sub_8610(v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_64CC()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return _swift_task_switch(sub_660C, v4, v3);
}

uint64_t sub_660C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_6670(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  *(v7 + 88) = a1;
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 56) = a4;
  *(v7 + 64) = a5;
  *(v7 + 40) = a2;
  *(v7 + 48) = a3;
  sub_E6D4();
  *(v7 + 96) = sub_E6C4();
  v9 = sub_E6B4();
  *(v7 + 104) = v9;
  *(v7 + 112) = v8;

  return _swift_task_switch(sub_6714, v9, v8);
}

uint64_t sub_6714()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 15) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 16) = v2;
    *v2 = v0;
    v2[1] = sub_6810;
    v3 = v0[9];
    v4 = v0[10];
    v5 = v0[7];
    v6 = v0[8];
    v7 = v0[5];
    v8 = v0[6];

    return sub_9B6C(v7, v8, v5, v6, v3, v4);
  }

  else
  {

    v10 = *(v0 + 1);

    return v10();
  }
}

uint64_t sub_6810()
{
  v1 = *v0;
  v2 = *(*v0 + 120);

  v3 = *(v1 + 112);
  v4 = *(v1 + 104);

  return _swift_task_switch(sub_6950, v4, v3);
}

uint64_t sub_6950(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_69B4(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = sub_E6D4();
  v1[7] = sub_E6C4();
  v3 = sub_E6B4();
  v1[8] = v3;
  v1[9] = v2;

  return _swift_task_switch(sub_6A50, v3, v2);
}

uint64_t sub_6A50()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v0[11] = sub_E6C4();
    v3 = sub_E6B4();

    return _swift_task_switch(sub_6B40, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_6B40(uint64_t a1, uint64_t a2)
{
  v3 = v2[10];

  [v3 dismissViewControllerAnimated:1 completion:0];

  v4 = v2[8];
  v5 = v2[9];

  return _swift_task_switch(sub_E2FC, v4, v5);
}

void sub_6BC0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_6C24(uint64_t a1)
{
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v1 = sub_E5D4();
  sub_1BD8(v1, qword_18628);

  v2 = sub_E5B4();
  v3 = sub_E724();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v4 + 4) = Strong;
    *v5 = Strong;
    _os_log_impl(&dword_0, v2, v3, "MessagesAppViewController: %@ - setTintColorDidInvalidate", v4, 0xCu);
    sub_E1B0(v5, &qword_184B0, &qword_EE68);
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 invalidateMessageTintColor];
  }
}

Swift::Void __swiftcall FindMyMessagesAppViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v12, "viewWillAppear:", a1);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  v4 = v1;
  v5 = sub_E5B4();
  v6 = sub_E724();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = v4;
    *(v7 + 14) = sub_C740(0xD000000000000012, 0x800000000000FF90, &v11);
    _os_log_impl(&dword_0, v5, v6, "MessagesAppViewController: %@ - %s", v7, 0x16u);
    sub_E1B0(v8, &qword_184B0, &qword_EE68);

    sub_C80C(v9);
  }

  sub_E4A4();
}

Swift::Void __swiftcall FindMyMessagesAppViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v12.receiver = v1;
  v12.super_class = type metadata accessor for FindMyMessagesAppViewController();
  objc_msgSendSuper2(&v12, "viewDidDisappear:", a1);
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  v4 = v1;
  v5 = sub_E5B4();
  v6 = sub_E724();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v7 = 138412546;
    *(v7 + 4) = v4;
    *v8 = v4;
    *(v7 + 12) = 2080;
    v10 = v4;
    *(v7 + 14) = sub_C740(0xD000000000000014, 0x800000000000FFB0, &v11);
    _os_log_impl(&dword_0, v5, v6, "MessagesAppViewController: %@ - %s", v7, 0x16u);
    sub_E1B0(v8, &qword_184B0, &qword_EE68);

    sub_C80C(v9);
  }

  sub_E484();
}

uint64_t sub_72CC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a2;
  v5 = sub_19DC(&qword_18560, &qword_F048);
  __chkstk_darwin(v5 - 8);
  v128 = &v109 - v6;
  v7 = sub_19DC(&qword_18568, &qword_F050);
  __chkstk_darwin(v7 - 8);
  v118 = &v109 - v8;
  v9 = sub_E544();
  __chkstk_darwin(v9 - 8);
  v117 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_E554();
  v114 = *(v115 - 8);
  __chkstk_darwin(v115);
  v116 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_19DC(&qword_18570, &qword_F058);
  __chkstk_darwin(v12 - 8);
  v121 = &v109 - v13;
  v14 = sub_E414();
  v131 = *(v14 - 8);
  v132 = v14;
  __chkstk_darwin(v14);
  v130 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_E564();
  v126 = *(v16 - 8);
  v127 = v16;
  v17 = __chkstk_darwin(v16);
  v125 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v133 = &v109 - v19;
  v135 = sub_E5A4();
  v20 = *(v135 - 8);
  v21 = __chkstk_darwin(v135);
  v113 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v119 = &v109 - v24;
  __chkstk_darwin(v23);
  v26 = &v109 - v25;
  v124 = sub_E344();
  v123 = *(v124 - 8);
  __chkstk_darwin(v124);
  v134 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [a1 recipientAddresses];
  v29 = sub_E6A4();

  v30 = *(v29 + 16);
  v129 = a3;
  if (v30)
  {
    v120 = a1;
    *&v139 = &_swiftEmptyArrayStorage;
    sub_D0A8(0, v30, 0);
    v31 = v139;
    v32 = v29 + 40;
    do
    {

      sub_E594();
      *&v139 = v31;
      v34 = *(v31 + 16);
      v33 = *(v31 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_D0A8((v33 > 1), v34 + 1, 1);
        v31 = v139;
      }

      *(v31 + 16) = v34 + 1;
      (*(v20 + 32))(v31 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v34, v26, v135);
      v32 += 16;
      --v30;
    }

    while (v30);

    a1 = v120;
  }

  else
  {
  }

  v35 = [a1 senderAddress];
  sub_E654();

  sub_E334();
  if (([a1 respondsToSelector:sub_E3A4()] & 1) == 0)
  {
    v38 = 1;
    goto LABEL_23;
  }

  v36 = sub_E644();
  v37 = [a1 valueForKey:v36];

  if (v37)
  {
    sub_E744();
    swift_unknownObjectRelease();
  }

  else
  {
    v137 = 0u;
    v138 = 0u;
  }

  v139 = v137;
  v140 = v138;
  if (!*(&v138 + 1))
  {
    sub_E1B0(&v139, &qword_18530, &qword_EFD8);
    goto LABEL_17;
  }

  if (!swift_dynamicCast())
  {
LABEL_17:
    v38 = 1;
    goto LABEL_18;
  }

  v38 = v136;
LABEL_18:
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v39 = sub_E5D4();
  sub_1BD8(v39, qword_18628);
  v40 = sub_E5B4();
  v41 = sub_E724();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v139 = v43;
    *v42 = 136315394;
    *(v42 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v139);
    *(v42 + 12) = 1024;
    *(v42 + 14) = v38;
    _os_log_impl(&dword_0, v40, v41, "FindMyMessagesAppViewController: %s - isiMessage: %{BOOL}d", v42, 0x12u);
    sub_C80C(v43);
  }

LABEL_23:
  if (![a1 respondsToSelector:sub_E3A4()])
  {
    v46 = a1;
    v47 = 0;
    goto LABEL_38;
  }

  v44 = sub_E644();
  v45 = [a1 valueForKey:v44];

  if (v45)
  {
    sub_E744();
    swift_unknownObjectRelease();
  }

  else
  {
    v137 = 0u;
    v138 = 0u;
  }

  v139 = v137;
  v140 = v138;
  if (!*(&v138 + 1))
  {
    sub_E1B0(&v139, &qword_18530, &qword_EFD8);
    goto LABEL_32;
  }

  if (!swift_dynamicCast())
  {
LABEL_32:
    v47 = 0;
    goto LABEL_33;
  }

  v47 = v136;
LABEL_33:
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v48 = sub_E5D4();
  sub_1BD8(v48, qword_18628);
  v49 = sub_E5B4();
  v50 = sub_E724();
  v46 = a1;
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v139 = v52;
    *v51 = 136315394;
    *(v51 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v139);
    *(v51 + 12) = 1024;
    *(v51 + 14) = v47;
    _os_log_impl(&dword_0, v49, v50, "FindMyMessagesAppViewController: %s - isBusiness: %{BOOL}d", v51, 0x12u);
    sub_C80C(v52);
  }

LABEL_38:
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v53 = v38 ^ 1 | v47;
  v54 = sub_E5D4();
  sub_1BD8(v54, qword_18628);
  v55 = sub_E5B4();
  v56 = sub_E724();
  v57 = os_log_type_enabled(v55, v56);
  LODWORD(v120) = v38 ^ 1 | v47;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v139 = v59;
    *v58 = 136315394;
    *(v58 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v139);
    *(v58 + 12) = 1024;
    *(v58 + 14) = v53 & 1;
    _os_log_impl(&dword_0, v55, v56, "FindMyMessagesAppViewController: %s - disableFindMyFeatures: %{BOOL}d", v58, 0x12u);
    sub_C80C(v59);
  }

  v61 = v131;
  v60 = v132;
  v62 = v130;
  v63 = v121;
  if (v122 < 2)
  {
    v64 = &enum case for CompositeAppViewState.app(_:);
    goto LABEL_72;
  }

  if (v122 == 2)
  {
    v65 = [v46 selectedMessage];
    if (v65)
    {
      v66 = v65;
      sub_E3E4();
      if ((*(v61 + 48))(v63, 1, v60) == 1)
      {
        sub_E1B0(v63, &qword_18570, &qword_F058);
        v67 = sub_E5B4();
        v68 = sub_E714();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&v139 = v70;
          *v69 = 136315138;
          *(v69 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v139);
          _os_log_impl(&dword_0, v67, v68, "FindMyMessagesAppViewController: %s - No message payload while in transcript", v69, 0xCu);
          sub_C80C(v70);
        }
      }

      else
      {
        (*(v61 + 32))(v62, v63, v60);
        v81 = [v66 senderAddress];
        if (v81)
        {
          v82 = v81;
          sub_E654();

          v83 = [v46 recipientAddresses];
          v84 = sub_E6A4();

          v85 = [v46 conversationIdentifier];
          v122 = sub_E654();
          v121 = v86;

          v112 = sub_E3D4();
          v111 = v87;
          sub_E594();
          v88 = *(v84 + 16);
          if (v88)
          {
            v110 = v66;
            *&v139 = &_swiftEmptyArrayStorage;
            sub_D0A8(0, v88, 0);
            v89 = v139;
            v109 = v84;
            v90 = v84 + 40;
            v91 = v113;
            do
            {

              sub_E594();
              *&v139 = v89;
              v93 = *(v89 + 16);
              v92 = *(v89 + 24);
              if (v93 >= v92 >> 1)
              {
                sub_D0A8((v92 > 1), v93 + 1, 1);
                v89 = v139;
              }

              *(v89 + 16) = v93 + 1;
              (*(v20 + 32))(v89 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v93, v91, v135);
              v90 += 16;
              --v88;
            }

            while (v88);

            v66 = v110;
          }

          else
          {
          }

          v99 = [v66 isFromMe];
          v100 = &enum case for CompositeAppViewState.TranscriptInfo.Direction.outgoing(_:);
          if (!v99)
          {
            v100 = &enum case for CompositeAppViewState.TranscriptInfo.Direction.incoming(_:);
          }

          (*(v114 + 104))(v116, *v100, v115);
          [v66 isPending];
          v101 = v130;
          sub_E3F4();
          sub_E404();
          sub_E3C4();
          sub_D2A0();
          sub_E534();

          (*(v131 + 8))(v101, v132);
          v64 = &enum case for CompositeAppViewState.transcript(_:);
          goto LABEL_72;
        }

        v94 = sub_E5B4();
        v95 = sub_E714();
        if (os_log_type_enabled(v94, v95))
        {
          v96 = v62;
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *&v139 = v98;
          *v97 = 136315138;
          *(v97 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v139);
          _os_log_impl(&dword_0, v94, v95, "MessagesAppViewController: %s - No sender address", v97, 0xCu);
          sub_C80C(v98);

          (*(v61 + 8))(v96, v60);
        }

        else
        {

          (*(v61 + 8))(v62, v60);
        }
      }
    }

    else
    {
      v77 = sub_E5B4();
      v78 = sub_E714();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        *&v139 = v80;
        *v79 = 136315138;
        *(v79 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v139);
        _os_log_impl(&dword_0, v77, v78, "FindMyMessagesAppViewController: %s - No selected message while in transcript", v79, 0xCu);
        sub_C80C(v80);
      }
    }

    v64 = &enum case for CompositeAppViewState.loading(_:);
LABEL_72:
    v74 = v128;
    goto LABEL_73;
  }

  v71 = sub_E5B4();
  v72 = sub_E714();
  v73 = os_log_type_enabled(v71, v72);
  v74 = v128;
  if (v73)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    *&v139 = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_C740(0xD000000000000035, 0x8000000000010310, &v139);
    _os_log_impl(&dword_0, v71, v72, "FindMyMessagesAppViewController: %s - Unknown presentation style", v75, 0xCu);
    sub_C80C(v76);
  }

  v64 = &enum case for CompositeAppViewState.loading(_:);
LABEL_73:
  v103 = v126;
  v102 = v127;
  v104 = v133;
  (*(v126 + 104))(v133, *v64, v127);
  v105 = v123;
  v106 = v134;
  v107 = v124;
  (*(v123 + 16))(v74, v134, v124);
  (*(v105 + 56))(v74, 0, 1, v107);
  (*(v103 + 16))(v125, v104, v102);
  sub_E574();
  (*(v103 + 8))(v104, v102);
  return (*(v105 + 8))(v106, v107);
}

uint64_t sub_8610(uint64_t a1)
{
  v2[34] = a1;
  v2[35] = v1;
  v3 = sub_E394();
  v2[36] = v3;
  v2[37] = *(v3 - 8);
  v2[38] = swift_task_alloc();
  v4 = sub_E544();
  v2[39] = v4;
  v2[40] = *(v4 - 8);
  v2[41] = swift_task_alloc();
  v5 = sub_E414();
  v2[42] = v5;
  v2[43] = *(v5 - 8);
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  sub_E6D4();
  v2[46] = sub_E6C4();
  v7 = sub_E6B4();
  v2[47] = v7;
  v2[48] = v6;

  return _swift_task_switch(sub_87C8, v7, v6);
}

uint64_t sub_87C8()
{
  v38 = v0;
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v0 + 336);
  v3 = *(v0 + 344);
  v4 = *(v0 + 272);
  v5 = sub_E5D4();
  *(v0 + 392) = sub_1BD8(v5, qword_18628);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_E5B4();
  v8 = sub_E724();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 360);
  if (v9)
  {
    v11 = *(v0 + 344);
    v12 = *(v0 + 352);
    v13 = *(v0 + 336);
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_C740(0xD000000000000020, 0x8000000000010220, &v37);
    *(v14 + 12) = 2080;
    v6(v12, v10, v13);
    v15 = sub_E664();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_C740(v15, v17, &v37);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_0, v7, v8, "FindMyMessagesAppViewController: %s payload: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v19 = *(v0 + 336);
    v20 = *(v0 + 344);

    (*(v20 + 8))(v10, v19);
  }

  v21 = [*(v0 + 280) activeConversation];
  *(v0 + 400) = v21;
  if (v21)
  {
    v22 = v21;
    v24 = *(v0 + 320);
    v23 = *(v0 + 328);
    v25 = *(v0 + 312);
    sub_E3F4();
    v26 = (*(v24 + 88))(v23, v25);
    v27 = *(v0 + 320);
    v28 = *(v0 + 328);
    v29 = *(v0 + 312);
    if (v26 == enum case for CompositeAppViewState.TranscriptInfo.Kind.share(_:))
    {
      (*(v27 + 96))(*(v0 + 328), v29);
      if (*v28 == 3)
      {
        v36 = (&async function pointer to dispatch thunk of MessagesAppViewModel.createMapsURLForThisDeviceCurrentLocation() + async function pointer to dispatch thunk of MessagesAppViewModel.createMapsURLForThisDeviceCurrentLocation());
        v30 = swift_task_alloc();
        *(v0 + 408) = v30;
        *v30 = v0;
        v30[1] = sub_8C98;
        v31 = *(v0 + 304);

        return v36(v31);
      }
    }

    else
    {
      (*(v27 + 8))(*(v0 + 328), v29);
    }

    isa = sub_E3B4().super.isa;
    *(v0 + 448) = isa;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_94E8;
    v35 = swift_continuation_init();
    *(v0 + 200) = sub_19DC(&qword_18518, &qword_EFC0);
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_9AC0;
    *(v0 + 168) = &unk_148B0;
    *(v0 + 176) = v35;
    [v22 insertMessage:isa completionHandler:v0 + 144];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_8C98()
{
  v2 = *v1;
  v2[52] = v0;

  if (v0)
  {
    v3 = v2[47];
    v4 = v2[48];

    return _swift_task_switch(sub_96CC, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[53] = v5;
    *v5 = v2;
    v5[1] = sub_8E04;
    v6 = v2[38];

    return sub_D548(v6);
  }
}

uint64_t sub_8E04(uint64_t a1)
{
  *(*v1 + 432) = a1;

  return _swift_task_switch(sub_8F04, 0, 0);
}

uint64_t sub_8F04()
{
  v1 = v0[54];
  v2 = v0[50];
  v0[10] = v0;
  v0[11] = sub_9028;
  v3 = swift_continuation_init();
  v0[33] = sub_19DC(&qword_18518, &qword_EFC0);
  v0[26] = _NSConcreteStackBlock;
  v0[27] = 1107296256;
  v0[28] = sub_9AC0;
  v0[29] = &unk_148D8;
  v0[30] = v3;
  [v2 insertRichLink:v1 completionHandler:v0 + 26];

  return _swift_continuation_await(v0 + 10);
}

uint64_t sub_9028()
{
  v1 = *(*v0 + 112);
  *(*v0 + 440) = v1;
  if (v1)
  {
    v2 = sub_9264;
  }

  else
  {
    v2 = sub_9138;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_9138()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);

  return _swift_task_switch(sub_919C, v1, v2);
}

uint64_t sub_919C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 296);
  v3 = *(v2 + 304);
  v5 = *(v2 + 288);

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 400);
  [*(v2 + 280) dismiss];

  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_9264()
{
  v1 = v0[54];
  swift_willThrow();

  v2 = v0[47];
  v3 = v0[48];

  return _swift_task_switch(sub_92D4, v2, v3);
}

uint64_t sub_92D4(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  v4 = *(v2 + 296);
  v3 = *(v2 + 304);
  v5 = *(v2 + 288);

  (*(v4 + 8))(v3, v5);
  swift_errorRetain();
  v6 = sub_E5B4();
  v7 = sub_E714();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_C740(0xD000000000000020, 0x8000000000010220, &v15);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v6, v7, "FindMyMessagesAppViewController: %s failed to insert message with error: %@", v8, 0x16u);
    sub_E1B0(v9, &qword_184B0, &qword_EE68);

    sub_C80C(v10);
  }

  v12 = *(v2 + 400);
  [*(v2 + 280) dismiss];

  v13 = *(v2 + 8);

  return v13();
}

uint64_t sub_94E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 456) = v2;
  v3 = *(v1 + 384);
  v4 = *(v1 + 376);
  if (v2)
  {
    v5 = sub_98C0;
  }

  else
  {
    v5 = sub_9618;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_9618()
{

  v1 = *(v0 + 400);
  [*(v0 + 280) dismiss];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_96CC(uint64_t a1, uint64_t a2)
{
  v13 = v2;

  swift_errorRetain();
  v3 = sub_E5B4();
  v4 = sub_E714();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v5 = 136315394;
    *(v5 + 4) = sub_C740(0xD000000000000020, 0x8000000000010220, &v12);
    *(v5 + 12) = 2112;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v8;
    *v6 = v8;
    _os_log_impl(&dword_0, v3, v4, "FindMyMessagesAppViewController: %s failed to insert message with error: %@", v5, 0x16u);
    sub_E1B0(v6, &qword_184B0, &qword_EE68);

    sub_C80C(v7);
  }

  v9 = *(v2 + 400);
  [*(v2 + 280) dismiss];

  v10 = *(v2 + 8);

  return v10();
}

uint64_t sub_98C0(uint64_t a1, uint64_t a2)
{
  v14 = v2;
  v3 = *(v2 + 448);

  swift_willThrow();

  swift_errorRetain();
  v4 = sub_E5B4();
  v5 = sub_E714();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_C740(0xD000000000000020, 0x8000000000010220, &v13);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v4, v5, "FindMyMessagesAppViewController: %s failed to insert message with error: %@", v6, 0x16u);
    sub_E1B0(v7, &qword_184B0, &qword_EE68);

    sub_C80C(v8);
  }

  v10 = *(v2 + 400);
  [*(v2 + 280) dismiss];

  v11 = *(v2 + 8);

  return v11();
}

uint64_t sub_9AC0(uint64_t a1, void *a2)
{
  v3 = sub_DBD4((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    sub_19DC(&qword_18520, &qword_EFC8);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    v8 = *v3;

    return _swift_continuation_throwingResume(v8);
  }
}

uint64_t sub_9B6C(double a1, double a2, double a3, double a4, double a5, double a6)
{
  *(v7 + 208) = v6;
  *(v7 + 192) = a5;
  *(v7 + 200) = a6;
  *(v7 + 176) = a3;
  *(v7 + 184) = a4;
  *(v7 + 160) = a1;
  *(v7 + 168) = a2;
  v8 = sub_E394();
  *(v7 + 216) = v8;
  *(v7 + 224) = *(v8 - 8);
  *(v7 + 232) = swift_task_alloc();
  sub_E6D4();
  *(v7 + 240) = sub_E6C4();
  v10 = sub_E6B4();
  *(v7 + 248) = v10;
  *(v7 + 256) = v9;

  return _swift_task_switch(sub_9C6C, v10, v9);
}

uint64_t sub_9C6C()
{
  v16 = v0;
  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v1 = sub_E5D4();
  *(v0 + 264) = sub_1BD8(v1, qword_18628);
  v2 = sub_E5B4();
  v3 = sub_E724();
  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 160);
    v4 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v15[0] = swift_slowAlloc();
    *v6 = 136315395;
    *(v6 + 4) = sub_C740(0xD000000000000028, 0x8000000000010180, v15);
    *(v6 + 12) = 2081;
    *(v0 + 144) = v5;
    *(v0 + 152) = v4;
    type metadata accessor for CLLocationCoordinate2D(0);
    v7 = sub_E664();
    v9 = sub_C740(v7, v8, v15);

    *(v6 + 14) = v9;
    _os_log_impl(&dword_0, v2, v3, "FindMyMessagesAppViewController: %s payload: %{private}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v10 = [*(v0 + 208) activeConversation];
  *(v0 + 272) = v10;
  if (v10)
  {
    sub_E454();
    v13 = swift_task_alloc();
    *(v0 + 280) = v13;
    *v13 = v0;
    v13[1] = sub_A078;
    v14 = *(v0 + 232);

    return sub_D548(v14);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_A078(uint64_t a1)
{
  *(*v1 + 288) = a1;

  return _swift_task_switch(sub_A178, 0, 0);
}

uint64_t sub_A178()
{
  v1 = v0[36];
  v2 = v0[34];
  v0[2] = v0;
  v0[3] = sub_A29C;
  v3 = swift_continuation_init();
  v0[17] = sub_19DC(&qword_18518, &qword_EFC0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_9AC0;
  v0[13] = &unk_14860;
  v0[14] = v3;
  [v2 insertRichLink:v1 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_A29C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_A4C0;
  }

  else
  {
    v2 = sub_A3AC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_A3AC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return _swift_task_switch(sub_A410, v1, v2);
}

uint64_t sub_A410(uint64_t a1, uint64_t a2)
{
  v3 = v2[34];
  v4 = v2[29];
  v5 = v2[27];
  v6 = v2[28];
  v7 = v2[26];

  [v7 dismiss];

  (*(v6 + 8))(v4, v5);

  v8 = v2[1];

  return v8();
}

uint64_t sub_A4C0(uint64_t a1)
{
  v2 = v1[36];
  swift_willThrow();

  v3 = v1[31];
  v4 = v1[32];

  return _swift_task_switch(sub_A530, v3, v4);
}

uint64_t sub_A530(uint64_t a1, uint64_t a2)
{
  v16 = v2;
  v3 = *(v2 + 232);
  v4 = *(v2 + 216);
  v5 = *(v2 + 224);

  (*(v5 + 8))(v3, v4);
  swift_errorRetain();
  v6 = sub_E5B4();
  v7 = sub_E714();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_C740(0xD000000000000028, 0x8000000000010180, &v15);
    *(v8 + 12) = 2112;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_0, v6, v7, "FindMyMessagesAppViewController: %s failed to insert message with error: %@", v8, 0x16u);
    sub_E1B0(v9, &qword_184B0, &qword_EE68);

    sub_C80C(v10);
  }

  v12 = *(v2 + 272);
  [*(v2 + 208) dismiss];

  v13 = *(v2 + 8);

  return v13();
}

uint64_t FindMyMessagesAppViewController._validateMessage(forSending:conversation:associatedText:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_E6D4();
  v2[4] = sub_E6C4();
  v4 = sub_E6B4();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_A7B8, v4, v3);
}

uint64_t sub_A7B8()
{
  v4 = (&async function pointer to dispatch thunk of MessagesAppViewModel.validateAndInitiate(message:) + async function pointer to dispatch thunk of MessagesAppViewModel.validateAndInitiate(message:));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_A870;
  v2 = *(v0 + 16);

  return v4(v2);
}

uint64_t sub_A870(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 80) = a1;
  *(v5 + 64) = a2;
  *(v5 + 72) = a3;

  v6 = *(v4 + 48);
  v7 = *(v4 + 40);

  return _swift_task_switch(sub_A99C, v7, v6);
}

uint64_t sub_A99C(uint64_t a1, uint64_t a2)
{

  v3 = *(v2 + 8);
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  v6 = *(v2 + 80);

  return v3(v6, v4, v5);
}

uint64_t sub_ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[6] = a1;
  v5[9] = sub_E6D4();
  v5[10] = sub_E6C4();
  v7 = sub_E6B4();

  return _swift_task_switch(sub_AC48, v7, v6);
}

uint64_t sub_AC48(uint64_t a1, uint64_t a2)
{
  v3 = v2[7];
  v4 = v2[8];
  v5 = v2[6];

  v2[11] = _Block_copy(v3);
  v6 = v5;
  v7 = v4;
  v2[12] = sub_E6C4();
  v9 = sub_E6B4();
  v2[13] = v9;
  v2[14] = v8;

  return _swift_task_switch(sub_ACFC, v9, v8);
}

uint64_t sub_ACFC()
{
  v4 = (&async function pointer to dispatch thunk of MessagesAppViewModel.validateAndInitiate(message:) + async function pointer to dispatch thunk of MessagesAppViewModel.validateAndInitiate(message:));
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_ADB4;
  v2 = *(v0 + 48);

  return v4(v2);
}

uint64_t sub_ADB4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  *(v5 + 16) = v3;
  *(v5 + 128) = a3;

  v6 = *(v4 + 112);
  v7 = *(v4 + 104);

  return _swift_task_switch(sub_AEE0, v7, v6);
}

uint64_t sub_AEE0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 128);
  v4 = *(v2 + 64);
  v5 = *(v2 + 48);

  if (v3)
  {

    v3 = sub_E644();
  }

  v6 = *(v2 + 88);
  (v6)[2](v6, *(v2 + 24), v3);

  _Block_release(v6);

  v7 = *(v2 + 8);

  return v7();
}

id FindMyMessagesAppViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_E644();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id FindMyMessagesAppViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v26 = a2;
  v27 = a3;
  v25[1] = a1;
  v5 = sub_E634();
  __chkstk_darwin(v5 - 8);
  v6 = sub_E434();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = v25 - v11;
  sub_E524();
  swift_allocObject();
  v13 = sub_E514();

  sub_E424();
  (*(v7 + 16))(v10, v12, v6);
  v14 = objc_allocWithZone(sub_19DC(&qword_184A8, &qword_EE60));
  v15 = sub_E614();
  sub_E624();
  sub_E5F4();
  sub_E5E4();
  sub_E604();
  result = [v15 view];
  if (result)
  {
    v17 = result;
    v18 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel;
    v19 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController;
    v20 = [objc_opt_self() clearColor];
    [v17 setBackgroundColor:v20];

    (*(v7 + 8))(v12, v6);
    *&v4[v18] = v13;
    *&v4[v19] = v15;
    if (v26)
    {
      v21 = sub_E644();
    }

    else
    {
      v21 = 0;
    }

    MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
    v28.receiver = v4;
    v28.super_class = MyMessagesAppViewController;
    v23 = v27;
    v24 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", v21, v27);

    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id FindMyMessagesAppViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id FindMyMessagesAppViewController.init(coder:)(void *a1)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_E634();
  __chkstk_darwin(v3 - 8);
  v4 = sub_E434();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v22 - v9;
  sub_E524();
  swift_allocObject();
  v11 = sub_E514();

  sub_E424();
  (*(v5 + 16))(v8, v10, v4);
  v12 = objc_allocWithZone(sub_19DC(&qword_184A8, &qword_EE60));
  v13 = sub_E614();
  sub_E624();
  sub_E5F4();
  sub_E5E4();
  sub_E604();
  result = [v13 view];
  if (result)
  {
    v15 = result;
    v16 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel;
    v17 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController;
    v18 = [objc_opt_self() clearColor];
    [v15 setBackgroundColor:v18];

    (*(v5 + 8))(v10, v4);
    *&v2[v16] = v11;
    *&v2[v17] = v13;
    MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
    v24.receiver = v2;
    v24.super_class = MyMessagesAppViewController;
    v20 = v23;
    v21 = objc_msgSendSuper2(&v24, "initWithCoder:", v23);

    if (v21)
    {
    }

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id FindMyMessagesAppViewController.__allocating_init(shouldBeSheetPresentationControllerDelegate:)(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithShouldBeSheetPresentationControllerDelegate:a1 & 1];
}

id FindMyMessagesAppViewController.init(shouldBeSheetPresentationControllerDelegate:)(int a1)
{
  v2 = v1;
  v21 = a1;
  v3 = sub_E634();
  __chkstk_darwin(v3 - 8);
  v4 = sub_E434();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v10 = &v20[-v9];
  sub_E524();
  swift_allocObject();
  v11 = sub_E514();

  sub_E424();
  (*(v5 + 16))(v8, v10, v4);
  v12 = objc_allocWithZone(sub_19DC(&qword_184A8, &qword_EE60));
  v13 = sub_E614();
  sub_E624();
  sub_E5F4();
  sub_E5E4();
  sub_E604();
  result = [v13 view];
  if (result)
  {
    v15 = result;
    v16 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_viewModel;
    v17 = OBJC_IVAR____TtC17FindMyMessagesApp31FindMyMessagesAppViewController_hostingViewController;
    v18 = [objc_opt_self() clearColor];
    [v15 setBackgroundColor:v18];

    (*(v5 + 8))(v10, v4);
    *&v2[v16] = v11;
    *&v2[v17] = v13;
    MyMessagesAppViewController = type metadata accessor for FindMyMessagesAppViewController();
    v22.receiver = v2;
    v22.super_class = MyMessagesAppViewController;
    return objc_msgSendSuper2(&v22, "initWithShouldBeSheetPresentationControllerDelegate:", v21 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_B8FC(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_DBD4((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_19DC(&qword_18520, &qword_EFC8);
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

void *sub_B9D4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_B9F0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_BAE8;

  return v6(a1);
}

uint64_t sub_BAE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_BBE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_E774();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_BCE0, 0, 0);
}

uint64_t sub_BCE0()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_E784();
  v5 = sub_E168(&qword_18550, &type metadata accessor for ContinuousClock, &protocol conformance descriptor for ContinuousClock);
  sub_E7C4();
  sub_E168(&qword_18558, &type metadata accessor for ContinuousClock.Instant, &protocol conformance descriptor for ContinuousClock.Instant);
  sub_E794();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_BE70;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_BE70()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_C02C, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_C02C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_C098(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_E2E8;

  return v6();
}

uint64_t sub_C180(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_C268;

  return v7();
}

uint64_t sub_C268()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_C35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_19DC(&qword_184C0, &qword_EE70);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_DF50(a3, v23 - v10);
  v12 = sub_E6F4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_E1B0(v11, &qword_184C0, &qword_EE70);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_E6E4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_E6B4();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_E674() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_E1B0(a3, &qword_184C0, &qword_EE70);

    return v21;
  }

LABEL_8:
  sub_E1B0(a3, &qword_184C0, &qword_EE70);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_C648(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_E2EC;

  return v6(a1);
}

unint64_t sub_C740(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_CBCC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_DB10(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_C80C(v11);
  return v7;
}

uint64_t sub_C80C(void *a1)
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

uint64_t sub_C86C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_C8AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_C268;

  return sub_4288(a1, v4, v5, v6);
}

uint64_t sub_C974()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_C9AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_C268;

  return sub_633C(a1, v1);
}

uint64_t sub_CA44(double a1, double a2, double a3, double a4, double a5, double a6)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_E2E8;

  return sub_6670(v6, a1, a2, a3, a4, a5, a6);
}

uint64_t sub_CB1C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_E2E8;

  return sub_69B4(v0);
}

__n128 sub_CBBC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

unint64_t sub_CBCC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_CCD8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_E764();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_CCD8(uint64_t a1, unint64_t a2)
{
  v3 = sub_CD24(a1, a2);
  sub_CE54(&off_14748);
  return v3;
}

char *sub_CD24(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_CF40(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_E764();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_E684();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_CF40(v10, 0);
        result = sub_E754();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_CE54(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_CFB4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_CF40(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_19DC(&qword_18580, &qword_F068);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_CFB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_19DC(&qword_18580, &qword_F068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_D0A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_D0C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_D0C8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_19DC(&qword_18578, &qword_F060);
  v10 = *(sub_E5A4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_E5A4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_D2A0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_E654();
    v4 = v3;

    if (v2 == 0xD000000000000013 && 0x8000000000010370 == v4)
    {
      v8 = 1;
    }

    else
    {
      v6 = sub_E7B4();
      if (v2 == 0x6C7070612E6D6F63 && v4 == 0xEF74616843692E65)
      {
        v17 = 1;
        goto LABEL_24;
      }

      v8 = v6;
    }

    v15 = sub_E7B4();
    if (v2 != 0xD000000000000012 || 0x8000000000010390 != v4)
    {
      v17 = v8 | v15;
LABEL_24:
      v18 = sub_E7B4();

      v14 = v17 | v18;
      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
    if (qword_184A0 != -1)
    {
      swift_once();
    }

    v9 = sub_E5D4();
    sub_1BD8(v9, qword_18628);
    v10 = sub_E5B4();
    v11 = sub_E714();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_C740(0xD00000000000001FLL, 0x8000000000010350, &v20);
      _os_log_impl(&dword_0, v10, v11, "FindMyMessagesAppViewController: %s - No Bundle Identifier", v12, 0xCu);
      sub_C80C(v13);
    }

    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_D568()
{
  v1 = objc_allocWithZone(MSRichLink);
  sub_E384(v2);
  v4 = v3;
  v0[20] = [v1 initWithURL:v3];

  v5 = [objc_allocWithZone(LPMetadataProvider) init];
  v0[21] = v5;
  sub_E384(v6);
  v8 = v7;
  v0[22] = v7;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_D6F0;
  v9 = swift_continuation_init();
  v0[17] = sub_19DC(&qword_18528, &qword_EFD0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_B8FC;
  v0[13] = &unk_14888;
  v0[14] = v9;
  [v5 startFetchingMetadataForURL:v8 completionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_D6F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_D890;
  }

  else
  {
    v2 = sub_D800;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_D800()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = *(v0 + 168);
  [*(v0 + 160) set_linkMetadata:v2];

  v4 = *(v0 + 8);
  v5 = *(v0 + 160);

  return v4(v5);
}

uint64_t sub_D890(uint64_t a1)
{
  v19 = v1;
  v2 = *(v1 + 176);
  swift_willThrow();

  if (qword_184A0 != -1)
  {
    swift_once();
  }

  v3 = sub_E5D4();
  sub_1BD8(v3, qword_18628);
  swift_errorRetain();
  v4 = sub_E5B4();
  v5 = sub_E714();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v6 = 136315394;
    *(v6 + 4) = sub_C740(0xD000000000000014, 0x8000000000010200, &v18);
    *(v6 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&dword_0, v4, v5, "FindMyMessagesAppViewController: %s failed to insert metadata with error: %@", v6, 0x16u);
    sub_E1B0(v7, &qword_184B0, &qword_EE68);

    sub_C80C(v8);
  }

  v10 = [objc_allocWithZone(LPLinkMetadata) init];
  sub_E384(v11);
  v13 = v12;
  [v10 setOriginalURL:v12];

  v14 = *(v1 + 168);
  [*(v1 + 160) set_linkMetadata:v10];

  v15 = *(v1 + 8);
  v16 = *(v1 + 160);

  return v15(v16);
}

uint64_t sub_DB10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_DB88(uint64_t a1, unint64_t *a2, uint64_t a3)
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

void *sub_DBD4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_DC18(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_DC60()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_DCB8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_E2E8;

  return sub_ABA8(v2, v3, v4, v5, v6);
}

uint64_t sub_DD84()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_E2E8;

  return sub_C098(v2, v3, v4);
}

uint64_t sub_DE44()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_DE84(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_E2E8;

  return sub_C180(a1, v4, v5, v6);
}

uint64_t sub_DF50(uint64_t a1, uint64_t a2)
{
  v4 = sub_19DC(&qword_184C0, &qword_EE70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_DFC0(uint64_t a1, uint64_t a2)
{

  return _swift_deallocObject(v2, 32, 7);
}

uint64_t sub_DFF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E2E8;

  return sub_C648(a1, v4);
}

uint64_t sub_E0B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_E2E8;

  return sub_B9F0(a1, v4);
}

uint64_t sub_E168(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_E1B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_19DC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t *sub_E214(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_E278(uint64_t a1, int a2)
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

uint64_t sub_E298(uint64_t result, int a2, int a3)
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