uint64_t sub_21E8CDC1C()
{

  v1 = *(v0 + 8);

  return v1();
}

Swift::Void __swiftcall NCNotificationRootModernList.didTapCountIndicator()()
{
  v1 = v0;
  v2 = sub_21E786808(0xA);
  if (!v2)
  {
LABEL_6:
    v7 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout);
    v8 = *(v7 + 16);
    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v42 = MEMORY[0x277D84F90];

      sub_21E8D52D8(0, v8, 0);
      v9 = v42;
      v10 = v42[2];
      v11 = 32;
      do
      {
        v12 = *(v7 + v11);
        v42 = v9;
        v13 = *(v9 + 24);
        if (v10 >= v13 >> 1)
        {
          sub_21E8D52D8((v13 > 1), v10 + 1, 1);
          v9 = v42;
        }

        *(v9 + 16) = v10 + 1;
        *(v9 + v10 + 32) = v12;
        v11 += 24;
        ++v10;
        --v8;
      }

      while (v8);
    }

    v14 = 0;
    v15 = *(v9 + 16);
    v16 = (v9 + 32);
    while (v15 != v14)
    {
      v17 = v9 + v14++;
      if (*(v17 + 32) == 2)
      {
        v6 = 2;
        goto LABEL_27;
      }
    }

    v18 = 0;
    while (v15 != v18)
    {
      v19 = v16[v18++];
      if (v19 == 1)
      {
        v6 = 1;
        goto LABEL_27;
      }
    }

    v20 = 0;
    while (v15 != v20)
    {
      if (!v16[v20++])
      {
        v6 = 0;
        goto LABEL_27;
      }
    }

    if (v15)
    {
      v6 = *v16;
    }

    else
    {
      v6 = 4;
    }

LABEL_27:

    goto LABEL_28;
  }

  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {

    goto LABEL_6;
  }

  v5 = [v4 count];

  if (v5 <= 0)
  {
    goto LABEL_6;
  }

  v6 = 1;
LABEL_28:
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v22 = sub_21E929A78();
  __swift_project_value_buffer(v22, qword_280D05F58);
  v23 = sub_21E929A58();
  v24 = sub_21E92A648();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v42 = v26;
    *v25 = 136446210;
    v27 = sub_21E79841C(qword_21E948050[v6], 0xE100000000000000, &v42);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_21E77E000, v23, v24, "Count indicator did tap, scroll to %{public}s", v25, 0xCu);
    v28 = __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x223D65FB0](v26, -1, -1, v28);
    MEMORY[0x223D65FB0](v25, -1, -1);
  }

  v29 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout);
  v30 = *(v29 + 16);
  v31 = MEMORY[0x277D84F90];
  if (v30)
  {
    v42 = MEMORY[0x277D84F90];

    sub_21E8D52D8(0, v30, 0);
    v31 = v42;
    v32 = v42[2];
    v33 = 32;
    do
    {
      v34 = *(v29 + v33);
      v42 = v31;
      v35 = *(v31 + 24);
      if (v32 >= v35 >> 1)
      {
        sub_21E8D52D8((v35 > 1), v32 + 1, 1);
        v31 = v42;
      }

      *(v31 + 16) = v32 + 1;
      *(v31 + v32 + 32) = v34;
      v33 += 24;
      ++v32;
      --v30;
    }

    while (v30);
  }

  v36 = 0;
  v37 = *(v31 + 16);
  while (v37 != v36)
  {
    v38 = v31 + v36++;
    if (*(v38 + 32) == v6)
    {
LABEL_53:

      goto LABEL_54;
    }
  }

  while (1)
  {
    if (v6 <= 1u)
    {
      if (v6)
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }

      goto LABEL_50;
    }

    if (v6 == 2)
    {
      v6 = 3;
      goto LABEL_50;
    }

    if (v6 != 3)
    {
      break;
    }

    v6 = 4;
LABEL_50:
    v39 = *(v31 + 16);
    v40 = (v31 + 32);
    while (v39)
    {
      v41 = *v40++;
      --v39;
      if (v41 == v6)
      {
        goto LABEL_53;
      }
    }
  }

  if (v37)
  {
    v6 = *(v31 + 32);
    goto LABEL_53;
  }

  v6 = 4;
LABEL_54:

  sub_21E8C6068(1, v6, 0, 0);
}

void sub_21E8CE120()
{
  v1 = v0;
  v2 = sub_21E786808(2);
  if (!v2)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v3 = v2;
  v4 = [v2 listView];

  if (!v4)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  LODWORD(v5) = [v4 isRevealed];

  v6 = sub_21E786808(0);
  if (!v6)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v7 = v6;
  v8 = [v6 listView];

  if (v8)
  {
    LODWORD(v9) = [v8 isRevealed];

    if (qword_280D03F40 != -1)
    {
LABEL_54:
      swift_once();
    }

    v10 = sub_21E929A78();
    __swift_project_value_buffer(v10, qword_280D05F58);
    v11 = sub_21E929A58();
    v12 = sub_21E92A618();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 67240448;
      *(v13 + 4) = v5;
      *(v13 + 8) = 1026;
      *(v13 + 10) = v9;
      _os_log_impl(&dword_21E77E000, v11, v12, "Incoming revealed: %{BOOL,public}d, History revealed: %{BOOL,public}d", v13, 0xEu);
      MEMORY[0x223D65FB0](v13, -1, -1);
    }

    v14 = v1;
    v15 = sub_21E929A58();
    v16 = sub_21E92A618();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134349056;
      v94.receiver = v14;
      v94.super_class = NCNotificationRootModernList;
      v18 = objc_msgSendSuper2(&v94, sel_rootListView);
      [v18 contentOffset];
      v20 = v19;

      *(v17 + 4) = v20;
      _os_log_impl(&dword_21E77E000, v15, v16, "Verifying scroll position... Current offset: %{public}f", v17, 0xCu);
      MEMORY[0x223D65FB0](v17, -1, -1);
    }

    v99.receiver = v14;
    v99.super_class = NCNotificationRootModernList;
    v21 = objc_msgSendSuper2(&v99, sel_rootListView);
    v22 = [v21 isTracking];

    if (v22)
    {
      v23 = sub_21E929A58();
      v24 = sub_21E92A618();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_21E77E000, v23, v24, "Scroll view is tracking", v25, 2u);
        MEMORY[0x223D65FB0](v25, -1, -1);
      }

      v26 = sub_21E929A58();
      v27 = sub_21E92A618();
      v28 = os_log_type_enabled(v26, v27);
LABEL_49:
      if (v28)
      {
        v90 = swift_slowAlloc();
        *v90 = 67240192;
        *(v90 + 4) = 1;
        _os_log_impl(&dword_21E77E000, v26, v27, "Scroll position is valid: %{BOOL,public}d", v90, 8u);
        goto LABEL_51;
      }

      goto LABEL_52;
    }

    v98.receiver = v14;
    v98.super_class = NCNotificationRootModernList;
    v29 = objc_msgSendSuper2(&v98, sel_rootListView);
    [v29 contentOffset];
    v31 = v30;

    sub_21E9183DC();
    v1 = v32;
    v33 = sub_21E929A58();
    v34 = sub_21E92A618();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v95 = v36;
      *v35 = 136446210;
      v37 = MEMORY[0x223D646D0](v1, &type metadata for NotificationModernListPaginator.Page);
      v39 = sub_21E79841C(v37, v38, &v95);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_21E77E000, v33, v34, "Calculated pages: %{public}s", v35, 0xCu);
      v40 = __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x223D65FB0](v36, -1, -1, v40);
      MEMORY[0x223D65FB0](v35, -1, -1);
    }

    sub_21E8CEB2C(v1);
    v42 = *(v41 + 16);
    if (v42)
    {
      v95 = MEMORY[0x277D84F90];
      v43 = v41;
      sub_21E8D5318(0, v42, 0);
      v5 = v95;
      v44 = v95[2];
      v45 = 32 * v44;
      v46 = (v43 + 48);
      do
      {
        v47 = *(v46 - 1);
        v48 = *v46;
        v95 = v5;
        v49 = *(v5 + 24);
        v50 = v44 + 1;
        if (v44 >= v49 >> 1)
        {
          v91 = v48;
          v92 = v47;
          sub_21E8D5318((v49 > 1), v44 + 1, 1);
          v48 = v91;
          v47 = v92;
          v5 = v95;
        }

        *(v5 + 16) = v50;
        v51 = v5 + v45;
        *(v51 + 32) = v47;
        *(v51 + 48) = v48;
        v45 += 32;
        v46 = (v46 + 40);
        v44 = v50;
        --v42;
      }

      while (v42);
    }

    else
    {

      v5 = MEMORY[0x277D84F90];
    }

    v52 = *(v5 + 16);
    v53 = MEMORY[0x277D84F90];
    if (v52)
    {
      v93 = v1;
      v97 = MEMORY[0x277D84F90];
      sub_21E8D52F8(0, v52, 0);
      v53 = v97;
      v54 = (v5 + 56);
      do
      {
        v55 = *(v54 - 3);
        v56 = *(v54 - 2);
        v57 = *(v54 - 1);
        v58 = *v54;
        v100.origin.x = v55;
        v100.origin.y = v56;
        v100.size.width = v57;
        v100.size.height = *v54;
        CGRectGetMinY(v100);
        v95 = sub_21E92A5E8();
        v96 = v59;
        MEMORY[0x223D64660](540945696, 0xE400000000000000);
        v101.origin.x = v55;
        v101.origin.y = v56;
        v101.size.width = v57;
        v101.size.height = v58;
        CGRectGetMaxY(v101);
        v60 = sub_21E92A5E8();
        MEMORY[0x223D64660](v60);

        v61 = v95;
        v62 = v96;
        v97 = v53;
        v64 = *(v53 + 16);
        v63 = *(v53 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_21E8D52F8((v63 > 1), v64 + 1, 1);
          v53 = v97;
        }

        *(v53 + 16) = v64 + 1;
        v65 = v53 + 16 * v64;
        *(v65 + 32) = v61;
        *(v65 + 40) = v62;
        v54 += 4;
        --v52;
      }

      while (v52);
      v1 = v93;
    }

    v66 = sub_21E929A58();
    v67 = sub_21E92A618();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v95 = v69;
      *v68 = 136446210;
      v70 = MEMORY[0x223D646D0](v53, MEMORY[0x277D837D0]);
      v72 = v71;

      v73 = sub_21E79841C(v70, v72, &v95);

      *(v68 + 4) = v73;
      _os_log_impl(&dword_21E77E000, v66, v67, "Calculated exclusionZones: %{public}s", v68, 0xCu);
      v74 = __swift_destroy_boxed_opaque_existential_1Tm(v69);
      MEMORY[0x223D65FB0](v69, -1, -1, v74);
      MEMORY[0x223D65FB0](v68, -1, -1);
    }

    else
    {
    }

    v75 = *(v5 + 16);
    if (v75)
    {
      v9 = 0;
      v76 = (v5 + 56);
      while (1)
      {
        if (v9 >= *(v5 + 16))
        {
          __break(1u);
          goto LABEL_54;
        }

        v78 = *(v76 - 1);
        v77 = *v76;
        v80 = *(v76 - 3);
        v79 = *(v76 - 2);
        v102.origin.x = v80;
        v102.origin.y = v79;
        v102.size.width = v78;
        v102.size.height = *v76;
        if (CGRectGetMinY(v102) + 1.0 <= v31)
        {
          v103.origin.x = v80;
          v103.origin.y = v79;
          v103.size.width = v78;
          v103.size.height = v77;
          if (v31 <= CGRectGetMaxY(v103) + -1.0)
          {
            break;
          }
        }

        ++v9;
        v76 += 4;
        if (v75 == v9)
        {
          goto LABEL_42;
        }
      }

      v81 = sub_21E929A58();
      v82 = sub_21E92A618();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_21E77E000, v81, v82, "Scroll position is currently in exclusion zone", v83, 2u);
        MEMORY[0x223D65FB0](v83, -1, -1);
      }

      v26 = sub_21E929A58();
      v84 = sub_21E92A618();
      if (os_log_type_enabled(v26, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_21E77E000, v26, v84, "This is only valid while it is animating, not as a resting position", v85, 2u);
        v86 = v85;
        goto LABEL_46;
      }

      goto LABEL_47;
    }

LABEL_42:

    if (*(v1 + 16))
    {
      v87 = *(v1 + 40);

      v26 = sub_21E929A58();
      v27 = sub_21E92A618();
      v28 = os_log_type_enabled(v26, v27);
      if (v31 >= v87 + -1.0)
      {
        goto LABEL_49;
      }

      if (v28)
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_21E77E000, v26, v27, "Scroll position invalid because it's below count", v88, 2u);
        v86 = v88;
LABEL_46:
        MEMORY[0x223D65FB0](v86, -1, -1);
      }

LABEL_47:

      v26 = sub_21E929A58();
      v89 = sub_21E92A618();
      if (os_log_type_enabled(v26, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 67240192;
        _os_log_impl(&dword_21E77E000, v26, v89, "Scroll position is valid: %{BOOL,public}d", v90, 8u);
LABEL_51:
        MEMORY[0x223D65FB0](v90, -1, -1);
      }

LABEL_52:

      return;
    }

    __break(1u);
    goto LABEL_56;
  }

LABEL_59:
  __break(1u);
}

void sub_21E8CEB2C(uint64_t a1)
{
  v38 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = MEMORY[0x277D84F90];
  v4 = v2 - 1;
  if (v2 == 1)
  {
    v6 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = (a1 + 72);
    v6 = MEMORY[0x277D84F90];
    do
    {
      v7 = *(v5 - 40);
      v8 = *(v5 - 4);
      v9 = *(v5 - 3);
      v10 = *(v5 - 16);
      v11 = *(v5 - 1);
      v12 = *v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_21E924658(0, *(v6 + 2) + 1, 1, v6);
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        v6 = sub_21E924658((v13 > 1), v14 + 1, 1, v6);
      }

      *(v6 + 2) = v14 + 1;
      v15 = &v6[48 * v14];
      v15[32] = v7;
      v5 += 3;
      *(v15 + 5) = v8;
      *(v15 + 6) = v9;
      v15[56] = v10;
      *(v15 + 8) = v11;
      *(v15 + 9) = v12;
      --v4;
    }

    while (v4);
  }

  v37.receiver = v1;
  v37.super_class = NCNotificationRootModernList;
  v16 = objc_msgSendSuper2(&v37, sel_rootListView);
  v17 = [v16 traitCollection];

  [v17 displayScale];
  v18 = *(v6 + 2);
  if (!v18)
  {

    v38 = MEMORY[0x277D84F90];
LABEL_26:
    sub_21E8D0D1C(&v38);
    return;
  }

  sub_21E8D5358(0, v18, 0);
  v19 = 0;
  v20 = v3;
  v21 = v6 + 64;
  while (v19 < *(v6 + 2))
  {
    v22 = *(v21 - 32);
    v23 = *(v21 - 8);
    CGRectMake_1();
    UIRectRoundToScale();
    if (v23)
    {
      v28 = v22 == 0;
    }

    else
    {
      v28 = 1;
    }

    v29 = v28;
    v31 = *(v20 + 16);
    v30 = *(v20 + 24);
    if (v31 >= v30 >> 1)
    {
      v33 = v24;
      v34 = v25;
      v35 = v26;
      v36 = v27;
      sub_21E8D5358((v30 > 1), v31 + 1, 1);
      v27 = v36;
      v26 = v35;
      v25 = v34;
      v24 = v33;
    }

    ++v19;
    *(v20 + 16) = v31 + 1;
    v32 = v20 + 40 * v31;
    *(v32 + 32) = v24;
    *(v32 + 40) = v25;
    *(v32 + 48) = v26;
    *(v32 + 56) = v27;
    *(v32 + 64) = v29;
    v21 += 48;
    if (v18 == v19)
    {

      v38 = v20;
      goto LABEL_26;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall NCNotificationRootModernList._displayStyleDidChangeForSleep()()
{
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v1 = sub_21E929A78();
  __swift_project_value_buffer(v1, qword_280D05F58);
  v2 = v0;
  v3 = sub_21E929A58();
  v4 = sub_21E92A648();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136446466;
    v7 = sub_21E788090();
    v8 = sub_21E79841C(qword_21E948050[v7], 0xE100000000000000, &v16);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2082;
    v9 = [v2 currentListDisplayStyleSettingReason];
    v10 = sub_21E92A458();
    v12 = v11;

    v13 = sub_21E79841C(v10, v12, &v16);

    *(v5 + 14) = v13;
    _os_log_impl(&dword_21E77E000, v3, v4, "Display style did change for sleep, new systemPreferredPageType %{public}s, reason: %{public}s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v6, -1, -1);
    MEMORY[0x223D65FB0](v5, -1, -1);
  }

  v14 = sub_21E788090();
  sub_21E8C54F8(v14);
  v15 = sub_21E788090();
  sub_21E8C6068(1, v15, 0, 0);
}

void sub_21E8CF014(void *a1)
{
  v9.receiver = a1;
  v9.super_class = NCNotificationRootModernList;
  v2 = objc_msgSendSuper2(&v9, sel_rootListView);
  v8.receiver = a1;
  v8.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v8, sel_rootListView);
  [v3 contentOffset];
  v5 = v4;
  v7 = v6;

  [v2 setContentOffset:0 animated:{v5, v7}];
}

Swift::Void __swiftcall NCNotificationRootModernList.scrollViewDidScroll(_:)(UIScrollView *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR___NCNotificationRootModernList_exclusionManager];
  [(UIScrollView *)a1 contentOffset];
  sub_21E91AC34(v5, v6);

  sub_21E8CB760(a1);
  v12.receiver = v2;
  v12.super_class = NCNotificationRootModernList;
  v7 = [(UIScrollView *)&v12 rootListView];
  [v7 layoutIfNeeded];

  v8 = [v2 delegate];
  if (v8)
  {
    v9 = v8;
    v11.receiver = v2;
    v11.super_class = NCNotificationRootModernList;
    v10 = [(UIScrollView *)&v11 rootListView];
    [v9 notificationRootList:v2 scrollViewDidScroll:v10];

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall NCNotificationRootModernList.scrollViewWillBeginDragging(_:)(UIScrollView *a1)
{
  if (![(UIScrollView *)a1 isDecelerating])
  {
    [v1 _signpostScrollingBegan_];
  }

  [v1 _cancelTouchesOnLiveActivities_];
  *(*&v1[OBJC_IVAR___NCNotificationRootModernList_exclusionManager] + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_shouldUpdateWithoutAnimation) = 0;
  v2 = [v1 delegate];
  if (v2)
  {
    v3 = v2;
    v5.receiver = v1;
    v5.super_class = NCNotificationRootModernList;
    v4 = [(UIScrollView *)&v5 rootListView];
    [v3 notificationRootList:v1 scrollViewWillBeginDragging:v4];

    swift_unknownObjectRelease();
  }
}

uint64_t NCNotificationRootModernList.scrollViewWillEndDragging(_:withVelocity:targetContentOffset:)(void *a1, uint64_t a2, double a3, double a4)
{
  v5 = v4;
  v10 = *&v5[OBJC_IVAR___NCNotificationRootModernList_exclusionManager];
  sub_21E91B0CC(a1, a2, a3, a4);

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v11 = sub_21E929A78();
  __swift_project_value_buffer(v11, qword_280D05F58);
  v12 = sub_21E929A58();
  v13 = sub_21E92A618();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    *(v14 + 4) = *(a2 + 8);
    _os_log_impl(&dword_21E77E000, v12, v13, "ScrollView will end dragging on %{public}f", v14, 0xCu);
    MEMORY[0x223D65FB0](v14, -1, -1);
  }

  sub_21E796374(0);
  v15 = [v5 delegate];
  if (v15)
  {
    v18 = v15;
    v21.receiver = v5;
    v21.super_class = NCNotificationRootModernList;
    v19 = objc_msgSendSuper2(&v21, sel_rootListView);
    [v18 notificationRootList:v5 scrollViewWillEndDragging:v19 withVelocity:a2 targetContentOffset:{a3, a4}];

    swift_unknownObjectRelease();
  }

  return sub_21E8D8074(a2, v16, v17);
}

Swift::Void __swiftcall NCNotificationRootModernList.scrollViewDidEndScrollingAnimation(_:)(UIScrollView *a1)
{
  v2 = v1;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v4 = sub_21E929A78();
  __swift_project_value_buffer(v4, qword_280D05F58);
  v5 = a1;
  v6 = sub_21E929A58();
  v7 = sub_21E92A618();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    [(UIScrollView *)v5 contentOffset];
    *(v8 + 4) = v9;
    _os_log_impl(&dword_21E77E000, v6, v7, "ScrollView did end scrolling animation: %{public}f", v8, 0xCu);
    MEMORY[0x223D65FB0](v8, -1, -1);
  }

  *(*(v2 + OBJC_IVAR___NCNotificationRootModernList_exclusionManager) + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_shouldUpdateWithoutAnimation) = 0;
}

Swift::Void __swiftcall NCNotificationRootModernList.scrollViewDidEndDecelerating(_:)(UIScrollView *a1)
{
  v2 = v1;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v4 = sub_21E929A78();
  __swift_project_value_buffer(v4, qword_280D05F58);
  v5 = a1;
  v6 = sub_21E929A58();
  v7 = sub_21E92A618();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    [(UIScrollView *)v5 contentOffset];
    *(v8 + 4) = v9;
    _os_log_impl(&dword_21E77E000, v6, v7, "ScrollView did end decelerating: %{public}f", v8, 0xCu);
    MEMORY[0x223D65FB0](v8, -1, -1);
  }

  [v2 _signpostScrollingBegan_];
  *(*&v2[OBJC_IVAR___NCNotificationRootModernList_exclusionManager] + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_shouldUpdateWithoutAnimation) = 0;
  memset(v11, 0, sizeof(v11));
  v12 = 0x8000000000000000;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_21E8C2F48(v11);
  v10 = v2[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
  if (v10 <= 1)
  {
    sub_21E8C7910(v10);
  }

  sub_21E8CCC2C();

  sub_21E8CF970();
}

