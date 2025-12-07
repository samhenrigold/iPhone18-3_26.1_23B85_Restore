void sub_1E3E6AA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = type metadata accessor for SearchCollectionViewModel();
  v13 = OUTLINED_FUNCTION_4_84(v12);
  if (v13)
  {
    p_isa = v13;
    v146 = v7;
    v147 = a3;
    v148 = a2;
    OUTLINED_FUNCTION_26_0();
    v16 = *(v15 + 1584);

    v18 = v16(v17);
    if ((sub_1E389CC78(v18, 1, v19) & 1) == 0 && ((sub_1E39DFFC8() & 1) == 0 || ([objc_opt_self() isPad] & 1) == 0))
    {
      goto LABEL_31;
    }

    type metadata accessor for LayoutGrid();
    sub_1E3E6C2B0();
    v145 = sub_1E3A2579C(v20);
    sub_1E3E6C2B0();
    sub_1E3A258E4(v21);
    v23 = v22;
    v25 = v24;
    v26 = *(*p_isa + 968);

    v28 = v26(v27);

    if (!v28)
    {
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_110_9();
    v30 = v28[49];
    v31 = (*(v29 + 464))();
    v32 = v28;
    v34 = sub_1E3AE003C(v30, v31, v33);
    v36 = v35;

    if (v36)
    {
      v144 = v28;
      v37 = v34 == v148 && v36 == v147;
      if (v37)
      {
      }

      else
      {
        v38 = sub_1E42079A4();

        if ((v38 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      OUTLINED_FUNCTION_110_9();
      v40 = (*(v39 + 512))();
      sub_1E37D26AC(v148, v147, v40);
      v42 = v41;

      if (!v42)
      {
LABEL_30:

LABEL_31:

        goto LABEL_32;
      }

      v44 = (*(*p_isa + 1344))(v43);
      if (sub_1E373F6E0(v44, 133, v45, v46, v47, v48))
      {
        v53 = sub_1E3A253B8(v145);
        v55 = v54;
        if (v53 == sub_1E3A253B8(4) && v55 == v56)
        {
        }

        else
        {
          v58 = sub_1E42079A4();

          if (v58)
          {
            OUTLINED_FUNCTION_26();
            v59 += 49;
            v55 = *v59;
            if ((*v59)())
            {
              OUTLINED_FUNCTION_30();
              (*(v60 + 192))(aBlock);
              OUTLINED_FUNCTION_3_204();
              if (!v37)
              {
                *(v61 + 8) = v23;
              }

              v62 = OUTLINED_FUNCTION_21_93();
              v63(v62);
            }

            v64 = v148;
            if (!v55())
            {
              goto LABEL_50;
            }

            OUTLINED_FUNCTION_30();
            v65 = OUTLINED_FUNCTION_38_50();
            v66(v65);
            OUTLINED_FUNCTION_3_204();
            if (!v37)
            {
              *(v67 + 24) = v25;
            }

            goto LABEL_49;
          }
        }

        OUTLINED_FUNCTION_26();
        v64 = v148;
        if (!(*(v84 + 392))())
        {
LABEL_50:
          OUTLINED_FUNCTION_53();
          sub_1E4205ED4();
          OUTLINED_FUNCTION_26_94();
          OUTLINED_FUNCTION_73_1();
          v90 = sub_1E41FE7E4();
          v91 = OUTLINED_FUNCTION_16_123(v90, sel_vui_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath_);

          v92 = v91;
          v93 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v94 = OUTLINED_FUNCTION_15_130(v93);
          v95 = sub_1E393D9C4(v32, v91, aBlock, 0);

LABEL_75:

          sub_1E325F748(aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
          goto LABEL_78;
        }

        OUTLINED_FUNCTION_30();
        v85 = OUTLINED_FUNCTION_38_50();
        v86(v85);
        OUTLINED_FUNCTION_3_204();
        if (!v37)
        {
          *(v87 + 8) = 0x4028000000000000;
        }

LABEL_49:
        v88 = OUTLINED_FUNCTION_21_93();
        v89(v88);

        goto LABEL_50;
      }

      if ((sub_1E373F6E0(v44, 134, v49, v50, v51, v52) & 1) == 0)
      {
        if ((sub_1E39DFFC8() & 1) == 0)
        {
          goto LABEL_58;
        }

        v97 = p_isa[2];
        v96 = p_isa[3];

        v98 = sub_1E39D0198();
        if (!v96)
        {
          goto LABEL_58;
        }

        if (v97 == *v98 && v96 == v98[1])
        {

          goto LABEL_36;
        }

        v100 = sub_1E42079A4();

        if ((v100 & 1) == 0)
        {
LABEL_58:
          v101 = sub_1E324FBDC();
          (*(v146 + 16))(v11, v101, v5);

          v102 = sub_1E41FFC94();
          v103 = sub_1E42067F4();

          if (os_log_type_enabled(v102, v103))
          {
            v143 = v103;
            v104 = swift_slowAlloc();
            aBlock[0] = swift_slowAlloc();
            *v104 = 136315650;
            *(v104 + 4) = sub_1E3270FC8(v148, v147, aBlock);
            *(v104 + 12) = 2080;
            v105 = (*(*v28 + 376))();
            sub_1E3270FC8(v105, v106, aBlock);
            v107 = OUTLINED_FUNCTION_73_1();
            *(v104 + 14) = v28;
            *(v104 + 22) = 2080;
            v108 = (*(*p_isa + 376))(v107);
            v110 = sub_1E3270FC8(v108, v109, aBlock);

            *(v104 + 24) = v110;
            p_isa = &v102->isa;
            _os_log_impl(&dword_1E323F000, v102, v143, "Search: Unexpected %s %s inside %s", v104, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6_0();
            v111 = v28;
            OUTLINED_FUNCTION_6_0();

            (*(v146 + 8))(v11, v5);
          }

          else
          {

            (*(v146 + 8))(v11, v5);
            v111 = v28;
          }

          sub_1E4205ED4();
          OUTLINED_FUNCTION_26_94();
          OUTLINED_FUNCTION_73_1();
          v140 = sub_1E41FE7E4();
          v141 = OUTLINED_FUNCTION_16_123(v140, sel_vui_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath_);

          v92 = v141;
          v142 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v94 = OUTLINED_FUNCTION_15_130(v142);
          v95 = sub_1E393D9C4(v111, v141, aBlock, 0);

          goto LABEL_75;
        }
      }

LABEL_36:
      if ((sub_1E39DFFC8() & 1) != 0 || (sub_1E3E6C1F8(v145) & 1) == 0)
      {
        OUTLINED_FUNCTION_26();
        v112 += 49;
        v75 = *v112;
        if ((*v112)())
        {
          OUTLINED_FUNCTION_30();
          (*(v113 + 192))(aBlock);
          OUTLINED_FUNCTION_3_204();
          if (!v37)
          {
            *(v114 + 8) = v23;
          }

          v115 = OUTLINED_FUNCTION_21_93();
          v116(v115);
        }

        v80 = v148;
        if (!v75())
        {
          goto LABEL_68;
        }

        OUTLINED_FUNCTION_30();
        v117 = OUTLINED_FUNCTION_38_50();
        v118(v117);
        OUTLINED_FUNCTION_3_204();
        if (!v37)
        {
          *(v119 + 24) = v25;
        }
      }

      else
      {
        OUTLINED_FUNCTION_26();
        v74 += 49;
        v75 = *v74;
        if ((*v74)())
        {
          OUTLINED_FUNCTION_30();
          (*(v76 + 192))(aBlock);
          OUTLINED_FUNCTION_3_204();
          if (!v37)
          {
            *(v77 + 8) = 0;
          }

          v78 = OUTLINED_FUNCTION_21_93();
          v79(v78);
        }

        v80 = v148;
        if (!v75())
        {
          goto LABEL_68;
        }

        OUTLINED_FUNCTION_30();
        v81 = OUTLINED_FUNCTION_38_50();
        v82(v81);
        OUTLINED_FUNCTION_3_204();
        if (!v37)
        {
          *(v83 + 24) = 0;
        }
      }

      v120 = OUTLINED_FUNCTION_21_93();
      v121(v120);

LABEL_68:
      OUTLINED_FUNCTION_53();
      sub_1E4205ED4();
      OUTLINED_FUNCTION_26_94();
      OUTLINED_FUNCTION_73_1();
      v122 = sub_1E41FE7E4();
      v123 = OUTLINED_FUNCTION_16_123(v122, sel_vui_dequeueReusableSupplementaryViewOfKind_withReuseIdentifier_forIndexPath_);

      v124 = v123;
      v125 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      v126 = OUTLINED_FUNCTION_15_130(v125);
      v127 = sub_1E393D9C4(v32, v123, aBlock, 0);

      sub_1E325F748(aBlock, &qword_1ECF296C0, &unk_1E429BBE0);
      if (v124)
      {
        v128 = type metadata accessor for SearchHistoryListHeaderView();
        v129 = OUTLINED_FUNCTION_22_10(v128);
        if (v129)
        {
          v130 = v129;
          v131 = OBJC_IVAR____TtC8VideosUI27SearchHistoryListHeaderView_clearButton;
          OUTLINED_FUNCTION_5_0(v129 + OBJC_IVAR____TtC8VideosUI27SearchHistoryListHeaderView_clearButton, v150);
          v132 = *(v130 + v131);
          if (v132)
          {
            type metadata accessor for Accessibility();
            v133 = v132;
            sub_1E40A7DC8();
            sub_1E38E89A0(v134, v135, v133);

            v136 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v137 = swift_allocObject();
            v137[2] = v136;
            v137[3] = v144;
            v137[4] = v132;
            aBlock[4] = sub_1E3E6CBB0;
            aBlock[5] = v137;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1E37C0588;
            aBlock[3] = &block_descriptor_126;
            v138 = _Block_copy(aBlock);
            v139 = v133;

            [v139 setSelectActionHandler_];

            _Block_release(v138);
          }

          else
          {
          }

          goto LABEL_78;
        }
      }

      else
      {
      }

LABEL_78:
      OUTLINED_FUNCTION_54_0();
      return;
    }
  }

LABEL_32:
  OUTLINED_FUNCTION_54_0();

  sub_1E41CD430(v68, v69, v70, v71, v72);
}

void sub_1E3E6B734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E324FBDC();
  (*(v8 + 16))(v12, v13, v6);
  v14 = sub_1E41FFC94();
  v15 = sub_1E4206814();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1E323F000, v14, v15, "Search: clearButton did click", v16, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v8 + 8))(v12, v6);
  OUTLINED_FUNCTION_5_0(a1 + 16, v23);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x550))();
    v21 = v20;

    if (v19)
    {
      ObjectType = swift_getObjectType();
      (*(v21 + 8))(a2, a3, ObjectType, v21);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1E3E6B928()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  OUTLINED_FUNCTION_26_3();
  v7 = *((*MEMORY[0x1E69E7D40] & v6) + 0x218);
  v8 = v7();
  sub_1E4200104();

  v9 = v7();
  sub_1E42000A4();

  return (*(v2 + 8))(v5, v0);
}

void (*sub_1E3E6BA6C(uint64_t a1))(uint64_t)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SearchStackViewController(0);
  objc_msgSendSuper2(&v8, sel_vuiScrollViewDidScroll_, a1);
  OUTLINED_FUNCTION_26_3();
  result = (*((*MEMORY[0x1E69E7D40] & v3) + 0x5B0))();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result(a1);
    return sub_1E34AF594(v6, v7);
  }

  return result;
}

void sub_1E3E6BB8C(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v4 = (*(v3 + 440))();
  (*((*v2 & *v4) + 0xB8))(a1);
}

void sub_1E3E6BC44()
{
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 440))();
  v2 = [v1 collectionViewLayout];

  [v2 invalidateLayout];
}

unint64_t sub_1E3E6BCE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 98);
  sub_1E384EE08(*(a1 + 98));
  v5 = v4;
  if (a2)
  {
    OUTLINED_FUNCTION_26();
    v7 = (*(v6 + 1584))();
    sub_1E3AFFC64(v7, v8, v9);
    if (sub_1E4205E84())
    {
      if ((TVAppFeature.isEnabled.getter(10, v10, v11) & 1) == 0)
      {
        v16 = 0xD00000000000001ALL;
        goto LABEL_10;
      }

      if (sub_1E373F6E0(v3, 215, v12, v13, v14, v15))
      {
        v16 = 0xD00000000000001ALL;
LABEL_10:

        return v16;
      }
    }

    else
    {
      OUTLINED_FUNCTION_26();
      (*(v17 + 1584))();
      if (sub_1E4205E84())
      {
        v16 = 0xD000000000000018;
        if (sub_1E373F6E0(v3, 216, v18, v19, v20, v21))
        {
          v16 = 0xD00000000000001DLL;
          goto LABEL_10;
        }

        if (TVAppFeature.isEnabled.getter(10, v22, v23) & 1) == 0 || (sub_1E373F6E0(v3, 215, v25, v26, v27, v28))
        {
          goto LABEL_10;
        }
      }
    }
  }

  return v5;
}

double sub_1E3E6BE9C(uint64_t a1, uint64_t a2)
{
  sub_1E41CD338(a1);
  OUTLINED_FUNCTION_7_23();
  v5 = type metadata accessor for CollectionViewModel();
  if (OUTLINED_FUNCTION_4_84(v5))
  {
    OUTLINED_FUNCTION_26_0();
    v7 = (*(v6 + 1344))();
    if (sub_1E373F6E0(v7, 119, v8, v9, v10, v11) & 1) != 0 || (v12 = type metadata accessor for SearchCollectionViewModel(), OUTLINED_FUNCTION_4_84(v12)) && (OUTLINED_FUNCTION_26_0(), v14 = (*(v13 + 1584))(), LOBYTE(v25[0]) = v14, LOBYTE(v26) = 1, sub_1E3AFFC64(v14, v15, v16), (sub_1E4205E84()))
    {
      if (a2)
      {
        swift_getObjectType();
        v2 = sub_1E40175B0();
      }

      else
      {
        v2 = 0.0;
      }

      type metadata accessor for LayoutGrid();
      v17 = sub_1E3A2579C(v2);
      if ((sub_1E39DFFC8() & 1) != 0 || (sub_1E3E6C1F8(v17) & 1) == 0)
      {
        v21 = TVAppFeature.isEnabled.getter(10, v18, v19);
        if (v21)
        {
          v25[0] = *(a1 + 98);
          v26 = 119;
          sub_1E3741534(v21, v22, v23);
          sub_1E4205E84();
        }
      }

      else
      {
        sub_1E39DFFC8();
        v20 = sub_1E39416C8();
        OUTLINED_FUNCTION_5_0(v20, v25);
        sub_1E3952C40();
      }

      nullsub_1();
      OUTLINED_FUNCTION_7_23();
    }
  }

  return v2;
}

uint64_t sub_1E3E6C0C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && (v5 = type metadata accessor for HintListCellLayout(), OUTLINED_FUNCTION_4_84(v5)) || (result = TVAppFeature.isEnabled.getter(10, a2, a3), (result & 1) == 0))
  {
    type metadata accessor for LayoutGrid();
    sub_1E3E6C2B0();
    sub_1E3A258E4(v7);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    if ((sub_1E39DFFC8() & 1) != 0 || (result = sub_1E3E6C1F8(a2), (result & 1) == 0))
    {
      result = sub_1E3A24FDC(a2);
      if (result)
      {
        if (!a1)
        {
          return result;
        }

        *&v20 = sub_1E3952C64();
        *(&v20 + 1) = v17;
        *&v21 = v18;
        *(&v21 + 1) = v19;
      }

      else
      {
        if (!a1)
        {
          return result;
        }

        *&v20 = v9;
        *(&v20 + 1) = v11;
        *&v21 = v13;
        *(&v21 + 1) = v15;
      }
    }

    else
    {
      if (!a1)
      {
        return result;
      }

      v16 = *(MEMORY[0x1E69DDCE0] + 16);
      v20 = *MEMORY[0x1E69DDCE0];
      v21 = v16;
    }

    v22 = 0;
    return (*(*a1 + 184))(&v20);
  }

  return result;
}

uint64_t sub_1E3E6C1F8(char a1)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v2 = sub_1E3E67870();
    if (v2 != 7)
    {
      v3 = v2;
      v4 = sub_1E3A253B8(a1);
      v6 = v5;
      if (sub_1E3A253B8(v3) == v4 && v7 == v6)
      {
      }

      else
      {
        v9 = 1;
        v10 = sub_1E42079A4();

        if (v10)
        {
          return v9;
        }
      }
    }
  }

  return 0;
}

void sub_1E3E6C2B0()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 440))();
  [v2 frame];
  OUTLINED_FUNCTION_3();

  OUTLINED_FUNCTION_14_25();
  if ([objc_opt_self() isPad])
  {
    v3 = [v0 vuiIsRTL];
    v4 = [v0 view];
    v5 = v4;
    if (v3)
    {
      if (v4)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    else if (v4)
    {
LABEL_6:
      [v4 safeAreaInsets];

      return;
    }

    __break(1u);
  }
}

uint64_t sub_1E3E6C404()
{
  sub_1E32AF6F8(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_delegate);

  sub_1E34AF594(*(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_scrollHandler), *(v0 + OBJC_IVAR____TtC8VideosUI25SearchStackViewController_scrollHandler + 8));
}

id sub_1E3E6C46C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SearchStackViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3E6C518(int a1)
{
  v2 = sub_1E4207B44();
  sub_1E37414E0(v2, v3, v4);
  v5 = sub_1E4205DB4();
  sub_1E3E673C4(v5, v6, v7);
  sub_1E4205DB4();
  v8 = sub_1E4207BA4();
  return sub_1E3E6C5B8(a1 & 0xFFFFFF, v8, v9);
}

