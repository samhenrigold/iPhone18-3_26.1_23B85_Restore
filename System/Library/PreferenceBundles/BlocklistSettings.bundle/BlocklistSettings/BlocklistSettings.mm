id _voicemailCheckQueue(uint64_t a1)
{
  if (qword_19298 != -1)
  {
    sub_E728();
  }

  v2 = qword_19290;

  return v2;
}

void sub_2034(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("com.apple.mobilephone.PHVoicemailUtilities.voicemailCheck", v3);
  v2 = qword_19290;
  qword_19290 = v1;
}

uint64_t PHHasEnhancedVoicemailAsync(uint64_t result)
{
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

id PHDefaultLog(uint64_t a1)
{
  if (qword_192A8 != -1)
  {
    sub_E73C();
  }

  v2 = qword_192A0;

  return v2;
}

void sub_211C(id a1)
{
  qword_192A0 = os_log_create("com.apple.calls.mobilephone", "Default");

  _objc_release_x1();
}

id PHOversizedLog(uint64_t a1)
{
  if (qword_192B8 != -1)
  {
    sub_E750();
  }

  v2 = qword_192B0;

  return v2;
}

void sub_21A4(id a1)
{
  qword_192B0 = os_log_create("com.apple.calls.mobilephone", "Oversized");

  _objc_release_x1();
}

id PHOversizedLogQueue(uint64_t a1)
{
  if (qword_192C8[0] != -1)
  {
    sub_E764();
  }

  v2 = qword_192C0;

  return v2;
}

void sub_222C(id a1)
{
  v3 = dispatch_queue_attr_make_with_qos_class(0, 0xFFFFFFFE, 0);
  v1 = dispatch_queue_create("com.apple.calls.mobilephone.logging", v3);
  v2 = qword_192C0;
  qword_192C0 = v1;
}

void sub_2BE8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2C84;
  v6[3] = &unk_149A8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(&_dispatch_main_q, v6);
}

void sub_2C84(uint64_t a1)
{
  [*(a1 + 32) setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = [*(a1 + 40) view];
  [v2 addSubview:*(a1 + 32)];

  v18 = [*(a1 + 32) leadingAnchor];
  v19 = [*(a1 + 40) view];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v20[0] = v16;
  v14 = [*(a1 + 32) trailingAnchor];
  v15 = [*(a1 + 40) view];
  v13 = [v15 trailingAnchor];
  v3 = [v14 constraintEqualToAnchor:v13];
  v20[1] = v3;
  v4 = [*(a1 + 32) topAnchor];
  v5 = [*(a1 + 40) view];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6];
  v20[2] = v7;
  v8 = [*(a1 + 32) bottomAnchor];
  v9 = [*(a1 + 40) view];
  v10 = [v9 bottomAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v20[3] = v11;
  v12 = [NSArray arrayWithObjects:v20 count:4];
  [NSLayoutConstraint activateConstraints:v12];
}

void sub_31E0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 type];
  if (v4)
  {
    if (v4 == 2)
    {
      v5 = [v3 businessID];
      v6 = 1;
      if (!v5)
      {
LABEL_22:
        v18 = 0;
        goto LABEL_23;
      }
    }

    else
    {
      if (v4 != 1)
      {
        v18 = 0;
        v5 = 0;
        goto LABEL_23;
      }

      v5 = [v3 email];
      v6 = 3;
      if (!v5)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v19 = [v3 phoneNumber];
    v20 = [v19 unformattedInternationalRepresentation];
    v21 = v20;
    if (v20)
    {
      v5 = v20;
    }

    else
    {
      v26 = [v3 phoneNumber];
      v5 = [v26 digits];
    }

    v6 = 2;
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  v7 = [TUContactsDataProviderFetchRequest alloc];
  v8 = [[TUHandle alloc] initWithType:v6 value:v5];
  v9 = [v7 initWithHandle:v8];

  v10 = [*(a1 + 32) contactsDataProvider];
  v11 = [v10 executeFetchRequest:v9];

  v12 = [v11 contacts];
  v13 = [v12 firstObject];

  if (v13)
  {
    v14 = [v11 contactLabel];

    v15 = [v11 localizedName];
    v16 = v15;
    if (v14)
    {
      v17 = [v11 contactLabel];
      v18 = [NSString stringWithFormat:@"%@ (%@)", v16, v17];
    }

    else
    {
      v18 = [NSString stringWithFormat:@"%@ (%@)", v15, v5];
    }
  }

  else
  {
    v18 = [v11 localizedName];
  }

  if (v18)
  {
    v22 = [PSSpecifier preferenceSpecifierNamed:v18 target:*(a1 + 32) set:0 get:0 detail:0 cell:1 edit:0];
    [v22 setButtonAction:"_ruleTapped:"];
    [v22 setUserInfo:v3];
    v23 = [NSNumber numberWithBool:1];
    [v22 setProperty:v23 forKey:PSEnabledKey];

    [*(a1 + 40) addObject:v22];
    if ([v3 type] == 2)
    {
      objc_initWeak(&location, *(a1 + 32));
      v24 = [*(a1 + 32) brandManager];
      v25 = [v3 businessID];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_35A0;
      v27[3] = &unk_14A20;
      v28 = v22;
      objc_copyWeak(&v29, &location);
      [v24 brandWithURI:v25 completion:v27];

      objc_destroyWeak(&v29);
      objc_destroyWeak(&location);
    }
  }

LABEL_23:
}

void sub_357C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_35A0(uint64_t a1, void *a2)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_366C;
  block[3] = &unk_149F8;
  v5 = a2;
  v6 = *(a1 + 32);
  v3 = v5;
  objc_copyWeak(&v7, (a1 + 40));
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(&v7);
}

void sub_366C(id *a1)
{
  v2 = [a1[4] name];
  v3 = [v2 length];

  if (v3)
  {
    v4 = [a1[4] name];
    [a1[5] setName:v4];

    WeakRetained = objc_loadWeakRetained(a1 + 6);
    [WeakRetained reloadSpecifier:a1[5]];
  }
}

void sub_3C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_3C5C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3D14;
  v5[3] = &unk_14A70;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, v5);

  objc_destroyWeak(&v7);
}

void sub_3D14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && *(a1 + 32))
  {
    v5 = WeakRetained;
    v3 = [BSBrand makeBrandPlacecardForBrand:?];
    v4 = [v5 navigationController];
    [v4 pushViewController:v3 animated:1];

    WeakRetained = v5;
  }
}

uint64_t sub_4CCC()
{
  v0 = sub_EAB0();
  sub_D38C(v0, qword_19038);
  sub_D300(v0, qword_19038);
  return sub_EAA0();
}

uint64_t sub_4D50()
{
  v1[2] = v0;
  sub_E870();
  v1[3] = swift_task_alloc();
  sub_EBF0();
  v1[4] = sub_EBE0();
  v3 = sub_EBD0();
  v1[5] = v3;
  v1[6] = v2;

  return _swift_task_switch(sub_4E14, v3, v2);
}

uint64_t sub_4E14()
{
  v1 = *(v0 + 16);
  sub_E9C0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_4EF8;

  return BlocklistViewModel.__allocating_init(presentContactPicker:)(sub_DD34, v2);
}

uint64_t sub_4EF8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 64) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return _swift_task_switch(sub_5020, v4, v3);
}