void sub_21E8CF970()
{
  v1 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_layout);
  v2 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_layout + 8);
  v3 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_layout + 16);

  v4.n128_u64[0] = v3;
  sub_21E783428(v1, &v31, v2, v4);

  v5 = v31;
  v6 = v32;
  v8 = v33;
  v7 = v34;
  v10 = v35;
  v9 = v36;
  v11 = v37;
  v12 = v38 >> 6;
  if (v12 == 1)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v17 = sub_21E929A78();
    __swift_project_value_buffer(v17, qword_280D05F58);
    v18 = sub_21E929A58();
    v19 = sub_21E92A648();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = v6;
      v21 = v9;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 134349570;
      *(v22 + 4) = v11;
      *(v22 + 12) = 2082;
      v24 = sub_21E8C11B8(v5, v20, v8);
      v26 = sub_21E79841C(v24, v25, &v30);

      *(v22 + 14) = v26;
      *(v22 + 22) = 2082;
      v27 = sub_21E8C11B8(v7, v10, v21);
      v29 = sub_21E79841C(v27, v28, &v30);

      *(v22 + 24) = v29;
      _os_log_impl(&dword_21E77E000, v18, v19, "ScrollView end decelerating in transition page with percentage %{public}f, previousPage: %{public}s, nextPage: %{public}s. Re-validate scrollPosition", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v23, -1, -1);
      MEMORY[0x223D65FB0](v22, -1, -1);
    }
  }

  else
  {
    if (v12 != 2 || v38 != 128 || v31 != 2 || *&v33 | *&v32 | v34 | *&v35 | *&v36 | v37)
    {
      return;
    }

    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v13 = sub_21E929A78();
    __swift_project_value_buffer(v13, qword_280D05F58);
    v14 = sub_21E929A58();
    v15 = sub_21E92A648();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_21E77E000, v14, v15, "ScrollView end decelerating in belowBottom. Re-validate scrollPosition", v16, 2u);
      MEMORY[0x223D65FB0](v16, -1, -1);
    }
  }

  sub_21E798E1C(129);
}

Swift::Void __swiftcall NCNotificationRootModernList.scrollViewDidEndDragging(_:willDecelerate:)(UIScrollView *_, Swift::Bool willDecelerate)
{
  v3 = v2;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v6 = sub_21E929A78();
  __swift_project_value_buffer(v6, qword_280D05F58);
  v7 = _;
  v8 = sub_21E929A58();
  v9 = sub_21E92A618();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134349056;
    [(UIScrollView *)v7 contentOffset];
    *(v10 + 4) = v11;
    _os_log_impl(&dword_21E77E000, v8, v9, "ScrollView did end dragging: %{public}f", v10, 0xCu);
    MEMORY[0x223D65FB0](v10, -1, -1);
  }

  if (!willDecelerate)
  {
    [v3 _signpostScrollingBegan_];
  }

  [v3 _cancelTouchesOnLiveActivities_];
}

uint64_t sub_21E8CFF00(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 1501061485;
  }

  else
  {
    v2 = 1500408173;
  }

  if (*a2)
  {
    v3 = 1501061485;
  }

  else
  {
    v3 = 1500408173;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_21E92AA58();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_21E8CFF78()
{
  sub_21E92AB28();
  sub_21E92A4A8();

  return sub_21E92AB48();
}

double sub_21E8CFFE0(uint64_t a1)
{
  sub_21E92A4A8();

  return result;
}

uint64_t sub_21E8D002C(uint64_t a1)
{
  sub_21E92AB28();
  sub_21E92A4A8();

  return sub_21E92AB48();
}

void sub_21E8D0090(char *a2@<X8>)
{
  v3 = sub_21E92AA08();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21E8D00F0(uint64_t *a1@<X8>)
{
  v2 = 1500408173;
  if (*v1)
  {
    v2 = 1501061485;
  }

  *a1 = v2;
  a1[1] = 0xE400000000000000;
}

uint64_t sub_21E8D0118(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {
    v9 = 0x2065676150;
    v6 = sub_21E8C11B8(a1, *&a2, *&a3);
    MEMORY[0x223D64660](v6);

    MEMORY[0x223D64660](2108704, 0xE300000000000000);
    if (a4)
    {
      v7 = 1501061485;
    }

    else
    {
      v7 = 1500408173;
    }

    MEMORY[0x223D64660](v7, 0xE400000000000000);
  }

  else
  {
    v9 = 0x2074657366666FLL;
    v4 = sub_21E92A5E8();
    MEMORY[0x223D64660](v4);
  }

  return v9;
}

uint64_t sub_21E8D0208()
{
  sub_21E792694(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_21E8D0240(_OWORD *a1, __n128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v9 = a2[2];
  v10 = v5;
  return sub_21E8D5CCC(v7, v8, v9, v5) & 1;
}

void sub_21E8D02C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 < 0)
  {
    v6 = *&v4[OBJC_IVAR___NCNotificationRootModernList_layout];
    v7 = (v6 + 32);
    v8 = *(v6 + 16) + 1;
    do
    {
      if (!--v8)
      {
        v14.receiver = v4;
        v14.super_class = NCNotificationRootModernList;
        v11 = objc_msgSendSuper2(&v14, sel_rootListView, a3);
        [v11 contentOffset];
        v13 = v12;

        sub_21E8D03B8(v4, v13);
        return;
      }

      v9 = v7 + 24;
      v10 = *v7;
      v7 += 24;
    }

    while (v10 != a1);
    if (a4)
    {
      v5 = *(v9 - 1);
    }

    else
    {
      v5 = *(v9 - 2);
    }
  }

  else
  {
    v5 = *&a1;
  }

  sub_21E8D03B8(v4, v5);
}

CGFloat sub_21E8D03B8(char *a1, CGFloat a2)
{
  v24.receiver = a1;
  v24.super_class = NCNotificationRootModernList;
  v4 = objc_msgSendSuper2(&v24, sel_rootListView);
  [v4 contentOffset];

  v5 = *&a1[OBJC_IVAR___NCNotificationRootModernList_exclusionManager];
  v6 = *&v5[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView];
  v7 = v5;
  [v6 adjustedContentInset];
  v9 = *&v7[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones];
  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = v8 + a2;
    v12 = (v9 + 56);
    while (1)
    {
      v13 = *(v12 - 2);
      v14 = *v12;
      if (v13 < v11 && v11 < v13 + *v12)
      {
        break;
      }

      v12 += 5;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    v16 = *(v12 - 3);
    v17 = *(v12 - 1);
    v25.origin.x = v16;
    v25.origin.y = *(v12 - 2);
    v25.size.width = v17;
    v25.size.height = *v12;
    if (CGRectGetMidY(v25) <= a2)
    {
      v27.origin.x = v16;
      v27.origin.y = v13;
      v27.size.width = v17;
      v27.size.height = v14;
      MaxY = CGRectGetMaxY(v27);
    }

    else
    {
      v26.origin.x = v16;
      v26.origin.y = v13;
      v26.size.width = v17;
      v26.size.height = v14;
      MaxY = CGRectGetMinY(v26);
    }

    a2 = MaxY;
  }

LABEL_13:

  v19 = *&a1[OBJC_IVAR___NCNotificationRootModernList_layout];
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = *(v19 + 40);
    if (a2 > v21)
    {
      v21 = a2;
    }

    v22 = v19 + 24 * v20;
    if (*(v22 + 24) >= v21)
    {
      return v21;
    }

    else
    {
      return *(v22 + 24);
    }
  }

  return a2;
}

void *sub_21E8D0544()
{
  v14.super_class = NCNotificationRootModernList;
  v0 = objc_msgSendSuper2(&v14, sel_notificationListSections);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7450, &qword_21E947D50);
  v1 = sub_21E92A528();

  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E92A828())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D64A50](v3, v1);
        v4 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        goto LABEL_11;
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      swift_unknownObjectRetain();
      v4 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

LABEL_11:
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v6 = v5;
        v7 = [v5 identifier];
        v8 = sub_21E92A458();
        v10 = v9;

        if (v8 == 0xD000000000000010 && 0x800000021E9577C0 == v10)
        {

LABEL_19:

          return v6;
        }

        v12 = sub_21E92AA58();

        if (v12)
        {
          goto LABEL_19;
        }
      }

      swift_unknownObjectRelease();
      ++v3;
      if (v4 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:

  return 0;
}

void sub_21E8D0744(unsigned __int8 a1, void *a2, uint64_t a3)
{
  v6 = a1;
  v7 = sub_21E786808(0xA);
  v8 = v7;
  if (!v6)
  {
    if (v7)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (!v10)
      {
      }
    }

    else
    {
      v10 = 0;
    }

    [a2 _setRevealed_forSection_];
    swift_unknownObjectRelease();
    v16 = sub_21E786808(1);
    if (v16)
    {
      v17 = v16;
      [a2 _setRevealed_forSection_];

      v18 = sub_21E786808(2);
      if (v18)
      {
        v19 = v18;
        [a2 _setRevealed_forSection_];

        swift_beginAccess();
        v20 = 0.0;
        if (*(a3 + 16) == 1)
        {
          v28.receiver = a2;
          v28.super_class = NCNotificationRootModernList;
          v21 = objc_msgSendSuper2(&v28, sel_rootListView, 0.0);
          [v21 visibleRectBottomMarginForRollUnder];
          v23 = v22;

          v20 = v23 + 15.0;
        }

        sub_21E8D0A18(v20);
        goto LABEL_19;
      }

LABEL_27:
      __break(1u);
      return;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v7)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (!v9)
    {
    }
  }

  else
  {
    v9 = 0;
  }

  [a2 _setRevealed_forSection_];
  swift_unknownObjectRelease();
  v11 = sub_21E786808(1);
  if (!v11)
  {
    __break(1u);
    goto LABEL_25;
  }

  v12 = v11;
  [a2 _setRevealed_forSection_];

  v13 = sub_21E786808(2);
  if (!v13)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = v13;
  [a2 _setRevealed_forSection_];

  sub_21E8D0A18(0.0);
  if (a1 < 4u)
  {
LABEL_19:
    swift_beginAccess();
    v15 = 0.0;
    if (*(a3 + 16) == 1)
    {
      v29.receiver = a2;
      v29.super_class = NCNotificationRootModernList;
      v24 = objc_msgSendSuper2(&v29, sel_rootListView, 0.0);
      [v24 visibleRectBottomMarginForRollUnder];
      v26 = v25;

      v15 = v26 + 15.0;
    }

    goto LABEL_21;
  }

  v15 = 0.0;
LABEL_21:
  sub_21E8D0BE0(v15);
  v27 = 0.0;
  if (a1 == 4)
  {
    v27 = 1.0;
  }

  sub_21E8D5ED4(a1 == 4, v27);
  *(a2 + OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection) = a1 > 1u;
  sub_21E790FD8();
}

void sub_21E8D0A18(double a1)
{
  v2 = sub_21E786808(0xB);
  if (!v2)
  {
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v3 = v2;
  v4 = [v2 count];

  if (v4 <= 0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = a1;
  }

  v6 = sub_21E786808(0xC);
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = v6;
  v8 = [v6 count];

  if (v8 > 0 && v5 == 0.0)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0.0;
  }

  if (v9 != 0.0 || v5 != 0.0)
  {
    a1 = 0.0;
  }

  v10 = sub_21E786808(0xB);
  if (!v10)
  {
    goto LABEL_22;
  }

  v11 = v10;
  v12 = [v10 listView];

  if (!v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v12 setAdditionalBottomSpace_];

  v13 = sub_21E786808(0xC);
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v13;
  v15 = [v13 listView];

  if (!v15)
  {
LABEL_25:
    __break(1u);
    return;
  }

  [v15 setAdditionalBottomSpace_];

  v16 = sub_21E7871A0();
  if (v16)
  {
    v17 = v16;
    v18 = [v16 listView];

    [v18 setAdditionalBottomSpace_];
  }
}

void sub_21E8D0BE0(double a1)
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  IsAX = _NCSizeCategoryIsAX(v3);
  v5 = sub_21E786808(2);
  v6 = v5;
  if (!IsAX)
  {
    if (v5)
    {
      v7 = [v5 listView];

      if (v7)
      {
        [v7 setAdditionalBottomSpace_];
        goto LABEL_8;
      }

LABEL_14:
      __break(1u);
      return;
    }

    goto LABEL_12;
  }

  if (!v5)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = [v5 listView];

  if (!v7)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v7 setAdditionalBottomSpace_];
LABEL_8:
}

void sub_21E8D0D1C(char **a1)
{
  v1 = a1;
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_21E924E2C(v2);
  }

  v3 = *(v2 + 2);
  v28[0] = v2 + 32;
  v28[1] = v3;
  v4 = sub_21E92AA18();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v25 = v1;
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 + 16;
          v14 = *(v12 - 3);
          v15 = *(v12 - 2);
          v16 = *(v12 - 1);
          v17 = *v12;
          MinY = CGRectGetMinY(*(v12 + 16));
          v29.origin.x = v14;
          v29.origin.y = v15;
          v29.size.width = v16;
          v29.size.height = v17;
          if (MinY >= CGRectGetMinY(v29))
          {
            break;
          }

          v19 = v12[48];
          v20 = *(v12 + 1);
          v21 = *(v12 + 2);
          v22 = *(v12 - 8);
          *v13 = *(v12 - 24);
          *(v12 + 2) = v22;
          v23 = *(v12 + 1);
          *(v12 - 24) = v20;
          *(v12 - 8) = v21;
          v12[8] = v19;
          v12 -= 40;
          *(v13 + 4) = v23;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }

      v1 = v25;
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7448, &unk_21E947D40);
      v7 = sub_21E92A558();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v26[0] = (v7 + 32);
    v26[1] = v6;
    sub_21E8D5398(v26, v27, v28, v5);
    *(v7 + 16) = 0;
  }

  *v1 = v2;
}

double sub_21E8D0EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

void sub_21E8D0F44()
{
  if (sub_21E788490())
  {
    sub_21E784AD0(0);
    v22.receiver = v0;
    v22.super_class = NCNotificationRootModernList;
    v1 = objc_msgSendSuper2(&v22, sel_rootListView);
    [v1 contentOffset];
    v3 = v2;

    v4 = *&v0[OBJC_IVAR___NCNotificationRootModernList_exclusionManager];
    v5 = *&v4[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView];
    v6 = v4;
    [v5 adjustedContentInset];
    v8 = *&v6[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones];
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = v3 + v7;
      v11 = (v8 + 56);
      while (1)
      {
        v12 = *(v11 - 2);
        v13 = *v11;
        if (v12 < v10 && v10 < v12 + *v11)
        {
          break;
        }

        v11 += 5;
        if (!--v9)
        {
          goto LABEL_9;
        }
      }

      v19 = *(v11 - 3);
      v20 = *(v11 - 1);
      v23.origin.x = v19;
      v23.origin.y = *(v11 - 2);
      v23.size.width = v20;
      v23.size.height = *v11;
      if (v3 >= CGRectGetMidY(v23))
      {
        v25.origin.x = v19;
        v25.origin.y = v12;
        v25.size.width = v20;
        v25.size.height = v13;
        MaxY = CGRectGetMaxY(v25);
      }

      else
      {
        v24.origin.x = v19;
        v24.origin.y = v12;
        v24.size.width = v20;
        v24.size.height = v13;
        MaxY = CGRectGetMinY(v24);
      }
    }

    else
    {
LABEL_9:
      MaxY = v3;
    }

    v21.receiver = v0;
    v21.super_class = NCNotificationRootModernList;
    v16 = objc_msgSendSuper2(&v21, sel_rootListView);
    UIRoundToViewScale();
    v18 = v17;

    if (v18 > 0.0)
    {
      sub_21E8CC644(1, MaxY);
    }
  }
}

uint64_t sub_21E8D10FC(uint64_t result, char a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  v6 = result;
  if ((result & 1) != 0 && (a2 & 1) == 0)
  {
    memset(v7, 0, sizeof(v7));
    v8 = 0x8000000000000000;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    result = sub_21E8C2F48(v7);
  }

  if (a4)
  {
    return (a4)(v6 & 1, a2 & 1, a3);
  }

  return result;
}

BOOL NCNotificationRootModernList.shouldScrollToTop(for:)()
{
  v15.super_class = NCNotificationRootModernList;
  v1 = objc_msgSendSuper2(&v15, sel_rootListView);
  [v1 contentSize];
  v3 = v2;

  v14.receiver = v0;
  v14.super_class = NCNotificationRootModernList;
  v4 = objc_msgSendSuper2(&v14, sel_rootListView);
  [v4 frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v16.origin.x = v6;
  v16.origin.y = v8;
  v16.size.width = v10;
  v16.size.height = v12;
  return v3 < CGRectGetHeight(v16);
}

id NCNotificationRootModernList.notificationListBaseComponent(_:requestsScrollingToContentOffset:withCompletion:)(id a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v10 = sub_21E929A78();
  __swift_project_value_buffer(v10, qword_280D05F58);
  v11 = sub_21E929A58();
  v12 = sub_21E92A648();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = a4;
    _os_log_impl(&dword_21E77E000, v11, v12, "Inner list requests scroll to %f", v13, 0xCu);
    MEMORY[0x223D65FB0](v13, -1, -1);
  }

  if (v5[OBJC_IVAR___NCNotificationRootModernList_layout + 80])
  {
    v14 = 0.0;
  }

  else
  {
    v14 = *&v5[OBJC_IVAR___NCNotificationRootModernList_layout + 72];
  }

  v29.receiver = v5;
  v29.super_class = NCNotificationRootModernList;
  v15 = objc_msgSendSuper2(&v29, sel_rootListView);
  [v15 visibleRectBottomMarginForRollUnder];
  v17 = v16;

  result = sub_21E786808(0);
  if (result)
  {
    v19 = result;
    v20 = v14 + a4 + v17 + 200.0;

    if (v19 != a1)
    {
LABEL_14:
      v26 = swift_allocObject();
      v26[2] = v5;
      v26[3] = a2;
      v26[4] = a3;
      _s23ScrollCompletionHandlerCMa();
      v27 = swift_allocObject();
      *(v27 + 32) = 0;
      *(v27 + 16) = sub_21E8D85F4;
      *(v27 + 24) = v26;
      *&v30 = 0;
      *(&v30 + 1) = v20;
      v31 = 0;
      v32 = 0;
      v33 = 0x4000000000000000;
      v34 = v27;
      v28 = v5;

      return sub_21E8C2F48(&v30);
    }

    result = sub_21E786808(2);
    if (result)
    {
      v21 = result;
      type metadata accessor for StructureListSizer();
      swift_initStackObject();
      sub_21E919A70(v21);
      if (sub_21E9195AC())
      {
        sub_21E9195E0();
        v23 = v22;
        sub_21E7A18E0();
        v25 = v24;

        v20 = v20 + v23 - v25;
      }

      else
      {
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall NCNotificationRootModernList.supplementaryViewSectionDidChangeContent(_:)(NCNotificationListSupplementaryViewsSection *a1)
{
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v3 = sub_21E929A78();
  __swift_project_value_buffer(v3, qword_280D05F58);
  v4 = v1;
  v5 = a1;
  v6 = sub_21E929A58();
  v7 = sub_21E92A648();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543874;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2050;
    v10 = [(NCNotificationListSupplementaryViewsSection *)v5 listView];
    [(NCNotificationListViewProtocol *)v10 frame];
    v12 = v11;

    *(v8 + 14) = v12;
    *(v8 + 22) = 1026;
    LOBYTE(v10) = sub_21E787D70();

    *(v8 + 24) = v10 & 1;
    _os_log_impl(&dword_21E77E000, v6, v7, "Supplementary section did change content: %{public}@. Supplement height: %{public}f. isUserEngagingView: %{BOOL,public}d", v8, 0x1Cu);
    sub_21E8B4CAC(v9, &qword_27CED7360, &unk_21E947B70);
    MEMORY[0x223D65FB0](v9, -1, -1);
    MEMORY[0x223D65FB0](v8, -1, -1);
  }

  else
  {

    v6 = v4;
  }

  v13 = sub_21E7871A0();
  if (v13)
  {
    v30 = v13;
    sub_21E796644(0, &unk_280D03C18, 0x277D82BB8);
    if (sub_21E92A788())
    {
      v31.receiver = v4;
      v31.super_class = NCNotificationRootModernList;
      [(NCNotificationListSupplementaryViewsSection *)&v31 supplementaryViewSectionDidChangeContent:v5];
      sub_21E784AD0(0);
      v14 = [v30 listView];
      [v14 setNeedsLayout];

      v15 = [v30 listView];
      [v15 layoutIfNeeded];

      if (sub_21E787D70())
      {
        sub_21E8CB974();
      }

      else
      {
        v16 = [v4 currentListDisplayStyleSettingReason];
        v17 = sub_21E92A458();
        v19 = v18;

        if (v17 == sub_21E92A458() && v19 == v20)
        {
        }

        else
        {
          v21 = sub_21E92AA58();

          if ((v21 & 1) == 0)
          {
            sub_21E798E1C(130);
            goto LABEL_19;
          }
        }

        [v4 _displayStyleDidChangeForSleep];
      }

LABEL_19:
      v22 = v5;
      v23 = sub_21E929A58();
      v24 = sub_21E92A618();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138543618;
        *(v25 + 4) = v22;
        *v26 = v22;
        *(v25 + 12) = 2050;
        v27 = [(NCNotificationListSupplementaryViewsSection *)v22 listView];
        [(NCNotificationListViewProtocol *)v27 frame];
        v29 = v28;

        *(v25 + 14) = v29;
        _os_log_impl(&dword_21E77E000, v23, v24, "Did immediate layout for supplement: %{public}@. Supplement height: %{public}f", v25, 0x16u);
        sub_21E8B4CAC(v26, &qword_27CED7360, &unk_21E947B70);
        MEMORY[0x223D65FB0](v26, -1, -1);
        MEMORY[0x223D65FB0](v25, -1, -1);
      }

      return;
    }
  }
}

Swift::Void __swiftcall NCNotificationRootModernList.supplementaryViewSectionDidChangeHeight(_:)(NCNotificationListSupplementaryViewsSection *a1)
{
  v2 = v1;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v4 = sub_21E929A78();
  __swift_project_value_buffer(v4, qword_280D05F58);
  v5 = a1;
  v6 = sub_21E929A58();
  v7 = sub_21E92A648();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543618;
    *(v8 + 4) = v5;
    *v9 = v5;
    *(v8 + 12) = 2050;
    v10 = [(NCNotificationListSupplementaryViewsSection *)v5 listView];
    [(NCNotificationListViewProtocol *)v10 frame];
    v12 = v11;

    *(v8 + 14) = v12;
    _os_log_impl(&dword_21E77E000, v6, v7, "Supplementary section did change height: %{public}@. Supplement height: %{public}f.", v8, 0x16u);
    sub_21E8B4CAC(v9, &qword_27CED7360, &unk_21E947B70);
    MEMORY[0x223D65FB0](v9, -1, -1);
    MEMORY[0x223D65FB0](v8, -1, -1);
  }

  v13 = sub_21E7871A0();
  if (!v13)
  {
    goto LABEL_11;
  }

  v21 = v13;
  sub_21E796644(0, &unk_280D03C18, 0x277D82BB8);
  if ((sub_21E92A788() & 1) == 0)
  {

LABEL_11:
    v19 = sub_21E8D0544();
    if (!v19)
    {
      return;
    }

    v21 = v19;
    sub_21E796644(0, &unk_280D03C18, 0x277D82BB8);
    if (sub_21E92A788())
    {
      sub_21E8D1E9C(v21, v2);
    }

    goto LABEL_17;
  }

  v14 = [v2 currentListDisplayStyleSettingReason];
  v15 = sub_21E92A458();
  v17 = v16;

  if (v15 == sub_21E92A458() && v17 == v18)
  {

LABEL_16:
    [v2 _displayStyleDidChangeForSleep];
    goto LABEL_17;
  }

  v20 = sub_21E92AA58();

  if (v20)
  {
    goto LABEL_16;
  }

LABEL_17:
}

double sub_21E8D1E9C(void *a1, unsigned __int8 *a2)
{
  v4 = [a1 listView];
  [v4 setNeedsLayout];

  v5 = [a1 listView];
  [v5 layoutIfNeeded];

  v7 = a2[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
  if (v7 == 5)
  {
    return result;
  }

  v8 = OBJC_IVAR___NCNotificationRootModernList_layout;
  v9 = *&a2[OBJC_IVAR___NCNotificationRootModernList_layout];
  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v32 = MEMORY[0x277D84F90];

    sub_21E8D52D8(0, v10, 0);
    v11 = v32;
    v12 = *(v32 + 16);
    v13 = 32;
    do
    {
      v14 = *(v9 + v13);
      v15 = *(v32 + 24);
      if (v12 >= v15 >> 1)
      {
        sub_21E8D52D8((v15 > 1), v12 + 1, 1);
      }

      *(v32 + 16) = v12 + 1;
      *(v32 + v12 + 32) = v14;
      v13 += 24;
      ++v12;
      --v10;
    }

    while (v10);
  }

  v16 = 0;
  v17 = *(v11 + 16);
  while (v17 != v16)
  {
    v18 = v11 + v16++;
    if (*(v18 + 32) == v7)
    {
LABEL_24:

      goto LABEL_25;
    }
  }

  while (1)
  {
    if (v7 <= 1)
    {
      if (v7)
      {
        v7 = 2;
      }

      else
      {
        v7 = 1;
      }

      goto LABEL_21;
    }

    if (v7 == 2)
    {
      v7 = 3;
      goto LABEL_21;
    }

    if (v7 != 3)
    {
      break;
    }

    v7 = 4;
LABEL_21:
    v19 = *(v11 + 16);
    v20 = (v11 + 32);
    while (v19)
    {
      v21 = *v20++;
      --v19;
      if (v21 == v7)
      {
        goto LABEL_24;
      }
    }
  }

  if (v17)
  {
    v7 = *(v11 + 32);
    goto LABEL_24;
  }

  v7 = 4;
LABEL_25:
  v22 = *&a2[v8];
  v23 = (v22 + 32);
  v24 = *(v22 + 16) + 1;
  while (--v24)
  {
    v25 = v23 + 24;
    v26 = *v23;
    v23 += 24;
    if (v26 == v7)
    {
      v27 = *(v25 - 2);
      v28 = *(v25 - 1);
      v29 = v7;
      sub_21E784AD0(0);
      v30 = swift_allocObject();
      *(v30 + 16) = a2;
      v31 = a2;
      sub_21E8C4294(v29, v27, v28, 128, 0, sub_21E8D8E40, v30);

      return result;
    }
  }

  return result;
}

uint64_t NCNotificationRootModernList.isEligibleToPerformGroupAnimation(for:toGrouped:)(uint64_t a1, char a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v35 = 0x73694C70756F7247;
    v36 = 0xEA00000000002074;
    swift_unknownObjectRetain();
    v5 = [v4 logDescription];
    if (v5)
    {
      v6 = v5;
      sub_21E92A458();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7370, qword_21E947B88);
    v13 = sub_21E92A478();
    MEMORY[0x223D64660](v13);
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    swift_unknownObjectRetain();
    sub_21E92A8A8();

    v35 = 0xD000000000000018;
    v36 = 0x800000021E957120;
    v9 = [v8 logDescription];
    v10 = sub_21E92A458();
    v12 = v11;

    MEMORY[0x223D64660](v10, v12);
    swift_unknownObjectRelease();
LABEL_7:

    v14 = v35;
    v15 = v36;
    goto LABEL_8;
  }

  if (qword_280D03F38 != -1)
  {
    swift_once();
  }

  v14 = 0x216E776F6E6B6E55;
  v26 = sub_21E929A78();
  __swift_project_value_buffer(v26, qword_280D05F40);
  swift_unknownObjectRetain();
  v27 = sub_21E929A58();
  v28 = sub_21E92A628();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v35 = v30;
    *v29 = 136446210;
    swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7368, &qword_21E947B80);
    v31 = sub_21E92A478();
    v33 = sub_21E79841C(v31, v32, &v35);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_21E77E000, v27, v28, "Unknown group found %{public}s! Better to double check for scroll position integrity.", v29, 0xCu);
    v34 = __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x223D65FB0](v30, -1, -1, v34);
    MEMORY[0x223D65FB0](v29, -1, -1);
  }

  v15 = 0xE800000000000000;
