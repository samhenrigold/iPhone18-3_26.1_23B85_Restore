id closure #1 in DOCSidebarItem.presentInfoViewController(from:for:in:)(void *a1, void *a2, void *a3)
{
  [a1 setModalPresentationStyle_];
  v6 = [a1 popoverPresentationController];
  if (v6)
  {
    v7 = v6;
    [v6 setSourceView_];
  }

  v8 = [a1 popoverPresentationController];
  if (v8)
  {
    v9 = v8;
    [a2 bounds];
    [v9 setSourceRect_];
  }

  return [a3 presentViewController:a1 animated:1 completion:0];
}

void DOCSidebarItem.presentInfoErrorViewController(from:for:using:in:)(char *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *&a1[OBJC_IVAR___DOCSidebarViewController_actionManager];
  v65 = *&a1[OBJC_IVAR___DOCSidebarViewController_configuration];
  v8 = v7;
  v9 = [a3 identifier];
  v10 = [a3 displayName];
  if (!v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = MEMORY[0x24C1FAD20](v11);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v9 title:v10];

  [v12 setIsFPV2_];
  v13 = [a3 promptText];
  if (!v13)
  {
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = MEMORY[0x24C1FAD20](v14);
  }

  [v12 setPromptText_];

  v15 = objc_allocWithZone(type metadata accessor for DOCErrorViewController());
  *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] = a3;
  *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location] = v12;
  *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error] = a2;
  v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI] = 0;
  v16 = a3;
  v17 = v12;
  v18 = a2;
  v66 = a2;
  v19 = _convertErrorToNSError(_:)();
  v20 = [v19 domain];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {

      v29 = 0;
      v27 = v4;
      goto LABEL_14;
    }
  }

  v26 = [v19 code];

  v27 = v4;
  if (v26 == -1000 && (v28 = *&v16[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain]) != 0)
  {
    v29 = [objc_opt_self() authenticationActionForProviderDomain_];
  }

  else
  {
    v29 = 0;
  }

LABEL_14:
  *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction] = v29;
  v30 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(v65, 0, v8);

  v31 = [a1 view];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 window];

    if (v33)
    {
      v34 = [v33 rootViewController];

      if (v34)
      {
        objc_opt_self();
        v35 = swift_dynamicCastObjCClass();
        if (v35)
        {
          v36 = [v35 effectiveBrowserViewController];

          if (v36)
          {
            v37 = &v30[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting];
            swift_beginAccess();
            *(v37 + 1) = &protocol witness table for DOCBrowserContainerController;
            swift_unknownObjectWeakAssign();
          }
        }

        else
        {
        }
      }
    }

    v38 = type metadata accessor for DOCGetInfoErrorPresentingViewController();
    v39 = objc_allocWithZone(v38);
    *&v39[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCGetInfoErrorPresentingViewController_errorViewController] = v30;
    v69.receiver = v39;
    v69.super_class = v38;
    v40 = v30;
    v41 = objc_msgSendSuper2(&v69, sel_init);
    [v41 setModalPresentationStyle_];
    v42 = [v41 popoverPresentationController];
    if (v42)
    {
      v43 = v42;
      [v42 setSourceView_];
    }

    v44 = [v41 popoverPresentationController];

    if (v44)
    {
      [v64 bounds];
      [v44 setSourceRect_];
    }

    v45 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v40 action:sel_doc_dismissViewController];
    v46 = [v40 navigationItem];
    [v46 setRightBarButtonItem_];

    if (one-time initialization token for Sidebar != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    __swift_project_value_buffer(v47, static Logger.Sidebar);
    v48 = v66;
    outlined init with copy of DOCSidebarItem(v27, v68);
    v49 = Logger.logObject.getter();
    v50 = static os_log_type_t.error.getter();
    outlined destroy of DOCSidebarItem(v27);

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v68[0] = v52;
      *v51 = 136315650;
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000032, 0x8000000249BE3E40, v68);
      *(v51 + 4) = v53;
      *(v51 + 12) = 2080;
      v54 = DOCSidebarItem.representedLocation.getter(v53);
      v55 = [v54 displayName];

      if (v55)
      {
        v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v58 = v57;
      }

      else
      {
        v56 = 0;
        v58 = 0xE000000000000000;
      }

      v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v58, v68);

      *(v51 + 14) = v59;
      *(v51 + 22) = 2080;
      swift_getErrorValue();
      v60 = Error.localizedDescription.getter();
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, v68);

      *(v51 + 24) = v62;
      _os_log_impl(&dword_2493AC000, v49, v50, "%s: Showing error controller for location: %s and error: %s.", v51, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v52, -1, -1);
      MEMORY[0x24C1FE850](v51, -1, -1);
    }

    [a1 presentViewController:v41 animated:1 completion:0];
  }

  else
  {
    __break(1u);
  }
}

void DOCSidebarItem.removeFromSidebar(in:sourceVisibilityController:)(void *a1)
{
  v3 = *v1;
  v4 = type metadata accessor for DOCSidebarItemCell(0);
  v17.receiver = a1;
  v17.super_class = v4;
  v5 = objc_msgSendSuper2(&v17, sel_isSelected);
  v16.receiver = a1;
  v16.super_class = v4;
  objc_msgSendSuper2(&v16, sel_setSelected_, 0);
  v15.receiver = a1;
  v15.super_class = v4;
  if (v5 != objc_msgSendSuper2(&v15, sel_isSelected))
  {
    [a1 setNeedsUpdateConfiguration];
  }

  v7 = *(v1 + 40);
  if (*(v1 + 40))
  {
    if (v7 == 3)
    {
      v10 = *(v1 + 8);
      v11 = *(v1 + 16);
      if (one-time initialization token for sharedManager != -1)
      {
        v13 = *(v1 + 8);
        v14 = v11;
        swift_once();
        v11 = v14;
        v10 = v13;
      }

      DOCSmartFolderManager.delete(hotFolder:for:)(v3, v10, v11, v6);
    }

    else if (v7 == 1)
    {
      DOCSourceVisibilityController.visitedSourceIdentifiers.getter();
      v8 = [(DOCDocumentSource *)v3 identifier];
      v9 = specialized Set.contains(_:)();

      if ((v9 & 1) == 0 && [(DOCDocumentSource *)v3 status]&& [(DOCDocumentSource *)v3 status]!= 2)
      {
        DOCSourceVisibilityController.addVisitedSource(source:)(v3);
      }

      specialized DOCDocumentSource.setHidden(hidden:completion:)(1, v3);
    }
  }

  else
  {
    v12 = [objc_opt_self() sharedManager];
    [v12 removeFavorite:v3 completion:0];
  }
}

double closure #1 in DOCSidebarItem.erase(from:in:)(void *a1, void *a2, void *a3)
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v7 = a1;
  v8 = a2;
  v9 = a3;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in DOCSidebarItem.erase(from:in:)(void *a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static Logger.Rename);
    v8 = a1;
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v35 = v14;
      *v12 = 138412546;
      *(v12 + 4) = v9;
      *v13 = v9;
      *(v12 + 12) = 2080;
      v15 = a1;
      v16 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v17 = String.init<A>(describing:)();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v35);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_2493AC000, v10, v11, "[Erase] Source: %@ failed with error: %s ", v12, 0x16u);
      outlined destroy of CharacterSet?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x24C1FE850](v14, -1, -1);
      MEMORY[0x24C1FE850](v12, -1, -1);
    }

    v20 = _convertErrorToNSError(_:)();
    DOCPresentAlertForError();
  }

  else
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.Rename);
    v22 = a2;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      *(v25 + 4) = v22;
      *v26 = v22;
      v27 = v22;
      _os_log_impl(&dword_2493AC000, v23, v24, "[Erase] Source: %@ succeeded.", v25, 0xCu);
      outlined destroy of CharacterSet?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v26, -1, -1);
      MEMORY[0x24C1FE850](v25, -1, -1);
    }

    v28 = v22;
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_2493AC000, v29, v30, "[Erase] Source: %@ finished. Invoking sidebar update block to refresh items.", v31, 0xCu);
      outlined destroy of CharacterSet?(v32, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v32, -1, -1);
      MEMORY[0x24C1FE850](v31, -1, -1);
    }

    v34 = (*((*MEMORY[0x277D85000] & *a3) + 0x520))();
    [v34 invokeUpdateBlock];
  }
}

void *DOCSidebarItem.rename(from:in:)(void *result, void *a2)
{
  if (*(v2 + 40) <= 3u)
  {
    v4 = result;
    v5 = objc_opt_self();
    [v5 begin];
    v6 = swift_allocObject();
    *(v6 + 16) = a2;
    v9[4] = partial apply for closure #1 in DOCSidebarItem.rename(from:in:);
    v9[5] = v6;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v9[3] = &block_descriptor_61_0;
    v7 = _Block_copy(v9);
    v8 = a2;

    [v5 setCompletionBlock_];
    _Block_release(v7);
    DOCSidebarViewController.setEditMode(_:animated:)(DocumentManagerExecutables_DOCCollectionViewEditMode_individualRow, 1);
    (*((*MEMORY[0x277D85000] & *v4) + 0x460))(1);
    return [v5 commit];
  }

  return result;
}

id closure #1 in DOCSidebarItem.rename(from:in:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v10.receiver = a1;
  v10.super_class = ObjectType;
  if (objc_msgSendSuper2(&v10, sel_isSelected))
  {
    v3 = direct field offset for DOCSidebarItemCell.shouldRestoreSelectionOnFinishedRename;
    swift_beginAccess();
    a1[v3] = 1;
    v9.receiver = a1;
    v9.super_class = ObjectType;
    LODWORD(v3) = objc_msgSendSuper2(&v9, sel_isSelected);
    v8.receiver = a1;
    v8.super_class = ObjectType;
    objc_msgSendSuper2(&v8, sel_setSelected_, 0);
    v7.receiver = a1;
    v7.super_class = ObjectType;
    if (v3 != objc_msgSendSuper2(&v7, sel_isSelected))
    {
      [a1 setNeedsUpdateConfiguration];
    }
  }

  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(1);
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  v4 = direct field offset for DOCSidebarItemCell._inlineEditingTextField;
  v5 = *&a1[direct field offset for DOCSidebarItemCell._inlineEditingTextField];
  if (v5)
  {
    [v5 setUserInteractionEnabled_];
  }

  DOCSidebarItemCell.applyIsEditingChangeToTextFields(editing:)(1);
  DOCSidebarItemCell.createInlineEditingTextFieldIfNeeded(force:)(0);
  result = *&a1[v4];
  if (result)
  {
    return [result becomeFirstResponder];
  }

  return result;
}

void closure #1 in DOCSidebarItem.newWindowMenuAction(from:using:)(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v70);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v70[0] = v12;
    *v11 = 136315394;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BE3CB0, v70);
    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    v14 = DOCSidebarItem.representedLocation.getter(v13);
    v15 = [v14 displayName];

    if (v15)
    {
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0xE000000000000000;
    }

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v70);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s: Performing context menu action for location: %s.", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);

    a4 = v10;
  }

  else
  {
  }

  v21 = *(a2 + 40);
  if (v21 == 1)
  {
    goto LABEL_15;
  }

  v22 = *a2;
  if (v21 == 2)
  {
    v50 = DOCSidebarItem.representedLocation.getter(v19);
    v51 = [v22 displayName];
    v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    *(inited + 32) = 0xD000000000000036;
    *(inited + 40) = 0x8000000249BD4210;
    v56 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(inited + 48) = v50;
    *(inited + 72) = v56;
    *(inited + 80) = 0xD000000000000035;
    *(inited + 120) = MEMORY[0x277D837D0];
    *(inited + 88) = 0x8000000249BE3C70;
    *(inited + 96) = v52;
    *(inited + 104) = v54;
    v57 = v50;
    v58 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
    swift_arrayDestroy();
    v59 = [a3 effectiveAppearance];
    v60 = *&a3[OBJC_IVAR___DOCSidebarViewController_configuration];
    v61 = type metadata accessor for DOCActionContext();
    v62 = objc_allocWithZone(v61);
    swift_unknownObjectWeakInit();
    *&v62[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v62[OBJC_IVAR___DOCActionContext_appearance] = v59;
    *&v62[OBJC_IVAR___DOCActionContext_configuration] = v60;
    *&v62[OBJC_IVAR___DOCActionContext_presentingViewController] = a3;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v62[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v62[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
    *&v62[OBJC_IVAR___DOCActionContext_userInfo] = v58;
    v67.receiver = v62;
    v67.super_class = v61;
    v63 = v59;
    v64 = v60;
    v65 = a3;
    v37 = objc_msgSendSuper2(&v67, sel_init);

    goto LABEL_25;
  }

  if (v21 == 6 && ((v24 = *(a2 + 8), v23 = *(a2 + 16), v25 = *(a2 + 24) | *(a2 + 32), !(v25 | v22 | v23 | v24)) || v22 == 1 && !(v25 | v23 | v24)))
  {
LABEL_15:
    v26 = DOCSidebarItem.representedLocation.getter(v19);
    v27 = [a3 effectiveAppearance];
    v28 = *&a3[OBJC_IVAR___DOCSidebarViewController_configuration];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
    v29 = swift_initStackObject();
    *(v29 + 16) = xmmword_249B9A480;
    *(v29 + 32) = 0xD000000000000036;
    *(v29 + 40) = 0x8000000249BD4210;
    *(v29 + 72) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    *(v29 + 48) = v26;
    v30 = v26;
    v31 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v29);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v29 + 32, &_sSS_yptMd, &_sSS_yptMR);
    v32 = type metadata accessor for DOCActionContext();
    v33 = objc_allocWithZone(v32);
    swift_unknownObjectWeakInit();
    *&v33[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v33[OBJC_IVAR___DOCActionContext_appearance] = v27;
    *&v33[OBJC_IVAR___DOCActionContext_configuration] = v28;
    *&v33[OBJC_IVAR___DOCActionContext_presentingViewController] = a3;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v33[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v33[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
    *&v33[OBJC_IVAR___DOCActionContext_userInfo] = v31;
    v68.receiver = v33;
    v68.super_class = v32;
    v34 = a3;
    v35 = v27;
    v36 = v28;
    v37 = objc_msgSendSuper2(&v68, sel_init);
  }

  else
  {
    v38 = [a3 effectiveAppearance];
    v39 = *&a3[OBJC_IVAR___DOCSidebarViewController_configuration];
    v40 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v41 = type metadata accessor for DOCActionContext();
    v42 = objc_allocWithZone(v41);
    swift_unknownObjectWeakInit();
    *&v42[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v42[OBJC_IVAR___DOCActionContext_appearance] = v38;
    *&v42[OBJC_IVAR___DOCActionContext_configuration] = v39;
    *&v42[OBJC_IVAR___DOCActionContext_presentingViewController] = a3;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v42[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v42[OBJC_IVAR___DOCActionContext_actionReporting] = 0;
    *&v42[OBJC_IVAR___DOCActionContext_userInfo] = v40;
    v69.receiver = v42;
    v69.super_class = v41;
    v43 = a3;
    v44 = v39;
    v37 = objc_msgSendSuper2(&v69, sel_init);
  }

  v45 = *(a2 + 40);
  if ((v45 - 1) < 2)
  {
    goto LABEL_25;
  }

  v46 = *a2;
  if (!*(a2 + 40))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_249BA0290;
    *(v66 + 32) = v46;
    outlined init with copy of DOCSidebarItem(a2, v70);
    v37 = v37;
    specialized DOCActionManager.perform(_:on:actionContext:)(a4, v66, v37);

    goto LABEL_26;
  }

  if (v45 == 6)
  {
    v48 = *(a2 + 8);
    v47 = *(a2 + 16);
    v49 = *(a2 + 24) | *(a2 + 32);
    if (!(v49 | v46 | v47 | v48) || v46 == 1 && !(v49 | v47 | v48))
    {
LABEL_25:
      v37 = v37;
      specialized DOCActionManager.perform(_:on:actionContext:)(a4, MEMORY[0x277D84F90], v37);
LABEL_26:
    }
  }
}

void *closure #1 in DOCSidebarItem.showEnclosingFolderAction(from:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v20);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315394;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000249BE3CE0, v20);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = DOCSidebarItem.representedLocation.getter(v10);
    v12 = [v11 displayName];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v20);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s: Performing context menu action for location: %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *a3) + 0x1E8))();
  if (result)
  {
    v18 = result;
    v19 = DOCSidebarItem.representedLocation.getter(result);
    [v18 sidebarViewController:a3 wantsToReveal:v19];

    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in DOCSidebarItem.removeFromSidebarMenuAction(from:in:sourceVisibilityController:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v17);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17[0] = v9;
    *v8 = 136315394;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000040, 0x8000000249BE3D10, v17);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = DOCSidebarItem.representedLocation.getter(v10);
    v12 = [v11 displayName];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v17);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s: Performing context menu action for location: %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  DOCSidebarItem.removeFromSidebar(in:sourceVisibilityController:)(a3);
}

void closure #1 in DOCSidebarItem.ejectMenuAction(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v20);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315394;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BE3D60, v20);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = DOCSidebarItem.representedLocation.getter(v10);
    v12 = [v11 displayName];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v20);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s: Performing context menu action for location: %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  v17 = direct field offset for DOCSidebarItemCell.ejectionController;
  swift_beginAccess();
  v18 = *(a3 + v17);
  if (v18)
  {
    v19 = v18;
    DOCEjectionController.eject()();
  }
}

double closure #1 in DOCSidebarItem.getInfoMenuAction(from:using:in:)(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = *a2;
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, aBlock);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v11, v12))
  {
    v43 = a5;
    v44 = a4;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315394;
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BE3DE0, aBlock);
    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v16 = DOCSidebarItem.representedLocation.getter(v15);
    v17 = [v16 displayName];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;
    }

    else
    {
      v18 = 0;
      v20 = 0xE000000000000000;
    }

    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, aBlock);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_2493AC000, v11, v12, "%s: Performing context menu action for location: %s.", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);

    a5 = v43;
    a4 = v44;
  }

  else
  {
  }

  v22 = *(a2 + 40);
  if (v22 == 3)
  {
    v23 = *a2;
    v25 = v9;

    goto LABEL_13;
  }

  if (!*(a2 + 40))
  {
    v23 = *a2;
    v24 = v9;
LABEL_13:
    specialized DOCSidebarItem.presentInfoViewController(from:for:in:)(a3, v23, a4);

    return result;
  }

  v27 = swift_allocObject();
  v28 = *(a2 + 16);
  *(v27 + 16) = *a2;
  *(v27 + 32) = v28;
  *(v27 + 41) = *(a2 + 25);
  *(v27 + 64) = a3;
  *(v27 + 72) = a4;
  *(v27 + 80) = a5;
  if (v22 == 1 && (type metadata accessor for DOCFileProviderSource(), (v29 = swift_dynamicCastClass()) != 0) && (v30 = *(v29 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) != 0)
  {
    v31 = objc_opt_self();
    outlined init with copy of DOCSidebarItem(a2, aBlock);
    outlined init with copy of DOCSidebarItem(a2, aBlock);
    outlined init with copy of DOCSidebarItem(a2, aBlock);
    v32 = a3;
    v33 = a4;
    v34 = a5;
    v35 = v30;
    v36 = [v31 defaultManager];
    v37 = swift_allocObject();
    v37[2] = partial apply for closure #1 in closure #1 in DOCSidebarItem.getInfoMenuAction(from:using:in:);
    v37[3] = v27;
    v37[4] = v35;
    aBlock[4] = partial apply for closure #1 in DOCSidebarItem.fetchRootNode(completionHandler:);
    aBlock[5] = v37;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_70_2;
    v38 = _Block_copy(aBlock);
    v39 = v35;

    [v36 doc:v39 fetchRootNodeForProviderDomain:v38 completionHandler:?];
    _Block_release(v38);

    outlined destroy of DOCSidebarItem(a2);
    outlined destroy of DOCSidebarItem(a2);
  }

  else
  {
    outlined init with copy of DOCSidebarItem(a2, aBlock);
    v40 = a3;
    v41 = a4;
    v42 = a5;
  }

  return result;
}

double closure #1 in closure #1 in DOCSidebarItem.getInfoMenuAction(from:using:in:)(uint64_t a1, void *a2, _OWORD *a3, void *a4, void *a5, void *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v13 = a3[1];
  *(v12 + 24) = *a3;
  *(v12 + 40) = v13;
  *(v12 + 49) = *(a3 + 25);
  *(v12 + 72) = a4;
  *(v12 + 80) = a5;
  *(v12 + 88) = a6;
  *(v12 + 96) = a2;
  swift_unknownObjectRetain();
  outlined init with copy of DOCSidebarItem(a3, &v19);
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a2;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in closure #1 in DOCSidebarItem.getInfoMenuAction(from:using:in:)(uint64_t a1, int a2, char *a3, void *a4, void *a5, id a6)
{
  if (a1)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    FPItem = DOCNode.fpfs_syncFetchFPItemResult()();
    if (v10)
    {
      DOCSidebarItem.presentInfoErrorViewController(from:for:using:in:)(a3, FPItem, a5, a4);
    }

    else
    {
      specialized DOCSidebarItem.presentInfoViewController(from:for:in:)(a3, FPItem, a4);
    }

    swift_unknownObjectRelease();

    outlined consume of Result<FPItem, Error>(FPItem);
  }

  else if (a6)
  {
    v12 = a6;
    DOCSidebarItem.presentInfoErrorViewController(from:for:using:in:)(a3, a6, a5, a4);
  }
}

double closure #2 in DOCSidebarItem.deleteAllAction(from:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v13 = a6[1];
  *(v12 + 32) = *a6;
  *(v12 + 48) = v13;
  *(v12 + 57) = *(a6 + 25);
  *(v12 + 80) = a1;
  *(v12 + 88) = a2;
  *(v12 + 96) = a3;

  outlined init with copy of DOCSidebarItem(a6, &v15);

  _s26DocumentManagerExecutables24DOCSidebarViewControllerC15fetchTrashItems4from17completionHandleryAA0H8Observer_p_ySaySo6FPItemCGctFZTf4enn_nAC_Tt1g5(a3, partial apply for closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:), v12);

  return result;
}

double closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:)(unint64_t a1, uint64_t (*a2)(uint64_t (*)(), _OWORD *), uint64_t a3, _OWORD *a4, void (*a5)(uint64_t), uint64_t a6, void *a7)
{
  if (a1 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_5:
    v16 = swift_allocObject();
    v17 = a4[1];
    v16[1] = *a4;
    v16[2] = v17;
    *(v16 + 41) = *(a4 + 25);
    outlined init with copy of DOCSidebarItem(a4, v21);
    v15 = a2(partial apply for closure #1 in closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:), v16);

    [v15 setAttributes_];
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = swift_allocObject();
  v13 = a4[1];
  *(v12 + 16) = *a4;
  *(v12 + 32) = v13;
  *(v12 + 41) = *(a4 + 25);
  *(v12 + 64) = a1;
  *(v12 + 72) = a7;
  outlined init with copy of DOCSidebarItem(a4, v21);

  v14 = a7;
  v15 = a2(partial apply for closure #2 in closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:), v12);

  [v15 setAttributes_];
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249BA0290;
  *(v18 + 32) = v15;
  v19 = v15;
  a5(v18);

  return result;
}

void closure #1 in closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v15);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15[0] = v7;
    *v6 = 136315394;
    v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BE3D80, v15);
    *(v6 + 4) = v8;
    *(v6 + 12) = 2080;
    v9 = DOCSidebarItem.representedLocation.getter(v8);
    v10 = [v9 displayName];

    if (v10)
    {
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v15);

    *(v6 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v4, v5, "%s: No items, disabling context menu action for location: %s.", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v7, -1, -1);
    MEMORY[0x24C1FE850](v6, -1, -1);
  }
}

void closure #2 in closure #1 in closure #2 in DOCSidebarItem.deleteAllAction(from:)(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v19);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19[0] = v11;
    *v10 = 136315394;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BE3D80, v19);
    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v13 = DOCSidebarItem.representedLocation.getter(v12);
    v14 = [v13 displayName];

    if (v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v19);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s: Performing context menu action for location: %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  specialized DOCSidebarItem.deleteAll(items:from:)(a3, a4);
}

