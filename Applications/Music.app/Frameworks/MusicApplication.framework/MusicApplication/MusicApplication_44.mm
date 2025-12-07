void sub_3B11F0(uint64_t a1, void *a2)
{
  v22 = *(*a2 + 208);
  if (((v22)(a1) & 1) == 0)
  {
    v3 = a2[11];
    a2[11] = 0;
    sub_3B18B4();
    if (v3)
    {
      v4 = a2[11];
      if (!v4 || v4 != v3)
      {
        [v3 removeFromSuperview];
      }
    }
  }

  v5 = a2[6];
  if (v5)
  {
    v6 = a2[7];

    v21 = v6;
    v7 = v5(a2);
    if ((v7 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_ABAC10();
      sub_74390();
      sub_3B2528();
      sub_AB9BC0();
      v9 = v24;
      v8 = v25;
      v10 = v26;
      v11 = v27;
      v12 = v28;
    }

    else
    {
      v13 = -1 << *(v7 + 32);
      v8 = v7 + 56;
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v7 + 56);
      v11 = 0;
    }

    if (v9 < 0)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v16 = v11;
      v17 = v12;
      v18 = v11;
      if (!v12)
      {
        break;
      }

LABEL_19:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v9 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v20)
      {
LABEL_25:
        sub_2BB88(v9);

        sub_17654(v5, v21);
        return;
      }

      while (1)
      {
        [v20 setHidden:v22() & 1];

        v11 = v18;
        v12 = v19;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_21:
        if (sub_ABAC90())
        {
          sub_74390();
          swift_unknownObjectRetain();
          swift_dynamicCast();
          v20 = v23;
          swift_unknownObjectRelease();
          v18 = v11;
          v19 = v12;
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_25;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= ((v10 + 64) >> 6))
      {
        goto LABEL_25;
      }

      v17 = *(v8 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }
}

uint64_t sub_3B1490(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_17654(v3, v4);
}

double sub_3B14A4()
{
  v1 = v0[11];
  if (!v1)
  {
    return 0.0;
  }

  v2 = (*(*v0 + 160))();
  if (v2)
  {
    v3 = v2;
    v4 = v1;
    [v3 bounds];
    Width = CGRectGetWidth(v17);
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v3;
      [v7 bounds];
      v9 = CGRectGetWidth(v18);
      [v7 adjustedContentInset];
      sub_AB9E60();
      v11 = v10;

      v12 = v9 - v11;
    }

    else
    {

      v12 = Width;
    }
  }

  else
  {
    v14 = v1;
    v12 = 0.0;
  }

  [v1 sizeThatFits:{v12, 0.0}];
  v13 = v15;

  return v13;
}

void sub_3B15CC(__int128 *a1)
{
  v2 = v1;
  v35 = *a1;
  v4 = &v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_title];
  v5 = *&v1[OBJC_IVAR____TtC16MusicApplication15InformativeView_title];
  v6 = *(v4 + 1);
  *v4 = v35;
  sub_15F84(&v35, &v34, &unk_DEE6F0, &unk_AF8970);
  sub_22E6D0(v5, v6);

  v34 = a1[1];
  v7 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_message];
  v8 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_message + 8];
  *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_message] = v34;
  sub_15F84(&v34, v32, &unk_DEE6F0, &unk_AF8970);
  sub_22E7B0(v7, v8);

  v32[0] = *(a1 + 4);
  v9 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_image];
  *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_image] = v32[0];
  sub_15F84(v32, &v33, &unk_E00030, &unk_AF98E0);
  sub_22E52C(v9);

  v10 = *(a1 + 6);
  v11 = *(a1 + 56);
  if (v10)
  {
    v13 = *(a1 + 8);
    v12 = *(a1 + 9);
    v14 = &v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle];
    v15 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle];
    v16 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8];
    *v14 = *(a1 + 5);
    v14[1] = v10;

    sub_22E90C(v15, v16);

    v17 = v11;
  }

  else
  {
    v18 = &v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle];
    v19 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle];
    v20 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionTitle + 8];
    *v18 = 0;
    v18[1] = 0;
    sub_22E90C(v19, v20);

    v13 = 0;
    v12 = 0;
    v17 = 1;
  }

  v21 = &v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler];
  v22 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler];
  v23 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionHandler + 8];
  *v21 = v13;
  v21[1] = v12;
  sub_307CC(v13, v12);
  sub_17654(v22, v23);
  sub_22EA2C();
  sub_17654(v13, v12);
  v24 = v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode];
  v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_actionButtonMode] = v17;
  sub_22EB10(v24);
  if (v10)
  {
    v25 = v11 == 2;
  }

  else
  {
    v25 = 0;
  }

  v26 = v25;
  v27 = v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_shouldAutoSizeActionButtonHeight];
  v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_shouldAutoSizeActionButtonHeight] = v26;
  if (v26 != v27)
  {
    [v2 setNeedsLayout];
    v28 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler];
    if (v28)
    {
      v29 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_layoutInvalidationHandler + 8];

      v28(v2);
      sub_17654(v28, v29);
    }
  }

  v33 = *(a1 + 10);
  v30 = *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_customView];
  *&v2[OBJC_IVAR____TtC16MusicApplication15InformativeView_customView] = v33;
  sub_15F84(&v33, &v31, &qword_DF1E28, &unk_B0CDE0);
  sub_22E380(v30);
}

void sub_3B18B4()
{
  v1 = *(v0 + 88);
  if (v1)
  {
    v2 = v0;
    v3 = *(*v0 + 160);
    v4 = v3();
    if (v4)
    {
      v5 = v4;
      v6 = *(v0 + 64);
      if (v6)
      {
        v7 = *(v0 + 72);
        v8 = v1;
        sub_307CC(v6, v7);
        v9 = v6(v2, v8);
        v11 = v10;
        v13 = v12;
        v15 = v14;
        sub_17654(v6, v7);
      }

      else
      {
        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        v20 = v1;
        if (v19)
        {
          [v19 bounds];
          MinX = CGRectGetMinX(v47);
          [v19 adjustedContentInset];
          v9 = MinX + v22;
          v13 = sub_3B14A4();
          v15 = v23;
          v11 = 0.0;
          v48.origin.y = 0.0;
          v48.origin.x = v9;
          v48.size.width = v13;
          v48.size.height = v15;
          Height = CGRectGetHeight(v48);
          [v5 bounds];
          if (Height < CGRectGetHeight(v49))
          {
            [v5 bounds];
            v25 = CGRectGetHeight(v50);
            [v19 adjustedContentInset];
            sub_AB9EC0();
            v27 = v25 - v26;
            [v5 bounds];
            MinY = CGRectGetMinY(v51);
            [v19 adjustedContentInset];
            v30 = MinY + v29;
            v52.origin.y = 0.0;
            v52.origin.x = v9;
            v52.size.width = v13;
            v52.size.height = v15;
            v11 = v30 + (v27 - CGRectGetHeight(v52)) * 0.5;
          }
        }

        else
        {
          [v5 bounds];
          v13 = v31;
          v15 = v32;
          v11 = 0.0;
          if (*(v0 + 208) != 2)
          {
            v44 = *(v0 + 168);
            v45 = *(v0 + 160);
            v42 = *(v0 + 184);
            v43 = *(v0 + 176);
            v33 = [v5 window];
            if (v33)
            {
              v34 = v33;
              [v5 convertRect:v33 toCoordinateSpace:{0.0, 0.0, v13, v15}];
              x = v53.origin.x;
              y = v53.origin.y;
              width = v53.size.width;
              v38 = v53.size.height;
              MaxY = CGRectGetMaxY(v53);
              v54.origin.y = v44;
              v54.origin.x = v45;
              v54.size.height = v42;
              v54.size.width = v43;
              if (CGRectGetMinY(v54) >= MaxY)
              {
              }

              else
              {
                v55.origin.x = x;
                v55.origin.y = y;
                v55.size.width = width;
                v55.size.height = v38;
                v40 = CGRectGetMaxY(v55);
                v56.origin.y = v44;
                v56.origin.x = v45;
                v56.size.height = v42;
                v56.size.width = v43;
                v41 = CGRectGetMinY(v56);

                v15 = v15 - (v40 - v41);
              }
            }
          }

          v9 = 0.0;
        }
      }

      type metadata accessor for CGSize(0);
      if (sub_AB38D0())
      {
        v1 = v1;
        [v1 setFrame:{v9, v11, v13, v15}];
        v16 = [v1 superview];

        v17 = v3();
        v18 = v17;
        if (v16)
        {

          if (v18 && v16 == v18)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (v17)
        {

LABEL_19:
          [v5 addSubview:v1];
        }
      }

      else
      {
        [v1 removeFromSuperview];
      }

LABEL_20:

      return;
    }

    [v1 removeFromSuperview];
  }
}

double sub_3B1CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_3B18B4();
  }

  return result;
}

__n128 sub_3B1D0C@<Q0>(__n128 *a1@<X8>)
{
  v3 = (*(*v1 + 160))();
  if (v3)
  {
    v4 = v3;
    v5 = [v3 traitCollection];
  }

  else
  {
    v5 = 0;
  }

  v6 = v15;
  sub_3B2060(v5, v15);

  v7 = (*(*v1 + 240))();
  if (v7)
  {
    v9 = v7;
    v10 = v8;
    v6 = v16;
    v7(v16, v1, v15);
    sub_17654(v9, v10);
    sub_57748(v15);
  }

  v11 = v6[5].n128_u64[0];
  v12 = v6[1];
  *a1 = *v6;
  a1[1] = v12;
  v13 = v6[3];
  a1[2] = v6[2];
  a1[3] = v13;
  result = v6[4];
  a1[4] = result;
  a1[5].n128_u64[0] = v11;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16MusicApplication19NoContentControllerC13ConfigurationV6ActionVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_3B1E64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_3B1EC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_3B1F38(uint64_t a1)
{
  v2 = *(v1 + 208);
  v3 = *(a1 + 80);
  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return result;
    }
  }

  else if (v3 != 2)
  {
    v4 = *(v1 + 176);
    v9[2] = *(v1 + 160);
    v9[3] = v4;
    v9[4] = *(v1 + 192);
    v5 = *(v1 + 144);
    v9[0] = *(v1 + 128);
    v9[1] = v5;
    v10 = v2;
    v6 = *(a1 + 48);
    v11[2] = *(a1 + 32);
    v11[3] = v6;
    v11[4] = *(a1 + 64);
    v7 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v7;
    v12 = v3;
    if (static KeyboardAvoidance.__derived_struct_equals(_:_:)(v9, v11))
    {
      return result;
    }

    v2 = *(v1 + 208);
  }

  if (v2 != 2 || v3 != 2)
  {

    KeyboardAvoidance.animate(alongsideKeyboard:completion:)(sub_3B2524, v1, 0, 0);
  }

  return result;
}

void sub_3B2060(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_AB35C0();
  __chkstk_darwin();
  sub_AB9250();
  __chkstk_darwin();
  sub_AB91E0();
  sub_AB3550();
  v4 = sub_AB9320();
  v6 = v5;
  if (!a1)
  {
LABEL_4:
    static ApplicationCapabilities.shared.getter(v29);
    sub_70C54(v29);
    if (v30 == 2)
    {
    }

    else
    {
      v16 = sub_ABB3C0();

      if ((v16 & 1) == 0)
      {
LABEL_10:
        v15 = 0;
        v8 = 0;
        v10 = 0;
        goto LABEL_11;
      }
    }

    sub_AB91E0();
    sub_AB3550();
    v4 = sub_AB9320();
    v6 = v17;
    goto LABEL_10;
  }

  v7 = a1;
  if ((UITraitCollection.legacyLibraryFilter.getter().rawValue & 2) == 0)
  {

    goto LABEL_4;
  }

  sub_AB91E0();
  sub_AB3550();
  v8 = sub_AB9320();
  v10 = v9;
  sub_AB91E0();
  sub_AB3550();
  v4 = sub_AB9320();
  v6 = v11;
  v12 = sub_AB9260();
  v13 = [objc_opt_self() _systemImageNamed:v12];

  if (v13)
  {
    v14 = [objc_opt_self() configurationWithPointSize:36.0];
    v15 = [v13 imageWithSymbolConfiguration:v14];

LABEL_11:
    *&v22 = v8;
    *(&v22 + 1) = v10;
    *&v23 = v4;
    *(&v23 + 1) = v6;
    *v24 = v15;
    memset(&v24[8], 0, 48);
    v25[0] = v8;
    v25[1] = v10;
    v25[2] = v4;
    v25[3] = v6;
    v25[4] = v15;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    sub_576EC(&v22, &v21);
    sub_57748(v25);
    v18 = *&v24[16];
    v19 = *&v24[32];
    *(a2 + 32) = *v24;
    *(a2 + 48) = v18;
    *(a2 + 64) = v19;
    *(a2 + 80) = *&v24[48];
    v20 = v23;
    *a2 = v22;
    *(a2 + 16) = v20;
    return;
  }

  __break(1u);
}

uint64_t sub_3B2498()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

double sub_3B24D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_3B2528()
{
  result = qword_E03620;
  if (!qword_E03620)
  {
    sub_74390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E03620);
  }

  return result;
}

id sub_3B258C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frame];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_3B25E4()
{

  return swift_deallocObject();
}

double block_copy_helper_124(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_3B266C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000002DLL;
  v3 = "u";
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v6 = "tem.noNavigationBarTransition";
      v5 = 0xD000000000000032;
    }

    else
    {
      v6 = "tionBarTransitions";
      v5 = 0xD000000000000035;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0xD00000000000002DLL;
    }

    else
    {
      v5 = 0xD000000000000033;
    }

    if (v4)
    {
      v6 = "gationBarTransition";
    }

    else
    {
      v6 = "u";
    }
  }

  if (a2 > 1u)
  {
    v3 = "tem.noNavigationBarTransition";
    v7 = 0xD000000000000032;
    v8 = "tionBarTransitions";
    v2 = 0xD000000000000035;
    v9 = a2 == 2;
  }

  else
  {
    v7 = 0xD000000000000033;
    v8 = "gationBarTransition";
    v9 = a2 == 0;
  }

  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v9)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (v5 == v10 && (v6 | 0x8000000000000000) == (v11 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_ABB3C0();
  }

  return v12 & 1;
}

uint64_t sub_3B278C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  if (a1 <= 3u)
  {
    v11 = 0xE400000000000000;
    v12 = 1735290739;
    if (a1 != 2)
    {
      v12 = 0x7473696C79616C70;
      v11 = 0xE800000000000000;
    }

    v13 = 0x6D75626C61;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v13 = 0x747369747261;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v4 = 0x776F68537674;
    v5 = 0x646F736970457674;
    v6 = 0xE900000000000065;
    if (a1 != 7)
    {
      v5 = 0x6569766F6DLL;
      v6 = 0xE500000000000000;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0x646956636973756DLL;
    v8 = 0xEA00000000006F65;
    if (a1 != 4)
    {
      v7 = 0x7265736F706D6F63;
      v8 = 0xE800000000000000;
    }

    if (a1 <= 5u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v8;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xE400000000000000;
        if (v9 != 1735290739)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE800000000000000;
        if (v9 != 0x7473696C79616C70)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE500000000000000;
      if (v9 != 0x6D75626C61)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE600000000000000;
      if (v9 != 0x747369747261)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xEA00000000006F65;
      if (v9 != 0x646956636973756DLL)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE800000000000000;
      if (v9 != 0x7265736F706D6F63)
      {
LABEL_52:
        v15 = sub_ABB3C0();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE600000000000000;
    if (v9 != 0x776F68537674)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE900000000000065;
    if (v9 != 0x646F736970457674)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xE500000000000000;
    if (v9 != 0x6569766F6DLL)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_3B2A2C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0x7265736F706D6F63;
  v5 = 0xE900000000000073;
  if (a1 != 6)
  {
    v4 = 0x4D73776F68537674;
    v5 = 0xED0000736569766FLL;
  }

  v6 = 0x7473696C79616C70;
  v7 = 0xE900000000000073;
  if (a1 != 4)
  {
    v6 = 0x646956636973756DLL;
    v7 = 0xEB00000000736F65;
  }

  if (a1 <= 5u)
  {
    v4 = v6;
    v5 = v7;
  }

  v8 = 0xE600000000000000;
  v9 = 0x736D75626C61;
  if (a1 != 2)
  {
    v9 = 0x73676E6F73;
    v8 = 0xE500000000000000;
  }

  v10 = 0x73747369747261;
  if (a1)
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v10 = 7368564;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v4;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v5;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v13 = 0xE600000000000000;
        if (v11 != 0x736D75626C61)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE500000000000000;
        if (v11 != 0x73676E6F73)
        {
          goto LABEL_45;
        }
      }
    }

    else if (a2)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x73747369747261)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      if (v11 != 7368564)
      {
        goto LABEL_45;
      }
    }

    goto LABEL_43;
  }

  if (a2 <= 5u)
  {
    if (a2 != 4)
    {
      v13 = 0xEB00000000736F65;
      if (v11 != 0x646956636973756DLL)
      {
        goto LABEL_45;
      }

      goto LABEL_43;
    }

    v14 = 0x7473696C79616C70;
    goto LABEL_34;
  }

  if (a2 == 6)
  {
    v14 = 0x7265736F706D6F63;
LABEL_34:
    v13 = 0xE900000000000073;
    if (v11 != v14)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v13 = 0xED0000736569766FLL;
  if (v11 != 0x4D73776F68537674)
  {
LABEL_45:
    v15 = sub_ABB3C0();
    goto LABEL_46;
  }

LABEL_43:
  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v15 = 1;
LABEL_46:

  return v15 & 1;
}

uint64_t sub_3B2CB4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE300000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x686372616573;
  v6 = 0xE600000000000000;
  v7 = 0x7463656C6573;
  if (a1 != 4)
  {
    v7 = 0xD000000000000015;
    v6 = 0x8000000000B48D50;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x75516C65636E6163;
  v9 = 0xEB00000000797265;
  if (a1 != 1)
  {
    v8 = 0x7865547261656C63;
    v9 = 0xE900000000000074;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 6579297;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x686372616573)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x7463656C6573)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0x8000000000B48D50;
      if (v10 != 0xD000000000000015)
      {
LABEL_34:
        v13 = sub_ABB3C0();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xEB00000000797265;
      if (v10 != 0x75516C65636E6163)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x7865547261656C63)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE300000000000000;
    if (v10 != 6579297)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_3B2E98(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6D75626C61;
    }

    else
    {
      v3 = 1735290739;
    }

    if (v2)
    {
      v4 = 0xE500000000000000;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE800000000000000;
    v3 = 0x7473696C79616C70;
  }

  else if (a1 == 3)
  {
    v3 = 0x69762D636973756DLL;
    v4 = 0xEB000000006F6564;
  }

  else
  {
    v4 = 0xE700000000000000;
    v3 = 0x6E6F6974617473;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x6D75626C61;
    }

    else
    {
      v9 = 1735290739;
    }

    if (a2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x69762D636973756DLL;
    v6 = 0xEB000000006F6564;
    if (a2 != 3)
    {
      v5 = 0x6E6F6974617473;
      v6 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x7473696C79616C70;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_ABB3C0();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_3B3030(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1819042164;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x686372616573;
    }

    else
    {
      v4 = 0x6D72657465646E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEC00000064656E69;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616D726F6ELL;
    }

    else
    {
      v4 = 1819042164;
    }

    if (v3)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x686372616573;
  if (a2 != 2)
  {
    v8 = 0x6D72657465646E75;
    v7 = 0xEC00000064656E69;
  }

  if (a2)
  {
    v2 = 0x6C616D726F6ELL;
    v6 = 0xE600000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_ABB3C0();
  }

  return v11 & 1;
}

id sub_3B316C(void *a1)
{
  [a1 setAlwaysBounceVertical:1];
  v3 = [v1 viewBackgroundColor];
  [a1 setBackgroundColor:v3];

  [a1 setKeyboardDismissMode:1];
  [a1 setAllowsFocus:1];
  [a1 setRemembersLastFocusedIndexPath:1];
  v11 = v1;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540, &unk_B0D150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
  if (swift_dynamicCast())
  {
    sub_12E1C(&v8, &unk_E04550, &unk_B0D160);
    v5 = 1;
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    sub_12E1C(&v8, &unk_E04550, &unk_B0D160);
    v11 = v4;
    v6 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE200, &unk_B09130);
    v5 = swift_dynamicCast();
    if ((v5 & 1) == 0)
    {
      v10 = 0;
      v8 = 0u;
      v9 = 0u;
    }

    sub_12E1C(&v8, &qword_E04580, &qword_B0D190);
  }

  [a1 setPrefetchingEnabled:{v5, v8, v9, v10, v11}];
  return [a1 _setShouldPrefetchCellsWhenPerformingReloadData:1];
}

void *sub_3B336C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v5 = a2(0);
  v6 = static UICollectionReusableView.reuseIdentifier.getter();
  v8 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v5, a1, v6, v7, v5);

  v9 = [v3 dataSource];
  if (!v9 || (v17[0] = v9, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04500, &qword_B09150), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE220, &unk_B0D130), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_6;
  }

  if (!*(&v15 + 1))
  {
LABEL_6:
    sub_12E1C(&v14, &unk_DFE210, &unk_B09140);
    return v8;
  }

  sub_70DF8(&v14, v17);
  v10 = v17[4];
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  v11 = *(v10 + 8);
  v12 = v8;
  v11();

  __swift_destroy_boxed_opaque_existential_0(v17);
  return v8;
}

void *sub_3B36A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_13C80(0, &unk_DF0CF0, UICollectionViewListCell_ptr);
  v5 = static UICollectionReusableView.reuseIdentifier.getter();
  v7 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v4, a1, v5, v6, v4);

  v8 = [v2 dataSource];
  if (!v8 || (v16[0] = v8, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04500, &qword_B09150), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE220, &unk_B0D130), (swift_dynamicCast() & 1) == 0))
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_6;
  }

  if (!*(&v14 + 1))
  {
LABEL_6:
    sub_12E1C(&v13, &unk_DFE210, &unk_B09140);
    return v7;
  }

  sub_70DF8(&v13, v16);
  v9 = v16[4];
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  v10 = *(v9 + 8);
  v11 = v7;
  v10();

  __swift_destroy_boxed_opaque_existential_0(v16);
  return v7;
}

void sub_3B38B0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v9 = &v71 - v8;
  v10 = sub_AB3820();
  v72 = *(v10 - 8);
  __chkstk_darwin();
  v71 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v71 - v12;
  swift_getObjectType();
  v14 = swift_conformsToProtocol2();
  if (v14 && v3)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    (*(v15 + 8))(ObjectType, v15);
    v18 = v17;
    v19 = swift_getObjectType();
    (*(v72 + 16))(v13, a3, v10);
    sub_3E046C(&qword_DFAA90, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    sub_ABAD10();
    (*(v18 + 112))(a2, v76, v19, v18);
    sub_8085C(v76);
    swift_unknownObjectRelease();
  }

  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  v21 = v71;
  if (v20)
  {
    v22 = v20;
    LODWORD(v23) = *(v3 + qword_DFE278);
    if (v23 == 2)
    {
      v23 = *&stru_248.sectname[swift_isaMask & *v3];
      v24 = a2;
      v25 = v23(a1);
      v21 = v71;
      LOBYTE(v23) = v25 < 2;
    }

    else
    {
      v26 = a2;
    }

    v27 = [v22 tableViewCell];
    if (v27)
    {
      v28 = v27;
      [v27 setTableViewStyle:1];

      v29 = [v22 tableViewCell];
      if (v29)
      {
        v30 = v29;
        [v29 _setDrawsSeparatorAtTopOfSection:v23 & 1];

        v31 = [v22 tableViewCell];
        if (v31)
        {
          v32 = v31;
          v33 = *(v4 + qword_DFE280);
          if (v33 == 2)
          {
            LOBYTE(v33) = v23;
          }

          [v31 _setDrawsSeparatorAtBottomOfSection:v33 & 1];

          goto LABEL_14;
        }

LABEL_51:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_14:
  (*&stru_1F8.segname[(swift_isaMask & *v4) + 16])(a3);
  v34 = v72;
  if ((*(v72 + 48))(v9, 1, v10) == 1)
  {
    sub_12E1C(v9, &unk_DE8E20, &qword_AF7990);
    return;
  }

  (*(v34 + 32))(v21, v9, v10);
  v75 = v4;
  v35 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540, &unk_B0D150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
  if (swift_dynamicCast())
  {
    v36 = sub_70DF8(v73, v76);
    v37 = (*&stru_158.sectname[swift_isaMask & *v35])(v36);
    if (v37 && (v38 = v37, v39 = [v37 results], v38, v39))
    {
      isa = sub_AB3770().super.isa;
      v41 = [v39 itemAtIndexPath:isa];
    }

    else
    {
      v41 = 0;
    }

    v43 = v77;
    v44 = v78;
    __swift_project_boxed_opaque_existential_1(v76, v77);
    (*(v44 + 48))(a2, v21, v41, v43, v44);
    swift_unknownObjectRelease();
    v42 = __swift_destroy_boxed_opaque_existential_0(v76);
  }

  else
  {
    v74 = 0;
    memset(v73, 0, sizeof(v73));
    v42 = sub_12E1C(v73, &unk_E04550, &unk_B0D160);
  }

  v45 = (*&stru_158.sectname[swift_isaMask & *v35])(v42);
  if (v45)
  {
    v46 = v45;
    v47 = [v45 results];

    if (v47)
    {
      v48 = sub_AB3770().super.isa;
      v49 = [v47 itemAtIndexPath:v48];

      if (v49)
      {
        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        if (!v47)
        {
          swift_unknownObjectRelease();
        }
      }

      else
      {
        v47 = 0;
      }
    }
  }

  else
  {
    v47 = 0;
  }

  swift_getObjectType();
  v50 = swift_conformsToProtocol2();
  if (v50)
  {
    if (a2)
    {
      v51 = v50;
      v52 = (*(&stru_3D8.flags + (swift_isaMask & *v35)))();
      if (v52)
      {
        v53 = v52;
        v54 = swift_getObjectType();
        v55 = a2;
        sub_178C4(v55, v21, v53, v54, v51);
      }
    }
  }

  swift_getObjectType();
  v56 = swift_conformsToProtocol2();
  if (!v56 || !a2)
  {
    goto LABEL_40;
  }

  v57 = v56;
  if (!v47 || !*(v35 + qword_DFE298))
  {
    v64 = swift_getObjectType();
    v65 = *(v57 + 16);
    v66 = a2;
    v65(0, v64, v57);

    v34 = v72;
LABEL_40:
    if (!v47)
    {
      (*(v34 + 8))(v21, v10);
      return;
    }

    v60 = v47;
    goto LABEL_42;
  }

  v58 = swift_getObjectType();
  v59 = a2;

  v60 = v47;
  v61 = sub_2FBDBC(v60);
  v62.n128_f64[0] = (*(v57 + 16))(v61 & 1, v58, v57);
  v63 = sub_304104(v60, v62);
  (*(v57 + 40))(v63, v58, v57);

  v21 = v71;

  v34 = v72;
LABEL_42:
  if (*(v35 + qword_DFE298))
  {

    v67 = sub_2FC35C(v60);

    if ((v67 & 1) == 0)
    {
      [a2 setUserInteractionEnabled:0];
      swift_getObjectType();
      v68 = swift_conformsToProtocol2();
      if (v68)
      {
        if (a2)
        {
          v69 = v68;
          v70 = swift_getObjectType();
          (*(v69 + 16))(1, v70, v69);
        }
      }
    }
  }

  (*(v34 + 8))(v21, v10);
}

void sub_3B41F4(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v6 = v21 - v5;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v11 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540, &unk_B0D150);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
  if (!swift_dynamicCast())
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_12E1C(v21, &unk_E04550, &unk_B0D160);
LABEL_11:
    isa = sub_AB3770().super.isa;
    [a1 deselectItemAtIndexPath:isa animated:1];

    return;
  }

  sub_70DF8(v21, v24);
  (*&stru_1F8.segname[(swift_isaMask & *v11) + 16])(a2);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_12E1C(v6, &unk_DE8E20, &qword_AF7990);
LABEL_10:
    __swift_destroy_boxed_opaque_existential_0(v24);
    goto LABEL_11;
  }

  v12 = (*(v8 + 32))(v10, v6, v7);
  v13 = (*&stru_158.sectname[swift_isaMask & *v11])(v12);
  if (!v13)
  {
    v17 = 0;
    goto LABEL_9;
  }

  v14 = v13;
  v15 = [v13 results];

  if (v15)
  {
    v16 = sub_AB3770().super.isa;
    v17 = [v15 itemAtIndexPath:v16];

LABEL_9:
    v18 = v25;
    v19 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v19 + 72))(v17, v10, a2, v18, v19);
    (*(v8 + 8))(v10, v7);
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  __break(1u);
}

void *sub_3B458C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = v4;
  v9 = a4(0);
  v10 = static UICollectionReusableView.reuseIdentifier.getter();
  v12 = UICollectionView.dequeue<A>(_:ofKind:for:reuseIdentifier:)(v9, a1, a2, a3, v10, v11, v9);

  v13 = [v5 dataSource];
  if (!v13 || (v21[0] = v13, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04500, &qword_B09150), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE220, &unk_B0D130), (swift_dynamicCast() & 1) == 0))
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    goto LABEL_6;
  }

  if (!*(&v19 + 1))
  {
LABEL_6:
    sub_12E1C(&v18, &unk_DFE210, &unk_B09140);
    return v12;
  }

  sub_70DF8(&v18, v21);
  v14 = v21[4];
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  v15 = *(v14 + 8);
  v16 = v12;
  v15();

  __swift_destroy_boxed_opaque_existential_0(v21);
  return v12;
}

void sub_3B4724(void *a1)
{
  v2 = v1;
  v3 = qword_DFE2F0;
  v4 = *(v1 + qword_DFE2F0);
  if (v4)
  {
    if (v4 != a1)
    {
      goto LABEL_6;
    }
  }

  else if (a1)
  {
    goto LABEL_6;
  }

  if ((*(v1 + qword_DFE288) & 1) == 0)
  {
LABEL_24:

    return;
  }

LABEL_6:
  if (*(v1 + qword_DFE270) == 1)
  {
    v5 = *(v1 + qword_DFE268);
    *(v1 + qword_DFE268) = a1;

    return;
  }

  v6 = qword_DFE2E0;
  v7 = *(v1 + qword_DFE2E0);
  *(v1 + qword_DFE2E0) = a1;
  v38 = a1;
  v8 = a1;

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();

  if (([v1 isViewLoaded] & 1) == 0 && v38)
  {
    (*&stru_158.segname[(swift_isaMask & *v1) + 8])(v38, 0);
    v10 = qword_DFE290;
    v11 = *(v1 + qword_DFE290);
    if (v11)
    {
      v12 = *(v11 + 24);
      *(v11 + 24) = v38;
      v13 = v8;

      sub_380968();
    }

    v14 = *(v2 + v3);
    *(v2 + v3) = v38;
    v36 = v8;

    v15 = *(v2 + v6);
    *(v2 + v6) = 0;

    v16 = *(v2 + v10);
    if (v16)
    {
      v17 = *(v16 + 24);
      *(v16 + 24) = v38;
      v18 = v36;

      sub_380968();
    }

    v19 = (*(&stru_3D8.flags + (swift_isaMask & *v2)))();
    if (v19)
    {
      v20 = *(v19 + 96);
      *(v19 + 96) = v38;
      v21 = v36;
    }

    v22 = *(v2 + qword_DFE298);
    if (v22)
    {
      v23 = *(v22 + 32);
      *(v22 + 32) = v38;
      v24 = v36;
    }

    if (![v2 isViewLoaded])
    {
      goto LABEL_23;
    }

    sub_3B856C();
    [v2 loadViewIfNeeded];
    v25 = *(v2 + qword_DFE2F8);
    if (v25)
    {
      [v25 reloadData];
LABEL_23:
      sub_3DDBA4(v9);

      a1 = v37;
      goto LABEL_24;
    }

LABEL_34:
    __break(1u);
    return;
  }

  [v1 loadViewIfNeeded];
  v26 = *(v1 + qword_DFE2F8);
  if (!v26)
  {
    __break(1u);
    goto LABEL_34;
  }

  if (v38)
  {
    v27 = *(v1 + v3);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v29 = swift_allocObject();
    v29[2] = v28;
    v29[3] = v38;
    v29[4] = v26;
    v29[5] = sub_3E0FE8;
    v29[6] = v9;
    aBlock[4] = sub_3E1040;
    aBlock[5] = v29;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_780C4;
    aBlock[3] = &block_descriptor_372;
    v30 = _Block_copy(aBlock);
    v31 = v27;

    v32 = v8;
    v33 = v26;
    v34 = v32;
    v35 = v33;

    [v34 getChangeDetailsFromPreviousResponse:v31 completion:v30];

    _Block_release(v30);
  }

  else
  {
  }
}

void sub_3B4C14(char a1)
{
  v3 = a1 & 1;
  v4 = direct field offset for BrowseCollectionViewController.wantsItemLibraryAddKeepLocalControl;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3 && ([v1 isViewLoaded] & 1) != 0)
  {
    if (*(v1 + v4) == 1)
    {
      [v1 loadViewIfNeeded];
      v6 = *(v1 + qword_DFE2F8);
      if (!v6)
      {
        __break(1u);
        return;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(qword_DFE320, &qword_B09170);
      swift_allocObject();
      v7 = sub_2F5ADC(v6);
    }

    else
    {
      v7 = 0;
    }

    (*(&stru_3D8.reserved2 + (swift_isaMask & *v1)))(v7);
  }
}