unint64_t sub_1E3E6C5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v14 = ~v4;
    sub_1E3742F1C(a1, a2, a3);
    do
    {
      sub_1E4206254();
      sub_1E4206254();
      if (v17 == v15 && v18 == v16)
      {
      }

      else
      {
        v7 = sub_1E42079A4();

        if ((v7 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      sub_1E389D0D4(v8, v9, v10);
      sub_1E4206254();
      sub_1E4206254();
      if (v17 == v15 && v18 == v16)
      {

        return v5;
      }

      v12 = sub_1E42079A4();

      if (v12)
      {
        return v5;
      }

LABEL_15:
      v5 = (v5 + 1) & v14;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_1E3E6C79C(int a1)
{
  v2 = v1;
  v3 = sub_1E3E6C518(a1 & 0xFFFFFF);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A560, &qword_1E42D7988);
  sub_1E4207644();
  v6 = *(*(v11 + 56) + 8 * v5);
  v7 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
  sub_1E3E67B18(v7, v8, v9);
  sub_1E4207664();
  *v2 = v11;
  return v6;
}

unint64_t sub_1E3E6C880(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E3740AE8(a3, a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A568, &unk_1E42D7990);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1E3740AE8(a3, v14, v15);
  if ((v13 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v12 = v16;
LABEL_5:
  v18 = *v5;
  if (v13)
  {
    v19 = (v18[7] + 16 * v12);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {

    return sub_1E3E6CB18(v12, a3, a1, a2, v18);
  }
}

void sub_1E3E6C9B0(uint64_t a1, int a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E3E6C518(a2 & 0xFFFFFF);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A560, &qword_1E42D7988);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1E3E6C518(a2 & 0xFFFFFF);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v10);
    *(v15 + 8 * v10) = a1;
  }

  else
  {

    sub_1E3E6CB60(v10, a2 & 0xFFFFFF, a1, v14);
  }
}

uint64_t sub_1E3E6CAD4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1E3E6CB18(unint64_t result, __int16 a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 2 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1E3E6CB60(unint64_t result, int a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 4 * result;
  *v4 = a2;
  *(v4 + 2) = BYTE2(a2);
  *(a4[7] + 8 * result) = a3;
  v5 = a4[2];
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v7;
  }

  return result;
}

unint64_t sub_1E3E6CBC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3A550;
  if (!qword_1ECF3A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A550);
  }

  return result;
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SearchPrototypeDictKey(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v3 = -1;
    return (v3 + 1);
  }

  if (a2 >= 0xFEFA)
  {
    if ((a2 + 33489158) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
LABEL_5:
        v3 = (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16711943;
        return (v3 + 1);
      }
    }
  }

  v4 = *a1;
  v5 = v4 >= 0x107;
  v3 = v4 - 263;
  if (!v5)
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchPrototypeDictKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33489158) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFEF9)
  {
    v3 = 0;
  }

  if (a2 > 0xFEF9)
  {
    *result = a2 + 262;
    *(result + 2) = (a2 - 65274) >> 16;
    if (v3)
    {
      v4 = ((a2 - 65274) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *result = a2 + 262;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t sub_1E3E6CDFC()
{
  sub_1E3AC5818();

  return OUTLINED_FUNCTION_32_0();
}

void sub_1E3E6CE4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_31_1();
  v22 = v21;
  v75 = v23;
  v76 = v24;
  v26 = v25;
  v77 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v74 = v34;
  v35 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_5();
  v41 = v40 - v39;
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_1_239();
  sub_1E3E70478(v42, v43);
  *(v33 + 96) = sub_1E4201754();
  *(v33 + 104) = v44;
  *(v33 + 112) = sub_1E3E6CDD0;
  *(v33 + 120) = 0;
  *(v33 + 128) = 0;
  v45 = type metadata accessor for StackTemplateView(0);
  v46 = *(v45 + 52);
  *(v33 + v46) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v47 = *(v45 + 56);
  v48 = v29;
  v49 = (v33 + v47);
  *v49 = 0;
  v49[1] = 0;
  v50 = sub_1E324FBDC();
  (*(v37 + 16))(v41, v50, v35);

  v51 = sub_1E41FFC94();
  v52 = sub_1E4206814();

  if (os_log_type_enabled(v51, v52))
  {
    v71 = v35;
    v72 = v48;
    v73 = v22;
    v53 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v79[0] = v70;
    *v53 = 136315394;
    if (v31[3])
    {
      v54 = v31[2];
      v55 = v31[3];
    }

    else
    {
      v55 = 0xE400000000000000;
      v54 = 1819047278;
    }

    v59 = sub_1E3270FC8(v54, v55, v79);

    *(v53 + 4) = v59;
    *(v53 + 12) = 2080;
    v60 = sub_1E41E1364(v72);
    v62 = sub_1E3270FC8(v60, v61, v79);
    v48 = v72;

    *(v53 + 14) = v62;
    _os_log_impl(&dword_1E323F000, v51, v52, "StackTemplateView::init id:%s, showcaseValue:%s", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E69143B0](v70, -1, -1);
    MEMORY[0x1E69143B0](v53, -1, -1);

    (*(v37 + 8))(v41, v71);
    v58 = v77;
    v22 = v73;
  }

  else
  {

    v56 = OUTLINED_FUNCTION_33_11();
    v57(v56);
    v58 = v77;
  }

  *(v33 + 56) = v48;
  type metadata accessor for TemplateViewModel(0);
  OUTLINED_FUNCTION_2_205();
  sub_1E3E70478(v63, v64);

  v65 = sub_1E42010C4();
  *(v33 + 40) = v66;
  *(v33 + 48) = v74;
  *v33 = v75;
  *(v33 + 8) = v76;
  *(v33 + 16) = v22 & 1;
  *(v33 + 24) = a21;
  *(v33 + 32) = v65;
  *(v33 + 64) = v58;
  *(v33 + 72) = v26;
  LOBYTE(v78[0]) = 5;
  (*(*v31 + 776))(v79, v78, &unk_1F5D5DAC8, &off_1F5D5C998);

  if (v79[3])
  {
    v67 = swift_dynamicCast();
    v68 = v78[0];
    v69 = v78[1];
    if (!v67)
    {
      v68 = 0;
      v69 = 0;
    }
  }

  else
  {
    sub_1E329505C(v79);
    v68 = 0;
    v69 = 0;
  }

  *(v33 + 80) = v68;
  *(v33 + 88) = v69;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E6D29C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for StackTemplateView(0);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A580, &qword_1E42D79E0);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  OUTLINED_FUNCTION_5_7();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v54 - v15;
  v17 = *(v0 + 40);
  v18 = (*(*v17 + 464))(v14);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1E32AE9B0(v19);
  v58 = v10;
  v59 = v3;
  if (v20)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v52 = OUTLINED_FUNCTION_21_17();
      v57 = MEMORY[0x1E6911E60](v52);
    }

    else
    {
      if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_40;
      }

      v57 = *(v19 + 32);
    }
  }

  else
  {
    v57 = 0;
  }

  sub_1E3E6F548(v1, &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v7 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = v19;
  v21 = sub_1E3E6F5AC(&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v3 + ((v10 + 24) & ~v10));
  v22 = (*(**(v1 + 40) + 464))(v21);
  if (v22)
  {
    v23 = v22;
    if (sub_1E32AE9B0(v22))
    {
      if ((v23 & 0xC000000000000001) == 0)
      {
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return;
        }

        v24 = *(v23 + 32);

        goto LABEL_14;
      }

LABEL_40:
      v53 = OUTLINED_FUNCTION_21_17();
      v24 = MEMORY[0x1E6911E60](v53);
LABEL_14:

      switch(*(v24 + 98))
      {
        case 'Q':
        case 'R':
        case 'V':
          goto LABEL_15;
        case 'S':
          OUTLINED_FUNCTION_111();
          v32 = (*(v31 + 392))();
          if (!v32)
          {
            goto LABEL_33;
          }

          v33 = v32;
          type metadata accessor for CanonicalBannerLayout();
          OUTLINED_FUNCTION_20_2();
          v34 = swift_dynamicCastClass();
          if (v34 && (v55 = v34, v56 = v33, OUTLINED_FUNCTION_111(), (v36 = (*(v35 + 488))()) != 0) && (v54 = sub_1E373E010(35, v36, v37), , v54))
          {

            v39 = (*(*v55 + 1912))(v38);
            if (v39 == 3)
            {

LABEL_15:
            }

            else
            {
              LOBYTE(v61) = v39;
              LOBYTE(v60) = 2;
              sub_1E39ABD54(v39, v40, v41);
              v51 = sub_1E4205E84();

              if (v51)
              {
                goto LABEL_34;
              }
            }

            v25 = sub_1E4202744();
            v26 = sub_1E4202774();
            sub_1E4202774();
            if (sub_1E4202774() == v25)
            {
              goto LABEL_35;
            }
          }

          else
          {

LABEL_33:
          }

          break;
        case 'T':
          OUTLINED_FUNCTION_111();
          if (!(*(v27 + 392))())
          {
            goto LABEL_33;
          }

          type metadata accessor for RoomBannerLayout();
          OUTLINED_FUNCTION_20_2();
          v56 = swift_dynamicCastClass();

          if (!v56)
          {
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_111();
          v29 = (*(v28 + 488))();
          if (!v29)
          {
            goto LABEL_33;
          }

          v56 = sub_1E373E010(39, v29, v30);

          if (!v56)
          {
            goto LABEL_34;
          }

          goto LABEL_15;
        case 'U':
          goto LABEL_33;
        default:
          if (*(v24 + 98) != 123)
          {
            goto LABEL_33;
          }

          goto LABEL_15;
      }

      goto LABEL_34;
    }
  }

LABEL_34:
  v26 = sub_1E4202774();
LABEL_35:

  v61 = sub_1E3E6F610;
  v62 = v3;
  v63 = v26;
  v60 = v17;
  sub_1E3E6F548(v1, &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v42 = swift_allocObject();
  sub_1E3E6F5AC(&v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + ((v10 + 16) & ~v10));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A588, &qword_1E42D79E8);
  type metadata accessor for TemplateViewModel(0);
  sub_1E3E6F760();
  OUTLINED_FUNCTION_2_205();
  sub_1E3E70478(v43, v44);
  sub_1E4203524();

  type metadata accessor for StackTemplateCellCache(0);
  OUTLINED_FUNCTION_7_189();
  sub_1E3E70478(v45, v46);
  OUTLINED_FUNCTION_32_0();
  v47 = sub_1E4200BC4();
  v48 = sub_1E4200504();
  v49 = v59;
  (*(v12 + 32))(v59, v16, v58);
  v50 = (v49 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A598, &qword_1E42D79F8) + 36));
  *v50 = v48;
  v50[1] = v47;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E6D964()
{
  OUTLINED_FUNCTION_31_1();
  v35 = v1;
  v36 = v2;
  v4 = v3;
  v44 = v5;
  sub_1E4201FA4();
  OUTLINED_FUNCTION_0_10();
  v42 = v7;
  v43 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5A8, &qword_1E42D7AB8);
  OUTLINED_FUNCTION_0_10();
  v38 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5B0, &qword_1E42D7AC0);
  OUTLINED_FUNCTION_0_10();
  v39 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v35 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5B8, &qword_1E42D7AC8);
  OUTLINED_FUNCTION_0_10();
  v40 = v20;
  v41 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_5();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5C0, &qword_1E42D7AD0);
  OUTLINED_FUNCTION_0_10();
  v23 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v35 - v25;
  sub_1E4202704();
  v45 = v4;
  v46 = v36;
  v47 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5C8, &qword_1E42D7AD8);
  sub_1E3E6FC48();
  sub_1E4200AD4();
  sub_1E4201F94();
  v27 = sub_1E4202704();
  sub_1E42026F4();
  sub_1E42026F4();
  if (sub_1E42026F4() != v27)
  {
    sub_1E42026F4();
  }

  v28 = sub_1E328FCF4(&qword_1EE289EF8, &qword_1ECF3A5A8, &qword_1E42D7AB8);
  sub_1E4203244();
  (*(v42 + 8))(v10, v43);
  v29 = OUTLINED_FUNCTION_33_11();
  v30(v29);
  v48 = v11;
  v49 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E4203314();
  (*(v39 + 8))(v18, v14);
  sub_1E4202704();
  v48 = v14;
  v49 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v32 = v41;
  sub_1E3E3665C(v41, v26);
  (*(v40 + 8))(v0, v32);
  v33 = v44;
  (*(v23 + 32))(v44, v26, v37);
  v34 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5E0, &unk_1E42D7AF8) + 36));
  *v34 = 0xD000000000000019;
  v34[1] = 0x80000001E4286690;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E6DDEC()
{
  OUTLINED_FUNCTION_31_1();
  v47 = v1;
  v57 = v2;
  v4 = v3;
  v53 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v45 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_5();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5E8, &qword_1E42D7B08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_23_87(v10, v44);
  v12 = OUTLINED_FUNCTION_8_0(v11);
  v48 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v49 = v14;
  v50 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4202084();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5D8, &qword_1E42D7AE8);
  OUTLINED_FUNCTION_0_10();
  v46 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v44 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5D0, &qword_1E42D7AE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v44 - v22;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5F0, &qword_1E42D7B10);
  OUTLINED_FUNCTION_0_10();
  v51 = v24;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v44 - v26;
  if (sub_1E32AE9B0(v4))
  {
    v45 = "$_prototypeCellDictionary";
    v28 = sub_1E4201D54();
    v44 = &v44;
    MEMORY[0x1EEE9AC00](v28);
    *(&v44 - 4) = v57;
    *(&v44 - 3) = v4;
    *(&v44 - 2) = v47;
    LODWORD(v58) = 0;
    sub_1E3E70478(&qword_1EE2889E8, MEMORY[0x1E697FCB0]);
    sub_1E4207CD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A5F8, &qword_1E42D7B18);
    v47 = v6;
    sub_1E328FCF4(&qword_1EE288330, &qword_1ECF3A5F8, &qword_1E42D7B18);
    sub_1E4200AA4();
    v29 = sub_1E328FCF4(&qword_1EE289F00, &qword_1ECF3A5D8, &qword_1E42D7AE8);
    sub_1E3E6FE64(v29, v30, v31);
    sub_1E42031E4();
    (*(v46 + 8))(v20, v16);
    v32 = v52;
    v33 = &v23[*(v52 + 36)];
    *v33 = 0xD00000000000001ALL;
    *(v33 + 1) = 0x80000001E42866B0;
    v34 = v50;
    sub_1E3E6F548(v57, v50);
    v35 = (*(v48 + 80) + 16) & ~*(v48 + 80);
    v36 = swift_allocObject();
    sub_1E3E6F5AC(v34, v36 + v35);
    v37 = sub_1E3E6FD28();
    sub_1E401A3CC(0xD000000000000019, v45 | 0x8000000000000000, sub_1E3E70020, v36, v32, v37);

    sub_1E325F6F0(v23, &qword_1ECF3A5D0, &qword_1E42D7AE0);
    v38 = v51;
    v39 = v54;
    (*(v51 + 16))(v56, v27, v54);
    swift_storeEnumTagMultiPayload();
    v58 = v32;
    v59 = v37;
    v40 = OUTLINED_FUNCTION_10_141();
    OUTLINED_FUNCTION_9_148(v40);
    sub_1E4201F44();
    (*(v38 + 8))(v27, v39);
  }

  else
  {
    nullsub_1();
    v41 = v45;
    (*(v45 + 16))(v56, v0, v6);
    swift_storeEnumTagMultiPayload();
    v42 = sub_1E3E6FD28();
    v58 = v52;
    v59 = v42;
    v43 = OUTLINED_FUNCTION_10_141();
    OUTLINED_FUNCTION_9_148(v43);
    sub_1E4201F44();
    (*(v41 + 8))(v0, v6);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E6E448()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v35 = v2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A600, &qword_1E42D7B20);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = (v6 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A608, &unk_1E42D7B28);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  sub_1E3E6E714();
  sub_1E4203DA4();
  sub_1E4200D94();
  v50 = 1;
  v49 = v44;
  v48 = v46;
  v36 = 0;
  v37 = 1;
  v38 = v43;
  v39 = v44;
  v40 = v45;
  v41 = v46;
  v42 = v47;
  v20 = *(v1 + 48);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28D60, &qword_1E42984E0);
  v22 = sub_1E374AD84();
  sub_1E3A610C8(v20, v21, v22);
  v33 = v16;
  sub_1E379D7E4(v19, v16, &qword_1ECF3A608, &unk_1E42D7B28);
  v23 = *(v4 + 16);
  v24 = v8;
  v25 = v8;
  v26 = v11;
  v27 = v11;
  v28 = v34;
  v23(v25, v26, v34);
  v29 = v35;
  sub_1E379D7E4(v16, v35, &qword_1ECF3A608, &unk_1E42D7B28);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A610, &qword_1E42D7B38);
  v23((v29 + *(v30 + 48)), v24, v28);
  v31 = *(v4 + 8);
  v31(v27, v28);
  sub_1E325F6F0(v19, &qword_1ECF3A608, &unk_1E42D7B28);
  v31(v24, v28);
  sub_1E325F6F0(v33, &qword_1ECF3A608, &unk_1E42D7B28);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E6E714()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v0;
  v2 = v1;
  v50 = v3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A618, &qword_1E42D7B40);
  OUTLINED_FUNCTION_0_10();
  v44 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  KeyPath = &v43 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A620, &qword_1E42D7B48);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  v13 = OUTLINED_FUNCTION_23_87(v12, v43);
  v14 = OUTLINED_FUNCTION_8_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A628, &qword_1E42D7B50);
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v43 - v24;
  v26 = [objc_opt_self() sharedInstance];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 vStackInForEachEnabled];

    v29 = v18 + 7;
    v52 = v2;
    if (v28)
    {
      KeyPath = swift_getKeyPath();
      sub_1E3E6F548(v46, &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      v30 = (*(v16 + 80) + 16) & ~*(v16 + 80);
      v31 = swift_allocObject();
      sub_1E3E6F5AC(v19, v31 + v30);
      *(v31 + ((v29 + v30) & 0xFFFFFFFFFFFFFFF8)) = v2;
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A640, &qword_1E42D7BC0);
      OUTLINED_FUNCTION_14_11();
      sub_1E328FCF4(v32, &unk_1ECF2C790, &qword_1E42996A0);
      sub_1E328FCF4(&qword_1EE288548, &qword_1ECF3A640, &qword_1E42D7BC0);
      sub_1E4203B34();
      swift_getKeyPath();
      v33 = v47;
      sub_1E4203B24();

      v34 = *(v21 + 8);
      v35 = OUTLINED_FUNCTION_33_11();
      v34(v35);
      (*(v21 + 16))(v49, v25, v33);
      swift_storeEnumTagMultiPayload();
      sub_1E3E704BC();
      sub_1E3E7056C();
      OUTLINED_FUNCTION_33_11();
      sub_1E4201F44();
      (v34)(v25, v33);
    }

    else
    {
      swift_getKeyPath();
      sub_1E3E6F548(v46, v19);
      v36 = (*(v16 + 80) + 16) & ~*(v16 + 80);
      v37 = swift_allocObject();
      sub_1E3E6F5AC(v19, v37 + v36);
      *(v37 + ((v29 + v36) & 0xFFFFFFFFFFFFFFF8)) = v2;
      swift_bridgeObjectRetain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A630, &qword_1E42D7B88);
      OUTLINED_FUNCTION_14_11();
      sub_1E328FCF4(v38, &unk_1ECF2C790, &qword_1E42996A0);
      sub_1E3E70300();
      sub_1E4203B34();
      swift_getKeyPath();
      v39 = KeyPath;
      v40 = v51;
      sub_1E4203B24();

      v41 = v44;
      v42 = *(v44 + 8);
      v42(v8, v40);
      (*(v41 + 16))(v49, v39, v40);
      swift_storeEnumTagMultiPayload();
      sub_1E3E704BC();
      sub_1E3E7056C();
      sub_1E4201F44();
      v42(v39, v40);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3E6ED08()
{
  LOBYTE(v3) = 3;
  (*(*v0 + 776))(v4, &v3, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v4[3])
  {
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_1E329505C(v4);
  }

  if (!v0[3])
  {
    return 0;
  }

  v1 = v0[2];

  return v1;
}

uint64_t sub_1E3E6EDE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3E6ED08();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1E3E6EE0C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = (v11 - v10);
  if ((*(**(v0 + 40) + 1048))())
  {

LABEL_3:
    v13 = 0;
    goto LABEL_6;
  }

  v14 = sub_1E37D027C(v3);
  if (!v14)
  {
    goto LABEL_3;
  }

  v15 = v14;

  v13 = v15 == v5;
LABEL_6:
  v16 = *(v1 + 96);
  if (v16)
  {
    type metadata accessor for StackTemplateView(0);

    sub_1E3746E10(v12);
    sub_1E37FB85C(v5, v3, v16, v13, v19);

    (*(v8 + 8))(v12, v6);
    sub_1E3E6F034();
    sub_1E375B760(v19);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    type metadata accessor for AppEnvironment(0);
    OUTLINED_FUNCTION_1_239();
    sub_1E3E70478(v17, v18);
    OUTLINED_FUNCTION_21_17();
    sub_1E4201744();
    __break(1u);
  }
}

uint64_t sub_1E3E6EFE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_1E3E6F034()
{
  OUTLINED_FUNCTION_31_1();
  v37 = v0;
  v38 = v2;
  v34 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB58, &qword_1E42A2B00);
  OUTLINED_FUNCTION_0_10();
  v36 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A650, &qword_1E42D7BD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A658, &qword_1E42D7BE0);
  OUTLINED_FUNCTION_0_10();
  v35 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A638, &qword_1E42D7B90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v33 - v20;
  if (!sub_1E385053C())
  {
    memcpy(v39, v34, sizeof(v39));
    nullsub_1();
    memcpy(v40, v39, 0x150uLL);
    sub_1E3A546A4(v5, v40, 0, *(v37 + 24), v1);
    v29 = v36;
    (*(v36 + 16))(v12, v1, v6);
    swift_storeEnumTagMultiPayload();
    v30 = sub_1E3E703A4();
    OUTLINED_FUNCTION_14_14(v30);
    sub_1E4201F44();
    (*(v29 + 8))(v1, v6);
    goto LABEL_5;
  }

  v33[0] = v12;
  v33[1] = v18;
  v34 = v9;
  v36 = v6;
  v22 = *(v37 + 96);
  if (v22)
  {
    v37 = *(v37 + 56);
    v23 = *(*v22 + 216);

    v25 = v23(v24);

    v26 = *(*v22 + 184);

    v26(v27);

    sub_1E41144F4(v5, v37, v25, v17);
    swift_getOpaqueTypeConformance2();
    sub_1E4203374();
    (*(v35 + 8))(v17, v13);
    sub_1E379D7E4(v21, v33[0], &qword_1ECF3A638, &qword_1E42D7B90);
    swift_storeEnumTagMultiPayload();
    v28 = sub_1E3E703A4();
    OUTLINED_FUNCTION_14_14(v28);
    sub_1E4201F44();
    sub_1E325F6F0(v21, &qword_1ECF3A638, &qword_1E42D7B90);
LABEL_5:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_1_239();
  sub_1E3E70478(v31, v32);
  OUTLINED_FUNCTION_21_17();
  sub_1E4201744();
  __break(1u);
}

id sub_1E3E6F480()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 launchConfig];

  v2 = [v1 layoutReuseIdleTimeToLive];
  return v2;
}

uint64_t type metadata accessor for StackTemplateView(uint64_t a1)
{
  result = qword_1EE2A19E0;
  if (!qword_1EE2A19E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E6F548(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StackTemplateView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E6F5AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StackTemplateView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3E6F610()
{
  v0 = OUTLINED_FUNCTION_22_80();
  OUTLINED_FUNCTION_17_2(v0);

  sub_1E3E6D964();
}

double sub_1E3E6F684(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for StackTemplateView(0);
  OUTLINED_FUNCTION_17_2(v3);
  v4 = *a2;
  type metadata accessor for StackTemplateCellCache(0);
  OUTLINED_FUNCTION_7_189();
  sub_1E3E70478(v5, v6);
  sub_1E4200BC4();
  sub_1E3E8A3D8(v4);

  return result;
}

unint64_t sub_1E3E6F760()
{
  result = qword_1EE289A40;
  if (!qword_1EE289A40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A588, &qword_1E42D79E8);
    sub_1E328FCF4(&qword_1EE2893E0, &qword_1ECF3A590, &qword_1E42D79F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A40);
  }

  return result;
}

void sub_1E3E6F85C(uint64_t a1)
{
  sub_1E38468A4(319);
  if (v1 <= 0x3F)
  {
    sub_1E3DDADC8(319, &qword_1EE28A128, &unk_1ECF326C0, &qword_1E429D160);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ShowcaseValue(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for NavigationBarObservableModel(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for ViewMetricsRecorder();
          if (v5 <= 0x3F)
          {
            sub_1E3E6FBDC(319, &qword_1EE23B5F8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1E381EC50(319);
              if (v7 <= 0x3F)
              {
                sub_1E3E6FA04(319);
                if (v8 <= 0x3F)
                {
                  sub_1E38D5D68(319);
                  if (v9 <= 0x3F)
                  {
                    sub_1E3DDADC8(319, &qword_1EE23ACC8, &unk_1ECF2C3F0, qword_1E42A0B50);
                    if (v10 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E3E6FA04(uint64_t a1)
{
  if (!qword_1EE289E40)
  {
    type metadata accessor for StackTemplateCellCache(255);
    sub_1E3E70478(qword_1EE25EC38, type metadata accessor for StackTemplateCellCache);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289E40);
    }
  }
}

unint64_t sub_1E3E6FA98()
{
  result = qword_1EE2898D0;
  if (!qword_1EE2898D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A598, &qword_1E42D79F8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A588, &qword_1E42D79E8);
    type metadata accessor for TemplateViewModel(255);
    sub_1E3E6F760();
    sub_1E3E70478(&qword_1EE279850, type metadata accessor for TemplateViewModel);
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE288808, &qword_1ECF3A5A0, &qword_1E42D7A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898D0);
  }

  return result;
}

void sub_1E3E6FBDC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1E3E6FC48()
{
  result = qword_1EE288E28;
  if (!qword_1EE288E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A5C8, &qword_1E42D7AD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A5D0, &qword_1E42D7AE0);
    sub_1E3E6FD28();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E28);
  }

  return result;
}

unint64_t sub_1E3E6FD28()
{
  result = qword_1EE289910;
  if (!qword_1EE289910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A5D0, &qword_1E42D7AE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A5D8, &qword_1E42D7AE8);
    v3 = sub_1E328FCF4(&qword_1EE289F00, &qword_1ECF3A5D8, &qword_1E42D7AE8);
    sub_1E3E6FE64(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    sub_1E328FCF4(&qword_1EE288888, &qword_1ECF2D708, &qword_1E42D7AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289910);
  }

  return result;
}

unint64_t sub_1E3E6FE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE296610[0];
  if (!qword_1EE296610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE296610);
  }

  return result;
}

uint64_t objectdestroy_2Tm_3()
{
  type metadata accessor for StackTemplateView(0);
  OUTLINED_FUNCTION_144();
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  OUTLINED_FUNCTION_27_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v3 + v1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_124();
  if (v5)
  {
  }

  return swift_deallocObject();
}

void sub_1E3E70020(double a1, double a2)
{
  v5 = type metadata accessor for StackTemplateView(0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  v8 = v2 + ((*(v7 + 80) + 16) & ~*(v7 + 80));
  v9 = (*(**(v8 + 40) + 464))(v6);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (sub_1E32AE9B0(v10))
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v18 = OUTLINED_FUNCTION_21_17();
      v11 = MEMORY[0x1E6911E60](v18);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v11 = *(v10 + 32);
    }

    if (sub_1E385053C())
    {

      v13 = *(v8 + 56);
LABEL_10:
      v14 = (*(*v13 + 224))(v12);
      v15 = sub_1E40AAD7C(a1, a2, v14);
      v16 = (*(*v13 + 200))(a1, a2);
      (*(*v13 + 184))(v16, v15);
      return;
    }

    v13 = *(v8 + 56);
    if ((*(*v13 + 392))())
    {
      v17 = sub_1E385054C(*(v11 + 98));

      if (v17)
      {
        goto LABEL_10;
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

void sub_1E3E70274()
{
  v0 = OUTLINED_FUNCTION_22_80();
  OUTLINED_FUNCTION_8_0(v0);
  sub_1E3E6EE0C();
}

unint64_t sub_1E3E70300()
{
  result = qword_1EE288F60;
  if (!qword_1EE288F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A630, &qword_1E42D7B88);
    sub_1E3E703A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F60);
  }

  return result;
}

unint64_t sub_1E3E703A4()
{
  result = qword_1EE289BE0;
  if (!qword_1EE289BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A638, &qword_1E42D7B90);
    swift_getOpaqueTypeConformance2();
    sub_1E3E70478(&qword_1EE288768, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BE0);
  }

  return result;
}

uint64_t sub_1E3E70478(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3E704BC()
{
  result = qword_1EE2883E0;
  if (!qword_1EE2883E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A628, &qword_1E42D7B50);
    sub_1E328FCF4(&qword_1EE288548, &qword_1ECF3A640, &qword_1E42D7BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883E0);
  }

  return result;
}

unint64_t sub_1E3E7056C()
{
  result = qword_1EE2883F0;
  if (!qword_1EE2883F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A618, &qword_1E42D7B40);
    sub_1E3E70300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2883F0);
  }

  return result;
}

uint64_t objectdestroy_22Tm()
{
  type metadata accessor for StackTemplateView(0);
  OUTLINED_FUNCTION_144();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  OUTLINED_FUNCTION_27_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v0 + v3 + v1);
  }

  else
  {
  }

  OUTLINED_FUNCTION_16_124();
  if (v5)
  {
  }

  return swift_deallocObject();
}

