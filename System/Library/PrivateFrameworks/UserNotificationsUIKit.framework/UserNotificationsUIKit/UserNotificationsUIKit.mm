__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void __swiftcall NCInternalToolsOverlayView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v7 = [v3 overlayButton];
  if (v7)
  {
    v8 = v7;
    [v7 convertPoint:v3 fromCoordinateSpace:{x, y}];
    v9 = [v8 hitTest:isa withEvent:?];
    if ((*(v8 + OBJC_IVAR____TtC22UserNotificationsUIKitP33_31F77A0F2E2B97FF4D299720B6240BE113OptionsButton_isPresentingMenu) & 1) == 0 && !v9)
    {
      sub_21E8B2FCC();
    }

LABEL_9:

    return;
  }

  v10 = *&v3[OBJC_IVAR___NCInternalToolsOverlayView_hosted];
  if (v10)
  {
    v11 = [v10 view];
    if (v11)
    {
      v8 = v11;
      [v11 convertPoint:v3 fromCoordinateSpace:{x, y}];
      v13 = v12;
      v15 = v14;
      v18.origin.x = sub_21E90E508();
      v17.x = v13;
      v17.y = v15;
      if (CGRectContainsPoint(v18, v17))
      {
        v16 = [v8 hitTest:isa withEvent:{v13, v15}];
      }

      goto LABEL_9;
    }
  }
}

__CFString *NCStringForAppearState(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"[Invalid]";
  }

  else
  {
    return off_278371E48[a1];
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_21E7828CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E782A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NCNotificationRootModernList.deviceAuthenticated.setter(char a1)
{
  v2 = v1;
  v4 = &v1[OBJC_IVAR___NCNotificationRootModernList_layout];
  v5 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout];
  v6 = *(v4 + 1);
  v7 = *(v4 + 2);

  v8.n128_u64[0] = v6;
  v9.n128_u64[0] = v7;
  v11 = sub_21E783334(v8, v9, "/Library/Caches/com.apple.xbs/Sources/UserNotificationsUIKit/UserNotificationsUIKit/NotificationRootModernList.swift", 116, 2, 1075, v5, v10);

  v12 = &selRef_appendString_withName_;
  v13 = [v2 deviceAuthenticated];
  v38.receiver = v2;
  v38.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v38, sel_setDeviceAuthenticated_, a1 & 1);
  if (qword_280D041F8 != -1)
  {
    swift_once();
  }

  v14 = qword_280D05F70;
  if (qword_280D05F70)
  {
    if (*(qword_280D05F70 + 48) == (a1 & 1))
    {
      *(qword_280D05F70 + 48) = a1 & 1;

      sub_21E787B34();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v36[1] = v36;
      MEMORY[0x28223BE20](KeyPath);
      v37 = v14;
      sub_21E786CC4(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator, &unk_21E94A1EC);

      v12 = 0x1FAF67000;
      sub_21E929798();
    }
  }

  if (v13 != (a1 & 1))
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v16 = sub_21E929A78();
    __swift_project_value_buffer(v16, qword_280D05F58);
    v17 = v2;
    v18 = sub_21E929A58();
    v19 = sub_21E92A648();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = v12;
      v22 = v20;
      *v20 = 67240448;
      v20[1] = [v17 (v21 + 376)];
      *(v22 + 4) = 1026;
      *(v22 + 10) = sub_21E787D70() & 1;

      _os_log_impl(&dword_21E77E000, v18, v19, "Did change authentication status: %{BOOL,public}d, isUserEngagingView %{BOOL,public}d", v22, 0xEu);
      MEMORY[0x223D65FB0](v22, -1, -1);
    }

    else
    {

      v18 = v17;
    }
  }

  if ((a1 & 1) == 0 || !sub_21E788490() || v11 == 5)
  {
    return;
  }

  sub_21E784AD0(0);
  v23 = *v4;
  v24 = *(*v4 + 16);
  v25 = MEMORY[0x277D84F90];
  if (v24)
  {
    v37 = MEMORY[0x277D84F90];

    sub_21E8D52D8(0, v24, 0);
    v25 = v37;
    v26 = *(v37 + 16);
    v27 = 32;
    do
    {
      v28 = *(v23 + v27);
      v37 = v25;
      v29 = *(v25 + 24);
      if (v26 >= v29 >> 1)
      {
        sub_21E8D52D8((v29 > 1), v26 + 1, 1);
        v25 = v37;
      }

      *(v25 + 16) = v26 + 1;
      *(v25 + v26 + 32) = v28;
      v27 += 24;
      ++v26;
      --v24;
    }

    while (v24);
  }

  v30 = 0;
  v31 = *(v25 + 16);
  while (v31 != v30)
  {
    v32 = v25 + v30++;
    if (*(v32 + 32) == v11)
    {
LABEL_38:

      goto LABEL_39;
    }
  }

  while (1)
  {
    if (v11 > 2u)
    {
      if (v11 == 3)
      {
        v11 = 2;
      }

      else
      {
        v11 = 3;
      }

      goto LABEL_35;
    }

    if (v11 == 1)
    {
      v11 = 0;
      goto LABEL_35;
    }

    if (v11 != 2)
    {
      break;
    }

    v11 = 1;
LABEL_35:
    v33 = *(v25 + 16);
    v34 = (v25 + 32);
    while (v33)
    {
      v35 = *v34++;
      --v33;
      if (v35 == v11)
      {
        goto LABEL_38;
      }
    }
  }

  if (v31)
  {
    v11 = *(v25 + 32);
    goto LABEL_38;
  }

  v11 = 4;
LABEL_39:
  sub_21E798E1C(v11);
}

uint64_t sub_21E783334(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8)
{
  a8.n128_u64[0] = a2.n128_u64[0];
  sub_21E783428(a7, &v14, a1.n128_f64[0], a8);
  v9 = v14;
  v10 = v21 >> 6;
  if (!v10)
  {
    return v9;
  }

  if (v10 == 1)
  {
    if (v20 > 0.5)
    {
      return v17;
    }

    return v9;
  }

  v12 = v18 | v19 | *&v20;
  if (v16 | v15 | v14 | v17 | v12 || v21 != 128)
  {
    if (v21 != 128 || v14 != 1 || v16 | v15 | v17 | v12)
    {
      v13 = *(a7 + 16);
      if (v13)
      {
        return *(a7 + 24 * v13 + 8);
      }
    }
  }

  else if (*(a7 + 16))
  {
    return *(a7 + 32);
  }

  return 5;
}

void sub_21E783428(uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, __n128 a8@<Q2>)
{
  v8 = *(a5 + 16);
  v9 = 0uLL;
  v10 = 0.0;
  if (v8)
  {
    if (*(a5 + 40) <= a7)
    {
      v13 = (a5 + 72);
      v14 = 1;
      while (1)
      {
        v16 = *(v13 - 2);
        if (*&v16 <= a7)
        {
          if (*(&v16 + 1) >= a7)
          {
            v8 = 0;
            v12 = 0;
            v11 = *(v13 - 5) & 7;
            v9 = v16;
            goto LABEL_24;
          }

          if (v14 < v8)
          {
            v15 = *(v13 - 1);
            if (v15 > a7)
            {
              v22 = *(v13 - 1);
              v23 = *(v13 - 2);
              v17 = a6;
              v18 = *(v13 - 40);
              v19 = *(v13 - 16);
              v21 = *v13;
              v10 = (a7 - a8.n128_f64[0] - *(&v16 + 1)) / (v15 - *(&v16 + 1));
              if (BSFloatLessThanOrEqualToFloat())
              {
                v8 = 0;
                v12 = 0;
                v11 = v18 & 7;
                v9 = v23;
              }

              else if (BSFloatGreaterThanOrEqualToFloat())
              {
                v8 = 0;
                v12 = 0;
                *&v9 = v22;
                *(&v9 + 1) = v21;
                v11 = v19 & 7;
              }

              else
              {
                a8.n128_u64[0] = v22;
                a8.n128_u64[1] = v21;
                v11 = v18 & 7;
                v8 = v19 & 7;
                if (v10 <= 0.95)
                {
                  v12 = 64;
                }

                else
                {
                  v12 = 65;
                }

                v9 = v23;
              }

              a6 = v17;
              goto LABEL_24;
            }
          }

          else if (v14 == v8 && *(&v16 + 1) < a7)
          {
            v8 = 0;
            v12 = 0x80;
            v11 = 2;
            a8 = 0uLL;
            goto LABEL_24;
          }
        }

        ++v14;
        v13 += 3;
        if (v14 - v8 == 1)
        {
          sub_21E92A8A8();
          MEMORY[0x223D64660](0xD00000000000004FLL, 0x800000021E956FE0);
          v20 = sub_21E92A5E8();
          MEMORY[0x223D64660](v20);

          sub_21E92A988();
          __break(1u);
          return;
        }
      }
    }

    v11 = 0;
    v8 = 0;
    v12 = 0x80;
    a8 = 0uLL;
  }

  else
  {
    v12 = 0x80;
    v11 = 1;
    a8 = 0uLL;
  }

LABEL_24:
  *a6 = v11;
  *(a6 + 8) = v9;
  *(a6 + 24) = v8;
  *(a6 + 32) = a8;
  *(a6 + 48) = v10;
  *(a6 + 56) = v12;
}

void sub_21E784A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E784AD0(int a1)
{
  v7 = OBJC_IVAR___NCNotificationRootModernList_contentChangeCount;
  v8 = *&v1[OBJC_IVAR___NCNotificationRootModernList_contentChangeCount];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v4 = v1;
    v2 = a1;
    *&v1[OBJC_IVAR___NCNotificationRootModernList_contentChangeCount] = v10;
    sub_21E9183DC();
    v5 = v11;
    v3 = v12;
    v13 = v1[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter];
    v1[OBJC_IVAR___NCNotificationRootModernList_supportsScaleDownToFooter] = (v12 & 1) == 0;
    if (v13 == (v12 & 1))
    {
      sub_21E8C16E8();
    }

    v14 = *(v5 + 16);
    if (v14)
    {
      v15 = v5 + 24 * v14;
      v16 = &v1[OBJC_IVAR___NCNotificationRootModernList_currentListMinY];
      *v16 = *(v15 + 16);
      v16[8] = 0;
      v17 = &v1[OBJC_IVAR___NCNotificationRootModernList_contentHeight];
      *v17 = *(v15 + 24);
      v17[8] = 0;
    }

    else
    {
      v18 = &v1[OBJC_IVAR___NCNotificationRootModernList_currentListMinY];
      *v18 = 0;
      v18[8] = 0;
      v19 = &v1[OBJC_IVAR___NCNotificationRootModernList_contentHeight];
      *v19 = 0;
      v19[8] = 0;
      v1[OBJC_IVAR___NCNotificationRootModernList_currentPageType] = 5;
      *v19 = 0;
      v19[8] = 1;
    }

    v20 = OBJC_IVAR___NCNotificationRootModernList_previousPages;
    if (sub_21E787444(v5, *&v4[OBJC_IVAR___NCNotificationRootModernList_previousPages]))
    {

      v21 = *&v4[v7];
      v9 = __OFSUB__(v21, 1);
      v22 = v21 - 1;
      if (!v9)
      {
        goto LABEL_52;
      }

      __break(1u);
    }

    *&v4[v20] = v5;

    v6 = &v4[OBJC_IVAR___NCNotificationRootModernList_layout];
    *&v4[OBJC_IVAR___NCNotificationRootModernList_layout] = v5;

    if (qword_280D041F8 == -1)
    {
      goto LABEL_12;
    }
  }

  swift_once();