void closure #1 in DOCSidebarItem.deleteTagAction(from:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v27);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v27[0] = v9;
    *v8 = 136315394;
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BE3DA0, v27);
    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    v11 = DOCSidebarItem.representedLocation.getter(v10);
    v12 = [v11 displayName];

    if (v12)
    {
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xE000000000000000;
    }

    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, v27);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_2493AC000, v6, v7, "%s: Performing context menu action for location: %s.", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  v18 = *a2;
  v19 = *(a2 + 40);
  if (v19 == 3)
  {
    v23 = *(a2 + 8);
    v24 = *(a2 + 16);
    if (one-time initialization token for sharedManager != -1)
    {
      v25 = *(a2 + 8);
      v26 = *(a2 + 16);
      swift_once();
      v24 = v26;
      v23 = v25;
    }

    DOCSmartFolderManager.delete(hotFolder:for:)(v18, v23, v24, v17);
  }

  else if (v19 == 2)
  {
    DOCTag.delete(on:completion:)(a3, DOCGridLayout.specIconWidth.modify, 0);
  }

  else if (!*(a2 + 40))
  {
    v20 = [objc_opt_self() sharedManager];
    v21 = swift_allocObject();
    *(v21 + 16) = DOCGridLayout.specIconWidth.modify;
    *(v21 + 24) = 0;
    v27[4] = partial apply for closure #1 in FPItem.delete(on:completion:);
    v27[5] = v21;
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 1107296256;
    v27[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v27[3] = &block_descriptor_55_3;
    v22 = _Block_copy(v27);

    [v20 removeFavorite:v18 completion:v22];
    _Block_release(v22);
  }
}

void *closure #1 in DOCSidebarItem.renameAction(from:in:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (one-time initialization token for Sidebar != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.Sidebar);
  outlined init with copy of DOCSidebarItem(a2, v20);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();
  outlined destroy of DOCSidebarItem(a2);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20[0] = v11;
    *v10 = 136315394;
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BE3DC0, v20);
    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    v13 = DOCSidebarItem.representedLocation.getter(v12);
    v14 = [v13 displayName];

    if (v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0xE000000000000000;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v20);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_2493AC000, v8, v9, "%s: Performing context menu action for location: %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  return DOCSidebarItem.rename(from:in:)(a3, a4);
}

id DOCGetInfoErrorPresentingViewController.init(errorViewController:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCGetInfoErrorPresentingViewController_errorViewController] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCGetInfoErrorPresentingViewController();
  return objc_msgSendSuper2(&v3, sel_init);
}

Swift::Void __swiftcall DOCGetInfoErrorPresentingViewController.viewDidLoad()()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for DOCGetInfoErrorPresentingViewController();
  objc_msgSendSuper2(&v5, sel_viewDidLoad);
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables39DOCGetInfoErrorPresentingViewController_errorViewController];
  v2 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  [v2 setModalPresentationStyle_];
  v3 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v1 action:sel_doc_dismissViewController];
  v4 = [v1 navigationItem];
  [v4 setRightBarButtonItem_];

  [v0 doc:v2 addChildWithEqualAutoresizingFrame:?];
}

id DOCGetInfoErrorPresentingViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCGetInfoErrorPresentingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCGetInfoErrorPresentingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized DOCSidebarViewController.collectionView(_:contextMenuConfigurationForItemAt:point:)(uint64_t a1)
{
  if (([v1 isEditing] & 1) != 0 || objc_msgSend(*&v1[OBJC_IVAR___DOCSidebarViewController_configuration], sel_browserViewContext))
  {
    return 0;
  }

  result = DOCSidebarViewController.contextMenuForItems(at:)(a1);
  if (result)
  {
    v4 = result;
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = objc_opt_self();
    v9[4] = partial apply for closure #1 in DOCItemCollectionViewController.contextMenuConfigurationForItems(at:indexPathOfPresentingItem:);
    v9[5] = v5;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
    v9[3] = &block_descriptor_72;
    v7 = _Block_copy(v9);

    v8 = [v6 configurationWithIdentifier:0 previewProvider:0 actionProvider:v7];

    _Block_release(v7);
    return v8;
  }

  return result;
}

uint64_t outlined init with copy of DOCSidebarItem?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_9Tm_0()
{
  outlined consume of DOCSidebarItem(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t objectdestroy_6Tm_1()
{
  outlined consume of DOCSidebarItem(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

void specialized DOCSidebarItem.presentInfoViewController(from:for:in:)(void *a1, void *a2, void *a3)
{
  v6 = *(a1 + OBJC_IVAR___DOCSidebarViewController_configuration);
  v7 = MEMORY[0x277D85000];
  v8 = (*((*MEMORY[0x277D85000] & *a1) + 0x1E8))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249BA0290;
  *(v9 + 32) = a2;
  v10 = type metadata accessor for DOCServiceInfoViewController();
  v11 = objc_allocWithZone(v10);
  v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_isInPopoverMode] = 0;
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_configuration] = v6;
  v12 = objc_allocWithZone(DOCItemInfoViewController);
  v13 = a2;
  v14 = v6;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = [v12 initWithNodes:isa configuration:v14 actionReporting:v8];

  swift_unknownObjectRelease();
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoViewController] = v16;
  v17 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
  *&v11[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCServiceInfoViewController_infoNavigationController] = v17;
  [v17 _setBuiltinTransitionStyle_];
  v43.receiver = v11;
  v43.super_class = v10;
  v18 = objc_msgSendSuper2(&v43, sel_init);
  swift_unknownObjectRelease();
  v19 = swift_allocObject();
  v19[2] = v18;
  v19[3] = a3;
  v19[4] = a1;
  v20 = one-time initialization token for associatedObjectStorageKey;
  v21 = v18;
  v22 = a1;
  v23 = a3;
  v24 = v21;
  v25 = v23;
  v26 = v22;
  if (v20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v27 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v24, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v7 & *v27) + 0x78))(v42);

  v28 = v7;
  if (v42[0])
  {
  }

  else
  {
    v42[3] = &unk_285D0A930;
    swift_dynamicCastObjCProtocolUnconditional();
    v29 = static UIViewController.associatedObjectStorageKey;
    v30 = v24;
    v31 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v30, v29);
    KeyPath = swift_getKeyPath();
    type metadata accessor for DOCPresentationPreheatController();
    v33 = swift_allocObject();
    *(v33 + 16) = 0x3FE0000000000000;
    swift_unknownObjectWeakInit();
    *(v33 + 32) = MEMORY[0x277D84F90];
    *(v33 + 40) = 0;
    v28 = MEMORY[0x277D85000];
    swift_unknownObjectWeakAssign();
    v42[0] = v33;
    (*((*v28 & *v31) + 0x80))(v42, KeyPath);
  }

  v34 = _s26DocumentManagerExecutables26DOCAssociatedObjectStorageC10attachedTo_10storageKeyACyxGx_AA0defJ0VtFZSo16UIViewControllerC_Tt1B5(v24, static UIViewController.associatedObjectStorageKey);
  swift_getKeyPath();
  (*((*v28 & *v34) + 0x78))(v42);

  v35 = v42[0];
  if (v42[0])
  {
    if (*(v42[0] + 40) == 2)
    {
      closure #1 in DOCSidebarItem.presentInfoViewController(from:for:in:)(v24, v25, v26);
    }

    else
    {
      v36 = swift_allocObject();
      *(v36 + 16) = partial apply for closure #1 in DOCSidebarItem.presentInfoViewController(from:for:in:);
      *(v36 + 24) = v19;
      swift_beginAccess();
      v37 = *(v35 + 32);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v35 + 32) = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v37[2] + 1, 1, v37);
        *(v35 + 32) = v37;
      }

      v40 = v37[2];
      v39 = v37[3];
      if (v40 >= v39 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v37);
      }

      v37[2] = v40 + 1;
      v41 = &v37[2 * v40];
      v41[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      v41[5] = v36;
      *(v35 + 32) = v37;
      swift_endAccess();
      DOCPresentationPreheatController.startIfNecessary()();
    }
  }

  else
  {
    closure #1 in DOCSidebarItem.presentInfoViewController(from:for:in:)(v24, v25, v26);

    v25 = v24;
  }
}

void specialized DOCSidebarItem.deleteAll(items:from:)(unint64_t a1, void *a2)
{
  v4 = *MEMORY[0x277D05F90];
  v5 = _DocumentManagerBundle();
  if (v5)
  {
    v6 = v5;
    v29._object = 0x8000000249BD4280;
    v7._countAndFlagsBits = 0x41206574656C6544;
    v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v8.value._object = 0xEB00000000656C62;
    v7._object = 0xEA00000000006C6CLL;
    v9._countAndFlagsBits = 0;
    v9._object = 0xE000000000000000;
    v29._countAndFlagsBits = 0xD00000000000002FLL;
    v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v29);

    v11 = objc_allocWithZone(MEMORY[0x277D05F28]);
    v12 = MEMORY[0x24C1FAD20](v10._countAndFlagsBits, v10._object);

    aBlock[4] = closure #1 in static UIDocumentBrowserAction.deleteAllAction();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
    aBlock[3] = &block_descriptor_49_0;
    v13 = _Block_copy(aBlock);
    v14 = [v11 initWithIdentifier:v4 localizedTitle:v12 unresolvedHandler:v13];

    _Block_release(v13);

    v15 = MEMORY[0x24C1FAD20](0x6873617274, 0xE500000000000000);
    v16 = [objc_opt_self() systemImageNamed_];

    [v14 setImage_];
    [v14 setAvailability_];
    [v14 setNavigationSide_];
    [v14 setMenuSortOrder_];
    [v14 setActionStyle_];
    [v14 setRequiresFullyFormedItems_];
    v17 = [a2 effectiveAppearance];
    v18 = *(a2 + OBJC_IVAR___DOCSidebarViewController_configuration);
    v19 = (*((*MEMORY[0x277D85000] & *a2) + 0x1E8))();
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0gq5Tf4g_n(MEMORY[0x277D84F90]);
    v21 = type metadata accessor for DOCActionContext();
    v22 = objc_allocWithZone(v21);
    swift_unknownObjectWeakInit();
    *&v22[OBJC_IVAR___DOCActionContext_popoverPresentationSourceItem] = 0;
    *&v22[OBJC_IVAR___DOCActionContext_appearance] = v17;
    *&v22[OBJC_IVAR___DOCActionContext_configuration] = v18;
    *&v22[OBJC_IVAR___DOCActionContext_presentingViewController] = a2;
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    *&v22[OBJC_IVAR___DOCActionContext_transitionProxy] = 0;
    *&v22[OBJC_IVAR___DOCActionContext_actionReporting] = v19;
    *&v22[OBJC_IVAR___DOCActionContext_userInfo] = v20;
    v27.receiver = v22;
    v27.super_class = v21;
    v23 = v18;
    v24 = a2;
    v25 = objc_msgSendSuper2(&v27, sel_init);

    if (a1 >> 62)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v26 = _bridgeCocoaArray<A>(_:)();

      a1 = v26;
    }

    else
    {
      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    }

    specialized DOCActionManager.perform(_:on:actionContext:)(v14, a1, v25);
  }

  else
  {

    __break(1u);
  }
}

void specialized DOCSidebarItem.erase(from:in:)(void *a1)
{
  v2 = v1;
  if (*(v1 + 40) != 1)
  {
    return;
  }

  v4 = *v2;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.Rename);
  outlined init with copy of DOCSidebarItem(v2, v72);
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  outlined destroy of DOCSidebarItem(v2);
  v9 = os_log_type_enabled(v7, v8);
  v10 = MEMORY[0x277D85000];
  v65 = v4;
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *&v72[0] = v66;
    *v11 = 138412802;
    *(v11 + 4) = v4;
    *v12 = v4;
    *(v11 + 12) = 2080;
    v13 = v4;
    v14 = *((*v10 & *v6) + 0x500);
    v15 = v13;
    v16 = v14();
    if (v16)
    {
      v17 = v16;
      [v16 sourceIdentifier];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo27DOCDocumentSourceIdentifieraSgMd, &_sSo27DOCDocumentSourceIdentifieraSgMR);
    v18 = String.init<A>(describing:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v72);

    *(v11 + 14) = v20;
    *(v11 + 22) = 2080;
    *&v69[0] = [v15 identifier];
    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v21 = String.init<A>(describing:)();
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v72);

    *(v11 + 24) = v23;
    _os_log_impl(&dword_2493AC000, v7, v8, "[Erase] Source: %@ current sidebar selection: %s source location: %s ", v11, 0x20u);
    outlined destroy of CharacterSet?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x24C1FE850](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v66, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);

    v4 = v65;
    v10 = MEMORY[0x277D85000];
  }

  else
  {
  }

  v24 = swift_allocObject();
  *(v24 + 16) = v4;
  *(v24 + 24) = v6;
  outlined init with copy of DOCSidebarItem(v2, v72);
  v25 = one-time initialization token for shared;
  v26 = v6;
  if (v25 != -1)
  {
    swift_once();
  }

  v27 = (*(*static DOCUSBFormatting.shared + 104))(v4, 0, 0, v26, 0, partial apply for closure #1 in DOCSidebarItem.erase(from:in:), v24, 0, 0);
  v28 = *((*v10 & *v26) + 0x4B8);
  v29 = (v28)(v69, v27);
  if (v71 == 255)
  {
    v32 = 0;
  }

  else
  {
    v72[0] = v69[0];
    v72[1] = v69[1];
    v73 = v70;
    v74 = v71;
    v30 = DOCSidebarItem.representedLocation.getter(v29);
    outlined destroy of CharacterSet?(v69, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
    v31 = [v30 sourceIdentifier];

    v32 = v31;
    v33 = [v4 identifier];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {

LABEL_17:
      v39 = v32;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v67 = v39;
        v68[0] = v43;
        *v42 = 136315138;
        type metadata accessor for DOCDocumentSourceIdentifier(0);
        v44 = v39;
        v45 = String.init<A>(describing:)();
        v47 = v4;
        v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v68);

        *(v42 + 4) = v48;
        v4 = v47;
        _os_log_impl(&dword_2493AC000, v40, v41, "[Erase] Erase requested when the current sidebar selection is the drive to be erased. Marking for reselection when the drive reappears location: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1FE850](v43, -1, -1);
        MEMORY[0x24C1FE850](v42, -1, -1);
      }

      v49 = [v4 identifier];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53.value._countAndFlagsBits = v50;
      v53.value._object = v52;
      DOCSidebarViewController.deferSelectingNewlyAddedSource(with:)(v53);

      return;
    }

    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v38)
    {
      goto LABEL_17;
    }
  }

  outlined init with copy of DOCSidebarItem(v2, v68);
  v54 = v26;
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.debug.getter();

  outlined destroy of DOCSidebarItem(v2);
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v67 = v58;
    *v57 = 136315394;
    v28(v68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables14DOCSidebarItemOSgMd, &_s26DocumentManagerExecutables14DOCSidebarItemOSgMR);
    v59 = String.init<A>(describing:)();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v67);

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    v68[0] = [v65 identifier];
    type metadata accessor for DOCDocumentSourceIdentifier(0);
    v62 = String.init<A>(describing:)();
    v64 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v67);

    *(v57 + 14) = v64;
    _os_log_impl(&dword_2493AC000, v55, v56, "[Erase] Erase requested when the current sidebar selection is NOT the drive to be erased. Current selection ID: %s Drive to be erased ID: %s ", v57, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v58, -1, -1);
    MEMORY[0x24C1FE850](v57, -1, -1);
  }

  else
  {
  }
}

uint64_t objectdestroy_3Tm_1()
{
  outlined consume of DOCSidebarItem(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

unint64_t lazy protocol witness table accessor for type DOCSidebarItem.ContextMenuAction and conformance DOCSidebarItem.ContextMenuAction()
{
  result = lazy protocol witness table cache variable for type DOCSidebarItem.ContextMenuAction and conformance DOCSidebarItem.ContextMenuAction;
  if (!lazy protocol witness table cache variable for type DOCSidebarItem.ContextMenuAction and conformance DOCSidebarItem.ContextMenuAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCSidebarItem.ContextMenuAction and conformance DOCSidebarItem.ContextMenuAction);
  }

  return result;
}

void specialized _ArrayProtocol.filter(_:)(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v25 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v22 - v12;
  v24 = *(a3 + 16);
  if (v24)
  {
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    v22[1] = a2;
    v23 = a3;
    v22[0] = a1;
    while (v14 < *(a3 + 16))
    {
      v16 = (*(v26 + 80) + 32) & ~*(v26 + 80);
      v17 = *(v26 + 72);
      outlined init with copy of DOCMultiNodeObserver.Subscriber(a3 + v16 + v17 * v14, v13);
      v18 = a1(v13);
      if (v3)
      {
        outlined destroy of DOCMultiNodeObserver.Subscriber(v13);

        goto LABEL_15;
      }

      if (v18)
      {
        outlined init with take of DOCMultiNodeObserver.Subscriber(v13, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1);
          v15 = v27;
        }

        v21 = *(v15 + 16);
        v20 = *(v15 + 24);
        if (v21 >= v20 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v15 = v27;
        }

        *(v15 + 16) = v21 + 1;
        outlined init with take of DOCMultiNodeObserver.Subscriber(v25, v15 + v16 + v21 * v17);
        a3 = v23;
        a1 = v22[0];
      }

      else
      {
        outlined destroy of DOCMultiNodeObserver.Subscriber(v13);
      }

      if (v24 == ++v14)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

char *DOCNodeObserver.__allocating_init(observedNode:source:enableDeepObserving:)(void *a1, void *a2, uint64_t a3)
{
  v4 = a3;
  v7 = objc_allocWithZone(v3);
  return DOCNodeObserver.init(observedNode:source:enableDeepObserving:)(a1, a2, v4);
}

id DOCNodeObserver.addDidFinishGatheringSubscriber(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DOCNodeObserverSubscriber(0);
  v7 = objc_allocWithZone(v6);
  UUID.init()();
  v8 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];
  *v8 = DOCGridLayout.specIconWidth.modify;
  v8[1] = 0;
  v9 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock];
  *v9 = a1;
  *(v9 + 1) = a2;
  v14.receiver = v7;
  v14.super_class = v6;

  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
  swift_beginAccess();
  v12 = v10;
  MEMORY[0x24C1FB090]();
  if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v12;
}

void DOCNodeObserver.removeSubscriber(_:)(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3 >> 62)
  {
LABEL_18:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1FC540](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = static UUID.== infix(_:_:)();

    if (v8)
    {
      break;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_17;
    }
  }

  swift_beginAccess();
  v11 = specialized Array.remove(at:)(v5, v10);
  swift_endAccess();
}

id DOCNodeObserver.addSubscriber(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DOCNodeObserverSubscriber(0);
  v7 = objc_allocWithZone(v6);
  UUID.init()();
  v8 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];
  *v8 = a1;
  *(v8 + 1) = a2;
  v9 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock];
  *v9 = 0;
  *(v9 + 1) = 0;
  v14.receiver = v7;
  v14.super_class = v6;

  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
  swift_beginAccess();
  v12 = v10;
  MEMORY[0x24C1FB090]();
  if (*((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v11) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  return v12;
}

uint64_t DOCMultiNodeObserver.__allocating_init(nodes:coalescingDelay:enableDeepObserving:)(unint64_t a1, uint64_t a2, double a3)
{
  v3 = a2;
  v6 = swift_allocObject();
  DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:)(a1, v3, a3);
  return v6;
}

uint64_t DOCNodeObserverSubscriber.updateBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock);

  return v1;
}

uint64_t DOCNodeObserverSubscriber.didFinishGatheringBlock.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock);
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v1, *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock + 8));
  return v1;
}

id DOCNodeObserverSubscriber.__allocating_init(updateBlock:didFinishGatheringBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  UUID.init()();
  v10 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v9[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock];
  *v11 = a3;
  *(v11 + 1) = a4;
  v13.receiver = v9;
  v13.super_class = v4;
  return objc_msgSendSuper2(&v13, sel_init);
}

id DOCNodeObserverSubscriber.init(updateBlock:didFinishGatheringBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  UUID.init()();
  v9 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];
  *v9 = a1;
  *(v9 + 1) = a2;
  v10 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock];
  *v10 = a3;
  *(v10 + 1) = a4;
  v12.receiver = v4;
  v12.super_class = type metadata accessor for DOCNodeObserverSubscriber(0);
  return objc_msgSendSuper2(&v12, sel_init);
}

id DOCNodeObserverSubscriber.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCNodeObserverSubscriber(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *DOCNodeObserver.init(observedNode:source:enableDeepObserving:)(void *a1, void *a2, char a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers] = MEMORY[0x277D84F90];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_node] = a1;
  if ((a3 & 1) != 0 && (swift_getObjectType(), DOCNode.nodeType.getter(&v25), v25))
  {
    if ([swift_unknownObjectRetain() isFolder])
    {
      v9 = 1;
    }

    else
    {
      v9 = [a1 isPackage];
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v9 = 0;
  }

  v4[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_deepObserving] = v9 & 1;
  if (v9)
  {
    v10 = 4;
  }

  else
  {
    v10 = 0;
  }

  v11 = type metadata accessor for DOCNodeCollection();
  swift_beginAccess();
  v12 = swift_getObjectType();
  v13 = a2;
  v14 = swift_unknownObjectRetain();
  v24 = (v9 & 1) == 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection] = specialized DOCNodeCollection.__allocating_init(for:configuration:source:extraOptions:)(v14, 0, a2, v10 | (v24 << 32), v11, v12);
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v23, sel_init);
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection;
  v17 = *&v15[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection];
  v18 = MEMORY[0x277D85000];
  v19 = *((*MEMORY[0x277D85000] & *v17) + 0x198);
  v20 = v15;
  v21 = v17;
  v19(v15, &protocol witness table for DOCNodeObserver);

  (*((*v18 & **&v15[v16]) + 0x1D0))();
  swift_unknownObjectRelease();

  return v20;
}

id DOCNodeObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  (*((*MEMORY[0x277D85000] & **&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection]) + 0x1C8))();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id DOCNodeObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id @objc DOCNodeObserver.addSubscriber(_:)(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  v12 = a6(a5, v10);

  return v12;
}

void DOCNodeObserver.nodeCollectionDidFinishGathering(_:)(void *a1)
{
  v2 = v1;
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x258))();
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v6 = __CocoaSet.count.getter();
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v6 >= 1)
  {

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      if (*&v8[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock])
      {
        (*&v8[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock])(v3);
      }
    }

    goto LABEL_13;
  }

  __break(1u);
}

void *DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:)(unint64_t a1, char a2, double a3)
{
  v4 = v3;
  v5 = MEMORY[0x277D84F90];
  *(v4 + 24) = a1;
  *(v4 + 32) = v5;
  *(v4 + 40) = 0;
  *(v4 + 48) = v5;
  *(v4 + 56) = 0;
  *(v4 + 16) = a1;
  *(v4 + 64) = a3;
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_15:

    v10 = MEMORY[0x277D84F90];
LABEL_16:
    *(v4 + 32) = v10;

    return v4;
  }

  v26 = a1;
  v6 = __CocoaSet.count.getter();
  a1 = v26;
  if (!v6)
  {
    goto LABEL_15;
  }

