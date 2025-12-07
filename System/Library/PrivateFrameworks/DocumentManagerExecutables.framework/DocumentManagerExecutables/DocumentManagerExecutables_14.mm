Swift::Void __swiftcall DOCItemCollectionViewController.updateScrollWidth()()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  v3 = MEMORY[0x277D85000];
  if (v2 == 1)
  {
    v4 = 0.0;
    goto LABEL_16;
  }

  v5 = *((*MEMORY[0x277D85000] & *v0) + 0xB08);
  v6 = v5();
  swift_beginAccess();
  v7 = *(v6 + 88);

  v8 = *(v7 + 16);
  if (v8)
  {
    if (v8 > 3)
    {
      v9 = v8 & 0x7FFFFFFFFFFFFFFCLL;
      v13 = (v7 + 48);
      v10 = 0.0;
      v14 = v8 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        v10 = v10 + *(v13 - 2) + *(v13 - 1) + *v13 + v13[1];
        v13 += 4;
        v14 -= 4;
      }

      while (v14);
      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0.0;
    }

    v15 = v8 - v9;
    v16 = (v7 + 8 * v9 + 32);
    do
    {
      v17 = *v16++;
      v10 = v10 + v17;
      --v15;
    }

    while (v15);
LABEL_12:

    v12 = v10 + 24.0 + 20.0;
    goto LABEL_13;
  }

  v12 = 44.0;
LABEL_13:
  v18 = (v5)(v11);
  swift_beginAccess();
  v19 = *(v18 + 104);

  v20 = *(v19 + 16);

  v21 = [v0 view];
  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = v21;
  v23 = v12 + v20 * 4.0 + 20.0;
  [v21 bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v44.origin.x = v25;
  v44.origin.y = v27;
  v44.size.width = v29;
  v44.size.height = v31;
  Width = CGRectGetWidth(v44);
  v33 = *((*v3 & *v0) + 0x1010);
  v34 = v33();
  [v34 safeAreaInsets];
  v36 = v35;

  v37 = Width - v36;
  v38 = v33();
  [v38 safeAreaInsets];
  v40 = v39;

  v4 = v37 - v40;
  if (v23 > v4)
  {
    v4 = v23;
  }

LABEL_16:
  v41 = (*((*v3 & *v0) + 0xB08))();
  swift_beginAccess();
  *(v41 + 168) = v4;

  v42 = [v0 view];
  if (v42)
  {
    v43 = v42;
    [v42 setNeedsLayout];

    DOCItemCollectionViewController.resetButtons()();
    return;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

Swift::Void __swiftcall DOCItemCollectionViewController.resetButtons()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x1010);
  v3 = v2();
  [v3 setClipsToBounds_];

  v4 = (*((*v1 & *v0) + 0xB20))();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v6 = [v0 view];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;

  v10 = [v5 contentOffset];
  v12 = v11;
  v13 = (v2)(v10);
  [v13 safeAreaInsets];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = DOCItemCollectionViewController.rowViews()();
  v23 = v22;
  if (v22 >> 62)
  {
    v24 = __CocoaSet.count.getter();
    if (v24)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
LABEL_5:
      v33 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24 & ~(v24 >> 63), 0);
      if ((v24 & 0x8000000000000000) == 0)
      {
        v25 = 0;
        v26 = v33;
        do
        {
          if ((v23 & 0xC000000000000001) != 0)
          {
            v27 = MEMORY[0x24C1FC540](v25, v23);
          }

          else
          {
            v27 = *(v23 + 8 * v25 + 32);
          }

          v28 = v27;
          v32[0] = v9;
          v32[1] = v12;
          v32[2] = v15;
          v32[3] = v17;
          v32[4] = v19;
          v32[5] = v21;
          (*((*v1 & *v27) + 0x2B8))(v32);

          v33 = v26;
          v30 = *(v26 + 16);
          v29 = *(v26 + 24);
          v31 = v30 + 1;
          if (v30 >= v29 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
            v26 = v33;
          }

          ++v25;
          *(v26 + 16) = v31;
        }

        while (v24 != v25);

        return;
      }

      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }
  }
}

void DOCItemCollectionViewController.changeScrollWidth(_:)(double a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xB08))();
  swift_beginAccess();
  *(v3 + 168) = a1;

  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 setNeedsLayout];

    DOCItemCollectionViewController.resetButtons()();
  }

  else
  {
    __break(1u);
  }
}

void DOCItemCollectionViewController.beginDraggingColumn(at:)(double a1)
{
  v3 = v1;
  if (one-time initialization token for OutlineView != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.OutlineView);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_2493AC000, v6, v7, "begin column drag", v8, 2u);
    MEMORY[0x24C1FE850](v8, -1, -1);
  }

  DOCItemCollectionViewController.location(for:)(a1);
  if (v10 || v9 < 1)
  {
    return;
  }

  v132 = v9;
  v11 = MEMORY[0x277D85000];
  v134 = *((*MEMORY[0x277D85000] & *v3) + 0xB08);
  v12 = v134();
  swift_beginAccess();
  v13 = *(v12 + 16);

  [v13 removeFromSuperview];

  v14 = v134();
  swift_beginAccess();
  v15 = *(v14 + 24);
  v135 = v3;
  if (v15)
  {

    if (v15 >> 62)
    {
      v16 = __CocoaSet.count.getter();
      v17 = v132;
      if (v16)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v132;
      if (v16)
      {
LABEL_10:
        v136 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16 & ~(v16 >> 63), 0);
        if (v16 < 0)
        {
          goto LABEL_92;
        }

        for (i = 0; i != v16; ++i)
        {
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x24C1FC540](i, v15);
          }

          else
          {
            v19 = *(v15 + 8 * i + 32);
          }

          v20 = v19;
          v21 = (v134)([v19 removeFromSuperlayer]);
          swift_beginAccess();
          v22 = *(v21 + 16);

          v139[1] = 0;
          v139[2] = 0;
          v139[0] = 0x3FF0000000000000;
          v140 = 0x3FF0000000000000;
          v141 = 0;
          v142 = 0;
          [v22 setTransform_];

          v24 = *(v136 + 16);
          v23 = *(v136 + 24);
          v25 = v24 + 1;
          if (v24 >= v23 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
          }

          *(v136 + 16) = v25;
          v3 = v135;
        }

        v17 = v132;
        goto LABEL_22;
      }
    }

LABEL_22:
    v11 = MEMORY[0x277D85000];
    goto LABEL_23;
  }

  v17 = v132;
LABEL_23:
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v17;
    _os_log_impl(&dword_2493AC000, v26, v27, "start index %ld", v28, 0xCu);
    v29 = v28;
    v11 = MEMORY[0x277D85000];
    MEMORY[0x24C1FE850](v29, -1, -1);
  }

  v30 = DOCItemCollectionViewController.rowViews()();
  if (v30 >> 62)
  {
    goto LABEL_51;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v32 = MEMORY[0x277D84F90];
    v133 = v30;
    if (v31)
    {
      v33 = v30;
      v137 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      if (v31 < 0)
      {
        goto LABEL_90;
      }

      v34 = 0;
      v35 = v33;
      v36 = v33 & 0xC000000000000001;
      do
      {
        if (v36)
        {
          v37 = MEMORY[0x24C1FC540](v34);
        }

        else
        {
          v37 = *(v35 + 8 * v34 + 32);
        }

        v38 = v37;
        ++v34;
        (*((*v11 & *v37) + 0x420))(v139, v17);
        v39 = v140;
        v40 = v141;
        __swift_project_boxed_opaque_existential_1(v139, v140);
        v41 = (*(v40 + 8))(v39, v40);
        v42 = [v41 layer];

        __swift_destroy_boxed_opaque_existential_0(v139);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v30 = specialized ContiguousArray._endMutation()();
        v3 = v135;
        v35 = v133;
      }

      while (v31 != v34);
      v17 = v137;
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
    }

    v139[0] = v32;
    if (v17 >> 62)
    {
      break;
    }

    v43 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v43)
    {
      goto LABEL_53;
    }

LABEL_38:
    v44 = 0;
    v11 = (v17 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x24C1FC540](v44, v17);
      }

      else
      {
        if (v44 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v30 = *(v17 + 8 * v44 + 32);
      }

      v45 = v30;
      v46 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        break;
      }

      v47 = [objc_allocWithZone(MEMORY[0x277CD9F30]) init];
      [v47 setSourceLayer_];
      [v47 setHidesSourceLayer_];
      v48 = v47;
      LODWORD(v49) = 1063675494;
      [v48 setOpacity_];
      [v45 frame];
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v57 = v56;
      v58 = [v3 view];
      if (!v58)
      {
        goto LABEL_93;
      }

      v59 = v58;
      v60 = [v58 layer];

      [v45 convertRect:v60 toLayer:{v51, v53, v55, v57}];
      v62 = v61;
      v2 = v63;
      v65 = v64;

      [v48 setFrame_];
      MEMORY[0x24C1FB090]();
      if (*((v139[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v139[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v30 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      ++v44;
      v3 = v135;
      if (v46 == v43)
      {
        v66 = v139[0];
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v67 = v30;
    v31 = __CocoaSet.count.getter();
    v30 = v67;
  }

  v30 = __CocoaSet.count.getter();
  v43 = v30;
  if (v30)
  {
    goto LABEL_38;
  }

LABEL_53:
  v66 = MEMORY[0x277D84F90];
LABEL_54:
  v138 = v66;

  v69 = specialized Sequence.compactMap<A>(_:)(v68, &v138);

  v70 = swift_bridgeObjectRelease_n();
  v71 = (v134)(v70);
  if (v69 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for CALayer, 0x277CD9ED0);

    v72 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for CALayer, 0x277CD9ED0);
    v72 = v69;
  }

  swift_beginAccess();
  *(v71 + 24) = v72;

  v73 = [v3 view];
  if (!v73)
  {
    goto LABEL_94;
  }

  v74 = v73;
  v75 = objc_opt_self();
  v76 = [v74 semanticContentAttribute];

  v77 = [v75 userInterfaceLayoutDirectionForSemanticContentAttribute_];
  v78 = v134();
  swift_beginAccess();
  v79 = *(v78 + 88);

  if (*(v79 + 16))
  {
    v81 = 0;
    v2 = 0.0;
    while (1)
    {
      v82 = *(v79 + 8 * v81 + 32);

      v2 = v2 + v82 + 4.0;
      if (v132 - (v77 != 1) == v81)
      {
        break;
      }

      ++v81;
      v83 = (v134)(v80);
      swift_beginAccess();
      v79 = *(v83 + 88);

      if (v81 >= *(v79 + 16))
      {
        goto LABEL_61;
      }
    }
  }

  else
  {
LABEL_61:
    __break(1u);
  }

  v84 = (v134)(v80);
  v85 = v2;
  if (v77 == 1)
  {
    v86 = [v3 view];
    if (!v86)
    {
      goto LABEL_96;
    }

    v87 = v86;
    [v86 bounds];
    v89 = v88;

    v85 = v89 - v2;
    v3 = v135;
  }

  swift_beginAccess();
  *(v84 + 72) = v85;

  v90 = Logger.logObject.getter();
  v91 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v90, v91))
  {
    v92 = swift_slowAlloc();
    *v92 = 134217984;
    *(v92 + 4) = v2;
    _os_log_impl(&dword_2493AC000, v90, v91, "offset %f", v92, 0xCu);
    v93 = v92;
    v3 = v135;
    MEMORY[0x24C1FE850](v93, -1, -1);
  }

  v94 = [v3 view];
  v95 = v94;
  if (v77 == 1)
  {
    if (!v94)
    {
      goto LABEL_98;
    }
  }

  else if (!v94)
  {
    goto LABEL_97;
  }

  [v94 safeAreaInsets];

  v96 = v134();
  swift_beginAccess();
  v97 = *(v96 + 16);

  v98 = [v3 view];
  if (v98)
  {
    v99 = v98;

    v101 = (v134)(v100);
    swift_beginAccess();
    v102 = *(v101 + 88);

    if (v132 >= *(v102 + 16))
    {
      __break(1u);
LABEL_90:
      __break(1u);
    }

    else
    {

      v104 = (*((*MEMORY[0x277D85000] & *v3) + 0x1010))(v103);
      [v104 frame];
      v106 = v105;
      v108 = v107;
      v110 = v109;
      v112 = v111;

      v143.origin.x = v106;
      v143.origin.y = v108;
      v143.size.width = v110;
      v143.size.height = v112;
      CGRectGetHeight(v143);
      CGRectMake();
      v114 = v113;
      v116 = v115;
      v118 = v117;
      v120 = v119;
      if ([v75 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
      {
        v144.origin.x = v114;
        v144.origin.y = v116;
        v144.size.width = v118;
        v144.size.height = v120;
        MinX = CGRectGetMinX(v144);
        [v99 bounds];
        v122 = MinX - CGRectGetMinX(v145);
        [v99 bounds];
        MaxX = CGRectGetMaxX(v146);
        v147.origin.x = v114;
        v147.origin.y = v116;
        v147.size.width = v118;
        v147.size.height = v120;
        Width = CGRectGetWidth(v147);

        v114 = MaxX - (v122 + Width);
      }

      else
      {
      }

      [v97 setFrame_];

      if (v69 >> 62)
      {
        v125 = __CocoaSet.count.getter();
        if (!v125)
        {
LABEL_86:
          swift_bridgeObjectRelease_n();
          return;
        }
      }

      else
      {
        v125 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v125)
        {
          goto LABEL_86;
        }
      }

      if (v125 >= 1)
      {
        v126 = 0;
        do
        {
          if ((v69 & 0xC000000000000001) != 0)
          {
            v127 = MEMORY[0x24C1FC540](v126, v69);
          }

          else
          {
            v127 = *(v69 + 8 * v126 + 32);
          }

          v128 = v127;
          ++v126;
          v129 = v134();
          swift_beginAccess();
          v130 = *(v129 + 16);

          v131 = [v130 layer];

          [v131 addSublayer_];
        }

        while (v125 != v126);
        goto LABEL_86;
      }
    }

    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
}

void DOCItemCollectionViewController.beginDraggingDivider(at:)(double a1)
{
  v2 = v1;
  if (one-time initialization token for OutlineView != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.OutlineView);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2493AC000, v5, v6, "dragging divider", v7, 2u);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  DOCItemCollectionViewController.location(for:)(a1);
  if (v9 == 1)
  {
    v10 = v8;
    v11 = *((*MEMORY[0x277D85000] & *v2) + 0xB08);
    v12 = v11();
    v13 = v11();
    swift_beginAccess();
    v14 = *(v13 + 88);

    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *(v14 + 16))
    {
      v15 = *(v14 + 8 * v10 + 32);

      swift_beginAccess();
      *(v12 + 48) = v15;

      v17 = (v11)(v16);
      swift_beginAccess();
      v18 = *(v17 + 88);

      v19 = *(v18 + 16);

      if (v19 > v10)
      {
        return;
      }

      v21 = v10 + 1;
      v22 = (v11)(v20);
      v23 = v11();
      swift_beginAccess();
      v24 = *(v23 + 88);

      if (v21 < *(v24 + 16))
      {
        v25 = *(v24 + 8 * v21 + 32);

        swift_beginAccess();
        *(v22 + 56) = v25;

        return;
      }

LABEL_14:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_14;
  }
}

void DOCItemCollectionViewController.dragColumn(at:)(double a1)
{
  v2 = v1;
  if (one-time initialization token for OutlineView != -1)
  {
LABEL_76:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.OutlineView);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2493AC000, v5, v6, "dragging column", v7, 2u);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v8 = *((*MEMORY[0x277D85000] & *v2) + 0xB08);
  v9 = v8();
  swift_beginAccess();
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);

  v119 = v10;
  if (v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = v10 < 1;
  }

  if (!v13)
  {
    v14 = (v8)(v12);
    swift_beginAccess();
    v15 = *(v14 + 16);

    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v22 = [v2 view];
    if (!v22)
    {
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

    v23 = v22;
    v24 = objc_opt_self();
    v25 = [v23 semanticContentAttribute];

    v26 = [v24 userInterfaceLayoutDirectionForSemanticContentAttribute_];
    v27 = [v2 view];
    v28 = v27;
    if (v26 == 1)
    {
      if (!v27)
      {
LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      [v27 safeAreaInsets];
      v30 = v29;

      v31 = -v30;
    }

    else
    {
      if (!v27)
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      [v27 safeAreaInsets];
      v31 = v32;
    }

    v33 = v8();
    swift_beginAccess();
    v34 = *(v33 + 72);

    v36 = v31 + v34 + -10.0;
    v37 = (v8)(v35);
    swift_beginAccess();
    v38 = *(v37 + 64);

    v40 = a1 - v38;
    v41 = *((*MEMORY[0x277D85000] & *v2) + 0x1010);
    v42 = v41(v39);
    [v42 contentOffset];
    v44 = v43;

    v45 = v8();
    swift_beginAccess();
    v46 = *(v45 + 16);

    [v46 setFrame_];

    v47 = MEMORY[0x24C1FA8C0](0.15, 0.85, 0.25);
    v48 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    MEMORY[0x28223BE20](v48, v49);
    static UIView.animate(_:changes:completion:)();
    DOCItemCollectionViewController.location(for:)(a1);
    if (v51 || v119 == v50 || !v50)
    {
LABEL_72:

      return;
    }

    v120 = v50;
    v117 = v47;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134218240;
      *(v54 + 4) = v119;
      *(v54 + 12) = 2048;
      *(v54 + 14) = v120;
      _os_log_impl(&dword_2493AC000, v52, v53, "swapping indexes %ld %ld", v54, 0x16u);
      MEMORY[0x24C1FE850](v54, -1, -1);
    }

    v56 = (v8)(v55);
    v118 = v8;
    (v8)(v56);
    swift_beginAccess();

    OutlineColumnData.withSwappedColumns(at:and:)(v119, v120, &v124);

    v57 = v124;
    swift_beginAccess();
    *(v56 + 80) = v57;
    *(v56 + 88) = v125;
    *(v56 + 104) = v126;

    v59 = v41(v58);
    v60 = [v59 visibleCells];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
    v61 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v124 = MEMORY[0x277D84F90];
    if (v61 >> 62)
    {
      v62 = __CocoaSet.count.getter();
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v63 = MEMORY[0x277D84F90];
    if (v62)
    {
      v64 = 0;
      do
      {
        v65 = v64;
        while (1)
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v66 = MEMORY[0x24C1FC540](v65, v61);
          }

          else
          {
            if (v65 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_75;
            }

            v66 = *(v61 + 8 * v65 + 32);
          }

          v67 = v66;
          v64 = v65 + 1;
          if (__OFADD__(v65, 1))
          {
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          type metadata accessor for DOCItemCollectionOutlineCell();
          if (swift_dynamicCastClass())
          {
            break;
          }

          ++v65;
          if (v64 == v62)
          {
            goto LABEL_35;
          }
        }

        MEMORY[0x24C1FB090]();
        if (*((v124 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v124 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v63 = v124;
      }

      while (v64 != v62);
    }

LABEL_35:

    if (v63 >> 62)
    {
      v68 = __CocoaSet.count.getter();
      v69 = v119;
      if (v68)
      {
LABEL_37:
        v121 = MEMORY[0x277D84F90];
        specialized ContiguousArray.reserveCapacity(_:)();
        if (v68 < 0)
        {
          __break(1u);
          goto LABEL_83;
        }

        v70 = 0;
        do
        {
          if ((v63 & 0xC000000000000001) != 0)
          {
            v71 = MEMORY[0x24C1FC540](v70, v63);
          }

          else
          {
            v71 = *(v63 + 8 * v70 + 32);
          }

          v72 = v71;
          ++v70;
          v73 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionOutlineCell_rowView;
          swift_beginAccess();
          v74 = *&v72[v73];

          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        while (v68 != v70);

        v75 = v121;
        v69 = v119;
        if (!(v121 >> 62))
        {
LABEL_44:
          v76 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v76)
          {
            goto LABEL_45;
          }

          goto LABEL_54;
        }

LABEL_80:
        v76 = __CocoaSet.count.getter();
        if (v76)
        {
LABEL_45:
          v122 = MEMORY[0x277D84F90];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76 & ~(v76 >> 63), 0);
          if ((v76 & 0x8000000000000000) == 0)
          {
            for (i = 0; i != v76; ++i)
            {
              if ((v75 & 0xC000000000000001) != 0)
              {
                v78 = MEMORY[0x24C1FC540](i, v75);
              }

              else
              {
                v78 = *(v75 + 8 * i + 32);
              }

              v79 = v78;
              (*((*MEMORY[0x277D85000] & *v78) + 0x430))(v69, v120);

              v81 = *(v122 + 16);
              v80 = *(v122 + 24);
              v82 = v81 + 1;
              if (v81 >= v80 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1);
              }

              *(v122 + 16) = v82;
            }

            goto LABEL_54;
          }

LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

LABEL_54:
        v83 = DOCItemCollectionViewController.headerRowView()();
        if (!v83)
        {
LABEL_88:
          __break(1u);
          return;
        }

        v84 = v83;
        (*((*MEMORY[0x277D85000] & *v83) + 0x430))(v69, v120);

        if (!v76)
        {

LABEL_69:
          v99 = (v118)(v91);
          swift_beginAccess();
          *(v99 + 32) = v120;
          *(v99 + 40) = 0;

          v101 = (*((*MEMORY[0x277D85000] & *v2) + 0xFC8))(v100);
          v102 = v118();
          swift_beginAccess();
          v103 = *(v102 + 80);
          v104 = *(v102 + 88);
          v105 = *(v102 + 96);
          v106 = *(v102 + 104);
          v107 = *(v102 + 112);

          v108 = &v101[OBJC_IVAR____TtC26DocumentManagerExecutables36DOCCollectionViewCompositionalLayout_columnData];
          swift_beginAccess();
          v109 = *v108;
          v110 = v108[1];
          v111 = v108[2];
          v112 = v108[3];
          v113 = v108[4];
          *v108 = v103;
          v108[1] = v104;
          v108[2] = v105;
          v108[3] = v106;
          v108[4] = v107;
          outlined consume of OutlineColumnData?(v109, v110, v111, v112, v113);

          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            *v116 = 134217984;
            *(v116 + 4) = v119;
            _os_log_impl(&dword_2493AC000, v114, v115, "best index %ld", v116, 0xCu);
            MEMORY[0x24C1FE850](v116, -1, -1);
          }

          goto LABEL_72;
        }

        v123 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76 & ~(v76 >> 63), 0);
        if ((v76 & 0x8000000000000000) == 0)
        {
          if ((v75 & 0xC000000000000001) != 0)
          {
            for (j = 0; j != v76; ++j)
            {
              MEMORY[0x24C1FC540](j, v75);
              v86 = MEMORY[0x24C1FA8C0](0.5, 0.85, 0.0);
              MEMORY[0x28223BE20](v86, v87);
              static UIView.animate(_:changes:completion:)();
              swift_unknownObjectRelease();

              v89 = *(v123 + 16);
              v88 = *(v123 + 24);
              v90 = v89 + 1;
              if (v89 >= v88 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v88 > 1), v89 + 1, 1);
              }

              *(v123 + 16) = v90;
            }
          }

          else
          {
            v92 = 32;
            do
            {
              v93 = *(v75 + v92);
              v94 = MEMORY[0x24C1FA8C0](0.5, 0.85, 0.0);
              MEMORY[0x28223BE20](v94, v95);
              static UIView.animate(_:changes:completion:)();

              v97 = *(v123 + 16);
              v96 = *(v123 + 24);
              v98 = v97 + 1;
              if (v97 >= v96 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1);
              }

              *(v123 + 16) = v98;
              v92 += 8;
              --v76;
            }

            while (v76);
          }

          goto LABEL_69;
        }

        goto LABEL_84;
      }
    }

    else
    {
      v68 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v69 = v119;
      if (v68)
      {
        goto LABEL_37;
      }
    }

    v75 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_44;
    }

    goto LABEL_80;
  }
}