LABEL_8:
  v16 = sub_21E8D867C(a2 & 1);
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v17 = sub_21E929A78();
  __swift_project_value_buffer(v17, qword_280D05F58);

  v18 = sub_21E929A58();
  v19 = sub_21E92A648();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35 = v21;
    *v20 = 67109634;
    v22 = v16 ^ 1;
    *(v20 + 4) = (v16 ^ 1) & 1;
    *(v20 + 8) = 2082;
    v23 = sub_21E79841C(v14, v15, &v35);

    *(v20 + 10) = v23;
    *(v20 + 18) = 1026;
    *(v20 + 20) = a2 & 1;
    _os_log_impl(&dword_21E77E000, v18, v19, "Group animation eligibility is %{BOOL}d for %{public}s set grouped to %{BOOL,public}d", v20, 0x18u);
    v24 = __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x223D65FB0](v21, -1, -1, v24);
    MEMORY[0x223D65FB0](v20, -1, -1);
  }

  else
  {

    v22 = v16 ^ 1;
  }

  return v22 & 1;
}

Swift::Void __swiftcall NCNotificationRootModernList.notificationStructuredSectionList(_:transitionedGroupedStateIsGrouped:)(NCNotificationStructuredSectionList *_, Swift::Bool transitionedGroupedStateIsGrouped)
{
  v3 = v2;
  v80.receiver = v3;
  v80.super_class = NCNotificationRootModernList;
  [(NCNotificationStructuredSectionList *)&v80 notificationStructuredSectionList:_ transitionedGroupedStateIsGrouped:transitionedGroupedStateIsGrouped];
  if (qword_280D03F38 != -1)
  {
    swift_once();
  }

  v6 = sub_21E929A78();
  __swift_project_value_buffer(v6, qword_280D05F40);
  v7 = _;
  v8 = sub_21E929A58();
  v9 = sub_21E92A648();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v79 = v11;
    *v10 = 136446466;
    v12 = [(NCNotificationStructuredSectionList *)v7 logDescription];

    if (!v12)
    {
      __break(1u);
      return;
    }

    v13 = sub_21E92A458();
    v15 = v14;

    v16 = sub_21E79841C(v13, v15, &v79);

    *(v10 + 4) = v16;
    *(v10 + 12) = 1026;
    *(v10 + 14) = transitionedGroupedStateIsGrouped;
    _os_log_impl(&dword_21E77E000, v8, v9, "SectionList %{public}s set grouped to %{BOOL,public}d", v10, 0x12u);
    v17 = __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x223D65FB0](v11, -1, -1, v17);
    MEMORY[0x223D65FB0](v10, -1, -1);
  }

  else
  {
  }

  sub_21E784AD0(1);
  if (!transitionedGroupedStateIsGrouped)
  {
    v27 = *&v3[OBJC_IVAR___NCNotificationRootModernList_layout];
    v28 = *(v27 + 16);
    v29 = MEMORY[0x277D84F90];
    if (v28)
    {
      v79 = MEMORY[0x277D84F90];

      sub_21E8D52D8(0, v28, 0);
      v29 = v79;
      v30 = v79[2];
      v31 = 32;
      do
      {
        v32 = *(v27 + v31);
        v79 = v29;
        v33 = *(v29 + 24);
        if (v30 >= v33 >> 1)
        {
          sub_21E8D52D8((v33 > 1), v30 + 1, 1);
          v29 = v79;
        }

        *(v29 + 16) = v30 + 1;
        *(v29 + v30 + 32) = v32;
        v31 += 24;
        ++v30;
        --v28;
      }

      while (v28);
    }

    v34 = 0;
    v35 = *(v29 + 16);
    while (v35 != v34)
    {
      v36 = v29 + v34++;
      if (*(v36 + 32) == 4)
      {
        goto LABEL_25;
      }
    }

    v37 = 3;
    do
    {
      while (1)
      {
        v38 = 0;
        while (v35 != v38)
        {
          v39 = v29 + v38++;
          if (*(v39 + 32) == v37)
          {
            goto LABEL_38;
          }
        }

        v40 = v37;
        if (v37 <= 1u)
        {
          break;
        }

        if (v37 == 2)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }
      }

      v37 = 0;
    }

    while (v40 == 1);
    if (v35)
    {
      v37 = *(v29 + 32);
LABEL_38:
    }

    else
    {
LABEL_25:

      v37 = 4;
    }

    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_280D05F58);
    v41 = v3;
    v42 = sub_21E929A58();
    v43 = sub_21E92A648();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v79 = v45;
      *v44 = 136446466;
      v46 = 0xE100000000000000;
      v47 = sub_21E79841C(qword_21E948050[v37], 0xE100000000000000, &v79);

      *(v44 + 4) = v47;
      *(v44 + 12) = 2082;
      v48 = v41[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
      if (v48 > 2)
      {
        if (v48 == 3)
        {
          v49 = 80;
        }

        else if (v48 == 4)
        {
          v49 = 76;
        }

        else
        {
          v46 = 0xE300000000000000;
          v49 = 7104878;
        }
      }

      else if (v41[OBJC_IVAR___NCNotificationRootModernList_currentPageType])
      {
        if (v48 == 1)
        {
          v49 = 83;
        }

        else
        {
          v49 = 69;
        }
      }

      else
      {
        v49 = 67;
      }

      v78 = sub_21E79841C(v49, v46, &v79);

      *(v44 + 14) = v78;
      _os_log_impl(&dword_21E77E000, v42, v43, "Perform scrolling for sectionList expanded to target %{public}s, currentPageType: %{public}s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v45, -1, -1);
      MEMORY[0x223D65FB0](v44, -1, -1);
    }

    v77 = v37 | 0x40u;
    goto LABEL_101;
  }

  v18 = OBJC_IVAR___NCNotificationRootModernList_currentPageType;
  v19 = v3[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
  if (v19 == 5)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_280D05F58);
    v50 = sub_21E929A58();
    v51 = sub_21E92A648();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_55;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "Skip perform scrolling for sectionList collapsed, currentPageType is nil.";
    goto LABEL_54;
  }

  if (v19 != 4)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_280D05F58);
    v50 = sub_21E929A58();
    v51 = sub_21E92A648();
    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_55;
    }

    v52 = swift_slowAlloc();
    *v52 = 0;
    v53 = "Skip perform scrolling for sectionList collapsed, currentPageType is .list.";
LABEL_54:
    _os_log_impl(&dword_21E77E000, v50, v51, v53, v52, 2u);
    MEMORY[0x223D65FB0](v52, -1, -1);
LABEL_55:

    return;
  }

  v20 = *&v3[OBJC_IVAR___NCNotificationRootModernList_layout];
  v21 = *(v20 + 16);
  v22 = MEMORY[0x277D84F90];
  if (v21)
  {
    v79 = MEMORY[0x277D84F90];

    sub_21E8D52D8(0, v21, 0);
    v22 = v79;
    v23 = v79[2];
    v24 = 32;
    do
    {
      v25 = *(v20 + v24);
      v79 = v22;
      v26 = *(v22 + 24);
      if (v23 >= v26 >> 1)
      {
        sub_21E8D52D8((v26 > 1), v23 + 1, 1);
        v22 = v79;
      }

      *(v22 + 16) = v23 + 1;
      *(v22 + v23 + 32) = v25;
      v24 += 24;
      ++v23;
      --v21;
    }

    while (v21);
  }

  v54 = 0;
  v55 = *(v22 + 16);
  while (v55 != v54)
  {
    v56 = v22 + v54++;
    if (*(v56 + 32) == 4)
    {
      goto LABEL_62;
    }
  }

  LOBYTE(v57) = 4;
  while (1)
  {
    if (v57 > 2u)
    {
      if (v57 == 3)
      {
        v57 = 2;
      }

      else
      {
        v57 = 3;
      }

      goto LABEL_72;
    }

    if (v57 == 1)
    {
      v57 = 0;
      goto LABEL_72;
    }

    if (v57 != 2)
    {
      break;
    }

    v57 = 1;
LABEL_72:
    v58 = *(v22 + 16);
    v59 = (v22 + 32);
    while (v58)
    {
      v60 = *v59++;
      --v58;
      if (v60 == v57)
      {
        goto LABEL_75;
      }
    }
  }

  if (!v55)
  {
LABEL_62:

    v57 = 4;
    goto LABEL_76;
  }

  v57 = *(v22 + 32);
LABEL_75:

LABEL_76:
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_280D05F58);
  v61 = v3;
  v62 = sub_21E929A58();
  v63 = sub_21E92A648();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v79 = v65;
    *v64 = 136446466;
    v66 = sub_21E79841C(qword_21E948050[v57], 0xE100000000000000, &v79);

    v67 = v3[v18];
    v68 = 67;
    v69 = 0xE100000000000000;
    *(v64 + 4) = v66;
    *(v64 + 12) = 2082;
    v70 = 80;
    v71 = 0xE100000000000000;
    v72 = 76;
    if (v67 != 4)
    {
      v72 = 7104878;
      v71 = 0xE300000000000000;
    }

    if (v67 != 3)
    {
      v70 = v72;
      v69 = v71;
    }

    v73 = 83;
    if (v67 != 1)
    {
      v73 = 69;
    }

    if (v67)
    {
      v68 = v73;
    }

    if (v67 <= 2)
    {
      v74 = v68;
    }

    else
    {
      v74 = v70;
    }

    if (v67 <= 2)
    {
      v75 = 0xE100000000000000;
    }

    else
    {
      v75 = v69;
    }

    v76 = sub_21E79841C(v74, v75, &v79);

    *(v64 + 14) = v76;
    _os_log_impl(&dword_21E77E000, v62, v63, "Perform scrolling for sectionList collapsed to target: %{public}s, currentPageType: %{public}s", v64, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v65, -1, -1);
    MEMORY[0x223D65FB0](v64, -1, -1);
  }

  v77 = v57;
LABEL_101:
  sub_21E798E1C(v77);
}

void NCNotificationRootModernList.notificationListBaseComponent(_:didSetGrouped:)(uint64_t a1, char a2)
{
  v3 = v2;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    v23 = qword_280D03F38;
    if (v22)
    {
      v24 = v22;
      swift_unknownObjectRetain();
      if (v23 != -1)
      {
        swift_once();
      }

      v25 = sub_21E929A78();
      __swift_project_value_buffer(v25, qword_280D05F40);
      swift_unknownObjectRetain();
      v26 = sub_21E929A58();
      v27 = sub_21E92A648();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&v123 = v29;
        *v28 = 136446466;
        v30 = [v24 logDescription];
        v31 = sub_21E92A458();
        v33 = v32;

        v34 = sub_21E79841C(v31, v33, &v123);

        *(v28 + 4) = v34;
        *(v28 + 12) = 1026;
        *(v28 + 14) = a2 & 1;
        _os_log_impl(&dword_21E77E000, v26, v27, "SupplementaryViewsGroup %{public}s set grouped to %{BOOL,public}d", v28, 0x12u);
        v35 = __swift_destroy_boxed_opaque_existential_1Tm(v29);
        MEMORY[0x223D65FB0](v29, -1, -1, v35);
        MEMORY[0x223D65FB0](v28, -1, -1);

        swift_unknownObjectRelease();
LABEL_20:
        v9 = 0;
        goto LABEL_21;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_280D03F38 != -1)
      {
        swift_once();
      }

      v36 = sub_21E929A78();
      __swift_project_value_buffer(v36, qword_280D05F40);
      swift_unknownObjectRetain();
      v26 = sub_21E929A58();
      v37 = sub_21E92A628();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v26, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *&v123 = v39;
        *v38 = 136446210;
        ObjectType = swift_getObjectType();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7368, &qword_21E947B80);
        v40 = sub_21E92A478();
        v42 = sub_21E79841C(v40, v41, &v123);

        *(v38 + 4) = v42;
        _os_log_impl(&dword_21E77E000, v26, v37, "Unknown group found %{public}s! Better to double check for scroll position integrity.", v38, 0xCu);
        v43 = __swift_destroy_boxed_opaque_existential_1Tm(v39);
        MEMORY[0x223D65FB0](v39, -1, -1, v43);
        MEMORY[0x223D65FB0](v38, -1, -1);
      }
    }

    goto LABEL_20;
  }

  v6 = v5;
  swift_unknownObjectRetain();
  v7 = sub_21E786808(0);
  if (!v7)
  {
    __break(1u);
    goto LABEL_123;
  }

  v8 = v7;
  v9 = [v7 containsNotificationGroup_];

  if (qword_280D03F38 != -1)
  {
    swift_once();
  }

  v10 = sub_21E929A78();
  __swift_project_value_buffer(v10, qword_280D05F40);
  swift_unknownObjectRetain();
  v11 = sub_21E929A58();
  v12 = sub_21E92A648();
  if (os_log_type_enabled(v11, v12))
  {
    v119 = v3;
    v13 = a2;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v123 = v15;
    *v14 = 136446466;
    v16 = [v6 logDescription];
    swift_unknownObjectRelease();
    if (v16)
    {
      v17 = sub_21E92A458();
      v19 = v18;

      v20 = sub_21E79841C(v17, v19, &v123);

      *(v14 + 4) = v20;
      *(v14 + 12) = 1026;
      a2 = v13;
      *(v14 + 14) = v13 & 1;
      _os_log_impl(&dword_21E77E000, v11, v12, "GroupList %{public}s set grouped to %{BOOL,public}d", v14, 0x12u);
      v21 = __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x223D65FB0](v15, -1, -1, v21);
      MEMORY[0x223D65FB0](v14, -1, -1);

      swift_unknownObjectRelease();
      v3 = v119;
      goto LABEL_21;
    }

LABEL_123:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease_n();

