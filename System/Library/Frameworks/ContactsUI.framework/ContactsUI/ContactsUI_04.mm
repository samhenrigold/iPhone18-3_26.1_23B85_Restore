uint64_t sub_199AF27E8(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_199AF4CC0(a1);
  (*(*(*(v2 + qword_1EAF86F28) - 8) + 8))(a1);
  return v5;
}

void sub_199AF2868()
{
  v1 = v0;
  v2 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0, 0x1E69DD258);
  if (!v2)
  {
    return;
  }

  v3 = [v0 window];
  if (!v3)
  {
    if (qword_1EAF71C40 != -1)
    {
      swift_once();
    }

    v9 = sub_199DF804C();
    __swift_project_value_buffer(v9, qword_1EAF86F10);
    oslog = sub_199DF802C();
    v10 = sub_199DFA2FC();
    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_46;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_199A75000, oslog, v10, "Not yet attached to window, will wait before installing scroll observer.", v11, 2u);
    v12 = v11;
LABEL_16:
    MEMORY[0x19A8FA1A0](v12, -1, -1);
LABEL_46:

    return;
  }

  v4 = sub_199AF3818();
  if (!v4)
  {
    if (qword_1EAF71C40 != -1)
    {
      swift_once();
    }

    v13 = sub_199DF804C();
    __swift_project_value_buffer(v13, qword_1EAF86F10);
    v14 = v0;
    oslog = sub_199DF802C();
    v15 = sub_199DFA31C();

    if (!os_log_type_enabled(oslog, v15))
    {
      goto LABEL_46;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    *(v16 + 4) = v14;
    *v17 = v14;
    *(v16 + 12) = 2112;
    v18 = [v14 superview];
    *(v16 + 14) = v18;
    v17[1] = v18;
    _os_log_impl(&dword_199A75000, oslog, v15, "Could not find parent navigation controller for palette: %@ superview: %@", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73A90, &unk_199E3A0B0);
    swift_arrayDestroy();
    MEMORY[0x19A8FA1A0](v17, -1, -1);
    v12 = v16;
    goto LABEL_16;
  }

  v5 = v4;
  v6 = [v4 topViewController];
  oslog = v6;
  if (v6)
  {
    v7 = [v6 _contentOrObservableScrollViewForEdge:1];
    v8 = sub_199AF3728(&unk_1EAF73C11, _s14ScrollObserverCMa);
    if (!v8)
    {
      if (!v7)
      {
        goto LABEL_41;
      }

      goto LABEL_21;
    }
  }

  else
  {
    v8 = sub_199AF3728(&unk_1EAF73C11, _s14ScrollObserverCMa);
    v7 = 0;
    if (!v8)
    {
      goto LABEL_41;
    }
  }

  v19 = v8;
  Strong = swift_unknownObjectWeakLoadStrong();

  if (!v7)
  {
    if (Strong)
    {

      v7 = 0;
      v23 = 1;
      goto LABEL_24;
    }

    v7 = 0;
LABEL_41:
    if (qword_1EAF71C40 != -1)
    {
      swift_once();
    }

    v50 = sub_199DF804C();
    __swift_project_value_buffer(v50, qword_1EAF86F10);
    v51 = v7;
    v52 = sub_199DF802C();
    v53 = sub_199DFA30C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = v7;
      v56 = v51;
      _os_log_impl(&dword_199A75000, v52, v53, "Ignoring request to install observer since we're already observing this scroll view: %@", v54, 0xCu);
      sub_199A79A04(v55, &unk_1EAF73A90, &unk_199E3A0B0);
      MEMORY[0x19A8FA1A0](v55, -1, -1);
      MEMORY[0x19A8FA1A0](v54, -1, -1);
    }

    else
    {
    }

    goto LABEL_46;
  }

  if (Strong)
  {
    sub_199A7A02C(0, &unk_1EAF71B68, 0x1E69DCEF8);
    v21 = v7;
    v22 = sub_199DFA4EC();

    if (v22)
    {
      goto LABEL_41;
    }
  }

LABEL_21:
  v23 = 0;
LABEL_24:
  v24 = sub_199AF3728(&unk_1EAF73C11, _s14ScrollObserverCMa);
  if (v24)
  {
    v25 = v24;
    if (qword_1EAF71C40 != -1)
    {
      swift_once();
    }

    v26 = sub_199DF804C();
    __swift_project_value_buffer(v26, qword_1EAF86F10);
    v27 = v25;
    v28 = sub_199DF802C();
    v29 = sub_199DFA30C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      v32 = swift_unknownObjectWeakLoadStrong();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_199A75000, v28, v29, "Cleaning up observer for previous scroll view: %@", v30, 0xCu);
      sub_199A79A04(v31, &unk_1EAF73A90, &unk_199E3A0B0);
      MEMORY[0x19A8FA1A0](v31, -1, -1);
      MEMORY[0x19A8FA1A0](v30, -1, -1);
    }

    v33 = swift_unknownObjectWeakLoadStrong();
    if (v33)
    {
      v34 = v33;
      [v33 _removeScrollViewScrollObserver_];
    }

    swift_beginAccess();
    objc_setAssociatedObject(v1, &unk_1EAF73C11, 0, 1);
    swift_endAccess();
  }

  if (v23)
  {
    if (qword_1EAF71C40 != -1)
    {
      swift_once();
    }

    v35 = sub_199DF804C();
    __swift_project_value_buffer(v35, qword_1EAF86F10);
    v36 = v1;
    v37 = oslog;
    v38 = sub_199DF802C();
    v39 = sub_199DFA31C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      *v40 = 138412546;
      *(v40 + 4) = v36;
      *(v40 + 12) = 2112;
      *(v40 + 14) = v37;
      *v41 = v36;
      v41[1] = oslog;
      v42 = v36;
      v43 = v37;
      _os_log_impl(&dword_199A75000, v38, v39, "Could not find scroll view for palette: %@ on view controller: %@, falling back to always be in revealing state", v40, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73A90, &unk_199E3A0B0);
      swift_arrayDestroy();
      MEMORY[0x19A8FA1A0](v41, -1, -1);
      MEMORY[0x19A8FA1A0](v40, -1, -1);
    }

    v59 = 1;
    v44 = sub_199DFA9DC();
    swift_beginAccess();
    objc_setAssociatedObject(v36, &unk_1EAF73C10, v44, 1);
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  else
  {
    v45 = _s14ScrollObserverCMa();
    v46 = objc_allocWithZone(v45);
    *&v46[OBJC_IVAR____TtCE10ContactsUICSo37CNUISharedProfileNavigationBarPaletteP33_324309E58E9A0668A8E269CFEC6C38C214ScrollObserver_scrollRevealThreshold] = 0x4014000000000000;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v58.receiver = v46;
    v58.super_class = v45;
    v47 = v7;
    v48 = objc_msgSendSuper2(&v58, sel_init);
    [v47 _addScrollViewScrollObserver_];
    swift_beginAccess();
    v49 = v48;
    objc_setAssociatedObject(v1, &unk_1EAF73C11, v49, 1);
    swift_endAccess();
  }
}

void sub_199AF319C()
{
  [v0 bounds];
  v4 = UIEdgeInsetsInsetRect(v1);
  v6 = v5;
  if (v2 < 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v2;
  }

  v8 = fmax(v3, 1.0);
  v9 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0, 0x1E69DD258);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 view];

    if (!v11)
    {
      __break(1u);
      goto LABEL_27;
    }

    v12 = [v11 layer];

    [v12 setCornerRadius_];
  }

  v13 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0, 0x1E69DD258);
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v13 view];

  if (!v15)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  [v15 setBounds_];

LABEL_10:
  v16 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0, 0x1E69DD258);
  if (!v16)
  {
    goto LABEL_13;
  }

  v17 = v16;
  v18 = [v16 view];

  if (!v18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v29.origin.x = v4;
  v29.origin.y = v6;
  v29.size.width = v7;
  v29.size.height = v8;
  MidX = CGRectGetMidX(v29);
  v30.origin.x = v4;
  v30.origin.y = v6;
  v30.size.width = v7;
  v30.size.height = v8;
  [v18 setCenter_];

LABEL_13:
  v20 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0, 0x1E69DD258);
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = v20;
  v22 = [v20 view];

  if (!v22)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = sub_199AF3648();
  v24 = 1.0;
  if (!v23)
  {
    v24 = 0.0;
  }

  [v22 setAlpha_];

LABEL_18:
  if (!sub_199AF3728(&unk_1EAF73C13, MEMORY[0x1E6996A10]))
  {
    return;
  }

  [v0 bounds];
  v25 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0, 0x1E69DD258);
  if (v25)
  {
    v26 = v25;
    v27 = [v25 view];

    if (v27)
    {
      [v27 intrinsicContentSize];

      goto LABEL_23;
    }

LABEL_30:
    __break(1u);
    return;
  }

LABEL_23:
  sub_199DF7E2C();
}

uint64_t sub_199AF359C(SEL *a1, uint64_t (*a2)(id))
{
  v5.super_class = CNUISharedProfileNavigationBarPalette;
  v3 = objc_msgSendSuper2(&v5, *a1);
  return a2(v3);
}

void sub_199AF35E4(void *a1, uint64_t a2, const char **a3, void (*a4)(id))
{
  v8.receiver = a1;
  v8.super_class = CNUISharedProfileNavigationBarPalette;
  v5 = *a3;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v8, v5);
  a4(v7);
}

uint64_t sub_199AF3648()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_1EAF73C10);
  swift_endAccess();
  if (v1)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v3;
    }
  }

  else
  {
    sub_199A79A04(v6, &qword_1EAF73080, &qword_199E3E7D0);
    return 0;
  }

  return result;
}

uint64_t sub_199AF3728(const void *a1, uint64_t (*a2)(void))
{
  swift_beginAccess();
  v5 = objc_getAssociatedObject(v2, a1);
  swift_endAccess();
  if (v5)
  {
    sub_199DFA66C();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (*(&v9 + 1))
  {
    a2(0);
    if (swift_dynamicCast())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_199A79A04(v10, &qword_1EAF73080, &qword_199E3E7D0);
    return 0;
  }
}

uint64_t sub_199AF3818()
{
  if ([v0 respondsToSelector_])
  {
    v1 = [v0 _viewControllerForAncestor];
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }
  }

  v3 = v0;
  while (1)
  {
    v4 = [v3 nextResponder];

    if (!v4)
    {
      break;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    v3 = v4;
    if (result)
    {
      return result;
    }
  }

  return 0;
}

void sub_199AF38E0()
{
  if (sub_199AF3648() == 1)
  {
    v1 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0, 0x1E69DD258);
    if (v1)
    {
      v2 = v1;
      v3 = [v1 view];

      if (!v3)
      {
        __break(1u);
        return;
      }

      [v3 intrinsicContentSize];
      v5 = v4;

      v6 = v5 + 0.0 + 8.0;
    }

    else
    {
      v6 = 88.0;
    }

    [v0 frame];
    if (v6 - v7 < 0.01)
    {
      v8 = sub_199DFA9DC();
      swift_beginAccess();
      objc_setAssociatedObject(v0, &unk_1EAF73C10, v8, 1);
      swift_endAccess();
      swift_unknownObjectRelease();
    }
  }
}

void sub_199AF3A20(unsigned __int8 a1, char a2)
{
  v3 = v2;
  v5 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73CA0, &unk_199E3BA60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v33[-v7];
  v9 = sub_199DF78DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((v5 - 1) > 1)
  {
    goto LABEL_10;
  }

  if (sub_199AF3728(&unk_1EAF73C14, MEMORY[0x1E69969A8]))
  {
    sub_199DF7A8C();

    v13 = sub_199DF78CC();
    (*(v10 + 8))(v12, v9);
  }

  else
  {
    v13 = 0;
  }

  if (sub_199AF3728(&unk_1EAF73C14, MEMORY[0x1E69969A8]))
  {
    sub_199DF7A9C();

    if (v13)
    {
LABEL_7:
      sub_199A79A04(v8, &unk_1EAF73CA0, &unk_199E3BA60);
      return;
    }
  }

  else
  {
    v14 = sub_199DF723C();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
    if (v13)
    {
      goto LABEL_7;
    }
  }

  v15 = sub_199DF723C();
  v16 = (*(*(v15 - 8) + 48))(v8, 1, v15);
  sub_199A79A04(v8, &unk_1EAF73CA0, &unk_199E3BA60);
  if (v16 == 1)
  {
LABEL_10:
    v17 = sub_199AF3648();
    if (v17)
    {
      if (v17 == 1)
      {
        if (v5)
        {
          if (v5 != 1)
          {
            goto LABEL_22;
          }

          goto LABEL_30;
        }
      }

      else if (v5)
      {
        goto LABEL_30;
      }

      [v3 setPreferredHeight_];
      goto LABEL_30;
    }

    if (v5)
    {
      if (v5 != 1)
      {
LABEL_22:
        v24 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0, 0x1E69DD258);
        if (!v24)
        {
          v29 = 88.0;
LABEL_26:
          [v3 setPreferredHeight_];
          v30 = sub_199AF3818();
          if (v30)
          {
            v31 = v30;
            [v30 _scrollToRevealNavigationBarPart_animated_];
          }

          goto LABEL_30;
        }

        v25 = v24;
        v26 = [v24 view];

        if (v26)
        {
          [v26 intrinsicContentSize];
          v28 = v27;

          v29 = v28 + 0.0 + 8.0;
          goto LABEL_26;
        }

        __break(1u);
LABEL_33:
        __break(1u);
        return;
      }

      v18 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0, 0x1E69DD258);
      if (v18)
      {
        v19 = v18;
        v20 = [v18 view];

        if (!v20)
        {
          goto LABEL_33;
        }

        [v20 intrinsicContentSize];
        v22 = v21;

        v23 = v22 + 0.0 + 8.0;
      }

      else
      {
        v23 = 88.0;
      }

      [v3 setPreferredHeight_];
    }

LABEL_30:
    v33[8] = v5;
    v32 = sub_199DFA9DC();
    swift_beginAccess();
    objc_setAssociatedObject(v3, &unk_1EAF73C10, v32, 1);
    swift_endAccess();
    swift_unknownObjectRelease();
  }
}

void sub_199AF3E98(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v13 = Strong;
  [a1 contentOffset];
  v4 = v3;
  [a1 adjustedContentInset];
  v6 = v4 + v5;
  [v13 bounds];
  v8 = v7;
  if ([a1 isTracking])
  {
    v9 = v6 > 5.0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (v6 <= 5.0 || v8 >= 1.0)
    {
      goto LABEL_15;
    }

    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  sub_199AF3A20(v11, 0);
LABEL_15:
  v12 = -v6;
  if (v6 >= 0.0)
  {
    v12 = 0.0;
  }

  sub_199AF3FAC(v12);
  sub_199AF38E0();
}

void sub_199AF3FAC(CGFloat a1)
{
  v2 = v1;
  v4 = sub_199AF3818();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 navigationBar];

    if (v6)
    {
      v7 = sub_199AF41EC();

      if (v7)
      {
        a1 = 0.0;
      }
    }
  }

  [v2 setClipsToBounds_];
  v8 = sub_199A7A0B4(&unk_1EAF73C12, &qword_1EAF71CF0, 0x1E69DD258);
  if (v8)
  {
    v9 = v8;
    v10 = [v8 view];

    if (v10)
    {
      CGAffineTransformMakeTranslation(&v11, 0.0, a1);
      [v10 setTransform_];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_199AF4168()
{
  v2.receiver = v0;
  v2.super_class = _s14ScrollObserverCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_199AF41EC()
{
  if (([v0 respondsToSelector_] & 1) == 0 || !objc_msgSend(v0, sel__hasFixedMaximumHeight))
  {
    return 1;
  }

  if ([v0 respondsToSelector_])
  {
    [v0 _resolvedLargeTitleMargins];
  }

  else
  {
    v1 = *MEMORY[0x1E69DC5C0];
  }

  return v1 != 0.0;
}

void sub_199AF42F0(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *MEMORY[0x1E69E7D40] & *v5;
  v11 = v5 + *(v10 + qword_1EAF86F28 + 16);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v12 = *(v11 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(a1, a2 & 1, a3, a4, ObjectType, v12);

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EAF71C40 != -1)
    {
      swift_once();
    }

    v14 = sub_199DF804C();
    __swift_project_value_buffer(v14, qword_1EAF86F10);
    v15 = a1;
    v16 = sub_199DF802C();
    v17 = sub_199DFA31C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_199A75000, v16, v17, "No presenter found to present view controller: %@", v18, 0xCu);
      sub_199A79A04(v19, &unk_1EAF73A90, &unk_199E3A0B0);
      MEMORY[0x19A8FA1A0](v19, -1, -1);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
    }

    if (a3)
    {
      v24[4] = a3;
      v24[5] = a4;
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 1107296256;
      v24[2] = sub_199AB45A0;
      v24[3] = &block_descriptor_15;
      v22 = _Block_copy(v24);
    }

    else
    {
      v22 = 0;
    }

    v23 = type metadata accessor for PresentationDelegatingHostingController(0, *(v10 + qword_1EAF86F28), *(v10 + qword_1EAF86F28 + 8), v21);
    v25.receiver = v5;
    v25.super_class = v23;
    objc_msgSendSuper2(&v25, sel_presentViewController_animated_completion_, v15, a2 & 1, v22);
    _Block_release(v22);
  }
}

void sub_199AF45D4(void *a1, int a2, void *a3, char a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_199AF4DD8;
  }

  else
  {
    v9 = 0;
  }

  v10 = a3;
  v11 = a1;
  sub_199AF42F0(v10, a4, v8, v9);
  sub_199A9A5FC(v8, v9);
}