void sub_1E3E70764()
{
  v1 = OUTLINED_FUNCTION_22_80();
  OUTLINED_FUNCTION_8_0(v1);
  *v0 = sub_1E4201D44();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A648, &unk_1E42D7BC8);
  sub_1E3E6EE0C();
}

uint64_t sub_1E3E70824()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1ECF71720);
  __swift_project_value_buffer(v0, qword_1ECF71720);
  return sub_1E3287754(11);
}

void sub_1E3E70874()
{
  v1 = v0;
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
  }

  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_13_25(v2, qword_1ECF71720);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_161(v4))
  {
    v5 = OUTLINED_FUNCTION_125_0();
    *v5 = 0;
    OUTLINED_FUNCTION_136();
    _os_log_impl(v6, v7, v8, v9, v5, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v10 = [objc_opt_self() sharedScheduler];
  v11 = sub_1E4205ED4();
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15[4] = sub_1E3E70A70;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1E377674C;
  v15[3] = &block_descriptor_127;
  v13 = _Block_copy(v15);

  [v10 registerForTaskWithIdentifier:v11 usingQueue:0 launchHandler:v13];
  _Block_release(v13);

  v14 = [objc_opt_self() defaultCenter];
  [v14 addObserver:v1 selector:sel_handleAutomaticDownloadsSwitchDidChange name:@"VUIAutomaticDownloadsSwitchDidChangeNotification" object:0];
}

void sub_1E3E70A70(void *a1)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_5_0(v1 + 16, v8);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      v7 = a1;
      sub_1E3E70AF4(v4);
    }
  }
}

double sub_1E3E70AF4(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = aBlock - v5;
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
  }

  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_13_25(v7, qword_1ECF71720);
  v8 = sub_1E41FFC94();
  v9 = sub_1E4206814();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_125_0();
    *v10 = 0;
    _os_log_impl(&dword_1E323F000, v8, v9, "BackgroundTaskManager:: handleAutoDownloadTask", v10, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_4_0();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = ObjectType;
  aBlock[4] = sub_1E3E72E70;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E378AEA4;
  aBlock[3] = &block_descriptor_34_1;
  v13 = _Block_copy(aBlock);

  v14 = OUTLINED_FUNCTION_4_199();
  [v14 v15];
  _Block_release(v13);
  v16 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = a1;
  v17[5] = ObjectType;
  v18 = a1;
  sub_1E376FE58(0, 0, v6, &unk_1E42D7CB0, v17);

  return result;
}

void sub_1E3E70D80()
{
  sub_1E3E70DA8();

  sub_1E3E70EA0();
}

void sub_1E3E70DA8()
{
  v0 = [objc_opt_self() sharedScheduler];
  [v0 cancelAllTaskRequests];

  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
  }

  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_13_25(v1, qword_1ECF71720);
  oslog = sub_1E41FFC94();
  v2 = sub_1E4206814();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = OUTLINED_FUNCTION_125_0();
    *v3 = 0;
    _os_log_impl(&dword_1E323F000, oslog, v2, "BackgroundTaskManager:: cancel all scheduled task requests", v3, 2u);
    OUTLINED_FUNCTION_6_0();
  }
}

void sub_1E3E70EA0()
{
  OUTLINED_FUNCTION_31_1();
  ObjectType = swift_getObjectType();
  v0 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v43 = v15;
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v19 = [objc_opt_self() sharedPreferences];
  v20 = [v19 useAutomaticDownloads];

  v21 = [objc_opt_self() userHasActiveAccount];
  if (v20 && v21)
  {
    if (qword_1ECF65AC8 != -1)
    {
      OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
    }

    v22 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v22, qword_1ECF71720);
    v23 = sub_1E41FFC94();
    v24 = sub_1E4206814();
    v40 = v9;
    if (OUTLINED_FUNCTION_161(v24))
    {
      v25 = OUTLINED_FUNCTION_125_0();
      *v25 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v26, v27, v28, v29, v25, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    sub_1E3280A90(0, &qword_1ECF3A6E0, 0x1E695A9D0);
    v30 = sub_1E3E71460();
    [v30 setRequiresNetworkConnectivity_];
    [v30 setRequiresExternalPower_];
    v41 = v7;
    if (sub_1E3E713C8())
    {
      sub_1E41FE5C4();
    }

    else
    {
      sub_1E41FE544();
    }

    v31 = v30;
    v32 = sub_1E41FE514();
    [v31 setEarliestBeginDate_];

    OUTLINED_FUNCTION_4_0();
    v33 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v34 = swift_allocObject();
    v34[2] = v33;
    v34[3] = v31;
    v34[4] = 0xD00000000000001ALL;
    v34[5] = 0x80000001E4286700;
    v34[6] = ObjectType;
    v45[4] = sub_1E3E72CF4;
    v45[5] = v34;
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v45[2] = v35;
    v45[3] = &block_descriptor_19_3;
    v36 = _Block_copy(v45);
    v37 = v31;

    sub_1E4203FE4();
    OUTLINED_FUNCTION_7_190();
    sub_1E328FCAC(v38, v39, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v13, v6, v36);
    _Block_release(v36);

    (*(v2 + 8))(v6, v0);
    (*(v40 + 8))(v13, v41);
    (*(v43 + 8))(v18, v44);
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E3E713C8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = OUTLINED_FUNCTION_4_199();
  v4 = [v2 v3];

  return v4;
}

id sub_1E3E71460()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1E4205ED4();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

void sub_1E3E714D4()
{
  OUTLINED_FUNCTION_31_1();
  v78 = v0;
  v2 = v1;
  v83 = v3;
  v5 = v4;
  v7 = v6;
  v86[3] = *MEMORY[0x1E69E9840];
  v8 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v77 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v79 = v12 - v11;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v80 = v13;
  v81 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  v18 = sub_1E4204014();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v73 - v25;
  OUTLINED_FUNCTION_5_0(v7 + 16, v86);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v82 = Strong;
    v75 = v8;
    v76 = v26;
    v28 = objc_opt_self();
    v29 = [v28 sharedScheduler];
    v85[0] = 0;
    v30 = [v29 submitTaskRequest:v5 error:v85];

    v31 = &unk_1ECF65000;
    if (v30)
    {
      v32 = v85[0];
    }

    else
    {
      v33 = v85[0];
      OUTLINED_FUNCTION_50();
      v34 = sub_1E41FE274();

      swift_willThrow();
      if (qword_1ECF65AC8 != -1)
      {
        OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
      }

      v35 = sub_1E41FFCB4();
      __swift_project_value_buffer(v35, qword_1ECF71720);
      v36 = OUTLINED_FUNCTION_50();
      v37 = sub_1E41FFC94();
      v38 = sub_1E42067F4();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_6_21();
        v74 = v17;
        v40 = v39;
        v41 = OUTLINED_FUNCTION_160();
        v73 = v18;
        v42 = v41;
        *v40 = 138412290;
        v43 = v34;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v44;
        *v42 = v44;
        OUTLINED_FUNCTION_136();
        _os_log_impl(v45, v46, v47, v48, v40, 0xCu);
        sub_1E325F6F0(v42, &unk_1ECF28E30, &qword_1E429E820);
        v18 = v73;
        OUTLINED_FUNCTION_6_0();
        v17 = v74;
        OUTLINED_FUNCTION_6_0();

        v31 = &unk_1ECF65000;
      }

      else
      {
      }
    }

    if (sub_1E3E713C8())
    {
      v49 = [v28 sharedScheduler];
      v50 = sub_1E4205ED4();
      v51 = OUTLINED_FUNCTION_4_199();
      [v51 v52];

      if (v31[345] != -1)
      {
        OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
      }

      v53 = sub_1E41FFCB4();
      OUTLINED_FUNCTION_13_25(v53, qword_1ECF71720);

      v54 = sub_1E41FFC94();
      v55 = sub_1E42067E4();

      if (os_log_type_enabled(v54, v55))
      {
        v56 = OUTLINED_FUNCTION_6_21();
        v57 = OUTLINED_FUNCTION_100();
        v85[0] = v57;
        *v56 = 136315138;
        *(v56 + 4) = sub_1E3270FC8(v83, v2, v85);
        _os_log_impl(&dword_1E323F000, v54, v55, "BackgroundTaskManager:: simulate launch task %s", v56, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }
    }

    v58 = [objc_opt_self() standardUserDefaults];
    v59 = sub_1E4205ED4();
    v60 = OUTLINED_FUNCTION_4_199();
    v62 = [v60 v61];

    if (v62)
    {
      v73 = *&v82[OBJC_IVAR____TtC8VideosUI21BackgroundTaskManager_taskQueue];
      sub_1E4204004();
      v63.n128_u64[0] = 1.0;
      sub_1E4204074(v63);
      v64 = v77;
      v74 = *(v20 + 8);
      v74(v23, v18);
      v65 = swift_allocObject();
      v65[2] = v83;
      v65[3] = v2;
      v65[4] = v78;
      v85[4] = sub_1E3E72D04;
      v85[5] = v65;
      v85[0] = MEMORY[0x1E69E9820];
      v85[1] = 1107296256;
      OUTLINED_FUNCTION_0_48();
      v85[2] = v66;
      v85[3] = &block_descriptor_25_0;
      v67 = _Block_copy(v85);

      sub_1E4203FE4();
      v84 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_7_190();
      sub_1E328FCAC(v68, v69, MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
      sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
      v70 = v79;
      v71 = v75;
      sub_1E42072E4();
      v72 = v76;
      MEMORY[0x1E69112E0](v76, v17, v70, v67);
      _Block_release(v67);
      (*(v64 + 8))(v70, v71);
      (*(v81 + 8))(v17, v80);
      v74(v72, v18);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E71C00()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E3FBA090();
  v0[7] = v1;
  v0[8] = *v1;

  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_56_1(v2);

  return sub_1E3FBB118();
}

uint64_t sub_1E3E71CA4()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {
    v7 = sub_1E3E7241C;
  }

  else
  {

    v7 = sub_1E3E71DA8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E3E71DA8()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 88) = **(v0 + 56);
  sub_1E4206434();

  *(v0 + 96) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3E71E48, v2, v1);
}

uint64_t sub_1E3E71E48()
{
  OUTLINED_FUNCTION_24();

  sub_1E3FBC0E4();
  *(v0 + 128) = v1 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1E3E71EC0, 0, 0);
}

uint64_t sub_1E3E71EC0()
{
  if (*(v0 + 128) == 1)
  {
    if (qword_1ECF65AC8 != -1)
    {
      OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
    }

    v1 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v1, qword_1ECF71720);
    v2 = sub_1E41FFC94();
    v3 = sub_1E4206814();
    if (os_log_type_enabled(v2, v3))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v9 = *(v0 + 56);

    *(v0 + 104) = *v9;

    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    OUTLINED_FUNCTION_56_1(v10);

    return sub_1E3FBA0E0();
  }

  else
  {
    if (qword_1ECF65AC8 != -1)
    {
      OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
    }

    v12 = sub_1E41FFCB4();
    OUTLINED_FUNCTION_13_25(v12, qword_1ECF71720);
    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();
    if (OUTLINED_FUNCTION_161(v14))
    {
      v15 = OUTLINED_FUNCTION_125_0();
      *v15 = 0;
      OUTLINED_FUNCTION_136();
      _os_log_impl(v16, v17, v18, v19, v15, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    [*(v0 + 48) setTaskCompletedWithSuccess_];
    if (qword_1ECF65AC8 != -1)
    {
      OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
    }

    v20 = *(v0 + 48);
    OUTLINED_FUNCTION_13_25(v12, qword_1ECF71720);
    v21 = v20;
    v22 = sub_1E41FFC94();
    v23 = sub_1E4206814();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 48);
      v25 = OUTLINED_FUNCTION_6_21();
      v26 = OUTLINED_FUNCTION_160();
      *v25 = 138412290;
      *(v25 + 4) = v24;
      *v26 = v24;
      v27 = v24;
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
      sub_1E325F6F0(v26, &unk_1ECF28E30, &qword_1E429E820);
      OUTLINED_FUNCTION_65_0();
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_54();

    return v33();
  }
}

uint64_t sub_1E3E72194(char a1)
{
  OUTLINED_FUNCTION_39();
  v5 = v4;
  OUTLINED_FUNCTION_37_2();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_7();
  *v8 = v7;
  *(v5 + 120) = v1;

  if (v1)
  {
    v9 = sub_1E3E72588;
  }

  else
  {
    *(v5 + 129) = a1 & 1;
    v9 = sub_1E3E722D0;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E3E722D0()
{
  [*(v0 + 48) setTaskCompletedWithSuccess_];
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
  }

  v1 = *(v0 + 48);
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_13_25(v2, qword_1ECF71720);
  v3 = v1;
  v4 = sub_1E41FFC94();
  LOBYTE(v1) = sub_1E4206814();

  if (os_log_type_enabled(v4, v1))
  {
    v5 = *(v0 + 48);
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_160();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    OUTLINED_FUNCTION_41_2();
    _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    sub_1E325F6F0(v7, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_54();

  return v14();
}

uint64_t sub_1E3E7241C()
{
  v16 = v0;

  v1 = *(v0 + 80);
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
  }

  v2 = sub_1E41FFCB4();
  __swift_project_value_buffer(v2, qword_1ECF71720);
  v3 = OUTLINED_FUNCTION_50();
  v4 = sub_1E41FFC94();
  v5 = sub_1E42067F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_100();
    v15 = v7;
    OUTLINED_FUNCTION_31_63(4.8149e-34);
    v8 = sub_1E4207AB4();
    v10 = sub_1E3270FC8(v8, v9, &v15);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_29_82(&dword_1E323F000, v11, v12, "BackgroundTaskManager:: error = %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_54();

  return v13();
}

uint64_t sub_1E3E72588()
{
  v16 = v0;
  v1 = *(v0 + 120);
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
  }

  v2 = sub_1E41FFCB4();
  __swift_project_value_buffer(v2, qword_1ECF71720);
  v3 = OUTLINED_FUNCTION_50();
  v4 = sub_1E41FFC94();
  v5 = sub_1E42067F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = OUTLINED_FUNCTION_100();
    v15 = v7;
    OUTLINED_FUNCTION_31_63(4.8149e-34);
    v8 = sub_1E4207AB4();
    v10 = sub_1E3270FC8(v8, v9, &v15);

    *(v6 + 4) = v10;
    OUTLINED_FUNCTION_29_82(&dword_1E323F000, v11, v12, "BackgroundTaskManager:: error = %s");
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  OUTLINED_FUNCTION_54();

  return v13();
}

double sub_1E3E726EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v13 - v3;
  v5 = [objc_opt_self() sharedPreferences];
  v6 = [v5 useAutomaticDownloads];

  if ((v6 & 1) == 0)
  {
    v8 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
    sub_1E4206434();
    v9 = v0;
    v10 = sub_1E4206424();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v9;
    sub_1E37748D8(0, 0, v4, &unk_1E42D7C98, v11);
  }

  return result;
}

uint64_t sub_1E3E72824()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  sub_1E4206434();
  v0[3] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();
  v0[4] = v3;
  v0[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3E728B4, v3, v2);
}

uint64_t sub_1E3E728B4()
{
  OUTLINED_FUNCTION_24();
  sub_1E3E70DA8();
  *(v0 + 48) = *sub_1E3FBA090();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3FBBB04();
}

uint64_t sub_1E3E72958()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[4];
    v8 = v3[5];
    v9 = sub_1E3E72AB8;
  }

  else
  {

    v7 = v3[4];
    v8 = v3[5];
    v9 = sub_1E3E72A5C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1E3E72A5C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3E72AB8()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

unint64_t sub_1E3E72B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3A668;
  if (!qword_1ECF3A668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A668);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for BackgroundTaskManager.BackgroundTask(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1E3E72C6C()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3E72824();
}

void sub_1E3E72D04()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = [objc_opt_self() sharedScheduler];
  v4 = sub_1E4205ED4();
  [v3 _simulateExpirationForTaskWithIdentifier_];

  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
  }

  v5 = sub_1E41FFCB4();
  __swift_project_value_buffer(v5, qword_1ECF71720);
  OUTLINED_FUNCTION_50();

  oslog = sub_1E41FFC94();
  v6 = sub_1E42067E4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = OUTLINED_FUNCTION_6_21();
    v8 = OUTLINED_FUNCTION_100();
    v10 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1E3270FC8(v2, v1, &v10);
    _os_log_impl(&dword_1E323F000, oslog, v6, "BackgroundTaskManager:: simulate task expiration %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();
  }
}

void sub_1E3E72E70()
{
  v1 = *(v0 + 16);
  if (qword_1ECF65AC8 != -1)
  {
    OUTLINED_FUNCTION_0_267(&qword_1ECF65AC8);
  }

  v2 = sub_1E41FFCB4();
  __swift_project_value_buffer(v2, qword_1ECF71720);
  OUTLINED_FUNCTION_50();

  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_6_21();
    v6 = OUTLINED_FUNCTION_160();
    *v5 = 138412290;
    OUTLINED_FUNCTION_5_0(v1 + 16, &v14);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v5 + 4) = Strong;
    *v6 = Strong;
    OUTLINED_FUNCTION_136();
    _os_log_impl(v8, v9, v10, v11, v5, 0xCu);
    sub_1E325F6F0(v6, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_6_0();
  }

  OUTLINED_FUNCTION_5_0(v1 + 16, v15);
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    [v12 setTaskCompletedWithSuccess_];
  }
}

uint64_t objectdestroy_8Tm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E3E73008()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_30_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_56_1(v3);

  return sub_1E3E71BE0(v5, v6, v7, v1);
}

id sub_1E3E730A8()
{
  v1 = [objc_allocWithZone(VUIFavoriteBannerLayout) init];
  (*(*v0 + 552))(&v7, [v1 setIsPreModeBanner_]);
  if (v8)
  {
    v2 = *MEMORY[0x1E69DF800];
    v3 = *(MEMORY[0x1E69DF800] + 8);
    v4 = *(MEMORY[0x1E69DF800] + 16);
    v5 = *(MEMORY[0x1E69DF800] + 24);
  }

  else
  {
    sub_1E3952BF8();
  }

  [v1 setBorderRadii_];
  [v1 setMargin_];
  [v1 setBackgroundColor_];
  [v1 setHighlightedBackgroundColor_];
  [v1 setBannerMinHeight_];
  [v1 setMaxTextWidth_];
  [v1 setBannerStyle_];
  return v1;
}

