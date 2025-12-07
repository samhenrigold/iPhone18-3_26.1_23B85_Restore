uint64_t sub_10029E384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_10007EBC0(&qword_1006B50E0, &qword_100556FE0);
  v3[5] = swift_task_alloc();
  v4 = type metadata accessor for Destination();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_10029E480, 0, 0);
}

uint64_t sub_10029E480()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  PersonModel.Handle.rawValue.getter();
  Destination.init(string:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[2];
    sub_100012DF0(v0[5], &qword_1006B50E0, &qword_100556FE0);
    *v4 = 0;
    v4[1] = 0;
    v5 = enum case for ContactPickerViewModel.Dependencies.ReachabilityResult.unreachable(_:);
    v6 = type metadata accessor for ContactPickerViewModel.Dependencies.ReachabilityResult();
    (*(*(v6 - 8) + 104))(v4, v5, v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    (*(v0[7] + 32))(v0[8], v0[5], v0[6]);
    v11 = (&async function pointer to dispatch thunk of QueryController.isRegistered(destination:) + async function pointer to dispatch thunk of QueryController.isRegistered(destination:));
    v9 = swift_task_alloc();
    v0[9] = v9;
    *v9 = v0;
    v9[1] = sub_10029E644;
    v10 = v0[8];

    return v11(v10);
  }
}

uint64_t sub_10029E644(char a1)
{
  *(*v1 + 80) = a1;

  return _swift_task_switch(sub_10029E744, 0, 0);
}

uint64_t sub_10029E744()
{
  v1 = *(v0 + 80);
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  v2 = *(v0 + 16);
  if (v1 == 1)
  {
    v3 = &enum case for ContactPickerViewModel.Dependencies.ReachabilityResult.reachable(_:);
  }

  else
  {
    *v2 = 0;
    v2[1] = 0;
    v3 = &enum case for ContactPickerViewModel.Dependencies.ReachabilityResult.unreachable(_:);
  }

  v4 = *v3;
  v5 = type metadata accessor for ContactPickerViewModel.Dependencies.ReachabilityResult();
  (*(*(v5 - 8) + 104))(v2, v4, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10029E834(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_10029E854, 0, 0);
}

uint64_t sub_10029E854()
{
  type metadata accessor for FMContactsUtilities();
  v1 = PersonModel.Handle.rawValue.getter();
  v3 = sub_100476878(v1, v2);

  v4 = *(v0 + 16);
  if (v3)
  {
    *v4 = 0;
    v4[1] = 0;
    v5 = &enum case for ContactPickerViewModel.Dependencies.PartOfSignedInAccountResult.yes(_:);
  }

  else
  {
    v5 = &enum case for ContactPickerViewModel.Dependencies.PartOfSignedInAccountResult.no(_:);
  }

  v6 = *v5;
  v7 = type metadata accessor for ContactPickerViewModel.Dependencies.PartOfSignedInAccountResult();
  (*(*(v7 - 8) + 104))(v4, v6, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_10029E940(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for MessagingCapability();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  sub_10007EBC0(&qword_1006B50E0, &qword_100556FE0);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for Destination();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[11] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[12] = v6;
  v2[13] = v5;

  return _swift_task_switch(sub_10029EAC8, v6, v5);
}

uint64_t sub_10029EAC8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[7];
  PersonModel.Handle.rawValue.getter();
  Destination.init(string:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[7];

    sub_100012DF0(v4, &qword_1006B50E0, &qword_100556FE0);

    v5 = v0[1];

    return v5(0);
  }

  else
  {
    v8 = v0[5];
    v7 = v0[6];
    v9 = v0[4];
    (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
    (*(v8 + 104))(v7, enum case for MessagingCapability.supportsBeaconSharingV3(_:), v9);
    v13 = (&async function pointer to dispatch thunk of QueryController.destinationHasCapabilityWithDataReloadIfRequired(destination:capability:) + async function pointer to dispatch thunk of QueryController.destinationHasCapabilityWithDataReloadIfRequired(destination:capability:));
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_10029EC84;
    v11 = v0[10];
    v12 = v0[6];

    return v13(v11, v12);
  }
}

uint64_t sub_10029EC84(char a1)
{
  v4 = *v2;
  *(v4 + 120) = v1;

  v5 = *(v4 + 48);
  v6 = *(v4 + 40);
  v7 = *(v4 + 32);
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = *(v4 + 96);
    v9 = *(v4 + 104);
    v10 = sub_10029EEBC;
  }

  else
  {
    *(v4 + 128) = a1 & 1;
    (*(v6 + 8))(v5, v7);
    v8 = *(v4 + 96);
    v9 = *(v4 + 104);
    v10 = sub_10029EE10;
  }

  return _swift_task_switch(v10, v8, v9);
}

uint64_t sub_10029EE10()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 128);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_10029EEBC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_10029EF6C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v25 = *(v7 - 8);
  v26 = v7;
  __chkstk_darwin(v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v24 = v10;
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v22 - v15;
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v22 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v23 = *(v11 + 8);
  v23(v13, v10);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  aBlock[4] = sub_1002AB780;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100633408;
  v18 = _Block_copy(aBlock);
  v19 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002A5600(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v20 = v22;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v18);

  (*(v27 + 8))(v6, v4);
  (*(v25 + 8))(v9, v26);
  return (v23)(v16, v24);
}

void sub_10029F348(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v4[4] = sub_1000822F4;
  v4[5] = v2;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 1107296256;
  v4[2] = sub_100004AE4;
  v4[3] = &unk_100633458;
  v3 = _Block_copy(v4);

  [a1 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

void sub_10029F414(uint64_t a1)
{
  v2 = sub_1000EC530();
  v3 = objc_opt_self();
  v4 = &selRef_viewControllerForUnknownContact_;
  if (!v2)
  {
    v4 = &selRef_viewControllerForContact_;
  }

  v15 = [v3 *v4];
  [v15 setDisplayMode:1];
  [v15 setAllowsEditing:1];
  v5 = [objc_allocWithZone(CNContactStore) init];
  [v15 setContactStore:v5];

  v6 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v15];
  [v6 setModalPresentationStyle:2];
  sub_10000905C(0, &qword_1006AF730, UIAction_ptr);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = v6;
  v9 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  sub_10000905C(0, &qword_1006B0160, UIBarButtonItem_ptr);
  v10 = v9;
  v17.value.super.super.isa = v9;
  v17.is_nil = 0;
  v11.super.super.isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemCancel, v17, v18).super.super.isa;
  v12 = [v15 navigationItem];

  [v12 setLeftBarButtonItem:v11.super.super.isa animated:1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    [Strong presentViewController:v8 animated:1 completion:0];

    v8 = v14;
  }
}

uint64_t sub_10029F67C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[22] = a4;
  v7 = type metadata accessor for FMIPProductType();
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  type metadata accessor for FMBeaconSharingModuleShareState(0);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v8 = *(type metadata accessor for FMBeaconSharingModuleRelationshipType(0) - 8);
  v6[30] = v8;
  v6[31] = *(v8 + 64);
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();
  type metadata accessor for FMBeaconSharingModuleEntry(0);
  v6[34] = swift_task_alloc();
  v6[35] = type metadata accessor for FMSelectedSection(0);
  v6[36] = swift_task_alloc();
  v9 = type metadata accessor for FMIPItem();
  v6[37] = v9;
  v6[38] = *(v9 - 8);
  v6[39] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[40] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[41] = v11;
  v6[42] = v10;

  return _swift_task_switch(sub_10029F8D0, v11, v10);
}

uint64_t sub_10029F8D0()
{
  v1 = v0[36];
  v2 = *(*(v0[22] + qword_1006B9AC0) + 56);
  v3 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_1002A5814(v2 + v3, v1, type metadata accessor for FMSelectedSection);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v7 = v0[36];

    sub_1002A587C(v7, type metadata accessor for FMSelectedSection);
    goto LABEL_5;
  }

  v4 = v0[34];
  v5 = v0[23];
  (*(v0[38] + 32))(v0[39], v0[36], v0[37]);
  sub_1002A5814(v5, v4, type metadata accessor for FMBeaconSharingModuleEntry);
  v6 = sub_10007EBC0(&qword_1006B9D48, &unk_10055EB50);
  v0[43] = v6;
  if ((*(*(v6 - 8) + 48))(v4, 2, v6))
  {
    (*(v0[38] + 8))(v0[39], v0[37]);

LABEL_5:

    v8 = v0[1];

    return v8();
  }

  v10 = v0[34];
  v11 = v0[28];
  v12 = v0[29];
  v13 = *(v6 + 48);
  sub_1002A57AC(v10, v0[33], type metadata accessor for FMBeaconSharingModuleRelationshipType);
  sub_1002A57AC(v10 + v13, v12, type metadata accessor for FMBeaconSharingModuleShareState);
  v14 = enum case for FMIPBeaconShareState.failed(_:);
  v15 = type metadata accessor for FMIPBeaconShareState();
  v16 = *(*(v15 - 8) + 104);
  v16(v11, v14, v15);
  v17 = sub_10007EBC0(&qword_1006B9DF8, &unk_10055B9B0);
  v18 = *(*(v17 - 8) + 56);
  v18(v11, 0, 1, v17);
  LOBYTE(v12) = sub_1002A9D60(v12, v11);
  sub_1002A587C(v11, type metadata accessor for FMBeaconSharingModuleShareState);
  if (v12)
  {
    v20 = v0[26];
    v19 = v0[27];
    v21 = v0[25];
    v57 = v0[22];
    FMIPItem.productType.getter();
    v22 = FMIPProductType.isAirTag.getter();
    (*(v20 + 8))(v19, v21);
    v23 = [objc_opt_self() mainBundle];
    v24 = "E_SHARE_ACTION_CANCEL";
    if (v22)
    {
      v24 = "ING_FAILED_TITLE";
      v25 = 0xD00000000000002DLL;
    }

    else
    {
      v25 = 0xD00000000000002BLL;
    }

    v59._object = 0x800000010057D3F0;
    v26 = v24 | 0x8000000000000000;
    v27.value._object = 0x800000010057D3D0;
    v59._countAndFlagsBits = 0xD000000000000018;
    v27.value._countAndFlagsBits = 0xD000000000000013;
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v25, v27, v23, v28, v59);

    v29 = [objc_opt_self() mainBundle];
    v60._object = 0x800000010057D3F0;
    v30._countAndFlagsBits = 0xD000000000000020;
    v30._object = 0x800000010058C8A0;
    v31.value._object = 0x800000010057D3D0;
    v60._countAndFlagsBits = 0xD000000000000018;
    v31.value._countAndFlagsBits = 0xD000000000000013;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v60);

    v33 = String._bridgeToObjectiveC()();

    v34 = String._bridgeToObjectiveC()();

    v0[44] = [objc_opt_self() alertControllerWithTitle:v33 message:v34 preferredStyle:1];

    v35 = *(v57 + qword_1006B9AC8);
    v0[45] = v35;
    v36 = sub_1002A00E8;
    goto LABEL_18;
  }

  v38 = v0[32];
  v37 = v0[33];
  v55 = v18;
  v39 = v0[30];
  v40 = v0[31];
  v56 = v0[29];
  v54 = v0[28];
  v41 = v0[22];
  v42 = [objc_opt_self() alertControllerWithTitle:0 message:0 preferredStyle:0];
  v0[48] = v42;
  v52 = v42;
  sub_1002920D8();
  v53 = v16;
  sub_1002A5814(v37, v38, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  v43 = (*(v39 + 80) + 16) & ~*(v39 + 80);
  v44 = (v40 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  sub_1002A57AC(v38, v45 + v43, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  *(v45 + v44) = v41;
  v46 = v41;
  v47 = String._bridgeToObjectiveC()();

  v0[6] = sub_1002AB8E0;
  v0[7] = v45;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100017328;
  v0[5] = &unk_1006334F8;
  v48 = _Block_copy(v0 + 2);

  v49 = [objc_opt_self() actionWithTitle:v47 style:0 handler:v48];
  v0[49] = v49;
  _Block_release(v48);

  [v52 addAction:v49];
  v53(v54, enum case for FMIPBeaconShareState.requestReceived(_:), v15);
  v55(v54, 0, 1, v17);
  LOBYTE(v47) = sub_1002A9D60(v56, v54);
  sub_1002A587C(v54, type metadata accessor for FMBeaconSharingModuleShareState);
  if ((v47 & 1) == 0)
  {
    v35 = *(v0[22] + qword_1006B9AC8);
    v0[52] = v35;
    v36 = sub_1002A0CA4;
LABEL_18:

    return _swift_task_switch(v36, v35, 0);
  }

  v50 = swift_task_alloc();
  v0[50] = v50;
  *v50 = v0;
  v50[1] = sub_1002A0AEC;
  v51 = v0[23];

  return sub_1002A1D80(v51);
}

uint64_t sub_1002A0118()
{
  if (*(v0 + 440) == 1)
  {
    v1 = swift_task_alloc();
    v0[46] = v1;
    *v1 = v0;
    v1[1] = sub_1002A05A0;
    v2 = v0[23];

    return sub_1002A2D38(v2);
  }

  else
  {

    v4 = v0[44];
    v5 = v0[33];
    v6 = v0[34];
    v7 = *(v0[43] + 64);
    sub_1002A587C(v0[29], type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v5, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    v8 = type metadata accessor for UUID();
    (*(*(v8 - 8) + 8))(v6 + v7, v8);
    v9 = [objc_opt_self() mainBundle];
    v31._object = 0x800000010057D3F0;
    v10._countAndFlagsBits = 0xD000000000000025;
    v10._object = 0x800000010058C840;
    v11.value._object = 0x800000010057D3D0;
    v31._countAndFlagsBits = 0xD000000000000018;
    v11.value._countAndFlagsBits = 0xD000000000000013;
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v31);

    v13 = String._bridgeToObjectiveC()();

    v0[12] = State.rawValue.getter;
    v0[13] = 0;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100017328;
    v0[11] = &unk_100633520;
    v14 = _Block_copy(v0 + 8);

    v15 = [objc_opt_self() actionWithTitle:v13 style:1 handler:v14];
    _Block_release(v14);

    [v4 addAction:v15];
    v0[17] = &type metadata for SolariumFeatureFlag;
    v0[18] = sub_10000BD04();
    LOBYTE(v13) = isFeatureEnabled(_:)();
    sub_100006060(v0 + 14);
    if ((v13 & 1) != 0 && ![v4 preferredStyle])
    {
      v16 = [v4 popoverPresentationController];
      if (v16)
      {
        if (v0[24])
        {
          v17 = v0[24];
        }

        else
        {
          v17 = v0[22];
        }

        v18 = v16;
        [v16 setSourceView:v17];
      }

      v19 = [v4 popoverPresentationController];
      if (v19)
      {
        v20 = v19;
        if (v0[24])
        {
          v21 = v0[24];
        }

        else
        {
          v21 = v0[22];
        }

        [v21 bounds];
        [v20 setSourceRect:?];
      }

      v22 = [v4 popoverPresentationController];
      if (v22)
      {
        v23 = v22;
        [v22 setPermittedArrowDirections:12];
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v25 = Strong;
      [Strong presentViewController:v4 animated:1 completion:0];
    }

    v27 = v0[38];
    v26 = v0[39];
    v28 = v0[37];

    (*(v27 + 8))(v26, v28);

    v29 = v0[1];

    return v29();
  }
}

uint64_t sub_1002A05A0(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 376) = a1;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);

  return _swift_task_switch(sub_1002A06C8, v4, v3);
}

uint64_t sub_1002A06C8()
{
  v1 = v0[47];

  if (v1)
  {
    v2 = v0[47];
    [v0[44] addAction:v2];
  }

  v3 = v0[44];
  v4 = v0[33];
  v5 = v0[34];
  v6 = *(v0[43] + 64);
  sub_1002A587C(v0[29], type metadata accessor for FMBeaconSharingModuleShareState);
  sub_1002A587C(v4, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = [objc_opt_self() mainBundle];
  v31._object = 0x800000010057D3F0;
  v9._countAndFlagsBits = 0xD000000000000025;
  v9._object = 0x800000010058C840;
  v10.value._object = 0x800000010057D3D0;
  v31._countAndFlagsBits = 0xD000000000000018;
  v10.value._countAndFlagsBits = 0xD000000000000013;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v31);

  v12 = String._bridgeToObjectiveC()();

  v0[12] = State.rawValue.getter;
  v0[13] = 0;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100017328;
  v0[11] = &unk_100633520;
  v13 = _Block_copy(v0 + 8);

  v14 = [objc_opt_self() actionWithTitle:v12 style:1 handler:v13];
  _Block_release(v13);

  [v3 addAction:v14];
  v0[17] = &type metadata for SolariumFeatureFlag;
  v0[18] = sub_10000BD04();
  LOBYTE(v12) = isFeatureEnabled(_:)();
  sub_100006060(v0 + 14);
  if ((v12 & 1) != 0 && ![v3 preferredStyle])
  {
    v15 = [v3 popoverPresentationController];
    if (v15)
    {
      if (v0[24])
      {
        v16 = v0[24];
      }

      else
      {
        v16 = v0[22];
      }

      v17 = v15;
      [v15 setSourceView:v16];
    }

    v18 = [v3 popoverPresentationController];
    if (v18)
    {
      v19 = v18;
      if (v0[24])
      {
        v20 = v0[24];
      }

      else
      {
        v20 = v0[22];
      }

      [v20 bounds];
      [v19 setSourceRect:?];
    }

    v21 = [v3 popoverPresentationController];
    if (v21)
    {
      v22 = v21;
      [v21 setPermittedArrowDirections:12];
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    [Strong presentViewController:v3 animated:1 completion:0];
  }

  v26 = v0[38];
  v25 = v0[39];
  v27 = v0[37];

  (*(v26 + 8))(v25, v27);

  v28 = v0[1];

  return v28();
}

uint64_t sub_1002A0AEC(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 408) = a1;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);

  return _swift_task_switch(sub_1002A0C14, v4, v3);
}

uint64_t sub_1002A0C14()
{
  v1 = *(v0 + 408);
  if (v1)
  {
    [*(v0 + 384) addAction:*(v0 + 408)];
  }

  v2 = *(*(v0 + 176) + qword_1006B9AC8);
  *(v0 + 416) = v2;

  return _swift_task_switch(sub_1002A0CA4, v2, 0);
}

uint64_t sub_1002A0CD4()
{
  if (*(v0 + 441) == 1)
  {
    v1 = swift_task_alloc();
    v0[53] = v1;
    *v1 = v0;
    v1[1] = sub_1002A1168;
    v2 = v0[23];

    return sub_1002A2D38(v2);
  }

  else
  {
    v4 = v0[49];

    v5 = v0[48];
    v6 = v0[33];
    v7 = v0[34];
    v8 = *(v0[43] + 64);
    sub_1002A587C(v0[29], type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v6, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    v9 = type metadata accessor for UUID();
    (*(*(v9 - 8) + 8))(v7 + v8, v9);
    v10 = [objc_opt_self() mainBundle];
    v32._object = 0x800000010057D3F0;
    v11._countAndFlagsBits = 0xD000000000000025;
    v11._object = 0x800000010058C840;
    v12.value._object = 0x800000010057D3D0;
    v32._countAndFlagsBits = 0xD000000000000018;
    v12.value._countAndFlagsBits = 0xD000000000000013;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v32);

    v14 = String._bridgeToObjectiveC()();

    v0[12] = State.rawValue.getter;
    v0[13] = 0;
    v0[8] = _NSConcreteStackBlock;
    v0[9] = 1107296256;
    v0[10] = sub_100017328;
    v0[11] = &unk_100633520;
    v15 = _Block_copy(v0 + 8);

    v16 = [objc_opt_self() actionWithTitle:v14 style:1 handler:v15];
    _Block_release(v15);

    [v5 addAction:v16];
    v0[17] = &type metadata for SolariumFeatureFlag;
    v0[18] = sub_10000BD04();
    LOBYTE(v14) = isFeatureEnabled(_:)();
    sub_100006060(v0 + 14);
    if ((v14 & 1) != 0 && ![v5 preferredStyle])
    {
      v17 = [v5 popoverPresentationController];
      if (v17)
      {
        if (v0[24])
        {
          v18 = v0[24];
        }

        else
        {
          v18 = v0[22];
        }

        v19 = v17;
        [v17 setSourceView:v18];
      }

      v20 = [v5 popoverPresentationController];
      if (v20)
      {
        v21 = v20;
        if (v0[24])
        {
          v22 = v0[24];
        }

        else
        {
          v22 = v0[22];
        }

        [v22 bounds];
        [v21 setSourceRect:?];
      }

      v23 = [v5 popoverPresentationController];
      if (v23)
      {
        v24 = v23;
        [v23 setPermittedArrowDirections:12];
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      [Strong presentViewController:v5 animated:1 completion:0];
    }

    v28 = v0[38];
    v27 = v0[39];
    v29 = v0[37];

    (*(v28 + 8))(v27, v29);

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_1002A1168(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 432) = a1;

  v3 = *(v2 + 336);
  v4 = *(v2 + 328);

  return _swift_task_switch(sub_1002A1290, v4, v3);
}

uint64_t sub_1002A1290()
{
  v1 = v0[54];

  if (v1)
  {
    v2 = v0[54];
    v3 = v0[49];
    [v0[48] addAction:v2];
  }

  else
  {
    v2 = v0[49];
  }

  v4 = v0[48];
  v5 = v0[33];
  v6 = v0[34];
  v7 = *(v0[43] + 64);
  sub_1002A587C(v0[29], type metadata accessor for FMBeaconSharingModuleShareState);
  sub_1002A587C(v5, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 8))(v6 + v7, v8);
  v9 = [objc_opt_self() mainBundle];
  v32._object = 0x800000010057D3F0;
  v10._countAndFlagsBits = 0xD000000000000025;
  v10._object = 0x800000010058C840;
  v11.value._object = 0x800000010057D3D0;
  v32._countAndFlagsBits = 0xD000000000000018;
  v11.value._countAndFlagsBits = 0xD000000000000013;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v10, v11, v9, v12, v32);

  v13 = String._bridgeToObjectiveC()();

  v0[12] = State.rawValue.getter;
  v0[13] = 0;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_100017328;
  v0[11] = &unk_100633520;
  v14 = _Block_copy(v0 + 8);

  v15 = [objc_opt_self() actionWithTitle:v13 style:1 handler:v14];
  _Block_release(v14);

  [v4 addAction:v15];
  v0[17] = &type metadata for SolariumFeatureFlag;
  v0[18] = sub_10000BD04();
  LOBYTE(v13) = isFeatureEnabled(_:)();
  sub_100006060(v0 + 14);
  if ((v13 & 1) != 0 && ![v4 preferredStyle])
  {
    v16 = [v4 popoverPresentationController];
    if (v16)
    {
      if (v0[24])
      {
        v17 = v0[24];
      }

      else
      {
        v17 = v0[22];
      }

      v18 = v16;
      [v16 setSourceView:v17];
    }

    v19 = [v4 popoverPresentationController];
    if (v19)
    {
      v20 = v19;
      if (v0[24])
      {
        v21 = v0[24];
      }

      else
      {
        v21 = v0[22];
      }

      [v21 bounds];
      [v20 setSourceRect:?];
    }

    v22 = [v4 popoverPresentationController];
    if (v22)
    {
      v23 = v22;
      [v22 setPermittedArrowDirections:12];
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    [Strong presentViewController:v4 animated:1 completion:0];
  }

  v27 = v0[38];
  v26 = v0[39];
  v28 = v0[37];

  (*(v27 + 8))(v26, v28);

  v29 = v0[1];

  return v29();
}

void sub_1002A16C4(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = type metadata accessor for FMFFriend();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = aBlock - v10;
  v12 = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  __chkstk_darwin(v12);
  v14 = (aBlock - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1002A5814(a2, v14, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v14;
    sub_10029F414(*v14);
  }

  else
  {
    v16 = *(v6 + 32);
    v16(v11, v14, v5);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = Strong;
      (*(v6 + 16))(v8, v11, v5);
      v19 = (*(v6 + 80) + 24) & ~*(v6 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = a3;
      v16((v20 + v19), v8, v5);
      v21 = swift_allocObject();
      *(v21 + 16) = sub_1002AB90C;
      *(v21 + 24) = v20;
      aBlock[4] = sub_1000822F4;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100004AE4;
      aBlock[3] = &unk_100633598;
      v22 = _Block_copy(aBlock);
      v23 = a3;

      [v18 dismissViewControllerAnimated:1 completion:v22];
      _Block_release(v22);
    }

    (*(v6 + 8))(v11, v5);
  }
}

uint64_t sub_1002A19C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v4);
  v6 = &v26[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v26[-v8];
  __chkstk_darwin(v10);
  v12 = &v26[-v11];
  v13 = *(a1 + qword_1006B9AC0);
  v14 = *(v13 + 56);
  v15 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_1002A5814(v14 + v15, v12, type metadata accessor for FMSelectedSection);
  LODWORD(v14) = swift_getEnumCaseMultiPayload();
  sub_1002A587C(v12, type metadata accessor for FMSelectedSection);
  if (v14 == 2)
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_100005B14(v16, qword_1006D4630);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "FMURLHandler: ignoring currentSelection", v19, 2u);
    }
  }

  else
  {
    v20 = *(v13 + 56);
    swift_storeEnumTagMultiPayload();
    v21 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    sub_1002A5814(v20 + v21, v6, type metadata accessor for FMSelectedSection);
    swift_beginAccess();

    sub_100058530(v9, v20 + v21);
    swift_endAccess();
    sub_100058594(v6);

    sub_1002A587C(v6, type metadata accessor for FMSelectedSection);
    sub_1002A587C(v9, type metadata accessor for FMSelectedSection);
  }

  v22 = *(v13 + 56);
  v23 = type metadata accessor for FMFFriend();
  (*(*(v23 - 8) + 16))(v9, a2, v23);
  swift_storeEnumTagMultiPayload();
  v24 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_1002A5814(v22 + v24, v6, type metadata accessor for FMSelectedSection);
  swift_beginAccess();

  sub_100058530(v9, v22 + v24);
  swift_endAccess();
  sub_100058594(v6);

  sub_1002A587C(v6, type metadata accessor for FMSelectedSection);
  return sub_1002A587C(v9, type metadata accessor for FMSelectedSection);
}