void *sub_199AF46F0(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + qword_1EAF86F28);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v13 - v6;
  *(v2 + *(v8 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v5 + 16))(v7, a2, v4);
  v9 = sub_199DF8DDC();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id sub_199AF4844(void *a1)
{
  v3 = *MEMORY[0x1E69E7D40] & *v1;
  *(v1 + *(v3 + qword_1EAF86F28 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  v5 = type metadata accessor for PresentationDelegatingHostingController(0, *(v3 + qword_1EAF86F28), *(v3 + qword_1EAF86F28 + 8), v4);
  v8.receiver = v1;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_199AF4988(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for PresentationDelegatingHostingController(0, *((*MEMORY[0x1E69E7D40] & *v5) + qword_1EAF86F28), *((*MEMORY[0x1E69E7D40] & *v5) + qword_1EAF86F28 + 8), a5);
  v8.receiver = v5;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_199AF4A50(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if ([v5 respondsToSelector_])
  {
    v9 = [v5 _viewControllerForAncestor];
    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
LABEL_7:
      if (!a3)
      {
LABEL_11:
        v16 = v10;
        v18 = v10;
        v15 = 0;
        goto LABEL_12;
      }

LABEL_8:
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_199AB45A0;
      aBlock[3] = &block_descriptor_18;
      v14 = v10;
      v15 = _Block_copy(aBlock);
      v16 = v14;
      v17 = v14;
      sub_199A9A57C(a3, a4);

LABEL_12:
      [v16 presentViewController:a1 animated:a2 & 1 completion:v15];

      _Block_release(v15);
      return;
    }
  }

  v11 = v5;
  v12 = v11;
  while (1)
  {
    v13 = [v12 nextResponder];

    if (!v13)
    {
      break;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    v12 = v13;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  if ([v11 respondsToSelector_])
  {
    v10 = [v11 _viewControllerForAncestor];
    if (!a3)
    {
      goto LABEL_11;
    }

    goto LABEL_8;
  }
}

uint64_t sub_199AF4CC0(uint64_t a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + qword_1EAF86F28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  *(v1 + *(v7 + 16) + 8) = 0;
  swift_unknownObjectWeakInit();
  (*(v4 + 16))(v6, a1, v3);
  return sub_199DF8DFC();
}

uint64_t keypath_getTm@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v6 = a1();
  v8 = v7;
  result = swift_allocObject();
  *(result + 16) = v6;
  *(result + 24) = v8;
  *a4 = a3;
  a4[1] = result;
  return result;
}

uint64_t sub_199AF4EAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73CB0, &qword_199E3BA70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_199AF4F1C()
{
  result = qword_1EAF71C30;
  if (!qword_1EAF71C30)
  {
    sub_199DF910C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71C30);
  }

  return result;
}

uint64_t sub_199AF4F68(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199AF4FD0()
{
  result = qword_1EAF73CF0;
  if (!qword_1EAF73CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73CF0);
  }

  return result;
}

uint64_t LimitedLibraryPickerHostView.init(queryString:caption:showMultiSelectContactsPicker:completion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v29 = a6;
  v30 = a7;
  v28 = a5;
  v26 = a3;
  v27 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8, &qword_199E3BB70);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_199DF983C();
  v17 = v34;
  *a8 = v33;
  *(a8 + 16) = v17;
  v18 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v19 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  sub_199AAD408(v16, v13, &qword_1EAF72EA8, &qword_199E3BB70);
  sub_199DF983C();
  result = sub_199A79A04(v16, &qword_1EAF72EA8, &qword_199E3BB70);
  v21 = (a8 + v18[6]);
  *v21 = a1;
  v21[1] = a2;
  v22 = (a8 + v18[7]);
  v23 = v27;
  *v22 = v26;
  v22[1] = v23;
  *(a8 + v18[8]) = v28;
  v24 = (a8 + v18[9]);
  v25 = v30;
  *v24 = v29;
  v24[1] = v25;
  return result;
}

uint64_t sub_199AF5240()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF73D00);
  __swift_project_value_buffer(v0, qword_1EAF73D00);
  return sub_199DF803C();
}

double View.contactAccessPicker(isPresented:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = v9;
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D20, &qword_199E3BB78);
  sub_199AF5644();
  sub_199DF95DC();

  return result;
}

uint64_t sub_199AF53D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8, &qword_199E3BB70);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v28 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = a5;
  v28[1] = 0;
  v28[2] = 0xE000000000000000;

  sub_199DF983C();
  v19 = v30;
  *a6 = v29;
  *(a6 + 16) = v19;
  v20 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v21 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
  sub_199AAD408(v17, v14, &qword_1EAF72EA8, &qword_199E3BB70);
  sub_199DF983C();
  sub_199A79A04(v17, &qword_1EAF72EA8, &qword_199E3BB70);
  v22 = (a6 + v20[6]);
  *v22 = 0;
  v22[1] = 0xE000000000000000;
  v23 = (a6 + v20[7]);
  *v23 = 0x54746C7561666564;
  v23[1] = 0xEB00000000747865;
  *(a6 + v20[8]) = 1;
  v24 = (a6 + v20[9]);
  *v24 = sub_199AFE990;
  v24[1] = v18;
  v25 = sub_199DF88BC();
  LOBYTE(a1) = sub_199DF916C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D20, &qword_199E3BB78);
  v27 = a6 + *(result + 36);
  *v27 = v25;
  *(v27 + 8) = a1;
  return result;
}

unint64_t sub_199AF5644()
{
  result = qword_1EAF73D28;
  if (!qword_1EAF73D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73D20, &qword_199E3BB78);
    sub_199AF5964(&qword_1EAF73D30, type metadata accessor for LimitedLibraryPickerHostView, &protocol conformance descriptor for LimitedLibraryPickerHostView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73D28);
  }

  return result;
}

uint64_t sub_199AF5700(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE0, &qword_199E37A70);
  sub_199DF997C();
  return a5(a1);
}

uint64_t sub_199AF57C8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
  return sub_199DF81AC();
}

uint64_t sub_199AF58A0()
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_199DF81AC();
  return v1;
}

uint64_t sub_199AF5964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_199AF59CC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_199DFA99C() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
    sub_199DF739C();
  }
}

uint64_t sub_199AF5B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  sub_199DF81AC();
}

uint64_t (*sub_199AF5BAC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  *v4 = v1;
  swift_getKeyPath();
  sub_199DF73CC();

  v4[7] = sub_199AF5778(v4);
  return sub_199AF5CE4;
}

uint64_t sub_199AF5D40@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
  return sub_199DF81AC();
}

uint64_t keypath_setTm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_199DF81AC();
  return a5(v7, v6);
}

uint64_t sub_199AF5E60()
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_199DF81AC();
  return v1;
}

uint64_t sub_199AF5F24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (sub_199DFA99C() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
    sub_199DF739C();
  }
}

uint64_t sub_199AF6078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_199DF81AC();
}

uint64_t (*sub_199AF6104(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  *v4 = v1;
  swift_getKeyPath();
  sub_199DF73CC();

  v4[7] = sub_199AF5CF0(v4);
  return sub_199AF623C;
}

uint64_t sub_199AF6298@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_199AF637C()
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  return *(v0 + 48);
}

void sub_199AF6430(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 48) == v2)
  {
    *(v1 + 48) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
    sub_199DF739C();
  }
}

uint64_t sub_199AF6554()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  return result;
}

uint64_t (*sub_199AF65A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  *v4 = v1;
  swift_getKeyPath();
  sub_199DF73CC();

  v4[7] = sub_199AF6248(v4);
  return sub_199AF66E0;
}

uint64_t sub_199AF673C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
  return sub_199DF81AC();
}

uint64_t sub_199AF6814()
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v1 = *(v0 + 56);
  sub_199DF81AC();
  return v1;
}

uint64_t sub_199AF68D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 64);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 56) == a1 && v5 == a2;
      if (v6 || (sub_199DFA99C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF739C();
}

uint64_t sub_199AF6A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  sub_199DF81AC();
}

uint64_t (*sub_199AF6AC8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  *v4 = v1;
  swift_getKeyPath();
  sub_199DF73CC();

  v4[7] = sub_199AF66EC(v4);
  return sub_199AF6C00;
}

uint64_t sub_199AF6C5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
  return sub_199DF81AC();
}

uint64_t keypath_set_12Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_199DF81AC();
  return a5(v7, v6);
}

uint64_t sub_199AF6D7C()
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  v1 = *(v0 + 72);
  sub_199DF81AC();
  return v1;
}

uint64_t sub_199AF6E40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 80);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 72) == a1 && v5 == a2;
      if (v6 || (sub_199DFA99C() & 1) != 0)
      {
        goto LABEL_8;
      }
    }
  }

  else if (!a2)
  {
LABEL_8:
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF739C();
}

uint64_t sub_199AF6FA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
  sub_199DF81AC();
}

uint64_t (*sub_199AF7030(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  *v4 = v1;
  swift_getKeyPath();
  sub_199DF73CC();

  v4[7] = sub_199AF6C0C(v4);
  return sub_199AF7168;
}

void sub_199AF7174(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_199DF73BC();

  free(v3);
}

uint64_t LimitedLibraryPickerViewModel.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0x54746C7561666564;
  *(v0 + 40) = 0xEB00000000747865;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_199DF73DC();
  return v0;
}

uint64_t LimitedLibraryPickerViewModel.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0x54746C7561666564;
  *(v0 + 40) = 0xEB00000000747865;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_199DF73DC();
  return v0;
}

char *LimitedLibraryPickerViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LimitedLibraryPickerViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10ContactsUI29LimitedLibraryPickerViewModel___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_199AF7428@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LimitedLibraryPickerViewModel(0);
  result = sub_199DFA72C();
  *a2 = result;
  return result;
}

uint64_t LimitedLibraryPickerView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D48, &qword_199E3BC48);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D50, &qword_199E3BC50);
  MEMORY[0x1EEE9AC00](v28);
  v6 = &v25 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D58, &qword_199E3BC58);
  MEMORY[0x1EEE9AC00](v29);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D60, &qword_199E3BC60);
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v25 - v10;
  v11 = *v1;
  v12 = v1[2];
  v26 = v1[1];
  v27 = v12;
  swift_getKeyPath();
  v34 = v11;
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  if (*(v11 + 64))
  {
    v25 = v4;
    swift_getKeyPath();
    v33 = v11;
    sub_199DF73AC();

    swift_beginAccess();
    if (*(v11 + 48) == 1)
    {
      v13 = type metadata accessor for LimitedLibraryPickerViewInternal(0);
      v32 = v13;

      v14 = v27;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D98, &qword_199E3BC70);
      sub_199DF9FBC();
      sub_199DF803C();
      *&v8[*(v13 + 20)] = v11;
      v15 = &v8[*(v13 + 24)];
      *v15 = v26;
      *(v15 + 1) = v14;
      v16 = sub_199DF88BC();
      v17 = sub_199DF916C();
      v18 = &v8[*(v29 + 36)];
      *v18 = v16;
      v18[8] = v17;
      sub_199AAD408(v8, v6, &qword_1EAF73D58, &qword_199E3BC58);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D88, &qword_199E3BC68);
      sub_199AF79E0();
      sub_199AF7ABC();
      v19 = v30;
      sub_199DF8EDC();
      sub_199A79A04(v8, &qword_1EAF73D58, &qword_199E3BC58);
    }

    else
    {

      v21 = v27;

      v22 = sub_199DF88BC();
      v23 = sub_199DF916C();
      v24 = v26;
      *v6 = v11;
      *(v6 + 1) = v24;
      *(v6 + 2) = v21;
      *(v6 + 3) = v22;
      v6[32] = v23;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73D88, &qword_199E3BC68);
      sub_199AF79E0();
      sub_199AF7ABC();
      v19 = v30;
      sub_199DF8EDC();
    }

    sub_199AAD408(v19, v25, &qword_1EAF73D60, &qword_199E3BC60);
    swift_storeEnumTagMultiPayload();
    sub_199AF7954();
    sub_199DF8EDC();
    return sub_199A79A04(v19, &qword_1EAF73D60, &qword_199E3BC60);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_199AF7954();
    return sub_199DF8EDC();
  }
}

unint64_t sub_199AF7954()
{
  result = qword_1EAF73D68;
  if (!qword_1EAF73D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73D60, &qword_199E3BC60);
    sub_199AF79E0();
    sub_199AF7ABC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73D68);
  }

  return result;
}

unint64_t sub_199AF79E0()
{
  result = qword_1EAF73D70;
  if (!qword_1EAF73D70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73D58, &qword_199E3BC58);
    sub_199AF5964(&qword_1EAF73D78, type metadata accessor for LimitedLibraryPickerViewInternal, &unk_199E3C17C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73D70);
  }

  return result;
}

unint64_t sub_199AF7ABC()
{
  result = qword_1EAF73D80;
  if (!qword_1EAF73D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73D88, &qword_199E3BC68);
    sub_199AF7B48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73D80);
  }

  return result;
}

unint64_t sub_199AF7B48()
{
  result = qword_1EAF73D90;
  if (!qword_1EAF73D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73D90);
  }

  return result;
}

uint64_t LimitedLibraryPickerView.init(viewModel:completion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void sub_199AF7BF4()
{
}

void sub_199AF7C58()
{
}

void *sub_199AF7CB8@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = type metadata accessor for LimitedLibraryButtonPickerViewInternal.ControllerCoordinator();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCV10ContactsUI38LimitedLibraryButtonPickerViewInternal21ControllerCoordinator_startingIdentifiers] = MEMORY[0x1E69E7CD0];
  v7 = &v6[OBJC_IVAR____TtCV10ContactsUI38LimitedLibraryButtonPickerViewInternal21ControllerCoordinator_completion];
  *v7 = v4;
  *(v7 + 1) = v3;
  v9.receiver = v6;
  v9.super_class = v5;

  result = objc_msgSendSuper2(&v9, sel_init);
  *a1 = result;
  return result;
}

void sub_199AF7DF0(uint64_t a1)
{
  sub_199AFB7E0();
  sub_199DF90BC();
  __break(1u);
}

void sub_199AF7EC8()
{
}

id sub_199AF7F0C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_199AF7F58(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
}

void sub_199AF7FA4()
{
  v1 = *(v0 + *(type metadata accessor for LimitedLibraryPickerViewInternal(0) + 20));
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  if (!v1[10])
  {
    __break(1u);
    goto LABEL_6;
  }

  swift_getKeyPath();
  sub_199DF81AC();
  sub_199DF73AC();

  swift_beginAccess();
  if (!v1[8])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = objc_allocWithZone(CNLimitedAccessContactPickerViewController);
  sub_199DF81AC();
  v3 = sub_199DF9F5C();

  v4 = sub_199DF9F5C();

  v5 = [v2 initForAppName:v3 bundleId:v4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F90, &qword_199E3C1E0);
  sub_199DF911C();
  [v5 setDelegate_];

  v6 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  swift_getKeyPath();
  sub_199DF73AC();

  if (v1[8])
  {
    sub_199DF81AC();
    v7 = sub_199DF9F5C();

    v8 = [v6 fetchLimitedAccessContactIdentifiersForBundle_];

    v9 = sub_199DFA0CC();
    sub_199DF911C();
    v10 = sub_199AFD79C(v9);

    *(v1 + OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_startingIdentifiers) = v10;

    return;
  }

LABEL_7:
  __break(1u);
}

id sub_199AF82A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1 + 24));
  v6 = *v4;
  v5 = v4[1];
  v7 = type metadata accessor for LimitedLibraryPickerViewInternal.ControllerCoordinator();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_startingIdentifiers] = MEMORY[0x1E69E7CD0];
  v9 = &v8[OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_completion];
  *v9 = v6;
  *(v9 + 1) = v5;
  v11.receiver = v8;
  v11.super_class = v7;

  result = objc_msgSendSuper2(&v11, sel_init);
  *a2 = result;
  return result;
}

void sub_199AF8440(uint64_t a1)
{
  sub_199AF5964(&qword_1EAF73F68, type metadata accessor for LimitedLibraryPickerViewInternal, &unk_199E3BFEC);
  sub_199DF90BC();
  __break(1u);
}

uint64_t LimitedLibraryPickerHostView.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73DA0, &qword_199E3BC78);
  sub_199DF986C();
  sub_199AFDFD4(v1, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LimitedLibraryPickerHostView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_199AFE03C(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LimitedLibraryPickerHostView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73DA8, &qword_199E3BC80);
  v9 = (a1 + *(result + 36));
  *v9 = sub_199AF87DC;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

double sub_199AF85FC(uint64_t a1)
{
  v2 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70, &qword_199E3B390);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_199DFA1BC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_199AFDFD4(a1, v5, type metadata accessor for LimitedLibraryPickerHostView);
  sub_199DFA17C();
  v10 = sub_199DFA16C();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E85E0];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_199AFE03C(v5, v12 + v11, type metadata accessor for LimitedLibraryPickerHostView);
  sub_199AE7FD0(0, 0, v8, &unk_199E3C218, v12);

  return result;
}

uint64_t sub_199AF8824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_199DF7F6C();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = sub_199DF7F8C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_199DF7FAC();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = sub_199DFA17C();
  v4[15] = sub_199DFA16C();
  v9 = sub_199DFA12C();
  v4[16] = v9;
  v4[17] = v8;

  return MEMORY[0x1EEE6DFA0](sub_199AF89D4, v9, v8);
}

uint64_t sub_199AF89D4()
{
  sub_199DF7F5C();
  sub_199DF7F9C();
  sub_199DF7F7C();
  v0[18] = sub_199DFA16C();
  v1 = sub_199AF5964(&qword_1EAF73FC8, MEMORY[0x1E6966C20], MEMORY[0x1E6966C28]);
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_199AF8B04;
  v3 = v0[5];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v3, v1);
}

uint64_t sub_199AF8B04()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_199DFA12C();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_199AF8F90;
  }

  else
  {
    if (v3)
    {
      swift_getObjectType();
      v4 = sub_199DFA12C();
      v6 = v8;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v7 = sub_199AF8C9C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_199AF8C9C()
{

  v0[21] = v0[2];
  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x1EEE6DFA0](sub_199AF8D08, v1, v2);
}

uint64_t sub_199AF8D08()
{
  if (v0[21])
  {

    return MEMORY[0x1EEE6DFA0](sub_199AF8E50, 0, 0);
  }

  else
  {
    v2 = v0[12];
    v1 = v0[13];
    v4 = v0[10];
    v3 = v0[11];
    v5 = v0[8];
    v6 = v0[9];
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];

    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v4, v5);
    (*(v2 + 8))(v1, v3);

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_199AF8E50(uint64_t a1)
{
  *(v1 + 176) = sub_199DFA16C();
  v3 = sub_199DFA12C();

  return MEMORY[0x1EEE6DFA0](sub_199AF8EDC, v3, v2);
}

void sub_199AF8EDC()
{
  v1 = v0[21];
  v2 = v0[20];
  v3 = v0[4];

  sub_199AF920C(v1, v3);
  if (v2)
  {
  }

  else
  {

    v4 = v0[16];
    v5 = v0[17];

    MEMORY[0x1EEE6DFA0](sub_199AF9124, v4, v5);
  }
}

uint64_t sub_199AF8F90()
{
  v0[3] = v0[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD0, &qword_199E3C220);
  swift_willThrowTypedImpl();

  v1 = v0[16];
  v2 = v0[17];

  return MEMORY[0x1EEE6DFA0](sub_199AF902C, v1, v2);
}

uint64_t sub_199AF902C()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];
  v9 = v0[5];

  (*(v8 + 8))(v7, v9);
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_199AF9124(uint64_t a1)
{
  v1[18] = sub_199DFA16C();
  v2 = sub_199AF5964(&qword_1EAF73FC8, MEMORY[0x1E6966C20], MEMORY[0x1E6966C28]);
  v3 = swift_task_alloc();
  v1[19] = v3;
  *v3 = v1;
  v3[1] = sub_199AF8B04;
  v4 = v1[5];

  return MEMORY[0x1EEE6D8C8](v1 + 2, v4, v2);
}