void closure #1 in DOCItemCollectionViewController.dragColumn(at:)(void *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x1010))();
  v4 = [v3 superview];

  if (v4)
  {
    v5 = (*((*v2 & *a1) + 0xB08))();
    swift_beginAccess();
    v6 = *(v5 + 16);

    [v4 addSubview_];
  }

  v7 = (*((*v2 & *a1) + 0xB08))();
  swift_beginAccess();
  v8 = *(v7 + 16);

  v9 = *(MEMORY[0x277CBF2C0] + 16);
  *&v11.a = *MEMORY[0x277CBF2C0];
  *&v11.c = v9;
  *&v11.tx = *(MEMORY[0x277CBF2C0] + 32);
  CGAffineTransformScale(&v10, &v11, 1.02, 1.02);
  v11 = v10;
  [v8 setTransform_];
}

void DOCItemCollectionViewController.location(for:)(double a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249B9A480;
  *(v4 + 32) = 0;
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0xB08);
  v6 = v5();
  swift_beginAccess();
  v7 = *(v6 + 88);

  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = 0.0;
    do
    {
      v11 = v9 + 1;
      v12 = *(v7 + 32 + 8 * v9);
      v13 = *(v4 + 24);
      if (v9 + 1 >= v13 >> 1)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v9 + 2, 1, v4);
      }

      v10 = v10 + v12 + 4.0;
      *(v4 + 16) = v9 + 2;
      *(v4 + 8 * v9++ + 40) = v10;
    }

    while (v8 != v11);
  }

  if (one-time initialization token for OutlineView != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.OutlineView);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v55[0] = v18;
      *v17 = 136315138;

      v20 = MEMORY[0x24C1FB0D0](v19, MEMORY[0x277D839F8]);
      v22 = v21;

      v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v55);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_2493AC000, v15, v16, "distance ranges %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x24C1FE850](v18, -1, -1);
      MEMORY[0x24C1FE850](v17, -1, -1);
    }

    v24 = [v2 view];
    if (!v24)
    {
      break;
    }

    v25 = v24;
    v26 = objc_opt_self();
    v27 = [v25 semanticContentAttribute];

    if ([v26 userInterfaceLayoutDirectionForSemanticContentAttribute_] == 1)
    {
      v28 = v5();
      swift_beginAccess();
      v29 = *(v28 + 168);

      v30 = [v2 view];
      if (!v30)
      {
        goto LABEL_33;
      }

      v31 = v30;
      [v30 bounds];
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v39 = v38;

      v56.origin.x = v33;
      v56.origin.y = v35;
      v56.size.width = v37;
      v56.size.height = v39;
      Width = CGRectGetWidth(v56);
      v41 = *((*MEMORY[0x277D85000] & *v2) + 0x1010);
      v42 = v41();
      [v42 safeAreaInsets];
      v44 = v43;

      v45 = Width - v44;
      v46 = v41();
      [v46 safeAreaInsets];
      v48 = v47;

      v49 = v45 - v48;
      if (v29 > v45 - v48)
      {
        v49 = v29;
      }

      a1 = v49 - a1 + -24.0;
    }

    v50 = *(v4 + 16);
    if (v50 < 2)
    {
      __break(1u);
      break;
    }

    v51 = 0;
    v52 = (v4 + 40);
    while (v50 != v51)
    {
      if ((*v52 + -20.0 >= a1 || a1 >= *v52 + 20.0) && (*(v52 - 1) >= a1 || a1 >= *v52))
      {
        ++v51;
        ++v52;
        if (v50 - 1 != v51)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_30:
    swift_once();
  }

  __break(1u);
LABEL_33:
  __break(1u);
}

void closure #1 in closure #5 in DOCItemCollectionViewController.dragColumn(at:)(void *a1, void *a2)
{
  v3 = *((*MEMORY[0x277D85000] & *a2) + 0xB08);
  v4 = v3();
  swift_beginAccess();
  v5 = *(v4 + 80);
  v6 = *(v4 + 88);
  v7 = *(v4 + 96);
  v8 = *(v4 + 104);
  v9 = *(v4 + 112);

  v22[0] = v5;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v10 = MEMORY[0x277D85000];
  v26 = v9;
  (*((*MEMORY[0x277D85000] & *a1) + 0x3D0))(v22);

  v11 = DOCItemCollectionViewController.headerRowView()();
  if (v11)
  {
    v12 = v11;
    v13 = v3();
    swift_beginAccess();
    v14 = *(v13 + 80);
    v15 = v10;
    v16 = *(v13 + 88);
    v17 = *(v13 + 96);
    v18 = *(v13 + 104);
    v19 = *(v13 + 112);

    v22[0] = v14;
    v23 = v16;
    v24 = v17;
    v10 = v15;
    v25 = v18;
    v26 = v19;
    (*((*v15 & *v12) + 0x3D0))(v22);
  }

  (*((*v10 & *a1) + 0x3E8))(v11);
  v20 = DOCItemCollectionViewController.headerRowView()();
  if (v20)
  {
    v21 = v20;
    (*((*v10 & *v20) + 0x3E8))();
  }
}

void DOCItemCollectionViewController.dragDivider(at:)(double a1)
{
  v2 = v1;
  if (one-time initialization token for OutlineView != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.OutlineView);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2493AC000, v5, v6, "divider", v7, 2u);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v8 = *((*MEMORY[0x277D85000] & *v2) + 0xB08);
  v9 = v8();
  swift_beginAccess();
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);

  if (v11 == 1)
  {
    v12 = [v2 view];
    if (v12)
    {
      v13 = v12;
      v14 = objc_opt_self();
      v15 = [v13 semanticContentAttribute];

      v16 = [v14 userInterfaceLayoutDirectionForSemanticContentAttribute_];
      v17 = v8();
      swift_beginAccess();
      v18 = *(v17 + 64);

      if (v16 == 1)
      {
        v20 = -(a1 - v18);
      }

      else
      {
        v20 = a1 - v18;
      }

      v21 = (v8)(v19);
      swift_beginAccess();
      v22 = *(v21 + 48);

      v23 = v20 + v22;
      if (v20 <= 0.0)
      {
        DOCItemCollectionViewController.minimumSize(for:proposedWidth:useMax:)(v10, 0, v23);
        v25 = v24 < v23;
      }

      else
      {
        DOCItemCollectionViewController.maximumSize(for:proposedWidth:)(v10, v23);
        v25 = v23 < v24;
      }

      if (v25)
      {
        v24 = v23;
      }

      if (v24 > 80.0)
      {
        v26 = v24;
      }

      else
      {
        v26 = 80.0;
      }

      v27 = v8();
      v8();
      swift_beginAccess();

      OutlineColumnData.withUpdatedSizeAt(_:size:)(v10, v31, v26);

      v28 = v31[0];
      swift_beginAccess();
      *(v27 + 80) = v28;
      *(v27 + 88) = v32;
      *(v27 + 104) = v33;

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
      v29 = MEMORY[0x24C1FA8C0](0.02, 1.0, 0.0);
      MEMORY[0x28223BE20](v29, v30);
      static UIView.animate(_:changes:completion:)();
    }

    else
    {
      __break(1u);
    }
  }
}

void DOCItemCollectionViewController.maximumSize(for:proposedWidth:)(unint64_t a1, double a2)
{
  v5 = MEMORY[0x277D85000];
  v6 = (*((*MEMORY[0x277D85000] & *v2) + 0xB08))();
  swift_beginAccess();
  v7 = *(v6 + 104);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (*(v7 + 16) <= a1)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v8 = v7 + 16 * a1;
  v9 = *(v8 + 32);
  v10 = *(v8 + 40);
  outlined copy of ColumnType(v9, v10);

  v11 = outlined consume of ColumnType(v9, v10);
  if (v10 - 1 > 3)
  {
    if (a1)
    {
      v12 = (*((*v5 & *v2) + 0x1010))(v11);
      [v12 frame];
    }
  }

  else
  {
    DOCItemCollectionViewController.minimumSize(for:proposedWidth:useMax:)(a1, 1uLL, a2);
  }
}

void closure #1 in DOCItemCollectionViewController.dragDivider(at:)(void *a1, uint64_t a2)
{
  v4 = DOCItemCollectionViewController.headerRowView()();
  v5 = MEMORY[0x277D85000];
  if (v4)
  {
    v6 = v4;
    v7 = [objc_opt_self() systemBlueColor];
    v8 = Color.init(uiColor:)();
    (*((*v5 & *v6) + 0x410))(a2, v8);
  }

  v9 = (*((*v5 & *a1) + 0xFC8))(v4);
  v10 = (*((*v5 & *a1) + 0xB08))();
  swift_beginAccess();
  v11 = *(v10 + 80);
  v12 = *(v10 + 88);
  v13 = *(v10 + 96);
  v14 = *(v10 + 104);
  v15 = *(v10 + 112);

  LOBYTE(v16[0]) = v11;
  v16[1] = v12;
  v16[2] = v13;
  v16[3] = v14;
  v16[4] = v15;
  DOCCollectionViewCompositionalLayout.setOutlineColumnData(_:)(v16);

  DOCItemCollectionViewController.updateScrollWidth()();
}

Swift::Void __swiftcall DOCItemCollectionViewController.finishedDragging()()
{
  v1 = v0;
  if (one-time initialization token for OutlineView != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.OutlineView);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2493AC000, v3, v4, " cleanup", v5, 2u);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v6 = MEMORY[0x277D85000];
  v7 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v8 = v7();
  [v8 setDragDelegate_];

  v9 = *((*v6 & *v1) + 0xB08);
  v10 = v9();
  swift_beginAccess();
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);

  if (v12 == 1)
  {
    v13 = DOCItemCollectionViewController.headerRowView()();
    if (v13)
    {
      v14 = v13;
      (*((*v6 & *v13) + 0x410))(v11, 0);
    }
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v15 = MEMORY[0x24C1FA8C0](0.5, 1.0, 0.0);
  MEMORY[0x28223BE20](v15, v16);
  static UIView.animate(_:changes:completion:)();

  v18 = (v9)(v17);
  swift_beginAccess();
  v19 = *(v18 + 200);
  swift_unknownObjectRetain();

  if (v19)
  {
    v21 = (v7)(v20);
    [v21 addInteraction_];

    v22 = v9();
    swift_unknownObjectRelease();
    swift_beginAccess();
    *(v22 + 200) = 0;

    swift_unknownObjectRelease();
  }
}

void closure #1 in DOCItemCollectionViewController.finishedDragging()(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0xB08);
  v2 = v1();
  swift_beginAccess();
  v3 = *(v2 + 16);

  [v3 removeFromSuperview];

  v16 = v1;
  v4 = v1();
  swift_beginAccess();
  v5 = *(v4 + 24);
  if (!v5)
  {

    return;
  }

  if (v5 >> 62)
  {
    v6 = __CocoaSet.count.getter();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_13:

    return;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v6)
  {
    goto LABEL_13;
  }

LABEL_4:
  v18 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v8 = v18;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v7, v5);
      }

      else
      {
        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = (v16)([v9 removeFromSuperlayer]);
      swift_beginAccess();
      v12 = *(v11 + 16);

      v17[1] = 0;
      v17[2] = 0;
      v17[0] = 0x3FF0000000000000;
      v17[3] = 0x3FF0000000000000;
      v17[4] = 0;
      v17[5] = 0;
      [v12 setTransform_];

      v18 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v8 = v18;
      }

      ++v7;
      *(v8 + 16) = v15;
    }

    while (v6 != v7);

    goto LABEL_13;
  }

  __break(1u);
}

double DOCItemCollectionViewController.resize(at:)(double a1)
{
  DOCItemCollectionViewController.location(for:)(a1);
  if (!v2)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    v3 = MEMORY[0x24C1FA8C0](0.5, 1.0, 0.0);
    MEMORY[0x28223BE20](v3, v4);
    static UIView.animate(_:changes:completion:)();
  }

  return result;
}

void closure #1 in DOCItemCollectionViewController.resize(at:)(void *a1, unint64_t a2)
{
  DOCItemCollectionViewController.resize(_:forceLayout:)(a2, 0, 1);
  v3 = (*((*MEMORY[0x277D85000] & *a1) + 0x1010))();
  [v3 layoutIfNeeded];
}

void DOCItemCollectionViewController.sort(at:)(double a1)
{
  v2 = v1;
  DOCItemCollectionViewController.location(for:)(a1);
  if (v4)
  {
    return;
  }

  v5 = v3;
  v6 = MEMORY[0x277D85000];
  v7 = (*((*MEMORY[0x277D85000] & *v1) + 0xB08))();
  swift_beginAccess();
  v8 = *(v7 + 104);

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v5 >= *(v8 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8 + 16 * v5;
  v11 = *(v9 + 32);
  v10 = *(v9 + 40);
  outlined copy of ColumnType(v11, v10);

  if (v10 >= 9)
  {
    v12 = outlined consume of ColumnType(v11, v10);
    v13 = 2;
  }

  else
  {
    v13 = byte_249BA24CC[v10];
  }

  v14 = *((*v6 & *v2) + 0x1160);
  v14(&v37, v12);
  v15 = v37;
  v16 = v38;
  outlined consume of DOCItemSortDescriptor?(v37, v38, *(&v38 + 1));
  if (v16 && v15 != 10 && (specialized == infix<A>(_:_:)(v15, v13) & 1) != 0)
  {
    (v14)(&v37);
    v17 = v38;
    if (v38)
    {
      v18 = *(&v38 + 1);
      v19 = v37;
      LOBYTE(v31) = v37;
      DOCItemSortDescriptor.init(type:isReversed:)(&v31, (v39 & 1) == 0, &v34);
      outlined consume of DOCItemSortDescriptor?(v19, v17, v18);
      v31 = v34;
      v33 = v36;
      v20 = *v6 & *v2;
      v32 = v35;
      v21 = (*(v20 + 4456))(&v31);
      goto LABEL_13;
    }

LABEL_20:
    __break(1u);
    return;
  }

  LOBYTE(v34) = v13;
  DOCItemSortDescriptor.init(type:isReversed:)(&v34, 0, &v37);
  v34 = v37;
  v36 = v39;
  v22 = *v6 & *v2;
  v35 = v38;
  v21 = (*(v22 + 4456))(&v34);
LABEL_13:
  v23 = (v14)(&v37, v21);
  v24 = v38;
  if (v38)
  {
    v25 = v37;
    v26 = *(&v38 + 1);
    v27 = v39;
    if ((*((*v6 & *v2) + 0x100))(v23))
    {
      v29 = v28;
      ObjectType = swift_getObjectType();
      LOBYTE(v37) = v25;
      *&v38 = v24;
      *(&v38 + 1) = v26;
      v39 = v27 & 1;
      (*(v29 + 8))(&v37, ObjectType, v29);
      swift_unknownObjectRelease();
    }

    outlined consume of DOCItemSortDescriptor?(v25, v24, v26);
    specialized DOCItemCollectionViewController.updateOverlay(animated:)();
  }
}

uint64_t DOCItemCollectionViewController.headerSupplementaryViews()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1010))();
  v2 = MEMORY[0x24C1FAD20](0xD000000000000021, 0x8000000249BCE120);
  v3 = [v1 visibleSupplementaryViewsOfKind_];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionReusableView, 0x277D75298);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = MEMORY[0x277D84F90];
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_20:
    v7 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_20;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  do
  {
    v8 = v6;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, v4);
      }

      else
      {
        if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v6 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for DOCOutlineHeaderView();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x24C1FB090]();
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v7 = v12;
  }

  while (v6 != v5);
LABEL_21:

  return v7;
}

void DOCItemCollectionViewController.prepareDragging(for:)(double a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x1010);
  v5 = v4();
  [v5 setDragDelegate_];

  DOCItemCollectionViewController.location(for:)(a1);
  v7 = v6;
  v9 = v8;
  v10 = *((*v3 & *v1) + 0xB08);
  v11 = v10();
  swift_beginAccess();
  *(v11 + 64) = a1;

  v13 = (v10)(v12);
  swift_beginAccess();
  *(v13 + 32) = v7;
  *(v13 + 40) = v9;

  v15 = (v4)(v14);
  v16 = [v15 interactions];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIInteraction_pMd, &_sSo13UIInteraction_pMR);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = v4;
  if (v17 >> 62)
  {
LABEL_15:
    v18 = __CocoaSet.count.getter();
    if (v18)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
LABEL_3:
      v19 = 0;
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x24C1FC540](v19, v17);
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            v23 = (v10)(v22);
            swift_beginAccess();
            *(v23 + 200) = v20;
            swift_unknownObjectRetain();

            v24 = swift_unknownObjectRelease();
            v25 = (v26)(v24);
            [v25 removeInteraction_];
            swift_unknownObjectRelease();

            return;
          }
        }

        else
        {
          if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v20 = *(v17 + 8 * v19 + 32);
          swift_unknownObjectRetain();
          v21 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBandSelectionInteraction, 0x277D751D0);
        if ([v20 isKindOfClass_])
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
        ++v19;
      }

      while (v21 != v18);
    }
  }
}

void DOCItemCollectionViewController.isDateColumn(for:)(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xB08))();
  swift_beginAccess();
  v6 = *(v5 + 104);

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(v6 + 16) <= a1)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v7 = v6 + 16 * a1;
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  outlined copy of ColumnType(v8, v9);

  if (v9 - 1 >= 4)
  {
    outlined consume of ColumnType(v8, v9);
    v8 = 0;
    v9 = 9;
  }

  *a2 = v8;
  a2[1] = v9;
}

void closure #1 in DOCItemCollectionViewController.minimumSize(for:proposedWidth:useMax:)(uint64_t a1, unint64_t a2)
{
  v3 = DOCItemCollectionViewController.headerRowView()();
  if (v3)
  {
    v4 = v3;
    v5 = (*((*MEMORY[0x277D85000] & *v3) + 0x1A8))();

    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(v5 + 16) > a2)
    {
      outlined init with copy of DOCSidebarItemIconProvider(v5 + 40 * a2 + 32, v8);

      outlined init with take of DOCGoToFolderCandidate(v8, v9);
      v6 = v10;
      v7 = v11;
      __swift_project_boxed_opaque_existential_1(v9, v10);
      DOCGridLayout.specIconWidth.modify();
      (*(v7 + 16))(v6, v7);
      __swift_destroy_boxed_opaque_existential_0(v9);
      return;
    }

    __break(1u);
  }
}

double protocol witness for DOCOutlineHeaderViewDelegate.resize(at:) in conformance DOCItemCollectionViewController(double a1)
{
  DOCItemCollectionViewController.location(for:)(a1);
  if (!v2)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    v3 = MEMORY[0x24C1FA8C0](0.5, 1.0, 0.0);
    MEMORY[0x28223BE20](v3, v4);
    static UIView.animate(_:changes:completion:)();
  }

  return result;
}

uint64_t outlined destroy of (offset: Int, element: ViewSizable)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_26DocumentManagerExecutables11ViewSizable_p7elementtMd, &_sSi6offset_26DocumentManagerExecutables11ViewSizable_p7elementtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double outlined consume of DOCItemSortDescriptor?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t DOCDocumentSourceIdentifierIsICloud(void *a1)
{
  v1 = a1;
  if ([v1 hasPrefix:*MEMORY[0x277D060C8]] & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", *MEMORY[0x277D060D0]) & 1) != 0 || (objc_msgSend(v1, "hasPrefix:", *MEMORY[0x277D060D8]))
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 hasPrefix:*MEMORY[0x277D060E0]];
  }

  return v2;
}