uint64_t sub_5020()
{
  v1 = v0[8];
  v2 = v0[2];

  [v2 setBlocklistViewModel:v1];

  sub_E860();
  v3 = objc_allocWithZone(sub_D2B8(&qword_19148, &unk_10F50));
  v4 = sub_EAC0();

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_5264(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_EBF0();
  v2[4] = sub_EBE0();
  v4 = sub_EBD0();

  return _swift_task_switch(sub_52FC, v4, v3);
}

uint64_t sub_52FC()
{
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_53AC;

  return sub_4D50();
}

uint64_t sub_53AC(void *a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 24);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_54F8()
{
  v1 = sub_D2B8(&qword_190D8, &qword_10E80);
  __chkstk_darwin(v1 - 8);
  v3 = v9 - v2;
  if ([v0 blocklistViewModel])
  {
    sub_ED20();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    return sub_D718(v12, &qword_190E8, &qword_10EB0);
  }

  sub_E9C0();
  result = swift_dynamicCast();
  if (result)
  {
    v5 = v9[1];
    v6 = sub_EC10();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    sub_EBF0();

    v7 = sub_EBE0();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v5;
    sub_5908(0, 0, v3, &unk_10EF8, v8);
  }

  return result;
}

uint64_t sub_56BC()
{
  v0[2] = sub_EBF0();
  v0[3] = sub_EBE0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_576C;

  return BlocklistViewModel.refreshBlocklistEntries()();
}

uint64_t sub_576C()
{

  v1 = sub_EBD0();

  return _swift_task_switch(sub_58A8, v1, v0);
}

uint64_t sub_58A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_5908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_D2B8(&qword_190D8, &qword_10E80);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_D508(a3, v25 - v10, &qword_190D8, &qword_10E80);
  v12 = sub_EC10();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_D718(v11, &qword_190D8, &qword_10E80);
  }

  else
  {
    sub_EC00();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_EBD0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_EB60() + 32;
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

      sub_D718(a3, &qword_190D8, &qword_10E80);

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

  sub_D718(a3, &qword_190D8, &qword_10E80);
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

uint64_t sub_5C50(char a1)
{
  if ([v1 blocklistViewModel])
  {
    sub_ED20();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (!*(&v4 + 1))
  {
    return sub_D718(v5, &qword_190E8, &qword_10EB0);
  }

  sub_E9C0();
  result = swift_dynamicCast();
  if (result)
  {
    sub_E980();
  }

  return result;
}

void sub_5D74()
{
  v1 = v0;
  v2 = sub_ECD0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_ECA0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_ED00();
  v76 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v75 = &v68 - v14;
  sub_E8C0();
  v15 = sub_E890();
  sub_E880();

  v16 = [v1 createNewAutocompleteSearchController];
  [v1 setAutocompleteSearchController:v16];

  v77 = [v1 autocompleteSearchController];
  if (!v77)
  {
    return;
  }

  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v72 = v17;
    [v17 setDelegate:v1];
    v74 = v1;
    v18 = v75;
    sub_ECE0();
    (*(v7 + 104))(v9, enum case for UIButton.Configuration.CornerStyle.capsule(_:), v6);
    sub_ECB0();
    v19 = objc_opt_self();
    v20 = [v19 systemRedColor];
    sub_ECC0();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.Size.large(_:), v2);
    sub_EC90();
    v21 = objc_opt_self();
    v22 = sub_EB30();
    v70 = v21;
    v23 = [v21 localizedStringForKey:v22];

    sub_EB40();
    sub_ECF0();
    sub_DD44(0, &qword_19130, UIButton_ptr);
    v24 = *(v76 + 16);
    v71 = v10;
    v24(v13, v18, v10);
    v25 = sub_ED10();
    [v25 addTarget:v74 action:"handleContactPickerBlockButtonTapped" forControlEvents:64];
    v26 = v25;
    [v26 setTranslatesAutoresizingMaskIntoConstraints:0];
    v27 = [objc_allocWithZone(UIView) init];
    v28 = [v19 clearColor];
    [v27 setBackgroundColor:v28];

    v73 = v26;
    [v27 addSubview:v26];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    v29 = v72;
    [v72 setFooterView:v27];
    sub_D2B8(&qword_190B8, &qword_10E70);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10E20;
    v31 = [v27 leadingAnchor];
    v77 = v77;
    v32 = [v29 view];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 leadingAnchor];

      v35 = [v31 constraintEqualToAnchor:v34];
      *(v30 + 32) = v35;
      v36 = [v27 trailingAnchor];
      v37 = v29;
      v38 = [v29 view];
      if (v38)
      {
        v39 = v38;
        v69 = objc_opt_self();
        v40 = [v39 trailingAnchor];

        v41 = [v36 constraintEqualToAnchor:v40];
        *(v30 + 40) = v41;
        v42 = v73;
        v43 = [v73 leadingAnchor];
        v44 = [v27 leadingAnchor];
        v45 = [v43 constraintEqualToAnchor:v44 constant:25.0];

        *(v30 + 48) = v45;
        v46 = [v42 trailingAnchor];
        v47 = [v27 trailingAnchor];
        v48 = [v46 constraintEqualToAnchor:v47 constant:-25.0];

        *(v30 + 56) = v48;
        v49 = [v42 bottomAnchor];
        v50 = [v27 bottomAnchor];
        v51 = [v49 constraintEqualToAnchor:v50 constant:-25.0];

        *(v30 + 64) = v51;
        v52 = [v27 topAnchor];
        v53 = [v42 topAnchor];

        v54 = [v52 constraintEqualToAnchor:v53 constant:-25.0];
        *(v30 + 72) = v54;
        sub_DD44(0, &qword_19138, NSLayoutConstraint_ptr);
        isa = sub_EB90().super.isa;

        [v69 activateConstraints:isa];

        sub_DD44(0, &qword_19140, UIBarButtonItem_ptr);
        v79.value.super.super.isa = 0;
        v79.is_nil = 0;
        v56.super.super.isa = sub_EC50(UIBarButtonSystemItemCancel, v79, v80).super.super.isa;
        [(objc_class *)v56.super.super.isa setAction:"handleContactPickerCancelled"];
        v57 = v74;
        [(objc_class *)v56.super.super.isa setTarget:v74];
        v58 = [v37 navigationItem];
        [v58 setLeftBarButtonItem:v56.super.super.isa];

        v59 = [v37 navigationItem];
        v60 = sub_EB30();
        v61 = [v70 localizedStringForKey:v60];

        if (!v61)
        {
          sub_EB40();
          v61 = sub_EB30();
        }

        [v59 setTitle:v61];

        v62 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v37];
        v63 = v77;

        [v62 setDefinesPresentationContext:0];
        v64 = [v57 navigationController];
        v65 = v71;
        if (v64)
        {
          v66 = v64;
          [v64 presentViewController:v62 animated:1 completion:0];

          (*(v76 + 8))(v75, v65);
        }

        else
        {
          (*(v76 + 8))(v75, v71);
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v67 = v77;
}

id sub_67B4()
{
  v1 = v0;
  if (qword_19030 != -1)
  {
    swift_once();
  }

  v2 = sub_EAB0();
  sub_D300(v2, qword_19038);
  v3 = sub_EA90();
  v4 = sub_EC40();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "handleContactPickerCancelled", v5, 2u);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

void sub_68FC()
{
  v1 = v0;
  v2 = sub_D2B8(&qword_190D8, &qword_10E80);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  if (qword_19030 != -1)
  {
    swift_once();
  }

  v5 = sub_EAB0();
  sub_D300(v5, qword_19038);
  v6 = sub_EA90();
  v7 = sub_EC40();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_0, v6, v7, "handleContactPickerBlockButtonTapped", v8, 2u);
  }

  v19 = [v1 autocompleteSearchController];
  if (v19)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      sub_E900();
      v11 = sub_E8F0();
      v12 = sub_EC10();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      sub_EBF0();
      v13 = v19;
      v14 = v1;

      v15 = sub_EBE0();
      v16 = swift_allocObject();
      v16[2] = v15;
      v16[3] = &protocol witness table for MainActor;
      v16[4] = v10;
      v16[5] = v14;
      v16[6] = v11;
      sub_5908(0, 0, v4, &unk_10E90, v16);

      [v14 dismissViewControllerAnimated:1 completion:0];
    }

    else
    {
      v17 = v19;
    }
  }
}

uint64_t sub_6B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[20] = a4;
  v7 = sub_EA20();
  v6[23] = v7;
  v6[24] = *(v7 - 8);
  v6[25] = swift_task_alloc();
  v8 = sub_EA60();
  v6[26] = v8;
  v6[27] = *(v8 - 8);
  v6[28] = swift_task_alloc();
  v9 = sub_EA80();
  v6[29] = v9;
  v6[30] = *(v9 - 8);
  v6[31] = swift_task_alloc();
  v6[32] = swift_task_alloc();
  v10 = sub_EA50();
  v6[33] = v10;
  v6[34] = *(v10 - 8);
  v6[35] = swift_task_alloc();
  v11 = sub_EA10();
  v6[36] = v11;
  v6[37] = *(v11 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  sub_EBF0();
  v6[43] = sub_EBE0();
  v13 = sub_EBD0();
  v6[44] = v13;
  v6[45] = v12;

  return _swift_task_switch(sub_6E40, v13, v12);
}