uint64_t sub_1002A1D80(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  type metadata accessor for FMBeaconSharingModuleEntry(0);
  v2[10] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v2[13] = *(v4 + 64);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[16] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[17] = v6;
  v2[18] = v5;

  return _swift_task_switch(sub_1002A1EB4, v6, v5);
}

uint64_t sub_1002A1EB4()
{
  v1 = *(*(v0 + 72) + qword_1006B9AC8);
  *(v0 + 152) = v1;
  return _swift_task_switch(sub_1002A1EE0, v1, 0);
}

uint64_t sub_1002A1EE0()
{
  v1 = *(v0 + 144);
  *(v0 + 160) = *(*(v0 + 152) + OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_viewModel + 17);
  return _swift_task_switch(sub_1002A1F10, *(v0 + 136), v1);
}

uint64_t sub_1002A1F10()
{
  v1 = *(v0 + 160);

  if (v1 != 1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 80);
  sub_1002A5814(*(v0 + 64), v2, type metadata accessor for FMBeaconSharingModuleEntry);
  v3 = sub_10007EBC0(&qword_1006B9D48, &unk_10055EB50);
  if ((*(*(v3 - 8) + 48))(v2, 2, v3))
  {
    sub_1002A587C(*(v0 + 80), type metadata accessor for FMBeaconSharingModuleEntry);
LABEL_4:
    v4 = 0;
    goto LABEL_5;
  }

  v7 = *(v0 + 112);
  v8 = *(v0 + 120);
  v9 = *(v0 + 96);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);
  v25 = *(v0 + 72);
  v12 = *(v3 + 48);
  v22 = *(v0 + 104);
  v23 = *(v9 + 32);
  v24 = v8;
  v23(v8, v11 + *(v3 + 64), v10);
  sub_1002A587C(v11 + v12, type metadata accessor for FMBeaconSharingModuleShareState);
  sub_1002A587C(v11, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  v13 = [objc_opt_self() mainBundle];
  v27._object = 0x800000010057D3F0;
  v14._countAndFlagsBits = 0xD000000000000025;
  v14._object = 0x800000010058C9F0;
  v15.value._object = 0x800000010057D3D0;
  v27._countAndFlagsBits = 0xD000000000000018;
  v15.value._countAndFlagsBits = 0xD000000000000013;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v27);

  (*(v9 + 16))(v7, v8, v10);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  v23(v18 + v17, v7, v10);
  *(v18 + ((v22 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;
  v19 = v25;
  v20 = String._bridgeToObjectiveC()();

  *(v0 + 48) = sub_1002ABD68;
  *(v0 + 56) = v18;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_100017328;
  *(v0 + 40) = &unk_100633700;
  v21 = _Block_copy((v0 + 16));

  v4 = [objc_opt_self() actionWithTitle:v20 style:0 handler:v21];
  _Block_release(v21);

  (*(v9 + 8))(v24, v10);
LABEL_5:

  v5 = *(v0 + 8);

  return v5(v4);
}

double sub_1002A22B0(uint64_t a1, uint64_t a2, char *a3)
{
  v5 = type metadata accessor for UUID();
  v6 = __chkstk_darwin(v5);
  (*(v8 + 16))(&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  type metadata accessor for FMIPAcceptShareAction();
  swift_allocObject();
  v9 = FMIPAcceptShareAction.init(shareIdentifier:)();
  v10 = swift_allocObject();
  *(v10 + 16) = a3;

  v11 = a3;
  sub_1000D9328(v9, sub_1002ABE48, v10);

  return result;
}

double sub_1002A2408(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for FMIPItemActionStatus();
  v21 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for MainActor();
  swift_errorRetain();
  v14 = a3;
  v15 = static MainActor.shared.getter();
  v16 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = &protocol witness table for MainActor;
  (*(v7 + 32))(v18 + v16, v9, v21);
  *(v18 + v17) = a2;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v14;
  sub_100170C90(0, 0, v12, &unk_10055BD50, v18);

  return result;
}

uint64_t sub_1002A2640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = type metadata accessor for FMIPItemActionStatus();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v6[22] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A2738, v9, v8);
}

uint64_t sub_1002A2738()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[20];

  (*(v3 + 104))(v1, enum case for FMIPItemActionStatus.success(_:), v2);
  sub_1002A5600(&qword_1006C0210, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v1, v2);
  if (v4)
  {
    goto LABEL_15;
  }

  v5 = v0 + 2;
  v6 = v0[17];
  v7 = objc_opt_self();
  v8 = [v7 mainBundle];
  v44._object = 0x800000010058A600;
  v9._object = 0xED0000454C544954;
  v44._countAndFlagsBits = 0xD00000000000001FLL;
  v9._countAndFlagsBits = 0x5F4552554C494146;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v44);

  v11 = [v7 mainBundle];
  v45._object = 0x800000010057D450;
  v12._object = 0xEF4547415353454DLL;
  v45._countAndFlagsBits = 0xD000000000000021;
  v12._countAndFlagsBits = 0x5F4552554C494146;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v45);

  if (v6)
  {
    swift_getErrorValue();
    v14 = v0[9];
    v15 = v0[10];
    swift_errorRetain();
    v16 = sub_100271E80(v14, v15);
    v18 = v17;
    if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
    {
    }

    else
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        v5 = v0 + 2;
LABEL_11:

        goto LABEL_12;
      }
    }

    swift_getErrorValue();
    v21 = sub_100271D20(v0[12], v0[13]);
    v5 = v0 + 2;
    if (v21 <= 0xD && ((1 << v21) & 0x3080) != 0)
    {

      v22 = [v7 mainBundle];
      v46._object = 0x800000010057D3F0;
      v23._countAndFlagsBits = 0xD00000000000002BLL;
      v23._object = 0x8000000100581260;
      v24.value._object = 0x800000010057D3D0;
      v46._countAndFlagsBits = 0xD000000000000018;
      v24.value._countAndFlagsBits = 0xD000000000000013;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v24, v22, v25, v46);

      v26 = [v7 mainBundle];
      v47._object = 0x800000010057D3F0;
      v27._countAndFlagsBits = 0xD00000000000002DLL;
      v27._object = 0x8000000100581290;
      v28.value._object = 0x800000010057D3D0;
      v47._countAndFlagsBits = 0xD000000000000018;
      v28.value._countAndFlagsBits = 0xD000000000000013;
      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v47);
    }

    goto LABEL_11;
  }

LABEL_12:
  v30 = String._bridgeToObjectiveC()();

  v31 = String._bridgeToObjectiveC()();

  v32 = [objc_opt_self() alertControllerWithTitle:v30 message:v31 preferredStyle:1];

  v33 = [v7 mainBundle];
  v48._object = 0x8000000100579B60;
  v34._countAndFlagsBits = 0x4F545455425F4B4FLL;
  v34._object = 0xEF454C5449545F4ELL;
  v48._countAndFlagsBits = 0xD000000000000021;
  v35._countAndFlagsBits = 0;
  v35._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v34, 0, v33, v35, v48);

  v36 = String._bridgeToObjectiveC()();

  v0[6] = State.rawValue.getter;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100017328;
  v0[5] = &unk_100633778;
  v37 = _Block_copy(v5);

  v38 = [objc_opt_self() actionWithTitle:v36 style:0 handler:v37];
  _Block_release(v37);

  [v32 addAction:v38];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = Strong;
    [Strong presentViewController:v32 animated:1 completion:0];
  }

LABEL_15:

  v41 = v0[1];

  return v41();
}

uint64_t sub_1002A2D38(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = type metadata accessor for FMFFriend();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  v2[16] = swift_task_alloc();
  v4 = type metadata accessor for FMIPItem();
  v2[17] = v4;
  v5 = *(v4 - 8);
  v2[18] = v5;
  v2[19] = *(v5 + 64);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  v2[23] = swift_task_alloc();
  v6 = type metadata accessor for FMIPBeaconShareState();
  v2[24] = v6;
  v2[25] = *(v6 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  type metadata accessor for FMBeaconSharingModuleEntry(0);
  v2[28] = swift_task_alloc();
  v2[29] = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  type metadata accessor for FMBeaconSharingModuleShareState(0);
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();
  v7 = type metadata accessor for UUID();
  v2[36] = v7;
  v8 = *(v7 - 8);
  v2[37] = v8;
  v2[38] = *(v8 + 64);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[43] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[44] = v10;
  v2[45] = v9;

  return _swift_task_switch(sub_1002A30C0, v10, v9);
}

uint64_t sub_1002A30C0()
{
  v1 = *(*(v0 + 96) + qword_1006B9AC8);
  *(v0 + 368) = v1;
  return _swift_task_switch(sub_1002A30EC, v1, 0);
}

uint64_t sub_1002A30EC()
{
  v1 = *(v0 + 360);
  *(v0 + 416) = *(*(v0 + 368) + OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_viewModel + 18);
  return _swift_task_switch(sub_1002A311C, *(v0 + 352), v1);
}

uint64_t sub_1002A311C()
{
  if (*(v0 + 416) != 1)
  {

    goto LABEL_5;
  }

  v1 = *(v0 + 224);
  sub_1002A5814(*(v0 + 88), v1, type metadata accessor for FMBeaconSharingModuleEntry);
  v2 = sub_10007EBC0(&qword_1006B9D48, &unk_10055EB50);
  if ((*(*(v2 - 8) + 48))(v1, 2, v2))
  {
    v3 = *(v0 + 224);

    sub_1002A587C(v3, type metadata accessor for FMBeaconSharingModuleEntry);
LABEL_5:

    v4 = *(v0 + 8);

    return v4(0);
  }

  v6 = *(v0 + 328);
  v8 = *(v0 + 288);
  v7 = *(v0 + 296);
  v9 = *(v0 + 272);
  v10 = *(v0 + 280);
  v47 = *(v0 + 264);
  v45 = *(v0 + 336);
  v46 = *(v0 + 256);
  v11 = *(v0 + 248);
  v12 = *(v0 + 224);
  v13 = *(v2 + 48);
  v14 = *(v2 + 64);
  sub_1002A57AC(v12, v11, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  sub_1002A57AC(v12 + v13, v9, type metadata accessor for FMBeaconSharingModuleShareState);
  v15 = *(v7 + 32);
  *(v0 + 376) = v15;
  *(v0 + 384) = (v7 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(v6, v12 + v14, v8);
  sub_1002A5814(v9, v10, type metadata accessor for FMBeaconSharingModuleShareState);
  v16 = *(v7 + 16);
  *(v0 + 392) = v16;
  *(v0 + 400) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v45, v6, v8);
  sub_1002A5814(v11, v46, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  sub_1002A5814(v9, v47, type metadata accessor for FMBeaconSharingModuleShareState);
  v17 = sub_10007EBC0(&qword_1006B9DF8, &unk_10055B9B0);
  if ((*(*(v17 - 8) + 48))(v47, 1, v17) == 1)
  {
    v18 = *(v0 + 272);
    v19 = *(v0 + 248);
    v20 = *(*(v0 + 296) + 8);
    v20(*(v0 + 328), *(v0 + 288));
    sub_1002A587C(v18, type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v19, type metadata accessor for FMBeaconSharingModuleRelationshipType);
LABEL_13:
    v33 = 0;
LABEL_14:
    *(v0 + 417) = v33;
    *(v0 + 408) = v20;
    v34 = *(v0 + 368);

    return _swift_task_switch(sub_1002A3834, v34, 0);
  }

  v21 = *(v0 + 208);
  v22 = *(v0 + 216);
  v23 = *(v0 + 192);
  v24 = *(v0 + 200);
  (*(v24 + 32))(v22, *(v0 + 264), v23);
  (*(v24 + 16))(v21, v22, v23);
  v25 = (*(v24 + 88))(v21, v23);
  if (v25 == enum case for FMIPBeaconShareState.accepting(_:) || v25 == enum case for FMIPBeaconShareState.declining(_:))
  {
    v26 = *(v0 + 328);
    v27 = *(v0 + 288);
    v28 = *(v0 + 296);
    v29 = *(v0 + 272);
    v30 = *(v0 + 248);
    v48 = *(v0 + 208);
    v31 = *(v0 + 192);
    v32 = *(*(v0 + 200) + 8);
    v32(*(v0 + 216), v31);
    v20 = *(v28 + 8);
    v20(v26, v27);
    sub_1002A587C(v29, type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v30, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    v32(v48, v31);
    goto LABEL_13;
  }

  if (v25 == enum case for FMIPBeaconShareState.unknown(_:))
  {
LABEL_18:
    v35 = *(v0 + 328);
    v36 = *(v0 + 288);
    v37 = *(v0 + 296);
    v38 = *(v0 + 272);
    v39 = *(v0 + 248);
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
    v20 = *(v37 + 8);
    v20(v35, v36);
    sub_1002A587C(v38, type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v39, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    goto LABEL_13;
  }

  if (v25 == enum case for FMIPBeaconShareState.invitationSent(_:))
  {
    goto LABEL_20;
  }

  if (v25 == enum case for FMIPBeaconShareState.invitationReceived(_:))
  {
    goto LABEL_18;
  }

  if (v25 == enum case for FMIPBeaconShareState.requestSent(_:))
  {
    goto LABEL_20;
  }

  if (v25 == enum case for FMIPBeaconShareState.requestReceived(_:) || v25 == enum case for FMIPBeaconShareState.accepted(_:) || v25 == enum case for FMIPBeaconShareState.expired(_:) || v25 == enum case for FMIPBeaconShareState.withdrawing(_:))
  {
    goto LABEL_18;
  }

  if (v25 == enum case for FMIPBeaconShareState.failed(_:))
  {
LABEL_20:
    v40 = *(v0 + 328);
    v41 = *(v0 + 288);
    v42 = *(v0 + 296);
    v43 = *(v0 + 272);
    v44 = *(v0 + 248);
    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
    v20 = *(v42 + 8);
    v20(v40, v41);
    sub_1002A587C(v43, type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v44, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    v33 = 1;
    goto LABEL_14;
  }

  return _diagnoseUnexpectedEnumCase<A>(type:)();
}

uint64_t sub_1002A3834()
{
  v1 = v0[46];
  v2 = v0[23];
  v3 = OBJC_IVAR____TtC6FindMy31FMBeaconSharingModuleDataSource_beaconIdentifier;
  swift_beginAccess();
  sub_100007204(v1 + v3, v2, &unk_1006B20C0, &unk_100552E10);
  v4 = v0[44];
  v5 = v0[45];

  return _swift_task_switch(sub_1002A38D8, v4, v5);
}

uint64_t sub_1002A38D8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 296);
  v3 = *(v0 + 184);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 408);
    v5 = *(v0 + 336);
    v6 = *(v0 + 288);
    v7 = *(v0 + 280);
    v8 = *(v0 + 184);
    sub_1002A587C(*(v0 + 256), type metadata accessor for FMBeaconSharingModuleRelationshipType);
    sub_1002A587C(v7, type metadata accessor for FMBeaconSharingModuleShareState);
    v4(v5, v6);
    v9 = &unk_1006B20C0;
    v10 = &unk_100552E10;
    v11 = v8;
LABEL_5:
    sub_100012DF0(v11, v9, v10);
    v88 = 0;
    goto LABEL_16;
  }

  v12 = *(v0 + 136);
  v13 = *(v0 + 144);
  v14 = *(v0 + 128);
  v15 = *(v0 + 96);
  (*(v0 + 376))(*(v0 + 320), *(v0 + 184), *(v0 + 288));
  v16 = *(v15 + qword_1006B9AC0);

  v17 = UUID.uuidString.getter();
  sub_1000E5FF8(v17, v18, v14);

  if ((*(v13 + 48))(v14, 1, v12) == 1)
  {
    v19 = *(v0 + 408);
    v20 = *(v0 + 336);
    v21 = *(v0 + 288);
    v22 = *(v0 + 280);
    v23 = *(v0 + 256);
    v24 = *(v0 + 128);
    v19(*(v0 + 320), v21);
    sub_1002A587C(v23, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    sub_1002A587C(v22, type metadata accessor for FMBeaconSharingModuleShareState);
    v19(v20, v21);
    v9 = &qword_1006B07D0;
    v10 = qword_100552820;
    v11 = v24;
    goto LABEL_5;
  }

  v26 = *(v0 + 168);
  v25 = *(v0 + 176);
  v27 = *(v0 + 136);
  v28 = *(v0 + 144);
  v86 = *(v28 + 32);
  v86(v25, *(v0 + 128), v27);
  v81 = *(v28 + 16);
  v81(v26, v25, v27);

  v29 = sub_100291CB4();
  v82 = v16;
  if (v30)
  {
    v31 = v29;
    v32 = v30;
  }

  else
  {
    sub_1002A5814(*(v0 + 256), *(v0 + 240), type metadata accessor for FMBeaconSharingModuleRelationshipType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v34 = *(v0 + 240);
    if (EnumCaseMultiPayload == 1)
    {
      v35 = *v34;
      if (qword_1006AEA90 != -1)
      {
        swift_once();
      }

      v36 = [qword_1006D3D28 stringFromContact:v35];
      if (v36)
      {
        v37 = v36;
        v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v32 = v38;
      }

      else
      {

        v31 = 0;
        v32 = 0xE000000000000000;
      }
    }

    else
    {
      v40 = *(v0 + 112);
      v39 = *(v0 + 120);
      v41 = *(v0 + 104);
      (*(v40 + 32))(v39, v34, v41);
      v31 = FMFFriend.name.getter();
      v32 = v42;
      (*(v40 + 8))(v39, v41);
    }
  }

  v77 = *(v0 + 417);
  v71 = *(v0 + 392);
  v74 = *(v0 + 376);
  v43 = *(v0 + 336);
  v84 = *(v0 + 320);
  v70 = *(v0 + 312);
  v44 = *(v0 + 296);
  v73 = *(v0 + 304);
  v80 = v44;
  v87 = *(v0 + 288);
  v76 = *(v0 + 280);
  v85 = *(v0 + 256);
  v46 = *(v0 + 168);
  v45 = *(v0 + 176);
  v69 = *(v0 + 160);
  v72 = *(v0 + 152);
  v48 = *(v0 + 136);
  v47 = *(v0 + 144);
  v78 = v47;
  v79 = v45;
  v75 = *(v0 + 96);
  v49 = objc_allocWithZone(type metadata accessor for FMItemSharingLandingViewController(0));
  v83 = sub_1003C494C(v46, v82, v31, v32);
  v50 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71(v70, v43, v87);
  v51 = v45;
  v52 = v48;
  v81(v69, v51, v48);
  v53 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v54 = (v73 + *(v47 + 80) + v53) & ~*(v47 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v50;
  v74(v55 + v53, v70, v87);
  v86(v55 + v54, v69, v52);
  *(v55 + ((v72 + v54 + 7) & 0xFFFFFFFFFFFFFFF8)) = v83;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1002AB970;
  *(v56 + 24) = v55;
  v57 = &v83[qword_1006D48B0];
  v58 = *&v83[qword_1006D48B0];
  v59 = *&v83[qword_1006D48B0 + 8];
  *v57 = sub_100009624;
  v57[1] = v56;
  v60 = v83;

  sub_10001835C(v58, v59);
  sub_100291448();
  v61 = swift_allocObject();
  *(v61 + 16) = v77;
  *(v61 + 24) = sub_1002AB970;
  *(v61 + 32) = v55;
  *(v61 + 40) = v60;
  *(v61 + 48) = v75;
  v62 = v60;

  v63 = v75;
  v64 = String._bridgeToObjectiveC()();

  *(v0 + 48) = sub_1002ABA6C;
  *(v0 + 56) = v61;
  *(v0 + 16) = _NSConcreteStackBlock;
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_100017328;
  *(v0 + 40) = &unk_100633638;
  v65 = _Block_copy((v0 + 16));

  v88 = [objc_opt_self() actionWithTitle:v64 style:2 handler:v65];
  _Block_release(v65);

  (*(v78 + 8))(v79, v52);
  v66 = *(v80 + 8);
  v66(v84, v87);
  sub_1002A587C(v85, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  sub_1002A587C(v76, type metadata accessor for FMBeaconSharingModuleShareState);
  v66(v43, v87);
LABEL_16:

  v67 = *(v0 + 8);

  return v67(v88);
}

double sub_1002A4114(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v20 = a4;
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    (*(v10 + 16))(v12, a2, v9);
    type metadata accessor for FMIPWithdrawShareAction();
    swift_allocObject();
    v16 = FMIPWithdrawShareAction.init(shareIdentifier:)();
    (*(v7 + 16))(&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v18 = swift_allocObject();
    (*(v7 + 32))(v18 + v17, &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    *(v18 + ((v8 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;

    v19 = v15;
    sub_1000D9328(v16, sub_1002ABA7C, v18);

    [v20 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

double sub_1002A43A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v28 = a3;
  v29 = a4;
  v23 = a2;
  v27 = a1;
  v4 = type metadata accessor for FMIPItem();
  v25 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMIPItemActionStatus();
  v24 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v8 + 16))(v10, v27, v7);
  (*(v5 + 16))(&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v28, v4);
  type metadata accessor for MainActor();
  swift_errorRetain();
  v29 = v29;
  v15 = static MainActor.shared.getter();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (*(v5 + 80) + v17 + 8) & ~*(v5 + 80);
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = &protocol witness table for MainActor;
  (*(v8 + 32))(v20 + v16, v10, v24);
  *(v20 + v17) = v23;
  (*(v5 + 32))(v20 + v18, v26, v25);
  *(v20 + v19) = v29;
  sub_100170C90(0, 0, v13, &unk_10055BD40, v20);

  return result;
}

uint64_t sub_1002A46B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = type metadata accessor for FMIPProductType();
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = type metadata accessor for FMIPItemActionStatus();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  type metadata accessor for MainActor();
  v7[26] = static MainActor.shared.getter();
  v11 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A4808, v11, v10);
}

uint64_t sub_1002A4808()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];

  (*(v3 + 104))(v1, enum case for FMIPItemActionStatus.success(_:), v2);
  sub_1002A5600(&qword_1006C0210, &type metadata accessor for FMIPItemActionStatus, &protocol conformance descriptor for FMIPItemActionStatus);
  v4 = dispatch thunk of static Equatable.== infix(_:_:)();
  (*(v3 + 8))(v1, v2);
  if ((v4 & 1) == 0)
  {
    if (!v0[17])
    {
      goto LABEL_17;
    }

    swift_getErrorValue();
    v5 = v0[9];
    v6 = v0[10];
    swift_errorRetain();
    v7 = sub_100271E80(v5, v6);
    v9 = v8;
    if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
    {
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
LABEL_16:

LABEL_17:
        v36 = objc_opt_self();
        v37 = [v36 mainBundle];
        v62._countAndFlagsBits = 0xD00000000000001FLL;
        v62._object = 0x800000010058A600;
        v38._object = 0xED0000454C544954;
        v38._countAndFlagsBits = 0x5F4552554C494146;
        v39._countAndFlagsBits = 0;
        v39._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v38, 0, v37, v39, v62);

        v40 = [v36 mainBundle];
        v63._object = 0x800000010057D450;
        v41._object = 0xEF4547415353454DLL;
        v41._countAndFlagsBits = 0x5F4552554C494146;
        v42._countAndFlagsBits = 0;
        v42._object = 0xE000000000000000;
        v63._countAndFlagsBits = 0xD000000000000021;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v41, 0, v40, v42, v63);

        v43 = String._bridgeToObjectiveC()();

        v44 = String._bridgeToObjectiveC()();

        v45 = [objc_opt_self() alertControllerWithTitle:v43 message:v44 preferredStyle:1];

        v46 = [v36 mainBundle];
        v64._object = 0x8000000100579B60;
        v47._countAndFlagsBits = 0x4F545455425F4B4FLL;
        v47._object = 0xEF454C5449545F4ELL;
        v48._countAndFlagsBits = 0;
        v48._object = 0xE000000000000000;
        v64._countAndFlagsBits = 0xD000000000000021;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v47, 0, v46, v48, v64);

        v49 = String._bridgeToObjectiveC()();

        v0[6] = State.rawValue.getter;
        v0[7] = 0;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_100017328;
        v0[5] = &unk_1006336B0;
        v50 = _Block_copy(v0 + 2);

        v51 = [objc_opt_self() actionWithTitle:v49 style:0 handler:v50];
        _Block_release(v50);

        [v45 addAction:v51];
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v53 = Strong;
          [Strong presentViewController:v45 animated:1 completion:0];
        }

        else
        {
        }

        goto LABEL_21;
      }
    }

    swift_getErrorValue();
    if (sub_100271D20(v0[12], v0[13]) == 15)
    {
      v13 = v0[21];
      v14 = v0[22];
      v57 = v0[20];
      v56 = objc_opt_self();
      v15 = [v56 mainBundle];
      v59._countAndFlagsBits = 0xD000000000000018;
      v16._countAndFlagsBits = 0xD00000000000001CLL;
      v59._object = 0x800000010057D3F0;
      v16._object = 0x800000010057D570;
      v17.value._object = 0x800000010057D3D0;
      v17.value._countAndFlagsBits = 0xD000000000000013;
      v18._countAndFlagsBits = 0;
      v18._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v17, v15, v18, v59);

      FMIPItem.productType.getter();
      v19 = FMIPProductType.isAirTag.getter();
      (*(v13 + 8))(v14, v57);
      v20 = [v56 mainBundle];
      v21 = "VE_FORCED_CANCEL";
      if (v19)
      {
        v21 = "P_SHARE_ERROR_SUBTITLE_SHAREE";
        v22 = 0xD00000000000002CLL;
      }

      else
      {
        v22 = 0xD00000000000002ALL;
      }

      v60._object = 0x800000010057D3F0;
      v23 = v21 | 0x8000000000000000;
      v24.value._object = 0x800000010057D3D0;
      v24.value._countAndFlagsBits = 0xD000000000000013;
      v25._countAndFlagsBits = 0;
      v25._object = 0xE000000000000000;
      v60._countAndFlagsBits = 0xD000000000000018;
      NSLocalizedString(_:tableName:bundle:value:comment:)(*&v22, v24, v20, v25, v60);

      v26 = String._bridgeToObjectiveC()();

      v27 = String._bridgeToObjectiveC()();

      v28 = [objc_opt_self() alertControllerWithTitle:v26 message:v27 preferredStyle:1];

      v29 = [v56 mainBundle];
      v61._object = 0x8000000100579B60;
      v30._countAndFlagsBits = 0x4F545455425F4B4FLL;
      v30._object = 0xEF454C5449545F4ELL;
      v31._countAndFlagsBits = 0;
      v31._object = 0xE000000000000000;
      v61._countAndFlagsBits = 0xD000000000000021;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v61);

      v32 = String._bridgeToObjectiveC()();

      v33 = [objc_opt_self() actionWithTitle:v32 style:0 handler:0];

      [v28 addAction:v33];
      v34 = swift_unknownObjectWeakLoadStrong();
      if (v34)
      {
        v35 = v34;
        [v34 presentViewController:v28 animated:1 completion:0];
      }

      else
      {
      }

      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_21:

  v54 = v0[1];

  return v54();
}

void sub_1002A4FFC(uint64_t a1, char a2, void (*a3)(uint64_t), uint64_t a4, void *a5, uint64_t a6)
{
  if (a2)
  {
    a3(a1);
  }

  else
  {
    objc_allocWithZone(type metadata accessor for FMActivityIndicatingNavigationController());
    v9 = sub_1000CC510(a5, 2);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      [Strong presentViewController:v9 animated:1 completion:0];
    }
  }
}