uint64_t outlined init with copy of Column(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Column(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Column(uint64_t a1)
{
  v2 = type metadata accessor for Column(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double outlined consume of OutlineColumnData?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DOCItemCollectionViewController.ColumnResizeConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DOCItemCollectionViewController.ColumnResizeConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

uint64_t getEnumTag for DOCItemCollectionViewController.ColumnResizeConfiguration(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for DOCItemCollectionViewController.ColumnResizeConfiguration(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

id one-time initialization function for highlightColor()
{
  result = [objc_opt_self() tintColor];
  static DOCTokenTextField.Specifications.TokenView.highlightColor = result;
  return result;
}

id DOCTokenChainView.DOCTextTokenView.updateAppearance()()
{
  if ([v0 isHighlighted])
  {
    if (one-time initialization token for highlightColor != -1)
    {
      swift_once();
    }

    v1 = static DOCTokenTextField.Specifications.TokenView.highlightColor;
  }

  else
  {
    v1 = [objc_opt_self() clearColor];
  }

  v2 = v1;
  [v0 setBackgroundColor_];

  v3 = [v0 layer];
  [v3 setCornerCurve_];

  v4 = [v0 layer];
  [v4 setMasksToBounds_];

  LODWORD(v4) = [v0 isHighlighted];
  v5 = objc_opt_self();
  v6 = &selRef_lightTextColor;
  if (!v4)
  {
    v6 = &selRef_labelColor;
  }

  v7 = [v5 *v6];
  [v0 setTextColor_];

  v8 = [objc_opt_self() whiteColor];
  [v0 setHighlightedTextColor_];

  return [v0 setNumberOfLines_];
}

id DOCTokenChainView.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_font] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_tokens] = MEMORY[0x277D84F90];
  v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_showTrailingChevron] = 1;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount] = 0;
  v14.receiver = v4;
  v14.super_class = type metadata accessor for DOCTokenChainView();
  v9 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
  [v9 setAlignment_];
  v10 = [v9 heightAnchor];
  v11 = [v10 constraintGreaterThanOrEqualToConstant_];

  [v11 setActive_];
  v12 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v9 action:sel_tap_];

  [v9 addGestureRecognizer_];
  return v9;
}

void DOCTokenChainView.becomeFirstResponder()(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v9 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount;
  v10 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount] = v12;
  closure #1 in DOCTokenChainView.becomeFirstResponder()(v2);
  v13 = *&v2[v9];
  v11 = __OFSUB__(v13, 1);
  v14 = v13 - 1;
  if (!v11)
  {
    *&v2[v9] = v14;
    DOCTokenChainView.rebuild()();
    v15 = type metadata accessor for DOCTokenChainView();
    v16.receiver = v2;
    v16.super_class = v15;
    objc_msgSendSuper2(&v16, sel_becomeFirstResponder);
    return;
  }

LABEL_7:
  __break(1u);
}

double closure #1 in DOCTokenChainView.becomeFirstResponder()(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v3 = Strong, v4 = [Strong text], v3, v4))
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    v9 = v8 != 0;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_showTrailingChevron) = v9;
  DOCTokenChainView.rebuild()();
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_tokens;
  swift_beginAccess();
  v12 = *(*(a1 + v10) + 16) != 0;
  v13 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection);
  *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection) = v12;
  if (v13 != v12)
  {
    return DOCTokenChainView.rebuild()();
  }

  return result;
}

void DOCTokenChainView.resignFirstResponder()(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DOCTokenChainView();
  v17.receiver = v1;
  v17.super_class = v8;
  objc_msgSendSuper2(&v17, sel_resignFirstResponder);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount;
  v11 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount] = v13;
  v14 = v2[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection];
  v2[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection] = 0;
  if (v14)
  {
    DOCTokenChainView.rebuild()();
  }

  v2[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_showTrailingChevron] = 1;
  DOCTokenChainView.rebuild()();
  v15 = *&v2[v10];
  v12 = __OFSUB__(v15, 1);
  v16 = v15 - 1;
  if (!v12)
  {
    *&v2[v10] = v16;
    DOCTokenChainView.rebuild()();
    return;
  }

LABEL_9:
  __break(1u);
}

double DOCTokenChainView.keyCommands.getter()
{
  [v0 effectiveUserInterfaceLayoutDirection];
  v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = MEMORY[0x24C1FAD20](v1);

  v3 = [objc_opt_self() keyCommandWithInput:v2 modifierFlags:0 action:sel_directionKeyCommand_];

  [v3 setWantsPriorityOverSystemBehavior_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *&result = 1;
  *(v4 + 16) = xmmword_249BA0290;
  *(v4 + 32) = v3;
  return result;
}

void DOCTokenChainView.selectAll(_:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection) = 2;
  if (v3 != 2)
  {
    DOCTokenChainView.rebuild()();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    outlined init with copy of Any?(a1, v16);
    if (v17)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITextField, 0x277D75BB8);
      if (swift_dynamicCast())
      {
        v6 = v15;
        if (static NSObject.== infix(_:_:)())
        {
        }

        else
        {
          outlined init with copy of Any?(a1, v16);
          v7 = v17;
          if (v17)
          {
            v8 = __swift_project_boxed_opaque_existential_1(v16, v17);
            v9 = *(v7 - 8);
            v10 = MEMORY[0x28223BE20](v8, v8);
            v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v9 + 16))(v12, v10);
            v13 = _bridgeAnythingToObjectiveC<A>(_:)();
            (*(v9 + 8))(v12, v7);
            __swift_destroy_boxed_opaque_existential_0(v16);
          }

          else
          {
            v13 = 0;
          }

          [v5 selectAll_];

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }

    else
    {

      outlined destroy of CharacterSet?(v16, &_sypSgMd, &_sypSgMR);
    }
  }
}

void DOCTokenChainView.insertText(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_tokens;
  swift_beginAccess();
  v7 = *(v2 + v6);
  if (!v7[2])
  {
    goto LABEL_5;
  }

  swift_beginAccess();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v8 = v7[2];
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_15:
    __break(1u);
    return;
  }

  v8 = v7[2];
  if (!v8)
  {
    goto LABEL_15;
  }

LABEL_4:
  v9 = v8 - 1;
  __swift_destroy_boxed_opaque_existential_0(&v7[5 * v8 - 1]);
  v7[2] = v9;
  *(v3 + v6) = v7;
  swift_endAccess();
  DOCTokenChainView.rebuild()();
LABEL_5:
  DOCTokenChainView.rebuild()();
  v10 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    v13 = *(v3 + v6);
    v14 = *(v11 + 8);

    v14(v3, v13, ObjectType, v11);

    swift_unknownObjectRelease();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong setText_];
  }

  v17 = swift_unknownObjectWeakLoadStrong();
  if (v17)
  {
    v18 = v17;
    [v17 becomeFirstResponder];
  }

  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0x24C1FAD20](a1, a2);
    [v20 insertText_];
  }
}

double DOCTokenChainView.rebuild()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit7UIShapeVSgMd, &_s5UIKit7UIShapeVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  *&v61 = &v57 - v4;
  v5 = type metadata accessor for UIHoverHighlightEffect();
  result = MEMORY[0x28223BE20](v5, v6);
  if (!*&v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount])
  {
    v58 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v59 = v7;
    v10 = [v0 arrangedSubviews];
    v57 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
    v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v11 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v13 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x24C1FC540](v13, v11);
        }

        else
        {
          if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v14 = *(v11 + 8 * v13 + 32);
        }

        v15 = v14;
        v16 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        [v0 removeArrangedSubview_];
        [v15 removeFromSuperview];

        ++v13;
        if (v16 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    v60 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection;
    if (v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection])
    {
      [v0 setHoverStyle_];
    }

    else
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIHoverStyle, 0x277D755A8);
      static UIHoverEffect<>.lift.getter();
      v17 = v61;
      static UIShape.capsule.getter();
      v18 = type metadata accessor for UIShape();
      (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
      v19 = UIHoverStyle.init<A>(effect:shape:)();
      [v1 setHoverStyle_];
    }

    v20 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_tokens;
    swift_beginAccess();
    v21 = *(v1 + v20);
    v22 = *(v21 + 16);
    v23 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_showTrailingChevron;
    v24 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_font;
    v58 = (v21 + 32);
    v59 = v21;

    for (j = 0; ; j = v29)
    {
      v28 = 0uLL;
      v29 = v22;
      v30 = 0uLL;
      v31 = 0uLL;
      if (j != v22)
      {
        if (j >= *(v59 + 16))
        {
          goto LABEL_46;
        }

        v29 = j + 1;
        *&v62 = j;
        outlined init with copy of DOCSidebarItemIconProvider(&v58[40 * j], &v62 + 8);
        v28 = v62;
        v30 = v63;
        v31 = v64;
      }

      v65[0] = v28;
      v65[1] = v30;
      v65[2] = v31;
      if (!v31)
      {

        v48 = [v1 arrangedSubviews];
        v1 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v1 >> 62)
        {
          goto LABEL_47;
        }

        v49 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v49)
        {
          goto LABEL_34;
        }

        goto LABEL_48;
      }

      v61 = v28;
      outlined init with take of DOCGoToFolderCandidate((v65 + 8), &v62);
      type metadata accessor for DOCTokenChainView.DOCTextTokenView();
      v32 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
      v33 = *(v1 + v24);
      v34 = v32;
      [v34 setFont_];
      v35 = *(&v63 + 1);
      v36 = v64;
      __swift_project_boxed_opaque_existential_1(&v62, *(&v63 + 1));
      v37 = (*(v36 + 8))(v35, v36);
      v38 = MEMORY[0x24C1FAD20](v37);

      [v34 setText_];

      v39 = [v34 widthAnchor];
      v40 = [v39 constraintLessThanOrEqualToConstant_];

      v41 = 1;
      [v40 setActive_];

      [v34 setAdjustsFontForContentSizeCategory_];
      [v34 setLineBreakMode_];

      if (*(v1 + v60))
      {
        if (*(v1 + v60) == 1)
        {
          v41 = v61 == *(*(v1 + v20) + 16) - 1;
        }

        [v34 setHighlighted_];
      }

      v42 = [v1 addArrangedSubview_];
      v44 = *(*(v1 + v20) + 16);
      v45 = (*(v1 + v23) & 1) == 0;
      v46 = __OFSUB__(v44, v45);
      v47 = v44 - v45;
      if (v46)
      {
        break;
      }

      if (v61 < v47)
      {
        DOCTokenChainView.newSeparatorTokenView()(v42, v43);
        v27 = v26;
        [v1 addArrangedSubview_];

        __swift_destroy_boxed_opaque_existential_0(&v62);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v62);
      }
    }

    __break(1u);
    while (1)
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      v49 = __CocoaSet.count.getter();
      if (!v49)
      {
        break;
      }

LABEL_34:
      v50 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x24C1FC540](v50, v1);
        }

        else
        {
          if (v50 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v51 = *(v1 + 8 * v50 + 32);
        }

        v52 = v51;
        v53 = v50 + 1;
        if (__OFADD__(v50, 1))
        {
          break;
        }

        type metadata accessor for DOCTokenChainView.DOCTextTokenView();
        v54 = swift_dynamicCastClass();
        if (v54)
        {
          LODWORD(v55) = 1148846080;
          v56 = v54;
          [v54 setContentHuggingPriority:0 forAxis:v55];
          [v56 sizeToFit];
        }

        ++v50;
        if (v53 == v49)
        {
          goto LABEL_48;
        }
      }
    }

LABEL_48:
  }

  return result;
}

void DOCTokenChainView.deleteSelectedTokens()(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_tokens;
  swift_beginAccess();
  if (!*(*(v1 + v8) + 16))
  {
    return;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount;
  v10 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount) = v12;
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection;
  if (!*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection))
  {
    goto LABEL_13;
  }

  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection) != 1)
  {
    *(v2 + v8) = MEMORY[0x277D84F90];

    goto LABEL_11;
  }

  swift_beginAccess();
  v9 = *(v2 + v8);
  if (!*(v9 + 16))
  {
    goto LABEL_22;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_23;
  }

  v13 = *(v9 + 16);
  if (v13)
  {
    while (1)
    {
      v14 = v13 - 1;
      __swift_destroy_boxed_opaque_existential_0((v9 + 40 * v13 - 8));
      *(v9 + 16) = v14;
      *(v2 + v8) = v9;
      swift_endAccess();
LABEL_11:
      v9 = v2;
      DOCTokenChainView.rebuild()();
      v15 = *(v7 + v2);
      *(v7 + v2) = 0;
      if (v15)
      {
        v9 = v2;
        DOCTokenChainView.rebuild()();
      }

LABEL_13:
      v16 = *(v2 + v3);
      v11 = __OFSUB__(v16, 1);
      v17 = v16 - 1;
      if (!v11)
      {
        break;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      v13 = *(v9 + 16);
      if (!v13)
      {
        goto LABEL_24;
      }
    }

    *(v2 + v3) = v17;
    DOCTokenChainView.rebuild()();
    v18 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v19 = *(v18 + 8);
      ObjectType = swift_getObjectType();
      v21 = *(v2 + v8);
      v22 = *(v19 + 8);

      v22(v2, v21, ObjectType, v19);

      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v24 = Strong;
      [Strong becomeFirstResponder];
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }
}

void DOCTokenChainView.newSeparatorTokenView()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DOCTokenChainView.DOCTextTokenView.Separator();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_font);
  v5 = v3;
  [v5 setFont_];
  v6 = [objc_opt_self() configurationWithScale_];
  v7 = MEMORY[0x24C1FAD20](0x2E6E6F7276656863, 0xEF64726177726F66);
  v8 = [objc_opt_self() systemImageNamed:v7 withConfiguration:v6];

  if (v8)
  {
    v9 = [objc_opt_self() textAttachmentWithImage_];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x277CCAB48);
    v10 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    [v5 setAttributedText_];
    v11 = [objc_opt_self() tertiaryLabelColor];
    [v5 setTextColor_];

    [v5 setAdjustsFontForContentSizeCategory_];
    v12 = &v5[OBJC_IVAR____TtCC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView16DOCTextTokenView_padding];
    *v12 = xmmword_249BA24F0;
    *(v12 + 1) = xmmword_249BA24F0;
  }

  else
  {
    __break(1u);
  }
}

char *DOCTrailingVisibilityContainerView.init(containedView:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052034DOCTrailingVisibilityContainerView_widthConstraints] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052034DOCTrailingVisibilityContainerView_containedView] = a1;
  v28.receiver = v1;
  v28.super_class = type metadata accessor for DOCTrailingVisibilityContainerView();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v28, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v4 addSubview_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v3 leadingAnchor];
  v6 = [v4 leadingAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  LODWORD(v8) = 1132068864;
  [v7 setPriority_];
  v9 = [v4 widthAnchor];

  v10 = [v9 constraintLessThanOrEqualToConstant_];
  v11 = *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052034DOCTrailingVisibilityContainerView_widthConstraints];
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052034DOCTrailingVisibilityContainerView_widthConstraints] = v10;
  v12 = v10;

  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249BA0D00;
  v15 = [v3 topAnchor];
  v16 = [v4 topAnchor];

  v17 = [v15 constraintEqualToAnchor_];
  *(v14 + 32) = v17;
  v18 = [v3 bottomAnchor];
  v19 = [v4 bottomAnchor];

  v20 = [v18 constraintEqualToAnchor_];
  *(v14 + 40) = v20;
  v21 = [v3 trailingAnchor];
  v22 = [v4 trailingAnchor];

  v23 = [v21 constraintEqualToAnchor_];
  *(v14 + 48) = v23;
  *(v14 + 56) = v7;
  *(v14 + 64) = v12;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  v24 = v12;
  v25 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 activateConstraints_];

  return v4;
}

uint64_t DOCTokenTextField.dataSource.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField_dataSource;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCTokenTextField.dataSource.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField_dataSource;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

double DOCTokenTextField.padding.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0xA0))();

  return 8.0;
}

uint64_t DOCTokenTextField.isEmpty.getter()
{
  v1 = *((*((*MEMORY[0x277D85000] & *v0) + 0xA0))() + 16);

  if (v1)
  {
    return 0;
  }

  v3 = [v0 text];
  if (!v3)
  {
    return 1;
  }

  result = [v0 text];
  if (result)
  {
    v4 = result;
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = HIBYTE(v7) & 0xF;
    if ((v7 & 0x2000000000000000) == 0)
    {
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    return v8 == 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCTokenTextField.tokens.getter(uint64_t a1)
{
  v1 = DOCTokenTextField.tokenChainView.getter();
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_tokens;
  swift_beginAccess();
  v3 = *&v1[v2];

  return v3;
}

id DOCTokenTextField.tokens.setter(uint64_t a1)
{
  v2 = v1;
  v4 = DOCTokenTextField.tokenChainView.getter();
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_tokens;
  swift_beginAccess();
  *&v4[v5] = a1;

  DOCTokenChainView.rebuild()();

  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenChainView;
  [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenChainView) systemLayoutSizeFittingSize_];
  [*(v2 + v6) setFrame_];
  result = [v2 _placeholderLabel];
  if (result)
  {
    v10 = result;
    v11 = *((*MEMORY[0x277D85000] & *v2) + 0xA0);
    v12 = *(v11() + 16);

    [v10 setHidden_];

    v13 = *(v11() + 16);

    if (v13)
    {
      v14 = DOCTokenTextField.tokenContainerContainerView.getter();
      [v2 setLeftView_];
    }

    else
    {
      [v2 becomeFirstResponder];
      [v2 setLeftView_];
    }

    return [v2 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*DOCTokenTextField.tokens.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = DOCTokenTextField.tokenChainView.getter();
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_tokens;
  swift_beginAccess();
  v7 = *&v5[v6];

  *(v4 + 24) = v7;
  return DOCTokenTextField.tokens.modify;
}

void DOCTokenTextField.tokens.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {

    DOCTokenTextField.tokens.setter(v4);
  }

  else
  {
    DOCTokenTextField.tokens.setter(v3);
  }

  free(v2);
}

char *DOCTokenTextField.tokenChainView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenChainView;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenChainView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenChainView];
  }

  else
  {
    type metadata accessor for DOCTokenChainView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_delegate + 8] = &protocol witness table for DOCTokenTextField;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    v5 = [v0 font];
    v6 = v0;
    specialized DOCTokenChainView.font.setter(v5);

    [v4 setLayoutMargins_];
    [v4 setLayoutMarginsRelativeArrangement_];
    v7 = *&v0[v1];
    *&v6[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

char *DOCTokenTextField.tokenContainerContainerView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenContainerContainerView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenContainerContainerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenContainerContainerView);
  }

  else
  {
    v4 = v0;
    v5 = DOCTokenTextField.tokenChainView.getter();
    v6 = objc_allocWithZone(type metadata accessor for DOCTrailingVisibilityContainerView());
    v7 = DOCTrailingVisibilityContainerView.init(containedView:)(v5);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id DOCTokenTextField.suggestionLabel.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___suggestionLabel;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___suggestionLabel];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___suggestionLabel];
LABEL_5:
    v8 = v2;
    return v3;
  }

  v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v4 setAdjustsFontForContentSizeCategory_];
  result = [v0 _fieldEditor];
  if (result)
  {
    v6 = result;
    [result addSubview_];

    v7 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id DOCTokenTextField.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCTokenTextField.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField_dataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenChainView] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenContainerContainerView] = 0;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___suggestionLabel] = 0;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for DOCTokenTextField();
  v9 = objc_msgSendSuper2(&v11, sel_initWithFrame_, a1, a2, a3, a4);
  DOCTokenTextField.commonInit()();

  return v9;
}

id DOCTokenTextField.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCTokenTextField.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField_dataSource + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenChainView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenContainerContainerView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___suggestionLabel] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCTokenTextField();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

void DOCTokenTextField.commonInit()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v27 - v8;
  [v0 setDelegate_];
  v10 = DOCTokenTextField.tokenContainerContainerView.getter();
  [v0 setLeftView_];

  [v0 setLeftViewMode_];
  [v0 setClipsToBounds_];
  [v0 setAutocorrectionType_];
  [v0 addTarget:v0 action:sel_textDidChange_ forControlEvents:0x20000];
  v11 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
  [v0 setPlaceholder_];

  v12 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  v13 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];
  [v0 setFont_];

  LODWORD(v13) = _UISolariumEnabled();
  v14 = [objc_opt_self() tertiarySystemFillColor];
  [v0 setBackgroundColor_];

  if (v13)
  {
    v15 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
    outlined destroy of CharacterSet?(v4, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMR);
    v16 = type metadata accessor for _UICornerMaskingConfiguration();
    (*(*(v16 - 8) + 56))(v9, 0, 1, v16);
    UIView.cornerMaskingConfiguration.setter();
  }

  else
  {
    v17 = [v0 layer];
    [v17 setCornerCurve_];

    v18 = [v0 layer];
    [v18 setCornerRadius_];
  }

  [v0 setBorderStyle_];
  v19 = [v0 heightAnchor];
  v20 = [v19 constraintGreaterThanOrEqualToConstant_];

  [v20 setActive_];
  v21 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  v22 = *(v21() + 16);

  if (v22)
  {
    v23 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenContainerContainerView);
  }

  else
  {
    [v0 becomeFirstResponder];
    v23 = 0;
  }

  [v0 setLeftView_];
  [v0 setNeedsLayout];
  v24 = [v0 _placeholderLabel];
  if (v24)
  {
    v25 = v24;
    v26 = *(v21() + 16);

    [v25 setHidden_];
  }

  else
  {
    __break(1u);
  }
}