void sub_3B4D34(void *a1, void *a2)
{
  v386 = a2;
  v444 = sub_AB36B0();
  v385 = *(v444 - 1);
  __chkstk_darwin();
  v443 = &v373 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v384 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3C0, &unk_B0D180);
  __chkstk_darwin();
  v417 = &v373 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v420 = &v373 - v5;
  __chkstk_darwin();
  v421 = &v373 - v6;
  v7 = sub_AB3730();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v373 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v373 - v11;
  __chkstk_darwin();
  v14 = &v373 - v13;
  __chkstk_darwin();
  v379 = &v373 - v15;
  __chkstk_darwin();
  v382 = &v373 - v16;
  __chkstk_darwin();
  v378 = &v373 - v17;
  __chkstk_darwin();
  v381 = &v373 - v18;
  __chkstk_darwin();
  v383 = &v373 - v19;
  __chkstk_darwin();
  v380 = &v373 - v20;
  __chkstk_darwin();
  v22 = &v373 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v24 = &v373 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = &v373 - v25;
  __chkstk_darwin();
  v414 = &v373 - v27;
  __chkstk_darwin();
  v402 = &v373 - v28;
  __chkstk_darwin();
  v401 = &v373 - v29;
  __chkstk_darwin();
  v416 = &v373 - v30;
  __chkstk_darwin();
  v419 = &v373 - v31;
  __chkstk_darwin();
  v405 = &v373 - v32;
  __chkstk_darwin();
  v404 = &v373 - v33;
  v34 = sub_AB3820();
  v450 = *(v34 - 8);
  __chkstk_darwin();
  v399 = &v373 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v422 = &v373 - v36;
  __chkstk_darwin();
  v433 = &v373 - v37;
  __chkstk_darwin();
  v430 = &v373 - v38;
  __chkstk_darwin();
  v391 = &v373 - v39;
  __chkstk_darwin();
  __chkstk_darwin();
  v436 = &v373 - v40;
  __chkstk_darwin();
  v435 = &v373 - v41;
  __chkstk_darwin();
  v447 = (&v373 - v42);
  __chkstk_darwin();
  v413 = &v373 - v43;
  __chkstk_darwin();
  v400 = &v373 - v44;
  __chkstk_darwin();
  v428 = &v373 - v45;
  __chkstk_darwin();
  v434 = (&v373 - v46);
  __chkstk_darwin();
  v427 = &v373 - v47;
  __chkstk_darwin();
  v392 = &v373 - v48;
  __chkstk_darwin();
  v426 = &v373 - v49;
  __chkstk_darwin();
  v439 = &v373 - v50;
  __chkstk_darwin();
  v438 = (&v373 - v51);
  __chkstk_darwin();
  v448 = &v373 - v52;
  __chkstk_darwin();
  v415 = &v373 - v53;
  __chkstk_darwin();
  v441 = &v373 - v54;
  __chkstk_darwin();
  v440 = &v373 - v55;
  __chkstk_darwin();
  v449 = &v373 - v56;
  __chkstk_darwin();
  v418 = &v373 - v57;
  __chkstk_darwin();
  v403 = (&v373 - v58);
  __chkstk_darwin();
  v429 = (&v373 - v59);
  __chkstk_darwin();
  v437 = &v373 - v60;
  __chkstk_darwin();
  v406 = &v373 - v61;
  __chkstk_darwin();
  v393 = (&v373 - v62);
  __chkstk_darwin();
  v407 = &v373 - v64;
  if (!a1)
  {
    return;
  }

  v388 = v22;
  v377 = v12;
  v375 = v14;
  v376 = v10;
  v389 = v8;
  v442 = v63;
  v394 = v26;
  v397 = v24;
  v65 = swift_allocObject();
  v66 = a1;
  v67 = sub_971EC(_swiftEmptyArrayStorage);
  v387 = v65;
  *(v65 + 16) = v67;
  v68 = (v65 + 16);
  v69 = [v66 deletedItemIndexPaths];
  v70 = *(sub_AB9760() + 16);

  v71 = v66;

  v408 = v66;
  v445 = v68;
  v446 = v7;
  if (v70)
  {
    v374 = [v66 deletedItemIndexPaths];
    v72 = sub_AB9760();
    v73 = v72;
    v398 = *(v72 + 16);
    if (v398)
    {
      v74 = 0;
      v432 = (v450 + 16);
      v425 = (v450 + 56);
      v424 = (v450 + 48);
      v411 = (v450 + 32);
      v390 = (v450 + 40);
      v395 = (v450 + 8);
      v412 = _swiftEmptyArrayStorage;
      v75 = v406;
      v76 = v407;
      v396 = v72;
      do
      {
        if (v74 >= *(v73 + 16))
        {
          goto LABEL_199;
        }

        v410 = (*(v450 + 80) + 32) & ~*(v450 + 80);
        v431 = *(v450 + 72);
        v77 = *(v450 + 16);
        v77(v76, v73 + v410 + v431 * v74, v34);
        swift_beginAccess();
        v78 = *v68;
        if (*(*v68 + 16))
        {
          v79 = sub_2EC048(v76);
          v80 = v405;
          v81 = v424;
          if (v82)
          {
            v77(v405, *(v78 + 56) + v79 * v431, v34);
            v83 = 0;
          }

          else
          {
            v83 = 1;
          }
        }

        else
        {
          v83 = 1;
          v80 = v405;
          v81 = v424;
        }

        v84 = *v425;
        (*v425)(v80, v83, 1, v34);
        swift_endAccess();
        v85 = *v81;
        v86 = (*v81)(v80, 1, v34);
        v423 = v84;
        if (v86 == 1)
        {
          (*(&stru_1F8.size + (swift_isaMask & *v409)))(v76);
          v87 = v85(v80, 1, v34);
          v88 = v411;
          if (v87 != 1)
          {
            sub_12E1C(v80, &unk_DE8E20, &qword_AF7990);
          }
        }

        else
        {
          v88 = v411;
          (*v411)(v75, v80, v34);
        }

        v89 = v437;
        v77(v437, v76, v34);
        swift_beginAccess();
        v77(v429, v75, v34);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v451 = *v68;
        v91 = v451;
        *v68 = 0x8000000000000000;
        v93 = sub_2EC048(v89);
        v94 = v91[2];
        v95 = (v92 & 1) == 0;
        v96 = v94 + v95;
        if (__OFADD__(v94, v95))
        {
LABEL_200:
          __break(1u);
          goto LABEL_201;
        }

        v97 = v92;
        if (v91[3] >= v96)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_33159C();
          }
        }

        else
        {
          sub_327E54(v96, isUniquelyReferenced_nonNull_native);
          v98 = sub_2EC048(v437);
          if ((v97 & 1) != (v99 & 1))
          {
            goto LABEL_211;
          }

          v93 = v98;
        }

        v76 = v407;
        v100 = v451;
        if (v97)
        {
          (*v390)(v451[7] + v93 * v431, v429, v34);
        }

        else
        {
          v451[(v93 >> 6) + 8] |= 1 << v93;
          v101 = v93 * v431;
          v77((v100[6] + v101), v437, v34);
          (*v88)(v100[7] + v101, v429, v34);
          v102 = v100[2];
          v103 = __OFADD__(v102, 1);
          v104 = v102 + 1;
          if (v103)
          {
            goto LABEL_208;
          }

          v100[2] = v104;
        }

        v105 = *v395;
        (*v395)(v437, v34);
        *v445 = v100;
        swift_endAccess();
        v106 = *v88;
        v107 = v404;
        v75 = v406;
        (*v88)(v404, v406, v34);
        (v423)(v107, 0, 1, v34);
        v105(v76, v34);
        if (v85(v107, 1, v34) == 1)
        {
          sub_12E1C(v107, &unk_DE8E20, &qword_AF7990);
          v71 = v408;
          v73 = v396;
          v68 = v445;
        }

        else
        {
          v108 = v393;
          v106(v393, v107, v34);
          v106(v403, v108, v34);
          v109 = swift_isUniquelyReferenced_nonNull_native();
          v73 = v396;
          if ((v109 & 1) == 0)
          {
            v412 = sub_6AE4C(0, v412[2] + 1, 1, v412);
          }

          v68 = v445;
          v111 = v412[2];
          v110 = v412[3];
          if (v111 >= v110 >> 1)
          {
            v412 = sub_6AE4C((v110 > 1), v111 + 1, 1, v412);
          }

          v112 = v412;
          v412[2] = v111 + 1;
          v106(v112 + v410 + v111 * v431, v403, v34);
          v71 = v408;
        }

        ++v74;
      }

      while (v398 != v74);
    }

    else
    {
      v412 = _swiftEmptyArrayStorage;
    }

    isa = sub_AB9740().super.isa;

    [v386 deleteItemsAtIndexPaths:isa];

    v7 = v446;
  }

  v114 = [v71 deletedSections];
  v115 = v388;
  sub_AB36D0();
  v116 = sub_AB36E0();
  v117 = v389;
  v119 = v389 + 8;
  v118 = *(v389 + 8);
  v118(v115, v7);

  v410 = v119;
  v411 = v118;
  if (v116 >= 1)
  {
    v120 = [v408 deletedSections];
    v121 = v383;
    v407 = v120;
    sub_AB36D0();
    (*(v117 + 16))(v115, v121, v7);
    sub_3E046C(&qword_DFE3C8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    v122 = v421;
    sub_AB95A0();
    v432 = *(v384 + 36);
    v429 = sub_3E046C(&qword_DFE3D0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    v431 = (v385 + 8);
    v425 = (v450 + 56);
    v437 = (v450 + 16);
    v424 = (v450 + 48);
    v123 = (v450 + 32);
    v412 = (v450 + 40);
    v423 = (v450 + 8);
    for (i = _swiftEmptyArrayStorage; ; *&i[8 * v159 + 32] = v156)
    {
      v125 = v443;
      sub_AB9CA0();
      sub_3E046C(&unk_DFE3D8, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
      v126 = v444;
      v127 = sub_AB91C0();
      (*v431)(v125, v126);
      if (v127)
      {
        break;
      }

      v128 = sub_AB9D80();
      v128(&aBlock, 0);
      sub_AB9CB0();
      v129 = v449;
      sub_AB3810();
      v130 = v445;
      swift_beginAccess();
      v131 = *v130;
      if (*(*v130 + 16))
      {
        v132 = sub_2EC048(v129);
        v133 = v419;
        v134 = v440;
        if (v135)
        {
          (*(v450 + 16))(v419, *(v131 + 56) + *(v450 + 72) * v132, v34);
          v136 = 0;
        }

        else
        {
          v136 = 1;
        }
      }

      else
      {
        v136 = 1;
        v133 = v419;
        v134 = v440;
      }

      (*v425)(v133, v136, 1, v34);
      swift_endAccess();
      v137 = *v424;
      if ((*v424)(v133, 1, v34) == 1)
      {
        (*(&stru_1F8.size + (swift_isaMask & *v409)))(v129);
        if (v137(v133, 1, v34) != 1)
        {
          sub_12E1C(v133, &unk_DE8E20, &qword_AF7990);
        }
      }

      else
      {
        (*v123)(v134, v133, v34);
      }

      swift_beginAccess();
      v138 = *v437;
      (*v437)(v441, v134, v34);
      v139 = swift_isUniquelyReferenced_nonNull_native();
      v451 = *v130;
      v140 = v451;
      *v130 = 0x8000000000000000;
      v142 = sub_2EC048(v449);
      v143 = v140[2];
      v144 = (v141 & 1) == 0;
      v145 = v143 + v144;
      if (__OFADD__(v143, v144))
      {
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
        goto LABEL_200;
      }

      v146 = v141;
      if (v140[3] >= v145)
      {
        if ((v139 & 1) == 0)
        {
          sub_33159C();
        }
      }

      else
      {
        sub_327E54(v145, v139);
        v147 = sub_2EC048(v449);
        if ((v146 & 1) != (v148 & 1))
        {
          goto LABEL_211;
        }

        v142 = v147;
      }

      v122 = v421;
      v149 = v451;
      if (v146)
      {
        (*(v450 + 40))(v451[7] + *(v450 + 72) * v142, v441, v34);
      }

      else
      {
        v451[(v142 >> 6) + 8] |= 1 << v142;
        v150 = v450;
        v151 = *(v450 + 72) * v142;
        v138(v149[6] + v151, v449, v34);
        (*(v150 + 32))(v149[7] + v151, v441, v34);
        v152 = v149[2];
        v103 = __OFADD__(v152, 1);
        v153 = v152 + 1;
        if (v103)
        {
          goto LABEL_205;
        }

        v149[2] = v153;
      }

      *v130 = v149;
      swift_endAccess();
      v154 = v418;
      (*v123)(v418, v440, v34);
      v155 = *v423;
      (*v423)(v449, v34);
      v156 = IndexPath.safeSection.getter();
      v155(v154, v34);
      v157 = swift_isUniquelyReferenced_nonNull_native();
      v7 = v446;
      if ((v157 & 1) == 0)
      {
        i = sub_6AE9C(0, *(i + 2) + 1, 1, i);
      }

      v159 = *(i + 2);
      v158 = *(i + 3);
      if (v159 >= v158 >> 1)
      {
        i = sub_6AE9C((v158 > 1), v159 + 1, 1, i);
      }

      *(i + 2) = v159 + 1;
    }

    sub_12E1C(v122, &qword_DFE3C0, &unk_B0D180);
    v160 = v411;
    (v411)(v383, v7);

    sub_3E046C(&qword_DE9C70, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
    v161 = v381;
    sub_ABABA0();
    v162 = *(i + 2);
    if (v162)
    {
      v163 = i + 32;
      do
      {
        v164 = *v163++;
        v451 = v164;
        sub_ABAB80();
        --v162;
      }

      while (v162);
    }

    v165 = v380;
    (*(v389 + 32))(v380, v161, v7);
    sub_AB36C0(v166);
    v168 = v167;
    v160(v165, v7);
    [v386 deleteSections:v168];

    v115 = v388;
    v68 = v445;
  }

  v169 = swift_allocObject();
  v170 = v386;
  v171 = v387;
  v169[2] = v386;
  v169[3] = v171;
  v172 = v409;
  v169[4] = v409;
  v456 = sub_3E11D8;
  v457 = v169;
  aBlock = _NSConcreteStackBlock;
  v453 = 1107296256;
  v454 = sub_3020F4;
  v455 = &block_descriptor_403_0;
  v173 = _Block_copy(&aBlock);
  v174 = v170;

  v425 = v172;

  v175 = v408;
  [v408 enumerateSectionMovesUsingBlock:v173];
  _Block_release(v173);
  v176 = [v175 insertedSections];
  sub_AB36D0();
  v177 = sub_AB36E0();
  v178 = v115;
  v179 = v175;
  (v411)(v178, v7);

  v421 = v174;
  if (v177 < 1)
  {
    goto LABEL_98;
  }

  v180 = [v175 insertedSections];
  v181 = v382;
  v423 = v180;
  sub_AB36D0();
  (*(v389 + 16))(v388, v181, v7);
  sub_3E046C(&qword_DFE3C8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v182 = v420;
  sub_AB95A0();
  v440 = *(v384 + 36);
  sub_3E046C(&qword_DFE3D0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v437 = (v385 + 8);
  v431 = (v450 + 56);
  v441 = (v450 + 16);
  v432 = (v450 + 48);
  v449 = v450 + 32;
  v424 = (v450 + 40);
  v429 = (v450 + 8);
  for (j = _swiftEmptyArrayStorage; ; *&j[8 * v219 + 32] = v216)
  {
    v184 = v443;
    v185 = v446;
    sub_AB9CA0();
    sub_3E046C(&unk_DFE3D8, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
    v186 = v444;
    v187 = sub_AB91C0();
    (*v437)(v184, v186);
    if (v187)
    {
      break;
    }

    v188 = sub_AB9D80();
    v188(&aBlock, 0);
    sub_AB9CB0();
    v189 = v448;
    sub_AB3810();
    swift_beginAccess();
    v190 = *v68;
    if (*(*v68 + 16))
    {
      v191 = sub_2EC048(v189);
      v192 = v416;
      v193 = v438;
      v194 = v432;
      if (v195)
      {
        (*(v450 + 16))(v416, *(v190 + 56) + *(v450 + 72) * v191, v34);
        v196 = 0;
      }

      else
      {
        v196 = 1;
      }
    }

    else
    {
      v196 = 1;
      v192 = v416;
      v193 = v438;
      v194 = v432;
    }

    (*v431)(v192, v196, 1, v34);
    swift_endAccess();
    v197 = *v194;
    if ((*v194)(v192, 1, v34) == 1)
    {
      (*(&stru_1F8.size + (swift_isaMask & *v425)))(v189);
      if (v197(v192, 1, v34) != 1)
      {
        sub_12E1C(v192, &unk_DE8E20, &qword_AF7990);
      }
    }

    else
    {
      (*v449)(v193, v192, v34);
    }

    swift_beginAccess();
    v198 = *v441;
    (*v441)(v439, v193, v34);
    v199 = swift_isUniquelyReferenced_nonNull_native();
    v451 = *v68;
    v200 = v451;
    *v68 = 0x8000000000000000;
    v202 = sub_2EC048(v448);
    v203 = v200[2];
    v204 = (v201 & 1) == 0;
    v205 = v203 + v204;
    if (__OFADD__(v203, v204))
    {
      goto LABEL_197;
    }

    v206 = v201;
    if (v200[3] >= v205)
    {
      if (v199)
      {
        v209 = v451;
        if (v201)
        {
          goto LABEL_85;
        }
      }

      else
      {
        sub_33159C();
        v209 = v451;
        if (v206)
        {
          goto LABEL_85;
        }
      }
    }

    else
    {
      sub_327E54(v205, v199);
      v207 = sub_2EC048(v448);
      if ((v206 & 1) != (v208 & 1))
      {
        goto LABEL_211;
      }

      v202 = v207;
      v209 = v451;
      if (v206)
      {
LABEL_85:
        (*(v450 + 40))(v209[7] + *(v450 + 72) * v202, v439, v34);
        goto LABEL_89;
      }
    }

    v209[(v202 >> 6) + 8] |= 1 << v202;
    v210 = v450;
    v211 = *(v450 + 72) * v202;
    (v198)(v209[6] + v211, v448, v34);
    (*(v210 + 32))(v209[7] + v211, v439, v34);
    v212 = v209[2];
    v103 = __OFADD__(v212, 1);
    v213 = v212 + 1;
    if (v103)
    {
      goto LABEL_206;
    }

    v209[2] = v213;
LABEL_89:
    *v68 = v209;
    swift_endAccess();
    v214 = v415;
    (*v449)(v415, v438, v34);
    v215 = *v429;
    (*v429)(v448, v34);
    v216 = IndexPath.safeSection.getter();
    v215(v214, v34);
    v217 = swift_isUniquelyReferenced_nonNull_native();
    v182 = v420;
    if ((v217 & 1) == 0)
    {
      j = sub_6AE9C(0, *(j + 2) + 1, 1, j);
    }

    v219 = *(j + 2);
    v218 = *(j + 3);
    if (v219 >= v218 >> 1)
    {
      j = sub_6AE9C((v218 > 1), v219 + 1, 1, j);
    }

    *(j + 2) = v219 + 1;
  }

  sub_12E1C(v182, &qword_DFE3C0, &unk_B0D180);
  (v411)(v382, v185);

  sub_3E046C(&qword_DE9C70, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  v220 = v379;
  sub_ABABA0();
  v221 = *(j + 2);
  v7 = v185;
  if (v221)
  {
    v222 = j + 32;
    do
    {
      v223 = *v222++;
      v451 = v223;
      sub_ABAB80();
      --v221;
    }

    while (v221);
  }

  v224 = v378;
  (*(v389 + 32))(v378, v220, v7);
  sub_AB36C0(v225);
  v227 = v226;
  (v411)(v224, v7);
  v174 = v421;
  [v421 insertSections:v227];

  v179 = v408;
LABEL_98:
  v228 = [v179 insertedItemIndexPaths];
  v229 = *(sub_AB9760() + 16);

  if (!v229)
  {
LABEL_131:
    v270 = swift_allocObject();
    v271 = v387;
    v270[2] = v174;
    v270[3] = v271;
    v272 = v425;
    v270[4] = v425;
    v456 = sub_3E11E4;
    v457 = v270;
    aBlock = _NSConcreteStackBlock;
    v453 = 1107296256;
    v454 = sub_3022B8;
    v455 = &block_descriptor_409;
    v273 = _Block_copy(&aBlock);
    v431 = v174;

    v434 = v272;

    [v179 enumerateItemMovesUsingBlock:v273];
    _Block_release(v273);
    v274 = [v179 updatedSections];
    v275 = v388;
    sub_AB36D0();
    v276 = sub_AB36E0();
    (v411)(v275, v7);

    if (v276 >= 1)
    {
      v277 = [v179 updatedSections];
      v278 = v377;
      v429 = v277;
      sub_AB36D0();
      (*(v389 + 16))(v275, v278, v7);
      sub_3E046C(&qword_DFE3C8, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v279 = v417;
      sub_AB95A0();
      v448 = *(v384 + 36);
      v440 = sub_3E046C(&qword_DFE3D0, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v441 = (v385 + 8);
      v439 = (v450 + 56);
      v449 = v450 + 16;
      v438 = (v450 + 48);
      v280 = (v450 + 32);
      v432 = (v450 + 40);
      v437 = (v450 + 8);
      for (k = _swiftEmptyArrayStorage; ; *&k[8 * v316 + 32] = v313)
      {
        v282 = v443;
        sub_AB9CA0();
        sub_3E046C(&unk_DFE3D8, &type metadata accessor for IndexSet.Index, &protocol conformance descriptor for IndexSet.Index);
        v283 = v444;
        v284 = sub_AB91C0();
        (*v441)(v282, v283);
        if (v284)
        {
          break;
        }

        v285 = sub_AB9D80();
        v285(&aBlock, 0);
        sub_AB9CB0();
        v286 = v447;
        sub_AB3810();
        v287 = v445;
        swift_beginAccess();
        v288 = *v287;
        if (*(*v287 + 16))
        {
          v289 = sub_2EC048(v286);
          v290 = v414;
          v291 = v435;
          if (v292)
          {
            (*(v450 + 16))(v414, *(v288 + 56) + *(v450 + 72) * v289, v34);
            v293 = 0;
          }

          else
          {
            v293 = 1;
          }
        }

        else
        {
          v293 = 1;
          v290 = v414;
          v291 = v435;
        }

        (*v439)(v290, v293, 1, v34);
        swift_endAccess();
        v294 = *v438;
        if ((*v438)(v290, 1, v34) == 1)
        {
          (*(&stru_1F8.size + (swift_isaMask & *v434)))(v286);
          if (v294(v290, 1, v34) != 1)
          {
            sub_12E1C(v290, &unk_DE8E20, &qword_AF7990);
          }
        }

        else
        {
          (*v280)(v291, v290, v34);
        }

        swift_beginAccess();
        v295 = *v449;
        (*v449)(v436, v291, v34);
        v296 = swift_isUniquelyReferenced_nonNull_native();
        v451 = *v287;
        v297 = v451;
        *v287 = 0x8000000000000000;
        v299 = sub_2EC048(v447);
        v300 = v297[2];
        v301 = (v298 & 1) == 0;
        v302 = v300 + v301;
        if (__OFADD__(v300, v301))
        {
          goto LABEL_198;
        }

        v303 = v298;
        if (v297[3] >= v302)
        {
          if ((v296 & 1) == 0)
          {
            sub_33159C();
          }
        }

        else
        {
          sub_327E54(v302, v296);
          v304 = sub_2EC048(v447);
          if ((v303 & 1) != (v305 & 1))
          {
            goto LABEL_211;
          }

          v299 = v304;
        }

        v279 = v417;
        v306 = v451;
        if (v303)
        {
          (*(v450 + 40))(v451[7] + *(v450 + 72) * v299, v436, v34);
        }

        else
        {
          v451[(v299 >> 6) + 8] |= 1 << v299;
          v307 = v450;
          v308 = *(v450 + 72) * v299;
          v295((v306[6] + v308), v447, v34);
          (*(v307 + 32))(v306[7] + v308, v436, v34);
          v309 = v306[2];
          v103 = __OFADD__(v309, 1);
          v310 = v309 + 1;
          if (v103)
          {
            goto LABEL_207;
          }

          v306[2] = v310;
        }

        *v287 = v306;
        swift_endAccess();
        v311 = v413;
        (*v280)(v413, v435, v34);
        v312 = *v437;
        (*v437)(v447, v34);
        v313 = IndexPath.safeSection.getter();
        v312(v311, v34);
        v314 = swift_isUniquelyReferenced_nonNull_native();
        v7 = v446;
        if ((v314 & 1) == 0)
        {
          k = sub_6AE9C(0, *(k + 2) + 1, 1, k);
        }

        v316 = *(k + 2);
        v315 = *(k + 3);
        if (v316 >= v315 >> 1)
        {
          k = sub_6AE9C((v315 > 1), v316 + 1, 1, k);
        }

        *(k + 2) = v316 + 1;
      }

      sub_12E1C(v279, &qword_DFE3C0, &unk_B0D180);
      (v411)(v377, v7);

      sub_3E046C(&qword_DE9C70, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v317 = v376;
      sub_ABABA0();
      v318 = *(k + 2);
      if (v318)
      {
        v319 = k + 32;
        do
        {
          v320 = *v319++;
          v451 = v320;
          sub_ABAB80();
          --v318;
        }

        while (v318);
      }

      v321 = v375;
      (*(v389 + 32))(v375, v317, v7);
      sub_AB36C0(v322);
      v324 = v323;
      (v411)(v321, v7);
      [v431 reloadSections:v324];

      v179 = v408;
      v68 = v445;
    }

    v325 = [v179 updatedItemIndexPaths];
    v326 = *(sub_AB9760() + 16);

    if (v326)
    {
      v436 = [v179 updatedItemIndexPaths];
      v327 = sub_AB9760();
      v328 = v327;
      v441 = *(v327 + 16);
      if (v441)
      {
        v329 = 0;
        v330 = v450 + 16;
        v331 = (v450 + 48);
        v447 = (v450 + 32);
        v448 = v450 + 56;
        v437 = (v450 + 40);
        v438 = (v450 + 8);
        v444 = _swiftEmptyArrayStorage;
        v332 = v397;
        v439 = (v450 + 48);
        v440 = v327;
        while (v329 < *(v328 + 16))
        {
          v443 = ((*(v450 + 80) + 32) & ~*(v450 + 80));
          v449 = *(v450 + 72);
          v333 = &v443[v328 + v449 * v329];
          v334 = *(v450 + 16);
          v335 = v442;
          v334(v442, v333, v34);
          swift_beginAccess();
          v336 = *v68;
          if (*(*v68 + 16) && (v337 = sub_2EC048(v335), (v338 & 1) != 0))
          {
            v334(v332, *(v336 + 56) + v337 * v449, v34);
            v339 = 0;
          }

          else
          {
            v339 = 1;
          }

          v340 = *v448;
          (*v448)(v332, v339, 1, v34);
          swift_endAccess();
          v341 = *v331;
          v342 = v341(v332, 1, v34);
          v343 = v430;
          v446 = v340;
          if (v342 == 1)
          {
            (*(&stru_1F8.size + (swift_isaMask & *v434)))(v442);
            v343 = v430;
            if (v341(v332, 1, v34) != 1)
            {
              sub_12E1C(v332, &unk_DE8E20, &qword_AF7990);
            }
          }

          else
          {
            (*v447)(v430, v332, v34);
          }

          v344 = v433;
          v334(v433, v442, v34);
          swift_beginAccess();
          v345 = v330;
          v334(v422, v343, v34);
          v346 = swift_isUniquelyReferenced_nonNull_native();
          v451 = *v68;
          v347 = v451;
          *v68 = 0x8000000000000000;
          v349 = sub_2EC048(v344);
          v350 = v347[2];
          v351 = (v348 & 1) == 0;
          v352 = v350 + v351;
          if (__OFADD__(v350, v351))
          {
            goto LABEL_204;
          }

          v353 = v348;
          if (v347[3] >= v352)
          {
            if ((v346 & 1) == 0)
            {
              sub_33159C();
            }
          }

          else
          {
            sub_327E54(v352, v346);
            v354 = sub_2EC048(v433);
            if ((v353 & 1) != (v355 & 1))
            {
              goto LABEL_211;
            }

            v349 = v354;
          }

          v330 = v345;
          v356 = v451;
          if (v353)
          {
            (*v437)(v451[7] + v349 * v449, v422, v34);
            v357 = v447;
          }

          else
          {
            v451[(v349 >> 6) + 8] |= 1 << v349;
            v358 = v349 * v449;
            v334(v356[6] + v349 * v449, v433, v34);
            v357 = v447;
            (*v447)(v356[7] + v358, v422, v34);
            v359 = v356[2];
            v103 = __OFADD__(v359, 1);
            v360 = v359 + 1;
            if (v103)
            {
              goto LABEL_210;
            }

            v356[2] = v360;
          }

          v361 = *v438;
          (*v438)(v433, v34);
          *v68 = v356;
          swift_endAccess();
          v362 = *v357;
          v363 = v394;
          (*v357)(v394, v430, v34);
          v446(v363, 0, 1, v34);
          v361(v442, v34);
          v364 = v439;
          v365 = v341(v363, 1, v34);
          v331 = v364;
          if (v365 == 1)
          {
            sub_12E1C(v363, &unk_DE8E20, &qword_AF7990);
            v332 = v397;
            v328 = v440;
          }

          else
          {
            v366 = v391;
            v362(v391, v363, v34);
            v362(v399, v366, v34);
            v367 = swift_isUniquelyReferenced_nonNull_native();
            v328 = v440;
            if ((v367 & 1) == 0)
            {
              v444 = sub_6AE4C(0, v444[2] + 1, 1, v444);
            }

            v369 = v444[2];
            v368 = v444[3];
            if (v369 >= v368 >> 1)
            {
              v444 = sub_6AE4C((v368 > 1), v369 + 1, 1, v444);
            }

            v371 = v443;
            v370 = v444;
            v444[2] = v369 + 1;
            v362(&v371[v370 + v369 * v449], v399, v34);
            v332 = v397;
          }

          if (v441 == ++v329)
          {
            goto LABEL_194;
          }
        }

        goto LABEL_203;
      }

      v444 = _swiftEmptyArrayStorage;
LABEL_194:

      v372 = sub_AB9740().super.isa;

      [v431 reloadItemsAtIndexPaths:v372];
    }

    else
    {
    }

    return;
  }

  v420 = [v179 insertedItemIndexPaths];
  v230 = sub_AB9760();
  v231 = v230;
  v432 = v230[2];
  if (!v432)
  {
    v438 = _swiftEmptyArrayStorage;
LABEL_130:

    v269 = sub_AB9740().super.isa;

    v174 = v421;
    [v421 insertItemsAtIndexPaths:v269];

    v179 = v408;
    goto LABEL_131;
  }

  v232 = 0;
  v449 = v450 + 16;
  v441 = (v450 + 56);
  v431 = (v450 + 32);
  v423 = (v450 + 40);
  v424 = (v450 + 8);
  v438 = _swiftEmptyArrayStorage;
  v429 = v230;
  v440 = v450 + 48;
  while (v232 < v231[2])
  {
    v233 = ((*(v450 + 80) + 32) & ~*(v450 + 80));
    v448 = *(v450 + 72);
    v234 = *(v450 + 16);
    v235 = v426;
    v234(v426, &v233[v231 + v448 * v232], v34);
    swift_beginAccess();
    v236 = *v68;
    v237 = *(*v68 + 16);
    v437 = v233;
    if (v237)
    {
      v238 = sub_2EC048(v235);
      v239 = v402;
      v240 = v427;
      if (v241)
      {
        v234(v402, (*(v236 + 56) + v238 * v448), v34);
        v242 = 0;
      }

      else
      {
        v242 = 1;
      }
    }

    else
    {
      v242 = 1;
      v239 = v402;
      v240 = v427;
    }

    v439 = *v441;
    (v439)(v239, v242, 1, v34);
    swift_endAccess();
    v243 = *v440;
    if ((*v440)(v239, 1, v34) == 1)
    {
      (*(&stru_1F8.size + (swift_isaMask & *v425)))(v235);
      v244 = v243(v239, 1, v34);
      v245 = v431;
      if (v244 != 1)
      {
        sub_12E1C(v239, &unk_DE8E20, &qword_AF7990);
      }
    }

    else
    {
      v245 = v431;
      (*v431)(v240, v239, v34);
    }

    v246 = v434;
    v234(v434, v235, v34);
    swift_beginAccess();
    v234(v428, v240, v34);
    v247 = swift_isUniquelyReferenced_nonNull_native();
    v451 = *v68;
    v248 = v451;
    *v68 = 0x8000000000000000;
    v250 = sub_2EC048(v246);
    v251 = v248[2];
    v252 = (v249 & 1) == 0;
    v253 = v251 + v252;
    if (__OFADD__(v251, v252))
    {
      goto LABEL_202;
    }

    v254 = v249;
    if (v248[3] >= v253)
    {
      if ((v247 & 1) == 0)
      {
        sub_33159C();
      }
    }

    else
    {
      sub_327E54(v253, v247);
      v255 = sub_2EC048(v434);
      if ((v254 & 1) != (v256 & 1))
      {
        goto LABEL_211;
      }

      v250 = v255;
    }

    v7 = v446;
    v257 = v451;
    if (v254)
    {
      (*v423)(v451[7] + v250 * v448, v428, v34);
    }

    else
    {
      v451[(v250 >> 6) + 8] |= 1 << v250;
      v258 = v250 * v448;
      v234((v257[6] + v258), v434, v34);
      (*v245)(v257[7] + v258, v428, v34);
      v259 = v257[2];
      v103 = __OFADD__(v259, 1);
      v260 = v259 + 1;
      if (v103)
      {
        goto LABEL_209;
      }

      v257[2] = v260;
    }

    v261 = *v424;
    (*v424)(v434, v34);
    *v68 = v257;
    swift_endAccess();
    v262 = *v245;
    v263 = v401;
    (*v245)(v401, v427, v34);
    (v439)(v263, 0, 1, v34);
    (v261)(v426, v34);
    if (v243(v263, 1, v34) == 1)
    {
      sub_12E1C(v263, &unk_DE8E20, &qword_AF7990);
      v231 = v429;
    }

    else
    {
      v264 = v392;
      v262(v392, v263, v34);
      v262(v400, v264, v34);
      v265 = swift_isUniquelyReferenced_nonNull_native();
      v231 = v429;
      if ((v265 & 1) == 0)
      {
        v438 = sub_6AE4C(0, v438[2] + 1, 1, v438);
      }

      v267 = v438[2];
      v266 = v438[3];
      if (v267 >= v266 >> 1)
      {
        v438 = sub_6AE4C((v266 > 1), v267 + 1, 1, v438);
      }

      v268 = v438;
      v438[2] = v267 + 1;
      v262(&v437[v268 + v267 * v448], v400, v34);
    }

    if (v432 == ++v232)
    {
      goto LABEL_130;
    }
  }

LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  sub_ABB4C0();
  __break(1u);
}

void sub_3B856C()
{
  v1 = v0;
  [v0 loadViewIfNeeded];
  v2 = qword_DFE2F8;
  v3 = *&v0[qword_DFE2F8];
  if (v3)
  {
    v4 = [v3 collectionViewLayout];
    v15 = v0;
    v5 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540, &unk_B0D150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3F0, &qword_B09308);
    if (swift_dynamicCast())
    {
      sub_70DF8(v13, v16);
      v6 = v17;
      v7 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(v7 + 16))(v4, v6, v7);
      __swift_destroy_boxed_opaque_existential_0(v16);
    }

    else
    {
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      sub_12E1C(v13, &qword_DFE3F8, &unk_B09310);
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = v8;
        v10 = v4;
        sub_3B872C(v9);
      }
    }

    [v5 loadViewIfNeeded];
    v11 = *&v1[v2];
    if (v11)
    {
      v12 = [v11 collectionViewLayout];
      [v12 invalidateLayout];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_3B872C(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v1 view];
  if (v4)
  {
    v5 = v4;
    [v4 music_inheritedLayoutInsets];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [v5 bounds];
    v14 = CGRectGetWidth(v39) - v9 - v13;
    [v5 bounds];
    v15 = CGRectGetHeight(v40) - v7 - v11;
    v35 = v1;
    v16 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E04540, &unk_B0D150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DFE1F0, &unk_B09120);
    if (swift_dynamicCast())
    {
      sub_70DF8(&v32, v36);
      v17 = v37;
      v18 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v18 + 24))(v3, v17, v18, v14, v15);
      if ((v20 & 1) == 0)
      {
        [a1 setRowHeight:v19];
      }

      __swift_destroy_boxed_opaque_existential_0(v36);
    }

    else
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_12E1C(&v32, &unk_E04550, &unk_B0D160);
    }

    v35 = v16;
    v21 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DFE3B0, &qword_B092E8);
    if (!swift_dynamicCast())
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_12E1C(&v32, &qword_DFE3B8, &unk_B092F0);
LABEL_16:

      return;
    }

    sub_70DF8(&v32, v36);
    v22 = v37;
    v23 = v38;
    __swift_project_boxed_opaque_existential_1(v36, v37);
    v24 = (*(v23 + 24))(v3, v22, v23, v14, v15);
    if (v26)
    {
LABEL_15:
      __swift_destroy_boxed_opaque_existential_0(v36);
      goto LABEL_16;
    }

    v27 = v25;
    v28 = (*&stru_158.sectname[swift_isaMask & *v21])(v24);
    if (!v28)
    {
LABEL_14:
      [a1 setSectionHeaderHeight:0.0];
      goto LABEL_15;
    }

    v29 = v28;
    v30 = [v28 results];

    if (v30)
    {
      v31 = [v30 numberOfSections];

      if (v31 > 1)
      {
        [a1 setSectionHeaderHeight:v27];
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_3B8A64()
{
  v1 = v0;
  v2 = (*&stru_158.sectname[swift_isaMask & *v0])();
  if (v2)
  {
    v3 = v2;
    if ([v2 isValid])
    {
      v4 = MPModelResponseDidInvalidateNotification;
      v5 = swift_allocObject();
      swift_unknownObjectWeakInit();
      type metadata accessor for NotificationObserver();
      swift_allocObject();
      v2 = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v4, v3, 1, 1, sub_3E1050, v5);
    }

    else
    {
      v6 = *(v0 + qword_DFE2D0);
      if ((v6 & 1) == 0)
      {
        v1[qword_DFE2D8] = 1;
      }

      ObjectType = swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8 && (v6 & 1) != 0)
      {
        v9 = *(v8 + 8);
        v10 = v8;
        v11 = v1;
        v9(ObjectType, v10);
      }

      v2 = 0;
    }
  }

  *&v1[qword_DFE2C8] = v2;

  return result;
}

double sub_3B8C40(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  sub_15F84(a1, v9, &unk_DE9C60, &unk_AF8940);
  v5 = v10;
  if (v10)
  {
    v6 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v7 = sub_4CAA30(a2, v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    sub_12E1C(v9, &unk_DE9C60, &unk_AF8940);
    v7 = _swiftEmptyArrayStorage;
  }

  a3(v7);

  return result;
}

void sub_3B8DA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_15F84(a1, v17, &unk_DE9C60, &unk_AF8940);
  v5 = v18;
  if (v18)
  {
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    v7 = sub_4CAA30(a2, v5, v6);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  else
  {
    sub_12E1C(v17, &unk_DE9C60, &unk_AF8940);
    v7 = _swiftEmptyArrayStorage;
  }

  v8 = *&v3[OBJC_IVAR____TtC16MusicApplication28RankedMusicVideoVerticalCell_badgeView];
  if (v8)
  {
    v9 = v8;

    v11 = sub_2F3AA8(v10);

    v12 = *&v9[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet];
    *&v9[OBJC_IVAR____TtC16MusicApplication9BadgeView_badgeSet] = v11;
    sub_4CAE8C(v12);
  }

  else
  {
    v13 = [v3 contentView];
    if (!v13)
    {
      v13 = v3;
    }

    v14 = objc_allocWithZone(type metadata accessor for BadgeView());

    v15 = sub_4CABD8(v7, UIFontTextStyleBody);
    v16 = v15;
    sub_42B940(v15);
    [v13 addSubview:v16];
  }
}

double sub_3B8FA0(uint64_t a1, void *a2, char **a3, uint64_t a4)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v12 = Strong;
  v65 = *(Strong + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

  v13 = [a2 pickableObjectFor:{objc_msgSend(v65, "selectionMode")}];
  if (v13)
  {
    v64 = v13;
    if (sub_2FBDBC(v13))
    {
      if (a3)
      {
        ObjectType = swift_getObjectType();
        v15 = (*(a4 + 32))(ObjectType, a4);
        v16 = swift_getObjectType();
        (*(a4 + 40))(1, v16, a4);
      }

      else
      {
        v15 = 0;
      }

      v41 = swift_allocObject();
      *(v41 + 16) = a3;
      *(v41 + 24) = a4;
      *(v41 + 32) = v15 & 1;
      swift_unknownObjectRetain();
      v42 = [v65 selectionMode];
      v43 = swift_unknownObjectWeakLoadStrong();
      v44 = v43;
      if (v42 == &dword_4)
      {
        if (v43)
        {

          sub_41BCBC(a1, v64, sub_3E12C4, v41);

LABEL_53:

          return result;
        }
      }

      else if (v43)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_AF82B0;
        *(v45 + 32) = v64;

        v46 = v64;
        sub_41BB48(v45, sub_3E12C4, v41);

        goto LABEL_53;
      }

      return result;
    }

    goto LABEL_42;
  }

  if ([v65 selectionMode] != &dword_0 + 1 || (v17 = *(v5 + 32)) == 0)
  {
    v40 = v65;
    goto LABEL_44;
  }

  v64 = v17;
  v18 = [v64 results];
  if (!v18)
  {
LABEL_42:

    v40 = v64;
LABEL_44:

    return result;
  }

  v19 = v18;

  v20 = [v19 allItems];
  v21 = sub_AB9760();
  v67 = _swiftEmptyArrayStorage;
  v62 = v21;
  if (v21 >> 62)
  {
LABEL_61:
    v61 = v21 & 0xFFFFFFFFFFFFFF8;
    v21 = sub_ABB060();
    if (v21)
    {
      goto LABEL_11;
    }

LABEL_62:
    v23 = _swiftEmptyArrayStorage;
    goto LABEL_63;
  }

  v61 = v21 & 0xFFFFFFFFFFFFFF8;
  v21 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
  if (!v21)
  {
    goto LABEL_62;
  }

LABEL_11:
  v22 = 0;
  v64 = (v62 & 0xC000000000000001);
  v23 = _swiftEmptyArrayStorage;
  v63 = v21;
  v57 = a4;
  v58 = a3;
  v56 = v20;
  v59 = v5;
  do
  {
    v55 = v23;
    v24 = v22;
    a3 = &selRef_performWithResponseHandler_;
    a4 = v61;
    v25 = v62;
    while (1)
    {
      if (v64)
      {
        v21 = sub_3603F8(v24, v25);
        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v24 >= *(a4 + 16))
        {
          goto LABEL_60;
        }

        v21 = swift_unknownObjectRetain();
        v22 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
          goto LABEL_61;
        }
      }

      swift_unknownObjectRetain();
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (!v26 || (v20 = v26, (v27 = swift_unknownObjectWeakLoadStrong()) == 0))
      {
        v21 = swift_unknownObjectRelease_n();
        goto LABEL_14;
      }

      v28 = v27;
      v29 = *(v27 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

      v30 = [v20 a3[271]];
      if (!v30)
      {
        swift_unknownObjectRelease_n();

        goto LABEL_30;
      }

      v31 = v30;
      if (([v29 supportsUnavailableContent] & 1) == 0)
      {
        if (qword_DE6838 != -1)
        {
          swift_once();
        }

        sub_10AC20(v20);
        if (v32 == 5)
        {
          swift_unknownObjectRelease_n();

LABEL_30:
          a4 = v61;
          v25 = v62;
          goto LABEL_14;
        }
      }

      v33 = [v31 musicTypeIdentifier];
      if (v33)
      {
        v34 = v33;
        v35 = sub_AB92A0();
        v37 = v36;

        MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
        v39 = v38;
        v60 = &v54;
        v66[0] = v35;
        v66[1] = v37;
        __chkstk_darwin();
        v53[2] = v66;
        LOBYTE(v35) = sub_1B39BC(sub_3040E8, v53, v39);

        if ((v35 & 1) == 0)
        {
          v21 = swift_unknownObjectRelease_n();
          a3 = &selRef_performWithResponseHandler_;
          a4 = v61;
          v25 = v62;
          v5 = v59;
          goto LABEL_14;
        }

        a3 = &selRef_performWithResponseHandler_;
        a4 = v61;
        v25 = v62;
        v5 = v59;
      }

      else
      {

        a4 = v61;
        v25 = v62;
      }

      v20 = [v20 a3[271]];
      v21 = swift_unknownObjectRelease_n();
      if (v20)
      {
        break;
      }

LABEL_14:
      ++v24;
      if (v22 == v63)
      {
        a4 = v57;
        a3 = v58;
        v23 = v55;
        v20 = v56;
        goto LABEL_63;
      }
    }

    sub_AB9730();
    if (*(&dword_10 + (v67 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v67 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    v21 = sub_AB97F0();
    v23 = v67;
    a4 = v57;
    a3 = v58;
    v20 = v56;
  }

  while (v22 != v63);
LABEL_63:

  if (a3)
  {
    v47 = swift_getObjectType();
    (*(a4 + 40))(1, v47, a4);
  }

  v48 = swift_unknownObjectWeakLoadStrong();
  if (v48)
  {
    v49 = v48;
    v50 = swift_allocObject();
    swift_weakInit();
    v51 = swift_allocObject();
    *(v51 + 24) = a4;
    swift_unknownObjectWeakInit();
    v52 = swift_allocObject();
    *(v52 + 16) = v51;
    *(v52 + 24) = v50;

    sub_41BB48(v23, sub_3E1300, v52);
  }

  else
  {
  }

  return result;
}

double sub_3B97D0(uint64_t a1, void *a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v12 = Strong;
  v67 = *(Strong + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

  v13 = &selRef_performWithResponseHandler_;
  v14 = [a2 pickableObjectFor:{objc_msgSend(v67, "selectionMode")}];
  if (v14)
  {
    v66 = v14;
    if (sub_2FBF94(v14))
    {
      if (a3)
      {
        ObjectType = swift_getObjectType();
        v16 = (*(a4 + 32))(ObjectType, a4);
        v17 = swift_getObjectType();
        (*(a4 + 40))(1, v17, a4);
      }

      else
      {
        v16 = 0;
      }

      v43 = swift_allocObject();
      *(v43 + 16) = a3;
      *(v43 + 24) = a4;
      *(v43 + 32) = v16 & 1;
      swift_unknownObjectRetain();
      v44 = [v67 selectionMode];
      v45 = swift_unknownObjectWeakLoadStrong();
      v46 = v45;
      if (v44 == &dword_4)
      {
        if (v45)
        {

          sub_41BCBC(a1, v66, sub_3E0CF0, v43);

LABEL_51:

          return result;
        }
      }

      else if (v45)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DF43B0, &unk_AF7D40);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_AF82B0;
        *(v47 + 32) = v66;

        v48 = v66;
        sub_41BB48(v47, sub_3E0CF0, v43);

        goto LABEL_51;
      }

      return result;
    }

    goto LABEL_40;
  }

  if ([v67 selectionMode] != &dword_0 + 1 || (v18 = *(v5 + 32)) == 0)
  {
    v42 = v67;
    goto LABEL_42;
  }

  v66 = v18;
  v19 = [v66 results];
  if (!v19)
  {
LABEL_40:

    v42 = v66;
LABEL_42:

    return result;
  }

  v20 = v19;

  v21 = [v20 allItems];
  sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
  v22 = sub_AB9760();
  v69 = _swiftEmptyArrayStorage;
  v62 = v22;
  if (v22 >> 62)
  {
LABEL_59:
    v66 = (v22 & 0xFFFFFFFFFFFFFF8);
    v22 = sub_ABB060();
    if (v22)
    {
      goto LABEL_11;
    }

LABEL_60:
    v24 = _swiftEmptyArrayStorage;
    goto LABEL_61;
  }

  v66 = (v22 & 0xFFFFFFFFFFFFFF8);
  v22 = *(&dword_10 + (v22 & 0xFFFFFFFFFFFFFF8));
  if (!v22)
  {
    goto LABEL_60;
  }

LABEL_11:
  v23 = 0;
  v64 = v22;
  v65 = v62 & 0xC000000000000001;
  v24 = _swiftEmptyArrayStorage;
  v59 = a4;
  v60 = a3;
  v63 = v5;
  v58 = v21;
  do
  {
    v57 = v24;
    v25 = v23;
    a3 = &OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration;
    a4 = v62;
    v26 = v64;
    while (1)
    {
      if (v65)
      {
        v22 = sub_3603D0(v25, a4);
      }

      else
      {
        if (v25 >= *(v66 + 2))
        {
          goto LABEL_58;
        }

        v22 = *(a4 + 8 * v25 + 32);
      }

      v21 = v22;
      v23 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      v28 = swift_unknownObjectWeakLoadStrong();
      if (!v28)
      {
        goto LABEL_16;
      }

      v29 = v28;
      v30 = *(v28 + OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration);

      v31 = v13;
      v32 = [v21 v13[271]];
      if (v32)
      {
        break;
      }

      v27 = v30;
LABEL_14:

      v21 = v27;
      v13 = v31;
      v5 = v63;
LABEL_15:
      v26 = v64;
LABEL_16:

LABEL_17:
      ++v25;
      if (v23 == v26)
      {
        a4 = v59;
        a3 = v60;
        v24 = v57;
        v21 = v58;
        goto LABEL_61;
      }
    }

    v27 = v32;
    if (([v30 supportsUnavailableContent] & 1) == 0)
    {
      if (qword_DE6838 != -1)
      {
        swift_once();
      }

      sub_10AC20(v21);
      if (v33 == 5)
      {

        v21 = v30;
        goto LABEL_14;
      }
    }

    v34 = [v27 musicTypeIdentifier];
    if (v34)
    {
      v35 = v34;
      v36 = sub_AB92A0();
      v38 = v37;

      MPMediaPickerConfiguration.musicTypeIdentifiers.getter();
      v40 = v39;
      v61 = &v56;
      v68[0] = v36;
      v68[1] = v38;
      __chkstk_darwin();
      v55[2] = v68;
      LOBYTE(v36) = sub_1B39BC(sub_109BB0, v55, v40);

      a3 = &OBJC_IVAR____TtC16MusicApplication31MediaPickerNavigationController_mediaPickerConfiguration;

      if (v36)
      {
        goto LABEL_33;
      }

      v13 = v31;
      a4 = v62;
      v5 = v63;
      goto LABEL_15;
    }

LABEL_33:
    v13 = v31;
    v41 = [v21 v31[271]];

    if (!v41)
    {
      a4 = v62;
      v5 = v63;
      v26 = v64;
      goto LABEL_17;
    }

    sub_AB9730();
    v5 = v63;
    if (*(&dword_10 + (v69 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v69 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      sub_AB97A0();
    }

    v22 = sub_AB97F0();
    v24 = v69;
    a4 = v59;
    a3 = v60;
    v21 = v58;
  }

  while (v23 != v64);
LABEL_61:

  if (a3)
  {
    v49 = swift_getObjectType();
    (*(a4 + 40))(1, v49, a4);
  }

  v50 = swift_unknownObjectWeakLoadStrong();
  if (v50)
  {
    v51 = v50;
    v52 = swift_allocObject();
    swift_weakInit();
    v53 = swift_allocObject();
    *(v53 + 24) = a4;
    swift_unknownObjectWeakInit();
    v54 = swift_allocObject();
    *(v54 + 16) = v53;
    *(v54 + 24) = v52;

    sub_41BB48(v24, sub_3E0C9C, v54);
  }

  else
  {
  }

  return result;
}

double sub_3B9F9C(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + 24);

      [v5 reloadData];
    }
  }

  else
  {
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(a2 + 24);
      ObjectType = swift_getObjectType();
      (*(v7 + 40))(0, ObjectType, v7);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_3BA070()
{
  v1 = [v0 parentViewController];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for JSSplitWidgetViewController();
    if (swift_dynamicCastClass())
    {
      v3 = sub_CDA4C();
      [v3 bounds];
      CGRectGetWidth(v6);
      sub_471A4();
      v4 = sub_AB38F0();

      return (v4 & 1) == 0;
    }
  }

  return 2;
}

void sub_3BA150(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v40 = a6;
  v10 = sub_AB7C10();
  v39 = *(v10 - 8);
  __chkstk_darwin();
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7C50();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = *&Strong[qword_DFE2E0];
    if (a3)
    {
      if (v18)
      {
        v19 = v18 == a3;
      }

      else
      {
        v19 = 0;
      }

      if (!v19)
      {
        goto LABEL_13;
      }
    }

    else if (v18)
    {
LABEL_13:

      return;
    }

    v20 = Strong;
    if (a1)
    {
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = a3;
      v21[4] = a1;
      v21[5] = a4;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_3E1108;
      *(v22 + 24) = v21;
      v45 = sub_2D4D0;
      v46 = v22;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1822E0;
      v44 = &block_descriptor_388;
      v23 = _Block_copy(&aBlock);
      v24 = a3;
      v25 = a4;
      v26 = a1;
      v27 = v20;

      v28 = swift_allocObject();
      v28[2] = v27;
      v28[3] = a5;
      v28[4] = v40;
      v45 = sub_3E1154;
      v46 = v28;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1811AC;
      v44 = &block_descriptor_394;
      v29 = _Block_copy(&aBlock);
      v30 = v27;

      [v25 performBatchUpdates:v23 completion:v29];

      _Block_release(v29);
      _Block_release(v23);
    }

    else
    {
      sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
      v38 = sub_ABA150();
      v31 = swift_allocObject();
      v31[2] = v20;
      v31[3] = a3;
      v31[4] = a4;
      v31[5] = a5;
      v31[6] = v40;
      v45 = sub_3E10A8;
      v46 = v31;
      aBlock = _NSConcreteStackBlock;
      v42 = 1107296256;
      v43 = sub_1B5EB4;
      v44 = &block_descriptor_379;
      v37 = _Block_copy(&aBlock);
      v32 = a3;
      v33 = a4;

      v34 = v20;

      sub_AB7C30();
      aBlock = _swiftEmptyArrayStorage;
      sub_3E046C(&qword_DF06C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9C30, &qword_AF8920);
      sub_36A00(&qword_DF06D0, &unk_DE9C30, &qword_AF8920, &protocol conformance descriptor for [A]);
      sub_ABABB0();
      v35 = v37;
      v26 = v38;
      sub_ABA160();

      (*(v39 + 8))(v12, v10);
      (*(v14 + 8))(v16, v13);
      _Block_release(v35);
    }

    Strong = v26;
    goto LABEL_13;
  }
}

void sub_3BA678(void *a1, void *a2, void *a3, void *a4)
{
  (*&stru_158.segname[(swift_isaMask & *a1) + 8])(a2, 1);
  v8 = qword_DFE290;
  v9 = *(a1 + qword_DFE290);
  if (v9)
  {
    v10 = *(v9 + 24);
    *(v9 + 24) = 0;

    sub_380968();
  }

  v11 = *(a1 + qword_DFE2F0);
  *(a1 + qword_DFE2F0) = a2;
  v12 = a2;

  v13 = *(a1 + qword_DFE2E0);
  *(a1 + qword_DFE2E0) = 0;

  v15 = *(a1 + v8);
  if (v15)
  {
    v16 = *(v15 + 24);
    *(v15 + 24) = a2;
    v17 = v12;

    sub_380968();
  }

  v18 = (*(&stru_3D8.flags + (swift_isaMask & *a1)))(v14);
  if (v18)
  {
    v19 = *(v18 + 96);
    *(v18 + 96) = a2;
    v20 = v12;
  }

  v21 = *(a1 + qword_DFE298);
  if (v21)
  {
    v22 = *(v21 + 32);
    *(v21 + 32) = a2;
    v23 = v12;
  }

  sub_3B4D34(a3, a4);
}

uint64_t sub_3BA820(void *a1, void *a2, void *a3, uint64_t (*a4)(uint64_t))
{
  (*&stru_158.segname[(swift_isaMask & *a1) + 8])(a2, 0);
  v8 = qword_DFE290;
  v9 = *(a1 + qword_DFE290);
  if (v9)
  {
    v10 = *(v9 + 24);
    *(v9 + 24) = 0;

    sub_380968();
  }

  v11 = *(a1 + qword_DFE2F0);
  *(a1 + qword_DFE2F0) = a2;
  v12 = a2;

  v13 = *(a1 + qword_DFE2E0);
  *(a1 + qword_DFE2E0) = 0;

  v14 = *(a1 + qword_DFE298);
  if (v14)
  {
    v15 = *(v14 + 32);
    *(v14 + 32) = a2;
    v16 = v12;
  }

  v17 = (*(&stru_3D8.flags + (swift_isaMask & *a1)))();
  if (v17)
  {
    v18 = *(v17 + 96);
    *(v17 + 96) = a2;
    v19 = v12;
  }

  sub_3B856C();
  [a3 reloadData];
  v20 = *(a1 + v8);
  if (v20)
  {
    v21 = *(v20 + 24);
    *(v20 + 24) = a2;
    v22 = v12;

    sub_380968();
  }

  return a4(1);
}

uint64_t sub_3BA9EC(void *a1, uint64_t a2)
{
  swift_getObjectType();
  v3 = swift_conformsToProtocol2();
  if (v3 && a1)
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 16);
    v7 = a1;

    v6(v8, ObjectType, v4);
  }

  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  if (v9 && a1)
  {
    v10 = v9;
    v11 = swift_getObjectType();
    v12 = *(v10 + 16);
    v13 = a1;

    v12(v14, v11, v10);
  }

  [a1 setUserInteractionEnabled:1];
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    if (a1)
    {
      v16 = result;
      v17 = swift_getObjectType();
      return (*(v16 + 16))(0, v17, v16);
    }
  }

  return result;
}

double sub_3BAB84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a3;
  v7 = sub_AB3820();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v28 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E20, &qword_AF7990);
  __chkstk_darwin();
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v25 - v12;
  swift_beginAccess();
  v27 = a2;
  v14 = *(a2 + 16);
  v15 = *(v14 + 16);
  v29 = a1;
  if (v15 && (v16 = sub_2EC048(a1), (v17 & 1) != 0))
  {
    v18 = a4;
    (*(v8 + 16))(v13, *(v14 + 56) + *(v8 + 72) * v16, v7);
    v19 = 0;
  }

  else
  {
    v18 = a4;
    v19 = 1;
  }

  v20 = *(v8 + 56);
  v20(v13, v19, 1, v7);
  swift_endAccess();
  v21 = *(v8 + 48);
  if (v21(v13, 1, v7) == 1)
  {
    (*(&stru_1F8.size + (swift_isaMask & *v26)))(v29);
    if (v21(v13, 1, v7) != 1)
    {
      sub_12E1C(v13, &unk_DE8E20, &qword_AF7990);
    }
  }

  else
  {
    (*(v8 + 32))(v18, v13, v7);
  }

  v22 = *(v8 + 16);
  v23 = v28;
  v22(v28, v29, v7);
  v22(v11, v18, v7);
  v20(v11, 0, 1, v7);
  swift_beginAccess();
  sub_2E5064(v11, v23);
  swift_endAccess();
  return result;
}