LABEL_21:
  sub_21E784AD0(1);
  v44 = OBJC_IVAR___NCNotificationRootModernList_currentPageType;
  if (v3[OBJC_IVAR___NCNotificationRootModernList_currentPageType] == 4 && (v9 & 1) == 0)
  {
    v120.receiver = v3;
    v120.super_class = NCNotificationRootModernList;
    v45 = objc_msgSendSuper2(&v120, sel_rootListView);
    [v45 contentOffset];
    v47 = v46;

    v48 = 1.01;
    if (a2)
    {
      v48 = -1.01;
    }

    v49 = v48 + v47;
    v50 = swift_allocObject();
    *(v50 + 16) = v3;
    _s23ScrollCompletionHandlerCMa();
    v51 = swift_allocObject();
    *(v51 + 32) = 0;
    *(v51 + 16) = sub_21E8D8A7C;
    *(v51 + 24) = v50;
    *&v123 = 1;
    *(&v123 + 1) = v49;
    v124 = 0;
    v125 = 0;
    v126 = 0x4000000000000000;
    v127 = v51;
    v52 = v3;
    sub_21E8C2F48(&v123);
  }

  if ((sub_21E8D867C(a2 & 1) & 1) == 0)
  {
    return;
  }

  if ((a2 & 1) == 0)
  {
    v58 = *&v3[OBJC_IVAR___NCNotificationRootModernList_layout];
    v59 = *(v58 + 16);
    v60 = MEMORY[0x277D84F90];
    if (v59)
    {
      ObjectType = MEMORY[0x277D84F90];

      sub_21E8D52D8(0, v59, 0);
      v60 = ObjectType;
      v61 = *(ObjectType + 16);
      v62 = 32;
      do
      {
        v63 = *(v58 + v62);
        ObjectType = v60;
        v64 = *(v60 + 24);
        if (v61 >= v64 >> 1)
        {
          sub_21E8D52D8((v64 > 1), v61 + 1, 1);
          v60 = ObjectType;
        }

        *(v60 + 16) = v61 + 1;
        *(v60 + v61 + 32) = v63;
        v62 += 24;
        ++v61;
        --v59;
      }

      while (v59);
    }

    v65 = 0;
    v66 = *(v60 + 16);
    while (v66 != v65)
    {
      v67 = v60 + v65++;
      if (*(v67 + 32) == 4)
      {
        goto LABEL_42;
      }
    }

    v68 = 3;
    do
    {
      while (1)
      {
        v69 = 0;
        while (v66 != v69)
        {
          v70 = v60 + v69++;
          if (*(v70 + 32) == v68)
          {
            goto LABEL_55;
          }
        }

        v71 = v68;
        if (v68 <= 1u)
        {
          break;
        }

        if (v68 == 2)
        {
          v68 = 1;
        }

        else
        {
          v68 = 2;
        }
      }

      v68 = 0;
    }

    while (v71 == 1);
    if (v66)
    {
      v68 = *(v60 + 32);
LABEL_55:
    }

    else
    {
LABEL_42:

      v68 = 4;
    }

    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v72 = sub_21E929A78();
    __swift_project_value_buffer(v72, qword_280D05F58);
    v73 = v3;
    v74 = sub_21E929A58();
    v75 = sub_21E92A648();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      ObjectType = v77;
      *v76 = 136446466;
      v78 = sub_21E79841C(qword_21E948050[v68], 0xE100000000000000, &ObjectType);

      v79 = v3[v44];
      v80 = 67;
      v81 = 0xE100000000000000;
      *(v76 + 4) = v78;
      *(v76 + 12) = 2082;
      v82 = 80;
      v83 = 0xE100000000000000;
      v84 = 76;
      if (v79 != 4)
      {
        v84 = 7104878;
        v83 = 0xE300000000000000;
      }

      if (v79 != 3)
      {
        v82 = v84;
        v81 = v83;
      }

      v85 = 83;
      if (v79 != 1)
      {
        v85 = 69;
      }

      if (v79)
      {
        v80 = v85;
      }

      if (v79 <= 2)
      {
        v86 = v80;
      }

      else
      {
        v86 = v82;
      }

      if (v79 <= 2)
      {
        v87 = 0xE100000000000000;
      }

      else
      {
        v87 = v81;
      }

      v88 = sub_21E79841C(v86, v87, &ObjectType);

      *(v76 + 14) = v88;
      _os_log_impl(&dword_21E77E000, v74, v75, "Perform scrolling for group expanded to target %{public}s, currentPageType: %{public}s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v77, -1, -1);
      MEMORY[0x223D65FB0](v76, -1, -1);
    }

    v53 = v68 | 0x40u;
    goto LABEL_116;
  }

  v53 = v3[v44];
  if (v53 == 5)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v54 = sub_21E929A78();
    __swift_project_value_buffer(v54, qword_280D05F58);
    v55 = sub_21E929A58();
    v56 = sub_21E92A648();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_21E77E000, v55, v56, "Skip perform scrolling for group collapsed, currentPageType is nil.", v57, 2u);
      MEMORY[0x223D65FB0](v57, -1, -1);
    }

    goto LABEL_117;
  }

  v89 = *&v3[OBJC_IVAR___NCNotificationRootModernList_layout];
  v90 = *(v89 + 16);
  v91 = MEMORY[0x277D84F90];
  if (v90)
  {
    ObjectType = MEMORY[0x277D84F90];

    sub_21E8D52D8(0, v90, 0);
    v91 = ObjectType;
    v92 = *(ObjectType + 16);
    v93 = 32;
    do
    {
      v94 = *(v89 + v93);
      ObjectType = v91;
      v95 = *(v91 + 24);
      if (v92 >= v95 >> 1)
      {
        sub_21E8D52D8((v95 > 1), v92 + 1, 1);
        v91 = ObjectType;
      }

      *(v91 + 16) = v92 + 1;
      *(v91 + v92 + 32) = v94;
      v93 += 24;
      ++v92;
      --v90;
    }

    while (v90);
  }

  v96 = 0;
  v97 = *(v91 + 16);
  while (v97 != v96)
  {
    v98 = v91 + v96++;
    if (*(v98 + 32) == v53)
    {
LABEL_96:

      goto LABEL_97;
    }
  }

  while (1)
  {
    if (v53 > 2u)
    {
      if (v53 == 3)
      {
        v53 = 2;
      }

      else
      {
        v53 = 3;
      }

      goto LABEL_93;
    }

    if (v53 == 1)
    {
      v53 = 0;
      goto LABEL_93;
    }

    if (v53 != 2)
    {
      break;
    }

    v53 = 1;
LABEL_93:
    v99 = *(v91 + 16);
    v100 = (v91 + 32);
    while (v99)
    {
      v101 = *v100++;
      --v99;
      if (v101 == v53)
      {
        goto LABEL_96;
      }
    }
  }

  if (v97)
  {
    v53 = *(v91 + 32);
    goto LABEL_96;
  }

  v53 = 4;
LABEL_97:
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v102 = sub_21E929A78();
  __swift_project_value_buffer(v102, qword_280D05F58);
  v103 = v3;
  v104 = sub_21E929A58();
  v105 = sub_21E92A648();

  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    ObjectType = v107;
    *v106 = 136446466;
    v108 = sub_21E79841C(qword_21E948050[v53], 0xE100000000000000, &ObjectType);

    v109 = v3[v44];
    v110 = 67;
    v111 = 0xE100000000000000;
    *(v106 + 4) = v108;
    *(v106 + 12) = 2082;
    v112 = 80;
    v113 = 0xE100000000000000;
    v114 = 76;
    if (v109 != 4)
    {
      v114 = 7104878;
      v113 = 0xE300000000000000;
    }

    if (v109 != 3)
    {
      v112 = v114;
      v111 = v113;
    }

    v115 = 83;
    if (v109 != 1)
    {
      v115 = 69;
    }

    if (v109)
    {
      v110 = v115;
    }

    if (v109 <= 2)
    {
      v116 = v110;
    }

    else
    {
      v116 = v112;
    }

    if (v109 <= 2)
    {
      v117 = 0xE100000000000000;
    }

    else
    {
      v117 = v111;
    }

    v118 = sub_21E79841C(v116, v117, &ObjectType);

    *(v106 + 14) = v118;
    _os_log_impl(&dword_21E77E000, v104, v105, "Perform scrolling for group collapsed to target: %{public}s, currentPageType: %{public}s", v106, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v107, -1, -1);
    MEMORY[0x223D65FB0](v106, -1, -1);
  }

LABEL_116:
  sub_21E798E1C(v53);
  v121.receiver = v3;
  v121.super_class = NCNotificationRootModernList;
  v55 = objc_msgSendSuper2(&v121, sel_rootListView);
  [v55 layoutIfNeeded];
LABEL_117:
}

void NCNotificationRootModernList.handleTap(on:)(id a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    v5 = qword_280D03F38;
    swift_unknownObjectRetain();
    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_21E929A78();
    __swift_project_value_buffer(v6, qword_280D05F40);
    v7 = v1;
    swift_unknownObjectRetain();
    v8 = v7;
    v9 = sub_21E929A58();
    v10 = sub_21E92A648();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v47 = v12;
      *v11 = 136446722;
      v13 = [v4 logDescription];
      if (!v13)
      {
LABEL_50:

        swift_unknownObjectRelease();
        __break(1u);
        goto LABEL_51;
      }

      v14 = v13;
      swift_unknownObjectRelease();
      v15 = sub_21E92A458();
      v17 = v16;

      v18 = sub_21E79841C(v15, v17, &v47);

      *(v11 + 4) = v18;
      *(v11 + 12) = 2050;
      v19 = sub_21E786808(2);
      if (!v19)
      {
LABEL_51:

        __break(1u);
LABEL_52:
        __break(1u);
        return;
      }

      v20 = v19;
      v21 = [v19 count];

      *(v11 + 14) = v21;
      *(v11 + 22) = 2082;
      v22 = v8[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          v23 = 0xE100000000000000;
          v24 = 80;
        }

        else if (v22 == 4)
        {
          v23 = 0xE100000000000000;
          v24 = 76;
        }

        else
        {
          v23 = 0xE300000000000000;
          v24 = 7104878;
        }
      }

      else
      {
        v23 = 0xE100000000000000;
        if (v8[OBJC_IVAR___NCNotificationRootModernList_currentPageType])
        {
          if (v22 == 1)
          {
            v24 = 83;
          }

          else
          {
            v24 = 69;
          }
        }

        else
        {
          v24 = 67;
        }
      }

      v25 = sub_21E79841C(v24, v23, &v47);

      *(v11 + 24) = v25;
      _os_log_impl(&dword_21E77E000, v9, v10, "User tap on %{public}s; incomingCount %{public}ld; currentPageType %{public}s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v12, -1, -1);
      MEMORY[0x223D65FB0](v11, -1, -1);
    }

    else
    {
      swift_unknownObjectRelease();
    }

    v26 = sub_21E786808(2);
    if (v26)
    {
      v27 = v26;

      if (v27 != a1)
      {
LABEL_32:
        swift_unknownObjectRelease();
        return;
      }

      v28 = sub_21E786808(2);
      if (v28)
      {
        v29 = v28;
        v30 = [v28 count];

        if (v30 >= 2 && v8[OBJC_IVAR___NCNotificationRootModernList_currentPageType] == 1)
        {
          v31 = *&v8[OBJC_IVAR___NCNotificationRootModernList_layout];
          v32 = *(v31 + 16);
          v33 = MEMORY[0x277D84F90];
          if (v32)
          {
            v47 = MEMORY[0x277D84F90];

            sub_21E8D52D8(0, v32, 0);
            v33 = v47;
            v34 = *(v47 + 16);
            v35 = 32;
            do
            {
              v36 = *(v31 + v35);
              v47 = v33;
              v37 = *(v33 + 24);
              if (v34 >= v37 >> 1)
              {
                sub_21E8D52D8((v37 > 1), v34 + 1, 1);
                v33 = v47;
              }

              *(v33 + 16) = v34 + 1;
              *(v33 + v34 + 32) = v36;
              v35 += 24;
              ++v34;
              --v32;
            }

            while (v32);
          }

          v38 = 0;
          v39 = *(v33 + 16);
          v40 = (v33 + 32);
          while (v39 != v38)
          {
            v41 = v33 + v38++;
            if (*(v41 + 32) == 2)
            {
              v42 = 2;
              goto LABEL_48;
            }
          }

          v43 = 0;
          while (v39 != v43)
          {
            v44 = v40[v43++];
            if (v44 == 3)
            {
              v42 = 3;
              goto LABEL_48;
            }
          }

          v45 = 0;
          while (v39 != v45)
          {
            v46 = v40[v45++];
            if (v46 == 4)
            {
              goto LABEL_47;
            }
          }

          if (v39)
          {
            v42 = *v40;
            goto LABEL_48;
          }

LABEL_47:
          v42 = 4;
LABEL_48:

          v8[OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection] = 1;
          sub_21E790FD8();
          sub_21E798E1C(v42);
        }

        goto LABEL_32;
      }

      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_50;
  }
}

uint64_t NCNotificationRootModernList.animate(byRetargetingType:animations:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(), void *a5)
{
  v28.super_class = NCNotificationRootModernList;
  v11 = objc_msgSendSuper2(&v28, sel_rootListView);
  v12 = [v11 traitCollection];

  v13 = [v12 _backlightLuminance];
  if (v13 + 1 >= 3 && v13 == 2)
  {
    v15 = NCDefaultAnimator(v14);
  }

  else
  {
    v15 = *&v5[OBJC_IVAR___NCNotificationRootModernList_cacheNoAnimationAnimator];
  }

  v16 = v15;
  v17 = swift_allocObject();
  v17[2] = a2;
  v17[3] = a3;
  v17[4] = a1;
  v17[5] = v5;
  v26 = sub_21E8D9724;
  v27 = v17;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_21E792C28;
  v25 = &block_descriptor_30;
  v18 = _Block_copy(&v22);

  v19 = v5;

  if (a4)
  {
    v26 = a4;
    v27 = a5;
    v22 = MEMORY[0x277D85DD0];
    v23 = 1107296256;
    v24 = sub_21E799760;
    v25 = &block_descriptor_33_0;
    v20 = _Block_copy(&v22);
  }

  else
  {
    v20 = 0;
  }

  [v16 animateByRetargetingType:a1 animations:v18 completion:v20];
  _Block_release(v20);
  _Block_release(v18);
  return swift_unknownObjectRelease();
}

uint64_t NCNotificationRootModernList.animate(usingSpringBehavior:tracking:type:animations:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(), void *a7)
{
  v32.super_class = NCNotificationRootModernList;
  v14 = objc_msgSendSuper2(&v32, sel_rootListView);
  v15 = [v14 traitCollection];

  v16 = [v15 _backlightLuminance];
  if (v16 + 1 >= 3 && v16 == 2)
  {
    v18 = NCDefaultAnimator(v17);
  }

  else
  {
    v18 = *&v7[OBJC_IVAR___NCNotificationRootModernList_cacheNoAnimationAnimator];
  }

  v19 = v18;
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = a3;
  v20[5] = v7;
  v30 = sub_21E8D9724;
  v31 = v20;
  aBlock = MEMORY[0x277D85DD0];
  v27 = 1107296256;
  v28 = sub_21E792C28;
  v29 = &block_descriptor_39_0;
  v21 = _Block_copy(&aBlock);

  v22 = v7;

  if (a6)
  {
    v30 = a6;
    v31 = a7;
    aBlock = MEMORY[0x277D85DD0];
    v27 = 1107296256;
    v28 = sub_21E799760;
    v29 = &block_descriptor_42;
    v23 = _Block_copy(&aBlock);
  }

  else
  {
    v23 = 0;
  }

  [v19 animateUsingSpringBehavior:a1 tracking:a2 & 1 type:a3 animations:v21 completion:v23];
  _Block_release(v23);
  _Block_release(v21);
  return swift_unknownObjectRelease();
}

void NCNotificationRootModernList.animate(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15.super_class = NCNotificationRootModernList;
  v6 = objc_msgSendSuper2(&v15, sel_rootListView);
  v7 = [v6 traitCollection];

  v8 = [v7 _backlightLuminance];
  if (v8 + 1 >= 3 && v8 == 2)
  {
    v10 = NCDefaultAnimator(v9);
  }

  else
  {
    v10 = *(v3 + OBJC_IVAR___NCNotificationRootModernList_cacheNoAnimationAnimator);
  }

  v11 = v10;
  type metadata accessor for NCDecomposedAnimation(0);
  v12 = sub_21E92A518();
  if (a2)
  {
    v14[4] = a2;
    v14[5] = a3;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_21E799760;
    v14[3] = &block_descriptor_54;
    v13 = _Block_copy(v14);
  }

  else
  {
    v13 = 0;
  }

  [v11 animateWithDecomposedAnimations:v12 completion:v13];
  _Block_release(v13);
  swift_unknownObjectRelease();
}

void sub_21E8D4C3C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21E786CC4(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator, &unk_21E94A1EC);
  sub_21E9297A8();

  *a2 = *(v3 + 48);
}

uint64_t sub_21E8D4D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_21E92A8E8();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_21E8D4E0C, 0, 0);
}