uint64_t sub_6E40()
{
  v93 = v0;
  v1 = _swiftEmptyArrayStorage;
  *(v0 + 144) = _swiftEmptyArrayStorage;
  v2 = v0 + 144;
  v3 = [*(v0 + 160) recipients];
  sub_DD44(0, &qword_190E0, CNComposeRecipient_ptr);
  v4 = sub_EBA0();
  *(v0 + 368) = v4;

  if (v4 >> 62)
  {
    goto LABEL_81;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  *(v0 + 376) = v5;
  if (!v5)
  {
    goto LABEL_68;
  }

LABEL_3:
  v6 = 0;
  v7 = (v2 - 128);
  v8 = (v2 - 96);
  *(v0 + 480) = enum case for Handle.Kind.phoneNumber(_:);
  *(v0 + 484) = enum case for Handle.Kind.emailAddress(_:);
  *(v0 + 488) = enum case for SettingsPersonHandle.HandleType.phone(_:);
  *(v0 + 492) = enum case for SettingsPersonHandle.HandleType.email(_:);
  p_opt_class_meths = &OBJC_PROTOCOL___CNContactPickerDelegate.opt_class_meths;
  v86 = (v2 - 96);
  v87 = (v2 - 128);
  v85 = v2;
  do
  {
    *(v0 + 392) = v1;
    *(v0 + 400) = v1;
    *(v0 + 384) = v1;
    v10 = *(v0 + 368);
    if ((v10 & 0xC000000000000001) != 0)
    {
      v11 = sub_ED40();
    }

    else
    {
      if (v6 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_84;
      }

      v11 = *(v10 + 8 * v6 + 32);
    }

    v12 = v11;
    *(v0 + 408) = v11;
    *(v0 + 416) = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_80;
    }

    if (p_opt_class_meths[6] != -1)
    {
      swift_once();
    }

    v13 = sub_EAB0();
    *(v0 + 424) = sub_D300(v13, qword_19038);
    v1 = v12;
    v14 = sub_EA90();
    v15 = sub_EC40();

    v89 = v1;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v92 = v17;
      *v16 = 136315138;
      v18 = v1;
      v19 = [v18 description];
      v20 = sub_EB40();
      v22 = v21;

      v23 = sub_C76C(v20, v22, &v92);

      *(v16 + 4) = v23;
      _os_log_impl(&dword_0, v14, v15, "Requesting to block %s", v16, 0xCu);
      sub_D778(v17);
      v8 = v86;
      v7 = v87;

      v1 = v89;
    }

    if ([*(v0 + 168) blocklistViewModel])
    {
      sub_ED20();
      swift_unknownObjectRelease();
    }

    else
    {
      *v8 = 0u;
      v8[1] = 0u;
    }

    v24 = v8[1];
    *v7 = *v8;
    v7[1] = v24;
    if (!*(v0 + 40))
    {

      sub_D718(v7, &qword_190E8, &qword_10EB0);
LABEL_67:
      swift_bridgeObjectRelease_n();
      goto LABEL_75;
    }

    sub_E9C0();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_67;
    }

    *(v0 + 432) = *(v0 + 152);
    v25 = [v1 contact];
    *(v0 + 440) = v25;
    if (v25)
    {
      v26 = v25;
      if ([v25 hasBeenPersisted])
      {
        v27 = sub_E970();
        v28 = v27;
        v2 = *(v27 + 16);
        if (!v2)
        {
LABEL_62:

          v72 = swift_task_alloc();
          *(v0 + 448) = v72;
          *v72 = v0;
          v72[1] = sub_7960;

          return BlockList.add(contact:)(v26);
        }

        v29 = 0;
        v30 = *(*(v0 + 296) + 80);
        v90 = v27 + ((v30 + 32) & ~v30);
        while (v29 < *(v28 + 16))
        {
          v31 = *(v0 + 336);
          v32 = *(v0 + 288);
          v33 = *(v0 + 296);
          (*(v33 + 16))(v31, v90 + *(v33 + 72) * v29, v32);
          v34 = sub_E9F0();
          (*(v33 + 8))(v31, v32);
          if (v34)
          {
            v35 = [v34 identifier];

            v36 = sub_EB40();
            v34 = v37;
          }

          else
          {
            v36 = 0;
          }

          v38 = [v26 identifier];
          v1 = sub_EB40();
          v40 = v39;

          if (v34)
          {
            if (v36 == v1 && v34 == v40)
            {

LABEL_51:

              goto LABEL_52;
            }

            v1 = sub_EDC0();

            if (v1)
            {
              goto LABEL_51;
            }
          }

          else
          {
          }

          if (v2 == ++v29)
          {
            goto LABEL_62;
          }
        }

LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        v83 = sub_EDB0();
        *(v0 + 376) = v83;
        if (!v83)
        {
          break;
        }

        goto LABEL_3;
      }
    }

    v42 = sub_E9A0();
    v43 = v42;
    v44 = *(v42 + 16);
    v45 = v89;
    if (!v44)
    {
LABEL_54:
      v63 = *(v0 + 484);
      v64 = *(v0 + 480);
      v66 = *(v0 + 216);
      v65 = *(v0 + 224);
      v67 = *(v0 + 208);

      if ([v45 kind])
      {
        v68 = v64;
      }

      else
      {
        v68 = v63;
      }

      (*(v66 + 104))(v65, v68, v67);
      v69 = [v45 normalizedAddress];
      if (v69 || (v69 = [v45 address]) != 0)
      {
        v70 = v69;
        sub_EB40();

        sub_EA70();
        v71 = swift_task_alloc();
        *(v0 + 464) = v71;
        *v71 = v0;
        v71[1] = sub_865C;
        v69 = *(v0 + 256);
      }

      else
      {
        __break(1u);
      }

      return BlockList.add(handle:)(v69);
    }

    v2 = 0;
    v46 = *(*(v0 + 296) + 80);
    v91 = v42 + ((v46 + 32) & ~v46);
    v88 = v42;
    while (1)
    {
      if (v2 >= *(v43 + 16))
      {
        __break(1u);
        goto LABEL_79;
      }

      v47 = *(v0 + 320);
      v1 = *(v0 + 288);
      v48 = *(v0 + 296);
      (*(v48 + 16))(v47, v91 + *(v48 + 72) * v2, v1);
      v49 = sub_EA00();
      (*(v48 + 8))(v47, v1);
      if (!*(v49 + 16))
      {

        goto LABEL_39;
      }

      (*(*(v0 + 272) + 16))(*(v0 + 280), v49 + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)), *(v0 + 264));

      v50 = sub_EA40();
      v52 = v51;
      v53 = [v45 address];
      if (!v53)
      {
        v62 = *(v0 + 272);
        v61 = *(v0 + 280);
        v1 = *(v0 + 264);

        (*(v62 + 8))(v61, v1);
        goto LABEL_39;
      }

      v54 = v53;
      v55 = sub_EB40();
      v57 = v56;

      v59 = *(v0 + 272);
      v58 = *(v0 + 280);
      v60 = *(v0 + 264);
      if (v50 == v55 && v52 == v57)
      {
        break;
      }

      v1 = sub_EDC0();

      (*(v59 + 8))(v58, v60);
      v43 = v88;
      v45 = v89;
      if (v1)
      {
        goto LABEL_49;
      }

LABEL_39:
      if (v44 == ++v2)
      {
        goto LABEL_54;
      }
    }

    (*(v59 + 8))(v58, v60);
    v45 = v89;
LABEL_49:

LABEL_52:
    v6 = *(v0 + 416);
    v1 = _swiftEmptyArrayStorage;
    v2 = v85;
    v8 = v86;
    v7 = v87;
    p_opt_class_meths = (&OBJC_PROTOCOL___CNContactPickerDelegate + 48);
  }

  while (v6 != *(v0 + 376));
LABEL_68:

  if (!(v1 >> 62))
  {
    v73 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    goto LABEL_70;
  }

LABEL_84:
  v73 = sub_EDB0();
LABEL_70:
  if (v73)
  {
    v74 = *(v0 + 168);
    sub_E8C0();
    v75 = sub_E890();
    v76 = sub_AC90(_swiftEmptyArrayStorage);

    v77._rawValue = v76;
    v95.value.super.super.isa = v74;
    sub_E8B0(v77, v95);
  }

  if (_swiftEmptyArrayStorage[2])
  {
    v78 = *(v0 + 168);
    sub_E8C0();
    v79 = sub_E890();
    v80 = sub_AE84(_swiftEmptyArrayStorage);

    v81._rawValue = v80;
    v96.value.super.super.isa = v78;
    sub_E8A0(v81, v96);
  }

  else
  {
  }

LABEL_75:

  v82 = *(v0 + 8);

  return v82();
}

