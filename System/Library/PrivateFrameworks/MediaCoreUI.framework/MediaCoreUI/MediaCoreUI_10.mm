double sub_1C5A337A8()
{
  swift_getKeyPath("@J\\&");
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  return *(v0 + 80);
}

void sub_1C5A33848(double a1)
{
  if (*(v1 + 80) == a1)
  {
    *(v1 + 80) = a1;
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v2 = sub_1C5BC7D64();
    __swift_project_value_buffer(v2, qword_1EDA5DA78);

    v6 = sub_1C5BC7D44();
    v3 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v6, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      swift_getKeyPath("@J\\&");
      sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
      sub_1C5BC7B74();

      *(v4 + 4) = *(v1 + 80);
      _os_log_impl(&dword_1C5922000, v6, v3, "WindowProperties.toolbarHeight updated to %f", v4, 0xCu);
      MEMORY[0x1C69510F0](v4, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    KeyPath = swift_getKeyPath("@J\\&");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
    sub_1C5BC7B64();
  }
}

void sub_1C5A33AD8(uint64_t a1, double a2)
{
  *(a1 + 80) = a2;
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C5BC7D64();
  __swift_project_value_buffer(v3, qword_1EDA5DA78);

  v4 = sub_1C5BC7D44();
  v5 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    swift_getKeyPath("@J\\&");
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
    sub_1C5BC7B74();

    *(v6 + 4) = *(a1 + 80);
    _os_log_impl(&dword_1C5922000, v4, v5, "WindowProperties.toolbarHeight updated to %f", v6, 0xCu);
    MEMORY[0x1C69510F0](v6, -1, -1);
  }
}

__n128 sub_1C5A33C5C@<Q0>(uint64_t a1@<X8>)
{
  swift_getKeyPath(byte_1C5BDAFB0);
  sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  result = *(v1 + 104);
  v4 = *(v1 + 136);
  *(a1 + 32) = *(v1 + 120);
  *(a1 + 48) = v4;
  *(a1 + 57) = *(v1 + 145);
  *a1 = *(v1 + 88);
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1C5A33D1C(__int128 *a1)
{
  v2 = a1[2];
  v17[0] = a1[3];
  *(v17 + 9) = *(a1 + 57);
  v3 = *a1;
  v15 = a1[1];
  v16 = v2;
  v14 = v3;
  v4 = *(v1 + 104);
  v5 = *(v1 + 136);
  v18[2] = *(v1 + 120);
  v19[0] = v5;
  *(v19 + 9) = *(v1 + 145);
  v18[0] = *(v1 + 88);
  v18[1] = v4;
  if (sub_1C592DEB4(v18, &v14))
  {
    KeyPath = swift_getKeyPath(byte_1C5BDAFB0);
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v12[0] = v1;
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
    sub_1C5BC7B64();
  }

  else
  {
    v8 = *(v1 + 104);
    v9 = *(v1 + 136);
    v12[2] = *(v1 + 120);
    v13[0] = v9;
    *(v13 + 9) = *(v1 + 145);
    v10 = *(v1 + 88);
    v12[1] = v8;
    v12[0] = v10;
    v11 = v14;
    *(v1 + 104) = v15;
    *(v1 + 120) = v16;
    *(v1 + 136) = v17[0];
    *(v1 + 145) = *(v17 + 9);
    *(v1 + 88) = v11;
    sub_1C592DF7C(v12);
  }

  return result;
}

__n128 sub_1C5A33EC4(uint64_t a1, __int128 *a2)
{
  v3 = a2[2];
  v18[0] = a2[3];
  *(v18 + 9) = *(a2 + 57);
  v4 = *a2;
  v16 = a2[1];
  v17 = v3;
  v15 = v4;
  v5 = *(a1 + 104);
  v6 = *(a1 + 136);
  v19[2] = *(a1 + 120);
  v20[0] = v6;
  *(v20 + 9) = *(a1 + 145);
  v19[0] = *(a1 + 88);
  v19[1] = v5;
  if (sub_1C592DEB4(v19, &v15))
  {
    KeyPath = swift_getKeyPath(byte_1C5BDAFB0);
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v13[0] = a1;
    sub_1C5937E40(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
    sub_1C5BC7B64();
  }

  else
  {
    v9 = *(a1 + 104);
    v10 = *(a1 + 136);
    v13[2] = *(a1 + 120);
    v14[0] = v10;
    *(v14 + 9) = *(a1 + 145);
    v11 = *(a1 + 88);
    v13[1] = v9;
    v13[0] = v11;
    v12 = v15;
    *(a1 + 104) = v16;
    *(a1 + 120) = v17;
    *(a1 + 136) = v18[0];
    *(a1 + 145) = *(v18 + 9);
    *(a1 + 88) = v12;
    sub_1C592DF7C(v13);
  }

  return result;
}

uint64_t sub_1C5A34070()
{

  v1 = OBJC_IVAR____TtC11MediaCoreUI16WindowProperties___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A34114()
{
  if (qword_1EDA45F90 != -1)
  {
    swift_once();
  }

  qword_1EC1943A8 = qword_1EDA5DA40;
}

uint64_t NowPlayingMiniPlayerPosition.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t (*MCUINamespace<A>.miniPlayerPosition.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_1C593F648();
  sub_1C5BC8F44();
  return sub_1C5A34264;
}

unint64_t sub_1C5A342A0()
{
  result = qword_1EDA47968;
  if (!qword_1EDA47968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47968);
  }

  return result;
}

uint64_t sub_1C5A3430C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A342A0();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1C5A3437C()
{
  result = qword_1EDA4E690;
  if (!qword_1EDA4E690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC1961C0, &unk_1C5BD76A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4E690);
  }

  return result;
}

void sub_1C5A344F8(void *a1)
{
  v2 = OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView;
  v6 = *&v1[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView];
  *&v1[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView] = a1;
  v3 = a1;
  [v6 removeFromSuperview];
  v4 = *&v1[v2];
  if (v4)
  {
    v5 = v4;
    [v1 addSubview_];
  }
}

char *sub_1C5A34590()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer] = 0;
  v2 = &v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets];
  v3 = *(MEMORY[0x1E69DDCE0] + 16);
  *v2 = *MEMORY[0x1E69DDCE0];
  v2[1] = v3;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView] = 0;
  v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows] = 0;
  v4 = &v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds];
  *v4 = 0u;
  v4[1] = 0u;
  v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenContentWidthOverflows] = 0;
  v17.receiver = v0;
  v17.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v17, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = objc_allocWithZone(MEMORY[0x1E69DD298]);
  v7 = v5;
  v8 = [v6 init];
  v9 = v7;
  [v9 addSubview_];
  v10 = *&v9[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView];
  *&v9[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView] = v8;
  v11 = v8;

  v12 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  v13 = *&v9[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer];
  *&v9[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer] = v12;
  v14 = v12;

  v15 = [v9 layer];
  [v15 addSublayer_];

  [v9 setInsetsLayoutMarginsFromSafeArea_];
  return v9;
}

void sub_1C5A347A4()
{
  v37.receiver = v0;
  v37.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v37, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds];
  v2 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds];
  v3 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds + 8];
  v4 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds + 16];
  v5 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds + 24];
  [v0 bounds];
  v41.origin.x = v6;
  v41.origin.y = v7;
  v41.size.width = v8;
  v41.size.height = v9;
  v40.origin.x = v2;
  v40.origin.y = v3;
  v40.size.width = v4;
  v40.size.height = v5;
  v10 = CGRectEqualToRect(v40, v41);
  [v0 bounds];
  *v1 = v11;
  *(v1 + 1) = v12;
  *(v1 + 2) = v13;
  *(v1 + 3) = v14;
  v15 = v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenContentWidthOverflows];
  v16 = OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows;
  v17 = v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows];
  v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenContentWidthOverflows] = v17;
  v18 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView];
  if (v18)
  {
    v19 = v18;
    [v0 bounds];
    [v19 setFrame_];
  }

  if ((_UISolariumEnabled() & 1) == 0)
  {
    sub_1C5A34990(v0[v16]);
    if (!v10 || v15 != v17)
    {
      v25 = OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView;
      v26 = *&v0[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView];
      if (v26)
      {
        v27 = v26;
        [v0 bounds];
        [v27 setFrame_];

        v28 = *&v0[v25];
        if (v28)
        {
          v29 = v0[v16];
          v30 = v28;
          if (v29)
          {
            v31 = 0;
          }

          else
          {
            [v0 bounds];
            v38[0] = v32;
            v38[1] = v33;
            v38[2] = v34;
            v38[3] = v35;
            v39 = 0;
            sub_1C5A35164(v38);
            v31 = v36;
          }

          [v30 setEffect_];
        }
      }
    }
  }
}

void sub_1C5A34990(char a1)
{
  v2 = v1;
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceStyle];

  if (v5 == 2)
  {
    v6 = [objc_opt_self() blackColor];
    v29 = [v6 colorWithAlphaComponent_];
  }

  else
  {
    v29 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.901960784 green:0.901960784 blue:0.901960784 alpha:0.8];
  }

  v7 = objc_opt_self();
  [v7 begin];
  [v7 setDisableActions_];
  v9 = OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer;
  v10 = *&v2[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer];
  if (v10)
  {
    LODWORD(v8) = 1.0;
    if (a1)
    {
      *&v8 = 0.0;
    }

    [v10 setOpacity_];
    v11 = *&v2[v9];
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_1C5BD21E0;
      v13 = v11;
      v14 = [v29 colorWithAlphaComponent_];
      v15 = [v14 CGColor];

      type metadata accessor for CGColor(0);
      v17 = v16;
      *(v12 + 56) = v16;
      *(v12 + 32) = v15;
      v18 = [v29 CGColor];
      *(v12 + 88) = v17;
      *(v12 + 64) = v18;
      v19 = [v29 CGColor];
      *(v12 + 120) = v17;
      *(v12 + 96) = v19;
      v20 = sub_1C5BCB044();

      [v13 setColors_];

      v21 = *&v2[v9];
      if (v21)
      {
        v22 = v21;
        [v2 bounds];
        [v22 setFrame_];
      }
    }
  }

  v23 = *&v2[OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView];
  if (v23)
  {
    v24 = *&v2[v9];
    if (v24)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191918, &unk_1C5BDB0B0);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1C5BD31B0;
      sub_1C59B1CD0();
      v26 = v23;
      v27 = v24;
      *(v25 + 32) = sub_1C5BCB724();
      [v26 frame];
      CGRectGetHeight(v31);
      [v2 bounds];
      *(v25 + 40) = sub_1C5BC7BD4();
      *(v25 + 48) = sub_1C5BCB724();
      v28 = sub_1C5BCB044();

      [v27 setLocations_];
    }
  }

  [v7 commit];
}

void sub_1C5A34D74(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC197420, &qword_1C5BE4CB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C5BD4D40;
  v12 = objc_opt_self();
  v13 = [v12 blackColor];
  v14 = [v13 colorWithAlphaComponent_];

  v15 = [v14 CGColor];
  type metadata accessor for CGColor(0);
  v17 = v16;
  *(v11 + 56) = v16;
  *(v11 + 32) = v15;
  v18 = [v12 blackColor];
  v19 = [v18 CGColor];

  *(v11 + 88) = v17;
  *(v11 + 64) = v19;
  v20 = sub_1C5BCB044();

  [v10 setColors_];

  [v10 setStartPoint_];
  [v10 setStartPoint_];
  [v10 setFrame_];
  v21 = [a1 CGContext];
  [v10 renderInContext_];
}

void sub_1C5A34FA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_1C5A3509C()
{
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_gradientLayer) = 0;
  v1 = (v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentInsets);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentView) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_contentViewWidthOverflows) = 0;
  v3 = (v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenBounds);
  *v3 = 0u;
  v3[1] = 0u;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI23MiniPlayerContainerView_lastSeenContentWidthOverflows) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

void sub_1C5A35164(uint64_t a1)
{
  if ((*(a1 + 32) & 1) != 0 || (v1 = *a1, v2 = *(a1 + 8), v3 = *(a1 + 16), v4 = *(a1 + 24), v18.origin.x = *a1, v18.origin.y = v2, v18.size.width = v3, v18.size.height = v4, CGRectIsEmpty(v18)))
  {
    v5 = [objc_opt_self() effectWithBlurRadius_];
  }

  else
  {
    v19.origin.x = v1;
    v19.origin.y = v2;
    v19.size.width = v3;
    v19.size.height = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v7 = swift_allocObject();
    v7[2] = v1;
    v7[3] = v2;
    v7[4] = v3;
    v7[5] = v4;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1C5A353DC;
    *(v8 + 24) = v7;
    v17[4] = sub_1C5A353E8;
    v17[5] = v8;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1C5A34FA0;
    v17[3] = &block_descriptor_7;
    v9 = _Block_copy(v17);

    v10 = [v6 imageWithActions_];
    _Block_release(v9);
    LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

    if (v9)
    {
      __break(1u);
    }

    else
    {
      [v10 size];
      v12 = v11;
      v14 = v13;
      v15 = objc_opt_self();
      if (v12 == 0.0 && v14 == 0.0)
      {
        v16 = [v15 effectWithBlurRadius_];
      }

      else
      {
        v16 = [v15 effectWithVariableBlurRadius:v10 imageMask:18.0];
      }

      v16;
    }
  }
}

uint64_t sub_1C5A35410@<X0>(const void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27[1] = a5;
  v9 = sub_1C5BC8F34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v40, a1, sizeof(v40));
  v13 = *(a2 + 32);
  v43 = v13;
  v44 = *(a2 + 40);
  if (v44 == 1)
  {
    v39 = v13;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v43, &qword_1EC194408, &qword_1C5BDB3B8);
    (*(v10 + 8))(v12, v9);
    v13 = v39;
  }

  swift_getKeyPath("8F\\&");
  v42[0] = v13;
  sub_1C5937E88(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  sub_1C5BCAA54();
  _s11LeadingViewVMa(255, a3, a4, v15);
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  _s21MiniPlayerContentViewV10CenterViewVMa(255, a3, a4, v16);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0, &unk_1C5BDB370);
  sub_1C5BC8AB4();
  _s12TrailingViewVMa(255, a3, a4, v17);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v19 = MEMORY[0x1E697E5D8];
  v35 = WitnessTable;
  v36 = MEMORY[0x1E697E5D8];
  v33 = swift_getWitnessTable();
  v34 = v19;
  v20 = swift_getWitnessTable();
  v21 = MEMORY[0x1E697E040];
  v31 = v20;
  v32 = MEMORY[0x1E697E040];
  v22 = swift_getWitnessTable();
  sub_1C5BCA234();
  memcpy(v38, v41, sizeof(v38));
  v23 = sub_1C5BC8AB4();
  v29 = v22;
  v30 = v21;
  v24 = swift_getWitnessTable();
  sub_1C593EDC0(v38, v23, v24);
  memcpy(v37, v38, sizeof(v37));
  v25 = *(*(v23 - 8) + 8);
  v25(v37, v23);
  memcpy(v28, v42, sizeof(v28));
  sub_1C593EDC0(v28, v23, v24);
  memcpy(v38, v28, sizeof(v38));
  return (v25)(v38, v23);
}

uint64_t sub_1C5A35928@<X0>(uint64_t a1@<X8>)
{
  _s12PresentationCMa(0);
  sub_1C5937E88(&qword_1EDA4AF70, _s12PresentationCMa, &unk_1C5BD2B30);
  *a1 = sub_1C5BC8324();
  *(a1 + 8) = v2 & 1;
  result = swift_getKeyPath(byte_1C5BDB140);
  *(a1 + 16) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_1C5A359B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = *(a1 + 24);
  v58 = *(a1 + 16);
  v66[0] = v58;
  v66[1] = &type metadata for NowPlayingMiniPlayerAccessoryForegroundStyle.SecondaryMobile;
  v67 = v3;
  v68 = sub_1C5A365E8();
  v56 = v68;
  v4 = _s23MiniPlayerAccessoryViewVMa(0, v66);
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v52 - v5;
  sub_1C5BC97C4();
  v6 = sub_1C5BC8AB4();
  v62 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v52 - v9;
  v10 = sub_1C5BC8F34();
  v55 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  if (*(v2 + 24) != 1)
  {
    v54 = v14;

    sub_1C5BCB4E4();
    v20 = sub_1C5BC9844();
    v53 = v10;
    v21 = v18;
    v22 = v3;
    v23 = v16;
    v24 = v6;
    v25 = v4;
    v26 = v17;
    v27 = v20;
    sub_1C5BC7C54();

    v17 = v26;
    v4 = v25;
    v6 = v24;
    v16 = v23;
    v3 = v22;
    v18 = v21;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v28 = sub_1C5942458(v19, 0);
    (*(v55 + 8))(v12, v53, v28);
    v14 = v54;
    LOBYTE(v19) = v66[0];
  }

  if (v19 != 3 && v19)
  {
    if (qword_1EC1906C8 != -1)
    {
      v50 = v14;
      swift_once();
      v14 = v50;
    }

    v29 = qword_1EC1A6AC8;
  }

  else
  {
    if (qword_1EDA47CC0 != -1)
    {
      v49 = v14;
      swift_once();
      v14 = v49;
    }

    v29 = qword_1EDA5DAE8;
  }

  v30 = __swift_project_value_buffer(v14, v29);
  sub_1C5948550(v30, v16);
  v31 = v58;
  sub_1C59498C4(v17, v18, v58, *(v3 + 8));
  v32 = *(v3 + 400);
  swift_unknownObjectRetain();
  v32(v66, v31, v3);
  swift_unknownObjectRelease();
  v33 = v67;
  v34 = v68;

  v35 = *(v16 + 9);
  v36 = sub_1C5BCAA64();
  v38 = v37;
  v39 = sub_1C5BC8FC4();
  v51 = v31;
  v40 = v57;
  sub_1C594EC50(v33, v34, v41, v39, v35, 0, v36, v38, v57, 0.0, v51, &type metadata for NowPlayingMiniPlayerAccessoryForegroundStyle.SecondaryMobile, v3, v56);
  WitnessTable = swift_getWitnessTable();
  v43 = v60;
  sub_1C5BCA184();
  (*(v59 + 8))(v40, v4);
  sub_1C594A4A4(v16);
  v44 = sub_1C5937E88(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v64 = WitnessTable;
  v65 = v44;
  v45 = swift_getWitnessTable();
  v46 = v61;
  sub_1C593EDC0(v43, v6, v45);
  v47 = *(v62 + 8);
  v47(v43, v6);
  sub_1C593EDC0(v46, v6, v45);
  return (v47)(v46, v6);
}

uint64_t sub_1C5A35F7C()
{
  v0 = sub_1C5BCA5D4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NowPlayingMiniPlayerSpecs(0);
  __swift_allocate_value_buffer(v4, qword_1EC1A6AC8);
  v5 = __swift_project_value_buffer(v4, qword_1EC1A6AC8);
  (*(v1 + 104))(v3, *MEMORY[0x1E69816C0], v0);
  sub_1C5BC9924();
  sub_1C5BC9994();
  v6 = sub_1C5BC99E4();

  __asm { FMOV            V1.2D, #8.0 }

  *v5 = xmmword_1C5BDB100;
  *(v5 + 16) = _Q1;
  *(v5 + 32) = xmmword_1C5BDB110;
  *(v5 + 48) = xmmword_1C5BDB120;
  *(v5 + 64) = xmmword_1C5BDB130;
  *(v5 + 80) = 0x4048000000000000;
  result = (*(v1 + 32))(v5 + v4[12], v3, v0);
  *(v5 + v4[13]) = 0x4018000000000000;
  *(v5 + v4[14]) = v6;
  return result;
}

uint64_t type metadata accessor for NowPlayingMiniPlayerSpecs(uint64_t a1)
{
  result = qword_1EDA47CA8;
  if (!qword_1EDA47CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C5A361A0@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a5@<X8>)
{
  v5 = a3;
  if (*a2 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
    v5 = a3;
  }

  v7 = __swift_project_value_buffer(a1, v5);

  return sub_1C5948550(v7, a5);
}

uint64_t sub_1C5A36238(uint64_t a1)
{
  result = sub_1C5BCA5D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C5A362DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 57))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5A36338(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C5A3639C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929E0, &qword_1C5BDE810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A36418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BCA4C4();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194428, &qword_1C5BDB8D0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194430, &qword_1C5BDB8D8);
  *(a2 + *(result + 36)) = v4;
  return result;
}

__n128 sub_1C5A364B0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194418, &qword_1C5BDB8B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194420, &unk_1C5BDB8C0) + 36));
  __asm { FMOV            V0.2D, #1.0 }

  *v5 = result;
  v5[1].n128_u32[0] = 1051931443;
  return result;
}

uint64_t sub_1C5A3654C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1C5A365E8()
{
  result = qword_1EC194410;
  if (!qword_1EC194410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194410);
  }

  return result;
}

unint64_t sub_1C5A3663C()
{
  result = qword_1EDA472F8[0];
  if (!qword_1EDA472F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDA472F8);
  }

  return result;
}

unint64_t sub_1C5A36690()
{
  result = qword_1EDA4DA28;
  if (!qword_1EDA4DA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC193C10, &qword_1C5BDB690);
    sub_1C594CE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4DA28);
  }

  return result;
}

unint64_t sub_1C5A3677C()
{
  result = qword_1EC194438;
  if (!qword_1EC194438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194420, &unk_1C5BDB8C0);
    sub_1C5924F54(&qword_1EC194440, &qword_1EC194418, &qword_1C5BDB8B8, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC194448, &qword_1EC194450, &qword_1C5BDB8E0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194438);
  }

  return result;
}

unint64_t sub_1C5A36860()
{
  result = qword_1EDA465D0;
  if (!qword_1EDA465D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194430, &qword_1C5BDB8D8);
    sub_1C5924F54(&qword_1EDA46230, &qword_1EC194428, &qword_1C5BDB8D0, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040, &qword_1C5BD1F70, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA465D0);
  }

  return result;
}

void *sub_1C5A36950()
{
  sub_1C593FF58();

  return sub_1C5BC8F44();
}

void *sub_1C5A36998()
{
  sub_1C593FE54();

  return sub_1C5BC8F44();
}

uint64_t static NowPlayingHostedContentID.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C5BCBDE4();
  }
}

uint64_t NowPlayingHostedContentID.hashValue.getter()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A36A64()
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A36AB8(uint64_t a1)
{
  sub_1C5BCBF54();
  sub_1C5BCAF04();
  return sub_1C5BCBF94();
}

uint64_t ContentLookupItem<>.init(_:hostedContent:)@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7 = a1[1];
  *a5 = *a1;
  a5[1] = v7;
  v9[0] = &type metadata for NowPlayingHostedContentID;
  v9[1] = a3;
  v9[2] = sub_1C5A36B84();
  v9[3] = a4;
  type metadata accessor for ContentLookupItem(0, v9);
  return a2();
}

unint64_t sub_1C5A36B84()
{
  result = qword_1EC194458;
  if (!qword_1EC194458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194458);
  }

  return result;
}