LABEL_12:
  v279 = v3;
  LODWORD(v276) = v2;
  if (qword_280D05F70)
  {
    v23 = *(v6 + 80);
    v301[4] = *(v6 + 64);
    v301[5] = v23;
    v302 = *(v6 + 96);
    v24 = *(v6 + 16);
    v301[0] = *v6;
    v301[1] = v24;
    v25 = *(v6 + 48);
    v301[2] = *(v6 + 32);
    v301[3] = v25;

    sub_21E78A844(v301, &v287);
    sub_21E7935C0(v301);
    sub_21E78AACC(v301);
  }

  v26 = *(v5 + 16);
  v27 = MEMORY[0x277D84F90];
  v277 = v4;
  v278 = v7;
  v281 = v5;
  v282 = v6;
  if (v26)
  {
    *&v292 = MEMORY[0x277D84F90];
    sub_21E8D52F8(0, v26, 0);
    v27 = v292;
    v28 = (v5 + 48);
    v29 = MEMORY[0x277D85048];
    do
    {
      v30 = *(v28 - 16);
      v32 = *(v28 - 1);
      v31 = *v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670, &qword_21E9477E0);
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_21E947520;
      *(v33 + 56) = v29;
      v34 = sub_21E79668C();
      *(v33 + 64) = v34;
      *(v33 + 32) = v32;
      *&v287 = sub_21E92A468();
      *(&v287 + 1) = v35;
      if (v32 != v31)
      {
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_21E947520;
        *(v36 + 56) = v29;
        *(v36 + 64) = v34;
        *(v36 + 32) = v31;
        v37 = sub_21E92A468();
        MEMORY[0x223D64660](v37);
      }

      *&v297 = 0;
      *(&v297 + 1) = 0xE000000000000000;
      MEMORY[0x223D64660](qword_21E948050[v30], 0xE100000000000000);

      MEMORY[0x223D64660](v287, *(&v287 + 1));

      v38 = v297;
      *&v292 = v27;
      v40 = *(v27 + 16);
      v39 = *(v27 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_21E8D52F8((v39 > 1), v40 + 1, 1);
        v27 = v292;
      }

      *(v27 + 16) = v40 + 1;
      *(v27 + 16 * v40 + 32) = v38;
      v28 += 3;
      --v26;
    }

    while (v26);
    v4 = v277;
    v7 = v278;
    v6 = v282;
  }

  *&v287 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED7468, &qword_21E947D90);
  sub_21E8D919C(&qword_280D03ED0, &unk_27CED7468, &qword_21E947D90, MEMORY[0x277D83958]);
  v41 = sub_21E92A408();
  v43 = v42;

  sub_21E7950DC(v41, v43, 0x7365676150uLL, 0xE500000000000000);

  v44 = 89;
  if ((v279 & 0x100) == 0)
  {
    v44 = 78;
  }

  v45 = MEMORY[0x277D837D0];
  *(&v288 + 1) = MEMORY[0x277D837D0];
  *&v289 = &off_282FE6A08;
  *&v287 = v44;
  *(&v287 + 1) = 0xE100000000000000;
  v46 = __swift_project_boxed_opaque_existential_1(&v287, MEMORY[0x277D837D0]);
  sub_21E90F574(v46, 0xD000000000000013, 0x800000021E957860, v45, &off_282FE6A08);
  __swift_destroy_boxed_opaque_existential_1Tm(&v287);
  v47 = OBJC_IVAR___NCNotificationRootModernList_exclusionManager;
  v48 = *&v4[OBJC_IVAR___NCNotificationRootModernList_exclusionManager];
  sub_21E8CEB2C(v5);
  v49 = &OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones;
  *&v48[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones] = v50;

  sub_21E91B9F4();

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v51 = sub_21E929A78();
  v52 = __swift_project_value_buffer(v51, qword_280D05F58);
  v53 = v4;
  v280 = v52;
  v54 = sub_21E929A58();
  v55 = sub_21E92A648();

  if (os_log_type_enabled(v54, v55))
  {
    v274 = v55;
    log = v54;
    v56 = swift_slowAlloc();
    v273 = swift_slowAlloc();
    *&v292 = v273;
    *v56 = 136447234;

    v58 = MEMORY[0x223D646D0](v57, &type metadata for NotificationModernListPaginator.Page);
    v60 = v59;

    v61 = sub_21E79841C(v58, v60, &v292);

    *(v56 + 4) = v61;
    *(v56 + 12) = 2082;
    v62 = *&v53[OBJC_IVAR___NCNotificationRootModernList__scrollState + 48];
    v64 = *&v53[OBJC_IVAR___NCNotificationRootModernList__scrollState];
    v63 = *&v53[OBJC_IVAR___NCNotificationRootModernList__scrollState + 16];
    v289 = *&v53[OBJC_IVAR___NCNotificationRootModernList__scrollState + 32];
    v290 = v62;
    v287 = v64;
    v288 = v63;
    sub_21E799278(&v287, &v297);
    v65 = sub_21E7992D4();
    v67 = v66;
    sub_21E799568(&v287);
    v68 = sub_21E79841C(v65, v67, &v292);

    *(v56 + 14) = v68;
    *(v56 + 22) = 2082;
    v49 = *(*&v4[v47] + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_exclusionZones);
    v69 = v49[2];
    v47 = MEMORY[0x277D84F90];
    if (v69)
    {
      v291[0] = MEMORY[0x277D84F90];

      sub_21E8D52F8(0, v69, 0);
      v47 = v291[0];
      v70 = (v49 + 7);
      do
      {
        v71 = *(v70 - 3);
        v72 = *(v70 - 2);
        v73 = *(v70 - 1);
        v74 = *v70;
        v303.origin.x = v71;
        v303.origin.y = v72;
        v303.size.width = v73;
        v303.size.height = *v70;
        CGRectGetMinY(v303);
        *&v297 = sub_21E92A5E8();
        *(&v297 + 1) = v75;
        MEMORY[0x223D64660](540945696, 0xE400000000000000);
        v304.origin.x = v71;
        v304.origin.y = v72;
        v304.size.width = v73;
        v304.size.height = v74;
        CGRectGetMaxY(v304);
        v76 = sub_21E92A5E8();
        MEMORY[0x223D64660](v76);

        v77 = v297;
        v291[0] = v47;
        v79 = *(v47 + 16);
        v78 = *(v47 + 24);
        if (v79 >= v78 >> 1)
        {
          sub_21E8D52F8((v78 > 1), v79 + 1, 1);
          v47 = v291[0];
        }

        *(v47 + 16) = v79 + 1;
        *(v47 + 16 * v79 + 32) = v77;
        v70 += 5;
        --v69;
      }

      while (v69);

      v4 = v277;
      v7 = v278;
    }

    v80 = MEMORY[0x223D646D0](v47, MEMORY[0x277D837D0]);
    v82 = v81;

    v83 = sub_21E79841C(v80, v82, &v292);

    *(v56 + 24) = v83;
    *(v56 + 32) = 2082;
    v84 = v53[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
    if (v84 > 2)
    {
      v6 = v282;
      v85 = v273;
      if (v84 == 3)
      {
        v86 = 0xE100000000000000;
        v87 = 80;
      }

      else if (v84 == 4)
      {
        v86 = 0xE100000000000000;
        v87 = 76;
      }

      else
      {
        v86 = 0xE500000000000000;
        v87 = 0x3E6C696E3CLL;
      }
    }

    else
    {
      v6 = v282;
      v85 = v273;
      v86 = 0xE100000000000000;
      if (v53[OBJC_IVAR___NCNotificationRootModernList_currentPageType])
      {
        if (v84 == 1)
        {
          v87 = 83;
        }

        else
        {
          v87 = 69;
        }
      }

      else
      {
        v87 = 67;
      }
    }

    v88 = sub_21E79841C(v87, v86, &v292);

    *(v56 + 34) = v88;
    *(v56 + 42) = 2082;
    v89 = *v6;
    v90 = *(v6 + 8);
    v91 = *(v6 + 16);

    v92.n128_u64[0] = v91;
    sub_21E783428(v89, v291, v90, v92);

    v93 = sub_21E7953E4();
    v55 = sub_21E79841C(v93, v94, &v292);

    *(v56 + 44) = v55;
    _os_log_impl(&dword_21E77E000, log, v274, "Content changed. Recalculated pages: %{public}s, scrollState: %{public}s, exclusionZones: %{public}s, currentPageType: %{public}s, currentPosition: %{public}s", v56, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v85, -1, -1);
    MEMORY[0x223D65FB0](v56, -1, -1);

    v5 = v281;
  }

  else
  {
  }

  if (*&v4[v7] > 1 || (v276 & 1) != 0 || (v286.receiver = v53, v286.super_class = NCNotificationRootModernList, v47 = &selRef_revealHintingAnimationTension, v95 = objc_msgSendSuper2(&v286, sel_rootListView), v55 = [v95 isTracking], v95, (v55 & 1) != 0) || (v285.receiver = v53, v285.super_class = NCNotificationRootModernList, v96 = objc_msgSendSuper2(&v285, sel_rootListView), v55 = objc_msgSend(v96, sel_isDragging), v96, (v55 & 1) != 0))
  {

LABEL_51:
    v97 = *&v4[v7];
    v9 = __OFSUB__(v97, 1);
    v22 = v97 - 1;
    if (!v9)
    {
      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_174;
  }

  v49 = &v53[OBJC_IVAR___NCNotificationRootModernList__scrollState];
  v6 = *&v53[OBJC_IVAR___NCNotificationRootModernList__scrollState + 32];
  if ((v6 & 0x8000000000000000) == 0)
  {
    if ((v6 & 0x80) != 0)
    {
LABEL_64:
      v47 = v49[1];
      v276 = v49;
      v116 = sub_21E786808(0);
      if (!v116)
      {
LABEL_190:
        __break(1u);
        goto LABEL_191;
      }

      v117 = v116;
      LOBYTE(v49) = v47;

      v118 = [v117 count];

      if (v47 < 3u)
      {
        v5 = v47;
        v119 = *v282;
        v120 = *(*v282 + 16);
        v121 = MEMORY[0x277D84F90];
        if (v120)
        {
          v272 = v53;
          *&v297 = MEMORY[0x277D84F90];

          sub_21E8D52D8(0, v120, 0);
          v121 = v297;
          v122 = *(v297 + 16);
          v123 = 32;
          do
          {
            v124 = *(v119 + v123);
            *&v297 = v121;
            v125 = *(v121 + 24);
            if (v122 >= v125 >> 1)
            {
              sub_21E8D52D8((v125 > 1), v122 + 1, 1);
              v121 = v297;
            }

            *(v121 + 16) = v122 + 1;
            *(v121 + v122 + 32) = v124;
            v123 += 24;
            ++v122;
            --v120;
          }

          while (v120);

          v4 = v277;
          v7 = v278;
          v53 = v272;
        }

        v141 = 0;
        v22 = *(v121 + 16);
        LOBYTE(v47) = v5;
        do
        {
          if (v22 == v141)
          {
            while (1)
            {
              if (v49 > 2u)
              {
                if (v49 == 3)
                {
                  LODWORD(v49) = 2;
                }

                else
                {
                  LODWORD(v49) = 3;
                }
              }

              else if (v49 == 1)
              {
                LODWORD(v49) = 0;
              }

              else
              {
                if (v49 != 2)
                {
                  goto LABEL_182;
                }

                LODWORD(v49) = 1;
              }

              v143 = *(v121 + 16);
              v144 = (v121 + 32);
              while (v143)
              {
                v145 = *v144++;
                --v143;
                if (v145 == v49)
                {
                  goto LABEL_102;
                }
              }
            }
          }

          v142 = v121 + v141++;
        }

        while (*(v142 + 32) != v49);
LABEL_102:

LABEL_103:
        v146 = (*v282 + 32);
        v147 = *(*v282 + 16) + 1;
        while (--v147)
        {
          v128 = v146 + 24;
          v129 = *v146 == v49;
          v146 += 24;
          if (v129)
          {
            goto LABEL_107;
          }
        }

LABEL_113:
        v164 = v53;
        v165 = v7;
        v166 = v164;
        v167 = sub_21E929A58();
        v168 = sub_21E92A628();

        if (os_log_type_enabled(v167, v168))
        {
          v169 = v47;
          v170 = swift_slowAlloc();
          v171 = swift_slowAlloc();
          v284[0] = v171;
          *v170 = 136446466;
          *(v170 + 4) = sub_21E79841C(qword_21E948050[v169], 0xE100000000000000, v284);
          *(v170 + 12) = 2082;
          v172 = *(v276 + 3);
          v174 = *v276;
          v173 = *(v276 + 1);
          v299 = *(v276 + 2);
          v300 = v172;
          v297 = v174;
          v298 = v173;
          sub_21E799278(&v297, &v292);
          v175 = sub_21E7992D4();
          v177 = v176;
          sub_21E799568(&v297);
          v178 = sub_21E79841C(v175, v177, v284);

          *(v170 + 14) = v178;
          _os_log_impl(&dword_21E77E000, v167, v168, "Skip retargeting with content chagned, new page not found with type %{public}s, scrollState: %{public}s", v170, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223D65FB0](v171, -1, -1);
          MEMORY[0x223D65FB0](v170, -1, -1);
        }

        v179 = *&v4[v165];
        v9 = __OFSUB__(v179, 1);
        v22 = v179 - 1;
        if (!v9)
        {
          v7 = v165;
          goto LABEL_52;
        }

        __break(1u);
        goto LABEL_190;
      }

      if (v118 > 0)
      {
        v126 = (*v282 + 32);
        v127 = *(*v282 + 16) + 1;
        while (--v127)
        {
          v128 = v126 + 24;
          v129 = *v126 == v47;
          v126 += 24;
          if (v129)
          {
LABEL_107:
            v149 = *(v128 - 2);
            v148 = *(v128 - 1);
            v150 = BSFloatApproximatelyEqualToFloat();
            v47 = v53;
            v151 = sub_21E929A58();
            v152 = sub_21E92A648();

            v153 = os_log_type_enabled(v151, v152);
            if (!v150)
            {
              if (v153)
              {
                v53 = swift_slowAlloc();
                v184 = swift_slowAlloc();
                v284[0] = v184;
                *v53 = 136446466;
                *&v297 = 0x2065676150;
                *(&v297 + 1) = 0xE500000000000000;
                v185 = sub_21E8C11B8(v49, v149, v148);
                MEMORY[0x223D64660](v185);

                MEMORY[0x223D64660](2108704, 0xE300000000000000);
                if (v6)
                {
                  v186 = 1501061485;
                }

                else
                {
                  v186 = 1500408173;
                }

                MEMORY[0x223D64660](v186, 0xE400000000000000);

                v187 = sub_21E79841C(v297, *(&v297 + 1), v284);

                *(v53 + 4) = v187;
                *(v53 + 6) = 2082;
                v188 = *v276;
                v189 = *(v276 + 1);
                v190 = *(v276 + 3);
                v299 = *(v276 + 2);
                v300 = v190;
                v297 = v188;
                v298 = v189;
                sub_21E799278(&v297, &v292);
                v191 = sub_21E7992D4();
                v193 = v192;
                sub_21E799568(&v297);
                v194 = sub_21E79841C(v191, v193, v284);

                *(v53 + 14) = v194;
                _os_log_impl(&dword_21E77E000, v151, v152, "Retargeting with content chagned, scrollPosition updated to %{public}s, scrollState: %{public}s", v53, 0x16u);
                swift_arrayDestroy();
                v195 = v184;
                v4 = v277;
                MEMORY[0x223D65FB0](v195, -1, -1);
                MEMORY[0x223D65FB0](v53, -1, -1);
              }

              v7 = v278;
              v196 = swift_allocObject();
              *(v196 + 16) = v47;
              _s23ScrollCompletionHandlerCMa();
              v197 = swift_allocObject();
              *(v197 + 32) = 0;
              *(v197 + 16) = sub_21E8D976C;
              *(v197 + 24) = v196;
              *&v292 = 1;
              *(&v292 + 1) = v49;
              v293 = v149;
              v294 = v148;
              v295 = v6 & 0x81 | 0x4000000000000000;
              v296 = v197;
              v55 = v47;
              sub_21E8C2F48(&v292);
              goto LABEL_51;
            }

            if (v153)
            {
              v47 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              v284[0] = v154;
              *v47 = 136446210;
              v155 = *(v276 + 3);
              v157 = *v276;
              v156 = *(v276 + 1);
              v299 = *(v276 + 2);
              v300 = v155;
              v297 = v157;
              v298 = v156;
              sub_21E799278(&v297, &v292);
              v158 = sub_21E7992D4();
              v160 = v159;
              sub_21E799568(&v297);
              v161 = sub_21E79841C(v158, v160, v284);

              *(v47 + 4) = v161;
              _os_log_impl(&dword_21E77E000, v151, v152, "Skip retargeting with content chagned, scrollPosition is not updated, scrollState: %{public}s", v47, 0xCu);
              v162 = __swift_destroy_boxed_opaque_existential_1Tm(v154);
              MEMORY[0x223D65FB0](v154, -1, -1, v162);
              MEMORY[0x223D65FB0](v47, -1, -1);
            }

            v7 = v278;
            v163 = *&v4[v278];
            v9 = __OFSUB__(v163, 1);
            v22 = v163 - 1;
            if (v9)
            {
              __break(1u);
              goto LABEL_113;
            }

            goto LABEL_52;
          }
        }

        goto LABEL_113;
      }

      v198 = v53;
      v121 = v280;
      v199 = sub_21E929A58();
      v47 = sub_21E92A628();

      if (os_log_type_enabled(v199, v47))
      {
        v53 = v7;
        v200 = swift_slowAlloc();
        v201 = swift_slowAlloc();
        v284[0] = v201;
        *v200 = 67240706;
        *(v200 + 8) = 1026;
        *(v200 + 10) = 0;
        *(v200 + 14) = 2082;
        v202 = *(v276 + 3);
        v204 = *v276;
        v203 = *(v276 + 1);
        v299 = *(v276 + 2);
        v300 = v202;
        v297 = v204;
        v298 = v203;
        sub_21E799278(&v297, &v292);
        v205 = sub_21E7992D4();
        v121 = v206;
        sub_21E799568(&v297);
        v207 = sub_21E79841C(v205, v121, v284);

        *(v200 + 16) = v207;
        _os_log_impl(&dword_21E77E000, v199, v47, "Skip retargeting with content changed, currentPageLaysOutFromBottom: %{BOOL,public}d, contentBelowFold: %{BOOL,public}d scrollState: %{public}s", v200, 0x18u);
        v208 = __swift_destroy_boxed_opaque_existential_1Tm(v201);
        MEMORY[0x223D65FB0](v201, -1, -1, v208);
        v209 = v200;
        v7 = v53;
        MEMORY[0x223D65FB0](v209, -1, -1);
      }

      v210 = *&v4[v7];
      v9 = __OFSUB__(v210, 1);
      v22 = v210 - 1;
      if (!v9)
      {
        goto LABEL_52;
      }

      __break(1u);
      goto LABEL_133;
    }

    v98 = *&v4[v7];
    v9 = __OFSUB__(v98, 1);
    v22 = v98 - 1;
    if (!v9)
    {
      goto LABEL_52;
    }

    __break(1u);
  }

  v99 = OBJC_IVAR___NCNotificationRootModernList_setScrollPositions;
  swift_beginAccess();
  if (*(*&v53[v99] + 16))
  {

    v100 = v53;
    v101 = sub_21E929A58();
    v102 = sub_21E92A648();

    if (os_log_type_enabled(v101, v102))
    {
      v53 = v7;
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v105 = v49;
      v49 = v104;
      v283 = v104;
      *v103 = 136446210;
      v106 = *(v105 + 3);
      v108 = *v105;
      v107 = *(v105 + 1);
      v299 = *(v105 + 2);
      v300 = v106;
      v297 = v108;
      v298 = v107;
      sub_21E799278(&v297, &v292);
      v109 = sub_21E7992D4();
      v111 = v110;
      sub_21E799568(&v297);
      v112 = sub_21E79841C(v109, v111, &v283);

      *(v103 + 4) = v112;
      _os_log_impl(&dword_21E77E000, v101, v102, "Skip retargeting with content chagned, setScrollPositions requests are empty, scrollState: %{public}s", v103, 0xCu);
      v113 = __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x223D65FB0](v49, -1, -1, v113);
      v114 = v103;
      v7 = v53;
      MEMORY[0x223D65FB0](v114, -1, -1);
    }

    v115 = *&v4[v7];
    v9 = __OFSUB__(v115, 1);
    v22 = v115 - 1;
    if (!v9)
    {
      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_64;
  }

  v130 = OBJC_IVAR___NCNotificationRootModernList_currentPageType;
  v47 = v53[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
  if (v47 > 2)
  {
    v6 = v49;

    v180 = v53;
    v121 = v280;
    v47 = sub_21E929A58();
    LOBYTE(v49) = sub_21E92A628();

    if (os_log_type_enabled(v47, v49))
    {
      v5 = v7;
      v7 = swift_slowAlloc();
      v181 = swift_slowAlloc();
      v182 = v53;
      v53 = v181;
      v283 = v181;
      *v7 = 136446466;
      LODWORD(v22) = v182[v130];
      if (v22 > 2)
      {
LABEL_168:
        if (v22 == 3)
        {
          v55 = 0xE100000000000000;
          v183 = 80;
        }

        else if (v22 == 4)
        {
          v55 = 0xE100000000000000;
          v183 = 76;
        }

        else
        {
          v55 = 0xE500000000000000;
          v183 = 0x3E6C696E3CLL;
        }

        goto LABEL_178;
      }

      v55 = 0xE100000000000000;
      if (v182[v130])
      {
        if (v22 == 1)
        {
          v183 = 83;
        }

        else
        {
          v183 = 69;
        }

        goto LABEL_178;
      }

LABEL_174:
      v183 = 67;
LABEL_178:
      v264 = sub_21E79841C(v183, v55, &v283);

      *(v7 + 4) = v264;
      *(v7 + 12) = 2082;
      v265 = *v6;
      v266 = *(v6 + 16);
      v267 = *(v6 + 48);
      v299 = *(v6 + 32);
      v300 = v267;
      v297 = v265;
      v298 = v266;
      sub_21E799278(&v297, &v292);
      v268 = sub_21E7992D4();
      v121 = v269;
      sub_21E799568(&v297);
      v270 = sub_21E79841C(v268, v121, &v283);

      *(v7 + 14) = v270;
      _os_log_impl(&dword_21E77E000, v47, v49, "Skip retargeting with content chagned, currentPageType %{public}s is not layout from bottom, scrollState: %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v53, -1, -1);
      MEMORY[0x223D65FB0](v7, -1, -1);

      v7 = v5;
      goto LABEL_179;
    }

LABEL_133:

LABEL_179:
    v271 = *&v4[v7];
    v9 = __OFSUB__(v271, 1);
    v22 = v271 - 1;
    if (!v9)
    {
      goto LABEL_52;
    }

    __break(1u);
LABEL_182:
    if (v22)
    {
      LOBYTE(v49) = *(v121 + 32);
    }

    else
    {

      LOBYTE(v49) = 4;
    }

    LOBYTE(v47) = v5;
    goto LABEL_103;
  }

  v131 = sub_21E786808(0);
  if (!v131)
  {
LABEL_191:
    __break(1u);
    return;
  }

  v132 = v131;

  v133 = [v132 count];

  if (v133 < 1)
  {
    v214 = v53;
    v136 = v280;
    v215 = sub_21E929A58();
    LOBYTE(v47) = sub_21E92A628();

    if (os_log_type_enabled(v215, v47))
    {
      v53 = v7;
      v216 = swift_slowAlloc();
      v217 = swift_slowAlloc();
      v218 = v49;
      v49 = v217;
      v283 = v217;
      *v216 = 136446210;
      v219 = *(v218 + 3);
      v221 = *v218;
      v220 = *(v218 + 1);
      v299 = *(v218 + 2);
      v300 = v219;
      v297 = v221;
      v298 = v220;
      sub_21E799278(&v297, &v292);
      v222 = sub_21E7992D4();
      v136 = v223;
      sub_21E799568(&v297);
      v224 = sub_21E79841C(v222, v136, &v283);

      *(v216 + 4) = v224;
      _os_log_impl(&dword_21E77E000, v215, v47, "Skip retargeting with content chagned, no content below the fold scroll height will animate, scrollState: %{public}s", v216, 0xCu);
      v225 = __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x223D65FB0](v49, -1, -1, v225);
      v226 = v216;
      v7 = v53;
      MEMORY[0x223D65FB0](v226, -1, -1);
    }

    v227 = *&v4[v7];
    v9 = __OFSUB__(v227, 1);
    v22 = v227 - 1;
    if (!v9)
    {
      goto LABEL_52;
    }

    __break(1u);
  }

  else
  {
    v134 = *v282;
    v135 = *(*v282 + 16);
    v136 = MEMORY[0x277D84F90];
    if (v135)
    {
      v5 = v49;
      v6 = v53;
      *&v297 = MEMORY[0x277D84F90];

      sub_21E8D52D8(0, v135, 0);
      v136 = v297;
      v137 = *(v297 + 16);
      v138 = 32;
      do
      {
        v139 = *(v134 + v138);
        *&v297 = v136;
        v140 = *(v136 + 24);
        if (v137 >= v140 >> 1)
        {
          sub_21E8D52D8((v140 > 1), v137 + 1, 1);
          v136 = v297;
        }

        *(v136 + 16) = v137 + 1;
        *(v136 + v137 + 32) = v139;
        v138 += 24;
        ++v137;
        --v135;
      }

      while (v135);

      v53 = v6;
    }

    v211 = 0;
    v22 = *(v136 + 16);
    v212 = (v136 + 32);
    while (v22 != v211)
    {
      v213 = v136 + v211++;
      if (*(v213 + 32) == v47)
      {
        goto LABEL_137;
      }
    }
  }

  v4 = v277;
  while (1)
  {
    if (v47 > 2u)
    {
      if (v47 == 3)
      {
        v47 = 2;
      }

      else
      {
        v47 = 3;
      }

      goto LABEL_153;
    }

    if (v47 == 1)
    {
      v47 = 0;
      goto LABEL_153;
    }

    if (v47 != 2)
    {
      break;
    }

    v47 = 1;
LABEL_153:
    v228 = v22;
    v229 = v212;
    while (v228)
    {
      v230 = *v229++;
      --v228;
      if (v230 == v47)
      {

        goto LABEL_157;
      }
    }
  }

  if (v22)
  {
    v47 = *(v136 + 32);
LABEL_137:
  }

  else
  {

    v47 = 4;
  }

  v4 = v277;
LABEL_157:
  v231 = (*v282 + 32);
  v232 = *(*v282 + 16) + 1;
  while (--v232)
  {
    v233 = v231 + 24;
    v234 = *v231;
    v231 += 24;
    if (v234 == v47)
    {
      v235 = *(v233 - 2);
      v236 = *(v233 - 1);
      v6 = v47;
      v237 = v53;
      v238 = sub_21E929A58();
      v53 = sub_21E92A648();

      if (os_log_type_enabled(v238, v53))
      {
        v5 = v49;
        v49 = swift_slowAlloc();
        v239 = swift_slowAlloc();
        v283 = v239;
        *v49 = 136446466;
        v240 = sub_21E8C11B8(v47, v235, v236);
        v242 = sub_21E79841C(v240, v241, &v283);

        *(v49 + 4) = v242;
        *(v49 + 6) = 2082;
        v243 = *v5;
        v244 = *(v5 + 16);
        v245 = *(v5 + 48);
        v299 = *(v5 + 32);
        v300 = v245;
        v297 = v243;
        v298 = v244;
        sub_21E799278(&v297, &v292);
        v246 = sub_21E7992D4();
        v248 = v247;
        sub_21E799568(&v297);
        v249 = sub_21E79841C(v246, v248, &v283);

        *(v49 + 14) = v249;
        _os_log_impl(&dword_21E77E000, v238, v53, "Retargeting to new page %{public}s with content chagned, scrollState: %{public}s", v49, 0x16u);
        swift_arrayDestroy();
        v250 = v239;
        v4 = v277;
        MEMORY[0x223D65FB0](v250, -1, -1);
        MEMORY[0x223D65FB0](v49, -1, -1);
      }

      v251 = swift_allocObject();
      *(v251 + 16) = v237;
      _s23ScrollCompletionHandlerCMa();
      v252 = swift_allocObject();
      *(v252 + 32) = 0;
      *(v252 + 16) = sub_21E8D976C;
      *(v252 + 24) = v251;
      *&v292 = 1;
      *(&v292 + 1) = v47;
      v293 = v235;
      v294 = v236;
      v295 = 0x4000000000000080;
      v296 = v252;
      v55 = v237;
      sub_21E8C2F48(&v292);
      v7 = v278;
      goto LABEL_51;
    }
  }

  v5 = v49;
  v253 = v53;
  v254 = sub_21E929A58();
  LOBYTE(v49) = sub_21E92A628();

  if (os_log_type_enabled(v254, v49))
  {
    v255 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v283 = v53;
    *v255 = 136446466;
    *(v255 + 4) = sub_21E79841C(qword_21E948050[v47], 0xE100000000000000, &v283);
    *(v255 + 12) = 2082;
    v256 = *(v5 + 48);
    v258 = *v5;
    v257 = *(v5 + 16);
    v299 = *(v5 + 32);
    v300 = v256;
    v297 = v258;
    v298 = v257;
    sub_21E799278(&v297, &v292);
    v259 = sub_21E7992D4();
    v261 = v260;
    sub_21E799568(&v297);
    v262 = sub_21E79841C(v259, v261, &v283);

    *(v255 + 14) = v262;
    _os_log_impl(&dword_21E77E000, v254, v49, "Skip retargeting with content chagned, new page not found with type %{public}s, scrollState: %{public}s", v255, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v53, -1, -1);
    MEMORY[0x223D65FB0](v255, -1, -1);
  }

  v7 = v278;
  v263 = *&v4[v278];
  v9 = __OFSUB__(v263, 1);
  v22 = v263 - 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_168;
  }

LABEL_52:
  *&v4[v7] = v22;
}

uint64_t sub_21E7866B4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void NCNotificationRootModernList.incomingCount.getter()
{
  v0 = sub_21E786808(2);
  if (!v0)
  {
    goto LABEL_14;
  }

  v1 = v0;
  v2 = [v0 notificationCount];

  v3 = sub_21E786808(1);
  if (!v3)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = [v3 notificationCount];

  v6 = &v5[v2];
  if (__OFADD__(v2, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = sub_21E786808(0xA);
  if (v7)
  {
    v8 = v7;
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = [v9 notificationCount];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  if (__OFADD__(v6, v10))
  {
    goto LABEL_13;
  }
}

id sub_21E786808(id a1)
{
  if (a1 || (v10 = [v1 delegate]) == 0 || (v11 = objc_msgSend(v10, sel_notificationRootListShouldAllowNotificationHistoryReveal_, v1), swift_unknownObjectRelease(), v11))
  {
    v15.super_class = NCNotificationRootModernList;
    v3 = objc_msgSendSuper2(&v15, sel_notificationListSections);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7450, &qword_21E947D50);
    v4 = sub_21E92A528();

    if (v4 >> 62)
    {
      goto LABEL_20;
    }

    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
LABEL_21:

      return 0;
    }

LABEL_4:
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D64A50](v6, v4);
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        swift_unknownObjectRetain();
        v7 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          v5 = sub_21E92A828();
          if (!v5)
          {
            goto LABEL_21;
          }

          goto LABEL_4;
        }
      }

      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        if ([v8 sectionType] == a1)
        {

          return v9;
        }
      }

      swift_unknownObjectRelease();
      ++v6;
      if (v7 == v5)
      {
        goto LABEL_21;
      }
    }
  }

  v12 = objc_allocWithZone(NCNotificationStructuredSectionList);
  v13 = sub_21E92A428();
  v9 = [v12 initWithTitle:v13 sectionType:0];

  return v9;
}

uint64_t sub_21E786B68(uint64_t a1, uint64_t a2)
{
  v4 = (v2 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_incomingTitle);
  result = *(v2 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_incomingTitle);
  v6 = *(v2 + OBJC_IVAR___NCNotificationListCountIndicatorViewController_incomingTitle + 8);
  *v4 = a1;
  v4[1] = a2;
  if (v6)
  {
    if (a2)
    {
      v7 = result == a1 && v6 == a2;
      if (v7 || (sub_21E92AA58() & 1) != 0)
      {
        goto LABEL_11;
      }
    }
  }

  else if (!a2)
  {
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8190, &qword_21E949A40);
  sub_21E8D919C(&unk_280D03F18, &qword_27CED8190, &qword_21E949A40, MEMORY[0x277CBCE18]);
  sub_21E929DB8();
LABEL_11:
}