LABEL_3:
  v32 = v5;
  v7 = a1;
  swift_bridgeObjectRetain_n();
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v32;
    v11 = v7;
    v27 = v7 & 0xC000000000000001;
    v28 = v6;
    v29 = v7;
    do
    {
      if (v27)
      {
        MEMORY[0x24C1FC540](v9, v11);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v12 = objc_allocWithZone(type metadata accessor for DOCNodeObserver());
      v13 = swift_unknownObjectRetain();
      v14 = DOCNodeObserver.init(observedNode:source:enableDeepObserving:)(v13, 0, a2 & 1);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = type metadata accessor for DOCNodeObserverSubscriber(0);
      v17 = objc_allocWithZone(v16);

      UUID.init()();
      v18 = &v17[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];
      *v18 = partial apply for closure #1 in closure #1 in DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:);
      v18[1] = v15;
      v19 = &v17[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_didFinishGatheringBlock];
      *v19 = 0;
      *(v19 + 1) = 0;
      v31.receiver = v17;
      v31.super_class = v16;

      v20 = objc_msgSendSuper2(&v31, sel_init);
      v21 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
      swift_beginAccess();
      v22 = v20;
      MEMORY[0x24C1FB090]();
      if (*((*&v14[v21] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v14[v21] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      swift_unknownObjectRelease();
      v32 = v10;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
        v10 = v32;
      }

      ++v9;
      *(v10 + 16) = v24 + 1;
      v25 = v10 + 16 * v24;
      *(v25 + 32) = v22;
      *(v25 + 40) = v14;
      v11 = v29;
    }

    while (v28 != v9);

    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in closure #1 in DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v12 = static OS_dispatch_queue.main.getter();
  v13 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_35;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v11, v6, v14);
  _Block_release(v14);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

void DOCMultiNodeObserver.deinit()
{
  (*(*v0 + 312))();
  v1 = v0[4];
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = (v1 + 40);
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v5 = *v4;
      v6 = *(v4 - 1);
      v7 = v5;
      DOCNodeObserver.removeSubscriber(_:)(v6);

      v4 += 2;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t DOCMultiNodeObserver.__deallocating_deinit()
{
  DOCMultiNodeObserver.deinit();

  return swift_deallocClassInstance();
}

uint64_t DOCMultiNodeObserver.addSubscriber(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  v8 = v7 - 8;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v24 - v15;
  UUID.init()();
  v17 = &v16[*(v8 + 28)];
  *v17 = a1;
  *(v17 + 1) = a2;
  outlined init with copy of DOCMultiNodeObserver.Subscriber(v16, v12);
  swift_beginAccess();
  v18 = *(v3 + 48);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 48) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *(v3 + 48) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
  }

  v18[2] = v21 + 1;
  outlined init with take of DOCMultiNodeObserver.Subscriber(v12, v18 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21);
  *(v3 + 48) = v18;
  swift_endAccess();
  v22 = type metadata accessor for UUID();
  (*(*(v22 - 8) + 16))(a3, v16, v22);
  return outlined destroy of DOCMultiNodeObserver.Subscriber(v16);
}

double DOCMultiNodeObserver.removeSubscriber(withUUID:)(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 48);
  v6[2] = a1;

  specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in DOCMultiNodeObserver.removeSubscriber(withUUID:), v6, v3);
  *(v1 + 48) = v4;

  return result;
}

BOOL closure #1 in DOCMultiNodeObserver.removeSubscriber(withUUID:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UUID();
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return (dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0;
}

Swift::Void __swiftcall DOCMultiNodeObserver.startObserving()()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    *(v0 + 40) = 1;
    v1 = *(v0 + 32);
    v2 = *(v1 + 16);

    if (v2)
    {
      v3 = 0;
      v4 = (v1 + 40);
      v5 = MEMORY[0x277D85000];
      while (v3 < *(v1 + 16))
      {
        v6 = *v4;
        ++v3;
        v7 = *((*v5 & **(*v4 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection)) + 0x1D0);
        v8 = *(v4 - 1);
        v9 = v6;
        v7();

        v4 += 2;
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

Swift::Void __swiftcall DOCMultiNodeObserver.stopObserving()()
{
  if (*(v0 + 40) == 1)
  {
    *(v0 + 40) = 0;
    v1 = *(v0 + 32);
    v2 = *(v1 + 16);

    if (v2)
    {
      v3 = 0;
      v4 = (v1 + 40);
      v5 = MEMORY[0x277D85000];
      while (v3 < *(v1 + 16))
      {
        v6 = *v4;
        ++v3;
        v7 = *((*v5 & **(*v4 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_collection)) + 0x1C8);
        v8 = *(v4 - 1);
        v9 = v6;
        v7();

        v4 += 2;
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

void DOCMultiNodeObserver.scheduleSubscriberCallback()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v25 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTime();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v22 - v17;
  if ((*(v0 + 56) & 1) == 0)
  {
    *(v0 + 56) = 1;
    type metadata accessor for OS_dispatch_queue();
    v24 = v6;
    v22 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v23 = *(v11 + 8);
    v23(v14, v10);
    v19 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = partial apply for closure #1 in DOCMultiNodeObserver.scheduleSubscriberCallback();
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_73;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_7(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v22;
    MEMORY[0x24C1FB940](v18, v9, v5, v20);
    _Block_release(v20);

    (*(v2 + 8))(v5, v1);
    (*(v25 + 8))(v9, v24);
    v23(v18, v10);
  }
}

double closure #1 in closure #1 in closure #1 in DOCMultiNodeObserver.init(nodes:coalescingDelay:enableDeepObserving:)(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a2();
  }

  return result;
}

void DOCMultiNodeObserver.performScheduledCallback()()
{
  v1 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  v2 = *(v1 - 8);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v1, v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 56) == 1)
  {
    v7 = *(*(v0 + 32) + 16);
    v8 = MEMORY[0x277D84F90];
    if (v7)
    {
      v16 = v2;
      v17[0] = MEMORY[0x277D84F90];

      specialized ContiguousArray.reserveCapacity(_:)();
      v9 = 40;
      do
      {
        swift_beginAccess();
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v9 += 16;
        --v7;
      }

      while (v7);

      v2 = v16;
      v8 = v17[0];
    }

    (*(*v0 + 144))(v8, v4);
    swift_beginAccess();
    v10 = *(v0 + 48);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = &v6[*(v1 + 20)];
      v13 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v14 = *(v2 + 72);

      do
      {
        outlined init with copy of DOCMultiNodeObserver.Subscriber(v13, v6);
        (*v12)(v0);
        outlined destroy of DOCMultiNodeObserver.Subscriber(v6);
        v13 += v14;
        --v11;
      }

      while (v11);
    }

    *(v0 + 56) = 0;
  }
}

void specialized DOCNodeObserver.nodeCollection(_:didUpdate:replaceNodesByFormerID:deleteNodesWith:)(void *a1)
{
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_deepObserving) == 1)
  {
    v2 = v1;
    if ((*((*MEMORY[0x277D85000] & *a1) + 0x180))())
    {
      v3 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
      swift_beginAccess();
      v4 = *(v2 + v3);
      if (v4 >> 62)
      {
        v5 = __CocoaSet.count.getter();
        if (!v5)
        {
          return;
        }
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          return;
        }
      }

      if (v5 < 1)
      {
        __break(1u);
      }

      else
      {

        swift_beginAccess();
        v6 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x24C1FC540](v6, v4);
          }

          else
          {
            v7 = *(v4 + 8 * v6 + 32);
          }

          v8 = v7;
          ++v6;
          v9 = *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];

          v10 = swift_unknownObjectRetain();
          v9(v10);

          swift_unknownObjectRelease();
        }

        while (v5 != v6);
      }
    }
  }
}

void specialized DOCNodeObserver.nodeCollection(_:didUpdateObservedNode:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_node;
  swift_beginAccess();
  *(v2 + v4) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCNodeObserver_subscribers;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {

    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, v6);
      }

      else
      {
        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      v11 = *&v9[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCNodeObserverSubscriber_updateBlock];

      v12 = swift_unknownObjectRetain();
      v11(v12);

      swift_unknownObjectRelease();
    }

    while (v7 != v8);
  }
}

uint64_t outlined init with copy of DOCMultiNodeObserver.Subscriber(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of DOCMultiNodeObserver.Subscriber(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCMultiNodeObserver.Subscriber(uint64_t a1)
{
  v2 = type metadata accessor for DOCMultiNodeObserver.Subscriber(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata completion function for DOCNodeObserverSubscriber(uint64_t a1)
{
  result = type metadata accessor for UUID();
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

uint64_t type metadata completion function for DOCMultiNodeObserver.Subscriber(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ()();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t type metadata accessor for ()()
{
  result = lazy cache variable for type metadata for ();
  if (!lazy cache variable for type metadata for ())
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &lazy cache variable for type metadata for ());
  }

  return result;
}

Swift::Void __swiftcall DOCAnalyticsManager.sendConnectToServerShownEvent(_:)(DocumentManagerExecutables::DOCAnalyticsConnectToServerShownEvent *a1)
{
  bundleID = a1->bundleID;
  v3[0] = a1->name;
  v3[1] = bundleID;
  origin = a1->origin;
  specialized DOCAnalyticsManager.sendEvent(_:)(v3, v1);
}

Swift::Void __swiftcall DOCAnalyticsManager.sendItemTaggedEvent(_:)(DocumentManagerExecutables::DOCAnalyticsItemTaggedEvent *a1)
{
  bundleID = a1->bundleID;
  v3[0] = a1->name;
  v3[1] = bundleID;
  taggingFlow = a1->taggingFlow;
  specialized DOCAnalyticsManager.sendEvent(_:)(v3, v1);
}

Swift::Void __swiftcall DOCAnalyticsManager.sendActionEvent(_:)(DocumentManagerExecutables::DOCAnalyticsActionEvent *a1)
{
  bundleID = a1->bundleID;
  name = a1->name;
  v4[0] = bundleID;
  *(v4 + 15) = *(&a1->bundleID.value._object + 7);
  specialized DOCAnalyticsManager.sendEvent(_:)(&name, v1);
}

Swift::Void __swiftcall DOCAnalyticsManager.sendAPIAbuseEvent(_:)(DocumentManagerExecutables::DOCAnalyticsAPIAbuseEvent *a1)
{
  bundleID = a1->bundleID;
  v3[0] = a1->name;
  v3[1] = bundleID;
  v3[2] = a1->hostIdentifier;
  type = a1->type;
  specialized DOCAnalyticsManager.sendEvent(_:)(v3, v1);
}

id static DOCAnalyticsManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static DOCAnalyticsManager.shared;

  return v1;
}

id DOCAnalyticsManager.().init()()
{
  ObjectType = swift_getObjectType();
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v2);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v5, v6);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCAnalyticsManager_bundleVersionCache] = MEMORY[0x277D84F98];
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCAnalyticsManager_eventsQueue;
  v9 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v15[0] = "bundleVersionCache";
  v15[1] = v9;
  static DispatchQoS.background.getter();
  v20 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v1 + 104))(v4, *MEMORY[0x277D85260], v17);
  *&v0[v16] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v19.receiver = v0;
  v19.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v19, sel_init);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 defaultCenter];
  [v13 addObserver:v12 selector:sel_tagsDidChangeWithNotification_ name:@"DOCTagEditorTagsDidChangeNotification" object:0];

  return v12;
}

double closure #1 in DOCAnalyticsManager.sendEvent(_:)(char *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v9 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCAnalyticsManager_eventsQueue];
  outlined init with copy of DOCSidebarItemIconProvider(a2, v21);
  v13 = swift_allocObject();
  outlined init with take of DOCGoToFolderCandidate(v21, v13 + 16);
  *(v13 + 56) = a1;
  aBlock[4] = partial apply for closure #1 in closure #1 in DOCAnalyticsManager.sendEvent(_:);
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_10;
  v14 = _Block_copy(aBlock);
  v15 = a1;
  static DispatchQoS.unspecified.getter();
  v19 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v8, v14);
  _Block_release(v14);
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v18);

  return result;
}

void closure #1 in closure #1 in DOCAnalyticsManager.sendEvent(_:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 24))(v2, v3);
  if (v5)
  {
    v6 = DOCAnalyticsManager.getBundleVersion(for:)(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  outlined init with copy of DOCSidebarItemIconProvider(a1, &aBlock);
  v7 = swift_allocObject();
  outlined init with take of DOCGoToFolderCandidate(&aBlock, v7 + 16);
  *(v7 + 56) = v6;
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  v10 = *(v9 + 8);
  v11 = v6;
  v12 = v10(v8, v9);
  v13 = MEMORY[0x24C1FAD20](v12);

  v34 = partial apply for specialized closure #1 in closure #1 in closure #1 in DOCAnalyticsManager.sendEvent(_:);
  v35 = v7;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed () -> (@owned [String : NSObject]?);
  v33 = &block_descriptor_16_1;
  v14 = _Block_copy(&aBlock);

  v15 = AnalyticsSendEventLazy();
  _Block_release(v14);

  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  __swift_project_value_buffer(v16, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(a1, &aBlock);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315650;
    *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, &v30);
    *(v19 + 12) = 2080;
    v21 = v33;
    v22 = v34;
    __swift_project_boxed_opaque_existential_1(&aBlock, v33);
    v23 = (*(v22 + 1))(v21, v22);
    v25 = v24;
    __swift_destroy_boxed_opaque_existential_0(&aBlock);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v30);

    *(v19 + 14) = v26;
    *(v19 + 22) = 2080;
    if (v15)
    {
      v27 = 0x6564656563637573;
    }

    else
    {
      v27 = 0x64656C696166;
    }

    if (v15)
    {
      v28 = 0xE900000000000064;
    }

    else
    {
      v28 = 0xE600000000000000;
    }

    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, &v30);

    *(v19 + 24) = v29;
    _os_log_impl(&dword_2493AC000, v17, v18, "%s: Tracking event %s %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v20, -1, -1);
    MEMORY[0x24C1FE850](v19, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(&aBlock);
  }
}

id DOCAnalyticsManager.getBundleVersion(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = (v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCAnalyticsManager_eventsQueue);
  *v11 = v12;
  (*(v7 + 104))(v11, *MEMORY[0x277D85200], v6, v9);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v11, v6);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v15 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCAnalyticsManager_bundleVersionCache;
  swift_beginAccess();
  v16 = *(v3 + v15);
  if (*(v16 + 16))
  {
    v17 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v18)
    {
      v19 = (*(v16 + 56) + 16 * v17);
      v20 = v19[1];
      if (v20)
      {
        v21 = *v19;
        swift_endAccess();

LABEL_15:
        v27 = MEMORY[0x24C1FAD20](v21, v20);

        return v27;
      }
    }
  }

  swift_endAccess();
  v22 = [objc_opt_self() mainBundle];
  v20 = [v22 infoDictionary];

  if (!v20)
  {
    v21 = 0;
    goto LABEL_14;
  }

  v23 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v23 + 16) || (v24 = specialized __RawDictionaryStorage.find<A>(_:)(0x656C646E75424643, 0xEF6E6F6973726556), (v25 & 1) == 0))
  {

    goto LABEL_12;
  }

  outlined init with copy of Any(*(v23 + 56) + 32 * v24, v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v21 = 0;
    v20 = 0;
    goto LABEL_14;
  }

  v21 = v28[0];
  v20 = v28[1];
LABEL_14:
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28[0] = *(v3 + v15);
  *(v3 + v15) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v21, v20, a1, a2, isUniquelyReferenced_nonNull_native);

  *(v3 + v15) = v28[0];
  swift_endAccess();
  if (v20)
  {
    goto LABEL_15;
  }

  return [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
}

uint64_t specialized closure #1 in closure #1 in closure #1 in DOCAnalyticsManager.sendEvent(_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v6 = v5();

  if (a2 && v6)
  {
    v7 = a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v7, 0x6556656C646E7562, 0xED00006E6F697372, isUniquelyReferenced_nonNull_native);
  }

  return v6;
}

id DOCAnalyticsManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DOCAnalyticsManager.sendSidebarTagSelectedEvent(_:)(DocumentManagerExecutables::DOCAnalyticsSidebarTagSelectedEvent *a1)
{
  bundleID = a1->bundleID;
  v3[0] = a1->name;
  v3[1] = bundleID;
  isUserSelection = a1->isUserSelection;
  specialized DOCAnalyticsManager.sendEvent(_:)(v3, v1);
}