uint64_t sub_1002A50C0()
{

  return swift_unknownObjectWeakDestroy();
}

id sub_1002A5110()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMBeaconSharingModuleView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1002A5148(uint64_t a1)
{

  return swift_unknownObjectWeakDestroy();
}

void sub_1002A5284(uint64_t a1)
{
  if (!qword_1006B9DD0)
  {
    type metadata accessor for FMBeaconSharingModuleRelationshipType(255);
    type metadata accessor for FMBeaconSharingModuleShareState(255);
    type metadata accessor for UUID();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1006B9DD0);
    }
  }
}

uint64_t sub_1002A5394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  v5 = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v5;
}

void sub_1002A53F4()
{
  if (!qword_1006B9E80)
  {
    v0 = type metadata accessor for FMIPBeaconShareState();
    if (!v1)
    {
      atomic_store(v0, &qword_1006B9E80);
    }
  }
}

uint64_t sub_1002A543C(uint64_t a1)
{
  result = type metadata accessor for FMFFriend();
  if (v2 <= 0x3F)
  {
    result = sub_10000905C(319, &qword_1006BFD00, CNContact_ptr);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_1002A54C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t sub_1002A54D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 19))
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

uint64_t sub_1002A551C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 19) = 1;
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

    *(result + 19) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002A5600(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002A5648(uint64_t a1)
{
  result = sub_1002A5600(&qword_1006B9F90, type metadata accessor for FMBeaconSharingModuleEntry, &unk_10055BB48);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002A56A0(uint64_t a1)
{
  result = sub_1002A5600(&qword_1006B9F98, type metadata accessor for FMBeaconSharingModuleEntry, &unk_10055BBB0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1002A56F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_10029323C(a1, v4, v5, v6);
}

uint64_t sub_1002A57AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A5814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A587C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1002A58DC(void *a1)
{
  v2 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F2C8(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1002A5AA4(v5, type metadata accessor for FMBeaconSharingModuleEntry, sub_1002A696C, sub_1002A5BF4);
  *a1 = v3;
}

void sub_1002A59C0(void *a1)
{
  v2 = *(type metadata accessor for FMIPBeaconShare() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_10025F340(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1002A5AA4(v5, &type metadata accessor for FMIPBeaconShare, sub_1002A8240, sub_1002A65CC);
  *a1 = v3;
}

void sub_1002A5AA4(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, Swift::Int), void (*a4)(void, Swift::Int, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = _minimumMergeRunLength(_:)(v8);
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        a2(0);
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13 = *(a2(0) - 8);
      v14[0] = v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      v12[2] = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_1002A5BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v82 = type metadata accessor for FMFFriend();
  v8 = *(v82 - 8);
  __chkstk_darwin(v82);
  v81 = &v69[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  __chkstk_darwin(v80);
  v79 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v78 = &v69[-v12];
  __chkstk_darwin(v13);
  v97 = &v69[-v14];
  __chkstk_darwin(v15);
  v89 = &v69[-v16];
  v96 = sub_10007EBC0(&qword_1006B9FA0, &qword_10055BC80);
  __chkstk_darwin(v96);
  v84 = &v69[-v17];
  v91 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  __chkstk_darwin(v91);
  v90 = &v69[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v92 = &v69[-v20];
  __chkstk_darwin(v21);
  v23 = &v69[-v22];
  __chkstk_darwin(v24);
  v27 = &v69[-v26];
  v71 = a2;
  if (a3 != a2)
  {
    v28 = *a4;
    v29 = *(v25 + 72);
    v76 = (v8 + 8);
    v77 = (v8 + 32);
    v30 = v28 + v29 * (a3 - 1);
    v87 = -v29;
    v88 = v28;
    v31 = a1 - a3;
    v70 = v29;
    v32 = v28 + v29 * a3;
    v83 = v23;
    v95 = &v69[-v26];
LABEL_7:
    v75 = a3;
    v72 = v32;
    v73 = v31;
    v74 = v30;
    v33 = v84;
    while (1)
    {
      sub_1002A5814(v32, v27, type metadata accessor for FMBeaconSharingModuleEntry);
      sub_1002A5814(v30, v23, type metadata accessor for FMBeaconSharingModuleEntry);
      v34 = &v33[*(v96 + 48)];
      sub_1002A5814(v27, v33, type metadata accessor for FMBeaconSharingModuleEntry);
      sub_1002A5814(v23, v34, type metadata accessor for FMBeaconSharingModuleEntry);
      v35 = sub_10007EBC0(&qword_1006B9D48, &unk_10055EB50);
      v36 = *(*(v35 - 8) + 48);
      v37 = v36(v33, 2, v35);
      if (v37)
      {
        if (v37 != 1)
        {
          sub_1002A587C(v34, type metadata accessor for FMBeaconSharingModuleEntry);
          sub_1002A587C(v33, type metadata accessor for FMBeaconSharingModuleEntry);
LABEL_5:
          v27 = v95;
          sub_1002A587C(v23, type metadata accessor for FMBeaconSharingModuleEntry);
          sub_1002A587C(v27, type metadata accessor for FMBeaconSharingModuleEntry);
LABEL_6:
          a3 = v75 + 1;
          v30 = v74 + v70;
          v31 = v73 - 1;
          v32 = v72 + v70;
          if (v75 + 1 == v71)
          {
            return;
          }

          goto LABEL_7;
        }

        sub_1002A587C(v34, type metadata accessor for FMBeaconSharingModuleEntry);
        sub_1002A587C(v33, type metadata accessor for FMBeaconSharingModuleEntry);
        sub_1002A587C(v23, type metadata accessor for FMBeaconSharingModuleEntry);
        v27 = v95;
        sub_1002A587C(v95, type metadata accessor for FMBeaconSharingModuleEntry);
      }

      else
      {
        v38 = v92;
        sub_1002A5814(v33, v92, type metadata accessor for FMBeaconSharingModuleEntry);
        v39 = *(v35 + 48);
        v93 = *(v35 + 64);
        v94 = v39;
        if (v36(v34, 2, v35))
        {
          v68 = type metadata accessor for UUID();
          (*(*(v68 - 8) + 8))(&v38[v93], v68);
          sub_1002A587C(&v38[v94], type metadata accessor for FMBeaconSharingModuleShareState);
          sub_1002A587C(v38, type metadata accessor for FMBeaconSharingModuleRelationshipType);
          sub_100012DF0(v33, &qword_1006B9FA0, &qword_10055BC80);
          v23 = v83;
          goto LABEL_5;
        }

        v40 = v89;
        sub_1002A57AC(v38, v89, type metadata accessor for FMBeaconSharingModuleRelationshipType);
        sub_1002A57AC(v34, v97, type metadata accessor for FMBeaconSharingModuleRelationshipType);
        v41 = v40;
        v42 = v78;
        sub_1002A5814(v41, v78, type metadata accessor for FMBeaconSharingModuleRelationshipType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v43 = *v42;
          if (qword_1006AEA90 != -1)
          {
            swift_once();
          }

          v44 = [qword_1006D3D28 stringFromContact:v43];
          if (v44)
          {
            v45 = v44;
            v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v86 = v46;
          }

          else
          {

            v85 = 0;
            v86 = 0xE000000000000000;
          }
        }

        else
        {
          v47 = v81;
          v48 = v42;
          v49 = v82;
          (*v77)(v81, v48, v82);
          v85 = FMFFriend.name.getter();
          v86 = v50;
          (*v76)(v47, v49);
        }

        v51 = v79;
        sub_1002A5814(v97, v79, type metadata accessor for FMBeaconSharingModuleRelationshipType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v52 = *v51;
          if (qword_1006AEA90 != -1)
          {
            swift_once();
          }

          v53 = [qword_1006D3D28 stringFromContact:v52];
          if (v53)
          {
            v54 = v53;
            v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v57 = v56;
          }

          else
          {

            v55 = 0;
            v57 = 0xE000000000000000;
          }
        }

        else
        {
          v59 = v81;
          v58 = v82;
          (*v77)(v81, v51, v82);
          v55 = FMFFriend.name.getter();
          v57 = v60;
          (*v76)(v59, v58);
        }

        if (v85 == v55 && v86 == v57)
        {
          LODWORD(v85) = 0;
        }

        else
        {
          LODWORD(v85) = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        v61 = *(v35 + 48);
        v62 = *(v35 + 64);
        sub_1002A587C(v97, type metadata accessor for FMBeaconSharingModuleRelationshipType);
        sub_1002A587C(v89, type metadata accessor for FMBeaconSharingModuleRelationshipType);
        v63 = type metadata accessor for UUID();
        v64 = *(*(v63 - 8) + 8);
        v64(v34 + v62, v63);
        sub_1002A587C(v34 + v61, type metadata accessor for FMBeaconSharingModuleShareState);
        v65 = v92;
        v64(&v92[v93], v63);
        sub_1002A587C(&v65[v94], type metadata accessor for FMBeaconSharingModuleShareState);
        v33 = v84;
        sub_1002A587C(v84, type metadata accessor for FMBeaconSharingModuleEntry);
        v23 = v83;
        sub_1002A587C(v83, type metadata accessor for FMBeaconSharingModuleEntry);
        v27 = v95;
        sub_1002A587C(v95, type metadata accessor for FMBeaconSharingModuleEntry);
        if ((v85 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (!v88)
      {
        __break(1u);
        return;
      }

      v66 = v90;
      sub_1002A57AC(v32, v90, type metadata accessor for FMBeaconSharingModuleEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_1002A57AC(v66, v30, type metadata accessor for FMBeaconSharingModuleEntry);
      v30 += v87;
      v32 += v87;
      if (__CFADD__(v31++, 1))
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_1002A65CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = type metadata accessor for Date();
  v8 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v41 - v11;
  v12 = type metadata accessor for FMIPBeaconShare();
  __chkstk_darwin(v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v57 = &v41 - v15;
  v18 = __chkstk_darwin(v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      FMIPBeaconShare.creationDate.getter();
      v32 = v59;
      FMIPBeaconShare.creationDate.getter();
      v62 = static Date.< infix(_:_:)();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1002A696C(uint64_t (**a1)(uint64_t a1), uint64_t a2, char *a3, unint64_t a4)
{
  v5 = v4;
  v220 = a1;
  v243 = type metadata accessor for FMFFriend();
  v8 = *(v243 - 8);
  __chkstk_darwin(v243);
  v242 = &v213 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v255 = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  __chkstk_darwin(v255);
  v239 = (&v213 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v11);
  v13 = (&v213 - v12);
  __chkstk_darwin(v14);
  v257 = &v213 - v15;
  __chkstk_darwin(v16);
  v249 = &v213 - v17;
  __chkstk_darwin(v18);
  v218 = (&v213 - v19);
  __chkstk_darwin(v20);
  v217 = (&v213 - v21);
  __chkstk_darwin(v22);
  v224 = &v213 - v23;
  __chkstk_darwin(v24);
  v221 = &v213 - v25;
  v26 = sub_10007EBC0(&qword_1006B9FA0, &qword_10055BC80);
  __chkstk_darwin(v26);
  v28 = &v213 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v213 - v30;
  v254 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  v233 = *(v254 - 8);
  __chkstk_darwin(v254);
  v227 = &v213 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v250 = &v213 - v34;
  __chkstk_darwin(v35);
  v251 = &v213 - v36;
  __chkstk_darwin(v37);
  v259 = &v213 - v38;
  __chkstk_darwin(v39);
  v258 = &v213 - v40;
  __chkstk_darwin(v41);
  __chkstk_darwin(v42);
  v235 = &v213 - v43;
  __chkstk_darwin(v44);
  v234 = &v213 - v45;
  __chkstk_darwin(v46);
  v215 = &v213 - v47;
  __chkstk_darwin(v48);
  v214 = &v213 - v50;
  if (*(a3 + 1) < 1)
  {
    v53 = _swiftEmptyArrayStorage;
LABEL_149:
    v8 = *v220;
    if (!*v220)
    {
      goto LABEL_190;
    }

    a4 = v53;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v206 = a4;
LABEL_152:
      v260 = v206;
      a4 = *(v206 + 2);
      if (a4 >= 2)
      {
        do
        {
          v207 = *a3;
          if (!*a3)
          {
            goto LABEL_188;
          }

          v208 = a3;
          v209 = *&v206[16 * a4];
          a3 = v206;
          v210 = *&v206[16 * a4 + 24];
          sub_1002A8E40(v207 + *(v233 + 72) * v209, v207 + *(v233 + 72) * *&v206[16 * a4 + 16], v207 + *(v233 + 72) * v210, v8);
          if (v5)
          {
            break;
          }

          if (v210 < v209)
          {
            goto LABEL_177;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v211 = a3;
          }

          else
          {
            v211 = sub_10025EFD4(a3);
          }

          if (a4 - 2 >= *(v211 + 2))
          {
            goto LABEL_178;
          }

          a3 = v208;
          v212 = &v211[16 * a4];
          *v212 = v209;
          *(v212 + 1) = v210;
          v260 = v211;
          sub_10025EF48(a4 - 1);
          v206 = v260;
          a4 = *(v260 + 2);
        }

        while (a4 > 1);
      }

LABEL_162:

      return;
    }

LABEL_184:
    v206 = sub_10025EFD4(a4);
    goto LABEL_152;
  }

  v51 = *(a3 + 1);
  v225 = v49;
  v52 = 0;
  v241 = (v8 + 32);
  v53 = _swiftEmptyArrayStorage;
  v240 = (v8 + 8);
  v223 = a3;
  v219 = a4;
  v238 = v13;
  v244 = v26;
  v256 = v28;
  v237 = v31;
LABEL_4:
  v228 = v53;
  v222 = v52;
  if (v52 + 1 >= v51)
  {
    v106 = v52 + 1;
    goto LABEL_52;
  }

  v236 = v51;
  v216 = v5;
  v54 = *a3;
  v55 = *(v233 + 72);
  v56 = v52;
  v57 = v54 + v55 * (v52 + 1);
  v58 = v214;
  sub_1002A5814(v57, v214, type metadata accessor for FMBeaconSharingModuleEntry);
  v59 = v215;
  sub_1002A5814(v54 + v55 * v56, v215, type metadata accessor for FMBeaconSharingModuleEntry);
  LODWORD(v252) = sub_1002AA6C4(v58, v59);
  v8 = type metadata accessor for FMBeaconSharingModuleEntry;
  sub_1002A587C(v59, type metadata accessor for FMBeaconSharingModuleEntry);
  sub_1002A587C(v58, type metadata accessor for FMBeaconSharingModuleEntry);
  v60 = v56 + 2;
  v253 = v55;
  v61 = v54 + v55 * (v56 + 2);
  do
  {
    if (v236 == v60)
    {
      v106 = v236;
      goto LABEL_38;
    }

    v63 = v234;
    sub_1002A5814(v61, v234, type metadata accessor for FMBeaconSharingModuleEntry);
    v64 = v235;
    sub_1002A5814(v57, v235, type metadata accessor for FMBeaconSharingModuleEntry);
    v65 = v237;
    v66 = &v237[*(v26 + 48)];
    sub_1002A5814(v63, v237, type metadata accessor for FMBeaconSharingModuleEntry);
    sub_1002A5814(v64, v66, type metadata accessor for FMBeaconSharingModuleEntry);
    v67 = sub_10007EBC0(&qword_1006B9D48, &unk_10055EB50);
    v68 = *(*(v67 - 8) + 48);
    v69 = v68(v65, 2, v67);
    if (v69)
    {
      if (v69 == 1)
      {
        sub_1002A587C(v66, type metadata accessor for FMBeaconSharingModuleEntry);
        sub_1002A587C(v237, type metadata accessor for FMBeaconSharingModuleEntry);
        v62 = 1;
      }

      else
      {
        sub_1002A587C(v66, type metadata accessor for FMBeaconSharingModuleEntry);
        sub_1002A587C(v237, type metadata accessor for FMBeaconSharingModuleEntry);
        v62 = 0;
      }

      goto LABEL_7;
    }

    v70 = v225;
    sub_1002A5814(v237, v225, type metadata accessor for FMBeaconSharingModuleEntry);
    v248 = *(v67 + 48);
    v71 = *(v67 + 64);
    if (!v68(v66, 2, v67))
    {
      v247 = v71;
      v73 = v221;
      sub_1002A57AC(v70, v221, type metadata accessor for FMBeaconSharingModuleRelationshipType);
      sub_1002A57AC(v66, v224, type metadata accessor for FMBeaconSharingModuleRelationshipType);
      v74 = v73;
      v75 = v217;
      sub_1002A5814(v74, v217, type metadata accessor for FMBeaconSharingModuleRelationshipType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v246 = v66;
      if (EnumCaseMultiPayload == 1)
      {
        v77 = *v75;
        if (qword_1006AEA90 != -1)
        {
          swift_once();
        }

        v78 = [qword_1006D3D28 stringFromContact:v77];
        if (v78)
        {
          v79 = v78;
          v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v82 = v81;
        }

        else
        {

          v80 = 0;
          v82 = 0xE000000000000000;
        }
      }

      else
      {
        v83 = v242;
        v84 = v75;
        v85 = v243;
        (*v241)(v242, v84, v243);
        v80 = FMFFriend.name.getter();
        v82 = v86;
        (*v240)(v83, v85);
      }

      v87 = v218;
      sub_1002A5814(v224, v218, type metadata accessor for FMBeaconSharingModuleRelationshipType);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v88 = *v87;
        if (qword_1006AEA90 != -1)
        {
          swift_once();
        }

        v89 = [qword_1006D3D28 stringFromContact:v88];
        if (v89)
        {
          v245 = v80;
          v90 = v89;
          v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = v92;

          if (v245 != v91)
          {
            goto LABEL_33;
          }
        }

        else
        {

          v93 = 0xE000000000000000;
          if (v80)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        v94 = *v241;
        v245 = v82;
        v95 = v242;
        v96 = v80;
        v97 = v243;
        v94(v242, v87, v243);
        v98 = FMFFriend.name.getter();
        v93 = v99;
        v100 = v95;
        v82 = v245;
        (*v240)(v100, v97);
        if (v96 != v98)
        {
          goto LABEL_33;
        }
      }

      if (v82 == v93)
      {
        v62 = 0;
LABEL_34:

        v245 = *(v67 + 48);
        v101 = *(v67 + 64);
        sub_1002A587C(v224, type metadata accessor for FMBeaconSharingModuleRelationshipType);
        sub_1002A587C(v221, type metadata accessor for FMBeaconSharingModuleRelationshipType);
        v102 = type metadata accessor for UUID();
        v103 = *(*(v102 - 8) + 8);
        v104 = v246;
        v103(v246 + v101, v102);
        sub_1002A587C(v104 + v245, type metadata accessor for FMBeaconSharingModuleShareState);
        v105 = v225;
        v103(v225 + v247, v102);
        sub_1002A587C(v105 + v248, type metadata accessor for FMBeaconSharingModuleShareState);
        sub_1002A587C(v237, type metadata accessor for FMBeaconSharingModuleEntry);
        v26 = v244;
LABEL_7:
        v28 = v256;
        goto LABEL_8;
      }

LABEL_33:
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_34;
    }

    v72 = type metadata accessor for UUID();
    (*(*(v72 - 8) + 8))(v70 + v71, v72);
    sub_1002A587C(v70 + v248, type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v70, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    sub_100012DF0(v237, &qword_1006B9FA0, &qword_10055BC80);
    v62 = 0;
    v28 = v256;
    v26 = v244;
LABEL_8:
    v8 = type metadata accessor for FMBeaconSharingModuleEntry;
    sub_1002A587C(v235, type metadata accessor for FMBeaconSharingModuleEntry);
    sub_1002A587C(v234, type metadata accessor for FMBeaconSharingModuleEntry);
    ++v60;
    v61 += v253;
    v57 += v253;
  }

  while (((v252 ^ v62) & 1) == 0);
  v106 = v60 - 1;
LABEL_38:
  v5 = v216;
  a4 = v219;
  v52 = v222;
  a3 = v223;
  if (v252)
  {
    if (v106 < v222)
    {
      goto LABEL_181;
    }

    if (v222 < v106)
    {
      v107 = v253 * (v106 - 1);
      v108 = v106;
      v109 = v106 * v253;
      v236 = v106;
      v110 = v222;
      v111 = v222 * v253;
      do
      {
        if (v110 != --v108)
        {
          v112 = *a3;
          if (!v112)
          {
            goto LABEL_187;
          }

          v8 = (v112 + v111);
          sub_1002A57AC(v112 + v111, v227, type metadata accessor for FMBeaconSharingModuleEntry);
          if (v111 < v107 || v8 >= v112 + v109)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v111 != v107)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1002A57AC(v227, v112 + v107, type metadata accessor for FMBeaconSharingModuleEntry);
          v26 = v244;
          a3 = v223;
        }

        ++v110;
        v107 -= v253;
        v109 -= v253;
        v111 += v253;
      }

      while (v110 < v108);
      a4 = v219;
      v28 = v256;
      v52 = v222;
      v106 = v236;
    }
  }

LABEL_52:
  v113 = *(a3 + 1);
  if (v106 >= v113)
  {
    goto LABEL_61;
  }

  if (__OFSUB__(v106, v52))
  {
    goto LABEL_180;
  }

  if (v106 - v52 >= a4)
  {
LABEL_61:
    v8 = v106;
    if (v106 < v52)
    {
      goto LABEL_179;
    }

    goto LABEL_62;
  }

  if (__OFADD__(v52, a4))
  {
    goto LABEL_182;
  }

  if ((v52 + a4) >= v113)
  {
    v8 = *(a3 + 1);
  }

  else
  {
    v8 = (v52 + a4);
  }

  if (v8 < v52)
  {
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  if (v106 == v8)
  {
    goto LABEL_61;
  }

  v162 = v26;
  v216 = v5;
  v163 = *a3;
  v164 = *(v233 + 72);
  v165 = *a3 + v164 * (v106 - 1);
  v247 = -v164;
  v248 = v163;
  v166 = v52 - v106;
  v226 = v164;
  v167 = v163 + v106 * v164;
  v229 = v8;
  while (2)
  {
    v236 = v106;
    v230 = v167;
    v231 = v166;
    v232 = v165;
LABEL_117:
    v168 = v258;
    sub_1002A5814(v167, v258, type metadata accessor for FMBeaconSharingModuleEntry);
    v169 = v259;
    sub_1002A5814(v165, v259, type metadata accessor for FMBeaconSharingModuleEntry);
    v170 = &v28[*(v162 + 48)];
    sub_1002A5814(v168, v28, type metadata accessor for FMBeaconSharingModuleEntry);
    sub_1002A5814(v169, v170, type metadata accessor for FMBeaconSharingModuleEntry);
    v171 = sub_10007EBC0(&qword_1006B9D48, &unk_10055EB50);
    a4 = *(*(v171 - 8) + 48);
    v172 = (a4)(v28, 2, v171);
    if (v172)
    {
      if (v172 == 1)
      {
        sub_1002A587C(v170, type metadata accessor for FMBeaconSharingModuleEntry);
        v28 = v256;
        sub_1002A587C(v256, type metadata accessor for FMBeaconSharingModuleEntry);
        sub_1002A587C(v259, type metadata accessor for FMBeaconSharingModuleEntry);
        sub_1002A587C(v258, type metadata accessor for FMBeaconSharingModuleEntry);
        goto LABEL_140;
      }

      a4 = type metadata accessor for FMBeaconSharingModuleEntry;
      sub_1002A587C(v170, type metadata accessor for FMBeaconSharingModuleEntry);
      v28 = v256;
      sub_1002A587C(v256, type metadata accessor for FMBeaconSharingModuleEntry);
LABEL_114:
      sub_1002A587C(v259, type metadata accessor for FMBeaconSharingModuleEntry);
      sub_1002A587C(v258, type metadata accessor for FMBeaconSharingModuleEntry);
LABEL_115:
      v106 = v236 + 1;
      v165 = v232 + v226;
      v166 = v231 - 1;
      v167 = v230 + v226;
      v8 = v229;
      if ((v236 + 1) != v229)
      {
        continue;
      }

      v5 = v216;
      a3 = v223;
      v26 = v162;
      if (v229 < v222)
      {
        goto LABEL_179;
      }

LABEL_62:
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v53 = v228;
      }

      else
      {
        v53 = sub_10008B8B8(0, *(v228 + 2) + 1, 1, v228);
      }

      v115 = *(v53 + 2);
      v114 = *(v53 + 3);
      a4 = v115 + 1;
      if (v115 >= v114 >> 1)
      {
        v53 = sub_10008B8B8((v114 > 1), v115 + 1, 1, v53);
      }

      *(v53 + 2) = a4;
      v116 = &v53[16 * v115];
      *(v116 + 4) = v222;
      *(v116 + 5) = v8;
      v229 = v8;
      v8 = *v220;
      if (!*v220)
      {
        goto LABEL_189;
      }

      if (v115)
      {
        while (2)
        {
          v117 = a4 - 1;
          if (a4 >= 4)
          {
            v122 = &v53[16 * a4 + 32];
            v123 = *(v122 - 64);
            v124 = *(v122 - 56);
            v128 = __OFSUB__(v124, v123);
            v125 = v124 - v123;
            if (v128)
            {
              goto LABEL_166;
            }

            v127 = *(v122 - 48);
            v126 = *(v122 - 40);
            v128 = __OFSUB__(v126, v127);
            v120 = v126 - v127;
            v121 = v128;
            if (v128)
            {
              goto LABEL_167;
            }

            v129 = &v53[16 * a4];
            v131 = *v129;
            v130 = *(v129 + 1);
            v128 = __OFSUB__(v130, v131);
            v132 = v130 - v131;
            if (v128)
            {
              goto LABEL_169;
            }

            v128 = __OFADD__(v120, v132);
            v133 = v120 + v132;
            if (v128)
            {
              goto LABEL_172;
            }

            if (v133 >= v125)
            {
              v151 = &v53[16 * v117 + 32];
              v153 = *v151;
              v152 = *(v151 + 1);
              v128 = __OFSUB__(v152, v153);
              v154 = v152 - v153;
              if (v128)
              {
                goto LABEL_176;
              }

              if (v120 < v154)
              {
                v117 = a4 - 2;
              }
            }

            else
            {
LABEL_81:
              if (v121)
              {
                goto LABEL_168;
              }

              v134 = &v53[16 * a4];
              v136 = *v134;
              v135 = *(v134 + 1);
              v137 = __OFSUB__(v135, v136);
              v138 = v135 - v136;
              v139 = v137;
              if (v137)
              {
                goto LABEL_171;
              }

              v140 = &v53[16 * v117 + 32];
              v142 = *v140;
              v141 = *(v140 + 1);
              v128 = __OFSUB__(v141, v142);
              v143 = v141 - v142;
              if (v128)
              {
                goto LABEL_174;
              }

              if (__OFADD__(v138, v143))
              {
                goto LABEL_175;
              }

              if (v138 + v143 < v120)
              {
                goto LABEL_95;
              }

              if (v120 < v143)
              {
                v117 = a4 - 2;
              }
            }
          }

          else
          {
            if (a4 == 3)
            {
              v118 = *(v53 + 4);
              v119 = *(v53 + 5);
              v128 = __OFSUB__(v119, v118);
              v120 = v119 - v118;
              v121 = v128;
              goto LABEL_81;
            }

            v144 = &v53[16 * a4];
            v146 = *v144;
            v145 = *(v144 + 1);
            v128 = __OFSUB__(v145, v146);
            v138 = v145 - v146;
            v139 = v128;
LABEL_95:
            if (v139)
            {
              goto LABEL_170;
            }

            v147 = &v53[16 * v117];
            v149 = *(v147 + 4);
            v148 = *(v147 + 5);
            v128 = __OFSUB__(v148, v149);
            v150 = v148 - v149;
            if (v128)
            {
              goto LABEL_173;
            }

            if (v150 < v138)
            {
              break;
            }
          }

          v155 = v117 - 1;
          if (v117 - 1 >= a4)
          {
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
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
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            __break(1u);
LABEL_181:
            __break(1u);
LABEL_182:
            __break(1u);
            goto LABEL_183;
          }

          v156 = *a3;
          if (!*a3)
          {
            goto LABEL_186;
          }

          v157 = v26;
          v158 = a3;
          a3 = v53;
          a4 = *&v53[16 * v155 + 32];
          v159 = *&v53[16 * v117 + 40];
          sub_1002A8E40(v156 + *(v233 + 72) * a4, v156 + *(v233 + 72) * *&v53[16 * v117 + 32], v156 + *(v233 + 72) * v159, v8);
          if (v5)
          {
            goto LABEL_162;
          }

          if (v159 < a4)
          {
            goto LABEL_164;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v160 = a3;
          }

          else
          {
            v160 = sub_10025EFD4(a3);
          }

          if (v155 >= *(v160 + 2))
          {
            goto LABEL_165;
          }

          a3 = v158;
          v161 = &v160[16 * v155];
          *(v161 + 4) = a4;
          *(v161 + 5) = v159;
          v260 = v160;
          sub_10025EF48(v117);
          v53 = v260;
          a4 = *(v260 + 2);
          v28 = v256;
          v26 = v157;
          if (a4 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v51 = *(a3 + 1);
      v52 = v229;
      a4 = v219;
      if (v229 >= v51)
      {
        goto LABEL_149;
      }

      goto LABEL_4;
    }

    break;
  }

  v173 = v28;
  v174 = v251;
  sub_1002A5814(v173, v251, type metadata accessor for FMBeaconSharingModuleEntry);
  v175 = *(v171 + 48);
  v252 = *(v171 + 64);
  v253 = v175;
  if ((a4)(v170, 2, v171))
  {
    v205 = type metadata accessor for UUID();
    (*(*(v205 - 8) + 8))(v174 + v252, v205);
    sub_1002A587C(v174 + v253, type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v174, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    v28 = v256;
    sub_100012DF0(v256, &qword_1006B9FA0, &qword_10055BC80);
    goto LABEL_114;
  }

  v176 = v174;
  v177 = v249;
  sub_1002A57AC(v176, v249, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  sub_1002A57AC(v170, v257, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  v178 = v177;
  v179 = v238;
  sub_1002A5814(v178, v238, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v180 = *v179;
    if (qword_1006AEA90 != -1)
    {
      swift_once();
    }

    v181 = [qword_1006D3D28 stringFromContact:v180];
    if (v181)
    {
      v182 = v181;
      v245 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v246 = v183;
    }

    else
    {

      v245 = 0;
      v246 = 0xE000000000000000;
    }
  }

  else
  {
    v184 = v242;
    v185 = v179;
    v186 = v243;
    (*v241)(v242, v185, v243);
    v245 = FMFFriend.name.getter();
    v246 = v187;
    (*v240)(v184, v186);
  }

  v188 = v239;
  sub_1002A5814(v257, v239, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v189 = *v188;
    if (qword_1006AEA90 != -1)
    {
      swift_once();
    }

    v190 = [qword_1006D3D28 stringFromContact:v189];
    if (v190)
    {
      v191 = v190;
      v192 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v194 = v193;
    }

    else
    {

      v192 = 0;
      v194 = 0xE000000000000000;
    }
  }

  else
  {
    v195 = v242;
    v196 = v243;
    (*v241)(v242, v188, v243);
    v192 = FMFFriend.name.getter();
    v194 = v197;
    (*v240)(v195, v196);
  }

  if (v245 == v192 && v246 == v194)
  {
    LODWORD(v245) = 0;
  }

  else
  {
    LODWORD(v245) = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v198 = *(v171 + 48);
  v199 = *(v171 + 64);
  sub_1002A587C(v257, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  sub_1002A587C(v249, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  v200 = type metadata accessor for UUID();
  v201 = *(v200 - 8);
  v202 = *(v201 + 8);
  a4 = v201 + 8;
  v202(v170 + v199, v200);
  sub_1002A587C(v170 + v198, type metadata accessor for FMBeaconSharingModuleShareState);
  v203 = v251;
  v202(v251 + v252, v200);
  sub_1002A587C(v203 + v253, type metadata accessor for FMBeaconSharingModuleShareState);
  v28 = v256;
  sub_1002A587C(v256, type metadata accessor for FMBeaconSharingModuleEntry);
  sub_1002A587C(v259, type metadata accessor for FMBeaconSharingModuleEntry);
  sub_1002A587C(v258, type metadata accessor for FMBeaconSharingModuleEntry);
  v162 = v244;
  if ((v245 & 1) == 0)
  {
    goto LABEL_115;
  }

LABEL_140:
  if (v248)
  {
    a4 = v250;
    sub_1002A57AC(v167, v250, type metadata accessor for FMBeaconSharingModuleEntry);
    swift_arrayInitWithTakeFrontToBack();
    sub_1002A57AC(a4, v165, type metadata accessor for FMBeaconSharingModuleEntry);
    v165 += v247;
    v167 += v247;
    if (__CFADD__(v166++, 1))
    {
      goto LABEL_115;
    }

    goto LABEL_117;
  }

  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
}

void sub_1002A8240(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = type metadata accessor for Date();
  v8 = *(v160 - 8);
  __chkstk_darwin(v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v158 = &v134 - v11;
  v12 = type metadata accessor for FMIPBeaconShare();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v150 = &v134 - v16;
  __chkstk_darwin(v17);
  v157 = &v134 - v18;
  v20 = __chkstk_darwin(v19);
  v161 = &v134 - v21;
  v22 = *(a3 + 1);
  v146 = a3;
  if (v22 < 1)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_10025EFD4(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_1002A9354(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_10025EFD4(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_10025EF48(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = _swiftEmptyArrayStorage;
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      FMIPBeaconShare.creationDate.getter();
      v34 = v159;
      FMIPBeaconShare.creationDate.getter();
      LODWORD(v149) = static Date.< infix(_:_:)();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        FMIPBeaconShare.creationDate.getter();
        v46 = v159;
        FMIPBeaconShare.creationDate.getter();
        LOBYTE(v162) = static Date.< infix(_:_:)() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_10008B8B8(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_10008B8B8((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_1002A9354(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_10025EFD4(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_10025EF48(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = *(v146 + 1);
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    FMIPBeaconShare.creationDate.getter();
    v120 = v159;
    FMIPBeaconShare.creationDate.getter();
    LODWORD(v162) = static Date.< infix(_:_:)();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_1002A8E40(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v41 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  __chkstk_darwin(v41);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v35 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v14 = (a2 - a1) / v12;
  v46 = a1;
  v45 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v16 < 1)
    {
      v24 = a4 + v16;
    }

    else
    {
      v21 = -v12;
      v22 = a4 + v16;
      v23 = v41;
      v24 = a4 + v16;
      v38 = a1;
      v39 = a4;
      v37 = v21;
      do
      {
        v35 = v24;
        v25 = a2 + v21;
        v40 = a2;
        v41 = a2 + v21;
        while (1)
        {
          if (a2 <= a1)
          {
            v46 = a2;
            v44 = v35;
            goto LABEL_59;
          }

          v36 = v24;
          v27 = v23;
          v28 = a3 + v21;
          v29 = v22 + v21;
          v30 = v42;
          sub_1002A5814(v29, v42, type metadata accessor for FMBeaconSharingModuleEntry);
          v31 = v25;
          v32 = v43;
          sub_1002A5814(v31, v43, type metadata accessor for FMBeaconSharingModuleEntry);
          v33 = sub_1002AA6C4(v30, v32);
          sub_1002A587C(v32, type metadata accessor for FMBeaconSharingModuleEntry);
          sub_1002A587C(v30, type metadata accessor for FMBeaconSharingModuleEntry);
          if (v33)
          {
            break;
          }

          v24 = v29;
          if (a3 < v22 || v28 >= v22)
          {
            a3 = v28;
            v23 = v27;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v38;
          }

          else
          {
            v34 = a3 == v22;
            a3 = v28;
            v23 = v27;
            a1 = v38;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v22 = v29;
          a2 = v40;
          v26 = v29 > v39;
          v25 = v41;
          v21 = v37;
          if (!v26)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v40 || v28 >= v40)
        {
          a3 = v28;
          v23 = v27;
          a2 = v41;
          swift_arrayInitWithTakeFrontToBack();
          v21 = v37;
          a1 = v38;
          v24 = v36;
        }

        else
        {
          v34 = a3 == v40;
          a3 = v28;
          v23 = v27;
          a2 = v41;
          v21 = v37;
          a1 = v38;
          v24 = v36;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v22 > v39);
    }

LABEL_57:
    v46 = a2;
    v44 = v24;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v40 = a4 + v15;
    v44 = a4 + v15;
    if (v15 >= 1 && a2 < a3)
    {
      do
      {
        v18 = v42;
        sub_1002A5814(a2, v42, type metadata accessor for FMBeaconSharingModuleEntry);
        v19 = v43;
        sub_1002A5814(a4, v43, type metadata accessor for FMBeaconSharingModuleEntry);
        v20 = sub_1002AA6C4(v18, v19);
        sub_1002A587C(v19, type metadata accessor for FMBeaconSharingModuleEntry);
        sub_1002A587C(v18, type metadata accessor for FMBeaconSharingModuleEntry);
        if (v20)
        {
          if (a1 < a2 || a1 >= a2 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v12;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v12)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v12;
          a4 += v12;
        }

        a1 += v12;
        v46 = a1;
      }

      while (a4 < v40 && a2 < a3);
    }
  }

LABEL_59:
  sub_10025EFE8(&v46, &v45, &v44);
}

void sub_1002A9354(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = type metadata accessor for Date();
  v7 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v65 = &v55 - v10;
  v71 = type metadata accessor for FMIPBeaconShare();
  v11 = *(v71 - 8);
  __chkstk_darwin(v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            FMIPBeaconShare.creationDate.getter();
            v48 = v66;
            FMIPBeaconShare.creationDate.getter();
            v68 = static Date.< infix(_:_:)();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        FMIPBeaconShare.creationDate.getter();
        v28 = v66;
        FMIPBeaconShare.creationDate.getter();
        v68 = static Date.< infix(_:_:)();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_10025F120(&v75, &v74, &v73);
}

uint64_t sub_1002A9A30(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for FMFFriend();
  v4 = *(v25 - 8);
  __chkstk_darwin(v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  __chkstk_darwin(v7);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v10);
  v12 = &v24 - v11;
  v13 = sub_10007EBC0(&qword_1006B9FB0, &qword_10055BC90);
  __chkstk_darwin(v13 - 8);
  v15 = &v24 - v14;
  v17 = *(v16 + 56);
  sub_1002A5814(a1, &v24 - v14, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  sub_1002A5814(a2, &v15[v17], type metadata accessor for FMBeaconSharingModuleRelationshipType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1002A5814(v15, v9, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    v18 = *v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = *&v15[v17];
      sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
      v20 = static NSObject.== infix(_:_:)();

LABEL_9:
      sub_1002A587C(v15, type metadata accessor for FMBeaconSharingModuleRelationshipType);
      return v20 & 1;
    }
  }

  else
  {
    sub_1002A5814(v15, v12, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v21 = v25;
      (*(v4 + 32))(v6, &v15[v17], v25);
      v20 = static FMFFriend.== infix(_:_:)();
      v22 = *(v4 + 8);
      v22(v6, v21);
      v22(v12, v21);
      goto LABEL_9;
    }

    (*(v4 + 8))(v12, v25);
  }

  sub_100012DF0(v15, &qword_1006B9FB0, &qword_10055BC90);
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1002A9D60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMIPBeaconShareState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FMBeaconSharingModuleShareState(0);
  __chkstk_darwin(v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10007EBC0(&qword_1006B9FA8, &qword_10055BC88);
  __chkstk_darwin(v11 - 8);
  v13 = &v21 - v12;
  v15 = *(v14 + 56);
  sub_1002A5814(a1, &v21 - v12, type metadata accessor for FMBeaconSharingModuleShareState);
  sub_1002A5814(a2, &v13[v15], type metadata accessor for FMBeaconSharingModuleShareState);
  v16 = sub_10007EBC0(&qword_1006B9DF8, &unk_10055B9B0);
  v17 = *(*(v16 - 8) + 48);
  if (v17(v13, 1, v16) != 1)
  {
    sub_1002A5814(v13, v10, type metadata accessor for FMBeaconSharingModuleShareState);
    if (v17(&v13[v15], 1, v16) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      v18 = static FMIPBeaconShareState.== infix(_:_:)();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1002A587C(v13, type metadata accessor for FMBeaconSharingModuleShareState);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v17(&v13[v15], 1, v16) != 1)
  {
LABEL_6:
    sub_100012DF0(v13, &qword_1006B9FA8, &qword_10055BC88);
    v18 = 0;
    return v18 & 1;
  }

  sub_1002A587C(v13, type metadata accessor for FMBeaconSharingModuleShareState);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1002AA074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v52 = v4;
  v53 = v5;
  __chkstk_darwin(v4);
  v51 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v48 - v8;
  v10 = type metadata accessor for FMBeaconSharingModuleShareState(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  __chkstk_darwin(v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  __chkstk_darwin(v19 - 8);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10007EBC0(&qword_1006B9FA0, &qword_10055BC80);
  __chkstk_darwin(v22 - 8);
  v24 = &v48 - v23;
  v26 = &v48 + *(v25 + 56) - v23;
  sub_1002A5814(a1, &v48 - v23, type metadata accessor for FMBeaconSharingModuleEntry);
  sub_1002A5814(a2, v26, type metadata accessor for FMBeaconSharingModuleEntry);
  v27 = sub_10007EBC0(&qword_1006B9D48, &unk_10055EB50);
  v28 = *(*(v27 - 8) + 48);
  v29 = v28(v24, 2, v27);
  if (!v29)
  {
    v49 = v12;
    v50 = v9;
    sub_1002A5814(v24, v21, type metadata accessor for FMBeaconSharingModuleEntry);
    v30 = *(v27 + 48);
    v31 = *(v27 + 64);
    if (!v28(v26, 2, v27))
    {
      sub_1002A57AC(v26, v18, type metadata accessor for FMBeaconSharingModuleRelationshipType);
      v48 = v15;
      sub_1002A57AC(&v21[v30], v15, type metadata accessor for FMBeaconSharingModuleShareState);
      v34 = v52;
      v35 = *(v53 + 32);
      v35(v50, &v21[v31], v52);
      v36 = &v26[v30];
      v37 = v49;
      sub_1002A57AC(v36, v49, type metadata accessor for FMBeaconSharingModuleShareState);
      v38 = &v26[v31];
      v39 = v51;
      v35(v51, v38, v34);
      v40 = v18;
      v41 = sub_1002A9A30(v21, v18);
      sub_1002A587C(v21, type metadata accessor for FMBeaconSharingModuleRelationshipType);
      if (v41)
      {
        v42 = v48;
        if (sub_1002A9D60(v48, v37))
        {
          v43 = v50;
          v32 = static UUID.== infix(_:_:)();
          v44 = *(v53 + 8);
          v44(v39, v34);
          sub_1002A587C(v37, type metadata accessor for FMBeaconSharingModuleShareState);
          v44(v43, v34);
          sub_1002A587C(v42, type metadata accessor for FMBeaconSharingModuleShareState);
          sub_1002A587C(v40, type metadata accessor for FMBeaconSharingModuleRelationshipType);
          sub_1002A587C(v24, type metadata accessor for FMBeaconSharingModuleEntry);
          return v32 & 1;
        }

        v47 = *(v53 + 8);
        v47(v39, v34);
        sub_1002A587C(v37, type metadata accessor for FMBeaconSharingModuleShareState);
        v47(v50, v34);
        v46 = v42;
      }

      else
      {
        v45 = *(v53 + 8);
        v45(v39, v34);
        sub_1002A587C(v37, type metadata accessor for FMBeaconSharingModuleShareState);
        v45(v50, v34);
        v46 = v48;
      }

      sub_1002A587C(v46, type metadata accessor for FMBeaconSharingModuleShareState);
      sub_1002A587C(v40, type metadata accessor for FMBeaconSharingModuleRelationshipType);
      sub_1002A587C(v24, type metadata accessor for FMBeaconSharingModuleEntry);
      goto LABEL_10;
    }

    (*(v53 + 8))(&v21[v31], v52);
    sub_1002A587C(&v21[v30], type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v21, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    goto LABEL_9;
  }

  if (v29 != 1)
  {
    if (v28(v26, 2, v27) == 2)
    {
      goto LABEL_8;
    }

LABEL_9:
    sub_100012DF0(v24, &qword_1006B9FA0, &qword_10055BC80);
LABEL_10:
    v32 = 0;
    return v32 & 1;
  }

  if (v28(v26, 2, v27) != 1)
  {
    goto LABEL_9;
  }

LABEL_8:
  sub_1002A587C(v24, type metadata accessor for FMBeaconSharingModuleEntry);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_1002AA6C4(uint64_t a1, uint64_t a2)
{
  v69 = type metadata accessor for FMFFriend();
  v71 = *(v69 - 8);
  __chkstk_darwin(v69);
  v68 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for FMBeaconSharingModuleRelationshipType(0);
  __chkstk_darwin(v72);
  v70 = (&v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = (&v61 - v7);
  __chkstk_darwin(v9);
  v11 = &v61 - v10;
  __chkstk_darwin(v12);
  v14 = &v61 - v13;
  v15 = type metadata accessor for FMBeaconSharingModuleEntry(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10007EBC0(&qword_1006B9FA0, &qword_10055BC80);
  __chkstk_darwin(v18 - 8);
  v20 = &v61 - v19;
  v22 = &v61 + *(v21 + 56) - v19;
  sub_1002A5814(a1, &v61 - v19, type metadata accessor for FMBeaconSharingModuleEntry);
  v23 = a2;
  v24 = v22;
  sub_1002A5814(v23, v22, type metadata accessor for FMBeaconSharingModuleEntry);
  v25 = sub_10007EBC0(&qword_1006B9D48, &unk_10055EB50);
  v26 = *(*(v25 - 8) + 48);
  v27 = v20;
  v28 = v26(v20, 2, v25);
  if (v28)
  {
    if (v28 == 1)
    {
      sub_1002A587C(v24, type metadata accessor for FMBeaconSharingModuleEntry);
      sub_1002A587C(v20, type metadata accessor for FMBeaconSharingModuleEntry);
      v29 = 1;
      return v29 & 1;
    }

    sub_1002A587C(v24, type metadata accessor for FMBeaconSharingModuleEntry);
    sub_1002A587C(v20, type metadata accessor for FMBeaconSharingModuleEntry);
LABEL_7:
    v29 = 0;
    return v29 & 1;
  }

  v66 = v14;
  v67 = v11;
  sub_1002A5814(v20, v17, type metadata accessor for FMBeaconSharingModuleEntry);
  v30 = *(v25 + 48);
  v31 = *(v25 + 64);
  if (v26(v24, 2, v25))
  {
    v32 = type metadata accessor for UUID();
    (*(*(v32 - 8) + 8))(&v17[v31], v32);
    sub_1002A587C(&v17[v30], type metadata accessor for FMBeaconSharingModuleShareState);
    sub_1002A587C(v17, type metadata accessor for FMBeaconSharingModuleRelationshipType);
    sub_100012DF0(v20, &qword_1006B9FA0, &qword_10055BC80);
    goto LABEL_7;
  }

  v64 = v30;
  v65 = v31;
  v34 = v66;
  sub_1002A57AC(v17, v66, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  v35 = v67;
  sub_1002A57AC(v24, v67, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  sub_1002A5814(v34, v8, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v8;
    v37 = v68;
    if (qword_1006AEA90 != -1)
    {
      swift_once();
    }

    v38 = [qword_1006D3D28 stringFromContact:v36];
    if (v38)
    {
      v39 = v38;
      v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v63 = v40;
    }

    else
    {

      v62 = 0;
      v63 = 0xE000000000000000;
    }

    v43 = v69;
    v41 = v71;
  }

  else
  {
    v41 = v71;
    v42 = v8;
    v37 = v68;
    v43 = v69;
    (*(v71 + 32))(v68, v42, v69);
    v62 = FMFFriend.name.getter();
    v63 = v44;
    (*(v41 + 8))(v37, v43);
  }

  v45 = v35;
  v46 = v70;
  sub_1002A5814(v45, v70, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v47 = *v46;
    if (qword_1006AEA90 != -1)
    {
      swift_once();
    }

    v48 = v25;
    v49 = [qword_1006D3D28 stringFromContact:v47];
    if (v49)
    {
      v50 = v49;
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;
    }

    else
    {

      v51 = 0;
      v53 = 0xE000000000000000;
    }
  }

  else
  {
    v48 = v25;
    (*(v41 + 32))(v37, v46, v43);
    v51 = FMFFriend.name.getter();
    v54 = v41;
    v53 = v55;
    (*(v54 + 8))(v37, v43);
  }

  if (v62 == v51 && v63 == v53)
  {
    v56 = v24;
    v29 = 0;
  }

  else
  {
    v56 = v24;
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v57 = *(v48 + 48);
  v58 = *(v48 + 64);
  sub_1002A587C(v67, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  sub_1002A587C(v66, type metadata accessor for FMBeaconSharingModuleRelationshipType);
  v59 = type metadata accessor for UUID();
  v60 = *(*(v59 - 8) + 8);
  v60(v56 + v58, v59);
  sub_1002A587C(v56 + v57, type metadata accessor for FMBeaconSharingModuleShareState);
  v60(&v17[v65], v59);
  sub_1002A587C(&v17[v64], type metadata accessor for FMBeaconSharingModuleShareState);
  sub_1002A587C(v27, type metadata accessor for FMBeaconSharingModuleEntry);
  return v29 & 1;
}

double sub_1002AAE3C()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BEF30, &qword_100554550);
  __chkstk_darwin(v2 - 8);
  v4 = &v13 - v3;
  if (qword_1006AED68 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4CD8);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100005B4C(0xD000000000000024, 0x800000010058C790, &v14);
    _os_log_impl(&_mh_execute_header, v6, v7, "FMBeaconSharingModuleDataSource: %s", v8, 0xCu);
    sub_100006060(v9);
  }

  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;

  sub_100170C90(0, 0, v4, &unk_10055BCA0, v11);

  return result;
}

uint64_t sub_1002AB060()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE760;

  return sub_1002943DC();
}

uint64_t sub_1002AB114(uint64_t a1)
{
  v4 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000EE760;

  return sub_10029B99C(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1002AB24C(uint64_t a1)
{
  v4 = *(type metadata accessor for FMBeaconSharingModuleEntry(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000E3478;

  return sub_10029F67C(a1, v6, v7, v8, v1 + v5, v9);
}

void sub_1002AB37C()
{
  v1 = *(type metadata accessor for FMIPItem() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_10029C6D8(v4, v0 + v2, v5, v6);
}

uint64_t sub_1002AB418(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1000EE760;

  return sub_10029E384(a1, a2, v2);
}

uint64_t sub_1002AB4C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1002AB55C;

  return sub_10029E940(a1, v1);
}

uint64_t sub_1002AB55C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1002AB658(uint64_t a1)
{
  v4 = *(type metadata accessor for FMIPItem() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000E3478;

  return sub_10029D0A4(a1, v1 + v5, v7, v8);
}

uint64_t sub_1002AB788(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_10029D5B4(a1, v4, v5, v6);
}

void sub_1002AB848(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_10007EBC0(&qword_1006B9FD0, &qword_10055BD30) - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  sub_10029DA50(a1, a2, a3, v8, v9);
}

uint64_t sub_1002AB90C()
{
  v1 = *(type metadata accessor for FMFFriend() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1002A19C0(v2, v3);
}

double sub_1002AB970()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for FMIPItem() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002A4114(v6, v0 + v2, v0 + v5, v7);
}

double sub_1002ABA7C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMIPItem() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1002A43A4(a1, a2, v2 + v6, v7);
}

uint64_t sub_1002ABB28(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FMIPItemActionStatus() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for FMIPItem() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1000EE760;

  return sub_1002A46B4(a1, v10, v11, v1 + v6, v12, v1 + v9, v13);
}

uint64_t sub_1002ABCC4(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_1002ABD94(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v3 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(a1, v3 + v6, v7);
}

uint64_t sub_1002ABE50(uint64_t a1)
{
  v4 = *(type metadata accessor for FMIPItemActionStatus() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1000EE760;

  return sub_1002A2640(a1, v7, v8, v1 + v5, v9, v10);
}

uint64_t sub_1002ABF88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1000EE760;

  return sub_10029A990(a1, v4, v5, v6);
}

uint64_t sub_1002AC03C(uint64_t a1, uint64_t a2, int a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1000EE760;

  return sub_10029ACC0(a1, a2, a3 & 0x10101, v3);
}

uint64_t sub_1002AC0FC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000EE760;

  return sub_1002946A4();
}

uint64_t sub_1002AC1B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&unk_1006B20C0, &unk_100552E10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Int sub_1002AC268()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  sub_100016980(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType, &protocol conformance descriptor for FMIPHawkeyeProductInformation.AssetType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002AC310(uint64_t a1)
{
  String.hash(into:)();
  type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  sub_100016980(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType, &protocol conformance descriptor for FMIPHawkeyeProductInformation.AssetType);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1002AC39C(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  sub_100016980(&qword_1006B5C70, &type metadata accessor for FMIPHawkeyeProductInformation.AssetType, &protocol conformance descriptor for FMIPHawkeyeProductInformation.AssetType);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002AC440(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static FMIPHawkeyeProductInformation.AssetType.== infix(_:_:)();
}

uint64_t sub_1002AC4C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = type metadata accessor for DispatchWorkItemFlags();
  v95 = *(v96 - 8);
  __chkstk_darwin(v96);
  v93 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for DispatchQoS();
  v92 = *(v94 - 8);
  __chkstk_darwin(v94);
  v91 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  v88 = *(v106 - 8);
  __chkstk_darwin(v106);
  v90 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v7;
  __chkstk_darwin(v8);
  v111 = (&v85 - v9);
  v10 = type metadata accessor for FMIPHawkeyeProductInformation();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v85 - v15;
  v17 = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v103 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v20);
  v23 = &v85 - v22;
  v107 = a2;
  v108 = v18;
  v24 = a2;
  v25 = *(v18 + 16);
  v25(&v85 - v22, v24, v17, v21);
  v109 = v11;
  v101 = *(v11 + 16);
  v102 = v11 + 16;
  v101(v16, a1, v10);
  v26 = static os_log_type_t.default.getter();
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v104 = v13;
  v105 = v25;
  v27 = type metadata accessor for Logger();
  v99 = sub_100005B14(v27, qword_1006D4630);
  v28 = Logger.logObject.getter();
  if (os_log_type_enabled(v28, v26))
  {
    v29 = v10;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v97 = v17;
    v87 = a1;
    v32 = v31;
    v112 = v31;
    aBlock = 0;
    *v30 = 136315138;
    v114 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);
    v33._countAndFlagsBits = 0xD00000000000001CLL;
    v33._object = 0x800000010058CC40;
    String.append(_:)(v33);
    LODWORD(v100) = v26;
    _print_unlocked<A, B>(_:_:)();
    v34._countAndFlagsBits = 0x6F727020726F6620;
    v34._object = 0xEE00203A74637564;
    String.append(_:)(v34);
    _print_unlocked<A, B>(_:_:)();
    v35 = sub_100005B4C(aBlock, v114, &v112);

    *(v30 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v28, v100, "FMDiscoveredAccessoryImageFetchingCoordinator: %s", v30, 0xCu);
    sub_100006060(v32);
    a1 = v87;
    v17 = v97;

    v36 = *(v109 + 8);
    v37 = v16;
    v38 = v29;
    v39 = v29;
  }

  else
  {

    v36 = *(v109 + 8);
    v37 = v16;
    v38 = v10;
    v39 = v10;
  }

  v100 = v36;
  v36(v37, v39);
  v98 = *(v108 + 8);
  v98(v23, v17);
  v40 = FMIPHawkeyeProductInformation.identifier.getter();
  v42 = v41;
  v43 = v107;
  v44 = v111;
  v45 = v105;
  v46 = (v105)(v111 + *(v106 + 20), v107, v17);
  v47 = v17;
  v48 = a1;
  *v44 = v40;
  v44[1] = v42;
  v49 = *(v110 + 24);
  __chkstk_darwin(v46);
  *(&v85 - 2) = v50;
  *(&v85 - 1) = v44;
  sub_10007EBC0(&qword_1006BA198, &unk_10055BEC8);
  v106 = v49;
  OS_dispatch_queue.sync<A>(execute:)();
  v51 = aBlock;
  if (aBlock)
  {
    v110 = v114;
    v52 = v104;
    v53 = v38;
    v101(v104, v48, v38);
    v54 = v103;
    v55 = v47;
    v45(v103, v43, v47);
    v56 = static os_log_type_t.default.getter();
    v57 = Logger.logObject.getter();
    if (os_log_type_enabled(v57, v56))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v86 = v53;
      v60 = v59;
      v112 = v59;
      aBlock = 0;
      *v58 = 136315138;
      v114 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v61._object = 0x800000010058CC00;
      v61._countAndFlagsBits = 0xD000000000000015;
      String.append(_:)(v61);
      _print_unlocked<A, B>(_:_:)();
      v62._countAndFlagsBits = 0x7974206874697720;
      v62._object = 0xEC000000203A6570;
      String.append(_:)(v62);
      v63 = v103;
      _print_unlocked<A, B>(_:_:)();
      v64._countAndFlagsBits = 0xD000000000000019;
      v64._object = 0x800000010058CC20;
      String.append(_:)(v64);
      v65 = sub_100005B4C(aBlock, v114, &v112);

      *(v58 + 4) = v65;
      _os_log_impl(&_mh_execute_header, v57, v56, "FMDiscoveredAccessoryImageFetchingCoordinator: %s", v58, 0xCu);
      sub_100006060(v60);

      v98(v63, v55);
      v66 = v104;
      v67 = v86;
    }

    else
    {

      v98(v54, v47);
      v66 = v52;
      v67 = v53;
    }

    v100(v66, v67);
    aBlock = v110;
    sub_10007EBC0(&qword_1006B5D10, &unk_100557EE0);
    sub_100004098(&qword_1006B5D18, &qword_1006B5D10, &unk_100557EE0, &protocol conformance descriptor for AnyPublisher<A, B>);
    aBlock = Publisher.share()();
    sub_10007EBC0(&qword_1006BA1A0, qword_10055BED8);
    sub_100004098(&qword_1006BA1A8, &qword_1006BA1A0, qword_10055BED8, &protocol conformance descriptor for Publishers.Share<A>);
    v71 = Publisher.eraseToAnyPublisher()();
  }

  else
  {
    v68 = v111;
    v69 = sub_1002AD4BC(a1, v111);
    v71 = v70;
    v72 = swift_allocObject();
    swift_weakInit();
    v73 = v68;
    v74 = v90;
    sub_1002AE77C(v73, v90);
    v75 = (*(v88 + 80) + 24) & ~*(v88 + 80);
    v76 = (v89 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
    v77 = swift_allocObject();
    *(v77 + 16) = v72;
    sub_1002AE7E0(v74, v77 + v75);
    v78 = (v77 + v76);
    *v78 = v69;
    v78[1] = v71;
    v117 = sub_1002AEA20;
    v118 = v77;
    aBlock = _NSConcreteStackBlock;
    v114 = 1107296256;
    v115 = sub_100004AE4;
    v116 = &unk_100633A28;
    v79 = _Block_copy(&aBlock);

    v80 = v69;

    v81 = v91;
    static DispatchQoS.unspecified.getter();
    v112 = _swiftEmptyArrayStorage;
    sub_100016980(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
    v82 = v93;
    v83 = v96;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v79);
    (*(v95 + 8))(v82, v83);
    (*(v92 + 8))(v81, v94);

    [*(v110 + 16) addOperation:v80];
  }

  sub_1002AE9A4(v111, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
  return v71;
}

void sub_1002AD124(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  if (*(v6 + 16))
  {

    v7 = sub_1001B3D38(a2);
    if (v8)
    {
      v9 = *(v6 + 56) + 16 * v7;
      v11 = *v9;
      v10 = *(v9 + 8);
      v12 = *v9;
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  *a3 = v11;
  a3[1] = v10;
}

double sub_1002AD1DC(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1002AE77C(a2, v9);
    v10 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100005B14(v11, qword_1006D4630);
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v10))
    {
      v13 = swift_slowAlloc();
      v24 = a3;
      v14 = v13;
      v15 = swift_slowAlloc();
      v26[0] = v15;
      *v14 = 136315138;
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(49);
      v16._object = 0x800000010058CC60;
      v16._countAndFlagsBits = 0xD00000000000002FLL;
      String.append(_:)(v16);
      _print_unlocked<A, B>(_:_:)();
      v17 = sub_100005B4C(v27, v28, v26);

      *(v14 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v12, v10, "FMDiscoveredAccessoryImageFetchingCoordinator: %s", v14, 0xCu);
      sub_100006060(v15);

      a3 = v24;
    }

    sub_1002AE9A4(v9, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    swift_beginAccess();
    v21 = a3;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *(v20 + 40);
    *(v20 + 40) = 0x8000000000000000;
    sub_1001BC930(v21, a4, a2, isUniquelyReferenced_nonNull_native);
    *(v20 + 40) = v25;
    swift_endAccess();
  }

  return result;
}

id sub_1002AD4BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v72 = a2;
  v65 = a1;
  v4 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  v5 = v4 - 8;
  v68 = *(v4 - 8);
  __chkstk_darwin(v4);
  v69 = v6;
  v70 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v54 = *(v7 - 8);
  v55 = v7;
  __chkstk_darwin(v7);
  v53 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FMIPHawkeyeProductInformation.AssetScale();
  v57 = *(v9 - 8);
  v58 = v9;
  __chkstk_darwin(v9);
  v56 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v66 = *(v11 - 8);
  v67 = v11;
  __chkstk_darwin(v11);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FMIPHawkeyeProductInformation.AssetType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for FMIPHawkeyeProductInformation();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for FMAccessoryProductImageRequest(0);
  v22 = __chkstk_darwin(v61);
  v24 = (&v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v71 = v3;
  v60 = *(v3 + 32);
  v25 = *(v5 + 28);
  v62 = v19;
  v63 = v18;
  v26 = v18;
  v27 = v17;
  v28 = v21;
  (*(v19 + 16))(v21, v65, v26, v22);
  v64 = v15;
  v65 = v14;
  v29 = *(v15 + 16);
  v29(v17, v72 + v25, v14);
  v30 = v56;
  sub_1004F180C(v56);
  v59 = v28;
  FMIPHawkeyeProductInformation.assetURL(for:scale:)();
  (*(v57 + 8))(v30, v58);
  v31 = v13;
  v32 = sub_1004F22D8();
  if (v33)
  {
    v34 = v32;
    v35 = v33;
    v37 = v66;
    v36 = v67;
    (*(v66 + 16))(v24, v31, v67);
    v38 = v61;
    (*(v64 + 32))(v24 + *(v61 + 20), v27, v65);
    (*(v62 + 8))(v59, v63);
  }

  else
  {
    __chkstk_darwin(v32);
    *(&v53 - 2) = v13;
    sub_1000C3D94(sub_1002AE774);
    v39 = v66;
    v36 = v67;
    (*(v66 + 16))(v24, v31, v67);
    v38 = v61;
    v40 = v24 + *(v61 + 20);
    v58 = v31;
    v41 = v65;
    v29(v40, v27, v65);
    v37 = v39;
    v42 = v53;
    UUID.init()();
    v34 = UUID.uuidString.getter();
    v35 = v43;
    v44 = v41;
    v31 = v58;
    (*(v64 + 8))(v27, v44);
    (*(v62 + 8))(v59, v63);
    (*(v54 + 8))(v42, v55);
  }

  v45 = (v24 + *(v38 + 24));
  *v45 = v34;
  v45[1] = v35;
  (*(v37 + 8))(v31, v36);
  v46 = sub_1000CE29C(v24);
  sub_1002AE9A4(v24, type metadata accessor for FMAccessoryProductImageRequest);
  v47 = v70;
  sub_1002AE77C(v72, v70);
  v48 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v49 = swift_allocObject();
  v50 = v71;
  *(v49 + 16) = v46;
  *(v49 + 24) = v50;
  sub_1002AE7E0(v47, v49 + v48);
  sub_10007EBC0(&qword_1006BA180, &unk_10055BEB0);
  swift_allocObject();
  v51 = v46;

  v73 = Future.init(_:)();
  sub_100004098(&qword_1006BA188, &qword_1006BA180, &unk_10055BEB0, &protocol conformance descriptor for Future<A, B>);
  Publisher.eraseToAnyPublisher()();

  return v51;
}

uint64_t sub_1002ADB78(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  swift_weakInit();
  sub_1002AE77C(a5, &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v15 = swift_allocObject();
  v15[2] = v13;
  v15[3] = a3;
  v15[4] = sub_1001C2164;
  v15[5] = v12;
  sub_1002AE7E0(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  v16 = &a3[qword_1006B1E58];
  v17 = *&a3[qword_1006B1E58];
  v18 = *&a3[qword_1006B1E58 + 8];
  *v16 = sub_1002AE8C8;
  *(v16 + 1) = v15;

  v19 = a3;
  return sub_10001835C(v17, v18);
}

double sub_1002ADD10(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void *, uint64_t), uint64_t a5, uint64_t a6)
{
  v47 = a6;
  v52 = a5;
  v53 = a4;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v8 - 8);
  __chkstk_darwin(v8);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for DispatchQoS();
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  __chkstk_darwin(v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = *(a1 + 8);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v45 = v8;

    sub_1000C5220(v15, v16);
    v17 = a3;
    v18 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100005B14(v19, qword_1006D4630);
    v20 = Logger.logObject.getter();
    if (os_log_type_enabled(v20, v18))
    {
      v21 = swift_slowAlloc();
      v43 = v21;
      v44 = swift_slowAlloc();
      v61[0] = v44;
      *v21 = 136315138;
      aBlock = 0;
      v56 = 0xE000000000000000;
      v42 = v18;
      _StringGuts.grow(_:)(38);
      v22._object = 0x800000010058CBB0;
      v22._countAndFlagsBits = 0xD000000000000014;
      String.append(_:)(v22);
      v23 = [v17 description];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v17;
      v25 = v24;
      v26 = v11;
      v28 = v27;

      v29._countAndFlagsBits = v25;
      v29._object = v28;
      String.append(_:)(v29);
      v11 = v26;
      v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);

      v30._countAndFlagsBits = 0x6572206874697720;
      v30._object = 0xEE00203A746C7573;
      String.append(_:)(v30);
      v61[3] = v15;
      v62 = v16;
      sub_10007EBC0(&qword_1006BA190, &qword_10055BEC0);
      _print_unlocked<A, B>(_:_:)();
      v31 = sub_100005B4C(aBlock, v56, v61);

      v32 = v43;
      *(v43 + 1) = v31;
      _os_log_impl(&_mh_execute_header, v20, v42, "FMDiscoveredAccessoryImageFetchingCoordinator: %s", v32, 0xCu);
      sub_100006060(v44);
    }

    else
    {
    }

    sub_1000C522C(v15, v16);

    v8 = v45;
  }

  v53(v15, v16);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v35 = *(Strong + 24);

    v36 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    sub_1002AE77C(v47, v14);
    v37 = (*(v46 + 80) + 24) & ~*(v46 + 80);
    v38 = swift_allocObject();
    *(v38 + 16) = v36;
    sub_1002AE7E0(v14, v38 + v37);
    v59 = sub_1002AE940;
    v60 = v38;
    aBlock = _NSConcreteStackBlock;
    v56 = 1107296256;
    v57 = sub_100004AE4;
    v58 = &unk_1006339D8;
    v39 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v54 = _swiftEmptyArrayStorage;
    sub_100016980(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
    v40 = v49;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v39);

    (*(v51 + 8))(v40, v8);
    (*(v48 + 8))(v11, v50);
  }

  return result;
}

double sub_1002AE3EC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  __chkstk_darwin(v3);
  v5 = (&v18[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v8 = &v18[-1] - v7;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1002AE77C(a2, v8);
    v9 = static os_log_type_t.default.getter();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100005B14(v10, qword_1006D4630);
    v11 = Logger.logObject.getter();
    if (os_log_type_enabled(v11, v9))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18[0] = v13;
      *v12 = 136315138;
      v19 = 0;
      v20 = 0xE000000000000000;
      _StringGuts.grow(_:)(46);
      v14._object = 0x800000010058CBD0;
      v14._countAndFlagsBits = 0xD00000000000002CLL;
      String.append(_:)(v14);
      _print_unlocked<A, B>(_:_:)();
      v15 = sub_100005B4C(v19, v20, v18);

      *(v12 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v11, v9, "FMDiscoveredAccessoryImageFetchingCoordinator: %s", v12, 0xCu);
      sub_100006060(v13);
    }

    sub_1002AE9A4(v8, type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1002AE77C(a2, v5);
    swift_beginAccess();
    sub_1001AF360(0, 0, v5);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1002AE6B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1002AE77C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AE7E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002AE844(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1002ADB78(a1, a2, v6, v7, v8);
}

double sub_1002AE8C8(uint64_t a1)
{
  v3 = *(type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1002ADD10(a1, v4, v5, v6, v7, v8);
}

double sub_1002AE940()
{
  v1 = *(type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1002AE3EC(v2, v3);
}

uint64_t sub_1002AE9A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_1002AEA20()
{
  v1 = *(type metadata accessor for FMAccessoryProductImageFetchingCoordinator.Context(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);

  return sub_1002AD1DC(v3, (v0 + v2), v5, v6);
}

id sub_1002AEB14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMAddItemLoadingView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1002AEBC8()
{
  v1 = OBJC_IVAR____TtC6FindMy20FMAddItemLoadingView_label;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC6FindMy20FMAddItemLoadingView_activityIndicator;
  *(v0 + v2) = [objc_allocWithZone(UIActivityIndicatorView) init];
  v3 = OBJC_IVAR____TtC6FindMy20FMAddItemLoadingView_stackView;
  *(v0 + v3) = [objc_allocWithZone(UIStackView) init];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_1002AEC90(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_iconImageView;
  *&v2[v4] = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label;
  *&v2[v5] = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitle;
  *&v2[v6] = [objc_allocWithZone(UILabel) init];
  v7 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_separatorView;
  *&v2[v7] = [objc_allocWithZone(UIView) init];
  v8 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_actionLabel;
  *&v2[v8] = [objc_allocWithZone(UILabel) init];
  v9 = &v2[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_actionTitle];
  *v9 = 0;
  v9[1] = 0;
  v2[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_isChevronVisible] = 0;
  v2[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed] = 0;
  v2[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_dismissable] = 0;
  v10 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterIcon;
  v11 = type metadata accessor for FMPlatterIcon(0);
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_containerView;
  *&v2[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevron;
  v14 = sub_1003DE824();
  v15 = [objc_allocWithZone(UIImageView) initWithImage:v14];

  *&v2[v13] = v15;
  *&v2[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevronWidthConstraint] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_titleTrailingConstraint] = 0;
  *&v2[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitleTrailingConstraint] = 0;
  v16 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_closeButton;
  *&v2[v16] = [objc_allocWithZone(UIButton) init];
  v17 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterBackgroundView;
  v18 = type metadata accessor for FMPlatterBackgroundView();
  v19 = objc_allocWithZone(v18);
  v19[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 0;
  v27.receiver = v19;
  v27.super_class = v18;
  v20 = objc_msgSendSuper2(&v27, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *&v2[v17] = v20;
  v2[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_hasAction] = a1;
  v26.receiver = v2;
  v26.super_class = type metadata accessor for FMPlatterInfoView(0);
  v21 = objc_msgSendSuper2(&v26, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = *((swift_isaMask & *v21) + 0x208);
  v23 = v21;
  v22();
  v25[3] = &type metadata for SolariumFeatureFlag;
  v25[4] = sub_10000BD04();
  LOBYTE(v2) = isFeatureEnabled(_:)();
  sub_100006060(v25);
  if (v2)
  {
    sub_1002AF9D8();
  }

  else
  {
    sub_1002B0CB4();
  }

  return v23;
}

id sub_1002AEFA8()
{
  v1 = v0;
  v2 = [v0 layer];
  [v2 setMasksToBounds:0];

  v3 = [v1 layer];
  v71 = &type metadata for SolariumFeatureFlag;
  v4 = sub_10000BD04();
  v72 = v4;
  v5 = isFeatureEnabled(_:)();
  sub_100006060(v70);
  v6 = _UISheetCornerRadius;
  if (v5)
  {
    v6 = 26.0;
  }

  [v3 setCornerRadius:v6];

  v71 = &type metadata for SolariumFeatureFlag;
  v72 = v4;
  v7 = isFeatureEnabled(_:)();
  sub_100006060(v70);
  if (v7)
  {
    [v1 addSubview:*&v1[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterBackgroundView]];
  }

  else
  {
    if (qword_1006AEC30 != -1)
    {
      swift_once();
    }

    v8 = [v1 traitCollection];
    v9 = sub_100356E0C(v8);

    [v1 setBackgroundColor:v9];
    v10 = [v1 layer];
    [v10 setShouldRasterize:1];

    v11 = [v1 layer];
    v12 = [objc_opt_self() mainScreen];
    [v12 scale];
    v14 = v13;

    [v11 setRasterizationScale:v14];
    v15 = [v1 layer];
    v16 = [objc_opt_self() blackColor];
    v17 = [v16 CGColor];

    [v15 setShadowColor:v17];
    v18 = [v1 layer];
    LODWORD(v19) = 1031127695;
    [v18 setShadowOpacity:v19];

    v20 = [v1 layer];
    [v20 setShadowRadius:16.0];

    v21 = [v1 layer];
    [v21 setShadowOffset:{0.0, 0.0}];
  }

  v69 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_containerView;
  v22 = [*&v1[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_containerView] layer];
  [v22 setMasksToBounds:1];

  v23 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevron;
  [*&v1[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevron] setHidden:1];
  [*&v1[v23] setContentMode:1];
  v68 = v23;
  v24 = *&v1[v23];
  v25 = objc_opt_self();
  v26 = v24;
  v27 = [v25 tertiaryLabelColor];
  [v26 setTintColor:v27];

  v28 = *&v1[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_iconImageView];
  v29 = [v25 labelColor];
  [v28 setTintColor:v29];

  LODWORD(v30) = 1148846080;
  [v28 setContentHuggingPriority:1 forAxis:v30];
  v67 = v28;
  LODWORD(v31) = 1148846080;
  [v28 setContentHuggingPriority:0 forAxis:v31];
  v32 = *&v1[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label];
  v33 = [v25 labelColor];
  [v32 setTextColor:v33];

  v71 = &type metadata for SolariumFeatureFlag;
  v72 = v4;
  v34 = isFeatureEnabled(_:)();
  sub_100006060(v70);
  v35 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleBody];
  sub_10007EBC0(&qword_1006BA720, &unk_1005565C0);
  if (v34)
  {
    v36 = &UIFontWeightSemibold;
  }

  else
  {
    v36 = &UIFontWeightMedium;
  }

  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100552220;
  v66 = v4;
  *(inited + 32) = UIFontWeightTrait;
  *(inited + 40) = *v36;
  v38 = UIFontWeightTrait;
  v39 = sub_10002AB84(inited);
  swift_setDeallocating();
  sub_100012DF0(inited + 32, &qword_1006B47A0, &qword_100552690);
  v40 = sub_10002ACDC(v39);

  [v32 setFont:v40];

  [v32 setNumberOfLines:0];
  [v32 setAdjustsFontForContentSizeCategory:1];
  sub_1000D5EB8();
  v41 = *&v1[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitle];
  v42 = objc_opt_self();
  v43 = [v42 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  [v41 setFont:v43];

  v44 = [v25 secondaryLabelColor];
  [v41 setTextColor:v44];

  [v41 setNumberOfLines:0];
  [v41 setAdjustsFontForContentSizeCategory:1];
  sub_1000D5EB8();
  v45 = *&v1[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_separatorView];
  v46 = [v25 labelColor];
  v47 = [v46 colorWithAlphaComponent:0.1];

  [v45 setBackgroundColor:v47];
  [v45 setHidden:(v1[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_hasAction] & 1) == 0];
  v48 = *&v1[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_actionLabel];
  v49 = [v42 preferredFontForTextStyle:UIFontTextStyleBody];
  [v48 setFont:v49];

  v50 = [v25 systemBlueColor];
  [v48 setTextColor:v50];

  [v48 setNumberOfLines:0];
  sub_1000D5EB8();
  v51 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_closeButton;
  v52 = *&v1[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_closeButton];
  v53 = String._bridgeToObjectiveC()();
  v54 = [objc_opt_self() systemImageNamed:v53];

  [v52 setImage:v54 forState:0];
  [*&v1[v51] setHidden:(v1[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_dismissable] & 1) == 0];
  [*&v1[v51] addTarget:v1 action:"handleCloseAction" forControlEvents:64];
  v55 = *&v1[v51];
  v56 = objc_opt_self();
  v57 = v55;
  v58 = [v56 mainBundle];
  v73._object = 0x8000000100584810;
  v59._countAndFlagsBits = 0x55425F45534F4C43;
  v59._object = 0xEC0000004E4F5454;
  v60._countAndFlagsBits = 0;
  v60._object = 0xE000000000000000;
  v73._countAndFlagsBits = 0xD00000000000001ELL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v73);

  v61 = String._bridgeToObjectiveC()();

  [v57 setAccessibilityLabel:v61];

  v71 = &type metadata for SolariumFeatureFlag;
  v72 = v66;
  LOBYTE(v57) = isFeatureEnabled(_:)();
  sub_100006060(v70);
  if (v57)
  {
    v62 = *&v1[v51];
    v63 = [v25 labelColor];
    v64 = [v63 colorWithAlphaComponent:0.4];

    [v62 setTintColor:v64];
  }

  [v1 addSubview:*&v1[v69]];
  [*&v1[v69] addSubview:v67];
  [*&v1[v69] addSubview:v32];
  [*&v1[v69] addSubview:v41];
  [*&v1[v69] addSubview:*&v1[v68]];
  return [*&v1[v69] addSubview:*&v1[v51]];
}

void sub_1002AF9D8()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_containerView;
  [*&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_containerView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v148 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_iconImageView];
  [v148 setTranslatesAutoresizingMaskIntoConstraints:0];
  v145 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label];
  [v145 setTranslatesAutoresizingMaskIntoConstraints:0];
  v151 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitle];
  [v151 setTranslatesAutoresizingMaskIntoConstraints:0];
  v141 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_separatorView];
  [v141 setTranslatesAutoresizingMaskIntoConstraints:0];
  v146 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_actionLabel];
  [v146 setTranslatesAutoresizingMaskIntoConstraints:0];
  v147 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevron;
  [*&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevron] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_closeButton;
  v149 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_closeButton;
  [*&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_closeButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterBackgroundView];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v4) = 1148846080;
  [*&v0[v2] setContentHuggingPriority:0 forAxis:v4];
  v5 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005521F0;
  v7 = [*&v0[v1] topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [*&v0[v1] leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [*&v0[v1] trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [*&v0[v1] bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 activateConstraints:isa];

  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1005521F0;
  v21 = [v3 topAnchor];
  v22 = [v0 topAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];

  *(v20 + 32) = v23;
  v24 = [v3 leadingAnchor];
  v25 = [v0 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];

  *(v20 + 40) = v26;
  v27 = [v3 trailingAnchor];
  v28 = [v0 trailingAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];

  *(v20 + 48) = v29;
  v30 = [v3 bottomAnchor];
  v31 = [v0 bottomAnchor];
  v32 = [v30 constraintEqualToAnchor:v31];

  *(v20 + 56) = v32;
  v33 = Array._bridgeToObjectiveC()().super.isa;

  v153 = v5;
  [v5 activateConstraints:v33];

  v34 = [v145 trailingAnchor];
  v35 = [*&v0[v149] isHidden];
  v36 = v35 == 0;
  if (v35)
  {
    v37 = v1;
  }

  else
  {
    v37 = v149;
  }

  v38 = *&v0[v37];
  v39 = &selRef_leadingAnchor;
  if (!v36)
  {
    v39 = &selRef_trailingAnchor;
  }

  v40 = [v38 *v39];
  if (qword_1006AEDB0 != -1)
  {
    swift_once();
  }

  v41 = -*&qword_1006D4DC0;
  v42 = [v34 constraintEqualToAnchor:v40 constant:-*&qword_1006D4DC0];

  v43 = [v151 trailingAnchor];
  v44 = [*&v0[v1] trailingAnchor];
  v142 = [v43 constraintEqualToAnchor:v44 constant:v41];

  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_100552EF0;
  v154 = v1;
  v46 = [v145 topAnchor];
  v47 = [v148 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:10.0];

  *(v45 + 32) = v48;
  v49 = [v145 leadingAnchor];
  v50 = [*&v0[v1] leadingAnchor];
  v51 = [v49 constraintEqualToAnchor:v50 constant:16.0];

  *(v45 + 40) = v51;
  *(v45 + 48) = v42;
  v144 = v42;
  v52 = Array._bridgeToObjectiveC()().super.isa;

  [v153 activateConstraints:v52];

  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_100552EF0;
  v54 = [v151 topAnchor];
  v55 = [v145 bottomAnchor];
  v56 = [v54 constraintEqualToAnchor:v55 constant:0.0];

  *(v53 + 32) = v56;
  v57 = [v151 leadingAnchor];
  v58 = [v145 leadingAnchor];
  v59 = [v57 constraintEqualToAnchor:v58];

  *(v53 + 40) = v59;
  *(v53 + 48) = v142;
  v143 = v142;
  v60 = Array._bridgeToObjectiveC()().super.isa;

  [v153 activateConstraints:v60];

  v61 = v147;
  v62 = [*&v0[v147] trailingAnchor];
  v63 = [*&v0[v1] trailingAnchor];
  v64 = [v62 constraintEqualToAnchor:v63 constant:-16.0];

  LODWORD(v65) = 1148846080;
  v140 = v64;
  [v64 setPriority:v65];
  v66 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_hasAction;
  [v141 setHidden:(v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_hasAction] & 1) == 0];
  if (v0[v66] == 1)
  {
    [*&v0[v1] addSubview:v141];
    [*&v0[v1] addSubview:v146];
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_100552F00;
    v68 = [v141 leadingAnchor];
    v69 = [*&v0[v1] leadingAnchor];
    v70 = [v68 constraintEqualToAnchor:v69 constant:14.0];

    *(v67 + 32) = v70;
    v71 = [v141 trailingAnchor];
    v72 = [*&v0[v1] trailingAnchor];
    v73 = [v71 constraintEqualToAnchor:v72 constant:-14.0];

    *(v67 + 40) = v73;
    v74 = [v141 heightAnchor];
    v75 = v74;
    v76 = 1.0;
    if (!v0[v66])
    {
      v76 = 0.0;
    }

    v77 = [v74 constraintEqualToConstant:v76];

    *(v67 + 48) = v77;
    v78 = [v141 topAnchor];
    v79 = [v151 bottomAnchor];
    v80 = 10.6666667;
    if (!v0[v66])
    {
      v80 = 0.0;
    }

    v81 = [v78 constraintEqualToAnchor:v79 constant:v80];

    *(v67 + 56) = v81;
    v82 = [v141 bottomAnchor];
    v83 = [v146 topAnchor];
    v84 = -10.6666667;
    if (!v0[v66])
    {
      v84 = 0.0;
    }

    v85 = [v82 constraintEqualToAnchor:v83 constant:v84];

    *(v67 + 64) = v85;
    v86 = Array._bridgeToObjectiveC()().super.isa;

    [v153 activateConstraints:v86];

    v61 = v147;
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_1005521F0;
    v88 = [v146 topAnchor];
    v89 = [v141 bottomAnchor];
    if (v0[v66])
    {
      v90 = 16.0;
    }

    else
    {
      v90 = 0.0;
    }

    v91 = [v88 constraintEqualToAnchor:v89 constant:v90];

    *(v87 + 32) = v91;
    v92 = v153;
    v93 = [v146 leadingAnchor];
    v94 = [v145 leadingAnchor];
    v95 = [v93 constraintEqualToAnchor:v94];

    *(v87 + 40) = v95;
    v96 = [v146 trailingAnchor];
    v97 = [*&v0[v154] trailingAnchor];
    v98 = [v96 constraintEqualToAnchor:v97];

    v99 = v146;
    *(v87 + 48) = v98;
    v1 = v154;
    v100 = (v87 + 56);
  }

  else
  {
    v92 = v153;
    [v141 removeFromSuperview];
    [v146 removeFromSuperview];
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_1005528C0;
    v100 = (v101 + 32);
    v99 = v151;
  }

  v102 = [v99 bottomAnchor];
  v103 = [*&v0[v1] bottomAnchor];
  v104 = v1;
  v105 = [v102 constraintLessThanOrEqualToAnchor:v103 constant:-16.0];

  *v100 = v105;
  v106 = Array._bridgeToObjectiveC()().super.isa;

  [v92 activateConstraints:v106];

  v107 = [*&v0[v61] widthAnchor];
  v108 = [v107 constraintEqualToConstant:*&xmmword_1006D4DB0];

  v109 = v92;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_1005521F0;
  *(v110 + 32) = v140;
  v111 = *&v0[v61];
  v152 = v140;
  v112 = [v111 centerYAnchor];
  v113 = [*&v0[v104] centerYAnchor];
  v114 = [v112 constraintEqualToAnchor:v113];

  *(v110 + 40) = v114;
  v115 = [*&v0[v61] heightAnchor];
  v116 = [v115 constraintEqualToConstant:*(&xmmword_1006D4DB0 + 1)];

  *(v110 + 48) = v116;
  *(v110 + 56) = v108;
  v150 = v108;
  v117 = Array._bridgeToObjectiveC()().super.isa;

  [v109 activateConstraints:v117];

  v118 = swift_allocObject();
  *(v118 + 16) = xmmword_100552EE0;
  v119 = [v148 leadingAnchor];
  v120 = [*&v0[v154] leadingAnchor];
  v121 = [v119 constraintEqualToAnchor:v120 constant:14.0];

  *(v118 + 32) = v121;
  v122 = [v148 topAnchor];
  v123 = [*&v0[v154] topAnchor];
  v124 = [v122 constraintGreaterThanOrEqualToAnchor:v123 constant:16.0];

  *(v118 + 40) = v124;
  v125 = Array._bridgeToObjectiveC()().super.isa;

  [v153 activateConstraints:v125];

  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_100552EF0;
  v127 = [*&v0[v149] topAnchor];
  v128 = [v0 topAnchor];
  v129 = [v127 constraintEqualToAnchor:v128 constant:16.0];

  *(v126 + 32) = v129;
  v130 = [*&v0[v149] widthAnchor];
  v131 = [*&v0[v149] heightAnchor];
  v132 = [v130 constraintEqualToAnchor:v131];

  *(v126 + 40) = v132;
  v133 = [*&v0[v149] trailingAnchor];
  v134 = [*&v0[v154] trailingAnchor];
  v135 = [v133 constraintEqualToAnchor:v134 constant:-16.0];

  *(v126 + 48) = v135;
  v136 = Array._bridgeToObjectiveC()().super.isa;

  [v153 activateConstraints:v136];

  v137 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevronWidthConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevronWidthConstraint] = v150;

  v138 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_titleTrailingConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_titleTrailingConstraint] = v144;

  v139 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitleTrailingConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitleTrailingConstraint] = v143;
}

void sub_1002B0CB4()
{
  [v0 setTranslatesAutoresizingMaskIntoConstraints:0];
  v1 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_containerView;
  [*&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_containerView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_iconImageView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v142 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label];
  [v142 setTranslatesAutoresizingMaskIntoConstraints:0];
  v145 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitle];
  [v145 setTranslatesAutoresizingMaskIntoConstraints:0];
  v136 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_separatorView];
  [v136 setTranslatesAutoresizingMaskIntoConstraints:0];
  v137 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_actionLabel];
  [v137 setTranslatesAutoresizingMaskIntoConstraints:0];
  v138 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevron;
  [*&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevron] setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_closeButton;
  [*&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_closeButton] setTranslatesAutoresizingMaskIntoConstraints:0];
  v139 = v3;
  LODWORD(v4) = 1148846080;
  [*&v0[v3] setContentHuggingPriority:0 forAxis:v4];
  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v5 = *&qword_1006D4798;
  v144 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1005521F0;
  v7 = [*&v0[v1] topAnchor];
  v8 = [v0 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [*&v0[v1] leadingAnchor];
  v11 = [v0 leadingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [*&v0[v1] trailingAnchor];
  v14 = [v0 trailingAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [*&v0[v1] bottomAnchor];
  v17 = [v0 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v144 activateConstraints:isa];

  v20 = [v142 centerYAnchor];
  v21 = [v2 centerYAnchor];
  v22 = v1;
  v23 = [v20 constraintEqualToAnchor:v21];

  v140 = v2;
  LODWORD(v24) = 1132068864;
  [v23 setPriority:v24];
  v25 = [v145 centerYAnchor];
  v26 = [v145 centerYAnchor];
  v27 = [v25 constraintEqualToAnchor:v26];

  v129 = v27;
  LODWORD(v28) = 1132068864;
  [v27 setPriority:v28];
  v29 = [v142 trailingAnchor];
  v30 = [*&v0[v139] leadingAnchor];
  if (qword_1006AEDB0 != -1)
  {
    swift_once();
  }

  v31 = -*&qword_1006D4DC0;
  v134 = [v29 constraintEqualToAnchor:v30 constant:-*&qword_1006D4DC0];

  v32 = [v145 trailingAnchor];
  v33 = [*&v0[v139] leadingAnchor];
  v131 = [v32 constraintEqualToAnchor:v33 constant:v31];

  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1005521F0;
  v35 = [v142 topAnchor];
  v141 = v22;
  v36 = [*&v0[v22] topAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:v5 / 1.5];

  *(v34 + 32) = v37;
  v38 = [v142 leadingAnchor];
  v39 = [v2 trailingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:14.0];

  *(v34 + 40) = v40;
  *(v34 + 48) = v134;
  *(v34 + 56) = v23;
  v135 = v134;
  v133 = v23;
  v41 = Array._bridgeToObjectiveC()().super.isa;

  [v144 activateConstraints:v41];

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1005521F0;
  v43 = [v145 topAnchor];
  v44 = [v142 bottomAnchor];
  v45 = [v43 constraintEqualToAnchor:v44 constant:2.0];

  *(v42 + 32) = v45;
  v46 = [v145 leadingAnchor];
  v47 = [v2 trailingAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:14.0];

  *(v42 + 40) = v48;
  *(v42 + 48) = v131;
  *(v42 + 56) = v129;
  v132 = v131;
  v130 = v129;
  v49 = Array._bridgeToObjectiveC()().super.isa;

  v50 = v22;
  [v144 activateConstraints:v49];

  v51 = [*&v0[v138] trailingAnchor];
  v52 = [*&v0[v22] trailingAnchor];
  v53 = [v51 constraintEqualToAnchor:v52 constant:-v5];

  LODWORD(v54) = 1148846080;
  v128 = v53;
  [v53 setPriority:v54];
  v55 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_hasAction;
  if (v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_hasAction] == 1)
  {
    [*&v0[v22] addSubview:v136];
    [*&v0[v22] addSubview:v137];
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_100552F00;
    v57 = [v136 leadingAnchor];
    v58 = [v2 trailingAnchor];
    v59 = [v57 constraintEqualToAnchor:v58 constant:14.0];

    *(v56 + 32) = v59;
    v60 = [v136 trailingAnchor];
    v61 = [*&v0[v50] trailingAnchor];
    v62 = [v60 constraintEqualToAnchor:v61];

    *(v56 + 40) = v62;
    v63 = [v136 heightAnchor];
    v64 = 0.0;
    if (v0[v55] == 1)
    {
      v65 = [objc_opt_self() mainScreen];
      [v65 scale];
      v67 = v66;

      v64 = 1.0 / v67;
    }

    v68 = [v63 constraintEqualToConstant:v64];

    *(v56 + 48) = v68;
    v69 = [v136 topAnchor];
    v70 = [v145 bottomAnchor];
    if (v0[v55])
    {
      v71 = v5 / 1.5;
    }

    else
    {
      v71 = 0.0;
    }

    v72 = [v69 constraintEqualToAnchor:v70 constant:v71];

    *(v56 + 56) = v72;
    v73 = [v136 bottomAnchor];
    v74 = [v137 topAnchor];
    if (v0[v55])
    {
      v75 = v5 / -1.5;
    }

    else
    {
      v75 = 0.0;
    }

    v76 = [v73 constraintEqualToAnchor:v74 constant:v75];

    *(v56 + 64) = v76;
    v77 = Array._bridgeToObjectiveC()().super.isa;

    v78 = v144;
    [v144 activateConstraints:v77];

    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1005521F0;
    v80 = [v137 topAnchor];
    v81 = [v136 bottomAnchor];
    v82 = [v80 constraintEqualToAnchor:v81 constant:v5 / 1.5];

    *(v79 + 32) = v82;
    v83 = [v137 leadingAnchor];
    v84 = [v2 trailingAnchor];
    v85 = [v83 constraintEqualToAnchor:v84 constant:14.0];

    *(v79 + 40) = v85;
    v86 = [v137 trailingAnchor];
    v87 = v141;
    v88 = [*&v0[v141] trailingAnchor];
    v89 = [v86 constraintEqualToAnchor:v88];

    *(v79 + 48) = v89;
    v90 = (v79 + 56);
    p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
    v92 = [v137 bottomAnchor];
    v93 = [*&v0[v141] bottomAnchor];
    v94 = [v92 constraintLessThanOrEqualToAnchor:v93 constant:v5 / -1.5];
  }

  else
  {
    [v136 removeFromSuperview];
    [v137 removeFromSuperview];
    v95 = swift_allocObject();
    *(v95 + 16) = xmmword_1005528C0;
    v90 = (v95 + 32);
    v92 = [v145 bottomAnchor];
    v93 = [*&v0[v22] bottomAnchor];
    v94 = [v92 constraintLessThanOrEqualToAnchor:v93 constant:v5 / -1.5];
    v87 = v22;
    p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
    v78 = v144;
  }

  v96 = v94;

  *v90 = v96;
  v97 = Array._bridgeToObjectiveC()().super.isa;

  [v78 activateConstraints:v97];

  v98 = [*&v0[v138] widthAnchor];
  v99 = [v98 p:*&xmmword_1006D4DB0 ivar:?lyt[485]];

  v100 = swift_allocObject();
  *(v100 + 16) = xmmword_1005521F0;
  *(v100 + 32) = v128;
  v101 = *&v0[v138];
  v146 = v128;
  v102 = [v101 centerYAnchor];
  v103 = [*&v0[v87] centerYAnchor];
  v104 = p_ivar_lyt;
  v105 = [v102 constraintEqualToAnchor:v103];

  *(v100 + 40) = v105;
  v106 = [*&v0[v138] heightAnchor];
  v107 = [v106 v104[485]];

  *(v100 + 48) = v107;
  *(v100 + 56) = v99;
  v143 = v99;
  v108 = Array._bridgeToObjectiveC()().super.isa;

  [v144 activateConstraints:v108];

  v109 = swift_allocObject();
  *(v109 + 16) = xmmword_100552EE0;
  v110 = [v140 leadingAnchor];
  v111 = [*&v0[v141] leadingAnchor];
  v112 = [v110 constraintEqualToAnchor:v111 constant:v5];

  *(v109 + 32) = v112;
  v113 = [v140 centerYAnchor];
  v114 = [*&v0[v141] centerYAnchor];
  v115 = [v113 constraintEqualToAnchor:v114];

  *(v109 + 40) = v115;
  v116 = Array._bridgeToObjectiveC()().super.isa;

  [v144 activateConstraints:v116];

  v117 = swift_allocObject();
  *(v117 + 16) = xmmword_100552EE0;
  v118 = [*&v0[v139] topAnchor];
  v119 = [v142 topAnchor];
  v120 = [v118 constraintEqualToAnchor:v119];

  *(v117 + 32) = v120;
  v121 = [*&v0[v139] trailingAnchor];
  v122 = [*&v0[v141] trailingAnchor];
  v123 = [v121 constraintEqualToAnchor:v122 constant:-*&qword_1006D4798];

  *(v117 + 40) = v123;
  v124 = Array._bridgeToObjectiveC()().super.isa;

  [v144 activateConstraints:v124];

  v125 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevronWidthConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevronWidthConstraint] = v143;

  v126 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_titleTrailingConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_titleTrailingConstraint] = v135;

  v127 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitleTrailingConstraint];
  *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitleTrailingConstraint] = v132;
}

void sub_1002B1E98()
{
  v1 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_isChevronVisible;
  [*&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevron] setHidden:(v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_isChevronVisible] & 1) == 0];
  [v0 setUserInteractionEnabled:v0[v1]];
  v2 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevronWidthConstraint];
  if (v0[v1] == 1)
  {
    if (v2)
    {
      v3 = qword_1006AEDB0;
      v4 = v2;
      if (v3 != -1)
      {
        swift_once();
      }

      [v4 setConstant:*&xmmword_1006D4DB0];
    }

    v5 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_titleTrailingConstraint];
    if (v5)
    {
      v6 = qword_1006AEDB0;
      v7 = v5;
      if (v6 != -1)
      {
        swift_once();
      }

      [v7 setConstant:-*&qword_1006D4DC0];
    }

    v8 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitleTrailingConstraint];
    if (v8)
    {
      v9 = qword_1006AEDB0;
      v10 = v8;
      v13 = v10;
      if (v9 != -1)
      {
        swift_once();
        v10 = v13;
      }

      [v10 setConstant:-*&qword_1006D4DC0];
    }
  }

  else
  {
    if (v2)
    {
      [v2 setConstant:0.0];
    }

    v11 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_titleTrailingConstraint];
    if (v11)
    {
      [v11 setConstant:0.0];
    }

    v12 = *&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitleTrailingConstraint];
    if (v12)
    {

      [v12 setConstant:0.0];
    }
  }
}

void sub_1002B20D8()
{
  v1 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed;
  [v0 setHidden:v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed]];
  v2 = 1.0;
  if (v0[v1])
  {
    v2 = 0.0;
  }

  [v0 setAlpha:v2];
  if (v0[v1] == 1)
  {
    [*&v0[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_iconImageView] transform3D];
    CATransform3DScale(&v24, &v23, 0.5, 0.5, 1.0);
  }

  else
  {
    v3 = *&CATransform3DIdentity.m33;
    *&v24.m31 = *&CATransform3DIdentity.m31;
    *&v24.m33 = v3;
    v4 = *&CATransform3DIdentity.m43;
    *&v24.m41 = *&CATransform3DIdentity.m41;
    *&v24.m43 = v4;
    v5 = *&CATransform3DIdentity.m13;
    *&v24.m11 = *&CATransform3DIdentity.m11;
    *&v24.m13 = v5;
    v6 = *&CATransform3DIdentity.m23;
    *&v24.m21 = *&CATransform3DIdentity.m21;
    *&v24.m23 = v6;
  }

  v23 = v24;
  [v0 setTransform3D:&v23];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  v8 = v0;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23.m11 = 0.0;
    *v11 = 136315394;
    v12 = 0xE000000000000000;
    v23.m12 = -2.68156159e154;
    if (v0[v1])
    {
      v13 = 1702195828;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    if (v0[v1])
    {
      v14 = 0xE400000000000000;
    }

    else
    {
      v14 = 0xE500000000000000;
    }

    v15 = v14;
    String.append(_:)(*&v13);

    v16 = sub_100005B4C(*&v23.m11, *&v23.m12, &v22);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    v17 = [*&v8[OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label] text];
    if (v17)
    {
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v20;
    }

    else
    {
      v19 = 0;
    }

    v21 = sub_100005B4C(v19, v12, &v22);

    *(v11 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v10, "FMPlatterInfoView: Collapsed: %s for: %s", v11, 0x16u);
    swift_arrayDestroy();
  }
}

uint64_t sub_1002B23D8()
{
  v1 = v0;
  v2 = sub_10007EBC0(&qword_1006B3298, &unk_100558AB0);
  __chkstk_darwin(v2 - 8);
  v4 = v18 - v3;
  v5 = type metadata accessor for FMPlatterIcon(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_100243148(v1 + v9, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_100012DF0(v4, &qword_1006B3298, &unk_100558AB0);
  }

  sub_10015DA28(v4, v8);
  v18[3] = &type metadata for SolariumFeatureFlag;
  v18[4] = sub_10000BD04();
  v11 = isFeatureEnabled(_:)();
  sub_100006060(v18);
  if (v11)
  {
    v12 = sub_100438138(0);
    v14 = v13;
    v15 = *(v1 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_iconImageView);
    [v15 setImage:v12];
    [v15 setTintColor:v14];
    [v15 setTintAdjustmentMode:1];
  }

  else
  {
    v16 = *(v1 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_iconImageView);
    v17 = sub_10043B9F4(v8, 0);
    [v16 setImage:v17];
  }

  return sub_1000D59F8(v8);
}

uint64_t sub_1002B2648(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B3298, &unk_100558AB0);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_1000D5AC4(a2, &v10 - v5);
  v7 = type metadata accessor for FMPlatterIcon(0);
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterIcon;
  swift_beginAccess();
  sub_100140BE4(v6, a1 + v8);
  swift_endAccess();
  sub_1002B23D8();
  return sub_100012DF0(v6, &qword_1006B3298, &unk_100558AB0);
}

void sub_1002B2890(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5)
{
  sub_10000905C(0, &qword_1006B0C30, UITouch_ptr);
  sub_1000D5BCC();
  static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = a4;
  v9 = a1;
  isa = Set._bridgeToObjectiveC()().super.isa;

  v13.receiver = v9;
  v13.super_class = type metadata accessor for FMPlatterInfoView(0);
  objc_msgSendSuper2(&v13, *a5, isa, v8);

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  v11 = [v9 traitCollection];
  v12 = sub_100356E0C(v11);

  [v9 setBackgroundColor:v12];
}

void sub_1002B29DC(uint64_t a1, uint64_t a2)
{
  sub_10000905C(0, &qword_1006B0C30, UITouch_ptr);
  sub_1000D5BCC();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for FMPlatterInfoView(0);
  objc_msgSendSuper2(&v14, "touchesMoved:withEvent:", isa, a2);

  v6 = sub_1000F07E4(a1);
  if (v6)
  {
    v7 = v6;
    [v6 locationInView:v2];
    v9 = v8;
    v11 = v10;
    [v2 frame];
    v15.x = v9;
    v15.y = v11;
    if (CGRectContainsPoint(v16, v15))
    {
      v12 = [objc_opt_self() secondarySystemFillColor];
    }

    else
    {
      if (qword_1006AEC30 != -1)
      {
        swift_once();
      }

      v13 = [v2 traitCollection];
      v12 = sub_100356E0C(v13);
    }

    [v2 setBackgroundColor:v12];
  }
}

id sub_1002B2D0C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMPlatterInfoView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMPlatterInfoView(uint64_t a1)
{
  result = qword_1006BA298;
  if (!qword_1006BA298)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B2EB8(uint64_t a1)
{
  sub_1002B2F94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002B2F94(uint64_t a1)
{
  if (!qword_1006BA2A8)
  {
    type metadata accessor for FMPlatterIcon(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1006BA2A8);
    }
  }
}

void sub_1002B2FEC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_iconImageView;
  *(v1 + v2) = [objc_allocWithZone(UIImageView) init];
  v3 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_label;
  *(v1 + v3) = [objc_allocWithZone(UILabel) init];
  v4 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitle;
  *(v1 + v4) = [objc_allocWithZone(UILabel) init];
  v5 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_separatorView;
  *(v1 + v5) = [objc_allocWithZone(UIView) init];
  v6 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_actionLabel;
  *(v1 + v6) = [objc_allocWithZone(UILabel) init];
  v7 = (v1 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_actionTitle);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_isChevronVisible) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_collapsed) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_dismissable) = 0;
  v8 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterIcon;
  v9 = type metadata accessor for FMPlatterIcon(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_containerView;
  *(v1 + v10) = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevron;
  v12 = sub_1003DE824();
  v13 = [objc_allocWithZone(UIImageView) initWithImage:v12];

  *(v1 + v11) = v13;
  *(v1 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_chevronWidthConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_titleTrailingConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_subtitleTrailingConstraint) = 0;
  v14 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_closeButton;
  *(v1 + v14) = [objc_allocWithZone(UIButton) init];
  v15 = OBJC_IVAR____TtC6FindMy17FMPlatterInfoView_platterBackgroundView;
  v16 = type metadata accessor for FMPlatterBackgroundView();
  v17 = objc_allocWithZone(v16);
  v17[OBJC_IVAR____TtC6FindMy23FMPlatterBackgroundView_isEnabled] = 0;
  v19.receiver = v17;
  v19.super_class = v16;
  v18 = objc_msgSendSuper2(&v19, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_10024610C();

  *(v1 + v15) = v18;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

unint64_t sub_1002B3268(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 7565409;
    v7 = 0x7472656C61;
    v8 = 0x736772612D636F6CLL;
    if (a1 != 3)
    {
      v8 = 0x6469646E65697266;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (!a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 1684632949;
    v2 = 0x49555570756F7267;
    if (a1 != 9)
    {
      v2 = 0xD000000000000010;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6553646E65697266;
    v4 = 0x6E6F697461636F6CLL;
    if (a1 != 6)
    {
      v4 = 0x6552646E65697266;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

id sub_1002B34C0()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_activityIndicator);
  if (*(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_showActivityIndicator) == 1)
  {
    [v1 setHidden:0];
    [v1 startAnimating];
    v2 = *(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v3 = *(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_activityIndicatorPosition);
  }

  else
  {
    [v1 setHidden:1];
    [v1 stopAnimating];
    v2 = *(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label);
    v3 = 0;
  }

  return [v2 setHidden:v3];
}

void sub_1002B3670()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_color);
}

id sub_1002B36C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMSingleLinePlatterButton();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1002B3764()
{
  result = qword_1006BA310;
  if (!qword_1006BA310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006BA310);
  }

  return result;
}

void sub_1002B37B8()
{
  v1 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_label;
  *(v0 + v1) = [objc_allocWithZone(UILabel) init];
  v2 = OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_activityIndicator;
  *(v0 + v2) = [objc_allocWithZone(UIActivityIndicatorView) initWithActivityIndicatorStyle:100];
  *(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_color) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_isBackgroundColor) = 0;
  v3 = v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_textAlignment;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_activityIndicatorPosition) = 0;
  *(v0 + OBJC_IVAR____TtC6FindMy25FMSingleLinePlatterButton_showActivityIndicator) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void sub_1002B38BC()
{
  v1 = v0;
  v2 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v44 - v3;
  v5 = [objc_allocWithZone(UIBarButtonItem) initWithBarButtonSystemItem:1 target:v1 action:"cancelActionWithSender:"];
  v6 = [v1 navigationItem];
  [v6 setLeftBarButtonItem:v5];

  v7 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField;
  [*&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField] setHidden:1];
  [*&v1[v7] addTarget:v1 action:"textChangedWithSender:" forControlEvents:0x20000];
  [*&v1[v7] setDelegate:v1];
  v8 = [objc_opt_self() currentDevice];
  v9 = [v8 userInterfaceIdiom];

  v10 = *&v1[v7];
  if (v9)
  {
    [v10 setKeyboardType:4];
  }

  else
  {
    v11 = qword_1006AEBB0;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    [v12 setKeyboardType:qword_1006BA320];
  }

  v13 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
  swift_beginAccess();
  sub_100007204(&v1[v13], v4, &unk_1006BBCE0, &unk_1005534C0);
  v14 = type metadata accessor for FMIPDevice();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v4, 1, v14) == 1)
  {
    __break(1u);
  }

  else
  {
    v16 = FMIPDevice.passcodeLength.getter();
    (*(v15 + 8))(v4, v14);
    v17 = 4;
    if (v16 > 4)
    {
      v17 = v16;
    }

    v18 = &v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeMaxLength];
    *v18 = v17;
    v18[8] = 0;
    v19 = [v1 contentView];
    [v19 addSubview:*&v1[v7]];

    v20 = [v1 contentView];
    v21 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_entryPlaceholderView;
    [v20 addSubview:*&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_entryPlaceholderView]];

    v22 = *&v1[v21];
    sub_1002B4BC8(1, v22);
    v24 = v23;
    v26 = v25;

    v27 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryView;
    v28 = *&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryView];
    *&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryView] = v24;
    v29 = v24;

    v30 = *&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryViewHCtrConstraint];
    *&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryViewHCtrConstraint] = v26;
    v31 = v26;

    v32 = *&v1[v21];
    sub_1002B4BC8(2, v32);
    v34 = v33;
    v36 = v35;

    v37 = *&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryView];
    *&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryView] = v34;
    v38 = v34;

    v39 = *&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryViewHCtrConstraint];
    *&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryViewHCtrConstraint] = v36;
    v40 = v36;

    v41 = *&v1[v27];
    v42 = *&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView];
    *&v1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView] = v41;
    v43 = v41;

    sub_1002B5308();
  }
}

void sub_1002B3CD8()
{
  v1 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_entryPlaceholderView;
  [*&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_entryPlaceholderView] setTranslatesAutoresizingMaskIntoConstraints:0];
  v29 = objc_opt_self();
  sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1005521F0;
  v3 = [*&v0[v1] topAnchor];
  v4 = [v0 contentView];
  v5 = [v4 topAnchor];

  v6 = [v3 constraintEqualToAnchor:v5 constant:24.0];
  *(v2 + 32) = v6;
  v7 = [*&v0[v1] heightAnchor];
  v8 = [v7 constraintEqualToConstant:36.0];

  *(v2 + 40) = v8;
  v9 = [*&v0[v1] leadingAnchor];
  v10 = [v0 contentView];
  v11 = [v10 leadingAnchor];

  v12 = [v9 constraintEqualToAnchor:v11];
  *(v2 + 48) = v12;
  v13 = [*&v0[v1] trailingAnchor];
  v14 = [v0 contentView];
  v15 = [v14 trailingAnchor];

  v16 = [v13 constraintEqualToAnchor:v15];
  *(v2 + 56) = v16;
  sub_10000905C(0, &qword_1006B3A70, NSLayoutConstraint_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:isa];

  v18 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField;
  [*&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField] setTranslatesAutoresizingMaskIntoConstraints:0];
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100552EF0;
  v20 = [*&v0[v18] bottomAnchor];
  v21 = [*&v0[v1] bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  *(v19 + 32) = v22;
  v23 = [*&v0[v18] leadingAnchor];
  v24 = [*&v0[v1] leadingAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];

  *(v19 + 40) = v25;
  v26 = [*&v0[v18] trailingAnchor];
  v27 = [*&v0[v1] trailingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27];

  *(v19 + 48) = v28;
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v29 activateConstraints:v30];
}

uint64_t sub_1002B417C()
{
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = swift_allocObject();
  *(v3 + 16) = v0;
  v17 = sub_1002B8FE8;
  v18 = v3;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10046DEDC;
  v16 = &unk_100633C58;
  v4 = _Block_copy(&v13);
  v5 = v0;

  v6 = [v2 addObserverForName:UIKeyboardWillShowNotification object:0 queue:0 usingBlock:v4];
  _Block_release(v4);

  *&v5[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardWillShowObserver] = v6;
  swift_unknownObjectRelease();
  v7 = [v1 defaultCenter];
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  v17 = sub_1002B900C;
  v18 = v8;
  v13 = _NSConcreteStackBlock;
  v14 = 1107296256;
  v15 = sub_10046DEDC;
  v16 = &unk_100633CA8;
  v9 = _Block_copy(&v13);
  v10 = v5;

  v11 = [v7 addObserverForName:UIKeyboardWillHideNotification object:0 queue:0 usingBlock:v9];
  _Block_release(v9);

  *&v10[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardWillHideObserver] = v11;
  return swift_unknownObjectRelease();
}

void sub_1002B44BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardWillHideObserver);
  if (v1)
  {
    v2 = objc_opt_self();
    swift_unknownObjectRetain();
    v3 = [v2 defaultCenter];
    [v3 removeObserver:v1];
    swift_unknownObjectRelease();
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardWillShowObserver);
  if (v4)
  {
    v5 = objc_opt_self();
    swift_unknownObjectRetain();
    v6 = [v5 defaultCenter];
    [v6 removeObserver:v4];
    swift_unknownObjectRelease();
  }
}

void sub_1002B46A8(uint64_t a1)
{
  v2 = v1;
  v47.receiver = v2;
  v47.super_class = type metadata accessor for FMDevicePasscodeViewController(0);
  objc_msgSendSuper2(&v47, "traitCollectionDidChange:", a1);
  v43 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_blankEntryImage;
  v4 = *&v2[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_blankEntryImage];
  v41 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_fullEntryImage;
  v45 = *&v2[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_fullEntryImage];
  v42 = v45;
  v46 = v4;
  v44 = v4;
  v5 = String._bridgeToObjectiveC()();
  v6 = objc_opt_self();
  v7 = [v6 imageNamed:v5];

  if (v7)
  {
    v8 = [objc_opt_self() labelColor];
    v9 = [v7 tintedImageWithColor:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = *&v2[v43];
  *&v2[v43] = v9;

  v11 = String._bridgeToObjectiveC()();
  v12 = [v6 imageNamed:v11];

  if (v12)
  {
    v13 = [objc_opt_self() labelColor];
    v14 = [v12 tintedImageWithColor:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = *&v2[v41];
  *&v2[v41] = v14;

  v16 = *&v2[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryView];
  if (!v16)
  {
    __break(1u);
    goto LABEL_41;
  }

  v17 = [v16 subviews];
  sub_10000905C(0, &qword_1006BA410, UIView_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = *&v2[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryView];
  if (!v19)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v20 = v18;
  v21 = v19;

  v22 = [v21 subviews];
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10049476C(v23);
  v24 = sub_1005374C0(v20);

  if (v24)
  {
    if (v24 >> 62)
    {
      goto LABEL_38;
    }

    for (i = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v26 = 0;
      p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
      while (1)
      {
        if ((v24 & 0xC000000000000001) != 0)
        {
          v30 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v30 = *(v24 + 8 * v26 + 32);
        }

        v31 = v30;
        v32 = v26 + 1;
        if (__OFADD__(v26, 1))
        {
          break;
        }

        v33 = [v30 p_ivar_lyt[479]];
        if (v33)
        {
          v34 = v33;
          if (v46)
          {
            sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
            v35 = v44;
            v36 = static NSObject.== infix(_:_:)();

            p_ivar_lyt = &LocateDeviceIntentResponse__metaData.ivar_lyt;
            if (v36)
            {
              goto LABEL_13;
            }
          }

          else
          {
          }
        }

        else if (!v46)
        {
LABEL_13:
          v28 = v2;
          v29 = v43;
          goto LABEL_14;
        }

        v37 = [v31 p:v41 ivar:?lyt[479]];
        if (!v37)
        {
          if (v45)
          {
            goto LABEL_15;
          }

LABEL_32:
          v28 = v2;
          v29 = v41;
LABEL_14:
          [v31 setImage:{*&v28[v29], v41}];
          goto LABEL_15;
        }

        v38 = v37;
        if (!v45)
        {

          v31 = v38;
          goto LABEL_15;
        }

        sub_10000905C(0, &qword_1006BC2B0, UIImage_ptr);
        v39 = v42;
        v40 = static NSObject.== infix(_:_:)();

        p_ivar_lyt = (&LocateDeviceIntentResponse__metaData + 16);
        if (v40)
        {
          goto LABEL_32;
        }

LABEL_15:

        ++v26;
        if (v32 == i)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      ;
    }

LABEL_39:
  }

  else
  {
  }
}

void sub_1002B4BC8(uint64_t a1, void *a2)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 loadNibNamed:v6 owner:v2 options:0];

  if (!v7)
  {
    goto LABEL_20;
  }

  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!v8)
  {
    goto LABEL_20;
  }

  if (!*(v8 + 16))
  {
LABEL_21:

    __break(1u);
    return;
  }

  sub_100006004(v8 + 32, v42);

  sub_1000072E4(v42, &v43);
  v9 = sub_10000905C(0, &qword_1006BA410, UIView_ptr);
  swift_dynamicCast();
  v10 = v41;
  v11 = [v41 subviews];
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_17:

    __break(1u);
    goto LABEL_18;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_17;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_9;
  }

  if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v13 = *(v12 + 32);
LABEL_9:
  v14 = v13;

  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 clearColor];
  [v16 setBackgroundColor:v17];

  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];
  v18 = objc_opt_self();
  v19 = v16;
  v20 = [v18 mainBundle];
  if (a1 == 1)
  {
    v45._object = 0x800000010058D430;
    v21._countAndFlagsBits = 0xD000000000000031;
    v21._object = 0x800000010058D3F0;
    v45._countAndFlagsBits = 0xD000000000000043;
    v22._countAndFlagsBits = 0;
    v22._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v45);

    v23 = String._bridgeToObjectiveC()();

    [v19 setAccessibilityLabel:v23];

    [a2 addSubview:v19];
    v24 = 0.0;
  }

  else
  {
    v46._object = 0x800000010058D3A0;
    v25._countAndFlagsBits = 0xD000000000000033;
    v25._object = 0x800000010058D360;
    v46._countAndFlagsBits = 0xD000000000000045;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v25, 0, v20, v26, v46);

    v27 = String._bridgeToObjectiveC()();

    [v19 setAccessibilityLabel:v27];

    [a2 addSubview:v19];
    [v19 bounds];
    v24 = v28;
  }

  v44 = v9;
  *&v43 = a2;
  *&v42[0] = v14;
  v29 = v19;
  v30 = a2;
  sub_10007EBC0(&qword_1006BA418, &unk_10055C160);
  v31 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  if (v9)
  {
    v32 = sub_1000244BC(&v43, v9);
    v33 = *(v9 - 8);
    v34 = __chkstk_darwin(v32);
    v36 = &v40 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v33 + 16))(v36, v34);
    v37 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v33 + 8))(v36, v9);
    sub_100006060(&v43);
  }

  else
  {
    v37 = 0;
  }

  v38 = [objc_opt_self() constraintWithItem:v31 attribute:9 relatedBy:0 toItem:v37 attribute:9 multiplier:1.0 constant:v24];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  [v30 addConstraint:v38];
  v39 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v2 action:"passcodeEntryViewTapped"];
  [v29 addGestureRecognizer:v39];
}

id sub_1002B5200()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_13;
  }

  v2 = result;
  [result bounds];
  v4 = v3;

  v5 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryViewHCtrConstraint;
  result = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryViewHCtrConstraint];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [result constant];
  if (v6 != 0.0)
  {
    result = *&v0[v5];
    if (!result)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return result;
    }

    [result setConstant:-v4];
  }

  v7 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryViewHCtrConstraint;
  result = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryViewHCtrConstraint];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = [result constant];
  if (v8 == 0.0)
  {
    return result;
  }

  result = *&v0[v7];
  if (!result)
  {
    goto LABEL_16;
  }

  return [result setConstant:v4];
}

void sub_1002B5308()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField) text];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = String.count.getter();
  }

  else
  {
    v3 = 0;
  }

  v4 = (v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeMaxLength);
  if (*(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeMaxLength + 8))
  {
    goto LABEL_18;
  }

  v5 = *v4;
  if (!*v4)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 == 0x8000000000000000 && v5 == -1)
  {
    goto LABEL_17;
  }

  v6 = v3 % v5;
  v7 = [objc_opt_self() mainBundle];
  v24._object = 0x800000010058D300;
  v8._object = 0x800000010058D2D0;
  v24._countAndFlagsBits = 0xD00000000000003DLL;
  v8._countAndFlagsBits = 0xD00000000000002BLL;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, 0, v7, v9, v24);

  sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100552210;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100552220;
  *(v11 + 56) = &type metadata for Int;
  *(v11 + 64) = &protocol witness table for Int;
  *(v11 + 32) = v6;
  v12 = String.init(format:_:)();
  v14 = v13;
  *(v10 + 56) = &type metadata for String;
  v15 = sub_10008EE84();
  *(v10 + 64) = v15;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100552220;
  if (v4[1])
  {
LABEL_19:
    __break(1u);
    return;
  }

  v17 = *v4;
  *(v16 + 56) = &type metadata for Int;
  *(v16 + 64) = &protocol witness table for Int;
  *(v16 + 32) = v17;
  v18 = String.init(format:_:)();
  *(v10 + 96) = &type metadata for String;
  *(v10 + 104) = v15;
  *(v10 + 72) = v18;
  *(v10 + 80) = v19;
  String.init(format:_:)();

  v20 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView);
  if (v20)
  {
    v21 = v20;
    v22 = String._bridgeToObjectiveC()();

    [v21 setAccessibilityValue:v22];
  }

  else
  {
  }
}

void sub_1002B5610()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField) text];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = String.count.getter();
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView);
  if (!v4)
  {
    goto LABEL_16;
  }

  if (__OFADD__(v3, 1500))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v3 + 1500, 1))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v5 = [v4 viewWithTag:v3 + 1501];
  if (v5)
  {
    v9 = v5;
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_fullEntryImage);
      [v7 setImage:v8];
    }
  }
}