__n128 ContentLookupItem<>.init<A>(_:viewController:)@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a1[1];
  *a6 = *a1;
  *(a6 + 8) = v9;
  sub_1C5AD1894(a2, a3, v18);
  v11 = type metadata accessor for NowPlayingHostedViewControllerRepresentable(0, a4, a5, v10);
  WitnessTable = swift_getWitnessTable();
  sub_1C5AD1930(v18, v11, WitnessTable, v19);
  v13 = v19[9];
  *(a6 + 144) = v19[8];
  *(a6 + 160) = v13;
  *(a6 + 176) = v20;
  v14 = v19[5];
  *(a6 + 80) = v19[4];
  *(a6 + 96) = v14;
  v15 = v19[7];
  *(a6 + 112) = v19[6];
  *(a6 + 128) = v15;
  v16 = v19[1];
  *(a6 + 16) = v19[0];
  *(a6 + 32) = v16;
  result = v19[3];
  *(a6 + 48) = v19[2];
  *(a6 + 64) = result;
  return result;
}

void sub_1C5A36CB8(uint64_t a1)
{
  swift_getKeyPath("@?\\&");
  v17 = v1;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v4 = sub_1C5A39E2C(v3, a1);

  if ((v4 & 1) == 0)
  {
    sub_1C5A37D8C(0);
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v5 = sub_1C5BC7D64();
    __swift_project_value_buffer(v5, qword_1EDA5DA78);

    v6 = sub_1C5BC7D44();
    v7 = sub_1C5BCB4F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v17 = v9;
      *v8 = 136446466;
      sub_1C5A36B84();
      v10 = sub_1C5BCACC4();
      v12 = sub_1C592ADA8(v10, v11, &v17);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2082;
      swift_getKeyPath("@?\\&");
      sub_1C5BC7B74();

      v13 = sub_1C5BCACC4();
      v15 = v14;

      v16 = sub_1C592ADA8(v13, v15, &v17);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1C5922000, v6, v7, "Content availability changing from %{public}s to %{public}s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v9, -1, -1);
      MEMORY[0x1C69510F0](v8, -1, -1);
    }
  }
}

uint64_t sub_1C5A36F88()
{
  swift_getKeyPath("@?\\&");
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();
}

uint64_t sub_1C5A3702C(uint64_t a1)
{

  v4 = sub_1C5A39E2C(v3, a1);

  if (v4)
  {
    v5 = *(v1 + 16);
    *(v1 + 16) = a1;
    sub_1C5A36CB8(v5);
  }

  else
  {
    KeyPath = swift_getKeyPath("@?\\&");
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
    sub_1C5BC7B64();
  }
}

uint64_t sub_1C5A3718C@<X0>(void *a1@<X8>)
{
  swift_getKeyPath(byte_1C5BDBBC0);
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v3 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v3;
}

uint64_t sub_1C5A37238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;

  v6[0] = v3;
  v6[1] = v4;
  sub_1C5936674(v6);
}

uint64_t sub_1C5A37294(_OWORD *a1)
{
  *(v1 + 40) = *a1;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  swift_getKeyPath(byte_1C5BDBB68);

  sub_1C5BC7B74();

  sub_1C5BC7F34();
}

uint64_t sub_1C5A373E4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath(byte_1C5BDBB68);
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v3 = *(v1 + 48);
  *a1 = *(v1 + 40);
  a1[1] = v3;
}

uint64_t sub_1C5A37490(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);

  LOBYTE(v4) = sub_1C5934068(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath(byte_1C5BDBB68);
    MEMORY[0x1EEE9AC00](KeyPath);
    *&v8 = v1;
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
    sub_1C5BC7B64();
  }

  else
  {
    *&v8 = v3;
    *(&v8 + 1) = v2;
    return sub_1C5A37294(&v8);
  }
}

uint64_t sub_1C5A375D4()
{
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();
}

double sub_1C5A37678(uint64_t a1)
{
  if (*(v1 + 56) == a1)
  {
  }

  else
  {
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
    sub_1C5BC7B64();
  }

  return result;
}

void sub_1C5A377B0(uint64_t *a1@<X8>)
{
  swift_getKeyPath(byte_1C5BDBB90);
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v3 = v1[8];
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  sub_1C593E7D8(v3, v4, v5, v6);
}

void sub_1C5A37864(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  sub_1C593E7D8(v6, v7, v8, v9);
  v10 = sub_1C5A3A0AC(v6, v7, v8, v9, v2, v3, v4, v5);
  sub_1C593E820(v6, v7, v8, v9);
  if (v10)
  {
    KeyPath = swift_getKeyPath(byte_1C5BDBB90);
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
    sub_1C5BC7B64();
    sub_1C593E820(v2, v3, v4, v5);
  }

  else
  {
    v12 = v1[8];
    v13 = v1[9];
    v14 = v1[10];
    v15 = v1[11];
    v1[8] = v2;
    v1[9] = v3;
    v1[10] = v4;
    v1[11] = v5;

    sub_1C593E820(v12, v13, v14, v15);
  }
}

uint64_t sub_1C5A37A28()
{
  swift_getKeyPath(" ?\\&");
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  return swift_weakLoadStrong();
}

uint64_t sub_1C5A37ACC@<X0>(uint64_t *a2@<X8>)
{
  swift_getKeyPath(" ?\\&");
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  result = swift_weakLoadStrong();
  *a2 = result;
  return result;
}

double sub_1C5A37B78(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(" ?\\&");
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B64();

  return result;
}

void sub_1C5A37C44(uint64_t *a1, char a2)
{
  v4 = *a1;
  v5 = a1[1];
  swift_getKeyPath(byte_1C5BDBBC0);
  v7[0] = v2;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v6 = *(v2 + 32);
  if (!v6)
  {
    if (!v5)
    {

      return;
    }

    goto LABEL_8;
  }

  if (!v5)
  {
LABEL_8:

LABEL_9:
    v7[0] = v4;
    v7[1] = v5;

    sub_1C592F69C(v7);
    sub_1C5A37D8C(a2 & 1);
    return;
  }

  if ((*(v2 + 24) != v4 || v6 != v5) && (sub_1C5BCBDE4() & 1) == 0)
  {
    goto LABEL_9;
  }
}

void sub_1C5A37D8C(char a1)
{
  swift_getKeyPath(byte_1C5BDBBC0);
  v9 = v1;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v3 = v1[4];
  if (v3)
  {
    v4 = v1[3];
    swift_getKeyPath("@?\\&", v9);
    v9 = v1;

    sub_1C5BC7B74();

    v5 = v1[2];
    if (*(v5 + 16))
    {

      v6 = sub_1C596FBD8(v4, v3);
      if (v7)
      {
        v8 = *(*(v5 + 56) + v6);

        if (v8)
        {
          v9 = v4;
          v10 = v3;
          sub_1C5A37F00(&v9, a1 & 1);

          return;
        }
      }

      else
      {
      }
    }
  }

  v9 = 0;
  v10 = 0;
  sub_1C5A37F00(&v9, a1 & 1);
}

void sub_1C5A37F00(uint64_t *a1, char a2)
{
  v3 = v2;
  v6 = sub_1C5BCAC14();
  v75 = *(v6 - 8);
  v76 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v73 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1C5BCAC44();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v71 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C5BCAC04();
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v68 = (&v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v67 = (&v64 - v12);
  v78 = sub_1C5BCAC64();
  v70 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v66 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v64 - v15;
  v17 = *a1;
  v16 = a1[1];
  if (qword_1EDA469E0 != -1)
  {
    swift_once();
  }

  v18 = sub_1C5BC7D64();
  __swift_project_value_buffer(v18, qword_1EDA5DA78);

  v19 = sub_1C5BC7D44();
  v20 = sub_1C5BCB4F4();

  if (os_log_type_enabled(v19, v20))
  {
    v65 = v9;
    v21 = v17;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&aBlock = v23;
    *v22 = 136446722;
    swift_getKeyPath(byte_1C5BDBB68);
    v79 = v3;
    sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
    sub_1C5BC7B74();

    v24 = v3[6];
    if (v24)
    {
      v25 = v3[5];
    }

    else
    {

      v24 = 0xE300000000000000;
      v25 = 7104878;
    }

    v32 = sub_1C592ADA8(v25, v24, &aBlock);

    *(v22 + 4) = v32;
    *(v22 + 12) = 2082;
    if (v16)
    {
      v33 = v21;
    }

    else
    {
      v33 = 7104878;
    }

    if (v16)
    {
      v34 = v16;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    v35 = sub_1C592ADA8(v33, v34, &aBlock);
    v17 = v21;

    *(v22 + 14) = v35;
    *(v22 + 22) = 1024;
    *(v22 + 24) = a2 & 1;
    _os_log_impl(&dword_1C5922000, v19, v20, "Displayed content changing from %{public}s to %{public}s, animated=%{BOOL}d", v22, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1C69510F0](v23, -1, -1);
    MEMORY[0x1C69510F0](v22, -1, -1);

    v9 = v65;
    if (a2)
    {
LABEL_18:
      swift_getKeyPath(byte_1C5BDBB68);
      *&aBlock = v3;
      sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
      sub_1C5BC7B74();

      v36 = v3[6];
      if (v36)
      {
        if (v16)
        {
          if (v3[5] == v17 && v36 == v16 || (sub_1C5BCBDE4() & 1) != 0)
          {
            return;
          }

          goto LABEL_37;
        }
      }

      else if (!v16)
      {

        return;
      }

LABEL_37:
      swift_getKeyPath(byte_1C5BDBB90);
      *&aBlock = v3;
      sub_1C5BC7B74();

      if (v3[9] == 1)
      {
        swift_getKeyPath(byte_1C5BDBB68);
        *&aBlock = v3;
        sub_1C5BC7B74();

        v48 = v3[6];
        *&aBlock = v3[5];
        *(&aBlock + 1) = v48;
        v81 = v17;
        v82 = v16;

        sub_1C5A37864(&aBlock);
        sub_1C5929CA0();
        v65 = sub_1C5BCB5A4();
        v49 = v66;
        sub_1C5BCAC54();
        v50 = v67;
        *v67 = 600;
        v51 = v69;
        (*(v69 + 104))(v50, *MEMORY[0x1E69E7F38], v9);
        v52 = v68;
        sub_1C5B01834(v68);
        v53 = *(v51 + 8);
        v53(v50, v9);
        MEMORY[0x1C694EEB0](v49, v52);
        v53(v52, v9);
        v69 = *(v70 + 8);
        (v69)(v49, v78);
        v54 = swift_allocObject();
        v54[2] = v3;
        v54[3] = v17;
        v70 = v17;
        v54[4] = v16;
        v83 = sub_1C5A3A2AC;
        v84 = v54;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v81 = sub_1C596D09C;
        v82 = &block_descriptor_8;
        v55 = _Block_copy(&aBlock);

        v56 = v71;
        sub_1C5BCAC34();
        v79 = MEMORY[0x1E69E7CC0];
        sub_1C5933F04(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
        sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0, &unk_1C5BD76A0, MEMORY[0x1E69E6328]);
        v57 = v73;
        v58 = v76;
        sub_1C5BCB8F4();
        v59 = v77;
        v60 = v65;
        MEMORY[0x1C694F7C0](v77, v56, v57, v55);
        _Block_release(v55);

        (*(v75 + 8))(v57, v58);
        (*(v72 + 8))(v56, v74);
        (v69)(v59, v78);

        if (qword_1EC1905C8 != -1)
        {
          v61 = swift_once();
        }

        MEMORY[0x1EEE9AC00](v61);
        v62 = v70;
        *(&v64 - 4) = v3;
        *(&v64 - 3) = v62;
        *(&v64 - 2) = v16;

        sub_1C596D96C(v63, 1, sub_1C5A3A2B8, (&v64 - 6));
      }

      return;
    }
  }

  else
  {

    if (a2)
    {
      goto LABEL_18;
    }
  }

  v26 = qword_1EC1A6D00;
  if (qword_1EC1A6D00)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v28 = Strong;
      v29 = *(v26 + 40);
      ObjectType = swift_getObjectType();
      v31 = *(v29 + 24);

      v31(ObjectType, v29);
    }

    else
    {
    }
  }

  swift_getKeyPath(" ?\\&");
  *&aBlock = v3;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v37 = swift_weakLoadStrong();
  if (!v37)
  {
    __break(1u);
    return;
  }

  v38 = *(v37 + 104);

  KeyPath = swift_getKeyPath(byte_1C5BDBB20);
  v40 = swift_getKeyPath(byte_1C5BDBB48);
  sub_1C5971FE0(0, v38, KeyPath, v40);
  v41 = v3[5];
  v42 = v3[6];

  LOBYTE(v41) = sub_1C5934068(v41, v42, v17, v16);

  if (v41)
  {
    v43 = swift_getKeyPath(byte_1C5BDBB68);
    MEMORY[0x1EEE9AC00](v43);
    *(&v64 - 4) = v3;
    *(&v64 - 3) = v17;
    *(&v64 - 2) = v16;
    *&aBlock = v3;
    sub_1C5BC7B64();

    if (!v26)
    {
      return;
    }
  }

  else
  {
    *&aBlock = v17;
    *(&aBlock + 1) = v16;
    sub_1C5A37294(&aBlock);
    if (!v26)
    {
      return;
    }
  }

  v44 = swift_unknownObjectWeakLoadStrong();
  if (v44)
  {
    v45 = v44;
    v46 = *(v26 + 40);
    v47 = swift_getObjectType();
    (*(v46 + 16))(v47, v46);
  }
}

double sub_1C5A38AE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = xmmword_1C5BDB910;
  v12 = 0;
  v13 = 0;
  sub_1C5A37864(&v11);
  if (a3)
  {
    v5 = qword_1EC1A6D00;
    if (qword_1EC1A6D00)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v7 = Strong;
        v8 = *(v5 + 40);
        ObjectType = swift_getObjectType();
        v10 = *(v8 + 16);

        v10(ObjectType, v8);
      }
    }
  }

  return result;
}

void sub_1C5A38BB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_1EC1A6D00;
  if (qword_1EC1A6D00)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v8 = Strong;
      v9 = *(v6 + 40);
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 24);

      v11(ObjectType, v9);
    }

    else
    {
    }
  }

  swift_getKeyPath(" ?\\&");
  *&v19 = a1;
  sub_1C5933F04(&qword_1EDA4AE80, _s13HostedContentCMa, &unk_1C5BDBA8C);
  sub_1C5BC7B74();

  v12 = swift_weakLoadStrong();
  if (v12)
  {
    v13 = *(v12 + 104);

    KeyPath = swift_getKeyPath(byte_1C5BDBB20, v19);
    v15 = swift_getKeyPath(byte_1C5BDBB48);
    sub_1C5971FE0(0, v13, KeyPath, v15);
    v17 = *(a1 + 40);
    v16 = *(a1 + 48);

    LOBYTE(KeyPath) = sub_1C5934068(v17, v16, a2, a3);

    if (KeyPath)
    {
      v18 = swift_getKeyPath(byte_1C5BDBB68);
      MEMORY[0x1EEE9AC00](v18);
      *&v19 = a1;
      sub_1C5BC7B64();
    }

    else
    {
      *&v19 = a2;
      *(&v19 + 1) = a3;
      sub_1C5A37294(&v19);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C5A38E24()
{

  sub_1C593E820(v0[8], v0[9], v0[10], v0[11]);
  swift_weakDestroy();
  v1 = OBJC_IVAR____TtCC11MediaCoreUI19NowPlayingViewModel13HostedContent___observationRegistrar;
  v2 = sub_1C5BC7BB4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C5A38EFC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194480, &qword_1C5BDBE68);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = v1[1];
  v25 = *v1;
  v26 = v7;
  v9 = *v1;
  v8 = v1[1];
  *v27 = v1[2];
  *&v27[15] = *(v1 + 47);
  v22 = v9;
  v23 = v8;
  v24[0] = v1[2];
  *(v24 + 15) = *(v1 + 47);
  sub_1C5A394DC();
  v20 = a1;
  v21 = v4;
  v19 = v3;
  if (v10)
  {
    if (v10 != 1)
    {
      goto LABEL_9;
    }
  }

  else if ((v27[18] & 1) == 0)
  {
    v10 = sub_1C5BCAA84();
    goto LABEL_9;
  }

  if (qword_1EDA45F90 != -1)
  {
    swift_once();
  }

LABEL_9:
  MEMORY[0x1EEE9AC00](v10);
  *(&v18 - 2) = &v25;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194488, &qword_1C5BDBE70);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194490, &qword_1C5BDBE78);
  v13 = sub_1C5924F54(&qword_1EC194498, &qword_1EC194488, &qword_1C5BDBE70, MEMORY[0x1E697FDF8]);
  v14 = sub_1C5A3A674();
  sub_1C5BCA374();

  v22 = v25;
  v23 = v26;
  v24[0] = *v27;
  *(v24 + 15) = *&v27[15];
  sub_1C5A394DC();
  v16 = v19;
  if (v15 < 2u)
  {
    sub_1C5BCAA84();
    sub_1C5BCAAB4();
  }

  MEMORY[0x1EEE9AC00](v15);
  *(&v18 - 2) = &v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944C8, &qword_1C5BDBE90);
  *&v22 = v11;
  *(&v22 + 1) = v12;
  *&v23 = v13;
  *(&v23 + 1) = v14;
  swift_getOpaqueTypeConformance2();
  sub_1C5A3A7C0();
  sub_1C5BCA374();

  return (*(v21 + 8))(v6, v16);
}

uint64_t sub_1C5A39308@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944B0, &qword_1C5BDBE80);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = *(a2 + 49);
  if ((v9 & 1) != 0 && (v10 = a2[1], v24 = *a2, v25 = v10, v26[0] = a2[2], *(v26 + 15) = *(a2 + 47), sub_1C5A394DC(), !v11))
  {
    v12 = 0.9;
  }

  else
  {
    v12 = 1.0;
  }

  sub_1C5BCABD4();
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944C0, &qword_1C5BDBE88);
  (*(*(v17 - 8) + 16))(v8, a1, v17);
  v18 = &v8[*(v6 + 36)];
  *v18 = v12;
  v18[1] = v12;
  *(v18 + 2) = v14;
  *(v18 + 3) = v16;
  v19 = 0.0;
  if (v9)
  {
    v20 = a2[1];
    v24 = *a2;
    v25 = v20;
    v26[0] = a2[2];
    *(v26 + 15) = *(a2 + 47);
    sub_1C5A394DC();
    if (v21 == 1)
    {
      if (*(a2 + 50))
      {
        v19 = 0.95;
      }

      else
      {
        v19 = 0.99;
      }
    }
  }

  sub_1C5A3A878(v8, a3);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194490, &qword_1C5BDBE78);
  v23 = a3 + *(result + 36);
  *v23 = 0;
  *(v23 + 8) = v19;
  return result;
}

void sub_1C5A394DC()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v6 = *(v0 + 8);
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  LODWORD(v3) = *(v0 + 32);
  v9 = *(v0 + 40);
  v19 = *(v0 + 48);
  if (v3 == 1)
  {
    sub_1C593E7D8(v5, v6, v8, v7);
    if (v6 == 1)
    {
      return;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v11 = sub_1C596AC4C(v5, v6, v8, v7, 0);
    (*(v2 + 8))(v4, v1, v11);
    v5 = v21;
    v6 = v22;
    v8 = v23;
    v7 = v24;
    if (v22 == 1)
    {
      return;
    }
  }

  v18 = v1;
  if (v19)
  {
    v12 = v2;
    v21 = v9;

    v13 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    v12 = v2;
    (*(v2 + 8))(v4, v18);
    v13 = v21;
  }

  swift_getKeyPath("@<\\&");
  v20 = v13;
  v17 = sub_1C5933F04(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  sub_1C5BC7B74();

  v15 = *(v13 + 104);

  if ((v15 & 0xFF0000) == 0x40000)
  {
    __break(1u);
    return;
  }

  if (BYTE2(v15) <= 1u)
  {
    if (!BYTE2(v15) && v6)
    {

      sub_1C593E820(v5, v6, v8, v7);
      if (v7)
      {
      }

      return;
    }

LABEL_19:
    sub_1C593E820(v5, v6, v8, v7);
    return;
  }

  if (BYTE2(v15) != 2)
  {
    goto LABEL_19;
  }

  sub_1C593E820(v5, v6, v8, v7);

  if ((v19 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v12 + 8))(v4, v18);
    v9 = v20;
  }

  swift_getKeyPath(" <\\&");
  v20 = v9;
  sub_1C5BC7B74();
}

uint64_t sub_1C5A39910@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 49))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944E0, &qword_1C5BDBE98);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944C8, &qword_1C5BDBE90);
  *(a3 + *(result + 36)) = v5;
  return result;
}

uint64_t sub_1C5A399B8()
{
  KeyPath = swift_getKeyPath("p=\\&");
  type metadata accessor for WindowProperties(0);
  sub_1C5933F04(&qword_1EDA4B960, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
  v1 = sub_1C5BC8324();
  v10 = v2 & 1;
  v20 = KeyPath;
  v21 = 0uLL;
  v22[0] = 0;
  *&v22[8] = v1;
  v22[16] = v2 & 1;
  *&v22[17] = 257;
  v17 = swift_getKeyPath("p=\\&", v10);
  v18 = 0uLL;
  v19[0] = 0;
  *&v19[8] = sub_1C5BC8324();
  v19[16] = v3 & 1;
  *&v19[17] = 256;
  sub_1C5A3A4D0();
  sub_1C5BC8654();
  v13[0] = v17;
  v13[1] = 0uLL;
  v14[0] = *v19;
  *(v14 + 15) = *&v19[15];
  sub_1C5A3A524(v13);
  v15[0] = v20;
  v15[1] = v21;
  v16[0] = *v22;
  *(v16 + 15) = *&v22[15];
  sub_1C5A3A524(v15);
  v4 = swift_getKeyPath("p=\\&");
  v12[0] = 0;
  *&v12[8] = sub_1C5BC8324();
  v12[16] = v5 & 1;
  *&v12[17] = 1;
  v6 = swift_getKeyPath("p=\\&");
  v11[0] = 0;
  *&v11[8] = sub_1C5BC8324();
  v11[16] = v7 & 1;
  sub_1C5BC8654();
  v17 = v6;
  v18 = 0uLL;
  *v19 = *v11;
  *&v19[15] = *&v11[15];
  sub_1C5A3A524(&v17);
  v20 = v4;
  v21 = 0uLL;
  *v22 = *v12;
  *&v22[15] = *&v12[15];
  sub_1C5A3A524(&v20);
  v8 = sub_1C5BC85F4();

  return v8;
}

uint64_t sub_1C5A39C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A3A454(&qword_1EDA47CC8, &qword_1EC194468, &unk_1C5BDBCD0, sub_1C593AA54);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1C5A39CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5A3A454(&qword_1EDA4AE90, &qword_1EC194470, qword_1C5BEBAC0, sub_1C593AA00);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void sub_1C5A39D70(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 58);
}

double sub_1C5A39DB8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath(byte_1C5BDBB20);
  v5 = swift_getKeyPath(byte_1C5BDBB48);

  return sub_1C5971FE0(v2, v3, KeyPath, v5);
}