uint64_t specialized DOCAnalyticsManager.sendEvent(_:)(uint64_t a1, void *a2)
{
  v25[3] = &type metadata for DOCAnalyticsConnectToServerShownEvent;
  v25[4] = &protocol witness table for DOCAnalyticsConnectToServerShownEvent;
  v4 = swift_allocObject();
  v25[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  outlined init with copy of DOCAnalyticsConnectToServerShownEvent(a1, v20);
  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(v25, v20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v24[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, v24);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = *v11;
    v13 = v11[1];

    __swift_destroy_boxed_opaque_existential_0(v20);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v24);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Sending event %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  v15 = [objc_opt_self() shared];
  outlined init with copy of DOCSidebarItemIconProvider(v25, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of DOCGoToFolderCandidate(v24, v16 + 24);
  v22 = closure #1 in DOCAnalyticsManager.sendEvent(_:)partial apply;
  v23 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_56_0;
  v17 = _Block_copy(v20);
  v18 = a2;

  [v15 performAfterLaunchAlwaysAsync:0 block:v17];
  _Block_release(v17);

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

{
  v25[3] = &type metadata for DOCAnalyticsItemTaggedEvent;
  v25[4] = &protocol witness table for DOCAnalyticsItemTaggedEvent;
  v4 = swift_allocObject();
  v25[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  outlined init with copy of DOCAnalyticsItemTaggedEvent(a1, v20);
  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(v25, v20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v24[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, v24);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = *v11;
    v13 = v11[1];

    __swift_destroy_boxed_opaque_existential_0(v20);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v24);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Sending event %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  v15 = [objc_opt_self() shared];
  outlined init with copy of DOCSidebarItemIconProvider(v25, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of DOCGoToFolderCandidate(v24, v16 + 24);
  v22 = closure #1 in DOCAnalyticsManager.sendEvent(_:)partial apply;
  v23 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_46_0;
  v17 = _Block_copy(v20);
  v18 = a2;

  [v15 performAfterLaunchAlwaysAsync:0 block:v17];
  _Block_release(v17);

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

{
  v25[3] = &type metadata for DOCAnalyticsActionEvent;
  v25[4] = &protocol witness table for DOCAnalyticsActionEvent;
  v4 = swift_allocObject();
  v25[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 47) = *(a1 + 31);
  outlined init with copy of DOCAnalyticsActionEvent(a1, v20);
  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(v25, v20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v24[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, v24);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = *v11;
    v13 = v11[1];

    __swift_destroy_boxed_opaque_existential_0(v20);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v24);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Sending event %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  v15 = [objc_opt_self() shared];
  outlined init with copy of DOCSidebarItemIconProvider(v25, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of DOCGoToFolderCandidate(v24, v16 + 24);
  v22 = closure #1 in DOCAnalyticsManager.sendEvent(_:)partial apply;
  v23 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_36_0;
  v17 = _Block_copy(v20);
  v18 = a2;

  [v15 performAfterLaunchAlwaysAsync:0 block:v17];
  _Block_release(v17);

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

{
  v25[3] = &type metadata for DOCAnalyticsAPIAbuseEvent;
  v25[4] = &protocol witness table for DOCAnalyticsAPIAbuseEvent;
  v4 = swift_allocObject();
  v25[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = *(a1 + 48);
  outlined init with copy of DOCAnalyticsAPIAbuseEvent(a1, aBlock);
  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(v25, aBlock);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v20[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, v20);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(aBlock, v22);
    v12 = *v11;
    v13 = v11[1];

    __swift_destroy_boxed_opaque_existential_0(aBlock);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v20);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Sending event %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(aBlock);
  }

  v15 = [objc_opt_self() shared];
  outlined init with copy of DOCSidebarItemIconProvider(v25, v20);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of DOCGoToFolderCandidate(v20, v16 + 24);
  v23 = closure #1 in DOCAnalyticsManager.sendEvent(_:)partial apply;
  v24 = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v22 = &block_descriptor_26_1;
  v17 = _Block_copy(aBlock);
  v18 = a2;

  [v15 performAfterLaunchAlwaysAsync:0 block:v17];
  _Block_release(v17);

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

{
  v25[3] = &type metadata for DOCAnalyticsSidebarTagSelectedEvent;
  v25[4] = &protocol witness table for DOCAnalyticsSidebarTagSelectedEvent;
  v4 = swift_allocObject();
  v25[0] = v4;
  v5 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a1 + 32);
  outlined init with copy of DOCAnalyticsSidebarTagSelectedEvent(a1, v20);
  if (one-time initialization token for Analytics != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Analytics);
  outlined init with copy of DOCSidebarItemIconProvider(v25, v20);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v24[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E657645646E6573, 0xED0000293A5F2874, v24);
    *(v9 + 12) = 2080;
    v11 = __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = *v11;
    v13 = v11[1];

    __swift_destroy_boxed_opaque_existential_0(v20);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v24);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_2493AC000, v7, v8, "%s: Sending event %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v10, -1, -1);
    MEMORY[0x24C1FE850](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  v15 = [objc_opt_self() shared];
  outlined init with copy of DOCSidebarItemIconProvider(v25, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  outlined init with take of DOCGoToFolderCandidate(v24, v16 + 24);
  v22 = partial apply for closure #1 in DOCAnalyticsManager.sendEvent(_:);
  v23 = v16;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 1107296256;
  v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v21 = &block_descriptor_74;
  v17 = _Block_copy(v20);
  v18 = a2;

  [v15 performAfterLaunchAlwaysAsync:0 block:v17];
  _Block_release(v17);

  return __swift_destroy_boxed_opaque_existential_0(v25);
}

uint64_t objectdestroy_6Tm_2()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroyTm_8(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t objectdestroy_3Tm_2()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t static RevealItemsIntent.attributionBundleIdentifier.getter()
{
  swift_beginAccess();
  v0 = static RevealItemsIntent.attributionBundleIdentifier;

  return v0;
}

double static RevealItemsIntent.attributionBundleIdentifier.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  static RevealItemsIntent.attributionBundleIdentifier = a1;
  off_27EEEC0B0 = a2;

  return result;
}

double key path setter for static RevealItemsIntent.attributionBundleIdentifier : RevealItemsIntent.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  static RevealItemsIntent.attributionBundleIdentifier = v2;
  off_27EEEC0B0 = v1;

  return result;
}

uint64_t RevealItemsIntent.title.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

void (*RevealItemsIntent.targets.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return NavigateHistoryIntent.direction.modify;
}

uint64_t static RevealItemsIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables17RevealItemsIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables17RevealItemsIntentVGMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables17RevealItemsIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables17RevealItemsIntentV_GMR);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BE4180;
  v4._countAndFlagsBits = 0xD000000000000022;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables17RevealItemsIntentV10AppIntents0H9ParameterCySayAC12FINodeEntityVGGGMd, &_ss7KeyPathCy26DocumentManagerExecutables17RevealItemsIntentV10AppIntents0H9ParameterCySayAC12FINodeEntityVGGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent()
{
  result = lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent;
  if (!lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent;
  if (!lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent;
  if (!lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RevealItemsIntent and conformance RevealItemsIntent);
  }

  return result;
}

uint64_t RevealItemsIntent.fetchURL(for:)(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = type metadata accessor for URL();
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](RevealItemsIntent.fetchURL(for:), 0, 0);
}

uint64_t RevealItemsIntent.fetchURL(for:)()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = [objc_opt_self() defaultManager];
  v0[25] = v3;
  v0[2] = v0;
  v0[7] = v1;
  v0[3] = OpenItemIntent.fetchURL(for:);
  v4 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccy10Foundation3URLVs5Error_pGMd, &_sSccy10Foundation3URLVs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned NSURL?, @unowned NSError?) -> () with result type URL;
  v0[13] = &block_descriptor_75;
  v0[14] = v4;
  [v3 fetchURLForItem:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t RevealItemsIntent.perform()(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = type metadata accessor for OpenURLIntent();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v2[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for URLComponents();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = type metadata accessor for FINodeEntity(0);
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](RevealItemsIntent.perform(), 0, 0);
}

void *RevealItemsIntent.perform()()
{
  result = IntentParameter.wrappedValue.getter();
  v2 = v0[2];
  if (*(v2 + 16))
  {
    v3 = v0[20];
    v4 = v0[18];
    v5 = *(v0[19] + 80);
    outlined init with copy of FINodeEntity(v2 + ((v5 + 32) & ~v5), v3);

    v6 = *(v3 + *(v4 + 32));
    v0[21] = v6;
    v7 = v6;
    outlined destroy of FINodeEntity(v3);
    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = RevealItemsIntent.perform();
    v9 = v0[17];

    return RevealItemsIntent.fetchURL(for:)(v9, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t RevealItemsIntent.perform()()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = RevealItemsIntent.perform();
  }

  else
  {
    v2 = RevealItemsIntent.perform();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  URLComponents.init(url:resolvingAgainstBaseURL:)();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[21];
    v5 = v0[17];
    v6 = v0[13];
    v7 = v0[14];
    outlined destroy of CharacterSet?(v0[9], &_s10Foundation13URLComponentsVSgMd, &_s10Foundation13URLComponentsVSgMR);
    lazy protocol witness table accessor for type DeepLinkError and conformance DeepLinkError();
    swift_allocError();
    swift_willThrow();

    (*(v7 + 8))(v5, v6);
LABEL_5:

    v19 = v0[1];
    goto LABEL_7;
  }

  v8 = v0[13];
  v9 = v0[14];
  v10 = v0[8];
  (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  URLComponents.scheme.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMd, &_ss23_ContiguousArrayStorageCy10Foundation12URLQueryItemVGMR);
  type metadata accessor for URLQueryItem();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  URLQueryItem.init(name:value:)();
  URLQueryItem.init(name:value:)();
  URLComponents.queryItems.setter();
  URLComponents.url.getter();
  v11 = (*(v9 + 48))(v10, 1, v8);
  v12 = v0[21];
  if (v11 == 1)
  {
    v13 = v0[17];
    v14 = v0[13];
    v15 = v0[14];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    outlined destroy of CharacterSet?(v0[8], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type DeepLinkError and conformance DeepLinkError();
    swift_allocError();
    swift_willThrow();

    (*(v17 + 8))(v16, v18);
    (*(v15 + 8))(v13, v14);
    goto LABEL_5;
  }

  v20 = v0[16];
  v33 = v0[17];
  v21 = v0[14];
  v22 = v0[15];
  v30 = v0[21];
  v23 = v0[13];
  v24 = v0[11];
  v31 = v0[10];
  v32 = v0[12];
  v26 = v0[6];
  v25 = v0[7];
  v27 = v0[5];
  (*(v21 + 32))(v20);
  (*(v21 + 16))(v22, v20, v23);
  OpenURLIntent.init(_:)();
  _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(&lazy protocol witness table cache variable for type OpenURLIntent and conformance OpenURLIntent, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  static IntentResult.result<A>(opensIntent:)();

  (*(v26 + 8))(v25, v27);
  v28 = *(v21 + 8);
  v28(v20, v23);
  (*(v24 + 8))(v32, v31);
  v28(v33, v23);

  v19 = v0[1];
LABEL_7:

  return v19();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance RevealItemsIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LocalizedStringResource();
  v4 = __swift_project_value_buffer(v3, static RevealItemsIntent.title);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t protocol witness for AppIntent.perform() in conformance RevealItemsIntent(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return RevealItemsIntent.perform()(a1, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance RevealItemsIntent@<X0>(uint64_t *a1@<X8>)
{
  result = specialized RevealItemsIntent.init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance RevealItemsIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t specialized RevealItemsIntent.init()()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v38 = *(v0 - 8);
  v39 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v37 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v36 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v35 = &v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v33 = &v30 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v19 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v31 = type metadata accessor for LocalizedStringResource();
  v21 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v22);
  v32 = &v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd, &_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v13 + 104);
  v25(v16, v24, v12);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25(v16, v24, v12);
  v26 = v33;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v21 + 56))(v26, 0, 1, v31);
  v40 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  v27 = type metadata accessor for IntentDialog();
  v28 = *(*(v27 - 8) + 56);
  v28(v35, 1, 1, v27);
  v28(v36, 1, 1, v27);
  (*(v38 + 104))(v37, *MEMORY[0x277CBA308], v39);
  _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
  return IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t specialized RevealItemsIntent.init(targets:)(uint64_t a1)
{
  v40 = a1;
  v1 = type metadata accessor for InputConnectionBehavior();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v37 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v36 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v35 = v32 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v33 = v32 - v12;
  v13 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v20 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v32[0] = type metadata accessor for LocalizedStringResource();
  v22 = *(v32[0] - 8);
  MEMORY[0x28223BE20](v32[0], v23);
  v32[1] = v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd, &_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = *MEMORY[0x277CC9110];
  v26 = *(v14 + 104);
  v26(v17, v25, v13);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26(v17, v25, v13);
  v27 = v33;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v22 + 56))(v27, 0, 1, v32[0]);
  v41 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  v28 = type metadata accessor for IntentDialog();
  v29 = *(*(v28 - 8) + 56);
  v29(v35, 1, 1, v28);
  v29(v36, 1, 1, v28);
  (*(v38 + 104))(v37, *MEMORY[0x277CBA308], v39);
  _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
  v30 = IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v41 = v40;

  IntentParameter.wrappedValue.setter();

  return v30;
}

uint64_t _s10AppIntents13OpenURLIntentVAcA0A6IntentAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t DOCAnalyticsSidebarTagSelectedEvent.name.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t (*DOCAnalyticsSidebarTagSelectedEvent.propertiesBuilder.getter())()
{
  v1 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v1;
  v7 = *(v0 + 32);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  outlined init with copy of DOCAnalyticsSidebarTagSelectedEvent(v6, v5);
  return partial apply for implicit closure #2 in implicit closure #1 in DOCAnalyticsSidebarTagSelectedEvent.propertiesBuilder.getter;
}

unint64_t implicit closure #2 in implicit closure #1 in DOCAnalyticsSidebarTagSelectedEvent.propertiesBuilder.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMd, &_ss23_ContiguousArrayStorageCySS_So8NSObjectCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9A480;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000249BE4420;
  *(inited + 48) = Bool._bridgeToObjectiveC()();
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (String, NSObject)(inited + 32);
  return v1;
}

uint64_t DOCAnalyticsSidebarTagSelectedEvent.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void DOCAnalyticsSidebarTagSelectedEvent.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

void __swiftcall DOCAnalyticsSidebarTagSelectedEvent.init(bundleID:isUserSelection:)(DocumentManagerExecutables::DOCAnalyticsSidebarTagSelectedEvent *__return_ptr retstr, Swift::String_optional bundleID, Swift::Bool isUserSelection)
{
  retstr->name._countAndFlagsBits = 0xD000000000000036;
  retstr->name._object = 0x8000000249BE43E0;
  retstr->bundleID = bundleID;
  retstr->isUserSelection = isUserSelection;
}

uint64_t (*protocol witness for DOCAnalyticsEventProtocol.propertiesBuilder.getter in conformance DOCAnalyticsSidebarTagSelectedEvent())()
{
  v1 = *(v0 + 16);
  v6[0] = *v0;
  v6[1] = v1;
  v7 = *(v0 + 32);
  v2 = swift_allocObject();
  v3 = *(v0 + 16);
  *(v2 + 16) = *v0;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v0 + 32);
  outlined init with copy of DOCAnalyticsSidebarTagSelectedEvent(v6, v5);
  return implicit closure #2 in implicit closure #1 in DOCAnalyticsSidebarTagSelectedEvent.propertiesBuilder.getterpartial apply;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for DOCAnalyticsSidebarTagSelectedEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t storeEnumTagSinglePayload for DOCAnalyticsSidebarTagSelectedEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_9()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t outlined destroy of (String, NSObject)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So8NSObjectCtMd, &_sSS_So8NSObjectCtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id DOCErrorViewController.__allocating_init(configuration:documentManager:actionManager:error:source:location:autoPresentAuthenticationUI:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] = a5;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location] = a6;
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error] = a4;
  v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI] = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = _convertErrorToNSError(_:)();
  v19 = [v18 domain];
  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  if (v20 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v22 == v23)
  {
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v25 & 1) == 0)
    {

LABEL_11:
      v28 = 0;
      goto LABEL_12;
    }
  }

  v26 = [v18 code];

  if (v26 != -1000)
  {
    goto LABEL_11;
  }

  v27 = *&v16[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (!v27)
  {
    goto LABEL_11;
  }

  v28 = [objc_opt_self() authenticationActionForProviderDomain_];
LABEL_12:
  *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction] = v28;
  v29 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(a1, a2, a3);

  return v29;
}

void DOCErrorViewController.updateDisableableBarButtonItems(enabled:)(int a1)
{
  v2 = v1;
  LODWORD(v3) = a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem;
  swift_beginAccess();
  v5 = *&v1[v4];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = UINavigationItem.doc_allUnderlyingBarButtonItems.getter();
  v8 = v7;
  v46 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_53;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalTrailingNavigationBarButtonItems;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalLeadingNavigationBarButtonItems;
  v12 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_overlayDelegate];
  swift_beginAccess();
  v44 = v11;
  swift_beginAccess();
  v41 = v12;
  swift_beginAccess();
  if (!v9)
  {
    v27 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v35 = v6;
  v36 = v3;
  v6 = 0;
  v3 = v8 & 0xC000000000000001;
  v43 = v8 & 0xFFFFFFFFFFFFFF8;
  v37 = v8;
  v42 = v8 + 32;
  v39 = v10;
  v40 = v9;
  v38 = v8 & 0xC000000000000001;
  do
  {
    while (1)
    {
      if (v3)
      {
        v13 = MEMORY[0x24C1FC540](v6, v37);
      }

      else
      {
        if (v6 >= *(v43 + 16))
        {
          goto LABEL_52;
        }

        v13 = *(v42 + 8 * v6);
      }

      v14 = v13;
      v15 = __OFADD__(v6++, 1);
      if (v15)
      {
        goto LABEL_51;
      }

      v45 = *&v2[v10];

      specialized Array.append<A>(contentsOf:)(v16);
      v8 = &v33;
      v17 = v45;
      v45 = v14;
      MEMORY[0x28223BE20](v18, v19);
      v32[2] = &v45;
      v20 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySo15UIBarButtonItemCG_TG5TA_0, v32, v17);

      if ((v20 & 1) == 0)
      {
        break;
      }

      if (v6 == v9)
      {
        goto LABEL_34;
      }
    }

    v8 = v41;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v21 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v23 = (*(v21 + 56))(ObjectType, v21);
      swift_unknownObjectRelease();
      if (!(v23 >> 62))
      {
        goto LABEL_14;
      }
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_14:
        v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_15;
        }

        goto LABEL_28;
      }
    }

    v24 = __CocoaSet.count.getter();
    if (v24)
    {
LABEL_15:
      v25 = 0;
      v8 = v23 & 0xFFFFFFFFFFFFFF8;
      v3 = v23 + 32;
      do
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x24C1FC540](v25, v23);
          v15 = __OFADD__(v25++, 1);
          if (v15)
          {
            __break(1u);
            return;
          }

          v34 = v26;
          swift_unknownObjectRelease();
          if (v34 == v14)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            v9 = __CocoaSet.count.getter();
            goto LABEL_4;
          }

          if (v25 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          if (*(v3 + 8 * v25) == v14)
          {
LABEL_25:

            goto LABEL_31;
          }

          ++v25;
        }
      }

      while (v25 != v24);
    }

LABEL_28:

    type metadata accessor for DOCProgressCollectionIndicatorButtonItem(0);
    if ([v14 isKindOfClass_])
    {
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

LABEL_31:
    v10 = v39;
    v9 = v40;
    v3 = v38;
  }

  while (v6 != v40);
LABEL_34:
  v27 = v46;
  LODWORD(v3) = v36;
  v6 = v35;
LABEL_36:

  if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
  {
    v28 = __CocoaSet.count.getter();
    if (v28)
    {
LABEL_39:
      v29 = 0;
      v8 = v27 & 0xC000000000000001;
      do
      {
        if (v8)
        {
          v30 = MEMORY[0x24C1FC540](v29, v27);
        }

        else
        {
          if (v29 >= *(v27 + 16))
          {
            goto LABEL_50;
          }

          v30 = *(v27 + 8 * v29 + 32);
        }

        v2 = v30;
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_49;
        }

        [v30 setEnabled_];

        ++v29;
      }

      while (v31 != v28);
    }
  }

  else
  {
    v28 = *(v27 + 16);
    if (v28)
    {
      goto LABEL_39;
    }
  }
}

id DOCErrorViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCErrorViewController.init(configuration:documentManager:actionManager:error:source:location:autoPresentAuthenticationUI:)(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, char a7)
{
  *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source) = a5;
  *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location) = a6;
  *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error) = a4;
  *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI) = a7;
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = _convertErrorToNSError(_:)();
  v16 = [v15 domain];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {

LABEL_11:
      v25 = 0;
      goto LABEL_12;
    }
  }

  v23 = [v15 code];

  if (v23 != -1000)
  {
    goto LABEL_11;
  }

  v24 = *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (!v24)
  {
    goto LABEL_11;
  }

  v25 = [objc_opt_self() authenticationActionForProviderDomain_];
LABEL_12:
  *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction) = v25;
  v26 = DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(a1, a2, a3);

  return v26;
}

Swift::Void __swiftcall DOCErrorViewController.viewDidLoad()()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 effectiveAppearance];
    if (!v3 || (v4 = v3, v5 = [v3 backgroundColor], v4, !v5))
    {
      v5 = [objc_opt_self() systemBackgroundColor];
    }

    [v2 setBackgroundColor_];

    v6 = [objc_opt_self() defaultCenter];
    [v6 addObserver:v0 selector:sel_applicationDidBecomeActive_ name:*MEMORY[0x277D76648] object:0];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall DOCErrorViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidAppear_, a1);
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction];
  if (v3)
  {
    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI;
    v5 = v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_autoPresentAuthenticationUI];
    v6 = v3;
    v7 = v6;
    if ((v5 & 1) != 0 || [v6 displayInline])
    {
      v1[v4] = 0;
      v8 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error];
      if ([v7 displayInline])
      {
        embedAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(v1, v8, v7);
      }

      else
      {
        presentAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(v1, v8, v7);
      }
    }
  }
}

Swift::Void __swiftcall DOCErrorViewController.willMove(toParent:)(UIViewController_optional *toParent)
{
  ObjectType = swift_getObjectType();
  if (!toParent)
  {
    DOCErrorViewController.updateDisableableBarButtonItems(enabled:)(1);
  }

  v4.receiver = v1;
  v4.super_class = ObjectType;
  [(UIViewController_optional *)&v4 willMoveToParentViewController:toParent];
}

uint64_t DOCErrorViewController.ContentUnavailableInfo.title.getter()
{
  v1 = *v0;

  return v1;
}

void DOCErrorViewController.ContentUnavailableInfo.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t DOCErrorViewController.ContentUnavailableInfo.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void DOCErrorViewController.ContentUnavailableInfo.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t DOCErrorViewController.ContentUnavailableInfo.actionTitle.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void DOCErrorViewController.ContentUnavailableInfo.actionTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void __swiftcall DOCErrorViewController.ContentUnavailableInfo.init()(DocumentManagerExecutables::DOCErrorViewController::ContentUnavailableInfo *__return_ptr retstr)
{
  retstr->title._countAndFlagsBits = 0;
  retstr->title._object = 0xE000000000000000;
  retstr->description.value._countAndFlagsBits = 0;
  retstr->description.value._object = 0;
  retstr->actionTitle._countAndFlagsBits = 0;
  retstr->actionTitle._object = 0xE000000000000000;
}

void __swiftcall DOCErrorViewController.ContentUnavailableInfo.init(title:description:actionTitle:)(DocumentManagerExecutables::DOCErrorViewController::ContentUnavailableInfo *__return_ptr retstr, Swift::String title, Swift::String_optional description, Swift::String actionTitle)
{
  retstr->title = title;
  retstr->description = description;
  retstr->actionTitle = actionTitle;
}

void DOCErrorViewController.contentUnavailableInfoToDisplay.getter(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for CocoaError.Code();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v8 = &v207 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction);
  if (v9 && ([v9 displayInline] & 1) != 0)
  {
    v10 = 0;
    v11 = 0;
    countAndFlagsBits = 0;
    object = 0;
    v14 = 0uLL;
LABEL_84:
    *a1 = v10;
    *(a1 + 8) = v11;
    *(a1 + 16) = v14;
    *(a1 + 32) = countAndFlagsBits;
    *(a1 + 40) = object;
    return;
  }

  v213 = a1;
  v15 = _convertErrorToNSError(_:)();
  v221 = 0uLL;
  v214 = v15;
  v16 = [v15 domain];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v17 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v19 == v20)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if ([v214 code] == -1004)
  {
    v23 = _DocumentManagerBundle();
    if (v23)
    {
      v24 = v23;
      v222._object = 0x8000000249BE44A0;
      v25._object = 0x8000000249BE4480;
      v222._countAndFlagsBits = 0xD000000000000033;
      v25._countAndFlagsBits = 0xD000000000000013;
      v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v26.value._object = 0xEB00000000656C62;
      v27._countAndFlagsBits = 0;
      v27._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v222);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_249B9A480;
      v29 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source) displayName];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      *(v28 + 56) = MEMORY[0x277D837D0];
      *(v28 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v28 + 32) = v30;
      *(v28 + 40) = v32;
      v10 = String.init(format:_:)();
      v34 = v33;

      v35 = _DocumentManagerBundle();
      v36 = v214;
      if (v35)
      {
        v37 = v35;
        v223._object = 0x8000000249BE4AF0;
        v38._countAndFlagsBits = 0xD00000000000005ALL;
        v38._object = 0x8000000249BE4A90;
        v223._countAndFlagsBits = 0xD00000000000005FLL;
        v39.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v39.value._object = 0xEB00000000656C62;
        v40._countAndFlagsBits = 0;
        v40._object = 0xE000000000000000;
        v41 = NSLocalizedString(_:tableName:bundle:value:comment:)(v38, v39, v37, v40, v223);

        v221 = v41;
        v42 = _DocumentManagerBundle();
        if (v42)
        {
          v43 = v42;
          v224._object = 0x8000000249BE45A0;
          v44._countAndFlagsBits = 0x6961674120797254;
          v224._countAndFlagsBits = 0xD00000000000002ELL;
          v44._object = 0xE90000000000006ELL;
          v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v45.value._object = 0xEB00000000656C62;
          v46._countAndFlagsBits = 0;
          v46._object = 0xE000000000000000;
          v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v224);
          countAndFlagsBits = v47._countAndFlagsBits;
          object = v47._object;

LABEL_33:
          a1 = v213;
          v79 = 0x278FB0000;
          v11 = v34;
          goto LABEL_68;
        }

        goto LABEL_94;
      }

LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