uint64_t sub_1E3E7326C(uint64_t a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t sub_1E3E732AC(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3E732E8(v1);
}

uint64_t sub_1E3E732E8(char a1)
{
  *(v1 + 104) = 2;
  type metadata accessor for ImageLayout();
  *(v1 + 112) = sub_1E3BD61D8();
  *(v1 + 120) = 1;
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v1 + 128) = *MEMORY[0x1E69DDCE0];
  *(v1 + 144) = v3;
  type metadata accessor for TextLayout();
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 160) = 0;
  *(v1 + 184) = sub_1E383BCC0();
  *(v1 + 192) = sub_1E383BCC0();
  sub_1E3755B54();
  *(v1 + 200) = sub_1E4206F24();
  *(v1 + 208) = sub_1E4206F24();
  v4 = sub_1E3C2F9A0();
  *(v4 + 120) = a1;
  v5 = objc_opt_self();

  v6 = [v5 currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8.n128_u64[0] = 0x4048000000000000;
  if (v7 == 2)
  {
    v9 = 51.0;
  }

  else
  {
    v8.n128_f64[0] = 24.0;
    v9 = 24.0;
  }

  v10 = qword_1E42D7CE0[v7 == 2];
  *(v4 + 128) = j__OUTLINED_FUNCTION_7_78(v8);
  *(v4 + 136) = v11;
  *(v4 + 144) = v12;
  *(v4 + 152) = v13;
  *(v4 + 160) = v10;
  *(v4 + 168) = 0x4071D00000000000;
  *(v4 + 176) = v9;

  sub_1E39537A8();
  v57[0] = v14;
  v57[1] = v15;
  v57[2] = v16;
  v57[3] = v17;
  v58 = 0;
  (*(*v4 + 560))(v57);

  OUTLINED_FUNCTION_1_240();
  v19 = *(v18 + 1696);

  v19(3);

  OUTLINED_FUNCTION_1_240();
  v21 = *(v20 + 1792);

  v21(10);

  OUTLINED_FUNCTION_1_240();
  v23 = *(v22 + 2056);

  v23(0, 0);

  v24 = *(v4 + 184);

  v25 = sub_1E4206F24();
  (*(*v24 + 680))(v25);

  OUTLINED_FUNCTION_1_240();
  v27 = *(v26 + 2128);

  v27(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_1_240();
  v29 = *(v28 + 1720);

  v29(9);

  OUTLINED_FUNCTION_0_268();
  v31 = *(v30 + 2056);

  v31(0, 0);

  OUTLINED_FUNCTION_0_268();
  v33 = *(v32 + 1792);

  v33(4);

  v34 = *(v4 + 192);
  LOBYTE(v48) = 27;
  v54 = 18;
  v53 = 17;
  v52 = 27;

  sub_1E3C3DE00();
  v51[0] = v51[1];
  sub_1E3C3DE00();
  v50[0] = v50[1];
  sub_1E3C2FCB8(&v48, &v54, &v53, &v52, v51, v50, &qword_1F5D549D8, &v55);
  v48 = v55;
  v49 = v56;
  v35 = OUTLINED_FUNCTION_18();
  (*(*v34 + 1600))(&v48, 48, v35 & 1, &qword_1F5D549D8);

  v36 = *(v4 + 192);

  v37 = sub_1E4206F24();
  (*(*v36 + 680))(v37);

  OUTLINED_FUNCTION_0_268();
  v39 = *(v38 + 2128);

  v39(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_0_268();
  v41 = *(v40 + 1720);

  v41(9);

  OUTLINED_FUNCTION_0_268();
  v43 = *(v42 + 1936);

  v43(0);

  sub_1E3C37CBC(v44, 23);

  sub_1E3C37CBC(v45, 15);

  sub_1E3C37CBC(v46, 40);

  return v4;
}

uint64_t sub_1E3E73A30()
{
  *(v0 + 104) = 2;
  type metadata accessor for ImageLayout();
  *(v0 + 112) = sub_1E3BD61D8();
  *(v0 + 120) = 1;
  v1 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 128) = *MEMORY[0x1E69DDCE0];
  *(v0 + 144) = v1;
  type metadata accessor for TextLayout();
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  *(v0 + 160) = 0;
  *(v0 + 184) = sub_1E383BCC0();
  *(v0 + 192) = sub_1E383BCC0();
  sub_1E3755B54();
  *(v0 + 200) = sub_1E4206F24();
  *(v0 + 208) = sub_1E4206F24();

  return sub_1E3C2F9A0();
}

uint64_t sub_1E3E73B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 120);
  v6 = sub_1E373F630(a1, 0, a3);
  if (v5 == 1)
  {
    if ((v6 & 1) == 0)
    {
      return (sub_1E373F630(a1, 1, v7) & 1) == 0;
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

  if (sub_1E373F630(a1, 1, v7))
  {
    return 0;
  }

  if (sub_1E373F630(a1, 5, v9))
  {
    v10 = [objc_opt_self() currentDevice];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 1)
    {
      return 0;
    }
  }

  return 2;
}

double sub_1E3E73BCC(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == 2)
  {
    *(v2 + 168) = qword_1E42D7CF0[a1 == 2];
  }

  v6 = a1 != 2;
  v7 = *(**(v2 + 184) + 1984);

  v7(v6);

  OUTLINED_FUNCTION_0_268();
  v9 = *(v8 + 1984);

  v9(v6);

  return result;
}

void sub_1E3E73CF8()
{

  v1 = *(v0 + 208);
}

uint64_t sub_1E3E73D40()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E3E73D90()
{
  v0 = sub_1E3E73D40();

  return MEMORY[0x1EEE6BDC0](v0, 216, 7);
}

id sub_1E3E73DF8()
{
  result = [v0 vuiView];
  if (result)
  {
    v2 = result;
    type metadata accessor for AlertTemplateView();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_1E3E73EC4()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = (*((*v1 & *v2) + 0xA8))();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  result = swift_allocObject();
  *(result + 16) = xmmword_1E4298880;
  *(result + 32) = v4;
  return result;
}

void sub_1E3E73F8C()
{
  type metadata accessor for AlertTemplateView();
  v1 = [objc_opt_self() mainScreen];
  [v1 bounds];

  v2 = sub_1E3A9C1F4();
  sub_1E373BCD8(v2);
  v3 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xE0))();
  [v0 setVuiView_];
}

id sub_1E3E740E0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AlertTemplateController(0);
  result = objc_msgSendSuper2(&v3, sel_vui_viewDidLayoutSubviews);
  v2 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_updateAutoHighlight;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_updateAutoHighlight) == 1)
  {
    result = sub_1E3E74188();
    *(v0 + v2) = 0;
  }

  return result;
}

uint64_t type metadata accessor for AlertTemplateController(uint64_t a1)
{
  result = qword_1ECF65C50;
  if (!qword_1ECF65C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3E74188()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - v4;
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E3C9C4AC(v1 + v13, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_1E325F748(v5, &qword_1ECF309A0, &qword_1E42A7870);
  }

  v15 = (*(v8 + 32))(v12, v5, v6);
  v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xE0);
  if ((v16)(v15))
  {
    OUTLINED_FUNCTION_7_191();
    v18 = (*(v17 + 168))();

    [v18 layoutIfNeeded];
  }

  v19 = v1;
  if (v16())
  {
    OUTLINED_FUNCTION_7_191();
    v21 = (*(v20 + 168))();

    v22 = sub_1E41FE7E4();
    [v21 scrollToItemAtIndexPath:v22 atScrollPosition:2 animated:0];
  }

  return (*(v8 + 8))(v12, v6);
}

void sub_1E3E74434(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v186 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v186 - v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  v18 = (*(*a1 + 464))();
  if (!v18)
  {
    return;
  }

  v19 = v18;
  v189 = v10;
  v190 = a1;
  if (a2)
  {
    type metadata accessor for AlertTemplateController(0);
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = a2;
    }
  }

  else
  {
    v20 = 0;
  }

  v187 = v7;
  *&v210[0] = v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A6F0, qword_1E42D7DD0);
  sub_1E4148C68(sub_1E3E75680, v22, &v212);

  v23 = v212;
  v24 = MEMORY[0x1E69E7CC0];
  v211 = MEMORY[0x1E69E7CC0];
  v25 = sub_1E32AE9B0(v19);
  v199 = v23;
  if (!v25)
  {
    v195 = 0;
    OUTLINED_FUNCTION_8_160();
LABEL_80:

    *(v23 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionViewModels) = v24;

    v108 = *(v23 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionViewModels);
    v109 = sub_1E32AE9B0(v108);
    v110 = MEMORY[0x1E69E7CC0];
    if (v109)
    {
      v111 = v109;
      *&v212 = MEMORY[0x1E69E7CC0];

      sub_1E4207574();
      if (v111 < 0)
      {
        goto LABEL_151;
      }

      v112 = 0;
      do
      {
        if ((v108 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v112, v108);
        }

        else
        {
        }

        ++v112;
        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v111 != v112);

      v110 = v212;
    }

    v203 = v24;
    v113 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionTableItems;
    *(v23 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionTableItems) = v110;

    v114 = *(v23 + v113);
    v115 = *(v114 + 16);

    if (v115)
    {
      v24 = v114 + 32;
      v116 = 0.0;
      v117 = 0.0;
      while (1)
      {
        v118 = *v24;
        v119 = *(*v24 + 98);
        if (v119 == 182)
        {
          break;
        }

        if (v119 == 59)
        {

          v120 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
          v121 = OUTLINED_FUNCTION_3_205(v120);
          OUTLINED_FUNCTION_12_138();
          v126 = sub_1E393D9C4(v122, v123, v124, v125);

          v127 = sub_1E325F748(&v212, &qword_1ECF296C0, &unk_1E429BBE0);
          if (!v126)
          {
            goto LABEL_98;
          }

          v128 = (*(*v118 + 392))(v127);
          sub_1E3C8B764(v128, 0.0, 0.0);
          v130 = v129;
          v132 = v131;

          v117 = fmax(v117, v130);
          v116 = fmax(v116, v132);
        }

LABEL_99:
        v24 += 8;
        if (!--v115)
        {
          goto LABEL_103;
        }
      }

      v133 = *(*v118 + 392);

      v135 = v133(v134);
      if (v135)
      {
        v136 = v135;
        *&v137 = COERCE_DOUBLE((*(*v135 + 200))(v135));
        if ((v138 & 1) == 0)
        {
          v139 = *&v137;
          *&v140 = COERCE_DOUBLE((*(*v136 + 304))());
          if ((v141 & 1) == 0)
          {
            v142 = *&v140;

            v117 = fmax(v117, v139);
            v116 = fmax(v116, v142);
            goto LABEL_99;
          }
        }
      }

LABEL_98:

      goto LABEL_99;
    }

    v116 = 0.0;
    v117 = 0.0;
LABEL_103:

    v144 = v116 > 0.0 && v117 > 0.0;
    v145 = MEMORY[0x1E69E7D40];
    if (!v144)
    {
      v146 = v199;
      OUTLINED_FUNCTION_15_131();
LABEL_115:
      v152 = *((*v145 & *v146) + 0xE0);
      if (v152())
      {
        OUTLINED_FUNCTION_12_3();
        v154 = (*(v153 + 168))();

        if (v144)
        {
          v155 = v146;
        }

        else
        {
          v155 = 0;
        }

        [v154 setDataSource_];
      }

      if (v152())
      {
        OUTLINED_FUNCTION_12_3();
        v157 = (*(v156 + 168))();

        if (v144)
        {
          v158 = v146;
        }

        else
        {
          v158 = 0;
        }

        [v157 setDelegate_];
      }

      v159 = *((*v145 & *v146) + 0xE0);
      if (v159())
      {
        OUTLINED_FUNCTION_12_3();
        (*(v160 + 248))(v197);
      }

      else
      {
      }

      if ((v159)(v161))
      {
        OUTLINED_FUNCTION_12_3();
        (*(v162 + 272))(v200);
      }

      else
      {
      }

      if ((v159)(v163))
      {
        OUTLINED_FUNCTION_12_3();
        (*(v164 + 296))(v17);
      }

      else
      {
      }

      if (v195)
      {

        sub_1E3841D9C(v165, v24);
        v167 = v166;
        v169 = v168;

        if (v169)
        {
          v170 = 0;
        }

        else
        {
          v170 = v167;
        }

        v171 = v189;
        MEMORY[0x1E6909190](v170, 0);
        v172 = sub_1E41FE874();
        __swift_storeEnumTagSinglePayload(v171, 0, 1, v172);
        v173 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath;
        swift_beginAccess();
        sub_1E3C9C51C(v171, v146 + v173);
        swift_endAccess();
        if ([v146 vuiIsViewLoaded])
        {
          sub_1E3E74188();
        }

        else
        {

          *(v146 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_updateAutoHighlight) = 1;
        }
      }

      else
      {
        v175 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        v176 = v187;
        sub_1E3C9C4AC(v146 + v175, v187);
        v177 = sub_1E41FE874();
        v178 = 0;
        if (!__swift_getEnumTagSinglePayload(v176, 1, v177))
        {
          v178 = sub_1E41FE844();
        }

        sub_1E325F748(v176, &qword_1ECF309A0, &qword_1E42A7870);
        v179 = sub_1E32AE9B0(v24);

        if (v178 >= v179)
        {
          v180 = v189;
          OUTLINED_FUNCTION_32_2();
          __swift_storeEnumTagSinglePayload(v181, v182, v183, v177);
          swift_beginAccess();
          sub_1E3C9C51C(v180, v146 + v175);
          v174 = swift_endAccess();
        }
      }

      if ((v159)(v174))
      {
        OUTLINED_FUNCTION_12_3();
        v185 = (*(v184 + 168))();

        [v185 reloadData];
      }

      *(v146 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_templateViewModel) = v190;

      return;
    }

    v146 = v199;
    v147 = (*((*MEMORY[0x1E69E7D40] & *v199) + 0xE0))(v143);
    v148 = v147;
    if (v147)
    {
      v149 = (*((*v145 & *v147) + 0xA8))();

      v150 = [v149 collectionViewLayout];
      if (v150)
      {
        objc_opt_self();
        v148 = swift_dynamicCastObjCClass();
        OUTLINED_FUNCTION_15_131();
        if (!v151)
        {
        }

        goto LABEL_114;
      }

      v148 = 0;
    }

    OUTLINED_FUNCTION_15_131();
LABEL_114:
    [v148 setItemSize_];

    goto LABEL_115;
  }

  v27 = v25;
  v193 = v17;
  v196 = v11;
  v194 = 0;
  v195 = 0;
  v28 = 0;
  v206 = v19 & 0xC000000000000001;
  v202 = v19 & 0xFFFFFFFFFFFFFF8;
  v201 = v19 + 32;
  v192 = (v13 + 16);
  v191 = v13 + 8;
  *&v26 = 136315138;
  v188 = v26;
  OUTLINED_FUNCTION_8_160();
  v198 = v19;
  v204 = v29;
  while (1)
  {
    if (v206)
    {
      v207 = MEMORY[0x1E6911E60](v28, v19);
    }

    else
    {
      if (v28 >= *(v202 + 16))
      {
        goto LABEL_149;
      }

      v207 = *(v201 + 8 * v28);
    }

    if (__OFADD__(v28++, 1))
    {
      break;
    }

    v31 = v207[49];
    switch(v31)
    {
      case 182:

        MEMORY[0x1E6910BF0](v62);
        OUTLINED_FUNCTION_13_146();
        if (v35)
        {
          OUTLINED_FUNCTION_35(v63);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_23_16();
        sub_1E4206324();

        v24 = v211;
        break;
      case 73:
        v205 = v28;
        v39 = (*(*v207 + 464))();
        if (v39)
        {
          v40 = v39;
        }

        else
        {
          v40 = MEMORY[0x1E69E7CC0];
        }

        if (v40 >> 62)
        {
          v41 = sub_1E4207384();
          if (v41)
          {
LABEL_31:
            if (v41 < 1)
            {
              goto LABEL_150;
            }

            v203 = v24;
            v42 = 0;
            v24 = v40 & 0xC000000000000001;
            do
            {
              if (v24)
              {
                v43 = MEMORY[0x1E6911E60](v42, v40);
              }

              else
              {
                v43 = *(v40 + 8 * v42 + 32);
              }

              v44 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
              v45 = OUTLINED_FUNCTION_3_205(v44);
              OUTLINED_FUNCTION_12_138();
              v50 = sub_1E393D9C4(v46, v47, v48, v49);

              v51 = sub_1E325F748(&v212, &qword_1ECF296C0, &unk_1E429BBE0);
              if (v50)
              {
                v52 = (*(*v43 + 392))(v51);
                if (!v52)
                {
                  type metadata accessor for ViewLayout();
                  v52 = sub_1E3C2F968();
                }

                v53 = v52;
                v54 = v50;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v58 = OUTLINED_FUNCTION_27();
                  v17 = sub_1E3A9BED8(v58, v59, v60, v17);
                }

                v56 = v17[2];
                v55 = v17[3];
                if (v56 >= v55 >> 1)
                {
                  v61 = OUTLINED_FUNCTION_35(v55);
                  v17 = sub_1E3A9BED8(v61, v56 + 1, 1, v17);
                }

                v17[2] = v56 + 1;
                v57 = &v17[2 * v56];
                v57[4] = v54;
                v57[5] = v53;
              }

              else
              {
              }

              ++v42;
            }

            while (v41 != v42);

            v23 = v199;
            OUTLINED_FUNCTION_15_131();
            v19 = v198;
            v27 = v204;
            v28 = v205;
            break;
          }
        }

        else
        {
          v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v41)
          {
            goto LABEL_31;
          }
        }

        v19 = v198;
        v28 = v205;
        break;
      case 59:
        v32 = v207;

        MEMORY[0x1E6910BF0](v33);
        OUTLINED_FUNCTION_13_146();
        if (v35)
        {
          OUTLINED_FUNCTION_35(v34);
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_23_16();
        sub_1E4206324();
        v24 = v211;
        LOBYTE(v210[0]) = 5;
        (*(*v32 + 776))(&v212, v210, &unk_1F5D5DAC8, &off_1F5D5C998);
        v210[0] = v212;
        v210[1] = v213;
        if (*(&v213 + 1))
        {
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_61;
          }

          v37 = v208;
          v36 = v209;

          v38 = HIBYTE(v36) & 0xF;
          if ((v36 & 0x2000000000000000) == 0)
          {
            v38 = v37 & 0xFFFFFFFFFFFFLL;
          }

          if (v38)
          {
            if (v194)
            {

              v194 = 1;
            }

            else
            {

              v194 = 1;
              v195 = v207;
            }
          }

          else
          {
LABEL_61:
          }
        }

        else
        {

          sub_1E325F748(v210, &unk_1ECF296E0, &unk_1E4298030);
        }

        break;
      default:
        v64 = v24;
        v65 = _s8VideosUIAAC19initializeUIFactoryyyFZ_0();
        v66 = OUTLINED_FUNCTION_3_205(v65);
        v67 = v207;
        OUTLINED_FUNCTION_12_138();
        v72 = sub_1E393D9C4(v68, v69, v70, v71);

        v73 = sub_1E325F748(&v212, &qword_1ECF296C0, &unk_1E429BBE0);
        if (v72)
        {
          v74 = (*(*v67 + 392))(v73);
          if (!v74)
          {
            type metadata accessor for ViewLayout();
            v74 = sub_1E3C2F968();
          }

          v75 = v74;
          v24 = v64;
          v76 = v28;
          if (v24 >> 62)
          {
            v77 = sub_1E4207384();
          }

          else
          {
            v77 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v78 = v72;

          if (v77)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v98 = OUTLINED_FUNCTION_27();
              v200 = sub_1E3A9BED8(v98, v99, v100, v101);
            }

            OUTLINED_FUNCTION_14_140();
            if (v35)
            {
              v102 = OUTLINED_FUNCTION_35(v79);
              v200 = sub_1E3A9BED8(v102, v72, 1, v200);
            }

            v80 = &v215;
          }

          else
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v103 = OUTLINED_FUNCTION_27();
              v197 = sub_1E3A9BED8(v103, v104, v105, v106);
            }

            OUTLINED_FUNCTION_14_140();
            if (v35)
            {
              v107 = OUTLINED_FUNCTION_35(v95);
              v197 = sub_1E3A9BED8(v107, v72, 1, v197);
            }

            v80 = &v214;
          }

          v96 = *(v80 - 32);
          *(v96 + 16) = v72;
          v97 = v96 + 16 * v77;
          *(v97 + 32) = v78;
          *(v97 + 40) = v75;
          v27 = v204;
          v28 = v76;
        }

        else
        {
          v81 = sub_1E324FBDC();
          v82 = v196;
          (*v192)(v193, v81, v196);

          v83 = sub_1E41FFC94();
          v84 = sub_1E4206814();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v205 = v28;
            v86 = v85;
            v87 = swift_slowAlloc();
            *&v212 = v87;
            *v86 = v188;
            sub_1E384EE08(v31);
            v90 = sub_1E3270FC8(v88, v89, &v212);

            *(v86 + 4) = v90;
            v19 = v198;
            _os_log_impl(&dword_1E323F000, v83, v84, "AlertTemplateController: failed to handle type [%s]", v86, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v87);
            MEMORY[0x1E69143B0](v87, -1, -1);
            v91 = v86;
            v28 = v205;
            MEMORY[0x1E69143B0](v91, -1, -1);

            v92 = OUTLINED_FUNCTION_19_117();
            v94 = v196;
          }

          else
          {

            v92 = OUTLINED_FUNCTION_19_117();
            v94 = v82;
          }

          v93(v92, v94);
          v27 = v204;
          v23 = v199;
          v24 = v64;
        }

        break;
    }

    if (v28 == v27)
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