uint64_t sub_21E786CC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E786D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E786D5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E786EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NCNotificationRootModernList.notificationListComponentChangedContent(_:)(uint64_t a1)
{
  if (v1[OBJC_IVAR___NCNotificationRootModernList_updatingSectionSettings] == 1)
  {
    v1[OBJC_IVAR___NCNotificationRootModernList_wantsContentUpdateDuringSectionSettingsChange] = 1;
  }

  else
  {
    sub_21E784AD0(0);
  }

  v3 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout];
  v4 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout + 8];
  v5 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout + 16];

  v6.n128_u64[0] = v5;
  sub_21E783428(v3, v9, v4, v6);

  sub_21E8C800C(v9);
  result = [v1 delegate];
  if (result)
  {
    v8 = result;
    if ([result respondsToSelector_])
    {
      [v8 notificationListComponentChangedContent_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_21E7871A0()
{
  v16.super_class = NCNotificationRootModernList;
  v0 = objc_msgSendSuper2(&v16, sel_notificationListSections);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7450, &qword_21E947D50);
  v1 = sub_21E92A528();

  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E92A828())
  {
    v3 = 0;
    v4 = 0xEE00736569746976;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223D64A50](v3, v1);
        v5 = v3 + 1;
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
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

LABEL_11:
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v7 = v6;
        v8 = [v6 identifier];
        v9 = v4;
        v10 = sub_21E92A458();
        v12 = v11;

        if (v10 == 0x697463416576694CLL && v12 == v9)
        {

LABEL_19:

          return v7;
        }

        v4 = v9;
        v14 = sub_21E92AA58();

        if (v14)
        {
          goto LABEL_19;
        }
      }

      swift_unknownObjectRelease();
      ++v3;
      if (v5 == i)
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

uint64_t sub_21E787444(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 48);
  v4 = (a2 + 48);
  while (v2)
  {
    v5 = *(v3 - 1) == *(v4 - 1);
    if (*v3 != *v4)
    {
      v5 = 0;
    }

    result = *(v3 - 16) == *(v4 - 16) && v5;
    v6 = result != 1 || v2-- == 1;
    v3 += 3;
    v4 += 3;
    if (v6)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21E787798(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for NotificationListLayoutValidator.InputState(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v16 = v1;
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator, &unk_21E94A1EC);
  sub_21E9297A8();

  if (*(v1 + 161) == 1)
  {
    swift_getKeyPath();
    v16 = v1;
    sub_21E9297A8();

    if (*(v1 + 24) != (a1 & 1))
    {
      swift_getKeyPath();
      v16 = v1;
      sub_21E9297A8();

      v9 = *(v1 + 24);
      sub_21E929768();
      v10 = *(v4 + 20);
      *&v7[v10] = CACurrentMediaTime();
      v7[*(v4 + 24)] = v9;
      swift_getKeyPath();
      v16 = v2;
      sub_21E9297A8();

      v16 = v2;
      swift_getKeyPath();
      sub_21E9297C8();

      v11 = *(v2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_21E924774(0, v11[2] + 1, 1, v11);
        *(v2 + 16) = v11;
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        v11 = sub_21E924774((v13 > 1), v14 + 1, 1, v11);
      }

      v11[2] = v14 + 1;
      sub_21E922C8C(v7, v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for NotificationListLayoutValidator.InputState);
      *(v2 + 16) = v11;
      v16 = v2;
      swift_getKeyPath();
      sub_21E9297B8();
    }
  }

  return result;
}

uint64_t sub_21E787B34()
{
  swift_getKeyPath();
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator, &unk_21E94A1EC);
  sub_21E9297A8();

  v1 = *(v0 + 48);
  swift_getKeyPath();
  sub_21E9297A8();

  swift_getKeyPath();
  sub_21E9297C8();

  v2 = *(v0 + 24);
  *(v0 + 24) = v1;
  sub_21E787798(v2);
  swift_getKeyPath();
  sub_21E9297B8();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_21E787D70()
{
  v1 = v0;
  v28.super_class = NCNotificationRootModernList;
  v2 = objc_msgSendSuper2(&v28, sel_rootListView);
  v3 = [v2 traitCollection];

  v4 = [v3 _backlightLuminance];
  if (v4 != 2)
  {
    return 0;
  }

  v5 = sub_21E788090() < 2u ? 1 : sub_21E788090();
  v6 = OBJC_IVAR___NCNotificationRootModernList_currentPageType;
  v7 = v1[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
  if (v7 == 5 || v5 >= v7)
  {
    return 0;
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v10 = sub_21E929A78();
  __swift_project_value_buffer(v10, qword_280D05F58);
  v11 = v1;
  v12 = sub_21E929A58();
  v13 = sub_21E92A648();
  if (os_log_type_enabled(v12, v13))
  {
    v25 = v13;
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v14 = 134349570;
    v26.receiver = v11;
    v26.super_class = NCNotificationRootModernList;
    v27 = v24;
    v15 = objc_msgSendSuper2(&v26, sel_rootListView);
    v16 = [v15 traitCollection];

    v17 = [v16 _backlightLuminance];
    *(v14 + 4) = v17;

    *(v14 + 12) = 2082;
    v18 = sub_21E788090();
    v19 = 0xE100000000000000;
    v20 = sub_21E79841C(qword_21E948050[v18], 0xE100000000000000, &v27);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2082;
    v21 = v1[v6];
    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = 80;
      }

      else if (v21 == 4)
      {
        v22 = 76;
      }

      else
      {
        v19 = 0xE300000000000000;
        v22 = 7104878;
      }
    }

    else if (v1[v6])
    {
      if (v21 == 1)
      {
        v22 = 83;
      }

      else
      {
        v22 = 69;
      }
    }

    else
    {
      v22 = 67;
    }

    v23 = sub_21E79841C(v22, v19, &v27);

    *(v14 + 24) = v23;
    _os_log_impl(&dword_21E77E000, v12, v25, "isUserEngagingView true; _backlightLuminance: %{public}ld; systemPreferredPageType: %{public}s; currentPageType: %{public}s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v24, -1, -1);
    MEMORY[0x223D65FB0](v14, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_21E788090()
{
  v1 = [v0 currentListDisplayStyleSetting];
  if (v1)
  {
    return v1 == 1;
  }

  v3 = [v0 currentListDisplayStyleSettingReason];
  v4 = sub_21E92A458();
  v6 = v5;

  if (sub_21E92A458() == v4 && v7 == v6)
  {
  }

  else
  {
    v9 = sub_21E92AA58();

    if ((v9 & 1) == 0)
    {
      if ([v0 isNotificationHistoryRevealed])
      {
        return 4;
      }

      v28 = *&v0[OBJC_IVAR___NCNotificationRootModernList_layout];
      v29 = *(v28 + 16);
      v18 = MEMORY[0x277D84F90];
      if (v29)
      {
        v44 = MEMORY[0x277D84F90];

        sub_21E8D52D8(0, v29, 0);
        v18 = v44;
        v30 = *(v44 + 16);
        v31 = 32;
        do
        {
          v32 = *(v28 + v31);
          v33 = *(v44 + 24);
          if (v30 >= v33 >> 1)
          {
            sub_21E8D52D8((v33 > 1), v30 + 1, 1);
          }

          *(v44 + 16) = v30 + 1;
          *(v44 + v30 + 32) = v32;
          v31 += 24;
          ++v30;
          --v29;
        }

        while (v29);
      }

      v34 = 0;
      v24 = *(v18 + 16);
      while (v24 != v34)
      {
        v35 = v18 + v34++;
        if (*(v35 + 32) == 2)
        {
          goto LABEL_42;
        }
      }

      v38 = 0;
      while (v24 != v38)
      {
        v39 = v18 + v38++;
        if (*(v39 + 32) == 3)
        {
          goto LABEL_50;
        }
      }

      v41 = 0;
      while (v24 != v41)
      {
        v42 = v18 + v41++;
        if (*(v42 + 32) == 4)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_55;
    }
  }

  v10 = sub_21E786808(0xA);
  if (v10)
  {
    v11 = v10;
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = [v12 count];

      if (v13 > 0)
      {
        return 1;
      }
    }

    else
    {
    }
  }

  result = sub_21E786808(2);
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = [result count];

  if (v15 < 2)
  {
    return 1;
  }

  v16 = *&v0[OBJC_IVAR___NCNotificationRootModernList_layout];
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v43 = MEMORY[0x277D84F90];

    sub_21E8D52D8(0, v17, 0);
    v18 = v43;
    v19 = *(v43 + 16);
    v20 = 32;
    do
    {
      v21 = *(v16 + v20);
      v22 = *(v43 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_21E8D52D8((v22 > 1), v19 + 1, 1);
      }

      *(v43 + 16) = v19 + 1;
      *(v43 + v19 + 32) = v21;
      v20 += 24;
      ++v19;
      --v17;
    }

    while (v17);
  }

  v23 = 0;
  v24 = *(v18 + 16);
  while (v24 != v23)
  {
    v25 = v18 + v23++;
    if (*(v25 + 32) == 2)
    {
LABEL_42:

      return 2;
    }
  }

  v26 = 0;
  while (v24 != v26)
  {
    v27 = v18 + v26++;
    if (*(v27 + 32) == 3)
    {
LABEL_50:
      v40 = 3;
      goto LABEL_57;
    }
  }

  v36 = 0;
  while (v24 != v36)
  {
    v37 = v18 + v36++;
    if (*(v37 + 32) == 4)
    {
LABEL_54:
      v40 = 4;
      goto LABEL_57;
    }
  }

LABEL_55:
  if (v24)
  {
    v40 = *(v18 + 32);
LABEL_57:

    return v40;
  }

  else
  {

    return 4;
  }
}

BOOL sub_21E788490()
{
  v16.super_class = NCNotificationRootModernList;
  v1 = objc_msgSendSuper2(&v16, sel_rootListView);
  v2 = [v1 isTracking];

  if (v2)
  {
    return 0;
  }

  v15.receiver = v0;
  v15.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v15, sel_rootListView);
  v4 = [v3 isDragging];

  if (v4)
  {
    return 0;
  }

  v14.receiver = v0;
  v14.super_class = NCNotificationRootModernList;
  v5 = objc_msgSendSuper2(&v14, sel_rootListView);
  v6 = [v5 isDecelerating];

  if (v6)
  {
    return 0;
  }

  v13.receiver = v0;
  v13.super_class = NCNotificationRootModernList;
  v7 = objc_msgSendSuper2(&v13, sel_rootListView);
  objc_opt_self();
  v8 = [swift_dynamicCastObjCClassUnconditional() performingContentOffsetAnimation];

  if (v8)
  {
    return 0;
  }

  v10 = vorrq_s8(*&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState], *&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState + 16]);
  v11 = *&vorr_s8(*v10.i8, *&vextq_s8(v10, v10, 8uLL)) | *&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState + 40] | *&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState + 48] | *&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState + 56];
  return *&v0[OBJC_IVAR___NCNotificationRootModernList__scrollState + 32] == 0x8000000000000000 && v11 == 0;
}

id sub_21E788DE4()
{
  v1 = OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView;
  v2 = *(v0 + OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___NCNotificationStructuredListView____lazy_storage___revealHintView);
  }

  else
  {
    v4 = [objc_allocWithZone(NCNotificationListSectionRevealHintView) initWithFrame_];
    [v4 setForceRevealed_];
    [v4 setAdjustsFontForContentSizeCategory_];
    [v4 setAlpha_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

BOOL _NCIsNotVerticalSpaceConstrained(void *a1)
{
  if ([a1 verticalSizeClass] == 2)
  {
    return 1;
  }

  v2 = [MEMORY[0x277D75418] currentDevice];
  v1 = [v2 userInterfaceIdiom] == 1;

  return v1;
}

Swift::Void __swiftcall NCNotificationRootModernList.didUpdate(to:)(UIUserInterfaceSizeClass to)
{
  v3 = &v1[OBJC_IVAR___NCNotificationRootModernList_currentUserInterfaceSizeClass];
  if ((v1[OBJC_IVAR___NCNotificationRootModernList_currentUserInterfaceSizeClass + 8] & 1) != 0 || *v3 != to)
  {
    *v3 = to;
    v3[8] = 0;
    v19.receiver = v1;
    v19.super_class = NCNotificationRootModernList;
    v7 = objc_msgSendSuper2(&v19, sel_rootListView);
    v8 = [v7 traitCollection];

    v9 = [v8 _backlightLuminance];
    if (v9 == 2)
    {
      if (qword_280D03F40 != -1)
      {
        swift_once();
      }

      v14 = sub_21E929A78();
      __swift_project_value_buffer(v14, qword_280D05F58);
      v15 = sub_21E929A58();
      v16 = sub_21E92A648();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 134349056;
        *(v17 + 4) = to;
        _os_log_impl(&dword_21E77E000, v15, v16, "interfaceSizeClass changes to %{public}ld in CoverSheet; updating pages", v17, 0xCu);
        MEMORY[0x223D65FB0](v17, -1, -1);
      }

      sub_21E784AD0(0);
    }

    else if (v9 == 1)
    {
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
        *v13 = 134349056;
        *(v13 + 4) = to;
        _os_log_impl(&dword_21E77E000, v11, v12, "interfaceSizeClass changes to %{public}ld in AOD; updating scroll position", v13, 0xCu);
        MEMORY[0x223D65FB0](v13, -1, -1);
      }

      sub_21E8C6D6C(4);
    }
  }

  else
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v4 = sub_21E929A78();
    __swift_project_value_buffer(v4, qword_280D05F58);
    oslog = sub_21E929A58();
    v5 = sub_21E92A648();
    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134349056;
      *(v6 + 4) = to;
      _os_log_impl(&dword_21E77E000, oslog, v5, "interfaceSizeClass is not changed; currentInterfaceSizeClass %{public}ld", v6, 0xCu);
      MEMORY[0x223D65FB0](v6, -1, -1);
    }
  }
}

Swift::Void __swiftcall NCNotificationRootModernList.notificationListWillLayoutSubviews()()
{
  v33.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v33, sel_notificationListWillLayoutSubviews);
  if (*(*&v0[OBJC_IVAR___NCNotificationRootModernList_layout] + 16))
  {
    v32.receiver = v0;
    v32.super_class = NCNotificationRootModernList;
    v1 = objc_msgSendSuper2(&v32, sel_rootListView);
    [v1 setMinimumContentHeight_];

    v2 = sub_21E786808(0xA);
    if (!v2)
    {
      return;
    }

    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4 && [v4 count] >= 1)
    {
      v31.receiver = v0;
      v31.super_class = NCNotificationRootModernList;
      v5 = objc_msgSendSuper2(&v31, sel_rootListView);
      v6 = v5;
      v7 = *&v0[OBJC_IVAR___NCNotificationRootModernList_contentHeight];
      if (v0[OBJC_IVAR___NCNotificationRootModernList_contentHeight + 8])
      {
        v7 = 0.0;
      }

      [v5 setMinimumContentHeight_];

      v30.receiver = v0;
      v30.super_class = NCNotificationRootModernList;
      v8 = objc_msgSendSuper2(&v30, sel_rootListView);
      v29.receiver = v0;
      v29.super_class = NCNotificationRootModernList;
      v9 = objc_msgSendSuper2(&v29, sel_rootListView);
      [v9 minimumContentHeight];
      v11 = v10;

      v28.receiver = v0;
      v28.super_class = NCNotificationRootModernList;
      v12 = objc_msgSendSuper2(&v28, sel_rootListView);
      [v12 frame];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      v34.origin.x = v14;
      v34.origin.y = v16;
      v34.size.width = v18;
      v34.size.height = v20;
      Height = CGRectGetHeight(v34);
      v27.receiver = v0;
      v27.super_class = NCNotificationRootModernList;
      v22 = objc_msgSendSuper2(&v27, sel_rootListView);
      [v22 visibleRectBottomMarginForRollUnder];
      v24 = v23;

      v25 = Height - v24 + Height - v24;
      if (v11 > v25)
      {
        v25 = v11;
      }

      [v8 setMinimumContentHeight_];
    }
  }

  else
  {
    v26.receiver = v0;
    v26.super_class = NCNotificationRootModernList;
    v3 = objc_msgSendSuper2(&v26, sel_rootListView);
    [v3 setMinimumContentHeight_];
  }
}

id sub_21E78A8A0(uint64_t a1)
{
  if (a1 > 1)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 80);
  v14[4] = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 64);
  v14[5] = v3;
  v15 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 96);
  v4 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 16);
  v14[0] = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout);
  v14[1] = v4;
  v5 = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 48);
  v14[2] = *(v1 + OBJC_IVAR___NCNotificationRootModernList_layout + 32);
  v14[3] = v5;
  sub_21E78A844(v14, v13);
  sub_21E78A95C();
  v7 = v6;
  v9 = v8;
  sub_21E78AACC(v14);
  v10 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  if (a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v7;
  }

  return [v10 initWithDouble_];
}

void sub_21E78A95C()
{
  v0 = [objc_opt_self() rootSettings];
  v1 = [v0 listAnimationSettings];

  [v1 viewSpacing];
}

void NCNotificationRootModernList.notificationListView(_:heightForItemAt:withWidth:inDisplayListAsStackMode:ignoreExpandedGroupStack:)(uint64_t a1, unint64_t a2, char a3, char a4, double a5)
{
  sub_21E78AD48(a2);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11 && ((v12 = v11, v13 = [v11 sectionType], v13 != 10) ? (v14 = v13 == 0) : (v14 = 1), v14))
  {
    v15 = [v12 listView];
    if (v15)
    {
      v16 = v15;
      [v15 contentSize];
      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v17.receiver = v5;
    v17.super_class = NCNotificationRootModernList;
    objc_msgSendSuper2(&v17, sel_notificationListView_heightForItemAtIndex_withWidth_inDisplayListAsStackMode_ignoreExpandedGroupStack_, a1, a2, a3 & 1, a4 & 1, a5);
    swift_unknownObjectRelease();
  }
}

void sub_21E78AD48(unint64_t a1)
{
  v8.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v8, sel_notificationListSections);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7450, &qword_21E947D50);
  v4 = sub_21E92A528();

  if ((v4 & 0xC000000000000001) != 0)
  {
    MEMORY[0x223D64A50](a1, v4);
    goto LABEL_5;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a1)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
LABEL_5:

  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    if (![v5 sectionType])
    {
      v6 = [v1 delegate];
      if (v6)
      {
        v7 = [v6 notificationRootListShouldAllowNotificationHistoryReveal_];
        swift_unknownObjectRelease();
        if ((v7 & 1) == 0)
        {
          if (sub_21E786808(0))
          {
            swift_unknownObjectRelease();
            return;
          }

          goto LABEL_15;
        }
      }
    }
  }
}

id NCStringFromAutomationAccessibilityIdentifierAndContentType(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a1;
  v5 = NCNotificationBodyContentTypeString(a2);
  v6 = [v3 stringWithFormat:@"%@.%@", v4, v5];

  return v6;
}

__CFString *NCNotificationBodyContentTypeString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_2783717C8[a1 - 1];
  }
}