uint64_t sub_199AF920C(uint64_t a1, __int128 *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8, &qword_199E3BB70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v36 - v9;
  if (*(a1 + 16))
  {
    v11 = sub_199DF7FDC();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    *&v40 = sub_199DF7FBC();
    *(&v40 + 1) = v14;
    MEMORY[0x19A8F7E00](10272, 0xE200000000000000);
    v15 = sub_199DF7FCC();
    v42 = v7;
    MEMORY[0x19A8F7E00](v15);

    MEMORY[0x19A8F7E00](41, 0xE100000000000000);
    v16 = v40;
    v17 = *(a2 + 2);
    v40 = *a2;
    v41 = v17;
    v39 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8, &qword_199E40F90);
    sub_199DF985C();
    (*(v12 + 16))(v10, a1 + v13, v11);
    v18 = type metadata accessor for LimitedLibraryPickerHostView(0);
    v19 = (a2 + v18[6]);
    v20 = *v19;
    v21 = v19[1];
    v22 = (a2 + v18[7]);
    v23 = v22[1];
    v37 = *v22;
    v38 = v2;
    v24 = v18[9];
    v25 = *(a2 + v18[8]);
    v27 = *(a2 + v24);
    v26 = *(a2 + v24 + 8);
    v28 = type metadata accessor for _AppExtensionHostView.Configuration(0);
    v29 = &v10[v28[5]];
    *v29 = 0x746C7561666564;
    *(v29 + 1) = 0xE700000000000000;
    v30 = &v10[v28[6]];
    *v30 = v20;
    *(v30 + 1) = v21;
    v31 = &v10[v28[7]];
    *v31 = v37;
    *(v31 + 1) = v23;
    v10[v28[8]] = v25;
    v32 = &v10[v28[9]];
    *v32 = v27;
    *(v32 + 1) = v26;
    (*(*(v28 - 1) + 56))(v10, 0, 1, v28);
    sub_199AAD408(v10, v42, &qword_1EAF72EA8, &qword_199E3BB70);
    sub_199DF81AC();
    sub_199DF81AC();
  }

  else
  {
    v33 = *(a2 + 2);
    v40 = *a2;
    v41 = v33;
    *&v39 = 0;
    *(&v39 + 1) = 0xE000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FD8, &qword_199E40F90);
    sub_199DF985C();
    v34 = type metadata accessor for _AppExtensionHostView.Configuration(0);
    (*(*(v34 - 8) + 56))(v10, 1, 1, v34);
    type metadata accessor for LimitedLibraryPickerHostView(0);
    sub_199AAD408(v10, v7, &qword_1EAF72EA8, &qword_199E3BB70);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73DA0, &qword_199E3BC78);
  sub_199DF985C();
  return sub_199A79A04(v10, &qword_1EAF72EA8, &qword_199E3BB70);
}

uint64_t sub_199AF959C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73DA0, &qword_199E3BC78);
  sub_199DF986C();
  sub_199AFDFD4(v2, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LimitedLibraryPickerHostView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_199AFE03C(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LimitedLibraryPickerHostView);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73DA8, &qword_199E3BC80);
  v9 = (a2 + *(result + 36));
  *v9 = sub_199AFE9B4;
  v9[1] = v7;
  v9[2] = 0;
  v9[3] = 0;
  return result;
}

uint64_t sub_199AF9700(uint64_t a1)
{
  result = sub_199DF73EC();
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

void sub_199AF9ABC(uint64_t a1)
{
  sub_199AF9B88();
  if (v1 <= 0x3F)
  {
    sub_199AFAB08(319, &qword_1EAF73E68, MEMORY[0x1E6981790]);
    if (v2 <= 0x3F)
    {
      sub_199ADB1F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_199AF9B88()
{
  if (!qword_1EAF711D0)
  {
    v0 = sub_199DF987C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EAF711D0);
    }
  }
}

void sub_199AF9BE4(void *a1)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v89 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8, &qword_199E3BB70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v86 = &v83 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v83 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v83 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v83 - v17;
  *&v20 = MEMORY[0x1EEE9AC00](v19).n128_u64[0];
  v22 = &v83 - v21;
  aBlock[0] = 0;
  v23 = [a1 makeXPCConnectionWithError_];
  v24 = aBlock[0];
  if (v23)
  {
    v25 = v23;
    v83 = v7;
    v92 = v3;
    v26 = objc_opt_self();
    v27 = v24;
    v28 = [v26 interfaceWithProtocol_];
    [v25 setRemoteObjectInterface_];

    [v25 resume];
    if (qword_1EAF71E88 != -1)
    {
      swift_once();
    }

    v29 = sub_199DF804C();
    v84 = __swift_project_value_buffer(v29, qword_1EAF73D00);
    v30 = sub_199DF802C();
    v31 = sub_199DFA33C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_199A75000, v30, v31, "Connection created to extension", v32, 2u);
      MEMORY[0x19A8FA1A0](v32, -1, -1);
    }

    v85 = v25;
    v33 = [v25 remoteObjectProxy];
    sub_199DFA66C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FB0, &qword_199E3C200);
    swift_dynamicCast();
    v88 = v93;
    v34 = OBJC_IVAR____TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator_parent;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73F30, &qword_199E3BF48);
    v91 = v34;
    MEMORY[0x19A8F7740]();
    v37 = v92 + 48;
    v36 = *(v92 + 48);
    v38 = v36(v22, 1, v2);
    v92 = v37;
    if (v38)
    {
      sub_199A79A04(v22, &qword_1EAF72EA8, &qword_199E3BB70);
      v39 = 0;
      v40 = CGSizeMake;
    }

    else
    {
      v51 = v89;
      sub_199AFDFD4(v22, v89, type metadata accessor for _AppExtensionHostView.Configuration);
      sub_199A79A04(v22, &qword_1EAF72EA8, &qword_199E3BB70);
      v52 = (v51 + v2[9]);
      v54 = *v52;
      v53 = v52[1];

      sub_199AFE0A4(v51, type metadata accessor for _AppExtensionHostView.Configuration);
      v39 = swift_allocObject();
      *(v39 + 16) = v54;
      *(v39 + 24) = v53;
      v40 = sub_199ACDBD4;
    }

    v55 = v40;
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = v39;
    v87 = v56;
    v57 = v90;
    MEMORY[0x19A8F7740](v35);
    if (v36(v18, 1, v2))
    {
      sub_199A79A04(v18, &qword_1EAF72EA8, &qword_199E3BB70);
    }

    else
    {
      v58 = v89;
      sub_199AFDFD4(v18, v89, type metadata accessor for _AppExtensionHostView.Configuration);
      sub_199A79A04(v18, &qword_1EAF72EA8, &qword_199E3BB70);
      sub_199DF81AC();
      sub_199AFE0A4(v58, type metadata accessor for _AppExtensionHostView.Configuration);
    }

    v59 = sub_199DF9F5C();

    MEMORY[0x19A8F7740](v35);
    if (v36(v15, 1, v2))
    {
      sub_199A79A04(v15, &qword_1EAF72EA8, &qword_199E3BB70);
    }

    else
    {
      v60 = v89;
      sub_199AFDFD4(v15, v89, type metadata accessor for _AppExtensionHostView.Configuration);
      sub_199A79A04(v15, &qword_1EAF72EA8, &qword_199E3BB70);
      sub_199DF81AC();
      sub_199AFE0A4(v60, type metadata accessor for _AppExtensionHostView.Configuration);
    }

    v61 = sub_199DF9F5C();

    MEMORY[0x19A8F7740](v35);
    if (v36(v12, 1, v2))
    {
      sub_199A79A04(v12, &qword_1EAF72EA8, &qword_199E3BB70);
      v62 = 1;
    }

    else
    {
      v63 = v89;
      sub_199AFDFD4(v12, v89, type metadata accessor for _AppExtensionHostView.Configuration);
      sub_199A79A04(v12, &qword_1EAF72EA8, &qword_199E3BB70);
      v62 = *(v63 + v2[8]);
      sub_199AFE0A4(v63, type metadata accessor for _AppExtensionHostView.Configuration);
    }

    aBlock[4] = sub_199ACDB9C;
    aBlock[5] = v87;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_199AFA84C;
    aBlock[3] = &block_descriptor_8;
    v64 = _Block_copy(aBlock);

    [v88 configureWithQueryString:v59 caption:v61 showMultiSelectContactsPicker:v62 completion:v64];
    _Block_release(v64);

    v65 = v57;
    v66 = sub_199DF802C();
    v67 = sub_199DFA33C();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      aBlock[0] = v84;
      *v68 = 136315394;
      v69 = v86;
      MEMORY[0x19A8F7740](v35);
      if (v36(v69, 1, v2))
      {
        sub_199A79A04(v69, &qword_1EAF72EA8, &qword_199E3BB70);
        v70 = 0xE500000000000000;
        v71 = 0x3E6C696E3CLL;
      }

      else
      {
        v72 = v89;
        sub_199AFDFD4(v69, v89, type metadata accessor for _AppExtensionHostView.Configuration);
        sub_199A79A04(v69, &qword_1EAF72EA8, &qword_199E3BB70);
        v73 = (v72 + v2[6]);
        v71 = *v73;
        v70 = v73[1];
        sub_199DF81AC();
        sub_199AFE0A4(v72, type metadata accessor for _AppExtensionHostView.Configuration);
      }

      v74 = sub_199A9BE90(v71, v70, aBlock);

      *(v68 + 4) = v74;
      *(v68 + 12) = 2080;
      v75 = v83;
      MEMORY[0x19A8F7740](v35);
      if (v36(v75, 1, v2))
      {
        v76 = 0x54746C7561666564;
        sub_199A79A04(v75, &qword_1EAF72EA8, &qword_199E3BB70);
        v77 = 0xEB00000000747865;
      }

      else
      {
        v78 = v89;
        sub_199AFDFD4(v75, v89, type metadata accessor for _AppExtensionHostView.Configuration);
        sub_199A79A04(v75, &qword_1EAF72EA8, &qword_199E3BB70);
        v79 = (v78 + v2[7]);
        v76 = *v79;
        v77 = v79[1];
        sub_199DF81AC();
        sub_199AFE0A4(v78, type metadata accessor for _AppExtensionHostView.Configuration);
      }

      v80 = v85;
      v81 = sub_199A9BE90(v76, v77, aBlock);

      *(v68 + 14) = v81;
      _os_log_impl(&dword_199A75000, v66, v67, "Requested to configure with %s and %s as caption ", v68, 0x16u);
      v82 = v84;
      swift_arrayDestroy();
      MEMORY[0x19A8FA1A0](v82, -1, -1);
      MEMORY[0x19A8FA1A0](v68, -1, -1);
    }

    else
    {
    }

    *&v65[OBJC_IVAR____TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator_extensionProxy] = v88;
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = aBlock[0];
    v42 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71E88 != -1)
    {
      swift_once();
    }

    v43 = sub_199DF804C();
    __swift_project_value_buffer(v43, qword_1EAF73D00);
    v44 = v42;
    v45 = sub_199DF802C();
    v46 = sub_199DFA31C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      v49 = v42;
      v50 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v50;
      *v48 = v50;
      _os_log_impl(&dword_199A75000, v45, v46, "Connection to extension failed with %@", v47, 0xCu);
      sub_199A79A04(v48, &unk_1EAF73A90, &unk_199E3A0B0);
      MEMORY[0x19A8FA1A0](v48, -1, -1);
      MEMORY[0x19A8FA1A0](v47, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_199AFA84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_199DFA0CC();

  v2(v3);
}

void sub_199AFAA18(uint64_t a1)
{
  sub_199AFAB08(319, &qword_1EAF73EE8, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_199AFAB74(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_199AFAB08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF72EA8, &qword_199E3BB70);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_199AFAB74(uint64_t a1)
{
  if (!qword_1EAF73EF0)
  {
    sub_199DF7FDC();
    v1 = sub_199DFA63C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF73EF0);
    }
  }
}

unint64_t sub_199AFABCC()
{
  result = qword_1EAF73EF8;
  if (!qword_1EAF73EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF73F00, &unk_199E3BEE0);
    sub_199AF7954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73EF8);
  }

  return result;
}

unint64_t sub_199AFAC58()
{
  result = qword_1EAF73F08;
  if (!qword_1EAF73F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF73DA8, &qword_199E3BC80);
    sub_199AF5964(&unk_1EAF73F10, type metadata accessor for _AppExtensionHostView, &unk_199E3C0DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73F08);
  }

  return result;
}

uint64_t sub_199AFAD34(uint64_t *a1, int a2)
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

uint64_t sub_199AFAD7C(uint64_t result, int a2, int a3)
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

uint64_t sub_199AFADF4(uint64_t a1)
{
  result = sub_199DF804C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LimitedLibraryPickerViewModel(319);
    if (v3 <= 0x3F)
    {
      result = sub_199ADB1F8();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_199AFAEB8(uint64_t a1)
{
  sub_199AFAB08(319, &qword_1EAF73EE8, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_199AFAF68(uint64_t a1)
{
  result = sub_199DF7FDC();
  if (v2 <= 0x3F)
  {
    result = sub_199ADB1F8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_199AFB050(void *a1)
{
  v2 = sub_199DF740C();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_199DF7FDC();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F98, &qword_199E3C1E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72EA8, &qword_199E3BB70);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v16 = a1;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73F30, &qword_199E3BF48);
    MEMORY[0x19A8F7740](v17);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_199A79A04(v11, &qword_1EAF72EA8, &qword_199E3BB70);
      v18 = sub_199DFA44C();
      (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
      sub_199DFA45C();
    }

    else
    {
      sub_199AFE03C(v11, v15, type metadata accessor for _AppExtensionHostView.Configuration);
      (*(v20 + 16))(v5, v15, v21);
      sub_199DF81AC();
      sub_199DF741C();
      sub_199DFA43C();
      v19 = sub_199DFA44C();
      (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
      sub_199DFA45C();

      sub_199AFE0A4(v15, type metadata accessor for _AppExtensionHostView.Configuration);
    }
  }

  else
  {
    sub_199DFA85C();
    __break(1u);
  }
}

id sub_199AFB454()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E6966D50]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF73FA0, &unk_199E3C1F0);
  sub_199DF911C();
  [v0 setDelegate_];

  return v0;
}

uint64_t sub_199AFB4D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AFDFD4(v5, v4, type metadata accessor for _AppExtensionHostView);
  v6 = type metadata accessor for _AppExtensionHostView.HostCoordinator(0);
  v7 = objc_allocWithZone(v6);
  v8 = OBJC_IVAR____TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator_identity;
  v9 = sub_199DF7FDC();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  *&v7[OBJC_IVAR____TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator_extensionProxy] = 0;
  sub_199AFDFD4(v4, &v7[OBJC_IVAR____TtCV10ContactsUI21_AppExtensionHostView15HostCoordinator_parent], type metadata accessor for _AppExtensionHostView);
  v12.receiver = v7;
  v12.super_class = v6;
  v10 = objc_msgSendSuper2(&v12, sel_init);
  result = sub_199AFE0A4(v4, type metadata accessor for _AppExtensionHostView);
  *a2 = v10;
  return result;
}

void sub_199AFB788(uint64_t a1)
{
  sub_199AF5964(&qword_1EAF73F78, type metadata accessor for _AppExtensionHostView, &unk_199E3BF74);
  sub_199DF90BC();
  __break(1u);
}

unint64_t sub_199AFB7E0()
{
  result = qword_1EAF73F70;
  if (!qword_1EAF73F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF73F70);
  }

  return result;
}

uint64_t sub_199AFB834(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_199DFAA7C();
  sub_199DF9FEC();
  v8 = sub_199DFAABC();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_199DFA99C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;
    sub_199DF81AC();
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_199DF81AC();
    sub_199AFBEE8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_199AFB984(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_199DFAA6C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_199AFC068(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_199AFBA64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F88, &qword_199E3C1D8);
  v4 = sub_199DFA6EC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_199DFAA7C();
      sub_199DF9FEC();
      v21 = sub_199DFAABC();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_199AFBCC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE8, &qword_199E3C228);
  v4 = sub_199DFA6EC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_199DFAA6C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_199AFBEE8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_199AFBA64(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_199AFC188();
      goto LABEL_16;
    }

    sub_199AFC424(v8 + 1);
  }

  v10 = *v4;
  sub_199DFAA7C();
  sub_199DF9FEC();
  v11 = sub_199DFAABC();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_199DFA99C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_199DFA9EC();
  __break(1u);
}

void sub_199AFC068(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_199AFBCC4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_199AFC2E4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_199AFC65C(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_199DFAA6C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_199DFA9EC();
  __break(1u);
}

void sub_199AFC188()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F88, &qword_199E3C1D8);
  v2 = *v0;
  v3 = sub_199DFA6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
        sub_199DF81AC();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_199AFC2E4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE8, &qword_199E3C228);
  v2 = *v0;
  v3 = sub_199DFA6DC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_199AFC424(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F88, &qword_199E3C1D8);
  v4 = sub_199DFA6EC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_199DFAA7C();
      sub_199DF81AC();
      sub_199DF9FEC();
      v20 = sub_199DFAABC();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_199AFC65C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73FE8, &qword_199E3C228);
  v4 = sub_199DFA6EC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_199DFAA6C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_199AFC84C(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;
    sub_199DF81AC();
    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];
        sub_199DF81AC();
        sub_199AFCEE8(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_199AFC978(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v66 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = (a2 + 56);
  v13 = sub_199DF81AC();
  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_199DFAA7C();
    sub_199DF81AC();
    sub_199DF9FEC();
    v23 = sub_199DFAABC();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_199DFA99C() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    MEMORY[0x1EEE9AC00](v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_199AFD25C(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_199DFAA7C();
            sub_199DF81AC();
            sub_199DF9FEC();
            v41 = sub_199DFAABC();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_199DFA99C() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_199AFD024(v50, v54, v5, v2, v62);

  if (!v51)
  {

    MEMORY[0x19A8FA1A0](v50, -1, -1);
    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_199AD6AF4(v13);
    return v5;
  }

  result = MEMORY[0x19A8FA1A0](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_199AFCEE8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_199DFAA7C();
  sub_199DF9FEC();
  v6 = sub_199DFAABC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_199DFA99C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_199AFC188();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_199AFD480(v8);
  *v2 = v16;
  return v12;
}

unint64_t *sub_199AFD024(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_199AFD25C(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_199DFAA7C();
        sub_199DF81AC();
        sub_199DF9FEC();
        v19 = sub_199DFAABC();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_199DFA99C() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x1E69E7CD0];
    }

    return result;
  }
}

uint64_t sub_199AFD25C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F88, &qword_199E3C1D8);
  result = sub_199DFA6FC();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_199DFAA7C();
    sub_199DF81AC();
    sub_199DF9FEC();
    result = sub_199DFAABC();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_199AFD480(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_199DFA69C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_199DFAA7C();
        sub_199DF81AC();
        sub_199DF9FEC();
        v10 = sub_199DFAABC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void *sub_199AFD644(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_199DF81AC();
        goto LABEL_24;
      }

      v11 += 2;
      sub_199DF81AC();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_199AFD79C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x19A8F8040](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_199DF81AC();
      sub_199AFB834(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_199AFD834(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x19A8F8040](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_199AFB984(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_199AFD8A8(void *a1)
{
  v2 = v1;
  if (qword_1EAF71E88 != -1)
  {
    swift_once();
  }

  v4 = sub_199DF804C();
  __swift_project_value_buffer(v4, qword_1EAF73D00);
  v5 = sub_199DF802C();
  v6 = sub_199DFA33C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_199A75000, v5, v6, "Got picker delegate callback", v7, 2u);
    MEMORY[0x19A8FA1A0](v7, -1, -1);
  }

  v8 = [a1 identifier];
  v9 = sub_199DF9F8C();
  v11 = v10;

  v12 = *(v2 + OBJC_IVAR____TtCV10ContactsUI38LimitedLibraryButtonPickerViewInternal21ControllerCoordinator_completion);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF722B0, &unk_199E37150);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_199E37D40;
  *(v13 + 32) = v9;
  *(v13 + 40) = v11;
  v12();

  v14 = sub_199DF802C();
  v15 = sub_199DFA33C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_199A75000, v14, v15, "Completed the callback, exiting...", v16, 2u);
    MEMORY[0x19A8FA1A0](v16, -1, -1);
  }

  exit(0);
}