uint64_t sub_7960()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_95B8;
  }

  else
  {
    v5 = sub_7A9C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_7A9C()
{
  v103 = v0;
  v1 = (v0 + 112);
  v2 = *(v0 + 440);
  sub_EB80();
  if (*(&dword_10 + (*(v0 + 144) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v0 + 144) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    goto LABEL_84;
  }

LABEL_2:
  v3 = *(v0 + 440);
  sub_EBC0();
  v4 = *(v0 + 144);
  v5 = v3;
  sub_E9E0();
  v6 = sub_E960();
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_C590(0, v9[2] + 1, 1, v9, &qword_190F8, &qword_10EC0, &type metadata accessor for SettingsPersonEntry);
    *v8 = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_C590((v11 > 1), v12 + 1, 1, v9, &qword_190F8, &qword_10EC0, &type metadata accessor for SettingsPersonEntry);
    *v8 = v9;
  }

  v13 = *(v0 + 440);
  v14 = *(v0 + 408);
  v15 = *(v0 + 328);
  v16 = *(v0 + 288);
  v17 = *(v0 + 296);
  v9[2] = v12 + 1;
  (*(v17 + 32))(v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v12, v15, v16);
  v6(v1, 0);

  v19 = *(v0 + 416);
  v20 = *(v0 + 384);
  if (v19 == *(v0 + 376))
  {
    goto LABEL_7;
  }

  v97 = v4;
  v96 = *(v0 + 384);
  do
  {
    *(v0 + 392) = v4;
    *(v0 + 400) = v4;
    *(v0 + 384) = v20;
    v29 = *(v0 + 368);
    if ((v29 & 0xC000000000000001) != 0)
    {
      v30 = sub_ED40();
    }

    else
    {
      if (v19 >= *(&dword_10 + (v29 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_89;
      }

      v30 = *(v29 + 8 * v19 + 32);
    }

    v31 = v30;
    *(v0 + 408) = v30;
    *(v0 + 416) = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_86;
    }

    if (qword_19030 != -1)
    {
      swift_once();
    }

    v32 = sub_EAB0();
    *(v0 + 424) = sub_D300(v32, qword_19038);
    v33 = v31;
    v34 = sub_EA90();
    v35 = sub_EC40();

    v99 = v33;
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v102 = v37;
      *v36 = 136315138;
      v38 = v33;
      v1 = [v38 description];
      v39 = sub_EB40();
      v41 = v40;

      v42 = sub_C76C(v39, v41, &v102);

      *(v36 + 4) = v42;
      _os_log_impl(&dword_0, v34, v35, "Requesting to block %s", v36, 0xCu);
      sub_D778(v37);

      v33 = v99;
    }

    if ([*(v0 + 168) blocklistViewModel])
    {
      sub_ED20();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v43 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v43;
    if (!*(v0 + 40))
    {

      sub_D718(v0 + 16, &qword_190E8, &qword_10EB0);
LABEL_77:

      goto LABEL_78;
    }

    sub_E9C0();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_77;
    }

    *(v0 + 432) = *(v0 + 152);
    v44 = [v33 contact];
    *(v0 + 440) = v44;
    if (v44)
    {
      v45 = v44;
      if ([v44 hasBeenPersisted])
      {
        v46 = sub_E970();
        v47 = v46;
        v48 = *(v46 + 16);
        if (!v48)
        {
LABEL_72:

          v93 = swift_task_alloc();
          *(v0 + 448) = v93;
          *v93 = v0;
          v93[1] = sub_7960;

          return BlockList.add(contact:)(v45);
        }

        v49 = 0;
        v50 = *(*(v0 + 296) + 80);
        v100 = v46 + ((v50 + 32) & ~v50);
        while (v49 < *(v47 + 16))
        {
          v51 = *(v0 + 336);
          v52 = *(v0 + 288);
          v53 = *(v0 + 296);
          (*(v53 + 16))(v51, v100 + *(v53 + 72) * v49, v52);
          v54 = sub_E9F0();
          (*(v53 + 8))(v51, v52);
          if (v54)
          {
            v55 = [v54 identifier];

            v56 = sub_EB40();
            v54 = v57;
          }

          else
          {
            v56 = 0;
          }

          v58 = [v45 identifier];
          v59 = sub_EB40();
          v1 = v60;

          if (v54)
          {
            if (v56 == v59 && v54 == v1)
            {

LABEL_60:

              goto LABEL_61;
            }

            v62 = sub_EDC0();

            if (v62)
            {
              goto LABEL_60;
            }
          }

          else
          {
          }

          if (v48 == ++v49)
          {
            goto LABEL_72;
          }
        }

LABEL_83:
        __break(1u);
LABEL_84:
        sub_EBB0();
        goto LABEL_2;
      }
    }

    v63 = sub_E9A0();
    v64 = v63;
    v65 = *(v63 + 16);
    v66 = v99;
    if (!v65)
    {
LABEL_63:
      v85 = *(v0 + 484);
      v86 = *(v0 + 480);
      v88 = *(v0 + 216);
      v87 = *(v0 + 224);
      v89 = *(v0 + 208);

      if ([v66 kind])
      {
        v90 = v86;
      }

      else
      {
        v90 = v85;
      }

      (*(v88 + 104))(v87, v90, v89);
      v18 = [v66 normalizedAddress];
      if (v18 || (v18 = [v66 address]) != 0)
      {
        v91 = v18;
        sub_EB40();

        sub_EA70();
        v92 = swift_task_alloc();
        *(v0 + 464) = v92;
        *v92 = v0;
        v92[1] = sub_865C;
        v18 = *(v0 + 256);

        return BlockList.add(handle:)(v18);
      }

LABEL_89:
      __break(1u);
      return BlockList.add(handle:)(v18);
    }

    v67 = 0;
    v68 = *(*(v0 + 296) + 80);
    v101 = v63 + ((v68 + 32) & ~v68);
    v98 = v63;
    while (1)
    {
      if (v67 >= *(v64 + 16))
      {
        __break(1u);
        goto LABEL_83;
      }

      v69 = *(v0 + 320);
      v1 = *(v0 + 288);
      v70 = *(v0 + 296);
      (*(v70 + 16))(v69, v101 + *(v70 + 72) * v67, v1);
      v71 = sub_EA00();
      (*(v70 + 8))(v69, v1);
      if (!*(v71 + 16))
      {

        goto LABEL_48;
      }

      (*(*(v0 + 272) + 16))(*(v0 + 280), v71 + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)), *(v0 + 264));

      v72 = sub_EA40();
      v74 = v73;
      v75 = [v66 address];
      if (!v75)
      {
        v84 = *(v0 + 272);
        v83 = *(v0 + 280);
        v1 = *(v0 + 264);

        (*(v84 + 8))(v83, v1);
        goto LABEL_48;
      }

      v76 = v75;
      v77 = sub_EB40();
      v1 = v78;

      v80 = *(v0 + 272);
      v79 = *(v0 + 280);
      v81 = *(v0 + 264);
      if (v72 == v77 && v74 == v1)
      {
        break;
      }

      v82 = sub_EDC0();

      (*(v80 + 8))(v79, v81);
      v64 = v98;
      v66 = v99;
      if (v82)
      {
        goto LABEL_58;
      }

LABEL_48:
      if (v65 == ++v67)
      {
        goto LABEL_63;
      }
    }

    (*(v80 + 8))(v79, v81);
    v66 = v99;
LABEL_58:

LABEL_61:
    v19 = *(v0 + 416);
    v4 = v97;
    v20 = v96;
  }

  while (v19 != *(v0 + 376));
