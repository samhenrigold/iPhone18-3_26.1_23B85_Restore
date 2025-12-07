char *sub_16E8()
{
  v1 = v0;
  v2 = OBJC_IVAR___MessagesViewController_sessionViewModel;
  sub_18944();
  *&v0[v2] = sub_188F4();
  v3 = OBJC_IVAR___MessagesViewController_handlerManager;
  sub_187C4();
  swift_allocObject();
  *&v0[v3] = sub_187B4();
  v4 = OBJC_IVAR___MessagesViewController_contactsManager;
  *&v1[v4] = [objc_allocWithZone(SMContactsManager) init];
  v5 = OBJC_IVAR___MessagesViewController_transactionID;
  v6 = sub_18604();
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v7 = OBJC_IVAR___MessagesViewController_messageURL;
  v8 = sub_18554();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  *&v1[OBJC_IVAR___MessagesViewController_safetyCacheViewModel] = 0;
  v9 = OBJC_IVAR___MessagesViewController_userType;
  v10 = sub_18B04();
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  *&v1[OBJC_IVAR___MessagesViewController_cancellables] = &_swiftEmptySetSingleton;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for MessagesViewController(0);
  v11 = objc_msgSendSuper2(&v17, "initWithNibName:bundle:", 0, 0);
  *(swift_allocObject() + 16) = v11;
  v12 = v11;

  sub_18794();

  *(swift_allocObject() + 16) = v12;
  v13 = v12;

  sub_18774();

  *(swift_allocObject() + 16) = v13;
  v14 = v13;

  sub_18784();

  *(swift_allocObject() + 16) = v14;
  v15 = v14;

  sub_187A4();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_18764();

  return v15;
}

uint64_t sub_1A74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B0C;

  return sub_4ABC(a1);
}

uint64_t sub_1B0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_18A74();
  v71 = *(v4 - 8);
  v72 = v4;
  v5 = __chkstk_darwin(v4);
  v68 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v70 = v60 - v8;
  __chkstk_darwin(v7);
  v69 = v60 - v9;
  v67 = sub_18B04();
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v66 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_11BB4(&qword_24768, &qword_196F0);
  __chkstk_darwin(v11 - 8);
  v63 = v60 - v12;
  v13 = sub_18604();
  v62 = *(v13 - 8);
  __chkstk_darwin(v13);
  v64 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_18B54();
  v73 = *(v15 - 1);
  v74 = v15;
  __chkstk_darwin(v15);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_18854();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = v60 - v23;
  v26 = v25;
  sub_18914();
  v27 = *(v19 + 16);
  v75 = v24;
  v27(v22, v24, v26);
  v28 = (*(v19 + 88))(v22, v26);
  v29 = v28;
  v30 = enum case for SessionViewModel.InitiatorViewType.unknown(_:);
  if (v28 == enum case for SessionViewModel.InitiatorViewType.unknown(_:))
  {
    sub_18B24();
    v31 = v3;
    v32 = sub_18B44();
    v33 = sub_18E14();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v76 = v71;
      *v34 = 136315394;
      v35 = v31;
      v61 = v29;
      v36 = v35;
      v37 = [v35 description];
      v38 = v30;
      v39 = sub_18C74();
      v72 = v26;
      v41 = v40;

      v42 = v39;
      v30 = v38;
      v43 = sub_10320(v42, v41, &v76);

      *(v34 + 4) = v43;
      v29 = v61;
      *(v34 + 12) = 2080;
      *(v34 + 14) = sub_10320(0xD000000000000029, 0x800000000001B1A0, &v76);
      _os_log_impl(&dword_0, v32, v33, "%s, %s: Cannot display unknown view type!", v34, 0x16u);
      swift_arrayDestroy();

      (*(v73 + 8))(v17, v74);
      (*(v19 + 8))(v75, v72);
      return v29 != v30;
    }

    (*(v73 + 8))(v17, v74);
LABEL_14:
    (*(v19 + 8))(v75, v26);
    return v29 != v30;
  }

  if (v28 == enum case for SessionViewModel.InitiatorViewType.stagedMessage(_:))
  {
    sub_6158();
    goto LABEL_14;
  }

  if (v28 == enum case for SessionViewModel.InitiatorViewType.sessionDetails(_:))
  {
    v61 = v28;
    v44 = OBJC_IVAR___MessagesViewController_safetyCacheViewModel;
    v45 = *(v3 + OBJC_IVAR___MessagesViewController_safetyCacheViewModel);
    if (v45)
    {
      goto LABEL_18;
    }

    v46 = v63;
    sub_18844();
    v47 = v62;
    v74 = *(v62 + 48);
    if (v74(v46, 1, v13) == 1)
    {
      sub_185F4();
      if (v74(v46, 1, v13) != 1)
      {
        sub_16218(v46, &qword_24768, &qword_196F0);
      }
    }

    else
    {
      (*(v47 + 32))(v64, v46, v13);
    }

    (*(v65 + 104))(v66, enum case for UserType.initiator(_:), v67);
    v49 = objc_allocWithZone(sub_186D4());
    v50 = sub_186C4();
    v51 = *(v3 + v44);
    *(v3 + v44) = v50;

    v45 = *(v3 + v44);
    if (v45)
    {
LABEL_18:
      v60[1] = v3;
      v74 = v45;

      v52 = v69;
      sub_18A64();
      v54 = v70;
      v53 = v71;
      v55 = *(v71 + 16);
      v56 = v72;
      v55(v70, v52, v72);
      v55(v68, v54, v56);
      sub_13E74(&qword_24770, &type metadata accessor for InitiatorSessionDetailsView, &protocol conformance descriptor for InitiatorSessionDetailsView);
      v76 = sub_18B84();
      v57 = objc_allocWithZone(sub_11BB4(&qword_24778, &unk_196F8));
      v58 = sub_18B64();
      sub_470C(v58);

      v59 = *(v53 + 8);
      v59(v54, v56);
      v59(v52, v56);
    }

    (*(v19 + 8))(v75, v26);
    v29 = v61;
    return v29 != v30;
  }

  if (v28 == enum case for SessionViewModel.InitiatorViewType.onboarding(_:))
  {
    (*&stru_108.segname[(swift_isaMask & *v3) + 8])();
    goto LABEL_14;
  }

  result = sub_18FB4();
  __break(1u);
  return result;
}

void sub_25DC(char *a1)
{
  v2 = sub_18624();
  __chkstk_darwin(v2 - 8);
  v3 = sub_18C54();
  __chkstk_darwin(v3 - 8);
  v5 = v89 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18B54();
  v91 = *(v6 - 8);
  v92 = v6;
  v7 = __chkstk_darwin(v6);
  v95 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v89[0] = v89 - v10;
  __chkstk_darwin(v9);
  v12 = (v89 - v11);
  v13 = sub_18684();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89[1] = sub_18644();
  v93 = v17;
  v96 = sub_18654();
  v94 = v18;
  sub_18674();
  v19 = sub_18C64();

  v20 = objc_opt_self();
  v21 = [v20 actionWithTitle:v19 style:1 handler:0];

  sub_18694();
  v22 = (*(v14 + 88))(v16, v13);
  if (v22 == enum case for SendValidity.Case.initiatorIneligible(_:))
  {
    sub_18BF4();
    sub_16278(0, &qword_24888, SMSafetyMonitorManager_ptr);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    sub_18614();
    sub_18CA4();
    v25 = sub_18664();
    if (v26)
    {
      v27 = v25;
      v28 = v26;
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      *(v29 + 24) = v28;
      v30 = sub_18C64();

      aBlock[4] = sub_15988;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_32D0;
      aBlock[3] = &unk_20E28;
      v31 = _Block_copy(aBlock);

      v32 = [v20 actionWithTitle:v30 style:0 handler:v31];
      _Block_release(v31);
    }

    else
    {

      v32 = 0;
    }

    goto LABEL_17;
  }

  v32 = 0;
  if (v22 == enum case for SendValidity.Case.noReceiver(_:))
  {
LABEL_17:
    v33 = v21;
    v34 = v94;
    goto LABEL_18;
  }

  v33 = v21;
  v34 = v94;
  if (v22 == enum case for SendValidity.Case.receiverIneligible(_:) || v22 == enum case for SendValidity.Case.groupChat(_:) || v22 == enum case for SendValidity.Case.missingConfig(_:) || v22 == enum case for SendValidity.Case.notReady(_:) || v22 == enum case for SendValidity.Case.differentReceiver(_:) || v22 == enum case for SendValidity.Case.sessionAlreadyActive(_:) || v22 == enum case for SendValidity.Case.invalidETA(_:))
  {
LABEL_18:
    v45 = sub_18C64();

    v46 = sub_18C64();
    v47 = [objc_opt_self() alertControllerWithTitle:v45 message:v46 preferredStyle:1];

    [v47 addAction:v33];
    if (v32)
    {
      [v47 addAction:v32];
    }

    v48 = [objc_opt_self() sharedApplication];
    v49 = [v48 connectedScenes];

    sub_16278(0, &qword_24870, UIScene_ptr);
    sub_158E8();
    v50 = sub_18DE4();

    v21 = sub_3558(v50);

    if (v21)
    {
      objc_opt_self();
      v51 = swift_dynamicCastObjCClass();
      v52 = v51;
      if (v51)
      {
        v53 = [v51 windows];
        sub_16278(0, &qword_24880, UIWindow_ptr);
        v54 = sub_18D74();

        if (v54 >> 62)
        {
          v55 = sub_18F84();
          if (v55)
          {
LABEL_24:
            v56 = __OFSUB__(v55, 1);
            v57 = v55 - 1;
            if (v56)
            {
              __break(1u);
            }

            else if ((v54 & 0xC000000000000001) == 0)
            {
              if ((v57 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v57 < *(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8)))
              {
                v58 = *(v54 + 8 * v57 + 32);
                goto LABEL_29;
              }

              __break(1u);
              return;
            }

            v58 = sub_18F54();
LABEL_29:
            v59 = v58;

            v5 = [v59 rootViewController];

            if (v5)
            {
              v94 = v47;
              a1 = v89[0];
              sub_18B24();
              v60 = v90;

              v12 = sub_18B44();
              v61 = sub_18DF4();

              if (os_log_type_enabled(v12, v61))
              {
                v62 = swift_slowAlloc();
                LODWORD(v93) = v61;
                v63 = v62;
                v95 = swift_slowAlloc();
                aBlock[0] = v95;
                *v63 = 136315650;
                v64 = v60;
                v65 = v32;
                v66 = [v64 description];
                v67 = sub_18C74();
                v90 = v12;
                v68 = v67;
                v70 = v69;

                v32 = v65;
                v71 = sub_10320(v68, v70, aBlock);

                *(v63 + 4) = v71;
                *(v63 + 12) = 2080;
                *(v63 + 14) = sub_10320(0xD00000000000002ELL, 0x800000000001B550, aBlock);
                *(v63 + 22) = 2080;
                v72 = sub_10320(v96, v34, aBlock);

                *(v63 + 24) = v72;
                v73 = v90;
                _os_log_impl(&dword_0, v90, v93, "%s, %s: Presenting failure alert, %s", v63, 0x20u);
                swift_arrayDestroy();

                (*(v91 + 8))(v89[0], v92);
LABEL_38:
                v74 = v94;
                [v5 presentViewController:v94 animated:1 completion:0];

                return;
              }

LABEL_37:

              (*(v91 + 8))(a1, v92);
              goto LABEL_38;
            }

            goto LABEL_41;
          }
        }

        else
        {
          v55 = *(&dword_10 + (v54 & 0xFFFFFFFFFFFFFF8));
          if (v55)
          {
            goto LABEL_24;
          }
        }
      }

      else
      {
      }
    }

    else
    {
      v52 = 0;
    }

LABEL_41:
    v75 = v95;
    sub_18B24();
    v76 = v90;

    v77 = sub_18B44();
    v78 = sub_18E14();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v93 = v32;
      v80 = v79;
      v81 = swift_slowAlloc();
      v94 = v47;
      aBlock[0] = v81;
      *v80 = 136315650;
      v82 = v76;
      v83 = [v82 description];
      v84 = sub_18C74();
      v90 = v33;
      v86 = v85;

      v87 = sub_10320(v84, v86, aBlock);

      *(v80 + 4) = v87;
      *(v80 + 12) = 2080;
      *(v80 + 14) = sub_10320(0xD00000000000002ELL, 0x800000000001B550, aBlock);
      *(v80 + 22) = 2080;
      v88 = sub_10320(v96, v34, aBlock);

      *(v80 + 24) = v88;
      _os_log_impl(&dword_0, v77, v78, "%s, %s: Unable to show failure alert, %s", v80, 0x20u);
      swift_arrayDestroy();

      (*(v91 + 8))(v95, v92);
    }

    else
    {

      (*(v91 + 8))(v75, v92);
    }

    return;
  }

  if (v22 != enum case for SendValidity.Case.valid(_:))
  {
    v32 = 0;
    if (v22 != enum case for SendValidity.Case.generalError(_:) && v22 != enum case for SendValidity.Case.groupReceiverIneligible(_:))
    {
      sub_18FB4();
      __break(1u);
      goto LABEL_37;
    }

    goto LABEL_18;
  }

  sub_18B24();
  v35 = v90;
  v36 = sub_18B44();
  v37 = sub_18E14();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v38 = 136315394;
    v39 = v35;
    v40 = [v39 description];
    v41 = sub_18C74();
    v43 = v42;

    v44 = sub_10320(v41, v43, aBlock);

    *(v38 + 4) = v44;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_10320(0xD00000000000002ELL, 0x800000000001B550, aBlock);
    _os_log_impl(&dword_0, v36, v37, "%s, %s: Failure alert not shown because this is a valid message", v38, 0x16u);
    swift_arrayDestroy();
  }

  (*(v91 + 8))(v12, v92);
}

void sub_32D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_3338(uint64_t a1, uint64_t a2)
{
  v2 = sub_11BB4(&qword_247B8, &qword_19748);
  __chkstk_darwin(v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_18554();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18544();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_16218(v4, &qword_247B8, &qword_19748);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = [objc_opt_self() defaultWorkspace];
  if (v10)
  {
    v12 = v10;
    sub_18524(v11);
    v14 = v13;
    sub_11BFC(&_swiftEmptyArrayStorage);
    isa = sub_18BC4().super.isa;

    [v12 openSensitiveURL:v14 withOptions:isa];
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_3558(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_18EE4();
    v5 = v4;
    v6 = sub_18F34();
    v8 = v7;
    v9 = sub_18EF4();
    sub_159A0(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_159A0(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = sub_18ED4();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1151C(v3, v5, v2 != 0, a1);
  v12 = v11;
  sub_159A0(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_3674(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_372C;

  return sub_11D2C(a1, a2);
}

uint64_t sub_372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3);
}

uint64_t sub_39E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_18DB4();
  v5[7] = sub_18DA4();
  v7 = sub_18D94();

  return _swift_task_switch(sub_3A84, v7, v6);
}

uint64_t sub_3A84()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  *(v0 + 64) = _Block_copy(v2);
  if (v1)
  {
    sub_18C74();
  }

  else
  {
    v3 = 0;
  }

  *(v0 + 72) = v3;
  v4 = *(v0 + 48);
  v5 = *(v0 + 24);
  v6 = *(v0 + 16);
  v7 = v5;
  v8 = v4;
  v9 = swift_task_alloc();
  *(v0 + 80) = v9;
  *v9 = v0;
  v9[1] = sub_3B80;
  v11 = *(v0 + 16);
  v10 = *(v0 + 24);

  return sub_11D2C(v11, v10);
}

uint64_t sub_3B80(char a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 48);
  v8 = *(*v3 + 24);
  v9 = *(*v3 + 16);
  v10 = *v3;

  if (a3)
  {

    v11 = sub_18C64();
  }

  else
  {
    v11 = 0;
  }

  v12 = *(v6 + 64);
  (v12)[2](v12, a1 & 1, v11);

  _Block_release(v12);

  v13 = *(v10 + 8);

  return v13();
}

uint64_t sub_3D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[9] = sub_18DB4();
  v6[10] = sub_18DA4();
  v7 = swift_task_alloc();
  v6[11] = v7;
  *v7 = v6;
  v7[1] = sub_3E0C;

  return sub_13EBC();
}

uint64_t sub_3E0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *v4;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;
  *(v5 + 96) = a1;

  v7 = sub_18D94();

  return _swift_task_switch(sub_3F5C, v7, v6);
}