void sub_21E78D12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E78D634(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

double _NCMainScreenScale(uint64_t a1, uint64_t a2)
{
  if (_NCMainScreenScale_onceToken != -1)
  {
    _NCMainScreenScale_cold_1();
  }

  return *&_NCMainScreenScale___mainScreenScale;
}

Swift::Void __swiftcall NCPlatterView.layoutSubviews()()
{
  v23.super_class = NCPlatterView;
  objc_msgSendSuper2(&v23, sel_layoutSubviews);
  v1 = [v0 debugBorderView];
  if (v1)
  {
    v2 = v1;
    [v0 bounds];
    [v2 setFrame_];
    v3 = [v0 backgroundView];
    if (v3)
    {
      v4 = v3;
      [v3 _continuousCornerRadius];
      v6 = v5;
    }

    else
    {
      v6 = 0.0;
    }

    [v2 _setContinuousCornerRadius_];
    [v0 bringSubviewToFront_];
  }

  v7 = [v0 debugLabel];
  if (v7)
  {
    v8 = v7;
    [v0 bounds];
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v17 = v8;
    [v17 sizeThatFits_];
    v19 = v18;
    v21 = v20;
    v24.origin.x = v10;
    v24.origin.y = v12;
    v24.size.width = v14;
    v24.size.height = v16;
    v22 = CGRectGetMidX(v24) - v19 * 0.5;
    v25.origin.x = v10;
    v25.origin.y = v12;
    v25.size.width = v14;
    v25.size.height = v16;
    [v17 setFrame_];

    [v0 bringSubviewToFront_];
  }
}

void _sSo28NCNotificationRootModernListC22UserNotificationsUIKitE19targetContentHeight015forNotificationD012CoreGraphics7CGFloatVSo0aD12ViewProtocol_p_tF_0()
{
  v4.super_class = NCNotificationRootModernList;
  v1 = objc_msgSendSuper2(&v4, sel_rootListView);
  [v1 safeAreaInsets];

  v3.receiver = v0;
  v3.super_class = NCNotificationRootModernList;
  v2 = objc_msgSendSuper2(&v3, sel_rootListView);
  UIRoundToViewScale();
}

Swift::Void __swiftcall NCNotificationRootModernList.notificationListDidLayoutSubviews()()
{
  v1 = v0;
  v93.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v93, sel_notificationListDidLayoutSubviews);
  v2 = sub_21E786808(0xA);
  v3 = &selRef_revealHintingAnimationTension;
  if (v2)
  {
    v4 = v2;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = v5;
      v80.receiver = v1;
      v80.super_class = NCNotificationRootModernList;
      v7 = objc_msgSendSuper2(&v80, sel_rootListView);
      [v7 bounds];
      v9 = v8;
      v11 = v10;

      [v6 setContentSize_];
    }
  }

  sub_21E790FD8();
  v12 = OBJC_IVAR___NCNotificationRootModernList_setScrollPositions;
  swift_beginAccess();
  v13 = *&v1[v12];
  v14 = *(v13 + 16);
  v15 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
  if (!v14)
  {
    goto LABEL_9;
  }

  v16 = *(v13 + 32);
  v17 = v14 - 1;
  if (v17)
  {
    v19 = (v13 + 33);
    do
    {
      v22 = *v19++;
      v21 = v22;
      v18 = v22;
      if (v16 >> 6)
      {
        if (v16 >> 6 == 1)
        {
          if ((v18 & 0x3Fu) >= (v16 & 0x3F))
          {
            v20 = v18;
          }

          else
          {
            v20 = v16;
          }

          if ((v18 & 0xFFFFFFC0) == 0x40)
          {
            v18 = v20;
          }

          else
          {
            v18 = v16;
          }
        }

        else
        {
          v23 = v16;
          if (v18 <= -127)
          {
            v24 = -127;
          }

          else
          {
            v24 = v18;
          }

          if (v16 == 129)
          {
            v16 = v24;
          }

          if (v23 == 128)
          {
            v18 = v18;
          }

          else
          {
            v18 = v16;
          }
        }
      }

      else
      {
        v25 = v21 >> 6;
        if (v25)
        {
          if (v25 != 1)
          {
            if (v18 >= -126)
            {
              v18 = 4294967170;
            }

            else
            {
              v18 = v16;
            }
          }
        }

        else if (v18 <= v16)
        {
          v18 = v16;
        }

        else
        {
          v18 = v18;
        }
      }

      v16 = v18;
      --v17;
    }

    while (v17);
  }

  else
  {
    v18 = *(v13 + 32);
  }

  if (v18 != 128)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v26 = sub_21E929A78();
    __swift_project_value_buffer(v26, qword_280D05F58);
    v27 = v1;
    v28 = sub_21E929A58();
    v29 = sub_21E92A648();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v84 = v79;
      *v30 = 136446978;
      v31 = sub_21E799190(v18);
      v33 = sub_21E79841C(v31, v32, &v84);

      *(v30 + 4) = v33;
      *(v30 + 12) = 2082;
      v34 = *&v27[OBJC_IVAR___NCNotificationRootModernList__scrollState + 48];
      v36 = *&v27[OBJC_IVAR___NCNotificationRootModernList__scrollState];
      v35 = *&v27[OBJC_IVAR___NCNotificationRootModernList__scrollState + 16];
      v94[2] = *&v27[OBJC_IVAR___NCNotificationRootModernList__scrollState + 32];
      v94[3] = v34;
      v94[0] = v36;
      v94[1] = v35;
      sub_21E799278(v94, v83);
      v37 = sub_21E7992D4();
      v39 = v38;
      sub_21E799568(v94);
      v40 = sub_21E79841C(v37, v39, &v84);

      *(v30 + 14) = v40;
      *(v30 + 22) = 1026;
      v82.receiver = v27;
      v82.super_class = NCNotificationRootModernList;
      v41 = objc_msgSendSuper2(&v82, sel_rootListView);
      objc_opt_self();
      LODWORD(v39) = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

      *(v30 + 24) = v39;
      *(v30 + 28) = 2050;
      v81.receiver = v27;
      v81.super_class = NCNotificationRootModernList;
      v42 = objc_msgSendSuper2(&v81, sel_rootListView);
      v43 = [v42 traitCollection];

      v44 = [v43 _backlightLuminance];
      v15 = &_OBJC_LABEL_PROTOCOL___NCNotificationListCoalescingControlsHandlerDelegate;
      *(v30 + 30) = v44;

      _os_log_impl(&dword_21E77E000, v28, v29, "targetScrollPosition: %{public}s, scrollState: %{public}s, viewEffectivelyTracking: %{BOOL,public}d, _backlightLuminance: %{public}ld", v30, 0x26u);
      swift_arrayDestroy();
      MEMORY[0x223D65FB0](v79, -1, -1);
      v45 = v30;
      v3 = &selRef_revealHintingAnimationTension;
      MEMORY[0x223D65FB0](v45, -1, -1);
    }

    else
    {
    }
  }

  else
  {
LABEL_9:
    v18 = 128;
  }

  v92.receiver = v1;
  v92.super_class = NCNotificationRootModernList;
  v46 = objc_msgSendSuper2(&v92, v3[20]);
  objc_opt_self();
  v47 = [swift_dynamicCastObjCClassUnconditional() v15[286]];

  if ((v47 & 1) == 0)
  {
    v91.receiver = v1;
    v91.super_class = NCNotificationRootModernList;
    v53 = objc_msgSendSuper2(&v91, v3[20]);
    v54 = [v53 window];

    if (v54)
    {

      v86.receiver = v1;
      v86.super_class = NCNotificationRootModernList;
      v55 = objc_msgSendSuper2(&v86, v3[20]);
      v56 = [v55 traitCollection];

      v57 = [v56 _backlightLuminance];
      v58 = v57 == 2;
      v59 = v18 >> 6;
      if (v18 >> 6)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v58 = 0;
      v59 = v18 >> 6;
      if (v18 >> 6)
      {
LABEL_48:
        if (v59 == 1)
        {
          v90.receiver = v1;
          v90.super_class = NCNotificationRootModernList;
          v60 = objc_msgSendSuper2(&v90, v3[20]);
          sub_21E799598();

          sub_21E8CBC48(v58, v18 & 0x3F);
        }

        else if (v18 != 128)
        {
          if (v18 == 129)
          {
            sub_21E8CB974();
          }

          else
          {
            v87.receiver = v1;
            v87.super_class = NCNotificationRootModernList;
            v75 = objc_msgSendSuper2(&v87, v3[20]);
            sub_21E799598();

            if (sub_21E788090() < 2u)
            {
              v76 = 1;
            }

            else
            {
              v76 = sub_21E788090();
            }

            v77 = swift_allocObject();
            *(v77 + 16) = v1;
            v78 = v1;
            sub_21E8C6068(v58, v76, sub_21E8D976C, v77);
LABEL_68:
          }
        }

LABEL_69:
        sub_21E791440(v1);
        return;
      }
    }

    v89.receiver = v1;
    v89.super_class = NCNotificationRootModernList;
    v61 = objc_msgSendSuper2(&v89, v3[20]);
    sub_21E799598();

    v62 = *&v1[OBJC_IVAR___NCNotificationRootModernList_layout];
    v63 = (v62 + 32);
    v64 = *(v62 + 16) + 1;
    while (--v64)
    {
      v65 = v63 + 24;
      v66 = *v63 == v18;
      v63 += 24;
      if (v66)
      {
        v67 = *(v65 - 2);
        v68 = *(v65 - 1);
        v88.receiver = v1;
        v88.super_class = NCNotificationRootModernList;
        v69 = objc_msgSendSuper2(&v88, v3[20]);
        [v69 contentOffset];
        v71 = v70;

        if (v67 > v71 || v71 > v68)
        {
          v73 = swift_allocObject();
          *(v73 + 16) = v1;
          v74 = v1;
          sub_21E8C6068(v58, v18, sub_21E8D976C, v73);
          goto LABEL_68;
        }

        goto LABEL_69;
      }
    }

    goto LABEL_69;
  }

  *&v1[v12] = MEMORY[0x277D84F90];

  v85.receiver = v1;
  v85.super_class = NCNotificationRootModernList;
  v48 = objc_msgSendSuper2(&v85, v3[20]);
  v49 = [v48 isDragging];

  if (v49)
  {
    *&v1[OBJC_IVAR___NCNotificationRootModernList_layoutBottomCellAnimationCount] = 0;
    v50 = sub_21E786808(0);
    if (v50)
    {
      v51 = v50;
      v52 = [v50 listView];

      if (v52)
      {
        [v52 setHidden_];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_21E790FD8()
{
  v1 = sub_21E786808(1);
  if (!v1)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v2 = v1;
  v3 = [v1 count];

  v4 = *(v0 + OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection);
  v5 = v3 > 0;
  v6 = sub_21E786808(0xC);
  if (!v6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = v6;
  v8 = v4 | v5;
  v9 = [v6 count];

  if (v9 <= 0)
  {
    v10 = sub_21E786808(0xB);
    if (!v10)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v11 = v10;
    v12 = [v10 count];

    if (v12 <= 0)
    {
      v13 = sub_21E786808(1);
      if (!v13)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v14 = v13;
      v15 = [v13 count];

      if (v15 < 1)
      {
        if (v8)
        {
          v18 = sub_21E786808(2);
          if (!v18)
          {
LABEL_23:
            __break(1u);
            return;
          }

          v19 = v18;
          v20 = [v18 count];

          v8 = v20 > 0;
        }

        else
        {
          v8 = 0;
        }

        v16 = sub_21E786808(2);
        if (v16)
        {
          goto LABEL_9;
        }

        __break(1u);
        goto LABEL_18;
      }
    }
  }

  v16 = sub_21E786808(2);
  if (!v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_9:
  v17 = v16;
  sub_21E791178(v16, v8 & 1);

  sub_21E8C16E8();
}

void sub_21E791178(void *a1, int a2)
{
  if ((([a1 isSectionListViewGroupedWithContentShown] ^ a2) & 1) == 0)
  {
    [a1 setAllowSectionListViewGroupedWithContentShownAnimations_];
    v20.receiver = v2;
    v20.super_class = NCNotificationRootModernList;
    v5 = objc_msgSendSuper2(&v20, sel_rootListView);
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
    v7 = v6;

    if (v7 <= 0.0)
    {
      v19.receiver = v2;
      v19.super_class = NCNotificationRootModernList;
      v9 = objc_msgSendSuper2(&v19, sel_rootListView);
      objc_opt_self();
      v10 = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

      v8 = v10 ^ 1;
    }

    else
    {
      v8 = 1;
    }

    v18.receiver = v2;
    v18.super_class = NCNotificationRootModernList;
    v11 = objc_msgSendSuper2(&v18, sel_rootListView);
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
    v13 = v12;

    if (v13 >= 0.0)
    {
      v17.receiver = v2;
      v17.super_class = NCNotificationRootModernList;
      v15 = objc_msgSendSuper2(&v17, sel_rootListView);
      objc_opt_self();
      v16 = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

      if (a2)
      {
        if (v16)
        {
          return;
        }

        v14 = 0;
      }

      else
      {
        if (!v8)
        {
          return;
        }

        v14 = 1;
      }
    }

    else
    {
      if (((a2 | v8) & 1) == 0)
      {
        return;
      }

      v14 = a2 ^ 1;
    }

    [a1 setSectionListViewGroupedWithContentShown_];
    [a1 setSupportsDynamicGrouping_];
  }
}

uint64_t sub_21E791440(uint64_t a1)
{
  v2 = OBJC_IVAR___NCNotificationRootModernList_setScrollPositions;
  swift_beginAccess();
  v3 = *(a1 + v2);
  v4 = *(v3 + 2);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3[i + 32] & 0xC0) != 0x40)
      {
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_23;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + v2) = v3;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_24;
        }

        while (1)
        {
          *(a1 + v2) = v3;
          if (v7 == *(v3 + 2))
          {
            v6 = v7;
LABEL_10:
            v4 = i;
            if (v6 >= i)
            {
              goto LABEL_11;
            }
          }

          else
          {
            v10 = i + 33;
            v11 = v3 + 32;
            v6 = *(v3 + 2);
            while (v10 - 32 < v6)
            {
              v14 = v3[v10];
              if ((v14 & 0xC0) == 0x40)
              {
                if (v10 - 32 != i)
                {
                  if (i >= v6)
                  {
                    __break(1u);
                    break;
                  }

                  v12 = v11[i];
                  v11[i] = v14;
                  v3[v10] = v12;
                  *(a1 + v2) = v3;
                  v6 = *(v3 + 2);
                }

                ++i;
              }

              v13 = v10 - 31;
              ++v10;
              if (v13 == v6)
              {
                goto LABEL_10;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          v3 = sub_21E924E40(v3);
        }
      }
    }
  }

  v6 = *(v3 + 2);
LABEL_11:
  sub_21E791598(v4, v6);
  return swift_endAccess();
}

char *sub_21E791598(char *result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = &result[-a2];
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = &v7[v5];
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_21E79909C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_21E791658(v6, a2, 0);
  *v2 = v4;
  return result;
}

char *sub_21E791658(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void sub_21E7921FC(char a1, uint64_t a2, uint64_t (*a3)(), uint64_t a4, uint64_t (*a5)(), uint64_t a6, double a7, double a8)
{
  v16 = objc_opt_self();
  v27 = a3;
  v28 = a4;
  aBlock = MEMORY[0x277D85DD0];
  v24 = 1107296256;
  v25 = sub_21E792C28;
  v26 = &block_descriptor_53;
  v17 = _Block_copy(&aBlock);

  v18 = [v16 nc:v17 applyHighFrameRate:?];
  _Block_release(v17);
  if (v18)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v18;
    v20 = [v8 animator];
    v27 = sub_21E79E1A4;
    v28 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v24 = 1107296256;
    v25 = sub_21E792C28;
    v26 = &block_descriptor_60;
    v21 = _Block_copy(&aBlock);

    if (a5)
    {
      v27 = a5;
      v28 = a6;
      aBlock = MEMORY[0x277D85DD0];
      v24 = 1107296256;
      v25 = sub_21E799760;
      v26 = &block_descriptor_63;
      a5 = _Block_copy(&aBlock);
    }

    [v20 animateUsingSpringWithTension:a1 & 1 friction:a2 interactive:v21 type:a5 animations:a7 completion:a8];
    _Block_release(a5);
    _Block_release(v21);

    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_21E792694(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t NCNotificationRootModernList.animateUsingSpring(withTension:friction:interactive:type:animations:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(), void *a6, double a7, double a8)
{
  v34.super_class = NCNotificationRootModernList;
  v17 = objc_msgSendSuper2(&v34, sel_rootListView);
  v18 = [v17 traitCollection];

  v19 = [v18 _backlightLuminance];
  if (v19 + 1 >= 3 && v19 == 2)
  {
    v21 = NCDefaultAnimator(v20);
  }

  else
  {
    v21 = *&v8[OBJC_IVAR___NCNotificationRootModernList_cacheNoAnimationAnimator];
  }

  v22 = v21;
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = a2;
  v23[5] = v8;
  v32 = sub_21E792C84;
  v33 = v23;
  aBlock = MEMORY[0x277D85DD0];
  v29 = 1107296256;
  v30 = sub_21E792C28;
  v31 = &block_descriptor_48;
  v24 = _Block_copy(&aBlock);

  v25 = v8;

  if (a5)
  {
    v32 = a5;
    v33 = a6;
    aBlock = MEMORY[0x277D85DD0];
    v29 = 1107296256;
    v30 = sub_21E799760;
    v31 = &block_descriptor_51_0;
    v26 = _Block_copy(&aBlock);
  }

  else
  {
    v26 = 0;
  }

  [v22 animateUsingSpringWithTension:a1 & 1 friction:a2 interactive:v24 type:v26 animations:a7 completion:a8];
  _Block_release(v26);
  _Block_release(v24);
  return swift_unknownObjectRelease();
}

id NCDefaultAnimator(uint64_t a1)
{
  if (NCDefaultAnimator_onceToken != -1)
  {
    NCDefaultAnimator_cold_1();
  }

  v2 = NCDefaultAnimator_Animator;

  return v2;
}

void sub_21E792A60(char a1, double (*a2)(uint64_t a1, uint64_t a2), uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v14 = objc_opt_self();
  v22 = a2;
  v23 = a3;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_21E792C28;
  v21 = &block_descriptor_164_0;
  v15 = _Block_copy(&v18);

  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 24) = a5;
  v22 = sub_21E7997C0;
  v23 = v16;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_21E799760;
  v21 = &block_descriptor_170_0;
  v17 = _Block_copy(&v18);
  sub_21E792C10(a4, a5);

  [v14 _animateUsingSpringWithTension_friction_interactive_animations_completion_];
  _Block_release(v17);
  _Block_release(v15);
}

uint64_t sub_21E792C14(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_21E792C28(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

void sub_21E792C94()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  if (v1 == 4 || v1 == 2)
  {
    sub_21E8CB974();
  }
}

Swift::Void __swiftcall NCNotificationRootModernList.updateListViewVisibleRect(for:)(CGSize a1)
{
  v2 = *&a1.height;
  v3 = *&a1.width;
  v10.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v10, sel_updateListViewVisibleRectForSize_);
  v4 = v1 + OBJC_IVAR___NCNotificationRootModernList_layout;
  *(v4 + 88) = v3;
  *(v4 + 96) = v2;
  if (qword_280D041F8 != -1)
  {
    swift_once();
  }

  if (qword_280D05F70)
  {
    v5 = *(v4 + 64);
    v6 = *(v4 + 80);
    v7 = *(v4 + 32);
    v11[3] = *(v4 + 48);
    v11[4] = v5;
    v11[5] = v6;
    v8 = *(v4 + 16);
    v11[0] = *v4;
    v12 = *(v4 + 96);
    v11[1] = v8;
    v11[2] = v7;

    sub_21E78A844(v11, v9);
    sub_21E7935C0(v11);
    sub_21E78AACC(v11);
  }

  sub_21E79411C(v3, v2, 0);
}

uint64_t sub_21E79316C(uint64_t result, int a2, int a3)
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

void sub_21E7931AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B00, &qword_21E949108);
  sub_21E929728();
  sub_21E929718();
  v8 = BYTE1(v27);
  if ((v29 & 0x100) != 0)
  {
    goto LABEL_3;
  }

  if ((v27 & 0x100) != 0)
  {
    goto LABEL_6;
  }

  v8 = v27;
  if (v29)
  {
LABEL_3:
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else if ((v27 & 1) == 0 && CGRectEqualToRect(v28, v26))
  {
    goto LABEL_7;
  }

LABEL_6:
  sub_21E929718();
  if ((v29 & 0x100) != 0)
  {
LABEL_7:

    return;
  }

  size = v28.size;
  v9 = sub_21E795604(a3, a4);
  v10 = 0;
  if (v29)
  {
    v11 = 0.0;
    v12 = 0;
    v28.origin.y = 0.0;
    v28.size.width = 0.0;
  }

  else
  {
    type metadata accessor for CGRect(0);
    v11 = v13;
    v12 = sub_21E795D68(&unk_280D03C80, type metadata accessor for CGRect, &unk_21E948A60);
    v10 = swift_allocObject();
    *(v10 + 16) = v28.origin;
    *(v10 + 32) = size;
  }

  *&v28.origin.x = v10;
  v28.size.height = v11;
  v29 = v12;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel, &unk_21E948CB8);
  sub_21E9297A8();

  *&v26.origin.x = v7;
  swift_getKeyPath();
  sub_21E9297C8();

  v14 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v15 = *&v7[v14];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v14] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = sub_21E924DE0(v15);
  *&v7[v14] = v15;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (v9 >= v15[2])
  {
LABEL_25:
    __break(1u);
    return;
  }

  v17 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v18 = v15 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v9;
  sub_21E8B4BF0(&v28, &v26, &qword_27CED7AF8, &qword_21E949100);
  height = v26.size.height;
  if (*&v26.size.height)
  {
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(&v26, *&v26.size.height);
    v21 = (*(v20 + 16))(COERCE_CGFLOAT(*&height), v20);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(&v26);
  }

  else
  {
    sub_21E8B4CAC(&v26, &qword_27CED7AF8, &qword_21E949100);
    v23 = 0xE500000000000000;
    v21 = 0x3E6C696E3CLL;
  }

  v24 = (v18 + *(v17 + 24));
  *v24 = v21;
  v24[1] = v23;
  *&v7[v14] = v15;
  swift_endAccess();

  *&v26.origin.x = v7;
  swift_getKeyPath();
  sub_21E9297B8();

  sub_21E8B4CAC(&v28, &qword_27CED7AF8, &qword_21E949100);
}

void sub_21E7935C0(uint64_t a1)
{
  v2 = v1;
  v59 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CED8460, &qword_21E94A320);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = &v54 - v4;
  v60 = type metadata accessor for NotificationListLayoutValidator.LayoutState(0);
  v5 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v54 - v8;
  MEMORY[0x28223BE20](v10);
  v56 = &v54 - v11;
  v12 = sub_21E92A378();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  KeyPath = swift_getKeyPath();
  *&v62[0] = v1;
  sub_21E786D0C(&qword_280D041F0, type metadata accessor for NotificationListLayoutValidator, &unk_21E94A1EC);
  sub_21E9297A8();

  if (*(v1 + 161) == 1)
  {
    sub_21E90EE4C();
    *v15 = sub_21E92A6C8();
    (*(v13 + 104))(v15, *MEMORY[0x277D85200], v12);
    v17 = sub_21E92A3A8();
    (*(v13 + 8))(v15, v12);
    if ((v17 & 1) == 0)
    {
      goto LABEL_45;
    }

    swift_getKeyPath();
    *&v62[0] = v2;
    sub_21E9297A8();

    swift_beginAccess();
    v18 = *(v2 + 32);
    v19 = *(v18 + 16);
    if (!v19 || (v20 = v18 + ((v5[80] + 32) & ~v5[80]) + *(v5 + 9) * (v19 - 1) + *(v60 + 24), v62[3] = *(v20 + 48), v62[4] = *(v20 + 64), v62[5] = *(v20 + 80), v63 = *(v20 + 96), v62[0] = *v20, v62[1] = *(v20 + 16), v62[2] = *(v20 + 32), !sub_21E8E66BC(v62, v59)))
    {
      v57 = v9;
      v21 = v59;
      sub_21E78A844(v59, v61);
      v22 = v56;
      sub_21E929768();
      v23 = v60;
      v24 = *(v60 + 20);
      *&v22[v24] = CACurrentMediaTime();
      v25 = &v22[*(v23 + 24)];
      v26 = *(v21 + 16);
      *v25 = *v21;
      *(v25 + 1) = v26;
      *(v25 + 12) = *(v21 + 96);
      v27 = *(v21 + 80);
      *(v25 + 4) = *(v21 + 64);
      *(v25 + 5) = v27;
      v28 = *(v21 + 48);
      *(v25 + 2) = *(v21 + 32);
      *(v25 + 3) = v28;
      swift_getKeyPath();
      v61[0] = v2;
      sub_21E9297A8();

      v61[0] = v2;
      swift_getKeyPath();
      sub_21E9297C8();

      swift_beginAccess();
      v17 = *(v2 + 32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 32) = v17;
      KeyPath = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_46;
      }

      while (1)
      {
        v31 = *(v17 + 16);
        v30 = *(v17 + 24);
        if (v31 >= v30 >> 1)
        {
          v17 = sub_21E924520((v30 > 1), v31 + 1, 1, v17);
        }

        *(v17 + 16) = v31 + 1;
        v32 = (KeyPath[80] + 32) & ~KeyPath[80];
        v33 = *(KeyPath + 9);
        sub_21E922C8C(v56, v17 + v32 + v33 * v31, type metadata accessor for NotificationListLayoutValidator.LayoutState);
        *(v2 + 32) = v17;
        swift_endAccess();
        v61[0] = v2;
        swift_getKeyPath();
        sub_21E9297B8();

        v34 = CACurrentMediaTime();
        swift_getKeyPath();
        v61[0] = v2;
        sub_21E9297A8();

        v35 = *(v2 + 32);
        if (!*(v35 + 16))
        {
          v38 = 0;
          goto LABEL_27;
        }

        v36 = v57;
        sub_21E922CF4(v35 + v32, v57);
        if (v34 - *(v36 + *(v60 + 20)) <= 15.0)
        {
          break;
        }

        v56 = (KeyPath + 56);
        KeyPath = &unk_21E94A2A8;
        v37 = v57;
        while (1)
        {
          swift_getKeyPath();
          v61[0] = v2;
          sub_21E9297A8();

          v38 = BSFloatApproximatelyEqualToFloat();
          swift_getKeyPath();
          v61[0] = v2;
          sub_21E9297A8();

          v61[0] = v2;
          swift_getKeyPath();
          sub_21E9297C8();

          swift_beginAccess();
          v17 = *(v2 + 32);
          if (!*(v17 + 16))
          {
            break;
          }

          v39 = v58;
          sub_21E922CF4(v17 + v32, v58);
          (*v56)(v39, 0, 1, v60);
          sub_21E922DB4(v39);
          v40 = *(v17 + 16);
          if (!v40)
          {
            goto LABEL_44;
          }

          v41 = swift_isUniquelyReferenced_nonNull_native();
          *(v2 + 32) = v17;
          if (!v41 || (v40 - 1) > *(v17 + 24) >> 1)
          {
            v17 = sub_21E924520(v41, v40, 1, v17);
            *(v2 + 32) = v17;
          }

          sub_21E922D58(v17 + v32);
          if (v33 > 0 || v17 + v32 >= v17 + v32 + v33 + (*(v17 + 16) - 1) * v33)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          --*(v17 + 16);
          *(v2 + 32) = v17;
          swift_endAccess();
          v61[0] = v2;
          swift_getKeyPath();
          sub_21E9297B8();

          sub_21E922D58(v37);
          swift_getKeyPath();
          v61[0] = v2;
          sub_21E9297A8();

          v42 = *(v2 + 32);
          if (!*(v42 + 16))
          {
            goto LABEL_27;
          }

          sub_21E922CF4(v42 + v32, v37);
          if (v34 - *(v37 + *(v60 + 20)) <= 15.0)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        v17 = sub_21E924520(0, *(v17 + 16) + 1, 1, v17);
        *(v2 + 32) = v17;
      }

      v38 = 0;
LABEL_26:
      sub_21E922D58(v57);
LABEL_27:
      v43 = *(*v59 + 16);
      if (!v43 || (v44 = *(*v59 + 24 * v43 + 24), swift_getKeyPath(), v61[0] = v2, sub_21E9297A8(), , *(v2 + 40) >= v44))
      {
        if (!v38)
        {
          return;
        }

        swift_getKeyPath();
        v61[0] = v2;
        sub_21E9297A8();

        v45 = *(v2 + 32);
        v46 = *(v45 + 16);
        if (v46)
        {
          v47 = *(v60 + 24);
          v48 = v45 + v32;

          v44 = 0.0;
          v49 = v55;
          do
          {
            sub_21E922CF4(v48, v49);
            v50 = *(v49 + v47);
            v51 = *(v50 + 16);
            if (v51)
            {
              v52 = v50 + 24 * v51;
              if (v44 <= *(v52 + 24))
              {
                v44 = *(v52 + 24);
              }
            }

            sub_21E922D58(v49);
            v48 += v33;
            --v46;
          }

          while (v46);
        }

        else
        {
          v44 = 0.0;
        }

        if (*(v2 + 40) == v44)
        {
          *(v2 + 40) = v44;
          return;
        }
      }

      v53 = swift_getKeyPath();
      MEMORY[0x28223BE20](v53);
      *(&v54 - 2) = v2;
      *(&v54 - 1) = v44;
      v61[0] = v2;
      sub_21E929798();
    }
  }
}