void sub_199AFDA78()
{
  v1 = v0;
  if (qword_1EAF71E88 != -1)
  {
    swift_once();
  }

  v2 = sub_199DF804C();
  __swift_project_value_buffer(v2, qword_1EAF73D00);
  v3 = sub_199DF802C();
  v4 = sub_199DFA33C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_199A75000, v3, v4, "Picker dismissed without picking contact", v5, 2u);
    MEMORY[0x19A8FA1A0](v5, -1, -1);
  }

  (*(v1 + OBJC_IVAR____TtCV10ContactsUI38LimitedLibraryButtonPickerViewInternal21ControllerCoordinator_completion))(MEMORY[0x1E69E7CC0]);
  v6 = sub_199DF802C();
  v7 = sub_199DFA33C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_199A75000, v6, v7, "Completed the callback with no IDs, exiting...", v8, 2u);
    MEMORY[0x19A8FA1A0](v8, -1, -1);
  }

  exit(0);
}

void sub_199AFDBE4(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_199AF5964(&qword_1EAF73D40, type metadata accessor for LimitedLibraryPickerViewModel, &protocol conformance descriptor for LimitedLibraryPickerViewModel);
  sub_199DF73AC();

  swift_beginAccess();
  sub_199DF81AC();
  v3 = sub_199DFA8DC();

  v4 = 2;
  if (v3 != 1)
  {
    v4 = 3;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1;
  }

  swift_getKeyPath();
  sub_199DF73AC();

  swift_beginAccess();
  if (!a2[10])
  {
    __break(1u);
    goto LABEL_11;
  }

  swift_getKeyPath();
  sub_199DF81AC();
  sub_199DF73AC();

  swift_beginAccess();
  if (!a2[8])
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_getKeyPath();
  sub_199DF81AC();
  sub_199DF73AC();

  swift_beginAccess();
  v6 = objc_allocWithZone(CNLimitedAccessContactPickerViewController);
  sub_199DF81AC();
  v7 = sub_199DF9F5C();

  v8 = sub_199DF9F5C();

  v9 = sub_199DF9F5C();

  v10 = [v6 initPickerWithContactsAvailableToAddForAppName:v7 bundleId:v8 searchText:v9 caption:v5];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73F80, &qword_199E3C1D0);
  sub_199DF911C();
  [v10 setDelegate_];

  v11 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  swift_getKeyPath();
  sub_199DF73AC();

  if (a2[8])
  {
    sub_199DF81AC();
    v12 = sub_199DF9F5C();

    v13 = [v11 fetchLimitedAccessContactIdentifiersForBundle_];

    v14 = sub_199DFA0CC();
    sub_199DF911C();
    v15 = sub_199AFD79C(v14);

    *(a2 + OBJC_IVAR____TtCV10ContactsUI38LimitedLibraryButtonPickerViewInternal21ControllerCoordinator_startingIdentifiers) = v15;

    return;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_199AFDFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_199AFE03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_199AFE0A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_199AFE10C(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
    v4 = sub_199DFA87C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_199A9C55C(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      goto LABEL_26;
    }

    v28 = v2;
    v6 = 0;
    v5 = v30;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x19A8F8520](v6, a1);
      }

      else
      {
        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 identifier];
      v10 = sub_199DF9F8C();
      v12 = v11;

      v30 = v5;
      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_199A9C55C((v13 > 1), v14 + 1, 1);
        v5 = v30;
      }

      ++v6;
      *(v5 + 16) = v14 + 1;
      v15 = v5 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
    }

    while (v4 != v6);
    v2 = v28;
  }

  v16 = sub_199AFD79C(v5);

  if (*(*(v2 + OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_startingIdentifiers) + 16) <= *(v16 + 16) >> 3)
  {
    v30 = v16;
    v18 = sub_199DF81AC();
    sub_199AFC84C(v18);
  }

  else
  {
    v17 = sub_199DF81AC();
    v16 = sub_199AFC978(v17, v16);
  }

  v19 = *(v2 + OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_completion);
  v20 = *(v16 + 16);
  if (!v20)
  {
    v21 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v21 = sub_199AB2EA8(*(v16 + 16), 0);
  v29 = sub_199AFD644(&v30, v21 + 4, v20, v16);
  v22 = v30;
  sub_199DF81AC();
  sub_199AD6AF4(v22);
  if (v29 == v20)
  {
LABEL_19:
    v19(v21);

    if (qword_1EAF71E88 != -1)
    {
      swift_once();
    }

    v23 = sub_199DF804C();
    __swift_project_value_buffer(v23, qword_1EAF73D00);
    sub_199DF81AC();
    v24 = sub_199DF802C();
    v25 = sub_199DFA33C();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = *(v16 + 16);

      *(v26 + 4) = v27;

      _os_log_impl(&dword_199A75000, v24, v25, "We have %ld new contacts", v26, 0xCu);
      MEMORY[0x19A8FA1A0](v26, -1, -1);

      exit(0);
    }

    swift_bridgeObjectRelease_n();
    exit(0);
  }

LABEL_26:
  __break(1u);
}

void sub_199AFE448()
{
  v1 = v0;
  if (qword_1EAF71E88 != -1)
  {
    swift_once();
  }

  v2 = sub_199DF804C();
  __swift_project_value_buffer(v2, qword_1EAF73D00);
  v3 = sub_199DF802C();
  v4 = sub_199DFA33C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_199A75000, v3, v4, "Access picker canceled", v5, 2u);
    MEMORY[0x19A8FA1A0](v5, -1, -1);
  }

  (*(v1 + OBJC_IVAR____TtCV10ContactsUI32LimitedLibraryPickerViewInternal21ControllerCoordinator_completion))(MEMORY[0x1E69E7CC0]);
  exit(0);
}

uint64_t objectdestroy_20Tm()
{
  v1 = type metadata accessor for LimitedLibraryPickerHostView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 20);
  v6 = type metadata accessor for _AppExtensionHostView.Configuration(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v7 = sub_199DF7FDC();
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73DA0, &qword_199E3BC78);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

double sub_199AFE7F8()
{
  v1 = *(type metadata accessor for LimitedLibraryPickerHostView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_199AF85FC(v2);
}

uint64_t sub_199AFE858(uint64_t a1)
{
  v4 = *(type metadata accessor for LimitedLibraryPickerHostView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_199AA7314;

  return sub_199AF8824(a1, v6, v7, v1 + v5);
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_199AFE9C8()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF86FE8);
  __swift_project_value_buffer(v0, qword_1EAF86FE8);
  return sub_199DF803C();
}

id sub_199AFEB74()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNVisualIdentityPickerView.Coordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_199AFEC4C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 40);
  v5 = type metadata accessor for CNVisualIdentityPickerView.Coordinator();
  v10 = *(v1 + 8);
  v11 = *(v1 + 24);
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtCV10ContactsUI26CNVisualIdentityPickerView11Coordinator_parent];
  *v7 = v3;
  *(v7 + 8) = v10;
  *(v7 + 24) = v11;
  *(v7 + 5) = v4;
  v12.receiver = v6;
  v12.super_class = v5;
  v8 = v3;
  sub_199DF81AC();

  result = objc_msgSendSuper2(&v12, sel_init);
  *a1 = result;
  return result;
}

void sub_199AFEDB4(uint64_t a1)
{
  sub_199AFF450();
  sub_199DF90BC();
  __break(1u);
}

unint64_t sub_199AFEDE0()
{
  result = qword_1EAF74058;
  if (!qword_1EAF74058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74058);
  }

  return result;
}

void sub_199AFEE34(id *a1, void *a2, void *a3)
{
  v5 = *a1;
  v6 = [*a1 identifier];
  v7 = sub_199DF9F8C();
  v9 = v8;

  v10 = [a2 identifier];
  v11 = sub_199DF9F8C();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_199DFA99C();

    if ((v15 & 1) == 0)
    {
      v16 = [v5 imageData];
      if (v16)
      {
        v17 = v16;
        v18 = sub_199DF71FC();
        v20 = v19;

        sub_199A9EF34(v18, v20);
        v21 = [v5 fullscreenImageData];
        if (v21)
        {
          v22 = v21;
          v47 = sub_199DF71FC();
          v24 = v23;
        }

        else
        {
          v47 = 0;
          v24 = 0xF000000000000000;
        }

        v25 = [v5 imageData];
        if (v25)
        {
          v26 = v25;
          v27 = sub_199DF71FC();
          v29 = v28;
        }

        else
        {
          v27 = 0;
          v29 = 0xF000000000000000;
        }

        v30 = [v5 thumbnailImageData];
        if (v30)
        {
          v31 = v30;
          v32 = sub_199DF71FC();
          v34 = v33;
        }

        else
        {
          v32 = 0;
          v34 = 0xF000000000000000;
        }

        sub_199AFF43C(v47, v24);
        [v5 cropRect];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;
        if (v29 >> 60 == 15)
        {
          v43 = 0;
        }

        else
        {
          v43 = sub_199DF71DC();
          sub_199A9EF20(v27, v29);
        }

        if (v34 >> 60 == 15)
        {
          v44 = 0;
        }

        else
        {
          v44 = sub_199DF71DC();
          sub_199A9EF20(v32, v34);
        }

        if (v24 >> 60 == 15)
        {
          v45 = 0;
        }

        else
        {
          v45 = sub_199DF71DC();
          sub_199A9EF20(v47, v24);
        }

        v46 = [objc_allocWithZone(CNPhotoPickerProviderItem) initWithImageData:v43 thumbnailImageData:v44 fullscreenImageData:v45 cropRect:{v36, v38, v40, v42}];

        [a3 insertNewItemIntoSuggestions_];
        sub_199A9EF20(v47, v24);
      }
    }
  }
}

id sub_199AFF150(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = objc_opt_self();
  v6 = a2;
  v7 = [v5 currentStyle];
  v8 = [objc_opt_self() contactsConfiguration];
  v9 = [objc_allocWithZone(CNPhotoPickerViewController) initWithContact:v6 style:v7 configuration:v8];

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74060, &qword_199E3C368);
    sub_199DF911C();
    [v9 setDelegate_];

    if (a3 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_199DFA87C())
    {
      v11 = 0;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x19A8F8520](v11, a3);
        }

        else
        {
          if (v11 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v12 = *(a3 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v22 = v12;
        sub_199AFEE34(&v22, v6, v9);

        ++v11;
        if (v14 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

LABEL_22:
    result = [objc_opt_self() navigationControllerForPicker_];
    if (result)
    {
      v21 = result;

      return v21;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1EAF71E90 != -1)
    {
      swift_once();
    }

    v15 = sub_199DF804C();
    __swift_project_value_buffer(v15, qword_1EAF86FE8);
    v16 = sub_199DF802C();
    v17 = sub_199DFA31C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_199A75000, v16, v17, "Failed to create visual identity picker for duplicate candidate", v18, 2u);
      MEMORY[0x19A8FA1A0](v18, -1, -1);
    }

    v19 = objc_allocWithZone(MEMORY[0x1E69DCCD8]);

    return [v19 init];
  }

  return result;
}

uint64_t sub_199AFF43C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_199AA7630(result, a2);
  }

  return result;
}

unint64_t sub_199AFF450()
{
  result = qword_1EAF74068;
  if (!qword_1EAF74068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74068);
  }

  return result;
}

id sub_199AFF4A4()
{
  v1 = [objc_allocWithZone(CNPRUISIncomingCallPosterContext) initWithContact:*(v0 + 32) showName:1];
  v2 = [objc_allocWithZone(CNPRUISPosterEditingViewController) initWithExistingConfiguration:*(v0 + 24) context:v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740C0, &qword_199E3C498);
  sub_199DF911C();
  [v2 setDelegate_];

  return v2;
}

uint64_t sub_199AFF568@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199AFFB0C(v2, v5);
  v6 = type metadata accessor for CNExistingWallpaperEditorCoordinator(0);
  v7 = objc_allocWithZone(v6);
  sub_199AFFB0C(v5, v7 + OBJC_IVAR____TtC10ContactsUI36CNExistingWallpaperEditorCoordinator_editor);
  v10.receiver = v7;
  v10.super_class = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  result = sub_199AFFB70(v5);
  *a2 = v8;
  return result;
}

void sub_199AFF714(uint64_t a1)
{
  sub_199AFFBCC(&qword_1EAF740C8, &unk_199E3C420);
  sub_199DF90BC();
  __break(1u);
}

id sub_199AFF800()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CNExistingWallpaperEditorCoordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_199AFF870(uint64_t a1)
{
  result = type metadata accessor for CNExistingWallpaperEditorView(319);
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

void sub_199AFF948(uint64_t a1)
{
  sub_199AFFA74(319, &qword_1EAF74098, &unk_1EAF740A0, &unk_199E3C3C0, MEMORY[0x1E6981948]);
  if (v1 <= 0x3F)
  {
    sub_199A7A02C(319, &qword_1EAF71048, off_1E74DEC80);
    if (v2 <= 0x3F)
    {
      sub_199A7A02C(319, &qword_1ED615BF0, 0x1E695CD58);
      if (v3 <= 0x3F)
      {
        sub_199AFFA74(319, &qword_1EAF76090, &qword_1EAF740B0, qword_199E3A9B0, MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199AFFA74(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_199AFFB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CNExistingWallpaperEditorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199AFFB70(uint64_t a1)
{
  v2 = type metadata accessor for CNExistingWallpaperEditorView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_199AFFBCC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNExistingWallpaperEditorView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_199AFFC10(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CNExistingWallpaperEditorView(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = OBJC_IVAR____TtC10ContactsUI36CNExistingWallpaperEditorCoordinator_editor;
  sub_199AFFB0C(v2 + OBJC_IVAR____TtC10ContactsUI36CNExistingWallpaperEditorCoordinator_editor, v6);
  if (a1)
  {
    v8 = v6[1];
    v9 = v6[2];
    v18[1] = *v6;
    v18[2] = v8;
    v18[3] = v9;
    v18[0] = a1;
    v10 = v9;
    v11 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF740D0, &unk_199E3C4A0);
    sub_199DF997C();
    sub_199AFFB70(v6);

    sub_199AFFB0C(v2 + v7, v6);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740B0, qword_199E3A9B0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  sub_199AC3500((v18 - v13));
  sub_199AFFB70(v6);
  v15 = sub_199DF892C();
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  MEMORY[0x19A8F7740](v12, v16);
  sub_199DF891C();
  sub_199DF997C();
  return sub_199AFFE24(v14);
}

uint64_t sub_199AFFE24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF740B0, qword_199E3A9B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_199AFFEA0(uint64_t *a1, int a2)
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

uint64_t sub_199AFFEE8(uint64_t result, int a2, int a3)
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

id sub_199AFFF40()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = [objc_allocWithZone(CNAvatarViewController) initWithSettings_];
  [v3 setAllowStaleRendering_];
  return v3;
}

void sub_199B00070(uint64_t a1)
{
  sub_199B00098();
  sub_199DF90BC();
  __break(1u);
}

unint64_t sub_199B00098()
{
  result = qword_1EAF71B28;
  if (!qword_1EAF71B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF71B28);
  }

  return result;
}

id sub_199B000EC(void *a1, double a2, uint64_t a3, void *a4, char a5)
{
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_199E37DF0;
  v11 = [a1 view];
  v12 = [v11 widthAnchor];

  v13 = [v12 constraintLessThanOrEqualToConstant_];
  *(v10 + 32) = v13;
  sub_199A7A02C(0, &qword_1EAF71D18, 0x1E696ACD8);
  v14 = sub_199DFA0BC();

  [v9 activateConstraints_];

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_199E37DF0;
  *(v15 + 32) = a4;
  sub_199A7A02C(0, &qword_1ED615BF0, 0x1E695CD58);
  v16 = a4;
  v17 = sub_199DFA0BC();

  [a1 setContacts_];

  return [a1 setAllowStaleRendering_];
}

uint64_t sub_199B002C8()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF740E0);
  __swift_project_value_buffer(v0, qword_1EAF740E0);
  return sub_199DF803C();
}

double PosterOrAvatarView.init(forContact:blur:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = 0;
  PosterOrAvatarView.init(forContact:blur:alignment:)(a1, a2, a3, a4, a5 & 1, &v12, &v13);
  result = *&v13;
  v8 = v14;
  v9 = v15;
  v10 = v16;
  v11 = v17;
  *a6 = v13;
  *(a6 + 16) = v8;
  *(a6 + 24) = v9;
  *(a6 + 32) = v10;
  *(a6 + 40) = v11;
  return result;
}

void PosterOrAvatarView.init(forContact:blur:alignment:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a6;
  if (qword_1EAF71E98 != -1)
  {
    swift_once();
  }

  v14 = sub_199DF804C();
  __swift_project_value_buffer(v14, qword_1EAF740E0);
  v15 = a1;
  v16 = sub_199DF802C();
  v17 = sub_199DFA30C();

  if (os_log_type_enabled(v16, v17))
  {
    v37 = a3;
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v18 = 136315651;
    v19 = [v15 hasBeenPersisted];
    v20 = v19 == 0;
    if (v19)
    {
      v21 = 0x6574736973726570;
    }

    else
    {
      v21 = 0x737265702D6E6F6ELL;
    }

    v38 = a5;
    if (v20)
    {
      v22 = 0xED00006465747369;
    }

    else
    {
      v22 = 0xE900000000000064;
    }

    v36 = a2;
    v23 = a4;
    v24 = sub_199A9BE90(v21, v22, &v39);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2080;
    v25 = [v15 identifier];
    v26 = sub_199DF9F8C();
    v27 = v13;
    v29 = v28;

    v30 = v26;
    a4 = v23;
    a2 = v36;
    v31 = sub_199A9BE90(v30, v29, &v39);
    v13 = v27;

    *(v18 + 14) = v31;
    a5 = v38;
    *(v18 + 22) = 2113;
    *(v18 + 24) = v15;
    *v34 = v15;
    v32 = v15;
    _os_log_impl(&dword_199A75000, v16, v17, "Init PosterOrAvatarView with %s contact identifier %s, %{private}@", v18, 0x20u);
    sub_199AD08E4(v34);
    MEMORY[0x19A8FA1A0](v34, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x19A8FA1A0](v35, -1, -1);
    v33 = v18;
    a3 = v37;
    MEMORY[0x19A8FA1A0](v33, -1, -1);
  }

  *a7 = a2;
  *(a7 + 8) = a3;
  *(a7 + 16) = a4;
  *(a7 + 24) = a5 & 1;
  *(a7 + 32) = v15;
  *(a7 + 40) = v13;
}

id sub_199B00660()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_199E37DF0;
  v2 = objc_opt_self();
  *(v1 + 32) = [v2 descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790, &qword_199E38F80);
  v3 = sub_199DFA0BC();

  LODWORD(v1) = [v0 areKeysAvailable_];

  if (!v1)
  {
    return 0;
  }

  result = [v2 abbreviatedStringFromContact:v0 trimmingWhitespace:1];
  if (result)
  {
    v5 = result;
    v6 = sub_199DF9F8C();

    return v6;
  }

  return result;
}

uint64_t View.onBackgroundConfigurationChange(onChange:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x19A8F73F0](v4, a3, &type metadata for ContactCardBackgroundConfigurationChangeModifier);
}

uint64_t sub_199B007BC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_199DF9DFC();
  v18 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_199DF9E1C();
  v9 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_199A7A02C(0, &qword_1EAF71D20, 0x1E69E9610);
  v13 = sub_199DFA39C();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v12;
  aBlock[4] = sub_199B02854;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_9;
  v15 = _Block_copy(aBlock);

  sub_199DF9E0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_199B02A50(&qword_1EAF71CE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150, &qword_199E38F20);
  sub_199AA0B90(&qword_1EAF71CD0, &unk_1EAF74150, &qword_199E38F20, MEMORY[0x1E69E6328]);
  sub_199DFA68C();
  MEMORY[0x19A8F8190](0, v11, v8, v15);
  _Block_release(v15);

  (*(v18 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v17);
}

uint64_t sub_199B00ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74140, &qword_199E3C8B0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74148, &qword_199E3C8B8) + 36));
  *v9 = sub_199B0284C;
  v9[1] = v7;
}