LABEL_7:

  if (!(v4 >> 62))
  {
    if (*(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_86:
  if (sub_EDB0())
  {
LABEL_9:
    v21 = *(v0 + 168);
    sub_E8C0();
    v22 = sub_E890();
    v23 = sub_AC90(v4);

    v24._rawValue = v23;
    v105.value.super.super.isa = v21;
    sub_E8B0(v24, v105);
  }

LABEL_10:

  if (*(v20 + 16))
  {
    v25 = *(v0 + 168);
    sub_E8C0();
    v26 = sub_E890();
    v27 = sub_AE84(v20);

    v28._rawValue = v27;
    v106.value.super.super.isa = v25;
    sub_E8A0(v28, v106);

    goto LABEL_79;
  }

LABEL_78:

LABEL_79:

  v94 = *(v0 + 8);

  return v94();
}

uint64_t sub_865C()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  v3 = *(v2 + 360);
  v4 = *(v2 + 352);
  if (v0)
  {
    v5 = sub_A118;
  }

  else
  {
    v5 = sub_8798;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_8798()
{
  v129 = v0;
  (*(*(v0 + 240) + 16))(*(v0 + 248), *(v0 + 256), *(v0 + 232));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 384);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_92;
  }

LABEL_2:
  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_C590((v3 > 1), v4 + 1, 1, v2, &qword_19100, &qword_10EC8, &type metadata accessor for Handle);
  }

  v5 = *(v0 + 408);
  v7 = *(v0 + 240);
  v6 = *(v0 + 248);
  v8 = *(v0 + 232);
  v2[2] = v4 + 1;
  (*(v7 + 32))(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, v6, v8);
  sub_D2B8(&qword_190F0, &qword_10EB8);
  *(swift_allocObject() + 16) = xmmword_10E30;
  v9 = [v5 address];
  if (!v9)
  {
    goto LABEL_97;
  }

  v10 = v9;
  v11 = *(v0 + 408);
  sub_EB40();

  v9 = [v11 normalizedAddress];
  v121 = v2;
  if (!v9)
  {
    v9 = [*(v0 + 408) address];
    if (!v9)
    {
      goto LABEL_98;
    }
  }

  v12 = *(v0 + 408);
  v114 = *(v0 + 492);
  v13 = *(v0 + 488);
  v117 = *(v0 + 304);
  v14 = *(v0 + 296);
  v115 = *(v0 + 312);
  v116 = *(v0 + 288);
  v16 = *(v0 + 192);
  v15 = *(v0 + 200);
  v17 = *(v0 + 184);
  v18 = v9;
  sub_EB40();

  if ([v12 kind])
  {
    v19 = v13;
  }

  else
  {
    v19 = v114;
  }

  (*(v16 + 104))(v15, v19, v17);
  sub_EA30();
  sub_E9D0();
  (*(v14 + 16))(v117, v115, v116);
  v20 = sub_E990();
  v22 = v21;
  v23 = *v21;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((v24 & 1) == 0)
  {
    v23 = sub_C590(0, v23[2] + 1, 1, v23, &qword_190F8, &qword_10EC0, &type metadata accessor for SettingsPersonEntry);
    *v22 = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  v124 = v20;
  if (v26 >= v25 >> 1)
  {
    v23 = sub_C590((v25 > 1), v26 + 1, 1, v23, &qword_190F8, &qword_10EC0, &type metadata accessor for SettingsPersonEntry);
    *v22 = v23;
  }

  v27 = *(v0 + 408);
  v28 = *(v0 + 304);
  v29 = *(v0 + 312);
  v30 = *(v0 + 288);
  v31 = *(v0 + 296);
  v122 = *(v0 + 256);
  v32 = *(v0 + 240);
  v119 = *(v0 + 232);
  v23[2] = v26 + 1;
  (*(v31 + 32))(v23 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26, v28, v30);
  v124();

  (*(v31 + 8))(v29, v30);
  v9 = (*(v32 + 8))(v122, v119);
  v2 = *(v0 + 392);
  v33 = *(v0 + 400);
  v34 = *(v0 + 416);
  v35 = v121;
  if (v34 == *(v0 + 376))
  {
    goto LABEL_15;
  }

  p_opt_class_meths = &OBJC_PROTOCOL___CNContactPickerDelegate.opt_class_meths;
  v120 = *(v0 + 400);
  v118 = *(v0 + 392);
  do
  {
    *(v0 + 392) = v2;
    *(v0 + 400) = v33;
    *(v0 + 384) = v35;
    v45 = *(v0 + 368);
    if ((v45 & 0xC000000000000001) != 0)
    {
      v46 = sub_ED40();
    }

    else
    {
      if (v34 >= *(&dword_10 + (v45 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v46 = *(v45 + 8 * v34 + 32);
    }

    v47 = v46;
    *(v0 + 408) = v46;
    *(v0 + 416) = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      goto LABEL_94;
    }

    if (p_opt_class_meths[6] != -1)
    {
      swift_once();
    }

    v48 = sub_EAB0();
    *(v0 + 424) = sub_D300(v48, qword_19038);
    v49 = v47;
    v50 = sub_EA90();
    v51 = sub_EC40();

    v125 = v49;
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v128 = v53;
      *v52 = 136315138;
      v54 = v49;
      v55 = [v54 description];
      v56 = sub_EB40();
      v2 = v57;

      v58 = sub_C76C(v56, v2, &v128);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_0, v50, v51, "Requesting to block %s", v52, 0xCu);
      sub_D778(v53);
    }

    if ([*(v0 + 168) blocklistViewModel])
    {
      sub_ED20();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v59 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v59;
    if (!*(v0 + 40))
    {

      sub_D718(v0 + 16, &qword_190E8, &qword_10EB0);
LABEL_85:

      goto LABEL_86;
    }

    sub_E9C0();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_85;
    }

    *(v0 + 432) = *(v0 + 152);
    v60 = [v125 contact];
    *(v0 + 440) = v60;
    if (v60)
    {
      v61 = v60;
      if ([v60 hasBeenPersisted])
      {
        v62 = sub_E970();
        v63 = v62;
        v64 = *(v62 + 16);
        if (!v64)
        {
LABEL_80:

          v111 = swift_task_alloc();
          *(v0 + 448) = v111;
          *v111 = v0;
          v111[1] = sub_7960;

          return BlockList.add(contact:)(v61);
        }

        v65 = 0;
        v66 = *(*(v0 + 296) + 80);
        v126 = v62 + ((v66 + 32) & ~v66);
        while (v65 < *(v63 + 16))
        {
          v67 = *(v0 + 336);
          v68 = *(v0 + 288);
          v69 = *(v0 + 296);
          (*(v69 + 16))(v67, v126 + *(v69 + 72) * v65, v68);
          v70 = sub_E9F0();
          (*(v69 + 8))(v67, v68);
          if (v70)
          {
            v71 = [v70 identifier];

            v2 = sub_EB40();
            v70 = v72;
          }

          else
          {
            v2 = 0;
          }

          v73 = [v61 identifier];
          v74 = sub_EB40();
          v76 = v75;

          if (v70)
          {
            if (v2 == v74 && v70 == v76)
            {

LABEL_68:

              goto LABEL_69;
            }

            v78 = sub_EDC0();

            if (v78)
            {
              goto LABEL_68;
            }
          }

          else
          {
          }

          if (v64 == ++v65)
          {
            goto LABEL_80;
          }
        }

LABEL_91:
        __break(1u);
LABEL_92:
        v2 = sub_C590(0, v2[2] + 1, 1, v2, &qword_19100, &qword_10EC8, &type metadata accessor for Handle);
        goto LABEL_2;
      }
    }

    v79 = sub_E9A0();
    v2 = v79;
    v80 = *(v79 + 16);
    v81 = v125;
    if (!v80)
    {
LABEL_71:
      v103 = *(v0 + 484);
      v104 = *(v0 + 480);
      v106 = *(v0 + 216);
      v105 = *(v0 + 224);
      v107 = *(v0 + 208);

      if ([v81 kind])
      {
        v108 = v104;
      }

      else
      {
        v108 = v103;
      }

      (*(v106 + 104))(v105, v108, v107);
      v9 = [v81 normalizedAddress];
      if (v9 || (v9 = [v81 address]) != 0)
      {
        v109 = v9;
        sub_EB40();

        sub_EA70();
        v110 = swift_task_alloc();
        *(v0 + 464) = v110;
        *v110 = v0;
        v110[1] = sub_865C;
        v9 = *(v0 + 256);

        return BlockList.add(handle:)(v9);
      }

LABEL_99:
      __break(1u);
      return BlockList.add(handle:)(v9);
    }

    v82 = 0;
    v83 = *(*(v0 + 296) + 80);
    v127 = v79 + ((v83 + 32) & ~v83);
    v123 = v79;
    while (1)
    {
      if (v82 >= v2[2])
      {
        __break(1u);
        goto LABEL_91;
      }

      v84 = *(v0 + 320);
      v85 = *(v0 + 288);
      v86 = *(v0 + 296);
      (*(v86 + 16))(v84, v127 + *(v86 + 72) * v82, v85);
      v87 = sub_EA00();
      (*(v86 + 8))(v84, v85);
      if (!*(v87 + 16))
      {

        goto LABEL_56;
      }

      (*(*(v0 + 272) + 16))(*(v0 + 280), v87 + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)), *(v0 + 264));

      v88 = sub_EA40();
      v90 = v89;
      v91 = [v81 address];
      if (!v91)
      {
        v101 = *(v0 + 272);
        v100 = *(v0 + 280);
        v102 = *(v0 + 264);

        (*(v101 + 8))(v100, v102);
        goto LABEL_56;
      }

      v92 = v91;
      v93 = sub_EB40();
      v95 = v94;

      v97 = *(v0 + 272);
      v96 = *(v0 + 280);
      v98 = *(v0 + 264);
      if (v88 == v93 && v90 == v95)
      {
        break;
      }

      v99 = sub_EDC0();

      (*(v97 + 8))(v96, v98);
      v2 = v123;
      v81 = v125;
      if (v99)
      {
        goto LABEL_66;
      }

LABEL_56:
      if (v80 == ++v82)
      {
        goto LABEL_71;
      }
    }

    (*(v97 + 8))(v96, v98);
    v81 = v125;
LABEL_66:

LABEL_69:
    v34 = *(v0 + 416);
    v33 = v120;
    v35 = v121;
    v2 = v118;
    p_opt_class_meths = (&OBJC_PROTOCOL___CNContactPickerDelegate + 48);
  }

  while (v34 != *(v0 + 376));