void sub_21E79411C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  if (a3)
  {
    v187.receiver = v3;
    v187.super_class = NCNotificationRootModernList;
    v5 = objc_msgSendSuper2(&v187, sel_rootListView);
    [v5 frame];
  }

  v186.receiver = v3;
  v186.super_class = NCNotificationRootModernList;
  v6 = objc_msgSendSuper2(&v186, sel_rootListView);
  v7 = *&v3[OBJC_IVAR___NCNotificationRootModernList_exclusionManager];
  v167 = vaddq_f64(*&v7[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager__rubberbandingOffset], *&v7[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager__animationOffset]);
  v8 = *&v7[OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_scrollView];
  v9 = v7;
  v10 = [v8 traitCollection];
  [v10 displayScale];

  UIPointRoundToScale();
  v12 = v11;

  [v6 setAdditionalYOffset_];
  [v6 contentOffset];
  [v6 contentOffset];
  v13 = CGRectMake_1();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v185.receiver = v4;
  v185.super_class = NCNotificationRootModernList;
  v20 = objc_msgSendSuper2(&v185, sel_rootListView);
  [v20 setVisibleRect_];

  [v6 contentOffset];
  v21 = &v4[OBJC_IVAR___NCNotificationRootModernList_layout];
  *(v21 + 7) = v22;
  *(v21 + 1) = v22;
  if (qword_280D041F8 != -1)
  {
LABEL_113:
    swift_once();
  }

  if (qword_280D05F70)
  {
    v23 = *(v21 + 5);
    v190[4] = *(v21 + 4);
    v190[5] = v23;
    v191 = *(v21 + 12);
    v24 = *(v21 + 1);
    v190[0] = *v21;
    v190[1] = v24;
    v25 = *(v21 + 3);
    v190[2] = *(v21 + 2);
    v190[3] = v25;

    sub_21E78A844(v190, v188);
    sub_21E7935C0(v190);
    sub_21E78AACC(v190);
  }

  *(v21 + 8) = v12;
  *(v21 + 2) = v12;
  if (qword_280D05F70)
  {
    v26 = *(v21 + 5);
    v188[4] = *(v21 + 4);
    v188[5] = v26;
    v189 = *(v21 + 12);
    v27 = *(v21 + 1);
    v188[0] = *v21;
    v188[1] = v27;
    v28 = *(v21 + 3);
    v188[2] = *(v21 + 2);
    v188[3] = v28;

    sub_21E78A844(v188, &v177);
    sub_21E7935C0(v188);
    sub_21E78AACC(v188);

    v12 = *(v21 + 2);
  }

  v29 = *v21;
  v30 = *(v21 + 1);

  v31.n128_f64[0] = v12;
  sub_21E783428(v29, &v177, v30, v31);

  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = *v21;
  v34 = *(v21 + 1);
  v35 = *(v21 + 2);

  v36.n128_u64[0] = v34;
  v37.n128_u64[0] = v35;
  v39 = sub_21E783334(v36, v37, "/Library/Caches/com.apple.xbs/Sources/UserNotificationsUIKit/UserNotificationsUIKit/NotificationRootModernList.swift", 116, 2, 2211, v33, v38);
  v41 = v40;
  v43 = v42;

  if (v39 != 5)
  {
    v44 = v41;
    v12 = v43;
    v45 = *v21;
    v46 = sub_21E8E9218(v39, *v21, v44, v43);
    if ((v47 & 1) == 0)
    {
      v48 = *(v45 + 16);
      if (v46 < v48)
      {
        v49 = (v45 + 24 * v46 + 72);
        v50 = v46;
        while (v48 - 1 != v50)
        {
          if (++v50 >= v48)
          {
            __break(1u);
LABEL_112:
            __break(1u);
            goto LABEL_113;
          }

          if (v46 < -1)
          {
            goto LABEL_112;
          }

          v51 = *(v49 - 1);
          v52 = *v49;
          v49 += 3;
          if (v52 > v51 || v51 > v43)
          {
            *(v32 + 16) = 1;
            break;
          }
        }
      }
    }
  }

  v54 = sub_21E7953E4();
  sub_21E7950DC(v54, v55, 0x6E6F697469736F70uLL, 0xE800000000000000);

  v56 = v177;
  v57 = v184;
  v58 = v184 >> 6;
  if (!v58)
  {
    goto LABEL_44;
  }

  if (v58 != 1)
  {
    v79 = v181 | v182 | *&v183;
    if (!(v179 | v178 | v177 | v180 | v79) && v184 == 128)
    {
      v170.receiver = v4;
      v170.super_class = NCNotificationRootModernList;
      v80 = objc_msgSendSuper2(&v170, &selRef_serviceForClientIdentifier_ + 3);
      objc_opt_self();
      v81 = [swift_dynamicCastObjCClassUnconditional() isTracking];

      if (v81)
      {
        v168.receiver = v4;
        v168.super_class = NCNotificationRootModernList;
        v82 = objc_msgSendSuper2(&v168, &selRef_serviceForClientIdentifier_ + 3);
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
        v84 = v83;

        if (v84 > 0.0)
        {
          sub_21E8C7CA4();
        }
      }

      v169.receiver = v4;
      v169.super_class = NCNotificationRootModernList;
      v85 = objc_msgSendSuper2(&v169, &selRef_serviceForClientIdentifier_ + 3);
      v86 = [v85 traitCollection];

      LODWORD(v85) = _NCIsNotVerticalSpaceConstrained(v86);
      if (v85)
      {
        v87 = 0;
      }

      else
      {
        v87 = 4;
      }

      sub_21E8D0744(v87, v4, v32);
      goto LABEL_96;
    }

    if (v184 == 128 && v177 == 1 && !(v179 | v178 | v180 | v79))
    {
      goto LABEL_96;
    }

    v56 = 4;
LABEL_44:
    sub_21E8D0744(v56, v4, v32);
    goto LABEL_96;
  }

  v59 = v183;
  if (v177 != 3)
  {
    if (v177 != 1)
    {
      if (!v177)
      {
        if (v180 != 4)
        {
          if (v180 == 1)
          {
            v60 = sub_21E786808(2);
            if (!v60)
            {
LABEL_120:
              __break(1u);
              goto LABEL_121;
            }

            v61 = v60;
            v62 = [v60 listView];

            if (!v62)
            {
LABEL_121:
              __break(1u);
              goto LABEL_122;
            }

            [v62 setRevealPercentage_];

            v63 = sub_21E786808(1);
            if (!v63)
            {
LABEL_122:
              __break(1u);
              goto LABEL_123;
            }

            v64 = v63;
            v65 = [v63 listView];

            if (!v65)
            {
LABEL_123:
              __break(1u);
              goto LABEL_124;
            }

            [v65 setRevealPercentage_];

            v66 = sub_21E786808(0xA);
            if (v66)
            {
              v67 = v66;
              objc_opt_self();
              v68 = swift_dynamicCastObjCClass();
              if (v68)
              {
                v69 = [v68 listView];

                if (!v69)
                {
LABEL_124:
                  __break(1u);
                  return;
                }

                [v69 setRevealPercentage_];
                v67 = v69;
              }
            }

            v172.receiver = v4;
            v172.super_class = NCNotificationRootModernList;
            v70 = objc_msgSendSuper2(&v172, &selRef_serviceForClientIdentifier_ + 3);
            [v70 visibleRectBottomMarginForRollUnder];
            v72 = v71;

            if (v72 != 0.0)
            {
              v73 = 1.0 - v59;
              if (v72 <= 0.0)
              {
                v73 = v59;
              }

              v74 = fmax(v72, 0.0);
              if (v72 <= 0.0)
              {
                v75 = v72;
              }

              else
              {
                v75 = 0.0;
              }

              v72 = v75 + v73 * (v74 - v75);
            }

            sub_21E8D0A18(v72);
            v171.receiver = v4;
            v171.super_class = NCNotificationRootModernList;
            v76 = objc_msgSendSuper2(&v171, &selRef_serviceForClientIdentifier_ + 3);
            [v76 visibleRectBottomMarginForRollUnder];
            v78 = v77;

            sub_21E8D0BE0(v78);
            sub_21E8D5ED4(0, 0.0);
            v4[OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection] = 0;
            goto LABEL_95;
          }

          goto LABEL_67;
        }

LABEL_64:
        v91 = sub_21E786808(0xA);
        if (v91)
        {
          v92 = v91;
          objc_opt_self();
          v93 = swift_dynamicCastObjCClass();
          if (!v93)
          {
          }
        }

        else
        {
          v93 = 0;
        }

        [v4 _setRevealed_forSection_];
        swift_unknownObjectRelease();
        v110 = sub_21E786808(1);
        if (!v110)
        {
          goto LABEL_118;
        }

        v111 = v110;
        [v4 _setRevealed_forSection_];

        v112 = sub_21E786808(2);
        if (!v112)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        v113 = v112;
        [v4 _setRevealed_forSection_];

        v175.receiver = v4;
        v175.super_class = NCNotificationRootModernList;
        v114 = objc_msgSendSuper2(&v175, &selRef_serviceForClientIdentifier_ + 3);
        objc_opt_self();
        [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
        v116 = v115;

        if (v116 <= 0.0)
        {
          goto LABEL_87;
        }

        v117 = sub_21E786808(0xA);
        if (!v117)
        {
          goto LABEL_87;
        }

        v118 = v117;
        objc_opt_self();
        v119 = swift_dynamicCastObjCClass();
        if (v119)
        {
          v120 = [v119 isCollapsed];

          if (v120)
          {
            goto LABEL_87;
          }

          v121 = sub_21E786808(0xA);
          if (!v121)
          {
            goto LABEL_87;
          }

          v118 = v121;
          objc_opt_self();
          v122 = swift_dynamicCastObjCClass();
          if (v122)
          {
            [v122 setIsCollapsed_];
          }
        }

LABEL_87:
        sub_21E8D0A18(0.0);
        v174.receiver = v4;
        v174.super_class = NCNotificationRootModernList;
        v123 = objc_msgSendSuper2(&v174, &selRef_serviceForClientIdentifier_ + 3);
        [v123 visibleRectBottomMarginForRollUnder];
        v125 = v124;

        if (v125 != 0.0)
        {
          v126 = 1.0 - v59;
          if (v125 <= 0.0)
          {
            v126 = v59;
          }

          v127 = fmax(v125, 0.0);
          if (v125 <= 0.0)
          {
            v128 = v125;
          }

          else
          {
            v128 = 0.0;
          }

          v125 = v128 + v126 * (v127 - v128);
        }

        sub_21E8D0BE0(v125);
        sub_21E8D5ED4(v57 & 1, v59);
        v4[OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection] = 1;
LABEL_95:
        sub_21E790FD8();
        goto LABEL_96;
      }

      if (v180 == 4)
      {
        goto LABEL_64;
      }

LABEL_67:
      if (qword_280D03F40 != -1)
      {
        swift_once();
      }

      v94 = sub_21E929A78();
      __swift_project_value_buffer(v94, qword_280D05F58);
      v95 = sub_21E929A58();
      v96 = sub_21E92A628();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v176 = v98;
        *v97 = 136446210;
        v99 = sub_21E7953E4();
        v101 = sub_21E79841C(v99, v100, &v176);

        *(v97 + 4) = v101;
        _os_log_impl(&dword_21E77E000, v95, v96, "Unexpected position %{public}s", v97, 0xCu);
        v102 = __swift_destroy_boxed_opaque_existential_1Tm(v98);
        MEMORY[0x223D65FB0](v98, -1, -1, v102);
        MEMORY[0x223D65FB0](v97, -1, -1);
      }

      goto LABEL_96;
    }

    if (v180 == 4)
    {
      goto LABEL_64;
    }

    if (v180 != 2)
    {
      goto LABEL_67;
    }
  }

  v88 = sub_21E786808(0xA);
  if (v88)
  {
    v89 = v88;
    objc_opt_self();
    v90 = swift_dynamicCastObjCClass();
    if (!v90)
    {
    }
  }

  else
  {
    v90 = 0;
  }

  [v4 _setRevealed_forSection_];
  swift_unknownObjectRelease();
  v103 = sub_21E786808(1);
  if (!v103)
  {
    goto LABEL_116;
  }

  v104 = v103;
  [v4 _setRevealed_forSection_];

  v105 = sub_21E786808(2);
  if (!v105)
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  v106 = v105;
  [v4 _setRevealed_forSection_];

  sub_21E8D0A18(0.0);
  v173.receiver = v4;
  v173.super_class = NCNotificationRootModernList;
  v107 = objc_msgSendSuper2(&v173, &selRef_serviceForClientIdentifier_ + 3);
  [v107 visibleRectBottomMarginForRollUnder];
  v109 = v108;

  sub_21E8D0BE0(v109);
  sub_21E8D5ED4(v57 & 1, v59);
  v4[OBJC_IVAR___NCNotificationRootModernList_expandingIncomingSection] = v59 > 0.0;
  sub_21E790FD8();
LABEL_96:
  v129 = sub_21E786808(0xB);
  if (!v129)
  {
    __break(1u);
    goto LABEL_115;
  }

  v130 = v129;
  [v4 _setRevealed_forSection_];

  v131 = sub_21E786808(0xC);
  if (!v131)
  {
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  v132 = v131;
  [v4 _setRevealed_forSection_];

  [v6 setShowsVerticalScrollIndicator_];
  v133 = sub_21E786808(0xA);
  if (v133)
  {
    v134 = v133;
    objc_opt_self();
    v135 = swift_dynamicCastObjCClass();
    if (v135 && (v136 = v135, (v137 = [v135 listView]) != 0))
    {
      v138 = v137;
      v139 = [v138 window];
      v140 = v138;
      if (v139)
      {
        v141 = v139;
        [v138 bounds];
        v143 = v142;
        v145 = v144;
        v147 = v146;
        v149 = v148;

        [v138 convertRect:v141 toCoordinateSpace:{v143, v145, v147, v149}];
        v151 = v150;
        v153 = v152;
        v155 = v154;
        v157 = v156;
        [v141 bounds];
        v193.origin.x = v151;
        v193.origin.y = v153;
        v193.size.width = v155;
        v193.size.height = v157;
        [v136 setIsOnScreen_];
        v140 = v141;
      }
    }

    else
    {
      v140 = v134;
    }
  }

  sub_21E796184(&v177);
  sub_21E8C800C(&v177);
  sub_21E8C8A88(&v177);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670, &qword_21E9477E0);
  v158 = swift_allocObject();
  *(v158 + 16) = xmmword_21E947B30;
  v159 = sub_21E786808(0xA);
  v160 = 0.0;
  if (v159)
  {
    v161 = v159;
    objc_opt_self();
    v162 = swift_dynamicCastObjCClass();
    if (v162)
    {
      [v162 expandedPercentage];
      v164 = v163;

      v160 = v164 * 100.0;
    }

    else
    {
    }
  }

  *(v158 + 56) = MEMORY[0x277D85048];
  *(v158 + 64) = sub_21E79668C();
  *(v158 + 32) = v160;
  *(v158 + 96) = MEMORY[0x277D837D0];
  *(v158 + 104) = sub_21E7966E0();
  *(v158 + 72) = 37;
  *(v158 + 80) = 0xE100000000000000;
  v165 = sub_21E92A468();
  sub_21E7950DC(v165, v166, 0x646E61707865uLL, 0xE600000000000000);
}

void sub_21E7950DC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v24[3] = MEMORY[0x277D837D0];
  v24[4] = &off_282FE6A08;
  v24[0] = a1;
  v24[1] = a2;
  v6 = qword_280D047F8;

  if (v6 != -1)
  {
    swift_once();
  }

  if (!qword_280D04800)
  {
    goto LABEL_11;
  }

  v7 = qword_280D04800;
  v8 = sub_21E795604(a3, a4);
  sub_21E795EE0(v24, v23);
  swift_getKeyPath();
  sub_21E795F44(qword_280D04750, type metadata accessor for ListDebugHUDModel, &unk_21E948CB8);
  sub_21E9297A8();

  v20[0] = v7;
  swift_getKeyPath();
  sub_21E9297C8();

  v9 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v10 = *&v7[v9];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v9] = v10;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = sub_21E924DE0(v10);
  *&v7[v9] = v10;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v8 < v10[2])
  {
    v12 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
    v13 = v10 + ((*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80)) + *(*(v12 - 8) + 72) * v8;
    sub_21E795F8C(v23, v20);
    v14 = v21;
    if (v21)
    {
      v15 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v16 = (*(v15 + 16))(v14, v15);
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }

    else
    {
      sub_21E796078(v20);
      v18 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    v19 = (v13 + *(v12 + 24));
    *v19 = v16;
    v19[1] = v18;
    sub_21E796078(v23);
    *&v7[v9] = v10;
    swift_endAccess();

    v20[0] = v7;
    swift_getKeyPath();
    sub_21E9297B8();

LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_21E7953E4()
{
  v1 = *v0;
  v2 = *(v0 + 56);
  if (!(v2 >> 6))
  {
    v12 = v0[1];
    v13 = v0[2];
    v22 = 91;
    v11 = *v0;
    goto LABEL_5;
  }

  v3 = *(v0 + 3);
  if (v2 >> 6 == 1)
  {
    v4 = v0[1];
    v5 = v0[2];
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670, &qword_21E9477E0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_21E947520;
    *(v9 + 56) = MEMORY[0x277D85048];
    *(v9 + 64) = sub_21E79668C();
    *(v9 + 32) = v8 * 100.0;
    v22 = sub_21E92A468();
    MEMORY[0x223D64660](5975077, 0xE300000000000000);
    v10 = sub_21E8C11B8(SLOBYTE(v1), v4, v5);
    MEMORY[0x223D64660](v10);

    MEMORY[0x223D64660](1530801501, 0xE400000000000000);
    v11 = v3;
    v12 = v6;
    v13 = v7;
LABEL_5:
    v14 = sub_21E8C11B8(v11, v12, v13);
    MEMORY[0x223D64660](v14);

    MEMORY[0x223D64660](93, 0xE100000000000000);
    return v22;
  }

  v16 = *(v0 + 2) | *(v0 + 1);
  v17 = *(v0 + 4) | *(v0 + 5) | *(v0 + 6);
  if (!(v16 | *&v1 | v3 | v17) && v2 == 128)
  {
    return 0x706F5465766F6261;
  }

  v18 = v2 == 128;
  v19 = v16 | v3 | v17;
  v21 = *&v1 == 1 && v19 == 0;
  if (v18 && v21)
  {
    return 0x7974706D65;
  }

  else
  {
    return 0x746F42776F6C6562;
  }
}

uint64_t sub_21E795604(unint64_t a1, uint64_t a2)
{
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AB8, &qword_21E948CD8);
  MEMORY[0x28223BE20](v72);
  v6 = (&v63 - v5);
  v73 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v7 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  KeyPath = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v76 = v2;
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel, &unk_21E948CB8);
  sub_21E9297A8();

  v69 = v2;
  v10 = *(v2 + OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItemIndexByLabel);
  if (*(v10 + 16))
  {

    v11 = sub_21E795DB0(a1, a2);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);
LABEL_44:

      return v13;
    }
  }

  swift_getKeyPath();
  v14 = v69;
  v76 = v69;
  sub_21E9297A8();

  v15 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v16 = *(v14 + v15);

  sub_21E929768();
  v17 = v73;
  v18 = (KeyPath + *(v73 + 20));
  *v18 = a1;
  v18[1] = a2;
  v19 = (KeyPath + *(v17 + 24));
  *v19 = 0x3E7465736E753CLL;
  v19[1] = 0xE700000000000000;
  v74 = v16;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_48:
    v74 = sub_21E9244D0(0, v74[2] + 1, 1, v74);
  }

  v21 = v74[2];
  v20 = v74[3];
  v68 = a2;
  if (v21 >= v20 >> 1)
  {
    v74 = sub_21E9244D0((v20 > 1), v21 + 1, 1, v74);
  }

  v67 = a1;
  v22 = v74;
  v74[2] = v21 + 1;
  v23 = v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v70 = *(v7 + 72);
  sub_21E910224(KeyPath, v23 + v70 * v21, type metadata accessor for ListDebugHUDModel.PlotItem);
  v71 = v23;
  v75[0] = v23;
  v75[1] = v21 + 1;
  sub_21E90CBD8(v75);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v75[0] = v69;
  sub_21E929798();

  a2 = v22[2];
  if (!a2)
  {
    v7 = MEMORY[0x277D84F98];
LABEL_41:

    sub_21E8FEFD8(v59);
    if (!*(v7 + 16))
    {
      goto LABEL_51;
    }

    v60 = sub_21E795DB0(v67, v68);
    if ((v61 & 1) == 0)
    {
      goto LABEL_51;
    }

    v13 = *(*(v7 + 56) + 8 * v60);

    goto LABEL_44;
  }

  a1 = 0;
  v7 = MEMORY[0x277D84F98];
  while (1)
  {
    if (a1 >= v74[2])
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v24 = v71 + a1 * v70;
    v25 = v6 + *(v72 + 48);
    *v6 = a1;
    sub_21E91028C(v24, v25, type metadata accessor for ListDebugHUDModel.PlotItem);
    v26 = (v25 + *(v73 + 20));
    v28 = *v26;
    v27 = v26[1];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75[0] = v7;
    KeyPath = sub_21E795DB0(v28, v27);
    v31 = *(v7 + 16);
    v32 = (v30 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_46;
    }

    v34 = v30;
    if (*(v7 + 24) >= v33)
    {
      break;
    }

    sub_21E90A37C(v33, isUniquelyReferenced_nonNull_native);
    v7 = v75[0];
    v35 = sub_21E795DB0(v28, v27);
    if ((v34 & 1) != (v36 & 1))
    {
      goto LABEL_50;
    }

    KeyPath = v35;
    if (v34)
    {
LABEL_10:
      *(*(v7 + 56) + 8 * KeyPath) = a1;
      goto LABEL_11;
    }

LABEL_20:
    *(v7 + 8 * (KeyPath >> 6) + 64) |= 1 << KeyPath;
    v37 = (*(v7 + 48) + 16 * KeyPath);
    *v37 = v28;
    v37[1] = v27;
    *(*(v7 + 56) + 8 * KeyPath) = a1;
    v38 = *(v7 + 16);
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_47;
    }

    *(v7 + 16) = v40;