void DOCTokenTextField.selectAll(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v12);
  v2 = v13;
  if (v13)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v4 = *(v2 - 8);
    v5 = MEMORY[0x28223BE20](v3, v3);
    v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for DOCTokenTextField();
  v11.receiver = v1;
  v11.super_class = v9;
  objc_msgSendSuper2(&v11, sel_selectAll_, v8);
  swift_unknownObjectRelease();
  v10 = DOCTokenTextField.tokenChainView.getter();
  [v10 selectAll_];
}

uint64_t @objc DOCTokenChainView.selectAll(_:)(void *a1, uint64_t a2, uint64_t a3, void (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v7 = a1;
  }

  a4(v9);

  return outlined destroy of CharacterSet?(v9, &_sypSgMd, &_sypSgMR);
}

Class @objc DOCTokenChainView.keyCommands.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand, 0x277D75650);
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

uint64_t DOCTokenTextField.keyCommands.getter()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for DOCTokenTextField();
  v1 = objc_msgSendSuper2(&v9, sel_keyCommands);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIKeyCommand, 0x277D75650);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v10 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  v5 = MEMORY[0x277D76B48];
  *(inited + 16) = xmmword_249BA1010;
  v6 = *v5;
  v7 = objc_opt_self();
  *(inited + 32) = [v7 keyCommandWithInput:v6 modifierFlags:0 action:sel_directionKeyCommand];
  *(inited + 40) = [v7 keyCommandWithInput:*MEMORY[0x277D76B60] modifierFlags:0 action:sel_directionKeyCommand];
  specialized Array.append<A>(contentsOf:)(inited);
  return v10;
}

uint64_t DOCTokenTextField.canPerformAction(_:withSender:)(uint64_t a1, uint64_t a2)
{
  if (static Selector.== infix(_:_:)())
  {
    v5 = [v2 text];
    if (v5)
    {

      result = [v2 text];
      if (result)
      {
        v7 = result;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = v8 & 0xFFFFFFFFFFFFLL;
        }

        return v11 == 0;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    outlined init with copy of Any?(a2, v22);
    v12 = v23;
    if (v23)
    {
      v13 = __swift_project_boxed_opaque_existential_1(v22, v23);
      v14 = *(v12 - 8);
      v15 = MEMORY[0x28223BE20](v13, v13);
      v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v14 + 16))(v17, v15);
      v18 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v14 + 8))(v17, v12);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v18 = 0;
    }

    v19 = type metadata accessor for DOCTokenTextField();
    v21.receiver = v2;
    v21.super_class = v19;
    v20 = objc_msgSendSuper2(&v21, sel_canPerformAction_withSender_, a1, v18);
    swift_unknownObjectRelease();
    return v20;
  }

  return result;
}

void @objc DOCTokenTextField.textRect(forBounds:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v26.receiver = a1;
  v26.super_class = type metadata accessor for DOCTokenTextField();
  v12 = *a7;
  v13 = v26.receiver;
  v14 = objc_msgSendSuper2(&v26, v12, a2, a3, a4, a5);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = (*((*MEMORY[0x277D85000] & *v13) + 0x88))(v14);
  v25 = v24;

  UIEdgeInsetsInsetRect(v16, v18, v20, v22, v23, v25);
}

Swift::Void __swiftcall DOCTokenTextField.deleteBackward()()
{
  v1 = v0;
  v2 = [v0 selectedTextRange];
  if (v2)
  {

    v3 = [v0 selectedTextRange];
    if (!v3)
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v4 = v3;
    v5 = [v3 isEmpty];

    if (v5)
    {
      v6 = [v1 selectedTextRange];
      if (!v6)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v7 = v6;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
      v8 = [v7 start];

      v9 = [v1 beginningOfDocument];
      LOBYTE(v7) = static NSObject.== infix(_:_:)();

      if (v7)
      {
        v10 = *((*((*MEMORY[0x277D85000] & *v1) + 0xA0))() + 16);

        if (v10)
        {
          v11 = DOCTokenTextField.tokenChainView.getter();
          v12 = v11[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection];

          v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenChainView);
          if (v12 == 2)
          {
            v14 = v13;
            DOCTokenChainView.deleteSelectedTokens()(v15);
          }

          else
          {
            [v13 becomeFirstResponder];
          }
        }
      }
    }
  }

  v16 = DOCTokenTextField.tokenChainView.getter();
  v17 = v16[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection];

  if (v17 != 2)
  {
    goto LABEL_17;
  }

  v18 = [v1 selectedTextRange];
  if (!v18)
  {
    goto LABEL_17;
  }

  v19 = [v1 selectedTextRange];
  if (!v19)
  {
    goto LABEL_19;
  }

  v20 = v19;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  v21 = [v20 start];

  v22 = [v1 beginningOfDocument];
  v23 = static NSObject.== infix(_:_:)();

  if ((v23 & 1) == 0)
  {
LABEL_17:
    v31.receiver = v1;
    v31.super_class = type metadata accessor for DOCTokenTextField();
    objc_msgSendSuper2(&v31, sel_deleteBackward);
    return;
  }

  v24 = [v1 selectedTextRange];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 end];

    v27 = [v1 endOfDocument];
    v28 = static NSObject.== infix(_:_:)();

    if (v28)
    {
      v29 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___tokenChainView);
      DOCTokenChainView.deleteSelectedTokens()(v30);
    }

    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
}

void DOCTokenTextField.updateSuggestion()()
{
  v1 = v0;
  v2 = [v0 text];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    if ((*((*MEMORY[0x277D85000] & *v1) + 0x70))())
    {
      v8 = v7;
      ObjectType = swift_getObjectType();
      v10 = (*(v8 + 8))(v1, v4, v6, ObjectType, v8);
      v12 = v11;
      swift_unknownObjectRelease();
      if (v12)
      {
        String.lowercased()();
        v13 = String.lowercased()();
        v14 = String.hasPrefix(_:)(v13);

        if (v14)
        {

          String.count.getter();
          v15 = String.index(_:offsetBy:)();
          specialized Collection.suffix(from:)(v15, v10, v12);

          v16 = String.count.getter();
          v17 = specialized Collection.prefix(_:)(v16, v4, v6);
          v19 = v18;
          v21 = v20;
          v23 = v22;

          v24 = MEMORY[0x24C1FAE00](v17, v19, v21, v23);
          v26 = v25;

          lazy protocol witness table accessor for type Substring and conformance Substring();
          String.append<A>(contentsOf:)();
          v27 = MEMORY[0x24C1FC140](v24, v26);
          v28 = MEMORY[0x24C1FAE00](v27);
          v30 = v29;

          v31 = DOCTokenTextField.suggestionLabel.getter();
          [v1 bounds];
          [v1 textRectForBounds_];
          v33 = v32;
          v35 = v34;
          v37 = v36;
          v39 = v38;
          v40 = [v1 _fieldEditor];
          [v1 convertRect:v40 toView:{v33, v35, v37, v39}];
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          [v31 setFrame_];
          v49 = OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___suggestionLabel;
          [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables17DOCTokenTextField____lazy_storage___suggestionLabel) setHidden_];
          v50 = *(v1 + v49);
          v51 = MEMORY[0x24C1FAD20](v28, v30);
          [v50 setText_];

          v52 = *(v1 + v49);
          v53 = [v1 _placeholderLabel];
          if (v53)
          {
            v54 = v53;
            v55 = [v53 font];

            [v52 setFont_];
            v56 = *(v1 + v49);
            v57 = [v1 _placeholderLabel];
            if (v57)
            {
              v58 = v57;
              v59 = [v57 textColor];

              [v56 setTextColor_];
              v60 = *(v1 + v49);
              v61 = [v1 _placeholderLabel];
              if (v61)
              {
                v62 = v61;
                [v61 alpha];
                v64 = v63;

                [v60 setAlpha_];
                v65 = [v1 _placeholderLabel];
                if (v65)
                {
                  v66 = v65;

                  v67 = HIBYTE(v30) & 0xF;
                  if ((v30 & 0x2000000000000000) == 0)
                  {
                    v67 = v28 & 0xFFFFFFFFFFFFLL;
                  }

                  [v66 setHidden_];

                  return;
                }

LABEL_21:
                __break(1u);
                return;
              }

LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_20;
        }
      }
    }
  }

  v68 = DOCTokenTextField.suggestionLabel.getter();
  [v68 setHidden_];
}

void DOCTokenTextField.fieldEditorDidChangeSelection(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v15);
  v2 = v16;
  if (v16)
  {
    v3 = __swift_project_boxed_opaque_existential_1(v15, v16);
    v4 = *(v2 - 8);
    v5 = MEMORY[0x28223BE20](v3, v3);
    v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v4 + 16))(v7, v5);
    v8 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v4 + 8))(v7, v2);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    v8 = 0;
  }

  v9 = type metadata accessor for DOCTokenTextField();
  v14.receiver = v1;
  v14.super_class = v9;
  objc_msgSendSuper2(&v14, sel_fieldEditorDidChangeSelection_, v8);
  swift_unknownObjectRelease();
  v10 = [v1 selectedTextRange];
  if (v10)
  {
    v11 = v10;
    if ([v10 isEmpty])
    {
      v12 = DOCTokenTextField.tokenChainView.getter();
      v13 = v12[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection];
      v12[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection] = 0;
      if (v13)
      {
        DOCTokenChainView.rebuild()();
      }
    }
  }
}

id DOCTokenChainView.DOCTextTokenView.Separator.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double specialized DOCTokenChainView.font.setter(void *a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_font;
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_font];
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_font] = a1;
  v4 = a1;

  v5 = [v1 arrangedSubviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](v8, v6);
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      type metadata accessor for DOCTokenChainView.DOCTextTokenView();
      v12 = swift_dynamicCastClass();
      if (v12)
      {
        [v12 setFont_];
      }

      ++v8;
      if (v11 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:

  return result;
}

void specialized DOCTokenChainView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_font) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_tokens) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_showTrailingChevron) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_isCoalescingRebuildsCount) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id specialized DOCTokenTextField.tokenContainerView(_:didUpdateTokens:)()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xA0);
  v2 = *(v1() + 16);

  if (v2)
  {
    v3 = DOCTokenTextField.tokenContainerContainerView.getter();
    [v0 setLeftView_];
  }

  else
  {
    [v0 becomeFirstResponder];
    [v0 setLeftView_];
  }

  [v0 setNeedsLayout];
  result = [v0 _placeholderLabel];
  if (result)
  {
    v5 = result;
    v6 = *(v1() + 16);

    [v5 setHidden_];

    return [v0 sendActionsForControlEvents_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void specialized DOCTokenChainView.directionKeyCommand(_:)()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection) = 0;
  if (v1)
  {
    DOCTokenChainView.rebuild()();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong becomeFirstResponder];
  }
}

void specialized DOCTokenTextField.textDidChange(_:)()
{
  v1 = v0;
  v2 = [v0 text];
  if (v2)
  {
    v3 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9A480;
    v5 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v6 = v5;
    v7 = [v1 font];
    if (v7)
    {
      v8 = v7;
      *(inited + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
      *(inited + 40) = v8;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(inited + 32, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v3 sizeWithAttributes_];
      v11 = v10;

      v12 = [v1 frame];
      v14 = v13 - v11;
      v15 = MEMORY[0x277D85000];
      v16 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
      v17 = v16(v12);
      v19 = v14 - v18;
      v16(v17);
      v21 = v19 - v20;
      v22 = DOCTokenTextField.tokenContainerContainerView.getter();
      v23 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052034DOCTrailingVisibilityContainerView_widthConstraints];
      [v23 setConstant_];

      v24 = DOCTokenTextField.tokenChainView.getter();
      v25 = v24[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection];
      v24[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_77BCCC03C17F420893AB1D2ECB62052017DOCTokenChainView_selection] = 0;
      if (v25)
      {
        DOCTokenChainView.rebuild()();
      }

      v26 = [v1 _placeholderLabel];
      if (v26)
      {
        v27 = v26;
        v28 = *((*((*v15 & *v1) + 0xA0))() + 16);

        [v27 setHidden_];

        DOCTokenTextField.updateSuggestion()();
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

unint64_t lazy protocol witness table accessor for type DOCTokenChainView.Selection and conformance DOCTokenChainView.Selection()
{
  result = lazy protocol witness table cache variable for type DOCTokenChainView.Selection and conformance DOCTokenChainView.Selection;
  if (!lazy protocol witness table cache variable for type DOCTokenChainView.Selection and conformance DOCTokenChainView.Selection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCTokenChainView.Selection and conformance DOCTokenChainView.Selection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring()
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

void DOCInlineRenameOverlayView.itemCell.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*DOCInlineRenameOverlayView.itemCell.modify(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables26DOCInlineRenameOverlayView_itemCell;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameOverlayView.itemCell.modify;
}

void DOCInlineRenameOverlayView.itemCell.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

void __swiftcall DOCInlineRenameOverlayView.hitTest(_:with:)(UIView_optional *__return_ptr retstr, CGPoint _, UIEvent_optional with)
{
  v4 = v3;
  isa = with.value.super.isa;
  y = _.y;
  x = _.x;
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v3) + 0x58))(with.value.super.isa, *&with.is_nil);
  if (v9 && (v10 = v9, v11 = (*((*v8 & *v9) + 0x390))(), v10, v11))
  {
    v12 = DOCInlineRenameOverlayView.renameViewFrame(in:)(v4);
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = DOCItemRenameTextView.clearButton.getter();
    v20 = [v19 superview];

    if (v20)
    {

      v21 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton;
      [v4 convertPoint:*&v11[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView____lazy_storage___clearButton] toCoordinateSpace:{x, y}];
      v22 = [*&v11[v21] hitTest:isa withEvent:?];
      if (v22)
      {
        v23 = v22;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton, 0x277D75220);
        if ([v23 isKindOfClass_])
        {
LABEL_6:

          return;
        }
      }
    }

    [v4 convertPoint:v11 toCoordinateSpace:{x, y}];
    if ([v11 hitTest:isa withEvent:?])
    {
      goto LABEL_6;
    }

    v29.origin.x = v12;
    v29.origin.y = v14;
    v29.size.width = v16;
    v29.size.height = v18;
    v28.x = x;
    v28.y = y;
    v25 = CGRectContainsPoint(v29, v28);

    if (!v25)
    {
      v26 = v4;
    }
  }

  else
  {
    v27.receiver = v4;
    v27.super_class = type metadata accessor for DOCInlineRenameOverlayView();
    v24 = [(UIView_optional *)&v27 hitTest:isa withEvent:x, y];
  }
}

double DOCInlineRenameOverlayView.renameViewFrame(in:)(void *a1)
{
  v3 = MEMORY[0x277D85000];
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v5 = v4();
  v6 = 0.0;
  if (v5)
  {
    v7 = v5;
    v8 = (*((*v3 & *v5) + 0x390))();

    if (v8)
    {
      v9 = [v8 frame];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      v18 = (v4)(v9);
      [a1 convertRect:v18 fromView:{v11, v13, v15, v17}];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      return UIEdgeInsetsInsetRect(v20, v22, v24, v26, -5.0, -5.0);
    }
  }

  return v6;
}

id DOCInlineRenameOverlayView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCInlineRenameOverlayView.init(frame:)(double a1, double a2, double a3, double a4)
{
  swift_unknownObjectWeakInit();
  v10.receiver = v4;
  v10.super_class = type metadata accessor for DOCInlineRenameOverlayView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id DOCInlineRenameOverlayView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id DOCInlineRenameOverlayView.init(coder:)(void *a1)
{
  swift_unknownObjectWeakInit();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCInlineRenameOverlayView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id DOCInlineRenameOverlayView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCInlineRenameOverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DOCInlineRenameController.renameDelegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCInlineRenameController.renameDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return DOCFileProviderSyncStateFooterViewModel.delegate.modify;
}

void *DOCInlineRenameController.overlayView.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void DOCInlineRenameController.overlayView.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t DOCInlineRenameController.contentMustBeSelected.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 40) = a1;
  return result;
}

uint64_t DOCInlineRenameController.proposedFileName.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);

  return v1;
}

double DOCInlineRenameController.proposedFileName.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return result;
}

void DOCInlineRenameController.currentNode.didset()
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.Rename);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v15 = v4;
    *v3 = 136315650;
    *(v3 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x4E746E6572727563, 0xEB0000000065646FLL, &v15);
    *(v3 + 12) = 2080;
    swift_beginAccess();
    v5 = [*(v0 + 64) filename];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v15);

    *(v3 + 14) = v9;
    *(v3 + 22) = 2080;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v10 = DOCNode.nodeDescription.getter();
    v12 = v11;
    swift_unknownObjectRelease();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, &v15);

    *(v3 + 24) = v13;
    _os_log_impl(&dword_2493AC000, oslog, v2, "%s fileName: %s node: %s", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v4, -1, -1);
    MEMORY[0x24C1FE850](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t DOCInlineRenameController.currentNode.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  DOCInlineRenameController.currentNode.didset();
  return swift_unknownObjectRelease();
}

void (*DOCInlineRenameController.currentNode.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCInlineRenameController.currentNode.modify;
}

void DOCInlineRenameController.currentNode.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCInlineRenameController.currentNode.didset();
  }
}

void DOCInlineRenameController.currentItemCell.didset(void *a1)
{
  v2 = v1;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Rename);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49[0] = v48;
    *v7 = 136315650;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x49746E6572727563, 0xEF6C6C65436D6574, v49);
    *(v7 + 12) = 2080;
    v8 = *(*v1 + 272);
    v9 = [v8() filename];
    swift_unknownObjectRelease();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v12, v49);

    *(v7 + 14) = v13;
    *(v7 + 22) = 2080;
    (v8)(v14);
    swift_getObjectType();
    v15 = DOCNode.nodeDescription.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v49);

    *(v7 + 24) = v18;
    _os_log_impl(&dword_2493AC000, v5, v6, "%s didSet fileName: %s node: %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v48, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  if (a1 && (swift_beginAccess(), (Strong = swift_unknownObjectWeakLoadStrong()) != 0))
  {
    v20 = Strong;
    type metadata accessor for DOCItemCollectionCell();
    v21 = a1;
    if (static NSObject.== infix(_:_:)())
    {
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v49[0] = v25;
        *v24 = 136315138;
        *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x49746E6572727563, 0xEF6C6C65436D6574, v49);
        _os_log_impl(&dword_2493AC000, v22, v23, "%s current item cell and previous cell are the same. No need to re-host renaming between cells. Resuming first responder if needed.", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v25);
        MEMORY[0x24C1FE850](v25, -1, -1);
        MEMORY[0x24C1FE850](v24, -1, -1);
      }

      (*(*v2 + 448))();
    }

    else
    {
      v21 = v21;
      v20 = v20;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v49[0] = v41;
        *v40 = 136315650;
        *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x49746E6572727563, 0xEF6C6C65436D6574, v49);
        *(v40 + 12) = 2080;
        v50 = v21;
        v42 = String.init<A>(describing:)();
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v49);

        *(v40 + 14) = v44;
        *(v40 + 22) = 2080;
        v50 = v20;
        v45 = String.init<A>(describing:)();
        v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v49);

        *(v40 + 24) = v47;
        _os_log_impl(&dword_2493AC000, v38, v39, "%s moving rename from: %s to: %s", v40, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v41, -1, -1);
        MEMORY[0x24C1FE850](v40, -1, -1);
      }

      (*(*v2 + 456))(v21, v20);
    }
  }

  else
  {

    v26 = a1;
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v50 = v30;
      *v29 = 136315650;
      *(v29 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x49746E6572727563, 0xEF6C6C65436D6574, &v50);
      *(v29 + 12) = 2080;
      v49[0] = a1;
      v31 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCItemCollectionCellCSgMd, &_s26DocumentManagerExecutables21DOCItemCollectionCellCSgMR);
      v32 = String.init<A>(describing:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, &v50);

      *(v29 + 14) = v34;
      *(v29 + 22) = 2080;
      swift_beginAccess();
      swift_unknownObjectWeakLoadStrong();
      v35 = String.init<A>(describing:)();
      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v36, &v50);

      *(v29 + 24) = v37;
      _os_log_impl(&dword_2493AC000, v27, v28, "%s oldValue: %s or currentItemCell: %s were nil. Not updating renaming session.", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v30, -1, -1);
      MEMORY[0x24C1FE850](v29, -1, -1);
    }
  }
}

void DOCInlineRenameController.currentItemCell.setter(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  DOCInlineRenameController.currentItemCell.didset(Strong);
}

void (*DOCInlineRenameController.currentItemCell.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCInlineRenameController.currentItemCell.modify;
}

void DOCInlineRenameController.currentItemCell.modify(void **a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v7 = v4;
    DOCInlineRenameController.currentItemCell.didset(Strong);

    v4 = *v5;
  }

  else
  {
    DOCInlineRenameController.currentItemCell.didset(Strong);
  }

  free(v3);
}

uint64_t DOCInlineRenameController.notificationsController.getter()
{
  if (*(v0 + 88))
  {
    v1 = *(v0 + 88);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC015DOCInlineRenameF0CGMd, &_sSo14NSNotificationC26DocumentManagerExecutablesE23SubscriptionsControllerCy_AC015DOCInlineRenameF0CGMR);
    v1 = swift_allocObject();
    swift_weakInit();
    *(v1 + 24) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObject_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    swift_weakAssign();
    *(v0 + 88) = v1;
  }

  return v1;
}

uint64_t DOCInlineRenameController.__allocating_init(delegate:cell:node:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v12 = a5(a1, a3, a4, v5, ObjectType, a2);

  swift_unknownObjectRelease();
  return v12;
}