void *sub_199B00BAC(void *a1, void *(*a2)(uint64_t *__return_ptr, __n128))
{

  result = (a2)(&v6, v4);
  *a1 = v6;
  return result;
}

void sub_199B00C08(uint64_t a1)
{
  v1 = sub_199DF971C();
  type metadata accessor for ContactCardBackgroundConfiguration(0);
  v2 = swift_allocObject();
  v2[3] = 0;
  v2[4] = 0;
  sub_199DF73DC();
  v2[2] = v1;

  sub_199B01738(0);

  qword_1EAF740F8 = v2;
}

void *ContactCardBackgroundConfiguration.__allocating_init(foregroundColor:wallpaper:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[4] = 0;
  sub_199DF73DC();
  v4[2] = a1;

  sub_199B01738(a2);

  return v4;
}

uint64_t sub_199B00CF0@<X0>(void *a1@<X8>)
{
  if (qword_1EAF71EA0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EAF740F8;
}

uint64_t sub_199B00D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_199B02A50(&qword_1EAF74188, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_199B00DF4()
{
  sub_199B027F8();
  sub_199DF8C9C();
  return v1;
}

uint64_t sub_199B00E30@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  *a2 = *(v3 + 16);
}

uint64_t sub_199B00F08()
{
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();
}

double sub_199B00FAC(uint64_t a1)
{

  v3 = sub_199DF96BC();

  if (v3)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
    sub_199DF739C();
  }

  return result;
}

void sub_199B01100(void *a1)
{
  v2 = v1;
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v4 = *(v1 + 24);
  if (v4)
  {
    if (a1)
    {
      sub_199A7A02C(0, &qword_1EAF74160, 0x1E695CFC8);
      v5 = v4;
      v6 = a1;
      v7 = sub_199DFA4EC();

      if (v7)
      {
        return;
      }
    }
  }

  else if (!a1)
  {
    return;
  }

  swift_getKeyPath();
  sub_199DF73AC();

  v9 = *(v2 + 24);
  if (v9)
  {
    v10 = v9;
    v11 = sub_199B0126C();
  }

  else
  {
    v11 = 0;
  }

  sub_199B01A80(v11, v8);
}