void sub_1002B5750()
{
  v1 = [*(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField) text];
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = String.count.getter();
  }

  else
  {
    v3 = 0;
  }

  if (*(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeMaxLength + 8))
  {
    goto LABEL_21;
  }

  v4 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeMaxLength);
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v3 == 0x8000000000000000 && v4 == -1)
  {
    goto LABEL_20;
  }

  v5 = v3 % v4;
  if (!v5)
  {
    return;
  }

  v6 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView);
  if (!v6)
  {
LABEL_22:
    __break(1u);
    return;
  }

  if (__OFADD__(v5, 1500))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v7 = [v6 viewWithTag:v5 + 1500];
  if (v7)
  {
    v11 = v7;
    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (v8)
    {
      v9 = v8;
      v10 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_blankEntryImage);
      [v9 setImage:v10];
    }
  }
}

void sub_1002B58CC()
{
  v1 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryView);
  if (v1)
  {
    v2 = [v1 subviews];
    sub_10000905C(0, &qword_1006BA410, UIView_ptr);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v3 >> 62)
    {
      goto LABEL_30;
    }

    for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v5 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_blankEntryImage;
      if (i)
      {
        v6 = 0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_27;
            }

            v7 = *(v3 + 8 * v6 + 32);
          }

          v8 = v7;
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            break;
          }

          objc_opt_self();
          v10 = swift_dynamicCastObjCClass();
          if (v10)
          {
            [v10 setImage:*(v0 + v5)];
          }

          ++v6;
          if (v9 == i)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