LABEL_16:
  v48 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source);
  v49 = *(v48 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (!v49)
  {
LABEL_28:
    v36 = v214;
    v84 = v214;
    static CocoaError.fileReadNoPermission.getter();
    lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type CocoaError.Code and conformance CocoaError.Code, MEMORY[0x277CC8608], MEMORY[0x277CC8600]);
    v85 = v84;
    LOBYTE(v84) = static _ErrorCodeProtocol.~= infix(_:_:)();

    (*(v4 + 8))(v8, v3);
    v86 = _DocumentManagerBundle();
    v87 = v86;
    if (v84)
    {
      if (v86)
      {
        v227._object = 0x8000000249BE44A0;
        v88._object = 0x8000000249BE4480;
        v227._countAndFlagsBits = 0xD000000000000033;
        v88._countAndFlagsBits = 0xD000000000000013;
        v89.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v89.value._object = 0xEB00000000656C62;
        v90._countAndFlagsBits = 0;
        v90._object = 0xE000000000000000;
        NSLocalizedString(_:tableName:bundle:value:comment:)(v88, v89, v87, v90, v227);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v91 = swift_allocObject();
        *(v91 + 16) = xmmword_249B9A480;
        v92 = [v48 displayName];
        v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v95 = v94;

        *(v91 + 56) = MEMORY[0x277D837D0];
        *(v91 + 64) = lazy protocol witness table accessor for type String and conformance String();
        *(v91 + 32) = v93;
        *(v91 + 40) = v95;
        v10 = String.init(format:_:)();
        v34 = v96;

        v97 = _DocumentManagerBundle();
        if (v97)
        {
          v98 = v97;
          v228._object = 0x8000000249BE46C0;
          v99._object = 0x8000000249BE4650;
          v228._countAndFlagsBits = 0xD000000000000063;
          v99._countAndFlagsBits = 0x1000000000000063;
          v100.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v100.value._object = 0xEB00000000656C62;
          v101._countAndFlagsBits = 0;
          v101._object = 0xE000000000000000;
          v102 = NSLocalizedString(_:tableName:bundle:value:comment:)(v99, v100, v98, v101, v228);

          v221 = v102;
          v103 = _DocumentManagerBundle();
          if (v103)
          {
            v104 = v103;
            v229._object = 0x8000000249BE45A0;
            v105._countAndFlagsBits = 0x6961674120797254;
            v229._countAndFlagsBits = 0xD00000000000002ELL;
            v105._object = 0xE90000000000006ELL;
            v106.value._countAndFlagsBits = 0x617A696C61636F4CLL;
            v106.value._object = 0xEB00000000656C62;
            v107._countAndFlagsBits = 0;
            v107._object = 0xE000000000000000;
            v108 = NSLocalizedString(_:tableName:bundle:value:comment:)(v105, v106, v104, v107, v229);
            countAndFlagsBits = v108._countAndFlagsBits;
            object = v108._object;

            goto LABEL_33;
          }

          goto LABEL_99;
        }

        goto LABEL_97;
      }

      goto LABEL_95;
    }

    if (!v86)
    {
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v109.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v230._object = 0x8000000249BE44A0;
    v110._object = 0x8000000249BE4480;
    v230._countAndFlagsBits = 0xD000000000000033;
    v110._countAndFlagsBits = 0xD000000000000013;
    v109.value._object = 0xEB00000000656C62;
    v111._countAndFlagsBits = 0;
    v111._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v110, v109, v87, v111, v230);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v112 = swift_allocObject();
    *(v112 + 16) = xmmword_249B9A480;
    v113 = [v48 displayName];
    v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116 = v115;

    *(v112 + 56) = MEMORY[0x277D837D0];
    *(v112 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v112 + 32) = v114;
    *(v112 + 40) = v116;
    v10 = String.init(format:_:)();
    v212 = v117;

    v118 = _DocumentManagerBundle();
    if (!v118)
    {
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    v119 = v118;
    v231._object = 0x8000000249BE4530;
    v120._countAndFlagsBits = 0xD000000000000047;
    v120._object = 0x8000000249BE44E0;
    v231._countAndFlagsBits = 0xD000000000000060;
    v79 = 0x617A696C61636F4CLL;
    v121.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v121.value._object = 0xEB00000000656C62;
    v122._countAndFlagsBits = 0;
    v122._object = 0xE000000000000000;
    v123 = NSLocalizedString(_:tableName:bundle:value:comment:)(v120, v121, v119, v122, v231);

    v221 = v123;
    if (!DOCIsInternalBuild())
    {
LABEL_60:
      v149 = _DocumentManagerBundle();
      if (v149)
      {
        v150 = v149;
        v232._object = 0x8000000249BE45A0;
        v151._countAndFlagsBits = 0x6961674120797254;
        v232._countAndFlagsBits = 0xD00000000000002ELL;
        v151._object = 0xE90000000000006ELL;
        v152.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v152.value._object = 0xEB00000000656C62;
        v153._countAndFlagsBits = 0;
        v153._object = 0xE000000000000000;
        v154 = NSLocalizedString(_:tableName:bundle:value:comment:)(v151, v152, v150, v153, v232);
        countAndFlagsBits = v154._countAndFlagsBits;
        object = v154._object;

        a1 = v213;
        v36 = v214;
        v79 = 0x278FB0000;
LABEL_62:
        v11 = v212;
        goto LABEL_68;
      }

      goto LABEL_100;
    }

    MEMORY[0x24C1FAEA0](0xD000000000000019, 0x8000000249BE4630);
    v124 = [v85 localizedFailureReason];
    if (v124)
    {
      v125 = v124;
      v126 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = v127;

      *&v219 = 0x3A6572756C696146;
      *(&v219 + 1) = 0xE900000000000020;
      MEMORY[0x24C1FAEA0](v126, v128);
      MEMORY[0x24C1FAEA0](10, 0xE100000000000000);
      if (!*(&v221 + 1))
      {
LABEL_104:
        __break(1u);
        goto LABEL_105;
      }

      v129 = v219;

      MEMORY[0x24C1FAEA0](v129, *(&v129 + 1));
    }

    v130 = [v85 localizedDescription];
    v131 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v133 = v132;

    *&v219 = 0;
    *(&v219 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(&v219, "Description: ");
    HIWORD(v219) = -4864;
    MEMORY[0x24C1FAEA0](v131, v133);
    MEMORY[0x24C1FAEA0](10, 0xE100000000000000);
    if (!*(&v221 + 1))
    {
      goto LABEL_102;
    }

    v211 = v133;
    v210 = v10;
    MEMORY[0x24C1FAEA0](v219, *(&v219 + 1));

    if (!*(&v221 + 1))
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    MEMORY[0x24C1FAEA0](0x666E492072657355, 0xEB000000000A3A6FLL);
    v134 = [v85 userInfo];
    v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v135 = 0;
    v136 = 1 << *(v11 + 32);
    v137 = -1;
    if (v136 < 64)
    {
      v137 = ~(-1 << v136);
    }

    v10 = v137 & *(v11 + 64);
    v36 = ((v136 + 63) >> 6);
    if (!v10)
    {
LABEL_46:
      if (v36 <= v135 + 1)
      {
        v139 = (v135 + 1);
      }

      else
      {
        v139 = v36;
      }

      v140 = v139 - 1;
      while (1)
      {
        v138 = v135 + 1;
        if (__OFADD__(v135, 1))
        {
          break;
        }

        if (v138 >= v36)
        {
          v10 = 0;
          v217 = 0u;
          v218 = 0u;
          v216 = 0u;
          goto LABEL_54;
        }

        v10 = *(v11 + 64 + 8 * v138);
        ++v135;
        if (v10)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_90;
    }

    while (1)
    {
      v138 = v135;
LABEL_53:
      v141 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v142 = v141 | (v138 << 6);
      v143 = (*(v11 + 48) + 16 * v142);
      v145 = *v143;
      v144 = v143[1];
      outlined init with copy of Any(*(v11 + 56) + 32 * v142, v215);
      *&v216 = v145;
      *(&v216 + 1) = v144;
      outlined init with take of Any(v215, &v217);

      v140 = v138;
LABEL_54:
      v219 = v216;
      v220[0] = v217;
      v220[1] = v218;
      v146 = *(&v216 + 1);
      if (!*(&v216 + 1))
      {

        v10 = v210;
        goto LABEL_60;
      }

      v147 = v219;
      outlined init with take of Any(v220, &v216);
      *&v215[0] = 0;
      *(&v215[0] + 1) = 0xE000000000000000;
      MEMORY[0x24C1FAEA0](39, 0xE100000000000000);
      MEMORY[0x24C1FAEA0](v147, v146);
      MEMORY[0x24C1FAEA0](0x27203D2027, 0xE500000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x24C1FAEA0](39, 0xE100000000000000);
      if (!*(&v221 + 1))
      {
        break;
      }

      v79 = *(&v215[0] + 1);
      v148 = *&v215[0];

      MEMORY[0x24C1FAEA0](v148, v79);

      __swift_destroy_boxed_opaque_existential_0(&v216);
      v135 = v140;
      if (!v10)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_92;
  }

  v50 = v49;
  v51 = [v214 domain];
  v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v54 = v53;

  if (v52 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v54 == v55)
  {
  }

  else
  {
    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v56 & 1) == 0)
    {
LABEL_27:

      goto LABEL_28;
    }
  }

  if ([v214 code] != -1000)
  {
    goto LABEL_27;
  }

  v211 = v50;
  v57 = _DocumentManagerBundle();
  if (!v57)
  {
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v58 = v57;
  v59.value._object = 0xEB00000000656C62;
  v59.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v225._object = 0x8000000249BE4750;
  v60._countAndFlagsBits = 0xD000000000000017;
  v60._object = 0x8000000249BE4730;
  v225._countAndFlagsBits = 0xD000000000000061;
  v61._countAndFlagsBits = 0;
  v61._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v60, v59, v58, v61, v225);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v62 = swift_allocObject();
  v209 = xmmword_249B9A480;
  *(v62 + 16) = xmmword_249B9A480;
  v63 = [v48 displayName];
  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v66 = v65;

  v67 = MEMORY[0x277D837D0];
  *(v62 + 56) = MEMORY[0x277D837D0];
  v68 = lazy protocol witness table accessor for type String and conformance String();
  *(v62 + 64) = v68;
  *(v62 + 32) = v64;
  *(v62 + 40) = v66;
  v10 = String.init(format:_:)();
  v212 = v69;

  v70 = v211;
  v71 = [v211 identifier];
  LODWORD(v64) = DOCProviderDomainIDIsExternalDevice();

  v36 = v214;
  if (v64)
  {
    v72 = _DocumentManagerBundle();
    if (v72)
    {
      v73 = v72;
      v226._object = 0x8000000249BE4940;
      v74._countAndFlagsBits = 0xD00000000000003FLL;
      v74._object = 0x8000000249BE4A10;
      v226._countAndFlagsBits = 0xD00000000000008CLL;
      v75.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v75.value._object = 0xEB00000000656C62;
      v76._countAndFlagsBits = 0;
      v76._object = 0xE000000000000000;
      v77 = NSLocalizedString(_:tableName:bundle:value:comment:)(v74, v75, v73, v76, v226);

      v221 = v77;
      v78 = _DocumentManagerBundle();
      v79 = 0x278FB0000;
      v11 = v212;
      if (v78)
      {
        v80 = v78;
        v206 = 0x8000000249BE4A50;
        v81 = 0x6B636F6C6E55;
        v82 = 0xD000000000000036;
        v83 = 0xE600000000000000;
LABEL_67:
        v164.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v164.value._object = 0xEB00000000656C62;
        v165._countAndFlagsBits = 0;
        v165._object = 0xE000000000000000;
        v166 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v81, v164, v80, v165, *&v82);
        countAndFlagsBits = v166._countAndFlagsBits;
        object = v166._object;

        a1 = v213;
        goto LABEL_68;
      }

      goto LABEL_106;
    }

LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v155 = [objc_opt_self() authenticationActionForProviderDomain_];
  if (v155)
  {

    v156 = _DocumentManagerBundle();
    v79 = &selRef_setNavigationTitleForTagListInInfoPanel_;
    v11 = v212;
    v157 = 0x617A696C61636F4CLL;
    if (v156)
    {
      v158 = v156;
      v233._object = 0x8000000249BE4940;
      v159._countAndFlagsBits = 0xD00000000000003BLL;
      v159._object = 0x8000000249BE4900;
      v233._countAndFlagsBits = 0xD00000000000008CLL;
      v160 = 0xEB00000000656C62;
      v161._countAndFlagsBits = 0;
      v161._object = 0xE000000000000000;
      v162 = NSLocalizedString(_:tableName:bundle:value:comment:)(v159, *&v157, v158, v161, v233);

      v221 = v162;
      v163 = _DocumentManagerBundle();
      if (v163)
      {
        v80 = v163;
        v206 = 0x8000000249BE49D0;
        v81 = 0x69746E6568747541;
        v83 = 0xEC00000065746163;
        v82 = 0xD00000000000003CLL;
        goto LABEL_67;
      }

      goto LABEL_108;
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  (*((*MEMORY[0x277D85000] & *v48) + 0x138))();
  v79 = 0x278FB0000;
  v11 = v212;
  if (!v181)
  {
LABEL_90:

    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    a1 = v213;
LABEL_68:
    v167 = [v36 *(v79 + 2752)];
    v168 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v168 + 16) && (v169 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000018, 0x8000000249BE45D0), (v170 & 1) != 0))
    {
      outlined init with copy of Any(*(v168 + 56) + 32 * v169, &v219);

      if (swift_dynamicCast())
      {

        v11 = *(&v216 + 1);
        v10 = v216;
      }
    }

    else
    {
    }

    v171 = [v36 *(v79 + 2752)];
    v172 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v172 + 16) && (v173 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x8000000249BE45F0), (v174 & 1) != 0))
    {
      outlined init with copy of Any(*(v172 + 56) + 32 * v173, &v219);

      if (swift_dynamicCast())
      {
        v176 = *(&v216 + 1);
        v175 = v216;

        v221 = __PAIR128__(v176, v175);
        v36 = v214;
      }
    }

    else
    {
    }

    v177 = [v36 *(v79 + 2752)];
    v178 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v178 + 16) && (v179 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000019, 0x8000000249BE4610), (v180 & 1) != 0))
    {
      outlined init with copy of Any(*(v178 + 56) + 32 * v179, &v219);

      if (swift_dynamicCast())
      {

        object = *(&v216 + 1);
        countAndFlagsBits = v216;
      }
    }

    else
    {
    }

    v14 = v221;
    goto LABEL_84;
  }

  v210 = v10;

  v182 = _DocumentManagerBundle();
  if (!v182)
  {
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v183 = v182;
  v234._object = 0x8000000249BE4810;
  v184._countAndFlagsBits = 0xD000000000000049;
  v184._object = 0x8000000249BE47C0;
  v234._countAndFlagsBits = 0xD000000000000095;
  v185.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v185.value._object = 0xEB00000000656C62;
  v186._countAndFlagsBits = 0;
  v186._object = 0xE000000000000000;
  v208 = NSLocalizedString(_:tableName:bundle:value:comment:)(v184, v185, v183, v186, v234)._countAndFlagsBits;

  v187 = swift_allocObject();
  *(v187 + 16) = v209;
  v188 = [v48 displayName];
  v189 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v207 = v190;

  *(v187 + 56) = v67;
  *(v187 + 64) = v68;
  v191 = v207;
  *(v187 + 32) = v189;
  *(v187 + 40) = v191;
  v192 = String.init(format:_:)();
  v194 = v193;

  *&v221 = v192;
  *(&v221 + 1) = v194;
  v195 = _DocumentManagerBundle();
  if (v195)
  {
    v196 = v195;
    v235._object = 0x8000000249BE48B0;
    v197._countAndFlagsBits = 0x4025206E65704FLL;
    v235._countAndFlagsBits = 0xD000000000000040;
    v197._object = 0xE700000000000000;
    v198.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v198.value._object = 0xEB00000000656C62;
    v199._countAndFlagsBits = 0;
    v199._object = 0xE000000000000000;
    v208 = NSLocalizedString(_:tableName:bundle:value:comment:)(v197, v198, v196, v199, v235)._countAndFlagsBits;

    v200 = swift_allocObject();
    *(v200 + 16) = v209;
    v201 = [v48 displayName];
    v202 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v204 = v203;

    *(v200 + 56) = v67;
    *(v200 + 64) = v68;
    *(v200 + 32) = v202;
    *(v200 + 40) = v204;
    countAndFlagsBits = String.init(format:_:)();
    object = v205;

    a1 = v213;
    v79 = 0x278FB0000;
    v10 = v210;
    goto LABEL_62;
  }

LABEL_110:
  __break(1u);
}

void closure #1 in DOCErrorViewController.docUpdateContentUnavailableConfiguration(using:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    DOCErrorViewController.performRetryAttempt()();
  }
}

Swift::Void __swiftcall DOCErrorViewController.performRetryAttempt()()
{
  ObjectType = swift_getObjectType();
  v37 = _convertErrorToNSError(_:)();
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source];
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain;
  v4 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (!v4)
  {
    goto LABEL_6;
  }

  v36 = v4;
  v5 = [v36 identifier];
  v6 = DOCProviderDomainIDIsExternalDevice();

  if (!v6 || (v7 = [objc_opt_self() standardUserDefaults], v8 = MEMORY[0x24C1FAD20](0xD00000000000001BLL, 0x8000000249BE4B50), v9 = objc_msgSend(v7, sel_BOOLForKey_, v8), v7, v8, !v9))
  {

LABEL_6:
    v11 = [v37 domain];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
    {
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
LABEL_17:
        v22 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v23 = *(v22 + 1);
          v24 = swift_getObjectType();
          v38[3] = ObjectType;
          v38[0] = v0;
          v25 = *(v23 + 8);
          v26 = v0;
          v25(v38, 0, 4, 1, v24, v23);
          swift_unknownObjectRelease();

          __swift_destroy_boxed_opaque_existential_0(v38);
        }

        else
        {
        }

        return;
      }
    }

    if ([v37 code] != -1000)
    {
      goto LABEL_17;
    }

    v18 = *(v2 + v3);
    if (v18)
    {
      v19 = v18;
      v20 = [v19 identifier];
      v21 = DOCProviderDomainIDIsExternalDevice();

      if (v21)
      {
        DOCErrorViewController.displayExternalStorageAuthAlert(for:)(v19);

LABEL_30:
        v10 = v37;
        goto LABEL_31;
      }
    }

    v27 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction];
    if (v27)
    {
      v28 = v27;
      v37 = v37;
      if ([v28 displayInline])
      {
        embedAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(v0, v37, v28);
      }

      else
      {
        presentAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(v0, v37, v28);
      }
    }

    else
    {
      v29 = (*((*MEMORY[0x277D85000] & *v2) + 0x138))();
      if (v30)
      {
        v31 = v29;
        v32 = v30;
        v33 = [objc_opt_self() defaultWorkspace];
        if (!v33)
        {
          __break(1u);
          return;
        }

        v34 = v33;
        v35 = MEMORY[0x24C1FAD20](v31, v32);

        [v34 openApplicationWithBundleID_];
      }
    }

    goto LABEL_30;
  }

  DOCErrorViewController.displayExternalStorageAuthAlert(for:)(v36);

  v10 = v36;
LABEL_31:
}

BOOL DOCErrorViewController.requiresFullBrowserWidth.getter()
{
  v0 = _convertErrorToNSError(_:)();
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {

      return 0;
    }
  }

  v9 = [v0 code];

  return v9 == -1000;
}

void DOCErrorViewController.displayExternalStorageAuthAlert(for:)(void *a1)
{
  v3 = _DocumentManagerBundle();
  if (!v3)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = v3;
  v34._object = 0x8000000249BE4C60;
  v5._object = 0x8000000249BE4C40;
  v34._countAndFlagsBits = 0xD000000000000044;
  v5._countAndFlagsBits = 0xD000000000000015;
  v6.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v6.value._object = 0xEB00000000656C62;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v6, v4, v7, v34);

  v9 = _DocumentManagerBundle();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v10 = v9;
  v35._object = 0x8000000249BE4CE0;
  v11._object = 0x8000000249BE4CB0;
  v35._countAndFlagsBits = 0xD000000000000046;
  v11._countAndFlagsBits = 0x100000000000002CLL;
  v12.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v12.value._object = 0xEB00000000656C62;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v12, v10, v13, v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249B9A480;
  v15 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] displayName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v19 = String.init(format:_:)();
  v21 = v20;

  v22 = _DocumentManagerBundle();
  if (!v22)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v23 = v22;
  v36._object = 0x8000000249BE4D30;
  v24._countAndFlagsBits = 0x6B636F6C6E55;
  v36._countAndFlagsBits = 0xD000000000000045;
  v24._object = 0xE600000000000000;
  v25.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v25.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v27 = NSLocalizedString(_:tableName:bundle:value:comment:)(v24, v25, v23, v26, v36);

  v28 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v29 = swift_allocObject();
  *(v29 + 16) = a1;
  *(v29 + 24) = v28;
  v30 = swift_allocObject();
  v30[1] = v8;
  v30[2]._countAndFlagsBits = v19;
  v30[2]._object = v21;
  v30[3]._countAndFlagsBits = partial apply for closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:);
  v30[3]._object = v29;
  v30[4] = v27;
  v30[5]._countAndFlagsBits = v1;
  v31 = a1;

  v32 = v1;
  DOCRunInMainThread(_:)();
}

void embedAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 childViewControllers];
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    return;
  }

  v8 = objc_opt_self();
  v9 = _convertErrorToNSError(_:)();
  v10 = [a3 uiActionProviderIdentifier];
  v11 = [a3 fpProviderDomain];
  v12 = [v11 identifier];

  v13 = [v8 actionControllerForInlineError:v9 providerIdentifier:v10 providerDomainIdentifier:v12];
  v14 = v13;
  v15 = [v14 view];
  if (!v15)
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = v15;
  [v15 setOpaque_];

  v17 = [v14 view];
  if (!v17)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v17;
  v19 = [a1 effectiveAppearance];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 backgroundColor];
  }

  else
  {
    v21 = 0;
  }

  [v18 setBackgroundColor_];

  [v14 setDelegate_];
  v22 = [v14 view];
  if (!v22)
  {
    goto LABEL_27;
  }

  v23 = v22;
  v24 = [a1 view];
  if (!v24)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v25 = v24;
  v26 = [v24 tintColor];

  if (!v26)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v27 = [objc_opt_self() _doc_safeTintColor_];

  [v23 setTintColor_];
  v28 = [v14 view];
  if (!v28)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v29 = v28;
  [v28 setTranslatesAutoresizingMaskIntoConstraints_];

  [a1 doc:v14 addChildViewController:0 addSubviewBlock:?];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_249BA0470;
  v31 = [v14 view];
  if (!v31)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v32 = v31;
  v33 = [v31 topAnchor];

  v34 = [a1 view];
  if (!v34)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v35 = v34;
  v36 = [v34 safeAreaLayoutGuide];

  v37 = [v36 topAnchor];
  v38 = [v33 constraintEqualToAnchor_];

  *(v30 + 32) = v38;
  v39 = [v14 view];
  if (!v39)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v40 = v39;
  v41 = [v39 leadingAnchor];

  v42 = [a1 view];
  if (!v42)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v43 = v42;
  v44 = [v42 safeAreaLayoutGuide];

  v45 = [v44 leadingAnchor];
  v46 = [v41 constraintEqualToAnchor_];

  *(v30 + 40) = v46;
  v47 = [v14 view];
  if (!v47)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = [a1 view];
  if (!v50)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v51 = v50;
  v52 = [v50 safeAreaLayoutGuide];

  v53 = [v52 trailingAnchor];
  v54 = [v49 constraintEqualToAnchor_];

  *(v30 + 48) = v54;
  v55 = [v14 view];

  if (!v55)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v56 = [v55 bottomAnchor];

  v57 = [a1 view];
  if (!v57)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v58 = v57;
  v59 = objc_opt_self();
  v60 = [v58 safeAreaLayoutGuide];

  v61 = [v60 bottomAnchor];
  v62 = [v56 constraintEqualToAnchor_];

  *(v30 + 56) = v62;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v59 activateConstraints_];
}

void presentAuthenticationUI #1 () in DOCErrorViewController.displayAuthenticationUI(for:error:)(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 presentedViewController];
  if (!v5)
  {
    v6 = objc_opt_self();
    v7 = _convertErrorToNSError(_:)();
    v8 = [a3 uiActionProviderIdentifier];
    v9 = [a3 fpProviderDomain];
    v10 = [v9 identifier];

    v17 = [v6 actionControllerForInlineError:v7 providerIdentifier:v8 providerDomainIdentifier:v10];
    [v17 setDelegate_];
    v11 = [v17 view];
    if (v11)
    {
      v12 = v11;
      v13 = [a1 view];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 tintColor];

        if (v15)
        {
          v16 = [objc_opt_self() _doc_safeTintColor_];

          [v12 setTintColor_];
          [a1 presentViewController:v17 animated:1 completion:0];
          v5 = v17;
          goto LABEL_6;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_6:
}

void closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v9 = objc_opt_self();
    v10 = MEMORY[0x24C1FAD20](a1, a2);
    v12[4] = partial apply for closure #1 in closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:);
    v12[5] = a5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v12[3] = &block_descriptor_76;
    v11 = _Block_copy(v12);

    [v9 unlockDomain:a4 withPassword:v10 saveToKeychain:1 completionHandler:v11];
    _Block_release(v11);
  }
}

uint64_t closure #1 in closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v13 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in closure #1 in closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:);
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_19_6;
  v14 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v12, v7, v14);
  _Block_release(v14);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

void closure #1 in closure #1 in closure #1 in DOCErrorViewController.displayExternalStorageAuthAlert(for:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 8);
      ObjectType = swift_getObjectType();
      v8[3] = type metadata accessor for DOCErrorViewController();
      v8[0] = v2;
      v6 = *(v4 + 8);
      v7 = v2;
      v6(v8, 0, 4, 1, ObjectType, v4);
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0(v8);
    }

    else
    {
    }
  }
}

void DOCErrorViewController.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_authenticationAction);
}

id DOCErrorViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DOCErrorViewController.actionController(_:presentError:completion:)(uint64_t a1, uint64_t a2)
{
  v2 = _convertErrorToNSError(_:)();
  DOCPresentAlertForError();
}

void specialized DOCErrorViewController.updateOverlay(animated:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem;
  swift_beginAccess();
  v3 = *&v0[v2];
  if (!v3)
  {
    return;
  }

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalLeadingNavigationBarButtonItems;
  swift_beginAccess();
  v5 = *&v0[v4];
  v6 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_overlayDelegate];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    v9 = *(v7 + 56);
    v10 = v3;

    v11 = v9(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = v3;

    v11 = MEMORY[0x277D84F90];
  }

  v42 = v5;
  v43 = v3;
  v13 = v11 & 0xFFFFFFFFFFFFFF8;
  if (v11 >> 62)
  {
LABEL_53:
    v14 = __CocoaSet.count.getter();
  }

  else
  {
    v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = 0;
  do
  {
    v16 = v15;
    if (v14 == v15)
    {
      break;
    }

    if ((v11 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C1FC540](v15, v11);
    }

    else
    {
      if (v15 >= *(v13 + 16))
      {
        goto LABEL_52;
      }

      v17 = *(v11 + 8 * v15 + 32);
    }

    v18 = v17;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_51;
    }

    v19 = (*((*MEMORY[0x277D85000] & *v17) + 0x98))();

    v15 = v16 + 1;
  }

  while ((v19 & 1) == 0);
  if (![v1 enclosedInUIPDocumentLanding])
  {
    v24 = v43;
    goto LABEL_23;
  }

  v20 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration] defaultEffectiveTabIdentifierForLocationRestore];
  v21 = DOCTabIdentifier.tab.getter(v20);
  v23 = v22;

  if (v14 != v16)
  {
    v24 = v43;
    if (v11 >> 62)
    {
      goto LABEL_37;
    }

LABEL_24:
    v25 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v26 = v42;
    if (v25)
    {
LABEL_25:
      v27 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
      swift_beginAccess();
      v28 = 0;
      v13 = v11 & 0xC000000000000001;
      while (1)
      {
        if (v13)
        {
          v30 = MEMORY[0x24C1FC540](v28, v11);
        }

        else
        {
          if (v28 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v30 = *(v11 + 8 * v28 + 32);
        }

        v31 = v30;
        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if ([v1 isEditing])
        {
          v29 = v1[v27];
        }

        else
        {
          v29 = 1;
        }

        (*((*MEMORY[0x277D85000] & *v31) + 0x88))(v29);

        ++v28;
        if (v32 == v25)
        {
          v26 = v42;
          v24 = v43;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    goto LABEL_38;
  }

  v24 = v43;
  if ((v23 & 1) != 0 || v21 == 2)
  {
LABEL_23:
    if (v11 >> 62)
    {
      goto LABEL_37;
    }

    goto LABEL_24;
  }

  v11 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_24;
  }

LABEL_37:
  v25 = __CocoaSet.count.getter();
  v26 = v42;
  if (v25)
  {
    goto LABEL_25;
  }

LABEL_38:

  v11 = MEMORY[0x277D84F90];
LABEL_39:
  if (v11 >> 62)
  {
    v33 = __CocoaSet.count.getter();
  }

  else
  {
    v33 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  [v24 setLeftItemsSupplementBackButton_];
  [v24 setHidesBackButton_];
  if (v11 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);

    v35 = _bridgeCocoaArray<A>(_:)();
    swift_bridgeObjectRelease_n();
    v34 = v35;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);

    v34 = v11;
  }

  specialized UINavigationItem.doc_applyLeadingBarButtonItems(_:fixedItems:animated:)(v26, v34);

  DOCErrorViewController.updateDisableableBarButtonItems(enabled:)(0);
  v36 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_location];
  if (!v36 || (v37 = [v36 displayName]) == 0)
  {
    v37 = [*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] displayName];
  }

  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = MEMORY[0x24C1FAD20](v38, v40);

  [v24 setTitle_];
}