id sub_3BAEA8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v21 = a4;
  v8 = sub_AB3820();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v20 - v12;
  sub_AB3810();
  v14 = sub_3BAB84(v11, a5, a6, v13);
  v15 = *(v9 + 8);
  v15(v11, v8, v14);
  v16 = IndexPath.safeSection.getter();
  (v15)(v13, v8);
  sub_AB3810();
  v17 = sub_3BAB84(v11, a5, a6, v13);
  v15(v11, v8, v17);
  v18 = IndexPath.safeSection.getter();
  (v15)(v13, v8);
  return [v21 moveSection:v16 toSection:v18];
}

void sub_3BB058(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = sub_AB3820();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3BAB84(a1, a5, a6, v14);
  isa = sub_AB3770().super.isa;
  v16 = *(v12 + 8);
  v16(v14, v11);
  sub_3BAB84(a2, a5, a6, v14);
  v17 = sub_AB3770().super.isa;
  v16(v14, v11);
  [a4 moveItemAtIndexPath:isa toIndexPath:v17];
}

void sub_3BB1AC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_DFE2D0);
    if ((v4 & 1) == 0)
    {
      *(Strong + qword_DFE2D8) = 1;
    }

    ObjectType = swift_getObjectType();
    v6 = swift_conformsToProtocol2();
    v7 = v4 ^ 1;
    if (!v6)
    {
      v7 = 1;
    }

    if ((v7 & 1) == 0)
    {
      v8 = *(v6 + 8);
      v9 = v6;
      v10 = v3;
      v8(ObjectType, v9);
    }
  }
}

id JSShelfViewController.init(shelf:)(uint64_t a1)
{
  *&v1[qword_E03630] = 0;
  v2 = &v1[qword_E03638];
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 1;
  v1[qword_E03640] = 2;
  v1[direct field offset for JSShelfViewController.verticalStackItemPrefersTopHairline] = 1;
  v1[direct field offset for JSShelfViewController.verticalStackItemPrefersTallerHeader] = 0;
  *&v1[qword_E03658] = 0;
  *&v1[qword_E03660] = 0;
  v3 = &v1[qword_E03668];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  v4 = &v1[qword_E03670];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = &v1[qword_E03678];
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v1[qword_E03680];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v7 = &v1[qword_E03688];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = &v1[qword_E03690];
  *v8 = 0;
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = &v1[qword_E03698];
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v10 = &v1[qword_E036A0];
  *v10 = 0;
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = &v1[qword_E036A8];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  v12 = &v1[qword_E036B0];
  *v12 = 0;
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v1[qword_E036B8];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = 1;
  v14 = &v1[qword_E036C0];
  *v14 = 0;
  *(v14 + 1) = 0;
  v14[16] = 1;
  v15 = &v1[qword_E036C8];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = &v1[qword_E036D0];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = &v1[qword_E036D8];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[16] = 1;
  v18 = &v1[qword_E036E0];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = 1;
  v19 = &v1[qword_E036E8];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = &v1[qword_E036F0];
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = 1;
  v21 = &v1[qword_E036F8];
  *v21 = 0;
  *(v21 + 1) = 0;
  v21[16] = 1;
  *&v1[qword_E03700] = 0;
  *&v1[qword_E03708] = 0;
  v22 = &v1[qword_E03710];
  *v22 = 0;
  v22[8] = 1;
  v23 = &v1[qword_E03718];
  *v23 = 0;
  v23[8] = 1;
  v24 = &v1[qword_E03720];
  *v24 = 0xD000000000000015;
  v24[1] = 0x8000000000B48DF0;
  *&v1[qword_E03728] = 0;
  *&v1[qword_E03730] = 0;
  v1[qword_E03738] = 0;
  v1[qword_E03740] = 2;
  *&v1[qword_E03748] = _swiftEmptyDictionarySingleton;
  *&v1[qword_E03750] = a1;
  v26.receiver = v1;
  v26.super_class = type metadata accessor for JSShelfViewController(0);
  return objc_msgSendSuper2(&v26, "init");
}

id sub_3BB5B4(void *a1)
{
  v3.receiver = a1;
  v3.super_class = type metadata accessor for JSShelfViewController(0);
  v1 = objc_msgSendSuper2(&v3, "viewBackgroundColor");

  return v1;
}

void sub_3BB610(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for JSShelfViewController(0);
  v10.receiver = a1;
  v10.super_class = v5;
  v6 = a3;
  v7 = a1;
  v8 = objc_msgSendSuper2(&v10, "viewBackgroundColor");
  v9.receiver = v7;
  v9.super_class = v5;
  objc_msgSendSuper2(&v9, "setViewBackgroundColor:", v6);
  sub_3BB6B0(v8);
}

void sub_3BB6B0(uint64_t a1)
{
  v2 = v1;
  v3 = [v1 viewBackgroundColor];
  sub_13C80(0, qword_DFAAC0, UIColor_ptr);
  v4 = sub_ABA790();

  if ((v4 & 1) != 0 || ![v2 isViewLoaded])
  {
    return;
  }

  [v2 loadViewIfNeeded];
  v5 = *&v2[qword_DFE2F8];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v2 viewBackgroundColor];
  [v6 setBackgroundColor:v7];

  v8 = [v2 view];
  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = [v2 viewBackgroundColor];
  [v9 setBackgroundColor:v10];
}

Swift::Void __swiftcall JSShelfViewController.viewDidLoad()()
{
  v1 = v0;
  v30.receiver = v0;
  v30.super_class = type metadata accessor for JSShelfViewController(0);
  objc_msgSendSuper2(&v30, "viewDidLoad");
  [v0 loadViewIfNeeded];
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = *&v0[qword_DFE2F0];
    type metadata accessor for CollectionViewArtworkVideoPlaybackController(0);
    swift_allocObject();
    v4 = v3;
    v5 = sub_389BA0(v2, v3);
    v6 = [v1 traitCollection];
    v7 = [v6 horizontalSizeClass];

    *(v5 + 224) = v7 == &dword_0 + 2;
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = *(v5 + 40);
    v10 = *(v5 + 48);
    *(v5 + 40) = sub_3E01CC;
    *(v5 + 48) = v8;

    sub_17654(v9, v10);

    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = *(v5 + 80);
    v13 = *(v5 + 88);
    *(v5 + 80) = sub_3E01D4;
    *(v5 + 88) = v11;
    sub_17654(v12, v13);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15 = *(v5 + 96);
    v16 = *(v5 + 104);
    *(v5 + 96) = sub_3E01DC;
    *(v5 + 104) = v14;
    sub_17654(v15, v16);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = *(v5 + 112);
    v19 = *(v5 + 120);
    *(v5 + 112) = sub_3E01E4;
    *(v5 + 120) = v17;
    sub_17654(v18, v19);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = *(v5 + 64);
    v22 = *(v5 + 72);
    *(v5 + 64) = sub_3E01EC;
    *(v5 + 72) = v20;
    sub_17654(v21, v22);
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = *(v5 + 128);
    v25 = *(v5 + 136);
    *(v5 + 128) = sub_3E01F4;
    *(v5 + 136) = v23;
    sub_17654(v24, v25);

    *&v1[qword_E03658] = v5;

    v26 = *(v5 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E087F0, &unk_B0CE70);
    swift_allocObject();
    v27 = ArtworkVideoReportingController.init()();
    (*(*v27 + 136))(v26);
    v28 = swift_allocObject();
    swift_unknownObjectWeakInit();
    (*(*v27 + 160))(sub_3E01FC, v28);
    *&v1[qword_E03660] = v27;

    v29 = sub_3BD760();
    *(v29 + 80) = v26;
    if (v26 == 1)
    {
      *(v29 + 144) = 1;
    }

    sub_3B4C14(1);
  }

  else
  {
    __break(1u);
  }
}

double sub_3BBBF0(char a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E03660];
    if (v5)
    {

      (*(*v5 + 136))(a1 & 1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v8 = v6;
    v9 = sub_3BD760();

    *(v9 + 80) = a1 & 1;
    if (a1)
    {
      *(v9 + 144) = 1;
    }
  }

  return result;
}

void sub_3BBCE8(uint64_t a1, char a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *&Strong[qword_E03660];
    if (v7)
    {

      (*(*v7 + 192))(a1, a2 & 1);
    }

    else
    {
    }
  }
}

double sub_3BBDA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E03660];
    if (v5)
    {

      (*(*v5 + 216))(a1);
    }

    else
    {
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v8 = v6;
    sub_3BD760();

    sub_4A3B04(a1);
  }

  return result;
}

void sub_3BBE90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E03660];
    if (v5)
    {

      (*(*v5 + 224))(a1);
    }

    else
    {
    }
  }
}

void sub_3BBF3C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E03660];
    if (v5)
    {

      (*(*v5 + 200))(a1);
    }

    else
    {
    }
  }
}

void sub_3BBFE8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *&Strong[qword_E03660];
    if (v5)
    {

      (*(*v5 + 208))(a1);
    }

    else
    {
    }
  }
}

void sub_3BC094(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = Strong;
  if (Strong)
  {
    v4 = *&Strong[qword_DFE2F0];
    if (v4)
    {
      v5 = v4;

      v6 = [v5 results];
      if (!v6)
      {
        __break(1u);
        return;
      }

      isa = sub_AB3770().super.isa;
      v8 = [v6 itemAtIndexPath:isa];

      if (v8)
      {
        objc_opt_self();
        v3 = swift_dynamicCastObjCClass();
        if (!v3)
        {
          swift_unknownObjectRelease();
        }

        goto LABEL_9;
      }
    }

    else
    {
    }

    v3 = 0;
  }

LABEL_9:
  v9 = [v3 contentItem];

  if (v9)
  {
    v10 = v9;
    v11 = MPIdentifierSet.Purpose.Options.catalog.unsafeMutableAddressor();
    MPModelObject.bestIdentifier(for:)(*v11, 1u);

    MetricsEvent.TargetType.init(contentItem:)(v10);
  }
}

void sub_3BC204(void *a1)
{
  v1 = a1;
  JSShelfViewController.viewDidLoad()();
}

Swift::Void __swiftcall JSShelfViewController.viewDidLayoutSubviews()()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for JSShelfViewController(0);
  objc_msgSendSuper2(&v9, "viewDidLayoutSubviews");
  if ([v0 isViewLoaded])
  {
    [v0 loadViewIfNeeded];
    v1 = *&v0[qword_DFE2F8];
    if (v1)
    {
      v2 = v1;
      v3 = [v0 viewBackgroundColor];
      [v2 setBackgroundColor:v3];

      v4 = [v0 view];
      if (v4)
      {
        v5 = v4;
        v6 = [v0 viewBackgroundColor];
        [v5 setBackgroundColor:v6];

        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_5:
  if (v0[qword_E03738] != 1)
  {
    goto LABEL_8;
  }

  [v0 loadViewIfNeeded];
  v7 = *&v0[qword_DFE2F8];
  if (!v7)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v8 = v7;
  sub_3D1968(v8);

LABEL_8:
  if (*&v0[qword_E03658])
  {

    sub_38AC10();
  }
}

void sub_3BC3D4(void *a1)
{
  v1 = a1;
  JSShelfViewController.viewDidLayoutSubviews()();
}

void JSShelfViewController.viewWillTransition(to:with:)(void *a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for JSShelfViewController(0);
  objc_msgSendSuper2(&v11, "viewWillTransitionToSize:withTransitionCoordinator:", a1, a2, a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v10[4] = sub_3E0204;
  v10[5] = v7;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_CF24C;
  v10[3] = &block_descriptor_125;
  v8 = _Block_copy(v10);
  v9 = v3;

  [a1 animateAlongsideTransition:0 completion:v8];
  _Block_release(v8);
}

void sub_3BC530(int a1, char *a2)
{
  [a2 loadViewIfNeeded];
  v3 = *&a2[qword_DFE2F8];
  if (v3)
  {
    v4 = [v3 collectionViewLayout];
    sub_3D94EC(v4, 1);
  }

  else
  {
    __break(1u);
  }
}

void sub_3BC5B0(void *a1, double a2, double a3, uint64_t a4, void *a5)
{
  v13.receiver = a1;
  v13.super_class = type metadata accessor for JSShelfViewController(0);
  swift_unknownObjectRetain();
  v8 = v13.receiver;
  objc_msgSendSuper2(&v13, "viewWillTransitionToSize:withTransitionCoordinator:", a5, a2, a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v12[4] = sub_3E1304;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_CF24C;
  v12[3] = &block_descriptor_297;
  v10 = _Block_copy(v12);
  v11 = v8;

  [a5 animateAlongsideTransition:0 completion:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall JSShelfViewController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v22.receiver = v1;
  v22.super_class = type metadata accessor for JSShelfViewController(0);
  objc_msgSendSuper2(&v22, "traitCollectionDidChange:", isa);
  if ([v1 isViewLoaded])
  {
    v3 = [v1 traitCollection];
    v4 = [v3 horizontalSizeClass];

    if (!isa || v4 != [(objc_class *)isa horizontalSizeClass])
    {
      goto LABEL_8;
    }

    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = [(objc_class *)isa preferredContentSizeCategory];
    v8 = sub_AB92A0();
    v10 = v9;
    if (v8 == sub_AB92A0() && v10 == v11)
    {

      return;
    }

    v12 = sub_ABB3C0();

    if ((v12 & 1) == 0)
    {
LABEL_8:
      [v1 loadViewIfNeeded];
      v13 = qword_DFE2F8;
      v14 = *&v1[qword_DFE2F8];
      if (v14)
      {
        v15 = v14;
        sub_3D1968(v15);

        [v1 loadViewIfNeeded];
        v16 = *&v1[v13];
        if (v16)
        {
          v17 = [v16 collectionViewLayout];
          sub_3D94EC(v17, 1);

          v18 = qword_E03658;
          v19 = *&v1[qword_E03658];
          if (v19)
          {

            v20 = [v1 traitCollection];
            v21 = [v20 horizontalSizeClass];

            *(v19 + 224) = v21 == &dword_0 + 2;

            if (*&v1[v18])
            {

              sub_38AC10();
            }
          }

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
}

void sub_3BC954(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = a1;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  JSShelfViewController.traitCollectionDidChange(_:)(v9);
}

id sub_3BC9C0(uint64_t a1)
{
  swift_beginAccess();

  v1 = sub_AB9260();

  return v1;
}

uint64_t JSShelfViewController.playActivityFeatureName.getter()
{
  v1 = (*(v0 + qword_E03750) + OBJC_IVAR____TtC11MusicJSCore11JSViewModel_playActivityFeatureName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

Class sub_3BCAC0()
{
  v0 = JSViewModel.playActivityRecommendationData.getter();
  if (v1 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v3 = v0;
    v4 = v1;
    isa = sub_AB3250().super.isa;
    sub_466A4(v3, v4);
    v2 = isa;
  }

  return v2;
}

Swift::Void __swiftcall JSShelfViewController.music_viewInheritedLayoutInsetsDidChange()()
{
  v6.receiver = v0;
  v6.super_class = type metadata accessor for JSShelfViewController(0);
  objc_msgSendSuper2(&v6, "music_viewInheritedLayoutInsetsDidChange");
  [v0 loadViewIfNeeded];
  v1 = qword_DFE2F8;
  v2 = *&v0[qword_DFE2F8];
  if (v2)
  {
    v3 = [v2 collectionViewLayout];
    sub_3D94EC(v3, 1);

    [v0 loadViewIfNeeded];
    v4 = *&v0[v1];
    if (v4)
    {
      v5 = v4;
      sub_3D1968(v5);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_3BCC1C(void *a1)
{
  v1 = a1;
  JSShelfViewController.music_viewInheritedLayoutInsetsDidChange()();
}

uint64_t JSShelfViewController.estimatedContentSize(traitCollection:containerSize:)(void *a1, double a2)
{
  if (*&v2[qword_DFE2F0])
  {
    return 0;
  }

  v4 = v2;
  v7 = *&v2[qword_E03730];
  if (v7)
  {
    v8 = v7;
    v9 = sub_E34F8();
    [v9 intrinsicContentSize];
  }

  v10 = JSShelf.sections.getter();
  if (!(v10 >> 62))
  {
    if (*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_7;
    }

LABEL_38:

    goto LABEL_39;
  }

  v34 = v10;
  v35 = sub_ABB060();
  v10 = v34;
  if (!v35)
  {
    goto LABEL_38;
  }

LABEL_7:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = sub_360280(0, v10, v11);
  }

  else
  {
    if (!*(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_44;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  v14 = OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_uniformCellType;
  swift_beginAccess();
  v15 = v13[v14];

  if (v15 <= 5)
  {
    if (v15 > 2)
    {
      if (v15 == 3)
      {
        sub_3D3C7C();
      }

      else if (v15 == 4)
      {
        sub_3D3DA0();
      }

      else
      {
        v26 = &v4[qword_E03690];
        if (v4[qword_E03690 + 16])
        {
          v27 = [v4 traitCollection];
          sub_3D2824(2.0);
          v29 = v28;
          sub_F6A78();
          v31 = v30;

          sub_2F48A4(v31, v27, 0, 0);

          [v27 displayScale];
          sub_AB3A00();
          v33 = v32;

          *v26 = v29;
          *(v26 + 1) = v33;
          v26[16] = 0;
        }
      }

      return *&a2;
    }

    if (v15)
    {
      if (v15 == 1)
      {
        v16 = &v4[qword_E03678];
        if (v4[qword_E03678 + 16])
        {
          sub_3D2CD4();
          v18 = v17;
          v19 = [v4 traitCollection];
          v20 = sub_1FE9B0(v19, 0, v18);

          *v16 = v18;
          v16[1] = v20;
          *(v16 + 16) = 0;
        }
      }

      else
      {
        sub_3D341C();
      }

      return *&a2;
    }

    goto LABEL_27;
  }

  if (v15 <= 8)
  {
    if (v15 != 6)
    {
      if (v15 == 7)
      {
        v21 = &v4[qword_E036E8];
        if (v4[qword_E036E8 + 16])
        {
          v22 = [v4 traitCollection];
          sub_3D29C8();
          v24 = v23;
          v25 = sub_11866C(v22, v23);
          *v21 = v24;
          v21[1] = v25;
          *(v21 + 16) = 0;
        }
      }

      else
      {
        sub_3D23E8();
      }

      return *&a2;
    }

LABEL_27:
    sub_3D210C();
    return *&a2;
  }

  if (v15 == 9)
  {
    sub_3D2668();
    return *&a2;
  }

  if (v15 != 10)
  {
LABEL_39:
    _s16MusicApplication9AlbumCellC20detailTextComponents33_697C9E9A5E5CEA31E6831E8C6D513A7BLLAC06DetailfG0AELLVvpfi_0();
    v37 = v36;

    sub_2F48A4(v37, a1, 0, 0);

    if (qword_DE6948 == -1)
    {
LABEL_40:
      [a1 displayScale];
      sub_AB3A00();

      return *&a2;
    }

LABEL_44:
    swift_once();
    goto LABEL_40;
  }

  sub_3D32FC();
  return *&a2;
}

Swift::Void __swiftcall JSShelfViewController.configureCollectionView(_:)(UICollectionView a1)
{
  v2 = v1;
  sub_3B316C(a1.super.super.super.super.isa);
  v4 = [v1 viewBackgroundColor];
  [(objc_class *)a1.super.super.super.super.isa setBackgroundColor:v4];

  [(objc_class *)a1.super.super.super.super.isa setAlwaysBounceVertical:0];
  [(objc_class *)a1.super.super.super.super.isa setAlwaysBounceHorizontal:1];
  [(objc_class *)a1.super.super.super.super.isa setShowsHorizontalScrollIndicator:0];
  [(objc_class *)a1.super.super.super.super.isa setShowsVerticalScrollIndicator:0];
  v5 = type metadata accessor for AlbumCell(0);
  v6 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v5, v6, v7);

  v8 = type metadata accessor for SongCell(0);
  v9 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v8, v9, v10);

  v11 = type metadata accessor for FeaturedMusicVideoVerticalCell(0);
  v12 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v11, v12, v13);

  v14 = type metadata accessor for MusicVideoVerticalCell(0);
  v15 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v14, v15, v16);

  v17 = type metadata accessor for RankedMusicVideoVerticalCell(0);
  v18 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v17, v18, v19);

  v20 = type metadata accessor for PersonVerticalCell(0);
  v21 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v20, v21, v22);

  v23 = type metadata accessor for CuratorActivityCell(0);
  v24 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v23, v24, v25);

  v26 = type metadata accessor for FeaturedPlaylistCell(0);
  v27 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v26, v27, v28);

  v29 = type metadata accessor for FeaturedSongCell();
  v30 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v29, v30, v31);

  v32 = type metadata accessor for RadioStationCell(0);
  v33 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v32, v33, v34);

  v35 = type metadata accessor for FeaturedRadioShowCell(0);
  v36 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v35, v36, v37);

  v38 = type metadata accessor for CustomRoomAlbumCell(0);
  v39 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v38, v39, v40);

  v41 = type metadata accessor for CustomRoomMusicVideoCell(0);
  v42 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v41, v42, v43);

  v44 = type metadata accessor for FeaturedShowcaseCell(0);
  v45 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v44, v45, v46);

  v47 = type metadata accessor for SocialPersonHorizontalCell(0);
  v48 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v47, v48, v49);

  v50 = type metadata accessor for SocialPersonVerticalCell(0);
  v51 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v50, v51, v52);

  v53 = type metadata accessor for RadioShowCell(0);
  v54 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v53, v54, v55);

  v56 = type metadata accessor for PosterCell(0);
  v57 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:reuseIdentifier:)(v56, v57, v58);

  v59 = sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
  UICollectionView.register<A>(_:reuseIdentifier:)(v59, 0xD000000000000022, 0x8000000000B62800);
  v60 = type metadata accessor for CollectionViewSection.SectionHeaderView(0);
  v61 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v60, 0xD000000000000026, 0x8000000000B48490, v61, v62);

  v63 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v60, 0xD00000000000002ELL, 0x8000000000B484C0, v63, v64);

  v65 = type metadata accessor for SocialProfilesAccessoryView();
  v66 = *&v2[qword_E03720];
  v67 = *&v2[qword_E03720 + 8];
  v68 = static UICollectionReusableView.reuseIdentifier.getter();
  UICollectionView.register<A>(_:ofKind:reuseIdentifier:)(v65, v66, v67, v68, v69);

  sub_3D1968(a1.super.super.super.super.isa);
}