uint64_t sub_21E8D4E0C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_21E92A8F8();
  v5 = sub_21E786CC4(&qword_280D03C08, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_21E92AAA8();
  sub_21E786CC4(&qword_280D03C10, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_21E92A908();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_21E8D4F9C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_21E8D4F9C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_21E8D5158, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_21E8D5158()
{

  v1 = *(v0 + 8);

  return v1();
}

char *sub_21E8D51C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7478, &qword_21E947D98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_21E8D52B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E90BE1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E8D52D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E90BFF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E8D52F8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E90C0E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E8D5318(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E90C1F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_21E8D5338(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E90C2F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E8D5358(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E90C440(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_21E8D5378(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_21E90C550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_21E8D5398(CGFloat **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a1;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = MEMORY[0x277D84F90];
LABEL_91:
    v5 = *v8;
    if (!*v8)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_123:
      v11 = sub_21E90E080(v11);
    }

    v106 = *(v11 + 2);
    if (v106 >= 2)
    {
      while (*v7)
      {
        v107 = *&v11[16 * v106];
        v108 = *&v11[16 * v106 + 24];
        sub_21E8D5A38((*v7 + 40 * v107), (*v7 + 40 * *&v11[16 * v106 + 16]), *v7 + 40 * v108, v5);
        if (v6)
        {
          goto LABEL_101;
        }

        if (v108 < v107)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_21E90E080(v11);
        }

        if (v106 - 2 >= *(v11 + 2))
        {
          goto LABEL_117;
        }

        v109 = &v11[16 * v106];
        *v109 = v107;
        *(v109 + 1) = v108;
        sub_21E90DFF4(v106 - 1);
        v106 = *(v11 + 2);
        if (v106 <= 1)
        {
          goto LABEL_101;
        }
      }

      goto LABEL_127;
    }

LABEL_101:

    return;
  }

  v10 = 0;
  v11 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v10 + 1 >= v9)
    {
      v9 = v10 + 1;
      goto LABEL_21;
    }

    v115 = *(*v7 + 40 * (v10 + 1));
    v12 = v10;
    v13 = 40 * v10;
    v5 = *v7 + v13;
    v14 = *v5;
    v15 = *(v5 + 8);
    v16 = *(v5 + 16);
    v17 = *(v5 + 24);
    MinY = CGRectGetMinY(v115);
    v116.origin.x = v14;
    v116.origin.y = v15;
    v116.size.width = v16;
    v116.size.height = v17;
    v19 = CGRectGetMinY(v116);
    v20 = v12;
    v21 = v12 + 2;
    v22 = v5 + 56;
    while (v9 != v21)
    {
      v5 = MinY < v19;
      v23 = v22 + 40;
      v24 = *(v22 - 16);
      v25 = *(v22 - 8);
      v26 = *v22;
      v27 = *(v22 + 8);
      v28 = CGRectGetMinY(*(v22 + 24));
      v117.origin.x = v24;
      v117.origin.y = v25;
      v117.size.width = v26;
      v117.size.height = v27;
      v29 = v5 ^ (v28 >= CGRectGetMinY(v117));
      ++v21;
      v22 = v23;
      if ((v29 & 1) == 0)
      {
        v9 = v21 - 1;
        break;
      }
    }

    if (MinY >= v19)
    {
      goto LABEL_19;
    }

    if (v9 < v20)
    {
      goto LABEL_120;
    }

    v30 = v20;
    if (v20 < v9)
    {
      v31 = 40 * v9 - 40;
      v32 = v9;
      do
      {
        if (v30 != --v32)
        {
          v40 = *v7;
          if (!*v7)
          {
            goto LABEL_126;
          }

          v33 = (v40 + v13);
          v34 = *(v40 + v13 + 32);
          v35 = (v40 + v31);
          v36 = *v33;
          v37 = v33[1];
          v38 = *(v35 + 4);
          v39 = v35[1];
          *v33 = *v35;
          v33[1] = v39;
          *(v33 + 4) = v38;
          *v35 = v36;
          v35[1] = v37;
          *(v35 + 32) = v34;
        }

        ++v30;
        v31 -= 40;
        v13 += 40;
      }

      while (v30 < v32);
LABEL_19:
      v8 = a1;
      v10 = v20;
      goto LABEL_21;
    }

    v8 = a1;
    v10 = v20;
LABEL_21:
    v41 = v7[1];
    if (v9 < v41)
    {
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_119;
      }

      if (v9 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (v10 + a4 >= v41)
        {
          v5 = v7[1];
        }

        else
        {
          v5 = v10 + a4;
        }

        if (v5 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v9 != v5)
        {
          break;
        }
      }
    }

    v5 = v9;
    if (v9 < v10)
    {
      goto LABEL_118;
    }

LABEL_31:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_21E90E178(0, *(v11 + 2) + 1, 1, v11);
    }

    v43 = *(v11 + 2);
    v42 = *(v11 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      v11 = sub_21E90E178((v42 > 1), v43 + 1, 1, v11);
    }

    *(v11 + 2) = v44;
    v45 = &v11[16 * v43];
    *(v45 + 4) = v10;
    *(v45 + 5) = v5;
    v46 = *v8;
    if (!v46)
    {
      goto LABEL_128;
    }

    v10 = v5;
    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v11 + 4);
          v49 = *(v11 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_50:
          if (v51)
          {
            goto LABEL_107;
          }

          v64 = &v11[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_110;
          }

          v70 = &v11[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_114;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v74 = &v11[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_64:
        if (v69)
        {
          goto LABEL_109;
        }

        v77 = &v11[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_112;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_71:
        v5 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_122;
        }

        if (!*v7)
        {
          goto LABEL_125;
        }

        v85 = *&v11[16 * v5 + 32];
        v86 = *&v11[16 * v47 + 40];
        sub_21E8D5A38((*v7 + 40 * v85), (*v7 + 40 * *&v11[16 * v47 + 32]), *v7 + 40 * v86, v46);
        if (v6)
        {
          goto LABEL_101;
        }

        if (v86 < v85)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_21E90E080(v11);
        }

        if (v5 >= *(v11 + 2))
        {
          goto LABEL_104;
        }

        v87 = &v11[16 * v5];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        sub_21E90DFF4(v47);
        v44 = *(v11 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v11[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_105;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_106;
      }

      v59 = &v11[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_108;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_111;
      }

      if (v63 >= v55)
      {
        v81 = &v11[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_115;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v9 = v7[1];
    v8 = a1;
    if (v10 >= v9)
    {
      goto LABEL_91;
    }
  }

  v111 = v6;
  v112 = v7;
  v88 = *v7;
  v89 = *v7 + 40 * v9 - 40;
  v110 = v10;
  v90 = v10 - v9;
LABEL_82:
  v91 = v5;
  v92 = v90;
  v93 = v89;
  while (1)
  {
    v94 = v93 + 40;
    v95 = *v93;
    v96 = *(v93 + 8);
    v97 = *(v93 + 16);
    v98 = *(v93 + 24);
    v99 = CGRectGetMinY(*(v93 + 40));
    v118.origin.x = v95;
    v118.origin.y = v96;
    v118.size.width = v97;
    v118.size.height = v98;
    if (v99 >= CGRectGetMinY(v118))
    {
LABEL_81:
      ++v9;
      v89 += 40;
      --v90;
      v5 = v91;
      if (v9 != v91)
      {
        goto LABEL_82;
      }

      v6 = v111;
      v7 = v112;
      v8 = a1;
      v10 = v110;
      if (v5 < v110)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    if (!v88)
    {
      break;
    }

    v100 = *(v93 + 72);
    v101 = *(v93 + 40);
    v102 = *(v93 + 56);
    v103 = *(v93 + 16);
    *v94 = *v93;
    *(v93 + 56) = v103;
    v104 = *(v93 + 32);
    *v93 = v101;
    *(v93 + 16) = v102;
    *(v93 + 32) = v100;
    v93 -= 40;
    *(v94 + 32) = v104;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_81;
    }
  }

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
}

uint64_t sub_21E8D5A38(CGRect *__dst, CGRect *__src, unint64_t a3, CGRect *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 40 * v9;
    if (a4 != __dst || (__dst + v12) <= a4)
    {
      memmove(a4, __dst, v12);
    }

    v13 = (v4 + v12);
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      x = v4->origin.x;
      y = v4->origin.y;
      width = v4->size.width;
      height = v4->size.height;
      MinY = CGRectGetMinY(*v6);
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      if (MinY < CGRectGetMinY(v38))
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 = (v4 + 40);
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 = (v7 + 40);
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 = (v6 + 40);
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    origin = v14->origin;
    size = v14->size;
    v7[1].origin.x = v14[1].origin.x;
    v7->origin = origin;
    v7->size = size;
    goto LABEL_9;
  }

  v23 = 40 * v11;
  if (a4 != __src || (__src + v23) <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = (v4 + v23);
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v24 = (v6 - 40);
    v5 -= 40;
    v25 = v13;
    do
    {
      v26 = (v5 + 40);
      v39.origin.x = *(v25 - 40);
      v39.origin.y = *(v25 - 32);
      v25 -= 40;
      v39.size.width = *(v25 + 16);
      v39.size.height = *(v25 + 24);
      v27 = v6[-2].size.height;
      v28 = v6[-1].origin.x;
      v29 = v6[-1].origin.y;
      v30 = v6[-1].size.width;
      v31 = CGRectGetMinY(v39);
      v40.origin.x = v27;
      v40.origin.y = v28;
      v40.size.width = v29;
      v40.size.height = v30;
      if (v31 < CGRectGetMinY(v40))
      {
        if (v26 != v6)
        {
          v34 = v24->origin;
          v35 = *&v6[-1].origin.y;
          *(v5 + 32) = v6[-1].size.height;
          *v5 = v34;
          *(v5 + 16) = v35;
        }

        if (v13 <= v4 || (v6 = (v6 - 40), v24 <= v7))
        {
          v6 = v24;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v26 != v13)
      {
        v32 = *v25;
        v33 = *(v25 + 16);
        *(v5 + 32) = *(v25 + 32);
        *v5 = v32;
        *(v5 + 16) = v33;
      }

      v5 -= 40;
      v13 = v25;
    }

    while (v25 > v4);
    v13 = v25;
  }

LABEL_31:
  v36 = 40 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= (v4 + v36))
  {
    memmove(v6, v4, v36);
  }

  return 1;
}

uint64_t sub_21E8D5CCC(uint64_t *a1, int8x16_t *a2, __n128 a3, __n128 a4)
{
  v4 = *a1;
  v5 = a1[4];
  if (v5 >> 62)
  {
    if (v5 >> 62 == 1)
    {
      v6 = a2[2].u64[0];
      if (v6 >> 62 == 1 && a2->i8[0] == v4)
      {
        return BSFloatApproximatelyEqualToFloat();
      }
    }

    else
    {
      v13 = a2[2].u64[0];
      if (v13 >> 62 == 2 && v13 == 0x8000000000000000)
      {
        v14 = vorrq_s8(*a2, a2[1]);
        if (!(*&vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) | a2[3].i64[0] | a2[3].i64[1] | a2[2].i64[1]))
        {
          return 1;
        }
      }
    }

    return 0;
  }

  v8 = a2[2].u64[0];
  if (v8 >> 62 || a2->i8[0] != v4)
  {
    return 0;
  }

  v9 = a1[5];
  v10 = a1[6];
  v11 = a2[2].i64[1];
  v12 = a2[3].i64[0];
  result = BSFloatApproximatelyEqualToFloat();
  if (result)
  {

    return MEMORY[0x2821FE668](v9, v10, v11, v12);
  }

  return result;
}

BOOL sub_21E8D5E44(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 >> 6)
  {
    if (a1 >> 6 == 1)
    {
      if ((a2 & 0xC0) == 0x40)
      {
        return ((a2 ^ a1) & 0x3F) == 0;
      }
    }

    else if (a1 == 128)
    {
      if (a2 == 128)
      {
        return 1;
      }
    }

    else if (a1 == 129)
    {
      if (a2 == 129)
      {
        return 1;
      }
    }

    else if (a2 == 130)
    {
      return 1;
    }
  }

  else if (a2 <= 0x3Fu)
  {
    return a1 == a2;
  }

  return 0;
}

void sub_21E8D5ED4(char a1, double a2)
{
  v146.super_class = NCNotificationRootModernList;
  v5 = objc_msgSendSuper2(&v146, sel_rootListView);
  [v5 _verticalVelocity];
  v7 = v6;

  v8 = v7 * 1000.0;
  v145.receiver = v2;
  v145.super_class = NCNotificationRootModernList;
  v9 = objc_msgSendSuper2(&v145, sel_rootListView);
  [v9 latestRootScrollVelocity];
  v11 = v10;

  if (round(v11) != round(v8))
  {
    v144.receiver = v2;
    v144.super_class = NCNotificationRootModernList;
    v12 = objc_msgSendSuper2(&v144, sel_rootListView);
    [v12 setRootListScrollVelocity_];
  }

  v143.receiver = v2;
  v143.super_class = NCNotificationRootModernList;
  v13 = objc_msgSendSuper2(&v143, sel_rootListView);
  v14 = [v13 panGestureRecognizer];

  v142.receiver = v2;
  v142.super_class = NCNotificationRootModernList;
  v15 = objc_msgSendSuper2(&v142, sel_rootListView);
  v16 = [v15 isTracking];

  if (!v16 || (v17 = sub_21E786808(0xA)) == 0)
  {
    v19 = 0;
LABEL_27:
    v141.receiver = v2;
    v141.super_class = NCNotificationRootModernList;
    v88 = objc_msgSendSuper2(&v141, sel_rootListView);
    v89 = [v88 traitCollection];

    LODWORD(v88) = _NCIsNotVerticalSpaceConstrained(v89);
    if (v88)
    {
      v90 = sub_21E786808(0xA);
      if (v90)
      {
        v91 = v90;
        objc_opt_self();
        v92 = swift_dynamicCastObjCClass();
        if (v92)
        {
          v93 = [v92 hasNotificationGroupExpanded];

          if ((v93 & 1) == 0)
          {
            if ((*(v2 + OBJC_IVAR___NCNotificationRootModernList__scrollState + 32) & 0x8000000000000000) != 0)
            {
              v116 = sub_21E786808(0xA);
              if (v116)
              {
                v117 = v116;
LABEL_77:
                objc_opt_self();
                v126 = swift_dynamicCastObjCClass();
                if (v126)
                {
                  [v126 setDragState_];
                }
              }
            }

            else
            {
              if (BSFloatApproximatelyEqualToFloat())
              {
                v94 = sub_21E786808(0xA);
                if (v94)
                {
                  v95 = v94;
                  objc_opt_self();
                  v96 = swift_dynamicCastObjCClass();
                  if (v96)
                  {
                    [v96 setDragState_];
                  }
                }

                v97 = sub_21E786808(0xA);
                if (v97)
                {
                  v98 = v97;
                  objc_opt_self();
                  v99 = swift_dynamicCastObjCClass();
                  if (v99)
                  {
                    [v99 setExpandedPercentage_];
                  }
                }

                v100 = sub_21E786808(0xA);
                if (!v100)
                {
                  goto LABEL_91;
                }

                v101 = v100;
                objc_opt_self();
                v102 = swift_dynamicCastObjCClass();
                if (v102)
                {
                  [v102 setIsExpanded_];
LABEL_74:
                  v114 = v101;
LABEL_89:
                  v115 = v14;
                  goto LABEL_90;
                }

                goto LABEL_75;
              }

              v118 = BSFloatApproximatelyEqualToFloat();
              v119 = sub_21E786808(0xA);
              v117 = v119;
              if (v118)
              {
                if (v119)
                {
                  objc_opt_self();
                  v120 = swift_dynamicCastObjCClass();
                  if (v120)
                  {
                    [v120 setDragState_];
                  }
                }

                v121 = sub_21E786808(0xA);
                if (v121)
                {
                  v122 = v121;
                  objc_opt_self();
                  v123 = swift_dynamicCastObjCClass();
                  if (v123)
                  {
                    [v123 setExpandedPercentage_];
                  }
                }

                v124 = sub_21E786808(0xA);
                if (!v124)
                {
                  goto LABEL_91;
                }

                v101 = v124;
                objc_opt_self();
                v125 = swift_dynamicCastObjCClass();
                if (v125)
                {
                  [v125 setIsExpanded_];
                  goto LABEL_74;
                }

                goto LABEL_75;
              }

              if (v119)
              {
                goto LABEL_77;
              }
            }

            v127 = sub_21E786808(0xA);
            if (v127)
            {
              v128 = v127;
              objc_opt_self();
              v129 = swift_dynamicCastObjCClass();
              if (!v129)
              {
              }
            }

            else
            {
              v129 = 0;
            }

            [v129 setExpandedPercentage_];

            v130 = sub_21E786808(0xA);
            if (v130)
            {
              v131 = v130;
              objc_opt_self();
              v114 = swift_dynamicCastObjCClass();
              if (!v114)
              {
              }
            }

            else
            {
              v114 = 0;
            }

            [v114 setIsExpanded_];
            goto LABEL_89;
          }
        }

        else
        {
        }
      }
    }

    v103 = sub_21E786808(0xA);
    if (v103)
    {
      v104 = v103;
      objc_opt_self();
      v105 = swift_dynamicCastObjCClass();
      if (v105)
      {
        [v105 setExpandedPercentage_];
      }
    }

    v106 = sub_21E786808(0xA);
    if (v106)
    {
      v107 = v106;
      objc_opt_self();
      v108 = swift_dynamicCastObjCClass();
      if (v108)
      {
        [v108 setIsExpanded_];
      }
    }

    v109 = sub_21E786808(0xA);
    if (v109)
    {
      v110 = v109;
      objc_opt_self();
      v111 = swift_dynamicCastObjCClass();
      if (v111)
      {
        [v111 setIsCollapsed_];
      }
    }

    v112 = sub_21E786808(0xA);
    if (!v112)
    {
      goto LABEL_91;
    }

    v101 = v112;
    objc_opt_self();
    v113 = swift_dynamicCastObjCClass();
    if (v113)
    {
      [v113 setDragState_];
      v114 = v19;
      v115 = v101;
      v19 = v14;
LABEL_90:

      v14 = v115;
LABEL_91:

      return;
    }

LABEL_75:
    v114 = v14;
    v115 = v19;
    v19 = v101;
    goto LABEL_90;
  }

  v18 = v17;
  objc_opt_self();
  v19 = swift_dynamicCastObjCClass();
  if (!v19)
  {
LABEL_26:

    goto LABEL_27;
  }

  v135 = a2;
  v136 = a1;
  v140.receiver = v2;
  v140.super_class = NCNotificationRootModernList;
  v20 = objc_msgSendSuper2(&v140, sel_rootListView);
  [v14 translationInView_];
  v22 = v21;
  v24 = v23;

  v139.receiver = v2;
  v139.super_class = NCNotificationRootModernList;
  v25 = objc_msgSendSuper2(&v139, sel_rootListView);
  [v14 locationInView_];
  v27 = v26;
  v29 = v28;

  v138.receiver = v2;
  v138.super_class = NCNotificationRootModernList;
  v30 = objc_msgSendSuper2(&v138, sel_rootListView);
  [v14 velocityInView_];
  v32 = v31;
  v133 = v33;

  v137.receiver = v2;
  v137.super_class = NCNotificationRootModernList;
  v34 = objc_msgSendSuper2(&v137, sel_rootListView);
  v35 = v18;
  v36 = [v19 listView];
  [v34 convertPoint:v36 toView:{v27 - v22, v29 - v24}];
  v38 = v37;
  v40 = v39;

  v41 = [v19 listView];
  if (!v41)
  {
    __break(1u);
    goto LABEL_93;
  }

  v42 = v41;
  v132 = v32;
  v134 = v22;
  [v41 bounds];
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v50 = v49;

  v147.origin.x = v44;
  v147.origin.y = v46;
  v147.size.width = v48;
  v147.size.height = v50;
  MinX = CGRectGetMinX(v147);
  v52 = [v19 listView];
  if (!v52)
  {
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v53 = v52;
  [v52 bounds];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;

  v148.origin.x = v55;
  v148.origin.y = v57;
  v148.size.width = v59;
  v148.size.height = v61;
  MaxX = CGRectGetMaxX(v148);
  if (MaxX >= v38)
  {
    MaxX = v38;
  }

  if (v38 >= MinX)
  {
    v63 = MaxX;
  }

  else
  {
    v63 = MinX;
  }

  v64 = [v19 listView];
  if (!v64)
  {
    goto LABEL_94;
  }

  v65 = v64;
  [v64 bounds];
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;

  v149.origin.x = v67;
  v149.origin.y = v69;
  v149.size.width = v71;
  v149.size.height = v73;
  MinY = CGRectGetMinY(v149);
  v75 = [v19 listView];

  if (v75)
  {
    [v75 bounds];
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;

    v150.origin.x = v77;
    v150.origin.y = v79;
    v150.size.width = v81;
    v150.size.height = v83;
    MaxY = CGRectGetMaxY(v150);
    v85 = [objc_allocWithZone(NCNotificationListHighlightsDragState) init];
    v19 = v85;
    if (v85)
    {
      if (MaxY >= v40)
      {
        v86 = v40;
      }

      else
      {
        v86 = MaxY;
      }

      if (v40 >= MinY)
      {
        v87 = v86;
      }

      else
      {
        v87 = MinY;
      }

      [v85 setStartPoint_];
      [v19 setTranslation_];
      [v19 setVelocity_];
    }

    else
    {
      [0 setTranslation_];
    }

    a1 = v136;
    a2 = v135;
    goto LABEL_26;
  }

LABEL_95:
  __break(1u);
}

void sub_21E8D6838(int64_t a1)
{
  v3 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout];
  v4 = *(v3 + 16);
  if (v4 > a1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v5 = *(v3 + 24 * a1 + 32);
LABEL_14:
      sub_21E8C54F8(v5);
      sub_21E79411C(0, 0, 1);
      v22.receiver = v1;
      v22.super_class = NCNotificationRootModernList;
      v15 = objc_msgSendSuper2(&v22, sel_rootListView);
      sub_21E8CB760(v15);

      return;
    }

    __break(1u);
LABEL_29:
    swift_once();
    goto LABEL_18;
  }

  if (a1 - 1 < v4)
  {
    v7 = *(v3 + 24 * (a1 - 1) + 32);
    v8 = v1[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
    if (v8 == 5 || v7 != v8)
    {
      v10 = v1;
      if (qword_280D03F40 != -1)
      {
        swift_once();
      }

      v11 = sub_21E929A78();
      __swift_project_value_buffer(v11, qword_280D05F58);
      v12 = sub_21E929A58();
      v13 = sub_21E92A648();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        *v14 = 134349056;
        *(v14 + 4) = a1;
        _os_log_impl(&dword_21E77E000, v12, v13, "Hit an exclusion zone at index %{public}ld that has no associated page, and we jumped here", v14, 0xCu);
        MEMORY[0x223D65FB0](v14, -1, -1);
      }

      v1 = v10;
      v5 = v7;
      goto LABEL_14;
    }

    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v20 = sub_21E929A78();
    __swift_project_value_buffer(v20, qword_280D05F58);
    oslog = sub_21E929A58();
    v17 = sub_21E92A648();
    if (!os_log_type_enabled(oslog, v17))
    {
      goto LABEL_25;
    }

    v18 = swift_slowAlloc();
    *v18 = 134349056;
    *(v18 + 4) = a1;
    v19 = "Hit an exclusion zone at index %{public}ld that has no associated page, ignoring scroll event";
    goto LABEL_24;
  }

  if (!v4)
  {
    return;
  }

  v2 = a1;
  if (qword_280D03F40 != -1)
  {
    goto LABEL_29;
  }

LABEL_18:
  v16 = sub_21E929A78();
  __swift_project_value_buffer(v16, qword_280D05F58);
  oslog = sub_21E929A58();
  v17 = sub_21E92A638();
  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    *(v18 + 4) = v2;
    v19 = "ExclusionManager scroll to the zoneIndex %{public}ld doesn't belong to any page.";
LABEL_24:
    _os_log_impl(&dword_21E77E000, oslog, v17, v19, v18, 0xCu);
    MEMORY[0x223D65FB0](v18, -1, -1);
  }

LABEL_25:
}

void _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE012notificationD13BaseComponent_10willRemoveySo0adiJ0_p_So6UIViewCtF_0()
{
  v1 = OBJC_IVAR___NCNotificationRootModernList_currentPageType;
  if (v0[OBJC_IVAR___NCNotificationRootModernList_currentPageType] == 4)
  {
    goto LABEL_12;
  }

  v2 = v0;
  v3 = sub_21E786808(0);
  if (!v3)
  {
    goto LABEL_48;
  }

  v4 = v3;
  v5 = [v3 count];

  if (v5 < 1)
  {
LABEL_12:
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v16 = sub_21E929A78();
    __swift_project_value_buffer(v16, qword_280D05F58);
    oslog = sub_21E929A58();
    v17 = sub_21E92A648();
    if (!os_log_type_enabled(oslog, v17))
    {
      goto LABEL_17;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21E77E000, oslog, v17, "Skip holding page fomr cell view will removed, currentPageType is .list", v18, 2u);
    goto LABEL_16;
  }

  v6 = v2[v1];
  if (v6 <= 2)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v7 = sub_21E929A78();
    __swift_project_value_buffer(v7, qword_280D05F58);
    v8 = v2;
    v9 = sub_21E929A58();
    v10 = sub_21E92A648();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37 = v12;
      *v11 = 136446210;
      v13 = v2[v1];
      if (v13 > 2)
      {
        if (v13 == 3)
        {
          v14 = 0xE100000000000000;
          v15 = 80;
        }

        else if (v13 == 4)
        {
          v14 = 0xE100000000000000;
          v15 = 76;
        }

        else
        {
          v14 = 0xE500000000000000;
          v15 = 0x3E6C696E3CLL;
        }
      }

      else
      {
        v14 = 0xE100000000000000;
        if (v13)
        {
          if (v13 == 1)
          {
            v15 = 83;
          }

          else
          {
            v15 = 69;
          }
        }

        else
        {
          v15 = 67;
        }
      }

      v26 = sub_21E79841C(v15, v14, &v37);

      *(v11 + 4) = v26;
      _os_log_impl(&dword_21E77E000, v9, v10, "Cell view will removed, currentPageType: %{public}s is LayoutFromBottom", v11, 0xCu);
      v27 = __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x223D65FB0](v12, -1, -1, v27);
      MEMORY[0x223D65FB0](v11, -1, -1);
    }

    v28 = *&v8[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      *&v8[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount] = v30;
      v31 = sub_21E786808(0);
      if (v31)
      {
        v32 = v31;
        v33 = [v31 listView];

        if (v33)
        {
          [v33 setHidden_];

          sub_21E798E1C(v6 | 0x40);
          return;
        }

        goto LABEL_50;
      }

LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      return;
    }

    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v19 = sub_21E929A78();
  __swift_project_value_buffer(v19, qword_280D05F58);
  v20 = v2;
  oslog = sub_21E929A58();
  v21 = sub_21E92A648();

  if (os_log_type_enabled(oslog, v21))
  {
    v18 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v22;
    *v18 = 136446210;
    v23 = v2[v1];
    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = 0xE100000000000000;
        v25 = 80;
      }

      else if (v23 == 4)
      {
        v24 = 0xE100000000000000;
        v25 = 76;
      }

      else
      {
        v24 = 0xE500000000000000;
        v25 = 0x3E6C696E3CLL;
      }
    }

    else
    {
      v24 = 0xE100000000000000;
      if (v23)
      {
        if (v23 == 1)
        {
          v25 = 83;
        }

        else
        {
          v25 = 69;
        }
      }

      else
      {
        v25 = 67;
      }
    }

    v34 = sub_21E79841C(v25, v24, &v37);

    *(v18 + 4) = v34;
    _os_log_impl(&dword_21E77E000, oslog, v21, "Skip holding page fomr cell view will removed, currentPageType: %{public}s is not LayoutFromBottom", v18, 0xCu);
    v35 = __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x223D65FB0](v22, -1, -1, v35);
LABEL_16:
    MEMORY[0x223D65FB0](v18, -1, -1);
  }

LABEL_17:
}