void specialized DOCErrorViewController.docUpdateContentUnavailableConfiguration(using:)()
{
  v1 = v0;
  DOCErrorViewController.contentUnavailableInfoToDisplay.getter(&v16);
  v2 = v17;
  if (v17)
  {
    v3 = v16;
    v19 = v18;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v6 = [objc_opt_self() emptyProminentConfiguration];
    v7 = v5;
    v8 = MEMORY[0x24C1FAD20](v3, v2);
    [v6 setText_];

    if (*(&v19 + 1))
    {
      v9 = MEMORY[0x24C1FAD20](v19);
      [v6 setSecondaryText_];
    }

    v10 = v7;
    v11 = [v6 buttonProperties];
    [v11 configurePlain];

    v12 = [v6 buttonProperties];
    [v12 setPrimaryAction_];

    v13 = v6;

    outlined destroy of String?(&v19);

    v14 = [v1 docContentUnavailableConfigurationState];
    v15 = [v13 updatedConfigurationForState_];

    [v1 doc:v15 setContentUnavailableConfiguration:?];
  }

  else
  {

    [v0 doc:0 setContentUnavailableConfiguration:?];
  }
}

void specialized DOCErrorViewController.applicationDidBecomeActive(_:)()
{
  ObjectType = swift_getObjectType();
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_error];
  v20 = _convertErrorToNSError(_:)();
  v3 = [v20 domain];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {

      return;
    }
  }

  v10 = [v20 code];

  if (v10 == -1000)
  {
    v11 = *(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source] + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (!v11 || (v12 = v11, v13 = [v12 identifier], v14 = DOCProviderDomainIDIsWebDAV(), v13, v12, (v14 & 1) == 0))
    {
      v15 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v16 = *(v15 + 1);
        v17 = swift_getObjectType();
        v21[3] = ObjectType;
        v21[0] = v0;
        v18 = *(v16 + 8);
        v19 = v0;
        v18(v21, v2, 0, 1, v17, v16);
        swift_unknownObjectRelease();
        __swift_destroy_boxed_opaque_existential_0(v21);
      }
    }
  }
}

void specialized DOCErrorViewController.actionControllerDidFinishAction(_:error:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v5 = a1;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v6 = static DOCLog.UI;
    v7 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249B9A480;
    v9 = _convertErrorToNSError(_:)();
    *(v8 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v8 + 64) = lazy protocol witness table accessor for type NSError and conformance NSObject();
    *(v8 + 32) = v9;
    os_log(_:dso:log:type:_:)("Error trying to perform the action. Error: %@", 45, 2, &dword_2493AC000, v6, v7, v8);
  }

  else
  {
    v10 = ObjectType;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.UI);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2493AC000, v12, v13, "Action fisnished successfully. Reloading the collection from provider", v14, 2u);
      MEMORY[0x24C1FE850](v14, -1, -1);
    }

    (*((*MEMORY[0x277D85000] & **&v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCErrorViewController_source]) + 0x290))();
    v15 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting];
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v15 + 1);
      v17 = swift_getObjectType();
      v20[3] = v10;
      v20[0] = v2;
      v18 = *(v16 + 8);
      v19 = v2;
      v18(v20, 0, 4, 1, v17, v16);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(v20);
    }
  }
}

uint64_t lazy protocol witness table accessor for type CocoaError.Code and conformance CocoaError.Code(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of String?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t validateFilename(_:displayingFileExtension:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CharacterSet();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9._countAndFlagsBits = 46;
  v9._object = 0xE100000000000000;
  if (String.hasPrefix(_:)(v9))
  {
    lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
    a1 = swift_allocError();
    *v10 = 2;
  }

  else
  {
    CharacterSet.init(charactersIn:)();
    v14[2] = a1;
    v14[3] = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    if (v11)
    {
      (*(v5 + 8))(v8, v4);
    }

    else
    {
      lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
      a1 = swift_allocError();
      *v12 = 3;
      (*(v5 + 8))(v8, v4);
    }
  }

  return a1;
}

objc_class *DOCRenameViewController.__allocating_init(renamingItem:transitionProxy:initialThumbnail:)(void *a1, uint64_t a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = specialized DOCRenameViewController.init(renamingItem:transitionProxy:initialThumbnail:)(a1, a2, a3);

  swift_unknownObjectRelease();
  return v8;
}

char *DOCCreateFolderViewController.__allocating_init(creatingFolderInParentItem:suggestedName:transitionProxy:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = specialized DOCCreateFolderViewController.init(creatingFolderInParentItem:suggestedName:transitionProxy:)(a1, a2, a3, a4);

  return v10;
}

uint64_t one-time initialization function for DOCSafeAreaViewDidLayout()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000018, 0x8000000249BE5890);
  static NSNotificationName.DOCSafeAreaViewDidLayout = result;
  return result;
}

Swift::Int FilenameValidationError._ProgrammerError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

objc_class *FilenameValidationError.errorDescription.getter(uint64_t a1)
{
  if (a1 <= 3u)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        result = _DocumentManagerBundle();
        if (result)
        {
          v2 = result;
          v3 = 0xD000000000000034;
          v13 = 0x8000000249BE4FE0;
          v4 = 0x617A696C61636F4CLL;
          v5 = 0xEB00000000656C62;
          v6 = 0x8000000249BE4F90;
          v7 = 0x1000000000000049;
LABEL_10:
          v8.super.isa = v2;
          v9 = 0;
          v10 = 0xE000000000000000;
LABEL_19:
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v7, *&v4, v8, *&v9, *&v3)._countAndFlagsBits;

          return countAndFlagsBits;
        }

        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      goto LABEL_11;
    }

    result = _DocumentManagerBundle();
    if (!result)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v2 = result;
    v12 = "ot change after rename";
    v13 = 0x8000000249BE4F50;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v7 = 0x1000000000000083;
LABEL_18:
    v6 = v12 | 0x8000000000000000;
    v8.super.isa = v2;
    v9 = 0;
    v10 = 0xE000000000000000;
    v3 = 0xD000000000000036;
    goto LABEL_19;
  }

  if (a1 != 4)
  {
    if (a1 == 5)
    {
      result = _DocumentManagerBundle();
      if (result)
      {
        v2 = result;
        v7 = 0xD00000000000001BLL;
        v3 = 0xD00000000000002DLL;
        v13 = 0x8000000249BE4E30;
        v4 = 0x617A696C61636F4CLL;
        v5 = 0xEB00000000656C62;
        v6 = 0x8000000249BE4E10;
        goto LABEL_10;
      }

      goto LABEL_22;
    }

LABEL_11:
    if (a1)
    {
      return 0xD00000000000003DLL;
    }

    else
    {
      return 0xD000000000000042;
    }
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v2 = result;
    v12 = "n renaming has been cancelled";
    v7 = 0xD000000000000018;
    v13 = 0x8000000249BE4E80;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    goto LABEL_18;
  }

LABEL_24:
  __break(1u);
  return result;
}

double DOCInsetTextField.textRect(forBounds:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  [v4 clearButtonRectForBounds_];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v4 traitCollection];
  v18 = [v17 layoutDirection];

  if (v18 == 1)
  {
    v26.origin.x = v10;
    v26.origin.y = v12;
    v26.size.width = v14;
    v26.size.height = v16;
    Width = CGRectGetWidth(v26);
    v20 = a4;
    v21 = v10 + v10 + Width;
  }

  else
  {
    v27.origin.x = a1;
    v27.origin.y = a2;
    v27.size.width = a3;
    v27.size.height = a4;
    v24 = a4;
    v22 = CGRectGetWidth(v27);
    v28.origin.x = v10;
    v28.origin.y = v12;
    v28.size.width = v14;
    v28.size.height = v16;
    v21 = v22 - CGRectGetMaxX(v28);
    v29.origin.x = v10;
    v29.origin.y = v12;
    v29.size.width = v14;
    v29.size.height = v16;
    CGRectGetWidth(v29);
    v20 = v24;
  }

  return UIEdgeInsetsInsetRect(a1, a2, a3, v20, 0.0, v21);
}

char *DOCSafeAreaView.init(safeAreaView:)(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_safeBottomConstraint] = 0;
  v4 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardObservations] = MEMORY[0x277D84F90];
  v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_visibilityState] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_safeAreaView] = a1;
  v5 = a1;
  [v5 setTranslatesAutoresizingMaskIntoConstraints_];
  v34.receiver = v1;
  v34.super_class = ObjectType;
  v33.receiver = objc_msgSendSuper2(&v34, sel_initWithEffect_, 0);
  v33.super_class = ObjectType;
  v6 = v33.receiver;
  v7 = objc_msgSendSuper2(&v33, sel_contentView);
  [v7 addSubview_];
  v8 = [v7 bottomAnchor];
  v9 = [v5 bottomAnchor];
  [v6 safeAreaInsets];
  v11 = [v8 constraintEqualToAnchor:v9 constant:v10];

  v32 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249BA0470;
  v13 = [v7 safeAreaLayoutGuide];
  v14 = [v13 leadingAnchor];

  v15 = [v5 leadingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v12 + 32) = v16;
  v17 = [v5 trailingAnchor];
  v18 = [v7 safeAreaLayoutGuide];
  v19 = [v18 trailingAnchor];

  v20 = [v17 constraintEqualToAnchor_];
  *(v12 + 40) = v20;
  v21 = [v7 safeAreaLayoutGuide];
  v22 = [v21 topAnchor];

  v23 = [v5 topAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v12 + 48) = v24;
  *(v12 + 56) = v11;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  v25 = v11;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v32 activateConstraints_];

  v27 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_safeBottomConstraint];
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_safeBottomConstraint] = v25;
  v28 = v25;

  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v30 = specialized static DOCKeyboardNotifications.addObserver(keyboardAppearanceBlock:keyboardDisappearanceBlock:)(partial apply for closure #1 in DOCSafeAreaView.init(safeAreaView:), v29, partial apply for closure #1 in DOCSafeAreaView.init(safeAreaView:), v29);

  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardObservations] = v30;

  return v6;
}

void closure #1 in DOCSafeAreaView.init(safeAreaView:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    DOCSafeAreaView.handleKeyboardNotification(_:)();
  }
}

uint64_t DOCSafeAreaView.handleKeyboardNotification(_:)()
{
  v1 = v0;
  result = specialized Sequence<>.contains(_:)(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_visibilityState), &outlined read-only object #0 of DOCSafeAreaView.handleKeyboardNotification(_:));
  if (result)
  {
    v3 = Notification.userInfo.getter();
    if (v3)
    {
      v4 = v3;
      *&v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(&v9 + 1) = v5;
      AnyHashable.init<A>(_:)();
      if (*(v4 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v11), (v7 & 1) != 0))
      {
        outlined init with copy of Any(*(v4 + 56) + 32 * v6, v12);
        outlined destroy of AnyHashable(v11);

        type metadata accessor for CGRect(0);
        if (swift_dynamicCast())
        {
          v8 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame;
          *v8 = v9;
          *(v8 + 16) = v10;
          *(v8 + 32) = 0;
        }
      }

      else
      {

        outlined destroy of AnyHashable(v11);
      }
    }

    return DOCSafeAreaView.updateLayout()();
  }

  return result;
}

id DOCSafeAreaView.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardObservations;
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardObservations];
  if (v1 >> 62)
  {
LABEL_15:
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x24C1FC540](v3, v1);
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_15;
        }

        v4 = *(v1 + 8 * v3 + 32);
        swift_unknownObjectRetain();
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_12;
        }
      }

      v6 = [objc_opt_self() defaultCenter];
      [v6 removeObserver_];
      swift_unknownObjectRelease();

      ++v3;
    }

    while (v5 != v2);
  }

  *&v0[v8] = MEMORY[0x277D84F90];

  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_dealloc);
}

uint64_t DOCSafeAreaView.updateLayout()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  DOCSafeAreaView.updateSafeBottomConstraint()();
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_visibilityState) == 1)
  {
    [v0 layoutIfNeeded];
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v0;
  aBlock[4] = partial apply for closure #1 in DOCSafeAreaView.updateLayout();
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_190_0;
  v13 = _Block_copy(aBlock);
  v14 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v10, v5, v13);
  _Block_release(v13);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

id DOCSafeAreaView.updateSafeBottomConstraint()()
{
  [v0 safeAreaInsets];
  v2 = v1;
  Height = 0.0;
  if ((v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame + 32] & 1) == 0)
  {
    [v0 convertRect:0 fromView:{*&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame], *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame + 8], *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame + 16], *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_keyboardFrame + 24]}];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    [v0 bounds];
    v32.origin.x = v12;
    v32.origin.y = v13;
    v32.size.width = v14;
    v32.size.height = v15;
    v28.origin.x = v5;
    v28.origin.y = v7;
    v28.size.width = v9;
    v28.size.height = v11;
    v29 = CGRectIntersection(v28, v32);
    Height = CGRectGetHeight(v29);
    v16 = [objc_opt_self() mainBundle];
    v17 = [v16 bundleIdentifier];

    if (v17)
    {
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
      {
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v23 & 1) == 0)
        {
          [v0 bounds];
          Width = CGRectGetWidth(v30);
          [v0 bounds];
          if (Width < CGRectGetHeight(v31))
          {
            Height = Height + 40.0;
          }
        }
      }
    }
  }

  result = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_safeBottomConstraint];
  if (result)
  {
    if (v2 > Height)
    {
      v26 = v2;
    }

    else
    {
      v26 = Height;
    }

    return [result setConstant_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #1 in DOCSafeAreaView.updateLayout()(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = v2;
  if (one-time initialization token for DOCSafeAreaViewDidLayout != -1)
  {
    swift_once();
    v2 = v3;
  }

  [v2 postNotificationName:static NSNotificationName.DOCSafeAreaViewDidLayout object:a1];
}

void DOCAspectImageView.updateAspectRatioConstraint()()
{
  v1 = [v0 image];
  if (v1 && (v2 = v1, [v1 size], v4 = v3, objc_msgSend(v2, sel_size), v6 = v5, v2, v6 != 0.0))
  {
    v7 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint];
    v8 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint];
    v9 = v4 / v6;
    if (!v8)
    {
LABEL_14:
      v13 = [v0 widthAnchor];
      v14 = [v0 heightAnchor];
      v15 = [v13 constraintEqualToAnchor:v14 multiplier:v9];

      [v15 setActive_];
      v12 = *v7;
      *v7 = v15;
      goto LABEL_15;
    }

    v10 = 0;
  }

  else
  {
    v7 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint];
    v8 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1218DOCAspectImageView_aspectConstraint];
    if (!v8)
    {
      return;
    }

    v9 = 0.0;
    v10 = 1;
  }

  [v8 multiplier];
  if ((v10 & 1) == 0 && v11 == v9)
  {
    return;
  }

  if (*v7)
  {
    [v0 removeConstraint_];
  }

  if ((v10 & 1) == 0)
  {
    goto LABEL_14;
  }

  v12 = *v7;
  *v7 = 0;
LABEL_15:
}

void DOCRenameThumbnailView.recalculateThumbnail()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_item];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 traitCollection];
    if (one-time initialization token for displayScale != -1)
    {
      swift_once();
    }

    v4 = v0;
    v28 = static UITraitCollection.Traits.displayScale;
    v29 = qword_27EEE9C90;
    v5 = one-time initialization token for userInterfaceStyle;

    if (v5 != -1)
    {
      swift_once();
    }

    v30 = static UITraitCollection.Traits.userInterfaceStyle;
    v31 = qword_27EEE9CA8;

    _StringGuts.grow(_:)(18);

    v27[0] = 0;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v6);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v26[0] = 0;
    v26[1] = 0x6172287469617254;
    v26[2] = 0xEF3A65756C615677;

    specialized OptionSet<>.insert(_:)(v27, v28, *(&v28 + 1), v29);

    v8 = *(&v30 + 1);
    v7 = v31;
    v9 = v30;

    specialized OptionSet<>.insert(_:)(v27, v9, v8, v7);

    swift_arrayDestroy();
    v10 = UITraitCollection.doc_hasSpecified(_:)(v26);

    if (v10)
    {
      v11 = [v4 traitCollection];
      v12 = [v11 userInterfaceStyle];

      if (v12 >= 3)
      {
        type metadata accessor for UIUserInterfaceStyle(0);
        v26[3] = v15;
        v26[0] = v12;
        doc_warnUnrecognizedEnumValueEncountered(_:)(v26);
        __swift_destroy_boxed_opaque_existential_0(v26);
        v13 = 1;
      }

      else
      {
        v13 = qword_249BAD7B0[v12];
      }

      v16 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_maxThumbnailSize];
      v17 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_maxThumbnailSize + 8];
      v18 = [v4 traitCollection];
      [v18 displayScale];
      v20 = v19;

      v21 = [v2 isFolder];
      v22 = [objc_allocWithZone(MEMORY[0x277D063C0]) initWithSize:v13 scale:1 style:0 isFolded:v21 isInteractive:v16 isFolder:{v17, v20}];
      v23 = [objc_opt_self() sharedGenerator];
      v24 = [v23 thumbnailForNode:v2 descriptor:v22];

      v25 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail];
      *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail] = v24;
      swift_unknownObjectRetain();
      DOCRenameThumbnailView.fullSizeThumbnail.didset(v25);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    v14 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail];
    *&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail] = 0;
    DOCRenameThumbnailView.fullSizeThumbnail.didset(v14);

    swift_unknownObjectRelease();
  }
}

void *DOCRenameThumbnailView.addDecoration.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail);
  v2 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail))
  {
    v3 = *v2;
    if (*v2)
    {
      if (![swift_unknownObjectRetain() isLoading])
      {
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
    }

    v3 = *v1;
    if (!*v1)
    {
      return 0;
    }
  }

  else
  {
    v3 = *v2;
    if (!*v2)
    {
      return 0;
    }
  }

  swift_unknownObjectRetain();
LABEL_9:
  v4 = [v3 isRepresentativeIcon];
  swift_unknownObjectRelease();
  if (!v4)
  {
    return 0;
  }

  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_item);
  if (result)
  {
    return ([result isFolder] ^ 1);
  }

  return result;
}

objc_class *DOCRenameThumbnailView.fullSizeThumbnail.didset(void *a1)
{
  result = swift_getObjectType();
  v4 = result;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail;
  v6 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail];
  if (a1)
  {
    if (v6 == a1)
    {
      return result;
    }

    v7 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail];
    if (!*&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail])
    {
LABEL_10:
      if (!v6)
      {
        v8 = 0;
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    if (!v6)
    {
      v6 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail];
LABEL_11:
      swift_unknownObjectRetain();
      goto LABEL_12;
    }
  }

  else
  {
    if (!v6)
    {
      return result;
    }

    v7 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail];
    if (!*&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail])
    {
      goto LABEL_11;
    }
  }

  if ([swift_unknownObjectRetain() isLoading])
  {
    swift_unknownObjectRelease();
    v6 = *v7;
    goto LABEL_10;
  }

LABEL_12:
  v8 = [v6 thumbnail];
  swift_unknownObjectRelease();
LABEL_13:
  v10.receiver = v1;
  v10.super_class = v4;
  objc_msgSendSuper2(&v10, sel_setImage_, v8);
  v9 = DOCRenameThumbnailView.addDecoration.getter();
  specialized static DOCRenameThumbnailView.updateDecoration(on:addDecoration:)(v1, v9 & 1);

  if (a1)
  {
    [a1 removeListener_];
  }

  result = *&v1[v5];
  if (result)
  {
    return [(objc_class *)result addListener:v1];
  }

  return result;
}

id DOCRenameThumbnailView.init(item:initialThumbnail:maxThumbnailSize:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_item;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_item] = 0;
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail] = 0;
  *&v5[v11] = a1;
  *&v5[v12] = a2;
  v13 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_maxThumbnailSize];
  *v13 = a3;
  v13[1] = a4;
  v14 = a1;
  if (a2)
  {
    v15 = [swift_unknownObjectRetain() thumbnail];
  }

  else
  {
    v15 = 0;
  }

  v24.receiver = v5;
  v24.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v24, sel_initWithImage_, v15);

  v17 = v16;
  [v17 setContentMode_];
  [v17 setAccessibilityIgnoresInvertColors_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_249B9FA70;
  v19 = type metadata accessor for UITraitDisplayScale();
  v20 = MEMORY[0x277D74B68];
  *(v18 + 32) = v19;
  *(v18 + 40) = v20;
  v21 = type metadata accessor for UITraitUserInterfaceStyle();
  v22 = MEMORY[0x277D74BF0];
  *(v18 + 48) = v21;
  *(v18 + 56) = v22;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v17;
}

void closure #1 in DOCRenameThumbnailView.thumbnailLoaded(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_fullSizeThumbnail);
    if (v5)
    {
      v6 = v5 == a2;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v7 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail;
      v8 = *(Strong + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCRenameThumbnailView_initialThumbnail);
      swift_unknownObjectRetain();
      if (v8 && [v5 isLoading] && (swift_unknownObjectRelease(), v5 = *&v4[v7], swift_unknownObjectRetain(), !v5))
      {
        v9 = 0;
      }

      else
      {
        v9 = [v5 thumbnail];
        swift_unknownObjectRelease();
      }

      v11.receiver = v4;
      v11.super_class = type metadata accessor for DOCRenameThumbnailView();
      objc_msgSendSuper2(&v11, sel_setImage_, v9);
      v10 = DOCRenameThumbnailView.addDecoration.getter();
      specialized static DOCRenameThumbnailView.updateDecoration(on:addDecoration:)(v4, v10 & 1);

      v4 = v9;
    }
  }
}

uint64_t DOCRenameThumbnailView.__ivar_destroyer()
{
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

id DOCFolderThumbnailView.thumbnail.didset(id a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail;
  result = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail];
  if (!a1)
  {
    if (!result)
    {
      return result;
    }

    goto LABEL_6;
  }

  if (result == a1)
  {
    return result;
  }

  if (result)
  {
LABEL_6:
    v5 = [result thumbnail];
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  [v1 setImage_];

  if (a1)
  {
    [a1 removeListener_];
  }

  result = *&v1[v3];
  if (result)
  {

    return [result addListener_];
  }

  return result;
}

id DOCFolderThumbnailView.init(item:maxThumbnailSize:)(void *a1, double a2, double a3)
{
  swift_getObjectType();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail] = 0;
  v7 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_maxThumbnailSize];
  *v7 = a2;
  v7[1] = a3;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_item] = a1;
  v16.receiver = v3;
  v16.super_class = type metadata accessor for DOCFolderThumbnailView();
  v8 = a1;
  v9 = objc_msgSendSuper2(&v16, sel_initWithImage_, 0);
  [v9 setContentMode_];
  [v9 setAccessibilityIgnoresInvertColors_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249B9FA70;
  v11 = type metadata accessor for UITraitDisplayScale();
  v12 = MEMORY[0x277D74B68];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = type metadata accessor for UITraitUserInterfaceStyle();
  v14 = MEMORY[0x277D74BF0];
  *(v10 + 48) = v13;
  *(v10 + 56) = v14;
  UIView.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v9;
}

void closure #1 in DOCFolderThumbnailView.thumbnailLoaded(_:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *&Strong[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail];
    if (v4)
    {
      v5 = v4 == a2;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = Strong;
      v7 = [v4 thumbnail];
      [v6 setImage_];

      Strong = v7;
    }
  }
}

void @objc DOCRenameThumbnailView.thumbnailLoaded(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = a3;
  swift_unknownObjectRetain_n();
  v10 = a1;

  DOCRunInMainThread(_:)();

  swift_unknownObjectRelease();
}