uint64_t sub_1C5A39E2C(uint64_t result, uint64_t a2)
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
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 56) + v12);
    v17 = v14 == 0;

    if (v14)
    {
      v18 = sub_1C596FBD8(v15, v14);
      v20 = v19;

      if ((v20 & 1) != 0 && v16 == *(*(a2 + 56) + v18))
      {
        continue;
      }
    }

    return v17;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v21 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1C5A39F84(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v6 = a2[1];
  v5 = a2[2];
  v7 = a2[3];
  if (!v2)
  {
    if (v6)
    {
      goto LABEL_19;
    }

    if (v4)
    {
LABEL_9:
      if (v7)
      {
        return v3 == v5 && v4 == v7 || (sub_1C5BCBDE4() & 1) != 0;
      }

LABEL_19:

      return 0;
    }

LABEL_18:
    if (!v7)
    {

      return 1;
    }

    goto LABEL_19;
  }

  if (!v6)
  {
    goto LABEL_19;
  }

  v8 = *a1 == *a2 && v2 == v6;
  if (v8 || (v9 = sub_1C5BCBDE4(), result = 0, (v9 & 1) != 0))
  {
    if (v4)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  return result;
}

uint64_t sub_1C5A3A0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
    v20[0] = a1;
    v20[1] = a2;
    v20[2] = a3;
    v20[3] = a4;
    if (a6 != 1)
    {
      v19[0] = a5;
      v19[1] = a6;
      v19[2] = a7;
      v19[3] = a8;
      sub_1C593E7D8(a1, a2, a3, a4);
      sub_1C593E7D8(a5, a6, a7, a8);
      sub_1C593E7D8(a1, a2, a3, a4);
      v17 = sub_1C5A39F84(v20, v19);

      sub_1C593E820(a1, a2, a3, a4);
      v16 = !v17;
      return v16 & 1;
    }

    sub_1C593E7D8(a1, a2, a3, a4);
    sub_1C593E7D8(a5, 1, a7, a8);
    sub_1C593E7D8(a1, a2, a3, a4);

    goto LABEL_7;
  }

  sub_1C593E7D8(a1, 1, a3, a4);
  if (a6 != 1)
  {
    sub_1C593E7D8(a5, a6, a7, a8);
LABEL_7:
    sub_1C593E820(a1, a2, a3, a4);
    sub_1C593E820(a5, a6, a7, a8);
    v16 = 1;
    return v16 & 1;
  }

  sub_1C593E7D8(a5, 1, a7, a8);
  sub_1C593E820(a1, 1, a3, a4);
  v16 = 0;
  return v16 & 1;
}

void sub_1C5A3A2D8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v2[8];
  v7 = v2[9];
  v8 = v2[10];
  v9 = v2[11];
  v2[8] = v1;
  v2[9] = v3;
  v2[10] = v4;
  v2[11] = v5;
  sub_1C593E7D8(v1, v3, v4, v5);
  sub_1C593E820(v6, v7, v8, v9);
}

void sub_1C5A3A340()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

uint64_t sub_1C5A3A37C()
{
  v1 = *(v0 + 32);
  *&v3 = *(v0 + 24);
  *(&v3 + 1) = v1;

  return sub_1C5A37294(&v3);
}

uint64_t sub_1C5A3A3E4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  *(v1 + 16) = *(v0 + 24);

  sub_1C5A36CB8(v2);
}

uint64_t sub_1C5A3A454(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_1C5A3A4D0()
{
  result = qword_1EC194478;
  if (!qword_1EC194478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194478);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11MediaCoreUI19NowPlayingViewModelC13HostedContentC10TransitionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C5A3A5A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 51))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5A3A5E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C5A3A674()
{
  result = qword_1EC1944A0;
  if (!qword_1EC1944A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194490, &qword_1C5BDBE78);
    sub_1C5A3A700();
    sub_1C5A25B6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1944A0);
  }

  return result;
}

unint64_t sub_1C5A3A700()
{
  result = qword_1EC1944A8;
  if (!qword_1EC1944A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1944B0, &qword_1C5BDBE80);
    sub_1C5924F54(&qword_1EC1944B8, &qword_1EC1944C0, &qword_1C5BDBE88, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1944A8);
  }

  return result;
}

unint64_t sub_1C5A3A7C0()
{
  result = qword_1EC1944D0;
  if (!qword_1EC1944D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1944C8, &qword_1C5BDBE90);
    sub_1C5924F54(&qword_1EC1944D8, &qword_1EC1944E0, &qword_1C5BDBE98, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1944D0);
  }

  return result;
}

uint64_t sub_1C5A3A878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944B0, &qword_1C5BDBE80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t LibraryStandardButtonStyle.makeBody(configuration:)@<X0>(uint64_t a2@<X8>)
{
  sub_1C5BC9564();
  v3 = sub_1C5BCAA54();
  v5 = v4;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944E8, &qword_1C5BDBEF0) + 36));
  *v6 = sub_1C5A3A9C8;
  v6[1] = 0;
  v6[2] = v3;
  v6[3] = v5;
  v7 = sub_1C5A3AA60();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944F0, &qword_1C5BDBEF8);
  *(a2 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_1C5A3A9C8@<X0>(void *a2@<X8>)
{
  sub_1C5BC86C4();
  *a2 = v3;
  a2[1] = v4;
  type metadata accessor for BackgroundCapsule(0);
  if (qword_1EC190910 != -1)
  {
    swift_once();
  }

  sub_1C5A3B53C();
  return sub_1C5BC84C4();
}

double sub_1C5A3AA60()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) == 1)
  {
    result = 0.25;
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v7 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v8 = sub_1C5942458(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    result = 0.25;
    if (v10[15] != 1)
    {
      return result;
    }
  }

  v9 = sub_1C5BC9574();
  result = 1.0;
  if (v9)
  {
    return 0.5;
  }

  return result;
}

uint64_t sub_1C5A3ABE0@<X0>(uint64_t a2@<X8>)
{
  sub_1C5BC9564();
  v3 = sub_1C5BCAA54();
  v5 = v4;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944E8, &qword_1C5BDBEF0) + 36));
  *v6 = sub_1C5A3A9C8;
  v6[1] = 0;
  v6[2] = v3;
  v6[3] = v5;
  v7 = sub_1C5A3AA60();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1944F0, &qword_1C5BDBEF8);
  *(a2 + *(result + 36)) = v7;
  return result;
}

uint64_t sub_1C5A3ACA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194540, &qword_1C5BEF140);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v33 - v6;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194548, &qword_1C5BDC080);
  MEMORY[0x1EEE9AC00](v34);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194550, &qword_1C5BDC088);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194558, &unk_1C5BDC090);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v33 - v14;
  v16 = *MEMORY[0x1E697F468];
  v17 = sub_1C5BC9044();
  (*(*(v17 - 8) + 104))(v7, v16, v17);
  v18 = [objc_opt_self() tertiarySystemFillColor];
  v19 = sub_1C5BCA424();
  v20 = *(v5 + 44);
  v35 = v7;
  *&v7[v20] = v19;
  if (qword_1EC190910 != -1)
  {
    swift_once();
  }

  v21 = *(type metadata accessor for BackgroundCapsule(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194518, &unk_1C5BF03D0);
  sub_1C5BC84D4();
  v33[2] = v21;
  sub_1C5BC84D4();
  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  sub_1C59E7D34(v35, v9, &qword_1EC194540, &qword_1C5BEF140);
  v22 = &v9[*(v34 + 36)];
  v23 = v41;
  *(v22 + 4) = v40;
  *(v22 + 5) = v23;
  *(v22 + 6) = v42;
  v24 = v37;
  *v22 = v36;
  *(v22 + 1) = v24;
  v25 = v39;
  *(v22 + 2) = v38;
  *(v22 + 3) = v25;
  sub_1C5BC84D4();
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  sub_1C59E7D34(v9, v12, &qword_1EC194548, &qword_1C5BDC080);
  v26 = &v12[*(v10 + 36)];
  v27 = v44;
  *v26 = v43;
  *(v26 + 1) = v27;
  *(v26 + 2) = v45;
  if (qword_1EC190908 != -1)
  {
    swift_once();
  }

  v28 = qword_1EC1A6DA8;
  v29 = *v2;
  v30 = v2[1];
  sub_1C59E7D34(v12, v15, &qword_1EC194550, &qword_1C5BDC088);
  v31 = &v15[*(v13 + 36)];
  *v31 = v28;
  v31[1] = v29;
  v31[2] = v30;
  sub_1C59E7D34(v15, a1, &qword_1EC194558, &unk_1C5BDC090);
}

uint64_t static MCUINamespace<A>.libraryStandard.getter@<X0>(uint64_t a1@<X8>)
{
  result = swift_getKeyPath(byte_1C5BDBF00);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_1C5A3B1F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C5BC8EC4();
  *a1 = result & 1;
  return result;
}

unint64_t sub_1C5A3B274()
{
  result = qword_1EC1944F8;
  if (!qword_1EC1944F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1944F0, &qword_1C5BDBEF8);
    sub_1C5A3B300();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1944F8);
  }

  return result;
}

unint64_t sub_1C5A3B300()
{
  result = qword_1EC194500;
  if (!qword_1EC194500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1944E8, &qword_1C5BDBEF0);
    sub_1C5A3B864(&qword_1EDA46200, MEMORY[0x1E697C8D0], MEMORY[0x1E697C8C8]);
    sub_1C5924F54(&qword_1EC194508, &qword_1EC194510, &unk_1C5BDC000, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194500);
  }

  return result;
}

uint64_t type metadata accessor for BackgroundCapsule(uint64_t a1)
{
  result = qword_1EC194520;
  if (!qword_1EC194520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C5A3B45C(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_1C5A3B4E0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C5A3B4E0(uint64_t a1)
{
  if (!qword_1EC194530)
  {
    sub_1C5A3B53C();
    v1 = sub_1C5BC84E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC194530);
    }
  }
}

unint64_t sub_1C5A3B53C()
{
  result = qword_1EC194538;
  if (!qword_1EC194538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194538);
  }

  return result;
}

unint64_t sub_1C5A3B5AC()
{
  result = qword_1EC194560;
  if (!qword_1EC194560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194558, &unk_1C5BDC090);
    sub_1C5A3B664();
    sub_1C5924F54(&qword_1EC194580, &qword_1EC194588, &qword_1C5BDC0A0, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194560);
  }

  return result;
}

unint64_t sub_1C5A3B664()
{
  result = qword_1EC194568;
  if (!qword_1EC194568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194550, &qword_1C5BDC088);
    sub_1C5A3B6F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194568);
  }

  return result;
}

unint64_t sub_1C5A3B6F0()
{
  result = qword_1EC194570;
  if (!qword_1EC194570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194548, &qword_1C5BDC080);
    sub_1C5A3B77C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194570);
  }

  return result;
}

unint64_t sub_1C5A3B77C()
{
  result = qword_1EC194578;
  if (!qword_1EC194578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194540, &qword_1C5BEF140);
    sub_1C5A3B864(&qword_1EDA45F98, MEMORY[0x1E6981998], MEMORY[0x1E6981980]);
    sub_1C5924F54(&qword_1EDA461D8, &qword_1EC191040, &qword_1C5BD1F70, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194578);
  }

  return result;
}

uint64_t sub_1C5A3B864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

AudioQueueBufferRef sub_1C5A3B8AC(void *a1, OpaqueAudioQueue *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = [a1 streamDescription];
  v8 = v7[5] * v7[6];
  if ((v8 & 0xFFFFFFFF00000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if ((a5 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a5))
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
  }

  v9 = a5 * v8;
  if ((v9 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_12;
  }

  v13[0] = 0;
  Buffer = AudioQueueAllocateBuffer(a2, v9, v13);
  if (Buffer || (result = v13[0]) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194590, &qword_1C5BDC0A8);
    sub_1C5A3B9C4();
    swift_allocError();
    *v11 = 3;
    *(v11 + 4) = Buffer;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1C5A3B9C4()
{
  result = qword_1EC194598;
  if (!qword_1EC194598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194590, &qword_1C5BDC0A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194598);
  }

  return result;
}

AudioQueueRef sub_1C5A3BA28(void *a1, void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v2 = AudioQueueNewInput([a1 streamDescription], sub_1C5ACC00C, a2, 0, 0, 0x800u, v5);
  if (v2 || (result = v5[0]) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194590, &qword_1C5BDC0A8);
    sub_1C5A3B9C4();
    swift_allocError();
    *v3 = 1;
    *(v3 + 4) = v2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C5A3BB18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0, &qword_1C5BF3390);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  _s24HeaderArtworkPlaceholderVMa(255, v4, v3, v5);
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s32HeaderMetadataAndContextMenuViewVMa(255, v4, v3, v6);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA714();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194858, &unk_1C5BDCC70);
  _s19TrackSectionsButtonVMa(255, v4, v3, v7);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v8 = sub_1C5BCA7D4();
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v46 = _s28TrackSectionsPlatterModifierVMa(255, v4, v3, v11);
  v48 = sub_1C5BC8AB4();
  v54 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v13 = &v45 - v12;
  v51 = sub_1C5BC8AB4();
  v56 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v45 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A98, &qword_1C5BD6820);
  v53 = sub_1C5BC8AB4();
  v57 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v45 - v15;
  v16 = sub_1C5BC8AB4();
  v58 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v52 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v45 - v19;
  v61 = v4;
  v62 = v3;
  v63 = v59;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  v20 = sub_1C5A3D634();
  v22 = v21;
  *&v75 = v20;
  BYTE8(v75) = v23 & 1;
  *&v76 = v21;
  v25 = v24 & 1;
  BYTE8(v76) = v24 & 1;
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1C694E550](&v75, v8, v46, WitnessTable);

  v27 = sub_1C5942458(v22, v25);
  (*(v50 + 8))(v10, v8, v27);
  KeyPath = swift_getKeyPath("09\\&");
  v74 = 0;
  *&v72[0] = KeyPath;
  v73[25] = 0;
  v29 = swift_getWitnessTable();
  v70 = WitnessTable;
  v71 = v29;
  v30 = v48;
  v31 = swift_getWitnessTable();
  v32 = v47;
  MEMORY[0x1C694E550](v72, v30, &type metadata for HoveringHeaderPadding, v31);
  v77 = v72[2];
  v78[0] = *v73;
  *(v78 + 10) = *&v73[10];
  v75 = v72[0];
  v76 = v72[1];
  sub_1C5A47B68(&v75);
  (*(v54 + 8))(v13, v30);
  sub_1C5A3D6D4();
  v33 = sub_1C5A47B98();
  v68 = v31;
  v69 = v33;
  v34 = v51;
  v35 = swift_getWitnessTable();
  v36 = v49;
  sub_1C5BC9D74();

  (*(v56 + 8))(v32, v34);
  sub_1C5BC98B4();
  v37 = sub_1C5924F54(&qword_1EC192A90, &qword_1EC192A98, &qword_1C5BD6820, MEMORY[0x1E697FDC0]);
  v66 = v35;
  v67 = v37;
  v38 = v53;
  v39 = swift_getWitnessTable();
  v40 = v52;
  sub_1C5BCA2F4();
  (*(v57 + 8))(v36, v38);
  v64 = v39;
  v65 = MEMORY[0x1E697E5D8];
  v41 = swift_getWitnessTable();
  v42 = v55;
  sub_1C593EDC0(v40, v16, v41);
  v43 = *(v58 + 8);
  v43(v40, v16);
  sub_1C593EDC0(v42, v16, v41);
  return (v43)(v42, v16);
}

uint64_t sub_1C5A3C2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v114 = a1;
  v126 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194858, &unk_1C5BDCC70);
  v111 = _s19TrackSectionsButtonVMa(255, a2, a3, v7);
  v113 = sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v8 = sub_1C5BCAB74();
  v124 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v112 = &v92 - v9;
  v10 = sub_1C5BC90F4();
  v105 = *(v10 - 8);
  v106 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v102 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v92 - v13;
  v14 = sub_1C5BCAB54();
  v103 = *(v14 - 8);
  v104 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v99 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1C5BCA894();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v97 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194868, &qword_1C5BDCC80);
  MEMORY[0x1EEE9AC00](v94);
  v96 = &v92 - v17;
  v127 = v6;
  MEMORY[0x1EEE9AC00](v18);
  v108 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v95 = &v92 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v107 = &v92 - v23;
  v24 = sub_1C5BC8F34();
  v92 = *(v24 - 8);
  v93 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v92 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = v8;
  v129 = sub_1C5BCB804();
  v122 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v123 = &v92 - v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0, &qword_1C5BF3390);
  _s24HeaderArtworkPlaceholderVMa(255, a2, a3, v30);
  swift_getWitnessTable();
  sub_1C5BC8BE4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  _s32HeaderMetadataAndContextMenuViewVMa(255, a2, a3, v31);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v32 = sub_1C5BCA714();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v92 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v92 - v37;
  sub_1C5BC8FC4();
  v109 = a2;
  v110 = a3;
  v130 = a2;
  v131 = a3;
  v39 = v114;
  v132 = v114;
  sub_1C5BCA704();
  WitnessTable = swift_getWitnessTable();
  v120 = v38;
  v116 = WitnessTable;
  sub_1C593EDC0(v35, v32, WitnessTable);
  v117 = v33;
  v41 = *(v33 + 8);
  v121 = v35;
  v115 = v32;
  v118 = v41;
  v119 = v33 + 8;
  v41(v35, v32);
  v42 = *(v39 + 16);
  LOBYTE(v8) = *(v39 + 24);

  if ((v8 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v43 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v92 + 8))(v26, v93);
    v42 = v146;
  }

  swift_getKeyPath(byte_1C5BDC6F0);
  *&v146 = v42;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v44 = *(v42 + 16);

  if (v44 >> 62)
  {
    v45 = sub_1C5BCB984();
  }

  else
  {
    v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = v128;

  if (v45)
  {
    v47 = v97;
    sub_1C5BCA884();
    _s18HoveringHeaderViewVMa(0, v109, v110, v48);
    v49 = v101;
    sub_1C594C704(v101);
    v51 = v105;
    v50 = v106;
    v52 = v102;
    (*(v105 + 104))(v102, *MEMORY[0x1E697F608], v106);
    v53 = sub_1C5BC8274();
    v54 = *(v51 + 8);
    v54(v52, v50);
    v54(v49, v50);
    v55 = v103;
    v56 = MEMORY[0x1E6981DF0];
    if ((v53 & 1) == 0)
    {
      v56 = MEMORY[0x1E6981DB8];
    }

    v57 = v99;
    v58 = v104;
    (*(v103 + 104))(v99, *v56, v104);
    v59 = v96;
    (*(v55 + 32))(&v96[*(v94 + 36)], v57, v58);
    v60 = v47;
    v46 = v128;
    (*(v98 + 32))(v59, v60, v100);
    LOBYTE(v58) = sub_1C5BC98A4();
    sub_1C5BC8174();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    v68 = v67;
    v69 = v95;
    sub_1C59E7D34(v59, v95, &qword_1EC194868, &qword_1C5BDCC80);
    v70 = v107;
    v71 = v69 + *(v127 + 36);
    *v71 = v58;
    *(v71 + 8) = v62;
    *(v71 + 16) = v64;
    *(v71 + 24) = v66;
    *(v71 + 32) = v68;
    *(v71 + 40) = 0;
    sub_1C59E7D34(v69, v70, &qword_1EC194858, &unk_1C5BDCC70);
    *&v144[0] = sub_1C5A4F994();
    BYTE8(v144[0]) = v72 & 1;
    sub_1C5BC98A4();
    v73 = swift_getWitnessTable();
    sub_1C5BCA2F4();

    v144[0] = v146;
    v144[1] = v147;
    v145[0] = v148[0];
    *(v145 + 9) = *(v148 + 9);
    v138 = v146;
    v139 = v147;
    v140[0] = v148[0];
    *(v140 + 9) = *(v148 + 9);
    v137[2] = v73;
    v137[3] = MEMORY[0x1E697E5D8];
    v74 = v113;
    v75 = swift_getWitnessTable();
    sub_1C593EDC0(&v138, v74, v75);
    v76 = *(*(v74 - 8) + 8);
    v76(v144, v74);
    v77 = v108;
    sub_1C59400B0(v70, v108, &qword_1EC194858, &unk_1C5BDCC70);
    v146 = v141;
    v147 = v142;
    v148[0] = v143[0];
    *(v148 + 9) = *(v143 + 9);
    v138 = v141;
    v139 = v142;
    v140[0] = v143[0];
    *(v140 + 9) = *(v143 + 9);
    v137[0] = v77;
    v137[1] = &v138;

    v136[0] = v127;
    v136[1] = v74;
    v134 = sub_1C5A47BF8();
    v135 = v75;
    v78 = v112;
    sub_1C594226C(v137, 2uLL, v136);
    v76(&v146, v74);
    sub_1C5924EF4(v70, &qword_1EC194858, &unk_1C5BDCC70);

    sub_1C5924EF4(v77, &qword_1EC194858, &unk_1C5BDCC70);
    v79 = v124;
    v80 = v125;
    (*(v124 + 32))(v46, v78, v125);
    (*(v79 + 56))(v46, 0, 1, v80);
  }

  else
  {
    (*(v124 + 56))(v46, 1, 1, v125);
  }

  swift_getWitnessTable();
  v81 = v123;
  sub_1C5941600(v46, v123);
  v82 = v122;
  v127 = *(v122 + 8);
  (v127)(v46, v129);
  v83 = v120;
  v84 = v121;
  v85 = v115;
  (*(v117 + 16))(v121, v120, v115);
  *&v146 = v84;
  v86 = v46;
  v87 = v46;
  v88 = v129;
  (*(v82 + 16))(v86, v81, v129);
  *(&v146 + 1) = v87;
  *&v144[0] = v85;
  *(&v144[0] + 1) = v88;
  *&v141 = v116;
  v133 = swift_getWitnessTable();
  *(&v141 + 1) = swift_getWitnessTable();
  sub_1C594226C(&v146, 2uLL, v144);
  v89 = v127;
  (v127)(v81, v88);
  v90 = v118;
  v118(v83, v85);
  v89(v87, v88);
  return v90(v84, v85);
}

uint64_t sub_1C5A3D084@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC19A0D0, &qword_1C5BF3390);
  *&v36 = _s24HeaderArtworkPlaceholderVMa(255, a2, a3, v8);
  v33[1] = swift_getWitnessTable();
  v37 = v7;
  v38 = sub_1C5BC8BE4();
  v9 = sub_1C5BC8AB4();
  sub_1C5BC97C4();
  v42 = sub_1C5BC8AB4();
  v40 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v39 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v41 = v33 - v12;
  v13 = sub_1C5BCA484();
  if (qword_1EC1906D0 != -1)
  {
    swift_once();
  }

  sub_1C5BCAA54();
  v14 = sub_1C5BC85D4();
  *&v68 = v13;
  *(&v68 + 1) = v63;
  LOBYTE(v69) = v64;
  *(&v69 + 1) = v65;
  LOBYTE(v70[0]) = v66;
  *(v70 + 8) = v67;
  MEMORY[0x1EEE9AC00](v14);
  v33[-4] = a2;
  v33[-3] = a3;
  v34 = a1;
  v33[-2] = a1;
  sub_1C5BCAA54();
  v35 = a2;
  v33[0] = a3;
  v15 = sub_1C594C97C();
  sub_1C5BCA2C4();

  v55 = v60;
  v56 = v61;
  v57 = v62;
  v53[0] = *v58;
  v53[1] = *&v58[16];
  v54 = v59;
  WitnessTable = swift_getWitnessTable();
  v51 = v15;
  v52 = WitnessTable;
  v17 = swift_getWitnessTable();
  v18 = v39;
  sub_1C5BCA094();
  v70[0] = v54;
  v70[1] = v55;
  v70[2] = v56;
  v71 = v57;
  v68 = v53[0];
  v69 = v53[1];
  (*(*(v9 - 8) + 8))(&v68, v9);
  v19 = sub_1C59378F0(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v49 = v17;
  v50 = v19;
  v20 = v42;
  v37 = swift_getWitnessTable();
  v21 = v41;
  sub_1C593EDC0(v18, v20, v37);
  v22 = v40;
  v38 = *(v40 + 8);
  v38(v18, v20);
  v23 = v35;
  v24 = v33[0];
  sub_1C59498C4(*v34, v34[1], v35, *(v33[0] + 8));
  NowPlayingController.sharedViews.getter(v46);
  v44 = v46[0];
  v26 = type metadata accessor for NowPlayingViews(0, v23, v24, v25);
  NowPlayingViews.metadata.getter(v26, v53);
  swift_unknownObjectRelease();
  v47 = *&v53[0];
  v36 = *(v53 + 8);
  v48 = *(v53 + 8);
  v28 = _s32HeaderMetadataAndContextMenuViewVMa(0, v23, v24, v27);
  v29 = swift_getWitnessTable();
  sub_1C593EDC0(&v47, v28, v29);

  swift_unknownObjectRelease();
  (*(v22 + 16))(v18, v21, v20);
  *&v53[0] = *v58;
  *(v53 + 8) = *&v58[8];
  v47 = v18;
  *&v48 = v53;
  swift_unknownObjectRetain();

  v46[0] = v20;
  v46[1] = v28;
  v44 = v37;
  v45 = v29;
  sub_1C594226C(&v47, 2uLL, v46);
  swift_unknownObjectRelease();

  v30 = v21;
  v31 = v38;
  v38(v30, v20);

  swift_unknownObjectRelease();
  return v31(v18, v20);
}