LABEL_11:
    ++a1;
    sub_21E8B4CAC(v6, &qword_27CED7AB8, &qword_21E948CD8);
    if (a1 == a2)
    {
      goto LABEL_41;
    }
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    if (v30)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AC0, &qword_21E948D30);
  v66 = sub_21E92A9B8();
  if (!*(v7 + 16))
  {
LABEL_38:

    v7 = v66;
    if (v34)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

  v41 = (v66 + 64);
  v42 = (v7 + 64);
  v43 = ((1 << *(v66 + 32)) + 63) >> 6;
  v64 = v7 + 64;
  if (v66 != v7 || v41 >= &v42[8 * v43])
  {
    memmove(v41, v42, 8 * v43);
  }

  v44 = 0;
  *(v66 + 16) = *(v7 + 16);
  v45 = 1 << *(v7 + 32);
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  else
  {
    v46 = -1;
  }

  v47 = v46 & *(v7 + 64);
  v48 = (v45 + 63) >> 6;
  if (v47)
  {
    do
    {
      v49 = __clz(__rbit64(v47));
      v65 = (v47 - 1) & v47;
LABEL_36:
      v52 = v49 | (v44 << 6);
      v53 = (*(v7 + 48) + 16 * v52);
      v55 = *v53;
      v54 = v53[1];
      v56 = *(*(v7 + 56) + 8 * v52);
      v57 = v66;
      v58 = (*(v66 + 48) + 16 * v52);
      *v58 = v55;
      v58[1] = v54;
      *(*(v57 + 56) + 8 * v52) = v56;

      v47 = v65;
    }

    while (v65);
  }

  v50 = v44;
  while (1)
  {
    v44 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      break;
    }

    if (v44 >= v48)
    {
      goto LABEL_38;
    }

    v51 = *(v64 + 8 * v44);
    ++v50;
    if (v51)
    {
      v49 = __clz(__rbit64(v51));
      v65 = (v51 - 1) & v51;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_50:
  sub_21E92AA98();
  __break(1u);
LABEL_51:
  result = sub_21E92A988();
  __break(1u);
  return result;
}

uint64_t sub_21E795D68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21E795DB0(uint64_t a1, uint64_t a2)
{
  sub_21E92AB28();
  sub_21E92A4A8();
  v4 = sub_21E92AB48();

  return sub_21E795E28(a1, a2, v4);
}

unint64_t sub_21E795E28(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_21E92AA58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_21E795EE0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_21E795F44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21E795F8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AF8, &qword_21E949100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E795FFC()
{
  v1 = *v0;

  return v1;
}

double __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_21E796078(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7AF8, &qword_21E949100);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21E796184(uint64_t a1)
{
  v23.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v23, sel_rootListView);
  v4 = [v3 isTracking];

  if ((v4 & 1) == 0)
  {
    v22.receiver = v1;
    v22.super_class = NCNotificationRootModernList;
    v5 = objc_msgSendSuper2(&v22, sel_rootListView);
    v6 = [v5 isDragging];

    if (!v6)
    {
      v19 = 0;
      goto LABEL_16;
    }
  }

  if ((*(a1 + 56) & 0xC0) == 0x40 && *(a1 + 24) == 4)
  {
    v7 = *(a1 + 48);
    v21.receiver = v1;
    v21.super_class = NCNotificationRootModernList;
    v8 = objc_msgSendSuper2(&v21, sel_rootListView);
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
    v10 = v9;

    v20.receiver = v1;
    v20.super_class = NCNotificationRootModernList;
    v11 = objc_msgSendSuper2(&v20, sel_rootListView);
    objc_opt_self();
    [swift_dynamicCastObjCClassUnconditional() gestureTranslationY];
    v13 = v12;

    v14 = sub_21E786808(0);
    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = v14;
    v16 = v7 < 0.5 && v13 > 0.0;
    v17 = v7 > 0.5 && v10 < 0.0;
    v18 = [v14 count];

    if (v18 >= 1 && (v17 || v16))
    {
      v19 = 1;
LABEL_16:
      sub_21E796374(v19);
    }
  }
}

void sub_21E796374(char a1)
{
  v2 = v1;
  v4 = sub_21E92A378();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21E796644(0, &qword_280D03E40, 0x277D85C78);
  *v7 = sub_21E92A6C8();
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v8 = sub_21E92A3A8();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
LABEL_5:
    v9 = sub_21E929A78();
    __swift_project_value_buffer(v9, qword_280D05F58);
    v10 = sub_21E929A58();
    v11 = sub_21E92A648();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_21E77E000, v10, v11, "Haptics state changed from .perform to .release", v12, 2u);
      MEMORY[0x223D65FB0](v12, -1, -1);
    }

    *(v7 + v2) = 0;
    return;
  }

  v7 = OBJC_IVAR___NCNotificationRootModernList__feedbackHapticsState;
  if (*(v2 + OBJC_IVAR___NCNotificationRootModernList__feedbackHapticsState))
  {
    if (a1)
    {
      return;
    }

    if (qword_280D03F40 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  if (a1)
  {
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
      _os_log_impl(&dword_21E77E000, v14, v15, "Haptics state changed from .release to .perform; Performing haptics", v16, 2u);
      MEMORY[0x223D65FB0](v16, -1, -1);
    }

    *(v7 + v2) = 1;
    [*(v2 + OBJC_IVAR___NCNotificationRootModernList_feedbackGenerator) impactOccurred];
  }
}

uint64_t sub_21E796644(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_21E79668C()
{
  result = qword_280D04A70;
  if (!qword_280D04A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D04A70);
  }

  return result;
}

unint64_t sub_21E7966E0()
{
  result = qword_280D03EF0;
  if (!qword_280D03EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D03EF0);
  }

  return result;
}

uint64_t sub_21E79677C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void (*a6)(uint64_t, uint64_t, double))
{
  v9 = sub_21E92A458();
  v11 = v10;
  v12 = a5;
  a6(v9, v11, a1);
}

void sub_21E7967F8(unint64_t a1, uint64_t a2, double a3)
{
  v23[3] = MEMORY[0x277D85048];
  v23[4] = sub_21E796B0C();
  *v23 = a3;
  if (qword_280D047F8 != -1)
  {
    swift_once();
  }

  if (!qword_280D04800)
  {
    goto LABEL_11;
  }

  v6 = qword_280D04800;
  v7 = sub_21E795604(a1, a2);
  sub_21E795EE0(v23, v22);
  swift_getKeyPath();
  sub_21E795F44(qword_280D04750, type metadata accessor for ListDebugHUDModel, &unk_21E948CB8);
  sub_21E9297A8();

  v19[0] = v6;
  swift_getKeyPath();
  sub_21E9297C8();

  v8 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v9 = *&v6[v8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v6[v8] = v9;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = sub_21E924DE0(v9);
  *&v6[v8] = v9;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  if (v7 < v9[2])
  {
    v11 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
    v12 = v9 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)) + *(*(v11 - 8) + 72) * v7;
    sub_21E795F8C(v22, v19);
    v13 = v20;
    if (v20)
    {
      v14 = v21;
      __swift_project_boxed_opaque_existential_1(v19, v20);
      v15 = (*(v14 + 16))(v13, v14);
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    else
    {
      sub_21E796078(v19);
      v17 = 0xE500000000000000;
      v15 = 0x3E6C696E3CLL;
    }

    v18 = (v12 + *(v11 + 24));
    *v18 = v15;
    v18[1] = v17;
    sub_21E796078(v22);
    *&v6[v8] = v9;
    swift_endAccess();

    v19[0] = v6;
    swift_getKeyPath();
    sub_21E9297B8();

LABEL_11:
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    return;
  }

LABEL_14:
  __break(1u);
}

unint64_t sub_21E796B0C()
{
  result = qword_280D04A88;
  if (!qword_280D04A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D04A88);
  }

  return result;
}

uint64_t sub_21E796B60(uint64_t a1)
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7670, &qword_21E9477E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21E947520;
  *(v4 + 56) = a1;
  *(v4 + 64) = sub_21E79668C();
  *(v4 + 32) = v3;

  return sub_21E92A468();
}

Swift::Void __swiftcall NCNotificationStructuredListView.layoutSubviews()()
{
  v68.super_class = NCNotificationStructuredListView;
  objc_msgSendSuper2(&v68, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 begin];
  [v1 setDisableActions_];
  v2 = *&v0[OBJC_IVAR___NCNotificationStructuredListView_internalToolsOverlayView];
  if (v2)
  {
    [v0 addSubview_];
  }

  v3 = [v0 revealHintView];
  v4 = [v3 superview];

  if (!v4)
  {
    v4 = [v0 revealHintView];
    [v0 addSubview_];
  }

  sub_21E923CF4();
  if (v5 <= 0.0 || (sub_21E923E88(), v6 <= 0.0))
  {
    v24 = *&v0[OBJC_IVAR___NCNotificationStructuredListView_listViewContainerView];
    [v0 bounds];
    [v24 setBounds_];
    [v0 bounds];
    MidX = CGRectGetMidX(v70);
    [v0 bounds];
  }

  else
  {
    [v0 bounds];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    sub_21E923CF4();
    v16 = -v15;
    sub_21E923E88();
    v17 = UIEdgeInsetsInsetRect(v8, v10, v12, v14, 0.0, v16);
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = *&v0[OBJC_IVAR___NCNotificationStructuredListView_listViewContainerView];
    [v24 setBounds_];
    v69.origin.x = v17;
    v69.origin.y = v19;
    v69.size.width = v21;
    v69.size.height = v23;
    v25 = CGRectGetMidX(v69);
    v26 = v23;
    v27 = v21;
    v28 = v19;
    MidX = v25;
    v30 = v17;
  }

  [v24 setCenter_];
  v31 = [v0 listView];
  if (v31)
  {
    v32 = v31;
    [v0 bounds];
    [v32 setFrame_];
  }

  if (v2)
  {
    [v0 bounds];
    [v2 setFrame_];
  }

  [v0 bounds];
  Width = CGRectGetWidth(v71);
  [v0 footerInsets];
  v35 = v34;
  [v0 footerInsets];
  v37 = Width - (v35 + v36);
  [v0 footerInsets];
  v39 = v38;
  [v0 footerInsets];
  v41 = v39 - v40;
  v42 = [v0 footerView];
  if (v42)
  {
    v43 = v42;
    [v42 sizeThatFits_];
  }

  [v0 footerInsets];
  [v0 frame];
  CGRectGetMaxY(v72);
  [v0 footerInsets];
  CGRectMake();
  [v0 footerInsets];
  [v0 bounds];
  CGRectGetWidth(v73);
  CGRectMake();
  UIRectCenteredRect();
  UIRectIntegralWithScale();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = [v0 footerView];
  [v52 setFrame_];

  v53 = [v0 delegate];
  if (v53)
  {
    v54 = v53;
    v74.origin.x = v45;
    v74.origin.y = v47;
    v74.size.width = v49;
    v74.size.height = v51;
    CGRectGetMidY(v74);
    UIRoundToScale();
    [v54 notificationStructuredListView:v0 didChangeFooterCenterY:?];
    swift_unknownObjectRelease();
  }

  v55 = [v0 revealHintView];
  [v0 bounds];
  [v55 sizeThatFits_];

  v58 = [v0 revealHintView];
  [v58 frame];

  [v0 contentBottomMargin];
  [v0 bounds];
  UIRectCenteredXInRect();
  UIRectRoundToScale();
  v60 = v59;
  v62 = v61;
  v64 = v63;
  v66 = v65;
  v67 = [v0 revealHintView];
  [v67 setFrame_];

  [v1 commit];
}

uint64_t sub_21E79721C(uint64_t result, int a2, int a3)
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

void sub_21E797254(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v7 = Strong;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B10, &qword_21E949118);
  sub_21E929728();
  sub_21E929718();
  v8 = v27;
  if ((v31 & 0x100) != 0)
  {
    goto LABEL_3;
  }

  if (v27)
  {
    goto LABEL_6;
  }

  v8 = v26;
  if (v31)
  {
LABEL_3:
    if (v8)
    {
      goto LABEL_7;
    }
  }

  else if ((v26 & 1) == 0 && *&v30 == v25[0] && *(&v30 + 1) == v25[1])
  {
    goto LABEL_7;
  }

LABEL_6:
  sub_21E929718();
  if ((v31 & 0x100) != 0)
  {
LABEL_7:

    return;
  }

  v9 = sub_21E795604(a3, a4);
  if (v31)
  {
    v10 = 0;
    v11 = 0;
    v31 = 0;
    v12 = 0uLL;
  }

  else
  {
    type metadata accessor for CGPoint(0);
    v10 = v13;
    v11 = sub_21E795D68(&unk_280D03C38, type metadata accessor for CGPoint, &unk_21E948A7C);
    v12 = v30;
  }

  v30 = v12;
  v32 = v10;
  v33 = v11;
  swift_getKeyPath();
  sub_21E795D68(qword_280D04750, type metadata accessor for ListDebugHUDModel, &unk_21E948CB8);
  sub_21E9297A8();

  *&v25[0] = v7;
  swift_getKeyPath();
  sub_21E9297C8();

  v14 = OBJC_IVAR____TtC22UserNotificationsUIKit17ListDebugHUDModel__plotItems;
  swift_beginAccess();
  v15 = *&v7[v14];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v7[v14] = v15;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v15 = sub_21E924DE0(v15);
  *&v7[v14] = v15;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (v9 >= v15[2])
  {
LABEL_26:
    __break(1u);
    return;
  }

  v17 = type metadata accessor for ListDebugHUDModel.PlotItem(0);
  v18 = v15 + ((*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80)) + *(*(v17 - 8) + 72) * v9;
  sub_21E8B4BF0(&v30, v25, &qword_27CED7AF8, &qword_21E949100);
  v19 = v28;
  if (v28)
  {
    v20 = v29;
    __swift_project_boxed_opaque_existential_1(v25, v28);
    v21 = (*(v20 + 16))(v19, v20);
    v23 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    sub_21E8B4CAC(v25, &qword_27CED7AF8, &qword_21E949100);
    v23 = 0xE500000000000000;
    v21 = 0x3E6C696E3CLL;
  }

  v24 = (v18 + *(v17 + 24));
  *v24 = v21;
  v24[1] = v23;
  *&v7[v14] = v15;
  swift_endAccess();

  *&v25[0] = v7;
  swift_getKeyPath();
  sub_21E9297B8();

  sub_21E8B4CAC(&v30, &qword_27CED7AF8, &qword_21E949100);
}

void sub_21E797F04(char a1)
{
  v39.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v39, sel_rootListView);
  objc_opt_self();
  v4 = [swift_dynamicCastObjCClassUnconditional() viewEffectivelyTracking];

  if (v4)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v5 = sub_21E929A78();
    __swift_project_value_buffer(v5, qword_280D05F58);
    v6 = sub_21E929A58();
    v7 = sub_21E92A648();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_14;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Skip scroll to systemPreferred in full backlight, view is tracking";
    goto LABEL_6;
  }

  v10 = sub_21E788090();
  v11 = v1[OBJC_IVAR___NCNotificationRootModernList_currentPageType];
  if (v11 != 5 && v11 == v10)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v12 = sub_21E929A78();
    __swift_project_value_buffer(v12, qword_280D05F58);
    v13 = v1;
    v6 = sub_21E929A58();
    v14 = sub_21E92A648();

    if (!os_log_type_enabled(v6, v14))
    {
      goto LABEL_14;
    }

    v8 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v38 = v15;
    *v8 = 136446466;
    v16 = sub_21E788090();
    v17 = sub_21E79841C(qword_21E948050[v16], 0xE100000000000000, &v38);

    *(v8 + 4) = v17;
    *(v8 + 12) = 2082;
    v18 = [v13 currentListDisplayStyleSettingReason];
    v19 = sub_21E92A458();
    v21 = v20;

    v22 = sub_21E79841C(v19, v21, &v38);

    *(v8 + 14) = v22;
    _os_log_impl(&dword_21E77E000, v6, v14, "Skip scroll to systemPreferred in full backlight, already in systemPreferredPageType %{public}s (reason: %{public}s)", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v15, -1, -1);
    goto LABEL_13;
  }

  if (a1)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v23 = sub_21E929A78();
    __swift_project_value_buffer(v23, qword_280D05F58);
    v6 = sub_21E929A58();
    v7 = sub_21E92A648();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_14;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = "Skip scroll to systemPreferred in full backlight, has new incoming scrollPosition override";
LABEL_6:
    _os_log_impl(&dword_21E77E000, v6, v7, v9, v8, 2u);
LABEL_13:
    MEMORY[0x223D65FB0](v8, -1, -1);
LABEL_14:

    return;
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v24 = sub_21E929A78();
  __swift_project_value_buffer(v24, qword_280D05F58);
  v25 = v1;
  v26 = sub_21E929A58();
  v27 = sub_21E92A648();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136446466;
    v30 = sub_21E788090();
    v31 = sub_21E79841C(qword_21E948050[v30], 0xE100000000000000, &v38);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2082;
    v32 = [v25 currentListDisplayStyleSettingReason];
    v33 = sub_21E92A458();
    v35 = v34;

    v36 = sub_21E79841C(v33, v35, &v38);

    *(v28 + 14) = v36;
    _os_log_impl(&dword_21E77E000, v26, v27, "Scroll to systemPreferred %{public}s in full backlight (reason: %{public}s)", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D65FB0](v29, -1, -1);
    MEMORY[0x223D65FB0](v28, -1, -1);
  }

  v37 = sub_21E788090();
  sub_21E798E1C(v37);
}