void sub_3BD6D0(uint64_t a1)
{
  v2 = qword_DFE308;
  *(v1 + qword_DFE308) = a1;

  sub_4A4164();

  v3 = *(v1 + v2);
  if (v3)
  {
    *(v3 + 24) = &off_D0FD28;

    swift_unknownObjectWeakAssign();
  }
}

void *sub_3BD760()
{
  v1 = qword_E03630;
  if (*&v0[qword_E03630])
  {
    v2 = *&v0[qword_E03630];
LABEL_5:

    return v2;
  }

  result = [v0 loadViewIfNeeded];
  v4 = *&v0[qword_DFE2F8];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03838, &qword_B0CFB8);
    swift_allocObject();
    v2 = sub_2BF520(v0, v4, 0, 1);
    *&v0[v1] = v2;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

double sub_3BD82C@<D0>(_OWORD *a1@<X8>)
{
  if (!*(v1 + qword_DFE2F0))
  {
    goto LABEL_7;
  }

  type metadata accessor for JSShelfModelResponse();
  v3 = swift_dynamicCastClass();
  if (!v3)
  {
    goto LABEL_7;
  }

  v4 = *(v3 + OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults);
  isa = sub_AB3770().super.isa;
  [v4 itemAtIndexPath:isa];

  type metadata accessor for JSShelfItem(0);
  v6 = swift_dynamicCastClass();
  if (!v6)
  {

    swift_unknownObjectRelease();
LABEL_7:
    sub_465CC(&v96);
    goto LABEL_37;
  }

  v7 = v6;
  v8 = sub_AB3770().super.isa;
  v54 = v4;
  v53 = [v4 globalIndexForIndexPath:v8];

  v9 = *&stru_3D8.segname[(swift_isaMask & *v7) - 8];
  v10 = swift_unknownObjectRetain();
  v11 = v9(v10);
  v13 = v12;
  v14 = swift_unknownObjectRelease();
  if (v13)
  {
    v49 = v13;
    v50 = v11;
    v15 = sub_27EEA4(v7);
    v51 = v16;
    v52 = v15;
    goto LABEL_15;
  }

  v17 = (*(&stru_338.offset + (swift_isaMask & *v7)))(v14);
  v19 = v18;
  v20 = sub_27EEA4(v7);
  v51 = v21;
  v52 = v20;
  if (v19)
  {
    v49 = v19;
    v50 = v17;
    goto LABEL_15;
  }

  v22 = (*(&stru_B8.reserved2 + (swift_isaMask & *v7)))();
  if (v22)
  {
    v23 = v22;
    v24 = [v22 name];
    if (v24)
    {
      v25 = v24;
      v26 = sub_AB92A0();
      v49 = v27;
      v50 = v26;

      goto LABEL_15;
    }
  }

  v49 = 0;
  v50 = 0;
LABEL_15:
  v28 = *(&stru_338.reserved2 + (swift_isaMask & *v7));
  v29 = swift_unknownObjectRetain_n();
  v30 = v28(v29);
  if (v31)
  {
    v32 = v31;
    v55 = v30;
  }

  else
  {
    v55 = (*(&stru_388.flags + (swift_isaMask & *v7)))(v30);
    v32 = v33;
  }

  if (!(*&stru_428.sectname[swift_isaMask & *v7])())
  {
    goto LABEL_21;
  }

  type metadata accessor for JSGridSection();
  v34 = swift_dynamicCastClass();
  if (!v34)
  {
    type metadata accessor for JSShelfSection();
    v34 = swift_dynamicCastClass();
    if (v34)
    {
      v35 = &OBJC_IVAR____TtC11MusicJSCore14JSShelfSection_title;
      goto LABEL_24;
    }

    swift_unknownObjectRelease();
LABEL_21:
    v36 = swift_unknownObjectRelease();
    goto LABEL_28;
  }

  v35 = &OBJC_IVAR____TtC11MusicJSCore13JSGridSection_title;
LABEL_24:
  v37 = (v34 + *v35);
  swift_beginAccess();
  v39 = *v37;
  v38 = v37[1];

  swift_unknownObjectRelease();
  v36 = swift_unknownObjectRelease();
  v40 = HIBYTE(v38) & 0xF;
  if ((v38 & 0x2000000000000000) == 0)
  {
    v40 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v40)
  {
    goto LABEL_29;
  }

LABEL_28:
  v39 = 0;
  v38 = 0;
LABEL_29:
  if (v32)
  {
    v41 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v41 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v41)
    {
      v42 = v55;
    }

    else
    {

      v42 = 0;
      v32 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  v43 = (*&stru_1A8.sectname[swift_isaMask & *v7])(v36);
  swift_unknownObjectRelease();

  *&v56 = v52;
  *(&v56 + 1) = v51;
  *&v57 = v50;
  *(&v57 + 1) = v49;
  *&v58 = v7;
  *(&v58 + 1) = v53;
  LOBYTE(v59) = v43 != 0;
  *(&v59 + 1) = 5122;
  *(&v59 + 3) = v94;
  BYTE7(v59) = v95;
  *(&v59 + 1) = 0;
  *&v60 = 0;
  *(&v60 + 1) = v7;
  *&v61 = v39;
  *(&v61 + 1) = v38;
  *&v62 = v42;
  v63 = 0uLL;
  *(&v62 + 1) = v32;
  v64[0] = 1;
  *&v64[1] = *v93;
  *&v64[4] = *&v93[3];
  *&v64[8] = 0;
  *&v64[16] = 0;
  v64[24] = 2;
  v65[0] = v52;
  v65[1] = v51;
  v65[2] = v50;
  v65[3] = v49;
  v65[4] = v7;
  v65[5] = v53;
  v66 = v43 != 0;
  v67 = 5122;
  v69 = v95;
  v68 = v94;
  v70 = 0;
  v71 = 0;
  v72 = v7;
  v73 = v39;
  v74 = v38;
  v75 = v42;
  v76 = v32;
  v77 = 0;
  v78 = 0;
  v79 = 1;
  *&v80[3] = *&v93[3];
  *v80 = *v93;
  v81 = 0;
  v82 = 0;
  v83 = 2;
  sub_465F4(&v56, &v96);
  sub_46650(v65);

  v90 = v62;
  v91 = v63;
  v92[0] = *v64;
  *(v92 + 9) = *&v64[9];
  v86 = v58;
  v87 = v59;
  v88 = v60;
  v89 = v61;
  v84 = v56;
  v85 = v57;
  UIScreen.Dimensions.size.getter();
  v102 = v90;
  v103 = v91;
  v104[0] = v92[0];
  *(v104 + 9) = *(v92 + 9);
  v98 = v86;
  v99 = v87;
  v100 = v88;
  v101 = v89;
  v96 = v84;
  v97 = v85;
LABEL_37:
  v44 = v103;
  a1[6] = v102;
  a1[7] = v44;
  a1[8] = v104[0];
  *(a1 + 137) = *(v104 + 9);
  v45 = v99;
  a1[2] = v98;
  a1[3] = v45;
  v46 = v101;
  a1[4] = v100;
  a1[5] = v46;
  result = *&v96;
  v48 = v97;
  *a1 = v96;
  a1[1] = v48;
  return result;
}

Swift::Void __swiftcall JSShelfViewController.reloadModelResponse()()
{
  v1 = *(v0 + qword_E03750);
  v2 = type metadata accessor for JSShelfModelRequest();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC16MusicApplication19JSShelfModelRequest_shelfViewModel] = v1;
  v72.receiver = v3;
  v72.super_class = v2;
  v4 = v1;
  v5 = objc_msgSendSuper2(&v72, "init");
  sub_13C80(0, &qword_DFC880, off_CE5578);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = objc_opt_self();
  v8 = v5;
  v9 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setSectionKind:v9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE9BF0, &unk_AF87B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_AFFB00;
  *(v10 + 32) = sub_AB92A0();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_AB92A0();
  *(v10 + 56) = v12;
  *(v10 + 64) = sub_AB92A0();
  *(v10 + 72) = v13;
  *(v10 + 80) = sub_AB92A0();
  *(v10 + 88) = v14;
  *(v10 + 96) = sub_AB92A0();
  *(v10 + 104) = v15;
  *(v10 + 112) = sub_AB92A0();
  *(v10 + 120) = v16;
  *(v10 + 128) = sub_AB92A0();
  *(v10 + 136) = v17;
  isa = sub_AB9740().super.isa;
  v19 = [objc_opt_self() propertySetWithProperties:isa];

  v69 = v8;
  [v8 setSectionProperties:v19];

  v20 = [v7 kindWithModelClass:ObjCClassFromMetadata];
  [v8 setItemKind:v20];

  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_AF8810;
  *(v21 + 32) = sub_AB92A0();
  *(v21 + 40) = v22;
  *(v21 + 48) = sub_AB92A0();
  *(v21 + 56) = v23;
  *(v21 + 64) = sub_AB92A0();
  *(v21 + 72) = v24;
  *(v21 + 80) = sub_AB92A0();
  *(v21 + 88) = v25;
  *(v21 + 96) = sub_AB92A0();
  *(v21 + 104) = v26;
  *(v21 + 112) = sub_AB92A0();
  *(v21 + 120) = v27;
  *(v21 + 128) = sub_AB92A0();
  *(v21 + 136) = v28;
  *(v21 + 144) = sub_AB92A0();
  *(v21 + 152) = v29;
  *(v21 + 160) = sub_AB92A0();
  *(v21 + 168) = v30;
  *(v21 + 176) = sub_AB92A0();
  *(v21 + 184) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DE8E70, &unk_AF8900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF4EC0;
  *(inited + 32) = sub_AB92A0();
  *(inited + 40) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_AF4EC0;
  *(v34 + 32) = sub_AB92A0();
  *(v34 + 40) = v35;
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_B0CE50;
  *(v36 + 32) = sub_AB92A0();
  *(v36 + 40) = v37;
  *(v36 + 48) = sub_3DB858();
  *(v36 + 56) = sub_AB92A0();
  *(v36 + 64) = v38;
  *(v36 + 72) = sub_3DB858();
  *(v36 + 80) = sub_AB92A0();
  *(v36 + 88) = v39;
  *(v36 + 96) = sub_3DC0D0();
  *(v36 + 104) = sub_AB92A0();
  *(v36 + 112) = v40;
  *(v36 + 120) = sub_3DC0D0();
  *(v36 + 128) = sub_AB92A0();
  *(v36 + 136) = v41;
  *(v36 + 144) = sub_3DC3BC();
  *(v36 + 152) = sub_AB92A0();
  *(v36 + 160) = v42;
  *(v36 + 168) = sub_3DBCF8();
  *(v36 + 176) = sub_AB92A0();
  *(v36 + 184) = v43;
  *(v36 + 192) = sub_3DBCF8();
  *(v36 + 200) = sub_AB92A0();
  *(v36 + 208) = v44;
  *(v36 + 216) = sub_3DC5B0();
  *(v36 + 224) = sub_AB92A0();
  *(v36 + 232) = v45;
  *(v36 + 240) = sub_3DC5B0();
  *(v36 + 248) = sub_AB92A0();
  *(v36 + 256) = v46;
  *(v36 + 264) = sub_3DC9FC();
  *(v36 + 272) = sub_AB92A0();
  *(v36 + 280) = v47;
  *(v36 + 288) = sub_3DC9FC();
  *(v36 + 296) = sub_AB92A0();
  *(v36 + 304) = v48;
  *(v36 + 312) = sub_3DCBF0();
  *(v36 + 320) = sub_AB92A0();
  *(v36 + 328) = v49;
  *(v36 + 336) = sub_3DCBF0();
  *(v36 + 344) = sub_AB92A0();
  *(v36 + 352) = v50;
  *(v36 + 360) = sub_3DD0AC();
  *(v36 + 368) = sub_AB92A0();
  *(v36 + 376) = v51;
  *(v36 + 384) = sub_3DD0AC();
  *(v36 + 392) = sub_AB92A0();
  *(v36 + 400) = v52;
  *(v36 + 408) = sub_3DD3D4();
  *(v36 + 416) = sub_AB92A0();
  *(v36 + 424) = v53;
  *(v36 + 432) = sub_3DD3D4();
  *(v36 + 440) = sub_AB92A0();
  *(v36 + 448) = v54;
  *(v36 + 456) = sub_3DD9B8();
  *(v36 + 464) = sub_AB92A0();
  *(v36 + 472) = v55;
  *(v36 + 480) = sub_3DD9B8();
  *(v36 + 488) = sub_AB92A0();
  *(v36 + 496) = v56;
  *(v36 + 504) = sub_3DD72C();
  *(v36 + 512) = sub_AB92A0();
  *(v36 + 520) = v57;
  *(v36 + 528) = sub_3DD72C();
  sub_96EA4(v36);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_DE8E80, &unk_AF87C0);
  swift_arrayDestroy();
  v58 = objc_allocWithZone(MPPropertySet);
  v59 = sub_AB9740().super.isa;

  sub_13C80(0, &qword_DEA550, MPPropertySet_ptr);
  v60 = sub_AB8FD0().super.isa;

  v61 = [v58 initWithProperties:v59 relationships:v60];

  *(inited + 48) = v61;
  sub_96EA4(inited);
  swift_setDeallocating();
  sub_12E1C(inited + 32, &unk_DE8E80, &unk_AF87C0);
  v62 = objc_allocWithZone(MPPropertySet);
  v63 = sub_AB9740().super.isa;

  v64 = sub_AB8FD0().super.isa;

  v65 = [v62 initWithProperties:v63 relationships:v64];

  [v69 setItemProperties:v65];
  v66 = swift_allocObject();
  *(v66 + 16) = v70;
  aBlock[4] = sub_3E025C;
  aBlock[5] = v66;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_151E0;
  aBlock[3] = &block_descriptor_15_2;
  v67 = _Block_copy(aBlock);
  v68 = v70;

  [v69 performWithResponseHandler:v67];
  _Block_release(v67);
}

double sub_3BE6B4(void *a1)
{
  sub_13C80(0, &qword_DE8ED0, OS_dispatch_queue_ptr);
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  v4 = a1;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_3E1230, v3);

  return result;
}

double sub_3BE784(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v5 = Strong;
  v6 = *(Strong + qword_DFE2F0);
  if (v6)
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03760, &qword_B0CE80);
      v7 = v6;
      v8 = a2;
      v9 = sub_ABA790();

      if (v9)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

  if (a2)
  {
LABEL_7:
    v10 = &v5[qword_E03710];
    *v10 = 0;
    v10[8] = 1;
    v11 = &v5[qword_E03718];
    *v11 = 0;
    v11[8] = 1;
  }

LABEL_8:
  v12 = a2;
  sub_3B4724(a2);
  v13 = *&v5[qword_E03658];
  if (v13)
  {
    v14 = *(v13 + 216);
    *(v13 + 216) = a2;
    v15 = v12;
  }

  if (*(sub_3BD760() + 81) == 1)
  {
    v17 = sub_4A3ECC(v19);
    if (*v16)
    {
      v18 = v16;

      *v18 = &_swiftEmptySetSingleton;
    }

    (v17)(v19, 0);
  }

  return result;
}

Swift::Void __swiftcall JSShelfViewController.didApplyModelResponse()()
{
  if ([v0 isViewLoaded])
  {
    sub_3D97A0();
    [v0 loadViewIfNeeded];
    v1 = *&v0[qword_DFE2F8];
    if (v1)
    {
      v2 = v1;
      sub_3D1968(v2);
    }

    else
    {
      __break(1u);
    }
  }
}

void JSShelfViewController.modelResponse.setter(void *a1)
{
  v3 = *(v1 + qword_DFE2F0);
  if (!v3)
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (!a1 || (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03760, &qword_B0CE80), v4 = v3, v5 = a1, v6 = sub_ABA790(), v4, v5, (v6 & 1) == 0))
  {
LABEL_6:
    v7 = v1 + qword_E03710;
    *v7 = 0;
    *(v7 + 8) = 1;
    v8 = v1 + qword_E03718;
    *v8 = 0;
    *(v8 + 8) = 1;
  }

LABEL_7:

  sub_3B4724(a1);
}

void (*JSShelfViewController.modelResponse.modify(void *a1))(uint64_t a1, char a2)
{
  v2 = qword_DFE2F0;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_3BEAC0;
}

void sub_3BEAC0(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *a1;
  v5 = *(v3 + v2);
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      if (v4)
      {
        v18 = v4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03760, &qword_B0CE80);
        v9 = v5;
        v10 = v18;
        v11 = sub_ABA790();

        v4 = v18;
        if (v11)
        {
          goto LABEL_18;
        }
      }
    }

    else if (!v4)
    {
LABEL_18:
      sub_3B4724(v4);
      return;
    }

    v15 = v3 + qword_E03710;
    *v15 = 0;
    *(v15 + 8) = 1;
    v16 = v3 + qword_E03718;
    *v16 = 0;
    *(v16 + 8) = 1;
    goto LABEL_18;
  }

  v17 = v4;
  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_13;
    }

    v12 = v4;
    v4 = v17;
LABEL_12:
    v13 = v3 + qword_E03710;
    *v13 = 0;
    *(v13 + 8) = 1;
    v14 = v3 + qword_E03718;
    *v14 = 0;
    *(v14 + 8) = 1;
    goto LABEL_13;
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E03760, &qword_B0CE80);
  v6 = v17;
  v7 = v5;
  v8 = sub_ABA790();

  v4 = v17;
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  sub_3B4724(v4);
}

char *JSShelfViewController.createCustomCollectionViewLayout()()
{
  v2 = *(v0 + qword_E03720);
  v1 = *(v0 + qword_E03720 + 8);
  v3 = type metadata accessor for SocialProfilesShelfCollectionViewLayout(0);
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_updateItems] = 0;
  v5 = &v4[OBJC_IVAR____TtC16MusicApplication39SocialProfilesShelfCollectionViewLayout_socialProfilesHelper];
  *v5 = v2;
  *(v5 + 1) = v1;
  v11.receiver = v4;
  v11.super_class = v3;

  v6 = objc_msgSendSuper2(&v11, "init");
  v7 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
  swift_beginAccess();
  *&v6[v7] = 0x4024000000000000;
  v8 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
  v9 = v6;
  if (sub_AB38D0())
  {
    *&v6[v8] = *&v6[v7];
    [v9 invalidateLayout];
  }

  return v9;
}

void JSShelfViewController.updateMetrics(customCollectionViewLayout:)(char *a1)
{
  v2 = [a1 collectionView];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    HI.Grid.Metrics.init(width:variant:swiping:isAccessibilitySize:)(1, 1u, 0, v8, v4);
    v5 = v9;
    v6 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout_interSectionHorizontalOffset;
    swift_beginAccess();
    *&a1[v6] = v5;
    v7 = OBJC_IVAR____TtC16MusicApplication25ShelfCollectionViewLayout__interSectionHorizontalOffset;
    if (sub_AB38D0())
    {
      *&a1[v7] = *&a1[v6];
      [a1 invalidateLayout];
    }
  }

  sub_3D94EC(a1, 0);
}

void JSShelfViewController.configureForPlayabilityChange(for:modelIndexPath:)(void *a1)
{
  v2 = *(v1 + qword_DFE2F0);
  if (!v2)
  {
    return;
  }

  type metadata accessor for JSShelfModelResponse();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v25 = v2;
  v6 = [v5 results];
  if (!v6 || (v7 = v6, isa = sub_AB3770().super.isa, v9 = [v7 itemAtIndexPath:isa], v7, isa, !v9))
  {
    v21 = v25;
LABEL_22:

    return;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = [v10 contentItem];
    if (v11)
    {
      v24 = v11;
      v12 = MPModelStoreBrowseContentItem.kind.getter();
      if (v13 == 0xFF)
      {

LABEL_21:
        swift_unknownObjectRelease();
        v21 = v24;
        goto LABEL_22;
      }

      v14 = v12;
      v15 = v13;
      v16 = sub_3CE180(v12, v13);
      if (v16 >= 0x100u)
      {
        v17 = v16;
        type metadata accessor for HorizontalLockupCollectionViewCell(0);
        v18 = swift_dynamicCastClass();
        if (v18)
        {
          v19 = *&stru_248.segname[(swift_isaMask & *v18) + 16];
          v20 = a1;
          v19(v17 & 1);
LABEL_19:

          goto LABEL_20;
        }

        type metadata accessor for VerticalLockupCollectionViewCell(0);
        v22 = swift_dynamicCastClass();
        if (v22)
        {
          v23 = *(&stru_158.offset + (swift_isaMask & *v22));
          v20 = a1;
          v23(v17 & 1);
          goto LABEL_19;
        }
      }

LABEL_20:

      sub_3EB30(v14, v15);
      goto LABEL_21;
    }
  }

  swift_unknownObjectRelease();
}