uint64_t sub_1C5A3D634()
{
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  v0 = sub_1C5BC8324();
  swift_getKeyPath("h9\\&");
  return v0;
}

uint64_t sub_1C5A3D6D4()
{
  MEMORY[0x1C694C860](0.0, 170.0);
  if (qword_1EDA45F90 != -1)
  {
    swift_once();
  }

  sub_1C5BC8664();

  sub_1C5BC8634();
  sub_1C5BCAA84();
  sub_1C5BCAAB4();

  sub_1C5BC8664();

  sub_1C5BC8644();

  MEMORY[0x1C694C860](v0, 0.0, 130.0);
  if (qword_1EC1905C8 != -1)
  {
    swift_once();
  }

  sub_1C5BC8664();

  sub_1C5BC8634();
  sub_1C5BCAA84();
  sub_1C5BCAAB4();

  sub_1C5BC8664();

  sub_1C5BC8644();

  v1 = sub_1C5BC85F4();

  return v1;
}

uint64_t sub_1C5A3D91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_1C5BC8C84();
  *(a3 + 8) = v6;
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  *(a3 + 16) = sub_1C5BC8324();
  *(a3 + 24) = v7 & 1;
  v9 = *(_s18HoveringHeaderViewVMa(0, a1, a2, v8) + 40);
  *(a3 + v9) = swift_getKeyPath(byte_1C5BDC688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C5A3DA0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194968, &qword_1C5BDCD18);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v46 - v5;
  v49 = sub_1C5BC8F34();
  v7 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v62 + 10) = *(v2 + 58);
  v10 = v2[3];
  v61 = v2[2];
  v62[0] = v10;
  v11 = v2[1];
  v59 = *v2;
  v60 = v11;
  v47 = v7;
  if (BYTE9(v62[1]))
  {
    v12 = v2[3];
    v57 = v2[2];
    v58[0] = v12;
    *(v58 + 9) = *(v2 + 57);
    v13 = v2[1];
    v55 = *v2;
    v56 = v13;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = v6;
    v15 = v4;
    v16 = a1;
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    a1 = v16;
    v4 = v15;
    v6 = v14;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v59, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v7 + 8))(v9, v49);
  }

  v18 = BYTE2(v56);
  v19 = sub_1C5BC9884();
  if (v18 != 2)
  {
    if (BYTE9(v62[1]))
    {
      v57 = v61;
      v58[0] = v62[0];
      *(v58 + 9) = *(v62 + 9);
      v55 = v59;
      v56 = v60;
    }

    else
    {
      v46[1] = v59;

      sub_1C5BCB4E4();
      v20 = v6;
      v21 = v4;
      v22 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v4 = v21;
      v6 = v20;
      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v59, &unk_1EC194DE0, &qword_1C5BDCD20);
      (*(v47 + 8))(v9, v49);
    }

    v53 = v57;
    v54[0] = v58[0];
    *(v54 + 9) = *(v58 + 9);
    v51 = v55;
    v52 = v56;
    DeviceMetrics.padding.getter(&v50);
  }

  sub_1C5BC8174();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194970, &qword_1C5BDCD28);
  (*(*(v31 - 8) + 16))(v6, a1, v31);
  v32 = &v6[*(v4 + 36)];
  *v32 = v19;
  *(v32 + 1) = v24;
  *(v32 + 2) = v26;
  *(v32 + 3) = v28;
  *(v32 + 4) = v30;
  v32[40] = 0;
  v33 = sub_1C5BC98A4();
  if (v18 != 2)
  {
    if (BYTE9(v62[1]))
    {
      v57 = v61;
      v58[0] = v62[0];
      *(v58 + 9) = *(v62 + 9);
      v55 = v59;
      v56 = v60;
    }

    else
    {

      sub_1C5BCB4E4();
      v34 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v59, &unk_1EC194DE0, &qword_1C5BDCD20);
      (*(v47 + 8))(v9, v49);
    }

    v53 = v57;
    v54[0] = v58[0];
    *(v54 + 9) = *(v58 + 9);
    v51 = v55;
    v52 = v56;
    sub_1C5A48300(&v51);
  }

  sub_1C5BC8174();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v48;
  sub_1C59E7D34(v6, v48, &qword_1EC194968, &qword_1C5BDCD18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194978, &qword_1C5BDCD30);
  v45 = v43 + *(result + 36);
  *v45 = v33;
  *(v45 + 8) = v36;
  *(v45 + 16) = v38;
  *(v45 + 24) = v40;
  *(v45 + 32) = v42;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_1C5A3DF18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v47 = a5;
  v46 = a4;
  v45 = a3;
  v44 = a2;
  v43 = a1;
  v49 = a8;
  v41 = a6;
  v42 = a7;
  _s28TrackSectionsPlatterModifierVMa(255, a6, a7, a4);
  swift_getWitnessTable();
  v10 = sub_1C5BC9394();
  v39 = sub_1C5BC8AB4();
  v48 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v40 = v38 - v11;
  v13 = _s28ExpandedTrackSectionsContentVMa(255, a6, a7, v12);
  WitnessTable = swift_getWitnessTable();
  v15 = swift_getWitnessTable();
  v66[0] = v10;
  v66[1] = v13;
  v66[2] = WitnessTable;
  v66[3] = v15;
  type metadata accessor for BackgroundPlatter(255, v66);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0, &unk_1C5BDB370);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194670, &qword_1C5BDC6D8);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194678, &unk_1C5BDC6E0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0, &unk_1C5BD9450);
  sub_1C5BC8AB4();
  v16 = sub_1C5BCB804();
  v17 = swift_getWitnessTable();
  v18 = sub_1C5924F54(&qword_1EC194680, &qword_1EC194678, &unk_1C5BDC6E0, MEMORY[0x1E697FF90]);
  v64 = v17;
  v65 = v18;
  v19 = swift_getWitnessTable();
  v20 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
  v62 = v19;
  v63 = v20;
  v61 = swift_getWitnessTable();
  v38[0] = v16;
  v38[1] = swift_getWitnessTable();
  v38[2] = sub_1C5BC92A4();
  v21 = v39;
  v22 = sub_1C5BC8AB4();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v38 - v27;
  v29 = v40;
  v30 = v43;
  sub_1C5A45C88(v10, WitnessTable, &type metadata for CollapsedPlatterPositionModifier, sub_1C5A46F28);
  v50 = v41;
  v51 = v42;
  v52 = v44;
  v53 = v45 & 1;
  v54 = v46;
  v55 = v47 & 1;
  v56 = v30;
  sub_1C5BCAA54();
  v31 = sub_1C5A46DF0();
  v59 = WitnessTable;
  v60 = v31;
  v32 = v21;
  v33 = swift_getWitnessTable();
  sub_1C5BC9CE4();
  (*(v48 + 8))(v29, v32);
  v34 = swift_getWitnessTable();
  v57 = v33;
  v58 = v34;
  v35 = swift_getWitnessTable();
  sub_1C593EDC0(v25, v22, v35);
  v36 = *(v23 + 8);
  v36(v25, v22);
  sub_1C593EDC0(v28, v22, v35);
  return (v36)(v28, v22);
}

uint64_t sub_1C5A3E534@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v75 = a5;
  v92 = a4;
  v93 = a3;
  v89 = a8;
  _s28TrackSectionsPlatterModifierVMa(255, a6, a7, a4);
  swift_getWitnessTable();
  v76 = a7;
  v110 = sub_1C5BC9394();
  v111 = _s28ExpandedTrackSectionsContentVMa(255, a6, a7, v12);
  WitnessTable = swift_getWitnessTable();
  v113 = swift_getWitnessTable();
  type metadata accessor for BackgroundPlatter(255, &v110);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0, &unk_1C5BDB370);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194670, &qword_1C5BDC6D8);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  v74 = swift_getWitnessTable();
  v13 = sub_1C5BCA7D4();
  v77 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v91 = &v74 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194678, &unk_1C5BDC6E0);
  v88 = v13;
  v15 = sub_1C5BC8AB4();
  v81 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v74 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0, &unk_1C5BD9450);
  v87 = v15;
  v17 = sub_1C5BC8AB4();
  v83 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v74 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v80 = &v74 - v22;
  v96 = sub_1C5BC8F34();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1C5BCB804();
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v26 = &v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v84 = &v74 - v28;

  v29 = a1;
  v94 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v30 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v95 + 8))(v24, v96);
    v29 = v110;
  }

  swift_getKeyPath(byte_1C5BDC6F0, v74);
  v110 = v29;
  v90 = sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v31 = *(v29 + 16);

  if (v31 >> 62)
  {
    v32 = sub_1C5BCB984();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v32)
  {
    v34 = v94;
    MEMORY[0x1EEE9AC00](v33);
    v35 = v76;
    *(&v74 - 8) = a6;
    *(&v74 - 7) = v35;
    *(&v74 - 6) = v75;
    *(&v74 - 5) = a1;
    *(&v74 - 32) = v36;
    *(&v74 - 3) = v93;
    *(&v74 - 16) = v92 & 1;
    sub_1C5BC9134();
    sub_1C5BCA7C4();

    v37 = a1;
    if ((v34 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v38 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v95 + 8))(v24, v96);
      v37 = v110;
    }

    swift_getKeyPath("h9\\&");
    v110 = v37;
    sub_1C5BC7B74();

    v39 = *(v37 + 56);

    v40 = "layingHoveringHeaderView.swift";
    v41 = 0xD00000000000001DLL;
    if (!v39)
    {
      v41 = 0xD00000000000001ELL;
      v40 = "trackSectionsPlatter.expanded";
    }

    v110 = v41;
    v111 = v40 | 0x8000000000000000;
    v42 = v78;
    if ((v92 & 1) == 0)
    {
      v48 = v93;

      sub_1C5BCB4E4();
      v49 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      v50 = sub_1C5942458(v48, 0);
      (*(v95 + 8))(v24, v96, v50);
    }

    v43 = v88;
    sub_1C5BC9664();
    sub_1C5BCABD4();
    v51 = swift_getWitnessTable();
    v52 = v91;
    sub_1C5BCA114();

    (*(v77 + 8))(v52, v43);
    if (qword_1EC1906D8 != -1)
    {
      swift_once();
    }

    if ((v94 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v53 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v95 + 8))(v24, v96);
      a1 = v110;
    }

    swift_getKeyPath("h9\\&");
    v110 = a1;
    sub_1C5BC7B74();

    v54 = *(a1 + 56);

    LOBYTE(v110) = v54;
    v55 = sub_1C5924F54(&qword_1EC194680, &qword_1EC194678, &unk_1C5BDC6E0, MEMORY[0x1E697FF90]);
    v108 = v51;
    v109 = v55;
    v56 = v87;
    v57 = swift_getWitnessTable();
    v58 = v79;
    sub_1C5BCA384();
    (*(v81 + 8))(v42, v56);
    v59 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
    v106 = v57;
    v107 = v59;
    v60 = swift_getWitnessTable();
    v61 = v80;
    sub_1C593EDC0(v58, v17, v60);
    v62 = v83;
    v63 = *(v83 + 8);
    v63(v58, v17);
    v64 = v82;
    sub_1C593EDC0(v61, v17, v60);
    v63(v61, v17);
    (*(v62 + 32))(v26, v64, v17);
    (*(v62 + 56))(v26, 0, 1, v17);
  }

  else
  {
    (*(v83 + 56))(v26, 1, 1, v17);
    v44 = swift_getWitnessTable();
    v45 = sub_1C5924F54(&qword_1EC194680, &qword_1EC194678, &unk_1C5BDC6E0, MEMORY[0x1E697FF90]);
    v99 = v44;
    v100 = v45;
    v46 = swift_getWitnessTable();
    v47 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
    v97 = v46;
    v98 = v47;
    swift_getWitnessTable();
  }

  v65 = v84;
  sub_1C5941600(v26, v84);
  v66 = *(v85 + 8);
  v67 = v86;
  v66(v26, v86);
  v68 = swift_getWitnessTable();
  v69 = sub_1C5924F54(&qword_1EC194680, &qword_1EC194678, &unk_1C5BDC6E0, MEMORY[0x1E697FF90]);
  v104 = v68;
  v105 = v69;
  v70 = swift_getWitnessTable();
  v71 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
  v102 = v70;
  v103 = v71;
  v101 = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  sub_1C593EDC0(v65, v67, v72);
  return (v66)(v65, v67);
}

uint64_t sub_1C5A3F3D0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v50 = a2;
  v51 = a4;
  v53 = a3;
  v54 = a1;
  v55 = a8;
  v48 = a3 & 1;
  v49 = a5;
  v10 = sub_1C5BC8F34();
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a7;
  v57 = a6;
  _s28TrackSectionsPlatterModifierVMa(255, a6, a7, v12);
  swift_getWitnessTable();
  v13 = sub_1C5BC9394();
  v52 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v42 - v14;
  v16 = _s28ExpandedTrackSectionsContentVMa(255, a6, a7, v15);
  WitnessTable = swift_getWitnessTable();
  v46 = WitnessTable;
  v45 = swift_getWitnessTable();
  *&v85 = v13;
  *(&v85 + 1) = v16;
  *&v86 = WitnessTable;
  *(&v86 + 1) = v45;
  v18 = type metadata accessor for BackgroundPlatter(0, &v85);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v42 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1943F0, &unk_1C5BDB370);
  v22 = sub_1C5BC8AB4();
  v58 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v42 - v27;
  v29 = v47;
  (*(v52 + 16))(v47, v54, v13, v26);
  v59 = v57;
  v60 = v56;
  sub_1C5A3FCB0(v29, sub_1C5A46E68, v13, v16, v46, v45, v21);
  v30 = swift_getWitnessTable();
  sub_1C5BC9F24();
  (*(v19 + 8))(v21, v18);
  v31 = v22;
  v32 = sub_1C5924F54(&qword_1EDA462C0, &qword_1EC1943F0, &unk_1C5BDB370, MEMORY[0x1E697FDC0]);
  v93 = v30;
  v94 = v32;
  v33 = swift_getWitnessTable();
  v54 = v28;
  v52 = v33;
  sub_1C593EDC0(v24, v22, v33);
  v34 = *(v58 + 8);
  v34(v24, v31);
  v35 = sub_1C5BCAA34();
  v46 = v36;
  v47 = v35;
  LOBYTE(v85) = v48;
  LOBYTE(v77) = v49 & 1;
  v37 = v50;
  sub_1C5A3FDEC(v50, v48, &v85);
  v102 = v89;
  v103 = v90;
  v104[0] = v91[0];
  *(v104 + 10) = *(v91 + 10);
  v98 = v85;
  v99 = v86;
  v100 = v87;
  v101 = v88;
  v105[0] = v85;
  v105[1] = v86;
  v105[2] = v87;
  v105[3] = v88;
  v105[4] = v89;
  v105[5] = v90;
  v106[0] = v91[0];
  *(v106 + 10) = *(v91 + 10);
  sub_1C59400B0(&v98, &v77, &qword_1EC194690, &qword_1C5BDC718);
  sub_1C5924EF4(v105, &qword_1EC194690, &qword_1C5BDC718);
  v111 = v102;
  v112 = v103;
  v113[0] = v104[0];
  *(v113 + 10) = *(v104 + 10);
  v107 = v98;
  v108 = v99;
  v109 = v100;
  v110 = v101;

  if ((v53 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v38 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v39 = v42;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v43 + 8))(v39, v44);
    v37 = v85;
  }

  swift_getKeyPath("h9\\&");
  *&v85 = v37;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *&v92[6] = v95;
  *&v92[22] = v96;
  *&v92[38] = v97;
  *&v77 = v47;
  *(&v77 + 1) = v46;
  v82 = v111;
  v83 = v112;
  v84[0] = v113[0];
  *(v84 + 10) = *(v113 + 10);
  v78 = v107;
  v79 = v108;
  v80 = v109;
  v81 = v110;
  *(&v84[4] + 1) = *(&v97 + 1);
  *(&v84[3] + 10) = *&v92[32];
  *(&v84[2] + 10) = *&v92[16];
  *(&v84[1] + 10) = *v92;
  v40 = v54;
  (*(v58 + 16))(v24, v54, v31);
  v72 = v84[1];
  v73 = v84[2];
  v74 = v84[3];
  v75 = v84[4];
  v68 = v81;
  v69 = v82;
  v70 = v83;
  v71 = v84[0];
  v64 = v77;
  v65 = v78;
  v66 = v79;
  v67 = v80;
  v76[0] = v24;
  v76[1] = &v64;
  sub_1C59400B0(&v77, &v85, &qword_1EC194670, &qword_1C5BDC6D8);
  v63[0] = v31;
  v63[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194670, &qword_1C5BDC6D8);
  v61 = v52;
  v62 = sub_1C5A46E70();
  sub_1C594226C(v76, 2uLL, v63);
  sub_1C5924EF4(&v77, &qword_1EC194670, &qword_1C5BDC6D8);
  v34(v40, v31);
  v91[2] = v72;
  v91[3] = v73;
  v91[4] = v74;
  v91[5] = v75;
  v89 = v68;
  v90 = v69;
  v91[0] = v70;
  v91[1] = v71;
  v85 = v64;
  v86 = v65;
  v87 = v66;
  v88 = v67;
  sub_1C5924EF4(&v85, &qword_1EC194670, &qword_1C5BDC6D8);
  return (v34)(v24, v31);
}

double sub_1C5A3FBE0(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath(byte_1C5BDC730);
  v9 = 0;
  v5 = _s28ExpandedTrackSectionsContentVMa(0, a1, a2, v4);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&KeyPath, v5, WitnessTable);
  sub_1C5942458(KeyPath, v9);
  KeyPath = v10;
  v9 = v11;
  sub_1C593EDC0(&KeyPath, v5, WitnessTable);
  return sub_1C5942458(KeyPath, v9);
}

uint64_t sub_1C5A3FCB0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v11 = a7 + *(type metadata accessor for BackgroundPlatter(0, v16) + 56);
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  *v11 = sub_1C5BC8324();
  *(v11 + 8) = v12 & 1;
  v13 = *(a3 - 8);
  v14 = (*(v13 + 16))(a7, a1, a3);
  a2(v14);
  return (*(v13 + 8))(a1, a3);
}

double sub_1C5A3FDEC@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  v10 = sub_1C5BC8324();
  v32 = v11;
  _s5DebugCMa(0);
  sub_1C59378F0(&qword_1EDA4A208, _s5DebugCMa, &unk_1C5BE6138);
  v12 = sub_1C5BC8C84();
  v31 = v13;
  if (a2)
  {
    v42 = a1;
  }

  else
  {

    sub_1C5BCB4E4();
    v14 = sub_1C5BC9844();
    v30 = v10;
    v15 = v6;
    v16 = v14;
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    v17 = v15;
    v10 = v30;
    (*(v7 + 8))(v9, v17);
    a1 = v42;
  }

  swift_getKeyPath("h9\\&");
  v36[0] = a1;
  sub_1C5BC7B74();

  v18 = *(a1 + 56);

  if (v18 == 1)
  {
    _s17TransportControlsCMa();
    sub_1C59378F0(&qword_1EDA4A620, _s17TransportControlsCMa, &unk_1C5BDFD58);
    v19 = sub_1C5BC8C84();
    v21 = v20;
    KeyPath = swift_getKeyPath("09\\&");
    LOBYTE(v36[0]) = 0;
  }

  else
  {
    v21 = 0;
    KeyPath = 0;
    v19 = 1;
  }

  v23 = v32 & 1;
  v33[96] = v32 & 1;
  *&v34 = v19;
  *(&v34 + 1) = v21;
  *&v35[0] = KeyPath;
  *(v35 + 8) = 0u;
  *(&v35[1] + 8) = 0u;
  *(&v35[2] + 8) = 0u;
  *(&v35[3] + 8) = 0u;
  WORD4(v35[4]) = 0;
  *a3 = v10;
  *(a3 + 8) = v23;
  v24 = v31;
  *(a3 + 16) = v12;
  *(a3 + 24) = v24;
  v25 = v35[0];
  *(a3 + 32) = v34;
  *(a3 + 48) = v25;
  v26 = v35[1];
  v27 = v35[2];
  v28 = v35[3];
  *(a3 + 106) = *(&v35[3] + 10);
  *(a3 + 80) = v27;
  *(a3 + 96) = v28;
  *(a3 + 64) = v26;
  v36[0] = v19;
  v36[1] = v21;
  v36[2] = KeyPath;
  v40 = 0u;
  v39 = 0u;
  v38 = 0u;
  v37 = 0u;
  v41 = 0;

  sub_1C59400B0(&v34, v33, qword_1EC1946B0, &qword_1C5BDC728);
  sub_1C5924EF4(v36, qword_1EC1946B0, &qword_1C5BDC728);

  return result;
}

uint64_t sub_1C5A401C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = *(a1 + 16);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v5 = *(a1 + 24);
  sub_1C5BCB804();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1C5BCA7D4();
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194908, &qword_1C5BDCCE8);
  v9 = sub_1C5BC8AB4();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194910, &qword_1C5BDCCF0);
  v12 = sub_1C5BC8AB4();
  v32 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v29 = &v26 - v15;
  *&v16 = v4;
  *(&v16 + 1) = v5;
  v40 = v2;
  v26 = *(a1 + 32);
  v38 = v16;
  v39 = v26;
  sub_1C5BC9134();
  sub_1C5BCA7C4();
  v34 = v4;
  v35 = v5;
  v36 = v26;
  v37 = v2;
  sub_1C5BCAA54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194918, &qword_1C5BDCCF8);
  v17 = swift_getWitnessTable();
  sub_1C5A480B8();
  sub_1C5BC9CE4();
  (*(v30 + 8))(v8, v6);
  v18 = sub_1C5924F54(&qword_1EC194960, &qword_1EC194908, &qword_1C5BDCCE8, MEMORY[0x1E697F940]);
  v43 = v17;
  v44 = v18;
  v19 = swift_getWitnessTable();
  v20 = v28;
  sub_1C5BCA2A4();
  (*(v31 + 8))(v11, v9);
  v21 = sub_1C5924F54(&qword_1EDA46700, &qword_1EC194910, &qword_1C5BDCCF0, MEMORY[0x1E697DDB0]);
  v41 = v19;
  v42 = v21;
  v22 = swift_getWitnessTable();
  v23 = v29;
  sub_1C593EDC0(v20, v12, v22);
  v24 = *(v32 + 8);
  v24(v20, v12);
  sub_1C593EDC0(v23, v12, v22);
  return (v24)(v23, v12);
}