unint64_t sub_21E79841C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21E798534(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_21E79872C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

void *sub_21E7984E8(uint64_t a1, unint64_t a2)
{
  v3 = sub_21E798C6C(a1, a2);
  sub_21E798640(&unk_282FE37A0);
  return v3;
}

unint64_t sub_21E798534(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_21E7984E8(a5, a6);
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
    result = sub_21E92A8D8();
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

uint64_t sub_21E798640(uint64_t result)
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

  result = sub_21E8D51C4(result, v11, 1, v3);
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

uint64_t sub_21E79872C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Void __swiftcall NCNotificationRootModernList._backlightChanged(toBacklightLuminance:)(Swift::Int toBacklightLuminance)
{
  v30.super_class = NCNotificationRootModernList;
  objc_msgSendSuper2(&v30, sel__backlightChangedToBacklightLuminance_, toBacklightLuminance);
  v29.receiver = v1;
  v29.super_class = NCNotificationRootModernList;
  v3 = objc_msgSendSuper2(&v29, sel_rootListView);
  v4 = [v3 traitCollection];

  v5 = [v4 _backlightLuminance];
  if (v5 == toBacklightLuminance)
  {
    if (qword_280D03F40 != -1)
    {
      swift_once();
    }

    v6 = sub_21E929A78();
    __swift_project_value_buffer(v6, qword_280D05F58);
    v7 = sub_21E929A58();
    v8 = sub_21E92A648();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_7;
    }

    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = toBacklightLuminance;
    v10 = "No backlight changed for %{public}ld; skip scroll position update";
    goto LABEL_6;
  }

  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v11 = sub_21E929A78();
  __swift_project_value_buffer(v11, qword_280D05F58);
  v12 = v1;
  v13 = sub_21E929A58();
  v14 = sub_21E92A648();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349312;
    v26.receiver = v12;
    v26.super_class = NCNotificationRootModernList;
    v16 = objc_msgSendSuper2(&v26, sel_rootListView);
    v17 = [v16 traitCollection];

    v18 = [v17 _backlightLuminance];
    *(v15 + 4) = v18;

    *(v15 + 12) = 2050;
    *(v15 + 14) = toBacklightLuminance;
    _os_log_impl(&dword_21E77E000, v13, v14, "Backlight changed from %{public}ld to %{public}ld", v15, 0x16u);
    MEMORY[0x223D65FB0](v15, -1, -1);
  }

  else
  {

    v13 = v12;
  }

  v19 = sub_21E786808(0xA);
  if (v19)
  {
    v20 = v19;
    objc_opt_self();
    v21 = swift_dynamicCastObjCClass();
    if (!v21)
    {
    }
  }

  else
  {
    v21 = 0;
  }

  [v21 setBacklightState_];

  v22 = OBJC_IVAR___NCNotificationRootModernList_scrollDownToHideNewIncomingTask;
  v23 = *(&v12->isa + OBJC_IVAR___NCNotificationRootModernList_scrollDownToHideNewIncomingTask);
  if (v23)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7300, &qword_21E947B40);
    sub_21E92A5C8();
  }

  *(&v12->isa + v22) = 0;

  v28.receiver = v12;
  v28.super_class = NCNotificationRootModernList;
  v24 = objc_msgSendSuper2(&v28, sel_rootListView);
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setIsVFDEnabledForScrollAnimation_];

  v27.receiver = v12;
  v27.super_class = NCNotificationRootModernList;
  v25 = objc_msgSendSuper2(&v27, &selRef_serviceForClientIdentifier_ + 3);
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setScrollEnabled_];

  if ((toBacklightLuminance + 1) < 2)
  {
    sub_21E8C752C(0, 0);
  }

  else if (toBacklightLuminance == 1)
  {
    sub_21E8C6D6C(4);
  }

  else
  {
    if (toBacklightLuminance != 2)
    {
      v7 = sub_21E929A58();
      v8 = sub_21E92A638();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_7;
      }

      v9 = swift_slowAlloc();
      *v9 = 134349056;
      *(v9 + 4) = toBacklightLuminance;
      v10 = "New backlight value detected: %{public}ld, need to handle new case correctly";
LABEL_6:
      _os_log_impl(&dword_21E77E000, v7, v8, v10, v9, 0xCu);
      MEMORY[0x223D65FB0](v9, -1, -1);
LABEL_7:

      return;
    }

    sub_21E797F04(v23 != 0);
  }
}

void *sub_21E798C6C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_21E798D9C(v5, 0);
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

  result = sub_21E92A8D8();
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
        v10 = sub_21E92A4D8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_21E798D9C(v10, 0);
        result = sub_21E92A898();
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

void *sub_21E798D9C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7478, &qword_21E947D98);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_21E798E1C(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v4 = sub_21E929A78();
  __swift_project_value_buffer(v4, qword_280D05F58);
  v5 = sub_21E929A58();
  v6 = sub_21E92A618();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v20[0] = v8;
    *v7 = 136446210;
    v9 = sub_21E799190(v3);
    v11 = sub_21E79841C(v9, v10, v20);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_21E77E000, v5, v6, "setNeedsScroll %{public}s", v7, 0xCu);
    v12 = __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x223D65FB0](v8, -1, -1, v12);
    MEMORY[0x223D65FB0](v7, -1, -1);
  }

  v13 = OBJC_IVAR___NCNotificationRootModernList_setScrollPositions;
  swift_beginAccess();
  v14 = *&v2[v13];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v2[v13] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_21E79909C(0, *(v14 + 2) + 1, 1, v14);
    *&v2[v13] = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_21E79909C((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 2) = v17 + 1;
  v14[v17 + 32] = v3;
  *&v2[v13] = v14;
  swift_endAccess();
  v19.receiver = v2;
  v19.super_class = NCNotificationRootModernList;
  v18 = objc_msgSendSuper2(&v19, sel_rootListView);
  [v18 setNeedsLayout];
}

char *sub_21E79909C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED8548, &qword_21E94A3E8);
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

uint64_t sub_21E799190(unsigned __int8 a1)
{
  if (!(a1 >> 6))
  {
    v4 = 0x2D65676170;
    v1 = a1;
    goto LABEL_5;
  }

  if (a1 >> 6 == 1)
  {
    v4 = 0x61506F54646C6F68;
    v1 = a1 & 0x3F;
LABEL_5:
    MEMORY[0x223D64660](qword_21E948050[v1], 0xE100000000000000);

    return v4;
  }

  v3 = 0x65746164696C6176;
  if (a1 != 129)
  {
    v3 = 7368564;
  }

  if (a1 == 128)
  {
    return 1701736302;
  }

  else
  {
    return v3;
  }
}

unint64_t get_enum_tag_for_layout_string_So28NCNotificationRootModernListC22UserNotificationsUIKitE11ScrollState33_FEF7D9AF22AA6C72E8E41A6F05824DD0LLO(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 & 3 | (4 * *(a1 + 8))) + 2;
  }
}

uint64_t sub_21E7992D4()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  if (v5 >> 62)
  {
    if (v5 >> 62 != 1)
    {
      return 0x6576697463616E69;
    }

    sub_21E92A8A8();
    MEMORY[0x223D64660](0xD000000000000013, 0x800000021E957820);
    sub_21E92A918();
    MEMORY[0x223D64660](0x3D7465677261742CLL, 0xE800000000000000);
    v6 = sub_21E8D0118(v1, v2, v3, v5);
    MEMORY[0x223D64660](v6);

    MEMORY[0x223D64660](0xD000000000000011, 0x800000021E957800);
    v7 = v4 == 0;
  }

  else
  {
    v8 = v0[7];
    sub_21E92A8A8();
    MEMORY[0x223D64660](0xD000000000000011, 0x800000021E9577E0);
    sub_21E92A918();
    MEMORY[0x223D64660](0x3D7465677261742CLL, 0xE800000000000000);
    v9 = sub_21E8D0118(v1, v2, v3, v5);
    MEMORY[0x223D64660](v9);

    MEMORY[0x223D64660](0x3D72657466612CLL, 0xE700000000000000);
    v10 = sub_21E92AB58();
    MEMORY[0x223D64660](v10);

    MEMORY[0x223D64660](0xD000000000000011, 0x800000021E957800);
    v7 = v8 == 0;
  }

  if (v7)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (v7)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  MEMORY[0x223D64660](v11, v12);

  return 0;
}

void sub_21E799598()
{
  v1 = v0;
  v20.super_class = NCNotificationRootModernList;
  v2 = objc_msgSendSuper2(&v20, sel_rootListView);
  v3 = [v2 superview];

  if (v3 && (v4 = [v3 superview], v3, v4) && (v5 = objc_msgSend(v4, sel_superview), v4, v5))
  {
    [v5 safeAreaInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x277D768C8];
    v9 = *(MEMORY[0x277D768C8] + 8);
    v11 = *(MEMORY[0x277D768C8] + 16);
    v13 = *(MEMORY[0x277D768C8] + 24);
  }

  v14 = v1 + OBJC_IVAR___NCNotificationRootModernList_layout;
  *(v14 + 24) = v7;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  *(v14 + 48) = v13;
  if (qword_280D041F8 != -1)
  {
    swift_once();
  }

  if (qword_280D05F70)
  {
    v15 = *(v14 + 64);
    v16 = *(v14 + 80);
    v17 = *(v14 + 32);
    v21[3] = *(v14 + 48);
    v21[4] = v15;
    v21[5] = v16;
    v18 = *(v14 + 16);
    v21[0] = *v14;
    v22 = *(v14 + 96);
    v21[1] = v18;
    v21[2] = v17;

    sub_21E78A844(v21, v19);
    sub_21E7935C0(v21);
    sub_21E78AACC(v21);
  }

  sub_21E784AD0(0);
  sub_21E79411C(0, 0, 1);
}

double sub_21E799760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

double sub_21E7997DC(char a1, char a2, void (*a3)(void, void), uint64_t a4)
{
  if (a3)
  {

    a3(a1 & 1, a2 & 1);

    return sub_21E792E48(a3, a4);
  }

  return result;
}

void sub_21E799BCC()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_21E799DB4;
  *(v3 + 24) = v2;
  v6[4] = sub_21E799DD4;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_21E799D8C;
  v6[3] = &block_descriptor_11;
  v4 = _Block_copy(v6);
  v5 = v0;

  [v1 performWithoutAnimation_];
  _Block_release(v4);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    [v5 setRevealHintVisible_];
  }
}

uint64_t sub_21E799D44()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21E799DFC(void *a1, double a2)
{
  v3 = [a1 revealHintView];
  [v3 setAlpha_];
}

double NCSizeThatFits(void *a1, void *a2, double a3, double a4)
{
  v7 = a1;
  v8 = a2;
  if (!v8)
  {
LABEL_6:
    [v7 sizeThatFits:{a3, a4}];
    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = *MEMORY[0x277D77DD0];
    if (os_log_type_enabled(*MEMORY[0x277D77DD0], OS_LOG_TYPE_ERROR))
    {
      NCSizeThatFits_cold_1(v10, v7);
    }

    goto LABEL_6;
  }

  [v7 sizeThatFits:v8 withTraits:{a3, a4}];
LABEL_7:
  v11 = v9;

  return v11;
}

uint64_t _sectionIdentifierIconDenyListContains(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  if (_sectionIdentifierIconDenyListContains___onceToken != -1)
  {
    _sectionIdentifierIconDenyListContains_cold_1();
  }

  if ([_sectionIdentifierIconDenyListContains___sectionIdentifierIconDenyList containsObject:v5])
  {
    v7 = [v6 nc_iconWouldUseApplicationIdentifierForFormat:a3] ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id _unContactFromBBContact(void *a1)
{
  v1 = a1;
  v2 = [v1 handleType];
  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2 * (v2 == 2);
  }

  v4 = objc_alloc_init(MEMORY[0x277CE2050]);
  v5 = [v1 handle];
  [v4 setHandle:v5];

  [v4 setHandleType:v3];
  v6 = [v1 displayName];
  [v4 setDisplayName:v6];

  [v4 setDisplayNameSuggested:{objc_msgSend(v1, "isDisplayNameSuggested")}];
  v7 = [v1 serviceName];
  [v4 setServiceName:v7];

  v8 = [v1 customIdentifier];
  [v4 setCustomIdentifier:v8];

  v9 = [v1 cnContactIdentifier];
  [v4 setCnContactIdentifier:v9];

  v10 = [v1 cnContactFullname];
  [v4 setCnContactFullname:v10];

  v11 = [v1 isCNContactIdentifierSuggested];
  [v4 setCnContactIdentifierSuggested:v11];

  return v4;
}

id _NCQuickLooksAttachmentImageForNotificationRequest(void *a1, double a2, double a3, double a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a1;
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  if (!v7)
  {
    v21 = 0;
    goto LABEL_16;
  }

  v8 = [v7 primaryAttachment];
  v9 = [v8 URL];
  v10 = [v9 path];

  if (v10)
  {
    v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
    if (v11 && ([v8 type] - 1) <= 1)
    {
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__4;
      v38 = __Block_byref_object_dispose__4;
      v39 = 0;
      v31 = 0;
      v32[0] = &v31;
      v32[1] = 0x3032000000;
      v32[2] = __Block_byref_object_copy__4;
      v32[3] = __Block_byref_object_dispose__4;
      v33 = 0;
      v12 = [MEMORY[0x277D759A0] mainScreen];
      [v12 scale];
      v14 = v13;

      v15 = [objc_alloc(MEMORY[0x277CDAAD8]) initWithFileAtURL:v11 size:4 scale:a2 representationTypes:{a3, v14}];
      [v15 setContentTypeUTI:@"com.apple.private.usernotifications.attachment"];
      v16 = [v8 thumbnailGeneratorUserInfo];
      if (v16)
      {
        [v15 setExternalThumbnailGeneratorData:v16];
      }

      if (__PAIR128__(_NCQuickLooksAttachmentImageForNotificationRequest___thumbnailGeneratorTimeoutQueue, _NCQuickLooksAttachmentImageForNotificationRequest_onceToken) < 0xFFFFFFFFFFFFFFFFLL)
      {
        _NCQuickLooksAttachmentImageForNotificationRequest_cold_1();
      }

      v17 = dispatch_time(0, (a4 * 1000000000.0));
      v18 = _NCQuickLooksAttachmentImageForNotificationRequest___thumbnailGeneratorTimeoutQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ___NCQuickLooksAttachmentImageForNotificationRequest_block_invoke_2;
      block[3] = &unk_278371570;
      v29 = &v34;
      v30 = &v31;
      v19 = v15;
      v28 = v19;
      dispatch_after(v17, v18, block);
      v20 = [MEMORY[0x277CDAAE0] sharedGenerator];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = ___NCQuickLooksAttachmentImageForNotificationRequest_block_invoke_17;
      v26[3] = &unk_278371598;
      v26[4] = &v34;
      v26[5] = &v31;
      [v20 synchronousGenerateThumbnailForRequest:v19 updateHandler:0 statusHandler:0 completionHandler:v26];

      v21 = [v35[5] UIImage];
      v22 = *MEMORY[0x277D77DB8];
      v23 = *MEMORY[0x277D77DB8];
      if (v21)
      {
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v35[5];
          *buf = 138543618;
          v41 = v10;
          v42 = 2114;
          v43 = v24;
          _os_log_impl(&dword_21E77E000, v22, OS_LOG_TYPE_DEFAULT, "Generated thumbnail: filePath=%{public}@, representation=%{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        _NCQuickLooksAttachmentImageForNotificationRequest_cold_2(v10, v32, v22);
      }

      _Block_object_dispose(&v31, 8);
      _Block_object_dispose(&v34, 8);

      goto LABEL_15;
    }
  }

  else
  {
    v11 = 0;
  }

  v21 = 0;
LABEL_15:

LABEL_16:

  return v21;
}

void sub_21E79B828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t NCApplicationIdentifierIsValid(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [MEMORY[0x277CC1E70] unkit_applicationRecordIfEligibleToDeliverNotificationsForBundleIdentifier:v1];
    if (!v2)
    {
      v3 = MEMORY[0x277D77DB8];
      if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
      {
        NCApplicationIdentifierIsValid_cold_1();
      }

      v14 = 0;
      v4 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v1 allowPlaceholder:1 error:&v14];
      v5 = v14;
      v6 = objc_opt_class();
      v7 = v4;
      if (v6)
      {
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }

      v2 = v8;

      if (!v2 && os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
      {
        NCApplicationIdentifierIsValid_cold_2();
      }
    }

    v11 = [v2 applicationState];
    v10 = [v11 isValid];

    if ((v10 & 1) == 0)
    {
      v12 = os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR);
      if (v2)
      {
        if (v12)
        {
          NCApplicationIdentifierIsValid_cold_3();
        }
      }

      else if (v12)
      {
        NCApplicationIdentifierIsValid_cold_4();
      }
    }
  }

  else
  {
    v9 = *MEMORY[0x277D77DB8];
    if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
    {
      NCApplicationIdentifierIsValid_cold_5(v9);
    }

    v10 = 0;
  }

  return v10;
}

id _attachmentImageForBulletin(void *a1, double a2)
{
  v3 = a1;
  v4 = [v3 accessoryImage];
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [v4 name];
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = v6;
  v8 = [v5 bundlePath];
  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleWithPath:v8];
    if (v9)
    {
      v10 = [MEMORY[0x277D755B8] imageNamed:v7 inBundle:v9];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v9 = [MEMORY[0x277D74300] defaultFontForTextStyle:*MEMORY[0x277D76A28]];
    v11 = MEMORY[0x277D755D0];
    [v9 pointSize];
    v12 = [v11 configurationWithPointSize:0 weight:3 scale:?];
    v10 = [MEMORY[0x277D755B8] _systemImageNamed:v7 withConfiguration:v12];
  }

  if (!v10)
  {
LABEL_9:
    v10 = _NCQuickLooksAttachmentImageForNotificationRequest(v3, a2, a2, 10.0);
  }

  return v10;
}

id _actionsForLayout(void *a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = [MEMORY[0x277CBEB18] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [v5 supplementaryActionsForLayout:{a3, 0}];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MEMORY[0x277D77E30] notificationActionForAction:*(*(&v16 + 1) + 8 * i) bulletin:v5 observer:v6];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [v7 copy];

  return v14;
}