id sub_199B0126C()
{
  v28[1] = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = [v0 posterArchiveData];
  v3 = sub_199DF71FC();
  v5 = v4;

  v6 = sub_199DF71DC();
  sub_199A9EF34(v3, v5);
  v28[0] = 0;
  v7 = [v1 unarchiveCNConfigurationFromData:v6 error:v28];

  v8 = v28[0];
  if (v7)
  {
    v9 = objc_allocWithZone(CNPRSPosterConfigurationAttributes);
    v10 = v8;
    v11 = [v9 initWithCNConfiguration_];
    v12 = [v11 extensionIdentifier];
    if (v12)
    {
      v13 = v12;
      v14 = sub_199DF9F8C();
      v16 = v15;

      v17 = v14 == 0xD000000000000028 && 0x8000000199E45740 == v16;
      if (v17 || (sub_199DFA99C() & 1) != 0)
      {

        v18 = MEMORY[0x1E695CCE0];
LABEL_9:
        v19 = *v18;

        return v19;
      }

      v26 = v14 == 0xD00000000000002CLL && 0x8000000199E456C0 == v16;
      if (v26 || (sub_199DFA99C() & 1) != 0)
      {

        v18 = MEMORY[0x1E695CCE8];
        goto LABEL_9;
      }

      if (v14 == 0xD00000000000002ELL && 0x8000000199E45770 == v16)
      {

LABEL_24:
        v18 = MEMORY[0x1E695CCF0];
        goto LABEL_9;
      }

      v27 = sub_199DFA99C();

      if (v27)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v21 = v28[0];
    v22 = sub_199DF717C();

    swift_willThrow();
    if (qword_1EAF71E98 != -1)
    {
      swift_once();
    }

    v23 = sub_199DF804C();
    __swift_project_value_buffer(v23, qword_1EAF740E0);
    v7 = sub_199DF802C();
    v24 = sub_199DFA33C();
    if (os_log_type_enabled(v7, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_199A75000, v7, v24, "Could not get poster attributes for wallpaper", v25, 2u);
      MEMORY[0x19A8FA1A0](v25, -1, -1);
    }
  }

  return 0;
}

id sub_199B015A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_199B01660(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_199B01738(v1);
}

void *sub_199B01690()
{
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void sub_199B01738(void *a1)
{
  v3 = *(v1 + 24);
  if (!v3)
  {
    if (!a1)
    {
      v9 = 0;
      v5 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
    sub_199DF739C();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_199A7A02C(0, &qword_1EAF74160, 0x1E695CFC8);
  v4 = v3;
  v5 = a1;
  v6 = sub_199DFA4EC();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v1 + 24);
LABEL_8:
  *(v1 + 24) = a1;
  v8 = v5;
  sub_199B01100(v9);
}

id sub_199B018F0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_199B019A8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_199B01A80(v1, v3);
}

void *sub_199B019D8()
{
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void sub_199B01A80(void *a1, uint64_t a2)
{
  if (*(v2 + 32))
  {
    if (!a1)
    {
      goto LABEL_10;
    }

    v4 = sub_199DF9F8C();
    v6 = v5;
    if (v4 != sub_199DF9F8C() || v6 != v7)
    {
      v9 = sub_199DFA99C();

      if (v9)
      {
        goto LABEL_12;
      }

LABEL_10:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
      sub_199DF739C();

      return;
    }
  }

  else if (a1)
  {
    goto LABEL_10;
  }

LABEL_12:
  v11 = *(v2 + 32);
  *(v2 + 32) = a1;
}

void *ContactCardBackgroundConfiguration.init(foregroundColor:wallpaper:)(uint64_t a1, void *a2)
{
  v2[3] = 0;
  v2[4] = 0;
  sub_199DF73DC();
  v2[2] = a1;

  sub_199B01738(a2);

  return v2;
}

uint64_t ContactCardBackgroundConfiguration.deinit()
{

  v1 = OBJC_IVAR____TtC10ContactsUI34ContactCardBackgroundConfiguration___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ContactCardBackgroundConfiguration.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC10ContactsUI34ContactCardBackgroundConfiguration___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContactCardBackgroundConfiguration(uint64_t a1)
{
  result = qword_1EAF74120;
  if (!qword_1EAF74120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_199B01E0C(void *a1, void *a2)
{
  if (![a1 hasBeenPersisted] || !objc_msgSend(a2, sel_hasBeenPersisted))
  {
    return [a1 isEqualIgnoringIdentifiers_];
  }

  v4 = [a1 identifier];
  v5 = sub_199DF9F8C();
  v7 = v6;

  v8 = [a2 identifier];
  v9 = sub_199DF9F8C();
  v11 = v10;

  if (v5 == v9 && v7 == v11)
  {
  }

  else
  {
    v13 = sub_199DFA99C();

    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }
  }

  v15 = *MEMORY[0x1E695C420];
  if ([a1 isKeyAvailable_] && objc_msgSend(a2, sel_isKeyAvailable_, v15))
  {
    v16 = [a1 wallpaper];
    v17 = [a2 wallpaper];
    v18 = v17;
    if (v16)
    {
      if (v17)
      {
        sub_199A7A02C(0, &qword_1EAF74160, 0x1E695CFC8);
        v19 = sub_199DFA4EC();

        return v19 & 1;
      }

      else
      {

        return 0;
      }
    }

    if (v17)
    {

      return 0;
    }

    return 1;
  }

  v20 = *MEMORY[0x1E695C270];
  if ([a1 isKeyAvailable_] && objc_msgSend(a2, sel_isKeyAvailable_, v20))
  {
    v21 = [a1 imageData];
    if (v21)
    {
      v22 = v21;
      v23 = sub_199DF71FC();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0xF000000000000000;
    }

    v39 = [a2 imageData];
    if (v39)
    {
      v40 = v39;
      v41 = sub_199DF71FC();
      v43 = v42;

      if (v25 >> 60 != 15)
      {
        if (v43 >> 60 != 15)
        {
          sub_199AFF43C(v23, v25);
          sub_199AFF43C(v41, v43);
          v44 = sub_199B48F70(v23, v25, v41, v43);
          sub_199A9EF20(v41, v43);
          sub_199A9EF20(v41, v43);
          sub_199A9EF20(v23, v25);
          sub_199A9EF20(v23, v25);
          return v44;
        }

        goto LABEL_47;
      }

      if (v43 >> 60 != 15)
      {
LABEL_47:
        sub_199A9EF20(v23, v25);
        sub_199A9EF20(v41, v43);
        return 0;
      }
    }

    else if (v25 >> 60 != 15)
    {
      v41 = 0;
      v43 = 0xF000000000000000;
      goto LABEL_47;
    }

    sub_199A9EF20(v23, v25);
    return 1;
  }

  v26 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_199E37DF0;
  *(v27 + 32) = v26;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790, &qword_199E38F80);
  v28 = sub_199DFA0BC();

  v29 = [a1 areKeysAvailable_];

  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_199E37DF0;
  *(v30 + 32) = v26;
  swift_unknownObjectRetain();
  v31 = sub_199DFA0BC();

  v32 = [a2 areKeysAvailable_];

  if (v29 != v32)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v33 = sub_199B00660();
  v35 = v34;
  v36 = sub_199B00660();
  v38 = v37;
  if (!v35)
  {
    swift_unknownObjectRelease();
    if (!v38)
    {
      return 1;
    }

LABEL_41:

    return 0;
  }

  if (!v37)
  {
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  if (v33 == v36 && v35 == v37)
  {

    swift_unknownObjectRelease();
    return 1;
  }

  else
  {
    v45 = sub_199DFA99C();

    swift_unknownObjectRelease();
    return v45 & 1;
  }
}

uint64_t _s10ContactsUI34ContactCardBackgroundConfigurationC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_199B02A50(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  swift_getKeyPath();

  sub_199DF73AC();

  v4 = sub_199DF96BC();

  if (v4)
  {
    swift_getKeyPath();
    sub_199DF73AC();

    v5 = *(a1 + 24);
    swift_getKeyPath();
    v6 = v5;
    sub_199DF73AC();

    v7 = *(a2 + 24);
    v8 = v7 == 0;
    if (v5)
    {
      if (v7)
      {
        sub_199A7A02C(0, &qword_1EAF74160, 0x1E695CFC8);
        v9 = v7;
        v8 = sub_199DFA4EC();
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_199B02578(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_199B025C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199B02624(uint64_t a1)
{
  result = sub_199DF73EC();
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

unint64_t sub_199B02768()
{
  result = qword_1EAF74130;
  if (!qword_1EAF74130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74130);
  }

  return result;
}

unint64_t sub_199B027F8()
{
  result = qword_1EAF74780;
  if (!qword_1EAF74780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74780);
  }

  return result;
}

void sub_199B0288C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

void sub_199B028C4()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

void sub_199B02900()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + 24);
  *(v2 + 24) = v1;
  v4 = v1;
  sub_199B01100(v3);
}

unint64_t sub_199B0296C()
{
  result = qword_1EAF74168;
  if (!qword_1EAF74168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74148, &qword_199E3C8B8);
    sub_199AA0B90(&qword_1EAF74170, &qword_1EAF74140, &qword_199E3C8B0, MEMORY[0x1E697FDF8]);
    sub_199AA0B90(&qword_1EAF74178, &qword_1EAF74180, qword_199E3C928, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74168);
  }

  return result;
}

uint64_t sub_199B02A50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_199B02A98()
{
  v0 = sub_199DF9F4C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_199DF9EEC();
  v4 = sub_199AA8A84(v3, MEMORY[0x1E69E7CC0]);
  v6 = v5;
  result = (*(v1 + 8))(v3, v0);
  qword_1EAF74190 = v4;
  *algn_1EAF74198 = v6;
  return result;
}

void sub_199B02B9C(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = sub_199DF770C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_199DF7CBC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_199DF7D3C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_199DF7D2C();
  sub_199DF787C();
  swift_allocObject();
  v29 = a1;
  sub_199DF786C();
  v12 = sub_199DF785C();
  if (!*(v12 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v13 = *(v8 + 16);
  v28 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13(v10, v12 + v28, v7);

  v14 = sub_199DF7CAC();
  v27 = *(v8 + 8);
  v27(v10, v7);
  if (!*(v14 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v26 = v13;
  (*(v4 + 16))(v6, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v3);

  v15 = sub_199DF76FC();
  (*(v4 + 8))(v6, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_199E37DF0;
  *(v16 + 32) = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74790, &qword_199E38F80);
  v17 = sub_199DFA0BC();

  v18 = v29;
  LOBYTE(v16) = [v29 areKeysAvailable_];

  v19 = v30;
  *v30 = v16;
  v20 = sub_199DF785C();
  if (*(v20 + 16))
  {
    v26(v10, v20 + v28, v7);

    v21 = sub_199B02F90();
    v23 = v22;
    v27(v10, v7);
    *(v19 + 1) = v21;
    *(v19 + 2) = v23;
    v24 = type metadata accessor for CardHeaderNameModel(0);
    sub_199B032FC(v15, &v19[*(v24 + 24)]);

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_199B02F90()
{
  v1 = sub_199DF7C6C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_199DF784C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_199DF770C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v0;
  result = sub_199DF7CAC();
  if (!*(result + 16))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v26 = v6;
  v27 = v5;
  v28 = v4;
  v29 = v2;
  v30 = v1;
  v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v15 = *(v10 + 16);
  v15(v12, result + v14, v9);

  v16 = sub_199DF76FC();
  v17 = *(v10 + 8);
  v17(v12, v9);
  v18 = *(v16 + 16);

  if (!v18)
  {
    return 0;
  }

  result = sub_199DF7CAC();
  if (!*(result + 16))
  {
    goto LABEL_9;
  }

  v15(v12, result + v14, v9);

  v19 = sub_199DF76FC();
  result = (v17)(v12, v9);
  if (*(v19 + 16))
  {
    v21 = v26;
    v20 = v27;
    (*(v26 + 16))(v8, v19 + ((*(v21 + 80) + 32) & ~*(v21 + 80)), v27);

    sub_199DF783C();
    (*(v21 + 8))(v8, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF741B0, qword_199E3C9C8);
    v22 = v28;
    v23 = v30;
    swift_dynamicCast();
    v24 = sub_199DF7C4C();
    (*(v29 + 8))(v22, v23);
    return v24;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_199B032FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_199DF6FFC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v91 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF741A0, &qword_199E3C9B8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v80 = (v72 - v8);
  v90 = sub_199DF784C();
  v9 = *(v90 - 1);
  MEMORY[0x1EEE9AC00](v90);
  v88 = v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_199DF7C6C();
  v11 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v72 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF741A8, &qword_199E3C9C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v72 - v20;
  v22 = sub_199DF6FAC();
  MEMORY[0x1EEE9AC00](v22);
  v79 = v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v72 - v25;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v93 = v72 - v31;
  v32 = *(a1 + 16);
  if (v32 < 2)
  {
    v50 = *(v29 + 56);

    return v50(a2, 1, 1, v30);
  }

  v74 = v7;
  v81 = v21;
  v82 = v18;
  v75 = v29;
  v83 = v28;
  v84 = v6;
  v73 = a2;
  v33 = v11;
  v34 = v32 - 1;
  v97 = MEMORY[0x1E69E7CC0];
  v35 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  sub_199DF81AC();
  sub_199A9C664(0, v34, 0);
  v36 = v97;
  v86 = *(v9 + 16);
  v87 = (v9 + 16);
  v37 = a1;
  v38 = (v9 + 8);
  i = v33;
  v92 = v33 + 32;
  v39 = *(v9 + 72);
  v72[1] = v37;
  *&v85 = v39;
  v40 = v37 + v39 + v35;
  v41 = v95;
  do
  {
    v42 = v88;
    v43 = v90;
    (v86)(v88, v40, v90);
    sub_199DF783C();
    (*v38)(v42, v43);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF741B0, qword_199E3C9C8);
    swift_dynamicCast();
    v97 = v36;
    v45 = *(v36 + 16);
    v44 = *(v36 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_199A9C664((v44 > 1), v45 + 1, 1);
      v41 = v95;
      v36 = v97;
    }

    *(v36 + 16) = v45 + 1;
    v46 = v36 + ((*(i + 80) + 32) & ~*(i + 80));
    v47 = *(i + 72);
    v48 = v46 + v47 * v45;
    v49 = *(i + 32);
    v49(v48, v15, v41);
    v40 += v85;
    --v34;
  }

  while (v34);
  v78 = v47;
  v77 = v46;
  sub_199DF6F9C();
  v51 = 0;
  v76 = (i + 16);
  v52 = *(v36 + 16);
  v90 = (v74 + 56);
  v88 = (v74 + 48);
  result = v75;
  v86 = (i + 8);
  v87 = (v75 + 8);
  v85 = xmmword_199E37DF0;
  v55 = v83;
  v54 = v84;
  v56 = v82;
  for (i = v52; ; v52 = i)
  {
    if (v51 == v52)
    {
      v57 = 1;
      v51 = v52;
      goto LABEL_17;
    }

    if ((v51 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v51 >= *(v36 + 16))
    {
      goto LABEL_27;
    }

    v58 = v77 + v51 * v78;
    v59 = *(v54 + 48);
    v60 = v80;
    *v80 = v51;
    (*v76)(v60 + v59, v58, v95);
    sub_199AB7794(v60, v56, &qword_1EAF741A0, &qword_199E3C9B8);
    v57 = 0;
    ++v51;
LABEL_17:
    (*v90)(v56, v57, 1, v54);
    v61 = v81;
    sub_199AB7794(v56, v81, &qword_1EAF741A8, &qword_199E3C9C0);
    if ((*v88)(v61, 1, v54) == 1)
    {

      v71 = v73;
      (*(v75 + 32))(v73, v93, v55);
      return (*(v75 + 56))(v71, 0, 1, v55);
    }

    v62 = *v61;
    v49(v94, v61 + *(v54 + 48), v95);
    sub_199DF7C4C();
    sub_199DF6FEC();
    sub_199DF6FBC();
    v63 = sub_199DF7C5C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
    v64 = swift_allocObject();
    *(v64 + 16) = v85;
    *(v64 + 32) = swift_getKeyPath();
    v65 = sub_199B03F0C(v63, v64);

    v66 = objc_opt_self();
    if (v65)
    {
      v67 = [v66 italicSystemFontOfSize_];
    }

    else
    {
      v67 = [v66 systemFontOfSize_];
    }

    v96 = v67;
    sub_199B054CC();
    sub_199DF6FCC();
    v55 = v83;
    sub_199B05D7C(&qword_1EAF741C0, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    sub_199DF6F8C();
    if (v62 >= *(v36 + 16) - 1)
    {
      (*v87)(v26, v55);
    }

    else
    {
      v68 = v26;
      if (qword_1EAF71EA8 != -1)
      {
        swift_once();
      }

      sub_199DF81AC();
      sub_199DF6FEC();
      v69 = v79;
      sub_199DF6FBC();
      sub_199DF6F8C();
      v70 = *v87;
      (*v87)(v69, v55);
      v26 = v68;
      v70(v68, v55);
    }

    result = (*v86)(v94, v95);
    v54 = v84;
    v56 = v82;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_199B03CD8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 nickname];
  v4 = sub_199DF9F8C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

uint64_t sub_199B03D30(uint64_t result, uint64_t a2)
{
  v12 = result;
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
LABEL_12:
    v11 = 0;
    return v11 & 1;
  }

  if (!v2 || result == a2)
  {
    v11 = 1;
    return v11 & 1;
  }

  v3 = 0;
  while (v2)
  {
    v14 = v3;
    v15 = v2;
    v4 = *(v12 + v3 + 32);
    v5 = *(v12 + v3 + 40);
    v6 = *(v12 + v3 + 48);
    v8 = *(a2 + v3 + 32);
    v7 = *(a2 + v3 + 40);
    v9 = *(a2 + v3 + 48);
    sub_199ACE3F8(v4, v5, v6);
    sub_199DF81AC();
    v10 = v4;

    sub_199ACE3F8(v8, v7, v9);
    sub_199DF81AC();

    if ((sub_199DF936C() & 1) == 0)
    {
      sub_199ACE3E8(v8, v7, v9);

      sub_199ACE3E8(v4, v5, v6);

      goto LABEL_12;
    }

    v11 = sub_199DF97FC();
    sub_199ACE3E8(v8, v7, v9);

    sub_199ACE3E8(v10, v5, v6);

    if (v11)
    {
      v2 = v15 - 1;
      v3 = v14 + 40;
      if (v15 != 1)
      {
        continue;
      }
    }

    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_199B03F0C(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_199DFA87C();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF741C8, qword_199E3D1A0);
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_199DFA87C();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x19A8F8520](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          MEMORY[0x19A8F8520](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      v15 = sub_199DF9EDC();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

void sub_199B040FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    sub_199B05520();
    do
    {
      v6 = *v3++;
      v5 = v6;
      v7 = *v4++;
      v8 = v5;
      v9 = v7;
      v10 = sub_199DFA4EC();

      if ((v10 & 1) == 0)
      {
        break;
      }

      --v2;
    }

    while (v2);
  }
}

uint64_t sub_199B041C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74228, &qword_199E3CAB8);
  MEMORY[0x1EEE9AC00](v97);
  v90 = &v77 - v3;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74230, &qword_199E3CAC0);
  MEMORY[0x1EEE9AC00](v95);
  v91 = &v77 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74238, &qword_199E3CAC8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v98 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v100 = &v77 - v8;
  v9 = type metadata accessor for ContactCardHeaderNameView(0);
  v10 = v9 - 8;
  v86 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v87 = v11;
  v88 = &v77 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74240, &qword_199E3CAD0);
  v93 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v89 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72BF0, &unk_199E3CA10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v77 - v15;
  v17 = sub_199DF6FAC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74248, &qword_199E3CAD8);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v94 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v77 - v27;
  v29 = *(v10 + 36);
  v99 = a1;
  v30 = (a1 + v29);
  v31 = *(type metadata accessor for CardHeaderNameModel(0) + 24);
  v92 = v30;
  sub_199B05880(&v30[v31], v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_199A79A04(v16, &unk_1EAF72BF0, &unk_199E3CA10);
    (*(v93 + 56))(v28, 1, 1, v12);
  }

  else
  {
    v79 = v18;
    v32 = *(v18 + 32);
    v84 = v23;
    v85 = v17;
    v32(v23, v16, v17);
    (*(v18 + 16))(v20, v23, v17);
    v33 = sub_199DF93BC();
    v35 = v34;
    v83 = v12;
    v37 = v36;
    sub_199DF920C();
    v38 = sub_199DF939C();
    v77 = v39;
    v78 = v38;
    v40 = v99;
    v42 = v41;

    sub_199ACE3E8(v33, v35, v37 & 1);

    v43 = sub_199AC3764(*v40, *(v40 + 8));
    swift_getKeyPath();
    *&v109 = v43;
    sub_199B05D7C(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
    sub_199DF73AC();

    v45 = v77;
    v44 = v78;
    v46 = sub_199DF933C();
    v81 = v47;
    v82 = v46;
    LOBYTE(v33) = v48;
    v80 = v49;

    sub_199ACE3E8(v44, v45, v42 & 1);

    KeyPath = swift_getKeyPath();
    sub_199DF9B5C();
    sub_199DF897C();
    *&v106[55] = v125;
    *&v106[71] = v126;
    *&v106[87] = v127;
    *&v106[103] = v128;
    *&v106[7] = v122;
    *&v106[23] = v123;
    v51 = v33 & 1;
    v107 = v33 & 1;
    *&v106[39] = v124;
    v52 = *(v40 + 48);
    LOBYTE(v109) = *(v40 + 40);
    *(&v109 + 1) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
    sub_199DF984C();
    if (v101)
    {
      v53 = 4;
    }

    else
    {
      v53 = 1;
    }

    v54 = swift_getKeyPath();
    *(&v103[4] + 9) = *&v106[64];
    *(&v103[5] + 9) = *&v106[80];
    *(&v103[6] + 9) = *&v106[96];
    *(v103 + 9) = *v106;
    *(&v103[1] + 9) = *&v106[16];
    *(&v103[2] + 9) = *&v106[32];
    v108 = 0;
    *&v101 = v82;
    *(&v101 + 1) = v81;
    LOBYTE(v102) = v51;
    *(&v102 + 1) = v80;
    *&v103[0] = KeyPath;
    BYTE8(v103[0]) = 1;
    *(&v103[3] + 9) = *&v106[48];
    *(&v103[7] + 1) = *&v106[111];
    *&v104 = v54;
    *(&v104 + 1) = v53;
    v105 = 0;
    v55 = v88;
    sub_199B05DC4(v40, v88);
    v56 = (*(v86 + 80) + 16) & ~*(v86 + 80);
    v57 = swift_allocObject();
    sub_199B05E28(v55, v57 + v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74310, &qword_199E3CBD8);
    sub_199B05EEC();
    v58 = v89;
    sub_199DF949C();

    v117 = v103[6];
    v118 = v103[7];
    v119 = v104;
    LOBYTE(v120) = v105;
    v113 = v103[2];
    v114 = v103[3];
    v115 = v103[4];
    v116 = v103[5];
    v109 = v101;
    v110 = v102;
    v111 = v103[0];
    v112 = v103[1];
    sub_199A79A04(&v109, &qword_1EAF74310, &qword_199E3CBD8);
    (*(v79 + 8))(v84, v85);
    v59 = v93;
    v60 = v83;
    (*(v93 + 32))(v28, v58, v83);
    (*(v59 + 56))(v28, 0, 1, v60);
  }

  if (*v92 == 1)
  {
    sub_199B04DC0(&v109);
    v61 = v120;
    v62 = v91;
    *(v91 + 160) = v119;
    *(v62 + 176) = v61;
    *(v62 + 192) = v121;
    v63 = v116;
    *(v62 + 96) = v115;
    *(v62 + 112) = v63;
    v64 = v118;
    *(v62 + 128) = v117;
    *(v62 + 144) = v64;
    v65 = v112;
    *(v62 + 32) = v111;
    *(v62 + 48) = v65;
    v66 = v114;
    *(v62 + 64) = v113;
    *(v62 + 80) = v66;
    v67 = v110;
    *v62 = v109;
    *(v62 + 16) = v67;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74250, &qword_199E3CAE0);
    sub_199B05FD0(&qword_1EAF74258, &qword_1EAF74250, &qword_199E3CAE0, sub_199B058F0);
    sub_199B05FD0(&qword_1EAF742C0, &qword_1EAF74228, &qword_199E3CAB8, sub_199B05B18);
    sub_199DF8EDC();
  }

  else
  {
    v68 = v28;
    v69 = v90;
    sub_199B050BC(v90);
    sub_199AAD408(v69, v91, &qword_1EAF74228, &qword_199E3CAB8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74250, &qword_199E3CAE0);
    sub_199B05FD0(&qword_1EAF74258, &qword_1EAF74250, &qword_199E3CAE0, sub_199B058F0);
    sub_199B05FD0(&qword_1EAF742C0, &qword_1EAF74228, &qword_199E3CAB8, sub_199B05B18);
    sub_199DF8EDC();
    v70 = v69;
    v28 = v68;
    sub_199A79A04(v70, &qword_1EAF74228, &qword_199E3CAB8);
  }

  v71 = v94;
  sub_199AAD408(v28, v94, &qword_1EAF74248, &qword_199E3CAD8);
  v72 = v100;
  v73 = v98;
  sub_199AAD408(v100, v98, &qword_1EAF74238, &qword_199E3CAC8);
  v74 = v96;
  sub_199AAD408(v71, v96, &qword_1EAF74248, &qword_199E3CAD8);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74308, &qword_199E3CB40);
  sub_199AAD408(v73, v74 + *(v75 + 48), &qword_1EAF74238, &qword_199E3CAC8);
  sub_199A79A04(v72, &qword_1EAF74238, &qword_199E3CAC8);
  sub_199A79A04(v28, &qword_1EAF74248, &qword_199E3CAD8);
  sub_199A79A04(v73, &qword_1EAF74238, &qword_199E3CAC8);
  return sub_199A79A04(v71, &qword_1EAF74248, &qword_199E3CAD8);
}

double sub_199B04D28(uint64_t a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74750, &qword_199E39620);
  sub_199DF984C();
  sub_199DF985C();

  return result;
}

__n128 sub_199B04DC0@<Q0>(uint64_t a1@<X8>)
{
  *(&v26 + 1) = *(v1 + *(type metadata accessor for ContactCardHeaderNameView(0) + 28) + 16);
  sub_199A9C458();
  sub_199DF81AC();
  v3 = sub_199DF93CC();
  v5 = v4;
  v7 = v6;
  sub_199DF91DC();
  sub_199DF927C();
  sub_199DF92BC();

  v8 = sub_199DF939C();
  v10 = v9;
  v12 = v11;

  sub_199ACE3E8(v3, v5, v7 & 1);

  v13 = sub_199AC3764(*v1, *(v1 + 8));
  swift_getKeyPath();
  *&v26 = v13;
  sub_199B05D7C(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v14 = sub_199DF933C();
  v16 = v15;
  v18 = v17;
  v20 = v19;

  sub_199ACE3E8(v8, v10, v12 & 1);

  KeyPath = swift_getKeyPath();
  v22 = swift_getKeyPath();
  LOBYTE(v26) = v18 & 1;
  v23 = swift_getKeyPath();
  sub_199DF9B5C();
  sub_199DF897C();
  *&v25[55] = v29;
  *&v25[71] = v30;
  *&v25[87] = v31;
  *&v25[103] = v32;
  *&v25[7] = v26;
  *&v25[23] = v27;
  *&v25[39] = v28;
  *(a1 + 145) = *&v25[64];
  *(a1 + 161) = *&v25[80];
  *(a1 + 177) = *&v25[96];
  *(a1 + 81) = *v25;
  *(a1 + 97) = *&v25[16];
  result = *&v25[32];
  *(a1 + 113) = *&v25[32];
  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 2;
  *(a1 + 48) = 0;
  *(a1 + 56) = v22;
  *(a1 + 64) = 0x3FE6666666666666;
  *(a1 + 72) = v23;
  *(a1 + 80) = 1;
  *(a1 + 192) = *(&v32 + 1);
  *(a1 + 129) = *&v25[48];
  return result;
}

__n128 sub_199B050BC@<Q0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = sub_199DF895C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF742D0, &qword_199E3CB18);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  KeyPath = swift_getKeyPath();
  v11 = sub_199AC3764(*v1, *(v1 + 8));
  swift_getKeyPath();
  *&v29 = v11;
  sub_199B05D7C(&unk_1EAF74110, type metadata accessor for ContactCardBackgroundConfiguration, &protocol conformance descriptor for ContactCardBackgroundConfiguration);
  sub_199DF73AC();

  v12 = v11[2];

  v13 = swift_getKeyPath();
  v28 = 0;
  v27 = 0;
  *&v29 = 0xD000000000000014;
  *(&v29 + 1) = 0x8000000199E475A0;
  LOBYTE(v30) = 0;
  *(&v30 + 1) = MEMORY[0x1E69E7CC0];
  *&v31 = KeyPath;
  *(&v31 + 1) = 1;
  v32.n128_u8[0] = 0;
  v32.n128_u64[1] = v13;
  *&v33 = v12;
  sub_199DF894C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF742E8, &qword_199E3CB28);
  sub_199B05CC4();
  sub_199DF964C();
  (*(v3 + 8))(v5, v2);
  v36[2] = v31;
  v36[3] = v32;
  v37 = v33;
  v36[0] = v29;
  v36[1] = v30;
  sub_199A79A04(v36, &qword_1EAF742E8, &qword_199E3CB28);
  sub_199DF91DC();
  sub_199DF927C();
  v14 = sub_199DF92BC();

  v15 = swift_getKeyPath();
  v16 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF742E0, &qword_199E3CB20) + 36)];
  *v16 = v15;
  v16[1] = v14;
  v17 = swift_getKeyPath();
  v18 = &v9[*(v7 + 44)];
  *v18 = v17;
  v18[8] = 1;
  sub_199DF9B5C();
  sub_199DF897C();
  v19 = v26;
  sub_199A94B24(v9, v26);
  v20 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74228, &qword_199E3CAB8) + 36);
  v21 = v34;
  *(v20 + 64) = v33;
  *(v20 + 80) = v21;
  *(v20 + 96) = v35;
  v23 = v30;
  v22 = v31;
  *v20 = v29;
  *(v20 + 16) = v23;
  result = v32;
  *(v20 + 32) = v22;
  *(v20 + 48) = result;
  return result;
}

uint64_t sub_199B05470@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_199DF8D4C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74220, &qword_199E3CAB0);
  return sub_199B041C0(v2, a2 + *(v4 + 44));
}

unint64_t sub_199B054CC()
{
  result = qword_1EAF75C40;
  if (!qword_1EAF75C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF75C40);
  }

  return result;
}

unint64_t sub_199B05520()
{
  result = qword_1EAF71000;
  if (!qword_1EAF71000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF71000);
  }

  return result;
}