void DOCFolderThumbnailView.recalculateIcon()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if (one-time initialization token for displayScale != -1)
  {
    swift_once();
  }

  v26 = static UITraitCollection.Traits.displayScale;
  v27 = qword_27EEE9C90;
  v3 = one-time initialization token for userInterfaceStyle;

  if (v3 != -1)
  {
    swift_once();
  }

  v28 = static UITraitCollection.Traits.userInterfaceStyle;
  v29 = qword_27EEE9CA8;

  _StringGuts.grow(_:)(18);

  v25[0] = 0;
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x24C1FAEA0](v4);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v24[0] = 0;
  v24[1] = 0x6172287469617254;
  v24[2] = 0xEF3A65756C615677;

  specialized OptionSet<>.insert(_:)(v25, v26, *(&v26 + 1), v27);

  v6 = *(&v28 + 1);
  v5 = v29;
  v7 = v28;

  specialized OptionSet<>.insert(_:)(v25, v7, v6, v5);

  swift_arrayDestroy();
  v8 = UITraitCollection.doc_hasSpecified(_:)(v24);

  if (v8)
  {
    v9 = [v1 traitCollection];
    [v9 displayScale];
    v11 = v10;

    v12 = [v1 traitCollection];
    v13 = [v12 userInterfaceStyle];

    if (v13 >= 3)
    {
      type metadata accessor for UIUserInterfaceStyle(0);
      v24[3] = v15;
      v24[0] = v13;
      doc_warnUnrecognizedEnumValueEncountered(_:)(v24);
      __swift_destroy_boxed_opaque_existential_0(v24);
      v14 = 1;
    }

    else
    {
      v14 = qword_249BAD7B0[v13];
    }

    v16 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_maxThumbnailSize];
    v17 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_maxThumbnailSize + 8];
    v18 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_item];
    v19 = [v18 isFolder];
    v20 = [objc_allocWithZone(MEMORY[0x277D063C0]) initWithSize:v14 scale:1 style:0 isFolded:v19 isInteractive:v16 isFolder:{v17, v11}];
    v21 = [objc_opt_self() sharedGenerator];
    v22 = [v21 iconForNode:v18 descriptor:v20];

    v23 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail];
    *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1222DOCFolderThumbnailView_thumbnail] = v22;
    swift_unknownObjectRetain();
    DOCFolderThumbnailView.thumbnail.didset(v23);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

uint64_t DOCFolderThumbnailView.__ivar_destroyer()
{

  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall DOCFilenameView.DOCFilenameViewTextFieldUpdateType.applyChanges(on:)(UITextField *on)
{
  if (v1 == 2)
  {
    if ([(UITextField *)on isFirstResponder])
    {

      [(UITextField *)on resignFirstResponder];
    }
  }

  else
  {
    if (v1 == 3)
    {
      v6 = [(UITextField *)on window];
      if (!v6)
      {
        return;
      }

      v9 = v6;
      if (([v6 isKeyWindow] & 1) == 0)
      {
        [v9 makeKeyWindow];
      }
    }

    else
    {
      if (v1 == 4)
      {
        v2 = on;
        v3 = [(UITextField *)on beginningOfDocument];
        v4 = [(UITextField *)v2 endOfDocument];
        v5 = [(UITextField *)v2 textRangeFromPosition:v3 toPosition:v4];
      }

      else
      {
        v8 = v1;
        v2 = on;
        if (([(UITextField *)on isFirstResponder]& 1) != 0)
        {
          return;
        }

        [(UITextField *)v2 becomeFirstResponder];
        if ((v8 & 1) == 0)
        {
          return;
        }

        v3 = [(UITextField *)v2 beginningOfDocument];
        v4 = [(UITextField *)v2 endOfDocument];
        v5 = [(UITextField *)v2 textRangeFromPosition:v3 toPosition:v4];
      }

      v9 = v5;

      [(UITextField *)v2 setSelectedTextRange:v9];
    }
  }
}

BOOL static DOCFilenameView.DOCFilenameViewTextFieldUpdateType.== infix(_:_:)(int a1, int a2)
{
  switch(a1)
  {
    case 2u:
      return a2 == 2;
    case 3u:
      return a2 == 3;
    case 4u:
      return a2 == 4;
  }

  if ((a2 - 2) < 3u)
  {
    return 0;
  }

  return (a2 ^ a1 ^ 1) & 1;
}

void DOCFilenameView.DOCFilenameViewTextFieldUpdateType.hash(into:)(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      v2 = 1;
      goto LABEL_7;
    case 3:
      v2 = 2;
      goto LABEL_7;
    case 4:
      v2 = 3;
LABEL_7:
      MEMORY[0x24C1FCBD0](v2);
      return;
  }

  MEMORY[0x24C1FCBD0](0);
  Hasher._combine(_:)(a2 & 1);
}

Swift::Int DOCFilenameView.DOCFilenameViewTextFieldUpdateType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  switch(a1)
  {
    case 2:
      v2 = 1;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 3;
      break;
    default:
      MEMORY[0x24C1FCBD0](0);
      Hasher._combine(_:)(a1 & 1);
      return Hasher._finalize()();
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  switch(v1)
  {
    case 2:
      v2 = 1;
      break;
    case 3:
      v2 = 2;
      break;
    case 4:
      v2 = 3;
      break;
    default:
      MEMORY[0x24C1FCBD0](0);
      Hasher._combine(_:)(v1 & 1);
      return Hasher._finalize()();
  }

  MEMORY[0x24C1FCBD0](v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType()
{
  v1 = *v0;
  switch(v1)
  {
    case 2:
      v2 = 1;
      goto LABEL_7;
    case 3:
      v2 = 2;
      goto LABEL_7;
    case 4:
      v2 = 3;
LABEL_7:
      MEMORY[0x24C1FCBD0](v2);
      return;
  }

  MEMORY[0x24C1FCBD0](0);
  Hasher._combine(_:)(v1 & 1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  switch(v2)
  {
    case 2:
      v3 = 1;
      break;
    case 3:
      v3 = 2;
      break;
    case 4:
      v3 = 3;
      break;
    default:
      MEMORY[0x24C1FCBD0](0);
      Hasher._combine(_:)(v2 & 1);
      return Hasher._finalize()();
  }

  MEMORY[0x24C1FCBD0](v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance DOCFilenameView.DOCFilenameViewTextFieldUpdateType(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v3 - 2;
  v5 = v3 == 2;
  v6 = v3 == 3;
  v7 = v3 == 4;
  v8 = v3 ^ v2 ^ 1;
  if (v4 < 3)
  {
    v8 = 0;
  }

  if (v2 == 4)
  {
    v8 = v7;
  }

  if (v2 == 3)
  {
    v8 = v6;
  }

  if (v2 == 2)
  {
    return v5;
  }

  else
  {
    return v8;
  }
}

char *DOCFilenameView.init(thumbnailView:maxThumbnailSize:)(void *a1, double a2, double a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textFieldTextStyle;
  v9 = *MEMORY[0x277D76A20];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textFieldTextStyle] = *MEMORY[0x277D76A20];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates] = MEMORY[0x277D84FA0];
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView] = a1;
  type metadata accessor for DOCInsetTextField();
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = v9;
  v92 = a1;
  v13 = [v11 init];
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField] = v13;
  LODWORD(v15) = 1148846080;
  [v13 setContentCompressionResistancePriority:1 forAxis:v15];
  v16 = *&v3[v14];
  v17 = objc_opt_self();
  v18 = *&v3[v8];
  v19 = v16;
  v20 = [v17 preferredFontForTextStyle_];
  [v19 setFont_];

  [*&v3[v14] setAdjustsFontForContentSizeCategory_];
  [*&v3[v14] setBorderStyle_];
  [*&v3[v14] setReturnKeyType_];
  [*&v3[v14] setClearButtonMode_];
  v21 = [*&v3[v14] layer];
  [v21 setCornerCurve_];

  v22 = [*&v3[v14] layer];
  [v22 setCornerRadius_];

  v23 = *&v3[v14];
  v24 = objc_opt_self();
  v25 = v23;
  v26 = [v24 tertiarySystemBackgroundColor];
  [v25 setBackgroundColor_];

  [*&v3[v14] setEnablesReturnKeyAutomatically_];
  v27 = *&v3[v14];
  result = _DocumentManagerBundle();
  if (result)
  {
    v29 = result;
    v30.value._object = 0xEB00000000656C62;
    v94._object = 0x8000000249BE5020;
    v31._countAndFlagsBits = 0x6E207265646C6F46;
    v30.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v31._object = 0xEB00000000656D61;
    v32._countAndFlagsBits = 0;
    v32._object = 0xE000000000000000;
    v94._countAndFlagsBits = 0xD000000000000030;
    v33 = NSLocalizedString(_:tableName:bundle:value:comment:)(v31, v30, v29, v32, v94);

    v34 = MEMORY[0x24C1FAD20](v33._countAndFlagsBits, v33._object);

    [v27 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_249BA1010;
    v36 = *&v3[v10];
    v37 = *&v3[v14];
    *(v35 + 32) = v36;
    *(v35 + 40) = v37;
    v38 = objc_allocWithZone(MEMORY[0x277D75A68]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    v39 = v36;
    v40 = v37;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v42 = [v38 initWithArrangedSubviews_];

    v43 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_contentView;
    *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_contentView] = v42;
    [v42 setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v3[v43] setAlignment_];
    [*&v3[v43] setSpacing_];
    v44 = [*&v3[v14] widthAnchor];
    v45 = [*&v3[v43] widthAnchor];
    v46 = [v44 constraintLessThanOrEqualToAnchor:v45 multiplier:1.0];

    *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_maxTextFieldWidthLandscapeConstraint] = v46;
    v93.receiver = v3;
    v93.super_class = ObjectType;
    v91 = ObjectType;
    v47 = objc_msgSendSuper2(&v93, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v48 = [v47 traitCollection];
    v49 = [v17 preferredFontForTextStyle:*&v47[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textFieldTextStyle] compatibleWithTraitCollection:v48];
    [v49 lineHeight];
    v51 = v50;

    v52 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField;
    v53 = [*&v47[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField] heightAnchor];
    v54 = [v53 constraintGreaterThanOrEqualToConstant_];

    v55 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_contentView;
    [v47 addSubview_];
    v90 = objc_opt_self();
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_249BA5C40;
    v57 = [v47 leadingAnchor];
    v58 = [*&v47[v55] leadingAnchor];
    v59 = [v57 constraintLessThanOrEqualToAnchor:v58 constant:-15.0];

    *(v56 + 32) = v59;
    v60 = [v47 trailingAnchor];
    v61 = [*&v47[v55] trailingAnchor];
    v62 = [v60 constraintGreaterThanOrEqualToAnchor:v61 constant:15.0];

    *(v56 + 40) = v62;
    v63 = [*&v47[v55] centerXAnchor];
    v64 = [v47 centerXAnchor];
    v65 = [v63 constraintEqualToAnchor_];

    *(v56 + 48) = v65;
    v66 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView;
    v67 = [*&v47[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_thumbnailView] widthAnchor];
    v68 = [v67 constraintLessThanOrEqualToConstant_];

    *(v56 + 56) = v68;
    v69 = [*&v47[v52] widthAnchor];
    v70 = [v69 constraintEqualToConstant_];

    v71 = DOCConstraintWithPriority();
    *(v56 + 64) = v71;
    v72 = [v47 topAnchor];
    v73 = [*&v47[v55] topAnchor];
    v74 = [v72 constraintLessThanOrEqualToAnchor:v73 constant:-15.0];

    *(v56 + 72) = v74;
    v75 = [v47 bottomAnchor];
    v76 = [*&v47[v55] bottomAnchor];
    v77 = [v75 constraintGreaterThanOrEqualToAnchor:v76 constant:15.0];

    *(v56 + 80) = v77;
    v78 = [*&v47[v55] centerYAnchor];
    v79 = [v47 centerYAnchor];

    v80 = [v78 constraintEqualToAnchor_];
    *(v56 + 88) = v80;
    v81 = [*&v47[v66] heightAnchor];
    v82 = [v81 constraintLessThanOrEqualToConstant_];

    *(v56 + 96) = v82;
    *(v56 + 104) = v54;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    v83 = v54;
    v84 = Array._bridgeToObjectiveC()().super.isa;

    [v90 activateConstraints_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_249B9A480;
    v86 = type metadata accessor for UITraitPreferredContentSizeCategory();
    v87 = MEMORY[0x277D74DB8];
    *(v85 + 32) = v86;
    *(v85 + 40) = v87;
    v88 = swift_allocObject();
    *(v88 + 16) = v83;
    *(v88 + 24) = v91;
    v89 = v83;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return v47;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id closure #1 in DOCFilenameView.init(thumbnailView:maxThumbnailSize:)(char *a1, uint64_t a2, void *a3)
{
  v5 = [a1 traitCollection];
  v6 = [objc_opt_self() preferredFontForTextStyle:*&a1[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textFieldTextStyle] compatibleWithTraitCollection:v5];
  [v6 lineHeight];
  v8 = v7;

  return [a3 setConstant_];
}

id DOCFilenameView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCFilenameView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textFieldTextStyle) = *MEMORY[0x277D76A20];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates) = MEMORY[0x277D84FA0];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Void __swiftcall DOCFilenameView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_layoutSubviews);
  DOCFilenameView.updateStackLayout()();
  DOCFilenameView.updateTextFieldIfPossible()();
}

id DOCFilenameView.updateStackLayout()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 layoutDirection];

  [v0 bounds];
  v7 = specialized DOCFilenameView.layout(for:)(v3, v4, v5, v6);
  if (v7)
  {
    [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_contentView] setAxis_];
    v8 = v2 == 1;
    v9 = v2 == 1;
    v10 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField];
    if (v8)
    {
      v11 = &selRef_setPaddingRight_;
    }

    else
    {
      v11 = &selRef_setPaddingLeft_;
    }

    [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField] setTextAlignment_];
    LODWORD(v12) = 15.0;
    [v10 *v11];
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_contentView] setAxis_];
    [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField] setTextAlignment_];
  }

  v13 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_maxTextFieldWidthLandscapeConstraint];

  return [v13 setActive_];
}

double DOCFilenameView.updateTextFieldIfPossible()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
  [v2 frame];
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = 0.0;
  v19.size.height = 0.0;
  if (!CGRectEqualToRect(v18, v19))
  {
    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates;
    swift_beginAccess();
    for (i = *(v0 + v4); *(i + 16); i = *(v1 + v4))
    {
      v6 = 0;
      v7 = (i + 56);
      v8 = 1 << *(i + 32);
      v9 = (v8 + 63) >> 6;
      while (1)
      {
        v11 = *v7++;
        v10 = v11;
        if (v11)
        {
          break;
        }

        v6 -= 64;
        if (!--v9)
        {
          goto LABEL_11;
        }
      }

      v8 = __clz(__rbit64(v10)) - v6;
LABEL_11:
      v12 = specialized Set._Variant.remove(at:)(v8, *(i + 36));
      swift_endAccess();
      if (v12 == 2)
      {
        if ([v2 isFirstResponder])
        {
          [v2 resignFirstResponder];
        }
      }

      else if (v12 == 3)
      {
        v16 = [v2 window];
        if (v16)
        {
          v17 = v16;
          if (([v16 isKeyWindow] & 1) == 0)
          {
            [v17 makeKeyWindow];
          }
        }
      }

      else if (v12 == 4 || ([v2 isFirstResponder] & 1) == 0 && (objc_msgSend(v2, sel_becomeFirstResponder), (v12 & 1) != 0))
      {
        v13 = [v2 beginningOfDocument];
        v14 = [v2 endOfDocument];
        v15 = [v2 textRangeFromPosition:v13 toPosition:v14];

        [v2 setSelectedTextRange_];
      }

      swift_beginAccess();
    }

    swift_endAccess();
  }

  return result;
}

Swift::Void __swiftcall DOCFilenameView.didMoveToWindow()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_didMoveToWindow);
  DOCFilenameView.updateTextFieldIfPossible()();
}

void @objc DOCSafeAreaView.safeAreaInsetsDidChange()(void *a1, uint64_t a2, const char **a3, void (*a4)(id))
{
  v9.receiver = a1;
  v9.super_class = swift_getObjectType();
  v6 = *a3;
  v7 = v9.receiver;
  v8 = objc_msgSendSuper2(&v9, v6);
  a4(v8);
}