LABEL_27:
        __break(1u);
      }

      else
      {
LABEL_14:

        v11 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryView);
        if (!v11)
        {
          goto LABEL_36;
        }

        v12 = [v11 subviews];
        v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v13 >> 62)
        {
          v3 = _CocoaArrayWrapper.endIndex.getter();
          if (!v3)
          {
LABEL_32:

            v19 = (v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode);
            *v19 = 0;
            v19[1] = 0;

            v20 = (v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscode);
            *v20 = 0;
            v20[1] = 0;

            v21 = *(v0 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField);
            v22 = String._bridgeToObjectiveC()();
            [v21 setText:v22];

            return;
          }
        }

        else
        {
          v3 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v3)
          {
            goto LABEL_32;
          }
        }

        v14 = 0;
        while (1)
        {
          if ((v13 & 0xC000000000000001) != 0)
          {
            v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v14 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_29;
            }

            v15 = *(v13 + 8 * v14 + 32);
          }

          v16 = v15;
          v17 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          objc_opt_self();
          v18 = swift_dynamicCastObjCClass();
          if (v18)
          {
            [v18 setImage:*(v0 + v5)];
          }

          ++v14;
          if (v17 == v3)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      ;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_1002B5BB4()
{
  v1 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v1 - 8);
  v3 = &v31 - v2;
  v4 = [objc_opt_self() mainBundle];
  v32._object = 0x8000000100582940;
  v5._object = 0x8000000100582920;
  v32._countAndFlagsBits = 0xD00000000000002BLL;
  v5._countAndFlagsBits = 0xD000000000000019;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v32);

  v7 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
  swift_beginAccess();
  sub_100007204(&v0[v7], v3, &unk_1006BBCE0, &unk_1005534C0);
  v8 = sub_10022F104(0xD00000000000001DLL, 0x8000000100582970, v3);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10022E0A8(v8, v10, v12, v14, 0, 0);

  swift_bridgeObjectRelease_n();
  sub_100012DF0(v3, &unk_1006BBCE0, &unk_1005534C0);
  v15 = [v0 headerView];
  v16 = String._bridgeToObjectiveC()();
  [v15 setTitle:v16];

  v17 = [v0 headerView];
  v18 = String._bridgeToObjectiveC()();
  [v17 setDetailText:v18];

  sub_1002B58CC();
  v19 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryView];
  v20 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView];
  *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView] = v19;
  v21 = v19;

  v22 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryViewHCtrConstraint];
  if (!v22)
  {
    __break(1u);
    goto LABEL_9;
  }

  [v22 setConstant:0.0];
  v23 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryViewHCtrConstraint];
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = v23;
  v25 = [v0 view];
  if (!v25)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = v25;
  [v25 bounds];
  v28 = v27;

  [v24 setConstant:v28];
  v29 = [v0 view];
  if (!v29)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v30 = v29;

  [v30 layoutIfNeeded];

  if ((v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect + 32] & 1) == 0)
  {
    sub_1002B6910(*&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect], *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect + 8], *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect + 16], *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect + 24]);
  }
}