uint64_t sub_1C5A406C4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  v72 = a6;
  v73 = a1;
  v60 = a3;
  v70 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v52 - v10;
  v55 = sub_1C5BC8F34();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1C5BCB804();
  v68 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v67 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v52 - v14;
  v59 = a2;
  v15 = sub_1C5BC8AB4();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - v17;
  v19 = sub_1C5BC8AB4();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v52 - v24;
  v58 = a4;
  sub_1C5BCA254();
  v26 = sub_1C5953670();
  v84 = a4;
  v85 = v26;
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2E4();
  (*(v16 + 8))(v18, v15);
  v28 = v61;
  v82 = WitnessTable;
  v83 = MEMORY[0x1E697E5D8];
  v29 = swift_getWitnessTable();
  v66 = v25;
  v30 = v60;
  v63 = v29;
  sub_1C593EDC0(v22, v19, v29);
  v62 = v20;
  v31 = *(v20 + 8);
  v65 = v20 + 8;
  v64 = v31;
  v31(v22, v19);
  v78 = v59;
  v79 = v30;
  v80 = v58;
  v81 = v28;
  v32 = v28;
  v33 = type metadata accessor for BackgroundPlatter(0, &v78);
  v34 = v73 + *(v33 + 56);
  v35 = *v34;
  LOBYTE(v28) = *(v34 + 8);

  if ((v28 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v36 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v37 = v53;
    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v54 + 8))(v37, v55);
    v35 = v78;
  }

  swift_getKeyPath("h9\\&");
  v78 = v35;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v38 = *(v35 + 56);

  if (v38 == 1)
  {
    v39 = v73 + *(v33 + 52);
    v40 = v56;
    sub_1C593EDC0(v39, v30, v32);
    v41 = v57;
    sub_1C593EDC0(v40, v30, v32);
    v42 = v70;
    (*(v70 + 8))(v40, v30);
    v43 = v67;
    (*(v42 + 32))(v67, v41, v30);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v42 = v70;
    v43 = v67;
  }

  (*(v42 + 56))(v43, v44, 1, v30);
  v45 = v69;
  sub_1C5941600(v43, v69);
  v46 = v68;
  v47 = *(v68 + 8);
  v48 = v71;
  v47(v43, v71);
  v49 = v66;
  (*(v62 + 16))(v22, v66, v19);
  v78 = v22;
  (*(v46 + 16))(v43, v45, v48);
  v79 = v43;
  v77[0] = v19;
  v77[1] = v48;
  v74 = v32;
  v75 = v63;
  v76 = swift_getWitnessTable();
  sub_1C594226C(&v78, 2uLL, v77);
  v47(v45, v48);
  v50 = v64;
  v64(v49, v19);
  v47(v43, v48);
  return v50(v22, v19);
}

uint64_t sub_1C5A40E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v49 = a4;
  v50 = a5;
  v47 = a2;
  v48 = a3;
  v46 = a1;
  v51[0] = a2;
  v51[1] = a3;
  v51[2] = a4;
  v51[3] = a5;
  v45 = type metadata accessor for BackgroundPlatter(0, v51);
  v7 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v45 - v14);
  v16 = *(sub_1C5BC8B84() + 20);
  v17 = *MEMORY[0x1E697F468];
  v18 = sub_1C5BC9044();
  (*(*(v18 - 8) + 104))(&a6[v16], v17, v18);
  __asm { FMOV            V0.2D, #12.0 }

  *a6 = _Q0;
  sub_1C5BCA494();
  v24 = sub_1C5BCA4B4();

  v25 = *(v10 + 36);
  v26 = *MEMORY[0x1E6981DB8];
  v27 = sub_1C5BCAB54();
  (*(*(v27 - 8) + 104))(v15 + v25, v26, v27);
  *v15 = v24;
  v28 = [objc_opt_self() quaternarySystemFillColor];
  v51[0] = sub_1C5BCA424();
  sub_1C59400B0(v15, v12, &unk_1EC196170, &qword_1C5BDA000);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170, &qword_1C5BDA000, MEMORY[0x1E697FAF0]);
  v29 = sub_1C5BC85E4();
  v30 = sub_1C5BC85E4();
  sub_1C5924EF4(v15, &unk_1EC196170, &qword_1C5BDA000);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194940, &qword_1C5BDCD08);
  v32 = &a6[*(v31 + 52)];
  *v32 = v29;
  *(v32 + 1) = v30;
  *&a6[*(v31 + 56)] = 256;
  v33 = sub_1C5BCAA54();
  v35 = v34;
  v36 = &a6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194930, &qword_1C5BDCD00) + 36)];
  *v36 = swift_getKeyPath(byte_1C5BDC688);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v37 = &v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194950, &qword_1C5BDCD10) + 36)];
  *v37 = v33;
  v37[1] = v35;
  v38 = v45;
  (*(v7 + 16))(v9, v46, v45);
  v39 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v40 = swift_allocObject();
  v41 = v48;
  *(v40 + 2) = v47;
  *(v40 + 3) = v41;
  v42 = v50;
  *(v40 + 4) = v49;
  *(v40 + 5) = v42;
  (*(v7 + 32))(&v40[v39], v9, v38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194918, &qword_1C5BDCCF8);
  v44 = &a6[*(result + 36)];
  *v44 = sub_1C5A41298;
  *(v44 + 1) = 0;
  *(v44 + 2) = sub_1C5A48254;
  *(v44 + 3) = v40;
  return result;
}

uint64_t sub_1C5A41298@<X0>(double *a1@<X8>)
{
  v2 = sub_1C5BC9384();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5BC94A4();
  sub_1C5BC86D4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v7;
  *(a1 + 1) = v9;
  *(a1 + 2) = v11;
  *(a1 + 3) = v13;
  return result;
}

double sub_1C5A413A4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1C5BC8F34();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[1];
  v22 = *a1;
  v23 = v16;
  v24[0] = a3;
  v24[1] = a4;
  v24[2] = a5;
  v24[3] = a6;
  v17 = (a2 + *(type metadata accessor for BackgroundPlatter(0, v24) + 56));
  v18 = *v17;
  LOBYTE(a5) = *(v17 + 8);

  if ((a5 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    v18 = v24[0];
  }

  v20 = v23;
  *(v18 + 64) = v22;
  *(v18 + 80) = v20;

  return result;
}

uint64_t sub_1C5A41540@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v53 = a2;
  v54 = a5;
  v50 = sub_1C5BC8F34();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for NowPlayingContrastSensitiveBackdrop(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194980, &qword_1C5BDCD38);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194988, &qword_1C5BDCD40);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194990, &qword_1C5BDCD48);
  MEMORY[0x1EEE9AC00](v51);
  v19 = &v47 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194998, &unk_1C5BDCD50);
  *&v20 = MEMORY[0x1EEE9AC00](v52).n128_u64[0];
  v22 = &v47 - v21;
  *v10 = swift_getKeyPath(byte_1C5BDC688, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  sub_1C5BCAA54();
  sub_1C5BC8BD4();
  sub_1C5A48438(v10, v14);
  v23 = &v14[*(v12 + 44)];
  v24 = v61;
  *(v23 + 4) = v60;
  *(v23 + 5) = v24;
  *(v23 + 6) = v62;
  v26 = v57;
  v25 = v58;
  *v23 = v56;
  *(v23 + 1) = v26;
  v27 = v59;
  *(v23 + 2) = v25;
  *(v23 + 3) = v27;
  v28 = sub_1C5BCAA54();
  if (a3)
  {
    v30 = v28;
    v31 = v29;
    swift_beginAccess();
    v32 = 0;
    if (*(a3 + 17))
    {
      v32 = sub_1C5BCA464();
    }

    sub_1C59E7D34(v14, v17, &qword_1EC194980, &qword_1C5BDCD38);
    v33 = &v17[*(v15 + 36)];
    *v33 = v32;
    v33[1] = v30;
    v33[2] = v31;
    v34 = sub_1C5BCAA54();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1949A0, &unk_1C5BEE410);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C5BD4D40;
    *(v37 + 32) = sub_1C5BCA474();
    *(v37 + 40) = sub_1C5BCA484();
    sub_1C5BCABB4();
    sub_1C5BCABC4();
    MEMORY[0x1C694EBE0](v37);
    sub_1C5BC88B4();
    v38 = v63;
    sub_1C59E7D34(v17, v19, &qword_1EC194988, &qword_1C5BDCD40);
    v39 = &v19[*(v51 + 36)];
    *v39 = v34;
    *(v39 + 1) = v36;
    *(v39 + 2) = v38;
    v40 = v64;
    *(v39 + 40) = v65;
    *(v39 + 24) = v40;

    if ((v53 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v41 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v42 = v48;
      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v49 + 8))(v42, v50);
      a1 = v55;
    }

    swift_getKeyPath("h9\\&");
    v55 = a1;
    sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
    sub_1C5BC7B74();

    v43 = *(a1 + 56);

    if (v43)
    {
      v44 = 1.0;
    }

    else
    {
      v44 = 0.0;
    }

    sub_1C59E7D34(v19, v22, &qword_1EC194990, &qword_1C5BDCD48);
    *&v22[*(v52 + 36)] = v44;
    v45 = v54;
    sub_1C59E7D34(v22, v54, &qword_1EC194998, &unk_1C5BDCD50);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC1949A8, &unk_1C5BDCD60);
    *(v45 + *(result + 36)) = 0;
  }

  else
  {
    _s5DebugCMa(0);
    sub_1C59378F0(&qword_1EDA4A208, _s5DebugCMa, &unk_1C5BE6138);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

void *sub_1C5A41BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v7 = *v1;
  v8 = *(v1 + 4);
  v29 = *(v1 + 3);
  *v30 = v8;
  *&v30[10] = *(v1 + 74);
  v9 = *(v1 + 2);
  v27 = *(v1 + 1);
  v28 = v9;
  v10 = sub_1C5BCA484();
  if (v7)
  {
    v11 = v10;
    swift_beginAccess();
    if ((*(v7 + 58) & 1) == 0)
    {
      if (v30[25])
      {
        v25 = v29;
        v26[0] = *v30;
        *(v26 + 9) = *&v30[9];
        v23 = v27;
        v24 = v28;
      }

      else
      {

        sub_1C5BCB4E4();
        v12 = sub_1C5BC9844();
        sub_1C5BC7C54();

        sub_1C5BC8F24();
        swift_getAtKeyPath();
        sub_1C5924EF4(&v27, &unk_1EC194DE0, &qword_1C5BDCD20);
        (*(v4 + 8))(v6, v3);
      }

      if (BYTE2(v24) != 2)
      {
        goto LABEL_11;
      }
    }

    if (v30[25])
    {
      v25 = v29;
      v26[0] = *v30;
      *(v26 + 9) = *&v30[9];
      v23 = v27;
      v24 = v28;
    }

    else
    {

      sub_1C5BCB4E4();
      v13 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();
      sub_1C5924EF4(&v27, &unk_1EC194DE0, &qword_1C5BDCD20);
      (*(v4 + 8))(v6, v3);
    }

    if ((v24 & 1) == 0)
    {
LABEL_11:
      sub_1C5BCAA54();
      result = sub_1C5BC8BD4();
      *&v22[7] = v23;
      *&v22[23] = v24;
      *&v22[39] = v25;
      *&v22[55] = v26[0];
      *&v22[103] = v26[3];
      *&v22[87] = v26[2];
      *&v22[71] = v26[1];
      *a1 = v11;
      *(a1 + 8) = 0;
      v15 = *v22;
      v16 = *&v22[16];
      v17 = *&v22[32];
      *(a1 + 57) = *&v22[48];
      *(a1 + 41) = v17;
      *(a1 + 25) = v16;
      *(a1 + 9) = v15;
      v18 = *&v22[64];
      v19 = *&v22[80];
      v20 = *&v22[96];
      *(a1 + 120) = *&v22[111];
      *(a1 + 105) = v20;
      *(a1 + 89) = v19;
      *(a1 + 73) = v18;
      return result;
    }

    __break(1u);
  }

  _s17TransportControlsCMa();
  sub_1C59378F0(&qword_1EDA4A620, _s17TransportControlsCMa, &unk_1C5BDFD58);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

uint64_t sub_1C5A42018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194888, &unk_1C5BDCC88);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  _s19TrackSectionsPickerVMa(255, v4, v5, v6);
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v7 = sub_1C5BC8AB4();
  v22[0] = MEMORY[0x1E6981870];
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x1E697E5D8];
  v24[8] = WitnessTable;
  v24[9] = MEMORY[0x1E697E5D8];
  v24[6] = swift_getWitnessTable();
  v24[7] = v9;
  v24[4] = swift_getWitnessTable();
  v24[5] = v9;
  v24[0] = v4;
  v24[1] = v7;
  v24[2] = v5;
  v24[3] = swift_getWitnessTable();
  _s22TrackSectionsContainerVMa(255, v24);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v10 = sub_1C5BCA7D4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v22 - v15;
  v17 = *v2;
  v18 = *(v2 + 8);
  sub_1C5BC9144();
  v22[4] = v4;
  v22[5] = v5;
  v22[6] = v17;
  v23 = v18;
  sub_1C5BCA7C4();
  v19 = swift_getWitnessTable();
  sub_1C593EDC0(v13, v10, v19);
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_1C593EDC0(v16, v10, v19);
  return (v20)(v16, v10);
}

uint64_t sub_1C5A42328@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v65 = a3;
  v66 = a4;
  v69 = a5;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v62);
  v8 = &v61 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194890, &qword_1C5BDCC98);
  v9 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v61 - v10;
  v11 = sub_1C5BC8F34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194888, &unk_1C5BDCC88);
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v61 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v61 - v18;
  if (a2)
  {
    v20 = a1;
  }

  else
  {
    sub_1C5950E48(a1, 0);
    sub_1C5BCB4E4();
    v21 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v22 = sub_1C5942458(a1, 0);
    (*(v12 + 8))(v14, v11, v22);
    v20 = v132;
  }

  v70 = v19;
  if (v20 == 2)
  {
    (*(v9 + 56))(v19, 1, 1, v64, v17);
LABEL_8:
    v49 = v65;
    v50 = v66;
    _s19TrackSectionsPickerVMa(255, v65, v66, v23);
    swift_getWitnessTable();
    sub_1C5BCA7D4();
    sub_1C5BC8AB4();
    sub_1C5BC8AB4();
    v51 = sub_1C5BC8AB4();
    WitnessTable = swift_getWitnessTable();
    v53 = MEMORY[0x1E697E5D8];
    v89[6] = WitnessTable;
    v89[7] = MEMORY[0x1E697E5D8];
    v89[4] = swift_getWitnessTable();
    v89[5] = v53;
    v89[2] = swift_getWitnessTable();
    v89[3] = v53;
    v54 = swift_getWitnessTable();
    sub_1C5A42D30(v49, v50);
    v143 = v117;
    v144 = v118;
    v145 = v119;
    v139 = v113;
    v140 = v114;
    v142 = v116;
    v141 = v115;
    v136 = v109;
    v137 = v110;
    v138[1] = v112;
    v138[0] = v111;
    v132 = v105;
    v133 = v106;
    v135 = v108;
    v134 = v107;
    *&v124 = v49;
    *(&v124 + 1) = v51;
    *&v125 = v50;
    *(&v125 + 1) = v54;
    v55 = _s22TrackSectionsContainerVMa(0, &v124);
    v56 = swift_getWitnessTable();
    sub_1C593EDC0(&v132, v55, v56);
    v120[12] = v143;
    v120[13] = v144;
    v121 = v145;
    v120[8] = v139;
    v120[9] = v140;
    v120[11] = v142;
    v120[10] = v141;
    v120[4] = v136;
    v120[5] = v137;
    v120[6] = v138[0];
    v120[7] = v138[1];
    v120[0] = v132;
    v120[1] = v133;
    v120[2] = v134;
    v120[3] = v135;
    v57 = *(v55 - 8);
    v58 = *(v57 + 8);
    v58(v120, v55);
    v59 = v70;
    v60 = v68;
    sub_1C5981D3C(v70, v68);
    v122[12] = v102;
    v122[13] = v103;
    v122[8] = v98;
    v122[9] = v99;
    v122[11] = v101;
    v122[10] = v100;
    v122[4] = v94;
    v122[5] = v95;
    v122[7] = v97;
    v122[6] = v96;
    v122[0] = v90;
    v122[1] = v91;
    v122[3] = v93;
    v122[2] = v92;
    v86 = v102;
    v87 = v103;
    v82 = v98;
    v83 = v99;
    v84 = v100;
    v85 = v101;
    v78 = v94;
    v79 = v95;
    v80 = v96;
    v81 = v97;
    v74 = v90;
    v75 = v91;
    v123 = v104;
    v88 = v104;
    v76 = v92;
    v77 = v93;
    v89[0] = v60;
    v89[1] = &v74;
    (*(v57 + 16))(&v132, v122, v55);
    v73[0] = v67;
    v73[1] = v55;
    v71 = sub_1C5A47F60();
    v72 = v56;
    sub_1C594226C(v89, 2uLL, v73);
    v130[6] = v102;
    v130[7] = v103;
    v131 = v104;
    v130[2] = v98;
    v130[3] = v99;
    v130[5] = v101;
    v130[4] = v100;
    v128 = v94;
    v129 = v95;
    v130[1] = v97;
    v130[0] = v96;
    v124 = v90;
    v125 = v91;
    v127 = v93;
    v126 = v92;
    v58(&v124, v55);
    sub_1C5981DAC(v59);
    v143 = v86;
    v144 = v87;
    v145 = v88;
    v139 = v82;
    v140 = v83;
    v142 = v85;
    v141 = v84;
    v136 = v78;
    v137 = v79;
    v138[1] = v81;
    v138[0] = v80;
    v132 = v74;
    v133 = v75;
    v135 = v77;
    v134 = v76;
    v58(&v132, v55);
    return sub_1C5981DAC(v60);
  }

  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  v24 = sub_1C5BC8324();
  v26 = v25;
  v27 = sub_1C5BC98C4();
  sub_1C5BC8174();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v26 & 1;
  LOBYTE(v132) = v26 & 1;
  LOBYTE(v124) = 0;
  v37 = sub_1C5BC98E4();
  sub_1C5BC8174();
  LOBYTE(v122[0]) = 0;
  *&v124 = v24;
  BYTE8(v124) = v36;
  v125 = xmmword_1C5BDC0B0;
  LOBYTE(v126) = v27;
  *(&v126 + 1) = v29;
  *&v127 = v31;
  *(&v127 + 1) = v33;
  *&v128 = v35;
  BYTE8(v128) = 0;
  LOBYTE(v129) = v37;
  *(&v129 + 1) = v38;
  *&v130[0] = v39;
  *(&v130[0] + 1) = v40;
  *&v130[1] = v41;
  BYTE8(v130[1]) = 0;
  v42 = *MEMORY[0x1E697E728];
  v43 = sub_1C5BC89B4();
  (*(*(v43 - 8) + 104))(v8, v42, v43);
  sub_1C59378F0(&qword_1EDA46688, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C5BCADB4();
  if (result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194898, &qword_1C5BDCCA0);
    sub_1C5A47D68();
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
    v45 = v63;
    sub_1C5BC9F54();
    sub_1C5924EF4(v8, &qword_1EC192838, &qword_1C5BD5C80);
    v136 = v128;
    v137 = v129;
    v138[0] = v130[0];
    *(v138 + 9) = *(v130 + 9);
    v132 = v124;
    v133 = v125;
    v134 = v126;
    v135 = v127;
    sub_1C5924EF4(&v132, &qword_1EC194898, &qword_1C5BDCCA0);
    v46 = v70;
    v47 = v64;
    (*(v9 + 32))(v70, v45, v64);
    (*(v9 + 56))(v46, 0, 1, v47, v48);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C5A42D30(uint64_t a1, uint64_t a2)
{
  sub_1C5BC9144();
  _s19TrackSectionsPickerVMa(0, a1, a2, v4);
  swift_getWitnessTable();
  sub_1C5BCA7C4();
  v36 = v57;
  v37 = v58;
  v38 = v59;
  *&v39 = v60;
  v34 = v55;
  v35 = v56;
  sub_1C5BC98C4();
  v5 = sub_1C5BCA7D4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v49[2] = v57;
  v49[3] = v58;
  v49[4] = v59;
  v50 = v60;
  v49[0] = v55;
  v49[1] = v56;
  (*(*(v5 - 8) + 8))(v49, v5);
  v40 = v76;
  v41 = v77;
  LOBYTE(v42) = v78;
  v36 = v72;
  v37 = v73;
  v38 = v74;
  v39 = v75;
  v34 = v70;
  v35 = v71;
  sub_1C5BC98E4();
  v7 = sub_1C5BC8AB4();
  v8 = MEMORY[0x1E697E5D8];
  v32 = WitnessTable;
  v33 = MEMORY[0x1E697E5D8];
  v9 = swift_getWitnessTable();
  sub_1C5BCA2F4();
  v51[6] = v40;
  v51[7] = v41;
  v52 = v42;
  v51[2] = v36;
  v51[3] = v37;
  v51[4] = v38;
  v51[5] = v39;
  v51[0] = v34;
  v51[1] = v35;
  (*(*(v7 - 8) + 8))(v51, v7);
  v42 = v63;
  v43 = v64;
  v44 = v65;
  LOBYTE(v45) = v66;
  v38 = v59;
  v39 = v60;
  v40 = v61;
  v41 = v62;
  v34 = v55;
  v35 = v56;
  v36 = v57;
  v37 = v58;
  sub_1C5BC98B4();
  v10 = sub_1C5BC8AB4();
  v30 = v9;
  v31 = v8;
  swift_getWitnessTable();
  sub_1C5BCA2F4();
  v53[8] = v42;
  v53[9] = v43;
  v53[10] = v44;
  v54 = v45;
  v53[4] = v38;
  v53[5] = v39;
  v53[6] = v40;
  v53[7] = v41;
  v53[0] = v34;
  v53[1] = v35;
  v53[2] = v36;
  v53[3] = v37;
  (*(*(v10 - 8) + 8))(v53, v10);
  v27 = v82;
  v28 = v83;
  v29 = v84;
  v23 = v78;
  v24 = v79;
  v25 = v80;
  v26 = v81;
  v19 = v74;
  v20 = v75;
  v21 = v76;
  v22 = v77;
  v15 = v70;
  v16 = v71;
  v17 = v72;
  v18 = v73;
  v11 = sub_1C5BC8AB4();
  v12 = swift_getWitnessTable();
  sub_1C593EDC0(&v15, v11, v12);
  v67 = v27;
  v68 = v28;
  v69 = v29;
  v63 = v23;
  v64 = v24;
  v66 = v26;
  v65 = v25;
  v59 = v19;
  v60 = v20;
  v62 = v22;
  v61 = v21;
  v55 = v15;
  v56 = v16;
  v58 = v18;
  v57 = v17;
  v13 = *(*(v11 - 8) + 8);
  v13(&v55, v11);
  v27 = v46;
  v28 = v47;
  v29 = v48;
  v23 = v42;
  v24 = v43;
  v25 = v44;
  v26 = v45;
  v19 = v38;
  v20 = v39;
  v21 = v40;
  v22 = v41;
  v15 = v34;
  v16 = v35;
  v17 = v36;
  v18 = v37;
  sub_1C593EDC0(&v15, v11, v12);
  v82 = v27;
  v83 = v28;
  v84 = v29;
  v78 = v23;
  v79 = v24;
  v81 = v26;
  v80 = v25;
  v74 = v19;
  v75 = v20;
  v77 = v22;
  v76 = v21;
  v70 = v15;
  v71 = v16;
  v73 = v18;
  v72 = v17;
  return (v13)(&v70, v11);
}

uint64_t sub_1C5A432B8(uint64_t a1, uint64_t a2)
{
  sub_1C5A4FAA4(&v17);
  v25 = v19;
  v26 = v20;
  v23 = v18;
  v24 = BYTE8(v18);
  v21 = v17;
  v22 = BYTE8(v17);
  v11 = v19;
  v12 = v20;
  v9 = v17;
  v10 = v18;
  v5 = _s19TrackSectionsPickerVMa(0, a1, a2, v4);
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(&v9, v5, WitnessTable);
  sub_1C5924EF4(&v21, &qword_1EC1948D8, &qword_1C5BE4FD0);
  sub_1C5924EF4(&v23, &qword_1EC1948E0, &unk_1C5BDCCC0);
  sub_1C5924EF4(&v25, &qword_1EC1948E8, &unk_1C5BDE9D0);
  v7 = sub_1C5BC8C94();
  (*(*(v7 - 8) + 8))(&v26, v7);
  v9 = v13;
  v10 = v14;
  v11 = v15;
  v12 = v16;
  sub_1C593EDC0(&v9, v5, WitnessTable);

  return swift_unknownObjectRelease();
}

uint64_t sub_1C5A43464@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[1] = a2;
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v17[0] = a1[2];
  v3 = v17[0];
  v17[1] = v2;
  v17[2] = v4;
  v17[3] = v5;
  _s22TrackSectionsContainerV17ScrollableContentVMa(255, v17);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v6 = sub_1C5BC85B4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  sub_1C5BC9874();
  v16[4] = v3;
  v16[5] = v2;
  v16[6] = v4;
  v16[7] = v5;
  v16[8] = v16[0];
  sub_1C5BC85A4();
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(v9, v6, WitnessTable);
  v14 = *(v7 + 8);
  v14(v9, v6);
  sub_1C593EDC0(v12, v6, WitnessTable);
  return (v14)(v12, v6);
}