void _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE012notificationD13BaseComponent_9didRemoveySo0adiJ0_p_So6UIViewCtF_0()
{
  v7 = v0;
  v8 = OBJC_IVAR___NCNotificationRootModernList_currentPageType;
  if (v0[OBJC_IVAR___NCNotificationRootModernList_currentPageType] == 4)
  {
    v9 = sub_21E786808(0);
    if (!v9)
    {
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v10 = v9;
    v11 = [v9 count];

    if (v11)
    {
      v12 = OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount;
      v13 = *&v7[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount];
      v14 = __OFSUB__(v13, 1);
      v15 = v13 - 1;
      if (v14)
      {
        __break(1u);
LABEL_82:
        swift_once();
        goto LABEL_15;
      }

      *&v7[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount] = v15;
      if (v15 > 0)
      {
        return;
      }

      *&v7[v12] = 0;
      v16 = sub_21E786808(0);
      if (!v16)
      {
        goto LABEL_91;
      }

      v7 = v16;
      v87 = [v16 listView];

      v17 = v87;
      if (v87)
      {
        goto LABEL_65;
      }

      __break(1u);
    }
  }

  v2 = &v7[OBJC_IVAR___NCNotificationRootModernList_layout];
  v18 = *&v7[OBJC_IVAR___NCNotificationRootModernList_layout];
  v5 = *&v7[OBJC_IVAR___NCNotificationRootModernList_layout + 8];
  v6 = *&v7[OBJC_IVAR___NCNotificationRootModernList_layout + 16];

  v19.n128_f64[0] = v6;
  sub_21E783428(v18, v91, v5, v19);

  if ((v94 & 0xC0) != 0x80)
  {
    goto LABEL_52;
  }

  if (v94 != 128)
  {
    goto LABEL_52;
  }

  if (v91[0] != 2)
  {
    goto LABEL_52;
  }

  v20 = vorrq_s8(v92, v93);
  if (*&vorr_s8(*v20.i8, *&vextq_s8(v20, v20, 8uLL)) | v91[2] | v91[1])
  {
    goto LABEL_52;
  }

  v3 = v7[v8];
  if (v3 != 5)
  {
    goto LABEL_22;
  }

  if (qword_280D03F40 != -1)
  {
    goto LABEL_82;
  }

LABEL_15:
  v21 = sub_21E929A78();
  __swift_project_value_buffer(v21, qword_280D05F58);
  v22 = sub_21E929A58();
  LOBYTE(v23) = sub_21E92A648();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_21E77E000, v22, v23, "Skip correcting scrollPosition for view removeal, currentPageType not found", v24, 2u);
    MEMORY[0x223D65FB0](v24, -1, -1);
  }

  v25 = OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount;
  v26 = *&v7[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount];
  v14 = __OFSUB__(v26, 1);
  v27 = v26 - 1;
  if (!v14)
  {
    *&v7[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount] = v27;
    if (v27 > 0)
    {
      return;
    }

    *&v7[v25] = 0;
    v28 = sub_21E786808(0);
    if (v28)
    {
      v7 = v28;
      v87 = [v28 listView];

      v17 = v87;
      if (!v87)
      {
        __break(1u);
LABEL_22:
        LODWORD(v23) = v3;
        v29 = *v2;
        v30 = *(*v2 + 16);
        v31 = MEMORY[0x277D84F90];
        if (v30)
        {
          v87 = v3;
          *&v95 = MEMORY[0x277D84F90];

          sub_21E8D52D8(0, v30, 0);
          v31 = v95;
          v4 = *(v95 + 16);
          v32 = 32;
          do
          {
            v33 = *(v29 + v32);
            *&v95 = v31;
            v34 = *(v31 + 3);
            v1 = v4 + 1;
            if (v4 >= v34 >> 1)
            {
              sub_21E8D52D8((v34 > 1), v4 + 1, 1);
              v31 = v95;
            }

            *(v31 + 2) = v1;
            *(v4 + v31 + 32) = v33;
            v32 += 24;
            v4 = (v4 + 1);
            --v30;
          }

          while (v30);

          v3 = v87;
        }

        v35 = 0;
        v36 = *(v31 + 2);
        do
        {
          if (v36 == v35)
          {
            while (1)
            {
              if (v23 > 2u)
              {
                if (v23 == 3)
                {
                  LODWORD(v23) = 2;
                }

                else
                {
                  LODWORD(v23) = 3;
                }
              }

              else if (v23 == 1)
              {
                LODWORD(v23) = 0;
              }

              else
              {
                if (v23 != 2)
                {
                  goto LABEL_77;
                }

                LODWORD(v23) = 1;
              }

              v38 = *(v31 + 2);
              v39 = (v31 + 32);
              while (v38)
              {
                v40 = *v39++;
                --v38;
                if (v40 == v23)
                {
                  goto LABEL_43;
                }
              }
            }
          }

          v37 = &v31[v35++];
        }

        while (v37[32] != v23);
LABEL_43:

        while (1)
        {
          v41 = (*v2 + 32);
          v42 = *(*v2 + 16) + 1;
          do
          {
            if (!--v42)
            {
              if (qword_280D03F40 != -1)
              {
                goto LABEL_84;
              }

              goto LABEL_59;
            }

            v43 = v41 + 24;
            v44 = *v41;
            v41 += 24;
          }

          while (v44 != v23);
          v5 = *(v43 - 2);
          v6 = *(v43 - 1);
          v90.receiver = v7;
          v90.super_class = NCNotificationRootModernList;
          v3 = &selRef_revealHintingAnimationTension;
          v45 = objc_msgSendSuper2(&v90, sel_rootListView);
          v4 = &selRef_appendString_withName_;
          [v45 contentOffset];
          v47 = v46;

          if (vabdd_f64(v5, v47) > 10.0)
          {
            v1 = v23;
            if (qword_280D03F40 != -1)
            {
              goto LABEL_86;
            }

            goto LABEL_49;
          }

          if (qword_280D03F40 != -1)
          {
            swift_once();
          }

          v79 = sub_21E929A78();
          __swift_project_value_buffer(v79, qword_280D05F58);
          v80 = sub_21E929A58();
          v81 = sub_21E92A648();
          if (os_log_type_enabled(v80, v81))
          {
            v82 = swift_slowAlloc();
            *v82 = 0;
            _os_log_impl(&dword_21E77E000, v80, v81, "Skip correcting scrollPosition for view removeal, targetPage.minY and view.contentOffset different is neligible.", v82, 2u);
            MEMORY[0x223D65FB0](v82, -1, -1);
          }

          v83 = OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount;
          v84 = *&v7[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount];
          v14 = __OFSUB__(v84, 1);
          v85 = v84 - 1;
          if (v14)
          {
            __break(1u);
            goto LABEL_88;
          }

          *&v7[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount] = v85;
          if (v85 > 0)
          {
            return;
          }

          *&v7[v83] = 0;
          v86 = sub_21E786808(0);
          if (!v86)
          {
            goto LABEL_95;
          }

          v7 = v86;
          v31 = [v86 listView];

          if (v31)
          {
            goto LABEL_56;
          }

          __break(1u);
LABEL_77:
          if (v36)
          {
            LODWORD(v23) = v31[32];
            goto LABEL_43;
          }

LABEL_80:

          LODWORD(v23) = 4;
        }
      }

      goto LABEL_65;
    }

    goto LABEL_92;
  }

  __break(1u);
LABEL_84:
  swift_once();
LABEL_59:
  v69 = sub_21E929A78();
  __swift_project_value_buffer(v69, qword_280D05F58);
  v70 = sub_21E929A58();
  v71 = sub_21E92A648();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v1 = swift_slowAlloc();
    *&v95 = v1;
    *v72 = 136446466;
    v73 = sub_21E79841C(qword_21E948050[v23], 0xE100000000000000, &v95);

    *(v72 + 4) = v73;
    *(v72 + 12) = 2082;
    v23 = sub_21E79841C(qword_21E948050[v3], 0xE100000000000000, &v95);

    *(v72 + 14) = v23;
    _os_log_impl(&dword_21E77E000, v70, v71, "Skip correcting scrollPosition for view removeal, page for %{public}s not found, currentPage: %{public}s", v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v1, -1, -1);
    MEMORY[0x223D65FB0](v72, -1, -1);
  }

  v74 = OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount;
  v75 = *&v7[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount];
  v14 = __OFSUB__(v75, 1);
  v76 = v75 - 1;
  if (!v14)
  {
    *&v7[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount] = v76;
    if (v76 > 0)
    {
      return;
    }

    *&v7[v74] = 0;
    v77 = sub_21E786808(0);
    if (!v77)
    {
      goto LABEL_93;
    }

    v78 = v77;
    v87 = [v77 listView];

    v17 = v87;
    if (!v87)
    {
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return;
    }

LABEL_65:
    [v17 setHidden_];

    return;
  }

  __break(1u);
LABEL_86:
  swift_once();
LABEL_49:
  v48 = sub_21E929A78();
  __swift_project_value_buffer(v48, qword_280D05F58);
  v49 = v7;
  v50 = sub_21E929A58();
  v51 = sub_21E92A648();

  if (os_log_type_enabled(v50, v51))
  {
    v87 = v1;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *&v95 = v53;
    *v52 = 136446466;
    v54 = sub_21E8C11B8(v23, v5, v6);
    v2 = sub_21E79841C(v54, v55, &v95);

    *(v52 + 4) = v2;
    *(v52 + 12) = 2050;
    v89.receiver = v49;
    v89.super_class = NCNotificationRootModernList;
    v56 = objc_msgSendSuper2(&v89, v3[20]);
    [v56 v4[307]];
    v58 = v57;

    *(v52 + 14) = v58;
    _os_log_impl(&dword_21E77E000, v50, v51, "Correcting scrollPosition for view removeal, targetPage: %{public}s, currentContentOffset: %{public}f", v52, 0x16u);
    v59 = __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x223D65FB0](v53, -1, -1, v59);
    v60 = v52;
    v1 = v87;
    MEMORY[0x223D65FB0](v60, -1, -1);
  }

  v61 = swift_allocObject();
  *(v61 + 16) = v49;
  _s23ScrollCompletionHandlerCMa();
  v62 = swift_allocObject();
  *(v62 + 32) = 0;
  *(v62 + 16) = sub_21E8D976C;
  *(v62 + 24) = v61;
  *&v95 = 1;
  *(&v95 + 1) = v1;
  v96 = v5;
  v97 = v6;
  v98 = 0x4000000000000080;
  v99 = v62;
  v63 = v49;
  sub_21E8C2F48(&v95);
LABEL_52:
  v64 = OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount;
  v65 = *&v7[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount];
  v14 = __OFSUB__(v65, 1);
  v66 = v65 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_80;
  }

  *&v7[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount] = v66;
  if (v66 <= 0)
  {
    *&v7[v64] = 0;
    v67 = sub_21E786808(0);
    if (v67)
    {
      v68 = v67;
      v31 = [v67 listView];

      if (v31)
      {
LABEL_56:
        [v31 setHidden_];

        return;
      }

      goto LABEL_90;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }
}

void _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE25revealNotificationHistory_8animatedySb_SbtF_0(char a1)
{
  if (a1)
  {
    v2 = v1[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
    if (v2 < 4 || v2 == 5)
    {
      v4 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout];
      v5 = (v4 + 32);
      v6 = *(v4 + 16) + 1;
      while (--v6)
      {
        v7 = v5 + 24;
        v8 = *v5;
        v5 += 24;
        if (v8 == 4)
        {
          v9 = *(v7 - 2);
          v10 = *(v7 - 1);
          v22.receiver = v1;
          v22.super_class = NCNotificationRootModernList;
          v11 = objc_msgSendSuper2(&v22, sel_rootListView);
          [v11 contentOffset];
          v13 = v12;

          if (v9 > v13 || v13 > v10)
          {
            v15 = sub_21E786808(0);
            if (v15)
            {
              v16 = v15;
              v17 = [v15 count];

              if (v17 >= 1)
              {
                if (qword_280D03F40 != -1)
                {
                  swift_once();
                }

                v18 = sub_21E929A78();
                __swift_project_value_buffer(v18, qword_280D05F58);
                v19 = sub_21E929A58();
                v20 = sub_21E92A648();
                if (os_log_type_enabled(v19, v20))
                {
                  v21 = swift_slowAlloc();
                  *v21 = 0;
                  _os_log_impl(&dword_21E77E000, v19, v20, "scrolling to .list to reveal notification history.", v21, 2u);
                  MEMORY[0x223D65FB0](v21, -1, -1);
                }

                sub_21E8C6068(0, 4, 0, 0);
              }
            }

            else
            {
              __break(1u);
            }
          }

          return;
        }
      }
    }
  }
}

void sub_21E8D7C24(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670, &qword_21E9477E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E947520;
  *(v4 + 56) = MEMORY[0x277D85048];
  *(v4 + 64) = sub_21E79668C();
  *(v4 + 32) = a2;
  v5 = sub_21E92A468();
  sub_21E7950DC(v5, v6, 0xD000000000000011, 0x800000021E9577A0);

  v8.receiver = v2;
  v8.super_class = NCNotificationRootModernList;
  v7 = objc_msgSendSuper2(&v8, sel_rootListView);
  [v7 setAdditionalYOffset_];

  sub_21E79411C(0, 0, 1);
}

uint64_t _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE27scrollViewShouldScrollToTopySbSo08UIScrollI0CF_0()
{
  v1 = v0;
  v2 = OBJC_IVAR___NCNotificationRootModernList_currentPageType;
  if (v0[OBJC_IVAR___NCNotificationRootModernList_currentPageType] == 4)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v3 = sub_21E929A78();
    __swift_project_value_buffer(v3, qword_280D05F58);
    v4 = sub_21E929A58();
    v5 = sub_21E92A648();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21E77E000, v4, v5, "ScrollView requesting scrollToTop", v6, 2u);
      MEMORY[0x223D65FB0](v6, -1, -1);
    }

    v7 = objc_opt_self();
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    v22[4] = sub_21E8D975C;
    v22[5] = v8;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 1107296256;
    v22[2] = sub_21E792C28;
    v22[3] = &block_descriptor_168;
    v9 = _Block_copy(v22);
    v1;

    [v7 _performWithoutRetargetingAnimations_];
    _Block_release(v9);
    sub_21E8C6068(1, 4, 0, 0);
  }

  else
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v10 = sub_21E929A78();
    __swift_project_value_buffer(v10, qword_280D05F58);
    v11 = v0;
    v12 = sub_21E929A58();
    v13 = sub_21E92A648();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22[0] = v15;
      *v14 = 136446210;
      v16 = v1[v2];
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v17 = 0xE100000000000000;
          v18 = 80;
        }

        else if (v16 == 4)
        {
          v17 = 0xE100000000000000;
          v18 = 76;
        }

        else
        {
          v17 = 0xE300000000000000;
          v18 = 7104878;
        }
      }

      else
      {
        v17 = 0xE100000000000000;
        if (v16)
        {
          if (v16 == 1)
          {
            v18 = 83;
          }

          else
          {
            v18 = 69;
          }
        }

        else
        {
          v18 = 67;
        }
      }

      v19 = sub_21E79841C(v18, v17, v22);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_21E77E000, v12, v13, "Skip scrollView requesting scrollToTop; currentPageType is %{public}s not .list", v14, 0xCu);
      v20 = __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x223D65FB0](v15, -1, -1, v20);
      MEMORY[0x223D65FB0](v14, -1, -1);
    }
  }

  return 0;
}

uint64_t sub_21E8D8074(uint64_t a1, __n128 a2, __n128 a3)
{
  v4 = v3;
  v6 = &v3[OBJC_IVAR___NCNotificationRootModernList_layout];
  v7 = *(*v6 + 16);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = *v6 + 24 * v7;
  v9 = *(v8 + 8);
  v10 = *(v8 + 24);
  if (BSFloatGreaterThanFloat())
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v11 = sub_21E929A78();
    __swift_project_value_buffer(v11, qword_280D05F58);
    v12 = sub_21E929A58();
    v13 = sub_21E92A648();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v51 = v15;
      *v14 = 136446466;
      v16 = sub_21E79841C(qword_21E948050[v9], 0xE100000000000000, &v51);

      *(v14 + 4) = v16;
      *(v14 + 12) = 2050;
      *(v14 + 14) = v10;
      _os_log_impl(&dword_21E77E000, v12, v13, "Scroll over lastPage %{public}s maxY, limitContentOffset to %{public}f.", v14, 0x16u);
      v17 = __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x223D65FB0](v15, -1, -1, v17);
      MEMORY[0x223D65FB0](v14, -1, -1);
    }

    v52.receiver = v4;
    v52.super_class = NCNotificationRootModernList;
    v18 = objc_msgSendSuper2(&v52, sel_rootListView);
LABEL_20:
    v30 = v18;
    UIRoundToViewScale();
    v32 = v31;

    result = 1;
    goto LABEL_26;
  }

  v19 = *v6;
  v20 = *(*v6 + 16);
  if (!v20)
  {
LABEL_9:
    if (!BSFloatApproximatelyEqualToFloat())
    {
      if (qword_280D03F40 != -1)
      {
        swift_once();
      }

      v34 = sub_21E929A78();
      __swift_project_value_buffer(v34, qword_280D05F58);
      v35 = sub_21E929A58();
      v36 = sub_21E92A648();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_21E77E000, v35, v36, "List has empty page, limitContentOffset to 0.", v37, 2u);
        MEMORY[0x223D65FB0](v37, -1, -1);
      }

      result = 1;
      v32 = 0;
      goto LABEL_26;
    }

    v19 = *v6;
    v20 = *(*v6 + 16);
  }

  v21 = (v19 + 32);
  v22 = v20 + 1;
  while (--v22)
  {
    v23 = v21 + 24;
    v24 = *v21;
    v21 += 24;
    if (!v24)
    {
      v25 = *(v23 - 2);
      if (BSFloatLessThanFloat())
      {
        if (qword_280D03F40 != -1)
        {
          swift_once();
        }

        v26 = sub_21E929A78();
        __swift_project_value_buffer(v26, qword_280D05F58);
        v27 = sub_21E929A58();
        v28 = sub_21E92A648();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 134349056;
          *(v29 + 4) = v25;
          _os_log_impl(&dword_21E77E000, v27, v28, "Scroll lower than Count.minY, limitContentOffset to: %{public}f.", v29, 0xCu);
          MEMORY[0x223D65FB0](v29, -1, -1);
        }

        v53.receiver = v4;
        v53.super_class = NCNotificationRootModernList;
        v18 = objc_msgSendSuper2(&v53, sel_rootListView);
        goto LABEL_20;
      }

      v19 = *v6;
      v20 = *(*v6 + 16);
      break;
    }
  }

  v38 = (v19 + 32);
  v39 = v20 + 1;
  do
  {
    if (!--v39)
    {
      return 0;
    }

    v40 = v38 + 24;
    v41 = *v38;
    v38 += 24;
  }

  while (v41 != 4);
  v42 = *(v40 - 2);
  v55.receiver = v4;
  v55.super_class = NCNotificationRootModernList;
  v43 = objc_msgSendSuper2(&v55, sel_rootListView);
  v44 = [v43 traitCollection];

  LOBYTE(v43) = _NCIsNotVerticalSpaceConstrained(v44);
  if (v43)
  {
    return 0;
  }

  result = BSFloatLessThanFloat();
  if (result)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v45 = sub_21E929A78();
    __swift_project_value_buffer(v45, qword_280D05F58);
    v46 = sub_21E929A58();
    v47 = sub_21E92A648();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134349056;
      *(v48 + 4) = v42;
      _os_log_impl(&dword_21E77E000, v46, v47, "In landscape mode scroll can't lower than List.minY, limitContentOffset to: %{public}f.", v48, 0xCu);
      MEMORY[0x223D65FB0](v48, -1, -1);
    }

    v54.receiver = v4;
    v54.super_class = NCNotificationRootModernList;
    v49 = objc_msgSendSuper2(&v54, sel_rootListView);
    UIRoundToViewScale();
    v32 = v50;

    result = 0;
LABEL_26:
    *(a1 + 8) = v32;
  }

  return result;
}

uint64_t sub_21E8D85F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  if ((a1 & 1) != 0 && (a2 & 1) == 0)
  {
    memset(v5, 0, sizeof(v5));
    v6 = 0x8000000000000000;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    a1 = sub_21E8C2F48(v5);
  }

  return v3(a1, a2);
}

uint64_t sub_21E8D867C(char a1)
{
  v3 = &v1[OBJC_IVAR___NCNotificationRootModernList_layout];
  v4 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout + 8];
  v5 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout + 96];
  if ((v1[OBJC_IVAR___NCNotificationRootModernList_layout + 80] & 1) == 0)
  {
    v5 = v5 - v3[9];
  }

  if (v5 < 0.0)
  {
    if (v4 <= 0.0)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v12 = sub_21E929A78();
    __swift_project_value_buffer(v12, qword_280D05F58);
    v13 = v1;
    v14 = sub_21E929A58();
    v15 = sub_21E92A648();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 67240704;
      *(v16 + 4) = a1 & 1;
      *(v16 + 8) = 2050;
      *(v16 + 10) = v3[1];
      *(v16 + 18) = 2050;
      v17 = v3[12];
      if ((v3[10] & 1) == 0)
      {
        v17 = v17 - v3[9];
      }

      if (v17 < 0.0)
      {
        v17 = 0.0;
      }

      *(v16 + 20) = v17;
      v18 = v16;
      _os_log_impl(&dword_21E77E000, v14, v15, "Skip perform scrolling for group set to %{BOOL,public}d, currentOffsetY %{public}f larger than clockMaxY %{public}f", v16, 0x1Cu);
      MEMORY[0x223D65FB0](v18, -1, -1);
    }

    return 0;
  }

  if (v4 > v5)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((a1 & 1) == 0)
  {
    return 1;
  }

  v32.receiver = v1;
  v32.super_class = NCNotificationRootModernList;
  v6 = objc_msgSendSuper2(&v32, sel_rootListView);
  objc_opt_self();
  v7 = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

  if ((v7 & 1) == 0)
  {
    v31.receiver = v1;
    v31.super_class = NCNotificationRootModernList;
    v8 = objc_msgSendSuper2(&v31, sel_rootListView);
    v9 = [v8 traitCollection];

    v10 = [v9 _backlightLuminance];
    if (v10 == 2)
    {
      return 1;
    }
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v19 = sub_21E929A78();
  __swift_project_value_buffer(v19, qword_280D05F58);
  v20 = v1;
  v21 = sub_21E929A58();
  v22 = sub_21E92A648();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67240448;
    v30.receiver = v20;
    v30.super_class = NCNotificationRootModernList;
    v24 = objc_msgSendSuper2(&v30, sel_rootListView);
    objc_opt_self();
    v25 = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

    *(v23 + 4) = v25;
    *(v23 + 8) = 2050;
    v29.receiver = v20;
    v29.super_class = NCNotificationRootModernList;
    v26 = objc_msgSendSuper2(&v29, sel_rootListView);
    v27 = [v26 traitCollection];

    v28 = [v27 _backlightLuminance];
    *(v23 + 10) = v28;

    _os_log_impl(&dword_21E77E000, v21, v22, "Skip perform scrolling for group collapsed, viewEffectivelyTracking: %{BOOL,public}d, backlightLuminance: %{public}ld.", v23, 0x12u);
    MEMORY[0x223D65FB0](v23, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21E8D8AE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_21E8D8B38(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 64) = 1;
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
      *a1 = 4 * -a2;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_21E8D8BB0(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = result[4] & 0x81 | (a2 << 62);
    *result &= 3uLL;
    result[4] = v2;
  }

  else
  {
    *result = (a2 - 2) & 3;
    result[1] = (a2 - 2) >> 2;
    result[2] = 0;
    result[3] = 0;
    result[4] = 0x8000000000000000;
    result[5] = 0;
    result[6] = 0;
    result[7] = 0;
  }

  return result;
}

double (*sub_21E8D8C14())()
{
  v1 = *(v0 + 16);
  *(swift_allocObject() + 16) = v1;
  v2 = v1;
  return sub_21E8D8C78;
}

uint64_t sub_21E8D8C80(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E8B8A0C;

  return sub_21E8C3864(a1, v4, v5, v6);
}

void sub_21E8D8D9C(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, void *a13)
{
  if (a1)
  {
  }
}

double sub_21E8D8E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a5 >> 62) <= 1)
  {
  }

  return result;
}