LABEL_15:

  if (!(v33 >> 62))
  {
    if (*(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_94:
  if (sub_EDB0())
  {
LABEL_17:
    v36 = *(v0 + 168);
    sub_E8C0();
    v37 = sub_E890();
    v38 = sub_AC90(v2);

    v39._rawValue = v38;
    v131.value.super.super.isa = v36;
    sub_E8B0(v39, v131);
  }

LABEL_18:

  if (*(v35 + 16))
  {
    v40 = *(v0 + 168);
    sub_E8C0();
    v41 = sub_E890();
    v42 = sub_AE84(v35);

    v43._rawValue = v42;
    v132.value.super.super.isa = v40;
    sub_E8A0(v43, v132);

    goto LABEL_87;
  }

LABEL_86:

LABEL_87:

  v112 = *(v0 + 8);

  return v112();
}

uint64_t sub_95B8()
{
  v103 = v0;

  v1 = *(v0 + 408);
  v2 = sub_EA90();
  v3 = sub_EC30();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 408);
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v102 = v7;
    *v6 = 136315138;
    v8 = v5;
    v9 = [v8 description];
    v10 = sub_EB40();
    v12 = v11;

    v13 = sub_C76C(v10, v12, &v102);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_0, v2, v3, "Failed to block recipient %s", v6, 0xCu);
    sub_D778(v7);
  }

  else
  {
  }

  v16 = *(v0 + 392);
  v15 = *(v0 + 400);
  v17 = *(v0 + 416);
  v18 = *(v0 + 384);
  if (v17 == *(v0 + 376))
  {
    goto LABEL_5;
  }

  p_opt_class_meths = &OBJC_PROTOCOL___CNContactPickerDelegate.opt_class_meths;
  v97 = *(v0 + 400);
  v95 = *(v0 + 392);
  v96 = *(v0 + 384);
  do
  {
    *(v0 + 392) = v16;
    *(v0 + 400) = v15;
    *(v0 + 384) = v18;
    v28 = *(v0 + 368);
    if ((v28 & 0xC000000000000001) != 0)
    {
      v29 = sub_ED40();
    }

    else
    {
      if (v17 >= *(&dword_10 + (v28 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_86;
      }

      v29 = *(v28 + 8 * v17 + 32);
    }

    v30 = v29;
    *(v0 + 408) = v29;
    *(v0 + 416) = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_82;
    }

    if (p_opt_class_meths[6] != -1)
    {
      swift_once();
    }

    v31 = sub_EAB0();
    *(v0 + 424) = sub_D300(v31, qword_19038);
    v32 = v30;
    v33 = sub_EA90();
    v34 = sub_EC40();

    v99 = v32;
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v102 = v36;
      *v35 = 136315138;
      v37 = v32;
      v38 = [v37 description];
      v39 = sub_EB40();
      v16 = v40;

      v41 = sub_C76C(v39, v16, &v102);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_0, v33, v34, "Requesting to block %s", v35, 0xCu);
      sub_D778(v36);
    }

    if ([*(v0 + 168) blocklistViewModel])
    {
      sub_ED20();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v42 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v42;
    if (!*(v0 + 40))
    {

      sub_D718(v0 + 16, &qword_190E8, &qword_10EB0);
LABEL_75:

      goto LABEL_76;
    }

    sub_E9C0();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_75;
    }

    *(v0 + 432) = *(v0 + 152);
    v43 = [v99 contact];
    *(v0 + 440) = v43;
    if (v43)
    {
      v44 = v43;
      if ([v43 hasBeenPersisted])
      {
        v45 = sub_E970();
        v46 = v45;
        v47 = *(v45 + 16);
        if (!v47)
        {
LABEL_70:

          v92 = swift_task_alloc();
          *(v0 + 448) = v92;
          *v92 = v0;
          v92[1] = sub_7960;

          return BlockList.add(contact:)(v44);
        }

        v18 = 0;
        v48 = *(*(v0 + 296) + 80);
        v100 = v45 + ((v48 + 32) & ~v48);
        while (v18 < *(v46 + 16))
        {
          v49 = *(v0 + 336);
          v50 = *(v0 + 288);
          v51 = *(v0 + 296);
          (*(v51 + 16))(v49, v100 + *(v51 + 72) * v18, v50);
          v52 = sub_E9F0();
          (*(v51 + 8))(v49, v50);
          if (v52)
          {
            v53 = [v52 identifier];

            v16 = sub_EB40();
            v52 = v54;
          }

          else
          {
            v16 = 0;
          }

          v55 = [v44 identifier];
          v56 = sub_EB40();
          v58 = v57;

          if (v52)
          {
            if (v16 == v56 && v52 == v58)
            {

LABEL_58:

              goto LABEL_59;
            }

            v60 = sub_EDC0();

            if (v60)
            {
              goto LABEL_58;
            }
          }

          else
          {
          }

          if (v47 == ++v18)
          {
            goto LABEL_70;
          }
        }

LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }
    }

    v61 = sub_E9A0();
    v16 = v61;
    v62 = *(v61 + 16);
    v63 = v99;
    if (!v62)
    {
LABEL_61:
      v84 = *(v0 + 484);
      v85 = *(v0 + 480);
      v87 = *(v0 + 216);
      v86 = *(v0 + 224);
      v88 = *(v0 + 208);

      if ([v63 kind])
      {
        v89 = v85;
      }

      else
      {
        v89 = v84;
      }

      (*(v87 + 104))(v86, v89, v88);
      v14 = [v63 normalizedAddress];
      if (v14 || (v14 = [v63 address]) != 0)
      {
        v90 = v14;
        sub_EB40();

        sub_EA70();
        v91 = swift_task_alloc();
        *(v0 + 464) = v91;
        *v91 = v0;
        v91[1] = sub_865C;
        v14 = *(v0 + 256);

        return BlockList.add(handle:)(v14);
      }

LABEL_86:
      __break(1u);
      return BlockList.add(handle:)(v14);
    }

    v18 = 0;
    v64 = *(*(v0 + 296) + 80);
    v101 = v61 + ((v64 + 32) & ~v64);
    v98 = v61;
    while (1)
    {
      if (v18 >= *(v16 + 16))
      {
        __break(1u);
        goto LABEL_81;
      }

      v65 = *(v0 + 320);
      v66 = *(v0 + 288);
      v67 = *(v0 + 296);
      (*(v67 + 16))(v65, v101 + *(v67 + 72) * v18, v66);
      v68 = sub_EA00();
      (*(v67 + 8))(v65, v66);
      if (!*(v68 + 16))
      {

        goto LABEL_46;
      }

      (*(*(v0 + 272) + 16))(*(v0 + 280), v68 + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)), *(v0 + 264));

      v69 = sub_EA40();
      v71 = v70;
      v72 = [v63 address];
      if (!v72)
      {
        v82 = *(v0 + 272);
        v81 = *(v0 + 280);
        v83 = *(v0 + 264);

        (*(v82 + 8))(v81, v83);
        goto LABEL_46;
      }

      v73 = v72;
      v74 = sub_EB40();
      v76 = v75;

      v78 = *(v0 + 272);
      v77 = *(v0 + 280);
      v79 = *(v0 + 264);
      if (v69 == v74 && v71 == v76)
      {
        break;
      }

      v80 = sub_EDC0();

      (*(v78 + 8))(v77, v79);
      v16 = v98;
      v63 = v99;
      if (v80)
      {
        goto LABEL_56;
      }

LABEL_46:
      if (v62 == ++v18)
      {
        goto LABEL_61;
      }
    }

    (*(v78 + 8))(v77, v79);
    v63 = v99;
LABEL_56:

LABEL_59:
    v17 = *(v0 + 416);
    v16 = v95;
    v18 = v96;
    v15 = v97;
    p_opt_class_meths = (&OBJC_PROTOCOL___CNContactPickerDelegate + 48);
  }

  while (v17 != *(v0 + 376));
LABEL_5:

  if (!(v15 >> 62))
  {
    if (*(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

LABEL_83:
  if (sub_EDB0())
  {
LABEL_7:
    v19 = *(v0 + 168);
    sub_E8C0();
    v20 = sub_E890();
    v21 = sub_AC90(v16);

    v22._rawValue = v21;
    v105.value.super.super.isa = v19;
    sub_E8B0(v22, v105);
  }

LABEL_8:

  if (*(v18 + 16))
  {
    v23 = *(v0 + 168);
    sub_E8C0();
    v24 = sub_E890();
    v25 = sub_AE84(v18);

    v26._rawValue = v25;
    v106.value.super.super.isa = v23;
    sub_E8A0(v26, v106);

    goto LABEL_77;
  }

LABEL_76:

LABEL_77:

  v93 = *(v0 + 8);

  return v93();
}

uint64_t sub_A118()
{
  v106 = v0;
  v1 = *(v0 + 256);
  v2 = *(v0 + 232);
  v3 = *(v0 + 240);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 408);
  v5 = sub_EA90();
  v6 = sub_EC30();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 408);
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v105 = v10;
    *v9 = 136315138;
    v11 = v8;
    v12 = [v11 description];
    v13 = sub_EB40();
    v15 = v14;

    v16 = sub_C76C(v13, v15, &v105);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_0, v5, v6, "Failed to block recipient %s", v9, 0xCu);
    sub_D778(v10);
  }

  else
  {
  }

  v19 = *(v0 + 392);
  v18 = *(v0 + 400);
  v20 = *(v0 + 416);
  v21 = *(v0 + 384);
  if (v20 == *(v0 + 376))
  {
    goto LABEL_5;
  }

  p_opt_class_meths = &OBJC_PROTOCOL___CNContactPickerDelegate.opt_class_meths;
  v100 = *(v0 + 400);
  v98 = *(v0 + 392);
  v99 = *(v0 + 384);
  do
  {
    *(v0 + 392) = v19;
    *(v0 + 400) = v18;
    *(v0 + 384) = v21;
    v31 = *(v0 + 368);
    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = sub_ED40();
    }

    else
    {
      if (v20 >= *(&dword_10 + (v31 & 0xFFFFFFFFFFFFFF8)))
      {
        __break(1u);
        goto LABEL_86;
      }

      v32 = *(v31 + 8 * v20 + 32);
    }

    v33 = v32;
    *(v0 + 408) = v32;
    *(v0 + 416) = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      goto LABEL_82;
    }

    if (p_opt_class_meths[6] != -1)
    {
      swift_once();
    }

    v34 = sub_EAB0();
    *(v0 + 424) = sub_D300(v34, qword_19038);
    v35 = v33;
    v36 = sub_EA90();
    v37 = sub_EC40();

    v102 = v35;
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v105 = v39;
      *v38 = 136315138;
      v40 = v35;
      v41 = [v40 description];
      v42 = sub_EB40();
      v19 = v43;

      v44 = sub_C76C(v42, v19, &v105);

      *(v38 + 4) = v44;
      _os_log_impl(&dword_0, v36, v37, "Requesting to block %s", v38, 0xCu);
      sub_D778(v39);
    }

    if ([*(v0 + 168) blocklistViewModel])
    {
      sub_ED20();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
    }

    v45 = *(v0 + 64);
    *(v0 + 16) = *(v0 + 48);
    *(v0 + 32) = v45;
    if (!*(v0 + 40))
    {

      sub_D718(v0 + 16, &qword_190E8, &qword_10EB0);
LABEL_75:

      goto LABEL_76;
    }

    sub_E9C0();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_75;
    }

    *(v0 + 432) = *(v0 + 152);
    v46 = [v102 contact];
    *(v0 + 440) = v46;
    if (v46)
    {
      v47 = v46;
      if ([v46 hasBeenPersisted])
      {
        v48 = sub_E970();
        v49 = v48;
        v50 = *(v48 + 16);
        if (!v50)
        {
LABEL_70:

          v95 = swift_task_alloc();
          *(v0 + 448) = v95;
          *v95 = v0;
          v95[1] = sub_7960;

          return BlockList.add(contact:)(v47);
        }

        v21 = 0;
        v51 = *(*(v0 + 296) + 80);
        v103 = v48 + ((v51 + 32) & ~v51);
        while (v21 < *(v49 + 16))
        {
          v52 = *(v0 + 336);
          v53 = *(v0 + 288);
          v54 = *(v0 + 296);
          (*(v54 + 16))(v52, v103 + *(v54 + 72) * v21, v53);
          v55 = sub_E9F0();
          (*(v54 + 8))(v52, v53);
          if (v55)
          {
            v56 = [v55 identifier];

            v19 = sub_EB40();
            v55 = v57;
          }

          else
          {
            v19 = 0;
          }

          v58 = [v47 identifier];
          v59 = sub_EB40();
          v61 = v60;

          if (v55)
          {
            if (v19 == v59 && v55 == v61)
            {

LABEL_58:

              goto LABEL_59;
            }

            v63 = sub_EDC0();

            if (v63)
            {
              goto LABEL_58;
            }
          }

          else
          {
          }

          if (v50 == ++v21)
          {
            goto LABEL_70;
          }
        }

LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }
    }

    v64 = sub_E9A0();
    v19 = v64;
    v65 = *(v64 + 16);
    v66 = v102;
    if (!v65)
    {
LABEL_61:
      v87 = *(v0 + 484);
      v88 = *(v0 + 480);
      v90 = *(v0 + 216);
      v89 = *(v0 + 224);
      v91 = *(v0 + 208);

      if ([v66 kind])
      {
        v92 = v88;
      }

      else
      {
        v92 = v87;
      }

      (*(v90 + 104))(v89, v92, v91);
      v17 = [v66 normalizedAddress];
      if (v17 || (v17 = [v66 address]) != 0)
      {
        v93 = v17;
        sub_EB40();

        sub_EA70();
        v94 = swift_task_alloc();
        *(v0 + 464) = v94;
        *v94 = v0;
        v94[1] = sub_865C;
        v17 = *(v0 + 256);

        return BlockList.add(handle:)(v17);
      }

LABEL_86:
      __break(1u);
      return BlockList.add(handle:)(v17);
    }

    v21 = 0;
    v67 = *(*(v0 + 296) + 80);
    v104 = v64 + ((v67 + 32) & ~v67);
    v101 = v64;
    while (1)
    {
      if (v21 >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_81;
      }

      v68 = *(v0 + 320);
      v69 = *(v0 + 288);
      v70 = *(v0 + 296);
      (*(v70 + 16))(v68, v104 + *(v70 + 72) * v21, v69);
      v71 = sub_EA00();
      (*(v70 + 8))(v68, v69);
      if (!*(v71 + 16))
      {

        goto LABEL_46;
      }

      (*(*(v0 + 272) + 16))(*(v0 + 280), v71 + ((*(*(v0 + 272) + 80) + 32) & ~*(*(v0 + 272) + 80)), *(v0 + 264));

      v72 = sub_EA40();
      v74 = v73;
      v75 = [v66 address];
      if (!v75)
      {
        v85 = *(v0 + 272);
        v84 = *(v0 + 280);
        v86 = *(v0 + 264);

        (*(v85 + 8))(v84, v86);
        goto LABEL_46;
      }

      v76 = v75;
      v77 = sub_EB40();
      v79 = v78;

      v81 = *(v0 + 272);
      v80 = *(v0 + 280);
      v82 = *(v0 + 264);
      if (v72 == v77 && v74 == v79)
      {
        break;
      }

      v83 = sub_EDC0();

      (*(v81 + 8))(v80, v82);
      v19 = v101;
      v66 = v102;
      if (v83)
      {
        goto LABEL_56;
      }

LABEL_46:
      if (v65 == ++v21)
      {
        goto LABEL_61;
      }
    }

    (*(v81 + 8))(v80, v82);
    v66 = v102;