uint64_t sub_1C5A43660@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v34 = a6;
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v10 = _s22TrackSectionsContainerV17ScrollableContentVMa(0, &v39);
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  v31 = *(a3 - 8);
  v16 = v31;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v35 = &v28 - v21;
  v30 = a5;
  sub_1C593EDC0(a1, a3, a5);
  v29 = *(v16 + 16);
  v29(v19, a1, a3);
  sub_1C5A4395C(v19, v32, a3, a4, a5, v12);
  WitnessTable = swift_getWitnessTable();
  v23 = v15;
  sub_1C593EDC0(v12, v10, WitnessTable);
  v24 = v33;
  v25 = *(v33 + 8);
  v25(v12, v10);
  v29(v19, v35, a3);
  v39 = v19;
  (*(v24 + 16))(v12, v23, v10);
  v40 = v12;
  v38[0] = a3;
  v38[1] = v10;
  v36 = v30;
  v37 = WitnessTable;
  sub_1C594226C(&v39, 2uLL, v38);
  v25(v23, v10);
  v26 = *(v31 + 8);
  v26(v35, a3);
  v25(v12, v10);
  return (v26)(v19, a3);
}

uint64_t sub_1C5A4395C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  v11 = _s22TrackSectionsContainerV17ScrollableContentVMa(0, v17);
  v12 = a6 + *(v11 + 52);
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  *v12 = sub_1C5BC8324();
  *(v12 + 8) = v13 & 1;
  v14 = (a6 + *(v11 + 56));
  type metadata accessor for NowPlayingViewModel.PlaybackPosition();
  sub_1C59378F0(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
  result = sub_1C5BC8C84();
  *v14 = result;
  v14[1] = v16;
  return result;
}

uint64_t sub_1C5A43AA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18[1] = a2;
  v2 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v19 = a1[2];
  v3 = v19;
  v20 = v2;
  v21 = v4;
  v22 = v5;
  _s22TrackSectionsContainerV17ScrollableContentV12FadeBackdropVMa(255, &v19);
  sub_1C5BC81E4();
  sub_1C5BC8AB4();
  v18[10] = swift_getWitnessTable();
  v18[11] = MEMORY[0x1E69805D0];
  swift_getWitnessTable();
  v6 = sub_1C5BC8BA4();
  WitnessTable = swift_getWitnessTable();
  v19 = v6;
  v20 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194AC8, &qword_1C5BDCDE8);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata3();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  v8 = sub_1C5BCA7F4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v18 - v13;
  sub_1C5BCAA44();
  v18[4] = v3;
  v18[5] = v2;
  v18[6] = v4;
  v18[7] = v5;
  v18[8] = v18[0];
  sub_1C5BCA7E4();
  v15 = swift_getWitnessTable();
  sub_1C593EDC0(v11, v8, v15);
  v16 = *(v9 + 8);
  v16(v11, v8);
  sub_1C593EDC0(v14, v8, v15);
  return (v16)(v14, v8);
}

uint64_t sub_1C5A43DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v59 = a1;
  v64 = a6;
  v10 = sub_1C5BC93D4();
  OpaqueTypeConformance2 = *(v10 - 8);
  v62 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v85 = a2;
  *(&v85 + 1) = a3;
  v12 = a2;
  *&v86 = a4;
  *(&v86 + 1) = a5;
  v13 = a5;
  v54 = _s22TrackSectionsContainerV17ScrollableContentVMa(0, &v85);
  v14 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v52 = &v47 - v15;
  v16 = v13;
  sub_1C5BC81E4();
  v17 = sub_1C5BC8AB4();
  WitnessTable = swift_getWitnessTable();
  v83 = MEMORY[0x1E69805D0];
  v63 = MEMORY[0x1E697E858];
  v49 = v17;
  v50 = swift_getWitnessTable();
  v18 = sub_1C5BC8BA4();
  v51 = v18;
  v53 = swift_getWitnessTable();
  *&v85 = v18;
  *(&v85 + 1) = v53;
  v56 = MEMORY[0x1E697CF10];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v57 = *(OpaqueTypeMetadata2 - 8);
  v58 = OpaqueTypeMetadata2;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v48 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v66 = &v47 - v22;
  LOBYTE(v84[0]) = 1;
  *&v85 = v12;
  *(&v85 + 1) = a3;
  *&v86 = a4;
  *(&v86 + 1) = v16;
  v23 = v16;
  v24 = _s22TrackSectionsContainerV17ScrollableContentV12FadeBackdropVMa(0, &v85);
  v65 = v24;
  v55 = swift_getWitnessTable();
  sub_1C593EDC0(v84, v24, v55);
  v25 = v52;
  v26 = v54;
  (*(v14 + 16))(v52, v59, v54);
  v27 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v28 = swift_allocObject();
  *(v28 + 2) = v12;
  *(v28 + 3) = a3;
  *(v28 + 4) = a4;
  *(v28 + 5) = v23;
  (*(v14 + 32))(&v28[v27], v25, v26);
  swift_checkMetadataState();
  *&v85 = sub_1C5BC8B94();
  *(&v85 + 1) = v29;
  v30 = sub_1C5BC98B4();
  v31 = v60;
  sub_1C5BC93B4();
  v32 = swift_checkMetadataState();
  v33 = v48;
  v34 = v53;
  MEMORY[0x1C694E150](v30, 0x4030000000000000, 0, v31, v32, v53);
  (*(OpaqueTypeConformance2 + 8))(v31, v62);

  *&v85 = v32;
  *(&v85 + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v35 = v58;
  sub_1C593EDC0(v33, v58, OpaqueTypeConformance2);
  v36 = v57;
  v62 = *(v57 + 8);
  v62(v33, v35);
  LOBYTE(v84[0]) = 0;
  sub_1C5BCAA54();
  sub_1C5A496CC();
  v37 = v55;
  sub_1C5BCA204();
  v73 = v85;
  v74 = v86;
  v75 = v87;
  v76 = v88;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194AC8, &qword_1C5BDCDE8);
  v38 = sub_1C5BC8AB4();
  v39 = sub_1C5924F54(&qword_1EC194AC0, &qword_1EC194AC8, &qword_1C5BDCDE8, MEMORY[0x1E697FB38]);
  v72[3] = v37;
  v72[4] = v39;
  v40 = swift_getWitnessTable();
  sub_1C593EDC0(&v73, v38, v40);
  v84[0] = v73;
  v84[1] = v74;
  v84[2] = v75;
  v84[3] = v76;
  v41 = *(*(v38 - 8) + 8);
  v41(v84, v38);
  v71 = v81;
  v72[0] = &v71;
  v42 = *(v36 + 16);
  v43 = v66;
  v42(v33, v66, v35);
  v73 = v77;
  v74 = v78;
  v75 = v79;
  v76 = v80;
  v72[1] = v33;
  v72[2] = &v73;
  v70[0] = v65;
  v70[1] = v35;
  v70[2] = v38;
  v67 = v37;
  v68 = OpaqueTypeConformance2;
  v69 = v40;
  sub_1C594226C(v72, 3uLL, v70);
  v44 = v43;
  v45 = v62;
  v62(v44, v35);
  v85 = v73;
  v86 = v74;
  v87 = v75;
  v88 = v76;
  v41(&v85, v38);
  return v45(v33, v35);
}

uint64_t sub_1C5A44464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v51 = a2;
  v53 = a1;
  v58 = a7;
  v68[0] = a3;
  v68[1] = a4;
  v45 = a3;
  v68[2] = a5;
  v68[3] = a6;
  v46 = a5;
  v59 = _s22TrackSectionsContainerV17ScrollableContentVMa(0, v68);
  v52 = *(v59 - 8);
  v55 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v50 = &v42 - v11;
  v12 = sub_1C5BC8AF4();
  v13 = *(v12 - 8);
  v49 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1C5BC81E4();
  v56 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v47 = &v42 - v17;
  v18 = sub_1C5BC8AB4();
  v57 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v48 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v54 = &v42 - v21;
  v22 = sub_1C5BC9874();
  v61 = a3;
  v62 = a4;
  v23 = a4;
  v43 = a4;
  v63 = a5;
  v64 = a6;
  v44 = a6;
  v24 = v51;
  v65 = v51;
  sub_1C59A09AC(v22, sub_1C5A49720, v60, v23, a6);
  v25 = v15;
  v26 = v15;
  v27 = v12;
  (*(v13 + 16))(v26, v53, v12);
  v28 = v52;
  v29 = v50;
  (*(v52 + 16))(v50, v24, v59);
  v30 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v31 = (v49 + *(v28 + 80) + v30) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v33 = v43;
  *(v32 + 2) = v45;
  *(v32 + 3) = v33;
  v34 = v44;
  *(v32 + 4) = v46;
  *(v32 + 5) = v34;
  (*(v13 + 32))(&v32[v30], v25, v27);
  (*(v28 + 32))(&v32[v31], v29, v59);
  WitnessTable = swift_getWitnessTable();
  v36 = v48;
  v37 = v47;
  sub_1C5BCA324();

  (*(v56 + 8))(v37, v16);
  v66 = WitnessTable;
  v67 = MEMORY[0x1E69805D0];
  v38 = swift_getWitnessTable();
  v39 = v54;
  sub_1C593EDC0(v36, v18, v38);
  v40 = *(v57 + 8);
  v40(v36, v18);
  sub_1C593EDC0(v39, v18, v38);
  return (v40)(v39, v18);
}

uint64_t sub_1C5A44968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C593EDC0(v10, v11, v12);
  sub_1C593EDC0(v9, a3, a5);
  return (*(v7 + 8))(v9, a3);
}

uint64_t sub_1C5A44A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1C5BC8F34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = a3;
  *(&v20 + 1) = a4;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  v15 = _s22TrackSectionsContainerV17ScrollableContentVMa(0, &v20);
  LOBYTE(a4) = *(a2 + *(v15 + 52) + 8);

  if ((a4 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v16 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v12 + 8))(v14, v11);
  }

  if (*(a2 + *(v15 + 56)))
  {

    sub_1C5A4FC2C(v17, &v20);

    v19[0] = v20;
    v19[1] = v21;
    sub_1C5BCABD4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194B98, &qword_1C5BDCF50);
    sub_1C5A49858();
    sub_1C5BC8AE4();
  }

  else
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C59378F0(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
    result = sub_1C5BC8C74();
    __break(1u);
  }

  return result;
}

double sub_1C5A44CB8@<D0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1949A0, &unk_1C5BEE410);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C5BD4D40;
  *(v2 + 32) = sub_1C5BCA484();
  *(v2 + 40) = sub_1C5BCA474();
  sub_1C5BCABB4();
  sub_1C5BCABC4();
  MEMORY[0x1C694EBE0](v2);
  sub_1C5BC88B4();
  result = *&v4;
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  return result;
}

__n128 sub_1C5A44D7C@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  sub_1C5BCAA54();
  sub_1C5BC85D4();
  *&v5[7] = v6;
  *&v5[23] = v7;
  *&v5[39] = v8;
  *(a2 + 17) = *v5;
  *a2 = 0xD00000000000003DLL;
  *(a2 + 8) = 0x80000001C5BF84C0;
  *(a2 + 16) = v2;
  *(a2 + 33) = *&v5[16];
  result = *&v5[32];
  *(a2 + 49) = *&v5[32];
  *(a2 + 64) = *(&v8 + 1);
  return result;
}

uint64_t sub_1C5A44E44@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v57 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v46 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v46 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194AD0, &qword_1C5BDCE90);
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v46 - v14;
  v15 = sub_1C5BC8F34();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v19 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v16 + 8))(v18, v15);
    a1 = v60;
  }

  swift_getKeyPath(byte_1C5BDCE98);
  v60 = a1;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v21 = a1[3];
  v20 = a1[4];
  v22 = a1[5];
  v23 = a1[6];
  sub_1C596F94C(v21, v20, v22, v23, v24);

  if (v23)
  {
    sub_1C5BC9A44();
    v25 = sub_1C5BC9C14();
    v51 = v26;
    v52 = v27;
    v47 = v28;

    v49 = v21;
    v50 = v20;
    v48 = v22;
    if (qword_1EC190670 != -1)
    {
      swift_once();
    }

    v29 = qword_1EC1A6AB8;
    v30 = *(v5 + 36);
    v31 = *MEMORY[0x1E6981DB8];
    v32 = sub_1C5BCAB54();
    (*(*(v32 - 8) + 104))(v12 + v30, v31, v32);
    *v12 = v29;

    LODWORD(v31) = sub_1C5BC9404();
    v33 = v53;
    sub_1C59400B0(v12, v53, &unk_1EC196170, &qword_1C5BDA000);
    LODWORD(v60) = v31;
    sub_1C59400B0(v33, v7, &unk_1EC196170, &qword_1C5BDA000);
    sub_1C5924F54(&qword_1EC192920, &unk_1EC196170, &qword_1C5BDA000, MEMORY[0x1E697FAF0]);
    v34 = sub_1C5BC85E4();
    v46 = v34;
    v35 = sub_1C5BC85E4();
    sub_1C5924EF4(v33, &unk_1EC196170, &qword_1C5BDA000);
    sub_1C5924EF4(v12, &unk_1EC196170, &qword_1C5BDA000);
    v36 = v51;
    v60 = v25;
    v61 = v51;
    LOBYTE(v30) = v47 & 1;
    v62 = v47 & 1;
    v53 = v25;
    v63 = v52;
    v64 = v34;
    v65 = v35;
    v37 = [objc_opt_self() mainBundle];
    v38 = sub_1C5949F2C();
    v40 = v39;

    v58 = v38;
    v59 = v40;
    MEMORY[0x1C694F170](46, 0xE100000000000000);
    MEMORY[0x1C694F170](0xD00000000000001DLL, 0x80000001C5BF84A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194AD8, &unk_1C5BDCEC0);
    sub_1C5A48F48();
    v41 = v54;
    sub_1C5BCA164();
    sub_1C5953BD8(v49, v50, v48 & 1);

    sub_1C5953BD8(v53, v36, v30);

    v42 = v41;
    v43 = v57;
    sub_1C59E7D34(v42, v57, &qword_1EC194AD0, &qword_1C5BDCE90);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v43 = v57;
  }

  return (*(v55 + 56))(v43, v44, 1, v56);
}

double sub_1C5A45438()
{
  if (qword_1EC1909E8 != -1)
  {
    swift_once();
  }

  result = *&qword_1EC1A6E68;
  qword_1EC1945A0 = qword_1EC1A6E68;
  return result;
}

uint64_t sub_1C5A45490()
{
  if (qword_1EC1905C8 != -1)
  {
    swift_once();
  }

  qword_1EC1945A8 = qword_1EC1A6A38;
}

double sub_1C5A454F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1C5BCA484();
  v9 = *(a1 + 16);
  v28 = v9;
  v29 = *(a1 + 24);
  if (v29 == 1)
  {
    v26 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v28, &qword_1EC191B48, &qword_1C5BE98A0);
    (*(v5 + 8))(v7, v4);
    v9 = v26;
  }

  v11 = sub_1C5BC9664();
  sub_1C5BCABD4();
  v13 = v12;
  v15 = v14;
  KeyPath = swift_getKeyPath("09\\&");
  v25[7] = 0;
  v17 = sub_1C5BC9894();
  v27 = 0;
  v18 = sub_1C5BC98B4();
  *a2 = v8;
  *(a2 + 8) = 0xD00000000000001DLL;
  *(a2 + 16) = 0x80000001C5BF8460;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  *(a2 + 56) = 1;
  *(a2 + 64) = KeyPath;
  *(a2 + 137) = 0;
  *(a2 + 144) = v17;
  __asm { FMOV            V0.2D, #-12.0 }

  *(a2 + 152) = _Q0;
  *(a2 + 168) = xmmword_1C5BDC0C0;
  *(a2 + 184) = 0;
  *(a2 + 192) = v18;
  result = 0.0;
  *(a2 + 200) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 232) = 1;
  return result;
}

uint64_t sub_1C5A4571C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v38[4] = v2[4];
  v39[0] = v5;
  *(v39 + 10) = *(v2 + 90);
  v6 = v2[1];
  v38[0] = *v2;
  v38[1] = v6;
  v7 = v2[3];
  v38[2] = v2[2];
  v38[3] = v7;
  v8 = sub_1C5BCAA54();
  v10 = v9;
  sub_1C5A454F4(v38, &v23);
  v52 = v35;
  v53 = v36;
  v54 = v37;
  v48 = v31;
  v49 = v32;
  v50 = v33;
  v51 = v34;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v47 = v30;
  v40 = v23;
  v41 = v24;
  v42 = v25;
  v43 = v26;
  *&v55 = v8;
  *(&v55 + 1) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194658, &qword_1C5BDC6C0);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194660, &qword_1C5BDC6C8) + 36));
  v13 = v53;
  v12[12] = v52;
  v12[13] = v13;
  v14 = v55;
  v12[14] = v54;
  v12[15] = v14;
  v15 = v49;
  v12[8] = v48;
  v12[9] = v15;
  v16 = v51;
  v12[10] = v50;
  v12[11] = v16;
  v17 = v45;
  v12[4] = v44;
  v12[5] = v17;
  v18 = v47;
  v12[6] = v46;
  v12[7] = v18;
  v19 = v41;
  *v12 = v40;
  v12[1] = v19;
  v20 = v43;
  v12[2] = v42;
  v12[3] = v20;
  v56[12] = v35;
  v56[13] = v36;
  v56[14] = v37;
  v56[8] = v31;
  v56[9] = v32;
  v56[11] = v34;
  v56[10] = v33;
  v56[4] = v27;
  v56[5] = v28;
  v56[6] = v29;
  v56[7] = v30;
  v56[0] = v23;
  v56[1] = v24;
  v56[2] = v25;
  v56[3] = v26;
  v57 = v8;
  v58 = v10;
  sub_1C59400B0(&v40, &v22, &qword_1EC194668, &qword_1C5BDC6D0);
  return sub_1C5924EF4(v56, &qword_1EC194668, &qword_1C5BDC6D0);
}

double sub_1C5A45904@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C5BCA484();
  v9 = *(a1 + 16);
  v24 = v9;
  v25 = *(a1 + 24);
  if (v25 == 1)
  {
    v23 = v9;
  }

  else
  {

    sub_1C5BCB4E4();
    v10 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(&v24, &qword_1EC191B48, &qword_1C5BE98A0);
    (*(v5 + 8))(v7, v4);
    v9 = v23;
  }

  v11 = sub_1C5BC9664();
  sub_1C5BCABD4();
  v13 = v12;
  v15 = v14;
  v16 = sub_1C5BC9894();
  *a2 = v8;
  *(a2 + 8) = 0xD00000000000001ELL;
  *(a2 + 16) = 0x80000001C5BF8480;
  *(a2 + 24) = v9;
  *(a2 + 32) = v11;
  *(a2 + 40) = v13;
  *(a2 + 48) = v15;
  *(a2 + 56) = 1;
  *(a2 + 64) = v16;
  __asm { FMOV            V0.2D, #-12.0 }

  *(a2 + 72) = _Q0;
  result = -13.0;
  *(a2 + 88) = xmmword_1C5BDC0C0;
  *(a2 + 104) = 0;
  return result;
}

uint64_t sub_1C5A45AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v26[4] = v2[4];
  v27[0] = v5;
  *(v27 + 10) = *(v2 + 90);
  v6 = v2[1];
  v26[0] = *v2;
  v26[1] = v6;
  v7 = v2[3];
  v26[2] = v2[2];
  v26[3] = v7;
  v8 = sub_1C5BCAA54();
  v10 = v9;
  sub_1C5A45904(v26, &v19);
  v32 = v23;
  v33 = v24;
  v34 = v25;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  *&v35 = v8;
  *(&v35 + 1) = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1948F0, &qword_1C5BDCCD0);
  (*(*(v11 - 8) + 16))(a2, a1, v11);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1948F8, &qword_1C5BDCCD8) + 36));
  v13 = v33;
  v12[4] = v32;
  v12[5] = v13;
  v14 = v35;
  v12[6] = v34;
  v12[7] = v14;
  v15 = v29;
  *v12 = v28;
  v12[1] = v15;
  v16 = v31;
  v12[2] = v30;
  v12[3] = v16;
  v36[0] = v19;
  v36[1] = v20;
  v36[5] = v24;
  v36[6] = v25;
  v36[3] = v22;
  v36[4] = v23;
  v36[2] = v21;
  v37 = v8;
  v38 = v10;
  sub_1C59400B0(&v28, &v18, &qword_1EC194900, &qword_1C5BDCCE0);
  return sub_1C5924EF4(v36, &qword_1EC194900, &qword_1C5BDCCE0);
}

uint64_t sub_1C5A45C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  v8 = sub_1C5BC8324();
  v18 = v9 & 1;
  v17 = 0;
  v19 = 0;
  *&v11 = v8;
  BYTE8(v11) = v9 & 1;
  *&v12 = swift_getKeyPath("h9\\&");
  BYTE8(v12) = 0;
  *&v13 = swift_getKeyPath("09\\&");
  v16[25] = 0;
  MEMORY[0x1C694E550](&v11, a1, a3, a2);
  v20[4] = v15;
  v21[0] = *v16;
  *(v21 + 10) = *&v16[10];
  v20[0] = v11;
  v20[1] = v12;
  v20[2] = v13;
  v20[3] = v14;
  return a4(v20);
}