id sub_1E3E75680@<X0>(void *a1@<X8>)
{
  type metadata accessor for AlertTemplateController(0);
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E3E756C0(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_4_207(&OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionViewModels);
  sub_1E41FE874();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v3[OBJC_IVAR____TtC8VideosUI23AlertTemplateController_updateAutoHighlight] = 0;
  if (a2)
  {
    v10 = sub_1E4205ED4();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for AlertTemplateController(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_1E3E757F8(void *a1)
{
  OUTLINED_FUNCTION_4_207(&OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionViewModels);
  sub_1E41FE874();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v1[OBJC_IVAR____TtC8VideosUI23AlertTemplateController_updateAutoHighlight] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for AlertTemplateController(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_1E3E758CC()
{

  return sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath, &qword_1ECF309A0, &qword_1E42A7870);
}

id sub_1E3E75934()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AlertTemplateController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E3E75A18(void *a1, __n128 a2)
{
  result = sub_1E41FE824();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionTableItems;
  v6 = *(v2 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionTableItems);
  if (result >= *(v6 + 16))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v7 = *(v6 + 8 * result + 32);
  v8 = *(v7 + 98);
  if (v8 == 182)
  {

    sub_1E384EE08(182);
    v27 = sub_1E4205ED4();

    v28 = sub_1E41FE7E4();
    v29 = [a1 dequeueReusableCellWithReuseIdentifier:v27 forIndexPath:v28];

    type metadata accessor for OfferListLockupCell();
    *&v31[0] = 2;
    memset(v31 + 8, 0, 35);
    v11 = v29;
    v22 = sub_1E3B93B04(v7, v29);

    goto LABEL_12;
  }

  if (v8 == 59)
  {

    sub_1E3A9A0EC();

    v9 = sub_1E4205ED4();

    v10 = sub_1E41FE7E4();
    v11 = [a1 dequeueReusableCellWithReuseIdentifier:v9 forIndexPath:v10];

    v12 = [v11 layer];
    v13 = *(*(v2 + v5) + 16);
    result = sub_1E41FE844();
    if (!__OFSUB__(v13, result))
    {
      [v12 setZPosition_];

      type metadata accessor for AlertTemplateView.AlertActionCell();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
LABEL_10:

        return v11;
      }

      v15 = v14;
      v11 = v11;
      v16 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      memset(v31, 0, 40);
      v17 = v16;
      OUTLINED_FUNCTION_12_138();
      v22 = sub_1E393D9C4(v18, v19, v20, v21);

      sub_1E325F748(v31, &qword_1ECF296C0, &unk_1E429BBE0);
      if (!v22)
      {

        return v11;
      }

      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        v24 = v23;
        v25 = *((*MEMORY[0x1E69E7D40] & *v15) + 0x60);
        v26 = v22;
        v25(v24);

        goto LABEL_10;
      }

LABEL_12:
      return v11;
    }

    goto LABEL_21;
  }

  v30 = objc_allocWithZone(MEMORY[0x1E69DC7F8]);

  return [v30 init];
}

uint64_t sub_1E3E75F04@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = (v14 - v13);
  v16 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E3C9C4AC(v2 + v16, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1E325F748(v8, &qword_1ECF309A0, &qword_1E42A7870);
LABEL_6:
    v20 = 1;
    return __swift_storeEnumTagSinglePayload(a2, v20, 1, v9);
  }

  v17 = *(v11 + 32);
  v17(v15, v8, v9);
  v18 = sub_1E41FE7E4();
  v19 = [a1 vui:v18 isIndexPathValid:?];

  if (!v19)
  {
    (*(v11 + 8))(v15, v9);
    goto LABEL_6;
  }

  v17(a2, v15, v9);
  v20 = 0;
  return __swift_storeEnumTagSinglePayload(a2, v20, 1, v9);
}

id sub_1E3E761F8(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF309A0, &qword_1E42A7870);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v23 - v6;
  v8 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v23 - v16;
  result = [a2 nextFocusedIndexPath];
  if (result)
  {
    v19 = result;
    sub_1E41FE804();

    v20 = *(v10 + 32);
    v20(v17, v13, v8);
    v21 = OUTLINED_FUNCTION_23_16();
    (v20)(v21);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
    v22 = OBJC_IVAR____TtC8VideosUI23AlertTemplateController_lastFocusedIndexPath;
    swift_beginAccess();
    sub_1E3C9C51C(v7, v2 + v22);
    return swift_endAccess();
  }

  return result;
}

void sub_1E3E7643C(uint64_t a1)
{
  v2 = sub_1E41FE844();
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI23AlertTemplateController_collectionTableItems);
  if (v2 >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    return;
  }

  v4 = *(**(v3 + 8 * v2 + 32) + 800);

  OUTLINED_FUNCTION_25();
  v4();
}

uint64_t sub_1E3E764F8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FE804();
  v13 = a3;
  v14 = a1;
  sub_1E3E7643C(v14);

  return (*(v8 + 8))(v12, v6);
}

void sub_1E3E765F4(uint64_t a1)
{
  sub_1E3CA2E5C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E3E766A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3E766E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E3E76734@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v103 = a6;
  v104 = a4;
  HIDWORD(v101) = a5;
  v100 = a2;
  v102 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2AC60, &qword_1E42D7E80);
  sub_1E42038E4();
  HIDWORD(v99) = LOBYTE(v115[0]);
  v98 = v115[1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A9A0, &unk_1E42D8630);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E4297BE0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 32) = MEMORY[0x1E69E7CC0];
  v12 = sub_1E4205CB4();
  v114 = a1;
  v13 = sub_1E32AE9B0(a1);
  v105 = a7;
  v106 = v10;
  if (v13)
  {
    v14 = v13;
    if (v13 >= 1)
    {
      v15 = 0;
      v16 = MEMORY[0x1E69E7CC0];
      v17 = a1 & 0xC000000000000001;
      v111 = xmmword_1E4298880;
      v107 = a1 & 0xC000000000000001;
      v108 = v13;
      while (1)
      {
        if (v17)
        {
          v18 = MEMORY[0x1E6911E60](v15, v114);
        }

        else
        {
          v18 = *(v114 + 8 * v15 + 32);
        }

        if (a3 == 2 || (v115[3] = &unk_1F5D5D0A8, v115[4] = &off_1F5D5C758, LOBYTE(v115[0]) = 1, a1 = v18, v19 = sub_1E39C29A4(v115), v21 = v20, __swift_destroy_boxed_opaque_existential_1(v115), !v21))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
          v30 = swift_allocObject();
          OUTLINED_FUNCTION_68_28(v30, v31, v32, v33, v34, v35, v36, v37, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v111);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v61 = OUTLINED_FUNCTION_27();
            v16 = sub_1E3E7CE18(v61, v62, v63, v16, &qword_1ECF39A28, &qword_1E42D55A0, &unk_1ECF2C790, &qword_1E42996A0);
          }

          v39 = v16[2];
          v38 = v16[3];
          if (v39 >= v38 >> 1)
          {
            OUTLINED_FUNCTION_35(v38);
            OUTLINED_FUNCTION_54_35();
            v16 = sub_1E3E7CE18(v64, v65, v66, v16, &qword_1ECF39A28, &qword_1E42D55A0, &unk_1ECF2C790, &qword_1E42996A0);
          }

          v16[2] = v39 + 1;
          v16[v39 + 4] = a1;
          goto LABEL_35;
        }

        if (!v12[2])
        {
          break;
        }

        v22 = OUTLINED_FUNCTION_75();
        a1 = v12;
        v24 = sub_1E327D33C(v22, v23);
        if ((v25 & 1) == 0)
        {
          break;
        }

        v26 = v24;

        v27 = *(v12[7] + 8 * v26);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_88;
          }
        }

        else
        {
          v16 = sub_1E3E7CDD0(v16);
          if ((v27 & 0x8000000000000000) != 0)
          {
            goto LABEL_88;
          }
        }

        if (v27 >= v16[2])
        {
          goto LABEL_89;
        }

        v28 = &v16[v27];
        MEMORY[0x1E6910BF0]();
        v29 = *((v28[4] & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v28[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v29 >> 1)
        {
          OUTLINED_FUNCTION_35(v29);
          sub_1E42062F4();
        }

        a1 = (v28 + 4);
        sub_1E4206324();

LABEL_35:
        if (v14 == ++v15)
        {
          goto LABEL_40;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v40 = swift_allocObject();
      OUTLINED_FUNCTION_68_28(v40, v41, v42, v43, v44, v45, v46, v47, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v111);
      v109 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = OUTLINED_FUNCTION_27();
        v16 = sub_1E3E7CE18(v67, v68, v69, v16, &qword_1ECF39A28, &qword_1E42D55A0, &unk_1ECF2C790, &qword_1E42996A0);
      }

      v49 = v16[2];
      v48 = v16[3];
      if (v49 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_35(v48);
        OUTLINED_FUNCTION_54_35();
        v16 = sub_1E3E7CE18(v70, v71, v72, v16, &qword_1ECF39A28, &qword_1E42D55A0, &unk_1ECF2C790, &qword_1E42996A0);
      }

      v16[2] = v49 + 1;
      v16[v49 + 4] = a1;
      swift_isUniquelyReferenced_nonNull_native();
      v115[0] = v12;
      v50 = sub_1E327D33C(v19, v21);
      if (__OFADD__(v12[2], (v51 & 1) == 0))
      {
        goto LABEL_86;
      }

      v52 = v50;
      v53 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4E8, &unk_1E42A08F8);
      a1 = v115;
      v54 = sub_1E4207644();
      v12 = v115[0];
      if (v54)
      {
        a1 = v115[0];
        v55 = sub_1E327D33C(v109, v21);
        if ((v53 & 1) != (v56 & 1))
        {
          goto LABEL_91;
        }

        v52 = v55;
        if ((v53 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else if ((v53 & 1) == 0)
      {
LABEL_30:
        v12[(v52 >> 6) + 8] |= 1 << v52;
        v57 = (v12[6] + 16 * v52);
        *v57 = v109;
        v57[1] = v21;
        *(v12[7] + 8 * v52) = v49;
        v58 = v12[2];
        v59 = __OFADD__(v58, 1);
        v60 = v58 + 1;
        if (v59)
        {
          goto LABEL_87;
        }

        v12[2] = v60;
        goto LABEL_34;
      }

      *(v12[7] + 8 * v52) = v49;

LABEL_34:

      v17 = v107;
      v14 = v108;
      goto LABEL_35;
    }
  }

  else
  {
    v16 = v11;
LABEL_40:

    v112 = v16[2];
    if (!v112)
    {

      v74 = v106;
LABEL_67:
      v93 = sub_1E32AE9B0(v114);
      v94 = 0;
      do
      {
        v95 = v94;
        if (v93 == v94)
        {
          break;
        }

        if ((v114 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](v94, v114);
        }

        else
        {
          if (v94 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }
        }

        if (__OFADD__(v95, 1))
        {
          goto LABEL_84;
        }

        if (sub_1E3E77A50(3))
        {

          break;
        }

        v96 = sub_1E3E77A50(2);

        v94 = v95 + 1;
      }

      while ((v96 & 1) == 0);

      *v102 = v114;
      *(v102 + 8) = v100;
      *(v102 + 16) = a3;
      *(v102 + 24) = v74;
      *(v102 + 32) = v93 != v95;
      *(v102 + 40) = v103;
      *(v102 + 48) = v105;
      *(v102 + 56) = v104;
      *(v102 + 64) = BYTE4(v101) & 1;
      *(v102 + 72) = BYTE4(v99);
      *(v102 + 80) = v98;
      return result;
    }

    v73 = 0;
    v110 = v16 + 4;
    v74 = v106;
    while (1)
    {
      if (v73 >= v16[2])
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v75 = v74[2];
      if (!v75)
      {
        goto LABEL_82;
      }

      v76 = v110[v73];
      if (*(v74[v75 + 3] + 16))
      {
        break;
      }

LABEL_60:
      v82 = v74 + 3;
      v83 = v74[v75 + 3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v74[v75 + 3] = v83;
      v85 = v74;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v88 = OUTLINED_FUNCTION_27();
        v83 = sub_1E3E7CE18(v88, v89, v90, v83, &qword_1ECF39A28, &qword_1E42D55A0, &unk_1ECF2C790, &qword_1E42996A0);
        v82[v75] = v83;
      }

      v87 = v83[2];
      v86 = v83[3];
      if (v87 >= v86 >> 1)
      {
        v91 = OUTLINED_FUNCTION_35(v86);
        v83 = sub_1E3E7CE18(v91, v87 + 1, 1, v83, &qword_1ECF39A28, &qword_1E42D55A0, &unk_1ECF2C790, &qword_1E42996A0);
        v82[v75] = v83;
      }

      ++v73;
      v83[2] = v87 + 1;
      v83[v87 + 4] = v76;
      v74 = v85;
      if (v73 == v112)
      {

        goto LABEL_67;
      }
    }

    v77 = sub_1E32AE9B0(v110[v73]);

    for (i = 0; v77 != i; ++i)
    {
      if ((v76 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](i, v76);
      }

      else
      {
        if (i >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_80;
        }
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_80:
        __break(1u);
        goto LABEL_81;
      }

      v79 = sub_1E39C408C();

      if (v79)
      {

        v81 = v74[2];
        v80 = v74[3];
        v75 = v81 + 1;
        if (v81 >= v80 >> 1)
        {
          v92 = OUTLINED_FUNCTION_35(v80);
          v74 = sub_1E3E7CE18(v92, v81 + 1, 1, v74, &qword_1ECF3A9A0, &unk_1E42D8630, &qword_1ECF3A920, &qword_1E42D85B8);
        }

        v74[2] = v75;
        v74[v81 + 4] = MEMORY[0x1E69E7CC0];
        goto LABEL_60;
      }
    }

    v75 = v74[2];
    if (v75)
    {
      goto LABEL_60;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  __break(1u);
LABEL_91:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E3E76FD8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A768, &qword_1E42D7E88) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  sub_1E3E771C0();
  v8 = swift_allocObject();
  memcpy((v8 + 16), v2, 0x58uLL);
  v9 = &v7[*(v4 + 44)];
  *v9 = sub_1E3E777E8;
  v9[1] = v8;
  sub_1E3E77840(v2, v25);
  OUTLINED_FUNCTION_8();
  (*(v10 + 152))(v25);
  v11 = v25[1];
  v12 = v25[2];
  v13 = v26;
  if ((v26 & 1) == 0)
  {
    v28 = *(v2 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8F8, &qword_1E42DD7A0);
    sub_1E42038F4();
    if (v27 == 2 || (v27 & 1) == 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  LOBYTE(v25[0]) = v13;
  if (v13)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v14.n128_f64[0] = OUTLINED_FUNCTION_75_22();
    j_nullsub_1(v14, v15, v16, v17);
  }

  OUTLINED_FUNCTION_18_3();
  v19 = v18;
  v21 = v20;
  v22 = sub_1E4202734();
  sub_1E329E454(v7, a1, &qword_1ECF3A768, &qword_1E42D7E88);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A770, &qword_1E42D7E90);
  v24 = a1 + *(result + 36);
  *v24 = v22;
  *(v24 + 8) = v11;
  *(v24 + 16) = v12;
  *(v24 + 24) = v19;
  *(v24 + 32) = v21;
  *(v24 + 40) = 0;
  return result;
}

void sub_1E3E771C0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A828, &qword_1E42D8120);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_31_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A900, &qword_1E42D8560);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v57 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A7C8, &qword_1E42D80F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_5();
  v14 = *(v3 + 16) - 1;
  v15 = *(v3 + 16) != 1;
  v59 = v16;
  v60 = v6;
  if (v14 == 1 || !v15)
  {
    OUTLINED_FUNCTION_8();
    *v1 = (*(v17 + 1152))();
    *(v1 + 8) = v18 & 1;
    v58 = *(v12 + 44);
    v19 = v3[3];
    v61 = v19;
    v62 = *(v3 + 32);
    v20 = *(v19 + 16);
    swift_bridgeObjectRetain_n();
    sub_1E3E7D524(0, v20, v19);
    v22 = v21;
    sub_1E3E7D7F8(&v61);
    v66 = v22;
    swift_getKeyPath();
    OUTLINED_FUNCTION_71_4();
    v23 = swift_allocObject();
    *(v23 + 16) = v19;
    memcpy((v23 + 24), v3, 0x58uLL);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1E3E7D828;
    *(v24 + 24) = v23;
    sub_1E3E77840(v3, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A908, &qword_1E42D8588);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A7F8, &qword_1E42D8108);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v25, &qword_1ECF3A908, &qword_1E42D8588, v26);
    sub_1E3E786FC();
    sub_1E4203B34();
    v27 = &qword_1ECF3A7C8;
    v28 = &qword_1E42D80F0;
    sub_1E3294EE4(v1, v11, &qword_1ECF3A7C8, &qword_1E42D80F0);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_118();
    sub_1E3E785C8(v29, &qword_1ECF3A7C8, &qword_1E42D80F0, v30);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v31, v32, v33, v34);
    sub_1E4201F44();
    v35 = v1;
LABEL_13:
    sub_1E325F6F0(v35, v27, v28);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v36 = sub_1E4201B64();
  v37 = *v3;
  v38 = sub_1E32AE9B0(*v3);
  v57[2] = v5;
  v57[1] = v8;
  if (!v38)
  {
    goto LABEL_11;
  }

  if ((v37 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v37);
LABEL_7:
    OUTLINED_FUNCTION_8();
    v40 = (*(v39 + 392))();

    if (v40)
    {
      (*(*v40 + 152))(&v61, v41);

      v42 = v63;
      v43 = v64;
      if (v64)
      {
        v42 = 0;
      }

      goto LABEL_12;
    }

LABEL_11:
    v42 = 0;
    v43 = 1;
LABEL_12:
    *v0 = v36;
    *(v0 + 8) = v42;
    *(v0 + 16) = v43 & 1;
    v58 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A988, &qword_1E42D8620) + 44);
    sub_1E3E7D524(0, *(v3[3] + 16), v3[3]);
    v66 = v44;
    swift_getKeyPath();
    v45 = swift_allocObject();
    memcpy((v45 + 16), v3, 0x58uLL);
    v46 = swift_allocObject();
    *(v46 + 16) = sub_1E3E7DE60;
    *(v46 + 24) = v45;
    sub_1E3E77840(v3, v65);
    v47 = OUTLINED_FUNCTION_27_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A990, &qword_1E42D8628);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v49, &qword_1ECF3A908, &qword_1E42D8588, v50);
    sub_1E3E785C8(&qword_1ECF3A998, &qword_1ECF3A990, &qword_1E42D8628, sub_1E3E786FC);
    sub_1E4203B34();
    v27 = &qword_1ECF3A828;
    v28 = &qword_1E42D8120;
    sub_1E3294EE4(v0, v11, &qword_1ECF3A828, &qword_1E42D8120);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_19_118();
    sub_1E3E785C8(v51, v52, v53, v54);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v55, &qword_1ECF3A828, &qword_1E42D8120, v56);
    sub_1E4201F44();
    v35 = v0;
    goto LABEL_13;
  }

  if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_7;
  }

  __break(1u);
}

double sub_1E3E777E8(char *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8F8, &qword_1E42DD7A0);
  sub_1E4203904();
  return result;
}

uint64_t sub_1E3E77878()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    result = sub_1E4207384();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1E6911E60](0, v1);
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 392))();

  if (!v4)
  {
    return 0;
  }

  (*(*v4 + 152))(v6, v5);

  if (v7)
  {
    return 0;
  }

  else
  {
    return v6[3];
  }
}

uint64_t sub_1E3E77990(uint64_t a1, uint64_t a2)
{
  if (sub_1E3E77A50(3))
  {
    v4 = *(v2 + 48);
  }

  else
  {
    v4 = 0;
  }

  if (sub_1E3E77A50(2))
  {
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v2 + 16) == 1 && a2 == 0;
  if (!v6 || *(*(v2 + 24) + 16) < 2uLL)
  {
    v7 = 0;
    if (!v4)
    {
      return v7;
    }

LABEL_16:

    return v7;
  }

  v7 = v4;
  if (v4)
  {
    goto LABEL_16;
  }

  return v5;
}

uint64_t sub_1E3E77A50(char a1)
{
  v4[3] = &unk_1F5D5D0A8;
  v4[4] = &off_1F5D5C758;
  LOBYTE(v4[0]) = a1;
  v1 = j__OUTLINED_FUNCTION_18();
  v2 = sub_1E39C29F0(v4, v1 & 1);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

void sub_1E3E77AB0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v47 = v9;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A960, &qword_1E42D85D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v45 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A978, &qword_1E42D85E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v45 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A950, &qword_1E42D85D0);
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14_5();
  v20 = *v8;
  if (sub_1E32AE9B0(v20) <= 1)
  {
    v49 = v20;
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_71_4();
    v33 = swift_allocObject();
    OUTLINED_FUNCTION_87_14(v33);
    *(v2 + 104) = v4;

    sub_1E3E77840(v6, v48);
    v34 = OUTLINED_FUNCTION_13_26();
    __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v36, &unk_1ECF2C790, &qword_1E42996A0, v37);
    v38 = sub_1E375BEF4();
    sub_1E3E7DC40(v38, v39, v40);
    OUTLINED_FUNCTION_86_14(&v49, KeyPath, sub_1E3E7DD4C, v41, v42, &unk_1F5D899A8);
    (*(v18 + 16))(v15, v0, v16);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    sub_1E3E7DBBC();
    sub_1E3E7DC94();
    sub_1E4201F44();
    v43 = OUTLINED_FUNCTION_45_1();
    v44(v43);
  }

  else
  {
    sub_1E4201B64();
    *v12 = sub_1E4201B54() & 1;
    *(v12 + 1) = 0;
    v12[16] = 1;
    v45[1] = *(v46 + 44);
    v49 = v20;
    v21 = swift_getKeyPath();
    OUTLINED_FUNCTION_71_4();
    v22 = swift_allocObject();
    OUTLINED_FUNCTION_87_14(v22);
    *(v2 + 104) = v4;

    sub_1E3E77840(v6, v48);
    v23 = OUTLINED_FUNCTION_13_26();
    __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
    OUTLINED_FUNCTION_14_11();
    sub_1E32752B0(v25, &unk_1ECF2C790, &qword_1E42996A0, v26);
    v27 = sub_1E375BEF4();
    sub_1E3E7DC40(v27, v28, v29);
    OUTLINED_FUNCTION_86_14(&v49, v21, sub_1E3E7DD54, v30, v31, &unk_1F5D899A8);
    sub_1E3294EE4(v12, v15, &qword_1ECF3A960, &qword_1E42D85D8);
    OUTLINED_FUNCTION_75();
    swift_storeEnumTagMultiPayload();
    sub_1E3E7DBBC();
    sub_1E3E7DC94();
    sub_1E4201F44();
    sub_1E325F6F0(v12, &qword_1ECF3A960, &qword_1E42D85D8);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3E77EB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E3E7D4D0(a1, a2, a3);
  result = sub_1E4201B94();
  qword_1ECF71738 = result;
  return result;
}

uint64_t *sub_1E3E77EE8()
{
  if (qword_1ECF65C70 != -1)
  {
    OUTLINED_FUNCTION_8_161(&qword_1ECF65C70);
  }

  return &qword_1ECF71738;
}

void *sub_1E3E77F60(_BYTE *a1, void *(*a2)(uint64_t *__return_ptr))
{
  result = a2(&v5);
  if (v5 != 2)
  {
    if (v5)
    {
      v4 = (*a1 == 2) | *a1;
    }

    else
    {
      v4 = 0;
    }

    *a1 = v4 & 1;
  }

  return result;
}

uint64_t sub_1E3E77FC8@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_70_25();
  result = swift_beginAccess();
  *a1 = byte_1ECF3A760;
  return result;
}

uint64_t sub_1E3E78010@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_70_25();
  result = swift_beginAccess();
  *a1 = byte_1ECF3A761;
  return result;
}

unint64_t sub_1E3E78070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF65C78;
  if (!qword_1ECF65C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF65C78);
  }

  return result;
}

unint64_t sub_1E3E780C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3A778;
  if (!qword_1ECF3A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A778);
  }

  return result;
}

unint64_t sub_1E3E78134(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E7815C(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3E7815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3A780;
  if (!qword_1ECF3A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A780);
  }

  return result;
}

unint64_t sub_1E3E781B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E781D8(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E3E781D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3A788;
  if (!qword_1ECF3A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A788);
  }

  return result;
}