void sub_1002B5F28()
{
  v1 = UIAccessibilityAnnouncementNotification;
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v32._object = 0x800000010058D1C0;
  v4._countAndFlagsBits = 0xD00000000000002ELL;
  v4._object = 0x800000010058D190;
  v32._countAndFlagsBits = 0xD000000000000040;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v32);

  v6 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v1, v6);

  v7 = [v0 headerView];
  v8 = [v2 mainBundle];
  v33._object = 0x800000010058D230;
  v9._object = 0x800000010058D210;
  v33._countAndFlagsBits = 0xD00000000000002FLL;
  v9._countAndFlagsBits = 0xD00000000000001DLL;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v33);

  v11 = String._bridgeToObjectiveC()();

  [v7 setTitle:v11];

  v12 = [v0 headerView];
  v13 = [v2 mainBundle];
  v34._object = 0x800000010058D290;
  v14._countAndFlagsBits = 0xD000000000000023;
  v14._object = 0x800000010058D260;
  v34._countAndFlagsBits = 0xD000000000000035;
  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, 0, v13, v15, v34);

  v16 = String._bridgeToObjectiveC()();

  [v12 setDetailText:v16];

  v17 = [v0 headerView];
  v18 = [v17 detailLabel];

  if (!v18)
  {
    __break(1u);
    goto LABEL_7;
  }

  v19 = [objc_opt_self() secondaryLabelColor];
  [v18 setTextColor:v19];

  v20 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryViewHCtrConstraint];
  if (!v20)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v21 = v20;
  v22 = [v0 view];
  if (!v22)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v23 = v22;
  [v22 bounds];
  v25 = v24;

  [v21 setConstant:-v25];
  v26 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryViewHCtrConstraint];
  if (v26)
  {
    [v26 setConstant:0.0];
    v27 = objc_opt_self();
    v28 = swift_allocObject();
    *(v28 + 16) = v0;
    aBlock[4] = sub_1002B8B1C;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100633BE0;
    v29 = _Block_copy(aBlock);
    v30 = v0;

    [v27 animateWithDuration:v29 animations:0.5];
    _Block_release(v29);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1002B635C()
{
  v1 = UIAccessibilityAnnouncementNotification;
  v2 = [objc_opt_self() mainBundle];
  v18._object = 0x800000010058D140;
  v3._object = 0x800000010058D110;
  v18._countAndFlagsBits = 0xD000000000000041;
  v3._countAndFlagsBits = 0xD00000000000002FLL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v18);

  v5 = String._bridgeToObjectiveC()();

  UIAccessibilityPostNotification(v1, v5);

  v6 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryViewHCtrConstraint];
  if (!v6)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v6 setConstant:0.0];
  v7 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryViewHCtrConstraint];
  if (!v7)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = v7;
  v9 = [v0 view];
  if (v9)
  {
    v10 = v9;
    [v9 bounds];
    v12 = v11;

    [v8 setConstant:v12];
    v13 = objc_opt_self();
    v14 = swift_allocObject();
    *(v14 + 16) = v0;
    aBlock[4] = sub_1002B9038;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100633B90;
    v15 = _Block_copy(aBlock);
    v16 = v0;

    [v13 animateWithDuration:v15 animations:0.5];
    _Block_release(v15);
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1002B6594(char *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    [v2 layoutIfNeeded];

    if ((a1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect + 32] & 1) == 0)
    {
      sub_1002B6910(*&a1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect], *&a1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect + 8], *&a1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect + 16], *&a1[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect + 24]);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1002B6604()
{
  v1 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode + 8];
  if (v1 && (v2 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscode + 8]) != 0 && (*&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode] == *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscode] ? (v3 = v1 == v2) : (v3 = 0), v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    sub_1002B7EA0();
  }

  else
  {
    sub_1002B58CC();
    v4 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryView];
    v5 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView];
    *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView] = v4;
    v6 = v4;

    v7 = [v0 headerView];
    v8 = objc_opt_self();
    v9 = [v8 mainBundle];
    v22._object = 0x8000000100582940;
    v10._object = 0x8000000100582920;
    v22._countAndFlagsBits = 0xD00000000000002BLL;
    v10._countAndFlagsBits = 0xD000000000000019;
    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v10, 0, v9, v11, v22);

    v12 = String._bridgeToObjectiveC()();

    [v7 setTitle:v12];

    v13 = [v0 headerView];
    v14 = [v8 mainBundle];
    v23._object = 0x800000010058D0D0;
    v15._countAndFlagsBits = 0xD00000000000001ELL;
    v15._object = 0x800000010058D0B0;
    v23._countAndFlagsBits = 0xD000000000000030;
    v16._countAndFlagsBits = 0;
    v16._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v15, 0, v14, v16, v23);

    v17 = String._bridgeToObjectiveC()();

    [v13 setDetailText:v17];

    v18 = [v0 headerView];
    v19 = [v18 detailLabel];

    if (v19)
    {
      v20 = [objc_opt_self() systemRedColor];
      [v19 setTextColor:v20];

      sub_1002B635C();
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002B6910(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = *&v4[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v4 view];
  [v9 convertRect:v18 toView:{v11, v13, v15, v17}];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  v27 = [objc_opt_self() sharedApplication];
  v28 = [v27 keyWindow];

  if (v28)
  {
    v29 = [v28 rootViewController];

    if (v29)
    {
      v47 = [v29 view];

      if (v47)
      {
        v30 = [v4 view];
        if (!v30)
        {
          __break(1u);
          goto LABEL_15;
        }

        v31 = v30;
        v49.origin.x = v20;
        v49.origin.y = v22;
        v49.size.width = v24;
        v49.size.height = v26;
        [v30 convertPoint:v47 toCoordinateSpace:{0.0, CGRectGetMaxY(v49)}];
        v33 = v32;

        [v47 frame];
        v35 = v34;
        v50.origin.x = a1;
        v50.origin.y = a2;
        v50.size.width = a3;
        v50.size.height = a4;
        v36 = v33 - (v35 - CGRectGetHeight(v50));
        if (v36 > 0.0)
        {
          v37 = [v4 scrollView];
          if (v37)
          {
            v38 = v37;
            [v37 contentOffset];
            v40 = v39;

            v41 = [v4 scrollView];
            if (v41)
            {
              v42 = v41;
              v51.origin.x = a1;
              v51.origin.y = a2;
              v51.size.width = a3;
              v51.size.height = a4;
              CGRectGetHeight(v51);
              [v42 contentSize];
              [v42 setContentSize:?];

              v43 = [v4 scrollView];
              if (v43)
              {
                v44 = v43;
                [v43 setContentOffset:1 animated:{0.0, v36 + v40}];

                v52.origin.x = a1;
                v52.origin.y = a2;
                v52.size.width = a3;
                v52.size.height = a4;
                Height = CGRectGetHeight(v52);

                v46 = &v4[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardHeightScrollViewPadding];
                *v46 = Height;
                *(v46 + 8) = 0;
                return;
              }

LABEL_17:
              __break(1u);
              return;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }
      }
    }
  }
}

id sub_1002B6ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *&v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mediator] = 0;
  v9 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
  v10 = type metadata accessor for FMIPDevice();
  (*(*(v10 - 8) + 56))(&v7[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_primaryItemPart;
  v12 = type metadata accessor for FMIPItem();
  (*(*(v12 - 8) + 56))(&v7[v11], 1, 1, v12);
  v13 = &v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mode];
  *v13 = 0;
  v13[4] = 1;
  v14 = &v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_style];
  *v14 = xmmword_10055C040;
  *(v14 + 2) = 0x3FE0000000000000;
  v15 = String._bridgeToObjectiveC()();
  v16 = objc_opt_self();
  v17 = [v16 imageNamed:v15];

  if (v17)
  {
    v18 = [objc_opt_self() labelColor];
    v19 = [v17 tintedImageWithColor:v18];
  }

  else
  {
    v19 = 0;
  }

  *&v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_blankEntryImage] = v19;
  v20 = String._bridgeToObjectiveC()();
  v21 = [v16 imageNamed:v20];

  if (v21)
  {
    v22 = [objc_opt_self() labelColor];
    v23 = [v21 tintedImageWithColor:v22];
  }

  else
  {
    v23 = 0;
  }

  *&v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_fullEntryImage] = v23;
  static CharacterSet.decimalDigits.getter();
  v24 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField;
  *&v7[v24] = [objc_allocWithZone(UITextField) init];
  v25 = &v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeMaxLength];
  *v25 = 0;
  v25[8] = 1;
  v26 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_entryPlaceholderView;
  *&v7[v26] = [objc_allocWithZone(UIView) init];
  *&v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryView] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryViewHCtrConstraint] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryView] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryViewHCtrConstraint] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeEntryViewDigitSlotSubviewTagBase] = 1500;
  v27 = &v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscode];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardHeightScrollViewPadding];
  *v29 = 0;
  v29[8] = 1;
  v30 = &v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect];
  *v30 = 0u;
  *(v30 + 1) = 0u;
  v30[32] = 1;
  *&v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardWillShowObserver] = 0;
  *&v7[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardWillHideObserver] = 0;
  v31 = String._bridgeToObjectiveC()();

  if (!a4)
  {
    v32 = 0;
    if (a6)
    {
      goto LABEL_9;
    }

LABEL_11:
    v33 = 0;
    goto LABEL_12;
  }

  v32 = String._bridgeToObjectiveC()();

  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_9:
  v33 = String._bridgeToObjectiveC()();