void JSShelfViewController.collectionView(_:cellForItemAt:)(uint64_t a1, char **a2)
{
  v3 = v2;
  v1804 = type metadata accessor for CollectionViewCellArtworkComponentLoggingContext(0);
  __chkstk_darwin();
  v1805 = &v1783 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1803 = sub_AB3820();
  v1801 = *(v1803 - 8);
  __chkstk_darwin();
  v1800 = v7;
  v1802 = &v1783 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB35C0();
  __chkstk_darwin();
  v9 = &v1783 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_AB9250();
  __chkstk_darwin();
  v1799 = &v1783 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB2DC0();
  v1798 = *(v11 - 8);
  __chkstk_darwin();
  v13 = &v1783 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_DF43E0, &unk_B03B20);
  __chkstk_darwin();
  v15 = &v1783 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v1783 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E01230, "|,\r");
  __chkstk_darwin();
  v19 = &v1783 - v18;
  sub_AB3430();
  *&v23 = __chkstk_darwin().n128_u64[0];
  v24 = qword_DFE2F0;
  v25 = *&v3[qword_DFE2F0];
  v1807 = v3;
  v1808 = a2;
  if (v25)
  {
    v1794 = &v1783 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v1795 = v22;
    v1796 = v21;
    v1797 = v9;
    v26 = [v25 results];
    if (!v26)
    {
      __break(1u);
      goto LABEL_1163;
    }

    v27 = v26;
    v28 = [v26 sectionAtIndex:sub_AB37F0()];

    if (v28)
    {
      objc_opt_self();
      v29 = swift_dynamicCastObjCClass();
      if (v29)
      {
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    v29 = 0;
LABEL_7:
    v1806 = v29;
    v30 = *&v3[v24];
    if (!v30)
    {
      goto LABEL_59;
    }

    type metadata accessor for JSShelfModelResponse();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = v31;
      v33 = v30;
      v1791 = v32;
      v34 = [v32 results];
      if (v34)
      {
        v35 = v34;
        v1792 = a1;
        v1793 = v33;
        isa = sub_AB3770().super.isa;
        v37 = [v35 itemAtIndexPath:isa];

        if (v37)
        {
          v38 = v37;
          objc_opt_self();
          v39 = swift_dynamicCastObjCClass();
          v3 = v1807;
          if (v39)
          {
            v40 = v39;
            v41 = [v39 contentItem];
            if (v41)
            {
              v1790 = v40;
              v1788 = v38;
              v1789 = v41;
              v42 = MPModelStoreBrowseContentItem.kind.getter();
              if (v43 != 0xFF)
              {
                v44 = v42;
                v45 = v43;
                v46 = sub_3CE180(v42, v43);
                v47 = v45;
                v48 = v46;
                v49 = v47;
                if (v47 > 5u)
                {
                  a2 = v1808;
                  if (v47 <= 8u)
                  {
                    v50 = v1793;
                    if (v47 != 6)
                    {
                      if (v47 != 7)
                      {
                        if (v47 == 8)
                        {

                          v51 = v1806;
                          if (v1806)
                          {
                            if ([v1806 uniformCellType] == &dword_0 + 1)
                            {
                              v52 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                              v53 = sub_AB37F0();
                              v54 = sub_3D60D4(v53);
                              if ((v54 & 1) == 0)
                              {
                                v57 = 0;
LABEL_247:
                                AlbumCell.rank.setter(v57, (v54 & 1) == 0);
                                v410 = [v1790 titleText];
                                if (v410 || (v410 = [v44 title]) != 0)
                                {
                                  v411 = v410;
                                  v412 = sub_AB92A0();
                                  v414 = v413;
                                }

                                else
                                {
                                  v412 = 0;
                                  v414 = 0xE000000000000000;
                                }

                                v415 = AlbumCell.title.setter(v412, v414);
                                v416 = [v1790 subtitleText];
                                if (v416)
                                {
                                  v417 = v416;
                                  v418 = sub_AB92A0();
                                  v420 = v419;

LABEL_669:
                                  AlbumCell.artistName.setter(v418, v420);
                                  *(&v1810 + 1) = sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
                                  v1811 = &off_D17AC0;
                                  *&v1809 = v44;
                                  sub_37C074(v44, 8);
                                  sub_3B8C40(&v1809, &off_CEFDE8, sub_1783C8);
                                  sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                                  AlbumCell.layoutStyle.setter(0);
                                  v100 = v52;
                                  VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

LABEL_815:
LABEL_915:
                                  v219 = v44;
                                  v220 = 8;
                                  goto LABEL_945;
                                }

                                v480 = [v44 show];
                                if (v480)
                                {
                                  v481 = v480;
                                  v482 = [v480 title];
                                  if (v482)
                                  {
                                    v483 = v482;
                                    v418 = sub_AB92A0();
                                    v420 = v484;

                                    goto LABEL_669;
                                  }
                                }

                                v418 = 0;
                                v420 = 0xE000000000000000;
                                goto LABEL_669;
                              }

                              v55 = sub_AB37B0();
                              v56 = __OFADD__(v55, 1);
                              v57 = v55 + 1;
                              if (!v56)
                              {
                                goto LABEL_247;
                              }

                              __break(1u);
                              goto LABEL_25;
                            }

                            if ([v51 uniformCellType] == &dword_4 + 3)
                            {
                              v100 = sub_3B336C(a2, type metadata accessor for CustomRoomMusicVideoCell);
                              v323 = [v1790 headlineText];
                              if (v323)
                              {
                                v324 = v323;
                                v325 = sub_AB92A0();
                                v327 = v326;
                              }

                              else
                              {
                                v325 = 0;
                                v327 = 0xE000000000000000;
                              }

                              v686 = sub_14D848(v325, v327);
                              v687 = [v1790 titleText];
                              if (v687 || (v687 = [v44 title]) != 0)
                              {
                                v688 = v687;
                                v689 = sub_AB92A0();
                                v691 = v690;
                              }

                              else
                              {
                                v689 = 0;
                                v691 = 0xE000000000000000;
                              }

                              v692 = sub_14DAA0(v689, v691);
                              v693 = [v1790 subtitleText];
                              if (v693)
                              {
                                v694 = v693;
                                v695 = sub_AB92A0();
                                v697 = v696;

LABEL_811:
                                v1269 = sub_14DD00(v695, v697);
                                v1270 = [v1790 descriptionText];
                                if (v1270)
                                {
                                  v1271 = v1270;
                                  v1272 = sub_AB92A0();
                                  v1274 = v1273;
                                }

                                else
                                {
                                  v1272 = 0;
                                  v1274 = 0xE000000000000000;
                                }

                                sub_14DFF4(v1272, v1274);
                                sub_14E270(v48 & 1);
                                goto LABEL_815;
                              }

                              v710 = [v44 show];
                              if (v710)
                              {
                                v711 = v710;
                                v712 = [v710 title];
                                if (v712)
                                {
                                  v713 = v712;
                                  v695 = sub_AB92A0();
                                  v697 = v714;

                                  goto LABEL_811;
                                }
                              }

                              v695 = 0;
                              v697 = 0xE000000000000000;
                              goto LABEL_811;
                            }

                            if ([v51 uniformCellType] == &dword_4)
                            {
                              v426 = sub_3B336C(a2, type metadata accessor for FeaturedMusicVideoVerticalCell);
                              v427 = [v1790 titleText];
                              if (v427)
                              {
                                v428 = v427;
                                v429 = v48;
                              }

                              else
                              {
                                v429 = v48;
                                v1008 = [v44 title];
                                if (!v1008)
                                {
                                  v1009 = 0;
                                  v1011 = 0xE000000000000000;
                                  a2 = v1808;
LABEL_645:
                                  v1012 = sub_AB37F0();
                                  if (sub_3D60D4(v1012))
                                  {
                                    v1013 = sub_3D67E4(v1009, v1011);
                                    v1015 = v1014;

                                    v1016 = v1013;
                                    v1017 = v1015;
                                  }

                                  else
                                  {
                                    v1016 = v1009;
                                    v1017 = v1011;
                                  }

                                  v1018 = sub_171DC0(v1016, v1017);
                                  v1019 = [v1790 subtitleText];
                                  if (v1019)
                                  {
                                    v1020 = v1019;
                                    v1021 = sub_AB92A0();
                                    v1023 = v1022;

LABEL_950:
                                    sub_172064(v1021, v1023);
                                    v100 = v426;
                                    VerticalLockupCollectionViewCell.isDisabled.setter(v429 & 1);

                                    *(&v1810 + 1) = sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
                                    v1811 = &off_D17AC0;
                                    *&v1809 = v44;
                                    sub_37C074(v44, 8);
                                    v1396 = sub_1783BC;
                                    goto LABEL_914;
                                  }

                                  v1024 = [v44 show];
                                  if (v1024)
                                  {
                                    v1025 = v1024;
                                    v1026 = [v1024 title];
                                    if (v1026)
                                    {
                                      v1027 = v1026;
                                      v1021 = sub_AB92A0();
                                      v1023 = v1028;

LABEL_949:
                                      a2 = v1808;
                                      goto LABEL_950;
                                    }
                                  }

                                  v1021 = 0;
                                  v1023 = 0xE000000000000000;
                                  goto LABEL_949;
                                }

                                v428 = v1008;
                                a2 = v1808;
                              }

                              v1009 = sub_AB92A0();
                              v1011 = v1010;

                              goto LABEL_645;
                            }

                            if ([v51 uniformCellType] == &dword_4 + 1)
                            {
                              v588 = sub_3B336C(a2, type metadata accessor for FeaturedShowcaseCell);
                              v589 = [v1790 headlineText];
                              if (v589)
                              {
                                v590 = v589;
                                v591 = sub_AB92A0();
                                v593 = v592;
                              }

                              else
                              {
                                v591 = 0;
                                v593 = 0xE000000000000000;
                              }

                              v1213 = sub_1E0214(v591, v593);
                              v1214 = [v1790 titleText];
                              if (v1214 || (v1214 = [v44 title]) != 0)
                              {
                                v1215 = v1214;
                                v1216 = sub_AB92A0();
                                v1218 = v1217;
                              }

                              else
                              {
                                v1216 = 0;
                                v1218 = 0xE000000000000000;
                              }

                              v1219 = sub_1E046C(v1216, v1218);
                              v1220 = [v1790 subtitleText];
                              if (v1220)
                              {
                                v1221 = v1220;
                                v1222 = sub_AB92A0();
                                v1224 = v1223;

LABEL_1146:
                                v1760 = sub_1E06CC(v1222, v1224);
                                v1761 = [v1790 descriptionText];
                                if (v1761)
                                {
                                  v1762 = v1761;
                                  v1763 = sub_AB92A0();
                                  v1765 = v1764;
                                }

                                else
                                {
                                  v1763 = 0;
                                  v1765 = 0xE000000000000000;
                                }

                                sub_1E09C0(v1763, v1765);
                                v100 = v588;
                                VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                                v1065 = v44;
                                v1066 = 8;
                                goto LABEL_664;
                              }

                              v1237 = [v44 show];
                              if (v1237)
                              {
                                v1238 = v1237;
                                v1239 = [v1237 title];
                                if (v1239)
                                {
                                  v1240 = v1239;
                                  v1222 = sub_AB92A0();
                                  v1224 = v1241;

                                  goto LABEL_1146;
                                }
                              }

                              v1222 = 0;
                              v1224 = 0xE000000000000000;
                              goto LABEL_1146;
                            }

                            if ([v1806 uniformCellType] == &dword_8 + 2)
                            {
                              v1787 = v44;
                              v823 = *&v1791[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                              v824 = sub_AB3770().super.isa;
                              v825 = [v823 itemAtIndexPath:v824];

                              type metadata accessor for JSPosterItem(0);
                              v826 = swift_dynamicCastClass();
                              if (v826)
                              {
                                v827 = v826;
                                v100 = sub_3B336C(v1808, type metadata accessor for PosterCell);
                                v828 = (*&stru_4C8.sectname[swift_isaMask & *v827])();
                                if ((v828 == 2) | v828 & 1)
                                {
                                  v829 = 2;
                                }

                                else
                                {
                                  v829 = 0;
                                }

                                v830 = [v1790 titleText];
                                if (v830)
                                {
                                  v831 = v830;
                                  v832 = sub_AB92A0();
                                  v834 = v833;
                                }

                                else
                                {
                                  v832 = 0;
                                  v834 = 0xE000000000000000;
                                }

                                sub_37AC4(v832, v834);
                                v1624 = [v1790 subtitleText];
                                if (v1624)
                                {
                                  v1625 = v1624;
                                  v1626 = sub_AB92A0();
                                  v1628 = v1627;
                                }

                                else
                                {
                                  v1626 = 0;
                                  v1628 = 0xE000000000000000;
                                }

                                sub_37B14(v1626, v1628);
                                v1634 = [v1790 descriptionText];
                                if (v1634)
                                {
                                  v1635 = v1634;
                                  v1636 = sub_AB92A0();
                                  v1638 = v1637;
                                }

                                else
                                {
                                  v1636 = 0;
                                  v1638 = 0xE000000000000000;
                                }

                                sub_37CA8(v1636, v1638);
                                v1644 = *(&stru_1F8.size + (swift_isaMask & *v827));
                                v1645 = swift_unknownObjectRetain();
                                v1646 = v1644(v1645);
                                v1648 = v1647;
                                swift_unknownObjectRelease();
                                if (v1648)
                                {
                                  v1649 = v1646;
                                }

                                else
                                {
                                  v1649 = 0;
                                }

                                if (v1648)
                                {
                                  v1650 = v1648;
                                }

                                else
                                {
                                  v1650 = 0xE000000000000000;
                                }

                                sub_38508(v1649, v1650);
                                v1651 = sub_39AC8(v829);
                                v1652 = (*(&stru_478.reloff + (swift_isaMask & *v827)))(v1651);
                                v1653 = sub_3863C(v1652);
                                v1654 = (*&stru_4C8.segname[(swift_isaMask & *v827) + 8])(v1653);
                                sub_38720(v1654);
                                v1655 = (*(&stru_4C8.offset + (swift_isaMask & *v827)))();
                                v1656 = sub_38A9C(v1655);
                                v1657 = *(&stru_4C8.reserved2 + (swift_isaMask & *v827));
                                v1658 = v1657(v1656);
                                if (v1658)
                                {
                                  v1659 = v1658;
                                  v1660 = (*&stru_298.sectname[swift_isaMask & *v1658])();
                                  v1662 = v1661;
                                }

                                else
                                {
                                  v1660 = 0;
                                  v1662 = 0;
                                }

                                v1682 = sub_38F48(v1660, v1662);
                                v1683 = v1657(v1682);
                                if (v1683)
                                {
                                  v1684 = v1683;
                                  v1685 = (*&stru_298.segname[(swift_isaMask & *v1683) + 8])();

                                  v1686 = v1685 & 1;
                                }

                                else
                                {
                                  v1686 = 2;
                                }

                                sub_38F98(v1686);
                                v1692 = (*&stru_518.segname[swift_isaMask & *v827])();
                                sub_39C54(v1692 & 1);
                                v1693 = [v1790 overlayTitleText];
                                if (v1693)
                                {
                                  v1694 = v1693;
                                  v1695 = sub_AB92A0();
                                  v1697 = v1696;
                                }

                                else
                                {
                                  v1695 = 0;
                                  v1697 = 0xE000000000000000;
                                }

                                sub_37EC8(v1695, v1697);
                                v1704 = [v1790 overlaySubtitleText];
                                if (v1704)
                                {
                                  v1705 = v1704;
                                  v1706 = sub_AB92A0();
                                  v1708 = v1707;
                                }

                                else
                                {
                                  v1706 = 0;
                                  v1708 = 0xE000000000000000;
                                }

                                sub_3838C(v1706, v1708);
                                *(&v1810 + 1) = sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
                                v1811 = &off_D17AC0;
                                v1714 = v1787;
                                *&v1809 = v1787;
                                sub_37C074(v1787, 8);
                                sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                                swift_unknownObjectRelease();
                                sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                                v1065 = v1714;
                                v1066 = 8;
                                goto LABEL_664;
                              }

                              swift_unknownObjectRelease();
                              a2 = v1808;
                              v44 = v1787;
                            }
                          }

                          v1367 = sub_3B336C(a2, type metadata accessor for MusicVideoVerticalCell);
                          v1368 = [v1790 headlineText];
                          if (v1368)
                          {
                            v1369 = v1368;
                            v1370 = sub_AB92A0();
                            v1372 = v1371;
                          }

                          else
                          {
                            v1370 = 0;
                            v1372 = 0xE000000000000000;
                          }

                          v1373 = sub_2B60B8(v1370, v1372);
                          v1374 = [v1790 titleText];
                          if (v1374 || (v1374 = [v44 title]) != 0)
                          {
                            v1375 = v1374;
                            v1376 = sub_AB92A0();
                            v1378 = v1377;
                          }

                          else
                          {
                            v1376 = 0;
                            v1378 = 0xE000000000000000;
                          }

                          v1379 = sub_AB37F0();
                          if (sub_3D60D4(v1379))
                          {
                            v1380 = sub_3D67E4(v1376, v1378);
                            v1382 = v1381;

                            v1383 = v1380;
                            v1384 = v1382;
                          }

                          else
                          {
                            v1383 = v1376;
                            v1384 = v1378;
                          }

                          v1385 = sub_2B62C8(v1383, v1384);
                          v1386 = [v1790 subtitleText];
                          if (v1386)
                          {
                            v1387 = v1386;
                            v1388 = sub_AB92A0();
                            v1390 = v1389;

LABEL_913:
                            sub_2B6574(v1388, v1390);
                            v100 = v1367;
                            VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                            *(&v1810 + 1) = sub_13C80(0, &unk_DE9C00, MPModelTVEpisode_ptr);
                            v1811 = &off_D17AC0;
                            *&v1809 = v44;
                            sub_37C074(v44, 8);
                            v1396 = sub_1783E0;
LABEL_914:
                            sub_3B8C40(&v1809, &off_CEFDE8, v1396);

                            sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                            goto LABEL_915;
                          }

                          v1391 = [v44 show];
                          if (v1391)
                          {
                            v1392 = v1391;
                            v1393 = [v1391 title];
                            if (v1393)
                            {
                              v1394 = v1393;
                              v1388 = sub_AB92A0();
                              v1390 = v1395;

                              goto LABEL_913;
                            }
                          }

                          v1388 = 0;
                          v1390 = 0xE000000000000000;
                          goto LABEL_913;
                        }

                        goto LABEL_146;
                      }

                      v181 = &selRef__authenticateReturningError_;
                      v182 = [v1790 titleText];
                      if (v182 || (v182 = [v44 title]) != 0)
                      {
                        v183 = v44;
                        v184 = v182;
                        v1796 = sub_AB92A0();
                        v186 = v185;
                      }

                      else
                      {
                        v183 = v44;
                        v1796 = 0;
                        v186 = 0xE000000000000000;
                      }

                      v187 = [v1790 subtitleText];
                      if (v187)
                      {
                        v188 = v187;
                        v189 = sub_AB92A0();
                        v1798 = v190;

LABEL_344:
                        v537 = v1806;
                        if (v1806)
                        {
                          v538 = &selRef_isMovingFromParentViewController;
                          if ([v1806 uniformCellType] == &dword_0 + 1)
                          {
                            v181 = v186;

                            v538 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                            v539 = sub_AB37F0();
                            v186 = sub_3D60D4(v539);
                            if ((v186 & 1) == 0)
                            {
                              v541 = 0;
LABEL_355:
                              AlbumCell.rank.setter(v541, (v186 & 1) == 0);
                              AlbumCell.title.setter(v1796, v181);
                              AlbumCell.artistName.setter(v189, v1798);
                              *(&v1810 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
                              v1811 = &off_D179F8;
                              *&v1809 = v183;
                              sub_37C074(v183, 7);
                              sub_3B8C40(&v1809, &off_CEFDE8, sub_1783C8);
                              sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                              AlbumCell.layoutStyle.setter(0);
LABEL_356:
                              v550 = v538;
                              VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

LABEL_891:
                              goto LABEL_892;
                            }

                            v537 = a2;
                            v540 = sub_AB37B0();
                            v56 = __OFADD__(v540, 1);
                            v541 = v540 + 1;
                            if (!v56)
                            {
                              goto LABEL_355;
                            }

                            __break(1u);
                          }

                          if ([v537 v538[196]] == &dword_4 + 3)
                          {

                            v542 = v186;
                            if (([v183 hasVideo] & 1) == 0)
                            {
                              v571 = sub_3B336C(a2, type metadata accessor for CustomRoomAlbumCell);
                              v572 = v1790;
                              v573 = sub_3DE9C0(v1806, v1790);
                              sub_4C5CB8(v573);
                              sub_4C5DC0(0);
                              *(&v1810 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
                              v1811 = &off_D179F8;
                              *&v1809 = v183;
                              v574 = v183;
                              v575 = v571;
                              sub_3B8C40(&v1809, &off_CEFDE8, sub_1785E8);
                              sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                              v576 = [v572 headlineText];
                              if (v576)
                              {
                                v577 = v576;
                                v578 = sub_AB92A0();
                                v580 = v579;
                              }

                              else
                              {
                                v578 = 0;
                                v580 = 0xE000000000000000;
                              }

                              sub_4C53F0(v578, v580);
                              sub_4C5610(v1796, v542);
                              v1001 = [v572 descriptionText];
                              if (v1001)
                              {
                                v1002 = v1001;
                                v1003 = sub_AB92A0();
                                v1005 = v1004;
                              }

                              else
                              {
                                v1003 = 0;
                                v1005 = 0xE000000000000000;
                              }

                              sub_4C5ACC(v1003, v1005);
                              sub_4C5EA0(v48 & 1);

                              v219 = v183;
                              v100 = v575;
                              v220 = 7;
                              goto LABEL_945;
                            }

                            v543 = sub_3B336C(a2, type metadata accessor for CustomRoomMusicVideoCell);
                            v544 = v1790;
                            v545 = [v1790 headlineText];
                            if (v545)
                            {
                              v546 = v545;
                              v547 = sub_AB92A0();
                              v549 = v548;
                            }

                            else
                            {
                              v547 = 0;
                              v549 = 0xE000000000000000;
                            }

                            sub_14D848(v547, v549);
                            sub_14DAA0(v1796, v542);
                            v996 = [v544 descriptionText];
                            if (v996)
                            {
                              v997 = v996;
                              v998 = sub_AB92A0();
                              v1000 = v999;
                            }

                            else
                            {
                              v998 = 0;
                              v1000 = 0xE000000000000000;
                            }

                            sub_14DFF4(v998, v1000);
                            v550 = v543;
                            [v183 duration];
                            sub_28FAC0(v1006, 0);

                            sub_14E270(v48 & 1);
                            *(&v1810 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
                            v1811 = &off_D179F8;
                            *&v1809 = v183;
                            sub_37C074(v183, 7);
                            v1007 = sub_1783EC;
                            goto LABEL_755;
                          }

                          if ([v537 v538[196]] == &dword_4)
                          {

                            v551 = sub_3B336C(a2, type metadata accessor for FeaturedMusicVideoVerticalCell);
                            v552 = sub_AB37F0();
                            if (sub_3D60D4(v552))
                            {

                              v553 = [v183 title];
                              if (v553)
                              {
                                v554 = v553;
                                v555 = sub_AB92A0();
                                v557 = v556;
                              }

                              else
                              {
                                v555 = 0;
                                v557 = 0;
                              }

                              a2 = v1808;
                              v1181 = sub_3D67E4(v555, v557);
                              v1183 = v1182;

                              v791 = v1181;
                              v792 = v1183;
                            }

                            else
                            {
                              v791 = v1796;
                              v792 = v186;
                            }

                            sub_171DC0(v791, v792);
                            sub_172064(v189, v1798);
                            v550 = v551;
                            VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                            *(&v1810 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
                            v1811 = &off_D179F8;
                            *&v1809 = v183;
                            sub_37C074(v183, 7);
                            v1007 = sub_1783BC;
LABEL_755:
                            sub_3B8C40(&v1809, &off_CEFDE8, v1007);

                            sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
LABEL_892:
                            v219 = v183;
                            v100 = v550;
                            v220 = 7;
                            goto LABEL_945;
                          }

                          if ([v537 v538[196]] == &dword_4 + 1)
                          {
                            v581 = v186;

                            v582 = sub_3B336C(a2, type metadata accessor for FeaturedShowcaseCell);
                            v583 = [v1790 headlineText];
                            if (v583)
                            {
                              v584 = v583;
                              v585 = sub_AB92A0();
                              v587 = v586;
                            }

                            else
                            {
                              v585 = 0;
                              v587 = 0xE000000000000000;
                            }

                            sub_1E0214(v585, v587);
                            sub_1E046C(v1796, v581);
                            v1196 = sub_1E06CC(v189, v1798);
                            v1197 = [v1790 descriptionText];
                            if (v1197)
                            {
                              v1198 = v1197;
                              v1199 = sub_AB92A0();
                              v1201 = v1200;
                            }

                            else
                            {
                              v1199 = 0;
                              v1201 = 0xE000000000000000;
                            }

                            sub_1E09C0(v1199, v1201);
                            v1208 = v582;
                            VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                            *(&v1810 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
                            v1811 = &off_D179F8;
                            *&v1809 = v183;
                            sub_37C074(v183, 7);
                            sub_3B8C40(&v1809, &off_CEFDE8, sub_1785DC);

                            sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                            v1065 = v183;
                            v100 = v1208;
                            v1066 = 7;
                            goto LABEL_664;
                          }

                          if ([v1806 v538[196]] == &dword_8 + 2)
                          {
                            v1794 = v186;
                            v805 = *&v1791[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                            v806 = sub_AB3770().super.isa;
                            v807 = [v805 itemAtIndexPath:v806];

                            type metadata accessor for JSPosterItem(0);
                            v1795 = v807;
                            v808 = swift_dynamicCastClass();
                            if (v808)
                            {
                              v809 = v808;

                              v810 = sub_3B336C(v1808, type metadata accessor for PosterCell);
                              v811 = (*&stru_4C8.sectname[swift_isaMask & *v809])();
                              if ((v811 == 2) | v811 & 1)
                              {
                                v812 = 2;
                              }

                              else
                              {
                                v812 = 0;
                              }

                              LODWORD(v1799) = v812;
                              v813 = [v1790 v181[332]];
                              if (v813)
                              {
                                v814 = v813;
                                v815 = sub_AB92A0();
                                v817 = v816;
                              }

                              else
                              {
                                v815 = 0;
                                v817 = 0xE000000000000000;
                              }

                              sub_37AC4(v815, v817);
                              v1538 = [v1790 subtitleText];
                              if (v1538)
                              {
                                v1539 = v1538;
                                v1540 = sub_AB92A0();
                                v1542 = v1541;
                              }

                              else
                              {
                                v1540 = 0;
                                v1542 = 0xE000000000000000;
                              }

                              sub_37B14(v1540, v1542);
                              v1548 = [v1790 descriptionText];
                              if (v1548)
                              {
                                v1549 = v1548;
                                v1550 = sub_AB92A0();
                                v1552 = v1551;
                              }

                              else
                              {
                                v1550 = 0;
                                v1552 = 0xE000000000000000;
                              }

                              sub_37CA8(v1550, v1552);
                              v1572 = *(&stru_1F8.size + (swift_isaMask & *v809));
                              v1573 = swift_unknownObjectRetain();
                              v1574 = v1572(v1573);
                              v1576 = v1575;
                              swift_unknownObjectRelease();
                              if (v1576)
                              {
                                v1577 = v1574;
                              }

                              else
                              {
                                v1577 = 0;
                              }

                              if (v1576)
                              {
                                v1578 = v1576;
                              }

                              else
                              {
                                v1578 = 0xE000000000000000;
                              }

                              sub_38508(v1577, v1578);
                              v1579 = sub_39AC8(v1799);
                              v1580 = (*(&stru_478.reloff + (swift_isaMask & *v809)))(v1579);
                              v1581 = sub_3863C(v1580);
                              v1582 = (*&stru_4C8.segname[(swift_isaMask & *v809) + 8])(v1581);
                              sub_38720(v1582);
                              v1583 = (*(&stru_4C8.offset + (swift_isaMask & *v809)))();
                              v1584 = sub_38A9C(v1583);
                              v1585 = *(&stru_4C8.reserved2 + (swift_isaMask & *v809));
                              v1586 = v1585(v1584);
                              if (v1586)
                              {
                                v1587 = v1586;
                                v1588 = (*&stru_298.sectname[swift_isaMask & *v1586])();
                                v1590 = v1589;
                              }

                              else
                              {
                                v1588 = 0;
                                v1590 = 0;
                              }

                              v1596 = sub_38F48(v1588, v1590);
                              v1597 = v1585(v1596);
                              if (v1597)
                              {
                                v1598 = v1597;
                                v1599 = (*&stru_298.segname[(swift_isaMask & *v1597) + 8])();

                                v1600 = v1599 & 1;
                              }

                              else
                              {
                                v1600 = 2;
                              }

                              sub_38F98(v1600);
                              v1607 = (*&stru_518.segname[swift_isaMask & *v809])();
                              sub_39C54(v1607 & 1);
                              v1608 = [v1790 overlayTitleText];
                              if (v1608)
                              {
                                v1609 = v1608;
                                v1610 = sub_AB92A0();
                                v1612 = v1611;
                              }

                              else
                              {
                                v1610 = 0;
                                v1612 = 0xE000000000000000;
                              }

                              sub_37EC8(v1610, v1612);
                              v1618 = [v1790 overlaySubtitleText];
                              if (v1618)
                              {
                                v1619 = v1618;
                                v1620 = sub_AB92A0();
                                v1622 = v1621;
                              }

                              else
                              {
                                v1620 = 0;
                                v1622 = 0xE000000000000000;
                              }

                              sub_3838C(v1620, v1622);
                              *(&v1810 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
                              v1811 = &off_D179F8;
                              *&v1809 = v183;
                              sub_37C074(v183, 7);
                              sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                              swift_unknownObjectRelease();
                              sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                              v1065 = v183;
                              v100 = v810;
                              v1066 = 7;
                              goto LABEL_664;
                            }

                            swift_unknownObjectRelease();
                            a2 = v1808;
                            v186 = v1794;
                          }
                        }

                        v1341 = sub_AB37F0();
                        if (sub_3D6728(v1341))
                        {
                          v1342 = v1793;

                          v550 = sub_3B336C(a2, type metadata accessor for FeaturedSongCell);
                          v1343 = sub_AB91E0();
                          sub_5F26C(v1343);
                          v1344 = sub_AB9320();
                          sub_1DA3C8(v1344, v1345);
                          sub_1DA550(v1796, v186);
                          sub_1DA6DC(v189, v1798);
                          sub_1DA7D8(v48 & 1);

                          goto LABEL_892;
                        }

                        if (![v183 hasVideo])
                        {
                          v1350 = sub_3B336C(a2, type metadata accessor for SongCell);
                          sub_14377C(40960);

                          sub_142740(v1796, v186);
                          v1351 = v1798;

                          sub_142958(v189, v1351);
                          *(&v1810 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
                          v1811 = &off_D179F8;
                          *&v1809 = v183;
                          sub_37C074(v183, 7);
                          sub_3B8C40(&v1809, &off_CEF8C8, sub_178218);
                          sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                          v1352 = sub_AB37F0();
                          if (sub_3D60D4(v1352))
                          {
                            v1353 = sub_AB37B0();
                            v56 = __OFADD__(v1353, 1);
                            v1354 = v1353 + 1;
                            if (v56)
                            {
LABEL_1164:
                              __break(1u);
                              goto LABEL_1165;
                            }

                            sub_1438F0(v1354, 0);
                            v1355 = [v1791 results];

                            if (!v1355)
                            {
LABEL_1165:
                              __break(1u);
                              return;
                            }

                            a2 = v1808;
                            v1356 = [v1355 numberOfItemsInSection:sub_AB37F0()];

                            sub_14391C(v1356, 0);
                          }

                          else
                          {
                          }

                          v550 = v1350;
                          sub_200878(1);
                          sub_20085C(1);

                          sub_143BBC(v48 & 1, v1364);
                          sub_143184([v183 isFavorite]);
                          goto LABEL_891;
                        }

                        v1346 = sub_AB37F0();
                        if ((sub_3D60D4(v1346) & 1) == 0)
                        {
                          v1357 = v186;
                          v1358 = sub_3B336C(a2, type metadata accessor for MusicVideoVerticalCell);
                          v1359 = [v1790 headlineText];
                          if (v1359)
                          {
                            v1360 = v1359;
                            v1361 = sub_AB92A0();
                            v1363 = v1362;
                          }

                          else
                          {
                            v1361 = 0;
                            v1363 = 0xE000000000000000;
                          }

                          sub_2B60B8(v1361, v1363);
                          sub_2B62C8(v1796, v1357);
                          sub_2B6574(v189, v1798);
                          v1365 = v1358;
                          VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                          *(&v1810 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
                          v1811 = &off_D179F8;
                          v1366 = v183;
                          v100 = v1365;
                          *&v1809 = v1366;
                          sub_37C074(v1366, 7);
                          sub_3B8C40(&v1809, &off_CEFDE8, sub_1783E0);

                          sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                          v1065 = v1366;
                          v1066 = 7;
                          goto LABEL_664;
                        }

                        v538 = sub_3B336C(a2, type metadata accessor for RankedMusicVideoVerticalCell);
                        v1347 = sub_AB37B0();
                        v56 = __OFADD__(v1347, 1);
                        v1349 = (v1347 + 1);
                        if (!v56)
                        {
                          sub_42B3B0(v1349, 0, v1348);
                          sub_42B4A8(v1796, v186);
                          sub_42B754(v189, v1798);
                          *(&v1810 + 1) = sub_13C80(0, &unk_DE8EB0, MPModelSong_ptr);
                          v1811 = &off_D179F8;
                          *&v1809 = v183;
                          sub_37C074(v183, 7);
                          sub_3B8DA0(&v1809, &off_CEFDE8);
                          sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                          goto LABEL_356;
                        }

LABEL_1163:
                        __break(1u);
                        goto LABEL_1164;
                      }

                      v289 = [v183 artist];
                      if (v289)
                      {
                        v290 = v289;
                        v291 = [v289 name];
                        if (v291)
                        {
                          v292 = v291;
                          v189 = sub_AB92A0();
                          v1798 = v293;

                          goto LABEL_344;
                        }
                      }

                      v189 = 0;
                      v1798 = 0xE000000000000000;
                      goto LABEL_344;
                    }

                    v204 = v1806;
                    if (v1806)
                    {
                      if ([v1806 uniformCellType] == &dword_0 + 2)
                      {
                        v205 = sub_3B336C(a2, type metadata accessor for PersonVerticalCell);
                        v206 = [v1790 titleText];
                        if (v206 || (v206 = [v44 name]) != 0)
                        {
                          v207 = v206;
                          v208 = sub_AB92A0();
                          v210 = v209;
                        }

                        else
                        {
                          v208 = 0;
                          v210 = 0xE000000000000000;
                        }

                        sub_1FD7A8(v208, v210);
                        sub_1FDACC(0, 0xE000000000000000);
                        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03790, &qword_B0CE88);
                        v211 = swift_allocObject();
                        *(v211 + 16) = xmmword_AF4EC0;
                        *(v211 + 40) = 0;
                        *(v211 + 48) = 0;
                        *(v211 + 32) = 1;
                        *(v211 + 56) = 0;
                        v100 = v205;
                        v212 = sub_272D38(v211);
                        v214 = v213;
                        v216 = v215;
                        v218 = v217;

                        sub_361EF0(v212, v214, v216, v218);
                        sub_7FCC4(v212);
                        VerticalLockupCollectionViewCell.isDisabled.setter(0);

                        sub_1FDD00(2);
                        v219 = v44;
                        v220 = 6;
                        goto LABEL_945;
                      }

                      if ([v204 uniformCellType] == &dword_8)
                      {
                        v333 = sub_3B336C(a2, type metadata accessor for SocialPersonVerticalCell);
                        v334 = [v1790 titleText];
                        if (v334 || (v334 = [v44 name]) != 0)
                        {
                          v335 = v334;
                          v336 = sub_AB92A0();
                          v338 = v337;
                        }

                        else
                        {
                          v336 = 0;
                          v338 = 0xE000000000000000;
                        }

                        v339 = sub_115C6C(v336, v338);
                        v340 = [v1790 subtitleText];
                        if (v340 || (v340 = [v44 handle]) != 0)
                        {
                          v341 = v44;
                          v342 = v340;
                          v343 = sub_AB92A0();
                          v345 = v344;
                        }

                        else
                        {
                          v341 = v44;
                          v343 = 0;
                          v345 = 0xE000000000000000;
                        }

                        sub_115DA8(v343, v345);
                        sub_115FF0(&dword_0 + 1);
                        sub_11604C(&dword_0 + 1);
                        sub_11607C(1);
                        v346 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v347 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v348 = swift_allocObject();
                        *(v348 + 16) = v346;
                        *(v348 + 24) = v347;
                        v349 = v333;

                        sub_1161FC(sub_3E0408, v348);

                        v350 = OBJC_IVAR____TtC16MusicApplication24SocialPersonVerticalCell_relationshipButtonController;
                        v351 = v341;
                        sub_37C074(v341, 6);

                        sub_49D948(v341);

                        *(*&v349[v350] + 48) = &off_D0FCD8;
                        swift_unknownObjectWeakAssign();
                        v352 = *&v349[v350];
                        v353 = swift_allocObject();
                        swift_unknownObjectWeakInit();
                        v354 = swift_allocObject();
                        swift_unknownObjectWeakInit();

                        v355 = swift_allocObject();
                        *(v355 + 16) = v353;
                        *(v355 + 24) = v354;
                        v356 = *(v352 + 56);
                        v357 = *(v352 + 64);
                        *(v352 + 56) = sub_3E0424;
                        *(v352 + 64) = v355;

                        sub_17654(v356, v357);

                        v100 = v349;
                        if ([v351 isVerified])
                        {
                          v358 = 0;
                          v359 = 0;
                          v360 = 0;
                          v361 = &dword_0 + 2;
                        }

                        else
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03790, &qword_B0CE88);
                          v600 = swift_allocObject();
                          *(v600 + 16) = xmmword_AF4EC0;
                          *(v600 + 40) = 0;
                          *(v600 + 48) = 0;
                          *(v600 + 32) = 1;
                          *(v600 + 56) = 0;
                          v361 = sub_272D38(v600);
                          v358 = v601;
                          v359 = v602;
                          v360 = v603;
                        }

                        sub_361EF0(v361, v358, v359, v360);
                        sub_7FCC4(v361);
                        VerticalLockupCollectionViewCell.isDisabled.setter(0);

                        v219 = v351;
                        v220 = 6;
                        goto LABEL_945;
                      }

                      if ([v204 uniformCellType] == &dword_8 + 2)
                      {
                        v438 = *&v1791[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                        v439 = sub_AB3770().super.isa;
                        v440 = [v438 itemAtIndexPath:v439];

                        type metadata accessor for JSPosterItem(0);
                        v441 = swift_dynamicCastClass();
                        if (v441)
                        {
                          v442 = v441;
                          v1787 = v44;
                          v100 = sub_3B336C(a2, type metadata accessor for PosterCell);
                          v443 = (*&stru_4C8.sectname[swift_isaMask & *v442])();
                          if ((v443 == 2) | v443 & 1)
                          {
                            v444 = 2;
                          }

                          else
                          {
                            v444 = 0;
                          }

                          v445 = [v1790 titleText];
                          if (v445)
                          {
                            v446 = v445;
                            v447 = sub_AB92A0();
                            v449 = v448;
                          }

                          else
                          {
                            v447 = 0;
                            v449 = 0xE000000000000000;
                          }

                          sub_37AC4(v447, v449);
                          v1127 = [v1790 subtitleText];
                          if (v1127)
                          {
                            v1128 = v1127;
                            v1129 = sub_AB92A0();
                            v1131 = v1130;
                          }

                          else
                          {
                            v1129 = 0;
                            v1131 = 0xE000000000000000;
                          }

                          sub_37B14(v1129, v1131);
                          v1132 = [v1790 descriptionText];
                          if (v1132)
                          {
                            v1133 = v1132;
                            v1134 = sub_AB92A0();
                            v1136 = v1135;
                          }

                          else
                          {
                            v1134 = 0;
                            v1136 = 0xE000000000000000;
                          }

                          sub_37CA8(v1134, v1136);
                          v1137 = *(&stru_1F8.size + (swift_isaMask & *v442));
                          v1138 = swift_unknownObjectRetain();
                          v1139 = v1137(v1138);
                          v1141 = v1140;
                          swift_unknownObjectRelease();
                          if (v1141)
                          {
                            v1142 = v1139;
                          }

                          else
                          {
                            v1142 = 0;
                          }

                          if (v1141)
                          {
                            v1143 = v1141;
                          }

                          else
                          {
                            v1143 = 0xE000000000000000;
                          }

                          sub_38508(v1142, v1143);
                          v1144 = sub_39AC8(v444);
                          v1145 = (*(&stru_478.reloff + (swift_isaMask & *v442)))(v1144);
                          v1146 = sub_3863C(v1145);
                          v1147 = (*&stru_4C8.segname[(swift_isaMask & *v442) + 8])(v1146);
                          sub_38720(v1147);
                          v1148 = (*(&stru_4C8.offset + (swift_isaMask & *v442)))();
                          v1149 = sub_38A9C(v1148);
                          v1150 = *(&stru_4C8.reserved2 + (swift_isaMask & *v442));
                          v1151 = v1150(v1149);
                          if (v1151)
                          {
                            v1152 = v1151;
                            v1153 = (*&stru_298.sectname[swift_isaMask & *v1151])();
                            v1155 = v1154;
                          }

                          else
                          {
                            v1153 = 0;
                            v1155 = 0;
                          }

                          v1156 = sub_38F48(v1153, v1155);
                          v1157 = v1150(v1156);
                          if (v1157)
                          {
                            v1158 = v1157;
                            v1159 = (*&stru_298.segname[(swift_isaMask & *v1157) + 8])();

                            v1160 = v1159 & 1;
                          }

                          else
                          {
                            v1160 = 2;
                          }

                          sub_38F98(v1160);
                          v1161 = (*&stru_518.segname[swift_isaMask & *v442])();
                          sub_39C54(v1161 & 1);
                          v1162 = [v1790 overlayTitleText];
                          if (v1162)
                          {
                            v1163 = v1162;
                            v1164 = sub_AB92A0();
                            v1166 = v1165;
                          }

                          else
                          {
                            v1164 = 0;
                            v1166 = 0xE000000000000000;
                          }

                          sub_37EC8(v1164, v1166);
                          v1167 = [v1790 overlaySubtitleText];
                          if (v1167)
                          {
                            v1168 = v1167;
                            v1169 = sub_AB92A0();
                            v1171 = v1170;
                          }

                          else
                          {
                            v1169 = 0;
                            v1171 = 0xE000000000000000;
                          }

                          sub_3838C(v1169, v1171);
                          v1811 = 0;
                          v1809 = 0u;
                          v1810 = 0u;
                          sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                          swift_unknownObjectRelease();
                          sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                          v1065 = v1787;
LABEL_663:
                          v1066 = 6;
LABEL_664:
                          sub_3EB30(v1065, v1066);
                          swift_unknownObjectRelease();

                          a2 = v1808;
                          goto LABEL_61;
                        }

                        swift_unknownObjectRelease();
                      }
                    }

                    v1029 = sub_3B336C(a2, type metadata accessor for SocialPersonHorizontalCell);
                    v1030 = [v1790 titleText];
                    if (v1030 || (v1030 = [v44 name]) != 0)
                    {
                      v1031 = v1030;
                      v1032 = sub_AB92A0();
                      v1034 = v1033;
                    }

                    else
                    {
                      v1032 = 0;
                      v1034 = 0xE000000000000000;
                    }

                    v1035 = sub_B1070(v1032, v1034);
                    v1036 = [v1790 subtitleText];
                    if (v1036 || (v1036 = [v44 handle]) != 0)
                    {
                      v1037 = v1036;
                      v1038 = sub_AB92A0();
                      v1040 = v1039;
                    }

                    else
                    {
                      v1038 = 0;
                      v1040 = 0xE000000000000000;
                    }

                    sub_B1194(v1038, v1040);
                    v1041 = *&v1029[OBJC_IVAR____TtC16MusicApplication34HorizontalLockupCollectionViewCell_artworkComponent];
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03790, &qword_B0CE88);
                    v1042 = swift_allocObject();
                    *(v1042 + 16) = xmmword_AF4EC0;
                    *(v1042 + 40) = 0;
                    *(v1042 + 48) = 0;
                    *(v1042 + 32) = 1;
                    *(v1042 + 56) = 0;
                    v100 = v1029;

                    v1043 = sub_272D38(v1042);
                    v1045 = v1044;
                    v1047 = v1046;
                    v1049 = v1048;

                    type metadata accessor for ArtworkComponentImageView();
                    v1050 = swift_dynamicCastClass();
                    if (v1050)
                    {
                      v1051 = v1050 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle;
                      v1799 = v100;
                      v1052 = v44;
                      v1053 = *(v1050 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle);
                      v1054 = *(v1050 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 8);
                      v1055 = *(v1050 + OBJC_IVAR___MusicArtworkComponentImageView_accessoryStyle + 16);
                      *v1051 = v1043;
                      *(v1051 + 8) = v1045;
                      *(v1051 + 16) = v1047;
                      v1798 = v1041;
                      v1056 = *(v1051 + 24);
                      *(v1051 + 24) = v1049;
                      sub_7FCB4(v1043);
                      sub_7D6F4(v1053, v1054, v1055, v1056);
                      v44 = v1052;
                      v100 = v1799;
                      sub_7FCC4(v1053);
                    }

                    sub_7FCC4(v1043);

                    v1057 = OBJC_IVAR____TtC16MusicApplication26SocialPersonHorizontalCell_relationshipButtonController;
                    sub_37C074(v44, 6);

                    sub_49D948(v44);

                    *(*&v100[v1057] + 48) = &off_D0FCD8;
                    swift_unknownObjectWeakAssign();
                    v1058 = *&v100[v1057];
                    v1059 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v1060 = swift_allocObject();
                    swift_unknownObjectWeakInit();
                    v1061 = swift_allocObject();
                    *(v1061 + 16) = v1059;
                    *(v1061 + 24) = v1060;
                    v1062 = *(v1058 + 56);
                    v1063 = *(v1058 + 64);
                    *(v1058 + 56) = sub_3E12FC;
                    *(v1058 + 64) = v1061;

                    sub_17654(v1062, v1063);

                    sub_20085C(1);
                    sub_200620(0, v1064);

                    v1065 = v44;
                    goto LABEL_663;
                  }

                  v50 = v1793;
                  if (v47 != 9)
                  {
                    if (v47 != 12)
                    {
                      if (v47 != 13)
                      {
                        goto LABEL_146;
                      }

                      v137 = v1806;
                      if (v1806)
                      {
                        if ([v1806 uniformCellType] == &dword_0 + 1)
                        {
                          v19 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                          v138 = sub_AB37F0();
                          v13 = sub_3D60D4(v138);
                          if ((v13 & 1) == 0)
                          {
                            v140 = 0;
LABEL_253:
                            AlbumCell.rank.setter(v140, (v13 & 1) == 0);
                            v421 = [v44 title];
                            if (v421)
                            {
                              v422 = v421;
                              v423 = sub_AB92A0();
                              v425 = v424;
                            }

                            else
                            {
                              v423 = 0;
                              v425 = 0xE000000000000000;
                            }

                            AlbumCell.title.setter(v423, v425);
                            AlbumCell.artistName.setter(0, 0xE000000000000000);
                            v1811 = 0;
                            v1809 = 0u;
                            v1810 = 0u;
                            sub_3B8C40(&v1809, &off_CEFDE8, sub_1783C8);
                            sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                            AlbumCell.layoutStyle.setter(0);
                            v100 = v19;
                            VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

LABEL_460:
LABEL_934:
                            v219 = v44;
                            v220 = 13;
                            goto LABEL_945;
                          }

                          v139 = sub_AB37B0();
                          v56 = __OFADD__(v139, 1);
                          v140 = v139 + 1;
                          if (!v56)
                          {
                            goto LABEL_253;
                          }

                          __break(1u);
LABEL_94:
                          v50 = v1793;
                          if (v49)
                          {
                            if (v49 == 1)
                            {

                              v141 = v1806;
                              if (v1806)
                              {
                                if ([v1806 uniformCellType] == &dword_4 + 3)
                                {
                                  v100 = sub_3B336C(a2, type metadata accessor for CustomRoomAlbumCell);
                                  v142 = v141;
                                  v143 = v1790;
                                  v144 = sub_3DE9C0(v142, v1790);
                                  v145 = v144;
                                  sub_4C5CB8(v144);
                                  if (v145 == 2)
                                  {
                                    v146 = 0;
                                  }

                                  else
                                  {
                                    v146 = &dword_0 + 3;
                                  }

                                  sub_4C5DC0(v146);
                                  *(&v1810 + 1) = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
                                  v1811 = &off_D17A70;
                                  *&v1809 = v44;
                                  v147 = v44;
                                  sub_3B8C40(&v1809, &off_CEFDE8, sub_1785E8);
                                  sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                                  v148 = [v143 headlineText];
                                  if (v148)
                                  {
                                    v149 = v148;
                                    v150 = sub_AB92A0();
                                    v152 = v151;
                                  }

                                  else
                                  {
                                    v150 = 0;
                                    v152 = 0xE000000000000000;
                                  }

                                  v456 = [v147 name];
                                  if (v456)
                                  {
                                    v457 = v456;
                                    v458 = sub_AB92A0();
                                    v460 = v459;
                                  }

                                  else
                                  {
                                    v458 = 0;
                                    v460 = 0xE000000000000000;
                                  }

                                  sub_4C5610(v458, v460);
                                  v461 = 0xE000000000000000;
                                  v462 = sub_4C5820(0, 0xE000000000000000);
                                  v463 = [v1790 descriptionText];
                                  if (v463)
                                  {
                                    v464 = v463;
                                    v465 = sub_AB92A0();
                                    v461 = v466;
                                  }

                                  else
                                  {
                                    v465 = 0;
                                  }

                                  sub_4C5ACC(v465, v461);
                                  sub_4C5EA0(v48 & 1);

LABEL_393:
                                  v219 = v44;
LABEL_394:
                                  v220 = 1;
                                  goto LABEL_945;
                                }

                                if ([v141 uniformCellType] == &dword_8 + 2)
                                {
                                  v294 = *&v1791[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                                  v295 = sub_AB3770().super.isa;
                                  v296 = [v294 itemAtIndexPath:v295];

                                  type metadata accessor for JSPosterItem(0);
                                  v297 = swift_dynamicCastClass();
                                  if (v297)
                                  {
                                    v298 = v297;
                                    v100 = sub_3B336C(a2, type metadata accessor for PosterCell);
                                    v299 = (*&stru_4C8.sectname[swift_isaMask & *v298])();
                                    if ((v299 == 2) | v299 & 1)
                                    {
                                      v300 = 2;
                                    }

                                    else
                                    {
                                      v300 = 0;
                                    }

                                    LODWORD(v1799) = v300;
                                    v301 = [v1790 titleText];
                                    if (v301)
                                    {
                                      v302 = v301;
                                      v303 = sub_AB92A0();
                                      v305 = v304;
                                    }

                                    else
                                    {
                                      v303 = 0;
                                      v305 = 0xE000000000000000;
                                    }

                                    sub_37AC4(v303, v305);
                                    v864 = [v1790 subtitleText];
                                    v1787 = v44;
                                    if (v864)
                                    {
                                      v865 = v864;
                                      v866 = sub_AB92A0();
                                      v868 = v867;
                                    }

                                    else
                                    {
                                      v866 = 0;
                                      v868 = 0xE000000000000000;
                                    }

                                    sub_37B14(v866, v868);
                                    v869 = [v1790 descriptionText];
                                    if (v869)
                                    {
                                      v870 = v869;
                                      v871 = sub_AB92A0();
                                      v873 = v872;
                                    }

                                    else
                                    {
                                      v871 = 0;
                                      v873 = 0xE000000000000000;
                                    }

                                    sub_37CA8(v871, v873);
                                    v874 = *(&stru_1F8.size + (swift_isaMask & *v298));
                                    v875 = swift_unknownObjectRetain();
                                    v876 = v874(v875);
                                    v878 = v877;
                                    swift_unknownObjectRelease();
                                    if (v878)
                                    {
                                      v879 = v876;
                                    }

                                    else
                                    {
                                      v879 = 0;
                                    }

                                    if (v878)
                                    {
                                      v880 = v878;
                                    }

                                    else
                                    {
                                      v880 = 0xE000000000000000;
                                    }

                                    sub_38508(v879, v880);
                                    v881 = sub_39AC8(v1799);
                                    v882 = (*(&stru_478.reloff + (swift_isaMask & *v298)))(v881);
                                    v883 = sub_3863C(v882);
                                    v884 = (*&stru_4C8.segname[(swift_isaMask & *v298) + 8])(v883);
                                    sub_38720(v884);
                                    v885 = (*(&stru_4C8.offset + (swift_isaMask & *v298)))();
                                    v886 = sub_38A9C(v885);
                                    v887 = *(&stru_4C8.reserved2 + (swift_isaMask & *v298));
                                    v888 = v887(v886);
                                    if (v888)
                                    {
                                      v889 = v888;
                                      v890 = (*&stru_298.sectname[swift_isaMask & *v888])();
                                      v892 = v891;
                                    }

                                    else
                                    {
                                      v890 = 0;
                                      v892 = 0;
                                    }

                                    v893 = sub_38F48(v890, v892);
                                    v894 = v887(v893);
                                    if (v894)
                                    {
                                      v895 = v894;
                                      v896 = (*&stru_298.segname[(swift_isaMask & *v894) + 8])();

                                      v897 = v896 & 1;
                                    }

                                    else
                                    {
                                      v897 = 2;
                                    }

                                    v898 = v1787;
                                    v899 = v1790;
                                    sub_38F98(v897);
                                    v900 = (*&stru_518.segname[swift_isaMask & *v298])();
                                    sub_39C54(v900 & 1);
                                    v901 = [v899 overlayTitleText];
                                    if (v901)
                                    {
                                      v902 = v901;
                                      v903 = sub_AB92A0();
                                      v905 = v904;
                                    }

                                    else
                                    {
                                      v903 = 0;
                                      v905 = 0xE000000000000000;
                                    }

                                    sub_37EC8(v903, v905);
                                    v906 = [v899 overlaySubtitleText];
                                    if (v906)
                                    {
                                      v907 = v906;
                                      v908 = sub_AB92A0();
                                      v910 = v909;
                                    }

                                    else
                                    {
                                      v908 = 0;
                                      v910 = 0xE000000000000000;
                                    }

                                    sub_3838C(v908, v910);
                                    v1811 = 0;
                                    v1809 = 0u;
                                    v1810 = 0u;
                                    sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                                    swift_unknownObjectRelease();
                                    sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                                    v219 = v898;
                                    goto LABEL_394;
                                  }

                                  swift_unknownObjectRelease();
                                }
                              }

                              v100 = sub_3B336C(a2, type metadata accessor for PersonVerticalCell);
                              sub_361EF0(0, 0, 0, 0);
                              sub_1FDD00(1);
                              v617 = [v44 name];
                              if (v617)
                              {
                                v618 = v617;
                                v619 = sub_AB92A0();
                                v621 = v620;
                              }

                              else
                              {
                                v619 = 0;
                                v621 = 0xE000000000000000;
                              }

                              sub_1FD7A8(v619, v621);
                              sub_1FDACC(0, 0xE000000000000000);
                              VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                              *(&v1810 + 1) = sub_13C80(0, &qword_DE8E78, MPModelArtist_ptr);
                              v1811 = &off_D17A70;
                              *&v1809 = v44;
                              sub_37C074(v44, 1);
                              sub_3B8C40(&v1809, &off_CEFDE8, sub_1783F8);

                              sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                              goto LABEL_393;
                            }

LABEL_146:
                            v227 = v47;

                            v228 = sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
                            v100 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v228, a2, 0xD000000000000022, 0x8000000000B62800, v228);

                            v219 = v44;
                            v220 = v227;
LABEL_945:
                            sub_3EB30(v219, v220);
                            swift_unknownObjectRelease();

                            goto LABEL_61;
                          }

                          v1797 = sub_3CAC50(v44);
                          v1799 = v166;
                          v167 = [v1790 subtitleText];
                          v1786 = v48;
                          if (v167)
                          {
                            v168 = v167;
                            v1784 = sub_AB92A0();
                            v1785 = v169;

LABEL_308:
                            v491 = v1806;
                            if (v1806)
                            {
                              a2 = &selRef_isMovingFromParentViewController;
                              if ([v1806 uniformCellType] == &dword_0 + 1)
                              {
                                a2 = v1808;
                                v19 = sub_3B336C(v1808, type metadata accessor for AlbumCell);
                                v492 = sub_AB37F0();
                                v13 = sub_3D60D4(v492);
                                if ((v13 & 1) == 0)
                                {
                                  v494 = 0;
                                  v495 = v1786;
LABEL_318:
                                  AlbumCell.rank.setter(v494, (v13 & 1) == 0);
                                  AlbumCell.title.setter(v1797, v1799);
                                  AlbumCell.artistName.setter(v1784, v1785);
                                  *(&v1810 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
                                  v1811 = &off_D17A20;
                                  *&v1809 = v44;
                                  sub_37C074(v44, 0);
                                  sub_3B8C40(&v1809, &off_CEFDE8, sub_1783C8);
                                  sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                                  AlbumCell.layoutStyle.setter(0);
LABEL_851:
                                  v100 = v19;
                                  VerticalLockupCollectionViewCell.isDisabled.setter(v495 & 1);

                                  goto LABEL_852;
                                }

                                v493 = sub_AB37B0();
                                v56 = __OFADD__(v493, 1);
                                v494 = v493 + 1;
                                v495 = v1786;
                                if (!v56)
                                {
                                  goto LABEL_318;
                                }

                                __break(1u);
                              }

                              if ([v491 a2[196]] == &dword_4 + 3)
                              {
                                a2 = v1808;
                                v100 = sub_3B336C(v1808, type metadata accessor for CustomRoomAlbumCell);
                                v496 = v1790;
                                v497 = sub_3DE9C0(v491, v1790);
                                sub_4C5CB8(v497);
                                sub_4C5DC0(0);
                                *(&v1810 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
                                v1811 = &off_D17A20;
                                *&v1809 = v44;
                                v498 = v44;
                                sub_3B8C40(&v1809, &off_CEFDE8, sub_1785E8);
                                sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                                v499 = [v496 headlineText];
                                if (v499)
                                {
                                  v500 = v499;
                                  v501 = sub_AB92A0();
                                  v503 = v502;
                                }

                                else
                                {
                                  v501 = 0;
                                  v503 = 0xE000000000000000;
                                }

                                v610 = v1786;
                                sub_4C53F0(v501, v503);
                                sub_4C5610(v1797, v1799);
                                v611 = sub_4C5820(v1784, v1785);
                                v612 = [v1790 descriptionText];
                                if (v612)
                                {
                                  v613 = v612;
                                  v614 = sub_AB92A0();
                                  v616 = v615;
                                }

                                else
                                {
                                  v614 = 0;
                                  v616 = 0xE000000000000000;
                                }

                                sub_4C5ACC(v614, v616);
                                sub_4C5EA0(v610 & 1);
                                goto LABEL_852;
                              }

                              if ([v491 a2[196]] == &dword_4 + 1)
                              {
                                a2 = v1808;
                                v504 = sub_3B336C(v1808, type metadata accessor for FeaturedShowcaseCell);
                                v505 = [v1790 headlineText];
                                if (v505)
                                {
                                  v506 = v505;
                                  v507 = sub_AB92A0();
                                  v509 = v508;
                                }

                                else
                                {
                                  v507 = 0;
                                  v509 = 0xE000000000000000;
                                }

                                v958 = v1786;
                                sub_1E0214(v507, v509);
                                sub_1E046C(v1797, v1799);
                                v959 = sub_1E06CC(v1784, v1785);
                                v960 = [v1790 descriptionText];
                                if (v960)
                                {
                                  v961 = v960;
                                  v962 = sub_AB92A0();
                                  v964 = v963;
                                }

                                else
                                {
                                  v962 = 0;
                                  v964 = 0xE000000000000000;
                                }

                                sub_1E09C0(v962, v964);
                                v100 = v504;
                                VerticalLockupCollectionViewCell.isDisabled.setter(v958 & 1);

                                *(&v1810 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
                                v1811 = &off_D17A20;
                                *&v1809 = v44;
                                sub_37C074(v44, 0);
                                sub_3B8C40(&v1809, &off_CEFDE8, sub_1785DC);

                                sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                                goto LABEL_853;
                              }

                              if ([v491 a2[196]] == &dword_4 + 2)
                              {

                                v558 = sub_3B336C(v1808, type metadata accessor for FeaturedPlaylistCell);
                                v559 = sub_F5FC4(v1797, v1799);
                                v560 = [v1790 descriptionText];
                                if (v560)
                                {
                                  v561 = v560;
                                  v562 = sub_AB92A0();
                                  v564 = v563;
                                }

                                else
                                {
                                  v562 = 0;
                                  v564 = 0xE000000000000000;
                                }

                                sub_F6268(v562, v564);
                                v100 = v558;
                                VerticalLockupCollectionViewCell.isDisabled.setter(v1786 & 1);

                                *(&v1810 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
                                v1811 = &off_D17A20;
                                *&v1809 = v44;
                                sub_37C074(v44, 0);
                                sub_3B8C40(&v1809, &off_CEFDE8, sub_1785D0);

                                sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                                v1065 = v44;
                                goto LABEL_1160;
                              }

                              v1787 = v44;
                              if ([v1806 a2[196]] == &dword_8 + 2)
                              {
                                v762 = *&v1791[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                                v763 = sub_AB3770().super.isa;
                                v764 = [v762 itemAtIndexPath:v763];

                                type metadata accessor for JSPosterItem(0);
                                v1791 = v764;
                                v765 = swift_dynamicCastClass();
                                if (v765)
                                {
                                  v766 = v765;

                                  v100 = sub_3B336C(v1808, type metadata accessor for PosterCell);
                                  v767 = (*&stru_4C8.sectname[swift_isaMask & *v766])();
                                  if ((v767 == 2) | v767 & 1)
                                  {
                                    v768 = 2;
                                  }

                                  else
                                  {
                                    v768 = 0;
                                  }

                                  v769 = [v1790 titleText];
                                  if (v769)
                                  {
                                    v770 = v769;
                                    v771 = sub_AB92A0();
                                    v773 = v772;
                                  }

                                  else
                                  {
                                    v771 = 0;
                                    v773 = 0xE000000000000000;
                                  }

                                  sub_37AC4(v771, v773);
                                  v1488 = [v1790 subtitleText];
                                  if (v1488)
                                  {
                                    v1489 = v1488;
                                    v1490 = sub_AB92A0();
                                    v1492 = v1491;
                                  }

                                  else
                                  {
                                    v1490 = 0;
                                    v1492 = 0xE000000000000000;
                                  }

                                  sub_37B14(v1490, v1492);
                                  v1493 = [v1790 descriptionText];
                                  if (v1493)
                                  {
                                    v1494 = v1493;
                                    v1495 = sub_AB92A0();
                                    v1497 = v1496;
                                  }

                                  else
                                  {
                                    v1495 = 0;
                                    v1497 = 0xE000000000000000;
                                  }

                                  sub_37CA8(v1495, v1497);
                                  v1498 = *(&stru_1F8.size + (swift_isaMask & *v766));
                                  v1499 = swift_unknownObjectRetain();
                                  v1500 = v1498(v1499);
                                  v1502 = v1501;
                                  swift_unknownObjectRelease();
                                  if (v1502)
                                  {
                                    v1503 = v1500;
                                  }

                                  else
                                  {
                                    v1503 = 0;
                                  }

                                  if (v1502)
                                  {
                                    v1504 = v1502;
                                  }

                                  else
                                  {
                                    v1504 = 0xE000000000000000;
                                  }

                                  sub_38508(v1503, v1504);
                                  v1505 = sub_39AC8(v768);
                                  v1506 = (*(&stru_478.reloff + (swift_isaMask & *v766)))(v1505);
                                  v1507 = sub_3863C(v1506);
                                  v1508 = (*&stru_4C8.segname[(swift_isaMask & *v766) + 8])(v1507);
                                  sub_38720(v1508);
                                  v1509 = (*(&stru_4C8.offset + (swift_isaMask & *v766)))();
                                  v1510 = sub_38A9C(v1509);
                                  v1511 = *(&stru_4C8.reserved2 + (swift_isaMask & *v766));
                                  v1512 = v1511(v1510);
                                  if (v1512)
                                  {
                                    v1513 = v1512;
                                    v1514 = (*&stru_298.sectname[swift_isaMask & *v1512])();
                                    v1516 = v1515;
                                  }

                                  else
                                  {
                                    v1514 = 0;
                                    v1516 = 0;
                                  }

                                  v1517 = sub_38F48(v1514, v1516);
                                  v1518 = v1511(v1517);
                                  if (v1518)
                                  {
                                    v1519 = v1518;
                                    v1520 = (*&stru_298.segname[(swift_isaMask & *v1518) + 8])();

                                    v1521 = v1520 & 1;
                                  }

                                  else
                                  {
                                    v1521 = 2;
                                  }

                                  sub_38F98(v1521);
                                  v1522 = (*&stru_518.segname[swift_isaMask & *v766])();
                                  sub_39C54(v1522 & 1);
                                  v1523 = [v1790 overlayTitleText];
                                  if (v1523)
                                  {
                                    v1524 = v1523;
                                    v1525 = sub_AB92A0();
                                    v1527 = v1526;
                                  }

                                  else
                                  {
                                    v1525 = 0;
                                    v1527 = 0xE000000000000000;
                                  }

                                  sub_37EC8(v1525, v1527);
                                  v1528 = [v1790 overlaySubtitleText];
                                  if (v1528)
                                  {
                                    v1529 = v1528;
                                    v1530 = sub_AB92A0();
                                    v1532 = v1531;
                                  }

                                  else
                                  {
                                    v1530 = 0;
                                    v1532 = 0xE000000000000000;
                                  }

                                  sub_3838C(v1530, v1532);
                                  *(&v1810 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
                                  v1811 = &off_D17A20;
                                  v1486 = v1787;
                                  *&v1809 = v1787;
                                  sub_37C074(v1787, 0);
                                  sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                                  swift_unknownObjectRelease();
                                  sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                                  goto LABEL_1159;
                                }

                                swift_unknownObjectRelease();
                              }

                              if ([v1806 a2[196]] == &dword_0 + 3)
                              {
                                v1294 = sub_3B336C(v1808, type metadata accessor for FeaturedRadioShowCell);
                                v1295 = [v1790 headlineText];
                                if (v1295)
                                {
                                  v1296 = v1295;
                                  v1297 = sub_AB92A0();
                                  v1299 = v1298;
                                }

                                else
                                {
                                  v1297 = 0;
                                  v1299 = 0xE000000000000000;
                                }

                                v1481 = sub_233E78(v1297, v1299);
                                v1482 = [v1790 titleText];
                                if (v1482)
                                {
                                  v1483 = v1482;
                                  v1797 = sub_AB92A0();
                                  v1485 = v1484;

                                  v1799 = v1485;
                                }

                                sub_234088(v1797, v1799);
                                sub_234334(v1784, v1785);
                                *(&v1810 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
                                v1811 = &off_D17A20;
                                v1486 = v1787;
                                *&v1809 = v1787;
                                sub_37C074(v1787, 0);
                                sub_3B8C40(&v1809, &off_CEF8C8, sub_178410);
                                sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                                v1487 = v1294;
LABEL_1158:
                                v100 = v1487;
                                sub_200878(0);
                                sub_20085C(1);
                                sub_200620(v1786 & 1, v1771);
                                sub_200598([v1486 isFavorite]);

LABEL_1159:
                                v1065 = v1486;
LABEL_1160:
                                v1066 = 0;
                                goto LABEL_664;
                              }

                              v1300 = [v1806 a2[196]];
                              a2 = v1808;
                              v44 = v1787;
                              if (v1300 == &dword_8 + 3)
                              {
                                v1301 = sub_3B336C(v1808, type metadata accessor for RadioStationCell);
                                sub_B3A4C(1);
                                v1302 = [v44 releaseDateComponents];
                                if (v1302)
                                {
                                  v1303 = v1302;
                                  sub_AB2D70();

                                  v1798[7](v15, 0, 1, v11);
                                }

                                else
                                {
                                  v1798[7](v15, 1, 1, v11);
                                }

                                sub_36B0C(v15, v17, &qword_DF43E0, &unk_B03B20);
                                if ((v1798[6])(v17, 1, v11))
                                {
                                  sub_12E1C(v17, &qword_DF43E0, &unk_B03B20);
                                  (*(v1795 + 7))(v19, 1, 1, v1796);
                                }

                                else
                                {
                                  v1766 = v1798;
                                  (v1798[2])(v13, v17, v11);
                                  sub_12E1C(v17, &qword_DF43E0, &unk_B03B20);
                                  sub_AB2D90();
                                  (*(v1766 + 8))(v13, v11);
                                  if ((*(v1795 + 6))(v19, 1, v1796) != 1)
                                  {
                                    v1772 = v1795;
                                    v1773 = v1794;
                                    v1774 = v1796;
                                    (*(v1795 + 4))(v1794, v19, v1796);
                                    v1775 = *sub_45A430();
                                    v1776 = sub_AB3370().super.isa;
                                    v1777 = [v1775 stringFromDate:v1776];

                                    *&v1809 = sub_AB92A0();
                                    *(&v1809 + 1) = v1778;
                                    sub_36A48();
                                    v1779 = sub_ABAA90();
                                    v1781 = v1780;

                                    v1782 = sub_B3044(v1779, v1781);
                                    (*(v1772 + 1))(v1773, v1774, v1782);

                                    goto LABEL_1155;
                                  }
                                }

                                sub_12E1C(v19, &unk_E01230, "|,\r");
LABEL_1155:
                                v1767 = [v1790 titleText];
                                if (v1767)
                                {
                                  v1768 = v1767;
                                  v1797 = sub_AB92A0();
                                  v1770 = v1769;

                                  v1799 = v1770;
                                }

                                sub_B32CC(v1797, v1799);
                                sub_B35F8(v1784, v1785);
                                *(&v1810 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
                                v1811 = &off_D17A20;
                                v1486 = v1787;
                                *&v1809 = v1787;
                                sub_37C074(v1787, 0);
                                sub_3B8C40(&v1809, &off_CEF8C8, sub_178404);
                                sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                                v1487 = v1301;
                                goto LABEL_1158;
                              }
                            }

                            v1304 = sub_AB37F0();
                            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03798, &qword_B0CE90);
                            v1305 = swift_allocObject();
                            *(v1305 + 16) = xmmword_AF4EC0;
                            *(v1305 + 32) = 7;
                            LOBYTE(v1304) = sub_3D64F0(v1304, v1305);

                            if (v1304)
                            {
                              v1306 = sub_3B336C(a2, type metadata accessor for SongCell);
                              sub_142740(v1797, v1799);
                              sub_142958(v1784, v1785);
                              *(&v1810 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
                              v1811 = &off_D17A20;
                              *&v1809 = v44;
                              sub_37C074(v44, 0);
                              sub_3B8C40(&v1809, &off_CEFDE8, sub_178218);
                              sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                              v100 = v1306;
                              sub_200878(1);
                              sub_20085C(1);

                              sub_143BBC(v1786 & 1, v1307);
                              sub_143184([v44 isFavorite]);
LABEL_852:

LABEL_853:
                              v219 = v44;
                              v220 = 0;
                              goto LABEL_945;
                            }

                            v19 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                            if (sub_3CDB98(v19))
                            {
                              v1308 = 2;
                            }

                            else
                            {
                              v1308 = 0;
                            }

                            AlbumCell.layoutStyle.setter(v1308);
                            v1309 = sub_AB37F0();
                            v1310 = sub_3D60D4(v1309);
                            v495 = v1786;
                            if (v1310)
                            {
                              v1311 = sub_AB37B0();
                              v56 = __OFADD__(v1311, 1);
                              v1312 = v1311 + 1;
                              if (!v56)
                              {
                                goto LABEL_850;
                              }

                              __break(1u);
                            }

                            v1312 = 0;
LABEL_850:
                            AlbumCell.rank.setter(v1312, (v1310 & 1) == 0);
                            AlbumCell.title.setter(v1797, v1799);
                            AlbumCell.artistName.setter(v1784, v1785);
                            *(&v1810 + 1) = sub_13C80(0, &qword_DE8E90, MPModelAlbum_ptr);
                            v1811 = &off_D17A20;
                            *&v1809 = v44;
                            sub_37C074(v44, 0);
                            sub_3B8C40(&v1809, &off_CEFDE8, sub_1783C8);
                            sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                            goto LABEL_851;
                          }

                          v279 = [v44 artist];
                          if (v279)
                          {
                            v280 = v279;
                            v281 = [v279 name];
                            if (v281)
                            {
                              v282 = v281;
                              v1784 = sub_AB92A0();
                              v1785 = v283;

                              goto LABEL_308;
                            }
                          }

                          v1784 = 0;
                          v1785 = 0xE000000000000000;
                          goto LABEL_308;
                        }

                        if ([v137 uniformCellType] == &dword_4 + 3)
                        {
                          v100 = sub_3B336C(a2, type metadata accessor for CustomRoomMusicVideoCell);
                          v328 = [v1790 headlineText];
                          if (v328)
                          {
                            v329 = v328;
                            v330 = sub_AB92A0();
                            v332 = v331;
                          }

                          else
                          {
                            v330 = 0;
                            v332 = 0xE000000000000000;
                          }

                          v698 = sub_14D848(v330, v332);
                          v699 = [v1790 titleText];
                          if (v699 || (v699 = [v44 title]) != 0)
                          {
                            v700 = v699;
                            v701 = sub_AB92A0();
                            v703 = v702;
                          }

                          else
                          {
                            v701 = 0;
                            v703 = 0xE000000000000000;
                          }

                          v704 = sub_14DAA0(v701, v703);
                          v705 = [v1790 subtitleText];
                          if (v705)
                          {
                            v706 = v705;
                            v707 = sub_AB92A0();
                            v709 = v708;
                          }

                          else
                          {
                            v707 = 0;
                            v709 = 0xE000000000000000;
                          }

                          v715 = sub_14DD00(v707, v709);
                          v716 = [v1790 descriptionText];
                          if (v716)
                          {
                            v717 = v716;
                            v718 = sub_AB92A0();
                            v720 = v719;
                          }

                          else
                          {
                            v718 = 0;
                            v720 = 0xE000000000000000;
                          }

                          sub_14DFF4(v718, v720);
                          sub_14E270(v48 & 1);
                          goto LABEL_460;
                        }

                        if ([v137 uniformCellType] == &dword_4)
                        {
                          v430 = sub_3B336C(a2, type metadata accessor for FeaturedMusicVideoVerticalCell);
                          v431 = sub_AB37F0();
                          if (sub_3D60D4(v431))
                          {
                            v432 = [v44 title];
                            if (v432)
                            {
                              v433 = v432;
                              v434 = sub_AB92A0();
                              v436 = v435;
                            }

                            else
                            {
                              v434 = 0;
                              v436 = 0;
                            }

                            a2 = v1808;
                            v1209 = sub_3D67E4(v434, v436);
                            v1211 = v1210;

                            sub_171DC0(v1209, v1211);
                          }

                          else
                          {
                            v818 = [v1790 titleText];
                            if (v818 || (v818 = [v44 title]) != 0)
                            {
                              v819 = v818;
                              v820 = sub_AB92A0();
                              v822 = v821;
                            }

                            else
                            {
                              v820 = 0;
                              v822 = 0xE000000000000000;
                            }

                            sub_171DC0(v820, v822);
                            a2 = v1808;
                          }

                          sub_172064(0, 0xE000000000000000);
                          v100 = v430;
                          VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                          v1811 = 0;
                          v1809 = 0u;
                          v1810 = 0u;
                          v1212 = sub_1783BC;
                          goto LABEL_933;
                        }

                        if ([v137 uniformCellType] == &dword_4 + 1)
                        {
                          v594 = sub_3B336C(a2, type metadata accessor for FeaturedShowcaseCell);
                          v595 = [v1790 headlineText];
                          if (v595)
                          {
                            v596 = v595;
                            v597 = sub_AB92A0();
                            v599 = v598;
                          }

                          else
                          {
                            v597 = 0;
                            v599 = 0xE000000000000000;
                          }

                          v1225 = sub_1E0214(v597, v599);
                          v1226 = [v1790 titleText];
                          if (v1226 || (v1226 = [v44 title]) != 0)
                          {
                            v1227 = v1226;
                            v1228 = sub_AB92A0();
                            v1230 = v1229;
                          }

                          else
                          {
                            v1228 = 0;
                            v1230 = 0xE000000000000000;
                          }

                          v1231 = sub_1E046C(v1228, v1230);
                          v1232 = [v1790 subtitleText];
                          if (v1232)
                          {
                            v1233 = v1232;
                            v1234 = sub_AB92A0();
                            v1236 = v1235;
                          }

                          else
                          {
                            v1234 = 0;
                            v1236 = 0xE000000000000000;
                          }

                          v1242 = sub_1E06CC(v1234, v1236);
                          v1243 = [v1790 descriptionText];
                          if (v1243)
                          {
                            v1244 = v1243;
                            v1245 = sub_AB92A0();
                            v1247 = v1246;
                          }

                          else
                          {
                            v1245 = 0;
                            v1247 = 0xE000000000000000;
                          }

                          sub_1E09C0(v1245, v1247);
                          v100 = v594;
                          VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                          v1065 = v44;
                          v1066 = 13;
                          goto LABEL_664;
                        }

                        if ([v1806 uniformCellType] == &dword_8 + 2)
                        {
                          v1787 = v44;
                          v835 = *&v1791[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                          v836 = sub_AB3770().super.isa;
                          v837 = [v835 itemAtIndexPath:v836];

                          type metadata accessor for JSPosterItem(0);
                          v838 = swift_dynamicCastClass();
                          if (v838)
                          {
                            v839 = v838;
                            v100 = sub_3B336C(v1808, type metadata accessor for PosterCell);
                            v840 = (*&stru_4C8.sectname[swift_isaMask & *v839])();
                            if ((v840 == 2) | v840 & 1)
                            {
                              v841 = 2;
                            }

                            else
                            {
                              v841 = 0;
                            }

                            v842 = [v1790 titleText];
                            if (v842)
                            {
                              v843 = v842;
                              v844 = sub_AB92A0();
                              v846 = v845;
                            }

                            else
                            {
                              v844 = 0;
                              v846 = 0xE000000000000000;
                            }

                            sub_37AC4(v844, v846);
                            v1629 = [v1790 subtitleText];
                            if (v1629)
                            {
                              v1630 = v1629;
                              v1631 = sub_AB92A0();
                              v1633 = v1632;
                            }

                            else
                            {
                              v1631 = 0;
                              v1633 = 0xE000000000000000;
                            }

                            sub_37B14(v1631, v1633);
                            v1639 = [v1790 descriptionText];
                            if (v1639)
                            {
                              v1640 = v1639;
                              v1641 = sub_AB92A0();
                              v1643 = v1642;
                            }

                            else
                            {
                              v1641 = 0;
                              v1643 = 0xE000000000000000;
                            }

                            sub_37CA8(v1641, v1643);
                            v1663 = *(&stru_1F8.size + (swift_isaMask & *v839));
                            v1664 = swift_unknownObjectRetain();
                            v1665 = v1663(v1664);
                            v1667 = v1666;
                            swift_unknownObjectRelease();
                            if (v1667)
                            {
                              v1668 = v1665;
                            }

                            else
                            {
                              v1668 = 0;
                            }

                            if (v1667)
                            {
                              v1669 = v1667;
                            }

                            else
                            {
                              v1669 = 0xE000000000000000;
                            }

                            sub_38508(v1668, v1669);
                            v1670 = sub_39AC8(v841);
                            v1671 = (*(&stru_478.reloff + (swift_isaMask & *v839)))(v1670);
                            v1672 = sub_3863C(v1671);
                            v1673 = (*&stru_4C8.segname[(swift_isaMask & *v839) + 8])(v1672);
                            sub_38720(v1673);
                            v1674 = (*(&stru_4C8.offset + (swift_isaMask & *v839)))();
                            v1675 = sub_38A9C(v1674);
                            v1676 = *(&stru_4C8.reserved2 + (swift_isaMask & *v839));
                            v1677 = v1676(v1675);
                            if (v1677)
                            {
                              v1678 = v1677;
                              v1679 = (*&stru_298.sectname[swift_isaMask & *v1677])();
                              v1681 = v1680;
                            }

                            else
                            {
                              v1679 = 0;
                              v1681 = 0;
                            }

                            v1687 = sub_38F48(v1679, v1681);
                            v1688 = v1676(v1687);
                            if (v1688)
                            {
                              v1689 = v1688;
                              v1690 = (*&stru_298.segname[(swift_isaMask & *v1688) + 8])();

                              v1691 = v1690 & 1;
                            }

                            else
                            {
                              v1691 = 2;
                            }

                            sub_38F98(v1691);
                            v1698 = (*&stru_518.segname[swift_isaMask & *v839])();
                            sub_39C54(v1698 & 1);
                            v1699 = [v1790 overlayTitleText];
                            if (v1699)
                            {
                              v1700 = v1699;
                              v1701 = sub_AB92A0();
                              v1703 = v1702;
                            }

                            else
                            {
                              v1701 = 0;
                              v1703 = 0xE000000000000000;
                            }

                            sub_37EC8(v1701, v1703);
                            v1709 = [v1790 overlaySubtitleText];
                            if (v1709)
                            {
                              v1710 = v1709;
                              v1711 = sub_AB92A0();
                              v1713 = v1712;
                            }

                            else
                            {
                              v1711 = 0;
                              v1713 = 0xE000000000000000;
                            }

                            sub_3838C(v1711, v1713);
                            v1811 = 0;
                            v1809 = 0u;
                            v1810 = 0u;
                            sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                            swift_unknownObjectRelease();
                            sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                            v1065 = v1787;
                            v1066 = 13;
                            goto LABEL_664;
                          }

                          swift_unknownObjectRelease();
                          a2 = v1808;
                          v44 = v1787;
                        }
                      }

                      v1397 = sub_3B336C(a2, type metadata accessor for MusicVideoVerticalCell);
                      v1398 = [v1790 headlineText];
                      if (v1398)
                      {
                        v1399 = v1398;
                        v1400 = sub_AB92A0();
                        v1402 = v1401;
                      }

                      else
                      {
                        v1400 = 0;
                        v1402 = 0xE000000000000000;
                      }

                      sub_2B60B8(v1400, v1402);
                      v1403 = sub_AB37F0();
                      v1404 = sub_3D60D4(v1403);
                      v1405 = [v44 title];
                      if (v1404)
                      {
                        if (v1405)
                        {
                          v1406 = v1405;
                          v1407 = sub_AB92A0();
                          v1409 = v1408;
                        }

                        else
                        {
                          v1407 = 0;
                          v1409 = 0;
                        }

                        v1414 = sub_3D67E4(v1407, v1409);
                        v1416 = v1415;

                        v1417 = v1414;
                        v1418 = v1416;
                      }

                      else
                      {
                        if (v1405)
                        {
                          v1410 = v1405;
                          v1411 = sub_AB92A0();
                          v1413 = v1412;
                        }

                        else
                        {
                          v1411 = 0;
                          v1413 = 0xE000000000000000;
                        }

                        v1417 = v1411;
                        v1418 = v1413;
                      }

                      v1419 = sub_2B62C8(v1417, v1418);
                      v1420 = [v1790 subtitleText];
                      if (v1420)
                      {
                        v1421 = v1420;
                        v1422 = sub_AB92A0();
                        v1424 = v1423;
                      }

                      else
                      {
                        v1422 = 0;
                        v1424 = 0xE000000000000000;
                      }

                      sub_2B6574(v1422, v1424);
                      v100 = v1397;
                      VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                      v1811 = 0;
                      v1809 = 0u;
                      v1810 = 0u;
                      v1212 = sub_1783E0;
LABEL_933:
                      sub_3B8C40(&v1809, &off_CEFDE8, v1212);

                      sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                      goto LABEL_934;
                    }

                    v191 = v1806;
                    if (v1806)
                    {
                      if ([v1806 uniformCellType] == &dword_0 + 1)
                      {
                        v192 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                        v193 = sub_AB37F0();
                        v194 = sub_3D60D4(v193);
                        if ((v194 & 1) == 0)
                        {
                          v196 = 0;
                          goto LABEL_237;
                        }

                        v50 = a2;
                        v195 = sub_AB37B0();
                        v56 = __OFADD__(v195, 1);
                        v196 = v195 + 1;
                        if (!v56)
                        {
LABEL_237:
                          AlbumCell.rank.setter(v196, (v194 & 1) == 0);
                          v392 = [v1790 titleText];
                          if (v392 || (v392 = [v44 title]) != 0)
                          {
                            v393 = v392;
                            v394 = sub_AB92A0();
                            v396 = v395;
                          }

                          else
                          {
                            v394 = 0;
                            v396 = 0xE000000000000000;
                          }

                          v397 = AlbumCell.title.setter(v394, v396);
                          v398 = [v1790 subtitleText];
                          if (v398)
                          {
                            v399 = v398;
                            v400 = sub_AB92A0();
                            v402 = v401;
                          }

                          else
                          {
                            v400 = 0;
                            v402 = 0xE000000000000000;
                          }

                          AlbumCell.artistName.setter(v400, v402);
                          *(&v1810 + 1) = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
                          v1811 = &off_D17B10;
                          *&v1809 = v44;
                          sub_37C074(v44, 12);
                          sub_3B8C40(&v1809, &off_CEFDE8, sub_1783C8);
                          sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                          AlbumCell.layoutStyle.setter(0);
                          v100 = v192;
                          VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                          goto LABEL_412;
                        }

                        __break(1u);
LABEL_130:

                        v197 = v1806;
                        if (v1806)
                        {
                          if ([v1806 uniformCellType] == &dword_0 + 3)
                          {
                            v198 = sub_3B336C(a2, type metadata accessor for FeaturedRadioShowCell);
                            v199 = [v1790 headlineText];
                            if (v199)
                            {
                              v200 = v199;
                              v201 = sub_AB92A0();
                              v203 = v202;
                            }

                            else
                            {
                              v201 = 0;
                              v203 = 0xE000000000000000;
                            }

                            v467 = sub_233E78(v201, v203);
                            v468 = [v1790 titleText];
                            if (v468 || (v468 = [v44 name]) != 0)
                            {
                              v469 = v468;
                              v470 = sub_AB92A0();
                              v472 = v471;
                            }

                            else
                            {
                              v470 = 0;
                              v472 = 0xE000000000000000;
                            }

                            v473 = sub_234088(v470, v472);
                            v474 = [v1790 subtitleText];
                            if (v474 || (v474 = [v44 shortEditorNotes]) != 0 || (v474 = objc_msgSend(v44, "editorNotes")) != 0)
                            {
                              v475 = v474;
                              v476 = sub_AB92A0();
                              v478 = v477;
                            }

                            else
                            {
                              v476 = 0;
                              v478 = 0xE000000000000000;
                            }

                            sub_234334(v476, v478);
                            v100 = v198;
                            sub_200878(0);
                            sub_20085C(1);
                            sub_200620(v48 & 1, v479);
                            goto LABEL_488;
                          }

                          if ([v197 uniformCellType] == &dword_8 + 2)
                          {
                            v311 = *&v1791[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                            v312 = sub_AB3770().super.isa;
                            v313 = [v311 itemAtIndexPath:v312];

                            type metadata accessor for JSPosterItem(0);
                            v314 = swift_dynamicCastClass();
                            if (v314)
                            {
                              v315 = v314;
                              v100 = sub_3B336C(a2, type metadata accessor for PosterCell);
                              v316 = (*&stru_4C8.sectname[swift_isaMask & *v315])();
                              if ((v316 == 2) | v316 & 1)
                              {
                                v317 = 2;
                              }

                              else
                              {
                                v317 = 0;
                              }

                              LODWORD(v1799) = v317;
                              v318 = [v1790 titleText];
                              if (v318)
                              {
                                v319 = v318;
                                v320 = sub_AB92A0();
                                v322 = v321;
                              }

                              else
                              {
                                v320 = 0;
                                v322 = 0xE000000000000000;
                              }

                              sub_37AC4(v320, v322);
                              v911 = [v1790 subtitleText];
                              v1787 = v44;
                              if (v911)
                              {
                                v912 = v911;
                                v913 = sub_AB92A0();
                                v915 = v914;
                              }

                              else
                              {
                                v913 = 0;
                                v915 = 0xE000000000000000;
                              }

                              sub_37B14(v913, v915);
                              v916 = [v1790 descriptionText];
                              if (v916)
                              {
                                v917 = v916;
                                v918 = sub_AB92A0();
                                v920 = v919;
                              }

                              else
                              {
                                v918 = 0;
                                v920 = 0xE000000000000000;
                              }

                              sub_37CA8(v918, v920);
                              v921 = *(&stru_1F8.size + (swift_isaMask & *v315));
                              v922 = swift_unknownObjectRetain();
                              v923 = v921(v922);
                              v925 = v924;
                              swift_unknownObjectRelease();
                              if (v925)
                              {
                                v926 = v923;
                              }

                              else
                              {
                                v926 = 0;
                              }

                              if (v925)
                              {
                                v927 = v925;
                              }

                              else
                              {
                                v927 = 0xE000000000000000;
                              }

                              sub_38508(v926, v927);
                              v928 = sub_39AC8(v1799);
                              v929 = (*(&stru_478.reloff + (swift_isaMask & *v315)))(v928);
                              v930 = sub_3863C(v929);
                              v931 = (*&stru_4C8.segname[(swift_isaMask & *v315) + 8])(v930);
                              sub_38720(v931);
                              v932 = (*(&stru_4C8.offset + (swift_isaMask & *v315)))();
                              v933 = sub_38A9C(v932);
                              v934 = *(&stru_4C8.reserved2 + (swift_isaMask & *v315));
                              v935 = v934(v933);
                              if (v935)
                              {
                                v936 = v935;
                                v937 = (*&stru_298.sectname[swift_isaMask & *v935])();
                                v939 = v938;
                              }

                              else
                              {
                                v937 = 0;
                                v939 = 0;
                              }

                              v940 = sub_38F48(v937, v939);
                              v941 = v934(v940);
                              if (v941)
                              {
                                v942 = v941;
                                v943 = (*&stru_298.segname[(swift_isaMask & *v941) + 8])();

                                v944 = v943 & 1;
                              }

                              else
                              {
                                v944 = 2;
                              }

                              v945 = v1787;
                              v946 = v1790;
                              sub_38F98(v944);
                              v947 = (*&stru_518.segname[swift_isaMask & *v315])();
                              sub_39C54(v947 & 1);
                              v948 = [v946 overlayTitleText];
                              if (v948)
                              {
                                v949 = v948;
                                v950 = sub_AB92A0();
                                v952 = v951;
                              }

                              else
                              {
                                v950 = 0;
                                v952 = 0xE000000000000000;
                              }

                              sub_37EC8(v950, v952);
                              v953 = [v946 overlaySubtitleText];
                              if (v953)
                              {
                                v954 = v953;
                                v955 = sub_AB92A0();
                                v957 = v956;
                              }

                              else
                              {
                                v955 = 0;
                                v957 = 0xE000000000000000;
                              }

                              sub_3838C(v955, v957);
                              v1811 = 0;
                              v1809 = 0u;
                              v1810 = 0u;
                              sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                              swift_unknownObjectRelease();
                              sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                              v219 = v945;
                              v220 = 3;
                              goto LABEL_945;
                            }

                            swift_unknownObjectRelease();
                            v197 = v1806;
                          }

                          if ([v197 uniformCellType] == &dword_4 + 2)
                          {
                            v647 = sub_3B336C(a2, type metadata accessor for FeaturedPlaylistCell);
                            v648 = [v1790 titleText];
                            if (v648 || (v648 = [v44 name]) != 0)
                            {
                              v649 = v648;
                              v650 = sub_AB92A0();
                              v652 = v651;
                            }

                            else
                            {
                              v650 = 0;
                              v652 = 0xE000000000000000;
                            }

                            v653 = sub_F5FC4(v650, v652);
                            v654 = [v1790 descriptionText];
                            if (v654 || (v654 = [v44 editorNotes]) != 0)
                            {
                              v655 = v654;
                              v656 = sub_AB92A0();
                              v658 = v657;
                            }

                            else
                            {
                              v656 = 0;
                              v658 = 0xE000000000000000;
                            }

                            sub_F6268(v656, v658);
                            v100 = v647;
                            VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                            v1811 = 0;
                            v1809 = 0u;
                            v1810 = 0u;
                            sub_3B8C40(&v1809, &off_CEFDE8, sub_1785D0);

                            sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                            goto LABEL_489;
                          }
                        }

                        if ([v44 curatorKind] == &dword_0 + 3)
                        {
                          v659 = sub_3B336C(a2, type metadata accessor for CuratorActivityCell);
                          v660 = [v44 name];
                          if (v660)
                          {
                            v661 = v660;
                            v662 = sub_AB92A0();
                            v664 = v663;
                          }

                          else
                          {
                            v662 = 0;
                            v664 = 0xE000000000000000;
                          }

                          CuratorActivityCell.title.setter(v662, v664);
                        }

                        else
                        {
                          if ([v44 curatorKind] != &dword_0 + 1)
                          {
                            v100 = sub_3B336C(a2, type metadata accessor for PersonVerticalCell);
                            sub_361EF0(0, 0, 0, 0);
                            v680 = [v1790 titleText];
                            if (v680 || (v680 = [v44 name]) != 0)
                            {
                              v681 = v680;
                              v682 = sub_AB92A0();
                              v684 = v683;
                            }

                            else
                            {
                              v682 = 0;
                              v684 = 0xE000000000000000;
                            }

                            sub_1FD7A8(v682, v684);
                            sub_1FDACC(0, 0xE000000000000000);
                            v685 = v48 & 1;
                            goto LABEL_487;
                          }

                          v659 = sub_3B336C(a2, type metadata accessor for RadioShowCell);
                          v665 = [v1790 titleText];
                          if (v665 || (v665 = [v44 shortName]) != 0)
                          {
                            v666 = v665;
                            v667 = sub_AB92A0();
                            v669 = v668;
                          }

                          else
                          {
                            v667 = 0;
                            v669 = 0xE000000000000000;
                          }

                          RadioShowCell.title.setter(v667, v669);
                          v670 = [v1790 subtitleText];
                          if (v670 || (v670 = [v44 name]) != 0)
                          {
                            v671 = v670;
                            v672 = sub_AB92A0();
                            v674 = v673;
                          }

                          else
                          {
                            v672 = 0;
                            v674 = 0xE000000000000000;
                          }

                          RadioShowCell.subtitle.setter(v672, v674);
                          v675 = [v1790 overlayTitleText];
                          if (v675)
                          {
                            v676 = v675;
                            v677 = sub_AB92A0();
                            v679 = v678;
                          }

                          else
                          {
                            v677 = 0;
                            v679 = 0xE000000000000000;
                          }

                          RadioShowCell.overlayTitle.setter(v677, v679);
                          v755 = [v1790 overlaySubtitleText];
                          if (v755)
                          {
                            v756 = v755;
                            v757 = sub_AB92A0();
                            v759 = v758;
                          }

                          else
                          {
                            v757 = 0;
                            v759 = 0xE000000000000000;
                          }

                          RadioShowCell.overlaySubtitle.setter(v757, v759);
                        }

                        v100 = v659;
                        v685 = v48 & 1;
LABEL_487:
                        VerticalLockupCollectionViewCell.isDisabled.setter(v685);
LABEL_488:

LABEL_489:
                        v219 = v44;
                        v220 = 3;
                        goto LABEL_945;
                      }

                      if ([v191 uniformCellType] == &dword_4 + 3)
                      {
                        v100 = sub_3B336C(a2, type metadata accessor for CustomRoomMusicVideoCell);
                        v306 = [v1790 headlineText];
                        if (v306)
                        {
                          v307 = v306;
                          v308 = sub_AB92A0();
                          v310 = v309;
                        }

                        else
                        {
                          v308 = 0;
                          v310 = 0xE000000000000000;
                        }

                        v629 = sub_14D848(v308, v310);
                        v630 = [v1790 titleText];
                        if (v630 || (v630 = [v44 title]) != 0)
                        {
                          v631 = v630;
                          v632 = sub_AB92A0();
                          v634 = v633;
                        }

                        else
                        {
                          v632 = 0;
                          v634 = 0xE000000000000000;
                        }

                        v635 = sub_14DAA0(v632, v634);
                        v636 = [v1790 subtitleText];
                        if (v636)
                        {
                          v637 = v636;
                          v638 = sub_AB92A0();
                          v640 = v639;
                        }

                        else
                        {
                          v638 = 0;
                          v640 = 0xE000000000000000;
                        }

                        v641 = sub_14DD00(v638, v640);
                        v642 = [v1790 descriptionText];
                        if (v642)
                        {
                          v643 = v642;
                          v644 = sub_AB92A0();
                          v646 = v645;
                        }

                        else
                        {
                          v644 = 0;
                          v646 = 0xE000000000000000;
                        }

                        sub_14DFF4(v644, v646);
                        sub_14E270(v48 & 1);
LABEL_412:

LABEL_874:
                        v219 = v44;
                        v220 = 12;
                        goto LABEL_945;
                      }

                      if ([v191 uniformCellType] == &dword_4)
                      {
                        v403 = sub_3B336C(a2, type metadata accessor for FeaturedMusicVideoVerticalCell);
                        v404 = sub_AB37F0();
                        if (sub_3D60D4(v404))
                        {
                          v405 = [v44 title];
                          if (v405)
                          {
                            v406 = v405;
                            v407 = sub_AB92A0();
                            v409 = v408;
                          }

                          else
                          {
                            v407 = 0;
                            v409 = 0;
                          }

                          a2 = v1808;
                          v1172 = sub_3D67E4(v407, v409);
                          v1174 = v1173;

                          v790 = sub_171DC0(v1172, v1174);
                        }

                        else
                        {
                          v785 = [v1790 titleText];
                          if (v785 || (v785 = [v44 title]) != 0)
                          {
                            v786 = v785;
                            v787 = sub_AB92A0();
                            v789 = v788;
                          }

                          else
                          {
                            v787 = 0;
                            v789 = 0xE000000000000000;
                          }

                          v790 = sub_171DC0(v787, v789);
                          a2 = v1808;
                        }

                        v1175 = [v1790 subtitleText];
                        if (v1175)
                        {
                          v1176 = v1175;
                          v1177 = sub_AB92A0();
                          v1179 = v1178;
                        }

                        else
                        {
                          v1177 = 0;
                          v1179 = 0xE000000000000000;
                        }

                        sub_172064(v1177, v1179);
                        v100 = v403;
                        VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                        *(&v1810 + 1) = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
                        v1811 = &off_D17B10;
                        *&v1809 = v44;
                        sub_37C074(v44, 12);
                        v1180 = sub_1783BC;
LABEL_873:
                        sub_3B8C40(&v1809, &off_CEFDE8, v1180);

                        sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                        goto LABEL_874;
                      }

                      if ([v191 uniformCellType] == &dword_4 + 1)
                      {
                        v565 = sub_3B336C(a2, type metadata accessor for FeaturedShowcaseCell);
                        v566 = [v1790 headlineText];
                        if (v566)
                        {
                          v567 = v566;
                          v568 = sub_AB92A0();
                          v570 = v569;
                        }

                        else
                        {
                          v568 = 0;
                          v570 = 0xE000000000000000;
                        }

                        v1184 = sub_1E0214(v568, v570);
                        v1185 = [v1790 titleText];
                        if (v1185 || (v1185 = [v44 title]) != 0)
                        {
                          v1186 = v1185;
                          v1187 = sub_AB92A0();
                          v1189 = v1188;
                        }

                        else
                        {
                          v1187 = 0;
                          v1189 = 0xE000000000000000;
                        }

                        v1190 = sub_1E046C(v1187, v1189);
                        v1191 = [v1790 subtitleText];
                        if (v1191)
                        {
                          v1192 = v1191;
                          v1193 = sub_AB92A0();
                          v1195 = v1194;
                        }

                        else
                        {
                          v1193 = 0;
                          v1195 = 0xE000000000000000;
                        }

                        v1202 = sub_1E06CC(v1193, v1195);
                        v1203 = [v1790 descriptionText];
                        if (v1203)
                        {
                          v1204 = v1203;
                          v1205 = sub_AB92A0();
                          v1207 = v1206;
                        }

                        else
                        {
                          v1205 = 0;
                          v1207 = 0xE000000000000000;
                        }

                        sub_1E09C0(v1205, v1207);
                        v100 = v565;
                        VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                        v1065 = v44;
                        v1066 = 12;
                        goto LABEL_664;
                      }

                      if ([v1806 uniformCellType] == &dword_8 + 2)
                      {
                        v1787 = v44;
                        v793 = *&v1791[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                        v794 = sub_AB3770().super.isa;
                        v795 = [v793 itemAtIndexPath:v794];

                        type metadata accessor for JSPosterItem(0);
                        v796 = swift_dynamicCastClass();
                        if (v796)
                        {
                          v797 = v796;
                          v100 = sub_3B336C(v1808, type metadata accessor for PosterCell);
                          v798 = (*&stru_4C8.sectname[swift_isaMask & *v797])();
                          if ((v798 == 2) | v798 & 1)
                          {
                            v799 = 2;
                          }

                          else
                          {
                            v799 = 0;
                          }

                          v800 = [v1790 titleText];
                          if (v800)
                          {
                            v801 = v800;
                            v802 = sub_AB92A0();
                            v804 = v803;
                          }

                          else
                          {
                            v802 = 0;
                            v804 = 0xE000000000000000;
                          }

                          sub_37AC4(v802, v804);
                          v1533 = [v1790 subtitleText];
                          if (v1533)
                          {
                            v1534 = v1533;
                            v1535 = sub_AB92A0();
                            v1537 = v1536;
                          }

                          else
                          {
                            v1535 = 0;
                            v1537 = 0xE000000000000000;
                          }

                          sub_37B14(v1535, v1537);
                          v1543 = [v1790 descriptionText];
                          if (v1543)
                          {
                            v1544 = v1543;
                            v1545 = sub_AB92A0();
                            v1547 = v1546;
                          }

                          else
                          {
                            v1545 = 0;
                            v1547 = 0xE000000000000000;
                          }

                          sub_37CA8(v1545, v1547);
                          v1553 = *(&stru_1F8.size + (swift_isaMask & *v797));
                          v1554 = swift_unknownObjectRetain();
                          v1555 = v1553(v1554);
                          v1557 = v1556;
                          swift_unknownObjectRelease();
                          if (v1557)
                          {
                            v1558 = v1555;
                          }

                          else
                          {
                            v1558 = 0;
                          }

                          if (v1557)
                          {
                            v1559 = v1557;
                          }

                          else
                          {
                            v1559 = 0xE000000000000000;
                          }

                          sub_38508(v1558, v1559);
                          v1560 = sub_39AC8(v799);
                          v1561 = (*(&stru_478.reloff + (swift_isaMask & *v797)))(v1560);
                          v1562 = sub_3863C(v1561);
                          v1563 = (*&stru_4C8.segname[(swift_isaMask & *v797) + 8])(v1562);
                          sub_38720(v1563);
                          v1564 = (*(&stru_4C8.offset + (swift_isaMask & *v797)))();
                          v1565 = sub_38A9C(v1564);
                          v1566 = *(&stru_4C8.reserved2 + (swift_isaMask & *v797));
                          v1567 = v1566(v1565);
                          if (v1567)
                          {
                            v1568 = v1567;
                            v1569 = (*&stru_298.sectname[swift_isaMask & *v1567])();
                            v1571 = v1570;
                          }

                          else
                          {
                            v1569 = 0;
                            v1571 = 0;
                          }

                          v1591 = sub_38F48(v1569, v1571);
                          v1592 = v1566(v1591);
                          if (v1592)
                          {
                            v1593 = v1592;
                            v1594 = (*&stru_298.segname[(swift_isaMask & *v1592) + 8])();

                            v1595 = v1594 & 1;
                          }

                          else
                          {
                            v1595 = 2;
                          }

                          sub_38F98(v1595);
                          v1601 = (*&stru_518.segname[swift_isaMask & *v797])();
                          sub_39C54(v1601 & 1);
                          v1602 = [v1790 overlayTitleText];
                          if (v1602)
                          {
                            v1603 = v1602;
                            v1604 = sub_AB92A0();
                            v1606 = v1605;
                          }

                          else
                          {
                            v1604 = 0;
                            v1606 = 0xE000000000000000;
                          }

                          sub_37EC8(v1604, v1606);
                          v1613 = [v1790 overlaySubtitleText];
                          if (v1613)
                          {
                            v1614 = v1613;
                            v1615 = sub_AB92A0();
                            v1617 = v1616;
                          }

                          else
                          {
                            v1615 = 0;
                            v1617 = 0xE000000000000000;
                          }

                          sub_3838C(v1615, v1617);
                          *(&v1810 + 1) = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
                          v1811 = &off_D17B10;
                          v1623 = v1787;
                          *&v1809 = v1787;
                          sub_37C074(v1787, 12);
                          sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                          swift_unknownObjectRelease();
                          sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                          v1065 = v1623;
                          v1066 = 12;
                          goto LABEL_664;
                        }

                        swift_unknownObjectRelease();
                        a2 = v1808;
                        v44 = v1787;
                      }
                    }

                    v1313 = sub_3B336C(a2, type metadata accessor for MusicVideoVerticalCell);
                    v1314 = [v1790 headlineText];
                    if (v1314)
                    {
                      v1315 = v1314;
                      v1316 = sub_AB92A0();
                      v1318 = v1317;
                    }

                    else
                    {
                      v1316 = 0;
                      v1318 = 0xE000000000000000;
                    }

                    sub_2B60B8(v1316, v1318);
                    v1319 = sub_AB37F0();
                    if (sub_3D60D4(v1319))
                    {
                      v1320 = [v44 title];
                      if (v1320)
                      {
                        v1321 = v1320;
                        v1322 = sub_AB92A0();
                        v1324 = v1323;
                      }

                      else
                      {
                        v1322 = 0;
                        v1324 = 0;
                      }

                      v1332 = sub_3D67E4(v1322, v1324);
                      v1334 = v1333;

                      v1330 = v1332;
                      v1331 = v1334;
                    }

                    else
                    {
                      v1325 = [v1790 titleText];
                      if (v1325 || (v1325 = [v44 title]) != 0)
                      {
                        v1326 = v1325;
                        v1327 = sub_AB92A0();
                        v1329 = v1328;
                      }

                      else
                      {
                        v1327 = 0;
                        v1329 = 0xE000000000000000;
                      }

                      v1330 = v1327;
                      v1331 = v1329;
                    }

                    v1335 = sub_2B62C8(v1330, v1331);
                    v1336 = [v1790 subtitleText];
                    if (v1336)
                    {
                      v1337 = v1336;
                      v1338 = sub_AB92A0();
                      v1340 = v1339;
                    }

                    else
                    {
                      v1338 = 0;
                      v1340 = 0xE000000000000000;
                    }

                    sub_2B6574(v1338, v1340);
                    v100 = v1313;
                    VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                    *(&v1810 + 1) = sub_13C80(0, &unk_E03780, MPModelMovie_ptr);
                    v1811 = &off_D17B10;
                    *&v1809 = v44;
                    sub_37C074(v44, 12);
                    v1180 = sub_1783E0;
                    goto LABEL_873;
                  }

                  v221 = v1806;
                  if (v1806)
                  {
                    if ([v1806 uniformCellType] == &dword_0 + 1)
                    {
                      v222 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                      v223 = sub_AB37F0();
                      v224 = sub_3D60D4(v223);
                      if (v224)
                      {
                        v50 = a2;
                        v225 = sub_AB37B0();
                        v56 = __OFADD__(v225, 1);
                        v226 = v225 + 1;
                        if (v56)
                        {
                          __break(1u);
                          goto LABEL_146;
                        }
                      }

                      else
                      {
                        v226 = 0;
                      }

                      AlbumCell.rank.setter(v226, (v224 & 1) == 0);
                      v437 = [v1790 titleText];
                      if (!v437)
                      {
                        v437 = [v44 title];
                        if (!v437)
                        {
                          v760 = 0;
                          v761 = 0xE000000000000000;
LABEL_939:
                          v1427 = AlbumCell.title.setter(v760, v761);
                          v1428 = [v1790 subtitleText];
                          if (v1428)
                          {
                            v1429 = v1428;
                            v1430 = sub_AB92A0();
                            v1432 = v1431;

                            v1433 = v1432;
                            v1434 = v1430;
                          }

                          else
                          {
                            v1434 = MPModelTVShow.localizedEpisodeCount.getter();
                          }

                          AlbumCell.artistName.setter(v1434, v1433);
                          v1811 = 0;
                          v1809 = 0u;
                          v1810 = 0u;
                          sub_3B8C40(&v1809, &off_CEFDE8, sub_1783C8);
                          sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                          AlbumCell.layoutStyle.setter(0);
LABEL_943:
                          v100 = v222;
                          VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

LABEL_944:
                          v219 = v44;
                          v220 = 9;
                          goto LABEL_945;
                        }
                      }

LABEL_938:
                      v1425 = v437;
                      v760 = sub_AB92A0();
                      v761 = v1426;

                      goto LABEL_939;
                    }

                    if ([v221 uniformCellType] == &dword_4 + 3)
                    {
                      v100 = sub_3B336C(a2, type metadata accessor for CustomRoomAlbumCell);
                      v362 = v1790;
                      v363 = sub_3DE9C0(v221, v1790);
                      sub_4C5CB8(v363);
                      sub_4C5DC0(0);
                      v364 = [v362 headlineText];
                      if (v364)
                      {
                        v365 = v364;
                        v366 = sub_AB92A0();
                        v368 = v367;
                      }

                      else
                      {
                        v366 = 0;
                        v368 = 0xE000000000000000;
                      }

                      v721 = sub_4C53F0(v366, v368);
                      v722 = [v1790 titleText];
                      if (v722 || (v722 = [v44 title]) != 0)
                      {
                        v723 = v722;
                        v724 = sub_AB92A0();
                        v726 = v725;
                      }

                      else
                      {
                        v724 = 0;
                        v726 = 0xE000000000000000;
                      }

                      v727 = sub_4C5610(v724, v726);
                      v728 = [v1790 subtitleText];
                      if (v728)
                      {
                        v729 = v728;
                        v730 = sub_AB92A0();
                        v732 = v731;

                        v733 = v732;
                        v734 = v730;
                      }

                      else
                      {
                        v734 = MPModelTVShow.localizedEpisodeCount.getter();
                      }

                      v735 = sub_4C5820(v734, v733);
                      v736 = [v1790 descriptionText];
                      if (v736)
                      {
                        v737 = v736;
                        v738 = sub_AB92A0();
                        v740 = v739;
                      }

                      else
                      {
                        v738 = 0;
                        v740 = 0xE000000000000000;
                      }

                      sub_4C5ACC(v738, v740);
                      sub_4C5EA0(v48 & 1);
                      goto LABEL_944;
                    }

                    if ([v221 uniformCellType] == &dword_4)
                    {
                      v222 = sub_3B336C(a2, type metadata accessor for FeaturedMusicVideoVerticalCell);
                      v450 = sub_AB37F0();
                      if (sub_3D60D4(v450))
                      {
                        v451 = [v44 title];
                        if (v451)
                        {
                          v452 = v451;
                          v453 = sub_AB92A0();
                          v455 = v454;
                        }

                        else
                        {
                          v453 = 0;
                          v455 = 0;
                        }

                        a2 = v1808;
                        v1248 = sub_3D67E4(v453, v455);
                        v1250 = v1249;

                        sub_171DC0(v1248, v1250);
                      }

                      else
                      {
                        v847 = [v1790 titleText];
                        if (v847 || (v847 = [v44 title]) != 0)
                        {
                          v848 = v847;
                          v849 = sub_AB92A0();
                          v851 = v850;
                        }

                        else
                        {
                          v849 = 0;
                          v851 = 0xE000000000000000;
                        }

                        sub_171DC0(v849, v851);
                        a2 = v1808;
                      }

                      sub_172064(0, 0xE000000000000000);
                      goto LABEL_943;
                    }

                    if ([v221 uniformCellType] == &dword_4 + 1)
                    {
                      v604 = sub_3B336C(a2, type metadata accessor for FeaturedShowcaseCell);
                      v605 = [v1790 headlineText];
                      if (v605)
                      {
                        v606 = v605;
                        v607 = sub_AB92A0();
                        v609 = v608;
                      }

                      else
                      {
                        v607 = 0;
                        v609 = 0xE000000000000000;
                      }

                      v1251 = sub_1E0214(v607, v609);
                      v1252 = [v1790 titleText];
                      if (v1252 || (v1252 = [v44 title]) != 0)
                      {
                        v1253 = v1252;
                        v1254 = sub_AB92A0();
                        v1256 = v1255;
                      }

                      else
                      {
                        v1254 = 0;
                        v1256 = 0xE000000000000000;
                      }

                      v1257 = sub_1E046C(v1254, v1256);
                      v1258 = [v1790 subtitleText];
                      if (v1258)
                      {
                        v1259 = v1258;
                        v1260 = sub_AB92A0();
                        v1262 = v1261;
                      }

                      else
                      {
                        v1260 = 0;
                        v1262 = 0xE000000000000000;
                      }

                      v1263 = sub_1E06CC(v1260, v1262);
                      v1264 = [v1790 descriptionText];
                      if (v1264)
                      {
                        v1265 = v1264;
                        v1266 = sub_AB92A0();
                        v1268 = v1267;
                      }

                      else
                      {
                        v1266 = 0;
                        v1268 = 0xE000000000000000;
                      }

                      sub_1E09C0(v1266, v1268);
                      v100 = v604;
                      VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                      v1065 = v44;
                      v1066 = 9;
                      goto LABEL_664;
                    }

                    if ([v1806 uniformCellType] == &dword_8 + 2)
                    {
                      v1787 = v44;
                      v852 = *&v1791[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                      v853 = sub_AB3770().super.isa;
                      v854 = [v852 itemAtIndexPath:v853];

                      type metadata accessor for JSPosterItem(0);
                      v855 = swift_dynamicCastClass();
                      if (v855)
                      {
                        v856 = v855;
                        v100 = sub_3B336C(v1808, type metadata accessor for PosterCell);
                        v857 = (*&stru_4C8.sectname[swift_isaMask & *v856])();
                        if ((v857 == 2) | v857 & 1)
                        {
                          v858 = 2;
                        }

                        else
                        {
                          v858 = 0;
                        }

                        v859 = [v1790 titleText];
                        if (v859)
                        {
                          v860 = v859;
                          v861 = sub_AB92A0();
                          v863 = v862;
                        }

                        else
                        {
                          v861 = 0;
                          v863 = 0xE000000000000000;
                        }

                        sub_37AC4(v861, v863);
                        v1715 = [v1790 subtitleText];
                        if (v1715)
                        {
                          v1716 = v1715;
                          v1717 = sub_AB92A0();
                          v1719 = v1718;
                        }

                        else
                        {
                          v1717 = 0;
                          v1719 = 0xE000000000000000;
                        }

                        sub_37B14(v1717, v1719);
                        v1720 = [v1790 descriptionText];
                        if (v1720)
                        {
                          v1721 = v1720;
                          v1722 = sub_AB92A0();
                          v1724 = v1723;
                        }

                        else
                        {
                          v1722 = 0;
                          v1724 = 0xE000000000000000;
                        }

                        sub_37CA8(v1722, v1724);
                        v1725 = *(&stru_1F8.size + (swift_isaMask & *v856));
                        v1726 = swift_unknownObjectRetain();
                        v1727 = v1725(v1726);
                        v1729 = v1728;
                        swift_unknownObjectRelease();
                        if (v1729)
                        {
                          v1730 = v1727;
                        }

                        else
                        {
                          v1730 = 0;
                        }

                        if (v1729)
                        {
                          v1731 = v1729;
                        }

                        else
                        {
                          v1731 = 0xE000000000000000;
                        }

                        sub_38508(v1730, v1731);
                        v1732 = sub_39AC8(v858);
                        v1733 = (*(&stru_478.reloff + (swift_isaMask & *v856)))(v1732);
                        v1734 = sub_3863C(v1733);
                        v1735 = (*&stru_4C8.segname[(swift_isaMask & *v856) + 8])(v1734);
                        sub_38720(v1735);
                        v1736 = (*(&stru_4C8.offset + (swift_isaMask & *v856)))();
                        v1737 = sub_38A9C(v1736);
                        v1738 = *(&stru_4C8.reserved2 + (swift_isaMask & *v856));
                        v1739 = v1738(v1737);
                        if (v1739)
                        {
                          v1740 = v1739;
                          v1741 = (*&stru_298.sectname[swift_isaMask & *v1739])();
                          v1743 = v1742;
                        }

                        else
                        {
                          v1741 = 0;
                          v1743 = 0;
                        }

                        v1744 = sub_38F48(v1741, v1743);
                        v1745 = v1738(v1744);
                        if (v1745)
                        {
                          v1746 = v1745;
                          v1747 = (*&stru_298.segname[(swift_isaMask & *v1745) + 8])();

                          v1748 = v1747 & 1;
                        }

                        else
                        {
                          v1748 = 2;
                        }

                        sub_38F98(v1748);
                        v1749 = (*&stru_518.segname[swift_isaMask & *v856])();
                        sub_39C54(v1749 & 1);
                        v1750 = [v1790 overlayTitleText];
                        if (v1750)
                        {
                          v1751 = v1750;
                          v1752 = sub_AB92A0();
                          v1754 = v1753;
                        }

                        else
                        {
                          v1752 = 0;
                          v1754 = 0xE000000000000000;
                        }

                        sub_37EC8(v1752, v1754);
                        v1755 = [v1790 overlaySubtitleText];
                        if (v1755)
                        {
                          v1756 = v1755;
                          v1757 = sub_AB92A0();
                          v1759 = v1758;
                        }

                        else
                        {
                          v1757 = 0;
                          v1759 = 0xE000000000000000;
                        }

                        sub_3838C(v1757, v1759);
                        v1811 = 0;
                        v1809 = 0u;
                        v1810 = 0u;
                        sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                        swift_unknownObjectRelease();
                        sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                        v1065 = v1787;
                        v1066 = 9;
                        goto LABEL_664;
                      }

                      swift_unknownObjectRelease();
                      a2 = v1808;
                      v44 = v1787;
                    }
                  }

                  v222 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                  v437 = [v1790 titleText];
                  if (!v437)
                  {
                    v437 = [v44 title];
                    if (!v437)
                    {
                      v760 = 0;
                      v761 = 0xE000000000000000;
                      goto LABEL_939;
                    }
                  }

                  goto LABEL_938;
                }

                a2 = v1808;
                if (v47 <= 2u)
                {
                  goto LABEL_94;
                }

                v50 = v1793;
                if (v47 == 3)
                {
                  goto LABEL_130;
                }

                if (v47 != 4)
                {
                  if (v47 != 5)
                  {
                    goto LABEL_146;
                  }

                  if (v1806)
                  {
                    if (([v1806 uniformCellType] | 8) == 9)
                    {
                      v132 = sub_3B336C(a2, type metadata accessor for AlbumCell);
                      v133 = sub_AB37F0();
                      v134 = sub_3D60D4(v133);
                      if ((v134 & 1) == 0)
                      {
                        v136 = 0;
                        goto LABEL_224;
                      }

                      v135 = sub_AB37B0();
                      v56 = __OFADD__(v135, 1);
                      v136 = v135 + 1;
                      if (!v56)
                      {
LABEL_224:
                        AlbumCell.rank.setter(v136, (v134 & 1) == 0);
                        v377 = [v1790 titleText];
                        if (v377 || (v377 = [v44 name]) != 0)
                        {
                          v378 = v377;
                          v379 = sub_AB92A0();
                          v381 = v380;
                        }

                        else
                        {
                          v379 = 0;
                          v381 = 0xE000000000000000;
                        }

                        v382 = AlbumCell.title.setter(v379, v381);
                        v383 = [v1790 subtitleText];
                        if (v383 || (v383 = [v44 shortEditorNotes]) != 0)
                        {
                          v384 = v383;
                          v385 = sub_AB92A0();
                          v387 = v386;
                        }

                        else
                        {
                          v741 = sub_AB91E0();
                          sub_5F26C(v741);
                          v385 = sub_AB9320();
                          v387 = v742;
                        }

                        AlbumCell.artistName.setter(v385, v387);
                        *(&v1810 + 1) = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
                        v1811 = &off_D17A98;
                        *&v1809 = v44;
                        sub_37C074(v44, 5);
                        sub_3B8C40(&v1809, &off_CEFDE8, sub_1783C8);
                        sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                        if ([v44 type] == &dword_0 + 3)
                        {
                          v388 = 1;
                        }

                        else
                        {
                          v389 = &v132[OBJC_IVAR____TtC16MusicApplication9AlbumCell_artistName];
                          swift_beginAccess();
                          v390 = *(v389 + 1);
                          v391 = *v389 & 0xFFFFFFFFFFFFLL;
                          if ((v390 & 0x2000000000000000) != 0)
                          {
                            v391 = HIBYTE(v390) & 0xF;
                          }

                          v388 = v391 == 0;
                        }

                        AlbumCell.layoutStyle.setter(v388);
                        v100 = v132;
                        VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);
                        goto LABEL_829;
                      }

                      __break(1u);
LABEL_84:

                      swift_unknownObjectRelease();
                      v1806 = 0;
                      goto LABEL_60;
                    }

                    v369 = v1806;
                    if ([v1806 uniformCellType] == &dword_4 + 3)
                    {
                      v100 = sub_3B336C(a2, type metadata accessor for CustomRoomAlbumCell);
                      v370 = v1790;
                      v371 = sub_3DE9C0(v369, v1790);
                      sub_4C5CB8(v371);
                      sub_4C5DC0(0);
                      v372 = [v370 headlineText];
                      if (v372)
                      {
                        v373 = v372;
                        v374 = sub_AB92A0();
                        v376 = v375;
                      }

                      else
                      {
                        v374 = 0;
                        v376 = 0xE000000000000000;
                      }

                      v774 = [v44 name];
                      if (v774)
                      {
                        v775 = v774;
                        v776 = sub_AB92A0();
                        v778 = v777;
                      }

                      else
                      {
                        v776 = 0;
                        v778 = 0xE000000000000000;
                      }

                      sub_4C5610(v776, v778);
                      v779 = 0xE000000000000000;
                      v780 = sub_4C5820(0, 0xE000000000000000);
                      v781 = [v1790 descriptionText];
                      if (v781)
                      {
                        v782 = v781;
                        v783 = sub_AB92A0();
                        v779 = v784;
                      }

                      else
                      {
                        v783 = 0;
                      }

                      sub_4C5ACC(v783, v779);
                      sub_4C5EA0(v48 & 1);
                      goto LABEL_830;
                    }

                    if ([v369 uniformCellType] == &dword_0 + 3)
                    {
                      v485 = sub_3B336C(a2, type metadata accessor for FeaturedRadioShowCell);
                      v486 = [v1790 headlineText];
                      if (v486)
                      {
                        v487 = v486;
                        v488 = sub_AB92A0();
                        v490 = v489;
                      }

                      else
                      {
                        v488 = 0;
                        v490 = 0xE000000000000000;
                      }

                      v1069 = sub_233E78(v488, v490);
                      v1070 = [v1790 titleText];
                      if (v1070 || (v1070 = [v44 name]) != 0)
                      {
                        v1071 = v1070;
                        v1072 = sub_AB92A0();
                        v1074 = v1073;
                      }

                      else
                      {
                        v1072 = 0;
                        v1074 = 0xE000000000000000;
                      }

                      v1075 = sub_234088(v1072, v1074);
                      v1076 = [v1790 subtitleText];
                      if (v1076 || (v1076 = [v44 shortEditorNotes]) != 0)
                      {
                        v1077 = v1076;
                        v1078 = sub_AB92A0();
                        v1080 = v1079;
                      }

                      else
                      {
                        v1078 = 0;
                        v1080 = 0xE000000000000000;
                      }

                      sub_234334(v1078, v1080);
                      *(&v1810 + 1) = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
                      v1811 = &off_D17A98;
                      *&v1809 = v44;
                      sub_37C074(v44, 5);
                      sub_3B8C40(&v1809, &off_CEFDE8, sub_178410);
                      sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                      v100 = v485;
                      sub_200878(0);
                      sub_20085C(1);
                      sub_200620(v48 & 1, v1081);

                      v1065 = v44;
                      v1066 = 5;
                      goto LABEL_664;
                    }

                    if ([v1806 uniformCellType] == &dword_8 + 2)
                    {
                      v1787 = v44;
                      v743 = *&v1791[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                      v744 = sub_AB3770().super.isa;
                      v745 = [v743 itemAtIndexPath:v744];

                      type metadata accessor for JSPosterItem(0);
                      v746 = swift_dynamicCastClass();
                      if (v746)
                      {
                        v747 = v746;
                        v100 = sub_3B336C(v1808, type metadata accessor for PosterCell);
                        v748 = (*&stru_4C8.sectname[swift_isaMask & *v747])();
                        if ((v748 == 2) | v748 & 1)
                        {
                          v749 = 2;
                        }

                        else
                        {
                          v749 = 0;
                        }

                        v750 = [v1790 titleText];
                        if (v750)
                        {
                          v751 = v750;
                          v752 = sub_AB92A0();
                          v754 = v753;
                        }

                        else
                        {
                          v752 = 0;
                          v754 = 0xE000000000000000;
                        }

                        sub_37AC4(v752, v754);
                        v1435 = [v1790 subtitleText];
                        if (v1435)
                        {
                          v1436 = v1435;
                          v1437 = sub_AB92A0();
                          v1439 = v1438;
                        }

                        else
                        {
                          v1437 = 0;
                          v1439 = 0xE000000000000000;
                        }

                        sub_37B14(v1437, v1439);
                        v1440 = [v1790 descriptionText];
                        if (v1440)
                        {
                          v1441 = v1440;
                          v1442 = sub_AB92A0();
                          v1444 = v1443;
                        }

                        else
                        {
                          v1442 = 0;
                          v1444 = 0xE000000000000000;
                        }

                        sub_37CA8(v1442, v1444);
                        v1445 = *(&stru_1F8.size + (swift_isaMask & *v747));
                        v1446 = swift_unknownObjectRetain();
                        v1447 = v1445(v1446);
                        v1449 = v1448;
                        swift_unknownObjectRelease();
                        if (v1449)
                        {
                          v1450 = v1447;
                        }

                        else
                        {
                          v1450 = 0;
                        }

                        if (v1449)
                        {
                          v1451 = v1449;
                        }

                        else
                        {
                          v1451 = 0xE000000000000000;
                        }

                        sub_38508(v1450, v1451);
                        v1452 = sub_39AC8(v749);
                        v1453 = (*(&stru_478.reloff + (swift_isaMask & *v747)))(v1452);
                        v1454 = sub_3863C(v1453);
                        v1455 = (*&stru_4C8.segname[(swift_isaMask & *v747) + 8])(v1454);
                        sub_38720(v1455);
                        v1456 = (*(&stru_4C8.offset + (swift_isaMask & *v747)))();
                        v1457 = sub_38A9C(v1456);
                        v1458 = *(&stru_4C8.reserved2 + (swift_isaMask & *v747));
                        v1459 = v1458(v1457);
                        if (v1459)
                        {
                          v1460 = v1459;
                          v1461 = (*&stru_298.sectname[swift_isaMask & *v1459])();
                          v1463 = v1462;
                        }

                        else
                        {
                          v1461 = 0;
                          v1463 = 0;
                        }

                        v1464 = sub_38F48(v1461, v1463);
                        v1465 = v1458(v1464);
                        if (v1465)
                        {
                          v1466 = v1465;
                          v1467 = (*&stru_298.segname[(swift_isaMask & *v1465) + 8])();

                          v1468 = v1467 & 1;
                        }

                        else
                        {
                          v1468 = 2;
                        }

                        sub_38F98(v1468);
                        v1469 = (*&stru_518.segname[swift_isaMask & *v747])();
                        sub_39C54(v1469 & 1);
                        v1470 = [v1790 overlayTitleText];
                        if (v1470)
                        {
                          v1471 = v1470;
                          v1472 = sub_AB92A0();
                          v1474 = v1473;
                        }

                        else
                        {
                          v1472 = 0;
                          v1474 = 0xE000000000000000;
                        }

                        sub_37EC8(v1472, v1474);
                        v1475 = [v1790 overlaySubtitleText];
                        if (v1475)
                        {
                          v1476 = v1475;
                          v1477 = sub_AB92A0();
                          v1479 = v1478;
                        }

                        else
                        {
                          v1477 = 0;
                          v1479 = 0xE000000000000000;
                        }

                        sub_3838C(v1477, v1479);
                        *(&v1810 + 1) = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
                        v1811 = &off_D17A98;
                        v1480 = v1787;
                        *&v1809 = v1787;
                        sub_37C074(v1787, 5);
                        sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                        swift_unknownObjectRelease();
                        sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                        v1065 = v1480;
                        v1066 = 5;
                        goto LABEL_664;
                      }

                      swift_unknownObjectRelease();
                      a2 = v1808;
                      v44 = v1787;
                    }
                  }

                  v1275 = sub_3B336C(a2, type metadata accessor for RadioStationCell);
                  v1276 = [v1790 headlineText];
                  if (v1276)
                  {
                    v1277 = v1276;
                    v1278 = sub_AB92A0();
                    v1280 = v1279;
                  }

                  else
                  {
                    v1278 = 0;
                    v1280 = 0xE000000000000000;
                  }

                  v1281 = sub_B3044(v1278, v1280);
                  v1282 = [v1790 titleText];
                  if (v1282 || (v1282 = [v44 name]) != 0)
                  {
                    v1283 = v1282;
                    v1284 = sub_AB92A0();
                    v1286 = v1285;
                  }

                  else
                  {
                    v1284 = 0;
                    v1286 = 0xE000000000000000;
                  }

                  v1287 = sub_B32CC(v1284, v1286);
                  v1288 = [v1790 subtitleText];
                  if (v1288 || (v1288 = [v44 shortEditorNotes]) != 0 || (v1288 = objc_msgSend(v44, "editorNotes")) != 0)
                  {
                    v1289 = v1288;
                    v1290 = sub_AB92A0();
                    v1292 = v1291;
                  }

                  else
                  {
                    v1290 = 0;
                    v1292 = 0xE000000000000000;
                  }

                  sub_B35F8(v1290, v1292);
                  *(&v1810 + 1) = sub_13C80(0, &unk_E087D0, MPModelRadioStation_ptr);
                  v1811 = &off_D17A98;
                  *&v1809 = v44;
                  sub_37C074(v44, 5);
                  sub_3B8C40(&v1809, &off_CEFDE8, sub_178404);
                  sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                  v100 = v1275;
                  sub_200878(0);
                  sub_20085C(1);
                  sub_200620(v48 & 1, v1293);
LABEL_829:

LABEL_830:
                  v219 = v44;
                  v220 = 5;
                  goto LABEL_945;
                }

                v1787 = v44;

                v170 = &selRef__authenticateReturningError_;
                v171 = [v1790 titleText];
                if (v171 || (v171 = [v1787 name]) != 0)
                {
                  v172 = v171;
                  v173 = sub_AB92A0();
                  v175 = v174;
                }

                else
                {
                  v173 = 0;
                  v175 = 0xE000000000000000;
                }

                a2 = &selRef__authenticateReturningError_;
                v176 = [v1790 subtitleText];
                if (v176)
                {
                  v177 = v176;
                  v178 = sub_AB92A0();
                  v180 = v179;

                  goto LABEL_324;
                }

                v284 = [v1787 curator];
                if (v284)
                {
                  v285 = v284;
                  v286 = [v284 name];
                  if (v286)
                  {
                    v287 = v286;
                    v178 = sub_AB92A0();
                    v180 = v288;

                    goto LABEL_324;
                  }
                }

                v178 = 0;
                v180 = 0xE000000000000000;
LABEL_324:
                v510 = v1806;
                if (v1806)
                {
                  v511 = &selRef_isMovingFromParentViewController;
                  if ([v1806 uniformCellType] == &dword_0 + 1)
                  {
                    v511 = v173;
                    v173 = v48;
                    a2 = v1808;
                    v510 = sub_3B336C(v1808, type metadata accessor for AlbumCell);
                    v512 = sub_AB37F0();
                    LODWORD(v48) = sub_3D60D4(v512);
                    if ((v48 & 1) == 0)
                    {
                      v514 = 0;
                      v170 = v1787;
LABEL_334:
                      AlbumCell.rank.setter(v514, (v48 & 1) == 0);
                      AlbumCell.title.setter(v511, v175);
                      AlbumCell.artistName.setter(v178, v180);
                      *(&v1810 + 1) = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
                      v1811 = &off_D17A48;
                      *&v1809 = v170;
                      sub_37C074(v170, 4);
                      sub_3B8C40(&v1809, &off_CEFDE8, sub_1783C8);
                      sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                      AlbumCell.layoutStyle.setter(0);
                      v100 = v510;
                      VerticalLockupCollectionViewCell.isDisabled.setter(v173 & 1);

LABEL_400:
                      v219 = v170;
                      v220 = 4;
                      goto LABEL_945;
                    }

                    v513 = sub_AB37B0();
                    v56 = __OFADD__(v513, 1);
                    v514 = v513 + 1;
                    v170 = v1787;
                    if (!v56)
                    {
                      goto LABEL_334;
                    }

                    __break(1u);
                  }

                  if ([v510 v511[196]] == &dword_4 + 3)
                  {
                    v1786 = v48;
                    a2 = v1808;
                    v100 = sub_3B336C(v1808, type metadata accessor for CustomRoomAlbumCell);
                    v515 = v510;
                    v516 = v1790;
                    v517 = sub_3DE9C0(v515, v1790);
                    sub_4C5CB8(v517);
                    sub_4C5DC0(0);
                    *(&v1810 + 1) = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
                    v1811 = &off_D17A48;
                    v170 = v1787;
                    *&v1809 = v1787;
                    v518 = v1787;
                    sub_3B8C40(&v1809, &off_CEFDE8, sub_1785E8);
                    sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                    v519 = [v516 headlineText];
                    if (v519)
                    {
                      v520 = v519;
                      v521 = sub_AB92A0();
                      v523 = v522;
                    }

                    else
                    {
                      v521 = 0;
                      v523 = 0xE000000000000000;
                    }

                    sub_4C53F0(v521, v523);
                    sub_4C5610(v173, v175);
                    v622 = sub_4C5820(v178, v180);
                    v623 = [v1790 descriptionText];
                    v624 = v1786;
                    if (v623)
                    {
                      v625 = v623;
                      v626 = sub_AB92A0();
                      v628 = v627;
                    }

                    else
                    {
                      v626 = 0;
                      v628 = 0xE000000000000000;
                    }

                    sub_4C5ACC(v626, v628);
                    sub_4C5EA0(v624 & 1);
                    goto LABEL_400;
                  }

                  if ([v510 v511[196]] == &dword_8 + 2)
                  {
                    v1799 = v173;
                    v1786 = v48;
                    v524 = *&v1791[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                    v525 = v1808;
                    v526 = sub_AB3770().super.isa;
                    v527 = [v524 itemAtIndexPath:v526];

                    type metadata accessor for JSPosterItem(0);
                    v528 = swift_dynamicCastClass();
                    if (v528)
                    {
                      v529 = v528;

                      v100 = sub_3B336C(v525, type metadata accessor for PosterCell);
                      v530 = (*&stru_4C8.sectname[swift_isaMask & *v529])();
                      if ((v530 == 2) | v530 & 1)
                      {
                        v531 = 2;
                      }

                      else
                      {
                        v531 = 0;
                      }

                      v532 = [v1790 v170[332]];
                      if (v532)
                      {
                        v533 = v532;
                        v534 = sub_AB92A0();
                        v536 = v535;
                      }

                      else
                      {
                        v534 = 0;
                        v536 = 0xE000000000000000;
                      }

                      sub_37AC4(v534, v536);
                      v1082 = [v1790 a2[318]];
                      if (v1082)
                      {
                        v1083 = v1082;
                        v1084 = sub_AB92A0();
                        v1086 = v1085;
                      }

                      else
                      {
                        v1084 = 0;
                        v1086 = 0xE000000000000000;
                      }

                      sub_37B14(v1084, v1086);
                      v1087 = [v1790 descriptionText];
                      if (v1087)
                      {
                        v1088 = v1087;
                        v1089 = sub_AB92A0();
                        v1091 = v1090;
                      }

                      else
                      {
                        v1089 = 0;
                        v1091 = 0xE000000000000000;
                      }

                      sub_37CA8(v1089, v1091);
                      v1092 = *(&stru_1F8.size + (swift_isaMask & *v529));
                      v1093 = swift_unknownObjectRetain();
                      v1094 = v1092(v1093);
                      v1096 = v1095;
                      swift_unknownObjectRelease();
                      if (v1096)
                      {
                        v1097 = v1094;
                      }

                      else
                      {
                        v1097 = 0;
                      }

                      if (v1096)
                      {
                        v1098 = v1096;
                      }

                      else
                      {
                        v1098 = 0xE000000000000000;
                      }

                      sub_38508(v1097, v1098);
                      v1099 = sub_39AC8(v531);
                      v1100 = (*(&stru_478.reloff + (swift_isaMask & *v529)))(v1099);
                      v1101 = sub_3863C(v1100);
                      v1102 = (*&stru_4C8.segname[(swift_isaMask & *v529) + 8])(v1101);
                      sub_38720(v1102);
                      v1103 = (*(&stru_4C8.offset + (swift_isaMask & *v529)))();
                      v1104 = sub_38A9C(v1103);
                      v1105 = *(&stru_4C8.reserved2 + (swift_isaMask & *v529));
                      v1106 = v1105(v1104);
                      if (v1106)
                      {
                        v1107 = v1106;
                        v1108 = (*&stru_298.sectname[swift_isaMask & *v1106])();
                        v1110 = v1109;
                      }

                      else
                      {
                        v1108 = 0;
                        v1110 = 0;
                      }

                      v1111 = sub_38F48(v1108, v1110);
                      v1112 = v1105(v1111);
                      if (v1112)
                      {
                        v1113 = v1112;
                        v1114 = (*&stru_298.segname[(swift_isaMask & *v1112) + 8])();

                        v1115 = v1114 & 1;
                      }

                      else
                      {
                        v1115 = 2;
                      }

                      sub_38F98(v1115);
                      v1116 = (*&stru_518.segname[swift_isaMask & *v529])();
                      sub_39C54(v1116 & 1);
                      v1117 = [v1790 overlayTitleText];
                      if (v1117)
                      {
                        v1118 = v1117;
                        v1119 = sub_AB92A0();
                        v1121 = v1120;
                      }

                      else
                      {
                        v1119 = 0;
                        v1121 = 0xE000000000000000;
                      }

                      sub_37EC8(v1119, v1121);
                      v1122 = [v1790 overlaySubtitleText];
                      if (v1122)
                      {
                        v1123 = v1122;
                        v1124 = sub_AB92A0();
                        v1126 = v1125;
                      }

                      else
                      {
                        v1124 = 0;
                        v1126 = 0xE000000000000000;
                      }

                      sub_3838C(v1124, v1126);
                      v1811 = 0;
                      v1809 = 0u;
                      v1810 = 0u;
                      sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                      swift_unknownObjectRelease();
                      sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                      v1065 = v1787;
                      v1066 = 4;
                      goto LABEL_664;
                    }

                    swift_unknownObjectRelease();
                    LOBYTE(v48) = v1786;
                    v173 = v1799;
                  }

                  if ([v1806 v511[196]] == &dword_0 + 3)
                  {
                    v965 = v48;
                    v966 = sub_3B336C(v1808, type metadata accessor for FeaturedRadioShowCell);
                    v967 = [v1790 headlineText];
                    if (v967)
                    {
                      v968 = v967;
                      v969 = sub_AB92A0();
                      v971 = v970;
                    }

                    else
                    {
                      v969 = 0;
                      v971 = 0xE000000000000000;
                    }

                    sub_233E78(v969, v971);
                    sub_234088(v173, v175);
                    sub_234334(v178, v180);
                    *(&v1810 + 1) = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
                    v1811 = &off_D17A48;
                    v1067 = v1787;
                    *&v1809 = v1787;
                    sub_37C074(v1787, 4);
                    sub_3B8C40(&v1809, &off_CEF8C8, sub_178410);
                    sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                    v100 = v966;
                    sub_200878(0);
                    sub_20085C(1);
                    sub_200620(v965 & 1, v1068);
                    sub_200598([v1067 isFavorite]);

                    v1065 = v1067;
                    v1066 = 4;
                    goto LABEL_664;
                  }
                }

                a2 = v1808;
                v972 = sub_AB37F0();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E03798, &qword_B0CE90);
                v973 = swift_allocObject();
                *(v973 + 16) = xmmword_AF4EC0;
                *(v973 + 32) = 7;
                LOBYTE(v972) = sub_3D64F0(v972, v973);

                if (v972)
                {
                  v974 = sub_3B336C(a2, type metadata accessor for SongCell);
                  v975 = v1787;
                  v976 = [v1787 name];
                  if (v976)
                  {
                    v977 = v976;
                    v978 = sub_AB92A0();
                    v980 = v979;
                  }

                  else
                  {
                    v978 = 0;
                    v980 = 0xE000000000000000;
                  }

                  sub_142740(v978, v980);
                  sub_142958(0, 0xE000000000000000);
                  v100 = v974;
                  sub_200878(1);
                  sub_20085C(1);

                  sub_143BBC(v48 & 1, v987);
                  sub_143184([v975 isFavorite]);
                }

                else
                {
                  v981 = sub_3B336C(a2, type metadata accessor for FeaturedPlaylistCell);
                  v975 = v1787;
                  v982 = [v1787 name];
                  if (v982)
                  {
                    v983 = v982;
                    v984 = sub_AB92A0();
                    v986 = v985;
                  }

                  else
                  {
                    v984 = 0;
                    v986 = 0;
                  }

                  v988 = sub_3D67E4(v984, v986);
                  v990 = v989;

                  v991 = [v975 shortEditorNotes];
                  if (v991)
                  {
                    v992 = v991;
                    v993 = sub_AB92A0();
                    v995 = v994;
                  }

                  else
                  {
                    v993 = 0;
                    v995 = 0xE000000000000000;
                  }

                  sub_F6268(v993, v995);
                  v100 = v981;
                  VerticalLockupCollectionViewCell.isDisabled.setter(v48 & 1);

                  *(&v1810 + 1) = sub_13C80(0, &unk_DE8EA0, MPModelPlaylist_ptr);
                  v1811 = &off_D17A48;
                  *&v1809 = v975;
                  sub_37C074(v975, 4);
                  sub_3B8C40(&v1809, &off_CEFDE8, sub_1785D0);

                  sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                }

                v219 = v975;
                v220 = 4;
                goto LABEL_945;
              }

              swift_unknownObjectRelease();
            }

            else
            {
              swift_unknownObjectRelease();
            }

            v61 = v1793;
          }

          else
          {
            v60 = v1793;

            swift_unknownObjectRelease();
          }
        }

        else
        {
          v59 = v1793;

          v3 = v1807;
        }

        v58 = *&v3[v24];
        if (!v58)
        {
LABEL_59:
          a2 = v1808;
          goto LABEL_60;
        }

LABEL_35:
        v62 = swift_dynamicCastClass();
        if (v62)
        {
          v63 = v62;
          v64 = v58;
          v65 = [v63 results];
          if (v65 && (v66 = v65, v67 = sub_AB3770().super.isa, v68 = [v66 itemAtIndexPath:v67], v66, v67, v68))
          {
            objc_opt_self();
            v69 = swift_dynamicCastObjCClass();
            if (v69)
            {
              v70 = v69;
              if (v1806)
              {
                if ([v1806 uniformCellType] == &dword_8)
                {
                  a2 = v1808;
                  v71 = sub_3B336C(v1808, type metadata accessor for SocialPersonVerticalCell);
                  v72 = [v70 titleText];
                  if (v72)
                  {
                    v73 = v72;
                    v74 = sub_AB92A0();
                    v76 = v75;
                  }

                  else
                  {
                    v74 = 0;
                    v76 = 0xE000000000000000;
                  }

                  v153 = [v70 subtitleText];
                  if (v153)
                  {
                    v154 = v153;
                    v155 = sub_AB92A0();
                    v157 = v156;
                  }

                  else
                  {
                    v155 = 0;
                    v157 = 0xE000000000000000;
                  }

                  sub_115DA8(v155, v157);
                  sub_115FF0(0);
                  sub_11604C(0);
                  sub_11607C(0);
                  v158 = [v70 buttonText];
                  if (v158)
                  {
                    v159 = v158;
                    v160 = sub_AB92A0();
                    v162 = v161;
                  }

                  else
                  {
                    v160 = 0;
                    v162 = 0xE000000000000000;
                  }

                  sub_115EE4(v160, v162);
                  v163 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v164 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v165 = swift_allocObject();
                  *(v165 + 16) = v163;
                  *(v165 + 24) = v164;

                  sub_1161FC(sub_3E12C0, v165);

                  v100 = v71;
                  VerticalLockupCollectionViewCell.isDisabled.setter(0);
                  swift_unknownObjectRelease();

                  goto LABEL_61;
                }
              }
            }

            swift_unknownObjectRelease();
          }

          else
          {
          }

          v3 = v1807;
        }

        v77 = *&v3[v24];
        if (v77)
        {
          v78 = swift_dynamicCastClass();
          if (v78)
          {
            v79 = v78;
            v3 = v77;
            v80 = [v79 results];
            a2 = v1808;
            if (!v80 || (v81 = v80, v82 = sub_AB3770().super.isa, v83 = [v81 itemAtIndexPath:v82], v81, v82, !v83))
            {

              goto LABEL_60;
            }

            objc_opt_self();
            v84 = swift_dynamicCastObjCClass();
            if (v84)
            {
              v85 = v84;
              if (!v1806)
              {
                goto LABEL_84;
              }

              if ([v1806 uniformCellType] == &dword_8 + 2)
              {
                v86 = *&v79[OBJC_IVAR____TtC16MusicApplication20JSShelfModelResponse_jsResults];
                v87 = sub_AB3770().super.isa;
                v88 = [v86 itemAtIndexPath:v87];

                type metadata accessor for JSPosterItem(0);
                v89 = swift_dynamicCastClass();
                if (v89)
                {
                  v90 = v89;
                  v91 = sub_3B336C(a2, type metadata accessor for PosterCell);
                  v92 = (*&stru_4C8.sectname[swift_isaMask & *v90])();
                  if ((v92 == 2) | v92 & 1)
                  {
                    v93 = 2;
                  }

                  else
                  {
                    v93 = 0;
                  }

                  LODWORD(v1797) = v93;
                  v94 = [v85 titleText];
                  if (v94)
                  {
                    v95 = v94;
                    v96 = sub_AB92A0();
                    v98 = v97;
                  }

                  else
                  {
                    v96 = 0;
                    v98 = 0xE000000000000000;
                  }

                  sub_37AC4(v96, v98);
                  v229 = [v85 subtitleText];
                  if (v229)
                  {
                    v230 = v229;
                    v231 = sub_AB92A0();
                    v233 = v232;
                  }

                  else
                  {
                    v231 = 0;
                    v233 = 0xE000000000000000;
                  }

                  v1799 = v91;
                  sub_37B14(v231, v233);
                  v234 = [v85 descriptionText];
                  v235 = 0xE000000000000000;
                  v1798 = v88;
                  if (v234)
                  {
                    v236 = v234;
                    v237 = sub_AB92A0();
                    v239 = v238;
                  }

                  else
                  {
                    v237 = 0;
                    v239 = 0xE000000000000000;
                  }

                  sub_37CA8(v237, v239);
                  v240 = *(&stru_1F8.size + (swift_isaMask & *v90));
                  v241 = swift_unknownObjectRetain();
                  v242 = v240(v241);
                  v244 = v243;
                  swift_unknownObjectRelease();
                  if (v244)
                  {
                    v245 = v242;
                  }

                  else
                  {
                    v245 = 0;
                  }

                  if (v244)
                  {
                    v246 = v244;
                  }

                  else
                  {
                    v246 = 0xE000000000000000;
                  }

                  sub_38508(v245, v246);
                  sub_39AC8(v1797);
                  v247 = [v85 descriptionText];
                  if (v247)
                  {
                    v248 = v247;
                    v249 = sub_AB92A0();
                    v235 = v250;
                  }

                  else
                  {
                    v249 = 0;
                  }

                  v251 = sub_37CA8(v249, v235);
                  v252 = (*(&stru_478.reloff + (swift_isaMask & *v90)))(v251);
                  v253 = sub_3863C(v252);
                  v254 = (*&stru_4C8.segname[(swift_isaMask & *v90) + 8])(v253);
                  sub_38720(v254);
                  v255 = (*(&stru_4C8.offset + (swift_isaMask & *v90)))();
                  v256 = sub_38A9C(v255);
                  v257 = *(&stru_4C8.reserved2 + (swift_isaMask & *v90));
                  v258 = v257(v256);
                  if (v258)
                  {
                    v259 = v258;
                    v260 = (*&stru_298.sectname[swift_isaMask & *v258])();
                    v262 = v261;
                  }

                  else
                  {
                    v260 = 0;
                    v262 = 0;
                  }

                  v263 = sub_38F48(v260, v262);
                  v264 = v257(v263);
                  if (v264)
                  {
                    v265 = v264;
                    v266 = (*&stru_298.segname[(swift_isaMask & *v264) + 8])();

                    v267 = v266 & 1;
                  }

                  else
                  {
                    v267 = 2;
                  }

                  a2 = v1808;
                  v100 = v1799;
                  sub_38F98(v267);
                  v268 = (*&stru_518.segname[swift_isaMask & *v90])();
                  sub_39C54(v268 & 1);
                  v269 = [v85 overlayTitleText];
                  if (v269)
                  {
                    v270 = v269;
                    v271 = sub_AB92A0();
                    v273 = v272;
                  }

                  else
                  {
                    v271 = 0;
                    v273 = 0xE000000000000000;
                  }

                  sub_37EC8(v271, v273);
                  v274 = [v85 overlaySubtitleText];
                  if (v274)
                  {
                    v275 = v274;
                    v276 = sub_AB92A0();
                    v278 = v277;
                  }

                  else
                  {
                    v276 = 0;
                    v278 = 0xE000000000000000;
                  }

                  sub_3838C(v276, v278);
                  v1811 = 0;
                  v1809 = 0u;
                  v1810 = 0u;
                  sub_3B8C40(&v1809, &off_CEFDE8, sub_17841C);

                  swift_unknownObjectRelease();
                  sub_12E1C(&v1809, &unk_DE9C60, &unk_AF8940);
                  swift_unknownObjectRelease();
                  goto LABEL_61;
                }

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                goto LABEL_60;
              }
            }

            swift_unknownObjectRelease();
            goto LABEL_60;
          }
        }

        goto LABEL_59;
      }

      v3 = v1807;
    }

    v58 = *&v3[v24];
    if (!v58)
    {
      goto LABEL_59;
    }

    goto LABEL_35;
  }

LABEL_25:
  v1806 = 0;
LABEL_60:
  v99 = sub_13C80(0, &qword_DFE230, UICollectionViewCell_ptr);
  v100 = UICollectionView.dequeue<A>(_:forItemAt:reuseIdentifier:)(v99, a2, 0xD000000000000022, 0x8000000000B62800, v99);
LABEL_61:
  type metadata accessor for HorizontalLockupCollectionViewCell(0);
  if (swift_dynamicCastClass())
  {
    [v100 music_setLayoutInsets:{-1.0, 0.0, -1.0, 0.0}];
  }

  swift_getObjectType();
  v101 = swift_conformsToProtocol2();
  v102 = v1807;
  if (v101 && v100)
  {
    v103 = v101;
    ObjectType = swift_getObjectType();
    v105 = v100;
    (*(v103 + 16))([v102 viewBackgroundColor], ObjectType, v103);
  }

  swift_getObjectType();
  v106 = swift_conformsToProtocol2();
  if (v106 && v100)
  {
    v107 = v106;
    v108 = swift_getObjectType();
    v1797 = v108;
    v1796 = *(v107 + 8);
    v109 = v1796;
    v1798 = (v107 + 8);
    v1795 = v100;
    v110 = a2;
    v111 = (v109)(v108, v107);
    v112 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v113 = swift_allocObject();
    *(v113 + 24) = v107;
    swift_unknownObjectWeakInit();
    v114 = v1801;
    v1794 = *(v1801 + 16);
    v115 = v1802;
    v1799 = v100;
    v116 = v1803;
    (v1794)(v1802, v110, v1803);
    v117 = (*(v114 + 80) + 32) & ~*(v114 + 80);
    v118 = swift_allocObject();
    *(v118 + 16) = v113;
    *(v118 + 24) = v112;
    (*(v114 + 32))(v118 + v117, v115, v116);
    v119 = (v111 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
    v120 = *(v111 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler);
    v121 = *(v111 + OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_imageDidChangeHandler + 8);
    *v119 = sub_3E0388;
    v119[1] = v118;

    v122 = v121;
    a2 = v1808;
    sub_17654(v120, v122);

    v123 = v116;
    v100 = v1799;
    (v1794)(v115, a2, v123);
    v124 = v1795;
    v125 = v1795;
    v126 = v1805;
    sub_74D38(v115, v124, v1805);
    v127 = (v1796)(v1797, v107);
    *(&v1810 + 1) = v1804;
    v1811 = sub_3E046C(&unk_E087E0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext, &unk_AF9750);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v1809);
    sub_3E0D84(v126, boxed_opaque_existential_0, type metadata accessor for CollectionViewCellArtworkComponentLoggingContext);
    v129 = OBJC_IVAR____TtCE16MusicApplicationV11MusicCoreUI7Artwork9Component_loggingContext;
    swift_beginAccess();
    sub_160B4(&v1809, v127 + v129, &unk_E03770, &unk_B105D0);
    swift_endAccess();

    v102 = v1807;
  }

  if (*&v102[qword_E03658])
  {

    sub_389E3C(a2, v100);
  }

  v130 = v100;
  v131 = [v102 viewBackgroundColor];
  [v130 setBackgroundColor:v131];
}