void sub_21E8D8E40(char a1)
{
  if (a1)
  {
    sub_21E798E1C(129);
  }
}

uint64_t objectdestroy_130Tm()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_21E8D8EC4(char a1, char a2)
{
  v5 = *(v2 + 32);
  if (*(v2 + 16) == 1 && (a1 & 1) != 0 && (a2 & 1) == 0)
  {
    sub_21E8CCC2C();
  }

  if (v5)
  {
    v5(a1 & 1, a2 & 1);
  }
}

uint64_t objectdestroy_146Tm()
{
  sub_21E8D8E20(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_21E8D8E20(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_21E8D8FA8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21E8B8A0C;

  return sub_21E8C4720(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21E8D90BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E8B90C0;

  return sub_21E8CD504(a1, v4, v5, v6);
}

_OWORD *sub_21E8D9170(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_21E8D919C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_21E8D9228(uint64_t result, char a2)
{
  if ((result & 1) != 0 && (a2 & 1) == 0)
  {
    memset(v2, 0, sizeof(v2));
    v3 = 0x8000000000000000;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    return sub_21E8C2F48(v2);
  }

  return result;
}

uint64_t objectdestroy_139Tm()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t _s23RequestedScrollPositionOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1E)
  {
    goto LABEL_17;
  }

  if (a2 + 226 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 226) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 226;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 226;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1D)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s23RequestedScrollPositionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 226 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 226) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1E)
  {
    v4 = 0;
  }

  if (a2 > 0x1D)
  {
    v5 = ((a2 - 30) >> 8) + 1;
    *result = a2 - 30;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21E8D9428(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 7u) + 2;
  }
}

_BYTE *sub_21E8D9454(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 6) & 7 | 0x80;
  }

  return result;
}

uint64_t _s14ScrollPositionOwCP(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t _s14ScrollPositionOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 25))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s14ScrollPositionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_21E8D95D8()
{
  result = qword_27CED7480;
  if (!qword_27CED7480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7480);
  }

  return result;
}

unint64_t sub_21E8D9630()
{
  result = qword_27CED7488;
  if (!qword_27CED7488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7488);
  }

  return result;
}

unint64_t sub_21E8D9698()
{
  result = qword_27CED7490;
  if (!qword_27CED7490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CED7490);
  }

  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_21E8D97A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
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

uint64_t sub_21E8D97EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21E8D9858()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  sub_21E8DB5C0();
  sub_21E9297A8();

  v4 = *((*v3 & *v1) + 0x70);
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 == 2)
  {
    LOBYTE(v5) = v2;
  }

  return v5 & 1;
}

void *sub_21E8D9944()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21E92A428();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7440, &unk_21E94A360);
  v4 = objc_allocWithZone(v3);
  v5 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70)) = 2;
  sub_21E9297D8();
  *(v4 + *((*v5 & *v4) + 0x60)) = v2;
  v6 = (v4 + *((*v5 & *v4) + 0x68));
  *v6 = 0xD00000000000001ELL;
  v6[1] = 0x800000021E9579A0;
  v21.receiver = v4;
  v21.super_class = v3;
  v7 = v2;
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *((*v5 & *v8) + 0x60);
  v10 = *(v8 + v9);
  v11 = v8;
  v12 = v10;

  v13 = sub_21E92A428();

  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_21E92A7C8();
    swift_unknownObjectRelease();
    sub_21E8D9170(&v19, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED74A0, &qword_21E948110);
  if (swift_dynamicCast())
  {
    v15 = v19;
  }

  else
  {
    v15 = 2;
    LOBYTE(v19) = 2;
  }

  sub_21E8DB3B8(v15);
  v16 = *(v8 + v9);

  v17 = sub_21E92A428();

  [v16 addObserver:v11 forKeyPath:v17 options:0 context:0];

  return v11;
}

void *sub_21E8D9C64()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21E92A428();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7440, &unk_21E94A360);
  v4 = objc_allocWithZone(v3);
  v5 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70)) = 2;
  sub_21E9297D8();
  *(v4 + *((*v5 & *v4) + 0x60)) = v2;
  v6 = (v4 + *((*v5 & *v4) + 0x68));
  *v6 = 0xD000000000000011;
  v6[1] = 0x800000021E957980;
  v21.receiver = v4;
  v21.super_class = v3;
  v7 = v2;
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *((*v5 & *v8) + 0x60);
  v10 = *(v8 + v9);
  v11 = v8;
  v12 = v10;

  v13 = sub_21E92A428();

  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_21E92A7C8();
    swift_unknownObjectRelease();
    sub_21E8D9170(&v19, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED74A0, &qword_21E948110);
  if (swift_dynamicCast())
  {
    v15 = v19;
  }

  else
  {
    v15 = 2;
    LOBYTE(v19) = 2;
  }

  sub_21E8DB3B8(v15);
  v16 = *(v8 + v9);

  v17 = sub_21E92A428();

  [v16 addObserver:v11 forKeyPath:v17 options:0 context:0];

  return v11;
}

void *sub_21E8D9F7C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21E92A428();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7440, &unk_21E94A360);
  v4 = objc_allocWithZone(v3);
  v5 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70)) = 2;
  sub_21E9297D8();
  *(v4 + *((*v5 & *v4) + 0x60)) = v2;
  v6 = (v4 + *((*v5 & *v4) + 0x68));
  *v6 = 0xD000000000000020;
  v6[1] = 0x800000021E957950;
  v21.receiver = v4;
  v21.super_class = v3;
  v7 = v2;
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *((*v5 & *v8) + 0x60);
  v10 = *(v8 + v9);
  v11 = v8;
  v12 = v10;

  v13 = sub_21E92A428();

  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_21E92A7C8();
    swift_unknownObjectRelease();
    sub_21E8D9170(&v19, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED74A0, &qword_21E948110);
  if (swift_dynamicCast())
  {
    v15 = v19;
  }

  else
  {
    v15 = 2;
    LOBYTE(v19) = 2;
  }

  sub_21E8DB3B8(v15);
  v16 = *(v8 + v9);

  v17 = sub_21E92A428();

  [v16 addObserver:v11 forKeyPath:v17 options:0 context:0];

  return v11;
}

uint64_t sub_21E8DA29C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  sub_21E8DB5C0();
  sub_21E9297A8();

  v4 = *((*v3 & *v1) + 0x70);
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 == 2)
  {
    LOBYTE(v5) = v2;
  }

  return v5 & 1;
}

void *sub_21E8DA388()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21E92A428();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7440, &unk_21E94A360);
  v4 = objc_allocWithZone(v3);
  v5 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70)) = 2;
  sub_21E9297D8();
  *(v4 + *((*v5 & *v4) + 0x60)) = v2;
  v6 = (v4 + *((*v5 & *v4) + 0x68));
  *v6 = 0xD000000000000023;
  v6[1] = 0x800000021E957920;
  v21.receiver = v4;
  v21.super_class = v3;
  v7 = v2;
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *((*v5 & *v8) + 0x60);
  v10 = *(v8 + v9);
  v11 = v8;
  v12 = v10;

  v13 = sub_21E92A428();

  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_21E92A7C8();
    swift_unknownObjectRelease();
    sub_21E8D9170(&v19, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED74A0, &qword_21E948110);
  if (swift_dynamicCast())
  {
    v15 = v19;
  }

  else
  {
    v15 = 2;
    LOBYTE(v19) = 2;
  }

  sub_21E8DB3B8(v15);
  v16 = *(v8 + v9);

  v17 = sub_21E92A428();

  [v16 addObserver:v11 forKeyPath:v17 options:0 context:0];

  return v11;
}

uint64_t sub_21E8DA6A8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  sub_21E8DB5C0();
  sub_21E9297A8();

  v4 = *((*v3 & *v1) + 0x70);
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 == 2)
  {
    LOBYTE(v5) = v2;
  }

  return v5 & 1;
}

void *sub_21E8DA794()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21E92A428();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7440, &unk_21E94A360);
  v4 = objc_allocWithZone(v3);
  v5 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70)) = 2;
  sub_21E9297D8();
  *(v4 + *((*v5 & *v4) + 0x60)) = v2;
  v6 = (v4 + *((*v5 & *v4) + 0x68));
  *v6 = 0xD000000000000021;
  v6[1] = 0x800000021E9578F0;
  v21.receiver = v4;
  v21.super_class = v3;
  v7 = v2;
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *((*v5 & *v8) + 0x60);
  v10 = *(v8 + v9);
  v11 = v8;
  v12 = v10;

  v13 = sub_21E92A428();

  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_21E92A7C8();
    swift_unknownObjectRelease();
    sub_21E8D9170(&v19, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED74A0, &qword_21E948110);
  if (swift_dynamicCast())
  {
    v15 = v19;
  }

  else
  {
    v15 = 2;
    LOBYTE(v19) = 2;
  }

  sub_21E8DB3B8(v15);
  v16 = *(v8 + v9);

  v17 = sub_21E92A428();

  [v16 addObserver:v11 forKeyPath:v17 options:0 context:0];

  return v11;
}

uint64_t sub_21E8DAAB4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  sub_21E8DB5C0();
  sub_21E9297A8();

  v4 = *((*v3 & *v1) + 0x70);
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 == 2)
  {
    LOBYTE(v5) = v2;
  }

  return v5 & 1;
}

void *sub_21E8DABA0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21E92A428();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7440, &unk_21E94A360);
  v4 = objc_allocWithZone(v3);
  v5 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70)) = 2;
  sub_21E9297D8();
  *(v4 + *((*v5 & *v4) + 0x60)) = v2;
  v6 = (v4 + *((*v5 & *v4) + 0x68));
  *v6 = 0xD000000000000023;
  v6[1] = 0x800000021E9578C0;
  v21.receiver = v4;
  v21.super_class = v3;
  v7 = v2;
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *((*v5 & *v8) + 0x60);
  v10 = *(v8 + v9);
  v11 = v8;
  v12 = v10;

  v13 = sub_21E92A428();

  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_21E92A7C8();
    swift_unknownObjectRelease();
    sub_21E8D9170(&v19, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED74A0, &qword_21E948110);
  if (swift_dynamicCast())
  {
    v15 = v19;
  }

  else
  {
    v15 = 2;
    LOBYTE(v19) = 2;
  }

  sub_21E8DB3B8(v15);
  v16 = *(v8 + v9);

  v17 = sub_21E92A428();

  [v16 addObserver:v11 forKeyPath:v17 options:0 context:0];

  return v11;
}

uint64_t sub_21E8DAEC0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  sub_21E8DB5C0();
  sub_21E9297A8();

  v4 = *((*v3 & *v1) + 0x70);
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 == 2)
  {
    LOBYTE(v5) = v2;
  }

  return v5 & 1;
}

void *sub_21E8DAFAC()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_21E92A428();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7440, &unk_21E94A360);
  v4 = objc_allocWithZone(v3);
  v5 = MEMORY[0x277D85000];
  *(v4 + *((*MEMORY[0x277D85000] & *v4) + 0x70)) = 2;
  sub_21E9297D8();
  *(v4 + *((*v5 & *v4) + 0x60)) = v2;
  v6 = (v4 + *((*v5 & *v4) + 0x68));
  *v6 = 0xD00000000000001FLL;
  v6[1] = 0x800000021E9578A0;
  v21.receiver = v4;
  v21.super_class = v3;
  v7 = v2;
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *((*v5 & *v8) + 0x60);
  v10 = *(v8 + v9);
  v11 = v8;
  v12 = v10;

  v13 = sub_21E92A428();

  v14 = [v12 objectForKey_];

  if (v14)
  {
    sub_21E92A7C8();
    swift_unknownObjectRelease();
    sub_21E8D9170(&v19, v20);
  }

  else
  {
    memset(v20, 0, sizeof(v20));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED74A0, &qword_21E948110);
  if (swift_dynamicCast())
  {
    v15 = v19;
  }

  else
  {
    v15 = 2;
    LOBYTE(v19) = 2;
  }

  sub_21E8DB3B8(v15);
  v16 = *(v8 + v9);

  v17 = sub_21E92A428();

  [v16 addObserver:v11 forKeyPath:v17 options:0 context:0];

  return v11;
}

uint64_t sub_21E8DB2CC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  swift_getKeyPath();
  v3 = MEMORY[0x277D85000];
  sub_21E8DB5C0();
  sub_21E9297A8();

  v4 = *((*v3 & *v1) + 0x70);
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5 == 2)
  {
    LOBYTE(v5) = v2;
  }

  return v5 & 1;
}

void sub_21E8DB3B8(int a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  v4 = swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5 != 2)
  {
    if (a1 != 2 && ((v5 ^ a1) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    MEMORY[0x28223BE20](v4);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_21E8DB5C0();
    sub_21E929798();

    return;
  }

  if (a1 != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + v3) = a1;
}

uint64_t sub_21E8DB548()
{
  v1 = *(v0 + 16);
  v2 = **(v0 + 24);
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x70);
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

unint64_t sub_21E8DB5C0()
{
  result = qword_280D049E0[0];
  if (!qword_280D049E0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7440, &unk_21E94A360);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D049E0);
  }

  return result;
}

void sub_21E8DB624(char a1, char a2, void (*a3)(uint64_t, void), uint64_t a4, double a5, CGFloat a6)
{
  v7 = *&v6[OBJC_IVAR___NCNotificationModernListView_exclusionManager];
  if (v7)
  {
    v14 = *&v7[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView];
    v15 = v7;
    [v14 adjustedContentInset];
    v17 = *&v15[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones];
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v16 + a6;
      v20 = (v17 + 56);
      while (1)
      {
        v21 = *(v20 - 2);
        v22 = *v20;
        if (v21 < v19 && v19 < v21 + *v20)
        {
          break;
        }

        v20 += 5;
        if (!--v18)
        {
          goto LABEL_14;
        }
      }

      v24 = *(v20 - 3);
      v25 = *(v20 - 1);
      v64.origin.x = v24;
      v64.origin.y = *(v20 - 2);
      v64.size.width = v25;
      v64.size.height = *v20;
      if (CGRectGetMidY(v64) <= a6)
      {
        v66.origin.x = v24;
        v66.origin.y = v21;
        v66.size.width = v25;
        v66.size.height = v22;
        MaxY = CGRectGetMaxY(v66);
      }

      else
      {
        v65.origin.x = v24;
        v65.origin.y = v21;
        v65.size.width = v25;
        v65.size.height = v22;
        MaxY = CGRectGetMinY(v65);
      }

      a6 = MaxY;
    }

LABEL_14:

    v27 = swift_allocObject();
    *(v27 + 16) = v6;
    *(v27 + 24) = a5;
    *(v27 + 32) = a6;
    v28 = OBJC_IVAR___NCNotificationModernListView_performingAnimation;
    v6[OBJC_IVAR___NCNotificationModernListView_performingAnimation] = 1;
    v29 = swift_allocObject();
    v29[2] = v6;
    v29[3] = a3;
    v29[4] = a4;
    if (a1)
    {
      if (a2)
      {
        v30 = objc_opt_self();
        v62 = sub_21E8DCE84;
        v63 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v59 = 1107296256;
        v60 = sub_21E792C28;
        v61 = &block_descriptor_49;
        v31 = _Block_copy(&aBlock);
        v32 = v6;

        sub_21E792C10(a3, a4);

        v33 = [v30 nc:v31 applyHighFrameRate:?];
        _Block_release(v31);
        if (v33)
        {
          v34 = swift_allocObject();
          *(v34 + 16) = v33;
          v62 = sub_21E8B242C;
          v63 = v34;
          aBlock = MEMORY[0x277D85DD0];
          v59 = 1107296256;
          v60 = sub_21E792C28;
          v61 = &block_descriptor_59;
          v33 = _Block_copy(&aBlock);
        }

        v62 = sub_21E8DCE98;
        v63 = v29;
        aBlock = MEMORY[0x277D85DD0];
        v59 = 1107296256;
        v60 = sub_21E799760;
        v61 = &block_descriptor_52;
        v35 = _Block_copy(&aBlock);

        [v30 _animateByRetargetingAnimations_completion_];

        _Block_release(v35);
        v36 = v33;
      }

      else
      {
        v45 = v6;
        sub_21E792C10(a3, a4);
        [v45 contentOffset];
        v47 = v46;
        v49 = v48;
        v50 = objc_opt_self();
        v51 = swift_allocObject();
        v51[2] = v45;
        v51[3] = v47;
        v51[4] = v49;
        v62 = sub_21E8DCEC4;
        v63 = v51;
        aBlock = MEMORY[0x277D85DD0];
        v59 = 1107296256;
        v60 = sub_21E792C28;
        v61 = &block_descriptor_33_1;
        v52 = _Block_copy(&aBlock);
        v53 = v45;

        [v50 _performWithoutRetargetingAnimations_];
        _Block_release(v52);
        v62 = sub_21E8DCE84;
        v63 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v59 = 1107296256;
        v60 = sub_21E792C28;
        v61 = &block_descriptor_36;
        v54 = _Block_copy(&aBlock);

        v55 = [v50 nc:v54 applyHighFrameRate:?];
        _Block_release(v54);
        if (v55)
        {
          v56 = swift_allocObject();
          *(v56 + 16) = v55;
          v62 = sub_21E8B242C;
          v63 = v56;
          aBlock = MEMORY[0x277D85DD0];
          v59 = 1107296256;
          v60 = sub_21E792C28;
          v61 = &block_descriptor_46;
          v55 = _Block_copy(&aBlock);
        }

        v62 = sub_21E8DCE98;
        v63 = v29;
        aBlock = MEMORY[0x277D85DD0];
        v59 = 1107296256;
        v60 = sub_21E799760;
        v61 = &block_descriptor_39_1;
        v57 = _Block_copy(&aBlock);

        [v50 _animateUsingSpringWithDampingRatio_response_tracking_initialDampingRatio_initialResponse_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];

        _Block_release(v57);
        v36 = v55;
      }

      _Block_release(v36);
    }

    else
    {
      v37 = objc_opt_self();
      v62 = sub_21E8DCE84;
      v63 = v27;
      aBlock = MEMORY[0x277D85DD0];
      v59 = 1107296256;
      v60 = sub_21E792C28;
      v61 = &block_descriptor_15_0;
      v38 = _Block_copy(&aBlock);
      v39 = v6;

      sub_21E792C10(a3, a4);

      v40 = [v37 nc:v38 applyHighFrameRate:?];
      _Block_release(v38);
      if (v40)
      {
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        v62 = sub_21E792C6C;
        v63 = v41;
        aBlock = MEMORY[0x277D85DD0];
        v59 = 1107296256;
        v60 = sub_21E792C28;
        v61 = &block_descriptor_27_0;
        v40 = _Block_copy(&aBlock);
      }

      [v37 _performWithoutRetargetingAnimations_];
      _Block_release(v40);
      v6[v28] = 0;
      v42 = swift_allocObject();
      *(v42 + 16) = v39;
      v62 = sub_21E8DCEA4;
      v63 = v42;
      aBlock = MEMORY[0x277D85DD0];
      v59 = 1107296256;
      v60 = sub_21E792C28;
      v61 = &block_descriptor_21;
      v43 = _Block_copy(&aBlock);
      v44 = v39;

      [v37 _performWithoutRetargetingAnimations_];
      _Block_release(v43);
      if (a3)
      {
        a3(1, 0);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id NCNotificationModernListView.init(modelType:purpose:purposeWithSensitiveTextHashed:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_21E92A428();

  v8 = sub_21E92A428();

  v9 = [v5 initWithModelType:ObjCClassFromMetadata purpose:v7 purposeWithSensitiveTextHashed:v8];

  return v9;
}

{
  v6 = OBJC_IVAR___NCNotificationModernListView_animatableProperty;
  v7 = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  [v7 setVelocityUsableForVFD_];
  *&v5[v6] = v7;
  v5[OBJC_IVAR___NCNotificationModernListView_performingAnimation] = 0;
  *&v5[OBJC_IVAR___NCNotificationModernListView_exclusionManager] = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_21E92A428();

  v10 = sub_21E92A428();

  v14.receiver = v5;
  v14.super_class = NCNotificationModernListView;
  v11 = objc_msgSendSuper2(&v14, sel_initWithModelType_purpose_purposeWithSensitiveTextHashed_, ObjCClassFromMetadata, v9, v10);

  v12 = v11;
  [v12 setUseAnimatorForHeightChangeAnimation_];
  sub_21E8DC094();

  return v12;
}

void sub_21E8DC094()
{
  v1 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21E9468F0;
  v3 = *(v0 + OBJC_IVAR___NCNotificationModernListView_animatableProperty);
  *(v2 + 32) = v3;
  sub_21E796644(0, &qword_280D03DE8, 0x277D75120);
  v4 = v3;
  v5 = sub_21E92A518();

  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_21E8DCF30;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_21E792C28;
  v8[3] = &block_descriptor_70;
  v7 = _Block_copy(v8);

  [v1 _createTransformerWithInputAnimatableProperties_presentationValueChangedCallback_];
  _Block_release(v7);
}

id NCNotificationModernListView.init(modelType:purpose:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = sub_21E92A428();

  v6 = [v3 initWithModelType:ObjCClassFromMetadata purpose:v5];

  return v6;
}

{
  v4 = OBJC_IVAR___NCNotificationModernListView_animatableProperty;
  v5 = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  [v5 setVelocityUsableForVFD_];
  *&v3[v4] = v5;
  v3[OBJC_IVAR___NCNotificationModernListView_performingAnimation] = 0;
  *&v3[OBJC_IVAR___NCNotificationModernListView_exclusionManager] = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = sub_21E92A428();

  v10.receiver = v3;
  v10.super_class = NCNotificationModernListView;
  v8 = objc_msgSendSuper2(&v10, sel_initWithModelType_purpose_, ObjCClassFromMetadata, v7);

  return v8;
}

void NCNotificationModernListView.init(coder:)()
{
  v1 = OBJC_IVAR___NCNotificationModernListView_animatableProperty;
  v2 = [objc_allocWithZone(MEMORY[0x277D75D38]) init];
  [v2 setVelocityUsableForVFD_];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR___NCNotificationModernListView_performingAnimation) = 0;
  *(v0 + OBJC_IVAR___NCNotificationModernListView_exclusionManager) = 0;
  sub_21E92A988();
  __break(1u);
}

void sub_21E8DC88C(char a1, char a2, _BYTE *a3, void (*a4)(void, void))
{
  if (a1 & 1) != 0 || (a2)
  {
    a3[OBJC_IVAR___NCNotificationModernListView_performingAnimation] = 0;
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = a3;
    v12[4] = sub_21E8DCF68;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_21E792C28;
    v12[3] = &block_descriptor_66;
    v10 = _Block_copy(v12);
    v11 = a3;

    [v8 _performWithoutRetargetingAnimations_];
    _Block_release(v10);
  }

  if (a4)
  {
    (a4)(a1 & 1, a2 & 1, a3);
  }
}

Swift::Void __swiftcall NCNotificationModernListView.didSetNeedsUpdateOfApparentZPositionsOfListCells()()
{
  v0 = [objc_opt_self() mainRunLoop];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED74C0, &qword_21E948158);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_21E947B30;
  v2 = *MEMORY[0x277CBE640];
  v3 = *MEMORY[0x277CBE738];
  *(v1 + 32) = *MEMORY[0x277CBE640];
  *(v1 + 40) = v3;
  type metadata accessor for Mode(0);
  v4 = v2;
  v5 = v3;
  v6 = sub_21E92A518();

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = sub_21E8DCCC0;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_21E792C28;
  v9[3] = &block_descriptor_3;
  v8 = _Block_copy(v9);

  [v0 performInModes:v6 block:v8];
  _Block_release(v8);
}

void sub_21E8DCC38(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong apparentZDepth];
    [v2 latestRootScrollVelocity];
    [v2 updateApparentZPositionsOfListCellsGivenApparentZPositionForListView:v3 withRootScrollVelocity:1 andGlassVisibility:?];
  }
}