LABEL_12:
  v38.receiver = v7;
  v38.super_class = type metadata accessor for FMDevicePasscodeViewController(0);
  v34 = objc_msgSendSuper2(&v38, "initWithTitle:detailText:symbolName:contentLayout:", v31, v32, v33, a7);

  return v34;
}

id sub_1002B73B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  *&v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mediator] = 0;
  v8 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
  v9 = type metadata accessor for FMIPDevice();
  (*(*(v9 - 8) + 56))(&v6[v8], 1, 1, v9);
  v10 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_primaryItemPart;
  v11 = type metadata accessor for FMIPItem();
  (*(*(v11 - 8) + 56))(&v6[v10], 1, 1, v11);
  v12 = &v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mode];
  *v12 = 0;
  v12[4] = 1;
  v13 = &v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_style];
  *v13 = xmmword_10055C040;
  *(v13 + 2) = 0x3FE0000000000000;
  v14 = String._bridgeToObjectiveC()();
  v15 = objc_opt_self();
  v16 = [v15 imageNamed:v14];

  if (v16)
  {
    v17 = [objc_opt_self() labelColor];
    v18 = [v16 tintedImageWithColor:v17];
  }

  else
  {
    v18 = 0;
  }

  *&v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_blankEntryImage] = v18;
  v19 = String._bridgeToObjectiveC()();
  v20 = [v15 imageNamed:v19];

  if (v20)
  {
    v21 = [objc_opt_self() labelColor];
    v22 = [v20 tintedImageWithColor:v21];
  }

  else
  {
    v22 = 0;
  }

  *&v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_fullEntryImage] = v22;
  static CharacterSet.decimalDigits.getter();
  v23 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField;
  *&v6[v23] = [objc_allocWithZone(UITextField) init];
  v24 = &v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeMaxLength];
  *v24 = 0;
  v24[8] = 1;
  v25 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_entryPlaceholderView;
  *&v6[v25] = [objc_allocWithZone(UIView) init];
  *&v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_currentPasscodeEntryView] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryView] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscodeEntryViewHCtrConstraint] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryView] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscodeEntryViewHCtrConstraint] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_passcodeEntryViewDigitSlotSubviewTagBase] = 1500;
  v26 = &v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_secondPasscode];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardHeightScrollViewPadding];
  *v28 = 0;
  v28[8] = 1;
  v29 = &v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect];
  *v29 = 0u;
  *(v29 + 1) = 0u;
  v29[32] = 1;
  *&v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardWillShowObserver] = 0;
  *&v6[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardWillHideObserver] = 0;
  v30 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v31 = String._bridgeToObjectiveC()();
  }

  else
  {
    v31 = 0;
  }

  v36.receiver = v6;
  v36.super_class = type metadata accessor for FMDevicePasscodeViewController(0);
  v32 = objc_msgSendSuper2(&v36, "initWithTitle:detailText:icon:contentLayout:", v30, v31, a5, a6);

  return v32;
}