uint64_t closure #1 in DOCInlineRenameController.init(delegate:cell:node:)(uint64_t a1)
{
  Notification.object.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  if (!swift_dynamicCast())
  {
    return (*(*a1 + 472))();
  }

  result = swift_unknownObjectRelease();
  if (v3 != a1)
  {
    return (*(*a1 + 472))();
  }

  return result;
}

Swift::Void __swiftcall DOCInlineRenameController.beginRename()()
{
  v1 = v0;
  v15 = (*(*v0 + 296))();
  if (v15)
  {
    v2 = *(*v0 + 176);
    if (v2())
    {
      swift_unknownObjectRelease();
      v3 = [objc_opt_self() defaultCenter];
      if (one-time initialization token for DOCInlineRenameControllerWillBeginRename != -1)
      {
        swift_once();
      }

      [v3 postNotificationName:static NSNotificationName.DOCInlineRenameControllerWillBeginRename object:v1];

      if (v2())
      {
        v5 = v4;
        ObjectType = swift_getObjectType();
        (*(v5 + 32))(ObjectType, v5);
        swift_unknownObjectRelease();
      }

      v7 = swift_allocObject();
      swift_weakInit();

      v8 = specialized static DOCKeyboardNotifications.addObserver(keyboardAppearanceBlock:keyboardDisappearanceBlock:)(partial apply for closure #1 in DOCInlineRenameController.startObservingKeyboardNotifications(), v7, partial apply for closure #1 in DOCInlineRenameController.startObservingKeyboardNotifications(), v7);

      v1[10] = v8;

      v9 = (*((*MEMORY[0x277D85000] & *v15) + 0x3D0))(v1);
      v10 = (*(*v1 + 200))(v9);
      if (v10)
      {
        v11 = v10;
        v12 = [v15 window];
        if (v12)
        {
          v13 = v12;
          [v12 addSubview_];
          isa = DOCConstraintsToResizeWithReferenceView();
          if (!isa)
          {
            type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
            static Array._unconditionallyBridgeFromObjectiveC(_:)();
            isa = Array._bridgeToObjectiveC()().super.isa;
          }

          [objc_opt_self() activateConstraints_];
        }

        else
        {
          isa = v11;
        }
      }

      (*(*v1 + 488))();
    }
  }
}

Swift::Void __swiftcall DOCInlineRenameController.pauseRename()()
{
  v1 = v0;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Rename);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v21[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E65526573756170, 0xED00002928656D61, v21);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s if needed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = (*(*v1 + 296))();
  if (v7)
  {
    v19 = v7;
    v8 = (*((*MEMORY[0x277D85000] & *v7) + 0x390))();
    if (v8)
    {
      v18 = v8;
      if ([v8 isFirstResponder])
      {
        v9 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
        swift_beginAccess();
        if (*(v18 + v9))
        {
        }

        else
        {
          v11 = v18;
          v12 = Logger.logObject.getter();
          v13 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v12, v13))
          {
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            v20 = v16;
            *v14 = 136315394;
            *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E65526573756170, 0xED00002928656D61, &v20);
            *(v14 + 12) = 2112;
            *(v14 + 14) = v11;
            *v15 = v18;
            v17 = v11;
            _os_log_impl(&dword_2493AC000, v12, v13, "%s resigning: %@ first responder.", v14, 0x16u);
            outlined destroy of CharacterSet?(v15, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            MEMORY[0x24C1FE850](v15, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v16);
            MEMORY[0x24C1FE850](v16, -1, -1);
            MEMORY[0x24C1FE850](v14, -1, -1);
          }

          [v11 resignFirstResponder];
        }

        return;
      }

      v10 = v18;
    }

    else
    {
      v10 = v19;
    }
  }
}

Swift::Void __swiftcall DOCInlineRenameController.resumeRename()()
{
  v1 = v0;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Rename);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v31[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6552656D75736572, 0xEE002928656D616ELL, v31);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s if needed", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = (*(*v1 + 296))();
  if (v7)
  {
    v28 = v7;
    v8 = (*((*MEMORY[0x277D85000] & *v7) + 0x390))();
    if (!v8)
    {
      goto LABEL_23;
    }

    v27 = v8;
    if ([v8 isFirstResponder])
    {

      v9 = v27;
LABEL_24:

      return;
    }

    v10 = v27;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31[0] = v15;
      *v13 = 136315394;
      *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6552656D75736572, 0xEE002928656D616ELL, v31);
      *(v13 + 12) = 2112;
      *(v13 + 14) = v10;
      *v14 = v27;
      v16 = v10;
      _os_log_impl(&dword_2493AC000, v11, v12, "%s setting: %@ to first responder.", v13, 0x16u);
      outlined destroy of CharacterSet?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x24C1FE850](v14, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x24C1FE850](v15, -1, -1);
      MEMORY[0x24C1FE850](v13, -1, -1);
    }

    v17 = [v10 window];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 windowScene];
      if (v19)
      {
        v20 = v19;
        v21 = [v19 focusSystem];

        if (v21)
        {

          if ([v18 isFocused])
          {
            v22 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
            swift_beginAccess();
            *(v10 + v22) = 1;
            v29.receiver = v10;
            v29.super_class = type metadata accessor for DOCItemRenameTextView();
            objc_msgSendSuper2(&v29, sel_becomeFirstResponder);

LABEL_18:
            *(v10 + v22) = 0;

            return;
          }

          v23 = Logger.logObject.getter();
          v24 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v23, v24))
          {
            v25 = swift_slowAlloc();
            v26 = swift_slowAlloc();
            v31[0] = v26;
            *v25 = 136315138;
            *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6552656D75736572, 0xEE002928656D616ELL, v31);
            _os_log_impl(&dword_2493AC000, v23, v24, "%s skipping first responder because window isn't key", v25, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v26);
            MEMORY[0x24C1FE850](v26, -1, -1);
            MEMORY[0x24C1FE850](v25, -1, -1);

            return;
          }

LABEL_23:
          v9 = v28;
          goto LABEL_24;
        }
      }
    }

    v22 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemRenameTextView_isBecomingFirstResponder;
    swift_beginAccess();
    *(v10 + v22) = 1;
    v30.receiver = v10;
    v30.super_class = type metadata accessor for DOCItemRenameTextView();
    objc_msgSendSuper2(&v30, sel_becomeFirstResponder);
    goto LABEL_18;
  }
}

void DOCInlineRenameController.moveRename(from:to:)(void *a1, void *a2)
{
  v3 = v2;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.Rename);
  v7 = a1;
  v8 = a2;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000014, 0x8000000249BCE870, &v23);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v7;
    *(v11 + 22) = 2112;
    *(v11 + 24) = v8;
    *v12 = v7;
    v12[1] = v8;
    v14 = v7;
    v15 = v8;
    _os_log_impl(&dword_2493AC000, v9, v10, "%s from: %@, to: %@", v11, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  v16 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v7) + 0x3A8))())
  {
    v17 = (*((*v16 & *v7) + 0x390))();
    if (v17)
    {
      v22 = v17;
      (*((*v16 & *v7) + 0x380))(0);
      (*((*v16 & *v7) + 0x3D8))(0, 0);
      (*((*v16 & *v8) + 0x3F0))(v22);
      v18 = (*((*v16 & *v8) + 0x3D0))(v3);
      v19 = (*(*v3 + 200))(v18);
      if (v19)
      {
        v20 = v19;
        v21 = (*(*v3 + 296))();
        (*((*v16 & *v20) + 0x60))(v21);
      }
    }
  }
}

Swift::Void __swiftcall DOCInlineRenameController.commitRename(proposedName:includingExtension:)(Swift::String_optional proposedName, Swift::Bool includingExtension)
{
  v3 = v2;
  object = proposedName.value._object;
  countAndFlagsBits = proposedName.value._countAndFlagsBits;
  v7 = (*(*v2 + 296))();
  if (v7)
  {
    v8 = v7;
    v9 = MEMORY[0x277D85000];
    v16 = (*((*MEMORY[0x277D85000] & *v7) + 0x208))();

    if (v16)
    {
      v10 = (*((*v9 & *v16) + 0x3D0))();
      if (v10)
      {
        v11 = v10;
        if (object)
        {
          v12 = *(*v3 + 256);
          swift_bridgeObjectRetain_n();
          v12(countAndFlagsBits, object);
          v13 = swift_allocObject();
          swift_weakInit();
          v14 = swift_allocObject();
          *(v14 + 16) = v13;
          *(v14 + 24) = v16;
          *(v14 + 32) = v11;
          *(v14 + 40) = includingExtension;
          *(v14 + 48) = countAndFlagsBits;
          *(v14 + 56) = object;

          v15 = v16;
          swift_unknownObjectRetain();
          DOCRunInMainThread(_:)();

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }
      }

      else
      {
      }
    }
  }
}

double closure #1 in DOCInlineRenameController.commitRename(proposedName:includingExtension:)(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = (*((*MEMORY[0x277D85000] & *a2) + 0xB78))(a3) | a4;
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = a5;
    v15[4] = a6;
    v15[5] = a3;
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    v17 = *(*v13 + 544);
    swift_unknownObjectRetain_n();

    v17(a3, a5, a6, v14 & 1, partial apply for closure #1 in closure #1 in DOCInlineRenameController.commitRename(proposedName:includingExtension:), v15, partial apply for closure #2 in closure #1 in DOCInlineRenameController.commitRename(proposedName:includingExtension:), v16);
  }

  return result;
}

void closure #1 in closure #1 in DOCInlineRenameController.commitRename(proposedName:includingExtension:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = a3;
  v13 = (*(*a4 + 296))();
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v13;
  v15 = MEMORY[0x277D85000];
  v16 = (*((*MEMORY[0x277D85000] & *v13) + 0x208))();
  if (!v16)
  {

LABEL_12:
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.Rename);
    oslog = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v64 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BCEB30, &v64);
      _os_log_impl(&dword_2493AC000, oslog, v31, "%s: no cell or cell content. Bailing on rename completion handler.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x24C1FE850](v33, -1, -1);
      MEMORY[0x24C1FE850](v32, -1, -1);
    }

    else
    {
    }

    return;
  }

  v17 = v16;
  if ((v10 & 0x100) != 0)
  {
    v34 = a1;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logger.Rename);
    v36 = a1;
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    outlined consume of Result<RenameProposition, Error>(a1, a2, v10, 1);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      osloga = v17;
      v40 = swift_slowAlloc();
      v64 = v40;
      *v39 = 136315394;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BCEB30, &v64);
      *(v39 + 12) = 2080;
      swift_getErrorValue();
      v41 = Error.localizedDescription.getter();
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v64);

      *(v39 + 14) = v43;
      v15 = MEMORY[0x277D85000];
      _os_log_impl(&dword_2493AC000, v37, v38, "%s: renaming failed with error: %s", v39, 0x16u);
      swift_arrayDestroy();
      v44 = v40;
      v17 = osloga;
      MEMORY[0x24C1FE850](v44, -1, -1);
      MEMORY[0x24C1FE850](v39, -1, -1);
      outlined consume of Result<RenameProposition, Error>(a1, a2, v10, 1);
    }

    else
    {

      outlined consume of Result<RenameProposition, Error>(a1, a2, v10, 1);
    }

    goto LABEL_32;
  }

  if (((*((*v15 & *v14) + 0x3A8))() & 1) == 0)
  {
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.Rename);
    swift_unknownObjectRetain();
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v64 = v49;
      *v48 = 136315394;
      *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BCEB30, &v64);
      *(v48 + 12) = 2080;
      v50 = [a7 description];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v64);

      *(v48 + 14) = v54;
      v15 = MEMORY[0x277D85000];
      _os_log_impl(&dword_2493AC000, v46, v47, "%s: renaming for %s ended with success but cell was not being renamed", v48, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v49, -1, -1);
      MEMORY[0x24C1FE850](v48, -1, -1);
    }

    goto LABEL_32;
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.Rename);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = v17;
    v23 = swift_slowAlloc();
    v64 = v23;
    *v21 = 136315138;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BCEB30, &v64);
    _os_log_impl(&dword_2493AC000, v19, v20, "%s: renaming ended with success", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v24 = v23;
    v17 = v22;
    MEMORY[0x24C1FE850](v24, -1, -1);
    MEMORY[0x24C1FE850](v21, -1, -1);
  }

  if (v10)
  {
    v25 = MEMORY[0x24C1FAD20](a5, a6);
    v26 = [v25 stringByDeletingPathExtension];

    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    (*((*MEMORY[0x277D85000] & v17->isa) + 0x600))(v27, v29);
  }

  else
  {
    v55 = *((*MEMORY[0x277D85000] & v17->isa) + 0x600);

    v55(a5, a6);
  }

  v56 = [a7 filename];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 stringByDeletingPathExtension];

    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;

    v15 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & v17->isa) + 0x618))(v59, v61);
LABEL_32:
    (*((*v15 & *v14) + 0x3D8))((v10 & 0x100) == 0, 0);

    return;
  }

  __break(1u);
}

void closure #2 in closure #1 in DOCInlineRenameController.commitRename(proposedName:includingExtension:)(void *a1, NSObject *a2, void *a3)
{
  if (a2)
  {
    v5 = a2;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.Rename);
    v7 = a2;
    swift_unknownObjectRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v47 = v11;
      *v10 = 136315650;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BCEB30, &v47);
      *(v10 + 12) = 2080;
      v12 = [a3 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v47);

      *(v10 + 14) = v16;
      *(v10 + 22) = 2080;
      swift_getErrorValue();
      v17 = Error.localizedDescription.getter();
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v47);

      *(v10 + 24) = v19;
      _os_log_impl(&dword_2493AC000, v8, v9, "%s: finished block has been called for renaming %s with error: %s", v10, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);

      return;
    }

    v36 = a2;

    goto LABEL_13;
  }

  if (a1)
  {
    v21 = one-time initialization token for Rename;
    swift_unknownObjectRetain();
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.Rename);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    oslog = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(oslog, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47 = v25;
      *v24 = 136315650;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BCEB30, &v47);
      *(v24 + 12) = 2080;
      v26 = [a3 description];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, &v47);

      *(v24 + 14) = v30;
      *(v24 + 22) = 2080;
      v31 = [a1 description];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v34, &v47);

      *(v24 + 24) = v35;
      _os_log_impl(&dword_2493AC000, oslog, v23, "%s: finished block has been called for renaming %s with renamed node: %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v25, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);

      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    goto LABEL_19;
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  __swift_project_value_buffer(v37, static Logger.Rename);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (!os_log_type_enabled(oslog, v38))
  {
LABEL_19:
    v36 = oslog;

LABEL_13:

    return;
  }

  v39 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v47 = v40;
  *v39 = 136315394;
  *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ELL, 0x8000000249BCEB30, &v47);
  *(v39 + 12) = 2080;
  v41 = [a3 description];
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  v45 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v44, &v47);

  *(v39 + 14) = v45;
  _os_log_impl(&dword_2493AC000, oslog, v38, "%s: finished block has been called for renaming %s without DOCNode", v39, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x24C1FE850](v40, -1, -1);
  MEMORY[0x24C1FE850](v39, -1, -1);
}

Swift::Void __swiftcall DOCInlineRenameController.cancelRename()()
{
  v1 = v0;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Rename);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x65526C65636E6163, 0xEE002928656D616ELL, &v9);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  v7 = (*(*v1 + 296))();
  if (v7)
  {
    v8 = v7;
    if ((*(*v1 + 176))())
    {
      swift_unknownObjectRelease();
      (*((*MEMORY[0x277D85000] & *v8) + 0x420))(0);
    }
  }
}

Swift::Void __swiftcall DOCInlineRenameController.renameFinished(_:)(Swift::Bool a1)
{
  v2 = v1;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Rename);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000249BCE890, &v14);
    _os_log_impl(&dword_2493AC000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  v9 = (*(*v2 + 200))();
  if (v9)
  {
    v10 = v9;
    [v9 removeFromSuperview];
  }

  if ((*(*v2 + 176))())
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    (*(v12 + 40))(a1, ObjectType, v12);

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCInlineRenameController.selectContentIfNeeded()()
{
  v4 = (*(*v0 + 296))();
  if (v4)
  {
    if ((*(*v0 + 176))())
    {
      v1 = swift_unknownObjectRelease();
      if (((*(*v0 + 224))(v1) & 1) != 0 || ([objc_opt_self() currentDevice], GSEventIsHardwareKeyboardAttached()))
      {
        v2 = (*(*v0 + 272))();
        (*((*MEMORY[0x277D85000] & *v4) + 0x3F8))(v2);
      }

      else
      {
        v3 = (*(*v0 + 272))();
        (*((*MEMORY[0x277D85000] & *v4) + 0x400))(v3);
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t DOCInlineRenameController.deinit()
{
  DOCInlineRenameController.stopObservingKeyboardNotifications()();
  v1 = swift_beginAccess();
  if (*(v0 + 96) != 0.0)
  {
    (*(*v0 + 592))(v1);
  }

  outlined destroy of weak DOCPresentationPreheatable?(v0 + 16);

  swift_unknownObjectRelease();
  MEMORY[0x24C1FE970](v0 + 72);

  return v0;
}

uint64_t DOCInlineRenameController.__deallocating_deinit()
{
  DOCInlineRenameController.deinit();

  return swift_deallocClassInstance();
}

double DOCInlineRenameController.browsedLocationRenameCoordinator.getter()
{
  swift_beginAccess();

  return result;
}

double DOCInlineRenameController.browsedLocationRenameCoordinator.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 144) = a1;

  return result;
}

double DOCInlineRenameController.activeRenameOperation.getter()
{
  swift_beginAccess();

  return result;
}

double DOCInlineRenameController.activeRenameOperation.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;

  return result;
}

void DOCInlineRenameController.performNodeRename(_:to:displayingFileExtension:completion:finishedBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void *, void, uint64_t), uint64_t a6, void (*a7)(uint64_t, void *), uint64_t a8)
{
  v9 = v8;
  v16 = (*v8 + 520);
  v17 = *v16;
  if ((*v16)())
  {

    lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
    v18 = swift_allocError();
    *v19 = 1;
    a5(v18, 0, 256);

    v20 = swift_allocError();
    *v21 = 1;
    a7(a1, v20);
LABEL_12:

    return;
  }

  v42 = a8;
  v41 = a3;
  v40 = a4;
  v43 = a6;
  if (!(*(*v8 + 176))() || (v23 = v22, ObjectType = swift_getObjectType(), v25 = (*(v23 + 16))(ObjectType, v23), swift_unknownObjectRelease(), !v25))
  {
    lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError();
    v37 = swift_allocError();
    *v38 = 0;
    a5(v37, 0, 256);

    v20 = swift_allocError();
    *v39 = 0;
    a7(a1, v20);
    goto LABEL_12;
  }

  type metadata accessor for DOCNodeRenameOperation();
  v26 = swift_allocObject();
  v26[4] = 0;
  v26[2] = a1;
  v26[3] = v25;
  v27 = *(*v9 + 528);
  swift_unknownObjectRetain();
  v28 = v25;
  v29 = v27(v26);
  v30 = (v17)(v29);
  if (v30)
  {
    v31 = v30;
    v32 = (*(*v9 + 496))();
    (*(*v31 + 160))(v32);
  }

  v33 = (v17)(v30);
  if (v33)
  {
    v34 = v33;
    v35 = swift_allocObject();
    v35[2] = v9;
    v35[3] = a5;
    v35[4] = v43;
    v36 = *(*v34 + 240);

    v36(a2, v41, v40 & 1, 1, partial apply for closure #1 in DOCInlineRenameController.performNodeRename(_:to:displayingFileExtension:completion:finishedBlock:), v35, a7, v42);
  }

  else
  {
    __break(1u);
  }
}

uint64_t closure #1 in DOCInlineRenameController.performNodeRename(_:to:displayingFileExtension:completion:finishedBlock:)(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, void))
{
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.Rename);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v16 = v14;
    *v13 = 136315138;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000049, 0x8000000249BCEAE0, &v16);
    _os_log_impl(&dword_2493AC000, v11, v12, "%s performNodeRename completed", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x24C1FE850](v14, -1, -1);
    MEMORY[0x24C1FE850](v13, -1, -1);
  }

  (*(*a4 + 528))(0);
  return a5(a1, a2, a3 & 0x1FF);
}

double closure #1 in DOCInlineRenameController.startObservingKeyboardNotifications()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    DOCInlineRenameController.didReceiveKeyboardNotification(_:)();
  }

  return result;
}

double DOCInlineRenameController.stopObservingKeyboardNotifications()()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
LABEL_17:
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
          goto LABEL_17;
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

  *(v8 + 80) = MEMORY[0x277D84F90];

  return result;
}

double DOCInlineRenameController.didReceiveKeyboardNotification(_:)()
{
  v1 = v0;
  v2 = (*(*v0 + 296))();
  if (v2)
  {
    v3 = v2;
    v4 = (*((*MEMORY[0x277D85000] & *v2) + 0x3A8))();

    v5 = v4 ^ 1;
  }

  else
  {
    v5 = 0;
  }

  v6 = Notification.userInfo.getter();
  if (!v6)
  {
    goto LABEL_13;
  }

  v7 = v6;
  *&v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(&v20 + 1) = v8;
  AnyHashable.init<A>(_:)();
  if (!*(v7 + 16) || (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v19), (v10 & 1) == 0))
  {

    outlined destroy of AnyHashable(v19);
LABEL_13:
    v20 = 0u;
    v21 = 0u;
    goto LABEL_14;
  }

  outlined init with copy of Any(*(v7 + 56) + 32 * v9, &v20);
  outlined destroy of AnyHashable(v19);

  if (!*(&v21 + 1))
  {
LABEL_14:
    outlined destroy of CharacterSet?(&v20, &_sypSgMd, &_sypSgMR);
    v14 = 0uLL;
    v16 = 1;
    v15 = 0uLL;
    goto LABEL_15;
  }

  type metadata accessor for CGRect(0);
  v11 = swift_dynamicCast();
  if (v11)
  {
    v12 = -1;
  }

  else
  {
    v12 = 0;
  }

  v13 = vdupq_n_s64(v12);
  v14 = vandq_s8(v19[0], v13);
  v15 = vandq_s8(v19[1], v13);
  v16 = v11 ^ 1;