void sub_199B05594(uint64_t a1)
{
  sub_199B057AC(319, &unk_1EAF741E8, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_199B05690(uint64_t a1)
{
  sub_199B057AC(319, &qword_1EAF74208, type metadata accessor for ContactCardBackgroundConfiguration, MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_199B05810(319, &qword_1EAF74210, MEMORY[0x1E6981948]);
    if (v2 <= 0x3F)
    {
      sub_199B05810(319, &qword_1EAF711C0, MEMORY[0x1E6981790]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for CardHeaderNameModel(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_199B057AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_199B05810(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6370]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_199B05880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF72BF0, &unk_199E3CA10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_199B058F0()
{
  result = qword_1EAF74260;
  if (!qword_1EAF74260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74268, &qword_199E3CAE8);
    sub_199B059A8();
    sub_199AA0B90(&qword_1EAF742B0, &qword_1EAF742B8, &qword_199E3CB10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74260);
  }

  return result;
}

unint64_t sub_199B059A8()
{
  result = qword_1EAF74270;
  if (!qword_1EAF74270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74278, &qword_199E3CAF0);
    sub_199B05A60();
    sub_199AA0B90(&qword_1EAF742A0, &qword_1EAF742A8, &qword_199E3CB08, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74270);
  }

  return result;
}

unint64_t sub_199B05A60()
{
  result = qword_1EAF74280;
  if (!qword_1EAF74280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74288, &qword_199E3CAF8);
    sub_199AA0B90(&qword_1EAF74290, &qword_1EAF74298, &qword_199E3CB00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74280);
  }

  return result;
}

unint64_t sub_199B05B18()
{
  result = qword_1EAF742C8;
  if (!qword_1EAF742C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF742D0, &qword_199E3CB18);
    sub_199B05BD0();
    sub_199AA0B90(&qword_1EAF742B0, &qword_1EAF742B8, &qword_199E3CB10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF742C8);
  }

  return result;
}

unint64_t sub_199B05BD0()
{
  result = qword_1EAF742D8;
  if (!qword_1EAF742D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF742E0, &qword_199E3CB20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF742E8, &qword_199E3CB28);
    sub_199B05CC4();
    swift_getOpaqueTypeConformance2();
    sub_199AA0B90(&qword_1EAF71208, &qword_1EAF74300, &qword_199E3A470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF742D8);
  }

  return result;
}

unint64_t sub_199B05CC4()
{
  result = qword_1EAF742F0;
  if (!qword_1EAF742F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF742E8, &qword_199E3CB28);
    sub_199B05A60();
    sub_199AA0B90(&qword_1EAF711F8, &qword_1EAF732B0, &unk_199E3CB30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF742F0);
  }

  return result;
}

uint64_t sub_199B05D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_199B05DC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardHeaderNameView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B05E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactCardHeaderNameView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_199B05E8C()
{
  v1 = *(type metadata accessor for ContactCardHeaderNameView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_199B04D28(v2);
}

unint64_t sub_199B05EEC()
{
  result = qword_1EAF74318;
  if (!qword_1EAF74318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74310, &qword_199E3CBD8);
    sub_199B05FD0(&qword_1EAF74320, &qword_1EAF74328, &qword_199E3CBE0, sub_199B06054);
    sub_199AA0B90(&qword_1EAF74290, &qword_1EAF74298, &qword_199E3CB00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74318);
  }

  return result;
}

uint64_t sub_199B05FD0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_199B06054()
{
  result = qword_1EAF74330;
  if (!qword_1EAF74330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EAF74338, &qword_199E3CBE8);
    sub_199AA0B90(&qword_1EAF742B0, &qword_1EAF742B8, &qword_199E3CB10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74330);
  }

  return result;
}

uint64_t sub_199B0610C()
{
  v0 = sub_199DF804C();
  __swift_allocate_value_buffer(v0, qword_1EAF74360);
  __swift_project_value_buffer(v0, qword_1EAF74360);
  return sub_199DF803C();
}

uint64_t sub_199B0618C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74390, &qword_199E3CD88);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74398, &qword_199E3CD90);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v12 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    *v6 = sub_199DF8CFC();
    *(v6 + 1) = 0x4038000000000000;
    v6[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF743A0, &unk_199E3CD98);
    v12[1] = a2;
    v12[2] = 0;
    v12[3] = v10;
    swift_getKeyPath();
    *(swift_allocObject() + 16) = a1;
    sub_199DF81AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73200, &qword_199E3CDC0);
    type metadata accessor for QuickActionButtonView(0);
    sub_199ACDECC();
    sub_199B07D08();
    sub_199DF99EC();
    sub_199AAD408(v6, v9, &qword_1EAF74390, &qword_199E3CD88);
    swift_storeEnumTagMultiPayload();
    sub_199AA0B90(&qword_1EAF743B0, &qword_1EAF74390, &qword_199E3CD88, MEMORY[0x1E69817F8]);
    sub_199DF8EDC();
    return sub_199A79A04(v6, &qword_1EAF74390, &qword_199E3CD88);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_199AA0B90(&qword_1EAF743B0, &qword_1EAF74390, &qword_199E3CD88, MEMORY[0x1E69817F8]);
    return sub_199DF8EDC();
  }
}

void sub_199B06458(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_199DF7D9C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v11 >= *(a2 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v12 = *(v7 + 16);
  v12(v10, a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v11, v6, v8);
  *a3 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72D38, &unk_199E395D0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for QuickActionButtonView(0);
  (v12)(a3 + *(v13 + 20), v10, v6);
  v14 = sub_199DF7D7C();
  v16 = v15;
  (*(v7 + 8))(v10, v6);
  if (v14)
  {
    sub_199A9A5FC(v14, v16);
  }

  *(a3 + *(v13 + 24)) = v14 == 0;
}

void sub_199B06654(uint64_t a1, uint64_t (*a2)(uint64_t), void *a3, uint64_t *a4)
{
  *a3 = a2(a1);
  (a2)();
  v6 = sub_199DF972C();

  *a4 = v6;
}

void (*sub_199B066BC())(void)
{
  if (qword_1EAF71EB0 != -1)
  {
    swift_once();
  }

  v0 = sub_199DF804C();
  __swift_project_value_buffer(v0, qword_1EAF74360);
  v1 = sub_199DF802C();
  v2 = sub_199DFA31C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_199A75000, v1, v2, "Quick action pressed.", v3, 2u);
    MEMORY[0x19A8FA1A0](v3, -1, -1);
  }

  type metadata accessor for QuickActionButtonView(0);
  result = sub_199DF7D7C();
  if (result)
  {
    v6 = v5;
    v7 = result;
    result();

    return sub_199A9A5FC(v7, v6);
  }

  return result;
}

__n128 sub_199B067E8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_199DF8D4C();
  LOBYTE(v46[0]) = 0;
  sub_199B06A68(a1, &v47);
  v41 = v49;
  v42 = v50;
  v43 = v51;
  v39 = v47;
  v40 = v48;
  v44[2] = v49;
  v44[3] = v50;
  v45 = v51;
  v44[0] = v47;
  v44[1] = v48;
  sub_199AAD408(&v39, v37, &qword_1EAF74440, &qword_199E3CF48);
  sub_199A79A04(v44, &qword_1EAF74440, &qword_199E3CF48);
  *&v38[23] = v40;
  *&v38[39] = v41;
  *&v38[55] = v42;
  *&v38[71] = v43;
  *&v38[7] = v39;
  v5 = v46[0];
  sub_199DF9B5C();
  sub_199DF897C();
  v6 = sub_199DF91CC();
  sub_199DF84FC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  LOBYTE(v37[0]) = 0;
  v15 = sub_199DF9B5C();
  v17 = v16;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF743D8, &qword_199E3CED8) + 36));
  v19 = *(sub_199DF896C() + 20);
  v20 = *MEMORY[0x1E697F468];
  v21 = sub_199DF8D1C();
  (*(*(v21 - 8) + 104))(&v18[v19], v20, v21);
  __asm { FMOV            V0.2D, #22.0 }

  *v18 = _Q0;
  *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72C10, &qword_199E38FC0) + 36)] = 256;
  *a2 = v4;
  *(a2 + 8) = 0x401C000000000000;
  *(a2 + 16) = v5;
  v27 = *v38;
  *(a2 + 33) = *&v38[16];
  v28 = *&v38[48];
  *(a2 + 49) = *&v38[32];
  *(a2 + 65) = v28;
  v29 = *&v38[63];
  *(a2 + 17) = v27;
  v30 = v47;
  v31 = v48;
  *(a2 + 80) = v29;
  *(a2 + 96) = v30;
  v32 = v49;
  v33 = v50;
  *(a2 + 112) = v31;
  *(a2 + 128) = v32;
  v34 = v51;
  v35 = v52;
  *(a2 + 144) = v33;
  *(a2 + 160) = v34;
  result = v53;
  *(a2 + 176) = v35;
  *(a2 + 192) = result;
  *(a2 + 208) = v6;
  *(a2 + 212) = *(v37 + 3);
  *(a2 + 209) = v37[0];
  *(a2 + 216) = v8;
  *(a2 + 224) = v10;
  *(a2 + 232) = v12;
  *(a2 + 240) = v14;
  *(a2 + 248) = 0;
  *(a2 + 252) = *(v46 + 3);
  *(a2 + 249) = v46[0];
  *(a2 + 256) = v15;
  *(a2 + 264) = v17;
  return result;
}

double sub_199B06A68@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = sub_199DF9F4C();
  v4 = *(v48 - 1);
  MEMORY[0x1EEE9AC00](v48);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for QuickActionButtonView(0);
  sub_199DF7D6C();
  if (v7)
  {
    v8 = sub_199DF97CC();
    v9 = sub_199DF92AC();
    KeyPath = swift_getKeyPath();
    v11 = sub_199B08498();
    v12 = swift_getKeyPath();
    v50 = v11;
    swift_retain_n();

    v51 = v9;

    v49 = v12;
  }

  else
  {
    v8 = 0;
    KeyPath = 0;
    v50 = 0;
    v51 = 0;
    v49 = 0;
  }

  sub_199DF7D8C();
  if (v13)
  {
    sub_199DF9EEC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF761B0, &qword_199E3CF50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_199E37D40;
    v45 = a1;
    *(inited + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74448, &unk_199E3CF58);
    *(inited + 64) = sub_199AA0B90(&qword_1EAF74450, &qword_1EAF74448, &unk_199E3CF58, MEMORY[0x1E6969E28]);
    *(inited + 32) = MEMORY[0x1E69E7CC0];
    v15 = sub_199AA8A84(v6, inited);
    v17 = v16;
    swift_setDeallocating();
    sub_199A79A04(inited + 32, &qword_1EAF72790, &qword_199E3AAB0);
    v52 = v15;
    v53 = v17;
    sub_199A9C458();
    v18 = sub_199DF93CC();
    v20 = v19;
    v22 = v21;
    (*(v4 + 8))(v6, v48);
    sub_199DF92DC();
    v23 = sub_199DF939C();
    v47 = v8;
    v48 = a2;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v46 = KeyPath;

    sub_199ACE3E8(v18, v20, v22 & 1);

    sub_199DF926C();
    v29 = sub_199DF932C();
    v31 = v30;
    v33 = v32;
    sub_199ACE3E8(v24, v26, v28 & 1);
    KeyPath = v46;

    sub_199B08498();

    v34 = sub_199DF933C();
    v36 = v35;
    LOBYTE(v26) = v37;
    v39 = v38;
    a2 = v48;

    sub_199ACE3E8(v29, v31, v33 & 1);

    v40 = v26 & 1;
    v8 = v47;
    sub_199ACE3F8(v34, v36, v40);
    sub_199DF81AC();
  }

  else
  {
    v34 = 0;
    v36 = 0;
    v40 = 0;
    v39 = 0;
  }

  v41 = v50;
  v42 = v51;
  v43 = v49;
  sub_199B08334(v8, KeyPath, v51, v49, v50);
  sub_199B083A4(v34, v36, v40, v39);
  sub_199B083E8(v8, KeyPath, v42, v43, v41);
  sub_199B08454(v34, v36, v40, v39);
  *a2 = v8;
  a2[1] = KeyPath;
  a2[2] = v42;
  a2[3] = v43;
  a2[4] = v41;
  a2[5] = v34;
  a2[6] = v36;
  a2[7] = v40;
  a2[8] = v39;
  sub_199B08454(v34, v36, v40, v39);
  return sub_199B083E8(v8, KeyPath, v42, v43, v41);
}

uint64_t sub_199B06EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 - 8;
  v5 = *(a1 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF731F8, &unk_199E39EF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17[-v8];
  v10 = sub_199DF84DC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_199B07F50(v2, &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_199B07FB4(&v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v12 + v11);
  v18 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF743D8, &qword_199E3CED8);
  sub_199B08080();
  sub_199DF988C();
  LOBYTE(v9) = *(v2 + *(v4 + 32));
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74438, &qword_199E3CF40);
  v16 = (a2 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = sub_199ADF728;
  v16[2] = v14;
  return result;
}

id sub_199B070F4()
{
  result = sub_199B07114();
  qword_1EAF74378 = result;
  return result;
}

id sub_199B07114()
{
  v0 = [objc_opt_self() effectWithBlurRadius_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF72A60, &unk_199E38FD0);
  if (v0)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_199E3CC90;
    *(v1 + 32) = v0;
    v2 = objc_opt_self();
    v3 = v0;
    v5 = xmmword_199E3CCA0;
    v6 = xmmword_199E3CCB0;
    v7 = xmmword_199E3CCC0;
    v8 = xmmword_199E3CCD0;
    v9 = xmmword_199E3CCE0;
    result = [v2 _colorEffectCAMatrix_];
    if (result)
    {
      *(v1 + 40) = result;

      return v1;
    }

    __break(1u);
  }

  else
  {
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_199E37DF0;
    v5 = xmmword_199E3CCA0;
    v6 = xmmword_199E3CCB0;
    v7 = xmmword_199E3CCC0;
    v8 = xmmword_199E3CCD0;
    v9 = xmmword_199E3CCE0;
    result = [objc_opt_self() _colorEffectCAMatrix_];
    if (result)
    {
      *(v1 + 32) = result;
      return v1;
    }
  }

  __break(1u);
  return result;
}

id sub_199B07298()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DD298]);

  return [v0 init];
}

void sub_199B072D0(void *a1)
{
  if (qword_1EAF71EC8 != -1)
  {
    swift_once();
  }

  sub_199B088D0();
  v2 = sub_199DFA0BC();
  [a1 setBackgroundEffects_];
}

void sub_199B07420(uint64_t a1)
{
  sub_199B0891C();
  sub_199DF8EAC();
  __break(1u);
}

char *sub_199B07448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a4;
  v66 = a2;
  v67 = sub_199DF7D9C();
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_199DF76DC();
  v7 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74380, &qword_199E3CCF0);
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - v19;
  v21 = sub_199DF7C3C();
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 | a3))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v54 = v23;
  v55 = v22;
  v56 = v10;
  [objc_allocWithZone(MEMORY[0x1E695CF18]) init];
  sub_199DF7C2C();
  v27 = *MEMORY[0x1E69968F8];
  v61 = v17;
  v53 = *(v7 + 104);
  v53(v9, v27, v68);
  sub_199DF7C1C();
  v62 = a3;
  v59 = v14;
  v57 = v28;
  sub_199DF7C0C();
  sub_199A9A57C(a1, v66);
  v60 = v20;
  v57 = a1;
  sub_199DF7D5C();
  v52 = *(v7 + 8);
  v29 = v68;
  v52(v9, v68);
  v51 = *(v69 + 56);
  v51(v20, 0, 1, v67);
  v53(v9, *MEMORY[0x1E6996900], v29);
  v53 = sub_199DF7C1C();
  sub_199DF7C0C();
  sub_199A9A57C(v62, v65);
  v30 = v61;
  v31 = v67;
  sub_199DF7D5C();
  v52(v9, v68);
  v51(v30, 0, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74388, &qword_199E3CCF8);
  v32 = *(v58 + 9);
  v33 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v68 = swift_allocObject();
  v34 = v68 + v33;
  sub_199AAD408(v60, v68 + v33, &qword_1EAF74380, &qword_199E3CCF0);
  sub_199AAD408(v30, v34 + v32, &qword_1EAF74380, &qword_199E3CCF0);
  v35 = v59;
  sub_199AAD408(v34, v59, &qword_1EAF74380, &qword_199E3CCF0);
  v36 = v35;
  v37 = v63;
  sub_199B07C18(v36, v63);
  v38 = *(v69 + 48);
  v39 = (v69 + 32);
  if (v38(v37, 1, v31) == 1)
  {
    sub_199A79A04(v37, &qword_1EAF74380, &qword_199E3CCF0);
    v26 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v58 = *v39;
    v58(v64, v37, v31);
    v26 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_199AB2818(0, *(v26 + 2) + 1, 1, v26);
    }

    v41 = *(v26 + 2);
    v40 = *(v26 + 3);
    if (v41 >= v40 >> 1)
    {
      v26 = sub_199AB2818((v40 > 1), v41 + 1, 1, v26);
    }

    *(v26 + 2) = v41 + 1;
    v31 = v67;
    v58(&v26[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v41], v64, v67);
    v37 = v63;
  }

  v42 = v34 + v32;
  v43 = v59;
  sub_199AAD408(v42, v59, &qword_1EAF74380, &qword_199E3CCF0);
  sub_199B07C18(v43, v37);
  v44 = v38(v37, 1, v31);
  v45 = v57;
  if (v44 == 1)
  {
    sub_199A79A04(v37, &qword_1EAF74380, &qword_199E3CCF0);
  }

  else
  {
    v46 = *v39;
    (*v39)(v64, v37, v31);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v26 = sub_199AB2818(0, *(v26 + 2) + 1, 1, v26);
    }

    v48 = *(v26 + 2);
    v47 = *(v26 + 3);
    if (v48 >= v47 >> 1)
    {
      v26 = sub_199AB2818((v47 > 1), v48 + 1, 1, v26);
    }

    *(v26 + 2) = v48 + 1;
    v46(&v26[((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v48], v64, v31);
  }

  v49 = v61;
  sub_199A9A5FC(v62, v65);
  sub_199A9A5FC(v45, v66);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_199A79A04(v49, &qword_1EAF74380, &qword_199E3CCF0);
  sub_199A79A04(v60, &qword_1EAF74380, &qword_199E3CCF0);
  (*(v54 + 8))(v25, v55);
  return v26;
}

uint64_t sub_199B07C18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF74380, &qword_199E3CCF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for QuickActionButtonView(uint64_t a1)
{
  result = qword_1EAF743B8;
  if (!qword_1EAF743B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_199B07D08()
{
  result = qword_1EAF743A8;
  if (!qword_1EAF743A8)
  {
    type metadata accessor for QuickActionButtonView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF743A8);
  }

  return result;
}

void sub_199B07D88(uint64_t a1)
{
  sub_199B07E14(319);
  if (v1 <= 0x3F)
  {
    sub_199DF7D9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_199B07E14(uint64_t a1)
{
  if (!qword_1EAF72DE8)
  {
    sub_199DF857C();
    v1 = sub_199DF859C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EAF72DE8);
    }
  }
}

unint64_t sub_199B07E7C()
{
  result = qword_1EAF743C8;
  if (!qword_1EAF743C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF743D0, &qword_199E3CE78);
    sub_199AA0B90(&qword_1EAF743B0, &qword_1EAF74390, &qword_199E3CD88, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF743C8);
  }

  return result;
}

uint64_t sub_199B07F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickActionButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_199B07FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for QuickActionButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*sub_199B08018())(void)
{
  type metadata accessor for QuickActionButtonView(0);

  return sub_199B066BC();
}

unint64_t sub_199B08080()
{
  result = qword_1EAF743E0;
  if (!qword_1EAF743E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF743D8, &qword_199E3CED8);
    sub_199B08138();
    sub_199AA0B90(&qword_1EAF713D8, &qword_1EAF72C10, &qword_199E38FC0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF743E0);
  }

  return result;
}

unint64_t sub_199B08138()
{
  result = qword_1EAF743E8;
  if (!qword_1EAF743E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF743F0, &qword_199E3CEE0);
    sub_199B081F0();
    sub_199AA0B90(&qword_1EAF74428, &qword_1EAF74430, &unk_199E3CF00, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF743E8);
  }

  return result;
}

unint64_t sub_199B081F0()
{
  result = qword_1EAF743F8;
  if (!qword_1EAF743F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74400, &qword_199E3CEE8);
    sub_199B0827C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF743F8);
  }

  return result;
}