void sub_1C5A45DBC(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>)
{
  v10 = sub_1C5BC8F34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);

  v14 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v11 + 8))(v13, v10);
    v14 = v20;
  }

  swift_getKeyPath("h9\\&");
  v20 = v14;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v16 = *(v14 + 56);

  if (v16 == 1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a1;
    *(v17 + 40) = a2 & 1;

    v18 = sub_1C5A46AF4;
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  *a5 = v18;
  a5[1] = v17;
}

void sub_1C5A45FE8(double *a1, char a2, uint64_t a3, uint64_t a4, CGFloat a5, CGFloat a6)
{
  v12 = sub_1C5BC8F34();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v17 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v12);
    v16 = v26;
  }

  swift_getKeyPath("h9\\&");
  v26 = v16;
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  sub_1C5BC7B74();

  v18 = *(v16 + 56);

  if (v18 == 1)
  {

    if ((a2 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v20 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v13 + 8))(v15, v12);
      v19 = v26;
    }

    v21 = v19[8];
    v22 = v19[9];
    v23 = v19[10];
    v24 = v19[11];

    v28.origin.x = v21;
    v28.origin.y = v22;
    v28.size.width = v23;
    v28.size.height = v24;
    v27.x = a5;
    v27.y = a6;
    if (!CGRectContainsPoint(v28, v27))
    {
      if (qword_1EC1906D8 != -1)
      {
        swift_once();
      }

      MEMORY[0x1EEE9AC00](qword_1EC1945A8);
      *(&v25 - 4) = a3;
      *(&v25 - 3) = a4;
      *(&v25 - 2) = a1;
      *(&v25 - 8) = a2 & 1;
      sub_1C5BC87F4();
    }
  }
}

void sub_1C5A46330(uint64_t a1, char a2)
{
  v4 = sub_1C5BC8F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    a1 = v11;
  }

  if (*(a1 + 56))
  {
    KeyPath = swift_getKeyPath("h9\\&");
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v10 - 2) = a1;
    *(&v10 - 8) = 0;
    v11 = a1;
    sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
    sub_1C5BC7B64();
  }

  else
  {
    *(a1 + 56) = 0;
  }
}

uint64_t sub_1C5A46560()
{
  _s13TrackSectionsCMa(0);
  sub_1C59378F0(qword_1EDA4AB40, _s13TrackSectionsCMa, &unk_1C5BDE348);
  return sub_1C5BC8324();
}

char *sub_1C5A46640(char *result, double a2, double a3)
{
  if (result)
  {
    v6 = result;
    if ([result type] || (UIViewIgnoresTouchEvents() & 1) != 0)
    {
      return 0;
    }

    v10.receiver = v3;
    v10.super_class = type metadata accessor for TouchDownDetectionView.PassthroughView();
    result = objc_msgSendSuper2(&v10, sel_hitTest_withEvent_, v6, a2, a3);
    if (result && result == v3)
    {
      v7 = *&v3[OBJC_IVAR____TtCV11MediaCoreUIP33_F9332246B6179A9B3C5B9D04F10106EF22TouchDownDetectionView15PassthroughView_action];
      v8 = result;

      v7(v9, a2, a3);

      return 0;
    }
  }

  return result;
}

id sub_1C5A467C4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TouchDownDetectionView.PassthroughView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C5A46834()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = type metadata accessor for TouchDownDetectionView.PassthroughView();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtCV11MediaCoreUIP33_F9332246B6179A9B3C5B9D04F10106EF22TouchDownDetectionView15PassthroughView_action];
  *v5 = v2;
  *(v5 + 1) = v1;
  v11.receiver = v4;
  v11.super_class = v3;

  v6 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 clearColor];
  [v8 setBackgroundColor_];

  return v8;
}

double sub_1C5A46914(uint64_t a1)
{
  v2 = v1[1];
  v3 = (a1 + OBJC_IVAR____TtCV11MediaCoreUIP33_F9332246B6179A9B3C5B9D04F10106EF22TouchDownDetectionView15PassthroughView_action);
  *v3 = *v1;
  v3[1] = v2;

  return result;
}

uint64_t sub_1C5A4696C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A46C34();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C5A469D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5A46C34();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C5A46A34(uint64_t a1)
{
  sub_1C5A46C34();
  sub_1C5BC9264();
  __break(1u);
}

uint64_t sub_1C5A46A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5A46B58()
{
  result = qword_1EC1945B8;
  if (!qword_1EC1945B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1945C0, &qword_1C5BDC240);
    sub_1C5A46BDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1945B8);
  }

  return result;
}

unint64_t sub_1C5A46BDC()
{
  result = qword_1EC1945C8;
  if (!qword_1EC1945C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1945C8);
  }

  return result;
}

unint64_t sub_1C5A46C34()
{
  result = qword_1EC1945D0[0];
  if (!qword_1EC1945D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC1945D0);
  }

  return result;
}

uint64_t sub_1C5A46CC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5A46DF0()
{
  result = qword_1EC194688;
  if (!qword_1EC194688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194688);
  }

  return result;
}

unint64_t sub_1C5A46E70()
{
  result = qword_1EC194698;
  if (!qword_1EC194698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194670, &qword_1C5BDC6D8);
    sub_1C5924F54(&qword_1EC1946A0, &qword_1EC1946A8, &qword_1C5BDC720, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194698);
  }

  return result;
}

void sub_1C5A46F58(uint64_t a1)
{
  sub_1C5BC8C94();
  if (v1 <= 0x3F)
  {
    sub_1C5A4705C(319, qword_1EC194738, _s13TrackSectionsCMa);
    if (v2 <= 0x3F)
    {
      sub_1C5A4705C(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C5A4705C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy74_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 58) = *(a2 + 58);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1C5A470D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 74))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 73);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5A4711C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 74) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 74) = 0;
    }

    if (a2)
    {
      *(result + 73) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1C5A471A8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 90))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5A47204(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1C5A47280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1C5A472DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1C5A47340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C5A4737C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1C5A4705C(319, qword_1EC194738, _s13TrackSectionsCMa);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5A4743C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (v10 <= 0xFE)
  {
    v10 = 254;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = *(*(v6 - 8) + 64) + 7;
  if (v10 >= a2)
  {
    goto LABEL_30;
  }

  v13 = ((v12 + (v11 & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = (a2 - v10 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (*&a1[v13])
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (v18)
      {
        goto LABEL_26;
      }
    }

LABEL_30:
    if (v5 == v10)
    {
      return (*(v4 + 48))(a1);
    }

    v22 = &a1[v11] & ~v9;
    if (v8 == v10)
    {
      return (*(v7 + 48))(v22, v8, v6);
    }

    v23 = *(((v12 + v22) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v23 > 1)
    {
      return (v23 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  if (!v17)
  {
    goto LABEL_30;
  }

  v18 = a1[v13];
  if (!a1[v13])
  {
    goto LABEL_30;
  }

LABEL_26:
  v20 = (v18 - 1) << (8 * v13);
  if (v13 <= 3)
  {
    v21 = *a1;
  }

  else
  {
    v20 = 0;
    v21 = *a1;
  }

  return v10 + (v21 | v20) + 1;
}

void sub_1C5A47618(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(*(a4 + 24) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v7)
  {
    v13 = *(v6 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0xFE)
  {
    v13 = 254;
  }

  v14 = v10 + v11;
  v15 = (v10 + v11) & ~v11;
  v16 = v12 + 7;
  v17 = ((v12 + 7 + v15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 >= a3)
  {
    v21 = 0;
    if (v13 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v18 = (a3 - v13 + 255) >> 8;
    if (v17 <= 3)
    {
      v19 = v18 + 1;
    }

    else
    {
      v19 = 2;
    }

    if (v19 >= 0x10000)
    {
      v20 = 4;
    }

    else
    {
      v20 = 2;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    if (v19 >= 2)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    if (v13 >= a2)
    {
LABEL_19:
      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&a1[v17] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v17] = 0;
      }

      else if (v21)
      {
        a1[v17] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v7 == v13)
      {
        v24 = *(v6 + 56);

        v24();
      }

      else
      {
        v25 = &a1[v14] & ~v11;
        if (v9 == v13)
        {
          v26 = *(v8 + 56);

          v26(v25);
        }

        else
        {
          v27 = (v16 + v25) & 0xFFFFFFFFFFFFFFF8;
          if (a2 > 0xFE)
          {
            *(v27 + 8) = 0;
            *v27 = a2 - 255;
          }

          else
          {
            *(v27 + 8) = -a2;
          }
        }
      }

      return;
    }
  }

  v22 = ~v13 + a2;
  bzero(a1, v17);
  if (v17 <= 3)
  {
    v23 = (v22 >> 8) + 1;
  }

  else
  {
    v23 = 1;
  }

  if (v17 <= 3)
  {
    *a1 = v22;
    if (v21 > 1)
    {
LABEL_29:
      if (v21 == 2)
      {
        *&a1[v17] = v23;
      }

      else
      {
        *&a1[v17] = v23;
      }

      return;
    }
  }

  else
  {
    *a1 = v22;
    if (v21 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v21)
  {
    a1[v17] = v23;
  }
}

uint64_t sub_1C5A478B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 106))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C5A478F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 106) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 106) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C5A47968()
{
  result = qword_1EC194840;
  if (!qword_1EC194840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194660, &qword_1C5BDC6C8);
    sub_1C5924F54(&qword_1EC194848, &qword_1EC194658, &qword_1C5BDC6C0, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC194850, &qword_1EC194668, &qword_1C5BDC6D0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194840);
  }

  return result;
}

unint64_t sub_1C5A47B98()
{
  result = qword_1EC194860;
  if (!qword_1EC194860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194860);
  }

  return result;
}

unint64_t sub_1C5A47BF8()
{
  result = qword_1EC194870;
  if (!qword_1EC194870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194858, &unk_1C5BDCC70);
    sub_1C5A47C84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194870);
  }

  return result;
}

unint64_t sub_1C5A47C84()
{
  result = qword_1EC194878;
  if (!qword_1EC194878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194868, &qword_1C5BDCC80);
    sub_1C59378F0(&qword_1EC194880, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194878);
  }

  return result;
}

unint64_t sub_1C5A47D68()
{
  result = qword_1EC1948A0;
  if (!qword_1EC1948A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194898, &qword_1C5BDCCA0);
    sub_1C5A47DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1948A0);
  }

  return result;
}

unint64_t sub_1C5A47DF4()
{
  result = qword_1EC1948A8;
  if (!qword_1EC1948A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1948B0, &qword_1C5BDCCA8);
    sub_1C5A47E80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1948A8);
  }

  return result;
}

unint64_t sub_1C5A47E80()
{
  result = qword_1EC1948B8;
  if (!qword_1EC1948B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1948C0, &unk_1C5BDCCB0);
    sub_1C5A47F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1948B8);
  }

  return result;
}

unint64_t sub_1C5A47F0C()
{
  result = qword_1EC1948C8;
  if (!qword_1EC1948C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1948C8);
  }

  return result;
}

unint64_t sub_1C5A47F60()
{
  result = qword_1EC1948D0;
  if (!qword_1EC1948D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194888, &unk_1C5BDCC88);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194898, &qword_1C5BDCCA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192838, &qword_1C5BD5C80);
    sub_1C5A47D68();
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1948D0);
  }

  return result;
}

unint64_t sub_1C5A480B8()
{
  result = qword_1EC194920;
  if (!qword_1EC194920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194918, &qword_1C5BDCCF8);
    sub_1C5A48170();
    sub_1C5924F54(&qword_1EDA46208, &qword_1EC194958, &unk_1C5BE8910, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194920);
  }

  return result;
}

unint64_t sub_1C5A48170()
{
  result = qword_1EC194928;
  if (!qword_1EC194928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194930, &qword_1C5BDCD00);
    sub_1C5924F54(&qword_1EC194938, &qword_1EC194940, &qword_1C5BDCD08, MEMORY[0x1E697DB78]);
    sub_1C5924F54(&qword_1EC194948, &qword_1EC194950, &qword_1C5BDCD10, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194928);
  }

  return result;
}

double sub_1C5A48254(__int128 *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for BackgroundPlatter(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_1C5A413A4(a1, v8, v3, v4, v5, v6);
}

double sub_1C5A48300(uint64_t a1)
{
  v1 = *(a1 + 17);
  v2 = *(a1 + 18);
  if (qword_1EC1908D0 != -1)
  {
    swift_once();
  }

  v3 = *(&xmmword_1EC1A6D80 + 1);
  if (v2 > 1)
  {
    v8 = 0.0;
    v9 = 6.0;
    if (v1 < 3)
    {
      v9 = 12.0;
    }

    if (v2 == 2)
    {
      v8 = v9;
    }
  }

  else
  {
    if (v2)
    {
      goto LABEL_17;
    }

    if (!v1)
    {
      v8 = 12.0;
      return v3 + v8 + *&qword_1EC1A6D90 + 8.0;
    }

    if (v1 != 1)
    {
LABEL_17:
      v8 = 6.0;
    }

    else
    {
      v4 = [objc_opt_self() currentTraitCollection];
      [v4 displayScale];
      v6 = v5;

      v7 = 1.0;
      if (v6 >= 1.0)
      {
        v7 = v6;
        if ((~*&v6 & 0x7FF0000000000000) == 0)
        {
          v7 = 1.0;
          if ((*&v6 & 0xFFFFFFFFFFFFFLL) == 0)
          {
            v7 = v6;
          }
        }
      }

      v8 = 1.0 / v7 + 5.0;
    }
  }

  return v3 + v8 + *&qword_1EC1A6D90 + 8.0;
}

uint64_t sub_1C5A48438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingContrastSensitiveBackdrop(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5A4849C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C5A4850C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1C5A4864C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_1C5A48864()
{
  result = qword_1EC194A30;
  if (!qword_1EC194A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1948F8, &qword_1C5BDCCD8);
    sub_1C5924F54(&qword_1EC194A38, &qword_1EC1948F0, &qword_1C5BDCCD0, MEMORY[0x1E697FDF8]);
    sub_1C5924F54(&qword_1EC194A40, &qword_1EC194900, &qword_1C5BDCCE0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A30);
  }

  return result;
}

unint64_t sub_1C5A48948()
{
  result = qword_1EC194A48;
  if (!qword_1EC194A48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194978, &qword_1C5BDCD30);
    sub_1C5A489D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A48);
  }

  return result;
}

unint64_t sub_1C5A489D4()
{
  result = qword_1EC194A50;
  if (!qword_1EC194A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194968, &qword_1C5BDCD18);
    sub_1C5924F54(&qword_1EC194A58, &qword_1EC194970, &qword_1C5BDCD28, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A50);
  }

  return result;
}

unint64_t sub_1C5A48A8C()
{
  result = qword_1EC194A60;
  if (!qword_1EC194A60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A68, &qword_1C5BDCDC8);
    sub_1C5A48B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A60);
  }

  return result;
}

unint64_t sub_1C5A48B18()
{
  result = qword_1EDA46568;
  if (!qword_1EDA46568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194A70, &unk_1C5BDCDD0);
    sub_1C5924F54(&qword_1EDA462C8, &qword_1EC194A78, &unk_1C5BDE530, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46568);
  }

  return result;
}

unint64_t sub_1C5A48BD0()
{
  result = qword_1EC194A80;
  if (!qword_1EC194A80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC1949A8, &unk_1C5BDCD60);
    sub_1C5A48C5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A80);
  }

  return result;
}

unint64_t sub_1C5A48C5C()
{
  result = qword_1EC194A88;
  if (!qword_1EC194A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194998, &unk_1C5BDCD50);
    sub_1C5A48CE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A88);
  }

  return result;
}

unint64_t sub_1C5A48CE8()
{
  result = qword_1EC194A90;
  if (!qword_1EC194A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194990, &qword_1C5BDCD48);
    sub_1C5A48DA0();
    sub_1C5924F54(&qword_1EC194AC0, &qword_1EC194AC8, &qword_1C5BDCDE8, MEMORY[0x1E697FB38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A90);
  }

  return result;
}

unint64_t sub_1C5A48DA0()
{
  result = qword_1EC194A98;
  if (!qword_1EC194A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194988, &qword_1C5BDCD40);
    sub_1C5A48E58();
    sub_1C5924F54(&qword_1EC194AB0, &qword_1EC194AB8, &qword_1C5BDCDE0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194A98);
  }

  return result;
}

unint64_t sub_1C5A48E58()
{
  result = qword_1EC194AA0;
  if (!qword_1EC194AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194980, &qword_1C5BDCD38);
    sub_1C59378F0(&qword_1EC194AA8, type metadata accessor for NowPlayingContrastSensitiveBackdrop, &unk_1C5BE63C4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194AA0);
  }

  return result;
}

unint64_t sub_1C5A48F48()
{
  result = qword_1EC194AE0;
  if (!qword_1EC194AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194AD8, &unk_1C5BDCEC0);
    sub_1C5924F54(&qword_1EC194AE8, qword_1EC194AF0, &qword_1C5BEC4D0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194AE0);
  }

  return result;
}

void sub_1C5A49030(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1C5A4705C(319, qword_1EC194738, _s13TrackSectionsCMa);
    if (v2 <= 0x3F)
    {
      sub_1C5A493F4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C5A490EC(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    v18 = v17 - 1;
    if (v18 < 0)
    {
      v18 = -1;
    }

    return (v18 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1C5A49234(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 24) - 8) + 64);
  v9 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 23) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = a2 - 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      *v18 = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

void sub_1C5A493F4(uint64_t a1)
{
  if (!qword_1EC194B78)
  {
    type metadata accessor for NowPlayingViewModel.PlaybackPosition();
    sub_1C59378F0(&qword_1EDA4A740, type metadata accessor for NowPlayingViewModel.PlaybackPosition, &protocol conformance descriptor for NowPlayingViewModel.PlaybackPosition);
    v1 = sub_1C5BC8C94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC194B78);
    }
  }
}

unint64_t sub_1C5A49488()
{
  result = qword_1EC194B80;
  if (!qword_1EC194B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194B88, &qword_1C5BDCEF8);
    sub_1C5A4950C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194B80);
  }

  return result;
}

unint64_t sub_1C5A4950C()
{
  result = qword_1EC194B90;
  if (!qword_1EC194B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194AD0, &qword_1C5BDCE90);
    sub_1C5A48F48();
    sub_1C59378F0(&qword_1EDA4E190, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194B90);
  }

  return result;
}

uint64_t sub_1C5A49610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(_s22TrackSectionsContainerV17ScrollableContentVMa(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1C5A44464(a1, v10, v5, v6, v7, v8, a2);
}

unint64_t sub_1C5A496CC()
{
  result = qword_1EDA46698;
  if (!qword_1EDA46698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46698);
  }

  return result;
}

uint64_t sub_1C5A49750()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = *(sub_1C5BC8AF4() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v12[0] = v1;
  v12[1] = v2;
  v8 = (v6 + 48) & ~v6;
  v12[2] = v3;
  v12[3] = v4;
  v9 = *(_s22TrackSectionsContainerV17ScrollableContentVMa(0, v12) - 8);
  v10 = v0 + ((v8 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1C5A44A4C(v0 + v8, v10, v1, v2, v3, v4);
}

unint64_t sub_1C5A49858()
{
  result = qword_1EC194BA0;
  if (!qword_1EC194BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194B98, &qword_1C5BDCF50);
    sub_1C5A498DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194BA0);
  }

  return result;
}

unint64_t sub_1C5A498DC()
{
  result = qword_1EC194BA8[0];
  if (!qword_1EC194BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC194BA8);
  }

  return result;
}

uint64_t sub_1C5A49930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C5A49984()
{
  result = qword_1EC194C30;
  if (!qword_1EC194C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC194C38, &qword_1C5BDCFF0);
    sub_1C5A49A10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC194C30);
  }

  return result;
}

unint64_t sub_1C5A49A10()
{
  result = qword_1EDA4B698;
  if (!qword_1EDA4B698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B698);
  }

  return result;
}

void *sub_1C5A49A78()
{
  sub_1C593FCA4();

  return sub_1C5BC8F44();
}

uint64_t sub_1C5A49AC0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t NowPlayingArtwork.Placement.hashValue.getter()
{
  v1 = *v0;
  sub_1C5BCBF54();
  MEMORY[0x1C69501A0](v1);
  return sub_1C5BCBF94();
}