_BYTE *sub_1E3E78238(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3E7831C()
{
  result = qword_1ECF3A790;
  if (!qword_1ECF3A790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A770, &qword_1E42D7E90);
    sub_1E3E783A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A790);
  }

  return result;
}

unint64_t sub_1E3E783A8()
{
  result = qword_1ECF3A798;
  if (!qword_1ECF3A798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A768, &qword_1E42D7E88);
    sub_1E3E78460();
    sub_1E32752B0(&qword_1ECF3A830, &qword_1ECF3A838, &qword_1E42D8128, MEMORY[0x1E6980620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A798);
  }

  return result;
}

unint64_t sub_1E3E78460()
{
  result = qword_1ECF3A7A0;
  if (!qword_1ECF3A7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A7A8, &qword_1E42D80E0);
    sub_1E3E784E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A7A0);
  }

  return result;
}

unint64_t sub_1E3E784E4()
{
  result = qword_1ECF3A7B0;
  if (!qword_1ECF3A7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A7B8, &qword_1E42D80E8);
    sub_1E3E785C8(&qword_1ECF3A7C0, &qword_1ECF3A7C8, &qword_1E42D80F0, sub_1E3E78678);
    sub_1E32752B0(&qword_1ECF3A820, &qword_1ECF3A828, &qword_1E42D8120, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A7B0);
  }

  return result;
}

uint64_t sub_1E3E785C8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_1E32752B0(&qword_1ECF3A7D0, &qword_1ECF3A7D8, &qword_1E42D80F8, MEMORY[0x1E697DDD0]);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E3E78678()
{
  result = qword_1ECF3A7E0;
  if (!qword_1ECF3A7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A7E8, &qword_1E42D8100);
    sub_1E3E786FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A7E0);
  }

  return result;
}

unint64_t sub_1E3E786FC()
{
  result = qword_1ECF3A7F0;
  if (!qword_1ECF3A7F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A7F8, &qword_1E42D8108);
    sub_1E32752B0(&qword_1ECF3A800, &qword_1ECF3A808, &qword_1E42D8110, MEMORY[0x1E69817F8]);
    sub_1E32752B0(&qword_1ECF3A810, &qword_1ECF3A818, &qword_1E42D8118, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A7F0);
  }

  return result;
}

unint64_t sub_1E3E787E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF66000[0];
  if (!qword_1ECF66000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF66000);
  }

  return result;
}

uint64_t sub_1E3E78834(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 9))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3E7887C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E3E78910(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_13_147(result, a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3E789E0(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[17])
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *a1;
    v4 = v3 >= 2;
    v5 = v3 - 2;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

_BYTE *sub_1E3E78A18(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    result[16] = 0;
    *result = a2 - 255;
    *(result + 1) = 0;
    if (a3 >= 0xFF)
    {
      result[17] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      result[17] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_13_147(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3E78A68(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 74))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

void *sub_1E3E78AA4(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *(result + 36) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 74) = 1;
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

      return OUTLINED_FUNCTION_22(result, a2);
    }

    *(result + 74) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_22(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3E78AFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return OUTLINED_FUNCTION_17_7(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ButtonDisclaimerVStack(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

void sub_1E3E78B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A840, &qword_1E42D84C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_42_1();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A848, &qword_1E42D84C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  if (v24)
  {
    if (qword_1ECF65C70 != -1)
    {
      OUTLINED_FUNCTION_8_161(&qword_1ECF65C70);
    }

    v32 = qword_1ECF71738;
    v33 = OUTLINED_FUNCTION_39_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_2();
    v35 = OUTLINED_FUNCTION_124();
    v36(v35);
    v37 = &v31[*(v28 + 36)];
    *v37 = v32;
    v37[1] = sub_1E3E77F28;
    v37[2] = 0;
    v38 = OUTLINED_FUNCTION_138_0();
    sub_1E3294EE4(v38, v39, &qword_1ECF3A848, &qword_1E42D84C8);
    swift_storeEnumTagMultiPayload();
    sub_1E3E7CD00();
    OUTLINED_FUNCTION_1_11();
    sub_1E32752B0(v40, &qword_1ECF3A850, &qword_1E42D84D0, v41);
    OUTLINED_FUNCTION_31_64();
    sub_1E4201F44();
    v42 = OUTLINED_FUNCTION_124();
    sub_1E325F6F0(v42, v43, &qword_1E42D84C8);
  }

  else
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A850, &qword_1E42D84D0);
    OUTLINED_FUNCTION_2();
    (*(v45 + 16))(v20, v26, v44);
    OUTLINED_FUNCTION_54_35();
    swift_storeEnumTagMultiPayload();
    sub_1E3E7CD00();
    OUTLINED_FUNCTION_1_11();
    sub_1E32752B0(v46, &qword_1ECF3A850, &qword_1E42D84D0, v47);
    OUTLINED_FUNCTION_31_64();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E78DB0()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A868, &qword_1E42D84D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A870, &qword_1E42D84E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_35_3();
  if (*(v0 + 16) || *(v0 + 24))
  {
    if (*(v0 + 40))
    {
      v8 = *(v0 + 72);
      v9 = *(v0 + 56);
      v10 = *(v0 + 64);
      v11 = *(v0 + 48);
      v17 = 0;
      LOBYTE(v18) = 0;
      v19 = v11;
      v20 = v9 & 1;
      v21 = v10;
      v22 = v8 & 1;
      sub_1E3E7D298(v5, v6, v7);
    }

    else
    {
      v17 = sub_1E4201D44();
      v18 = 0;
      LOBYTE(v19) = 0;
      sub_1E37E65E0(v17, v12, v13);
    }

    *v2 = sub_1E4203E84();

    sub_1E3E79160();

    sub_1E3294EE4(v2, v1, &qword_1ECF3A868, &qword_1E42D84D8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A878, &unk_1E42D84E8);
    sub_1E3E7D068();
    sub_1E3E7D0F4();
    OUTLINED_FUNCTION_53_39();
    sub_1E4201F44();
    v14 = v2;
    v15 = &qword_1ECF3A868;
    v16 = &qword_1E42D84D8;
  }

  else
  {
    sub_1E3E79008(&v17);
    v23 = *(v0 + 73) & 1;
    sub_1E3294EE4(&v17, v1, &qword_1ECF3A878, &unk_1E42D84E8);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A878, &unk_1E42D84E8);
    sub_1E3E7D068();
    sub_1E3E7D0F4();
    OUTLINED_FUNCTION_53_39();
    sub_1E4201F44();
    v14 = &v17;
    v15 = &qword_1ECF3A878;
    v16 = &unk_1E42D84E8;
  }

  sub_1E325F6F0(v14, v15, v16);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3E79008(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = swift_retain_n();
  v5 = v1[1];
  if (!v5)
  {
    if ((*(*v3 + 392))(v4))
    {
      type metadata accessor for ButtonLayout();
      v5 = swift_dynamicCastClass();
      if (!v5)
      {
      }
    }

    else
    {
      v5 = 0;
    }
  }

  memset(v9, 0, sizeof(v9));
  v10 = 2;
  v11 = 0;
  v13 = 0u;
  v14 = 0u;
  v12 = 1;
  v15 = 0;

  v8[3] = &unk_1F5D89BC0;
  v8[4] = &off_1F5D89D80;
  v8[0] = v3;
  v6 = sub_1E383C8A8();
  v7 = sub_1E383C8B0();
  sub_1E383C8FC(v3, v5, v9, v7, &v12, 0, 1, v8, a1, v6);
}

void sub_1E3E79160()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v83 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8A0, &qword_1E42D8500);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v79 = v7 - v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v78 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8A8, &qword_1E42D8508);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v81 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8B0, &qword_1E42D8510);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v77 = v17 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74[-v20];
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8B8, &qword_1E42D8518);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_4_6();
  v76 = v23 - v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v74[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8C0, &qword_1E42D8520);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_4_6();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_28_6();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8C8, &qword_1E42D8528);
  v35 = OUTLINED_FUNCTION_17_2(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  v80 = v36 - v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25_3();
  v85 = v39;
  v40 = *(v3 + 16);
  v82 = v1;
  if (v40)
  {
    v75 = v5;

    sub_1E3E79840(v21);
    if (*(v3 + 72))
    {
      v41 = 0.0;
    }

    else
    {
      v41 = *(v3 + 64);
    }

    v72 = sub_1E4203D94();
    OUTLINED_FUNCTION_38_51(v72, v42, v43, v44, v45, v46, *&v41);

    sub_1E329E454(v21, v27, &qword_1ECF3A8B0, &qword_1E42D8510);
    memcpy(&v27[*(v84 + 36)], v88, 0x70uLL);
    v47 = OUTLINED_FUNCTION_34();
    sub_1E329E454(v47, v48, v49, v50);
    *(v32 + *(v28 + 36)) = 1;
    sub_1E329E454(v32, v0, &qword_1ECF3A8C0, &qword_1E42D8520);
    v51 = v0;
    v52 = v85;
    sub_1E329E454(v51, v85, &qword_1ECF3A8C0, &qword_1E42D8520);
    v53 = 0;
    v5 = v75;
  }

  else
  {
    v53 = 1;
    v52 = v85;
  }

  v54 = 1;
  __swift_storeEnumTagSinglePayload(v52, v53, 1, v28);
  sub_1E3E79008(v87);
  v55 = *(v3 + 48);
  v56 = *(v3 + 56);
  v87[248] = *(v3 + 73) & 1;
  if (*(v3 + 24))
  {

    v57 = v77;
    sub_1E3E79840(v77);
    if (v56)
    {
      v55 = 0.0;
    }

    v73 = sub_1E4203D84();
    OUTLINED_FUNCTION_38_51(v73, v58, v59, v60, v61, v62, *&v55);

    v63 = v76;
    sub_1E329E454(v57, v76, &qword_1ECF3A8B0, &qword_1E42D8510);
    memcpy((v63 + *(v84 + 36)), v89, 0x70uLL);
    v64 = v79;
    sub_1E329E454(v63, v79, &qword_1ECF3A8B8, &qword_1E42D8518);
    *(v64 + *(v5 + 36)) = 1;
    v65 = v64;
    v66 = v78;
    sub_1E329E454(v65, v78, &qword_1ECF3A8A0, &qword_1E42D8500);
    v67 = v81;
    sub_1E329E454(v66, v81, &qword_1ECF3A8A0, &qword_1E42D8500);
    v54 = 0;
  }

  else
  {
    v67 = v81;
  }

  __swift_storeEnumTagSinglePayload(v67, v54, 1, v5);
  v68 = v80;
  sub_1E3294EE4(v52, v80, &qword_1ECF3A8C8, &qword_1E42D8528);
  sub_1E3294EE4(v87, v86, &qword_1ECF3A878, &unk_1E42D84E8);
  v69 = v82;
  sub_1E3294EE4(v67, v82, &qword_1ECF3A8A8, &qword_1E42D8508);
  v70 = v83;
  sub_1E3294EE4(v68, v83, &qword_1ECF3A8C8, &qword_1E42D8528);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8D0, &qword_1E42D8530);
  sub_1E3294EE4(v86, v70 + *(v71 + 48), &qword_1ECF3A878, &unk_1E42D84E8);
  sub_1E3294EE4(v69, v70 + *(v71 + 64), &qword_1ECF3A8A8, &qword_1E42D8508);
  sub_1E325F6F0(v67, &qword_1ECF3A8A8, &qword_1E42D8508);
  sub_1E325F6F0(v87, &qword_1ECF3A878, &unk_1E42D84E8);
  sub_1E325F6F0(v85, &qword_1ECF3A8C8, &qword_1E42D8528);
  sub_1E325F6F0(v69, &qword_1ECF3A8A8, &qword_1E42D8508);
  sub_1E325F6F0(v86, &qword_1ECF3A878, &unk_1E42D84E8);
  sub_1E325F6F0(v68, &qword_1ECF3A8C8, &qword_1E42D8528);
  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3E79840@<X0>(uint64_t a2@<X8>)
{
  v5 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8D8, &qword_1E42D8538);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31[-1] - v11;
  v13 = *(v2 + 32);
  if (!v13)
  {
    if (sub_1E3C27528(v9, v10))
    {
      type metadata accessor for TextLayout();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
      }
    }

    else
    {
      v13 = 0;
    }
  }

  sub_1E3E79A0C(v5);
  if (v13 && (OUTLINED_FUNCTION_8(), v15 = *(v14 + 152), v16 = , v15(v31, v16), v3 = v31[0], v4 = v31[1], v17 = v31[2], v18 = v31[3], , (v32 & 1) == 0))
  {
    v19.n128_u64[0] = v3;
    v20.n128_u64[0] = v4;
    v21.n128_u64[0] = v17;
    v22.n128_u64[0] = v18;
    j_nullsub_1(v19, v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_18_3();
  v24 = v23;
  v26 = v25;
  v27 = sub_1E4202734();

  sub_1E329E454(v12, a2, &qword_1ECF3A8D8, &qword_1E42D8538);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8B0, &qword_1E42D8510);
  v29 = a2 + *(result + 36);
  *v29 = v27;
  *(v29 + 8) = v3;
  *(v29 + 16) = v4;
  *(v29 + 24) = v24;
  *(v29 + 32) = v26;
  *(v29 + 40) = 0;
  return result;
}

uint64_t sub_1E3E79A0C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8E0, &unk_1E42D8540);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_42_1();
  type metadata accessor for FittedTextView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  LOBYTE(a1) = *(a1 + 40);

  OUTLINED_FUNCTION_18();
  v8 = OUTLINED_FUNCTION_124();
  if (a1)
  {
    sub_1E3C131D0(v8, v9, v10, v11);
    sub_1E3E7D1D8(v7, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21_94();
    v14 = sub_1E3E7DAE8(v12, v13, &unk_1E42C4460);
    sub_1E3BD9530(v14, v15, v16);
    OUTLINED_FUNCTION_31_64();
    sub_1E4201F44();
    return sub_1E3E7D23C(v7);
  }

  else
  {
    sub_1E3FAC790(v8, v9, v10, v11);
    *v1 = v23;
    v1[1] = *v24;
    *(v1 + 25) = *&v24[9];
    OUTLINED_FUNCTION_54_35();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_21_94();
    v20 = sub_1E3E7DAE8(v18, v19, &unk_1E42C4460);
    sub_1E3BD9530(v20, v21, v22);
    OUTLINED_FUNCTION_31_64();
    return sub_1E4201F44();
  }
}

uint64_t sub_1E3E79BE8(uint64_t a1, char a2, uint64_t a3, char a4, id a5)
{
  [a5 intrinsicContentSize];
  if ((a2 & 1) == 0)
  {
    v10 = *&a1;
  }

  if ((a4 & 1) == 0)
  {
    v11 = *&a3;
  }

  sub_1E3C8B764(0, v10, v11);
  OUTLINED_FUNCTION_18_3();
  if (sub_1E39C408C())
  {

    v12 = 0.0;
    if ((a2 & 1) == 0)
    {
      v12 = *&a1;
    }

    if (v5 <= v12)
    {
      v5 = v12;
    }
  }

  return *&v5;
}

uint64_t sub_1E3E79CD8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, char a6)
{
  result = sub_1E3A79350();
  if ((result & 1) == 0)
  {
    sub_1E3A7992C();
    OUTLINED_FUNCTION_109();
    MEMORY[0x1EEE9AC00](v12);
    OUTLINED_FUNCTION_30_68();
    *(v13 - 32) = a3;
    *(v13 - 24) = a4 & 1;
    *(v13 - 16) = a5;
    *(v13 - 8) = a6 & 1;
    OUTLINED_FUNCTION_64_26(v14, v15, v16, v17);
    v19 = *(v18 + 16);
    if (v19)
    {
      v20 = (v18 + 32);
      v21 = 0.0;
      do
      {
        v22 = *v20++;
        v21 = v21 + v22;
        --v19;
      }

      while (v19);
    }

    if ((a2 & 1) == 0)
    {
      sub_1E4201044();
      OUTLINED_FUNCTION_0_269();
      sub_1E3E7DAE8(v23, v24, MEMORY[0x1E697E3D8]);
      sub_1E42066B4();
      sub_1E4206724();
      OUTLINED_FUNCTION_57_30();
      sub_1E4206714();
    }

    OUTLINED_FUNCTION_16_0();
    sub_1E3E79ECC();
    sub_1E4201044();
    OUTLINED_FUNCTION_0_269();
    sub_1E3E7DAE8(v25, v26, MEMORY[0x1E697E3D8]);
    OUTLINED_FUNCTION_27_0();
    sub_1E42066B4();
    OUTLINED_FUNCTION_27_0();
    sub_1E4206724();
    OUTLINED_FUNCTION_57_30();
    return sub_1E4206714();
  }

  return result;
}

void sub_1E3E79ECC()
{
  OUTLINED_FUNCTION_93();
  v28 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v6 = sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  v9 = sub_1E3E7DAE8(v7, v8, MEMORY[0x1E697E3D8]);
  v10 = sub_1E42066D4();
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = v10;
    v29 = MEMORY[0x1E69E7CC0];
    v13 = OUTLINED_FUNCTION_55_41();
    sub_1E3A79F84(v13, v14, v15);
    v11 = v29;
    sub_1E42066B4();
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    do
    {
      v16 = sub_1E4206764();
      v17 = v9;
      v18 = v6;
      (*(v4 + 16))(v0);
      v19 = OUTLINED_FUNCTION_28_73();
      v16(v19);
      sub_1E4200EF4();
      OUTLINED_FUNCTION_18_3();
      (*(v4 + 8))(v0, v28);
      v21 = *(v29 + 16);
      v20 = *(v29 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_35(v20);
        sub_1E3A79F84(v23, v21 + 1, 1);
      }

      *(v29 + 16) = v21 + 1;
      v22 = v29 + 16 * v21;
      *(v22 + 32) = v1;
      *(v22 + 40) = v2;
      sub_1E4206734();
      --v12;
      v6 = v18;
      v9 = v17;
    }

    while (v12);
  }

  v24 = *(v11 + 16);
  if (v24)
  {
    v25 = (v11 + 32);
    v26 = 0uLL;
    do
    {
      v27 = *v25++;
      v26 = vbslq_s8(vcgeq_f64(v27, v26), v27, v26);
      --v24;
    }

    while (v24);
  }

  OUTLINED_FUNCTION_54_0();
}

uint64_t sub_1E3E7A14C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = OUTLINED_FUNCTION_34_64();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  result = sub_1E3A79350();
  if ((result & 1) == 0)
  {
    sub_1E3A7992C();
    OUTLINED_FUNCTION_109();
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_30_68();
    *(v15 - 32) = a1;
    *(v15 - 24) = a2 & 1;
    *(v15 - 16) = a3;
    *(v15 - 8) = a4 & 1;
    OUTLINED_FUNCTION_64_26(v16, v17, v18, v19);
    v21 = v20;
    v22 = *(v20 + 16);
    if (v22)
    {
      v23 = (v20 + 32);
      v24 = 0.0;
      do
      {
        v25 = *v23++;
        v24 = v24 + v25;
        --v22;
      }

      while (v22);
    }

    v41.origin.x = OUTLINED_FUNCTION_2_0();
    CGRectGetWidth(v41);
    sub_1E4201044();
    OUTLINED_FUNCTION_0_269();
    sub_1E3E7DAE8(v26, v27, MEMORY[0x1E697E3D8]);
    sub_1E42066B4();
    sub_1E4206724();
    sub_1E4206714();
    sub_1E3E79ECC();
    v29 = v28;
    v42.origin.x = OUTLINED_FUNCTION_2_0();
    MinX = CGRectGetMinX(v42);
    v31 = OUTLINED_FUNCTION_2_0();
    if (a2)
    {
      CGRectGetMinY(*&v31);
      sub_1E4203F34();
    }

    else
    {
      CGRectGetMaxY(*&v31);
      sub_1E4203F54();
    }

    result = sub_1E3A7992C();
    if (result == v35)
    {
    }

    v36 = result;
    v37 = v35;
    if (v35 < result)
    {
      __break(1u);
    }

    else if (result < v35)
    {
      if ((result & 0x8000000000000000) == 0)
      {
        v38 = *(v21 + 16);
        if (result < v38 && v35 - 1 < v38)
        {
          v40 = MinX + v29 * 0.5;
          do
          {
            sub_1E4201054();
            OUTLINED_FUNCTION_75_22();
            sub_1E4200F04();
            (*(v11 + 8))(v4, v9);
            v40 = v40 + v29 + *(v21 + 32 + 8 * v36++);
          }

          while (v37 != v36);
        }

LABEL_23:
        __break(1u);
        return result;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_22;
  }

  return result;
}

void sub_1E3E7A460()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_52_42(v4, v5, v6);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_6();
  v9 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v21 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_93_0();
  v13 = *v1;
  sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  sub_1E3E7DAE8(v14, v15, MEMORY[0x1E697E3D8]);
  OUTLINED_FUNCTION_51_38();
  OUTLINED_FUNCTION_45_1();
  sub_1E42066B4();
  OUTLINED_FUNCTION_45_1();
  sub_1E4206724();
  OUTLINED_FUNCTION_57_30();
  v16 = sub_1E4206714();
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    if (v13 >= v16 - 1)
    {
      *v24 = 0;
    }

    else if (v23)
    {
      sub_1E4201054();
      sub_1E4200F14();
      v17 = *(v21 + 8);
      v18 = OUTLINED_FUNCTION_13_26();
      v17(v18);
      sub_1E4201054();
      sub_1E4200F14();
      (v17)(v2, v9);
      sub_1E4200C54();
      v19 = OUTLINED_FUNCTION_16_125();
      v0(v19);
      v20 = OUTLINED_FUNCTION_138_0();
      v0(v20);
      *v24 = v3;
    }

    else
    {
      *v24 = v22;
    }

    OUTLINED_FUNCTION_54_0();
  }
}

void (*sub_1E3E7A76C())(void *a1)
{
  v1 = OUTLINED_FUNCTION_32_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *(v0 + 32) = OUTLINED_FUNCTION_39_53(v2);
  return sub_1E37C55D4;
}

uint64_t sub_1E3E7A7C4(uint64_t a1, char a2, uint64_t a3)
{
  result = sub_1E3A79350();
  if ((result & 1) == 0)
  {
    sub_1E3E7A918(a3, a1, a2 & 1);
    v9 = *(v8 + 16);
    if (v9)
    {
      v10 = (v8 + 32);
      v11 = 0.0;
      do
      {
        v12 = *v10++;
        v11 = v11 + v12;
        --v9;
      }

      while (v9);
    }

    sub_1E3A7992C();
    OUTLINED_FUNCTION_109();
    MEMORY[0x1EEE9AC00](v13);
    v22[2] = a3;
    v22[3] = v3;
    OUTLINED_FUNCTION_64_26(v14, v22, v15, v16);
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 32);
      v20 = 0.0;
      do
      {
        v21 = *v19++;
        v20 = v20 + v21;
        --v18;
      }

      while (v18);
    }
  }

  return result;
}