unint64_t sub_199B0827C()
{
  result = qword_1EAF74408;
  if (!qword_1EAF74408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74410, &qword_199E3CEF0);
    sub_199AA0B90(&qword_1EAF74418, &qword_1EAF74420, &qword_199E3CEF8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74408);
  }

  return result;
}

uint64_t sub_199B08334(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_199B083A4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_199ACE3F8(result, a2, a3 & 1);

    return sub_199DF81AC();
  }

  return result;
}

double sub_199B083E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_199B08454(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_199ACE3E8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_199B08498()
{
  v0 = sub_199DF857C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  type metadata accessor for QuickActionButtonView(0);
  v7 = sub_199DF7D7C();
  if (v7)
  {
    sub_199A9A5FC(v7, v8);
    sub_199AC2B24(v6);
    (*(v1 + 104))(v3, *MEMORY[0x1E697DBA8], v0);
    v9 = sub_199DF856C();
    v10 = *(v1 + 8);
    v10(v3, v0);
    v10(v6, v0);
    if (v9)
    {
      if (qword_1EAF71EC0 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EAF87018;
    }

    else
    {
      if (qword_1EAF71EB8 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EAF87008;
    }
  }

  else
  {
    sub_199AC2B24(v6);
    (*(v1 + 104))(v3, *MEMORY[0x1E697DBA8], v0);
    v12 = sub_199DF856C();
    v13 = *(v1 + 8);
    v13(v3, v0);
    v13(v6, v0);
    if (v12)
    {
      if (qword_1EAF71EC0 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EAF87020;
    }

    else
    {
      if (qword_1EAF71EB8 != -1)
      {
        swift_once();
      }

      v11 = &qword_1EAF87010;
    }
  }

  return *v11;
}

unint64_t sub_199B08768()
{
  result = qword_1EAF74458;
  if (!qword_1EAF74458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74438, &qword_199E3CF40);
    sub_199B08820();
    sub_199AA0B90(&qword_1EAF73868, &qword_1EAF73870, &qword_199E3ADE0, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74458);
  }

  return result;
}

unint64_t sub_199B08820()
{
  result = qword_1EAF74460;
  if (!qword_1EAF74460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF74468, &unk_199E3CFF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74460);
  }

  return result;
}

unint64_t sub_199B0887C()
{
  result = qword_1EAF74470;
  if (!qword_1EAF74470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74470);
  }

  return result;
}

unint64_t sub_199B088D0()
{
  result = qword_1EAF74478;
  if (!qword_1EAF74478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF74478);
  }

  return result;
}

unint64_t sub_199B0891C()
{
  result = qword_1EAF74480;
  if (!qword_1EAF74480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF74480);
  }

  return result;
}

BOOL sub_199B08970(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_199DFAA6C();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_199B08A18()
{
  swift_getKeyPath();
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel, &unk_199E3D118);
  sub_199DF73AC();

  return sub_199DF81AC();
}

uint64_t sub_199B08ABC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel, &unk_199E3D118);
  sub_199DF73AC();

  *a2 = *(v3 + 16);
  return sub_199DF81AC();
}

double sub_199B08B68(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel, &unk_199E3D118);
  sub_199DF739C();

  return result;
}

void *sub_199B08C34()
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF744A0, &qword_199E3D138);
  MEMORY[0x1EEE9AC00](v65);
  v60 = (&v56 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v56 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v56 - v5;
  swift_getKeyPath();
  v67 = v0;
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel, &unk_199E3D118);
  sub_199DF73AC();

  v7 = v0[2];
  v8 = *(v7 + 16);
  sub_199DF81AC();
  if (!v8)
  {
    v61 = MEMORY[0x1E69E7CC8];
LABEL_25:

    return v61;
  }

  v9 = 0;
  v61 = MEMORY[0x1E69E7CC8];
  v62 = v8;
  v10 = &qword_1EAF744A0;
  v59 = v8 - 1;
  v63 = v7;
  while (v9 < *(v7 + 16))
  {
    v11 = sub_199DF7C9C();
    v12 = *(v11 - 8);
    v13 = v12;
    v66 = v9 + 1;
    v14 = v7 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v12 + 72) * v9;
    v15 = v65;
    v16 = *(v65 + 48);
    *v6 = v9;
    (*(v12 + 16))(&v6[v16], v14, v11);
    v17 = v6;
    v18 = v6;
    v19 = v64;
    sub_199AAD408(v17, v64, v10, &qword_199E3D138);
    v20 = *(v15 + 48);
    v21 = v10;
    v22 = sub_199DF7C7C();
    v25 = *(v13 + 8);
    v23 = v13 + 8;
    v24 = v25;
    v25((v19 + v20), v11);
    if (v22)
    {
      v56 = v23;
      v57 = v9;
      v58 = v24;
      sub_199B09150(&v67);

      v26 = v67;
      v27 = v60;
      sub_199AAD408(v18, v60, v21, &qword_199E3D138);
      v28 = *v27;
      v29 = v61;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v29;
      v32 = sub_199B4AA4C(v26);
      v33 = v29[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        goto LABEL_27;
      }

      v6 = v18;
      if (v29[3] >= v35)
      {
        v42 = v58;
        v43 = v11;
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v31)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v54 = v31;
          sub_199B7594C();
          v29 = v67;
          if (v54)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v36 = v31;
        sub_199B7492C(v35, isUniquelyReferenced_nonNull_native);
        v29 = v67;
        v37 = sub_199B4AA4C(v26);
        v39 = v38 & 1;
        v40 = v36;
        v41 = v36 & 1;
        v42 = v58;
        if (v41 != v39)
        {
          goto LABEL_29;
        }

        v32 = v37;
        v43 = v11;
        if (v40)
        {
          goto LABEL_16;
        }
      }

      v29[(v32 >> 6) + 8] |= 1 << v32;
      *(v29[6] + v32) = v26;
      *(v29[7] + 8 * v32) = MEMORY[0x1E69E7CC0];
      v44 = v29[2];
      v45 = __OFADD__(v44, 1);
      v46 = v44 + 1;
      if (v45)
      {
        goto LABEL_28;
      }

      v29[2] = v46;
LABEL_16:
      v58 = v28;
      v47 = v29[7];
      v48 = *(v47 + 8 * v32);
      v49 = swift_isUniquelyReferenced_nonNull_native();
      *(v47 + 8 * v32) = v48;
      if ((v49 & 1) == 0)
      {
        v48 = sub_199AB2840(0, *(v48 + 2) + 1, 1, v48);
        *(v47 + 8 * v32) = v48;
      }

      v61 = v29;
      v51 = *(v48 + 2);
      v50 = *(v48 + 3);
      if (v51 >= v50 >> 1)
      {
        *(v47 + 8 * v32) = sub_199AB2840((v50 > 1), v51 + 1, 1, v48);
      }

      v52 = *(v65 + 48);
      v10 = &qword_1EAF744A0;
      sub_199A79A04(v6, &qword_1EAF744A0, &qword_199E3D138);
      v53 = *(v47 + 8 * v32);
      *(v53 + 16) = v51 + 1;
      *(v53 + 8 * v51 + 32) = v58;
      v42(v60 + v52, v43);
      v7 = v63;
      v9 = v66;
      if (v59 == v57)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_199A79A04(v18, v21, &qword_199E3D138);
      v9 = v66;
      v10 = v21;
      v7 = v63;
      v6 = v18;
      if (v62 == v66)
      {
        goto LABEL_25;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_199DFA9FC();
  __break(1u);
  return result;
}

void sub_199B09150(char *a1@<X8>)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF741C8, qword_199E3D1A0);
  v2 = sub_199DF9EDC();

  if (v2)
  {
    v3 = 0;
  }

  else
  {
    swift_getKeyPath();
    v4 = sub_199DF9EDC();

    if (v4)
    {
      v3 = 1;
    }

    else
    {
      swift_getKeyPath();
      v5 = sub_199DF9EDC();

      if (v5)
      {
        v3 = 2;
      }

      else
      {
        swift_getKeyPath();
        v6 = sub_199DF9EDC();

        if (v6)
        {
          v3 = 3;
        }

        else
        {
          swift_getKeyPath();
          v7 = sub_199DF9EDC();

          if (v7)
          {
            v3 = 4;
          }

          else
          {
            swift_getKeyPath();
            v8 = sub_199DF9EDC();

            if (v8)
            {
              v3 = 5;
            }

            else
            {
              v3 = 6;
            }
          }
        }
      }
    }
  }

  *a1 = v3;
}

uint64_t sub_199B09340()
{

  v1 = OBJC_IVAR____TtC10ContactsUI23ContactDetailsViewModel___observationRegistrar;
  v2 = sub_199DF73EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_199B0940C(uint64_t a1)
{
  result = sub_199DF73EC();
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

uint64_t sub_199B094AC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF744B0, &qword_199E3D358);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v31 - v4;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF744B8, &qword_199E3D360);
  MEMORY[0x1EEE9AC00](v34);
  v7 = v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF744C0, &unk_199E3D368);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v31 - v9;
  v11 = v1[1];
  v39 = *v1;
  v40[0] = v11;
  *(v40 + 9) = *(v1 + 25);
  v12 = v39;
  swift_getKeyPath();
  v36[0] = v12;
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel, &unk_199E3D118);
  sub_199DF73AC();

  v13 = *(*(v12 + 16) + 16);
  v14 = BYTE8(v39);
  if (BYTE8(v39) == 7)
  {
    goto LABEL_7;
  }

  v33 = v2;
  v15 = sub_199B08C34();
  if (!v15[2] || (v16 = sub_199B4AA4C(v14), (v17 & 1) == 0))
  {

    v2 = v33;
LABEL_7:
    v37 = 0;
    v38 = v13;
    swift_getKeyPath();
    v20 = swift_allocObject();
    v21 = v40[0];
    *(v20 + 16) = v39;
    *(v20 + 32) = v21;
    *(v20 + 41) = *(v40 + 9);
    *(v20 + 64) = v13;
    sub_199B0A7B8(&v39, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73200, &qword_199E3CDC0);
    type metadata accessor for ContactDetailRowView(0);
    sub_199ACDECC();
    sub_199B0A810(&qword_1EAF744C8, type metadata accessor for ContactDetailRowView, &unk_199E3D3E0);
    sub_199DF99EC();
    (*(v3 + 16))(v7, v5, v2);
    swift_storeEnumTagMultiPayload();
    sub_199B0A858();
    sub_199B0A8E4();
    sub_199DF8EDC();
    return (*(v3 + 8))(v5, v2);
  }

  v18 = *(v15[7] + 8 * v16);
  sub_199DF81AC();

  v19 = *(v18 + 16);
  if (v19)
  {
    v32 = *(v18 + 32);
  }

  else
  {
    v32 = 0;
  }

  v23 = v7;
  v24 = v19 == 0;
  v25 = sub_199AFD834(v18);

  v37 = 0;
  v38 = v13;
  v31[1] = swift_getKeyPath();
  v26 = swift_allocObject();
  v27 = v40[0];
  *(v26 + 16) = v39;
  *(v26 + 32) = v27;
  *(v26 + 41) = *(v40 + 9);
  *(v26 + 64) = v13;
  *(v26 + 72) = v25;
  sub_199B0A7B8(&v39, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73200, &qword_199E3CDC0);
  type metadata accessor for ContactDetailRowView(0);
  sub_199ACDECC();
  sub_199B0A810(&qword_1EAF744C8, type metadata accessor for ContactDetailRowView, &unk_199E3D3E0);
  sub_199DF99EC();
  v28 = swift_allocObject();
  v29 = v40[0];
  *(v28 + 16) = v39;
  *(v28 + 32) = v29;
  *(v28 + 41) = *(v40 + 9);
  *(v28 + 64) = v32;
  *(v28 + 72) = v24;
  v30 = &v10[*(v8 + 36)];
  *v30 = sub_199B0A9A4;
  v30[1] = v28;
  v30[2] = 0;
  v30[3] = 0;
  sub_199AAD408(v10, v23, &qword_1EAF744C0, &unk_199E3D368);
  swift_storeEnumTagMultiPayload();
  sub_199B0A7B8(&v39, v36);
  sub_199B0A858();
  sub_199B0A8E4();
  sub_199DF8EDC();
  return sub_199A79A04(v10, &qword_1EAF744C0, &unk_199E3D368);
}

void sub_199B09A54(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  swift_getKeyPath();
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel, &unk_199E3D118);
  sub_199DF73AC();

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = *(v9 + 16);
  if (v8 >= *(v10 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = type metadata accessor for ContactDetailRowView(0);
  v12 = v11[6];
  v13 = sub_199DF7C9C();
  (*(*(v13 - 8) + 16))(a5 + v12, v10 + ((*(*(v13 - 8) + 80) + 32) & ~*(*(v13 - 8) + 80)) + *(*(v13 - 8) + 72) * v8, v13);
  if (!__OFSUB__(a3, 1))
  {
    v14 = sub_199B08970(v8, a4);
    *a5 = swift_getKeyPath();
    *(a5 + 8) = 0;
    *(a5 + 16) = v8;
    *(a5 + v11[7]) = v8 == a3 - 1;
    *(a5 + v11[8]) = v14;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_199B09BDC(_OWORD *a1, uint64_t a2, int a3)
{
  v26 = a3;
  v5 = sub_199DF9DFC();
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_199DF9E1C();
  v27 = *(v8 - 8);
  v28 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_199DF9E3C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v24 - v16;
  sub_199B0A9B4();
  v25 = sub_199DFA39C();
  sub_199DF9E2C();
  sub_199DF9E6C();
  v18 = *(v12 + 8);
  v18(v14, v11);
  v19 = swift_allocObject();
  v20 = a1[1];
  *(v19 + 16) = *a1;
  *(v19 + 32) = v20;
  *(v19 + 41) = *(a1 + 25);
  *(v19 + 64) = a2;
  *(v19 + 72) = v26 & 1;
  aBlock[4] = sub_199B0AA54;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_199AB45A0;
  aBlock[3] = &block_descriptor_10;
  v21 = _Block_copy(aBlock);
  sub_199B0A7B8(a1, v30);

  sub_199DF9E0C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_199B0A810(&qword_1EAF71CE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EAF74150, &qword_199E38F20);
  sub_199ABC0BC();
  sub_199DFA68C();
  v22 = v25;
  MEMORY[0x19A8F8150](v17, v10, v7, v21);
  _Block_release(v21);

  (*(v29 + 8))(v7, v5);
  (*(v27 + 8))(v10, v28);
  return (v18)(v17, v11);
}

double sub_199B09F9C(uint64_t a1, uint64_t a2, char a3)
{
  sub_199DF9BAC();
  sub_199DF872C();

  return result;
}

void sub_199B0A010(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  swift_getKeyPath();
  sub_199B0A810(&qword_1EAF744A8, type metadata accessor for ContactDetailsViewModel, &unk_199E3D118);
  sub_199DF73AC();

  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v8 = *(v7 + 16);
  if (v6 >= *(v8 + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = type metadata accessor for ContactDetailRowView(0);
  v10 = v9[6];
  v11 = sub_199DF7C9C();
  (*(*(v11 - 8) + 16))(a4 + v10, v8 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v6, v11);
  if (!__OFSUB__(a3, 1))
  {
    *a4 = swift_getKeyPath();
    *(a4 + 8) = 0;
    *(a4 + 16) = v6;
    *(a4 + v9[7]) = v6 == a3 - 1;
    *(a4 + v9[8]) = 1;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_199B0A180(void *a1)
{
  v46 = a1;
  v2 = sub_199DF7C9C();
  v47 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v34 - v5;
  v6 = sub_199DF770C();
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_199DF7CBC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_199DF7D3C();
  MEMORY[0x1EEE9AC00](v13 - 8);
  sub_199DF73DC();
  sub_199DF7D2C();
  sub_199DF787C();
  swift_allocObject();
  v14 = v46;
  v15 = sub_199DF786C();
  result = sub_199DF785C();
  if (*(result + 16) < 3uLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  (*(v10 + 16))(v12, result + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + 2 * *(v10 + 72), v9);

  result = sub_199DF7CAC();
  if (!*(result + 16))
  {
LABEL_20:
    __break(1u);
    return result;
  }

  v34 = v15;
  v35 = v12;
  v36 = v10;
  v38 = v9;
  v39 = v6;
  v40 = v1;
  (*(v41 + 16))(v8, result + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v6);

  v37 = v8;
  result = sub_199DF76EC();
  v17 = result;
  v46 = *(result + 16);
  if (v46)
  {
    v18 = 0;
    v45 = v47 + 16;
    v19 = (v47 + 32);
    v42 = (v47 + 8);
    v20 = MEMORY[0x1E69E7CC0];
    v43 = v2;
    v21 = v44;
    while (v18 < *(v17 + 16))
    {
      v22 = (*(v47 + 80) + 32) & ~*(v47 + 80);
      v23 = *(v47 + 72);
      (*(v47 + 16))(v21, v17 + v22 + v23 * v18, v2);
      v24 = sub_199DF7C8C();
      v26 = v25;

      v27 = HIBYTE(v26) & 0xF;
      if ((v26 & 0x2000000000000000) == 0)
      {
        v27 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v27)
      {
        v28 = v21;
        v29 = *v19;
        (*v19)(v48, v28, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v49 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_199A9C6A8(0, *(v20 + 16) + 1, 1);
          v20 = v49;
        }

        v32 = *(v20 + 16);
        v31 = *(v20 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_199A9C6A8((v31 > 1), v32 + 1, 1);
          v20 = v49;
        }

        *(v20 + 16) = v32 + 1;
        v33 = v20 + v22 + v32 * v23;
        v2 = v43;
        result = (v29)(v33, v48, v43);
        v21 = v44;
      }

      else
      {
        result = (*v42)(v21, v2);
      }

      if (v46 == ++v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_17:

  (*(v41 + 8))(v37, v39);
  (*(v36 + 8))(v35, v38);
  result = v40;
  *(v40 + 16) = v20;
  return result;
}

uint64_t sub_199B0A6EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_199B0A734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_199B0A810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_199B0A858()
{
  result = qword_1EAF744D0;
  if (!qword_1EAF744D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF744C0, &unk_199E3D368);
    sub_199B0A8E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF744D0);
  }

  return result;
}

unint64_t sub_199B0A8E4()
{
  result = qword_1EAF744D8;
  if (!qword_1EAF744D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF744B0, &qword_199E3D358);
    sub_199B0A810(&qword_1EAF744C8, type metadata accessor for ContactDetailRowView, &unk_199E3D3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAF744D8);
  }

  return result;
}

unint64_t sub_199B0A9B4()
{
  result = qword_1EAF71D20;
  if (!qword_1EAF71D20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EAF71D20);
  }

  return result;
}

uint64_t objectdestroyTm_2(uint64_t a1)
{

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

void sub_199B0AB04(uint64_t a1)
{
  sub_199B0ABA0(319);
  if (v1 <= 0x3F)
  {
    sub_199DF7C9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}