Swift::Void __swiftcall DOCFilenameView.focusTextField(selectContent:)(Swift::Bool selectContent)
{
  v3 = selectContent;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates;
  swift_beginAccess();
  v5 = *(v1 + v4);
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](2);
  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != 3)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v1 + v4);
    v11 = v32;
    *(v1 + v4) = 0x8000000000000000;
    v12 = *(v32 + 16);
    if (*(v32 + 24) <= v12)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        specialized _NativeSet.resize(capacity:)(v12 + 1);
      }

      else
      {
        specialized _NativeSet.copyAndResize(capacity:)(v12 + 1);
      }

      v11 = v32;
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](2);
      v13 = Hasher._finalize()();
      v14 = -1 << *(v32 + 32);
      v8 = v13 & ~v14;
      if ((*(v32 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
      {
        v15 = ~v14;
        while (*(*(v32 + 48) + v8) != 3)
        {
          v8 = (v8 + 1) & v15;
          if (((*(v32 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_34;
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v11 = v32;
    }

LABEL_15:
    *(v11 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v8;
    *(*(v11 + 48) + v8) = 3;
    v16 = *(v11 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      __break(1u);
      goto LABEL_39;
    }

    *(v11 + 16) = v18;
    *(v1 + v4) = v11;
  }

  swift_endAccess();
  LOBYTE(v8) = v3;
  swift_beginAccess();
  v19 = *(v1 + v4);
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  Hasher._combine(_:)(v3);
  v20 = Hasher._finalize()();
  v21 = -1 << *(v19 + 32);
  v11 = v20 & ~v21;
  if ((*(v19 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v22 = ~v21;
    do
    {
      v23 = *(*(v19 + 48) + v11);
      if ((v23 - 2) >= 3 && ((v23 ^ v3) & 1) == 0)
      {
        goto LABEL_37;
      }

      v11 = (v11 + 1) & v22;
    }

    while (((*(v19 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *(v1 + v4);
  v2 = v33;
  *(v1 + v4) = 0x8000000000000000;
  v25 = *(v33 + 16);
  if (*(v33 + 24) > v25)
  {
    if ((v24 & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v2 = v33;
    }

    goto LABEL_35;
  }

  if (v24)
  {
    specialized _NativeSet.resize(capacity:)(v25 + 1);
  }

  else
  {
    specialized _NativeSet.copyAndResize(capacity:)(v25 + 1);
  }

  v2 = v33;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  Hasher._combine(_:)(v3);
  v26 = Hasher._finalize()();
  v27 = -1 << *(v33 + 32);
  v11 = v26 & ~v27;
  if ((*(v33 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v28 = ~v27;
    while (1)
    {
      v29 = *(*(v33 + 48) + v11);
      if ((v29 - 2) >= 3 && ((v29 ^ v3) & 1) == 0)
      {
        break;
      }

      v11 = (v11 + 1) & v28;
      if (((*(v33 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_35;
      }
    }

LABEL_34:
    ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_35:
  *(v2 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v11;
  *(*(v2 + 48) + v11) = v8;
  v30 = *(v2 + 16);
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v17)
  {
    *(v2 + 16) = v31;
    *(v1 + v4) = v2;
LABEL_37:
    swift_endAccess();
    DOCFilenameView.updateTextFieldIfPossible()();
    return;
  }

LABEL_39:
  __break(1u);
}

Swift::Void __swiftcall DOCFilenameView.stopFocusingTextField()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](1);
  v3 = Hasher._finalize()();
  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (*(*(v2 + 48) + v5) != 2)
    {
      v5 = (v5 + 1) & v6;
      if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_17;
  }

LABEL_5:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v1);
  v8 = v16;
  *(v0 + v1) = 0x8000000000000000;
  v9 = *(v16 + 16);
  if (*(v16 + 24) <= v9)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.resize(capacity:)(v9 + 1);
    }

    else
    {
      specialized _NativeSet.copyAndResize(capacity:)(v9 + 1);
    }

    v8 = v16;
    Hasher.init(_seed:)();
    MEMORY[0x24C1FCBD0](1);
    v10 = Hasher._finalize()();
    v11 = -1 << *(v16 + 32);
    v5 = v10 & ~v11;
    if ((*(v16 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v12 = ~v11;
      while (*(*(v16 + 48) + v5) != 2)
      {
        v5 = (v5 + 1) & v12;
        if (((*(v16 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_19;
    }
  }

  else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v8 = v16;
  }

LABEL_15:
  *(v8 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v5;
  *(*(v8 + 48) + v5) = 2;
  v13 = *(v8 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v8 + 16) = v15;
    *(v0 + v1) = v8;
LABEL_17:
    swift_endAccess();
    DOCFilenameView.updateTextFieldIfPossible()();
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Void __swiftcall DOCFilenameView.selectContent()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_postLayoutTextFieldUpdates;
  swift_beginAccess();
  v2 = *(v0 + v1);
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](3);
  v3 = Hasher._finalize()();
  v4 = -1 << *(v2 + 32);
  v5 = v3 & ~v4;
  if ((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (*(*(v2 + 48) + v5) != 4)
    {
      v5 = (v5 + 1) & v6;
      if (((*(v2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_17;
  }

LABEL_5:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v1);
  v8 = v16;
  *(v0 + v1) = 0x8000000000000000;
  v9 = *(v16 + 16);
  if (*(v16 + 24) <= v9)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeSet.resize(capacity:)(v9 + 1);
    }

    else
    {
      specialized _NativeSet.copyAndResize(capacity:)(v9 + 1);
    }

    v8 = v16;
    Hasher.init(_seed:)();
    MEMORY[0x24C1FCBD0](3);
    v10 = Hasher._finalize()();
    v11 = -1 << *(v16 + 32);
    v5 = v10 & ~v11;
    if ((*(v16 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
    {
      v12 = ~v11;
      while (*(*(v16 + 48) + v5) != 4)
      {
        v5 = (v5 + 1) & v12;
        if (((*(v16 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_19;
    }
  }

  else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v8 = v16;
  }

LABEL_15:
  *(v8 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v5;
  *(*(v8 + 48) + v5) = 4;
  v13 = *(v8 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v8 + 16) = v15;
    *(v0 + v1) = v8;
LABEL_17:
    swift_endAccess();
    DOCFilenameView.updateTextFieldIfPossible()();
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

id DOCFilenameView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCFilenameViewController.dismissing.didset()
{
  result = [v0 view];
  if (result)
  {
    v2 = result;
    type metadata accessor for DOCSafeAreaView();
    v3 = swift_dynamicCastClassUnconditional();
    v4 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing;
    if (v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing])
    {
      v5 = 3;
    }

    else
    {
      v5 = v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState];
    }

    *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_visibilityState) = v5;

    v6 = *(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
    v7 = (v0[v4] & 1) == 0;

    return [v6 setUserInteractionEnabled_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCFilenameViewController.visibilityState.didset()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    return;
  }

  v2 = v1;
  type metadata accessor for DOCSafeAreaView();
  v3 = swift_dynamicCastClassUnconditional();
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing))
  {
    v4 = 3;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState);
  }

  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1215DOCSafeAreaView_visibilityState) = v4;

  (*((*MEMORY[0x277D85000] & *v0) + 0x110))();
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState);
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView) setAlpha_];
      v6 = [v0 navigationController];
      if (!v6)
      {
        return;
      }

      v8 = v6;
      [v6 setNavigationBarHidden:0 animated:1];
    }

    else
    {
      [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView) setAlpha_];
      v7 = [v0 navigationController];
      if (!v7)
      {
        return;
      }

      v8 = v7;
      [v7 setNavigationBarHidden:1 animated:1];
    }
  }
}

void DOCFilenameViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

Swift::Bool __swiftcall DOCFilenameViewController.present(from:animated:)(UIViewController *from, Swift::Bool animated)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D757A0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_249BA0290;
  *(v6 + 32) = v2;
  type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for UIViewController, 0x277D75D28);
  v7 = v2;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v5 setViewControllers:isa animated:0];

  v9 = v5;
  [v9 setModalPresentationStyle_];
  v10 = *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy];
  v11 = type metadata accessor for DOCFilenameTransitioningDelegate();
  v12 = objc_allocWithZone(v11);
  *&v12[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_AC938FE9F5E323A5ECA7FB68EBA24A1232DOCFilenameTransitioningDelegate_transitionProxy] = v10;
  v18.receiver = v12;
  v18.super_class = v11;
  swift_unknownObjectRetain();
  v13 = [(UIViewController *)&v18 init];
  [v9 setTransitioningDelegate_];

  objc_setAssociatedObject(v9, "DOCFilenameTransitioningDelegate", v13, 1);
  v14 = [v7 view];
  if (v14)
  {
    v15 = v14;
    [v14 layoutIfNeeded];

    v16 = [v9 navigationBar];
    [v16 setTranslucent_];

    [(UIViewController *)from presentViewController:v9 animated:animated completion:0];
    LOBYTE(v14) = 1;
  }

  else
  {
    __break(1u);
  }

  return v14;
}

Swift::Void __swiftcall DOCFilenameViewController.loadView()()
{
  v1 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView];
  v2 = objc_allocWithZone(type metadata accessor for DOCSafeAreaView());
  v3 = DOCSafeAreaView.init(safeAreaView:)(v1);
  [v0 setView_];
}

Swift::Void __swiftcall DOCFilenameViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCFilenameViewController();
  objc_msgSendSuper2(&v3, sel_viewWillAppear_, a1);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear) = [objc_opt_self() isOnScreen];
  (*((*MEMORY[0x277D85000] & *v1) + 0x118))(2);
}

Swift::Void __swiftcall DOCFilenameViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DOCFilenameViewController();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing) = 0;
  DOCFilenameViewController.dismissing.didset();
}

Swift::Void __swiftcall DOCFilenameViewController.cancelViewController()()
{
  if ((v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] & 1) == 0)
  {
    v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] = 1;
    v1 = v0;
    DOCFilenameViewController.dismissing.didset();
    DOCFilenameView.stopFocusingTextField()();
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v5[4] = partial apply for closure #1 in DOCFilenameViewController.cancelViewController();
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v5[3] = &block_descriptor_77;
    v3 = _Block_copy(v5);
    v4 = v1;

    [v4 dismissViewControllerAnimated:1 completion:v3];
    _Block_release(v3);
  }
}

uint64_t DOCFilenameViewController.keyCommands.getter()
{
  v0 = [objc_opt_self() dismissingKeyCommandsWithAction_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand, 0x277D75650);
  v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v1;
}

void DOCFilenameViewController.editingDidEnd(_:)()
{
  v2 = type metadata accessor for CharacterSet();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [*(*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView) + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) text];
  if (!v8)
  {
    return;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12 == 0xE000000000000000;
  }

  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v14 = v0;
    v15._countAndFlagsBits = 46;
    v15._object = 0xE100000000000000;
    if (String.hasPrefix(_:)(v15))
    {
      lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
      v16 = swift_allocError();
      *v17 = 2;
    }

    else
    {
      CharacterSet.init(charactersIn:)();
      v50[4] = v10;
      v50[5] = v12;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol.rangeOfCharacter(from:options:range:)();
      if (v18)
      {
        (*(v3 + 8))(v7, v2);
        DOCFilenameView.stopFocusingTextField()();
        v19 = swift_allocObject();
        *(v19 + 16) = v0;
        v20 = *((*MEMORY[0x277D85000] & *v0) + 0xE8);
        v21 = v0;
        v20(v10, v12, 0, partial apply for closure #1 in DOCFilenameViewController.editingDidEnd(_:), v19);

        return;
      }

      lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
      v16 = swift_allocError();
      *v22 = 3;
      (*(v3 + 8))(v7, v2);
    }

    swift_getErrorValue();
    v23 = Error.localizedDescription.getter();
    v25 = v24;
    v26 = MEMORY[0x24C1FAD20]();
    v27 = [objc_opt_self() alertControllerWithTitle:0 message:v26 preferredStyle:1];

    v28 = v27;
    v29 = _DocumentManagerBundle();
    if (!v29)
    {
      goto LABEL_33;
    }

    v30 = v29;
    v52._object = 0xE200000000000000;
    v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v31.value._object = 0xEB00000000656C62;
    v32._countAndFlagsBits = 19279;
    v32._object = 0xE200000000000000;
    v33._countAndFlagsBits = 0;
    v33._object = 0xE000000000000000;
    v52._countAndFlagsBits = 19279;
    v34 = NSLocalizedString(_:tableName:bundle:value:comment:)(v32, v31, v30, v33, v52);

    v35 = MEMORY[0x24C1FAD20](v34._countAndFlagsBits, v34._object);

    v36 = [objc_opt_self() actionWithTitle:v35 style:0 handler:0];

    [v28 addAction_];
    v37 = [v28 actions];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAlertAction, 0x277D750F8);
    v38 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
    if (v38 >> 62)
    {
      v40 = __CocoaSet.count.getter();
      v41 = v14;
      if (v40)
      {
LABEL_18:
        v42 = __OFSUB__(v40, 1);
        v43 = v40 - 1;
        if (!v42)
        {
          if ((v39 & 0xC000000000000001) == 0)
          {
            if ((v43 & 0x8000000000000000) != 0)
            {
              __break(1u);
              goto LABEL_31;
            }

            if (v43 < *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v44 = *(v39 + 8 * v43 + 32);
              goto LABEL_23;
            }

            __break(1u);
LABEL_33:
            __break(1u);
            return;
          }

LABEL_29:
          v44 = MEMORY[0x24C1FC540](v43, v39);
LABEL_23:
          v45 = v44;
          v1 = MEMORY[0x277D837D0];

          [v28 setPreferredAction_];

          [v41 presentViewController:v28 animated:1 completion:0];
          if (one-time initialization token for UI == -1)
          {
LABEL_24:
            v46 = static DOCLog.UI;
            v47 = static os_log_type_t.debug.getter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v48 = swift_allocObject();
            *(v48 + 16) = xmmword_249B9FA70;
            *(v48 + 56) = v1;
            v49 = lazy protocol witness table accessor for type String and conformance String();
            *(v48 + 32) = 0xD000000000000011;
            *(v48 + 40) = 0x8000000249BE5100;
            *(v48 + 96) = v1;
            *(v48 + 104) = v49;
            *(v48 + 64) = v49;
            *(v48 + 72) = v23;
            *(v48 + 80) = v25;
            os_log(_:dso:log:type:_:)("%@: prompting user with message: %@", 35, 2, &dword_2493AC000, v46, v47, v48);

            return;
          }

LABEL_31:
          swift_once();
          goto LABEL_24;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      v40 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v41 = v14;
      if (v40)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_28;
  }
}

double closure #1 in DOCFilenameViewController.editingDidEnd(_:)(char a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a2;
  DOCRunInMainThread(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in DOCFilenameViewController.editingDidEnd(_:)(uint64_t result, void *a2)
{
  if ((result & 1) == 0)
  {
    return (*((*MEMORY[0x277D85000] & *a2) + 0x118))(0);
  }

  if ((*(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing) & 1) == 0)
  {
    *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing) = 1;
    DOCFilenameViewController.dismissing.didset();

    return [a2 dismissViewControllerAnimated:1 completion:0];
  }

  return result;
}

void DOCFilenameViewController.editingDidChange(_:)()
{
  v1 = [*(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) text];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5 == 0xE000000000000000;
    }

    if (v6)
    {
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v7 & 1) == 0)
      {
        v8 = [v0 navigationItem];
        v10 = [v8 rightBarButtonItem];

        if (!v10)
        {
          return;
        }

        [v10 setEnabled_];
        goto LABEL_12;
      }
    }
  }

  v9 = [v0 navigationItem];
  v10 = [v9 rightBarButtonItem];

  if (!v10)
  {
    return;
  }

  [v10 setEnabled_];
LABEL_12:
}

uint64_t @objc DOCFilenameViewController.editingDidEnd(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v6 = a1;
  _bridgeAnyObjectToAny(_:)();
  v7 = swift_unknownObjectRelease();
  a4(v7);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

Swift::Void __swiftcall DOCFilenameViewController.viewDidMove(to:shouldAppearOrDisappear:)(UIWindow_optional *to, Swift::Bool shouldAppearOrDisappear)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DOCFilenameViewController();
  v5 = [(UIWindow_optional *)&v6 viewDidMoveToWindow:to shouldAppearOrDisappear:shouldAppearOrDisappear];
  if (to)
  {
    (*((*MEMORY[0x277D85000] & *v2) + 0x110))(v5);
  }
}

Swift::Void __swiftcall DOCFilenameViewController.updateAppearance()()
{
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v1;
  type metadata accessor for DOCSafeAreaView();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = v3;
  if (specialized Sequence<>.contains(_:)(v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState], &outlined read-only object #0 of DOCFilenameViewController.updateAppearance()))
  {
    [v4 setEffect_];
LABEL_14:

LABEL_15:
    v13 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView];
    v14 = *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField];
    v15 = [v13 tintColor];
    if (v15)
    {
      v16 = v15;
      v17 = [objc_opt_self() _doc_safeTintColor_];

      [v14 setTintColor_];
      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  v5 = [v0 traitCollection];
  v6 = [v5 userInterfaceStyle];

  if (!v6)
  {
    goto LABEL_14;
  }

  if (v6 != 1)
  {
    if (v6 != 2)
    {
      v18 = [v0 traitCollection];
      v19 = [v18 userInterfaceStyle];

      type metadata accessor for UIUserInterfaceStyle(0);
      v21[3] = v20;
      v21[0] = v19;
      doc_warnUnrecognizedEnumValueEncountered(_:)(v21);

      __swift_destroy_boxed_opaque_existential_0(v21);
      goto LABEL_15;
    }

    v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.125 alpha:1.0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_249BA37E0;
    *(v8 + 32) = [objc_opt_self() colorEffectSaturate_];
    v9 = [objc_opt_self() effectWithBlurRadius_];
    if (!v9)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    *(v8 + 40) = v9;
    v10 = [objc_opt_self() effectCompositingColor:v7 withMode:5 alpha:1.0];
    if (v10)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  v7 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.92 alpha:1.0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_249BA37E0;
  *(v8 + 32) = [objc_opt_self() colorEffectSaturate_];
  v11 = [objc_opt_self() effectWithBlurRadius_];
  if (!v11)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  *(v8 + 40) = v11;
  v10 = [objc_opt_self() effectCompositingColor:v7 withMode:1 alpha:1.0];
  if (v10)
  {
LABEL_13:
    *(v8 + 48) = v10;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIVisualEffect, 0x277D75D58);
    v2 = v2;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v4 setBackgroundEffects_];

    goto LABEL_14;
  }

LABEL_21:
  __break(1u);
}

void DOCFilenameViewController.effectiveAppearanceDidChange(_:)(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCFilenameViewController();
  objc_msgSendSuper2(&v6, sel_effectiveAppearanceDidChange_, a1);
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v3 = [v1 viewIfLoaded];
    if (v3)
    {
      v4 = v3;
      v5 = [a1 backgroundColor];
      [v4 setBackgroundColor_];
    }
  }
}

Swift::Void __swiftcall DOCFilenameViewController.focusTextField(forceSelectContent:)(Swift::Bool_optional forceSelectContent)
{
  if (forceSelectContent.value == 2)
  {
    value = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_contentMustBeSelected);
  }

  else
  {
    value = forceSelectContent.value;
  }

  DOCFilenameView.focusTextField(selectContent:)(value);
}

Swift::Void __swiftcall DOCFilenameViewController.selectContentIfNeeded()()
{
  if ((*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_contentMustBeSelected) & 1) != 0 || ([objc_opt_self() currentDevice], GSEventIsHardwareKeyboardAttached()))
  {
    DOCFilenameView.selectContent()();
  }
}

id DOCFilenameViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x24C1FAD20](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void (*DOCRenameViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCRenameViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.gestureDelegate.modify;
}

objc_class *DOCRenameViewController.init(renamingItem:transitionProxy:initialThumbnail:)(void *a1, uint64_t a2, void *a3)
{
  v4 = specialized DOCRenameViewController.init(renamingItem:transitionProxy:initialThumbnail:)(a1, a2, a3);

  swift_unknownObjectRelease();
  return v4;
}

objc_class *DOCRenameViewController.init(renamingURL:name:transitionProxy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v78 = a4;
  v75 = a2;
  v76 = a3;
  ObjectType = swift_getObjectType();
  v81 = type metadata accessor for URL();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v7);
  v74 = &v71[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v73 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMR);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v71[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v18 - 8, v19);
  countAndFlagsBits = &v71[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v71[-v23];
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v71[-v27];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCRenameViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v82 = a1;
  URL.contentType.getter(v28);
  static UTType.folder.getter();
  (*(v10 + 56))(v24, 0, 1, v9);
  v29 = *(v14 + 56);
  outlined init with copy of UTType?(v28, v17);
  outlined init with copy of UTType?(v24, &v17[v29]);
  v30 = *(v10 + 48);
  if (v30(v17, 1, v9) == 1)
  {
    outlined destroy of CharacterSet?(v24, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined destroy of CharacterSet?(v28, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    if (v30(&v17[v29], 1, v9) == 1)
    {
      outlined destroy of CharacterSet?(v17, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  outlined init with copy of UTType?(v17, countAndFlagsBits);
  if (v30(&v17[v29], 1, v9) == 1)
  {
    outlined destroy of CharacterSet?(v24, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    outlined destroy of CharacterSet?(v28, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    (*(v10 + 8))(countAndFlagsBits, v9);
LABEL_6:
    outlined destroy of CharacterSet?(v17, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMd, &_s22UniformTypeIdentifiers6UTTypeVSg_ADtMR);
    goto LABEL_7;
  }

  v41 = &v17[v29];
  v42 = v73;
  (*(v10 + 32))(v73, v41, v9);
  lazy protocol witness table accessor for type UTType and conformance UTType(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85590]);
  v43 = countAndFlagsBits;
  v72 = dispatch thunk of static Equatable.== infix(_:_:)();
  v44 = *(v10 + 8);
  v44(v42, v9);
  outlined destroy of CharacterSet?(v24, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  outlined destroy of CharacterSet?(v28, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  v44(v43, v9);
  outlined destroy of CharacterSet?(v17, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  if (v72)
  {
LABEL_10:
    result = _DocumentManagerBundle();
    if (result)
    {
      v32 = result;
      v70 = 0x8000000249BE51A0;
      v33 = 0x4620656D616E6552;
      v34 = 0xED00007265646C6FLL;
      v35 = 0x617A696C61636F4CLL;
      v36 = 0xEB00000000656C62;
      v38.super.isa = v32;
      v39 = 0;
      v40 = 0xE000000000000000;
      v37 = 0xD000000000000033;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

LABEL_7:
  result = _DocumentManagerBundle();
  if (result)
  {
    v32 = result;
    v70 = 0x8000000249BE5160;
    v33 = 0x4420656D616E6552;
    v34 = 0xEF746E656D75636FLL;
    v35 = 0x617A696C61636F4CLL;
    v36 = 0xEB00000000656C62;
    v37 = 0xD000000000000035;
    v38.super.isa = v32;
    v39 = 0;
    v40 = 0xE000000000000000;
LABEL_12:
    v45 = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v33, *&v35, v38, *&v39, *&v37);
    countAndFlagsBits = v45._countAndFlagsBits;

    v46 = v79;
    v47 = v74;
    (*(v79 + 16))(v74, v82, v81);
    v48 = objc_allocWithZone(type metadata accessor for DOCThumbnailFittingImageView(0));
    v49 = DOCThumbnailFittingImageView.init(size:url:)(v47, 186.0, 186.0);
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_keyboardWasOnScreenInViewWillAppear] = 2;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_dismissing] = 0;
    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_visibilityState] = 0;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_transitionProxy] = v78;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_item] = 0;
    v50 = objc_allocWithZone(type metadata accessor for DOCFilenameView());
    swift_unknownObjectRetain();
    v51 = v49;
    v52 = DOCFilenameView.init(thumbnailView:maxThumbnailSize:)(v51, 186.0, 186.0);
    v53 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
    *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] = v52;
    [v52 setTranslatesAutoresizingMaskIntoConstraints_];
    [*&v5[v53] setAlpha_];
    v54 = *(*&v5[v53] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
    v55 = MEMORY[0x24C1FAD20](v75, v76);

    [v54 setText_];

    v5[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_contentMustBeSelected] = 0;
    v56 = type metadata accessor for DOCFilenameViewController();
    v84.receiver = v5;
    v84.super_class = v56;
    v57 = objc_msgSendSuper2(&v84, sel_initWithNibName_bundle_, 0, 0);
    v58 = MEMORY[0x24C1FAD20](countAndFlagsBits, v45._object);

    [v57 setTitle_];

    v59 = OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView;
    [*(*&v57[OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_filenameView] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField) addTarget:v57 action:sel_editingDidEnd_ forControlEvents:0x80000];
    v60 = *(*&v57[v59] + OBJC_IVAR____TtC26DocumentManagerExecutables15DOCFilenameView_textField);
    [v60 addTarget:v57 action:sel_editingDidChange_ forControlEvents:0x20000];

    v61 = [v57 navigationItem];
    v83[3] = swift_getObjectType();
    v83[0] = v57;
    v62 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v63 = v57;
    v64 = _bridgeAnythingToObjectiveC<A>(_:)();
    __swift_destroy_boxed_opaque_existential_0(v83);
    v65 = [v62 initWithBarButtonSystemItem:0 target:v64 action:sel_editingDidEnd_];
    swift_unknownObjectRelease();
    [v61 setRightBarButtonItem_];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
    v66 = static UIBarButtonItem.doc_adaptableDismissButton(_:target:action:)(1, v63, sel_cancelViewController);
    [v61 setLeftBarButtonItem_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_249B9A480;
    v68 = type metadata accessor for UITraitUserInterfaceStyle();
    v69 = MEMORY[0x277D74BF0];
    *(v67 + 32) = v68;
    *(v67 + 40) = v69;
    UIViewController.registerForTraitChanges<A>(_:handler:)();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();

    (*(v46 + 8))(v82, v81);
    return v63;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void DOCRenameViewController.didChooseName(_:completion:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t), uint64_t a5)
{
  if ((*((*MEMORY[0x277D85000] & *v5) + 0x130))())
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(v5, a1, a2, ObjectType, v12);
    a4(1);

    swift_unknownObjectRelease();
    return;
  }

  v14 = *(v5 + OBJC_IVAR____TtC26DocumentManagerExecutables25DOCFilenameViewController_item);
  if (!v14)
  {
    __break(1u);
    return;
  }

  v70 = v14;
  v15 = [v70 displayName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  if (v16 == a1 && v18 == a2)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      v22[2] = a4;
      v22[3] = a5;
      v22[4] = v21;
      v22[5] = v70;
      v23 = objc_opt_self();
      v24 = v70;

      v68 = [v23 defaultManager];
      v71 = swift_allocObject();
      v71[2] = 0;
      v25 = objc_opt_self();
      v26 = v24;
      v27 = [v25 shared];
      v28 = objc_allocWithZone(type metadata accessor for DOCRenameOperation());
      v29 = v26;
      v67 = v29;
      if (a3)
      {
        outlined copy of DOCRenameOperation.NameType(a1, a2);
        v30 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v29, a1, a2, 0, 1, v27, v28);

        v31 = swift_allocObject();
        *(v31 + 16) = a1;
        *(v31 + 24) = a2;
        *(v31 + 32) = v68;
        *(v31 + 40) = v71;
        *(v31 + 48) = v5;
        *(v31 + 56) = 1;
        *(v31 + 64) = partial apply for closure #1 in DOCRenameViewController.didChooseName(_:completion:);
        *(v31 + 72) = v22;
        *(v31 + 80) = 0;
        *(v31 + 88) = 0;
        v32 = *((*MEMORY[0x277D85000] & *v30) + 0x190);
        outlined copy of DOCRenameOperation.NameType(a1, a2);
        v33 = v30;
        v34 = v68;

        v35 = v5;

        v32(_sSo13FPItemManagerC08DocumentB11ExecutablesE13performRename4node11newFileName22shouldDonateAppIntents15alertPresenting25requiresAlertPresentation10completion13finishedBlockySo7DOCNode_p_SSSbSo16UIViewControllerCSbys5Error_pSgcySoAL_pSg_APtcSgtFyAC18DOCRenameOperationC_AQtcfU_TA_0, v31);
        v36 = *((*MEMORY[0x277D85000] & *v30) + 0x178);

        v36(partial apply for closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v71);
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.Rename);
        v69 = v33;
        v38 = Logger.logObject.getter();
        v39 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v38, v39))
        {
          v40 = v34;
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v72 = v43;
          *v41 = 136315394;
          *(v41 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007ALL, 0x8000000249BD25A0, &v72);
          *(v41 + 12) = 2112;
          *(v41 + 14) = v69;
          *v42 = v33;
          v44 = v69;
          _os_log_impl(&dword_2493AC000, v38, v39, "%s: Adding Rename Operation %@", v41, 0x16u);
          outlined destroy of CharacterSet?(v42, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x24C1FE850](v42, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x24C1FE850](v43, -1, -1);
          v45 = v41;
          v34 = v40;
          MEMORY[0x24C1FE850](v45, -1, -1);
        }

        (*((*MEMORY[0x277D85000] & *v69) + 0x1B8))();
      }

      else
      {
        outlined copy of DOCRenameOperation.NameType(a1, a2);
        v47 = specialized DOCRenameOperation.init(node:newName:shouldDonateAppIntents:undoManager:)(v29, a1, a2, 1, 1, v27, v28);

        v48 = swift_allocObject();
        *(v48 + 16) = v68;
        *(v48 + 24) = v71;
        *(v48 + 32) = a1;
        *(v48 + 40) = a2;
        *(v48 + 48) = v5;
        *(v48 + 56) = 1;
        *(v48 + 64) = partial apply for closure #1 in DOCRenameViewController.didChooseName(_:completion:);
        *(v48 + 72) = v22;
        *(v48 + 80) = 0;
        *(v48 + 88) = 0;
        v49 = MEMORY[0x277D85000];
        v50 = *((*MEMORY[0x277D85000] & *v47) + 0x190);
        outlined copy of DOCRenameOperation.NameType(a1, a2);
        v51 = v5;

        v52 = v68;

        v50(_sSo13FPItemManagerC08DocumentB11ExecutablesE13performRename4node14newDisplayName22shouldDonateAppIntents15alertPresenting25requiresAlertPresentation10completion13finishedBlockySo7DOCNode_p_SSSbSo16UIViewControllerCSbys5Error_pSgcySoAL_pSg_APtcSgtFyAC18DOCRenameOperationC_AQtcfU_TA_0, v48);
        v53 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v54 = *((*v49 & *v47) + 0x148);

        v54(partial apply for closure #2 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v53);

        v55 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v56 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v57 = swift_allocObject();
        *(v57 + 16) = v55;
        *(v57 + 24) = v56;
        v58 = *((*v49 & *v47) + 0x160);

        v58(partial apply for closure #3 in FPItemManager.performRename(node:newDisplayName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v57);

        v59 = *((*v49 & *v47) + 0x178);

        v59(partial apply for closure #2 in FPItemManager.performRename(node:newFileName:shouldDonateAppIntents:alertPresenting:requiresAlertPresentation:completion:finishedBlock:), v71);
        if (one-time initialization token for Rename != -1)
        {
          swift_once();
        }

        v60 = type metadata accessor for Logger();
        __swift_project_value_buffer(v60, static Logger.Rename);
        v69 = v47;
        v61 = Logger.logObject.getter();
        v62 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v72 = v65;
          *v63 = 136315394;
          *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000007DLL, 0x8000000249BD2620, &v72);
          *(v63 + 12) = 2112;
          *(v63 + 14) = v69;
          *v64 = v47;
          v66 = v69;
          _os_log_impl(&dword_2493AC000, v61, v62, "%s: Adding Rename Operation %@", v63, 0x16u);
          outlined destroy of CharacterSet?(v64, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
          MEMORY[0x24C1FE850](v64, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v65);
          MEMORY[0x24C1FE850](v65, -1, -1);
          MEMORY[0x24C1FE850](v63, -1, -1);
        }

        (*((*MEMORY[0x277D85000] & *v69) + 0x1B8))();
      }

      v46 = v69;
      goto LABEL_25;
    }
  }

  a4(1);
  v46 = v70;
LABEL_25:
}