LABEL_15:
  *(v1 + 104) = v14;
  *(v1 + 120) = v15;
  *(v1 + 136) = v16;
  v17 = Notification.userInfo.getter();
  (*(*v1 + 584))(v17, v5 & 1);

  return result;
}

Swift::Void __swiftcall DOCInlineRenameController.didTapOverlay()()
{
  v1 = v0;
  v2 = (*(*v0 + 296))();
  if (v2)
  {
    v3 = MEMORY[0x277D85000];
    v12 = v2;
    if ((*((*MEMORY[0x277D85000] & *v2) + 0x3A8))())
    {
      (*((*v3 & *v12) + 0x418))();

      return;
    }
  }

  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.Rename);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315394;
    *(v7 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x764F706154646964, 0xEF292879616C7265, &v13);
    *(v7 + 12) = 2080;
    type metadata accessor for DOCInlineRenameController();

    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v13);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_2493AC000, v5, v6, "%s inline rename overlay view tapped but the rename text view was missing. Cancelling rename. Self: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v8, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  (*(*v1 + 480))(0);
}

Swift::Void __swiftcall DOCInlineRenameController.adjustScrollView(for:isDismissing:)(Swift::OpaquePointer_optional a1, Swift::Bool isDismissing)
{
  if (!a1.value._rawValue)
  {
    return;
  }

  v3 = v2;
  is_nil = a1.is_nil;
  if (!(*(*v2 + 176))())
  {
    return;
  }

  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 8))(ObjectType, v6);
  if (v8)
  {
    v60 = v8;
    v9 = [v60 window];
    if (v9)
    {

      if ((*(v6 + 24))(ObjectType, v6))
      {
        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        swift_beginAccess();
        [v60 doc:isa adjustForAutomaticKeyboardInfo:1 animated:v3 + 96 lastAdjustment:?];
        swift_endAccess();
      }

      v11 = (*(*v3 + 296))();
      if (!v11)
      {
        swift_unknownObjectRelease();

        return;
      }

      v12 = v11;
      [v60 bounds];
      v14 = v13;
      v16 = v15;
      v18 = v17;
      v20 = v19;

      [v60 adjustedContentInset];
      v63.origin.x = UIEdgeInsetsInsetRect(v14, v16, v18, v20, v21, v22);
      Height = CGRectGetHeight(v63);
      v24 = v12;
      [v24 frame];
      if (Height < CGRectGetHeight(v64))
      {
        v25 = *((*MEMORY[0x277D85000] & *v24) + 0x390);
        v26 = v25();
        if (v26)
        {
          v27 = v26;
          if (!is_nil)
          {

            v44 = [v27 bounds];
            v46 = v45;
            v48 = v47;
            v50 = v49;
            v52 = v51;
            v53 = (v25)(v44);
            if (!v53)
            {
              __break(1u);
              return;
            }

            v54 = v53;
            [v60 convertRect:v53 fromCoordinateSpace:{v46, v48, v50, v52}];
            v29 = v55;
            v31 = v56;
            v33 = v57;
            v59 = v58;

            v35 = v59 + 5.0;
            goto LABEL_13;
          }
        }
      }

      [v24 frame];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v35 = v34;

LABEL_13:
      if (one-time initialization token for Rename != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      __swift_project_value_buffer(v36, static Logger.Rename);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v61[0] = v40;
        *v39 = 136315394;
        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000023, 0x8000000249BCE8B0, v61);
        *(v39 + 12) = 2080;
        v41 = CGRect.debugDescription.getter();
        v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v61);

        *(v39 + 14) = v43;
        _os_log_impl(&dword_2493AC000, v37, v38, "%s rename cell frame: %s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v40, -1, -1);
        MEMORY[0x24C1FE850](v39, -1, -1);
      }

      [v60 scrollRectToVisible:1 animated:{v29, v31, v33, v35}];
      swift_unknownObjectRelease();

      return;
    }

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCInlineRenameController.restoreScrollViewOffset()()
{
  v1 = v0;
  if (one-time initialization token for Rename != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.Rename);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v46[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BCE8E0, v46);
    _os_log_impl(&dword_2493AC000, v3, v4, "%s restoring scroll view's offset", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  if ((*(*v1 + 176))())
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = (*(v8 + 8))(ObjectType, v8);
    if (v10)
    {
      v42 = v10;
      if (*(v1 + 136))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v11 = *(v1 + 120);
        v41 = *(v1 + 128);
        v13 = *(v1 + 104);
        v12 = *(v1 + 112);
        v14 = [v10 window];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 screen];
          [v16 bounds];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
        }

        else
        {
          v15 = [objc_opt_self() mainScreen];
          [v15 bounds];
          v18 = v25;
          v20 = v26;
          v22 = v27;
          v24 = v28;
        }

        _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(&v44 + 1) = v29;
        AnyHashable.init<A>(_:)();
        v48.origin.x = v18;
        v48.origin.y = v20;
        v48.size.width = v22;
        v48.size.height = v24;
        MinX = CGRectGetMinX(v48);
        v49.origin.x = v18;
        v49.origin.y = v20;
        v49.size.width = v22;
        v49.size.height = v24;
        Height = CGRectGetHeight(v49);
        v50.origin.x = v13;
        v50.origin.y = v12;
        v50.size.width = v11;
        v50.size.height = v41;
        Width = CGRectGetWidth(v50);
        v51.origin.x = v13;
        v51.origin.y = v12;
        v51.size.width = v11;
        v51.size.height = v41;
        v33 = CGRectGetHeight(v51);
        type metadata accessor for CGRect(0);
        v45 = v34;
        v35 = swift_allocObject();
        *&v44 = v35;
        v35[2] = MinX;
        v35[3] = Height;
        v35[4] = Width;
        v35[5] = v33;
        outlined init with take of Any(&v44, v43);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v46, isUniquelyReferenced_nonNull_native);
        outlined destroy of AnyHashable(v46);
        if ((*(v8 + 24))(ObjectType, v8))
        {
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          swift_beginAccess();
          [v42 doc:isa adjustForAutomaticKeyboardInfo:1 animated:v1 + 96 lastAdjustment:?];
          swift_endAccess();
        }

        else
        {
        }

        v39 = (*(*v1 + 296))(v38);
        if (v39)
        {
          v40 = v39;
          [v39 frame];
          [v42 scrollRectToVisible:1 animated:?];
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

uint64_t one-time initialization function for DOCInlineRenameControllerWillBeginRename()
{
  result = MEMORY[0x24C1FAD20](0xD000000000000028, 0x8000000249BCEB60);
  static NSNotificationName.DOCInlineRenameControllerWillBeginRename = result;
  return result;
}

id static NSNotificationName.DOCInlineRenameControllerWillBeginRename.getter()
{
  if (one-time initialization token for DOCInlineRenameControllerWillBeginRename != -1)
  {
    swift_once();
  }

  v1 = static NSNotificationName.DOCInlineRenameControllerWillBeginRename;

  return v1;
}

uint64_t specialized DOCInlineRenameController.init(delegate:cell:node:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 80) = MEMORY[0x277D84F90];
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 1;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 64) = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(a4 + 24) = a6;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v9 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:a4 action:sel_didTapOverlay];
  v10 = [objc_allocWithZone(type metadata accessor for DOCInlineRenameOverlayView()) initWithFrame_];
  v11 = (*(*a4 + 296))([v10 setTranslatesAutoresizingMaskIntoConstraints_]);
  (*((*MEMORY[0x277D85000] & *v10) + 0x60))(v11);
  [v10 addGestureRecognizer_];

  swift_beginAccess();
  v12 = *(a4 + 32);
  *(a4 + 32) = v10;

  v13 = DOCInlineRenameController.notificationsController.getter();
  if (one-time initialization token for DOCInlineRenameControllerWillBeginRename != -1)
  {
    swift_once();
  }

  v14 = static NSNotificationName.DOCInlineRenameControllerWillBeginRename;
  v15 = [objc_opt_self() mainQueue];
  (*(*v13 + 144))(v14, &v17, v15, closure #1 in DOCInlineRenameController.init(delegate:cell:node:), 0);

  outlined destroy of CharacterSet?(&v17, &_sypSgMd, &_sypSgMR);
  return a4;
}

uint64_t specialized DOCInlineRenameController.__allocating_init(delegate:cell:node:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for DOCInlineRenameController();
  v11 = swift_allocObject();

  return specialized DOCInlineRenameController.init(delegate:cell:node:)(a1, a2, a3, v11, a5, a6);
}

unint64_t lazy protocol witness table accessor for type FilenameValidationError and conformance FilenameValidationError()
{
  result = lazy protocol witness table cache variable for type FilenameValidationError and conformance FilenameValidationError;
  if (!lazy protocol witness table cache variable for type FilenameValidationError and conformance FilenameValidationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FilenameValidationError and conformance FilenameValidationError);
  }

  return result;
}

uint64_t specialized DOCInlineRenameController.init(delegate:cell:node:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 80) = MEMORY[0x277D84F90];
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 1;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 64) = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(a4 + 24) = &protocol witness table for DOCItemCollectionViewController;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();

  v7 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:a4 action:sel_didTapOverlay];
  v8 = [objc_allocWithZone(type metadata accessor for DOCInlineRenameOverlayView()) initWithFrame_];
  v9 = (*(*a4 + 296))([v8 setTranslatesAutoresizingMaskIntoConstraints_]);
  (*((*MEMORY[0x277D85000] & *v8) + 0x60))(v9);
  [v8 addGestureRecognizer_];

  swift_beginAccess();
  v10 = *(a4 + 32);
  *(a4 + 32) = v8;

  v11 = DOCInlineRenameController.notificationsController.getter();
  if (one-time initialization token for DOCInlineRenameControllerWillBeginRename != -1)
  {
    swift_once();
  }

  v12 = static NSNotificationName.DOCInlineRenameControllerWillBeginRename;
  v13 = [objc_opt_self() mainQueue];
  (*(*v11 + 144))(v12, &v15, v13, closure #1 in DOCInlineRenameController.init(delegate:cell:node:), 0);

  outlined destroy of CharacterSet?(&v15, &_sypSgMd, &_sypSgMR);
  return a4;
}

{
  *(a4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(a4 + 80) = MEMORY[0x277D84F90];
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 1;
  *(a4 + 144) = 0;
  *(a4 + 152) = 0;
  *(a4 + 64) = a3;
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  *(a4 + 24) = &protocol witness table for DOCItemCollectionViewController;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRetain();

  v7 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:a4 action:sel_didTapOverlay];
  v8 = [objc_allocWithZone(type metadata accessor for DOCInlineRenameOverlayView()) initWithFrame_];
  v9 = (*(*a4 + 296))([v8 setTranslatesAutoresizingMaskIntoConstraints_]);
  (*((*MEMORY[0x277D85000] & *v8) + 0x60))(v9);
  [v8 addGestureRecognizer_];

  swift_beginAccess();
  v10 = *(a4 + 32);
  *(a4 + 32) = v8;

  v11 = DOCInlineRenameController.notificationsController.getter();
  if (one-time initialization token for DOCInlineRenameControllerWillBeginRename != -1)
  {
    swift_once();
  }

  v12 = static NSNotificationName.DOCInlineRenameControllerWillBeginRename;
  v13 = [objc_opt_self() mainQueue];
  (*(*v11 + 144))(v12, &v15, v13, closure #1 in DOCInlineRenameController.init(delegate:cell:node:), 0);

  outlined destroy of CharacterSet?(&v15, &_sypSgMd, &_sypSgMR);
  return a4;
}

void outlined consume of Result<RenameProposition, Error>(id a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
  }

  else
  {
    outlined consume of RenameProposition(a1, a2);
  }
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ26DocumentManagerExecutables10ColumnTypeO_AC10FormattersOTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v21 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v20 = (v5 + 63) >> 6;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v11 = v8 | (v4 << 6);
    v12 = (*(v3 + 48) + 16 * v11);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(*(v3 + 56) + v11);
    outlined copy of ColumnType(*v12, v14);
    v16 = v14 == 9;
    if (v14 != 9)
    {
      v17 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
      v19 = v18;
      result = outlined consume of ColumnType(v13, v14);
      if ((v19 & 1) != 0 && v15 == *(*(a2 + 56) + v17))
      {
        continue;
      }
    }

    return v16;
  }

  v9 = v4;
  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= v20)
    {
      return 1;
    }

    v10 = *(v21 + 8 * v4);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v7 = (v10 - 1) & v10;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 64);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
LABEL_13:
      v11 = *(*(a1 + 56) + 8 * (v8 | (v3 << 6)));
      specialized __RawDictionaryStorage.find<A>(_:)();
      if (v12)
      {

        v14 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo17DOCDocumentSourceC_Tt1g5(v13, v11);

        if (v14)
        {
          continue;
        }
      }

      return;
    }

    v9 = v3;
    while (1)
    {
      v3 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v3 >= v7)
      {
        return;
      }

      v10 = *(a1 + 64 + 8 * v3);
      ++v9;
      if (v10)
      {
        v8 = __clz(__rbit64(v10));
        v6 = (v10 - 1) & v10;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ10Foundation4UUIDV_So6CGRectVTt1g5(uint64_t a1, uint64_t a2)
{
  v66 = type metadata accessor for UUID();
  v60 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v4);
  v61 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v59 = &v52 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So6CGRectV5valuetSgMd, &_s10Foundation4UUIDV3key_So6CGRectV5valuetSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.n128_f64[0] = MEMORY[0x28223BE20](v13, v14);
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v58 = &v52 - v15;
    v17 = 0;
    v56 = a1;
    v20 = *(a1 + 64);
    v19 = a1 + 64;
    v18 = v20;
    v21 = 1 << *(v19 - 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & v18;
    v24 = (v21 + 63) >> 6;
    v54 = v60 + 16;
    v55 = v12;
    v64 = (v60 + 32);
    v57 = (v60 + 8);
    v53 = a2;
    while (v23)
    {
      v65 = (v23 - 1) & v23;
      v25 = __clz(__rbit64(v23)) | (v17 << 6);
LABEL_16:
      v30 = v56;
      v31 = v60;
      (*(v60 + 16))(v59, *(v56 + 48) + *(v60 + 72) * v25, v66, v16);
      v32 = (*(v30 + 56) + 32 * v25);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So6CGRectV5valuetMd, &_s10Foundation4UUIDV3key_So6CGRectV5valuetMR);
      v34 = &v55[*(v33 + 48)];
      v35 = *(v31 + 32);
      v36 = *v32;
      v62 = v32[1];
      v63 = v36;
      v12 = v55;
      v35();
      v37 = v62;
      *v34 = v63;
      *(v34 + 1) = v37;
      (*(*(v33 - 8) + 56))(v12, 0, 1, v33);
      a2 = v53;
LABEL_17:
      v38 = v58;
      outlined init with take of (key: UUID, value: CGRect)?(v12, v58);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So6CGRectV5valuetMd, &_s10Foundation4UUIDV3key_So6CGRectV5valuetMR);
      if ((*(*(v39 - 8) + 48))(v38, 1, v39) != 1)
      {
        v40 = v38;
        v41 = (v38 + *(v39 + 48));
        v42 = v61;
        v43 = v66;
        (*v64)(v61, v40, v66);
        v44 = *v41;
        v45 = v41[1];
        v46 = v41[2];
        v47 = v41[3];
        v48 = specialized __RawDictionaryStorage.find<A>(_:)(v42);
        LOBYTE(v41) = v49;
        (*v57)(v42, v43);
        if (v41)
        {
          v67.origin.x = v44;
          v67.origin.y = v45;
          v67.size.width = v46;
          v67.size.height = v47;
          v50 = CGRectEqualToRect(*(*(a2 + 56) + 32 * v48), v67);
          v23 = v65;
          if (v50)
          {
            continue;
          }
        }
      }

      return;
    }

    if (v24 <= v17 + 1)
    {
      v26 = v17 + 1;
    }

    else
    {
      v26 = v24;
    }

    v27 = v26 - 1;
    while (1)
    {
      v28 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v28 >= v24)
      {
        v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So6CGRectV5valuetMd, &_s10Foundation4UUIDV3key_So6CGRectV5valuetMR);
        (*(*(v51 - 8) + 56))(v12, 1, 1, v51);
        v65 = 0;
        v17 = v27;
        goto LABEL_17;
      }

      v29 = *(v19 + 8 * v28);
      ++v17;
      if (v29)
      {
        v65 = (v29 - 1) & v29;
        v25 = __clz(__rbit64(v29)) | (v28 << 6);
        v17 = v28;
        goto LABEL_16;
      }
    }

    __break(1u);
  }
}

Class @objc NSUserDefaults.DOCSourceOrderKey.getter(void *a1)
{
  v1 = a1;
  v2 = NSUserDefaults.DOCSourceOrderKey.getter();

  if (v2)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  return v3.super.isa;
}

uint64_t NSUserDefaults.DOCSourceOrderKey.getter()
{
  v1 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BA27D0);
  v2 = [v0 valueForKey_];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v7);
    return 0;
  }
}

void @objc NSUserDefaults.DOCSourceOrderKey.setter(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = a1;
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6 = a1;
    v5.super.isa = 0;
  }

  v7 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BA27D0);
  [a1 setValue:v5.super.isa forKey:v7];

  swift_unknownObjectRelease();
}

double DOCSourceByType.orderedSources.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSourceByType_orderedSources;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void __swiftcall DOCSourceByType.init(orderedSources:)(DOCSourceByType *__return_ptr retstr, Swift::OpaquePointer orderedSources)
{
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR___DOCSourceByType_orderedSources;
  swift_beginAccess();
  *&v3[v4] = orderedSources;
}

uint64_t DOCSourceByType.regularSources.getter()
{
  specialized DOCSourceByType.regularSources.getter(0);
}

Class @objc DOCSourceByType.regularSources.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized DOCSourceByType.regularSources.getter(a3);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

uint64_t DOCSourceByType.sharedSources.getter()
{
  specialized DOCSourceByType.regularSources.getter(1);
}

id DOCSourceByType.init()()
{
  v1 = OBJC_IVAR___DOCSourceByType_orderedSources;
  *&v0[v1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3.receiver = v0;
  v3.super_class = DOCSourceByType;
  return objc_msgSendSuper2(&v3, sel_init);
}

{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

Swift::Bool __swiftcall DOCSourceOrderStrategy.updateSources(_:forceUpdate:)(Swift::OpaquePointer _, Swift::Bool forceUpdate)
{
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static NSUserDefaults.docUserDefaults)
  {
    v5 = static NSUserDefaults.docUserDefaults;
    specialized DOCSourceOrderStrategy.storedIdentifiers(for:)(v5);
    v8 = specialized static DOCSourceOrderStrategy.sortedSources(from:orderedIdentifiers:)(_._rawValue, v6, v7);

    swift_beginAccess();
    v9 = *(v2 + 16);

    _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGTt1g5(v8, v9);
    v11 = v10;

    v12 = v11 ^ 1 | forceUpdate;
    if (v12)
    {
      *(v2 + 16) = v8;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

Swift::Bool __swiftcall DOCSourceOrderStrategy.moveSource(_:to:)(DOCDocumentSource *_, Swift::Int to)
{
  v3 = v2;
  type metadata accessor for DOCSharedServerSource();
  v30 = _;
  v6 = swift_dynamicCastClass() != 0;
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (!*(v7 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v8 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v9 & 1) == 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v7 = *(*(v7 + 56) + 8 * v8);
  v33 = v7;
  v26 = v6;
  v27 = v3;
  v28 = to;
  if (v7 >> 62)
  {
LABEL_31:
    v29 = v7 & 0xFFFFFFFFFFFFFF8;
    v31 = __CocoaSet.count.getter();
    goto LABEL_5;
  }

  v29 = v7 & 0xFFFFFFFFFFFFFF8;
  v31 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  swift_bridgeObjectRetain_n();
  v10 = 0;
  while (1)
  {
    if (v31 == v10)
    {
      swift_bridgeObjectRelease_n();
LABEL_26:
      LOBYTE(v22) = v31 != v10;
      return v22;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x24C1FC540](v10, v7);
    }

    else
    {
      if (v10 >= *(v29 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v11 = *(v7 + 8 * v10 + 32);
    }

    v12 = v11;
    v13 = [v11 identifier];
    v14 = [(DOCDocumentSource *)v30 identifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
    {
      break;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {
      goto LABEL_21;
    }

    if (__OFADD__(v10++, 1))
    {
      goto LABEL_28;
    }
  }

LABEL_21:

  if (v33 >> 62)
  {
    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 < v28)
  {
    __break(1u);
  }

  else if ((v28 & 0x8000000000000000) == 0)
  {
    v23 = v30;
    specialized Array.replaceSubrange<A>(_:with:)(v28, v28, v23);

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(v27 + 16);
    *(v27 + 16) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v26, isUniquelyReferenced_nonNull_native);
    *(v27 + 16) = v32;
    swift_endAccess();
    goto LABEL_26;
  }

  __break(1u);
  return v22;
}

char *specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = *(v7 + 4);
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[32 * a1];
    v7 = *(v6 + 4);
    v8 = v5 - 1;
    memmove(v6 + 32, v6 + 64, 32 * (v5 - 1 - a1));
    *(v3 + 2) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t specialized Array.remove(at:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 48 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 32);
    v12 = *(v9 + 40);
    v13 = *(v9 + 16);
    result = memmove(v9, (v9 + 48), 48 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v13;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
  }

  return result;
}

{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    outlined init with take of DOCGoToFolderCandidate(v9 + 2, a2);
    result = memmove(v9 + 2, v9 + 72, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v5 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v7 - 1 - a1));
    *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    *v2 = v5;
    return v9;
  }

  return result;
}

uint64_t DOCSourceOrderStrategy.flatOrderedSources.getter()
{
  v1 = (*(*v0 + 136))();
  v2 = [v1 regularSources];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCDocumentSource, 0x277D05EB0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = [v1 sharedSources];
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized Array.append<A>(contentsOf:)(v5);
  return v3;
}

char *DOCSourceOrderStrategy.orderedSourcesByType.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(DOCSourceByType);

  v3 = [v2 init];
  v4 = OBJC_IVAR___DOCSourceByType_orderedSources;
  swift_beginAccess();
  *&v3[v4] = v1;

  return v3;
}

Swift::Void __swiftcall DOCSourceOrderStrategy.storeOrderIfNeeded()()
{
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (static NSUserDefaults.docUserDefaults)
  {
    v1 = *(*v0 + 128);
    v2 = static NSUserDefaults.docUserDefaults;
    v3 = v1();
    v4 = v3;
    if (v3 >> 62)
    {
      v5 = __CocoaSet.count.getter();
      if (v5)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_6:
        v25 = MEMORY[0x277D84F90];
        v6 = &v25;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5 & ~(v5 >> 63), 0);
        if (v5 < 0)
        {
          __break(1u);
          goto LABEL_23;
        }

        v24 = v2;
        v7 = 0;
        v6 = v25;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v8 = MEMORY[0x24C1FC540](v7, v4);
          }

          else
          {
            v8 = *(v4 + 8 * v7 + 32);
          }

          v9 = v8;
          v10 = [v8 identifier];
          v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v13 = v12;

          v25 = v6;
          v15 = v6[2];
          v14 = v6[3];
          if (v15 >= v14 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1);
            v6 = v25;
          }

          ++v7;
          v6[2] = v15 + 1;
          v16 = &v6[2 * v15];
          v16[4] = v11;
          v16[5] = v13;
        }

        while (v5 != v7);

        v2 = v24;
LABEL_17:
        specialized DOCSourceOrderStrategy.storedIdentifiers(for:)(v2);
        v18 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(v6, v17);

        if (v18)
        {
LABEL_20:

          return;
        }

        isa = Array._bridgeToObjectiveC()().super.isa;
        [v2 setDOCSourceOrderKey_];

        [v2 synchronize];
        if (one-time initialization token for Source == -1)
        {
LABEL_19:
          static os_log_type_t.info.getter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v20 = swift_allocObject();
          *(v20 + 16) = xmmword_249B9A480;
          v21 = v6[2];

          v22 = MEMORY[0x277D83C10];
          *(v20 + 56) = MEMORY[0x277D83B88];
          *(v20 + 64) = v22;
          *(v20 + 32) = v21;
          os_log(_:dso:log:type:_:)("Sorting sources: %ld source identifiers stored in defaults", v23);
          goto LABEL_20;
        }

LABEL_23:
        swift_once();
        goto LABEL_19;
      }
    }

    v6 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }
}