id sub_21E8DCD24()
{
  v1 = *(v0 + 16);
  [v1 contentOffset];
  [v1 setAnimatableContentOffset_];
  v2 = *&v1[OBJC_IVAR___NCNotificationModernListView_animatableProperty];

  return [v2 setVelocity_];
}

void sub_21E8DCD8C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (([Strong viewEffectivelyTracking] & 1) == 0)
    {
      [v2 contentOffset];
      [*&v2[OBJC_IVAR___NCNotificationModernListView_animatableProperty] presentationValue];
      UIPointRoundToViewScale();
      v4 = v3;
      v6 = v5;
      v9.receiver = v2;
      v9.super_class = NCNotificationModernListView;
      objc_msgSendSuper2(&v9, sel_setContentOffset_);
      v7 = *&v2[OBJC_IVAR___NCNotificationModernListView_exclusionManager];
      if (!v7)
      {
        __break(1u);
        return;
      }

      v8 = v7;
      sub_21E91AC34(v4, v6);

      v2 = v8;
    }
  }
}

id sub_21E8DCEC4()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  [*&v1[OBJC_IVAR___NCNotificationModernListView_animatableProperty] setVelocity_];

  return [v1 setAnimatableContentOffset_];
}

uint64_t sub_21E8DCF9C()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7598, &unk_21E9482A8);
  v0 = sub_21E92A478();
  v2 = v1;
  MEMORY[0x223D64660](60, 0xE100000000000000);
  MEMORY[0x223D64660](v0, v2);

  MEMORY[0x223D64660](8250, 0xE200000000000000);
  sub_21E92A918();
  MEMORY[0x223D64660](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_21E8DD07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 48) = a4;
  sub_21E92A598();
  *(v4 + 56) = sub_21E92A588();
  v6 = sub_21E92A578();

  return MEMORY[0x2822009F8](sub_21E8DD114, v6, v5);
}

uint64_t sub_21E8DD114()
{
  v1 = v0[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED75B0, &qword_21E948810);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_21E947520;
  v3 = sub_21E929AD8();
  v4 = MEMORY[0x277D74BD8];
  *(v2 + 32) = v3;
  *(v2 + 40) = v4;
  v0[5] = type metadata accessor for HighlightsOverlayView();
  v0[2] = v1;
  v5 = v1;
  v6 = MEMORY[0x223D648C0](v2, v0 + 2, sel_backlightChanged);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  *&v5[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_backlightTraitChangeRegistration] = v6;
  swift_unknownObjectRelease();
  v7 = v0[1];

  return v7();
}

void sub_21E8DD21C()
{
  v1 = v0;
  v2 = [v0 window];
  if (!v2)
  {
    if (qword_27CED6AD0 != -1)
    {
      swift_once();
    }

    v17 = sub_21E929A78();
    __swift_project_value_buffer(v17, qword_27CED9E90);
    v18 = v0;
    v6 = sub_21E929A58();
    v19 = sub_21E92A648();

    if (os_log_type_enabled(v6, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136446210;
      v22 = sub_21E8DCF9C();
      v24 = sub_21E79841C(v22, v23, &v30);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_21E77E000, v6, v19, "%{public}s: removed from window", v20, 0xCu);
      v25 = __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x223D65FB0](v21, -1, -1, v25);
      MEMORY[0x223D65FB0](v20, -1, -1);
    }

    goto LABEL_10;
  }

  v3 = v2;
  if (qword_27CED6AD0 != -1)
  {
    swift_once();
  }

  v4 = sub_21E929A78();
  __swift_project_value_buffer(v4, qword_27CED9E90);
  v5 = v1;
  v6 = v3;
  v7 = sub_21E929A58();
  v8 = sub_21E92A648();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136446466;
    v11 = sub_21E8DCF9C();
    v13 = sub_21E79841C(v11, v12, &v30);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    v14 = sub_21E8DCF9C();
    v16 = sub_21E79841C(v14, v15, &v30);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_21E77E000, v7, v8, "%{public}s: added to window %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v10, -1, -1);
    MEMORY[0x223D65FB0](v9, -1, -1);

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  sub_21E8DD90C();
  sub_21E8DDBD8();
  v26 = &v1[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_delegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v26 + 1);
    ObjectType = swift_getObjectType();
    v29 = [v1 window];
    (*(v27 + 8))(v1, v29, ObjectType, v27);
    swift_unknownObjectRelease();
  }
}

void sub_21E8DD5FC()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for HighlightsOverlayView();
  objc_msgSendSuper2(&v9, sel_layoutSubviews);
  v1 = [v0 subviews];
  sub_21E796644(0, &qword_280D03C48, 0x277D75D18);
  v2 = sub_21E92A528();

  v3 = sub_21E8E0C44(v2);

  [v0 bringSubviewToFront_];
  [v0 bringSubviewToFront_];
  v4 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectView];
  if (sub_21E8DD7AC(v4, v3))
  {
    [v0 bringSubviewToFront_];
  }

  v5 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_blurEffectView];
  if (sub_21E8DD7AC(v5, v3))
  {
    [v0 bringSubviewToFront_];
  }

  v6 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_edgeEffectView];
  if (sub_21E8DD7AC(v6, v3))
  {
    [v0 bringSubviewToFront_];
  }

  [v0 bringSubviewToFront_];
  v7 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_accessoryView];
  v8 = sub_21E8DD7AC(v7, v3);

  if (v8)
  {
    [v0 bringSubviewToFront_];
  }
}

uint64_t sub_21E8DD7AC(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_21E92A858();
  }

  else if (*(a2 + 16) && (sub_21E796644(0, &qword_280D03C48, 0x277D75D18), v5 = sub_21E92A778(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_21E92A788();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_21E8DD90C()
{
  v1 = v0;
  v2 = [v0 window];
  if (v2)
  {

    v3 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_blurEffectView];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21E9468F0;
    v5 = *&v1[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_materialRecipe];
    v6 = _NCNotificationListGroupName();
    if (v6)
    {
      v7 = v6;
      v8 = sub_21E92A458();
      v10 = v9;

      v11 = type metadata accessor for DropletMaterialEffect();
      v12 = objc_allocWithZone(v11);
      *&v12[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe] = v5;
      v13 = &v12[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase];
      *v13 = v8;
      v13[1] = v10;
      v23 = v12;
      v14 = &v23;
LABEL_6:
      v14->super_class = v11;
      *(v4 + 32) = [(objc_super *)v14 init];
      sub_21E796644(0, &unk_280D03E68, 0x277D75D58);
      v22 = sub_21E92A518();

      [v3 setContentEffects_];

      return;
    }

    __break(1u);
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_blurEffectView];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_21E9468F0;
    v15 = _NCNotificationListGroupName();
    if (v15)
    {
      v16 = v15;
      v17 = sub_21E92A458();
      v19 = v18;

      v11 = type metadata accessor for DropletMaterialEffect();
      v20 = objc_allocWithZone(v11);
      *&v20[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe] = 0;
      v21 = &v20[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase];
      *v21 = v17;
      v21[1] = v19;
      v24.receiver = v20;
      v14 = &v24;
      goto LABEL_6;
    }
  }

  __break(1u);
}

BOOL sub_21E8DDB9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void sub_21E8DDBD8()
{
  v1 = OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_hideViews;
  v2 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView);
  if (*(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_hideViews) == 1)
  {
    [v2 setHidden_];
    v3 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_blurEffectView);
    [v3 setHidden_];
    [*(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_edgeEffectView) setHidden_];
    [*(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectView) setHidden_];
  }

  else
  {
    [v2 setHidden_];
    v3 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_blurEffectView);
    [v3 setHidden_];
  }

  if (*(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_featureFlagEnabled) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectDisabledForAOD) & 1) != 0 || (*(v0 + v1))
    {
      v4 = v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lastSetLightsEffectState;
      v5 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lastSetLightsEffectState + 9) | *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lastSetLightsEffectState + 8) ^ 1;
      v6 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_edgeEffectView);
      [v6 setHidden_];
      if (v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
        v7 = swift_allocObject();
        *(v7 + 16) = xmmword_21E9468F0;
        v8 = _NCNotificationListGroupName();
        if (!v8)
        {
          __break(1u);
          goto LABEL_31;
        }

        v9 = v8;
        v10 = sub_21E92A458();
        v12 = v11;

        v13 = type metadata accessor for DropletMaterialEffect();
        v14 = objc_allocWithZone(v13);
        *&v14[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe] = 0;
        v15 = &v14[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase];
        *v15 = v10;
        v15[1] = v12;
        v61.receiver = v14;
        v61.super_class = v13;
        *(v7 + 32) = objc_msgSendSuper2(&v61, sel_init);
        sub_21E796644(0, &unk_280D03E68, 0x277D75D58);
        v16 = sub_21E92A518();

        [v6 setContentEffects_];
      }

      v17 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectView);
      [v17 setAlpha_];
      [v17 setHidden_];
      if ((v5 & 1) == 0)
      {
        v38 = 0.0;
        *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_performingWakeAnimation) = 0;
        v39 = 1;
        goto LABEL_27;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_21E9468F0;
      v19 = _NCNotificationListGroupName();
      if (v19)
      {
        v20 = v19;
        v21 = sub_21E92A458();
        v23 = v22;

        v24 = type metadata accessor for DropletMaterialEffect();
        v25 = objc_allocWithZone(v24);
        *&v25[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe] = 0;
        v26 = &v25[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase];
        *v26 = v21;
        v26[1] = v23;
        v62.receiver = v25;
        v62.super_class = v24;
        *(v18 + 32) = objc_msgSendSuper2(&v62, sel_init);
        sub_21E796644(0, &unk_280D03E68, 0x277D75D58);
        v27 = sub_21E92A518();

        [v17 setContentEffects_];

        *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_performingWakeAnimation) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_21E9468F0;
        v29 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_materialRecipe);
        v30 = _NCNotificationListGroupName();
        if (v30)
        {
          v31 = v30;
          v32 = sub_21E92A458();
          v34 = v33;

          v35 = objc_allocWithZone(v24);
          *&v35[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe] = v29;
          v36 = &v35[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase];
          *v36 = v32;
          v36[1] = v34;
          v63.receiver = v35;
          v63.super_class = v24;
          *(v28 + 32) = objc_msgSendSuper2(&v63, sel_init);
          v37 = sub_21E92A518();

          [v3 setContentEffects_];

          v38 = 0.0;
          v39 = 1;
LABEL_27:
          *v4 = v38;
          *(v4 + 8) = v39;
          *(v4 + 9) = 0;
          return;
        }

        goto LABEL_32;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v40 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lightEffectsIntensity);
    if (v40 >= 0.7)
    {
      v38 = 1.0;
    }

    else
    {
      v38 = v40 / 0.7 + 0.0;
    }

    if ((*(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_performingWakeAnimation) & 1) == 0)
    {
      v4 = v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lastSetLightsEffectState;
      LODWORD(v41) = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lastSetLightsEffectState + 9) | *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_lastSetLightsEffectState + 8);
      v42 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_edgeEffectView);
      [v42 setHidden_];
      if (v41)
      {
        LODWORD(v60) = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_21E9468F0;
        v43 = _NCNotificationListGroupName();
        if (!v43)
        {
LABEL_33:
          __break(1u);
          return;
        }

        v44 = v43;
        v45 = sub_21E92A458();
        v47 = v46;

        v48 = type metadata accessor for DropletMaterialEffect();
        v49 = objc_allocWithZone(v48);
        *&v49[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe] = 0;
        v50 = &v49[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase];
        *v50 = v45;
        v50[1] = v47;
        v64.receiver = v49;
        v64.super_class = v48;
        *(v41 + 32) = objc_msgSendSuper2(&v64, sel_init);
        sub_21E796644(0, &unk_280D03E68, 0x277D75D58);
        v51 = sub_21E92A518();

        [v42 setContentEffects_];

        LOBYTE(v41) = v60;
      }

      v52 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectView);
      [v52 setAlpha_];
      [v52 setHidden_];
      if (v41)
      {
        if (sub_21E8E0A60(*&v38, 0) >> 62)
        {
          sub_21E796644(0, &unk_280D03E68, 0x277D75D58);
          sub_21E92A998();
        }

        else
        {

          sub_21E92AA68();
          sub_21E796644(0, &unk_280D03E68, 0x277D75D58);
        }

        sub_21E796644(0, &unk_280D03E68, 0x277D75D58);
        v53 = sub_21E92A518();

        [v52 setContentEffects_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_21E9468F0;
        v55 = *(v0 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_materialRecipe);
        v56 = type metadata accessor for DropletMaterialEffect();
        v57 = objc_allocWithZone(v56);
        *&v57[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_recipe] = v55;
        v58 = &v57[OBJC_IVAR____TtC22UserNotificationsUIKit21DropletMaterialEffect_groupNameBase];
        *v58 = 0xD00000000000001DLL;
        *(v58 + 1) = 0x800000021E957F50;
        v65.receiver = v57;
        v65.super_class = v56;
        *(v54 + 32) = objc_msgSendSuper2(&v65, sel_init);
        v59 = sub_21E92A518();

        [v3 setContentEffects_];
      }

      v39 = 0;
      goto LABEL_27;
    }
  }
}

uint64_t sub_21E8DE3C8(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      [v3 invalidate];
    }

    v4 = *(v2 + 24);
    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E92A828())
    {
      v6 = 0;
      while ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D64A50](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_14;
        }

LABEL_10:
        [v7 _invalidate];
        swift_unknownObjectRelease();
        ++v6;
        if (v8 == i)
        {
          goto LABEL_17;
        }
      }

      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      v7 = *(v4 + 8 * v6 + 32);
      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_10;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
    *(v2 + 32) = 1;
  }

  swift_unknownObjectRelease();

  return v2;
}

uint64_t sub_21E8DE4E8(uint64_t a1, uint64_t a2)
{
  sub_21E8DE3C8(a1, a2);

  return swift_deallocClassInstance();
}

void sub_21E8DE51C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView);
  v4 = sub_21E92A428();
  v19 = [v3 acquireGeometricChangeAssertionForReason_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED6D90, &unk_21E946F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E948160;
  v6 = *(v2 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_contentEffectView);
  *(inited + 32) = v6;
  v7 = *(v2 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_edgeEffectView);
  *(inited + 40) = v7;
  v8 = *(v2 + OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_blurEffectView);
  *(inited + 48) = v8;
  v20 = MEMORY[0x277D84F90];
  v21 = MEMORY[0x277D84F90];
  v9 = v6;
  v10 = v7;
  v11 = v8;
  v12 = 0;
  while (1)
  {
    if (v12 == 3)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      type metadata accessor for HighlightsOverlayView.GeometryChangeAssertion();
      v18 = swift_allocObject();
      *(v18 + 32) = 0;
      *(v18 + 16) = v19;
      *(v18 + 24) = v20;
      return;
    }

    if ((inited & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x223D64A50](v12, inited);
    }

    else
    {
      if (v12 >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v13 = *(inited + 8 * v12 + 32);
    }

    v14 = v13;
    v15 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v16 = sub_21E92A428();
    v17 = [v14 _obtainDynamicContentAssertionForReasonIfPossible_];

    ++v12;
    if (v17)
    {
      MEMORY[0x223D646A0]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21E92A548();
      }

      sub_21E92A568();
      v20 = v21;
      v12 = v15;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_21E8DE74C(void *a1, void *a2)
{
  v3 = v2;
  v6 = [v2 window];
  if (v6 && (v6, v7 = *&v2[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_portalContainer], (v8 = [*&v3[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_portalContainer] window]) != 0) && (v8, v9 = *&v3[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_backgroundContainer], (v10 = objc_msgSend(v9, sel_window)) != 0) && (v10, (v11 = objc_msgSend(*&v3[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView], sel_window)) != 0))
  {

    [v7 addSubview_];
    [v9 addSubview_];
    return 1;
  }

  else
  {
    v54 = 7104878;
    v13 = [v3 window];
    if (v13)
    {
      v14 = v13;
      v53 = sub_21E8DCF9C();
      v16 = v15;
    }

    else
    {
      v16 = 0xE300000000000000;
      v53 = 7104878;
    }

    v17 = [*&v3[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_portalContainer] window];
    if (v17)
    {
      v18 = v17;
      v52 = sub_21E8DCF9C();
      v20 = v19;
    }

    else
    {
      v20 = 0xE300000000000000;
      v52 = 7104878;
    }

    v21 = [*&v3[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_backgroundContainer] window];
    if (v21)
    {
      v22 = v21;
      v51 = sub_21E8DCF9C();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v51 = 7104878;
    }

    v25 = [*&v3[OBJC_IVAR____TtC22UserNotificationsUIKit21HighlightsOverlayView_dropletContextView] window];
    if (v25)
    {
      v26 = v25;
      v54 = sub_21E8DCF9C();
      v28 = v27;
    }

    else
    {
      v28 = 0xE300000000000000;
    }

    if (qword_27CED6AD0 != -1)
    {
      swift_once();
    }

    v29 = sub_21E929A78();
    __swift_project_value_buffer(v29, qword_27CED9E90);
    v30 = v3;
    v31 = a1;
    v32 = a2;

    v33 = sub_21E929A58();
    v34 = sub_21E92A638();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v55 = v50;
      *v35 = 136447746;
      v49 = v34;
      v36 = sub_21E8DCF9C();
      v38 = sub_21E79841C(v36, v37, &v55);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2082;
      v39 = sub_21E8DCF9C();
      v41 = sub_21E79841C(v39, v40, &v55);

      *(v35 + 14) = v41;
      *(v35 + 22) = 2082;
      v42 = sub_21E8DCF9C();
      v44 = sub_21E79841C(v42, v43, &v55);

      *(v35 + 24) = v44;
      *(v35 + 32) = 2082;
      v45 = sub_21E79841C(v53, v16, &v55);

      *(v35 + 34) = v45;
      *(v35 + 42) = 2082;
      v46 = sub_21E79841C(v52, v20, &v55);

      *(v35 + 44) = v46;
      *(v35 + 52) = 2082;
      v47 = sub_21E79841C(v51, v24, &v55);

      *(v35 + 54) = v47;
      *(v35 + 62) = 2082;
      v48 = sub_21E79841C(v54, v28, &v55);

      *(v35 + 64) = v48;
      _os_log_impl(&dword_21E77E000, v33, v49, "%{public}s: add(portal:,background:) couldn't add portal %{public}s or background %{public}s; window is %{public}s; portalContainer.window is %{public}s; backgroundContainer.window is %{public}s; dropletContextView.window is %{public}s", v35, 0x48u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v50, -1, -1);
      MEMORY[0x223D65FB0](v35, -1, -1);
    }

    else
    {
    }

    return 0;
  }
}

id sub_21E8DEC3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightsOverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E8DEED8(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_21E92A838();

    if (v17)
    {

      sub_21E796644(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_21E92A828();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_21E8DF14C(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_21E8DF34C(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_21E8DF56C(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_21E796644(0, a3, a4);
    v19 = sub_21E92A778();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_21E92A788();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_21E8DF5F0(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_21E8DF14C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_21E92A888();
    v23 = v10;
    sub_21E92A818();
    if (sub_21E92A848())
    {
      sub_21E796644(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_21E8DF34C(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_21E92A778();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_21E92A848());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

void sub_21E8DF34C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_21E92A878();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_21E92A778();
      v21 = -1 << *(v7 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

unint64_t sub_21E8DF56C(uint64_t a1, uint64_t a2)
{
  sub_21E92A778();
  result = sub_21E92A808();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_21E8DF5F0(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_21E8DF34C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_21E8DF780(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_21E8DF8C0(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_21E92A778();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_21E796644(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_21E92A788();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_21E92AA88();
  __break(1u);
}

void sub_21E8DF780(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_21E92A868();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_21E8DF8C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_21E92A878();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_21E92A778();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v27;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }
}