id sub_1002B785C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FMDevicePasscodeViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for FMDevicePasscodeViewController(uint64_t a1)
{
  result = qword_1006BA3E8;
  if (!qword_1006BA3E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002B7A7C(uint64_t a1)
{
  sub_100096CC0(319, &qword_1006AFC78, &type metadata accessor for FMIPDevice);
  if (v1 <= 0x3F)
  {
    sub_100096CC0(319, &qword_1006BA400, &type metadata accessor for FMIPItem);
    if (v2 <= 0x3F)
    {
      type metadata accessor for CharacterSet();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

__n128 initializeBufferWithCopyOfBuffer for FMPasscodeViewStyle(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void sub_1002B7C4C(uint64_t a1)
{
  v2 = v1;
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_10004CC50(v12), (v6 & 1) == 0))
  {

    sub_10004CDB8(v12);
LABEL_8:
    v13 = 0u;
    v14 = 0u;
    goto LABEL_9;
  }

  sub_100006004(*(v4 + 56) + 32 * v5, &v13);
  sub_10004CDB8(v12);

  if (!*(&v14 + 1))
  {
LABEL_9:
    sub_100012DF0(&v13, &unk_1006B8740, &unk_100552DA0);
    return;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    v7 = *v12;
    v8 = *&v12[1];
    v9 = *&v12[2];
    v10 = *&v12[3];
    v11 = v2 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect;
    *v11 = v12[0];
    *(v11 + 8) = v8;
    *(v11 + 16) = v9;
    *(v11 + 24) = v10;
    *(v11 + 32) = 0;
    sub_1002B6910(v7, v8, v9, v10);
  }
}

double sub_1002B7D78(uint64_t a1)
{
  v2 = v1;
  v3 = Notification.userInfo.getter();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v4 + 16) || (v5 = sub_10004CC50(v9), (v6 & 1) == 0))
  {

    sub_10004CDB8(v9);
LABEL_8:
    v10 = 0u;
    v11 = 0u;
    goto LABEL_9;
  }

  sub_100006004(*(v4 + 56) + 32 * v5, &v10);
  sub_10004CDB8(v9);

  if (!*(&v11 + 1))
  {
LABEL_9:
    sub_100012DF0(&v10, &unk_1006B8740, &unk_100552DA0);
    goto LABEL_10;
  }

  type metadata accessor for CGRect(0);
  if (swift_dynamicCast())
  {
    sub_1002B8B38();
  }

LABEL_10:
  v7 = v2 + OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_keyboardRect;
  result = 0.0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 1;
  return result;
}

void sub_1002B7EA0()
{
  v1 = sub_10007EBC0(&qword_1006B07D0, qword_100552820);
  __chkstk_darwin(v1 - 8);
  v3 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v99 - v5;
  v7 = sub_10007EBC0(&unk_1006BBCE0, &unk_1005534C0);
  __chkstk_darwin(v7 - 8);
  v9 = &v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v99 - v11;
  __chkstk_darwin(v13);
  v15 = &v99 - v14;
  v16 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mode];
  v17 = v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mode + 4];
  v18 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_mediator];
  v108 = v12;
  if ((v17 & 1) == 0 && v16 == 2)
  {
    if (v18)
    {
      v19 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
      swift_beginAccess();
      sub_100007204(&v0[v19], v15, &unk_1006BBCE0, &unk_1005534C0);
      v20 = type metadata accessor for FMIPDevice();
      v105 = *(v20 - 8);
      v106 = v20;
      v21 = *(v105 + 48);
      v107 = v15;
      if (v21(v15, 1) != 1)
      {
        v101 = type metadata accessor for FMDevicePhoneNumberViewController(0);
        v22 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_primaryItemPart;
        swift_beginAccess();
        sub_100007204(&v0[v22], v6, &qword_1006B07D0, qword_100552820);
        v23 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode + 8];
        v103 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode];
        v104 = v6;
        v24 = objc_opt_self();

        v25 = v18;

        v26 = [v24 mainBundle];
        v110._object = 0x8000000100582840;
        v27._object = 0x8000000100582820;
        v110._countAndFlagsBits = 0xD000000000000031;
        v27._countAndFlagsBits = 0xD00000000000001FLL;
        v28._countAndFlagsBits = 0;
        v28._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v27, 0, v26, v28, v110);

        v29 = [v24 mainBundle];
        v111._object = 0x80000001005828B0;
        v30._countAndFlagsBits = 0xD000000000000029;
        v30._object = 0x8000000100582880;
        v111._countAndFlagsBits = 0xD00000000000003BLL;
        v31._countAndFlagsBits = 0;
        v31._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v111);

        v32 = objc_allocWithZone(v101);
        v102 = v18;

        v33 = String._bridgeToObjectiveC()();

        v34 = String._bridgeToObjectiveC()();

        v35 = [v32 initWithTitle:v33 detailText:v34 icon:0 contentLayout:2];

        *&v35[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_mediator] = v25;
        v36 = v35;

        v37 = &v36[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
        v38 = *&v36[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode];
        v39 = *&v36[OBJC_IVAR____TtC6FindMy27FMPhoneNumberViewController_passcode + 8];
        *v37 = v103;
        *(v37 + 1) = v23;
        sub_100179FB0(v38, v39);

        v40 = v105;
        v41 = v106;
        v101 = *(v105 + 16);
        v43 = v107;
        v42 = v108;
        (v101)(v108, v107, v106);
        v100 = *(v40 + 56);
        v100(v42, 0, 1, v41);
        v44 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_device;
        swift_beginAccess();
        v45 = v36;
        sub_1002B8AAC(v42, &v36[v44]);
        swift_endAccess();
        v46 = OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_primaryItemPart;
        swift_beginAccess();
        v47 = v104;
        sub_100179FC4(v104, &v45[v46]);
        swift_endAccess();
        v48 = &v45[OBJC_IVAR____TtC6FindMy33FMDevicePhoneNumberViewController_mode];
        *v48 = 2;
        v48[4] = 0;

        v103 = v0;
        FMIPDevice.isConsideredAccessory.getter();
        (v101)(v42, v43, v41);
        v100(v42, 0, 1, v41);
        v49 = sub_10022F104(0xD00000000000002ELL, 0x80000001005828F0, v42);
        v51 = v50;
        v53 = v52;
        v55 = v54;

        v56 = sub_10022E0A8(v49, v51, v53, v55, 0, 0);
        v58 = v57;

        swift_bridgeObjectRelease_n();
        sub_100012DF0(v42, &unk_1006BBCE0, &unk_1005534C0);
        sub_100418334(v56, v58);

        sub_100012DF0(v47, &qword_1006B07D0, qword_100552820);
        (*(v40 + 8))(v107, v41);
        v59 = [v103 navigationController];
        if (!v59)
        {
LABEL_7:

          return;
        }

LABEL_6:
        v60 = v59;
        [v59 pushViewController:v45 animated:1];

        goto LABEL_7;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (!v18)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v61 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_device;
  swift_beginAccess();
  sub_100007204(&v0[v61], v9, &unk_1006BBCE0, &unk_1005534C0);
  v62 = type metadata accessor for FMIPDevice();
  v63 = *(v62 - 8);
  if ((*(v63 + 48))(v9, 1, v62) == 1)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  LODWORD(v107) = v16;
  v64 = OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_primaryItemPart;
  swift_beginAccess();
  sub_100007204(&v0[v64], v3, &qword_1006B07D0, qword_100552820);
  if ((v17 & 1) == 0)
  {
    v106 = v3;
    v65 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode + 8];
    v103 = *&v0[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode];
    v66 = objc_allocWithZone(type metadata accessor for FMDeviceEditableMessageViewController(0));
    v67 = v62;
    v68 = v65;
    v104 = *(v63 + 56);
    v105 = v67;
    v104(&v66[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device], 1, 1);
    v69 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart;
    v70 = type metadata accessor for FMIPItem();
    (*(*(v70 - 8) + 56))(&v66[v69], 1, 1, v70);
    v71 = &v66[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
    *v71 = 0;
    v71[4] = 1;
    *&v66[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint] = 0;
    *&v66[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_style] = xmmword_10055C050;
    v72 = &v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
    *v72 = 0;
    v72[1] = 0;
    v73 = &v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber];
    *v73 = 0;
    v73[1] = 0;
    v74 = &v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_style];
    v75 = qword_1006AEB88;
    swift_retain_n();

    if (v75 != -1)
    {
      swift_once();
    }

    v76 = qword_1006D4348;
    v77 = qword_1006D4350;
    *v74 = qword_1006D4348;
    v74[1] = v77;
    v78 = OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView;
    v79 = objc_allocWithZone(type metadata accessor for OBTableView());
    v80 = v76;
    *&v66[v78] = [v79 initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
    v81 = &v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_message];
    *v81 = 0;
    v81[1] = 0;
    *&v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_remainingCharsLabel] = 0;
    v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_hasAdjustedKeyboardHeight] = 0;
    v82 = &v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_originalHeight];
    *v82 = 0;
    v82[8] = 1;
    v83 = &v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_paddingHeight];
    *v83 = 0;
    v83[8] = 1;
    *&v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardMinY] = 0;
    v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_isKeyboardVisible] = 0;
    *&v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillChangeFrameObserver] = 0;
    *&v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_keyboardWillHideObserver] = 0;
    *&v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_nextButton] = 0;
    *&v66[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_mediator] = v18;

    v84 = String._bridgeToObjectiveC()();
    v85 = type metadata accessor for FMEditableMessageViewController();
    v109.receiver = v66;
    v109.super_class = v85;
    v86 = objc_msgSendSuper2(&v109, "initWithTitle:detailText:icon:contentLayout:", v84, 0, 0, 2);

    v87 = &v86[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_passcode];
    *v87 = v103;
    *(v87 + 1) = v68;
    v88 = v86;

    v89 = &v88[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_phoneNumber];
    *v89 = 0;
    *(v89 + 1) = 0;

    v90 = v108;
    v91 = v105;
    (*(v63 + 16))(v108, v9, v105);
    (v104)(v90, 0, 1, v91);
    v92 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_device;
    swift_beginAccess();
    v45 = v88;
    sub_1002B8AAC(v90, &v88[v92]);
    swift_endAccess();
    v93 = OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_primaryItemPart;
    swift_beginAccess();
    v94 = v106;
    sub_100179FC4(v106, &v45[v93]);
    swift_endAccess();
    v95 = &v45[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_mode];
    *v95 = v107;
    v95[4] = 0;
    v96 = [*&v45[OBJC_IVAR____TtC6FindMy31FMEditableMessageViewController_tableView] heightAnchor];
    v97 = [v96 constraintEqualToConstant:1024.0];

    sub_100012DF0(v94, &qword_1006B07D0, qword_100552820);
    (*(v63 + 8))(v9, v91);
    v98 = *&v45[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint];
    *&v45[OBJC_IVAR____TtC6FindMy37FMDeviceEditableMessageViewController_tableViewheightConstraint] = v97;

    v59 = [v0 navigationController];
    if (!v59)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_19:
  __break(1u);
}