uint64_t DOCSourceOrderStrategy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t DOCSourceOrderStrategy.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtGMd, &_ss23_ContiguousArrayStorageCySo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  *(inited + 32) = 0;
  v2 = MEMORY[0x277D84F90];
  *(inited + 40) = MEMORY[0x277D84F90];
  *(inited + 48) = 1;
  *(inited + 56) = v2;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtMd, &_sSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtMR);
  swift_arrayDestroy();
  *(v0 + 16) = v3;
  return v0;
}

uint64_t DOCSourceOrderStrategy.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtGMd, &_ss23_ContiguousArrayStorageCySo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  *(inited + 32) = 0;
  v2 = MEMORY[0x277D84F90];
  *(inited + 40) = MEMORY[0x277D84F90];
  *(inited + 48) = 1;
  *(inited + 56) = v2;
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtMd, &_sSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtMR);
  swift_arrayDestroy();
  *(v0 + 16) = v3;
  return v0;
}

double key path getter for DOCSourceOrderObserver.updateBlock : DOCSourceOrderObserver@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___DOCSourceOrderObserver_updateBlock);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed DOCBackdropConfiguration) -> ();
  a2[1] = v6;

  return result;
}

double key path setter for DOCSourceOrderObserver.updateBlock : DOCSourceOrderObserver(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR___DOCSourceOrderObserver_updateBlock);
  swift_beginAccess();
  *v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ());
  v6[1] = v5;

  return result;
}

uint64_t DOCSourceOrderObserver.updateBlock.getter()
{
  v1 = (v0 + OBJC_IVAR___DOCSourceOrderObserver_updateBlock);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double DOCSourceOrderObserver.updateBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___DOCSourceOrderObserver_updateBlock);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void *DOCSourceOrderObserver.sourceObserverToken.getter()
{
  v1 = OBJC_IVAR___DOCSourceOrderObserver_sourceObserverToken;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSourceOrderObserver.sourceObserverToken.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSourceOrderObserver_sourceObserverToken;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *DOCSourceOrderObserver.sourceOrderObservation.getter()
{
  v1 = OBJC_IVAR___DOCSourceOrderObserver_sourceOrderObservation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCSourceOrderObserver.sourceOrderObservation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCSourceOrderObserver_sourceOrderObservation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id DOCSourceOrderObserver.init(configuration:sourceObserver:update:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
  v12[3] = &block_descriptor_14;
  v9 = _Block_copy(v12);
  v10 = [v8 initWithConfiguration:a1 sourceObserver:a2 updateBlock:v9];

  _Block_release(v9);

  return v10;
}

char *DOCSourceOrderObserver.init(configuration:sourceObserver:update:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR___DOCSourceOrderObserver_sourceObserverToken] = 0;
  *&v4[OBJC_IVAR___DOCSourceOrderObserver_sourceOrderObservation] = 0;
  v7 = &v4[OBJC_IVAR___DOCSourceOrderObserver_updateBlock];
  *v7 = a3;
  *(v7 + 1) = a4;
  *&v4[OBJC_IVAR___DOCSourceOrderObserver_configuration] = a1;
  *&v4[OBJC_IVAR___DOCSourceOrderObserver_sourceObserver] = a2;
  type metadata accessor for DOCSourceOrderStrategy();
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtGMd, &_ss23_ContiguousArrayStorageCySo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  *(inited + 32) = 0;
  v10 = MEMORY[0x277D84F90];
  *(inited + 40) = MEMORY[0x277D84F90];
  *(inited + 48) = 1;
  *(inited + 56) = v10;
  v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGTt0g5Tf4g_n(inited);
  swift_setDeallocating();

  v12 = a1;
  v13 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtMd, &_sSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtMR);
  swift_arrayDestroy();
  *(v8 + 16) = v11;
  *&v4[OBJC_IVAR___DOCSourceOrderObserver_strategy] = v8;
  v22.receiver = v4;
  v22.super_class = DOCSourceOrderObserver;
  v14 = objc_msgSendSuper2(&v22, sel_init);
  v15 = one-time initialization token for docUserDefaults;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v17 = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = v17;
    v17 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();
  }

  v19 = OBJC_IVAR___DOCSourceOrderObserver_sourceOrderObservation;
  swift_beginAccess();
  v20 = *&v16[v19];
  *&v16[v19] = v17;

  DOCSourceOrderObserver.updateObserver()();

  return v16;
}

Swift::Void __swiftcall DOCSourceOrderObserver.beginObservingUserDefaultsChanges()()
{
  v1 = v0;
  if (one-time initialization token for docUserDefaults != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static NSUserDefaults.docUserDefaults;
  if (static NSUserDefaults.docUserDefaults)
  {
    swift_getKeyPath();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v3 = v2;
    v2 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();
  }

  v4 = OBJC_IVAR___DOCSourceOrderObserver_sourceOrderObservation;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = v2;
}

Swift::Void __swiftcall DOCSourceOrderObserver.updateObserver()()
{
  v1 = *(v0 + OBJC_IVAR___DOCSourceOrderObserver_sourceObserver);
  v2 = *(v0 + OBJC_IVAR___DOCSourceOrderObserver_configuration);
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = partial apply for closure #1 in DOCSourceOrderObserver.updateObserver();
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  v8[3] = &block_descriptor_6_1;
  v4 = _Block_copy(v8);

  v5 = [v1 addSubscriberForConfiguration:v2 usingBlock:v4];
  _Block_release(v4);
  v6 = OBJC_IVAR___DOCSourceOrderObserver_sourceObserverToken;
  swift_beginAccess();
  v7 = *(v0 + v6);
  *(v0 + v6) = v5;
}

double closure #1 in DOCSourceOrderObserver.updateObserver()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  *(v5 + 24) = a1;

  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in closure #1 in DOCSourceOrderObserver.updateObserver()(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v4 = Strong;
  if (one-time initialization token for Source != -1)
  {
    goto LABEL_52;
  }

  while (1)
  {
    v68 = static DOCLog.Source;
    LODWORD(v70) = static os_log_type_t.info.getter();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v5 = swift_allocObject();
    v65 = xmmword_249B9FA70;
    *(v5 + 16) = xmmword_249B9FA70;
    v6 = a2 >> 62;
    v7 = a2 >> 62 ? __CocoaSet.count.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v71 = v7;
    v72 = dispatch thunk of CustomStringConvertible.description.getter();
    v73 = v8;
    MEMORY[0x24C1FAEA0](0x61746F74206E6920, 0xE90000000000006CLL);
    v9 = v72;
    v10 = v73;
    *(v5 + 56) = MEMORY[0x277D837D0];
    v64 = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 64) = v64;
    *(v5 + 32) = v9;
    *(v5 + 40) = v10;
    v67 = v4;
    v69 = v5;
    if (v7)
    {
      v72 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
      if (v7 < 0)
      {
        __break(1u);
        goto LABEL_56;
      }

      v63 = a2 >> 62;
      v11 = 0;
      v12 = v72;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x24C1FC540](v11, a2);
        }

        else
        {
          v13 = *(a2 + 8 * v11 + 32);
        }

        v14 = v13;
        v15 = [v13 providerName];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v72 = v12;
        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v12 = v72;
        }

        ++v11;
        *(v12 + 16) = v20 + 1;
        v21 = v12 + 16 * v20;
        *(v21 + 32) = v16;
        *(v21 + 40) = v18;
      }

      while (v7 != v11);
      v4 = v67;
      v6 = v63;
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    v22 = v69;
    *(v69 + 96) = v63;
    v62 = lazy protocol witness table accessor for type [String] and conformance [A]();
    *(v22 + 104) = v62;
    *(v22 + 72) = v12;
    os_log(_:dso:log:type:_:)("Obtained new list of sources: %{public}@ - %@", 45, 2, &dword_2493AC000, v68, v70, v22);

    v23 = [*&v4[OBJC_IVAR___DOCSourceOrderObserver_configuration] hiddenSourcesIdentifiers];
    v24 = MEMORY[0x277D837D0];
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!*(v25 + 16))
    {

      goto LABEL_35;
    }

    v70 = v25;
    v71 = MEMORY[0x277D84F90];
    if (v6)
    {
      break;
    }

    v26 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_33;
    }

LABEL_19:
    v27 = 0;
    v69 = a2 & 0xC000000000000001;
    v4 = (a2 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if (v69)
      {
        v28 = MEMORY[0x24C1FC540](v27, a2);
      }

      else
      {
        if (v27 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v28 = *(a2 + 8 * v27 + 32);
      }

      v29 = v28;
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v31 = [v28 identifier];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      v72 = v32;
      v73 = v34;
      MEMORY[0x28223BE20](v35, v36);
      v61[2] = &v72;
      LOBYTE(v32) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v61, v70);

      v37 = [objc_opt_self() sharedManager];
      v38 = specialized DOCAppProtectionManager.hostAppCanSee(source:)(v29);

      if ((v32 & 1) != 0 || !v38)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v27;
      if (v30 == v26)
      {
        a2 = v71;
        v4 = v67;
        v24 = MEMORY[0x277D837D0];
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    swift_once();
  }

  v26 = __CocoaSet.count.getter();
  if (v26)
  {
    goto LABEL_19;
  }

LABEL_33:
  a2 = MEMORY[0x277D84F90];
LABEL_34:

LABEL_35:
  v39 = static os_log_type_t.info.getter();
  v40 = swift_allocObject();
  *(v40 + 16) = v65;
  if (a2 >> 62)
  {
    v41 = __CocoaSet.count.getter();
  }

  else
  {
    v41 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v41;
  v72 = dispatch thunk of CustomStringConvertible.description.getter();
  v73 = v42;
  MEMORY[0x24C1FAEA0](0x61746F74206E6920, 0xE90000000000006CLL);
  v43 = v72;
  v44 = v73;
  v45 = v64;
  *(v40 + 56) = v24;
  *(v40 + 64) = v45;
  *(v40 + 32) = v43;
  *(v40 + 40) = v44;
  v70 = v40;
  v46 = MEMORY[0x277D84F90];
  if (!v41)
  {
    v57 = v63;
LABEL_48:
    v58 = v70;
    *(v70 + 96) = v57;
    *(v58 + 104) = v62;
    *(v58 + 72) = v46;
    os_log(_:dso:log:type:_:)("Obtained new list of sources after filtering: %{public}@ - %@", 61, 2, &dword_2493AC000, v68, v39, v58);

    v59 = swift_allocObject();
    *(v59 + 16) = v4;
    *(v59 + 24) = a2;
    *(v59 + 32) = 1;
    v60 = v4;
    DOCRunInMainThread(_:)();

    return;
  }

  v72 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v41 & ~(v41 >> 63), 0);
  if ((v41 & 0x8000000000000000) == 0)
  {
    LODWORD(v69) = v39;
    v47 = 0;
    v46 = v72;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x24C1FC540](v47, a2);
      }

      else
      {
        v48 = *(a2 + 8 * v47 + 32);
      }

      v49 = v48;
      v50 = [v48 providerName];
      v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v53 = v52;

      v72 = v46;
      v55 = *(v46 + 16);
      v54 = *(v46 + 24);
      if (v55 >= v54 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v54 > 1), v55 + 1, 1);
        v46 = v72;
      }

      ++v47;
      *(v46 + 16) = v55 + 1;
      v56 = v46 + 16 * v55;
      *(v56 + 32) = v51;
      *(v56 + 40) = v53;
    }

    while (v41 != v47);
    v4 = v67;
    v57 = v63;
    v39 = v69;
    goto LABEL_48;
  }

LABEL_56:
  __break(1u);
}

Swift::Void __swiftcall DOCSourceOrderObserver.sortOrderDidChange(_:forceUpdate:)(Swift::OpaquePointer _, Swift::Bool forceUpdate)
{
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = _;
  *(v5 + 32) = forceUpdate;
  v6 = v2;

  DOCRunInMainThread(_:)();
}

id DOCSourceOrderObserver.deinit()
{
  v1 = v0;
  v2 = OBJC_IVAR___DOCSourceOrderObserver_sourceObserverToken;
  swift_beginAccess();
  if (*&v1[v2])
  {
    [*&v1[OBJC_IVAR___DOCSourceOrderObserver_sourceObserver] removeSubscriberForToken_];
  }

  v3 = OBJC_IVAR___DOCSourceOrderObserver_sourceOrderObservation;
  swift_beginAccess();
  v4 = *&v1[v3];
  if (v4)
  {
    v5 = v4;
    dispatch thunk of NSKeyValueObservation.invalidate()();

    v4 = *&v1[v3];
  }

  *&v1[v3] = 0;

  v7.receiver = v1;
  v7.super_class = DOCSourceOrderObserver;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

Swift::Void __swiftcall DOCSourceOrderObserver.endObservingUserDefaultsChanges()()
{
  v1 = v0;
  v2 = OBJC_IVAR___DOCSourceOrderObserver_sourceOrderObservation;
  swift_beginAccess();
  v3 = *(v0 + v2);
  if (v3)
  {
    v4 = v3;
    dispatch thunk of NSKeyValueObservation.invalidate()();

    v3 = *(v1 + v2);
  }

  *(v1 + v2) = 0;
}

void key path getter for NSUserDefaults.DOCSourceOrderKey : NSUserDefaults(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 DOCSourceOrderKey];
  if (v3)
  {
    v4 = v3;
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void key path setter for NSUserDefaults.DOCSourceOrderKey : NSUserDefaults(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  isa = v3.super.isa;
  [v2 setDOCSourceOrderKey_];
}

double closure #1 in DOCSourceOrderObserver.beginObservingUserDefaultsChanges()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for Source != -1)
    {
      swift_once();
    }

    v6 = static DOCLog.Source;
    v7 = static os_log_type_t.info.getter();
    v8 = os_log(_:dso:log:type:_:)("Sorting sources: defaults did change", 36, 2, &dword_2493AC000, v6, v7, MEMORY[0x277D84F90]);
    v9 = (*(**&v5[OBJC_IVAR___DOCSourceOrderObserver_strategy] + 128))(v8);
    v10 = swift_allocObject();
    *(v10 + 16) = v5;
    *(v10 + 24) = v9;
    *(v10 + 32) = 0;
    v11 = v5;
    DOCRunInMainThread(_:)();
  }

  return result;
}

Swift::Void __swiftcall DOCSourceOrderObserver.userDefaultsDidChange()()
{
  v1 = v0;
  if (one-time initialization token for Source != -1)
  {
    swift_once();
  }

  v2 = static DOCLog.Source;
  v3 = static os_log_type_t.info.getter();
  v4 = os_log(_:dso:log:type:_:)("Sorting sources: defaults did change", 36, 2, &dword_2493AC000, v2, v3, MEMORY[0x277D84F90]);
  v5 = (*(**&v1[OBJC_IVAR___DOCSourceOrderObserver_strategy] + 128))(v4);
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v5;
  *(v6 + 32) = 0;
  v7 = v1;
  DOCRunInMainThread(_:)();
}

uint64_t closure #1 in DOCSourceOrderObserver.sortOrderDidChange(_:forceUpdate:)(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *&a1[OBJC_IVAR___DOCSourceOrderObserver_strategy];
  result = (*(*v4 + 112))(a2, a3);
  if (result)
  {
    return (*(*v4 + 144))([a1 invokeUpdateBlock]);
  }

  return result;
}

Swift::Void __swiftcall DOCSourceOrderObserver.invokeUpdateBlock()()
{
  v1 = (v0 + OBJC_IVAR___DOCSourceOrderObserver_updateBlock);
  swift_beginAccess();
  v2 = *v1;
  v3 = *(**(v0 + OBJC_IVAR___DOCSourceOrderObserver_strategy) + 136);

  v5 = v3(v4);
  v2();
}

Swift::Void __swiftcall DOCSourceOrderObserver.move(_:to:)(DOCDocumentSource *_, Swift::Int to)
{
  v3 = *(v2 + OBJC_IVAR___DOCSourceOrderObserver_strategy);
  if ((*(*v3 + 120))(_, to))
  {
    v4 = (v2 + OBJC_IVAR___DOCSourceOrderObserver_updateBlock);
    swift_beginAccess();
    v5 = *v4;
    v6 = *(*v3 + 136);

    v8 = v6(v7);
    v5();

    (*(*v3 + 144))();
  }
}

uint64_t specialized DOCSourceByType.regularSources.getter(uint64_t a1)
{
  v2 = OBJC_IVAR___DOCSourceByType_orderedSources;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    swift_endAccess();
    return v6;
  }

  else
  {
    result = swift_endAccess();
    __break(1u);
  }

  return result;
}