LABEL_56:

LABEL_59:
    v20 = *(v0 + 416);
    v19 = v98;
    v21 = v99;
    v18 = v100;
    p_opt_class_meths = (&OBJC_PROTOCOL___CNContactPickerDelegate + 48);
  }

  while (v20 != *(v0 + 376));
LABEL_5:

  if (!(v18 >> 62))
  {
    if (*(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

    goto LABEL_8;
  }

LABEL_83:
  if (sub_EDB0())
  {
LABEL_7:
    v22 = *(v0 + 168);
    sub_E8C0();
    v23 = sub_E890();
    v24 = sub_AC90(v19);

    v25._rawValue = v24;
    v108.value.super.super.isa = v22;
    sub_E8B0(v25, v108);
  }

LABEL_8:

  if (*(v21 + 16))
  {
    v26 = *(v0 + 168);
    sub_E8C0();
    v27 = sub_E890();
    v28 = sub_AE84(v21);

    v29._rawValue = v28;
    v109.value.super.super.isa = v26;
    sub_E8A0(v29, v109);

    goto LABEL_77;
  }

LABEL_76:

LABEL_77:

  v96 = *(v0 + 8);

  return v96();
}

void *sub_AC90(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_EDB0();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    result = sub_ED80();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          sub_ED40();
          sub_DD44(0, &qword_19120, CNContact_ptr);
          sub_D2B8(&qword_19128, &qword_10EE8);
          swift_dynamicCast();
          sub_ED60();
          sub_ED90();
          sub_EDA0();
          sub_ED70();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_DD44(0, &qword_19120, CNContact_ptr);
        do
        {
          v7 = *v6++;
          v8 = v7;
          sub_D2B8(&qword_19128, &qword_10EE8);
          swift_dynamicCast();
          sub_ED60();
          sub_ED90();
          sub_EDA0();
          sub_ED70();
          --v2;
        }

        while (v2);
      }

      return _swiftEmptyArrayStorage;
    }
  }

  return result;
}

void *sub_AE84(uint64_t a1)
{
  v2 = sub_EA80();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_D2B8(&qword_19110, &qword_10ED8);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_CD14(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_CD14((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_D824(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

void sub_B100()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_D2B8(&qword_190B0, &qword_10E68);
  v3 = __chkstk_darwin(v2 - 8);
  v95 = v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = v84 - v5;
  v7 = sub_E820();
  v96 = *(v7 - 8);
  v97 = v7;
  v8 = __chkstk_darwin(v7);
  v94 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = v84 - v10;
  v98 = sub_E850();
  v12 = *(v98 - 8);
  __chkstk_darwin(v98);
  v14 = v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_19030 != -1)
  {
    swift_once();
  }

  v15 = sub_EAB0();
  sub_D300(v15, qword_19038);
  v16 = sub_EA90();
  v17 = sub_EC40();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "emitBlocklistNavigationEvent", v18, 2u);
  }

  v19 = [v1 specifier];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 target];

    if (v21)
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = [v22 parentListController];
        v87 = v1;
        v88 = v6;
        if (v23 && (v24 = v23, v25 = [v23 specifierID], v24, v25))
        {
          v26 = sub_EB40();
          v28 = v27;
        }

        else
        {
          v26 = 0;
          v28 = 0;
        }

        sub_E840();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v91 = objc_opt_self();
        v92 = ObjCClassFromMetadata;
        v30 = [v91 bundleForClass:ObjCClassFromMetadata];
        v31 = [v30 bundleURL];

        sub_E800();
        v32 = objc_allocWithZone(_NSLocalizedStringResource);
        v33 = sub_EB30();
        isa = sub_E830().super.isa;
        sub_E7F0(v35);
        v37 = v36;
        v38 = [v32 initWithKey:v33 table:0 locale:isa bundleURL:v36];

        v39 = *(v96 + 8);
        v39(v11, v97);
        v40 = *(v12 + 8);
        v93 = v12 + 8;
        v90 = v40;
        v40(v14, v98);
        sub_D2B8(&qword_190B8, &qword_10E70);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_10E40;
        *(v41 + 32) = v38;
        v99 = v41;
        if (!v28)
        {

          swift_unknownObjectRelease();
          return;
        }

        v85 = v39;
        v86 = v38;
        if (v26 == 0xD00000000000001ELL && v28 == 0x8000000000010CE0 || (sub_EDC0() & 1) != 0)
        {
          v42 = v38;

          v89 = sub_EB40();
          v44 = v43;
          sub_E840();
          v45 = [v91 bundleForClass:v92];
          v46 = [v45 bundleURL];

          sub_E800();
          v47 = objc_allocWithZone(_NSLocalizedStringResource);
          v48 = v39;
          v49 = sub_EB30();
          v50 = sub_E830().super.isa;
          sub_E7F0(v51);
          v53 = v52;
          [v47 initWithKey:v49 table:0 locale:v50 bundleURL:v52];

          v48(v11, v97);
          v90(v14, v98);
          sub_EB80();
          if (*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v99 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_EBB0();
          }

          sub_EBC0();
          v54 = v89;
        }

        else
        {
          if (v26 == 0xD00000000000001BLL && v28 == 0x8000000000010C30)
          {
            v79 = v38;
          }

          else
          {
            v80 = sub_EDC0();
            v81 = v38;

            if ((v80 & 1) == 0)
            {

              swift_unknownObjectRelease();

              return;
            }
          }

          v54 = sub_EB40();
          v44 = v82;
          v83 = TUResolvedPhoneResource();
          sub_EB80();
          if (*(&dword_10 + (v99 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v99 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            sub_EBB0();
          }

          sub_EBC0();
        }

        v89 = v54;
        v84[1] = v44;
        v84[2] = v99;
        sub_D2B8(&qword_190C0, &qword_10E78);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_10E50;
        *(v55 + 56) = &type metadata for String;
        v56 = sub_D338();
        *(v55 + 32) = v54;
        *(v55 + 40) = v44;
        *(v55 + 96) = &type metadata for String;
        *(v55 + 104) = v56;
        *(v55 + 64) = v56;
        *(v55 + 72) = 0xD00000000000002CLL;
        *(v55 + 80) = 0x8000000000010C90;

        sub_EB50();
        v57 = v88;
        sub_E810();

        sub_E840();
        v58 = [v91 bundleForClass:v92];
        v59 = [v58 bundleURL];

        sub_E800();
        v60 = objc_allocWithZone(_NSLocalizedStringResource);
        v61 = sub_EB30();
        v62 = sub_E830().super.isa;
        sub_E7F0(v63);
        v65 = v64;
        v66 = [v60 initWithKey:v61 table:0 locale:v62 bundleURL:v64];

        v67 = v97;
        v68 = v85;
        v85(v11, v97);
        v90(v14, v98);
        v69 = v95;
        sub_D508(v57, v95, &qword_190B0, &qword_10E68);
        v70 = v96;
        if ((*(v96 + 48))(v69, 1, v67) == 1)
        {
          sub_D718(v57, &qword_190B0, &qword_10E68);

          swift_unknownObjectRelease();

          v71 = v69;
        }

        else
        {
          v72 = v94;
          (*(v70 + 32))(v94, v69, v67);
          v73 = sub_EB30();

          sub_DD44(0, &qword_190D0, _NSLocalizedStringResource_ptr);
          v74 = v68;
          v75 = sub_EB90().super.isa;

          sub_E7F0(v76);
          v78 = v77;
          [v87 pe_emitNavigationEventForApplicationSettingsWithApplicationBundleIdentifier:v73 title:v66 localizedNavigationComponents:v75 deepLink:v77];

          swift_unknownObjectRelease();
          v74(v72, v67);
          v71 = v57;
        }

        sub_D718(v71, &qword_190B0, &qword_10E68);
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_BCE8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_DD9C;

  return v6();
}

uint64_t sub_BDD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_BEB8;

  return v7();
}

uint64_t sub_BEB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_D2B8(&qword_190D8, &qword_10E80);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_D508(a3, v23 - v10, &qword_190D8, &qword_10E80);
  v12 = sub_EC10();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_D718(v11, &qword_190D8, &qword_10E80);
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

  sub_EC00();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_EBD0();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_EB60() + 32;
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

    sub_D718(a3, &qword_190D8, &qword_10E80);

    return v21;
  }