uint64_t sub_1C5A49BC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1C5BCBF54();

    sub_1C5BCAF04();
    v16 = sub_1C5BCBF94();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1C5BCBDE4() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void sub_1C5A49D7C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = (a2 & 0xFFFFFFFFFFFFFF8);
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1C5A4E23C(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    sub_1C5BC7F04();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v5 = &qword_1EC194D70;
    if (!v12)
    {
LABEL_27:
      v16 = v13;
      while (1)
      {
        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v17 = *(v9 + 8 * v13);
        ++v16;
        if (v17)
        {
          v22 = (v17 - 1) & v17;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v22 = (v12 - 1) & v12;
LABEL_32:
      sub_1C5A4E970(&qword_1EC194D70, 255, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);

      v18 = sub_1C5BCAD34();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        break;
      }

      v21 = ~v19;
      sub_1C5A4E970(&unk_1EC194D78, 255, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
      while ((sub_1C5BCADB4() & 1) == 0)
      {
        v20 = (v20 + 1) & v21;
        if (((*(v15 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = (v10 + 63) >> 6;
      v12 = v22;
      v5 = &qword_1EC194D70;
      if (!v22)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t static NowPlayingArtworkTreatment<>.metadata.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C592CFE4(&unk_1F4513970);
  *a1 = result;
  return result;
}

uint64_t NowPlayingBackgroundStaticArtworkTreatment.placements(for:)(uint64_t a1)
{
  if (*(a1 + 18) || (*(a1 + 32) & 1) == 0 && *(a1 + 24) == 1)
  {
    return sub_1C592CFE4(&unk_1F4513858);
  }

  else
  {
  }
}

id static NowPlayingArtworkTreatment<>.background(image:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1C592CFE4(&unk_1F4513998);
  a2[1] = a1;

  return a1;
}

uint64_t static NowPlayingVideoPlayerArtworkTreatment.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_1C592535C(0, &qword_1EDA45D70, 0x1E69E58C0);
  if ((sub_1C5BCB744() & 1) == 0 || (sub_1C5A4A39C(v2, v4, &qword_1EC194C48, 0x1E69585F8) & 1) == 0)
  {
    return 0;
  }

  return sub_1C5931E14(v3, v5);
}

uint64_t sub_1C5A4A200(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v7 = *(v3 - 1);
      v6 = *v3;
      v9 = *(v4 - 1);
      v8 = *v4;
      if (*(v3 - 3) == *(v4 - 3) && *(v3 - 2) == *(v4 - 2))
      {
        if (v7 != v9 || v6 != v8)
        {
          return 0;
        }
      }

      else
      {
        v11 = sub_1C5BCBDE4();
        result = 0;
        if ((v11 & 1) == 0)
        {
          return result;
        }

        if (v7 != v9 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C5A4A2CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *v3;
      v6 = *v4;
      if (*(v3 - 2) == *(v4 - 2) && *(v3 - 1) == *(v4 - 1))
      {
        if (v5 != v6)
        {
          return 0;
        }
      }

      else
      {
        v8 = sub_1C5BCBDE4();
        result = 0;
        if ((v8 & 1) == 0 || v5 != v6)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C5A4A39C(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1C592535C(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1C694FD20](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1C694FD20](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1C5BCB744();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1C5BCB744();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1C5BCB984();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1C5BCB984();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C5A4A60C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_1C592535C(0, &qword_1EDA45D70, 0x1E69E58C0);
  if ((sub_1C5BCB744() & 1) == 0 || (sub_1C5A4A39C(v2, v4, &qword_1EC194C48, 0x1E69585F8) & 1) == 0)
  {
    return 0;
  }

  return sub_1C5931E14(v3, v5);
}

uint64_t static NowPlayingArtworkTreatment<>.videoPlayer(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 systemDefaultSpeeds];
  sub_1C592535C(0, &qword_1EC194C48, 0x1E69585F8);
  v7 = sub_1C5BCB054();

  *a2 = v5;
  a2[1] = v7;
  result = sub_1C592CFE4(&unk_1F45139C0);
  a2[2] = result;
  return result;
}

uint64_t static NowPlayingArtworkTreatment<>.videoPlayer(_:speeds:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  a3[2] = sub_1C592CFE4(&unk_1F45139E8);
  v4 = a1;
}

uint64_t static NowPlayingMPCVideoArtworkTreatment.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1C5931E14(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194CB0, &unk_1C5BDD010);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA00](v2, v3, v4, v5, v6);
}

uint64_t sub_1C5A4A870(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1C5931E14(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC194CB0, &unk_1C5BDD010);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
  v6 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA00](v2, v3, v4, v5, v6);
}

double static NowPlayingArtworkTreatment<>.mpcVideo(_:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_1C592CFE4(&unk_1F4513A10);
  a2[1] = a1;

  return result;
}

double sub_1C5A4A95C@<D0>(_BYTE *a1@<X8>)
{
  v3 = sub_1C5BC8F34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 208);
  v8 = *(v1 + 216);

  if ((v8 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v9 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
    v7 = v12;
  }

  swift_getKeyPath("x,\\&");
  v12 = v7;
  sub_1C5A4E970(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  *a1 = *(v7 + 17);

  return result;
}

uint64_t sub_1C5A4AB24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a4;
  v7 = sub_1C5BC8F34();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v74 = a2;
  v75 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a3;
  v10 = _s31PrimaryArtworkViewOrVideoPlayerVMa(255, a2, a3, v9);
  v11 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0, &unk_1C5BD9450);
  v12 = sub_1C5BC8AB4();
  sub_1C5BC9414();
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  v13 = sub_1C5BC8AB4();
  v64 = v10;
  WitnessTable = swift_getWitnessTable();
  v104 = WitnessTable;
  v105 = MEMORY[0x1E697E5C0];
  v65 = v11;
  v14 = swift_getWitnessTable();
  v15 = sub_1C5924F54(&qword_1EDA46340, &qword_1EC194DC0, &unk_1C5BD9450, MEMORY[0x1E697F548]);
  v63 = v14;
  v102 = v14;
  v103 = v15;
  v16 = swift_getWitnessTable();
  v100 = swift_getWitnessTable();
  v101 = MEMORY[0x1E697E070];
  v17 = swift_getWitnessTable();
  v18 = sub_1C5943310();
  v98 = v17;
  v99 = v18;
  v96 = swift_getWitnessTable();
  v97 = MEMORY[0x1E697DD90];
  v19 = swift_getWitnessTable();
  v66 = v13;
  v67 = v12;
  *&v92 = v12;
  *(&v92 + 1) = v13;
  v79 = v19;
  v80 = v16;
  *&v93 = v16;
  *(&v93 + 1) = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v72 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v78 = &v60 - v21;
  v68 = sub_1C5BC8AB4();
  v22 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v71 = &v60 - v25;
  v26 = *a1;
  if (*(a1 + 8) == 1)
  {
    v89 = *a1;
    v28 = v75;
    v27 = v76;
    v29 = v77;
  }

  else
  {

    sub_1C5BCB4E4();
    v30 = sub_1C5BC9844();
    sub_1C5BC7C54();

    v28 = v75;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v31 = sub_1C5942458(v26, 0);
    v27 = v76;
    v29 = v77;
    (*(v76 + 8))(v28, v77, v31);
    LOBYTE(v26) = v89;
  }

  LOBYTE(v83[0]) = v26;
  result = sub_1C59416B4(v91);
  *(v88 + 10) = *(a1 + 170);
  v34 = *(a1 + 10);
  v87[2] = *(a1 + 9);
  v88[0] = v34;
  v35 = *(a1 + 8);
  v87[0] = *(a1 + 7);
  v87[1] = v35;
  if (BYTE9(v88[1]))
  {
    v36 = *(a1 + 10);
    v94 = *(a1 + 9);
    v95[0] = v36;
    *(v95 + 9) = *(a1 + 169);
    v37 = *(a1 + 8);
    v92 = *(a1 + 7);
    v93 = v37;
  }

  else
  {

    sub_1C5BCB4E4();
    v38 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v87, &unk_1EC194DE0, &qword_1C5BDCD20);
    result = (*(v27 + 8))(v28, v29);
  }

  v39 = v74;
  if (BYTE2(v93) == 3)
  {
    __break(1u);
  }

  else
  {
    v61 = OpaqueTypeMetadata2;
    v74 = v22;
    v86 = BYTE2(v93);
    v40 = v69;
    _s11ArtworkViewVMa(0, v39, v69, v33);
    sub_1C5A4A95C(&v85);
    v84 = v85;
    sub_1C59451F4(v83, v91, &v86, &v84, v90);
    sub_1C59452C4();
    v41 = v39;
    v42 = swift_checkMetadataState();
    sub_1C5BCA2B4();
    (*(*(v42 - 8) + 8))(v90, v42);
    LOBYTE(v83[0]) = sub_1C59452C4() & 1;
    v43 = swift_checkMetadataState();
    sub_1C5BCA384();
    v44 = (*(*(v43 - 8) + 8))(v91, v43);
    if (qword_1EDA45F90 != -1)
    {
      v44 = swift_once();
    }

    MEMORY[0x1EEE9AC00](v44);
    *(&v60 - 4) = v41;
    *(&v60 - 3) = v40;
    *(&v60 - 2) = a1;

    v45 = swift_checkMetadataState();
    v46 = swift_checkMetadataState();
    sub_1C5BCA374();

    (*(*(v45 - 8) + 8))(&v92, v45);
    v47 = a1[35];
    v48 = *(a1 + 288);

    if ((v48 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v49 = sub_1C5BC9844();
      sub_1C5BC7C54();

      v50 = v75;
      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v76 + 8))(v50, v77);
      v47 = v83[0];
    }

    swift_getKeyPath(byte_1C5BDDD10);
    v83[0] = v47;
    sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
    sub_1C5BC7B74();

    v51 = *(v47 + 19);

    if (v51 == 1)
    {
      sub_1C5A4A95C(v83);
    }

    v83[0] = v45;
    v83[1] = v46;
    v83[2] = v80;
    v83[3] = v79;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v53 = v70;
    v54 = v61;
    v55 = v78;
    sub_1C5BCA2B4();
    (*(v72 + 8))(v55, v54);
    v81 = OpaqueTypeConformance2;
    v82 = MEMORY[0x1E697E5C0];
    v56 = v68;
    v57 = swift_getWitnessTable();
    v58 = v71;
    sub_1C593EDC0(v53, v56, v57);
    v59 = *(v74 + 8);
    v59(v53, v56);
    sub_1C593EDC0(v58, v56, v57);
    return (v59)(v58, v56);
  }

  return result;
}

uint64_t sub_1C5A4B54C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46[1] = a1;
  v54 = a5;
  v8 = sub_1C5BC8F34();
  v55 = *(v8 - 8);
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a3;
  v58 = a4;
  _s31PrimaryArtworkViewOrVideoPlayerVMa(255, a3, a4, v11);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC194DC0, &unk_1C5BD9450);
  sub_1C5BC8AB4();
  sub_1C5BC9414();
  v12 = sub_1C5BC8AB4();
  v47 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v46 - v13;
  v15 = sub_1C5BC8AB4();
  v51 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v48 = v46 - v16;
  v52 = v17;
  v18 = sub_1C5BC8AB4();
  v53 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v49 = v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v50 = v46 - v21;
  v22 = *(a2 + 280);
  v59 = a2;
  LODWORD(a2) = *(a2 + 288);

  v23 = v22;
  v60 = a2;
  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v24 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v55 + 8))(v10, v56);
    v23 = *v67;
  }

  *v67 = v23;
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  sub_1C5BC7B74();

  v25 = *(v23 + 17);

  if (v25 == 1)
  {
    _s11ArtworkViewVMa(0, v57, v58, v26);
    sub_1C5A4A95C(v67);
  }

  sub_1C5BCABD4();
  WitnessTable = swift_getWitnessTable();
  sub_1C5BC9E54();

  v28 = v22;
  if ((v60 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v55 + 8))(v10, v56);
    v28 = *v67;
  }

  swift_getKeyPath("p%\\&");
  *v67 = v28;
  sub_1C5BC7B74();

  v30 = *(v28 + 16);

  if (v30 == 1)
  {
    _s11ArtworkViewVMa(0, v57, v58, v31);
    sub_1C5A4A95C(v67);
    v32 = v67[0] ^ 1;
  }

  else
  {
    v32 = 0;
  }

  v33 = v48;
  v67[0] = v32 & 1;
  v65 = WitnessTable;
  v66 = MEMORY[0x1E697E070];
  v34 = swift_getWitnessTable();
  MEMORY[0x1C694E550](v67, v12, &type metadata for NowPlayingMiniPlayerFade, v34);
  (*(v47 + 8))(v14, v12);

  if ((v60 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v35 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v55 + 8))(v10, v56);
    v22 = *v67;
  }

  swift_getKeyPath("p%\\&");
  *v67 = v22;
  sub_1C5BC7B74();

  v36 = *(v22 + 16);

  if (v36 == 1)
  {
    _s11ArtworkViewVMa(0, v57, v58, v37);
    sub_1C5A4A95C(v67);
  }

  v38 = sub_1C5943310();
  v63 = v34;
  v64 = v38;
  v39 = v52;
  v40 = swift_getWitnessTable();
  v41 = v49;
  sub_1C5BCA1E4();
  (*(v51 + 8))(v33, v39);
  v61 = v40;
  v62 = MEMORY[0x1E697DD90];
  v42 = swift_getWitnessTable();
  v43 = v50;
  sub_1C593EDC0(v41, v18, v42);
  v44 = *(v53 + 8);
  v44(v41, v18);
  sub_1C593EDC0(v43, v18, v42);
  return (v44)(v43, v18);
}

uint64_t sub_1C5A4BD70()
{
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  sub_1C5BC7B74();

  return *(v0 + 17);
}

uint64_t sub_1C5A4BE14()
{
  swift_getKeyPath("p%\\&");
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  sub_1C5BC7B74();

  return *(v0 + 16);
}

uint64_t sub_1C5A4BEB8()
{
  swift_getKeyPath(byte_1C5BDDD10);
  sub_1C5A4E970(&unk_1EDA49D30, 255, _s7ArtworkC20MiniPlayerAppearanceCMa, &unk_1C5BDD4F8);
  sub_1C5BC7B74();

  return *(v0 + 19);
}

uint64_t sub_1C5A4BF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v99 = a1;
  v104 = a5;
  v108 = _s9VideoViewVMa(255, a2, a3, a4);
  v7 = sub_1C5BC8AB4();
  v106 = sub_1C5BC97C4();
  v102 = v7;
  v8 = sub_1C5BC8AB4();
  v98 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v97 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v83 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v14 = sub_1C5BCB804();
  v93 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v83 - v15;
  v16 = sub_1C5950C90();
  *&v130 = &type metadata for NowPlayingLookupID;
  *(&v130 + 1) = AssociatedTypeWitness;
  *&v131 = v16;
  *(&v131 + 1) = AssociatedConformanceWitness;
  v89 = type metadata accessor for ViewProvider(0, &v130);
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v85 = &v83 - v17;
  v18 = sub_1C5BC8AB4();
  v95 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v83 - v19;
  v138[7] = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_1C5946D98();
  v138[5] = WitnessTable;
  v138[6] = v21;
  v22 = swift_getWitnessTable();
  v107 = v18;
  *&v130 = v18;
  *(&v130 + 1) = v22;
  v109 = v22;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v90 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v84 = &v83 - v24;
  v88 = v25;
  v26 = sub_1C5BC8AB4();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v86 = &v83 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v91 = &v83 - v30;
  v103 = v8;
  v105 = v31;
  v32 = sub_1C5BC92D4();
  v100 = *(v32 - 8);
  v101 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v106 = &v83 - v33;
  v34 = v99;
  sub_1C59318C8(v99 + 8, &v130);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC19A460, &unk_1C5BDD000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC199CD0, &qword_1C5BDD7B0);
  if (swift_dynamicCast())
  {
    sub_1C5931F84(v136, v138);
    sub_1C59318C8(v138, &v130);
    sub_1C5B9107C(&v130, v136);
    v35 = v108;
    v36 = swift_getWitnessTable();
    v37 = sub_1C5AC1590(v35, v36);
    (*(*(v35 - 8) + 8))(v136, v35, v37);
    v38 = sub_1C5946DEC();
    v114 = v36;
    v115 = v38;
    v99 = MEMORY[0x1E697E858];
    v39 = v102;
    v40 = swift_getWitnessTable();
    v41 = v97;
    sub_1C5949C94(0xD000000000000012, 0x80000001C5BF86C0, &unk_1F4513A38, v39);
    sub_1C5A4EF10(&unk_1F4513A58);
    (*(*(v39 - 8) + 8))(&v130, v39);
    v42 = sub_1C5A4E970(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v112 = v40;
    v113 = v42;
    v43 = v103;
    v44 = swift_getWitnessTable();
    v45 = v105;
    v46 = v96;
    sub_1C593EDC0(v41, v43, v44);
    v47 = *(v98 + 8);
    v47(v41, v43);
    sub_1C593EDC0(v46, v43, v44);
    *&v130 = v107;
    *(&v130 + 1) = v109;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v111 = v42;
    v48 = swift_getWitnessTable();
    sub_1C5950E54(v41, v43, v45, v44, v48);
    v47(v41, v43);
    v47(v46, v43);
    __swift_destroy_boxed_opaque_existential_0(v138);
  }

  else
  {
    v137 = 0;
    memset(v136, 0, sizeof(v136));
    sub_1C5924EF4(v136, &qword_1EC194E78, &qword_1C5BDE0C8);
    sub_1C59498C4(*(v34 + 56), *(v34 + 64), a2, *(a3 + 8));
    v98 = v27;
    v49 = *(a3 + 384);
    swift_unknownObjectRetain();
    v50 = v85;
    v49(a2, a3);
    swift_unknownObjectRelease();
    strcpy(&v130, "PrimaryArtwork");
    HIBYTE(v130) = -18;
    v51 = v92;
    v52 = v89;
    sub_1C595BC70();

    (*(v87 + 8))(v50, v52);
    v53 = v94;
    sub_1C595EE20(v14, WitnessTable);
    (*(v93 + 8))(v51, v14);
    v55 = _s31PrimaryArtworkViewOrVideoPlayerVMa(0, a2, a3, v54);
    (*(*(v55 - 8) + 16))(&v130, v34, v55);
    v56 = swift_allocObject();
    *(v56 + 16) = a2;
    *(v56 + 24) = a3;
    v57 = v133;
    *(v56 + 64) = v132;
    *(v56 + 80) = v57;
    *(v56 + 96) = v134;
    *(v56 + 112) = v135;
    v58 = v131;
    *(v56 + 32) = v130;
    *(v56 + 48) = v58;
    v59 = v84;
    v60 = v107;
    sub_1C5BC9EC4();

    (*(v95 + 8))(v53, v60);
    *&v130 = v60;
    *(&v130 + 1) = v109;
    v61 = swift_getOpaqueTypeConformance2();
    v62 = v86;
    v63 = v88;
    sub_1C595BB1C(0xD000000000000012, 0x80000001C5BF86C0, v88);
    (*(v90 + 8))(v59, v63);
    v64 = sub_1C5A4E970(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v128 = v61;
    v129 = v64;
    v65 = v105;
    v66 = swift_getWitnessTable();
    v67 = v91;
    sub_1C593EDC0(v62, v65, v66);
    v68 = *(v98 + 8);
    v98 += 8;
    v68(v62, v65);
    sub_1C593EDC0(v67, v65, v66);
    v69 = swift_getWitnessTable();
    v70 = sub_1C5946DEC();
    v126 = v69;
    v127 = v70;
    v124 = swift_getWitnessTable();
    v125 = v64;
    v71 = v103;
    v72 = swift_getWitnessTable();
    sub_1C5941738(v62, v71, v65, v72, v66);
    v68(v62, v65);
    v68(v67, v65);
  }

  v73 = swift_getWitnessTable();
  v74 = sub_1C5946DEC();
  v122 = v73;
  v123 = v74;
  v75 = swift_getWitnessTable();
  v76 = sub_1C5A4E970(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v120 = v75;
  v121 = v76;
  v77 = swift_getWitnessTable();
  *&v130 = v107;
  *(&v130 + 1) = v109;
  v118 = swift_getOpaqueTypeConformance2();
  v119 = v76;
  v78 = swift_getWitnessTable();
  v116 = v77;
  v117 = v78;
  v79 = v101;
  v80 = swift_getWitnessTable();
  v81 = v106;
  sub_1C593EDC0(v106, v79, v80);
  return (*(v100 + 8))(v81, v79);
}

double sub_1C5A4CCA4(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  *&result = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48) != 2)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 80);

    v9 = v7;
    if ((v8 & 1) == 0)
    {
      sub_1C5BCB4E4();
      v10 = sub_1C5BC9844();
      sub_1C5BC7C54();

      sub_1C5BC8F24();
      swift_getAtKeyPath();

      (*(v3 + 8))(v6, v2);
      v9 = v17[0];
    }

    swift_getKeyPath(byte_1C5BDE0D0);
    v17[0] = v9;
    sub_1C5A4E970(&qword_1EDA4AE80, 255, _s13HostedContentCMa, &unk_1C5BDBA8C);
    sub_1C5BC7B74();

    v11 = *(v9 + 48);

    if (v11)
    {

      if (qword_1EDA469E0 != -1)
      {
        swift_once();
      }

      v12 = sub_1C5BC7D64();
      __swift_project_value_buffer(v12, qword_1EDA5DA78);
      v13 = sub_1C5BC7D44();
      v14 = sub_1C5BCB4F4();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_1C5922000, v13, v14, "Dismissing selected content because artwork was tapped", v15, 2u);
        MEMORY[0x1C69510F0](v15, -1, -1);
      }

      if ((v8 & 1) == 0)
      {
        sub_1C5BCB4E4();
        v16 = sub_1C5BC9844();
        sub_1C5BC7C54();

        sub_1C5BC8F24();
        swift_getAtKeyPath();

        (*(v3 + 8))(v6, v2);
      }

      v17[0] = 0;
      v17[1] = 0;
      sub_1C5A37C44(v17, 1);
    }
  }

  return result;
}

uint64_t sub_1C5A4CFE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v22[0] = sub_1C5BCA484();
  sub_1C5BCAA54();
  _s18ArtworkPlaceholderVMa(255, a3, a4, v6);
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  sub_1C5BCB804();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1C5BC9CE4();

  v13 = v26;
  v14 = v27;
  v15 = v28;
  v11 = v24;
  v12 = v25;
  sub_1C5BC92A4();
  v7 = sub_1C5BC8AB4();
  swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  sub_1C593EDC0(&v11, v7, v8);
  v22[2] = v13;
  v22[3] = v14;
  v23 = v15;
  v22[0] = v11;
  v22[1] = v12;
  v9 = *(*(v7 - 8) + 8);
  v9(v22, v7);
  v13 = v19;
  v14 = v20;
  v15 = v21;
  v11 = v17;
  v12 = v18;
  sub_1C593EDC0(&v11, v7, v8);
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v24 = v11;
  v25 = v12;
  return v9(&v24, v7);
}

double sub_1C5A4D284(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C5BC8F34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v9 + 8))(v11, v8);
    a1 = v59;
  }

  swift_getKeyPath("x,\\&");
  *&v59 = a1;
  sub_1C5A4E970(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v13 = *(a1 + 17);

  if (v13 == 1)
  {
    KeyPath = swift_getKeyPath("X,\\&");
    LOBYTE(v59) = 0;
    *(&v59 + 1) = KeyPath;
    LOBYTE(v60) = 0;
    v17 = _s18ArtworkPlaceholderVMa(0, a3, a4, v16);
    WitnessTable = swift_getWitnessTable();
    sub_1C593EDC0(&v59, v17, WitnessTable);
    v19 = sub_1C5942458(KeyPath, 0);
    v20 = swift_getKeyPath("X,\\&", v19);
    LOBYTE(v59) = 1;
    *(&v59 + 1) = v20;
    LOBYTE(v60) = 0;
    sub_1C593EDC0(&v59, v17, WitnessTable);
    sub_1C5942458(v20, 0);
    v21 = v52;
    LOBYTE(KeyPath) = v53;
    v44 = v51;
    v45 = v52;
    v46 = v53;
    v22 = v49;
    v33 = a4;
    v23 = v50;
    v41 = v48;
    v42 = v49;
    v43 = v50;
    v47[0] = &v44;
    v47[1] = &v41;
    sub_1C5A36948(v52, v53);
    sub_1C5A36948(v22, v23);
    v40[0] = v17;
    v40[1] = v17;
    v38 = WitnessTable;
    v39 = WitnessTable;
    sub_1C594226C(v47, 2uLL, v40);
    sub_1C5942458(v22, v23);
    sub_1C5942458(v21, KeyPath);
    sub_1C5942458(v42, v43);
    sub_1C5942458(v45, v46);
    v24 = *(&v59 + 1);
    LOBYTE(v21) = v60;
    v25 = v61;
    LOBYTE(v22) = v62;
    v36[0] = v59;
    v36[1] = *(&v59 + 1);
    v36[2] = v60;
    v36[3] = BYTE8(v60);
    v36[4] = v61;
    v37 = v62;
    swift_getTupleTypeMetadata2();
    sub_1C5BCAB74();
    swift_getWitnessTable();
    sub_1C5941600(v36, &v55);
    sub_1C5942458(v24, v21);
    sub_1C5942458(v25, v22);
    v34 = v55;
    v35 = v56;
    v26 = v57;
    v27 = v58;
    _s18ArtworkPlaceholderVMa(255, a3, v33, v28);
  }

  else
  {
    v55 = 0uLL;
    *&v56 = 255;
    _s18ArtworkPlaceholderVMa(255, a3, a4, v14);
    *(&v56 + 1) = 0;
    v57 = 0;
    v58 = 0;
    swift_getTupleTypeMetadata2();
    sub_1C5BCAB74();
    swift_getWitnessTable();
    sub_1C5941600(&v55, &v59);
    v34 = v59;
    v35 = v60;
    v26 = v61;
    v27 = v62;
  }

  v59 = v34;
  v60 = v35;
  v61 = v26;
  v62 = v27;
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  v29 = sub_1C5BCB804();
  v54 = swift_getWitnessTable();
  v30 = swift_getWitnessTable();
  sub_1C593EDC0(&v59, v29, v30);
  return sub_1C595BAC4(v34, *(&v34 + 1), v35, *(&v35 + 1), v26, v27);
}