void NCNotificationRootModernList.remove(_:)(void *a1)
{
  v2 = a1;
  v3 = off_27836E000;
  v80.super_class = NCNotificationRootModernList;
  v77 = objc_msgSendSuper2(&v80, sel_removeNotificationRequest_, a1);
  *(*&v1[OBJC_IVAR___NCNotificationRootModernList_exclusionManager] + OBJC_IVAR____TtC22UserNotificationsUIKit26ScrollViewExclusionManager_shouldUpdateWithoutAnimation) = 1;
  if (qword_280D03F40 != -1)
  {
    swift_once();
  }

  v4 = sub_21E929A78();
  __swift_project_value_buffer(v4, qword_280D05F58);
  v5 = v2;
  v6 = sub_21E929A58();
  v7 = sub_21E92A648();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v81[0] = v9;
    *v8 = 136446210;
    if (v2)
    {
      v10 = v9;
      v11 = [v5 notificationIdentifier];
      if (!v11)
      {
        sub_21E92A458();
        v11 = sub_21E92A428();
      }

      v12 = [v11 un_logDigest];

      if (v12)
      {
        v13 = sub_21E92A458();
        v15 = v14;

        v16 = sub_21E79841C(v13, v15, v81);

        *(v8 + 4) = v16;
        _os_log_impl(&dword_21E77E000, v6, v7, "Remove %{public}s", v8, 0xCu);
        v17 = __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x223D65FB0](v10, -1, -1, v17);
        MEMORY[0x223D65FB0](v8, -1, -1);

        v2 = v75;
        v3 = off_27836E000;
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_38;
  }

LABEL_10:
  v18 = &v1[OBJC_IVAR___NCNotificationRootModernList_layout];
  if (!*(*&v1[OBJC_IVAR___NCNotificationRootModernList_layout] + 16))
  {
    v42 = v5;
    v43 = sub_21E929A58();
    v44 = sub_21E92A648();
    if (!os_log_type_enabled(v43, v44))
    {

      goto LABEL_27;
    }

    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v81[0] = v46;
    *v45 = 136446210;
    if (v2)
    {
      v47 = v46;
      v48 = [v42 notificationIdentifier];
      if (!v48)
      {
        sub_21E92A458();
        v48 = sub_21E92A428();
      }

      v49 = [v48 un_logDigest];

      if (v49)
      {
        v50 = sub_21E92A458();
        v52 = v51;

        v53 = sub_21E79841C(v50, v52, v81);

        *(v45 + 4) = v53;
        _os_log_impl(&dword_21E77E000, v43, v44, "Page is empty; scroll to top for %{public}s removal", v45, 0xCu);
        v54 = __swift_destroy_boxed_opaque_existential_1Tm(v47);
        MEMORY[0x223D65FB0](v47, -1, -1, v54);
        MEMORY[0x223D65FB0](v45, -1, -1);
LABEL_27:

        sub_21E798E1C(130);
        return;
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v19 = v2;
  v20 = v3;
  v21 = v3[29];
  v79.receiver = v1;
  v79.super_class = v21;
  v22 = objc_msgSendSuper2(&v79, sel_rootListView);
  v23 = [v22 traitCollection];

  v24 = [v23 _backlightLuminance];
  if (v24 == 2)
  {
    v25 = v1;
    v26 = v5;
    v27 = v25;
    v28 = sub_21E929A58();
    v29 = sub_21E92A648();
    if (!os_log_type_enabled(v28, v29))
    {

      return;
    }

    v30 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v81[0] = v76;
    *v30 = 134349314;
    v31 = v20[29];
    v78.receiver = v27;
    v78.super_class = v31;
    v32 = objc_msgSendSuper2(&v78, &selRef_serviceForClientIdentifier_ + 3);
    v33 = [v32 traitCollection];

    v34 = [v33 _backlightLuminance];
    *(v30 + 4) = v34;

    *(v30 + 12) = 2082;
    if (v19)
    {
      v35 = [v26 notificationIdentifier];
      if (!v35)
      {
        sub_21E92A458();
        v35 = sub_21E92A428();
      }

      v36 = [v35 un_logDigest];

      if (v36)
      {
        v37 = sub_21E92A458();
        v39 = v38;

        v40 = sub_21E79841C(v37, v39, v81);

        *(v30 + 14) = v40;
        _os_log_impl(&dword_21E77E000, v28, v29, "_backlightLuminance is %{public}ld; skip scrolling for %{public}s removal", v30, 0x16u);
        v41 = __swift_destroy_boxed_opaque_existential_1Tm(v76);
        MEMORY[0x223D65FB0](v76, -1, -1, v41);
        MEMORY[0x223D65FB0](v30, -1, -1);

        return;
      }

      goto LABEL_41;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (v77)
  {
    v55 = sub_21E788090();
    v56 = swift_allocObject();
    *(v56 + 16) = v1;
    v57 = v1;
    sub_21E8C6068(0, v55, sub_21E8D9728, v56);

    v58 = *v18;
    v59 = *(v18 + 1);
    v60 = v18[2];

    v61.n128_u64[0] = v60;
    sub_21E783428(v58, v81, v59, v61);

    sub_21E8C800C(v81);
    return;
  }

  v62 = v5;
  v63 = sub_21E929A58();
  v64 = sub_21E92A648();
  if (!os_log_type_enabled(v63, v64))
  {

    return;
  }

  v65 = swift_slowAlloc();
  v66 = swift_slowAlloc();
  v81[0] = v66;
  *v65 = 136446210;
  if (v19)
  {
    v67 = v66;
    v68 = [v62 notificationIdentifier];
    if (!v68)
    {
      sub_21E92A458();
      v68 = sub_21E92A428();
    }

    v69 = [v68 un_logDigest];

    if (v69)
    {
      v70 = sub_21E92A458();
      v72 = v71;

      v73 = sub_21E79841C(v70, v72, v81);

      *(v65 + 4) = v73;
      _os_log_impl(&dword_21E77E000, v63, v64, "Doesn't remove notification from any sections; skip scrolling for %{public}s removal", v65, 0xCu);
      v74 = __swift_destroy_boxed_opaque_existential_1Tm(v67);
      MEMORY[0x223D65FB0](v67, -1, -1, v74);
      MEMORY[0x223D65FB0](v65, -1, -1);

      return;
    }

    goto LABEL_43;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

void sub_21E79D224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_21E79DE90()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t NCNotificationRootModernList.perform(_:withoutAnimation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18.super_class = NCNotificationRootModernList;
  v7 = objc_msgSendSuper2(&v18, sel_rootListView);
  v8 = [v7 traitCollection];

  v9 = [v8 _backlightLuminance];
  if (v9 + 1 >= 3 && v9 == 2)
  {
    v11 = NCDefaultAnimator(v10);
  }

  else
  {
    v11 = *&v3[OBJC_IVAR___NCNotificationRootModernList_cacheNoAnimationAnimator];
  }

  v12 = v11;
  v13 = swift_allocObject();
  v13[2] = a2;
  v13[3] = a3;
  v13[4] = a1;
  v13[5] = v3;
  v17[4] = sub_21E79E1A8;
  v17[5] = v13;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21E792C28;
  v17[3] = &block_descriptor_24;
  v14 = _Block_copy(v17);

  v15 = v3;

  [v12 performAnimationType:a1 withoutAnimation:v14];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_21E79E168()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21E79E1A8()
{
  v1 = *(v0 + 32);
  (*(v0 + 16))();
  if (v1 == 4)
  {
    sub_21E8CB974();
  }
}

void sub_21E79EB48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id NCUserNotificationsUIKitFrameworkBundle(uint64_t a1)
{
  if (NCUserNotificationsUIKitFrameworkBundle___once != -1)
  {
    NCUserNotificationsUIKitFrameworkBundle_cold_1();
  }

  v2 = NCUserNotificationsUIKitFrameworkBundle___bundle;

  return v2;
}

void sub_21E7A0BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NCNotificationListSectionTypeString(unint64_t a1)
{
  if (a1 > 0xC)
  {
    return @"<invalid>";
  }

  else
  {
    return off_2783725B8[a1];
  }
}

void sub_21E7A0E3C(uint64_t a1@<X8>)
{
  v3 = sub_21E7871A0();
  v4 = sub_21E7871A0();
  v5 = 0;
  if (v4)
  {
    v6 = v4;
    v7 = [v4 listView];

    if (v7)
    {
      v42.receiver = v1;
      v42.super_class = NCNotificationRootModernList;
      v8 = v7;
      v9 = objc_msgSendSuper2(&v42, sel_rootListView);
      [v9 frame];
      v11 = v10;

      [v8 sizeThatFits_];
      v5 = v12;
    }
  }

  type metadata accessor for LiveActivitySizer();
  v13 = swift_allocObject();
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  *(v13 + 48) = 0;
  *(v13 + 56) = 1;
  *(v13 + 64) = 0;
  *(v13 + 72) = 513;
  *(v13 + 16) = v3;
  *(v13 + 24) = v5;
  v14 = sub_21E786808(0xC);
  if (!v14)
  {
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14;
  type metadata accessor for StructureListSizer();
  v16 = swift_allocObject();
  *(v16 + 32) = 1;
  *(v16 + 40) = 0;
  *(v16 + 48) = 1;
  *(v16 + 56) = 0;
  *(v16 + 64) = 1;
  *(v16 + 72) = 0;
  *(v16 + 80) = 513;
  *(v16 + 88) = 0;
  *(v16 + 96) = 1;
  *(v16 + 97) = 514;
  *(v16 + 16) = v15;
  *(v16 + 24) = 0;
  v17 = sub_21E786808(0xB);
  if (!v17)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = swift_allocObject();
  *(v19 + 32) = 1;
  *(v19 + 40) = 0;
  *(v19 + 48) = 1;
  *(v19 + 56) = 0;
  *(v19 + 64) = 1;
  *(v19 + 72) = 0;
  *(v19 + 80) = 513;
  *(v19 + 88) = 0;
  *(v19 + 96) = 1;
  *(v19 + 97) = 514;
  *(v19 + 16) = v18;
  *(v19 + 24) = 0;
  v20 = sub_21E786808(0xA);
  if (v20)
  {
    v21 = v20;
    objc_opt_self();
    v22 = swift_dynamicCastObjCClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = swift_allocObject();
  *(v23 + 32) = 1;
  *(v23 + 40) = 0;
  *(v23 + 48) = 1;
  *(v23 + 56) = 0;
  *(v23 + 64) = 1;
  *(v23 + 72) = 0;
  *(v23 + 80) = 513;
  *(v23 + 88) = 0;
  *(v23 + 96) = 1;
  *(v23 + 97) = 514;
  *(v23 + 16) = v22;
  *(v23 + 24) = 0;
  v24 = sub_21E786808(1);
  if (!v24)
  {
    goto LABEL_20;
  }

  v25 = v24;
  v40 = v13;
  v41 = a1;
  v26 = swift_allocObject();
  *(v26 + 32) = 1;
  *(v26 + 40) = 0;
  *(v26 + 48) = 1;
  *(v26 + 56) = 0;
  *(v26 + 64) = 1;
  *(v26 + 72) = 0;
  *(v26 + 80) = 513;
  *(v26 + 88) = 0;
  *(v26 + 96) = 1;
  *(v26 + 97) = 514;
  *(v26 + 16) = v25;
  *(v26 + 24) = 0;
  v27 = sub_21E786808(2);
  if (!v27)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v28 = v27;
  v29 = swift_allocObject();
  *(v29 + 32) = 1;
  *(v29 + 40) = 0;
  *(v29 + 48) = 1;
  *(v29 + 56) = 0;
  *(v29 + 64) = 1;
  *(v29 + 72) = 0;
  *(v29 + 80) = 513;
  *(v29 + 88) = 0;
  *(v29 + 96) = 1;
  *(v29 + 97) = 514;
  *(v29 + 16) = v28;
  *(v29 + 24) = 0;
  v30 = sub_21E786808(4);
  if (v30)
  {
    v31 = v30;
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (!v32)
    {
    }
  }

  else
  {
    v32 = 0;
  }

  v33 = swift_allocObject();
  *(v33 + 32) = 1;
  *(v33 + 40) = 0;
  *(v33 + 48) = 1;
  *(v33 + 56) = 0;
  *(v33 + 64) = 1;
  *(v33 + 72) = 0;
  *(v33 + 80) = 513;
  *(v33 + 88) = 0;
  *(v33 + 96) = 1;
  *(v33 + 97) = 514;
  *(v33 + 16) = v32;
  *(v33 + 24) = 0;
  v34 = sub_21E786808(0);
  if (v34)
  {
    v35 = v34;
    v36 = swift_allocObject();
    *(v36 + 32) = 1;
    *(v36 + 40) = 0;
    *(v36 + 48) = 1;
    *(v36 + 56) = 0;
    *(v36 + 64) = 1;
    *(v36 + 72) = 0;
    *(v36 + 80) = 513;
    *(v36 + 88) = 0;
    *(v36 + 96) = 1;
    *(v36 + 97) = 514;
    *(v36 + 16) = v35;
    *(v36 + 24) = 0;
    v45.receiver = v1;
    v45.super_class = NCNotificationRootModernList;
    v37 = objc_msgSendSuper2(&v45, sel_rootListView);
    [v37 visibleRectBottomMarginForRollUnder];
    v39 = v38;

    v44 = 1;
    v43 = 1;
    *v41 = v40;
    *(v41 + 8) = v16;
    *(v41 + 16) = v19;
    *(v41 + 24) = v23;
    *(v41 + 32) = v26;
    *(v41 + 40) = v29;
    *(v41 + 48) = v33;
    *(v41 + 56) = v36;
    *(v41 + 64) = v39;
    *(v41 + 72) = 0;
    *(v41 + 80) = 1;
    *(v41 + 88) = 0;
    *(v41 + 96) = 1;
    return;
  }

LABEL_22:
  __break(1u);
}

uint64_t sub_21E7A130C()
{
  v1 = *(v0 + 81);
  if (v1 == 2)
  {
    LOBYTE(v1) = sub_21E7A138C() > 0;
    *(v0 + 81) = v1;
  }

  return v1 & 1;
}

uint64_t sub_21E7A1340()
{
  v1 = *(v0 + 73);
  if (v1 == 2)
  {
    v2 = *(v0 + 16);
    if (v2)
    {
      LOBYTE(v1) = [v2 count] > 0;
    }

    else
    {
      LOBYTE(v1) = 0;
    }

    *(v0 + 73) = v1;
  }

  return v1 & 1;
}

id sub_21E7A138C()
{
  if (*(v0 + 96) != 1)
  {
    return *(v0 + 88);
  }

  result = *(v0 + 16);
  if (result)
  {
    result = [result count];
  }

  *(v0 + 88) = result;
  *(v0 + 96) = 0;
  return result;
}

double sub_21E7A145C()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    return *(v0 + 72);
  }

  sub_21E7A1494(v0);
  *(v0 + 72) = result;
  *(v0 + 80) = 0;
  return result;
}

void sub_21E7A1494(uint64_t *a1)
{
  v2 = *a1;
  v35 = type metadata accessor for LiveActivitySizer();
  v36 = &off_282FE7A78;
  v34 = v2;
  v3 = a1[1];
  v38 = type metadata accessor for StructureListSizer();
  v39 = &off_282FE7AA0;
  v37 = v3;
  v4 = a1[2];
  v41 = v38;
  v42 = &off_282FE7AA0;
  v40 = v4;

  v5 = MEMORY[0x277D84F90];
  for (i = 32; i != 152; i += 40)
  {
    sub_21E795EE0(&v33[i], &v29);
    v7 = *(&v30 + 1);
    v8 = v31;
    __swift_project_boxed_opaque_existential_1(&v29, *(&v30 + 1));
    if ((*(v8 + 32))(v7, v8))
    {
      sub_21E7A17AC(&v29, &v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21E8D5338(0, *(v5 + 16) + 1, 1);
        v5 = v32;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21E8D5338((v10 > 1), v11 + 1, 1);
        v5 = v32;
      }

      *(v5 + 16) = v11 + 1;
      sub_21E7A17AC(&v26, v5 + 40 * v11 + 32);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v29);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7B88, &qword_21E9491B0);
  swift_arrayDestroy();
  v12 = 0;
  v13 = *(v5 + 16);
  v14 = 0.0;
  while (1)
  {
    v15 = 0uLL;
    v16 = v13;
    v17 = 0uLL;
    v18 = 0uLL;
    if (v12 == v13)
    {
      goto LABEL_15;
    }

    if (v12 >= *(v5 + 16))
    {
      break;
    }

    v16 = v12 + 1;
    *&v26 = v12;
    sub_21E795EE0(v5 + 32 + 40 * v12, &v26 + 8);
    v15 = v26;
    v17 = v27;
    v18 = v28;
LABEL_15:
    v29 = v15;
    v30 = v17;
    v31 = v18;
    if (!v18)
    {

      return;
    }

    v25 = v15;
    sub_21E7A17AC((&v29 + 8), &v26);
    v19 = *(&v27 + 1);
    v20 = v28;
    __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
    v14 = v14 + (*(v20 + 16))(v19, v20);
    if (v25 < *(v5 + 16) - 1)
    {
      v21 = [objc_opt_self() rootSettings];
      v22 = [v21 listAnimationSettings];

      [v22 viewSpacing];
      v24 = v23;

      v14 = v14 + v24;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v26);
    v12 = v16;
  }

  __break(1u);
}

uint64_t sub_21E7A17AC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

char *sub_21E7A17C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED82A0, &qword_21E949CD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

void sub_21E7A18E0()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 16);
    if (v1)
    {
      [v1 collapsedHeight];
    }

    else
    {
      v2 = 0;
    }

    *(v0 + 24) = v2;
    *(v0 + 32) = 0;
  }
}

void sub_21E7A1D60()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 16);
    if (v1)
    {
      [v1 expandedHeightIgnoringNotificationStacks];
    }

    else
    {
      v2 = 0;
    }

    *(v0 + 56) = v2;
    *(v0 + 64) = 0;
  }
}

BOOL sub_21E7A1DD4(void *a1, uint64_t *a2)
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

void *sub_21E7A1E40@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21E7A1E70(uint64_t a1, int a2)
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

uint64_t _s22UserNotificationsUIKit23HighlightsDropletLayoutC23DropletSeparationFactorVwet_0(uint64_t a1, int a2)
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

uint64_t sub_21E7A1EC8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_21E92A458();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_21E7A1F0C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A1F44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E7A1F84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A1FD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2008()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2040()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E7A2080()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_21E7A210C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isBackgroundHidden];
  *a2 = result;
  return result;
}

id sub_21E7A2154@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 supportsGlass];
  *a2 = result;
  return result;
}

id sub_21E7A219C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 supportsMitosis];
  *a2 = result;
  return result;
}

id sub_21E7A21E4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 glassSmoothness];
  *a2 = v4;
  return result;
}

id sub_21E7A222C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 glassTintColor];
  *a2 = result;
  return result;
}

id sub_21E7A227C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 unmanagedBackdropContrast];
  *a2 = result;
  return result;
}

uint64_t sub_21E7A22C4()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A22FC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A2334()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_21E7A236C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A23A4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A240C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_21E7A2460(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A246C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A24B8()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A24F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 97, 7);
}

uint64_t sub_21E7A2538()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_21E7A2604(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A2610()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2648()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A2690()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A26C8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2700()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A274C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_21E7A278C()
{
  v1 = [v0 debugView];

  return v1;
}

void sub_21E7A27C4(void *a1)
{
  [v1 setDebugView_];
}

__n128 sub_21E7A2820(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A282C()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21E7A2864@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cellView];
  *a2 = result;
  return result;
}

id sub_21E7A28B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentViewController];
  *a2 = result;
  return result;
}

uint64_t sub_21E7A290C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_21E7A2944@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 listView];
  *a2 = result;
  return result;
}

id sub_21E7A2994@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isRevealed];
  *a2 = result;
  return result;
}

id sub_21E7A29DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 revealPercentage];
  *a2 = v4;
  return result;
}

id sub_21E7A2A24@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 alpha];
  *a2 = v4;
  return result;
}

id sub_21E7A2A6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 index];
  *a2 = result;
  return result;
}

uint64_t sub_21E7A2AD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2B24()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2B5C()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21E7A2B9C()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_21E7A2BD4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E7A2C14()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A2C4C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A2C8C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E7A2CC4()
{

  return MEMORY[0x2821FE8E8](v0, 26, 7);
}

uint64_t sub_21E7A2D0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

double sub_21E7A2D6C@<D0>(id *a1@<X0>, _OWORD *a2@<X8>)
{
  [*a1 transform];
  result = *&v4;
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  return result;
}

id sub_21E7A2DB8(_OWORD *a1, void **a2)
{
  v2 = *a2;
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = a1[2];
  return [v2 setTransform_];
}

id sub_21E7A2EB8()
{
  v0 = objc_opt_self();

  return [v0 updateAllDebugViews];
}

uint64_t sub_21E7A2EF0()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A30C4@<X0>(uint64_t *a2@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

id sub_21E7A317C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 contentInset];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_21E7A31C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CED7D08, &qword_21E949348);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_21E7A3264(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A32B4()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_21E7A32EC()
{
  v1 = *(type metadata accessor for NotificationListLayoutValidator.LayoutState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_21E929778();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E7A3418()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7EF8, &qword_21E949738);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7EF0, &qword_21E949730);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7EE8, &qword_21E949728);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7EE0, &qword_21E949720);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7ED8, &qword_21E949718);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CED7ED0, &qword_21E949710);
  sub_21E8D919C(&qword_27CED7F18, &qword_27CED7ED0, &qword_21E949710, MEMORY[0x277CDE580]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_21E7A35C8(void *a1)
{
  sub_21E929F68();
  sub_21E92A198();
  sub_21E929E68();
  sub_21E929E68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_21E7A3754()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A378C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A3838()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A38D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E7A3908()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A3940()
{
  MEMORY[0x223D660A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21E7A397C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21E7A39C0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

__n128 sub_21E7A3A50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A3A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E929778();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_21E7A3B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E929778();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_21E7A3BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E929778();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_21E7A3C9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_21E929778();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

__n128 sub_21E7A3DB8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_21E7A3DC4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_21E7A572C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_sync_exit(v15);
  _Unwind_Resume(a1);
}

void sub_21E7A5AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7A5D3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7A624C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E7A63C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E7A669C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7A6F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id location)
{
  objc_destroyWeak(&a27);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NCStringFromStageChangeTrigger(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"unknown";
  }

  else
  {
    return off_27836F580[a1 - 1];
  }
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_21E7A882C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7AC4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7AC790(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7ACB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7AD5E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7B1790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7B40B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, id location)
{
  objc_destroyWeak((v52 + 48));
  objc_destroyWeak((v52 + 40));
  objc_destroyWeak(v50 + 7);
  objc_destroyWeak(v50 + 6);
  objc_destroyWeak(v50 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak((v51 + 56));
  objc_destroyWeak((v51 + 48));
  objc_destroyWeak(&STACK[0x200]);
  objc_destroyWeak(&STACK[0x208]);
  objc_destroyWeak(&STACK[0x240]);
  objc_destroyWeak(&STACK[0x238]);
  objc_destroyWeak(&STACK[0x278]);
  objc_destroyWeak(&STACK[0x270]);
  objc_destroyWeak(&STACK[0x280]);
  objc_destroyWeak(&STACK[0x2F0]);
  objc_destroyWeak(&STACK[0x2F8]);
  objc_destroyWeak(&STACK[0x330]);
  objc_destroyWeak(&STACK[0x338]);
  objc_destroyWeak(&STACK[0x370]);
  objc_destroyWeak((v53 - 200));
  objc_destroyWeak((v53 - 160));
  _Unwind_Resume(a1);
}

void sub_21E7B49FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_21E7B5AD0(_Unwind_Exception *a1)
{
  objc_destroyWeak(&STACK[0x3E8]);
  objc_destroyWeak(&STACK[0x400]);
  objc_destroyWeak(&STACK[0x460]);
  objc_destroyWeak(&STACK[0x458]);
  objc_destroyWeak(&STACK[0x4C0]);
  objc_destroyWeak(&STACK[0x4B8]);
  objc_destroyWeak((v1 - 168));
  objc_destroyWeak((v1 - 160));
  _Unwind_Resume(a1);
}

void sub_21E7B5F8C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 8);
  objc_destroyWeak(v1 + 7);
  objc_destroyWeak(v1 + 6);
  _Unwind_Resume(a1);
}

void sub_21E7B61B8(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1 + 7);
  objc_destroyWeak(v1 + 6);
  objc_destroyWeak(v1 + 5);
  _Unwind_Resume(a1);
}

void sub_21E7B6704(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_21E7B6F78(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 56));
  objc_destroyWeak((v3 + 48));
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v4 - 256));
  objc_destroyWeak((v4 - 248));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v4 - 144));
  objc_destroyWeak((v4 - 136));
  _Unwind_Resume(a1);
}

void sub_21E7B7740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id location, id a50)
{
  objc_destroyWeak(v52 + 9);
  objc_destroyWeak(v52 + 8);
  objc_destroyWeak(v52 + 7);
  objc_destroyWeak(v52 + 6);
  objc_destroyWeak(v51 + 8);
  objc_destroyWeak(v51 + 7);
  objc_destroyWeak(v51 + 6);
  objc_destroyWeak(v51 + 5);
  objc_destroyWeak(&location);
  objc_destroyWeak(&a50);
  objc_destroyWeak((v53 - 256));
  objc_destroyWeak((v53 - 248));
  objc_destroyWeak((v50 + 48));
  objc_destroyWeak((v50 + 40));
  objc_destroyWeak((v53 - 144));
  objc_destroyWeak((v53 - 136));
  _Unwind_Resume(a1);
}

void sub_21E7B8128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7BC31C(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x520], 8);
  _Block_object_dispose(&STACK[0x598], 8);
  _Block_object_dispose(&STACK[0x640], 8);
  _Block_object_dispose(&STACK[0x680], 8);
  _Block_object_dispose(&STACK[0x6F8], 8);
  _Unwind_Resume(a1);
}

void sub_21E7BDA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v22 + 80));
  objc_destroyWeak((v22 + 72));
  objc_destroyWeak(&location);
  objc_destroyWeak((v23 - 144));
  objc_sync_exit(v21);
  _Unwind_Resume(a1);
}

void sub_21E7C04B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E7C0D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7C17A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7C462C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7C8BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NCStackElevationPriorityForSectionTypeString(uint64_t a1)
{
  if (NCStackElevationPriorityForSectionTypeString_onceToken != -1)
  {
    NCStackElevationPriorityForSectionTypeString_cold_1();
  }

  v2 = NCStackElevationPriorityForSectionTypeString_sectionTypeOrderedSet;

  return v2;
}

void sub_21E7C9744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_21E7CFF08(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 40));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v4 - 72));
  _Unwind_Resume(a1);
}

void __NCStackElevationPriorityForSectionTypeString_block_invoke()
{
  v0 = MEMORY[0x277CBEB70];
  v6 = NCNotificationListSectionTypeString(0xAuLL);
  v1 = NCNotificationListSectionTypeString(2uLL);
  v2 = NCNotificationListSectionTypeString(3uLL);
  v3 = NCNotificationListSectionTypeString(0);
  v4 = [v0 orderedSetWithObjects:{v6, v1, v2, v3, 0}];
  v5 = NCStackElevationPriorityForSectionTypeString_sectionTypeOrderedSet;
  NCStackElevationPriorityForSectionTypeString_sectionTypeOrderedSet = v4;
}

void OUTLINED_FUNCTION_0_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, v8, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_21E7D3B3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7D4310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D58D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D6044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D6534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D6674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D8320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D8464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7D8FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21E7DB7A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21E7DC424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_21E7DC708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7DE0E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x30u);
}

void sub_21E7DEE64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_21E7DF3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21E7E0464(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21E7E1384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __NCDefaultAnimator_block_invoke()
{
  v0 = objc_alloc_init(NCSimpleAnimator);
  NCDefaultAnimator_Animator = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_21E7E4BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}