LABEL_8:
  sub_D718(a3, &qword_190D8, &qword_10E80);
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

uint64_t sub_C2A8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_DDA0;

  return v6(a1);
}

uint64_t sub_C3A0(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_C498;

  return v6(a1);
}

uint64_t sub_C498()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *sub_C590(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_D2B8(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

unint64_t sub_C76C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_C838(v11, 0, 0, 1, a1, a2);
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
    sub_D7C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_D778(v11);
  return v7;
}

unint64_t sub_C838(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_C944(a5, a6);
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
    result = sub_ED50();
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

void *sub_C944(uint64_t a1, unint64_t a2)
{
  v3 = sub_C990(a1, a2);
  sub_CAC0(&off_14BC8);
  return v3;
}

void *sub_C990(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_CBAC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_ED50();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_EB70();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_CBAC(v10, 0);
        result = sub_ED30();
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

uint64_t sub_CAC0(uint64_t result)
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

  result = sub_CC20(result, v11, 1, v3);
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

void *sub_CBAC(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_D2B8(&qword_19108, &qword_10ED0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_CC20(char *result, int64_t a2, char a3, char *a4)
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
    sub_D2B8(&qword_19108, &qword_10ED0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

void *sub_CD14(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_CD34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_CD34(void *result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_D2B8(&qword_19118, &qword_10EE0);
  v10 = *(sub_D2B8(&qword_19110, &qword_10ED8) - 8);
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
  v15 = *(sub_D2B8(&qword_19110, &qword_10ED8) - 8);
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

id sub_CF24(uint64_t a1, uint64_t a2)
{
  v2 = sub_EB30();
  v3 = [v2 stringByRemovingWhitespace];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_EB40();
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {

    return 0;
  }

  v7 = [objc_opt_self() sharedInstance];
  v8 = [v7 contactStore];

  v9 = [v8 contactForDestinationId:v3];
  if ([v3 destinationIdIsEmailAddress])
  {

    v10 = 0;
  }

  else
  {
    v12 = [v3 destinationIdIsPhoneNumber];

    if (v12)
    {
      v10 = 1;
    }

    else
    {
      v10 = 5;
    }
  }

  v13 = objc_allocWithZone(CNComposeRecipient);
  v14 = sub_EB30();

  v15 = [v13 initWithContact:v9 address:v14 kind:v10];

  return v15;
}

void _sSo33PHBlocklistSettingsListControllerC09BlocklistB0E29didTapTextViewAccessoryButton3for10anchoredToySo020CNAutocompleteSearchD0C_So6UIViewCtF_0()
{
  v1 = v0;
  if (qword_19030 != -1)
  {
    swift_once();
  }

  v2 = sub_EAB0();
  sub_D300(v2, qword_19038);
  v3 = sub_EA90();
  v4 = sub_EC40();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "handleContactPickerAccessoryButtonTapped", v5, 2u);
  }

  v9 = [objc_allocWithZone(CNContactPickerViewController) init];
  [v9 setAllowsCancel:1];
  [v9 setAllowsEditing:0];
  [v9 setMode:2];
  [v9 setDelegate:v1];
  sub_DD44(0, &unk_19150, NSPredicate_ptr);
  v6 = sub_EC20();
  [v9 setPredicateForEnablingContact:v6];

  [v9 setModalPresentationStyle:6];
  v7 = [v1 autocompleteSearchController];
  if (v7)
  {
    v8 = v7;
    [v7 presentViewController:v9 animated:1 completion:0];
  }
}

uint64_t sub_D2B8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_D300(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_D338()
{
  result = qword_190C8;
  if (!qword_190C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_190C8);
  }

  return result;
}

uint64_t *sub_D38C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_D3F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_D440(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_DD9C;

  return sub_6B9C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_D508(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_D2B8(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_D570()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D5A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_DD9C;

  return sub_C3A0(a1, v4);
}

uint64_t sub_D660(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_BEB8;

  return sub_C3A0(a1, v4);
}

uint64_t sub_D718(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_D2B8(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_D778(void *a1)
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

uint64_t sub_D7C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_D824(uint64_t a1, uint64_t a2)
{
  v4 = sub_D2B8(&qword_19110, &qword_10ED8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D894()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_D8D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_DD9C;

  return sub_56BC();
}

uint64_t sub_D988()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D9C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_DD9C;

  return sub_5264(v2, v3);
}

uint64_t sub_DA78()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_DD9C;

  return sub_BCE8(v2, v3, v4);
}

uint64_t sub_DB38()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_DB78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_BEB8;

  return sub_BDD0(a1, v4, v5, v6);
}

uint64_t sub_DC44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_DD9C;

  return sub_C2A8(a1, v4);
}

uint64_t sub_DCFC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_DD44(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_DDDC()
{
  result = qword_19258;
  if (!qword_19258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19258);
  }

  return result;
}

uint64_t sub_DE4C()
{
  v0 = sub_E940();
  __chkstk_darwin(v0 - 8);
  sub_DF90();
  sub_E930();
  return sub_E910();
}

uint64_t sub_DED0()
{
  v0 = sub_E920();
  v1 = sub_DF38();

  return SettingsPane.init(makeContent:)(sub_DE4C, 0, v0, v1);
}

unint64_t sub_DF38()
{
  result = qword_19260;
  if (!qword_19260)
  {
    sub_E920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19260);
  }

  return result;
}

unint64_t sub_DF90()
{
  result = qword_19268;
  if (!qword_19268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_19268);
  }

  return result;
}

unint64_t sub_DFF0()
{
  result = qword_19270;
  if (!qword_19270)
  {
    sub_E054(&qword_19278, &unk_11010);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19270);
  }

  return result;
}

uint64_t sub_E054(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t PHBlocklistSettingsBundleController.isStateDrivenNavigationPossible(parentController:)(void *a1)
{
  v2 = sub_EB10();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 traitCollection];
  sub_EC60();

  LOBYTE(a1) = sub_EAF0();
  (*(v3 + 8))(v5, v2);
  return a1 & 1;
}

uint64_t PHBlocklistSettingsBundleController.handleUserDidTapOnMainSpecifier(_:parentController:)(uint64_t a1, void *a2)
{
  v3 = sub_EB10();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_EC80();
  __chkstk_darwin(v7 - 8);
  v8 = sub_EAE0();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EC70();
  sub_EAD0();
  v12 = [a2 traitCollection];
  sub_EC60();

  sub_E4B0();
  sub_EB00();
  (*(v4 + 8))(v6, v3);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_E4B0()
{
  result = qword_19280;
  if (!qword_19280)
  {
    sub_EAE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_19280);
  }

  return result;
}

void sub_E778(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_0, a2, OS_LOG_TYPE_ERROR, "Could not create a CNPhoneNumber for the specified telephone number (%@).", &v2, 0xCu);
}