void *sub_1E3E7A918(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v95) = a3;
  v94 = a2;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E40, &unk_1E42D8890);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v93 = (v8 - v9);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v92 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E50, &unk_1E42B3958);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_31_2();
  v102 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v98 = v17 - v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v87 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58, &unk_1E42DD790) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_35_3();
  v24 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v27 = *(v26 + 16);
  v97 = a1;
  v90 = v26 + 16;
  v88 = v27;
  v27(v3, a1, v24);
  v28 = MEMORY[0x1E697E3C0];
  sub_1E3E7DAE8(&qword_1EE289D90, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D0]);
  sub_1E4206194();
  v29 = *(v22 + 44);
  OUTLINED_FUNCTION_20_103();
  sub_1E3E7DAE8(v30, v28, v31);
  v101 = (v15 + 16);
  v87[1] = v15;
  v96 = (v15 + 32);
  v99 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    OUTLINED_FUNCTION_114_1();
    sub_1E4206724();
    if (*(v4 + v29) == v111)
    {
      break;
    }

    v32 = sub_1E4206764();
    v33 = v102;
    (*v101)(v21);
    v32(&v111, 0);
    v34 = sub_1E4206734();
    sub_1E3E78070(v34, v35, v36);
    sub_1E4200F44();
    if (v111 == 1)
    {
      v87[0] = *v96;
      (v87[0])(v98, v21, v33);
      v39 = v99;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v105[0] = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3E7D014(0, *(v39 + 16) + 1, 1);
        v39 = v105[0];
      }

      v42 = *(v39 + 16);
      v41 = *(v39 + 24);
      v43 = v42 + 1;
      if (v42 >= v41 >> 1)
      {
        v46 = OUTLINED_FUNCTION_35(v41);
        v99 = v47;
        sub_1E3E7D014(v46, v47, 1);
        v43 = v99;
        v39 = v105[0];
      }

      *(v39 + 16) = v43;
      OUTLINED_FUNCTION_81();
      v99 = v39;
      (v87[0])(v39 + v44 + *(v45 + 72) * v42, v98);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_34();
      v38(v37);
    }
  }

  sub_1E325F6F0(v4, &qword_1ECF30E58, &unk_1E42DD790);
  if ((v94 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v48 = v94;
  }

  else
  {
    v48 = 0;
  }

  if (v95)
  {
    v48 = v94;
  }

  v107 = v48;
  v108 = v95 & 1 | ((v94 & 0x7FFFFFFFFFFFFFFFLL) == 0);
  v109 = 0;
  v110 = 1;
  v49 = v97;
  sub_1E3E7B428();
  v51 = v50;
  v53 = v52;

  v95 = v51;
  v107 = v51;
  LODWORD(v94) = v53;
  v108 = v53 & 1;
  v88(v5, v49, v24);
  OUTLINED_FUNCTION_33_67();
  v54 = sub_1E42066D4();
  if (!v54)
  {
LABEL_44:
    sub_1E325F6F0(v5, &qword_1ECF30E50, &unk_1E42B3958);
    return v95;
  }

  v55 = v54;
  v106 = MEMORY[0x1E69E7CC0];
  v56 = OUTLINED_FUNCTION_55_41();
  sub_1E3887DC4(v56, v57, v58);
  v59 = v106;
  OUTLINED_FUNCTION_33_67();
  result = sub_1E42066B4();
  if (v55 < 0)
  {
    goto LABEL_51;
  }

  v61 = 0;
  v90 = v55 - 1;
  v91 = v5;
  v62 = v111;
  while (1)
  {
    v63 = *(v100 + 48);
    v104 = v62;
    OUTLINED_FUNCTION_33_67();
    result = sub_1E42066B4();
    if (v62 < v103[0])
    {
      break;
    }

    OUTLINED_FUNCTION_33_67();
    result = sub_1E4206724();
    if (v62 >= v103[0])
    {
      goto LABEL_46;
    }

    v98 = v62;
    v99 = v59;
    v64 = sub_1E4206764();
    v65 = v102;
    v66 = v92;
    (*v101)((v92 + v63));
    v64(v103, 0);
    v67 = v93;
    *v93 = v61;
    v68 = v66 + v63;
    v69 = v67;
    v70 = (*v96)(v67 + *(v100 + 48), v68, v65);
    sub_1E3C1363C(v70, v71, v72);
    sub_1E4200F44();
    memcpy(v105, v103, 0x51uLL);
    if (v105[2])
    {
      v111 = *v103;
      v112 = v105[2];
      v113 = *&v103[3];
      v114 = *&v103[5];
      v115[0] = *&v103[7];
      *(v115 + 9) = *(&v103[8] + 1);
      OUTLINED_FUNCTION_60_28();
      sub_1E3C12A78(v95, v73);
      v75 = v74;
      OUTLINED_FUNCTION_114_1();
      sub_1E42066B4();
      OUTLINED_FUNCTION_114_1();
      result = sub_1E4206724();
      if (v104 < v103[0])
      {
        goto LABEL_48;
      }

      v5 = v91;
      v76 = v98;
      v59 = v99;
      if (v103[0] == v104)
      {
        goto LABEL_26;
      }

      if (v103[0] >= v104)
      {
        goto LABEL_50;
      }

      if (v61 != v104 - 1)
      {
LABEL_26:
        OUTLINED_FUNCTION_114_1();
        sub_1E42066B4();
        OUTLINED_FUNCTION_114_1();
        sub_1E4206724();
        result = sub_1E325F6F0(v105, &qword_1ECF355A0, &unk_1E42D88A0);
        if (v104 < v103[0])
        {
          goto LABEL_49;
        }

        if (v103[0] == v104 || v61 != v103[0])
        {
LABEL_37:
          v80 = v75;
          goto LABEL_39;
        }

        v77 = *(v89 + 32);
        v78 = *(v89 + 40);
      }

      else
      {
        sub_1E325F6F0(v105, &qword_1ECF355A0, &unk_1E42D88A0);
        v77 = *(v89 + 16);
        v78 = *(v89 + 24);
      }

      if (v78)
      {
        v80 = 0.0;
      }

      else
      {
        v80 = v77;
      }

      if (v75 > v80)
      {
        goto LABEL_37;
      }
    }

    else
    {
      OUTLINED_FUNCTION_60_28();
      sub_1E4200EF4();
      v80 = v81;
      v5 = v91;
      v76 = v98;
      v59 = v99;
    }

LABEL_39:
    sub_1E325F6F0(v69, &qword_1ECF30E40, &unk_1E42D8890);
    v106 = v59;
    v83 = *(v59 + 16);
    v82 = *(v59 + 24);
    if (v83 >= v82 >> 1)
    {
      OUTLINED_FUNCTION_35(v82);
      OUTLINED_FUNCTION_54_35();
      sub_1E3887DC4(v84, v85, v86);
      v59 = v106;
    }

    *(v59 + 16) = v83 + 1;
    *(v59 + 8 * v83 + 32) = v80;
    v104 = v76;
    result = sub_1E42066E4();
    if (v61 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_47;
    }

    if (v90 == v61)
    {
      goto LABEL_44;
    }

    v62 = v103[0];
    ++v61;
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void sub_1E3E7B1F8()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  v34 = OUTLINED_FUNCTION_34_64();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (sub_1E3A79350())
  {
    goto LABEL_15;
  }

  v31 = v5;
  sub_1E3A7992C();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v7);
  v30[2] = v3;
  v30[3] = v0;
  OUTLINED_FUNCTION_64_26(v8, v30, v9, v10);
  v12 = v11;
  v36.origin.x = OUTLINED_FUNCTION_2_0();
  *&v13 = CGRectGetWidth(v36);
  v32 = sub_1E3E7A918(v3, v13, 0);
  v15 = v14;
  v17 = v16;
  v37.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMinY(v37);
  v33 = v3;
  v18 = sub_1E3A7992C();
  if (v18 == v19)
  {
LABEL_14:

LABEL_15:
    OUTLINED_FUNCTION_20_0();
    return;
  }

  v20 = v18;
  v21 = v19;
  if (v19 < v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v18 >= v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v22 = *(v12 + 16);
    if (v18 >= v22 || v19 - 1 >= v22)
    {
      goto LABEL_21;
    }

    v24 = (v31 + 8);
    v25 = *(v17 + 16);
    v26 = (v17 + 8 * v18 + 32);
    v27 = v15 & 1;
    while (v20 < v25)
    {
      sub_1E4201054();
      v38.origin.x = OUTLINED_FUNCTION_2_0();
      CGRectGetMidX(v38);
      sub_1E4203F34();
      v35 = v27;
      OUTLINED_FUNCTION_58_31();
      sub_1E4200F04();
      (*v24)(v1, v34);
      if (v20 >= *(v17 + 16))
      {
        goto LABEL_17;
      }

      v28 = *v26++;
      OUTLINED_FUNCTION_41_56(v28);
      if (v21 == v29)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1E3E7B428()
{
  OUTLINED_FUNCTION_93();
  v2 = v1;
  v53 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_28_6();
  v10 = *(v2 + 16);
  if (v10)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1E3887DC4(0, v10, 0);
    v11 = v56;
    v12 = v4 + 16;
    OUTLINED_FUNCTION_81();
    v14 = v2 + v13;
    v51 = *(v12 + 56);
    v52 = v15;
    v16 = (v12 - 8);
    for (i = v10 - 1; ; --i)
    {
      v18 = v52(v8, v14, v53);
      sub_1E3C1363C(v18, v19, v20);
      sub_1E4200F44();
      memcpy(v55, v54, 0x51uLL);
      if (v55[2])
      {
        OUTLINED_FUNCTION_72_24(v55[2]);
        *(v21 + 24) = *&v54[3];
        *(v21 + 40) = *&v54[5];
        *(v21 + 56) = *&v54[7];
        *(v21 + 65) = *(&v54[8] + 1);
        v22 = OUTLINED_FUNCTION_29_83();
        LOBYTE(v54[0]) = v23;
        v24 = sub_1E3C12A78(v22, v23);
        sub_1E325F6F0(v55, &qword_1ECF355A0, &unk_1E42D88A0);
      }

      else
      {
        OUTLINED_FUNCTION_29_83();
        LOBYTE(v54[0]) = v25;
        sub_1E4200EF4();
        v24 = v26;
      }

      (*v16)(v8, v53);
      v56 = v11;
      v28 = *(v11 + 16);
      v27 = *(v11 + 24);
      if (v28 >= v27 >> 1)
      {
        v29 = OUTLINED_FUNCTION_35(v27);
        sub_1E3887DC4(v29, v28 + 1, 1);
        v11 = v56;
      }

      *(v11 + 16) = v28 + 1;
      *(v11 + 8 * v28 + 32) = v24;
      if (!i)
      {
        break;
      }

      v14 += v51;
    }

    sub_1E39AB6F8(v11);

    goto LABEL_20;
  }

  v30 = v4;
  sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  sub_1E3E7DAE8(v31, v32, MEMORY[0x1E697E3D8]);
  OUTLINED_FUNCTION_39_0();
  v33 = sub_1E42066D4();
  v34 = MEMORY[0x1E69E7CC0];
  if (!v33)
  {
LABEL_19:
    sub_1E39AB6F8(v34);

LABEL_20:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v35 = v33;
  v56 = MEMORY[0x1E69E7CC0];
  v36 = OUTLINED_FUNCTION_55_41();
  sub_1E3887DC4(v36, v37, v38);
  v34 = v56;
  OUTLINED_FUNCTION_39_0();
  sub_1E42066B4();
  if ((v35 & 0x8000000000000000) == 0)
  {
    do
    {
      v39 = sub_1E4206764();
      (*(v30 + 16))(v0);
      v40 = v39(v55, 0);
      sub_1E3C1363C(v40, v41, v42);
      sub_1E4200F44();
      memcpy(v55, v54, 0x51uLL);
      if (v55[2])
      {
        OUTLINED_FUNCTION_72_24(v55[2]);
        v57 = *&v54[3];
        v58 = *&v54[5];
        v59[0] = *&v54[7];
        *(v59 + 9) = *(&v54[8] + 1);
        v43 = OUTLINED_FUNCTION_29_83();
        LOBYTE(v54[0]) = v44;
        v45 = sub_1E3C12A78(v43, v44);
        sub_1E325F6F0(v55, &qword_1ECF355A0, &unk_1E42D88A0);
      }

      else
      {
        OUTLINED_FUNCTION_29_83();
        LOBYTE(v54[0]) = v46;
        sub_1E4200EF4();
        v45 = v47;
      }

      (*(v30 + 8))(v0, v53);
      v56 = v34;
      v49 = *(v34 + 16);
      v48 = *(v34 + 24);
      if (v49 >= v48 >> 1)
      {
        v50 = OUTLINED_FUNCTION_35(v48);
        sub_1E3887DC4(v50, v49 + 1, 1);
        v34 = v56;
      }

      *(v34 + 16) = v49 + 1;
      *(v34 + 8 * v49 + 32) = v45;
      sub_1E4206734();
      --v35;
    }

    while (v35);
    goto LABEL_19;
  }

  __break(1u);
}

void sub_1E3E7B8D0()
{
  OUTLINED_FUNCTION_93();
  v24 = v2;
  v25 = v3;
  v5 = v4;
  sub_1E4200C74();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_28_6();
  v8 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v23 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_93_0();
  v15 = *v5;
  sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  sub_1E3E7DAE8(v16, v17, MEMORY[0x1E697E3D8]);
  OUTLINED_FUNCTION_51_38();
  sub_1E42066B4();
  sub_1E4206724();
  OUTLINED_FUNCTION_57_30();
  v18 = sub_1E4206714();
  if (__OFSUB__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    if (v15 >= v18 - 1)
    {
      *v25 = 0;
    }

    else if (*(v24 + 8))
    {
      sub_1E4201054();
      sub_1E4200F14();
      v19 = *(v23 + 8);
      v20 = OUTLINED_FUNCTION_13_26();
      v19(v20);
      sub_1E4201054();
      sub_1E4200F14();
      (v19)(v13, v8);
      sub_1E4200C54();
      v21 = OUTLINED_FUNCTION_16_125();
      v0(v21);
      v22 = OUTLINED_FUNCTION_138_0();
      v0(v22);
      *v25 = v1;
    }

    else
    {
      *v25 = *v24;
    }

    OUTLINED_FUNCTION_54_0();
  }
}

void (*sub_1E3E7BBF8())(void *a1)
{
  v1 = OUTLINED_FUNCTION_32_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *(v0 + 32) = OUTLINED_FUNCTION_39_53(v2);
  return sub_1E37C55D4;
}

uint64_t sub_1E3E7BC7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  result = sub_1E3A79350();
  if ((result & 1) == 0)
  {
    v9 = a5 & 1;
    v10 = OUTLINED_FUNCTION_16_0();
    sub_1E3E7BDA0(v10, v11, v12);
    v14 = *(v13 + 16);
    v15 = 0.0;
    if (v14)
    {
      v16 = (v13 + 32);
      do
      {
        v17 = *v16++;
        v15 = v15 + v17;
        --v14;
      }

      while (v14);
    }

    sub_1E3A7992C();
    OUTLINED_FUNCTION_109();
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_30_68();
    *(v19 - 32) = a3;
    *(v19 - 24) = a4;
    *(v19 - 16) = v9;
    OUTLINED_FUNCTION_64_26(v20, v21, v22, v23);
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = (v24 + 32);
      v27 = 0.0;
      do
      {
        v28 = *v26++;
        v27 = v27 + v28;
        --v25;
      }

      while (v25);
    }
  }

  return result;
}

void sub_1E3E7BDA0(uint64_t a1, uint64_t a2, char a3)
{
  sub_1E3E7C084();
  sub_1E3793CAC(v3, v4, v5);
  min<A>(_:_:)();

  sub_1E3E7C084();
}

void sub_1E3E7BE48()
{
  OUTLINED_FUNCTION_21_5();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v34 = OUTLINED_FUNCTION_34_64();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  if (sub_1E3A79350())
  {
    goto LABEL_15;
  }

  sub_1E3A7992C();
  OUTLINED_FUNCTION_109();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30_68();
  *(v15 - 32) = v6;
  *(v15 - 24) = v4;
  *(v15 - 16) = v2 & 1;
  OUTLINED_FUNCTION_64_26(v16, v17, v18, v19);
  v21 = v20;
  sub_1E3E7BDA0(v6, v10, v8 & 1);
  v23 = v22;
  v35.origin.x = OUTLINED_FUNCTION_2_0();
  CGRectGetMinY(v35);
  v24 = sub_1E3A7992C();
  if (v24 == v25)
  {
LABEL_14:

LABEL_15:
    OUTLINED_FUNCTION_20_0();
    return;
  }

  v26 = v24;
  v27 = v25;
  if (v25 < v24)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v24 >= v25)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v24 & 0x8000000000000000) == 0)
  {
    v28 = *(v21 + 16);
    if (v24 >= v28 || v25 - 1 >= v28)
    {
      goto LABEL_21;
    }

    v30 = *(v23 + 16);
    v31 = (v23 + 8 * v24 + 32);
    while (v26 < v30)
    {
      sub_1E4201054();
      v36.origin.x = OUTLINED_FUNCTION_2_0();
      CGRectGetMidX(v36);
      sub_1E4203F34();
      OUTLINED_FUNCTION_58_31();
      sub_1E4200F04();
      (*(v12 + 8))(v0, v34);
      if (v26 >= *(v23 + 16))
      {
        goto LABEL_17;
      }

      v32 = *v31++;
      OUTLINED_FUNCTION_41_56(v32);
      if (v27 == v33)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1E3E7C084()
{
  OUTLINED_FUNCTION_93();
  v75 = v2;
  v74 = v3;
  v5 = v4;
  v76 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v73 = (v9 - v10);
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  v71 = v68 - v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v68 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30E58, &unk_1E42DD790) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_5();
  v18 = sub_1E4201044();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v21 = *(v20 + 16);
  v69 = v5;
  v21(v0, v5, v18);
  v22 = MEMORY[0x1E697E3C0];
  sub_1E3E7DAE8(&qword_1EE289D90, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D0]);
  sub_1E4206194();
  v23 = *(v16 + 44);
  OUTLINED_FUNCTION_20_103();
  sub_1E3E7DAE8(v24, v22, v25);
  v26 = (v7 + 16);
  v27 = (v7 + 8);
  v68[2] = v7;
  v70 = (v7 + 32);
  v72 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    OUTLINED_FUNCTION_39_0();
    sub_1E4206724();
    if (*(v1 + v23) == v78)
    {
      break;
    }

    v28 = sub_1E4206764();
    v29 = v76;
    (*v26)(v15);
    v30 = OUTLINED_FUNCTION_28_73();
    v28(v30);
    v31 = sub_1E4206734();
    sub_1E3E78070(v31, v32, v33);
    sub_1E4200F44();
    if (v78 == 1)
    {
      v34 = v29;
      v35 = *v70;
      (*v70)(v71, v15, v34);
      v36 = v72;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v79 = v36;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3E7D014(0, *(v36 + 16) + 1, 1);
        v36 = v79;
      }

      v39 = *(v36 + 16);
      v38 = *(v36 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v44 = OUTLINED_FUNCTION_35(v38);
        v72 = v45;
        v68[1] = v46;
        sub_1E3E7D014(v44, v45, 1);
        v40 = v72;
        v36 = v79;
      }

      *(v36 + 16) = v40;
      OUTLINED_FUNCTION_81();
      v72 = v36;
      (v35)(v36 + v41 + *(v42 + 72) * v43, v71);
    }

    else
    {
      (*v27)(v15, v29);
    }
  }

  sub_1E325F6F0(v1, &qword_1ECF30E58, &unk_1E42DD790);
  LOBYTE(v78) = v75 & 1;
  LOBYTE(v79) = 1;
  v47 = v69;
  sub_1E3E7C5F4();
  v49 = v48;
  v51 = v50;

  OUTLINED_FUNCTION_39_0();
  v52 = sub_1E42066D4();
  if (!v52)
  {
LABEL_16:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v53 = v52;
  v79 = MEMORY[0x1E69E7CC0];
  v54 = OUTLINED_FUNCTION_55_41();
  sub_1E3887DC4(v54, v55, v56);
  v57 = v79;
  OUTLINED_FUNCTION_39_0();
  sub_1E42066B4();
  if ((v53 & 0x8000000000000000) == 0)
  {
    LODWORD(v71) = v51;
    v72 = v49;
    do
    {
      v58 = sub_1E4206764();
      v59 = v73;
      v60 = v76;
      (*v26)(v73);
      v61 = OUTLINED_FUNCTION_28_73();
      v58(v61);
      LOBYTE(v78) = v75 & 1;
      v77 = 1;
      sub_1E4200EF4();
      v63 = v62;
      (*v27)(v59, v60);
      v79 = v57;
      v64 = v47;
      v66 = *(v57 + 16);
      v65 = *(v57 + 24);
      if (v66 >= v65 >> 1)
      {
        v67 = OUTLINED_FUNCTION_35(v65);
        sub_1E3887DC4(v67, v66 + 1, 1);
        v57 = v79;
      }

      *(v57 + 16) = v66 + 1;
      *(v57 + 8 * v66 + 32) = v63;
      sub_1E4206734();
      --v53;
      v47 = v64;
    }

    while (v53);
    goto LABEL_16;
  }

  __break(1u);
}