uint64_t sub_3F5C()
{
  v1 = *(v0 + 96);

  if (v1)
  {
    v2 = *(v0 + 96);
    v4 = *(v0 + 32);
    v3 = *(v0 + 40);
    v5 = *(v0 + 56);
    v6 = *(v0 + 48);
    v7 = v2;
    v5(v2, v4, v3, v6 & 1);
  }

  else
  {
    (*(v0 + 56))(0, 0, 0, 0);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_403C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_11BB4(&qword_24780, &qword_19710);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_161B0(a3, v25 - v10, &qword_24780, &qword_19710);
  v12 = sub_18DD4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_16218(v11, &qword_24780, &qword_19710);
  }

  else
  {
    sub_18DC4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_18D94();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_18CC4() + 32;
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

      sub_16218(a3, &qword_24780, &qword_19710);

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

  sub_16218(a3, &qword_24780, &qword_19710);
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

void sub_44B4(uint64_t a1, uint64_t a2, NSString a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    a3 = sub_18C64();
  }

  v7 = a3;
  (*(a5 + 16))(a5, a1);
}

uint64_t sub_4530(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_11BB4(&qword_247B8, &qword_19748);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v19 - v10;
  v12 = *sub_158A4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_11BB4(&qword_24868, &qword_197F0);
    v13 = swift_allocError();
    *v14 = a3;
    v15 = a3;

    return _swift_continuation_throwingResumeWithError(v12, v13);
  }

  else
  {
    if (a2)
    {
      sub_18534();
      v16 = sub_18554();
      (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    }

    else
    {
      v17 = sub_18554();
      (*(*(v17 - 8) + 56))(v9, 1, 1, v17);
    }

    sub_16084(v9, v11);
    sub_16084(v11, *(*(v12 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_470C(void *a1)
{
  v3 = sub_18B94();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18BB4();
  v7 = *(v17 - 8);
  __chkstk_darwin(v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_16278(0, &qword_24900, OS_dispatch_queue_ptr);
  v10 = sub_18E44();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_16300;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_49D8;
  aBlock[3] = &unk_21030;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;

  sub_18BA4();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_13E74(&qword_24908, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_11BB4(&qword_24910, &unk_198B0);
  sub_163C8();
  sub_18EC4();
  sub_18E54();
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_49D8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_4A1C()
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v0 = objc_allocWithZone(sub_18AB4());
  v1 = sub_18AA4();
  sub_470C(v1);
}

uint64_t sub_4ABC(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = sub_184B4();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  sub_11BB4(&qword_24850, &qword_197E0);
  v2[24] = swift_task_alloc();
  sub_11BB4(&qword_247B8, &qword_19748);
  v2[25] = swift_task_alloc();
  v4 = sub_18554();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v5 = sub_18B54();
  v2[29] = v5;
  v2[30] = *(v5 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v2[34] = swift_task_alloc();
  v6 = sub_18504();
  v2[35] = v6;
  v2[36] = *(v6 - 8);
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  sub_18DB4();
  v2[40] = sub_18DA4();
  v8 = sub_18D94();
  v2[41] = v8;
  v2[42] = v7;

  return _swift_task_switch(sub_4D7C, v8, v7);
}

uint64_t sub_4D7C()
{
  v154 = v0;
  v1 = *(v0 + 304);
  v2 = *(v0 + 312);
  v3 = *(v0 + 280);
  v4 = *(v0 + 288);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v7 = [v5 outputToURLComponents];
  sub_184D4();

  sub_18B24();
  (*(v4 + 16))(v1, v2, v3);
  v8 = v6;
  v9 = v5;
  v10 = sub_18B44();
  v11 = sub_18E34();

  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 304);
  v15 = *(v0 + 280);
  v14 = *(v0 + 288);
  v16 = *(v0 + 272);
  v18 = *(v0 + 232);
  v17 = *(v0 + 240);
  if (v12)
  {
    v149 = *(v0 + 272);
    v19 = *(v0 + 152);
    loga = v10;
    v132 = *(v0 + 144);
    v145 = *(v0 + 232);
    v20 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *v20 = 136315906;
    v21 = v19;
    v135 = v11;
    v22 = [v21 description];
    v23 = v13;
    v24 = sub_18C74();
    v26 = v25;

    v27 = sub_10320(v24, v26, &v153);

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_10320(0x73656D28646E6573, 0xEE00293A65676173, &v153);
    *(v20 + 22) = 2112;
    *(v20 + 24) = v132;
    *v130 = v132;
    *(v20 + 32) = 2080;
    sub_13E74(&qword_24860, &type metadata accessor for URLComponents, &protocol conformance descriptor for URLComponents);
    v28 = v132;
    v29 = sub_18FA4();
    v31 = v30;
    v32 = *(v14 + 8);
    v32(v23, v15);
    v33 = sub_10320(v29, v31, &v153);
    v34 = v32;

    *(v20 + 34) = v33;
    _os_log_impl(&dword_0, loga, v135, "%s, %s: smSessionStartMessage: %@ urlComponents: %s", v20, 0x2Au);
    sub_16218(v130, &qword_24788, &qword_19728);

    swift_arrayDestroy();

    v35 = *(v17 + 8);
    v35(v149, v145);
  }

  else
  {

    v34 = *(v14 + 8);
    v34(v13, v15);
    v35 = *(v17 + 8);
    v35(v16, v18);
  }

  *(v0 + 344) = v34;
  v36 = [*(v0 + 152) activeConversation];
  *(v0 + 352) = v36;
  if (!v36)
  {
    v60 = *(v0 + 152);

    sub_18B24();
    v61 = v60;
    v62 = sub_18B44();
    v63 = sub_18E24();

    v64 = os_log_type_enabled(v62, v63);
    v65 = *(v0 + 312);
    v66 = *(v0 + 280);
    v67 = *(v0 + 248);
    v142 = *(v0 + 232);
    if (v64)
    {
      logb = *(v0 + 312);
      v68 = *(v0 + 152);
      v69 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *v69 = 136315394;
      v134 = v67;
      v70 = v68;
      v71 = [v70 description];
      v131 = v66;
      v72 = sub_18C74();
      v151 = v34;
      v74 = v73;

      v75 = sub_10320(v72, v74, &v153);

      *(v69 + 4) = v75;
      *(v69 + 12) = 2080;
      *(v69 + 14) = sub_10320(0x73656D28646E6573, 0xEE00293A65676173, &v153);
      _os_log_impl(&dword_0, v62, v63, "%s, %s: no active conversation ⇒ failed to send message", v69, 0x16u);
      swift_arrayDestroy();

      v35(v134, v142);
      v151(logb, v131);
    }

    else
    {

      v35(v67, v142);
      v34(v65, v66);
    }

LABEL_15:

    v88 = *(v0 + 8);

    return v88();
  }

  v37 = v36;
  v150 = v34;
  v39 = *(v0 + 208);
  v38 = *(v0 + 216);
  v40 = *(v0 + 200);
  sub_184F4();
  if ((*(v38 + 48))(v40, 1, v39) == 1)
  {
    v41 = *(v0 + 200);
    v42 = *(v0 + 152);

    sub_16218(v41, &qword_247B8, &qword_19748);
    sub_18B24();
    v43 = v42;
    v44 = sub_18B44();
    v45 = sub_18E24();

    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 312);
    v48 = *(v0 + 280);
    v49 = *(v0 + 256);
    log = *(v0 + 232);
    if (v46)
    {
      v136 = *(v0 + 312);
      v50 = *(v0 + 152);
      v146 = v35;
      v51 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      *v51 = 136315394;
      v133 = v48;
      v52 = v50;
      v53 = [v52 description];
      v129 = v49;
      v54 = sub_18C74();
      v56 = v55;

      v57 = sub_10320(v54, v56, &v153);

      *(v51 + 4) = v57;
      *(v51 + 12) = 2080;
      *(v51 + 14) = sub_10320(0x73656D28646E6573, 0xEE00293A65676173, &v153);
      swift_arrayDestroy();

      v146(v129, log);
      v58 = v133;
      v59 = v136;
    }

    else
    {

      v35(v49, log);
      v59 = v47;
      v58 = v48;
    }

    v150(v59, v58);
    goto LABEL_15;
  }

  v77 = *(v0 + 280);
  v76 = *(v0 + 288);
  v78 = *(v0 + 192);
  (*(*(v0 + 216) + 32))(*(v0 + 224), *(v0 + 200), *(v0 + 208));
  v79 = [objc_allocWithZone(MSSession) init];
  v80 = [objc_allocWithZone(MSMessage) initWithSession:v79];
  *(v0 + 360) = v80;

  v81 = v80;
  v82 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  *(v0 + 368) = v82;
  v83 = [v80 summaryText];
  [v82 setCaption:v83];

  v84 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v82];
  [v81 setLayout:v84];

  sub_18524(v85);
  v87 = v86;
  [v81 setURL:v86];

  sub_184E4();
  if ((*(v76 + 48))(v78, 1, v77) == 1)
  {
    sub_16218(*(v0 + 192), &qword_24850, &qword_197E0);
  }

  else
  {
    (*(*(v0 + 288) + 32))(*(v0 + 296), *(v0 + 192), *(v0 + 280));
    v90 = sub_184C4();
    if (v90)
    {
      v91 = v90;
      v137 = v81;
      v143 = v37;
      v147 = v35;
      v92 = *(v90 + 16);
      if (v92)
      {
        v93 = 0;
        v94 = 0x547972616D6D7573;
        v95 = *(v0 + 168);
        v96 = (v95 + 8);
        while (1)
        {
          if (v93 >= *(v91 + 16))
          {
            __break(1u);
            return _swift_continuation_await(v90);
          }

          (*(v95 + 16))(*(v0 + 176), v91 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v93, *(v0 + 160));
          if (sub_18494() == v94 && v97 == 0xEB00000000747865)
          {
            break;
          }

          v99 = v94;
          v100 = sub_18FC4();

          if (v100)
          {
            goto LABEL_32;
          }

          ++v93;
          v90 = (*v96)(*(v0 + 176), *(v0 + 160));
          v94 = v99;
          if (v92 == v93)
          {
            goto LABEL_28;
          }
        }

LABEL_32:
        v102 = *(v0 + 296);
        v103 = *(v0 + 280);
        v104 = *(v0 + 176);
        v105 = *(v0 + 184);
        v107 = *(v0 + 160);
        v106 = *(v0 + 168);

        (*(v106 + 32))(v105, v104, v107);
        sub_184A4();
        v109 = v108;
        (*v96)(v105, v107);
        v150(v102, v103);
        if (!v109)
        {
          goto LABEL_34;
        }

        v101 = sub_18C64();
      }

      else
      {
LABEL_28:
        v150(*(v0 + 296), *(v0 + 280));

LABEL_34:
        v101 = 0;
      }

      v37 = v143;
      v35 = v147;
      v81 = v137;
      goto LABEL_36;
    }

    v150(*(v0 + 296), *(v0 + 280));
  }

  v101 = 0;
LABEL_36:
  v110 = *(v0 + 152);
  [v81 setSummaryText:v101];

  [v81 setRequiresValidation:1];
  sub_18B24();
  v111 = v110;
  v112 = v81;
  v113 = sub_18B44();
  v114 = sub_18E34();

  v115 = os_log_type_enabled(v113, v114);
  v116 = *(v0 + 264);
  v117 = *(v0 + 232);
  if (v115)
  {
    v152 = *(v0 + 264);
    v118 = *(v0 + 152);
    v119 = swift_slowAlloc();
    v144 = v37;
    v120 = swift_slowAlloc();
    v153 = swift_slowAlloc();
    *v119 = 136315906;
    logc = v117;
    v121 = v118;
    v122 = [v121 description];
    v148 = v35;
    v123 = sub_18C74();
    v125 = v124;

    v126 = sub_10320(v123, v125, &v153);

    *(v119 + 4) = v126;
    *(v119 + 12) = 2080;
    *(v119 + 14) = sub_10320(0x73656D28646E6573, 0xEE00293A65676173, &v153);
    *(v119 + 22) = 2112;
    *(v119 + 24) = v112;
    *v120 = v112;
    *(v119 + 32) = 2112;
    v127 = [v112 session];
    *(v119 + 34) = v127;
    v120[1] = v127;
    _os_log_impl(&dword_0, v113, v114, "%s, %s: sending %@ with session %@", v119, 0x2Au);
    sub_11BB4(&qword_24788, &qword_19728);
    swift_arrayDestroy();
    v37 = v144;

    swift_arrayDestroy();

    v148(v152, logc);
  }

  else
  {

    v35(v116, v117);
  }

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_5CB4;
  v128 = swift_continuation_init();
  *(v0 + 136) = sub_11BB4(&qword_24858, &qword_197E8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_60AC;
  *(v0 + 104) = &unk_20DD8;
  *(v0 + 112) = v128;
  [v37 sendMessage:v112 completionHandler:v0 + 80];
  v90 = v0 + 16;

  return _swift_continuation_await(v90);
}

uint64_t sub_5CB4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 376) = v2;
  v3 = *(v1 + 336);
  v4 = *(v1 + 328);
  if (v2)
  {
    v5 = sub_5F40;
  }

  else
  {
    v5 = sub_5DE4;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_5DE4()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v10 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(v0 + 280);
  v6 = *(v0 + 216);
  v5 = *(v0 + 224);
  v7 = *(v0 + 208);

  (*(v6 + 8))(v5, v7);
  v10(v3, v4);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_5F40()
{
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[39];
  v11 = v0[43];
  v10 = v0[35];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];

  swift_willThrow();

  (*(v5 + 8))(v6, v7);
  v11(v4, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_60AC(uint64_t a1, void *a2)
{
  v3 = *sub_158A4((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_11BB4(&qword_24868, &qword_197F0);
    v4 = swift_allocError();
    *v5 = a2;
    v6 = a2;

    return _swift_continuation_throwingResumeWithError(v3, v4);
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

void sub_6158()
{
  v1 = v0;
  v2 = sub_18B54();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v41 - v7;
  v9 = [v1 activeConversation];
  if (v9)
  {
    v10 = v9;
    isa = SessionViewModel.startSessionMSMessage()().super.isa;
    [v10 insertMessage:isa completionHandler:0];
    sub_18B24();
    v12 = v1;
    v13 = isa;
    v14 = sub_18B44();
    v15 = sub_18E34();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v42 = v15;
      v17 = v16;
      v18 = swift_slowAlloc();
      v44 = v2;
      v41 = v18;
      v43 = swift_slowAlloc();
      v46 = v43;
      *v17 = 136315650;
      v19 = v12;
      v45 = v3;
      v20 = v19;
      v21 = [v19 description];
      v22 = v13;
      v23 = sub_18C74();
      v25 = v24;

      v26 = v23;
      v13 = v22;
      v27 = sub_10320(v26, v25, &v46);

      *(v17 + 4) = v27;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_10320(0xD000000000000015, 0x800000000001B850, &v46);
      *(v17 + 22) = 2112;
      v28 = [(objc_class *)v22 session];
      *(v17 + 24) = v28;
      v29 = v41;
      *v41 = v28;
      sub_16218(v29, &qword_24788, &qword_19728);

      swift_arrayDestroy();

      (*(v45 + 8))(v8, v44);
    }

    else
    {

      (*(v3 + 8))(v8, v2);
    }

    [v12 dismiss];
  }

  else
  {
    sub_18B24();
    v30 = v1;
    v31 = sub_18B44();
    v32 = sub_18E24();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *v33 = 136315650;
      v34 = v30;
      v45 = v3;
      v35 = v34;
      v36 = [v34 description];
      v37 = sub_18C74();
      v39 = v38;

      v40 = sub_10320(v37, v39, &v46);

      *(v33 + 4) = v40;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_10320(0xD000000000000015, 0x800000000001B850, &v46);
      *(v33 + 22) = 2080;
      *(v33 + 24) = sub_10320(0xD000000000000015, 0x800000000001B850, &v46);
      _os_log_impl(&dword_0, v31, v32, "%s, %s: No active conversation in %s.", v33, 0x20u);
      swift_arrayDestroy();

      (*(v45 + 8))(v6, v2);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }
}

void sub_664C(uint64_t a1, uint64_t a2)
{
  v3 = sub_18B54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    sub_18B24();
    v9 = v8;
    swift_errorRetain();
    v10 = sub_18B44();
    v11 = sub_18E34();

    if (os_log_type_enabled(v10, v11))
    {
      v35 = v11;
      v12 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v37 = v34;
      *v12 = 136315906;
      v36 = v9;
      v13 = v9;
      v14 = [v13 description];
      v15 = sub_18C74();
      v17 = v16;

      v18 = sub_10320(v15, v17, &v37);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_10320(0xD000000000000019, 0x800000000001B870, &v37);
      *(v12 + 22) = 2080;
      v19 = sub_186E4();
      v21 = sub_10320(v19, v20, &v37);

      *(v12 + 24) = v21;
      *(v12 + 32) = 2080;
      if (a1)
      {
        swift_getErrorValue();
        v22 = sub_18FD4();
        v24 = v23;
      }

      else
      {
        v24 = 0xE300000000000000;
        v22 = 7104878;
      }

      v25 = sub_10320(v22, v24, &v37);

      *(v12 + 34) = v25;
      _os_log_impl(&dword_0, v10, v35, "%s, %s: buttonTitle: %s, End session error: %s", v12, 0x2Au);
      swift_arrayDestroy();

      (*(v4 + 8))(v6, v3);
      v9 = v36;
      if (!a1)
      {
        goto LABEL_12;
      }
    }

    else
    {

      (*(v4 + 8))(v6, v3);
      if (!a1)
      {
LABEL_12:

        return;
      }
    }

    v26 = objc_opt_self();
    swift_errorRetain();
    v27 = [v26 standardUserDefaults];
    sub_18724();
    v28 = sub_18C64();

    v29 = [v27 BOOLForKey:v28];

    if (v29)
    {
      sub_186F4();
      v30 = sub_18C64();

      swift_getErrorValue();
      sub_18FD4();
      v31 = sub_18C64();

      sub_186E4();
      v32 = sub_18C64();

      [v9 _presentAlertWithTitle:v30 message:v31 buttonTitle:v32 completion:0];
    }

    else
    {
    }

    goto LABEL_12;
  }
}

uint64_t sub_6A6C()
{
  v1 = sub_18B54();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B24();
  v5 = v0;
  v6 = sub_18B44();
  v7 = sub_18E34();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v8 = 136315394;
    v9 = v5;
    v10 = [v9 description];
    v11 = sub_18C74();
    v18 = v1;
    v13 = v12;

    v14 = sub_10320(v11, v13, &v20);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_10320(0xD00000000000001DLL, 0x800000000001B510, &v20);
    _os_log_impl(&dword_0, v6, v7, "%s, %s: User requested safe to trigger prompt, dismissing", v8, 0x16u);
    swift_arrayDestroy();

    (*(v2 + 8))(v4, v18);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  *(swift_allocObject() + 16) = v5;
  v15 = v5;
  sub_188D4();
}

void sub_6CF0(uint64_t a1, void *a2)
{
  v4 = sub_18B54();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    sub_18B24();
    swift_errorRetain();
    v8 = a2;
    v9 = sub_18B44();
    v10 = sub_18E14();

    v11 = os_log_type_enabled(v9, v10);
    v31 = v8;
    if (v11)
    {
      v12 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32 = v30;
      *v12 = 136315650;
      v13 = v8;
      HIDWORD(v29) = v10;
      v14 = v13;
      v15 = [v13 description];
      v16 = sub_18C74();
      v18 = v17;

      v19 = sub_10320(v16, v18, &v32);

      *(v12 + 4) = v19;
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_10320(0xD00000000000001DLL, 0x800000000001B510, &v32);
      *(v12 + 22) = 2080;
      swift_getErrorValue();
      v20 = sub_18FD4();
      v22 = sub_10320(v20, v21, &v32);

      *(v12 + 24) = v22;
      _os_log_impl(&dword_0, v9, BYTE4(v29), "%s, %s: Continue session error, %s", v12, 0x20u);
      swift_arrayDestroy();
    }

    (*(v5 + 8))(v7, v4);
    v23 = [objc_opt_self() standardUserDefaults];
    sub_18724();
    v24 = sub_18C64();

    v25 = [v23 BOOLForKey:v24];

    if (v25)
    {
      sub_18714();
      v26 = sub_18C64();

      swift_getErrorValue();
      sub_18FD4();
      v27 = sub_18C64();

      sub_186E4();
      v28 = sub_18C64();

      [v31 _presentAlertWithTitle:v26 message:v27 buttonTitle:v28 completion:0];
    }

    else
    {
    }
  }
}

unint64_t *sub_707C(uint64_t a1)
{
  v3 = sub_18B54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B24();
  v7 = v1;

  v8 = sub_18B44();
  v9 = sub_18E34();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37 = v36;
    *v10 = 136315650;
    v11 = v7;
    v12 = [v11 description];
    v13 = sub_18C74();
    v35 = v3;
    v15 = v14;

    v16 = sub_10320(v13, v15, &v37);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10320(0xD000000000000017, 0x800000000001B4F0, &v37);
    *(v10 + 22) = 2080;
    v17 = sub_18D84();
    v19 = sub_10320(v17, v18, &v37);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_0, v8, v9, "%s, %s: Recepient address before canonicalization, %s", v10, 0x20u);
    swift_arrayDestroy();

    (*(v4 + 8))(v6, v35);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v20 = *(a1 + 16);
  v21 = &_swiftEmptyArrayStorage;
  if (v20)
  {
    v37 = &_swiftEmptyArrayStorage;
    sub_109F8(0, v20, 0);
    v21 = v37;
    v22 = objc_opt_self();
    v23 = (a1 + 40);
    do
    {
      v24 = *(v23 - 1);
      v25 = *v23;

      v26 = sub_18C64();
      v27 = [v22 canonicalIDSAddressForAddress:v26];

      if (v27)
      {
        v24 = sub_18C74();
        v29 = v28;

        v25 = v29;
      }

      v37 = v21;
      v31 = v21[2];
      v30 = v21[3];
      if (v31 >= v30 >> 1)
      {
        sub_109F8((v30 > 1), v31 + 1, 1);
        v21 = v37;
      }

      v21[2] = v31 + 1;
      v32 = &v21[2 * v31];
      v32[4] = v24;
      v32[5] = v25;
      v23 += 2;
      --v20;
    }

    while (v20);
  }

  return v21;
}

id sub_73EC(void *a1)
{
  v3 = sub_18B54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B34();
  v7 = v1;
  v8 = sub_18B44();
  v9 = sub_18DF4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = v58;
    *v10 = 136315394;
    v11 = v7;
    v12 = a1;
    v13 = [v11 description];
    v14 = sub_18C74();
    v56 = v4;
    v57 = v3;
    v15 = v14;
    v17 = v16;

    a1 = v12;
    v18 = sub_10320(v15, v17, &v59);

    *(v10 + 4) = v18;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_10320(0xD000000000000020, 0x800000000001B680, &v59);
    _os_log_impl(&dword_0, v8, v9, "%s, %s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v56 + 8))(v6, v57);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  sub_A910();
  [v7 addChildViewController:a1];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_19;
  }

  v20 = result;
  result = [v7 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v21 = result;
  [result bounds];
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;

  [v20 setFrame:{v23, v25, v27, v29}];
  result = [v7 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = result;
  result = [a1 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v31 = result;
  [v30 addSubview:result];

  result = [a1 view];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v32 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints:0];

  sub_11BB4(&qword_248A8, &qword_19858);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_196C0;
  result = [a1 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v34 = result;
  v35 = [result leftAnchor];

  result = [v7 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v36 = result;
  v37 = [result leftAnchor];

  v38 = [v35 constraintEqualToAnchor:v37];
  *(v33 + 32) = v38;
  result = [a1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v39 = result;
  v40 = [result rightAnchor];

  result = [v7 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v41 = result;
  v42 = [result rightAnchor];

  v43 = [v40 constraintEqualToAnchor:v42];
  *(v33 + 40) = v43;
  result = [a1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v44 = result;
  v45 = [result topAnchor];

  result = [v7 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v46 = result;
  v47 = [result topAnchor];

  v48 = [v45 constraintEqualToAnchor:v47];
  *(v33 + 48) = v48;
  result = [a1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v49 = result;
  v50 = [result bottomAnchor];

  result = [v7 view];
  if (result)
  {
    v51 = result;
    v52 = objc_opt_self();
    v53 = [v51 bottomAnchor];

    v54 = [v50 constraintEqualToAnchor:v53];
    *(v33 + 56) = v54;
    sub_16278(0, &qword_248B0, NSLayoutConstraint_ptr);
    isa = sub_18D64().super.isa;

    [v52 activateConstraints:isa];

    [a1 didMoveToParentViewController:v7];
    return [v7 requestResize];
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_7AA4(char *a1)
{
  v112 = a1;
  v2 = sub_18554();
  v110 = *(v2 - 8);
  v111 = v2;
  v3 = __chkstk_darwin(v2);
  v105 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v108 = &v103 - v5;
  v6 = sub_18B54();
  v7 = *(v6 - 8);
  v113 = v6;
  v114 = v7;
  v8 = __chkstk_darwin(v6);
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v106 = (&v103 - v12);
  v13 = __chkstk_darwin(v11);
  v109 = &v103 - v14;
  __chkstk_darwin(v13);
  v107 = &v103 - v15;
  v16 = sub_11BB4(&qword_24798, &qword_19738);
  __chkstk_darwin(v16 - 8);
  v18 = &v103 - v17;
  v19 = sub_18B04();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin(v19);
  v23 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v25 = &v103 - v24;
  v26 = OBJC_IVAR___MessagesViewController_userType;
  swift_beginAccess();
  v27 = v1 + v26;
  v28 = v19;
  v29 = v20;
  sub_161B0(v27, v18, &qword_24798, &qword_19738);
  if ((v20[6])(v18, 1, v28) != 1)
  {
    (v20[4])(v25, v18, v28);
    v41 = v112;
    v42 = sub_A114(v112);
    if (v42)
    {
      v43 = v42;
      sub_73EC(v42);
      (v20[2])(v23, v25, v28);
      v44 = v20[11](v23, v28);
      if (v44 == enum case for UserType.initiator(_:))
      {
        v45 = v107;
        sub_18B24();
        v47 = v110;
        v46 = v111;
        (*(v110 + 16))(v108, v41, v111);
        v48 = v1;
        v49 = sub_18B44();
        v50 = sub_18E34();

        LODWORD(v106) = v50;
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v112 = v25;
          v52 = v51;
          v53 = swift_slowAlloc();
          v109 = v28;
          v105 = v53;
          v115 = v53;
          *v52 = 136315650;
          v54 = v48;
          v104 = v49;
          v55 = v54;
          v56 = [v54 description];
          v57 = v46;
          v58 = sub_18C74();
          v59 = v47;
          v61 = v60;

          v62 = sub_10320(v58, v61, &v115);

          *(v52 + 4) = v62;
          *(v52 + 12) = 2080;
          *(v52 + 14) = sub_10320(0xD000000000000025, 0x800000000001B6B0, &v115);
          *(v52 + 22) = 2080;
          sub_13E74(&qword_24838, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v63 = v108;
          v64 = sub_18FA4();
          v66 = v65;
          (*(v59 + 8))(v63, v57);
          v67 = sub_10320(v64, v66, &v115);

          *(v52 + 24) = v67;
          v68 = v104;
          _os_log_impl(&dword_0, v104, v106, "%s, %s: Presenting transcript for url: %s", v52, 0x20u);
          swift_arrayDestroy();

          (*(v114 + 8))(v107, v113);
          return v29[1](v112, v109);
        }

        (*(v47 + 8))(v108, v46);
        (*(v114 + 8))(v45, v113);
      }

      else
      {
        v82 = v110;
        v81 = v111;
        if (v44 != enum case for UserType.receiver(_:))
        {
          result = sub_18FB4();
          __break(1u);
          return result;
        }

        sub_18B14();
        v83 = v105;
        (*(v82 + 16))(v105, v41, v81);
        v84 = v1;
        v85 = sub_18B44();
        v86 = v82;
        v87 = sub_18E34();

        if (os_log_type_enabled(v85, v87))
        {
          v88 = swift_slowAlloc();
          v112 = v25;
          v89 = v88;
          v107 = swift_slowAlloc();
          v108 = v29;
          v115 = v107;
          *v89 = 136315650;
          v90 = v84;
          v106 = v85;
          v91 = v90;
          v92 = [v90 description];
          v93 = v81;
          v94 = sub_18C74();
          LODWORD(v104) = v87;
          v96 = v95;

          v97 = sub_10320(v94, v96, &v115);

          *(v89 + 4) = v97;
          *(v89 + 12) = 2080;
          *(v89 + 14) = sub_10320(0xD000000000000025, 0x800000000001B6B0, &v115);
          *(v89 + 22) = 2080;
          sub_13E74(&qword_24838, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v98 = sub_18FA4();
          v100 = v99;
          (*(v86 + 8))(v83, v93);
          v101 = sub_10320(v98, v100, &v115);

          *(v89 + 24) = v101;
          v102 = v106;
          _os_log_impl(&dword_0, v106, v104, "%s, %s: Presenting transcript for url: %s", v89, 0x20u);
          swift_arrayDestroy();

          (*(v114 + 8))(v109, v113);
          return (*(v108 + 1))(v112, v28);
        }

        (*(v86 + 8))(v83, v81);
        (*(v114 + 8))(v109, v113);
      }
    }

    else
    {
      v69 = v106;
      sub_18B14();
      v70 = v1;
      v71 = sub_18B44();
      v72 = sub_18E14();

      if (os_log_type_enabled(v71, v72))
      {
        v73 = swift_slowAlloc();
        v112 = v25;
        v74 = v73;
        v115 = swift_slowAlloc();
        *v74 = 136315394;
        v75 = v70;
        v76 = [v75 description];
        v77 = sub_18C74();
        v109 = v28;
        v79 = v78;

        v80 = sub_10320(v77, v79, &v115);

        *(v74 + 4) = v80;
        *(v74 + 12) = 2080;
        *(v74 + 14) = sub_10320(0xD000000000000025, 0x800000000001B6B0, &v115);
        _os_log_impl(&dword_0, v71, v72, "%s, %s: Unable to present transcript VC because of invalid url", v74, 0x16u);
        swift_arrayDestroy();

        (*(v114 + 8))(v69, v113);
        return v29[1](v112, v109);
      }

      (*(v114 + 8))(v69, v113);
    }

    return v29[1](v25, v28);
  }

  sub_16218(v18, &qword_24798, &qword_19738);
  sub_18B14();
  v30 = v1;
  v31 = sub_18B44();
  v32 = sub_18E14();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v30;
    v35 = [v34 description];
    v36 = sub_18C74();
    v38 = v37;

    v39 = sub_10320(v36, v38, &v115);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_10320(0xD000000000000025, 0x800000000001B6B0, &v115);
    _os_log_impl(&dword_0, v31, v32, "%s, %s: userType is not initialized", v33, 0x16u);
    swift_arrayDestroy();
  }

  return (*(v114 + 8))(v10, v113);
}

uint64_t sub_8674@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v232 = a1;
  v233 = a2;
  v219 = sub_187F4();
  v218 = *(v219 - 1);
  __chkstk_darwin(v219);
  v220 = v204 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18554();
  v230 = *(v4 - 8);
  v231 = v4;
  v5 = __chkstk_darwin(v4);
  v224 = v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v213 = v204 - v8;
  __chkstk_darwin(v7);
  v210 = v204 - v9;
  v10 = sub_18B54();
  v234 = *(v10 - 8);
  v235 = v10;
  v11 = __chkstk_darwin(v10);
  v13 = v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v225 = v204 - v15;
  v16 = __chkstk_darwin(v14);
  v216 = v204 - v17;
  v18 = __chkstk_darwin(v16);
  v229 = v204 - v19;
  v20 = __chkstk_darwin(v18);
  v217 = v204 - v21;
  __chkstk_darwin(v20);
  v212 = v204 - v22;
  v228 = sub_11BB4(&qword_24790, &qword_19730);
  v23 = __chkstk_darwin(v228);
  v211 = v204 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v222 = v204 - v25;
  v26 = sub_11BB4(&qword_24798, &qword_19738);
  v27 = __chkstk_darwin(v26 - 8);
  v209 = v204 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v214 = v204 - v30;
  v31 = __chkstk_darwin(v29);
  v221 = v204 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = v204 - v34;
  __chkstk_darwin(v33);
  v37 = v204 - v36;
  v38 = sub_18B04();
  v39 = *(v38 - 8);
  v40 = __chkstk_darwin(v38);
  v223 = v204 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v43 = v204 - v42;
  v44 = OBJC_IVAR___MessagesViewController_userType;
  swift_beginAccess();
  v226 = v44;
  sub_161B0(&v2[v44], v37, &qword_24798, &qword_19738);
  v227 = *(v39 + 6);
  if (v227(v37, 1, v38) == 1)
  {
    sub_16218(v37, &qword_24798, &qword_19738);
    sub_18B14();
    v45 = v2;
    v46 = sub_18B44();
    v47 = sub_18E14();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v236 = swift_slowAlloc();
      *v48 = 136315394;
      v49 = v45;
      v50 = [v49 description];
      v51 = sub_18C74();
      v53 = v52;

      v54 = sub_10320(v51, v53, &v236);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v236);
      _os_log_impl(&dword_0, v46, v47, "%s, %s: Expected userType, found nil", v48, 0x16u);
      swift_arrayDestroy();
    }

    result = (*(v234 + 8))(v13, v235);
    goto LABEL_5;
  }

  v215 = v2;
  v57 = v39 + 32;
  v208 = *(v39 + 4);
  v208(v43, v37, v38);
  v58 = objc_opt_self();
  sub_18524(v59);
  v61 = v60;
  v62 = [v58 createMessageFromURL:v60];

  v63 = v38;
  if (v62)
  {
    v220 = v39 + 48;
    v224 = v43;
    v225 = v39;
    v64 = v215;
    v65 = *&v215[OBJC_IVAR___MessagesViewController_safetyCacheViewModel];
    if (!v65)
    {
      v100 = v216;
      sub_18B14();
      v101 = v64;
      v102 = sub_18B44();
      v103 = sub_18E14();

      if (os_log_type_enabled(v102, v103))
      {
        v104 = swift_slowAlloc();
        v236 = swift_slowAlloc();
        *v104 = 136315394;
        v105 = v101;
        v106 = v62;
        v107 = [v105 description];
        v108 = v63;
        v109 = sub_18C74();
        v111 = v110;

        v112 = sub_10320(v109, v111, &v236);

        *(v104 + 4) = v112;
        *(v104 + 12) = 2080;
        *(v104 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v236);
        _os_log_impl(&dword_0, v102, v103, "%s, %s: Expected safetyCacheViewModel, found nil", v104, 0x16u);
        swift_arrayDestroy();

        (*(v234 + 8))(v216, v235);
        result = (*(v225 + 1))(v224, v108);
      }

      else
      {

        (*(v234 + 8))(v100, v235);
        result = (*(v225 + 1))(v224, v63);
      }

LABEL_5:
      v56 = v233;
      *(v233 + 32) = 0;
      *v56 = 0u;
      v56[1] = 0u;
      return result;
    }

    v66 = v225;
    v67 = *(v225 + 13);
    v218 = v225 + 104;
    v206 = v67;
    v67(v35, enum case for UserType.receiver(_:), v63);
    v68 = *(v66 + 7);
    v216 = v66 + 56;
    v205 = v68;
    v68(v35, 0, 1, v63);
    v69 = *(v228 + 48);
    v70 = v222;
    sub_161B0(v64 + v226, v222, &qword_24798, &qword_19738);
    sub_161B0(v35, v70 + v69, &qword_24798, &qword_19738);
    v71 = v227;
    v72 = v227(v70, 1, v63);
    v204[1] = v57;
    v207 = v62;
    v219 = v65;
    if (v72 == 1)
    {
      v73 = v65;
      sub_16218(v35, &qword_24798, &qword_19738);
      if (v71(v70 + v69, 1, v63) == 1)
      {
        sub_16218(v70, &qword_24798, &qword_19738);
        v74 = v231;
        v75 = v232;
        goto LABEL_24;
      }
    }

    else
    {
      sub_161B0(v70, v221, &qword_24798, &qword_19738);
      if (v71(v70 + v69, 1, v63) != 1)
      {
        v140 = (v70 + v69);
        v141 = v223;
        v208(v223, v140, v63);
        sub_13E74(&qword_247A8, &type metadata accessor for UserType, &protocol conformance descriptor for UserType);
        v142 = v65;
        v143 = v221;
        v144 = sub_18BE4();
        v145 = v63;
        v146 = *(v225 + 1);
        v146(v141, v145);
        sub_16218(v35, &qword_24798, &qword_19738);
        v146(v143, v145);
        v63 = v145;
        v64 = v215;
        sub_16218(v70, &qword_24798, &qword_19738);
        v74 = v231;
        v75 = v232;
        if (v144)
        {
LABEL_24:
          v114 = v212;
          sub_18B14();
          v115 = v230;
          v116 = v210;
          (v230)[2](v210, v75, v74);
          v147 = v64;
          v118 = sub_18B44();
          v148 = sub_18E34();

          if (os_log_type_enabled(v118, v148))
          {
            v149 = swift_slowAlloc();
            v232 = swift_slowAlloc();
            v236 = v232;
            *v149 = 136315650;
            v150 = v147;
            v151 = [v150 description];
            v152 = v63;
            v153 = sub_18C74();
            v155 = v154;

            v156 = v153;
            v63 = v152;
            v157 = sub_10320(v156, v155, &v236);
            v64 = v215;

            *(v149 + 4) = v157;
            *(v149 + 12) = 2080;
            *(v149 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v236);
            *(v149 + 22) = 2080;
            sub_13E74(&qword_24838, &type metadata accessor for URL, &protocol conformance descriptor for URL);
            v158 = v231;
            v159 = sub_18FA4();
            v161 = v160;
            (v115[1])(v116, v158);
            v162 = sub_10320(v159, v161, &v236);

            *(v149 + 24) = v162;
            _os_log_impl(&dword_0, v118, v148, "%s, %s: Creating transcript view model with url, %s", v149, 0x20u);
            swift_arrayDestroy();

            v134 = *(v234 + 8);
            v134(v212, v235);
            goto LABEL_27;
          }

LABEL_26:

          (v115[1])(v116, v74);
          v134 = *(v234 + 8);
          v134(v114, v235);
LABEL_27:
          v163 = sub_D3D8();
          (*(v225 + 2))(v223, v224, v63);
          sub_18964();
          swift_allocObject();
          v164 = v63;
          v165 = v219;
          v166 = v207;
          v167 = v163;

          v232 = v167;
          v168 = sub_18954();
          [v64 _balloonMaskEdgeInsets];
          v170 = v169;
          v172 = v171;
          v174 = v173;
          v176 = v175;
          v177 = v229;
          sub_18B24();
          v178 = v64;
          v179 = sub_18B44();
          v180 = sub_18E04();

          if (!os_log_type_enabled(v179, v180))
          {

            v134(v177, v235);
LABEL_37:
            v199 = sub_187E4();
            v200 = v233;
            *(v233 + 24) = v199;
            v200[4] = sub_13E74(&qword_24840, &type metadata accessor for TranscriptView, &protocol conformance descriptor for TranscriptView);
            sub_157AC(v200);
            sub_187D4();

            return (*(v225 + 1))(v224, v164);
          }

          LODWORD(v219) = v180;
          v221 = v168;
          v222 = v166;
          v230 = v165;
          v231 = v134;
          v181 = swift_slowAlloc();
          v217 = swift_slowAlloc();
          v236 = v217;
          *v181 = 136316674;
          v182 = v178;
          v183 = [v182 description];
          v184 = sub_18C74();
          v186 = v185;

          v187 = sub_10320(v184, v186, &v236);

          *(v181 + 4) = v187;
          *(v181 + 12) = 2080;
          *(v181 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v236);
          *(v181 + 22) = 2080;
          v188 = v214;
          v206(v214, enum case for UserType.initiator(_:), v164);
          v205(v188, 0, 1, v164);
          v189 = *(v228 + 48);
          v190 = v64 + v226;
          v191 = v211;
          sub_161B0(v190, v211, &qword_24798, &qword_19738);
          sub_161B0(v188, v191 + v189, &qword_24798, &qword_19738);
          v192 = v227;
          if (v227(v191, 1, v164) == 1)
          {
            sub_16218(v188, &qword_24798, &qword_19738);
            v193 = v192(v191 + v189, 1, v164);
            v165 = v230;
            v194 = v231;
            if (v193 == 1)
            {
              sub_16218(v191, &qword_24798, &qword_19738);
              v195 = 0x7265646E6573;
              v196 = 0xE600000000000000;
LABEL_36:
              v198 = sub_10320(v195, v196, &v236);

              *(v181 + 24) = v198;
              *(v181 + 32) = 2048;
              *(v181 + 34) = v172;
              *(v181 + 42) = 2048;
              *(v181 + 44) = v176;
              *(v181 + 52) = 2048;
              *(v181 + 54) = v170;
              *(v181 + 62) = 2048;
              *(v181 + 64) = v174;
              _os_log_impl(&dword_0, v179, v219, "%s, %s: %s insets %f, %f, %f, %f", v181, 0x48u);
              swift_arrayDestroy();

              v194(v229, v235);
              v166 = v222;
              goto LABEL_37;
            }
          }

          else
          {
            v197 = v209;
            sub_161B0(v191, v209, &qword_24798, &qword_19738);
            if (v192(v191 + v189, 1, v164) != 1)
            {
              v201 = v223;
              v208(v223, (v191 + v189), v164);
              sub_13E74(&qword_247A8, &type metadata accessor for UserType, &protocol conformance descriptor for UserType);
              LODWORD(v228) = sub_18BE4();
              v202 = v197;
              v203 = *(v225 + 1);
              v203(v201, v164);
              sub_16218(v214, &qword_24798, &qword_19738);
              v203(v202, v164);
              sub_16218(v191, &qword_24798, &qword_19738);
              v165 = v230;
              v194 = v231;
              if (v228)
              {
                v195 = 0x7265646E6573;
                v196 = 0xE600000000000000;
                goto LABEL_36;
              }

              goto LABEL_35;
            }

            sub_16218(v214, &qword_24798, &qword_19738);
            (*(v225 + 1))(v197, v164);
            v165 = v230;
            v194 = v231;
          }

          sub_16218(v191, &qword_24790, &qword_19730);
LABEL_35:
          v196 = 0xE800000000000000;
          v195 = 0x7265766965636572;
          goto LABEL_36;
        }

LABEL_18:
        v114 = v217;
        sub_18B24();
        v115 = v230;
        v116 = v213;
        (v230)[2](v213, v75, v74);
        v117 = v64;
        v118 = sub_18B44();
        v119 = sub_18E34();

        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v232 = swift_slowAlloc();
          v236 = v232;
          *v120 = 136315650;
          v121 = v117;
          v122 = [v121 description];
          v123 = v63;
          v124 = sub_18C74();
          v126 = v125;

          v127 = v124;
          v63 = v123;
          v128 = sub_10320(v127, v126, &v236);
          v64 = v215;

          *(v120 + 4) = v128;
          *(v120 + 12) = 2080;
          *(v120 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v236);
          *(v120 + 22) = 2080;
          sub_13E74(&qword_24838, &type metadata accessor for URL, &protocol conformance descriptor for URL);
          v129 = v231;
          v130 = sub_18FA4();
          v132 = v131;
          (v115[1])(v116, v129);
          v133 = sub_10320(v130, v132, &v236);

          *(v120 + 24) = v133;
          _os_log_impl(&dword_0, v118, v119, "%s, %s: Creating transcript view model with url, %s", v120, 0x20u);
          swift_arrayDestroy();

          v134 = *(v234 + 8);
          v134(v217, v235);
          goto LABEL_27;
        }

        goto LABEL_26;
      }

      v113 = v65;
      sub_16218(v35, &qword_24798, &qword_19738);
      (*(v225 + 1))(v221, v63);
    }

    sub_16218(v70, &qword_24790, &qword_19730);
    v74 = v231;
    v75 = v232;
    goto LABEL_18;
  }

  v229 = v38;
  v76 = v225;
  sub_18B14();
  v77 = v230;
  v78 = v231;
  v79 = v224;
  (v230)[2](v224, v232, v231);
  v80 = v215;
  v81 = sub_18B44();
  v82 = sub_18E14();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v232 = swift_slowAlloc();
    v236 = v232;
    *v83 = 136315650;
    v84 = v80;
    LODWORD(v228) = v82;
    v85 = v84;
    v86 = [v84 description];
    v87 = v39;
    v88 = sub_18C74();
    v90 = v89;

    v91 = v88;
    v39 = v87;
    v92 = sub_10320(v91, v90, &v236);

    *(v83 + 4) = v92;
    *(v83 + 12) = 2080;
    *(v83 + 14) = sub_10320(0xD000000000000014, 0x800000000001B4D0, &v236);
    *(v83 + 22) = 2080;
    sub_13E74(&qword_24838, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v93 = v224;
    v94 = sub_18FA4();
    v96 = v95;
    (v77[1])(v93, v78);
    v97 = sub_10320(v94, v96, &v236);
    v98 = v43;
    v99 = v97;

    *(v83 + 24) = v99;
    v43 = v98;
    _os_log_impl(&dword_0, v81, v228, "%s, %s: url is not valid for Zelkova message, %s", v83, 0x20u);
    swift_arrayDestroy();

    (*(v234 + 8))(v225, v235);
  }

  else
  {

    (v77[1])(v79, v78);
    (*(v234 + 8))(v76, v235);
  }

  v135 = v220;
  v136 = v229;
  (*(v39 + 2))(v220, v43, v229);
  (*(v218 + 13))(v135, enum case for CheckInViewState.unknown(_:), v219);
  v137 = sub_18744();
  v138 = v43;
  v139 = v233;
  *(v233 + 24) = v137;
  v139[4] = sub_13E74(&qword_24830, &type metadata accessor for CheckInView, &protocol conformance descriptor for CheckInView);
  sub_157AC(v139);
  sub_18734();
  return (*(v39 + 1))(v138, v136);
}

id sub_A114(void *a1)
{
  v3 = sub_18B54();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = __chkstk_darwin(v3);
  v59 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v57 = &v56 - v6;
  v7 = sub_11BB4(&qword_24808, &qword_197B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v56 - v8;
  v10 = sub_18744();
  v58 = *(v10 - 8);
  v11 = __chkstk_darwin(v10);
  v56 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v56 - v13;
  v15 = sub_11BB4(&qword_24810, &qword_197B8);
  __chkstk_darwin(v15 - 8);
  v17 = &v56 - v16;
  v18 = sub_187E4();
  v19 = *(v18 - 8);
  v20 = __chkstk_darwin(v18);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v56 - v23;
  sub_8674(a1, &v62);
  if (v63)
  {
    sub_156E4(&v62, v64);
    sub_156FC(v64, &v62);
    sub_11BB4(&qword_24820, &qword_197C8);
    v25 = swift_dynamicCast();
    v26 = *(v19 + 56);
    if (v25)
    {
      v26(v17, 0, 1, v18);
      (*(v19 + 32))(v24, v17, v18);
      (*(v19 + 16))(v22, v24, v18);
      v27 = objc_allocWithZone(sub_18A94());
      v28 = sub_18A84();
      (*(v19 + 8))(v24, v18);
    }

    else
    {
      v26(v17, 1, 1, v18);
      sub_16218(v17, &qword_24810, &qword_197B8);
      sub_156FC(v64, &v62);
      v40 = swift_dynamicCast();
      v41 = v58;
      v42 = *(v58 + 56);
      if (v40)
      {
        v42(v9, 0, 1, v10);
        (*(v41 + 32))(v14, v9, v10);
        (*(v41 + 16))(v56, v14, v10);
        v43 = objc_allocWithZone(sub_11BB4(&qword_24828, &qword_197D0));
        v28 = sub_18B64();
        (*(v41 + 8))(v14, v10);
      }

      else
      {
        v42(v9, 1, 1, v10);
        sub_16218(v9, &qword_24808, &qword_197B0);
        v44 = v57;
        sub_18B24();
        v45 = v1;
        v46 = sub_18B44();
        v47 = sub_18E14();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *&v62 = swift_slowAlloc();
          *v48 = 136315394;
          v49 = v45;
          v50 = [v49 description];
          v51 = sub_18C74();
          v53 = v52;

          v54 = sub_10320(v51, v53, &v62);

          *(v48 + 4) = v54;
          *(v48 + 12) = 2080;
          *(v48 + 14) = sub_10320(0xD00000000000001ELL, 0x800000000001B4B0, &v62);
          _os_log_impl(&dword_0, v46, v47, "%s, %s: Invalid transcript view", v48, 0x16u);
          swift_arrayDestroy();
        }

        (*(v60 + 8))(v44, v61);
        v28 = [objc_allocWithZone(UIViewController) init];
      }
    }

    sub_15760(v64);
  }

  else
  {
    sub_16218(&v62, &qword_24818, &qword_197C0);
    v29 = v59;
    sub_18B24();
    v30 = v1;
    v31 = sub_18B44();
    v32 = sub_18E14();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v64[0] = swift_slowAlloc();
      *v33 = 136315394;
      v34 = v30;
      v35 = [v34 description];
      v36 = sub_18C74();
      v38 = v37;

      v39 = sub_10320(v36, v38, v64);

      *(v33 + 4) = v39;
      *(v33 + 12) = 2080;
      *(v33 + 14) = sub_10320(0xD00000000000001ELL, 0x800000000001B4B0, v64);
      _os_log_impl(&dword_0, v31, v32, "%s, %s: Unexpected nil transcript view", v33, 0x16u);
      swift_arrayDestroy();
    }

    (*(v60 + 8))(v29, v61);
    return 0;
  }

  return v28;
}

id sub_A910()
{
  v1 = [v0 childViewControllers];
  sub_16278(0, &qword_248A0, UIViewController_ptr);
  v2 = sub_18D74();

  if (!(v2 >> 62))
  {
    v3 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_15:
  }

LABEL_14:
  v3 = sub_18F84();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_18F54();
    }

    else
    {
      if (v4 >= *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    [v5 willMoveToParentViewController:0];
    result = [v6 view];
    if (!result)
    {
      break;
    }

    v9 = result;
    [result removeFromSuperview];

    [v6 removeFromParentViewController];
    ++v4;
    if (v7 == v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_AA8C(void *a1)
{
  v2 = v1;
  v268 = sub_184B4();
  v264 = *(v268 - 8);
  v4 = __chkstk_darwin(v268);
  v252 = &v246 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v267 = &v246 - v6;
  v7 = sub_11BB4(&qword_24850, &qword_197E0);
  __chkstk_darwin(v7 - 8);
  v258 = &v246 - v8;
  v9 = sub_18554();
  v283 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = &v246 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v261 = &v246 - v14;
  v260 = v15;
  __chkstk_darwin(v13);
  v265 = &v246 - v16;
  v17 = sub_11BB4(&qword_24798, &qword_19738);
  __chkstk_darwin(v17 - 8);
  v277 = &v246 - v18;
  v279 = sub_18604();
  v274 = *(v279 - 8);
  v19 = __chkstk_darwin(v279);
  v266 = &v246 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v271 = &v246 - v22;
  __chkstk_darwin(v21);
  v278 = &v246 - v23;
  v24 = sub_18B04();
  v25 = *(v24 - 8);
  v26 = __chkstk_darwin(v24);
  v280 = &v246 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v282 = &v246 - v28;
  v29 = sub_11BB4(&qword_247B8, &qword_19748);
  v30 = __chkstk_darwin(v29 - 8);
  v257 = &v246 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v256 = &v246 - v33;
  v34 = __chkstk_darwin(v32);
  v272 = (&v246 - v35);
  __chkstk_darwin(v34);
  v270 = &v246 - v36;
  v37 = sub_18B54();
  v38 = *(v37 - 8);
  v39 = __chkstk_darwin(v37);
  v263 = &v246 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v262 = &v246 - v42;
  v43 = __chkstk_darwin(v41);
  v255 = &v246 - v44;
  v45 = __chkstk_darwin(v43);
  v254 = &v246 - v46;
  v47 = __chkstk_darwin(v45);
  v253 = &v246 - v48;
  __chkstk_darwin(v47);
  v50 = &v246 - v49;
  sub_18B24();
  v51 = v2;
  v52 = a1;
  v276 = v50;
  v53 = sub_18B44();
  LODWORD(v50) = sub_18E34();

  LODWORD(v269) = v50;
  v54 = os_log_type_enabled(v53, v50);
  v284 = v51;
  v273 = v9;
  v259 = v12;
  v281 = v24;
  v275 = v38;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v250 = v53;
    v56 = v55;
    v249 = swift_slowAlloc();
    v251 = swift_slowAlloc();
    v286[0] = v251;
    *v56 = 136315650;
    v57 = v51;
    v58 = [v57 description];
    v59 = sub_18C74();
    v61 = v60;

    v62 = v275;
    v63 = v283;
    v64 = v25;
    v65 = sub_10320(v59, v61, v286);

    *(v56 + 4) = v65;
    v24 = v281;
    *(v56 + 12) = 2080;
    *(v56 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v286);
    *(v56 + 22) = 2112;
    v66 = [v52 selectedMessage];
    *(v56 + 24) = v66;
    v67 = v249;
    *v249 = v66;
    v68 = v250;
    _os_log_impl(&dword_0, v250, v269, "%s, %s: conversation.selectedMessage, %@", v56, 0x20u);
    sub_16218(v67, &qword_24788, &qword_19728);

    swift_arrayDestroy();

    v69 = *(v62 + 8);
    v69(v276, v37);
  }

  else
  {
    v64 = v25;

    v69 = *(v38 + 8);
    v69(v276, v37);
    v63 = v283;
  }

  v70 = [v52 selectedMessage];
  if (!v70)
  {
    v77 = v277;
    (*(v64 + 13))(v277, enum case for UserType.initiator(_:), v24);
    (*(v64 + 7))(v77, 0, 1, v24);
    v78 = OBJC_IVAR___MessagesViewController_userType;
    v79 = v284;
    swift_beginAccess();
    sub_16148(v77, &v79[v78], &qword_24798, &qword_19738);
    swift_endAccess();
    return;
  }

  v71 = v70;
  v72 = [v70 URL];
  v269 = v69;
  v73 = v64;
  v248 = v37;
  if (v72)
  {
    v74 = v270;
    v75 = v72;
    sub_18534();

    v76 = 0;
  }

  else
  {
    v76 = 1;
    v74 = v270;
  }

  v80 = v273;
  (*(v63 + 56))(v74, v76, 1, v273);
  v81 = OBJC_IVAR___MessagesViewController_messageURL;
  v82 = v284;
  swift_beginAccess();
  sub_16148(v74, &v82[v81], &qword_247B8, &qword_19748);
  swift_endAccess();
  v270 = v71;
  v83 = [v71 senderParticipantIdentifier];
  v84 = v278;
  sub_185E4();

  v251 = v52;
  v85 = [v52 localParticipantIdentifier];
  v86 = v271;
  sub_185E4();

  LOBYTE(v85) = sub_185D4();
  v87 = *(v274 + 8);
  v88 = v86;
  v89 = v279;
  (v87)(v88, v279);
  v250 = v87;
  (v87)(v84, v89);
  v90 = &enum case for UserType.receiver(_:);
  if (v85)
  {
    v90 = &enum case for UserType.initiator(_:);
  }

  v91 = *v90;
  v92 = v282;
  v271 = *(v73 + 13);
  (v271)(v282, v91, v24);
  v93 = v80;
  v94 = v24;
  v95 = v277;
  v249 = *(v73 + 2);
  v249(v277, v92, v94);
  v276 = v73;
  (*(v73 + 7))(v95, 0, 1, v94);
  v96 = OBJC_IVAR___MessagesViewController_userType;
  swift_beginAccess();
  sub_16148(v95, &v82[v96], &qword_24798, &qword_19738);
  swift_endAccess();
  v247 = v81;
  v97 = v272;
  v98 = v283;
  sub_161B0(&v82[v81], v272, &qword_247B8, &qword_19748);
  v99 = (v98 + 48);
  v277 = *(v98 + 48);
  if ((v277)(v97, 1, v80) == 1)
  {
    sub_16218(v97, &qword_247B8, &qword_19748);
LABEL_16:
    v114 = v284;
    goto LABEL_17;
  }

  v100 = v98;
  v101 = *(v98 + 32);
  v102 = v265;
  v272 = v101;
  (v101)(v265, v97, v80);
  v103 = objc_opt_self();
  sub_18524(v104);
  v106 = v105;
  v107 = [v103 sessionIDFromURL:v105];

  if (!v107)
  {
    (*(v100 + 8))(v102, v80);
    goto LABEL_16;
  }

  v108 = v266;
  sub_185E4();

  (*(v274 + 16))(v278, v108, v279);
  v249(v280, v282, v281);
  v109 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v110 = v261;
  (*(v100 + 16))(v261, v102, v93);
  v111 = (*(v100 + 80) + 24) & ~*(v100 + 80);
  v112 = swift_allocObject();
  *(v112 + 16) = v109;
  (v272)(v112 + v111, v110, v93);
  objc_allocWithZone(sub_186D4());

  v113 = sub_186C4();
  (v250)(v266, v279);
  v114 = v284;
  (*(v283 + 8))(v102, v93);

  v115 = *&v114[OBJC_IVAR___MessagesViewController_safetyCacheViewModel];
  *&v114[OBJC_IVAR___MessagesViewController_safetyCacheViewModel] = v113;

LABEL_17:
  v117 = v280;
  v116 = v281;
  v118 = v270;
  (v271)(v280, enum case for UserType.initiator(_:), v281);
  v119 = v282;
  v120 = sub_18AF4();
  v121 = v276 + 8;
  v122 = *(v276 + 1);
  v122(v117, v116);
  if ((v120 & 1) == 0 || ![v118 isPending])
  {
    v122(v119, v116);

    return;
  }

  v280 = v99;
  v123 = v251;
  v124 = [v251 recipientAddresses];
  v125 = sub_18D74();

  v126 = *(v125 + 16);

  v276 = v121;
  v278 = v122;
  if (v126 < 2)
  {
    v134 = v255;
    sub_18B24();
    v135 = v114;
    v136 = sub_18B44();
    v137 = sub_18E34();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v286[0] = swift_slowAlloc();
      *v138 = 136315394;
      v139 = v135;
      v140 = [v139 description];
      v141 = sub_18C74();
      v143 = v142;

      v114 = v284;
      v144 = sub_10320(v141, v143, v286);
      v118 = v270;

      *(v138 + 4) = v144;
      *(v138 + 12) = 2080;
      *(v138 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v286);
      v145 = "%s, %s: Do not populate groupID for non-group chats";
LABEL_34:
      _os_log_impl(&dword_0, v136, v137, v145, v138, 0x16u);
      swift_arrayDestroy();
      v123 = v251;
    }

LABEL_35:

    v153 = v134;
LABEL_36:
    v133 = v269;
    v269(v153, v248);
    v279 = 0;
    v132 = 0;
    goto LABEL_37;
  }

  if (![v123 respondsToSelector:sub_18634()])
  {
    v134 = v254;
    sub_18B24();
    v146 = v114;
    v136 = sub_18B44();
    v137 = sub_18E34();

    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      v286[0] = swift_slowAlloc();
      *v138 = 136315394;
      v147 = v146;
      v148 = [v147 description];
      v149 = sub_18C74();
      v151 = v150;

      v114 = v284;
      v152 = sub_10320(v149, v151, v286);
      v118 = v270;

      *(v138 + 4) = v152;
      *(v138 + 12) = 2080;
      *(v138 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v286);
      v145 = "%s, %s: MSConversation does not respond to groupID";
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  v127 = [v123 performSelector:sub_18634()];
  v128 = v123;
  if (!v127)
  {
    v223 = v123;
    v224 = v253;
    sub_18B24();
    v225 = v114;
    v226 = sub_18B44();
    v227 = sub_18E34();

    if (os_log_type_enabled(v226, v227))
    {
      v228 = swift_slowAlloc();
      v286[0] = swift_slowAlloc();
      *v228 = 136315394;
      v229 = v225;
      v230 = [v229 description];
      v231 = sub_18C74();
      v233 = v232;

      v114 = v284;
      v234 = sub_10320(v231, v233, v286);
      v118 = v270;

      *(v228 + 4) = v234;
      *(v228 + 12) = 2080;
      *(v228 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v286);
      _os_log_impl(&dword_0, v226, v227, "%s, %s: MSConversation groupID is nil", v228, 0x16u);
      swift_arrayDestroy();
      v123 = v251;

      v153 = v253;
    }

    else
    {

      v153 = v224;
    }

    goto LABEL_36;
  }

  swift_unknownObjectRetain();
  v285 = v127;
  v129 = v123;
  v130 = swift_dynamicCast();
  v131 = v286[0];
  if (!v130)
  {
    v131 = 0;
  }

  v279 = v131;
  if (v130)
  {
    v132 = v286[1];
  }

  else
  {
    v132 = 0;
  }

  v133 = v269;
LABEL_37:
  v154 = [v123 recipientAddresses];
  v155 = v123;
  v156 = sub_18D74();

  sub_707C(v156);

  v157 = v262;
  sub_18B24();

  v158 = v114;
  v159 = v155;

  v160 = sub_18B44();
  v161 = sub_18E34();

  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    LODWORD(v272) = v161;
    v163 = v162;
    v274 = swift_slowAlloc();
    v286[0] = v274;
    *v163 = 136316418;
    v164 = v158;
    v165 = [v164 description];
    v166 = sub_18C74();
    v168 = v167;

    v169 = sub_10320(v166, v168, v286);

    *(v163 + 4) = v169;
    *(v163 + 12) = 2080;
    *(v163 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v286);
    *(v163 + 22) = 2080;
    *(v163 + 24) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v286);
    *(v163 + 32) = 2080;
    v170 = sub_18D84();
    v172 = sub_10320(v170, v171, v286);

    *(v163 + 34) = v172;
    *(v163 + 42) = 2080;
    v173 = [v159 conversationIdentifier];
    v174 = sub_18C74();
    v176 = v175;

    v177 = sub_10320(v174, v176, v286);
    v118 = v270;

    *(v163 + 44) = v177;
    *(v163 + 52) = 2080;
    v178 = v273;
    if (v132)
    {
      v179 = v279;
    }

    else
    {
      v179 = 7104878;
    }

    if (v132)
    {
      v180 = v132;
    }

    else
    {
      v180 = 0xE300000000000000;
    }

    v181 = sub_10320(v179, v180, v286);

    *(v163 + 54) = v181;
    _os_log_impl(&dword_0, v160, v272, "%s, %s: Setting recipient handles and conversation identifier in %s: Recipient Addresses - %s, Conversation Identifier - %s, Group ID - %s", v163, 0x3Eu);
    swift_arrayDestroy();

    v182 = v248;
    v269(v262, v248);
    v183 = v263;
  }

  else
  {

    v182 = v248;
    v133(v157, v248);
    v183 = v263;
    v178 = v273;
  }

  v184 = *&v158[OBJC_IVAR___MessagesViewController_sessionViewModel];
  sub_18874();
  v279 = v184;
  sub_18904();
  sub_18B24();
  v185 = v158;
  v186 = sub_18B44();
  v187 = sub_18E34();

  if (os_log_type_enabled(v186, v187))
  {
    v188 = swift_slowAlloc();
    v286[0] = swift_slowAlloc();
    *v188 = 136315650;
    v189 = v185;
    v190 = [v189 description];
    v191 = sub_18C74();
    v193 = v192;

    v194 = sub_10320(v191, v193, v286);

    *(v188 + 4) = v194;
    *(v188 + 12) = 2080;
    *(v188 + 14) = sub_10320(0xD000000000000016, 0x800000000001B6E0, v286);
    *(v188 + 22) = 2080;
    v195 = v247;
    v196 = v256;
    sub_161B0(&v284[v247], v256, &qword_247B8, &qword_19748);
    if ((v277)(v196, 1, v178))
    {
      v197 = 7104878;
      sub_16218(v196, &qword_247B8, &qword_19748);
      v198 = 0xE300000000000000;
    }

    else
    {
      v200 = v283;
      v201 = v261;
      (*(v283 + 16))(v261, v196, v178);
      sub_16218(v196, &qword_247B8, &qword_19748);
      v197 = sub_18514();
      v198 = v202;
      (*(v200 + 8))(v201, v178);
    }

    v199 = v257;
    v203 = v248;
    v204 = sub_10320(v197, v198, v286);

    *(v188 + 24) = v204;
    _os_log_impl(&dword_0, v186, v187, "%s, %s: Processing initiator message URL, %s", v188, 0x20u);
    swift_arrayDestroy();

    v269(v263, v203);
    v118 = v270;
  }

  else
  {

    v269(v183, v182);
    v199 = v257;
    v195 = v247;
  }

  sub_161B0(&v284[v195], v199, &qword_247B8, &qword_19748);
  v205 = (v277)(v199, 1, v178);
  v206 = v283;
  v207 = v259;
  v208 = v258;
  if (v205 == 1)
  {
    (v278)(v282, v281);

    sub_16218(v199, &qword_247B8, &qword_19748);
  }

  else
  {
    (*(v283 + 32))(v259, v199, v178);
    sub_184E4();
    v209 = sub_18504();
    v210 = *(v209 - 8);
    if ((*(v210 + 48))(v208, 1, v209) == 1)
    {

      (*(v206 + 8))(v207, v178);
      (v278)(v282, v281);
      sub_16218(v208, &qword_24850, &qword_197E0);
    }

    else
    {
      v211 = sub_184C4();
      (*(v210 + 8))(v208, v209);
      if (v211)
      {
        v212 = *(v211 + 16);
        if (v212)
        {
          v213 = 0;
          v214 = (v264 + 8);
          while (1)
          {
            if (v213 >= *(v211 + 16))
            {
              __break(1u);
              return;
            }

            v215 = v211 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v213;
            v216 = *(v264 + 16);
            v216(v267, v215, v268);
            v217 = sub_18494();
            v219 = v218;
            if (v217 == sub_18754() && v219 == v220)
            {
              v221 = 1;
            }

            else
            {
              v221 = sub_18FC4();
            }

            v222 = *v214;
            (*v214)(v267, v268);
            if (v221)
            {
              break;
            }

            if (v212 == ++v213)
            {
              goto LABEL_66;
            }
          }

          v235 = v252;
          v236 = v215;
          v237 = v268;
          v216(v252, v236, v268);

          v238 = sub_184A4();
          v240 = v239;
          v222(v235, v237);
          if (!v240)
          {
            goto LABEL_67;
          }

          sub_CC48(v238, v240);
          v241 = v273;
          v242 = v283;
          v243 = v259;
          v244 = v270;
          if ((v245 & 1) == 0)
          {
            sub_188B4();
          }

          (*(v242 + 8))(v243, v241);
          (v278)(v282, v281);
        }

        else
        {
LABEL_66:

LABEL_67:

          (*(v283 + 8))(v259, v273);
          (v278)(v282, v281);
        }
      }

      else
      {

        (*(v283 + 8))(v207, v178);
        (v278)(v282, v281);
      }
    }
  }
}

void sub_C804(uint64_t a1, uint64_t a2)
{
  v3 = sub_18B04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_11BB4(&qword_24790, &qword_19730);
  __chkstk_darwin(v7);
  v9 = v24 - v8;
  v10 = sub_11BB4(&qword_24798, &qword_19738);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v24 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v24[0] = v6;
    v24[1] = a2;
    [Strong requestResize];
    v18 = OBJC_IVAR___MessagesViewController_userType;
    swift_beginAccess();
    (*(v4 + 104))(v15, enum case for UserType.receiver(_:), v3);
    (*(v4 + 56))(v15, 0, 1, v3);
    v19 = *(v7 + 48);
    sub_161B0(v17 + v18, v9, &qword_24798, &qword_19738);
    sub_161B0(v15, &v9[v19], &qword_24798, &qword_19738);
    v20 = *(v4 + 48);
    if (v20(v9, 1, v3) == 1)
    {
      sub_16218(v15, &qword_24798, &qword_19738);
      if (v20(&v9[v19], 1, v3) == 1)
      {
        sub_16218(v9, &qword_24798, &qword_19738);
LABEL_9:
        sub_CF48();
        goto LABEL_10;
      }
    }

    else
    {
      sub_161B0(v9, v13, &qword_24798, &qword_19738);
      if (v20(&v9[v19], 1, v3) != 1)
      {
        v21 = v24[0];
        (*(v4 + 32))(v24[0], &v9[v19], v3);
        sub_13E74(&qword_247A8, &type metadata accessor for UserType, &protocol conformance descriptor for UserType);
        v22 = sub_18BE4();
        v23 = *(v4 + 8);
        v23(v21, v3);
        sub_16218(v15, &qword_24798, &qword_19738);
        v23(v13, v3);
        sub_16218(v9, &qword_24798, &qword_19738);
        if (v22)
        {
          goto LABEL_9;
        }

LABEL_10:

        return;
      }

      sub_16218(v15, &qword_24798, &qword_19738);
      (*(v4 + 8))(v13, v3);
    }

    sub_16218(v9, &qword_24790, &qword_19730);
    goto LABEL_10;
  }
}

unint64_t sub_CC48(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v23[0] = result;
      v23[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v23 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v23;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v23 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_18F64();
        v3 = v22;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v24 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  sub_10B24(result, a2, 10);
  v6 = v20;
  v19 = v21;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_CF48()
{
  v1 = v0;
  v2 = sub_18B54();
  v37 = *(v2 - 8);
  v38 = v2;
  __chkstk_darwin(v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_11BB4(&qword_24800, &qword_197A8);
  __chkstk_darwin(v5 - 8);
  v7 = &v36 - v6;
  v8 = sub_18A54();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v36 - v13;
  v15 = objc_opt_self();
  sub_18524(v16);
  v18 = v17;
  [v15 messageTypeFromURL:v17];

  v19 = *&v1[OBJC_IVAR___MessagesViewController_safetyCacheViewModel];
  if (v19)
  {
    v20 = v1;
    v21 = v19;
    sub_186B4();

    v1 = v20;
  }

  sub_18A44();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_16218(v7, &qword_24800, &qword_197A8);
    sub_18B14();
    v22 = v1;
    v23 = sub_18B44();
    v24 = sub_18E34();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *v25 = 136315394;
      v26 = v22;
      v27 = [v26 description];
      v28 = sub_18C74();
      v30 = v29;

      v31 = sub_10320(v28, v30, &v39);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_10320(0xD00000000000002DLL, 0x800000000001B480, &v39);
      _os_log_impl(&dword_0, v23, v24, "#CriticalAlertOnboarding: Skipping onboarding %s: %s", v25, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v37 + 8))(v4, v38);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    v33 = objc_allocWithZone(sub_18AD4());
    v34 = sub_18AC4();
    v35 = [objc_allocWithZone(UINavigationController) initWithRootViewController:v34];
    [v35 setModalPresentationStyle:-2];
    [v35 setModalInPresentation:1];
    sub_470C(v35);

    return (*(v9 + 8))(v14, v8);
  }
}

id sub_D3D8()
{
  v1 = v0;
  v2 = sub_18B54();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v57 - v8;
  __chkstk_darwin(v7);
  v11 = &v57 - v10;
  v12 = [objc_allocWithZone(CNContact) init];
  v13 = [v1 activeConversation];
  if (v13)
  {
    v14 = v13;
    v15 = [v13 selectedMessage];
    if (v15)
    {

      v16 = [v14 selectedMessage];
      if (v16)
      {
        v17 = v16;
        v18 = [v16 senderAddress];

        if (v18)
        {
          v19 = [*&v1[OBJC_IVAR___MessagesViewController_contactsManager] contactWith:v18];

          return v19;
        }
      }

      sub_18B14();
      v32 = v1;
      v33 = sub_18B44();
      v34 = sub_18E14();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v60 = v57;
        *v35 = 136315394;
        v36 = v32;
        v37 = [v36 description];
        v58 = v2;
        v38 = v12;
        v39 = v37;
        v40 = sub_18C74();
        v59 = v3;
        v42 = v41;

        v12 = v38;
        v43 = sub_10320(v40, v42, &v60);

        *(v35 + 4) = v43;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_10320(0xD00000000000001CLL, 0x800000000001B460, &v60);
        _os_log_impl(&dword_0, v33, v34, "%s, %s: handle is not available", v35, 0x16u);
        swift_arrayDestroy();

        (*(v59 + 8))(v11, v58);
      }

      else
      {

        (*(v3 + 8))(v11, v2);
      }
    }

    else
    {
      sub_18B14();
      v44 = v1;
      v45 = sub_18B44();
      v46 = sub_18E14();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v60 = v57;
        *v47 = 136315394;
        v48 = v44;
        v49 = [v48 description];
        v50 = sub_18C74();
        v58 = v2;
        v59 = v3;
        v51 = v12;
        v52 = v50;
        v54 = v53;

        v55 = v52;
        v12 = v51;
        v56 = sub_10320(v55, v54, &v60);

        *(v47 + 4) = v56;
        *(v47 + 12) = 2080;
        *(v47 + 14) = sub_10320(0xD00000000000001CLL, 0x800000000001B460, &v60);
        _os_log_impl(&dword_0, v45, v46, "%s, %s: no selected message for setting up message sender contact", v47, 0x16u);
        swift_arrayDestroy();

        (*(v59 + 8))(v9, v58);
      }

      else
      {

        (*(v3 + 8))(v9, v2);
      }
    }
  }

  else
  {
    v59 = v3;
    sub_18B14();
    v21 = v1;
    v22 = sub_18B44();
    v23 = sub_18E14();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v24 = 136315394;
      v25 = v21;
      v26 = [v25 description];
      v27 = sub_18C74();
      v58 = v2;
      v28 = v12;
      v30 = v29;

      v31 = sub_10320(v27, v30, &v60);
      v12 = v28;

      *(v24 + 4) = v31;
      *(v24 + 12) = 2080;
      *(v24 + 14) = sub_10320(0xD00000000000001CLL, 0x800000000001B460, &v60);
      _os_log_impl(&dword_0, v22, v23, "%s, %s: no active conversation", v24, 0x16u);
      swift_arrayDestroy();

      (*(v59 + 8))(v6, v58);
    }

    else
    {

      (*(v59 + 8))(v6, v2);
    }
  }

  return v12;
}

id sub_DA44(void *a1)
{
  v3 = sub_18B54();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18B24();
  v7 = v1;
  v8 = a1;
  v9 = sub_18B44();
  v10 = sub_18E34();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = v4;
    v12 = v11;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v12 = 136315650;
    v13 = v7;
    v14 = [v13 description];
    v26 = v3;
    v15 = v14;
    v16 = sub_18C74();
    v18 = v17;

    v19 = sub_10320(v16, v18, &v28);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10320(0xD000000000000017, 0x800000000001B1D0, &v28);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v8;
    v20 = v24;
    *v24 = v8;
    v21 = v8;
    _os_log_impl(&dword_0, v9, v10, "%s, %s: conversation, %@", v12, 0x20u);
    sub_16218(v20, &qword_24788, &qword_19728);

    swift_arrayDestroy();

    (*(v27 + 8))(v6, v26);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  sub_AA8C(v8);
  return [v7 setNeedsSizeMatchBeforeSnapshotSwap];
}

void sub_DD70(void *a1)
{
  v2 = sub_18554();
  v111 = *(v2 - 8);
  v112 = v2;
  __chkstk_darwin(v2);
  v110 = v104 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18A34();
  __chkstk_darwin(v4 - 8);
  v6 = v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18B54();
  v114 = *(v7 - 8);
  v115 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = v104 - v12;
  v14 = __chkstk_darwin(v11);
  v109 = v104 - v15;
  v16 = __chkstk_darwin(v14);
  v108 = v104 - v17;
  __chkstk_darwin(v16);
  v107 = v104 - v18;
  v19 = sub_18B04();
  v113 = *(v19 - 8);
  __chkstk_darwin(v19);
  v21 = v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_11BB4(&qword_24790, &qword_19730);
  __chkstk_darwin(v22);
  v24 = v104 - v23;
  v25 = sub_11BB4(&qword_24798, &qword_19738);
  v26 = __chkstk_darwin(v25 - 8);
  v28 = v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = v104 - v29;
  v31 = [a1 selectedMessage];
  if (!v31)
  {
    sub_18B24();
    v39 = v116;
    v40 = sub_18B44();
    v41 = sub_18E14();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v118[0] = swift_slowAlloc();
      *v42 = 136315394;
      v43 = v39;
      v44 = [v43 description];
      v45 = sub_18C74();
      v47 = v46;

      v48 = sub_10320(v45, v47, v118);

      *(v42 + 4) = v48;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_10320(0xD000000000000016, 0x800000000001B1F0, v118);
      _os_log_impl(&dword_0, v40, v41, "%s, %s: empty message in conversation", v42, 0x16u);
      swift_arrayDestroy();
    }

    v49 = *(v114 + 8);
    v50 = v10;
    goto LABEL_27;
  }

  v32 = v31;
  if ([v116 presentationStyle] != &dword_0 + 2)
  {
    sub_18B24();
    v51 = v116;
    v52 = sub_18B44();
    v53 = sub_18DF4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v118[0] = swift_slowAlloc();
      *v54 = 136315394;
      v55 = v51;
      v56 = [v55 description];
      v57 = sub_18C74();
      v58 = v32;
      v60 = v59;

      v61 = sub_10320(v57, v60, v118);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_10320(0xD000000000000016, 0x800000000001B1F0, v118);
      v62 = "%s, %s: presentation style is not transcript";
LABEL_24:
      _os_log_impl(&dword_0, v52, v53, v62, v54, 0x16u);
      swift_arrayDestroy();

LABEL_26:
      v49 = *(v114 + 8);
      v50 = v13;
LABEL_27:
      v49(v50, v115);
      return;
    }

LABEL_25:

    goto LABEL_26;
  }

  v104[1] = v6;
  v105 = v21;
  v106 = v32;
  v33 = OBJC_IVAR___MessagesViewController_userType;
  v34 = v116;
  swift_beginAccess();
  v35 = v113;
  (*(v113 + 104))(v30, enum case for UserType.initiator(_:), v19);
  (*(v35 + 56))(v30, 0, 1, v19);
  v36 = *(v22 + 48);
  sub_161B0(v34 + v33, v24, &qword_24798, &qword_19738);
  sub_161B0(v30, &v24[v36], &qword_24798, &qword_19738);
  v37 = *(v35 + 48);
  if (v37(v24, 1, v19) == 1)
  {
    sub_16218(v30, &qword_24798, &qword_19738);
    v38 = v37(&v24[v36], 1, v19);
    v32 = v106;
    if (v38 == 1)
    {
      sub_16218(v24, &qword_24798, &qword_19738);
      goto LABEL_15;
    }

LABEL_13:
    sub_16218(v24, &qword_24790, &qword_19730);
    goto LABEL_20;
  }

  sub_161B0(v24, v28, &qword_24798, &qword_19738);
  if (v37(&v24[v36], 1, v19) == 1)
  {
    sub_16218(v30, &qword_24798, &qword_19738);
    (*(v113 + 8))(v28, v19);
    v32 = v106;
    goto LABEL_13;
  }

  v63 = v113;
  v64 = v105;
  (*(v113 + 32))(v105, &v24[v36], v19);
  sub_13E74(&qword_247A8, &type metadata accessor for UserType, &protocol conformance descriptor for UserType);
  v65 = sub_18BE4();
  v66 = *(v63 + 8);
  v66(v64, v19);
  sub_16218(v30, &qword_24798, &qword_19738);
  v66(v28, v19);
  sub_16218(v24, &qword_24798, &qword_19738);
  v32 = v106;
  if ((v65 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (![v32 isPending])
  {
LABEL_20:
    v91 = [v32 URL];
    if (v91)
    {
      v92 = v110;
      v93 = v91;
      sub_18534();

      sub_7AA4(v92);
      (*(v111 + 8))(v92, v112);
      return;
    }

    v13 = v109;
    sub_18B14();
    v94 = v116;
    v52 = sub_18B44();
    v53 = sub_18E14();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *v54 = 136315394;
      v95 = v94;
      v96 = [v95 description];
      v97 = sub_18C74();
      v58 = v32;
      v99 = v98;

      v100 = sub_10320(v97, v99, &v117);

      *(v54 + 4) = v100;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_10320(0xD000000000000016, 0x800000000001B1F0, &v117);
      v62 = "%s, %s: Message url is missing";
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v67 = v107;
  sub_18B24();
  v68 = v116;
  v69 = sub_18B44();
  v70 = sub_18E34();

  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v71 = 136315394;
    v72 = v68;
    v73 = [v72 description];
    v74 = sub_18C74();
    v76 = v75;

    v77 = sub_10320(v74, v76, &v117);

    *(v71 + 4) = v77;
    *(v71 + 12) = 2080;
    *(v71 + 14) = sub_10320(0xD000000000000016, 0x800000000001B1F0, &v117);
    _os_log_impl(&dword_0, v69, v70, "%s, %s: calling sessionViewModel.initializeIfNeeded", v71, 0x16u);
    swift_arrayDestroy();
  }

  v78 = *(v114 + 8);
  v78(v67, v115);
  sub_18894(1);
  v79 = v108;
  sub_18B24();
  v80 = v68;
  v81 = sub_18B44();
  v82 = sub_18E34();

  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v116 = v78;
    v117 = v84;
    *v83 = 136315394;
    v85 = v80;
    v86 = [v85 description];
    v87 = sub_18C74();
    v89 = v88;

    v90 = sub_10320(v87, v89, &v117);

    *(v83 + 4) = v90;
    *(v83 + 12) = 2080;
    *(v83 + 14) = sub_10320(0xD000000000000016, 0x800000000001B1F0, &v117);
    _os_log_impl(&dword_0, v81, v82, "%s, %s: message.isPending, calling presentConfigurationViewController", v83, 0x16u);
    swift_arrayDestroy();

    v116(v108, v115);
  }

  else
  {

    v78(v79, v115);
  }

  v101 = v106;
  sub_188E4();

  sub_18B74();
  sub_18A24();
  v102 = objc_allocWithZone(sub_11BB4(&qword_247A0, &qword_19740));
  v103 = sub_18B64();
  sub_73EC(v103);
}

uint64_t sub_EBB8(void *a1)
{
  v99 = a1;
  v2 = sub_11BB4(&qword_24798, &qword_19738);
  __chkstk_darwin(v2 - 8);
  v97 = &v88[-v3];
  v4 = sub_18B04();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v93 = &v88[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v9 = &v88[-v8];
  v10 = sub_18B54();
  v11 = *(v10 - 1);
  v12 = __chkstk_darwin(v10);
  v96 = &v88[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v94 = &v88[-v15];
  v16 = __chkstk_darwin(v14);
  v18 = &v88[-v17];
  __chkstk_darwin(v16);
  v20 = &v88[-v19];
  sub_18B24();
  v21 = v1;
  v22 = sub_18B44();
  v23 = sub_18E34();

  v24 = os_log_type_enabled(v22, v23);
  v98 = v11;
  v92 = v18;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v90 = v22;
    v26 = v25;
    v91 = swift_slowAlloc();
    v101[0] = v91;
    *v26 = 136315394;
    v27 = v21;
    v28 = v5;
    v29 = v4;
    v30 = v10;
    v31 = [v27 description];
    v32 = sub_18C74();
    v95 = v9;
    v33 = v32;
    v89 = v23;
    v35 = v34;

    v11 = v98;
    v10 = v30;
    v4 = v29;
    v5 = v28;
    v36 = sub_10320(v33, v35, v101);

    *(v26 + 4) = v36;
    v9 = v95;
    *(v26 + 12) = 2080;
    *(v26 + 14) = sub_10320(0xD000000000000016, 0x800000000001B210, v101);
    v37 = v90;
    _os_log_impl(&dword_0, v90, v89, "%s, %s", v26, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v38 = *(v11 + 8);
  v38(v20, v10);
  sub_A910();
  v39 = [v99 selectedMessage];
  v40 = v21;
  if (!v39)
  {
    v58 = v96;
    sub_18B24();
    v59 = v21;
    v60 = sub_18B44();
    v61 = sub_18E14();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v101[0] = swift_slowAlloc();
      *v62 = 136315394;
      v63 = v59;
      v64 = [v63 description];
      v65 = sub_18C74();
      v67 = v66;

      v68 = sub_10320(v65, v67, v101);

      *(v62 + 4) = v68;
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_10320(0xD000000000000016, 0x800000000001B210, v101);
      _os_log_impl(&dword_0, v60, v61, "%s, %s: empty message in conversation", v62, 0x16u);
      swift_arrayDestroy();

      v57 = v96;
    }

    else
    {

      v57 = v58;
    }

    goto LABEL_17;
  }

  v41 = v39;
  v42 = OBJC_IVAR___MessagesViewController_userType;
  swift_beginAccess();
  v43 = v21 + v42;
  v44 = v97;
  sub_161B0(v43, v97, &qword_24798, &qword_19738);
  if ((*(v5 + 48))(v44, 1, v4) == 1)
  {
    sub_16218(v44, &qword_24798, &qword_19738);
    v45 = v94;
    sub_18B24();
    v46 = v21;
    v47 = sub_18B44();
    v48 = sub_18E14();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v49 = 136315394;
      v50 = v46;
      v51 = [v50 description];
      v52 = sub_18C74();
      v97 = v10;
      v54 = v53;

      v55 = sub_10320(v52, v54, &v100);

      *(v49 + 4) = v55;
      *(v49 + 12) = 2080;
      *(v49 + 14) = sub_10320(0xD000000000000016, 0x800000000001B210, &v100);
      _os_log_impl(&dword_0, v47, v48, "%s, %s: userType is not initialized", v49, 0x16u);
      swift_arrayDestroy();

      v56 = v97;
      v57 = v94;
      return (v38)(v57, v56);
    }

    v57 = v45;
LABEL_17:
    v56 = v10;
    return (v38)(v57, v56);
  }

  (*(v5 + 32))(v9, v44, v4);
  v69 = v93;
  (*(v5 + 104))(v93, enum case for UserType.initiator(_:), v4);
  v70 = sub_18AF4();
  v72 = *(v5 + 8);
  v71 = (v5 + 8);
  v99 = v72;
  (v72)(v69, v4);
  if ((v70 & 1) != 0 && [v41 isPending])
  {
    sub_18884();

    v73 = v9;
    v74 = v4;
  }

  else
  {
    v95 = v9;
    v96 = v4;
    v75 = v92;
    sub_18B24();
    v76 = v40;
    v77 = sub_18B44();
    v78 = sub_18DF4();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v100 = v93;
      *v79 = 136315394;
      v80 = v76;
      v81 = [v80 description];
      v82 = sub_18C74();
      v94 = v71;
      v83 = v82;
      v97 = v10;
      v85 = v84;

      v86 = sub_10320(v83, v85, &v100);

      *(v79 + 4) = v86;
      *(v79 + 12) = 2080;
      *(v79 + 14) = sub_10320(0xD000000000000016, 0x800000000001B210, &v100);
      _os_log_impl(&dword_0, v77, v78, "%s, %s: no message pending, nothing to do", v79, 0x16u);
      swift_arrayDestroy();

      v38(v75, v97);
      return (v99)(v95, v96);
    }

    v38(v75, v10);
    v73 = v95;
    v74 = v96;
  }

  return (v99)(v73, v74);
}

void sub_F690(double a1, double a2)
{
  v3 = v2;
  v6 = sub_18B54();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v3 view];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v11 = v10;
  v12 = [v10 subviews];

  sub_16278(0, &qword_247B0, UIView_ptr);
  v13 = sub_18D74();

  if (v13 >> 62)
  {
    if (sub_18F84())
    {
      goto LABEL_4;
    }
  }

  else if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
  {
LABEL_4:
    if ((v13 & 0xC000000000000001) != 0)
    {
      v14 = sub_18F54();
      goto LABEL_7;
    }

    if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)))
    {
      v14 = *(v13 + 32);
LABEL_7:
      v15 = v14;

      [v15 sizeThatFits:{a1, a2}];

      return;
    }

    __break(1u);
    goto LABEL_14;
  }

  sub_18B24();
  v16 = v3;
  v17 = sub_18B44();
  v18 = sub_18E14();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v24 = v21;
    *v19 = 138412546;
    *(v19 + 4) = v16;
    *v20 = v16;
    *(v19 + 12) = 2080;
    v22 = v16;
    *(v19 + 14) = sub_10320(0xD000000000000017, 0x800000000001B230, &v24);
    _os_log_impl(&dword_0, v17, v18, "%@,%s,no subviews to calculate size", v19, 0x16u);
    sub_16218(v20, &qword_24788, &qword_19728);

    sub_15760(v21);
  }

  (*(v7 + 8))(v9, v6);
}

id sub_FA58()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_FB6C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_164AC;

  return v6();
}

uint64_t sub_FC54(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1B0C;

  return v7();
}

uint64_t sub_FD3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_11BB4(&qword_24780, &qword_19710);
  __chkstk_darwin(v9 - 8);
  v11 = v23 - v10;
  sub_161B0(a3, v23 - v10, &qword_24780, &qword_19710);
  v12 = sub_18DD4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_16218(v11, &qword_24780, &qword_19710);
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

  sub_18DC4();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_18D94();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_18CC4() + 32;
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

    sub_16218(a3, &qword_24780, &qword_19710);

    return v21;
  }

LABEL_8:
  sub_16218(a3, &qword_24780, &qword_19710);
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

uint64_t sub_10038(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_164B0;

  return v6(a1);
}

uint64_t sub_10130(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10228;

  return v6(a1);
}

uint64_t sub_10228()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_10320(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_103EC(v11, 0, 0, 1, a1, a2);
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
    sub_1582C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_15760(v11);
  return v7;
}

unint64_t sub_103EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_104F8(a5, a6);
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
    result = sub_18F64();
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

char *sub_104F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_10544(a1, a2);
  sub_10674(&off_20C00);
  return v3;
}

char *sub_10544(uint64_t a1, unint64_t a2)
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

  v6 = sub_10760(v5, 0);
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

  result = sub_18F64();
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
        v10 = sub_18CF4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_10760(v10, 0);
        result = sub_18F44();
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

void sub_10674(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(v3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_107D4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = *(v3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *sub_10760(uint64_t a1, uint64_t a2)
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

  sub_11BB4(&qword_248B8, &qword_19860);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_107D4(char *result, int64_t a2, char a3, char *a4)
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
    sub_11BB4(&qword_248B8, &qword_19860);
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

unint64_t sub_108C8(uint64_t a1, uint64_t a2)
{
  sub_18FE4();
  sub_18CE4();
  v4 = sub_18FF4();

  return sub_10940(a1, a2, v4);
}

unint64_t sub_10940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_18FC4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_109F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_10A18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10A18(char *result, int64_t a2, char a3, char *a4)
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
    sub_11BB4(&qword_24848, &qword_197D8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_10B24(uint64_t a1, uint64_t a2, int64_t a3)
{
  v72 = a1;
  v73 = a2;

  v4 = sub_18D44();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_110A8(v4, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_18F64();
      v8 = v71;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v21 = v8 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (v7)
          {
            v25 = 0;
            v26 = v7 + 1;
            while (1)
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v22)
              {
                if (v27 < 0x41 || v27 >= v23)
                {
                  if (v27 < 0x61 || v27 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              if (is_mul_ok(v25, a3))
              {
                v29 = v25 * a3;
                v30 = v27 + v28;
                v20 = __CFADD__(v29, v30);
                v25 = v29 + v30;
                if (!v20)
                {
                  ++v26;
                  if (--v21)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_127;
            }
          }
        }

        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (v7)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v7;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v20 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v20)
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_127;
          }
        }
      }

      goto LABEL_127;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            if (is_mul_ok(v14, a3))
            {
              v18 = v14 * a3;
              v19 = v16 + v17;
              v20 = v18 >= v19;
              v14 = v18 - v19;
              if (v20)
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_127:

      return;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v72 = v6;
  v73 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v62 = 0;
        v63 = a3 + 48;
        v64 = a3 + 55;
        v65 = a3 + 87;
        if (a3 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          if (is_mul_ok(v62, a3))
          {
            v69 = v62 * a3;
            v70 = v67 + v68;
            v20 = __CFADD__(v69, v70);
            v62 = v69 + v70;
            if (!v20)
            {
              v66 = (v66 + 1);
              if (--v41)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v72 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (is_mul_ok(v43, a3))
          {
            v50 = v43 * a3;
            v51 = v48 + v49;
            v20 = v50 >= v51;
            v43 = v50 - v51;
            if (v20)
            {
              ++v47;
              if (--v42)
              {
                continue;
              }
            }
          }

          goto LABEL_127;
        }
      }

      goto LABEL_127;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v53 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v72 + 1;
      while (1)
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        if (is_mul_ok(v53, a3))
        {
          v60 = v53 * a3;
          v61 = v58 + v59;
          v20 = __CFADD__(v60, v61);
          v53 = v60 + v61;
          if (!v20)
          {
            ++v57;
            if (--v52)
            {
              continue;
            }
          }
        }

        goto LABEL_127;
      }
    }

    goto LABEL_127;
  }

LABEL_132:
  __break(1u);
}

uint64_t sub_110A8(uint64_t a1, unint64_t a2)
{
  v2 = sub_18D54();
  v6 = sub_11128(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_11128(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_18EB4();
    if (!v9 || (v10 = v9, v11 = sub_10760(v9, 0), v12 = sub_11280(v14, v11 + 32, v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_18CD4();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_18CD4();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_18F64();
LABEL_4:

  return sub_18CD4();
}

unint64_t sub_11280(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_114A0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_18D24();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_18F64();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_114A0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_18D04();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_114A0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_18D34();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_18D14();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_1151C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_18F24();
      sub_16278(0, &qword_24870, UIScene_ptr);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_16278(0, &qword_24870, UIScene_ptr);
    if (sub_18F04() != *(a4 + 36))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    sub_18F14();
    swift_dynamicCast();
    v4 = v14;
    v7 = sub_18E74(*(a4 + 40));
    v8 = -1 << *(a4 + 32);
    a1 = v7 & ~v8;
    if ((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1))
    {
      v9 = ~v8;
      do
      {
        v10 = *(*(a4 + 48) + 8 * a1);
        v11 = sub_18E84();

        if (v11)
        {
          goto LABEL_16;
        }

        a1 = (a1 + 1) & v9;
      }

      while (((*(a4 + 56 + ((a1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a1) & 1) != 0);
    }

    __break(1u);
  }

  if ((a1 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= a1)
  {
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_16:
  }

  v12 = *(*(a4 + 48) + 8 * a1);

  v13 = v12;
}

void sub_11740()
{
  v1 = v0;
  v2 = OBJC_IVAR___MessagesViewController_sessionViewModel;
  sub_18944();
  *(v0 + v2) = sub_188F4();
  v3 = OBJC_IVAR___MessagesViewController_handlerManager;
  sub_187C4();
  swift_allocObject();
  *(v0 + v3) = sub_187B4();
  v4 = OBJC_IVAR___MessagesViewController_contactsManager;
  *(v1 + v4) = [objc_allocWithZone(SMContactsManager) init];
  v5 = OBJC_IVAR___MessagesViewController_transactionID;
  v6 = sub_18604();
  (*(*(v6 - 8) + 56))(v1 + v5, 1, 1, v6);
  v7 = OBJC_IVAR___MessagesViewController_messageURL;
  v8 = sub_18554();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  *(v1 + OBJC_IVAR___MessagesViewController_safetyCacheViewModel) = 0;
  v9 = OBJC_IVAR___MessagesViewController_userType;
  v10 = sub_18B04();
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  *(v1 + OBJC_IVAR___MessagesViewController_cancellables) = &_swiftEmptySetSingleton;
  sub_18F74();
  __break(1u);
}

uint64_t type metadata accessor for MessagesViewController(uint64_t a1)
{
  result = qword_249E8;
  if (!qword_249E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1195C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_11994(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B0C;

  return sub_1A74(a1);
}

id sub_11A54()
{
  v1 = *(v0 + 16);
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_18814();

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_11B24()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_11B5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    [Strong requestResize];
  }
}

uint64_t sub_11BB4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_11BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_11BB4(&qword_24890, &qword_197F8);
    v3 = sub_18F94();
    v4 = a1 + 32;

    while (1)
    {
      sub_161B0(v4, &v13, &qword_24898, &qword_19800);
      v5 = v13;
      v6 = v14;
      result = sub_108C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_15990(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_11D2C(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v4 = sub_18934();
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = sub_11BB4(&qword_248E0, &qword_198A0);
  v3[18] = swift_task_alloc();
  v5 = sub_186A4();
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v6 = sub_18554();
  v3[22] = v6;
  v3[23] = *(v6 - 8);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = sub_11BB4(&qword_24768, &qword_196F0);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v7 = sub_18604();
  v3[30] = v7;
  v3[31] = *(v7 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = sub_11BB4(&qword_247B8, &qword_19748);
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v8 = sub_18B54();
  v3[41] = v8;
  v3[42] = *(v8 - 8);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  sub_18DB4();
  v3[48] = sub_18DA4();
  v10 = sub_18D94();
  v3[49] = v10;
  v3[50] = v9;

  return _swift_task_switch(sub_120F0, v10, v9);
}

uint64_t sub_120F0(uint64_t a1)
{
  v74 = v1;
  v3 = v1[11];
  v2 = v1[12];
  v4 = v1[10];
  sub_18B24();
  v5 = v4;
  v6 = v2;
  v7 = v3;
  v8 = sub_18B44();
  v9 = sub_18E34();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[12];
    v11 = v1[10];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v12 = 136316162;
    v14 = v10;
    v15 = [v14 description];
    v16 = sub_18C74();
    v18 = v17;

    v19 = sub_10320(v16, v18, &v73);

    *(v12 + 4) = v19;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_10320(0xD000000000000039, 0x800000000001B810, &v73);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v11;
    *v13 = v11;
    *(v12 + 32) = 2080;
    v20 = [v11 URL];
    if (v20)
    {
      v21 = v20;
      sub_18534();

      v22 = 0;
    }

    else
    {
      v22 = 1;
    }

    v70 = v1[47];
    v28 = v1[41];
    v27 = v1[42];
    v29 = v1[11];
    (*(v1[23] + 56))(v1[40], v22, 1, v1[22]);
    v30 = sub_18CB4();
    v32 = sub_10320(v30, v31, &v73);

    *(v12 + 34) = v32;
    *(v12 + 42) = 2112;
    *(v12 + 44) = v29;
    v13[1] = v29;
    v33 = v29;
    _os_log_impl(&dword_0, v8, v9, "%s, %s: message: %@ url: %s conversation: %@", v12, 0x34u);
    sub_11BB4(&qword_24788, &qword_19728);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v26 = *(v27 + 8);
    v26(v70, v28);
  }

  else
  {
    v23 = v1[47];
    v24 = v1[41];
    v25 = v1[42];

    v26 = *(v25 + 8);
    v26(v23, v24);
  }

  v1[51] = 0x800000000001B810;
  v1[52] = v26;
  v34 = v1[12];
  v35 = objc_opt_self();
  v1[53] = v35;
  v36 = &MessagesViewController__metaData;
  v37 = [v35 sharedApplication];
  v38 = sub_18C64();
  v39 = [v37 beginBackgroundTaskWithName:v38 expirationHandler:0];
  v1[54] = v39;

  v1[55] = *(v34 + OBJC_IVAR___MessagesViewController_sessionViewModel);
  if (sub_188A4())
  {
    v40 = v1[12];

    sub_18B24();
    v41 = v40;
    v42 = sub_18B44();
    v43 = sub_18E34();

    v72 = v43;
    v44 = os_log_type_enabled(v42, v43);
    v45 = v1[46];
    v46 = v1[41];
    if (v44)
    {
      v71 = v1[46];
      v47 = v1[12];
      v48 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *v48 = 136315394;
      v49 = v47;
      v69 = v46;
      v50 = [v49 description];
      v51 = sub_18C74();
      v53 = v52;

      v54 = sub_10320(v51, v53, &v73);

      *(v48 + 4) = v54;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_10320(0xD000000000000039, 0x800000000001B810, &v73);
      _os_log_impl(&dword_0, v42, v72, "%s, %s: Unable to send - session is still initializing", v48, 0x16u);
      swift_arrayDestroy();

      v36 = &MessagesViewController__metaData;

      v56 = v69;
      v55 = v71;
    }

    else
    {

      v55 = v45;
      v56 = v46;
    }

    v26(v55, v56);
    v66 = [v35 v36[11].base_prots];
    [v66 endBackgroundTask:v39];

    v67 = v1[1];

    return v67(0, 0, 0);
  }

  else
  {
    v57 = v1[35];
    v58 = v1[30];
    v59 = v1[31];
    v60 = v1[29];
    v61 = v1[12];
    sub_185F4();
    v62 = *(v59 + 16);
    v1[56] = v62;
    v1[57] = (v59 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v62(v60, v57, v58);
    v63 = *(v59 + 56);
    v1[58] = v63;
    v1[59] = (v59 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v63(v60, 0, 1, v58);
    v64 = OBJC_IVAR___MessagesViewController_transactionID;
    v1[60] = OBJC_IVAR___MessagesViewController_transactionID;
    swift_beginAccess();
    sub_16148(v60, v61 + v64, &qword_24768, &qword_196F0);
    swift_endAccess();
    v65 = swift_task_alloc();
    v1[61] = v65;
    *v65 = v1;
    v65[1] = sub_128BC;

    return SessionViewModel.startSession(needsSendMessage:)(0);
  }
}

uint64_t sub_128BC()
{
  v2 = *v1;
  *(*v1 + 496) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_13ADC;
  }

  else
  {
    v5 = sub_129F8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_129F8()
{
  v194 = v0;

  v1.super.isa = SessionViewModel.startSessionMSMessage()().super.isa;
  v2 = [(objc_class *)v1.super.isa URL];
  if (v2)
  {
    v3 = v2;
    sub_18534();

    v4 = [(objc_class *)v1.super.isa layout];
    if (v4)
    {
      v5 = v4;
      v6 = [(objc_class *)v1.super.isa summaryText];
      if (v6)
      {
        v7 = v6;
        isa = v1.super.isa;
        logb = v0[60];
        v177 = v0[58];
        v170 = v0[35];
        v171 = v0[56];
        v9 = v0[30];
        v8 = v0[31];
        v10 = v0[28];
        v11 = v0[25];
        v12 = v0[23];
        v166 = v0[22];
        v168 = v0[18];
        v173 = v0[17];
        v180 = v0[12];
        v13 = v0[10];
        sub_18524(v180);
        v15 = v14;
        [v13 setURL:v14];

        [v13 setLayout:v5];
        [v13 setSummaryText:v7];

        (*(v12 + 8))(v11, v166);
        v171(v10, v170, v9);
        v177(v10, 0, 1, v9);
        v16 = *(v173 + 48);
        sub_161B0(v10, v168, &qword_24768, &qword_196F0);
        sub_161B0(logb + v180, v168 + v16, &qword_24768, &qword_196F0);
        v17 = *(v8 + 48);
        v18 = v17(v168, 1, v9);
        v19 = v0[30];
        if (v18 == 1)
        {
          sub_16218(v0[28], &qword_24768, &qword_196F0);
          if (v17(v168 + v16, 1, v19) == 1)
          {
            sub_16218(v0[18], &qword_24768, &qword_196F0);
LABEL_33:
            v121 = v0[56];
            v122 = v0[35];
            v123 = v0[32];
            v124 = v0[30];
            v125 = v0[12];
            v126 = v0[10];
            sub_18B24();
            v121(v123, v122, v124);
            v127 = v126;
            v128 = v125;
            v129 = sub_18B44();
            v130 = sub_18E34();

            if (os_log_type_enabled(v129, v130))
            {
              v182 = v130;
              v175 = v0[51];
              v132 = v0[31];
              v131 = v0[32];
              v185 = v0[30];
              v133 = v0[12];
              v134 = v0[10];
              v135 = swift_slowAlloc();
              loga = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *v135 = 136316162;
              v136 = v133;
              v137 = [v136 description];
              v138 = sub_18C74();
              v140 = v139;

              v141 = sub_10320(v138, v140, &v193);

              *(v135 + 4) = v141;
              *(v135 + 12) = 2080;
              *(v135 + 14) = sub_10320(0xD000000000000039, v175, &v193);
              *(v135 + 22) = 2080;
              sub_13E74(&qword_248F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v142 = sub_18FA4();
              v144 = v143;
              v176 = *(v132 + 8);
              v176(v131, v185);
              v145 = sub_10320(v142, v144, &v193);

              *(v135 + 24) = v145;
              *(v135 + 32) = 2112;
              *(v135 + 34) = v134;
              loga->isa = v134;
              *(v135 + 42) = 2080;
              v146 = [(objc_class *)v134 URL];
              if (v146)
              {
                v147 = v146;
                sub_18534();

                v148 = 0;
              }

              else
              {
                v148 = 1;
              }

              v174 = v0[52];
              v157 = v0[43];
              v158 = v0[41];
              v159 = v0[35];
              v160 = v0[30];
              (*(v0[23] + 56))(v0[37], v148, 1, v0[22]);
              v161 = sub_18CB4();
              v163 = sub_10320(v161, v162, &v193);

              *(v135 + 44) = v163;
              _os_log_impl(&dword_0, v129, v182, "%s, %s: transactionID: %s, message, %@, message url, %s", v135, 0x34u);
              sub_16218(loga, &qword_24788, &qword_19728);

              swift_arrayDestroy();

              v174(v157, v158);
              v176(v159, v160);
            }

            else
            {
              v149 = v0[52];
              v150 = v0[43];
              v151 = v0[41];
              v152 = v0[35];
              v154 = v0[31];
              v153 = v0[32];
              v155 = v0[30];

              v156 = *(v154 + 8);
              v156(v153, v155);
              v149(v150, v151);
              v156(v152, v155);
            }

            v65 = v0[53];
            v64 = v0[54];
            v192 = 1;
            goto LABEL_22;
          }
        }

        else
        {
          sub_161B0(v0[18], v0[27], &qword_24768, &qword_196F0);
          if (v17(v168 + v16, 1, v19) != 1)
          {
            v113 = v0[34];
            v114 = v0[30];
            v115 = v0[31];
            v117 = v0[27];
            v116 = v0[28];
            v118 = v0[18];
            (*(v115 + 32))(v113, v168 + v16, v114);
            sub_13E74(&qword_248F8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
            v119 = sub_18BE4();
            v120 = *(v115 + 8);
            v120(v113, v114);
            sub_16218(v116, &qword_24768, &qword_196F0);
            v120(v117, v114);
            sub_16218(v118, &qword_24768, &qword_196F0);
            if (v119)
            {
              goto LABEL_33;
            }

LABEL_28:
            v78 = v0[56];
            v79 = v0[35];
            v80 = v0[33];
            v81 = v0[30];
            v82 = v0[12];
            sub_18B24();
            v78(v80, v79, v81);
            v83 = v82;
            v84 = sub_18B44();
            v85 = sub_18E14();

            if (os_log_type_enabled(v84, v85))
            {
              v181 = v0[44];
              v179 = v0[41];
              v184 = v0[35];
              logc = v0[52];
              v86 = v0[33];
              v87 = v0[30];
              v167 = v0[31];
              v169 = v0[29];
              v172 = v0[60];
              v88 = v0[12];
              v164 = v0[51];
              v165 = v88;
              v89 = swift_slowAlloc();
              v193 = swift_slowAlloc();
              *v89 = 136315906;
              v90 = v88;
              v91 = [v90 description];
              v92 = sub_18C74();
              v94 = v93;

              v95 = sub_10320(v92, v94, &v193);

              *(v89 + 4) = v95;
              *(v89 + 12) = 2080;
              *(v89 + 14) = sub_10320(0xD000000000000039, v164, &v193);
              *(v89 + 22) = 2080;
              sub_13E74(&qword_248F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              LOBYTE(v164) = v85;
              v96 = sub_18FA4();
              v98 = v97;
              v99 = *(v167 + 8);
              v99(v86, v87);
              v100 = v99;
              v101 = sub_10320(v96, v98, &v193);

              *(v89 + 24) = v101;
              *(v89 + 32) = 2080;
              sub_161B0(v165 + v172, v169, &qword_24768, &qword_196F0);
              v102 = sub_18CB4();
              v104 = sub_10320(v102, v103, &v193);

              *(v89 + 34) = v104;
              _os_log_impl(&dword_0, v84, v164, "%s, %s: failed to match transactionID %s against %s", v89, 0x2Au);
              swift_arrayDestroy();

              (logc)(v181, v179);
              v100(v184, v87);
            }

            else
            {
              v105 = v0[52];
              v106 = v0[44];
              v107 = v0[41];
              v108 = v0[35];
              v109 = v0[33];
              v110 = v0[30];
              v111 = v0[31];

              v112 = *(v111 + 8);
              v112(v109, v110);
              v105(v106, v107);
              v112(v108, v110);
            }

            v192 = 0;
            v65 = v0[53];
            v64 = v0[54];
            goto LABEL_22;
          }

          v75 = v0[30];
          v76 = v0[31];
          v77 = v0[27];
          sub_16218(v0[28], &qword_24768, &qword_196F0);
          (*(v76 + 8))(v77, v75);
        }

        sub_16218(v0[18], &qword_248E0, &qword_198A0);
        goto LABEL_28;
      }

      (*(v0[23] + 8))(v0[25], v0[22]);
    }

    else
    {
      (*(v0[23] + 8))(v0[25], v0[22]);
    }
  }

  sub_18B24();
  v20 = v1.super.isa;
  v21 = sub_18B44();
  v22 = sub_18E14();

  v191 = v20;
  if (os_log_type_enabled(v21, v22))
  {
    v183 = v22;
    log = v21;
    v23 = v0[51];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v193 = swift_slowAlloc();
    *v24 = 136316162;
    *(v24 + 4) = sub_10320(0xD000000000000039, v23, &v193);
    *(v24 + 12) = 2080;
    v26 = [(objc_class *)v20 description];
    v27 = sub_18C74();
    v29 = v28;

    v30 = sub_10320(v27, v29, &v193);

    *(v24 + 14) = v30;
    *(v24 + 22) = 2112;
    v31 = [(objc_class *)v20 layout];
    *(v24 + 24) = v31;
    v178 = v25;
    *v25 = v31;
    *(v24 + 32) = 2080;
    v32 = [(objc_class *)v20 URL];
    if (v32)
    {
      v33 = v32;
      sub_18534();

      v34 = 0;
    }

    else
    {
      v34 = 1;
    }

    v39 = v0[38];
    v38 = v0[39];
    v41 = v0[22];
    v40 = v0[23];
    (*(v40 + 56))(v39, v34, 1, v41);
    sub_16084(v39, v38);
    v42 = (*(v40 + 48))(v38, 1, v41);
    v43 = v0[39];
    if (v42)
    {
      sub_16218(v0[39], &qword_247B8, &qword_19748);
      v44 = 0;
      v45 = 0;
    }

    else
    {
      v46 = v0[23];
      v47 = v0[24];
      v48 = v0[22];
      (*(v46 + 16))(v47, v0[39], v48);
      sub_16218(v43, &qword_247B8, &qword_19748);
      v44 = sub_18514();
      v45 = v49;
      (*(v46 + 8))(v47, v48);
    }

    v0[5] = v44;
    v0[6] = v45;
    sub_11BB4(&qword_248E8, &qword_198A8);
    v50 = sub_18CB4();
    v52 = sub_10320(v50, v51, &v193);

    *(v24 + 34) = v52;
    *(v24 + 42) = 2080;
    v53 = [(objc_class *)v20 summaryText];
    if (v53)
    {
      v54 = v53;
      v55 = sub_18C74();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v58 = v0[52];
    v59 = v0[45];
    v60 = v0[41];
    v0[7] = v55;
    v0[8] = v57;
    v61 = sub_18CB4();
    v63 = sub_10320(v61, v62, &v193);

    *(v24 + 44) = v63;
    _os_log_impl(&dword_0, log, v183, "%s, message: %s, message layout: %@, message url: %s, summary text: %s", v24, 0x34u);
    sub_16218(v178, &qword_24788, &qword_19728);

    swift_arrayDestroy();

    v58(v59, v60);
  }

  else
  {
    v35 = v0[52];
    v36 = v0[45];
    v37 = v0[41];

    v35(v36, v37);
  }

  v65 = v0[53];
  v64 = v0[54];
  v66 = v0[35];
  v67 = v0[30];
  v68 = v0[31];
  v69 = v0[20];
  v70 = v0[21];
  v71 = v0[19];
  (*(v69 + 104))(v70, enum case for SendValidity.notReady(_:), v71);
  sub_25DC(v70);

  (*(v69 + 8))(v70, v71);
  (*(v68 + 8))(v66, v67);
  v192 = 0;
LABEL_22:
  v72 = [v65 sharedApplication];
  [v72 endBackgroundTask:v64];

  v73 = v0[1];

  return v73(v192, 0, 0);
}

uint64_t sub_13ADC()
{
  v1 = v0[62];

  v0[9] = v1;
  swift_errorRetain();
  sub_11BB4(&qword_24868, &qword_197F0);
  v2 = swift_dynamicCast();
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[35];
  v6 = v0[31];
  v21 = v0[30];
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[19];
  if (v2)
  {
    v18 = v0[35];
    v19 = v0[53];
    v11 = v0[15];
    v10 = v0[16];
    v20 = v0[54];
    v12 = v0[13];
    v13 = v0[14];

    (*(v13 + 32))(v11, v10, v12);
    sub_18924();
    sub_25DC(v8);
    (*(v7 + 8))(v8, v9);
    v14 = v12;
    v3 = v20;
    (*(v13 + 8))(v11, v14);
    v4 = v19;
    (*(v6 + 8))(v18, v21);
  }

  else
  {

    (*(v7 + 104))(v8, enum case for SendValidity.notReady(_:), v9);
    sub_25DC(v8);

    (*(v7 + 8))(v8, v9);
    (*(v6 + 8))(v5, v21);
  }

  v15 = [v4 sharedApplication];
  [v15 endBackgroundTask:v3];

  v16 = v0[1];

  return v16(0, 0, 0);
}

void sub_13E24()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_6158();
  }
}

uint64_t sub_13E74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_13EBC()
{
  v1 = sub_18B54();
  v0[22] = v1;
  v0[23] = *(v1 - 8);
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  sub_18624();
  v0[26] = swift_task_alloc();
  sub_18C54();
  v0[27] = swift_task_alloc();
  v2 = sub_184B4();
  v0[28] = v2;
  v0[29] = *(v2 - 8);
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  sub_11BB4(&qword_24850, &qword_197E0);
  v0[32] = swift_task_alloc();
  v3 = sub_18504();
  v0[33] = v3;
  v0[34] = *(v3 - 8);
  v0[35] = swift_task_alloc();
  sub_11BB4(&qword_247B8, &qword_19748);
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  v4 = sub_18554();
  v0[38] = v4;
  v0[39] = *(v4 - 8);
  v0[40] = swift_task_alloc();
  sub_18DB4();
  v0[41] = sub_18DA4();
  v6 = sub_18D94();
  v0[42] = v6;
  v0[43] = v5;

  return _swift_task_switch(sub_141AC, v6, v5);
}

uint64_t sub_141AC()
{
  v1 = v0[36];
  v2 = [objc_opt_self() defaultManager];
  v0[44] = v2;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = sub_142EC;
  v3 = swift_continuation_init();
  v0[17] = sub_11BB4(&qword_248C0, &qword_19888);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_4530;
  v0[13] = &unk_20FE0;
  v0[14] = v3;
  [v2 fetchQuickReplySuggestionURLWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_142EC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);
  if (v2)
  {
    v5 = sub_14D40;
  }

  else
  {
    v5 = sub_1441C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1441C()
{
  v75 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 304);
  v3 = *(v0 + 312);
  v5 = *(v0 + 288);
  v4 = *(v0 + 296);

  sub_16084(v5, v4);

  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v6 = *(v0 + 296);
    v7 = &qword_247B8;
    v8 = &qword_19748;
LABEL_5:
    sub_16218(v6, v7, v8);
    sub_18B24();
    v13 = sub_18B44();
    v14 = sub_18E14();
    v15 = os_log_type_enabled(v13, v14);
    v17 = *(v0 + 184);
    v16 = *(v0 + 192);
    v18 = *(v0 + 176);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v74[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_10320(0x677553796C706572, 0xEF6E6F6974736567, v74);
      sub_15760(v20);
    }

    (*(v17 + 8))(v16, v18);
    v70 = 0;
    v71 = 0;
    v69 = 0;
    v72 = 0;
    goto LABEL_27;
  }

  v9 = *(v0 + 264);
  v10 = *(v0 + 272);
  v11 = *(v0 + 256);
  (*(*(v0 + 312) + 32))(*(v0 + 320), *(v0 + 296), *(v0 + 304));
  sub_184E4();
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    v12 = *(v0 + 256);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    v7 = &qword_24850;
    v8 = &qword_197E0;
    v6 = v12;
    goto LABEL_5;
  }

  (*(*(v0 + 272) + 32))(*(v0 + 280), *(v0 + 256), *(v0 + 264));
  v21 = &MessagesViewController__metaData;
  v22 = [objc_allocWithZone(MSSession) init];
  v23 = [objc_allocWithZone(MSMessage) initWithSession:v22];

  result = sub_184C4();
  v25 = result;
  if (result)
  {
    v73 = v23;
    v26 = *(result + 16);
    if (v26)
    {
      v27 = 0;
      v28 = *(v0 + 232);
      v29 = (v28 + 8);
      while (1)
      {
        if (v27 >= *(v25 + 16))
        {
          __break(1u);
          return result;
        }

        (*(v28 + 16))(*(v0 + 240), v25 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27, *(v0 + 224));
        if (sub_18494() == 0xD00000000000001DLL && 0x800000000001B720 == v30)
        {
          break;
        }

        v32 = sub_18FC4();

        if (v32)
        {
          goto LABEL_21;
        }

        ++v27;
        result = (*v29)(*(v0 + 240), *(v0 + 224));
        if (v26 == v27)
        {
          goto LABEL_18;
        }
      }

LABEL_21:

      v34 = *(v0 + 248);
      v35 = *(v0 + 224);
      (*(*(v0 + 232) + 32))(v34, *(v0 + 240), v35);
      v25 = sub_184A4();
      v37 = v36;
      (*v29)(v34, v35);
      v21 = &MessagesViewController__metaData;
      if (v37)
      {

        sub_18BF4();
        sub_16278(0, &qword_24888, SMSafetyMonitorManager_ptr);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v39 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        sub_18614();
        LOWORD(v62) = 2;
        sub_18C94();
        sub_11BB4(&qword_248D0, &qword_19898);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_196D0;
        *(v40 + 56) = &type metadata for String;
        *(v40 + 64) = sub_160F4();
        *(v40 + 32) = v25;
        *(v40 + 40) = v37;
        sub_18C84();

        v41 = sub_18C64();
        v33 = v37;

        v23 = v73;
        [v73 setSummaryText:{v41, "Start message destination bounded session with customised summary text, 1st argument is destination address i.e 13425 Poway Rd, Poway", 133, v62}];
      }

      else
      {
        v33 = 0;
        v23 = v73;
      }
    }

    else
    {
LABEL_18:

      v25 = 0;
      v33 = 0;
      v21 = &MessagesViewController__metaData;
    }
  }

  else
  {
    v33 = 0;
  }

  v42 = [objc_allocWithZone(MSMessageTemplateLayout) *&v21[7].flags];
  v43 = [v23 summaryText];
  [v42 setCaption:v43];

  v44 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v42];
  [v23 setLayout:v44];

  sub_18524(v45);
  v47 = v46;
  [v23 setURL:v46];

  [v23 setRequiresValidation:1];
  v72 = [objc_opt_self() hasUserCompletedOnboarding] ^ 1;
  sub_18B24();

  v48 = v23;
  v49 = sub_18B44();
  v50 = sub_18E34();
  v71 = v48;

  v51 = os_log_type_enabled(v49, v50);
  v52 = *(v0 + 312);
  v53 = *(v0 + 320);
  v54 = *(v0 + 272);
  v67 = *(v0 + 280);
  v68 = *(v0 + 304);
  v65 = *(v0 + 200);
  v66 = *(v0 + 264);
  v55 = *(v0 + 184);
  v64 = *(v0 + 176);
  v69 = v25;
  v70 = v33;
  if (v51)
  {
    v63 = *(v0 + 320);
    v56 = swift_slowAlloc();
    v74[0] = swift_slowAlloc();
    *v56 = 136315394;
    *(v56 + 4) = sub_10320(0x677553796C706572, 0xEF6E6F6974736567, v74);
    *(v56 + 12) = 2080;
    *(v0 + 144) = v71;
    *(v0 + 152) = v25;
    *(v0 + 160) = v33;
    *(v0 + 168) = v72;
    v57 = v71;

    sub_11BB4(&qword_248C8, &qword_19890);
    v58 = sub_18CB4();
    v60 = sub_10320(v58, v59, v74);

    *(v56 + 14) = v60;
    _os_log_impl(&dword_0, v49, v50, "%s: %s", v56, 0x16u);
    swift_arrayDestroy();

    (*(v55 + 8))(v65, v64);
    (*(v54 + 8))(v67, v66);
    (*(v52 + 8))(v63, v68);
  }

  else
  {

    (*(v55 + 8))(v65, v64);
    (*(v54 + 8))(v67, v66);
    (*(v52 + 8))(v53, v68);
  }

LABEL_27:

  v61 = *(v0 + 8);

  return v61(v71, v69, v70, v72);
}

uint64_t sub_14D40()
{
  v16 = v0;
  v1 = v0[44];
  v2 = v0[38];
  v3 = v0[39];
  v4 = v0[37];

  swift_willThrow();

  (*(v3 + 56))(v4, 1, 1, v2);
  sub_16218(v0[37], &qword_247B8, &qword_19748);
  sub_18B24();
  v5 = sub_18B44();
  v6 = sub_18E14();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  if (v7)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_10320(0x677553796C706572, 0xEF6E6F6974736567, &v15);
    sub_15760(v12);
  }

  (*(v9 + 8))(v8, v10);

  v13 = v0[1];

  return v13(0, 0, 0, 0);
}

void sub_14F94()
{
  v1 = sub_18B54();
  v40 = *(v1 - 8);
  __chkstk_darwin(v1);
  v39 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_11BB4(&qword_24798, &qword_19738);
  __chkstk_darwin(v3 - 8);
  v5 = &v38 - v4;
  v6 = sub_18604();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v38 - v11;
  v13 = sub_18B04();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v0 activeConversation];
  if (v17)
  {
    v39 = v0;
    v40 = v17;
    v18 = [v17 selectedMessage];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 senderParticipantIdentifier];
      sub_185E4();

      v21 = [v40 localParticipantIdentifier];
      sub_185E4();

      LOBYTE(v21) = sub_185D4();
      v22 = *(v7 + 8);
      v22(v10, v6);
      v22(v12, v6);
      v23 = &enum case for UserType.initiator(_:);
      if ((v21 & 1) == 0)
      {
        v23 = &enum case for UserType.receiver(_:);
      }

      (*(v14 + 104))(v16, *v23, v13);
      (*(v14 + 32))(v5, v16, v13);
      (*(v14 + 56))(v5, 0, 1, v13);
      v24 = OBJC_IVAR___MessagesViewController_userType;
      v25 = v39;
      swift_beginAccess();
      sub_16148(v5, &v25[v24], &qword_24798, &qword_19738);
      swift_endAccess();
    }

    else
    {
      v37 = v40;
    }
  }

  else
  {
    v38 = v1;
    v26 = v39;
    sub_18B24();
    v27 = v0;
    v28 = sub_18B44();
    v29 = sub_18E24();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v41[0] = swift_slowAlloc();
      *v30 = 136315650;
      v31 = v27;
      v32 = [v31 description];
      v33 = sub_18C74();
      v35 = v34;

      v36 = sub_10320(v33, v35, v41);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_10320(0xD000000000000012, 0x800000000001B660, v41);
      *(v30 + 22) = 2080;
      *(v30 + 24) = sub_10320(0xD000000000000012, 0x800000000001B660, v41);
      _os_log_impl(&dword_0, v28, v29, "%s, %s: No active conversation in %s.", v30, 0x20u);
      swift_arrayDestroy();
    }

    (*(v40 + 1))(v26, v38);
  }
}

void sub_15504(uint64_t a1)
{
  sub_15690(319, &qword_247E8, &type metadata accessor for UUID);
  if (v1 <= 0x3F)
  {
    sub_15690(319, &qword_247F0, &type metadata accessor for URL);
    if (v2 <= 0x3F)
    {
      sub_15690(319, &qword_247F8, &type metadata accessor for UserType);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_15690(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18EA4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_156E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_156FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_15760(void *a1)
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

uint64_t *sub_157AC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1582C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_158A4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_158E8()
{
  result = qword_24878;
  if (!qword_24878)
  {
    sub_16278(255, &qword_24870, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24878);
  }

  return result;
}

uint64_t sub_15950()
{

  return _swift_deallocObject(v0, 32, 7);
}

_OWORD *sub_15990(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double sub_159A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_159AC()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_15A04()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_164AC;

  return sub_39E4(v2, v3, v4, v5, v6);
}

uint64_t sub_15AD0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_164AC;

  return sub_FB6C(v2, v3, v4);
}

uint64_t sub_15B90()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_15BD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_164AC;

  return sub_FC54(a1, v4, v5, v6);
}

uint64_t sub_15C9C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_15CD4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_164AC;

  return sub_10038(a1, v4);
}

uint64_t sub_15D8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_15DCC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_15E0C()
{
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1B0C;

  return sub_3D64(v4, v5, v6, v7, v2, v3);
}

uint64_t sub_15EA4()
{
  v1 = sub_18554();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_15F68()
{
  v1 = *(sub_18554() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_C804(v2, v3);
}

uint64_t sub_15FCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_164AC;

  return sub_10130(a1, v4);
}

uint64_t sub_16084(uint64_t a1, uint64_t a2)
{
  v4 = sub_11BB4(&qword_247B8, &qword_19748);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_160F4()
{
  result = qword_248D8;
  if (!qword_248D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_248D8);
  }

  return result;
}

uint64_t sub_16148(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_11BB4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_161B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_11BB4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_16218(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_11BB4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_16278(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_162C0()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_16300()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [v2 parentViewController];
  if (v3)
  {
    v4 = v3;
    [v3 presentViewController:v1 animated:1 completion:0];
  }

  else
  {

    [v2 presentViewController:v1 animated:1 completion:0];
  }
}

uint64_t sub_163B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_163C8()
{
  result = qword_24918;
  if (!qword_24918)
  {
    sub_1642C(&qword_24910, &unk_198B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_24918);
  }

  return result;
}

uint64_t sub_1642C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

id SMMessage.init(message:)(void *a1)
{
  v2 = sub_11BB4(&qword_247B8, &qword_19748);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v21 - v6;
  v8 = sub_18554();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
LABEL_8:
    sub_16738(v7);
    return 0;
  }

  v12 = [a1 URL];
  if (v12)
  {
    v13 = v12;
    sub_18534();

    (*(v9 + 56))(v5, 0, 1, v8);
  }

  else
  {
    (*(v9 + 56))(v5, 1, 1, v8);
  }

  sub_16084(v5, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

    goto LABEL_8;
  }

  (*(v9 + 32))(v11, v7, v8);
  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18524(v16);
  v18 = v17;
  v19 = [v15 initWithURL:v17];

  v20 = v19;
  (*(v9 + 8))(v11, v8);
  if (v20)
  {

    return v20;
  }

  return 0;
}

uint64_t sub_16738(uint64_t a1)
{
  v2 = sub_11BB4(&qword_247B8, &qword_19748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

MSMessage __swiftcall SessionViewModel.startSessionMSMessage()()
{
  v0 = sub_11BB4(&qword_247B8, &qword_19748);
  __chkstk_darwin(v0 - 8);
  v2 = v73 - v1;
  v3 = sub_18624();
  __chkstk_darwin(v3 - 8);
  v73[3] = v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18C54();
  __chkstk_darwin(v5 - 8);
  v73[2] = v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18C34();
  __chkstk_darwin(v7 - 8);
  v73[1] = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18604();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_11BB4(&qword_24768, &qword_196F0);
  __chkstk_darwin(v13 - 8);
  v15 = v73 - v14;
  v16 = sub_11BB4(&qword_24850, &qword_197E0);
  v17 = __chkstk_darwin(v16 - 8);
  v76 = v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = v73 - v19;
  v21 = sub_18804();
  v22 = v21;
  v74 = v2;
  if (v21)
  {
    v23 = [v21 outputToURLComponents];
    sub_184D4();

    v24 = sub_18504();
    (*(*(v24 - 8) + 56))(v20, 0, 1, v24);
  }

  else
  {
    v25 = sub_18504();
    (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  }

  v78 = v20;
  v77 = [objc_allocWithZone(MSMessageTemplateLayout) init];
  if (v22)
  {
    v26 = [v22 sessionID];
    sub_185E4();

    (*(v10 + 56))(v15, 0, 1, v9);
    sub_16218(v15, &qword_24768, &qword_196F0);
    v27 = [v22 sessionID];
    sub_185E4();

    v28 = objc_allocWithZone(MSSession);
    isa = sub_185C4().super.isa;
    (*(v10 + 8))(v12, v9);
    v30 = [v28 initWithIdentifier:isa];

    if (v30)
    {
      v31 = v30;
      v75 = v31;
      goto LABEL_9;
    }
  }

  else
  {
    (*(v10 + 56))(v15, 1, 1, v9);
    sub_16218(v15, &qword_24768, &qword_196F0);
  }

  v31 = [objc_allocWithZone(MSSession) init];
  v75 = 0;
LABEL_9:
  v32 = v74;
  v33 = v76;
  v34 = [objc_allocWithZone(MSMessage) initWithSession:v31];

  if (v22)
  {
    v35 = [v22 summaryText];
    sub_18C74();
    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  sub_18824();
  v38 = sub_18994();

  if (v38 == 2 && (v39 = sub_188C4(), (v40 & 1) == 0) && v39 == 4)
  {
    v41 = sub_18864();
    if (v41)
    {
      v42 = v41;
      v43 = [v41 _shortAddress];

      if (v43)
      {

        v44 = sub_18C74();
        v46 = v45;

        sub_18C24();
        v79._countAndFlagsBits = 0x49A0C26B63656843;
        v79._object = 0xAB00000000203A6ELL;
        sub_18C14(v79);
        v80._countAndFlagsBits = v44;
        v80._object = v46;
        sub_18C04(v80);

        v81._countAndFlagsBits = 0;
        v81._object = 0xE000000000000000;
        sub_18C14(v81);
        sub_18C44();
        sub_183A8();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v48 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
        sub_18614();
LABEL_22:
        sub_18C94();
        v37 = v58;
      }
    }
  }

  else
  {
    sub_18824();
    v49 = sub_18994();

    if (v49 == 3)
    {
      v50 = sub_18864();
      if (v50)
      {
        v51 = v50;
        v52 = [v50 _shortAddress];

        if (v52)
        {

          v53 = sub_18C74();
          v55 = v54;

          sub_18C24();
          v82._object = 0x800000000001B910;
          v82._countAndFlagsBits = 0x1000000000000019;
          sub_18C14(v82);
          v83._countAndFlagsBits = v53;
          v83._object = v55;
          sub_18C04(v83);

          v84._countAndFlagsBits = 0;
          v84._object = 0xE000000000000000;
          sub_18C14(v84);
          sub_18C44();
          sub_183A8();
          v56 = swift_getObjCClassFromMetadata();
          v57 = [objc_opt_self() bundleForClass:v56];
          sub_18614();
          goto LABEL_22;
        }
      }
    }
  }

  v59 = v78;
  sub_18338(v78, v33);
  v60 = sub_18504();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v33, 1, v60) == 1)
  {
    sub_16218(v33, &qword_24850, &qword_197E0);
    v62 = sub_18554();
    (*(*(v62 - 8) + 56))(v32, 1, 1, v62);
    v63 = 0;
  }

  else
  {
    sub_184F4();
    (*(v61 + 8))(v33, v60);
    v64 = sub_18554();
    v65 = *(v64 - 8);
    v63 = 0;
    if ((*(v65 + 48))(v32, 1, v64) != 1)
    {
      sub_18524(v66);
      v63 = v67;
      (*(v65 + 8))(v32, v64);
    }
  }

  [v34 setURL:v63];

  if (v37)
  {

    v68 = sub_18C64();

    [v34 setSummaryText:v68];

    v69 = sub_18C64();
  }

  else
  {
    [v34 setSummaryText:0];
    v69 = 0;
  }

  v70 = v77;
  [v77 setCaption:v69];

  v71 = [objc_allocWithZone(MSMessageLiveLayout) initWithAlternateLayout:v70];
  [v34 setLayout:v71];

  [v34 setRequiresValidation:1];
  sub_16218(v59, &qword_24850, &qword_197E0);
  return v34;
}

uint64_t UserSessionConfiguration.update(with:)(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_18AE4();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_18B54();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v5 = sub_185B4();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  sub_11BB4(&qword_24768, &qword_196F0);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_173D4, 0, 0);
}

uint64_t sub_173D4()
{
  if ([*(v0 + 24) sessionType])
  {
    [*(v0 + 24) sessionType];
  }

  else
  {
    sub_18994();
  }

  sub_189A4();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1749C;
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);

  return sub_17E64(v3, v2);
}

uint64_t sub_1749C(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return _swift_task_switch(sub_1759C, 0, 0);
}

uint64_t sub_1759C()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 24);
  sub_18984();
  [v2 destinationType];
  sub_189D4();
  v3 = [v2 sessionID];
  sub_185E4();

  v4 = sub_18604();
  (*(*(v4 - 8) + 56))(v1, 0, 1, v4);
  sub_18A04();
  v5 = sub_18974();
  *(v0 + 160) = v5;
  if (v5)
  {
    v6 = v5;
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 104);
    v10 = *(v0 + 112);
    v11 = [*(v0 + 24) estimatedEndTime];
    sub_185A4();

    sub_18584();
    LOBYTE(v11) = sub_18594();
    v12 = *(v10 + 8);
    v12(v8, v9);
    v12(v7, v9);
    if (v11)
    {
      sub_18B24();
      v13 = sub_18B44();
      v14 = sub_18E14();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_0, v13, v14, "UserSessionConfiguration, needs ETA: YES", v15, 2u);
      }

      v16 = *(v0 + 96);
      v17 = *(v0 + 64);
      v18 = *(v0 + 72);
      v20 = *(v0 + 48);
      v19 = *(v0 + 56);
      v21 = *(v0 + 40);

      v22 = *(v18 + 8);
      *(v0 + 168) = v22;
      v22(v16, v17);
      (*(v20 + 104))(v19, enum case for ETAType.automobile(_:), v21);
      sub_189E4();
      v23 = swift_task_alloc();
      *(v0 + 176) = v23;
      *v23 = v0;
      v23[1] = sub_17964;

      return MKMapItem.estimatedETA(for:)(1);
    }
  }

  sub_18B24();
  v24 = sub_18B44();
  v25 = sub_18E14();
  v26 = os_log_type_enabled(v24, v25);
  v27 = *(v0 + 88);
  v28 = *(v0 + 64);
  v29 = *(v0 + 72);
  if (v26)
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v24, v25, "UserSessionConfiguration, needs ETA: NO", v30, 2u);
  }

  (*(v29 + 8))(v27, v28);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_17964(double a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_17B6C;
  }

  else
  {
    *(v4 + 192) = a1;
    v5 = sub_17A88;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_17A88()
{
  sub_189C4();
  sub_189B4();
  if (v1)
  {
    sub_18704();
  }

  v2 = *(v0 + 160);
  sub_189F4();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_17B6C(uint64_t a1)
{
  v21 = v1;
  sub_18B24();

  swift_errorRetain();
  v2 = sub_18B44();
  v3 = sub_18E14();

  if (os_log_type_enabled(v2, v3))
  {
    v18 = *(v1 + 80);
    v19 = *(v1 + 168);
    v16 = *(v1 + 160);
    v17 = *(v1 + 64);
    v4 = *(v1 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v5 = 136315650;
    *(v1 + 16) = v4;
    sub_18A14();

    v7 = sub_18CB4();
    v9 = sub_10320(v7, v8, &v20);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_10320(0x7728657461647075, 0xED0000293A687469, &v20);
    *(v5 + 22) = 2112;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 24) = v10;
    *v6 = v10;
    _os_log_impl(&dword_0, v2, v3, "%s, %s: error: %@", v5, 0x20u);
    sub_16218(v6, &qword_24788, &qword_19728);

    swift_arrayDestroy();

    v19(v18, v17);
  }

  else
  {
    v11 = *(v1 + 168);
    v12 = *(v1 + 80);
    v13 = *(v1 + 64);

    v11(v12, v13);
  }

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_17E64(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_17E84, 0, 0);
}

uint64_t sub_17E84()
{
  v1 = [*(v0 + 152) destinationMapItem];
  if (v1)
  {
    v2 = v1;
    v3 = sub_18574();
    v5 = v4;

    *(v0 + 168) = v3;
    *(v0 + 176) = v5;
    v6 = objc_opt_self();
    isa = sub_18564().super.isa;
    *(v0 + 184) = isa;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_18054;
    v8 = swift_continuation_init();
    *(v0 + 136) = sub_11BB4(&qword_24920, &unk_198D0);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_18268;
    *(v0 + 104) = &unk_21058;
    *(v0 + 112) = v8;
    [v6 _mapItemFromHandle:isa completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    if (sub_18994() == 2)
    {
      v9 = sub_18974();
    }

    else
    {
      v9 = 0;
    }

    v10 = *(v0 + 8);

    return v10(v9);
  }
}

uint64_t sub_18054()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_181D4;
  }

  else
  {
    v2 = sub_18164;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_18164()
{
  v1 = v0[23];
  sub_1840C(v0[21], v0[22]);
  v2 = v0[18];

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_181D4(uint64_t a1)
{
  v2 = v1[23];
  v4 = v1[21];
  v3 = v1[22];
  swift_willThrow();
  sub_1840C(v4, v3);

  v5 = v1[1];

  return v5(0);
}

uint64_t sub_18268(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_158A4((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_11BB4(&qword_24868, &qword_197F0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_18338(uint64_t a1, uint64_t a2)
{
  v4 = sub_11BB4(&qword_24850, &qword_197E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_183A8()
{
  result = qword_24888;
  if (!qword_24888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_24888);
  }

  return result;
}

uint64_t sub_1840C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}