void specialized DOCSourceOrderStrategy.storedIdentifiers(for:)(void *a1)
{
  v1 = [a1 DOCSourceOrderKey];
  if (v1)
  {
    v2 = v1;
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *(v3 + 16);
    if (!v4)
    {
LABEL_14:

      return;
    }

    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v5 = 0;
    v6 = (v3 + 40);
    v7 = v3;
    while (v5 < *(v3 + 16))
    {
      v9 = *(v6 - 1);
      v8 = *v6;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      v13._countAndFlagsBits = v10;
      v13._object = v12;
      LOBYTE(v10) = String.hasPrefix(_:)(v13);

      if (v10)
      {
        v14._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = String.hasPrefix(_:)(v14);

        if (v15)
        {
          v16 = DOCDocumentSourceIdentifierICloud_CurrentManaged();
          if (!v16)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v16 = DOCDocumentSourceIdentifierICloud_Current();
          if (!v16)
          {
            goto LABEL_19;
          }
        }

        v17 = v16;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v8 = v19;
      }

      v21 = *(v30 + 16);
      v20 = *(v30 + 24);
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      }

      ++v5;
      *(v30 + 16) = v21 + 1;
      v22 = v30 + 16 * v21;
      *(v22 + 32) = v9;
      *(v22 + 40) = v8;
      v6 += 2;
      v3 = v7;
      if (v4 == v5)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_249B9FA70;
    v24 = DOCDocumentSourceIdentifierICloud_Current();
    if (v24)
    {
      v25 = v24;
      v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v28 = v27;

      *(v23 + 32) = v26;
      *(v23 + 40) = v28;
      *(v23 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      *(v23 + 56) = v29;
      return;
    }
  }

  __break(1u);
}

unint64_t specialized static DOCSourceOrderStrategy.sortedSources(from:orderedIdentifiers:)(unint64_t result, uint64_t a2, __n128 a3)
{
  v3 = result;
  v114 = MEMORY[0x277D84F90];
  v115 = MEMORY[0x277D84F90];
  if (result >> 62)
  {
    goto LABEL_152;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    v100 = MEMORY[0x277D84F90];
    v7 = MEMORY[0x277D84F90];
    goto LABEL_16;
  }

  if (v4 >= 1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = 0;
      v7 = MEMORY[0x277D84F90];
      v100 = MEMORY[0x277D84F90];
      do
      {
        MEMORY[0x24C1FC540](v6, v3, a3);
        type metadata accessor for DOCSharedServerSource();
        v9 = swift_dynamicCastClass();
        v10 = swift_unknownObjectRetain();
        if (v9)
        {
          MEMORY[0x24C1FB090]();
          if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease();
          v8 = v114;
        }

        else
        {
          MEMORY[0x24C1FB090](v10);
          if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_unknownObjectRelease();
          v7 = v115;
          v8 = v100;
        }

        v100 = v8;
        ++v6;
      }

      while (v4 != v6);
    }

    else
    {
      v85 = (v3 + 32);
      type metadata accessor for DOCSharedServerSource();
      v7 = MEMORY[0x277D84F90];
      v100 = MEMORY[0x277D84F90];
      do
      {
        v87 = *v85;
        v88 = swift_dynamicCastClass();
        v89 = v87;
        if (v88)
        {
          MEMORY[0x24C1FB090]();
          if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v86 = v114;
        }

        else
        {
          MEMORY[0x24C1FB090]();
          if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v7 = v115;
          v86 = v100;
        }

        v100 = v86;
        ++v85;
        --v4;
      }

      while (v4);
    }

LABEL_16:
    v112 = v5;
    v113 = v5;
    if (one-time initialization token for Source != -1)
    {
      swift_once();
    }

    static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v11 = swift_allocObject();
    v93 = xmmword_249B9FA70;
    *(v11 + 16) = xmmword_249B9FA70;
    v12 = *(a2 + 16);
    v13 = MEMORY[0x277D83B88];
    v3 = MEMORY[0x277D83C10];
    *(v11 + 56) = MEMORY[0x277D83B88];
    *(v11 + 64) = v3;
    v104 = v12;
    *(v11 + 32) = v12;
    if (v7 >> 62)
    {
      v90 = v11;
      v14 = __CocoaSet.count.getter();
      v11 = v90;
    }

    else
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v100 >> 62)
    {
      v91 = v11;
      v92 = __CocoaSet.count.getter();
      v11 = v91;
      v16 = __OFADD__(v14, v92);
      v17 = v14 + v92;
      if (!v16)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = __OFADD__(v14, v15);
      v17 = v14 + v15;
      if (!v16)
      {
LABEL_22:
        *(v11 + 96) = v13;
        *(v11 + 104) = v3;
        *(v11 + 72) = v17;
        os_log(_:dso:log:type:_:)("Sorting sources: %ld ordered source identifiers stored in defaults, %ld sources to sort.", 2, 4);

        v105 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v7 >> 62)
        {
          v18 = __CocoaSet.count.getter();
        }

        else
        {
          v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v3 = 0;
        v107 = v7 & 0xC000000000000001;
        v95 = MEMORY[0x277D84F90];
        v19 = v7;
        while (v18 != v3)
        {
          v20 = v7 + 8 * v3;
          if (v107)
          {
            v21 = MEMORY[0x24C1FC540](v3, v7);
          }

          else
          {
            if (v3 >= *(v105 + 16))
            {
              goto LABEL_146;
            }

            v21 = *(v20 + 32);
          }

          v22 = v21;
          v23 = [v21 identifier];
          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
          if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
          {

LABEL_40:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            result = swift_allocObject();
            v30 = result;
            *(result + 16) = xmmword_249BA0290;
            if (v107)
            {
              v31 = MEMORY[0x24C1FC540](v3, v19);
            }

            else
            {
              if (v3 >= *(v105 + 16))
              {
                goto LABEL_159;
              }

              v31 = *(v20 + 32);
            }

            v95 = v30;
            *(v30 + 32) = v31;

            v7 = v115;
            break;
          }

          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v29)
          {
            goto LABEL_40;
          }

          v16 = __OFADD__(v3++, 1);
          v7 = v19;
          if (v16)
          {
            goto LABEL_148;
          }
        }

        if (!(v7 >> 62))
        {
          v106 = v7 & 0xFFFFFFFFFFFFFF8;
          v32 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_47;
        }

LABEL_157:
        v106 = v7 & 0xFFFFFFFFFFFFFF8;
        v32 = __CocoaSet.count.getter();
LABEL_47:
        v33 = 0;
        v108 = v7 & 0xC000000000000001;
        v94 = MEMORY[0x277D84F90];
        v34 = v7;
        while (v32 != v33)
        {
          v35 = v7 + 8 * v33;
          if (v108)
          {
            v36 = MEMORY[0x24C1FC540](v33, v7);
          }

          else
          {
            if (v33 >= *(v106 + 16))
            {
              goto LABEL_147;
            }

            v36 = *(v35 + 32);
          }

          v37 = v36;
          v38 = [v36 identifier];
          v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v40 = v39;
          if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v40 == v41)
          {

LABEL_62:
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            result = swift_allocObject();
            v43 = result;
            *(result + 16) = xmmword_249BA0290;
            if (v108)
            {
              v44 = MEMORY[0x24C1FC540](v33, v34);
            }

            else
            {
              if (v33 >= *(v106 + 16))
              {
                goto LABEL_160;
              }

              v44 = *(v35 + 32);
            }

            v94 = v43;
            *(v43 + 32) = v44;

            break;
          }

          v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v3)
          {
            goto LABEL_62;
          }

          v16 = __OFADD__(v33++, 1);
          v7 = v34;
          if (v16)
          {
            goto LABEL_149;
          }
        }

        if (v104)
        {
          v45 = 0;
          v97 = MEMORY[0x277D84F90];
LABEL_71:
          v46 = (a2 + 32 + 16 * v45);
          v48 = *v46;
          v47 = v46[1];
          if (v115 >> 62)
          {
            v49 = __CocoaSet.count.getter();
          }

          else
          {
            v49 = *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v102 = v45 + 1;
          v109 = v115 & 0xC000000000000001;

          v50 = 0;
          while (1)
          {
            if (v49 == v50)
            {

              goto LABEL_70;
            }

            v51 = v115 + 8 * v50;
            if (v109)
            {
              v52 = MEMORY[0x24C1FC540](v50, v115);
            }

            else
            {
              if (v50 >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
LABEL_143:
                __break(1u);
LABEL_144:
                __break(1u);
LABEL_145:
                __break(1u);
LABEL_146:
                __break(1u);
LABEL_147:
                __break(1u);
LABEL_148:
                __break(1u);
LABEL_149:
                __break(1u);
LABEL_150:
                __break(1u);
LABEL_151:
                __break(1u);
LABEL_152:
                result = __CocoaSet.count.getter();
                v4 = result;
                goto LABEL_3;
              }

              v52 = *(v51 + 32);
            }

            v53 = v52;
            v54 = [v52 identifier];
            v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v56 = v55;

            if (v3 == v48 && v56 == v47)
            {

              goto LABEL_92;
            }

            v58 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v58)
            {

LABEL_92:

              if (v109)
              {
                MEMORY[0x24C1FC540](v50, v115);
              }

              else
              {
                if (v50 >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_150;
                }

                v63 = *(v51 + 32);
              }

              MEMORY[0x24C1FB090]();
              if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
              }

              specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              v97 = v113;

LABEL_70:
              v45 = v102;
              if (v102 == v104)
              {
                goto LABEL_101;
              }

              goto LABEL_71;
            }

            type metadata accessor for DOCFileProviderSource();
            v59 = swift_dynamicCastClass();
            if (v59 && (v60 = *(v59 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) != 0)
            {
              v61 = v60;
              v62 = MEMORY[0x24C1FAD20](v48, v47);
              v3 = FPProviderDomain.matches(iCloudSourceIdentifier:)(v62);

              if (v3)
              {
                goto LABEL_92;
              }
            }

            else
            {
            }

            v16 = __OFADD__(v50++, 1);
            if (v16)
            {
              goto LABEL_144;
            }
          }
        }

        v97 = MEMORY[0x277D84F90];
LABEL_101:
        v111 = v97;

        specialized Array.append<A>(contentsOf:)(v98);
        specialized Array.append<A>(contentsOf:)(v94);
        specialized Array.append<A>(contentsOf:)(v95);
        if (v104)
        {
          v101 = a2 + 32;
          a2 = v111;

          v64 = 0;
          v99 = MEMORY[0x277D84F90];
          while (2)
          {
            v65 = (v101 + 16 * v64);
            v3 = *v65;
            v66 = v65[1];
            if (v114 >> 62)
            {
              v67 = __CocoaSet.count.getter();
            }

            else
            {
              v67 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v103 = v64 + 1;
            v68 = v114 & 0xC000000000000001;

            v69 = 0;
            while (1)
            {
              if (v67 == v69)
              {

                goto LABEL_104;
              }

              v70 = v114 + 8 * v69;
              if (v68)
              {
                v71 = MEMORY[0x24C1FC540](v69, v114);
              }

              else
              {
                if (v69 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_143;
                }

                v71 = *(v70 + 32);
              }

              v72 = v71;
              v73 = [v71 identifier];
              v74 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v76 = v75;

              if (v74 == v3 && v76 == v66)
              {
                break;
              }

              v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v78)
              {
                goto LABEL_122;
              }

              v16 = __OFADD__(v69++, 1);
              if (v16)
              {
                goto LABEL_145;
              }
            }

LABEL_122:

            if (v68)
            {
              MEMORY[0x24C1FC540](v69, v114);
            }

            else
            {
              if (v69 >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_151;
              }

              v79 = *(v70 + 32);
            }

            MEMORY[0x24C1FB090]();
            if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v99 = v112;

LABEL_104:
            v64 = v103;
            if (v103 != v104)
            {
              continue;
            }

            break;
          }

          v80 = v111;

          v81 = v99;
        }

        else
        {
          v81 = MEMORY[0x277D84F90];
          v80 = v111;
        }

        v110 = v81;

        specialized Array.append<A>(contentsOf:)(v82);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtGMd, &_ss23_ContiguousArrayStorageCySo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtGMR);
        inited = swift_initStackObject();
        *(inited + 16) = v93;
        *(inited + 32) = 0;
        *(inited + 40) = v80;
        *(inited + 48) = 1;
        *(inited + 56) = v110;
        v84 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGTt0g5Tf4g_n(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtMd, &_sSo13DOCSourceTypeV_SaySo17DOCDocumentSourceCGtMR);
        swift_arrayDestroy();

        return v84;
      }
    }

    __break(1u);
    goto LABEL_157;
  }

  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
  return result;
}

BOOL specialized DOCAppProtectionManager.hostAppCanSee(source:)(void *a1)
{
  if (![objc_opt_self() protectedAppsEnabled])
  {
    return 1;
  }

  v2 = [a1 identifier];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v3._countAndFlagsBits = 0x6C7070612E6D6F63;
  v3._object = 0xE900000000000065;
  LOBYTE(v2) = String.hasPrefix(_:)(v3);

  if (v2)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.UI);
    v5 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v49[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BCED70, v49);
    *(v8 + 12) = 2080;
    v10 = [v5 identifier];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v49);

    *(v8 + 14) = v14;
    v15 = "%s [PROTECTED APPS] Source is internal and can't be hidden, not filtering out: %s";
LABEL_12:
    _os_log_impl(&dword_2493AC000, v6, v7, v15, v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v9, -1, -1);
    MEMORY[0x24C1FE850](v8, -1, -1);
LABEL_13:

    return 1;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
  v16 = [a1 identifier];
  v25 = specialized @nonobjc FPProviderDomain.__allocating_init(id:cachePolicy:)(v16, 2);

  if (!v25)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.UI);
    v18 = a1;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_13;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v49[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BCED70, v49);
    *(v8 + 12) = 2080;
    v19 = [v18 identifier];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, v49);

    *(v8 + 14) = v23;
    v15 = "%s [PROTECTED APPS] Could not get FPProviderDomain from source identifier: %s";
    goto LABEL_12;
  }

  v26 = [objc_opt_self() sharedManager];
  v27 = [v25 topLevelBundleIdentifier];
  if (!v27)
  {
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = MEMORY[0x24C1FAD20](v28);
  }

  v29 = [v26 hostAppCanNavigateToAppBundleID_];

  v30 = v29 == 0;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.UI);
  v32 = a1;
  v33 = v25;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = v29 == 0;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49[0] = v38;
    *v37 = 136315906;
    *(v37 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000016, 0x8000000249BCED70, v49);
    *(v37 + 12) = 1024;
    *(v37 + 14) = v36;
    *(v37 + 18) = 2080;
    v39 = [v32 identifier];
    v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v42 = v41;

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v49);

    *(v37 + 20) = v43;
    *(v37 + 28) = 2080;
    v44 = [v33 topLevelBundleIdentifier];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v49);

    *(v37 + 30) = v48;
    _os_log_impl(&dword_2493AC000, v34, v35, "%s [PROTECTED APPS] Host app should see: %{BOOL}d source identifier: %s containing app bundle identifier: %s", v37, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v38, -1, -1);
    MEMORY[0x24C1FE850](v37, -1, -1);
  }

  else
  {
  }

  return v30;
}

uint64_t outlined init with take of (key: UUID, value: CGRect)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV3key_So6CGRectV5valuetSgMd, &_s10Foundation4UUIDV3key_So6CGRectV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

id DOCDocumentSourceIdentifierICloud_Current()
{
  v0 = FPIsCloudDocsWithFPFSEnabled();
  v1 = MEMORY[0x277D060C8];
  if (!v0)
  {
    v1 = MEMORY[0x277D060D8];
  }

  v2 = *v1;

  return v2;
}

id DOCDocumentSourceIdentifierICloud_CurrentManaged()
{
  v0 = FPIsCloudDocsWithFPFSEnabled();
  v1 = MEMORY[0x277D060D0];
  if (!v0)
  {
    v1 = MEMORY[0x277D060E0];
  }

  v2 = *v1;

  return v2;
}

UIImage_optional __swiftcall UIImage.init(allowPrivateSystemImage:systemName:withConfiguration:)(Swift::Bool allowPrivateSystemImage, Swift::String systemName, UIImageConfiguration_optional withConfiguration)
{
  isa = withConfiguration.value.super.isa;
  object = systemName._object;
  countAndFlagsBits = systemName._countAndFlagsBits;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);

  if (allowPrivateSystemImage)
  {
    v9 = [ObjCClassFromMetadata _systemImageNamed_withConfiguration_];
  }

  else
  {
    v9 = [ObjCClassFromMetadata systemImageNamed:v8 withConfiguration:isa];
  }

  v10 = v9;

  if (v10)
  {
  }

  v12 = v10;
  result.value.super.isa = v12;
  result.is_nil = v11;
  return result;
}

void thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t UIImage.isEmpty.getter()
{
  v1 = [v0 CGImage];
  if (!v1)
  {
    v1 = [v0 CIImage];
    if (!v1)
    {
      return 1;
    }
  }

  return 0;
}

UIImage __swiftcall UIImage.maskImage()()
{
  v1 = v0;
  v2 = [v0 CGImage];
  if (v2)
  {
    v3 = v2;
    if ([v1 renderingMode] != 2)
    {
      v17 = v1;

      return v17;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIGraphicsImageRendererFormat, 0x277D75568);
    v4 = [swift_getObjCClassFromMetadata() defaultFormat];
    [v4 setPreferredRange_];
    [v1 size];
    v6 = v5;
    v8 = v7;
    v9 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v4 format:{v5, v7}];
    v10 = swift_allocObject();
    v10[2] = v6;
    v10[3] = v8;
    *(v10 + 4) = v3;
    v11 = swift_allocObject();
    *(v11 + 16) = partial apply for closure #1 in UIImage.maskImage();
    *(v11 + 24) = v10;
    aBlock[4] = partial apply for closure #1 in DOCHierarchyController.getSaveLocationForCurrentBrowserOrDefaultSaveLocation(completionBlock:);
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    aBlock[3] = &block_descriptor_15;
    v12 = _Block_copy(aBlock);
    v13 = v3;

    v14 = [v9 imageWithActions_];
    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      v15 = [v14 imageWithRenderingMode_];

      return v15;
    }

    __break(1u);
  }

  result.super.isa = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void closure #1 in UIImage.maskImage()(void *a1, CGImage *a2, CGFloat a3, CGFloat a4)
{
  c = [a1 CGContext];
  CGContextSetBlendMode(c, kCGBlendModeCopy);
  CGContextTranslateCTM(c, 0.0, a4);
  CGContextScaleCTM(c, 1.0, -1.0);
  v9.origin.x = 0.0;
  v9.origin.y = 0.0;
  v9.size.width = a3;
  v9.size.height = a4;
  CGContextRef.draw(_:in:byTiling:)(a2, v9, 0);
}

UIImage *static UIImage.doc_takeSnapshot(of:)(void *a1)
{
  [a1 bounds];
  v9.width = v2;
  v9.height = v3;
  UIGraphicsBeginImageContextWithOptions(v9, 0, 0.0);
  v4 = UIGraphicsGetCurrentContext();
  if (v4)
  {
    v5 = v4;
    v6 = [a1 layer];
    [v6 renderInContext_];
  }

  v7 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  return v7;
}

id specialized static UIImageSymbolConfiguration.applying(_:)(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
LABEL_33:
    v19 = [objc_opt_self() configurationWithScale_];

    return v19;
  }

  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_40;
  }

LABEL_4:
  if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    while (1)
    {
      v3 = a1;
      v4 = v1 & 0xC000000000000001;
      if ((v1 & 0xC000000000000001) == 0)
      {
        goto LABEL_4;
      }

LABEL_40:
      result = MEMORY[0x24C1FC540](0, v1);
      v6 = result;
      if (v3 < 0)
      {
        goto LABEL_41;
      }

LABEL_6:
      if (v2)
      {
        a1 = __CocoaSet.count.getter();
        if (a1 < 1)
        {
          goto LABEL_37;
        }

        a1 = __CocoaSet.count.getter();
      }

      else
      {
        a1 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a1)
        {
          goto LABEL_37;
        }
      }

      if (a1 < v3)
      {
        goto LABEL_38;
      }

      if (!v4 || v3 == 1)
      {

        if (!v2)
        {
          goto LABEL_17;
        }
      }

      else
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIImageSymbolConfiguration, 0x277D755D0);

        v7 = 1;
        do
        {
          v8 = v7 + 1;
          _ArrayBuffer._typeCheckSlowPath(_:)(v7);
          v7 = v8;
        }

        while (v3 != v8);
        if (!v2)
        {
LABEL_17:
          v1 &= 0xFFFFFFFFFFFFFF8uLL;
          v9 = v1 + 32;
          v10 = 1;
          v2 = v3 - 1;
          v11 = v3 <= 1;
          if (v3 == 1)
          {
            goto LABEL_27;
          }

          goto LABEL_18;
        }
      }

      v1 = _CocoaArrayWrapper.subscript.getter();
      v3 = v18 >> 1;
      v2 = (v18 >> 1) - v10;
      v11 = (v18 >> 1) <= v10;
      if (v18 >> 1 == v10)
      {
LABEL_27:
        v17 = v6;
LABEL_28:
        swift_unknownObjectRelease();
        return v17;
      }

LABEL_18:
      if (v11)
      {
        v12 = v10;
      }

      else
      {
        v12 = v3;
      }

      v13 = v12 - v10;
      v14 = (v9 + 8 * v10);
      while (v13)
      {
        v15 = *v14++;
        v16 = v15;
        v17 = [v6 configurationByApplyingConfiguration_];

        --v13;
        v6 = v17;
        if (!--v2)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      if (__CocoaSet.count.getter() < 1)
      {
        goto LABEL_33;
      }

      a1 = __CocoaSet.count.getter();
      if (!a1)
      {
        __break(1u);
        goto LABEL_33;
      }
    }
  }

  result = *(v1 + 32);
  v6 = result;
  if ((v3 & 0x8000000000000000) == 0)
  {
    goto LABEL_6;
  }

LABEL_41:
  __break(1u);
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  return specialized Collection.first.getter(a1, &lazy cache variable for type metadata for UIPress, 0x277D758B8);
}

{
  return specialized Collection.first.getter(a1, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
}

{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);

  return v4;
}

{
  return specialized Collection.first.getter(a1, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
}

void *specialized Collection.first.getter(uint64_t a1)
{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = specialized Set.subscript.getter(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

{
  v2 = _HashTable.startBucket.getter();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return specialized Dictionary.subscript.getter(&v4, v2, *(a1 + 36), 0, a1);
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

id specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = _HashTable.startBucket.getter();
  if (v4 == 1 << *(a1 + 32))
  {
    result = 0;
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    result = specialized Dictionary.subscript.getter(v7, v4, *(a1 + 36), 0, a1);
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    *(a2 + 32) = v8;
  }

  *(a2 + 40) = result;
  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.startIndex.getter();
    v9 = v8;
    v10 = __CocoaSet.endIndex.getter();
    v12 = v11;
    v13 = MEMORY[0x24C1FC360](v7, v9, v10, v11);
    outlined consume of Set<UIPress>.Index._Variant(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      outlined consume of Set<UIPress>.Index._Variant(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = _HashTable.startBucket.getter();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  outlined consume of Set<UIPress>.Index._Variant(v7, v9, v6 != 0);
  return v16;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LayoutSubviews();
  lazy protocol witness table accessor for type LayoutSubviews and conformance LayoutSubviews();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v9[4] == v9[0])
  {
    v2 = type metadata accessor for LayoutSubview();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = dispatch thunk of Collection.subscript.read();
    v6 = v5;
    v7 = type metadata accessor for LayoutSubview();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}