void sub_1E3E7C5F4()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v3 = v2;
  v43 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = *(v3 + 16);
  if (v10)
  {
    v44 = MEMORY[0x1E69E7CC0];
    sub_1E3887DC4(0, v10, 0);
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v41 = v12;
    OUTLINED_FUNCTION_81();
    v14 = v3 + v13;
    v15 = *(v11 + 56);
    v16 = (v11 - 8);
    do
    {
      v17 = v11;
      v41(v9, v14, v43);
      OUTLINED_FUNCTION_81_22();
      v19 = v18;
      (*v16)(v9, v43);
      v21 = *(v44 + 16);
      v20 = *(v44 + 24);
      if (v21 >= v20 >> 1)
      {
        v22 = OUTLINED_FUNCTION_35(v20);
        sub_1E3887DC4(v22, v21 + 1, 1);
      }

      *(v44 + 16) = v21 + 1;
      *(v44 + 8 * v21 + 32) = v19;
      v14 += v15;
      --v10;
      v11 = v17;
    }

    while (v10);
    sub_1E39AB6F8(v44);

    goto LABEL_14;
  }

  sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  sub_1E3E7DAE8(v23, v24, MEMORY[0x1E697E3D8]);
  OUTLINED_FUNCTION_34();
  v25 = sub_1E42066D4();
  v26 = MEMORY[0x1E69E7CC0];
  if (!v25)
  {
LABEL_13:
    sub_1E39AB6F8(v26);

LABEL_14:
    OUTLINED_FUNCTION_54_0();
    return;
  }

  v27 = v25;
  v45 = MEMORY[0x1E69E7CC0];
  v28 = OUTLINED_FUNCTION_55_41();
  sub_1E3887DC4(v28, v29, v30);
  v26 = v45;
  sub_1E42066B4();
  if ((v27 & 0x8000000000000000) == 0)
  {
    v42 = (v5 + 16);
    do
    {
      v31 = v1;
      v32 = sub_1E4206764();
      (*v42)(v9);
      v33 = OUTLINED_FUNCTION_28_73();
      v32(v33);
      OUTLINED_FUNCTION_81_22();
      v35 = v34;
      v36 = OUTLINED_FUNCTION_124();
      v37(v36);
      v39 = *(v45 + 16);
      v38 = *(v45 + 24);
      if (v39 >= v38 >> 1)
      {
        v40 = OUTLINED_FUNCTION_35(v38);
        sub_1E3887DC4(v40, v39 + 1, 1);
      }

      *(v45 + 16) = v39 + 1;
      *(v45 + 8 * v39 + 32) = v35;
      sub_1E4206734();
      --v27;
      v1 = v31;
    }

    while (v27);
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1E3E7C93C()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_52_42(v4, v5, v6);
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_28_6();
  v9 = sub_1E4200F34();
  OUTLINED_FUNCTION_0_10();
  v21 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_93_0();
  v13 = *v1;
  sub_1E4201044();
  OUTLINED_FUNCTION_0_269();
  sub_1E3E7DAE8(v14, v15, MEMORY[0x1E697E3D8]);
  OUTLINED_FUNCTION_51_38();
  OUTLINED_FUNCTION_45_1();
  sub_1E42066B4();
  OUTLINED_FUNCTION_45_1();
  sub_1E4206724();
  OUTLINED_FUNCTION_57_30();
  v16 = sub_1E4206714();
  if (__OFSUB__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    if (v13 >= v16 - 1)
    {
      *v24 = 0;
    }

    else if (v23)
    {
      sub_1E4201054();
      sub_1E4200F14();
      v17 = *(v21 + 8);
      v18 = OUTLINED_FUNCTION_13_26();
      v17(v18);
      sub_1E4201054();
      sub_1E4200F14();
      (v17)(v2, v9);
      sub_1E4200C54();
      v19 = OUTLINED_FUNCTION_16_125();
      v0(v19);
      v20 = OUTLINED_FUNCTION_138_0();
      v0(v20);
      *v24 = v3;
    }

    else
    {
      *v24 = v22;
    }

    OUTLINED_FUNCTION_54_0();
  }
}

void (*sub_1E3E7CBC8())(void *a1)
{
  v1 = OUTLINED_FUNCTION_32_16();
  v2 = __swift_coroFrameAllocStub(v1);
  *(v0 + 32) = OUTLINED_FUNCTION_39_53(v2);
  return sub_1E37C4BF8;
}

unint64_t sub_1E3E7CC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF66090[0];
  if (!qword_1ECF66090[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF66090);
  }

  return result;
}

unint64_t sub_1E3E7CC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF66220[0];
  if (!qword_1ECF66220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF66220);
  }

  return result;
}

unint64_t sub_1E3E7CD00()
{
  result = qword_1ECF3A858;
  if (!qword_1ECF3A858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A848, &qword_1E42D84C8);
    sub_1E32752B0(&qword_1ECF3A860, &qword_1ECF3A850, &qword_1E42D84D0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A858);
  }

  return result;
}

void *sub_1E3E7CE18(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 8);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || &a4[v14 + 4] <= v16 + 4)
    {
      v19 = OUTLINED_FUNCTION_39_0();
      memmove(v19, v20, v21);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    OUTLINED_FUNCTION_39_0();
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_1E3E7CF40(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E4200F34(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E4200F34();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_1E3E7D014(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3E7D31C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1E3E7D068()
{
  result = qword_1ECF3A880;
  if (!qword_1ECF3A880)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A878, &unk_1E42D84E8);
    v6 = sub_1E37ADF68(v1, v2, v3);
    sub_1E3E787E0(v6, v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A880);
  }

  return result;
}

unint64_t sub_1E3E7D0F4()
{
  result = qword_1ECF3A888;
  if (!qword_1ECF3A888)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A868, &qword_1E42D84D8);
    sub_1E32752B0(&qword_1EE289DD0, &qword_1ECF2AAA0, &qword_1E429EAE0, MEMORY[0x1E697DDD0]);
    sub_1E32752B0(&qword_1ECF3A890, &qword_1ECF3A898, &qword_1E42D84F8, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A888);
  }

  return result;
}

uint64_t sub_1E3E7D1D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FittedTextView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3E7D23C(uint64_t a1)
{
  v2 = type metadata accessor for FittedTextView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E3E7D298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF663B0;
  if (!qword_1ECF663B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF663B0);
  }

  return result;
}

void *sub_1E3E7D31C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A8F0, &unk_1E42D8550);
  v10 = *(sub_1E4200F34() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1E4200F34() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1E3E7CF40(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_1E3E7D4D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF663B8[0];
  if (!qword_1ECF663B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF663B8);
  }

  return result;
}

void sub_1E3E7D524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v6 = a1;
  v35 = *(a3 + 16);
  if (v35 >= v3)
  {
    v7 = a2 - a1;
  }

  else
  {
    v7 = *(a3 + 16);
  }

  if (v7)
  {
    if (v7 <= 0)
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A980, &qword_1E42D8618);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v8[2] = v7;
      v8[3] = 2 * ((v9 - 32) / 16);
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v10 = v8[3];

  if (v3 < 0)
  {
    goto LABEL_60;
  }

  v11 = v8 + 4;
  v12 = v10 >> 1;
  if (v7)
  {
    if (a2 < v6)
    {
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v13 = (a3 + 32);
    v12 -= v7;
    v14 = v7;
    v15 = v6;
    v16 = v35;
    v33 = v15;
    while (a2 != v15)
    {
      if (!v16)
      {
        goto LABEL_51;
      }

      v17 = *v13++;
      v18 = v15 + 1;
      *v11 = v15;
      v11[1] = v17;
      v11 += 2;

      --v16;
      v15 = v18;
      if (!--v14)
      {
        v6 = v33;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v18 = v6;
LABEL_20:
  v34 = a3 + 32;
  for (i = v18; a2 != i; ++i)
  {
    if (a2 < v6)
    {
      goto LABEL_52;
    }

    if (v18 < v6)
    {
      goto LABEL_53;
    }

    if (i >= a2)
    {
      goto LABEL_54;
    }

    if (v35 == v7)
    {
      break;
    }

    if (v7 >= v35)
    {
      goto LABEL_55;
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_56;
    }

    v20 = *(v34 + 8 * v7);
    if (v12)
    {

      v21 = v8;
    }

    else
    {
      v22 = v8[3];
      if (((v22 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_58;
      }

      v23 = v22 & 0xFFFFFFFFFFFFFFFELL;
      if (v23 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A980, &qword_1E42D8618);
      v21 = swift_allocObject();
      v25 = (_swift_stdlib_malloc_size(v21) - 32) / 16;
      v21[2] = v24;
      v21[3] = 2 * v25;
      v26 = v21 + 4;
      v27 = v8[3] >> 1;
      v11 = &v21[2 * v27 + 4];
      v12 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;
      if (v8[2])
      {
        if (v21 != v8 || v26 >= &v8[2 * v27 + 4])
        {
          memmove(v26, v8 + 4, 16 * v27);
        }

        v8[2] = 0;
      }

      else
      {
      }
    }

    v29 = __OFSUB__(v12--, 1);
    if (v29)
    {
      goto LABEL_57;
    }

    *v11 = i;
    v11[1] = v20;
    v11 += 2;
    ++v7;
    v8 = v21;
  }

  v30 = v8[3];
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v29 = __OFSUB__(v31, v12);
    v32 = v31 - v12;
    if (v29)
    {
LABEL_62:
      __break(1u);
      return;
    }

    v8[2] = v32;
  }
}

uint64_t sub_1E3E7D828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  if (*(*(v4 + 16) + 16) >= 2uLL && a1 == 0)
  {
    v10 = sub_1E4201B74();
  }

  else
  {
    v10 = sub_1E4201B64();
  }

  v11 = v10;
  v12 = *(a2 + 16);
  v13 = 32;
  do
  {
    v14 = v12;
    if (!v12)
    {
      break;
    }

    v15 = *(a2 + v13);
    v16 = v15 >> 62 ? sub_1E4207384() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 += 8;
    v12 = v14 - 1;
  }

  while (v16 < 2);
  v17 = v14 == 0;
  v18 = sub_1E3E77878();
  *a3 = v11;
  *(a3 + 8) = v18;
  *(a3 + 16) = v19 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A918, &unk_1E42D8590);
  v27 = a2;
  swift_getKeyPath();
  v20 = swift_allocObject();
  memcpy(v20 + 2, (v5 + 24), 0x58uLL);
  v20[13] = a1;
  v20[14] = v11;

  sub_1E3E77840(v5 + 24, v26);
  v21 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A928, &unk_1E42D85C0);
  OUTLINED_FUNCTION_14_11();
  sub_1E32752B0(v23, &qword_1ECF3A920, &qword_1E42D85B8, v24);
  sub_1E3E7DA34();
  sub_1E3E7DB30();
  sub_1E4203B34();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A7F8, &qword_1E42D8108);
  *(a3 + *(result + 36)) = v17;
  return result;
}

unint64_t sub_1E3E7DA34()
{
  result = qword_1ECF3A938;
  if (!qword_1ECF3A938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C790, &qword_1E42996A0);
    sub_1E3E7DAE8(qword_1EE23BA70, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A938);
  }

  return result;
}

uint64_t sub_1E3E7DAE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3E7DB30()
{
  result = qword_1ECF3A940;
  if (!qword_1ECF3A940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A928, &unk_1E42D85C0);
    sub_1E3E7DBBC();
    sub_1E3E7DC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A940);
  }

  return result;
}

unint64_t sub_1E3E7DBBC()
{
  result = qword_1ECF3A948;
  if (!qword_1ECF3A948)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A950, &qword_1E42D85D0);
    sub_1E3E7DC40(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A948);
  }

  return result;
}

unint64_t sub_1E3E7DC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF663D0;
  if (!qword_1ECF663D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF663D0);
  }

  return result;
}

unint64_t sub_1E3E7DC94()
{
  result = qword_1ECF3A958;
  if (!qword_1ECF3A958)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A960, &qword_1E42D85D8);
    sub_1E32752B0(&qword_1ECF3A968, &qword_1ECF3A970, &qword_1E42D85E0, MEMORY[0x1E697DDD0]);
    sub_1E3E7DBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A958);
  }

  return result;
}

uint64_t sub_1E3E7DD5C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 104);
  v7 = *a1;
  v8 = OUTLINED_FUNCTION_124();
  v10 = sub_1E3E77990(v8, v9);
  v12 = v11;
  OUTLINED_FUNCTION_8();
  (*(v13 + 152))(v21);
  v14 = v21[0];
  v15 = v22 & 1;
  if (v22)
  {
    v14 = 0;
  }

  v16 = *(v3 + 72);
  v17 = *(v3 + 32);
  v18 = *(*(v3 + 40) + 16) - 1 == v6;
  v20 = *(v3 + 80);
  *a3 = v7;
  *(a3 + 8) = 0;
  *(a3 + 16) = v10;
  *(a3 + 24) = v12;
  *(a3 + 32) = 0;
  *(a3 + 40) = a2;
  *(a3 + 41) = v17;
  *(a3 + 48) = v16;
  *(a3 + 56) = v20;
  *(a3 + 64) = v14;
  *(a3 + 72) = v15;
  *(a3 + 73) = v18;
}

uint64_t sub_1E3E7DE60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A990, &qword_1E42D8628) + 44);
  v9 = sub_1E4201B64();
  v10 = *(a2 + 16);
  v11 = 32;
  do
  {
    v12 = v10;
    if (!v10)
    {
      break;
    }

    v13 = *(a2 + v11);
    v14 = v13 >> 62 ? sub_1E4207384() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 += 8;
    v10 = v12 - 1;
  }

  while (v14 < 2);
  v15 = v12 == 0;
  v16 = a3 + v8;
  v17 = sub_1E3E77878();
  *v16 = v9;
  *(v16 + 8) = v17;
  *(v16 + 16) = v18 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A918, &unk_1E42D8590);
  v26 = a2;
  swift_getKeyPath();
  v19 = swift_allocObject();
  memcpy(v19 + 2, (v4 + 16), 0x58uLL);
  v19[13] = a1;
  v19[14] = v9;

  sub_1E3E77840(v4 + 16, v25);
  v20 = OUTLINED_FUNCTION_27_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A928, &unk_1E42D85C0);
  OUTLINED_FUNCTION_14_11();
  sub_1E32752B0(v22, &qword_1ECF3A920, &qword_1E42D85B8, v23);
  sub_1E3E7DA34();
  sub_1E3E7DB30();
  sub_1E4203B34();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3A7F8, &qword_1E42D8108);
  *(v16 + *(result + 36)) = v15;
  return result;
}

uint64_t objectdestroyTm_46()
{

  OUTLINED_FUNCTION_16_0();

  return swift_deallocObject();
}

uint64_t sub_1E3E7E118(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return OUTLINED_FUNCTION_17_7(*a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3E7E134(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E3E7E18C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[34])
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *a1;
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

_BYTE *sub_1E3E7E1D4(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 2) = 0;
    *(result + 3) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 1) = 0;
    if (a3 >= 0xFF)
    {
      result[34] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      result[34] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_13_147(result, a2);
    }
  }

  return result;
}

_BYTE *sub_1E3E7E220(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_13_147(result, a2);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3E7E2E4()
{
  result = qword_1ECF3A9A8;
  if (!qword_1ECF3A9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A9B0, &qword_1E42D8710);
    sub_1E3E7CD00();
    sub_1E32752B0(&qword_1ECF3A860, &qword_1ECF3A850, &qword_1E42D84D0, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A9A8);
  }

  return result;
}

unint64_t sub_1E3E7E39C()
{
  result = qword_1ECF3A9B8;
  if (!qword_1ECF3A9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3A9C0, qword_1E42D8718);
    sub_1E3E7D068();
    sub_1E3E7D0F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3A9B8);
  }

  return result;
}

unint64_t sub_1E3E7E42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF663E0[0];
  if (!qword_1ECF663E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF663E0);
  }

  return result;
}

unint64_t sub_1E3E7E484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF665F0[0];
  if (!qword_1ECF665F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF665F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_68_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21)
{
  *(a1 + 16) = a21;
  *(a1 + 32) = v21;
}

uint64_t OUTLINED_FUNCTION_86_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1E4203B34();
}

uint64_t sub_1E3E7E630()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = xmmword_1E42D88B0;
  *(v0 + 144) = xmmword_1E42D88C0;
  *(v0 + 160) = 0x4000000000000000;
  v1 = sub_1E3C2F9A0();

  sub_1E3E7E690();
  sub_1E3E7EBE8();

  return v1;
}

uint64_t sub_1E3E7E690()
{
  v1 = v0;
  (*(*v0 + 1752))();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 1808))(1);

  OUTLINED_FUNCTION_9_2();
  (*(v3 + 1184))(0x4014000000000000, 0);
  OUTLINED_FUNCTION_9_2();
  v5 = *(v4 + 1776);
  v5();
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 2056))(2, 0);

  v8 = (v5)(v7);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v8 + 680);
  v11 = v9;
  v10(v9);

  (v5)(v12);
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 1696))(1);

  (v5)(v14);
  OUTLINED_FUNCTION_2_1();
  (*(v15 + 1984))(1);

  (v5)(v16);
  v17 = objc_opt_self();
  v18 = [v17 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v19 + 680))();

  OUTLINED_FUNCTION_9_2();
  v21 = *(v20 + 1800);
  v21();
  OUTLINED_FUNCTION_2_1();
  (*(v22 + 2056))(2, 0);

  v24 = (v21)(v23);
  v25 = *sub_1E3E5FDEC();
  v26 = *(*v24 + 680);
  v27 = v25;
  v26(v25);

  (v21)(v28);
  OUTLINED_FUNCTION_2_1();
  (*(v29 + 1696))(22);

  (v21)(v30);
  OUTLINED_FUNCTION_2_1();
  (*(v31 + 1984))(1);

  (v21)(v32);
  v33 = [v17 whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v34 + 680))();

  v35 = [v17 blackColor];
  OUTLINED_FUNCTION_9_2();
  (*(v36 + 752))();
  sub_1E3952C94();
  v42[0] = v37;
  v42[1] = v38;
  v42[2] = v39;
  v42[3] = v40;
  v43 = 0;
  return (*(*v1 + 184))(v42);
}

double sub_1E3E7EBE8()
{
  v1 = (*(*v0 + 1752))();
  sub_1E3C37CBC(v1, 39);

  OUTLINED_FUNCTION_36();
  v3 = (*(v2 + 1776))();
  sub_1E3C37CBC(v3, 23);

  OUTLINED_FUNCTION_36();
  v5 = (*(v4 + 1800))();
  sub_1E3C37CBC(v5, 15);

  return result;
}

uint64_t sub_1E3E7ECE0()
{
  v0 = sub_1E37DB800();

  return MEMORY[0x1EEE6BDC0](v0, 168, 7);
}

void sub_1E3E7ED34(char a1, double a2, double a3)
{
  v4 = v3;
  v70.receiver = v4;
  v70.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v70, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a1)
  {
    return;
  }

  v8 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts;
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientLayouts], v69);
  v9 = *&v4[v8];
  v10 = sub_1E32AE9B0(v9);
  if (!v10)
  {
    goto LABEL_24;
  }

  v11 = v10;
  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  v12 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_gradientViews;
  v13 = v9 & 0xC000000000000001;

  v14 = 0;
  v67 = v11;
  do
  {
    if (v13)
    {
      v15 = MEMORY[0x1E6911E60](v14, v9);
    }

    else
    {
      v15 = *(v9 + 8 * v14 + 32);
    }

    swift_beginAccess();
    v16 = *&v4[v12];
    if (!*(v16 + 16) || (v17 = sub_1E39E6224(v15 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id), (v18 & 1) == 0))
    {
      swift_endAccess();

      goto LABEL_21;
    }

    v19 = v13;
    v20 = *(*(v16 + 56) + 8 * v17);
    swift_endAccess();
    v21 = *(*v15 + 504);
    v22 = v20;

    v24 = (v21)(v23);
    if (v24 != 18)
    {
      v68[0] = v24;
      sub_1E39E67F4(v24, v25, v26);
      if (sub_1E4205E84())
      {
        v27 = (*(*v15 + 304))();
        if ((v28 & 1) == 0)
        {
          v38 = *&v27;

          v39 = v38;
          v40 = v22;
          [v4 bounds];
          v42 = v41 - v39;
          [v4 bounds];
          [v40 setFrame_];
          v13 = v19;
          goto LABEL_20;
        }
      }
    }

    v29 = v21();
    if (v29 == 18 || (v68[0] = v29, sub_1E39E67F4(v29, v30, v31), (sub_1E4205E84() & 1) == 0))
    {

      v13 = v19;
LABEL_19:
      v35 = v22;
      [v4 bounds];
      [v35 setFrame_];
      goto LABEL_20;
    }

    (*(*v15 + 304))();
    v33 = v32;

    v13 = v19;
    if (v33)
    {
      goto LABEL_19;
    }

    v34 = v22;
    [v4 bounds];
    [v34 setFrame_];
LABEL_20:
    v11 = v67;

    sub_1E396030C(v15);

LABEL_21:
    ++v14;
  }

  while (v11 != v14);

LABEL_24:
  v43 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_imageView;
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_imageView], v68);
  v44 = *&v4[v43];
  if (v44)
  {
    [v44 setFrame_];
  }

  v45 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayout;
  v46 = *&v4[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayout];
  if (v46)
  {
    v47 = *(*v46 + 504);

    v49 = v47(v48);
    if (v49 == 18 || (sub_1E39E67F4(v49, v50, v51), (sub_1E4205E84() & 1) == 0) || ((*(*v46 + 304))(), (v52 & 1) != 0))
    {

      goto LABEL_31;
    }

    [v4 bounds];
    CGRectGetHeight(v71);
    [v4 bounds];
    CGRectGetWidth(v72);
  }

  else
  {
LABEL_31:
    [v4 bounds];
  }

  v53 = OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView;
  v54 = *&v4[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_backgroundBlurView];
  if (v54)
  {
    OUTLINED_FUNCTION_11_147(v54, sel_setFrame_);
  }

  v55 = *&v4[v45];
  if (v55 && (v56 = *(*v55 + 1888), v57 = , v58 = v56(v57), , v58))
  {

    v59 = *&v4[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayer];
    if (v59)
    {
      v60 = *&v4[v53];
      v61 = v59;
      if (v60)
      {
        [v60 bounds];
      }

      else
      {
        v62 = 0.0;
        v63 = 0.0;
        v64 = 0.0;
        v65 = 0.0;
      }

      sub_1E3D54B34(v62, v63, v64, v65);
    }
  }

  else
  {
    v66 = *&v4[OBJC_IVAR____TtC8VideosUI27MediaShowcasingGradientView_maskLayer];
    if (v66)
    {
      OUTLINED_FUNCTION_11_147(v66, sel_setFrame_);
    }
  }
}

double sub_1E3E7F3A0(uint64_t a1)
{
  OUTLINED_FUNCTION_5_0(a1 + 104, v7);

  v3 = sub_1E39E4ACC(v2);
  sub_1E3E7F41C(v3);

  OUTLINED_FUNCTION_5_0(a1 + 128, &v6);

  sub_1E3E80074(v4);

  return result;
}