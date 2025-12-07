double sub_100BBF10C@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = v4[2];
  v6 = v4[4];
  v7 = v4[5];
  v18 = v4[3];
  v19 = v6;
  v20 = v7;
  v8 = v4[1];
  v15 = *v4;
  v16 = v8;
  v17 = v5;
  sub_100AFA074(&v15, v14);
  v9 = v18;
  v10 = v19;
  v11 = v16;
  a2[2] = v17;
  a2[3] = v9;
  v12 = v20;
  a2[4] = v10;
  a2[5] = v12;
  result = *&v15;
  *a2 = v15;
  a2[1] = v11;
  return result;
}

uint64_t sub_100BBF1C0(_OWORD *a1, void *a2, void (*a3)(void))
{
  v6 = v3 + *a2;
  swift_beginAccess();
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 72);
  v10 = *(v6 + 80);
  v11 = *(v6 + 88);
  v12 = a1[3];
  *(v6 + 32) = a1[2];
  *(v6 + 48) = v12;
  v13 = a1[5];
  *(v6 + 64) = a1[4];
  *(v6 + 80) = v13;
  v14 = a1[1];
  *v6 = *a1;
  *(v6 + 16) = v14;
  sub_100AFA074(a1, v16);

  sub_1001D2894(v9, v10, v11);
  a3();
  return sub_100AFA0D0(a1);
}

uint64_t (*NowPlaying.TrackTitleStackView.subtitleAttributes.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100BBF2E4;
}

uint64_t sub_100BBF2FC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

id sub_100BBF340()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v2 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  }

  else
  {
    [v0 bounds];
    v8 = [objc_allocWithZone(UIView) initWithFrame:{v4, v5, v6, v7}];
    v9 = [objc_opt_self() clearColor];
    [v8 setBackgroundColor:v9];

    [v0 addSubview:v8];
    v10 = *&v0[v1];
    *&v0[v1] = v8;
    v3 = v8;

    v2 = 0;
  }

  v11 = v2;
  return v3;
}

Swift::Void __swiftcall NowPlaying.TrackTitleStackView.layoutSubviews()()
{
  v1 = v0;
  v2 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v85.receiver = v0;
  v85.super_class = v2;
  objc_msgSendSuper2(&v85, "layoutSubviews");
  v3 = sub_100BC11E8();
  v4 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 3);
  v86[2] = *(v4 + 2);
  v86[3] = v5;
  v6 = *(v4 + 5);
  v86[4] = *(v4 + 4);
  v86[5] = v6;
  v7 = *(v4 + 1);
  v86[0] = *v4;
  v86[1] = v7;
  if (v7 == 1)
  {

    v8 = 0.0;
  }

  else
  {
    sub_100AFA074(v86, v79);
    v87.origin.x = 0.0;
    v87.origin.y = 0.0;
    v87.size.width = 0.0;
    v87.size.height = 0.0;
    if (CGRectGetHeight(v87) <= 0.0 || (v88.origin.x = 0.0, v88.origin.y = 0.0, v88.size.width = 0.0, v88.size.height = 0.0, CGRectGetHeight(v88) == 1.79769313e308))
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v3[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v10 = v9;
    UIEdgeInsets.vertical.getter();
    v8 = v10 + v11;
    if (v10 + v11 > 0.0)
    {
      [*&v86[0] ascender];
      v8 = v8 + v12;
    }

    if (v8 <= 0.0)
    {
      sub_100AFA0D0(v86);
    }

    else
    {
      [*&v86[0] descender];
      v14 = v13;
      sub_100AFA0D0(v86);

      v8 = v8 - v14;
    }
  }

  v15 = sub_100BC1570();
  v16 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v17 = *(v16 + 3);
  v81 = *(v16 + 2);
  v82 = v17;
  v18 = *(v16 + 5);
  v83 = *(v16 + 4);
  v84 = v18;
  v19 = *(v16 + 1);
  *v79 = *v16;
  v80 = v19;
  if (v19)
  {

    v20 = 0.0;
  }

  else
  {
    sub_100AFA074(v79, v73);
    v89.origin.x = 0.0;
    v89.origin.y = 0.0;
    v89.size.width = 0.0;
    v89.size.height = 0.0;
    if (CGRectGetHeight(v89) <= 0.0 || (v90.origin.x = 0.0, v90.origin.y = 0.0, v90.size.width = 0.0, v90.size.height = 0.0, CGRectGetHeight(v90) == 1.79769313e308))
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v15[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    v22 = v21;
    UIEdgeInsets.vertical.getter();
    v20 = v22 + v23;
    if (v22 + v23 > 0.0)
    {
      [v79[0] ascender];
      v20 = v20 + v24;
    }

    if (v20 <= 0.0)
    {
      sub_100AFA0D0(v79);
    }

    else
    {
      [v79[0] descender];
      v26 = v25;
      sub_100AFA0D0(v79);

      v20 = v20 - v26;
    }
  }

  [v1 bounds];
  Width = CGRectGetWidth(v91);
  Height = v8 + v20;
  v29 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v30 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v30)
  {
    v31 = *(*v30 + 424);
    v32 = sub_100BC96F4(&qword_1011B69D8, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

    v31(v73, v1, v2, v32);

    if (v73[0])
    {
      v33 = v74;
      if (!v74)
      {

        goto LABEL_51;
      }

      v34 = *(&v74 + 1);
      v35 = *(v4 + 3);
      v75 = *(v4 + 2);
      v76 = v35;
      v36 = *(v4 + 5);
      v77 = *(v4 + 4);
      v78 = v36;
      v37 = *(v4 + 1);
      *v73 = *v4;
      v74 = v37;
      if (v37)
      {

        v38 = 0.0;
        if (!v34)
        {
          goto LABEL_49;
        }
      }

      else
      {
        sub_100BC7AB8(v33);
        sub_100AFA074(v73, v67);
        v92.origin.x = 0.0;
        v92.origin.y = 0.0;
        v92.size.width = 0.0;
        v92.size.height = 0.0;
        if (CGRectGetHeight(v92) <= 0.0 || (v93.origin.x = 0.0, v93.origin.y = 0.0, v93.size.width = 0.0, v93.size.height = 0.0, CGRectGetHeight(v93) == 1.79769313e308))
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v33 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v40 = v39;
        UIEdgeInsets.vertical.getter();
        v38 = v40 + v41;
        if (v40 + v41 > 0.0)
        {
          [v73[0] ascender];
          v38 = v38 + v42;
        }

        if (v38 <= 0.0)
        {
          sub_100AFA0D0(v73);
          if (!v34)
          {
            goto LABEL_49;
          }
        }

        else
        {
          [v73[0] descender];
          v44 = v43;
          sub_100AFA0D0(v73);
          v38 = v38 - v44;
          if (!v34)
          {
LABEL_49:
            v96.origin.x = 0.0;
            v96.origin.y = 0.0;
            v96.size.width = Width;
            v96.size.height = Height;
            Height = CGRectGetHeight(v96);

            sub_100BC7AFC(v33, v34);
            if (Height <= v38 + v20)
            {
              Height = v38 + v20;
            }

            goto LABEL_51;
          }
        }
      }

      v45 = *(v16 + 3);
      v69 = *(v16 + 2);
      v70 = v45;
      v46 = *(v16 + 5);
      v71 = *(v16 + 4);
      v72 = v46;
      v47 = *(v16 + 1);
      *v67 = *v16;
      v68 = v47;
      if (v47)
      {
        v20 = 0.0;
      }

      else
      {

        sub_100AFA074(v67, &v66);
        v94.origin.x = 0.0;
        v94.origin.y = 0.0;
        v94.size.width = 0.0;
        v94.size.height = 0.0;
        if (CGRectGetHeight(v94) <= 0.0 || (v95.origin.x = 0.0, v95.origin.y = 0.0, v95.size.width = 0.0, v95.size.height = 0.0, CGRectGetHeight(v95) == 1.79769313e308))
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
        }

        else
        {
          [*(v34 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{0.0, 0.0}];
        }

        v49 = v48;
        UIEdgeInsets.vertical.getter();
        v20 = v49 + v50;
        if (v49 + v50 > 0.0)
        {
          [v67[0] ascender];
          v20 = v20 + v51;
        }

        if (v20 <= 0.0)
        {
          sub_100AFA0D0(v67);
        }

        else
        {
          [v67[0] descender];
          v53 = v52;
          sub_100AFA0D0(v67);

          v20 = v20 - v53;
        }
      }

      goto LABEL_49;
    }
  }

LABEL_51:
  CGRect.centeringAlong(axes:in:)(0.0, 0.0, Width, Height);
  v54 = sub_100BBF340();
  *v73 = 0u;
  v74 = 0u;
  LOBYTE(v75) = 1;
  CGRect.applyingLayoutDirection(in:bounds:)();
  [v54 setFrame:?];

  v55 = *&v1[v29];
  if (v55)
  {

    [v1 bounds];
    sub_100BBFC88(v55, v56, v57, v58, v59);
  }

  else
  {
    v60 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
    v61 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];

    [v1 bounds];
    sub_100BC06D4(v60, v61, v62, v63, v64, v65, UIOffsetZero.horizontal, UIOffsetZero.vertical);
  }

  sub_100BC42A4();
}

void sub_100BBFC88(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  Gliss.Transition<>.outputs(in:)(&v79, a2, a3, a4, a5);
  v8 = v79;
  v9 = v80;
  v11 = v81;
  v10 = *&v82;
  v13 = v83;
  v12 = v84;
  v15 = v85;
  v14 = v86;
  v77 = v88;
  v78 = *&v87;
  v76 = v89;
  v65 = v91;
  v66 = v90;
  v63 = v93;
  v64 = v92;
  v61 = v95;
  v62 = v94;
  v59 = v97;
  v60 = v96;
  v49 = v99;
  v50 = v98;
  v51 = v100;
  v74 = v102;
  v75 = v101;
  v72 = v104;
  v73 = v103;
  v70 = v106;
  v71 = v105;
  v68 = v108;
  v69 = v107;
  v57 = v110;
  v58 = v109;
  v55 = v112;
  v56 = v111;
  v53 = v114;
  v54 = v113;
  v52 = v115;
  v67 = v116;
  v16 = *(*a1 + 424);
  v17 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v18 = sub_100BC96F4(&qword_1011B69D8, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v16(&v79, v6, v17, v18);
  v19 = *&v79;
  if (v79 != 0.0)
  {
    v21 = *&v80;
    v20 = *&v81;
    v22 = v82;

    sub_100BC7AB8(v20);
    [v6 bounds];
    sub_100BC06D4(v19, v21, v23, v24, v25, v26, v8, v9);
    v27 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v19 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v11];
    if (v21)
    {
      [*(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v11];
    }

    v28 = *(v19 + v27);
    v79 = v10;
    v80 = v13;
    v81 = v12;
    v82 = v15;
    v83 = *&v14;
    v84 = v78;
    v85 = v77;
    v86 = v76;
    v87 = v66;
    v88 = v65;
    v89 = v64;
    v90 = v63;
    v91 = v62;
    v92 = v61;
    v93 = v60;
    v94 = v59;
    [v28 setTransform3D:{&v79, *&v10, *&v13, *&v12, v15, v14}];
    if (v21)
    {
      v29 = *(v21 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v79 = v44;
      v80 = v45;
      v81 = v46;
      v82 = v47;
      v83 = v48;
      v84 = v78;
      v85 = v77;
      v86 = v76;
      v87 = v66;
      v88 = v65;
      v89 = v64;
      v90 = v63;
      v91 = v62;
      v92 = v61;
      v93 = v60;
      v94 = v59;
      [v29 setTransform3D:&v79];

      sub_100BC7AB8(v20);
      sub_100BC9D8C(v19, v21, v20);

      v30 = sub_100BC7AFC(v20, v22);
      if (!v20)
      {
        v31 = v19;
        v32 = v21;
LABEL_14:
        v42 = 0;
        v43 = v22;
LABEL_15:
        sub_100BC9DEC(v31, v32, v42, v43);
        return;
      }
    }

    else
    {

      sub_100BC7AB8(v20);
      sub_100BC9D8C(v19, 0, v20);

      v30 = sub_100BC7AFC(v20, v22);
      if (!v20)
      {
        v31 = v19;
        v32 = 0;
        goto LABEL_14;
      }
    }

    [v6 bounds];
    sub_100BC06D4(v20, v22, v33, v34, v35, v36, v50, v49);
    v37 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
    [*(v20 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v51];
    v38 = v75;
    if (v22)
    {
      [*(v22 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:v51];
      v38 = v75;
    }

    v39 = *(v20 + v37);
    v79 = v38;
    v80 = v74;
    v81 = v73;
    v82 = v72;
    v83 = v71;
    v84 = v70;
    v85 = v69;
    v86 = v68;
    v87 = v58;
    v88 = v57;
    v89 = v56;
    v90 = v55;
    v91 = v54;
    v92 = v53;
    v93 = v52;
    v94 = v67;
    v40 = v38;
    [v39 setTransform3D:&v79];
    if (v22)
    {
      v41 = *(v22 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v79 = v40;
      v80 = v74;
      v81 = v73;
      v82 = v72;
      v83 = v71;
      v84 = v70;
      v85 = v69;
      v86 = v68;
      v87 = v58;
      v88 = v57;
      v89 = v56;
      v90 = v55;
      v91 = v54;
      v92 = v53;
      v93 = v52;
      v94 = v67;
      [v41 setTransform3D:&v79];
      sub_100BC9DEC(v19, v21, v20, v22);

      return;
    }

    v31 = v19;
    v32 = v21;
    v42 = v20;
    v43 = 0;
    goto LABEL_15;
  }
}

__n128 Gliss.Transition<>.outputs(in:)@<Q0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  sub_10010FC20(&qword_1011B69E0, &qword_100F07878);
  v11 = __chkstk_darwin();
  v13 = &v56 - v12;
  v14 = *(*v5 + 232);
  v15 = v14(v11);
  v16 = (v14)();
  if (v16 == 2)
  {
    v17 = 1.0 - v15;
    horizontal = UIOffsetZero.horizontal;
    vertical = UIOffsetZero.vertical;
  }

  else
  {
    v20 = v16;
    v76.origin.x = a2;
    v76.origin.y = a3;
    v76.size.width = a4;
    v76.size.height = a5;
    v21 = v15 * CGRectGetWidth(v76);
    v17 = 1.0;
    vertical = 0.0;
    if (v20)
    {
      horizontal = v21;
    }

    else
    {
      horizontal = -v21;
    }
  }

  v22 = *&CATransform3DIdentity.m41;
  v71 = *&CATransform3DIdentity.m43;
  v70 = v22;
  v23 = *&CATransform3DIdentity.m31;
  v69 = *&CATransform3DIdentity.m33;
  v68 = v23;
  v24 = *&CATransform3DIdentity.m21;
  v67 = *&CATransform3DIdentity.m23;
  v66 = v24;
  v25 = *&CATransform3DIdentity.m11;
  v65 = *&CATransform3DIdentity.m13;
  v64 = v25;
  v26 = (*v5 + 432);
  v27 = *v26;
  v28 = (*v26)();
  v29 = v64;
  v30 = v65;
  v31 = v66;
  v32 = v67;
  v33 = v68;
  v34 = v69;
  v35 = v70;
  v36 = v71;
  if (v73 != 2)
  {
    (*(*v5 + 208))(v28, v64, v65, v66, v67, v68, v69, v70, v71);
    v37 = type metadata accessor for NowPlaying.TrackMetadata(0);
    v38 = (*(*(v37 - 8) + 48))(v13, 1, v37);
    v28 = sub_1000095E8(v13, &qword_1011B69E0, &qword_100F07878);
    v29 = v64;
    v30 = v65;
    v31 = v66;
    v32 = v67;
    v33 = v68;
    v34 = v69;
    v35 = v70;
    v36 = v71;
    if (v38 == 1)
    {
      v28 = CATransform3DMakeScale(&v72, v15 * 0.1 + 1.0, v15 * 0.1 + 1.0, 1.0);
      v30 = *&v72.m13;
      v29 = *&v72.m11;
      v32 = *&v72.m23;
      v31 = *&v72.m21;
      v34 = *&v72.m33;
      v33 = *&v72.m31;
      v35 = *&v72.m41;
      v36 = *&v72.m43;
    }
  }

  v56 = v36;
  v57 = v35;
  v58 = v34;
  v59 = v33;
  v60 = v32;
  v61 = v31;
  v62 = v30;
  v63 = v29;
  v39 = (v14)(v28);
  if (v39 == 2)
  {
    v41 = UIOffsetZero.horizontal;
    v40 = UIOffsetZero.vertical;
    v42 = v15;
  }

  else
  {
    v43 = v39;
    v77.origin.x = a2;
    v77.origin.y = a3;
    v77.size.width = a4;
    v77.size.height = a5;
    Width = CGRectGetWidth(v77);
    v78.size.height = a5;
    v45 = horizontal;
    v46 = vertical;
    v47 = v17;
    v48 = Width;
    v78.origin.x = a2;
    v78.origin.y = a3;
    v78.size.width = a4;
    v49 = v15 * CGRectGetWidth(v78);
    v50 = v49 - v48;
    v42 = 1.0;
    v40 = 0.0;
    v51 = v48 - v49;
    v17 = v47;
    vertical = v46;
    horizontal = v45;
    if (v43)
    {
      v41 = v50;
    }

    else
    {
      v41 = v51;
    }
  }

  (v27)(&v74);
  if (v75 != 2 && (v75 & 0x100) != 0)
  {
    CATransform3DMakeScale(&v72, (v15 + -1.0) * 0.1 + 1.0, (v15 + -1.0) * 0.1 + 1.0, 1.0);
    v64 = *&v72.m11;
    v65 = *&v72.m13;
    v66 = *&v72.m21;
    v67 = *&v72.m23;
    v68 = *&v72.m31;
    v69 = *&v72.m33;
    v70 = *&v72.m41;
    v71 = *&v72.m43;
  }

  *a1 = horizontal;
  *(a1 + 8) = vertical;
  *(a1 + 16) = v17;
  *(a1 + 40) = v62;
  *(a1 + 24) = v63;
  *(a1 + 72) = v60;
  *(a1 + 56) = v61;
  *(a1 + 104) = v58;
  *(a1 + 88) = v59;
  *(a1 + 136) = v56;
  *(a1 + 120) = v57;
  *(a1 + 152) = v41;
  *(a1 + 160) = v40;
  *(a1 + 168) = v42;
  v52 = v65;
  *(a1 + 176) = v64;
  *(a1 + 192) = v52;
  v53 = v67;
  *(a1 + 208) = v66;
  *(a1 + 224) = v53;
  v54 = v69;
  *(a1 + 240) = v68;
  *(a1 + 256) = v54;
  result = v71;
  *(a1 + 272) = v70;
  *(a1 + 288) = result;
  return result;
}

void sub_100BC06D4(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8)
{
  v9 = v8;
  v16 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets + 16);
  v17 = &v8[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v18 = *(v17 + 3);
  v88[2] = *(v17 + 2);
  v88[3] = v18;
  v19 = *(v17 + 5);
  v88[4] = *(v17 + 4);
  v88[5] = v19;
  v20 = *(v17 + 1);
  v88[0] = *v17;
  v88[1] = v20;
  if (v20 == 1)
  {
    v76 = 0.0;
  }

  else
  {
    v21 = v16;
    sub_100AFA074(v88, &v82);
    v89.origin.x = a3;
    v89.origin.y = a4;
    v89.size.width = a5;
    v89.size.height = a6;
    if (CGRectGetHeight(v89) <= 0.0 || (v90.origin.x = a3, v90.origin.y = a4, v90.size.width = a5, v90.size.height = a6, CGRectGetHeight(v90) == 1.79769313e308))
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
    }

    else
    {
      [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
    }

    v23 = v22;
    UIEdgeInsets.vertical.getter();
    v25 = v24;
    sub_100AFA0D0(v88);
    v76 = v23 + v25;
    v16 = v21;
  }

  v91.origin.x = a3;
  v91.origin.y = a4;
  v91.size.width = a5;
  v91.size.height = a6;
  Width = CGRectGetWidth(v91);
  if (a2)
  {
    top = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
    v27 = &v9[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v28 = *(v27 + 2);
    v29 = *(v27 + 3);
    v30 = *v27;
    v83 = *(v27 + 1);
    v84 = v28;
    v31 = *(v27 + 4);
    v32 = *(v27 + 5);
    v85 = v29;
    v86 = v31;
    v87 = v32;
    v82 = v30;
    LOBYTE(v27) = v83;

    v33 = 0.0;
    if ((v27 & 1) == 0)
    {
      rect = v16;
      sub_100AFA074(&v82, v81);
      v92.origin.x = a3;
      v92.origin.y = a4;
      v92.size.width = a5;
      v92.size.height = a6;
      if (CGRectGetHeight(v92) <= 0.0 || (v93.origin.x = a3, v93.origin.y = a4, v93.size.width = a5, v93.size.height = a6, CGRectGetHeight(v93) == 1.79769313e308))
      {
        v34 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) intrinsicContentSize];
      }

      else
      {
        v34 = top;
        [*(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) sizeThatFits:{a5, a6}];
      }

      v36 = v35;
      UIEdgeInsets.vertical.getter();
      v38 = v37;
      sub_100AFA0D0(&v82);
      v33 = v36 + v38;
      v16 = rect;
      top = v34;
    }

    recta = v33;
    v94.origin.x = a3;
    v94.origin.y = a4;
    v94.size.width = a5;
    v94.size.height = a6;
    v78 = CGRectGetWidth(v94);

    v39 = 0.0;
    v77 = 0.0;
  }

  else
  {
    v40 = &v9[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    if (v40[16])
    {
      top = UIEdgeInsetsZero.top;
      v78 = 0.0;
      recta = 0.0;
      v77 = 0.0;
      v39 = 0.0;
    }

    else
    {
      top = *&sub_100BC1570()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];

      v41 = *(*&v9[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
      v77 = UIView.untransformedFrame.getter();
      v78 = v42;
      v39 = v43;
      recta = v44;
    }
  }

  v45 = v16 + top;
  v95.origin.x = a3;
  v95.origin.y = a4;
  v95.size.width = a5;
  v95.size.height = a6;
  v46 = CGRectGetWidth(v95);
  v96.origin.x = 0.0;
  v96.origin.y = 0.0;
  v96.size.width = Width;
  v96.size.height = v76;
  Height = CGRectGetHeight(v96);
  v97.origin.x = v77;
  v97.size.width = v78;
  v97.origin.y = v39;
  v97.size.height = recta;
  v48 = CGRectGetHeight(v97);
  CGRect.centeringAlong(axes:in:)(0.0, 0.0, v46, Height + v48 - v45);
  v82 = 0u;
  v83 = 0u;
  LOBYTE(v84) = 1;
  CGRect.applyingLayoutDirection(in:bounds:)();
  CGRect.offset(by:)();
  MinY = CGRectGetMinY(v98);
  v99.origin.x = 0.0;
  v99.origin.y = MinY;
  v99.size.width = Width;
  v99.size.height = v76;
  MaxY = CGRectGetMaxY(v99);
  v51 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v52 = sub_100BBF340();
  [v9 convertRect:v52 toCoordinateSpace:{0.0, MinY, Width, v76}];

  v53 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView;
  v54 = *&v9[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView];
  CGRect.applyingLayoutDirection(in:bounds:)();

  CGRect.offset(by:)();
  UIView.untransformedFrame.setter(v55, v56, v57, v58);
  if (a2)
  {
    [v9 convertRect:*&v9[v53] toCoordinateSpace:{v77, MaxY - v45, v78, recta}];
    v59 = *&v9[v53];
    CGRect.applyingLayoutDirection(in:bounds:)();

    CGRect.offset(by:)();
    UIView.untransformedFrame.setter(v60, v61, v62, v63);
  }

  v64 = [v51 superview];
  if (!v64 || (v65 = v64, v66 = *&v9[v53], sub_100009F78(0, &qword_1011B7C10, UIView_ptr), v67 = v66, v68 = static NSObject.== infix(_:_:)(), v65, v67, (v68 & 1) == 0))
  {
    [*&v9[v53] addSubview:v51];
  }

  if (a2)
  {
    v69 = *(a2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

    v70 = [v69 superview];
    if (!v70 || (v71 = v70, v72 = *&v9[v53], sub_100009F78(0, &qword_1011B7C10, UIView_ptr), v73 = v72, v74 = static NSObject.== infix(_:_:)(), v71, v73, (v74 & 1) == 0))
    {
      [*&v9[v53] addSubview:v69];
    }
  }
}

void NowPlaying.TrackTitleStackView.intrinsicContentSize.getter(uint64_t a1)
{
  v2 = sub_100BC11E8();
  v3 = (v1 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  swift_beginAccess();
  v4 = v3[3];
  v21[2] = v3[2];
  v21[3] = v4;
  v5 = v3[5];
  v21[4] = v3[4];
  v21[5] = v5;
  v6 = v3[1];
  v21[0] = *v3;
  v21[1] = v6;
  if ((v6 & 1) == 0)
  {
    sub_100AFA074(v21, &v15);
    v22.origin.x = 0.0;
    v22.origin.y = 0.0;
    v22.size.width = 0.0;
    v22.size.height = 0.0;
    if (CGRectGetHeight(v22) <= 0.0 || (v23.origin.x = 0.0, v23.origin.y = 0.0, v23.size.width = 0.0, v23.size.height = 0.0, CGRectGetHeight(v23) == 1.79769313e308))
    {
      [*&v2[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v2[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    sub_100AFA0D0(v21);
  }

  v7 = sub_100BC1570();
  v8 = (v1 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  swift_beginAccess();
  v9 = v8[2];
  v10 = v8[3];
  v11 = *v8;
  v16 = v8[1];
  v17 = v9;
  v12 = v8[4];
  v13 = v8[5];
  v18 = v10;
  v19 = v12;
  v20 = v13;
  v15 = v11;
  if ((v16 & 1) == 0)
  {
    sub_100AFA074(&v15, v14);
    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = 0.0;
    v24.size.height = 0.0;
    if (CGRectGetHeight(v24) <= 0.0 || (v25.origin.x = 0.0, v25.origin.y = 0.0, v25.size.width = 0.0, v25.size.height = 0.0, CGRectGetHeight(v25) == 1.79769313e308))
    {
      [*&v7[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] intrinsicContentSize];
    }

    else
    {
      [*&v7[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] sizeThatFits:{0.0, 0.0}];
    }

    sub_100AFA0D0(&v15);
  }
}

id sub_100BC1024(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = sub_100BC11E8();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v24[4] = *(v4 + 4);
  v24[5] = v5;
  v6 = *(v4 + 3);
  v24[2] = *(v4 + 2);
  v24[3] = v6;
  v7 = *(v4 + 1);
  v24[0] = *v4;
  v24[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v23[4] = *(v3 + 5);
  v23[5] = v12;
  v23[2] = v10;
  v23[3] = v11;
  v23[0] = v8;
  v23[1] = v9;
  v13 = *(v3 + 2);
  v25[0] = *(v3 + 1);
  v25[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v25[4] = *(v3 + 5);
  v25[5] = v16;
  v25[2] = v14;
  v25[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  sub_100AFA074(v24, v22);
  sub_100AFA074(v24, v22);
  sub_100AFA074(v23, v22);
  sub_100AFA0D0(v25);
  sub_100BC51C4(v23);
  sub_100AFA0D0(v23);
  sub_100AFA0D0(v24);

  v17 = *(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v18 = *&sub_100BC1570()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:v18];

  v19 = *(v4 + 40);
  v22[0] = *(v4 + 24);
  v22[1] = v19;
  v22[2] = *(v4 + 56);

  sub_100BC4074(v20, v22);

  return [v2 setNeedsLayout];
}

char *sub_100BC11E8()
{
  sub_10010FC20(&qword_1011B69D0, &qword_100F07870);
  __chkstk_darwin();
  v2 = &v14[-v1];
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel])
  {
    v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  }

  else
  {
    v5 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
    sub_100BC176C(&v5[*(v6 + 24)], v2, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v7 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
    v8 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v9 = *(v8 + 3);
    v15[2] = *(v8 + 2);
    v15[3] = v9;
    v10 = *(v8 + 5);
    v15[4] = *(v8 + 4);
    v15[5] = v10;
    v11 = *(v8 + 1);
    v15[0] = *v8;
    v15[1] = v11;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    sub_100AFA074(v15, v14);
    v12 = v0;
    v4 = sub_100BC81B8(v2, v15, v12);

    sub_100AFA0D0(v15);
    *&v0[v3] = v4;
  }

  return v4;
}

id sub_100BC13C4(uint64_t a1)
{
  v2 = v1;
  [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) removeFromSuperview];
  v3 = sub_100BC1570();
  v4 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v5 = *(v4 + 5);
  v23[4] = *(v4 + 4);
  v23[5] = v5;
  v6 = *(v4 + 3);
  v23[2] = *(v4 + 2);
  v23[3] = v6;
  v7 = *(v4 + 1);
  v23[0] = *v4;
  v23[1] = v7;
  v8 = *(v3 + 1);
  v9 = *(v3 + 2);
  v10 = *(v3 + 3);
  v11 = *(v3 + 4);
  v12 = *(v3 + 6);
  v22[4] = *(v3 + 5);
  v22[5] = v12;
  v22[2] = v10;
  v22[3] = v11;
  v22[0] = v8;
  v22[1] = v9;
  v13 = *(v3 + 2);
  v24[0] = *(v3 + 1);
  v24[1] = v13;
  v14 = *(v3 + 3);
  v15 = *(v3 + 4);
  v16 = *(v3 + 6);
  v24[4] = *(v3 + 5);
  v24[5] = v16;
  v24[2] = v14;
  v24[3] = v15;
  memmove(v3 + 16, v4, 0x60uLL);
  sub_100AFA074(v23, v21);
  sub_100AFA074(v23, v21);
  sub_100AFA074(v22, v21);
  sub_100AFA0D0(v24);
  sub_100BC51C4(v22);
  sub_100AFA0D0(v22);
  sub_100AFA0D0(v23);

  v17 = *&sub_100BC11E8()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  [v17 addCoordinatedMarqueeView:*(*&v2[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view)];

  v18 = *(v4 + 40);
  v21[0] = *(v4 + 24);
  v21[1] = v18;
  v21[2] = *(v4 + 56);

  sub_100BC4074(v19, v21);

  return [v2 setNeedsLayout];
}

char *sub_100BC1570()
{
  sub_10010FC20(&qword_1011B69D0, &qword_100F07870);
  __chkstk_darwin();
  v2 = &v13[-v1];
  v3 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel])
  {
    v4 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  }

  else
  {
    v5 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v6 = type metadata accessor for NowPlaying.TrackMetadata(0);
    sub_1000089F8(&v5[*(v6 + 28)], v2, &qword_1011B69D0, &qword_100F07870);
    v7 = &v0[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v8 = *(v7 + 3);
    v14[2] = *(v7 + 2);
    v14[3] = v8;
    v9 = *(v7 + 5);
    v14[4] = *(v7 + 4);
    v14[5] = v9;
    v10 = *(v7 + 1);
    v14[0] = *v7;
    v14[1] = v10;
    type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
    swift_allocObject();
    sub_100AFA074(v14, v13);
    v11 = v0;
    v4 = sub_100BC81B8(v2, v14, v11);

    sub_100AFA0D0(v14);
    *&v0[v3] = v4;
  }

  return v4;
}

uint64_t sub_100BC1708(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100BC176C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100BC17D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011B69D0, &qword_100F07870);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

double NowPlaying.TrackTitleStackView.transitionWillBegin(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition] = a1;

  v5 = sub_100BBF340();
  [v5 setClipsToBounds:*&v2[v4] != 0];

  [v2 setNeedsLayout];
  v6 = *(*a1 + 424);
  v7 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v8 = sub_100BC96F4(&qword_1011B69D8, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v6(&v24, v2, v7, v8);
  if (v24)
  {
    v10 = v25;
    v11 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
    swift_beginAccess();
    v12 = *(v11 + 40);
    v24 = *(v11 + 24);
    v25 = v12;
    v26 = *(v11 + 56);

    sub_100BC4074(v13, &v24);

    v14 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v15 = *(v14 + 40);
    v23[0] = *(v14 + 24);
    v23[1] = v15;
    v23[2] = *(v14 + 56);

    sub_100BC4074(v16, v23);

    v17 = *(v11 + 40);
    v22[0] = *(v11 + 24);
    v22[1] = v17;
    v22[2] = *(v11 + 56);
    if (v10)
    {

      sub_100BC4074(v18, v22);

      v19 = *(&v10 + 1);
    }

    else
    {
      sub_100BC4074(0, v22);
      v19 = 0;
    }

    v20 = *(v14 + 40);
    v21[0] = *(v14 + 24);
    v21[1] = v20;
    v21[2] = *(v14 + 56);
    sub_100BC4074(v19, v21);

    return sub_100BC7AFC(v10, *(&v10 + 1));
  }

  return result;
}

double NowPlaying.TrackTitleStackView.transitionDidEnd(_:)(char *a1)
{
  v2 = v1;
  v198 = a1;
  v195 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v189 = *(v195 - 8);
  __chkstk_darwin();
  v171 = &v158 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_10010FC20(&qword_1011B69E8, &qword_100F07880);
  __chkstk_darwin();
  v175 = &v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v190 = &v158 - v5;
  sub_10010FC20(&qword_1011B69D0, &qword_100F07870);
  __chkstk_darwin();
  v166 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v165 = &v158 - v7;
  __chkstk_darwin();
  v167 = &v158 - v8;
  __chkstk_darwin();
  v177 = &v158 - v9;
  __chkstk_darwin();
  v182 = &v158 - v10;
  __chkstk_darwin();
  v172 = &v158 - v11;
  __chkstk_darwin();
  v187 = &v158 - v12;
  __chkstk_darwin();
  v191 = &v158 - v13;
  v196 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v192 = *(v196 - 8);
  __chkstk_darwin();
  v184 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_10010FC20(&qword_1011B69F0, &qword_100F07888);
  __chkstk_darwin();
  v174 = &v158 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v173 = &v158 - v16;
  sub_10010FC20(&qword_1011B69E0, &qword_100F07878);
  __chkstk_darwin();
  v168 = &v158 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v183 = &v158 - v18;
  __chkstk_darwin();
  v170 = &v158 - v19;
  __chkstk_darwin();
  v180 = &v158 - v20;
  __chkstk_darwin();
  v181 = &v158 - v21;
  __chkstk_darwin();
  v169 = &v158 - v22;
  __chkstk_darwin();
  v178 = &v158 - v23;
  __chkstk_darwin();
  v179 = &v158 - v24;
  v25 = type metadata accessor for UUID();
  v26 = *(v25 - 8);
  __chkstk_darwin();
  v176 = &v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10010FC20(&qword_1011B69F8, &qword_100F07890);
  __chkstk_darwin();
  v194 = &v158 - v29;
  sub_10010FC20(&qword_1011B6A00, &qword_100F07898);
  __chkstk_darwin();
  v188 = &v158 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v32 = &v158 - v31;
  v34 = __chkstk_darwin();
  v35 = &v158 - v33;
  v197 = v2;
  v193 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v36 = *&v2[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  if (v36)
  {
    v37 = *(v26 + 16);
    v37(&v158 - v33, v36 + direct field offset for Gliss.Transition.id, v25, v34);
    v38 = *(v26 + 56);
    v38(v35, 0, 1, v25);
  }

  else
  {
    v38 = *(v26 + 56);
    (v38)(&v158 - v33, 1, 1, v25, v34);
    v37 = *(v26 + 16);
  }

  (v37)(v32, &v198[direct field offset for Gliss.Transition.id], v25);
  v38(v32, 0, 1, v25);
  v39 = *(v28 + 48);
  v40 = v194;
  sub_1000089F8(v35, v194, &qword_1011B6A00, &qword_100F07898);
  v41 = v40;
  sub_1000089F8(v32, v40 + v39, &qword_1011B6A00, &qword_100F07898);
  v42 = *(v26 + 48);
  if (v42(v40, 1, v25) == 1)
  {
    sub_1000095E8(v32, &qword_1011B6A00, &qword_100F07898);
    sub_1000095E8(v35, &qword_1011B6A00, &qword_100F07898);
    v43 = v42(v40 + v39, 1, v25);
    v44 = v196;
    if (v43 == 1)
    {
      sub_1000095E8(v40, &qword_1011B6A00, &qword_100F07898);
      v45 = v197;
LABEL_11:
      v51 = v193;
      *&v45[v193] = 0;

      v52 = sub_100BBF340();
      [v52 setClipsToBounds:*&v45[v51] != 0];

      v47 = 1;
      goto LABEL_13;
    }

LABEL_9:
    sub_1000095E8(v40, &qword_1011B69F8, &qword_100F07890);
    v47 = 0;
    v45 = v197;
    goto LABEL_13;
  }

  v46 = v188;
  sub_1000089F8(v40, v188, &qword_1011B6A00, &qword_100F07898);
  if (v42(v40 + v39, 1, v25) == 1)
  {
    sub_1000095E8(v32, &qword_1011B6A00, &qword_100F07898);
    sub_1000095E8(v35, &qword_1011B6A00, &qword_100F07898);
    (*(v26 + 8))(v46, v25);
    v44 = v196;
    goto LABEL_9;
  }

  v48 = v176;
  (*(v26 + 32))(v176, v40 + v39, v25);
  sub_100BC96F4(&qword_1011B6A08, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v49 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50 = *(v26 + 8);
  v50(v48, v25);
  sub_1000095E8(v32, &qword_1011B6A00, &qword_100F07898);
  sub_1000095E8(v35, &qword_1011B6A00, &qword_100F07898);
  v50(v46, v25);
  sub_1000095E8(v41, &qword_1011B6A00, &qword_100F07898);
  v45 = v197;
  v44 = v196;
  if (v49)
  {
    goto LABEL_11;
  }

  v47 = 0;
LABEL_13:
  v53 = sub_100BC11E8();
  v54 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v55 = *(v54 + 40);
  v204[0] = *(v54 + 24);
  v204[1] = v55;
  v204[2] = *(v54 + 56);
  sub_100BC4074(v53, v204);

  v56 = sub_100BC1570();
  v57 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
  swift_beginAccess();
  v58 = *(v57 + 40);
  v203[0] = *(v57 + 24);
  v203[1] = v58;
  v203[2] = *(v57 + 56);
  sub_100BC4074(v56, v203);

  v59 = *(*v198 + 424);
  v60 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  v61 = sub_100BC96F4(&qword_1011B69D8, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);
  v59(&v199, v45, v60, v61);
  v63 = v195;
  if (!v199)
  {
    return result;
  }

  v64 = v200;
  v66 = v201;
  v65 = v202;
  if (!v201)
  {

    goto LABEL_67;
  }

  v194 = v200;
  v176 = v202;
  v188 = v199;
  if ((v47 & 1) == 0)
  {
    sub_100BC7AB8(v201);

    v80.n128_f64[0] = sub_100BC7AB8(v66);
    v81 = v189;
    v82 = v191;
    goto LABEL_32;
  }

  v67 = *(*v198 + 208);
  v68 = *v198 + 208;
  sub_100BC7AB8(v201);

  v69 = sub_100BC7AB8(v66);
  v70 = v179;
  v162 = v67;
  v161 = v68;
  v67(v69);
  v71 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v160 = v71;
  v72 = v44;
  v73 = v178;
  sub_100BC176C(&v45[v71], v178, type metadata accessor for NowPlaying.TrackMetadata);
  v74 = v192;
  v159 = *(v192 + 56);
  v159(v73, 0, 1, v72);
  v75 = *(v185 + 48);
  v76 = v173;
  sub_1000089F8(v70, v173, &qword_1011B69E0, &qword_100F07878);
  sub_1000089F8(v73, v76 + v75, &qword_1011B69E0, &qword_100F07878);
  v77 = *(v74 + 48);
  v78 = v77(v76, 1, v72);
  v164 = v66;
  v163 = v77;
  if (v78 != 1)
  {
    v83 = v169;
    sub_1000089F8(v76, v169, &qword_1011B69E0, &qword_100F07878);
    if (v77(v76 + v75, 1, v72) != 1)
    {
      v79 = v72;
      v86 = v184;
      sub_100A21CC4(v76 + v75, v184, type metadata accessor for NowPlaying.TrackMetadata);
      v87 = static NowPlaying.TrackMetadata.== infix(_:_:)();
      sub_100A21D2C(v86, type metadata accessor for NowPlaying.TrackMetadata);
      sub_1000095E8(v178, &qword_1011B69E0, &qword_100F07878);
      sub_1000095E8(v179, &qword_1011B69E0, &qword_100F07878);
      sub_100A21D2C(v83, type metadata accessor for NowPlaying.TrackMetadata);
      v84 = sub_1000095E8(v76, &qword_1011B69E0, &qword_100F07878);
      v85 = v197;
      if ((v87 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    sub_1000095E8(v178, &qword_1011B69E0, &qword_100F07878);
    sub_1000095E8(v179, &qword_1011B69E0, &qword_100F07878);
    sub_100A21D2C(v83, type metadata accessor for NowPlaying.TrackMetadata);
LABEL_23:
    v79 = v72;
    v84 = sub_1000095E8(v76, &qword_1011B69F0, &qword_100F07888);
    v85 = v197;
    goto LABEL_26;
  }

  sub_1000095E8(v73, &qword_1011B69E0, &qword_100F07878);
  sub_1000095E8(v70, &qword_1011B69E0, &qword_100F07878);
  if (v77(v76 + v75, 1, v72) != 1)
  {
    goto LABEL_23;
  }

  v79 = v72;
  sub_1000095E8(v76, &qword_1011B69E0, &qword_100F07878);
LABEL_25:
  v88 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel;
  v89 = *&v197[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel];
  *&v197[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel] = v164;
  swift_retain_n();
  sub_100BC1024(v89);

  v85 = v197;

  v84 = [*(*&v85[v88] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setAlpha:1.0];
LABEL_26:
  v90 = v181;
  (v162)(v84);
  v91 = v180;
  sub_100BC176C(&v85[v160], v180, type metadata accessor for NowPlaying.TrackMetadata);
  v159(v91, 0, 1, v79);
  v92 = *(v185 + 48);
  v93 = v174;
  sub_1000089F8(v90, v174, &qword_1011B69E0, &qword_100F07878);
  sub_1000089F8(v91, v93 + v92, &qword_1011B69E0, &qword_100F07878);
  v94 = v163;
  v95 = v163(v93, 1, v79);
  v64 = v194;
  if (v95 == 1)
  {
    sub_1000095E8(v91, &qword_1011B69E0, &qword_100F07878);
    sub_1000095E8(v90, &qword_1011B69E0, &qword_100F07878);
    v96 = v94(v93 + v92, 1, v79);
    v97 = v93;
    v44 = v79;
    v66 = v164;
    v98 = v189;
    if (v96 == 1)
    {
      sub_1000095E8(v93, &qword_1011B69E0, &qword_100F07878);
      v45 = v197;
      goto LABEL_64;
    }

    goto LABEL_31;
  }

  v99 = v170;
  sub_1000089F8(v93, v170, &qword_1011B69E0, &qword_100F07878);
  v100 = v94(v93 + v92, 1, v79);
  v97 = v93;
  v44 = v79;
  v98 = v189;
  if (v100 == 1)
  {
    sub_1000095E8(v180, &qword_1011B69E0, &qword_100F07878);
    sub_1000095E8(v181, &qword_1011B69E0, &qword_100F07878);
    sub_100A21D2C(v99, type metadata accessor for NowPlaying.TrackMetadata);
    v66 = v164;
LABEL_31:
    sub_1000095E8(v97, &qword_1011B69F0, &qword_100F07888);
    v45 = v197;
    v63 = v195;
    v82 = v191;
    v81 = v98;
    goto LABEL_32;
  }

  v125 = v184;
  sub_100A21CC4(v93 + v92, v184, type metadata accessor for NowPlaying.TrackMetadata);
  LODWORD(v185) = static NowPlaying.TrackMetadata.== infix(_:_:)();
  sub_100A21D2C(v125, type metadata accessor for NowPlaying.TrackMetadata);
  sub_1000095E8(v180, &qword_1011B69E0, &qword_100F07878);
  sub_1000095E8(v181, &qword_1011B69E0, &qword_100F07878);
  sub_100A21D2C(v99, type metadata accessor for NowPlaying.TrackMetadata);
  v64 = v194;
  sub_1000095E8(v93, &qword_1011B69E0, &qword_100F07878);
  v45 = v197;
  v63 = v195;
  v66 = v164;
  v82 = v191;
  v81 = v98;
  if (v185)
  {
    goto LABEL_64;
  }

LABEL_32:
  v101 = v183;
  (*(*v198 + 208))(v80);
  v102 = *(v192 + 48);
  v192 += 48;
  v185 = v102;
  if (v102(v101, 1, v44) == 1)
  {
    sub_1000095E8(v101, &qword_1011B69E0, &qword_100F07878);
    (*(v81 + 56))(v82, 1, 1, v63);
  }

  else
  {
    sub_1000089F8(v101 + *(v44 + 28), v82, &qword_1011B69D0, &qword_100F07870);
    sub_100A21D2C(v101, type metadata accessor for NowPlaying.TrackMetadata);
  }

  v103 = *&v45[v193];
  if (v103)
  {
    v104 = *(*v103 + 184);
    v105 = v81;

    v107 = v184;
    v104(v106);

    v108 = v187;
    sub_1000089F8(v107 + *(v196 + 28), v187, &qword_1011B69D0, &qword_100F07870);
    sub_100A21D2C(v107, type metadata accessor for NowPlaying.TrackMetadata);
  }

  else
  {
    v108 = v187;
    (*(v81 + 56))(v187, 1, 1, v63);
    v105 = v81;
  }

  v109 = *(v186 + 48);
  v110 = v191;
  v111 = v190;
  sub_1000089F8(v191, v190, &qword_1011B69D0, &qword_100F07870);
  v112 = v111;
  sub_1000089F8(v108, v111 + v109, &qword_1011B69D0, &qword_100F07870);
  v113 = *(v105 + 48);
  if ((v113)(v111, 1, v63) == 1)
  {
    v198 = v113;
    sub_1000095E8(v108, &qword_1011B69D0, &qword_100F07870);
    v114 = v190;
    sub_1000095E8(v110, &qword_1011B69D0, &qword_100F07870);
    if ((v198)(v114 + v109, 1, v63) == 1)
    {
      sub_1000095E8(v114, &qword_1011B69D0, &qword_100F07870);
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v115 = v172;
  sub_1000089F8(v112, v172, &qword_1011B69D0, &qword_100F07870);
  if ((v113)(v112 + v109, 1, v63) == 1)
  {
    sub_1000095E8(v187, &qword_1011B69D0, &qword_100F07870);
    v114 = v190;
    sub_1000095E8(v191, &qword_1011B69D0, &qword_100F07870);
    sub_100A21D2C(v115, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_43:
    sub_1000095E8(v114, &qword_1011B69E8, &qword_100F07880);
    v65 = v176;
    v64 = v194;
LABEL_44:

    goto LABEL_67;
  }

  v198 = v113;
  v116 = v112 + v109;
  v117 = v171;
  sub_100A21CC4(v116, v171, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v118 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_100A21D2C(v117, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1000095E8(v187, &qword_1011B69D0, &qword_100F07870);
  sub_1000095E8(v191, &qword_1011B69D0, &qword_100F07870);
  sub_100A21D2C(v115, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v45 = v197;
  v63 = v195;
  sub_1000095E8(v112, &qword_1011B69D0, &qword_100F07870);
  v65 = v176;
  v64 = v194;
  if ((v118 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_46:
  v119 = *&v45[v193];
  if (v119)
  {
    v120 = *(*v119 + 184);

    v122 = v184;
    v120(v121);

    v123 = v196;
    sub_1000089F8(v122 + *(v196 + 28), v182, &qword_1011B69D0, &qword_100F07870);
    sub_100A21D2C(v122, type metadata accessor for NowPlaying.TrackMetadata);
    v124 = v177;
  }

  else
  {
    (*(v189 + 56))(v182, 1, 1, v63);
    v124 = v177;
    v123 = v196;
  }

  v126 = *&v45[v193];
  if (v126)
  {
    v127 = *(*v126 + 208);

    v129 = v168;
    v127(v128);

    if ((v185)(v129, 1, v123) != 1)
    {
      v130 = v129 + *(v123 + 28);
      v131 = v129;
      v124 = v177;
      sub_1000089F8(v130, v177, &qword_1011B69D0, &qword_100F07870);
      sub_100A21D2C(v131, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_56;
    }

    sub_1000095E8(v129, &qword_1011B69E0, &qword_100F07878);
    v124 = v177;
  }

  (*(v189 + 56))(v124, 1, 1, v63);
LABEL_56:
  v132 = v63;
  v133 = *(v186 + 48);
  v134 = v182;
  v135 = v175;
  sub_1000089F8(v182, v175, &qword_1011B69D0, &qword_100F07870);
  sub_1000089F8(v124, v135 + v133, &qword_1011B69D0, &qword_100F07870);
  v136 = v198;
  if ((v198)(v135, 1, v132) == 1)
  {
    sub_1000095E8(v124, &qword_1011B69D0, &qword_100F07870);
    v137 = v175;
    sub_1000095E8(v134, &qword_1011B69D0, &qword_100F07870);
    v138 = (v136)(v137 + v133, 1, v132);
    v44 = v196;
    if (v138 == 1)
    {
      sub_1000095E8(v137, &qword_1011B69D0, &qword_100F07870);
      v64 = v194;
      goto LABEL_64;
    }

    goto LABEL_61;
  }

  v139 = v167;
  sub_1000089F8(v135, v167, &qword_1011B69D0, &qword_100F07870);
  v140 = (v136)(v135 + v133, 1, v132);
  v44 = v196;
  if (v140 == 1)
  {
    sub_1000095E8(v177, &qword_1011B69D0, &qword_100F07870);
    v137 = v175;
    sub_1000095E8(v182, &qword_1011B69D0, &qword_100F07870);
    sub_100A21D2C(v139, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_61:
    sub_1000095E8(v137, &qword_1011B69E8, &qword_100F07880);
    v64 = v194;
LABEL_62:

    v65 = v176;

    goto LABEL_67;
  }

  v141 = v171;
  sub_100A21CC4(v135 + v133, v171, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v142 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_100A21D2C(v141, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1000095E8(v177, &qword_1011B69D0, &qword_100F07870);
  sub_1000095E8(v182, &qword_1011B69D0, &qword_100F07870);
  sub_100A21D2C(v139, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v45 = v197;
  sub_1000095E8(v135, &qword_1011B69D0, &qword_100F07870);
  v64 = v194;
  if ((v142 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_64:
  v143 = OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel;
  v144 = *&v45[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel];
  v65 = v176;
  if (v176)
  {
    *&v45[OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel] = v176;
    swift_retain_n();
    sub_100BC13C4(v144);

    v145 = *(*&v45[v143] + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    [v145 setAlpha:1.0];
  }

  else
  {
    v146 = &v45[OBJC_IVAR___NowPlayingTrackTitleStackView_metadata];
    swift_beginAccess();
    v147 = v165;
    sub_1000089F8(&v146[*(v44 + 28)], v165, &qword_1011B69D0, &qword_100F07870);
    v148 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    v149 = v166;
    sub_1000089F8(v144 + v148, v166, &qword_1011B69D0, &qword_100F07870);
    swift_beginAccess();

    sub_100BC17D4(v147, v144 + v148);
    swift_endAccess();
    sub_100BC5F88(v149);

    v150 = v149;
    v64 = v194;
    sub_1000095E8(v150, &qword_1011B69D0, &qword_100F07870);
    v45 = v197;
    sub_1000095E8(v147, &qword_1011B69D0, &qword_100F07870);
  }

LABEL_67:

  sub_100BC3A04(v151, v45, v152);

  v154 = sub_100BC3A04(v64, v45, v153);
  if (v66)
  {

    sub_100BC3A04(v155, v45, v156);

    v157 = v65;
  }

  else
  {
    v157 = 0;
  }

  sub_100BC3A04(v157, v45, v154);

  [v45 setNeedsLayout];
  sub_100BC7AFC(v66, v65);

  return sub_100BC7AFC(v66, v65);
}

double sub_100BC3A04(uint64_t a1, uint64_t a2, double result)
{
  if (!a1)
  {
    return result;
  }

  v4 = *(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);

  v5 = v4;
  v6 = *&sub_100BC11E8()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

  sub_100009F78(0, &qword_1011B6CF8, off_10108B718);
  LOBYTE(v4) = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    v7 = v5;
    v8 = *&sub_100BC1570()[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view];

    v9 = static NSObject.== infix(_:_:)();

    if ((v9 & 1) == 0)
    {
      v11 = *(a2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
      if (v11)
      {
        v12 = *(*v11 + 424);
        v13 = type metadata accessor for NowPlaying.TrackTitleStackView(0);
        v14 = sub_100BC96F4(&qword_1011B69D8, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView);

        v12(v27, a2, v13, v14);

        if (v27[0])
        {
          v16 = v27[1];
          v15 = v27[2];
          v17 = v27[3];
          sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
          if (static NSObject.== infix(_:_:)())
          {
            goto LABEL_14;
          }

          if (v16)
          {
            v18 = *(v16 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
            v26 = v17;
            v19 = v7;
            v25 = v15;
            v20 = v18;
            LOBYTE(v18) = static NSObject.== infix(_:_:)();

            v17 = v26;
            v15 = v25;
            if (v18)
            {
              goto LABEL_14;
            }
          }

          if (v15)
          {
            if (static NSObject.== infix(_:_:)())
            {
LABEL_14:

              sub_100BC7AFC(v15, v17);
LABEL_21:

              return result;
            }

            if (v17)
            {
              v21 = *(v17 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
              v22 = v15;
              v23 = v7;
              v24 = v21;
              LOBYTE(v21) = static NSObject.== infix(_:_:)();

              v10 = sub_100BC7AFC(v22, v17);
              if (v21)
              {
                goto LABEL_21;
              }
            }

            else
            {

              v10 = sub_100BC7AFC(v15, 0);
            }
          }

          else
          {
          }
        }
      }

      [v7 removeFromSuperview];
      goto LABEL_21;
    }
  }

  return result;
}

id NowPlaying.TrackTitleStackView.adopt(_:from:)(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011B69D0, &qword_100F07870);
  __chkstk_darwin();
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v20 - v7;
  v9 = type metadata accessor for NowPlaying.TrackMetadata(0);
  __chkstk_darwin();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100BC176C(a1, v11, type metadata accessor for NowPlaying.TrackMetadata);
  v12 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_100BC1708(v11, v2 + v12);
  result = swift_endAccess();
  if (!a2)
  {
    v14 = v2;
    v15 = sub_100BC11E8();
    sub_100BC176C(a1 + *(v9 + 24), v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
    v17 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    sub_1000089F8(&v15[v17], v6, &qword_1011B69D0, &qword_100F07870);
    swift_beginAccess();
    sub_100BC17D4(v8, &v15[v17]);
    swift_endAccess();
    sub_100BC5F88(v6);

    sub_1000095E8(v6, &qword_1011B69D0, &qword_100F07870);
    sub_1000095E8(v8, &qword_1011B69D0, &qword_100F07870);
    v18 = sub_100BC1570();
    sub_1000089F8(a1 + *(v9 + 28), v8, &qword_1011B69D0, &qword_100F07870);
    v19 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
    swift_beginAccess();
    sub_1000089F8(&v18[v19], v6, &qword_1011B69D0, &qword_100F07870);
    swift_beginAccess();
    sub_100BC17D4(v8, &v18[v19]);
    swift_endAccess();
    sub_100BC5F88(v6);

    sub_1000095E8(v6, &qword_1011B69D0, &qword_100F07870);
    sub_1000095E8(v8, &qword_1011B69D0, &qword_100F07870);
    return [v14 setNeedsLayout];
  }

  return result;
}

double sub_100BC4074(uint64_t a1, unsigned __int8 *a2)
{
  sub_10010FC20(&qword_1011B69E0, &qword_100F07878);
  *&result = __chkstk_darwin().n128_u64[0];
  v7 = &v20 - v6;
  if (a1)
  {
    v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
    v9 = *(v2 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition);
    if (v9)
    {
      v10 = v2;
      v11 = *(*v9 + 256);

      v13 = v11(v12);

      if (v13 == 2)
      {
        v14 = *(v10 + v8);
        if (v14)
        {
          v15 = *(*v14 + 208);

          v15(v16);

          v17 = type metadata accessor for NowPlaying.TrackMetadata(0);
          if ((*(*(v17 - 8) + 48))(v7, 1, v17) != 1)
          {
            sub_1000095E8(v7, &qword_1011B69E0, &qword_100F07878);
            v18 = 0;
LABEL_11:
            [*(a1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view) setMarqueeEnabled:v18 withOptions:1];

            return result;
          }
        }

        else
        {
          v19 = type metadata accessor for NowPlaying.TrackMetadata(0);
          (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
        }

        sub_1000095E8(v7, &qword_1011B69E0, &qword_100F07878);
      }
    }

    else
    {
    }

    v18 = *a2;
    goto LABEL_11;
  }

  return result;
}

void sub_100BC42A4()
{
  v1 = v0;
  if (*&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_transition])
  {
    v2 = objc_opt_self();
    v3 = [v2 disableActions];
    v4 = &selRef_objectAtIndexedSubscript_;
    [v2 setDisableActions:1];
    v5 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
    v6 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
    if (v6)
    {
      v7 = *&v0[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
LABEL_28:
      v44 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
      swift_beginAccess();
      v45 = v44[6];
      v46 = &v1[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
      swift_beginAccess();
      if (v46[6] >= v45)
      {
        v47 = v45;
      }

      else
      {
        v47 = v46[6];
      }

      sub_10010FC20(&qword_1011B5630, "\b)\n");
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_100EBDC10;
      sub_100009F78(0, &qword_1011B3A00, NSNumber_ptr);
      v49 = v6;
      *(v48 + 32) = NSNumber.init(floatLiteral:)(0.0);
      [v1 bounds];
      *(v48 + 40) = [objc_allocWithZone(NSNumber) initWithDouble:v47 / CGRectGetWidth(v58)];
      [v1 bounds];
      *(v48 + 48) = [objc_allocWithZone(NSNumber) initWithDouble:1.0 - v47 / CGRectGetWidth(v59)];
      *(v48 + 56) = NSNumber.init(floatLiteral:)(1.0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v7 setLocations:isa];

      [v7 setStartPoint:{0.0, 0.5}];
      v51 = v7;
      [v51 setEndPoint:{1.0, 0.5}];
      [v1 bounds];
      [v51 setBounds:?];

      [v1 bounds];
      MidX = CGRectGetMidX(v60);
      [v1 bounds];
      [v51 setPosition:{MidX, CGRectGetMidY(v61)}];

      [v2 v4[235]];
      return;
    }

    v53 = v3;
    v56 = v2;
    v15 = [objc_allocWithZone(CAGradientLayer) init];
    sub_10010FC20(&qword_1011B21B0, &unk_100F088D0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100EBEF50;
    v17 = objc_opt_self();
    v18 = v15;
    v19 = [v17 blackColor];
    v20 = [v19 CGColor];

    _s3__C7CGColorCMa_1(0);
    v22 = v21;
    *(v16 + 56) = v21;
    *(v16 + 32) = v20;
    v23 = [v17 clearColor];
    v24 = [v23 CGColor];

    *(v16 + 88) = v22;
    *(v16 + 64) = v24;
    v25 = [v17 clearColor];
    v26 = [v25 CGColor];

    *(v16 + 120) = v22;
    *(v16 + 96) = v26;
    v27 = [v17 blackColor];
    v28 = [v27 CGColor];

    *(v16 + 152) = v22;
    *(v16 + 128) = v28;
    v29 = Array._bridgeToObjectiveC()().super.isa;

    [v18 setColors:v29];

    [v18 setCompositingFilter:kCAFilterDestOut];
    v30 = *&v1[v5];
    if (v30)
    {
      sub_100009F78(0, &qword_1011B5BC8, CAGradientLayer_ptr);
      v31 = v18;
      v32 = v30;
      v33 = v31;
      v34 = v32;
      v35 = static NSObject.== infix(_:_:)();

      v36 = *&v1[v5];
      if ((v35 & 1) == 0)
      {
        v4 = &selRef_objectAtIndexedSubscript_;
        v6 = 0;
        if (v36)
        {
          [*&v1[v5] removeFromSuperlayer];
          v36 = *&v1[v5];
        }

LABEL_16:
        *&v1[v5] = v18;
        v7 = v18;

        v38 = *&v1[v5];
        if (v38)
        {
          if (v30)
          {
            sub_100009F78(0, &qword_1011B5BC8, CAGradientLayer_ptr);
            v39 = v30;
            v40 = v38;
            v41 = static NSObject.== infix(_:_:)();

            if (v41)
            {

LABEL_21:
              v2 = v56;
              v3 = v53;
              goto LABEL_28;
            }
          }

          else
          {
            v42 = v38;
            v39 = 0;
          }

          v2 = v56;
          v3 = v53;
          v43 = [v1 layer];
          [v43 addSublayer:v38];

          goto LABEL_28;
        }

        goto LABEL_21;
      }
    }

    else
    {
      v37 = v18;
      v36 = 0;
    }

    v4 = &selRef_objectAtIndexedSubscript_;
    v6 = 0;
    goto LABEL_16;
  }

  v8 = OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer;
  v9 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer];
  if (v9)
  {
    v55 = v9;
    [v55 removeFromSuperlayer];
    v10 = *&v1[v8];
    *&v1[v8] = 0;

    v11 = *&v1[v8];
    if (v11)
    {
      sub_100009F78(0, &qword_1011B5BC8, CAGradientLayer_ptr);
      v12 = v55;
      v55 = v11;
      v13 = static NSObject.== infix(_:_:)();

      if ((v13 & 1) == 0)
      {
        v54 = [v1 layer];
        [v54 addSublayer:v55];

        v14 = v54;
        goto LABEL_23;
      }
    }

    v14 = v55;
  }

  else
  {
    v14 = 0;
  }

LABEL_23:
}

id sub_100BC49C4(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_100BC4A5C(uint64_t (*a1)(__n128), __n128 a2)
{
  type metadata accessor for AttributedString.CharacterView();
  __chkstk_darwin();
  v3 = type metadata accessor for AttributedString();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B69D0, &qword_100F07870);
  v7 = __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = a1(v7);
  v11 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000089F8(v10 + v11, v9, &qword_1011B69D0, &qword_100F07870);
  v12 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v12 - 8) + 48))(v9, 1, v12) == 1)
  {

    return 0;
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v9, v3);
    AttributedString.characters.getter();
    sub_100BC96F4(&qword_1011B6CE8, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
    v14 = String.init<A>(_:)();

    (*(v4 + 8))(v6, v3);
    return v14;
  }

  else
  {

    return *v9;
  }
}

id NowPlaying.TrackTitleStackView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NowPlaying.TrackTitleStackView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100BC4ED4@<X0>(char **a1@<X8>, uint64_t a2@<X0>)
{
  result = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17transitionContext2to9directionAF010TransitionK0VSgAC0F8MetadataV_AA5GlissO9DirectionOSgtF_0(a2);
  *a1 = result;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

double NowPlaying.TrackTitleStackView.Label.Attributes.marquee.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 64);
  *a1 = *(v1 + 24);
  v3 = *(v1 + 48);
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 24) = v3;
  *(a1 + 40) = result;
  return result;
}

void *NowPlaying.TrackTitleStackView.Label.Attributes.action.getter()
{
  v1 = *(v0 + 72);
  sub_100BC973C(v1, *(v0 + 80), *(v0 + 88));
  return v1;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.action.setter(void *a1, void *a2, void *a3)
{
  sub_1001D2894(v3[9], v3[10], v3[11]);
  v3[9] = a1;
  v3[10] = a2;
  v3[11] = a3;
}

void NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.fadeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

BOOL static NowPlaying.TrackTitleStackView.Label.Attributes.Marquee.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  result = 0;
  if (((*a1 ^ *a2) & 1) == 0 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    v2 = a1[3] == a2[3] && a1[4] == a2[4];
    if (v2 && a1[5] == a2[5])
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_100BC5030(float64x2_t *a1, float64x2_t *a2)
{
  if (LOBYTE(a1->f64[0]) == LOBYTE(a2->f64[0]) && a1->f64[1] == a2->f64[1])
  {
    return vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(a1[1], a2[1]), vceqq_f64(a1[2], a2[2])))) & 1;
  }

  else
  {
    return 0;
  }
}

double NowPlaying.TrackTitleStackView.Label.Attributes.update(_:)(void (*a1)(__int128 *))
{
  v2 = v1[3];
  v11 = v1[2];
  v12 = v2;
  v3 = v1[5];
  v13 = v1[4];
  v14 = v3;
  v4 = v1[1];
  v9 = *v1;
  v10 = v4;
  a1(&v9);
  v5 = v12;
  v1[2] = v11;
  v1[3] = v5;
  v6 = v14;
  v1[4] = v13;
  v1[5] = v6;
  result = *&v9;
  v8 = v10;
  *v1 = v9;
  v1[1] = v8;
  return result;
}

uint64_t sub_100BC5168(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV23__derived_struct_equalsySbAJ_AJtFZ_0(v9, v10) & 1;
}

void sub_100BC51C4(uint64_t *a1)
{
  v2 = v1;
  v4 = *(a1 + 3);
  v54[2] = *(a1 + 2);
  v54[3] = v4;
  v5 = *(a1 + 5);
  v54[4] = *(a1 + 4);
  v54[5] = v5;
  v6 = *(a1 + 1);
  v54[0] = *a1;
  v54[1] = v6;
  sub_10010FC20(&qword_1011B69D0, &qword_100F07870);
  __chkstk_darwin();
  v8 = &v50 - v7;
  v9 = *(v1 + 64);
  v57 = *(v1 + 48);
  v58 = v9;
  v10 = *(v1 + 96);
  v59 = *(v1 + 80);
  v60 = v10;
  v11 = *(v1 + 32);
  v55 = *(v1 + 16);
  v56 = v11;
  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  sub_100AFA074(&v55, v53);
  if ((static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || v56 != (a1[2] & 1) || BYTE8(v56) != (a1[3] & 1) || *&v57 != *(a1 + 4) || *(&v57 + 1) != *(a1 + 5) || *&v58 != *(a1 + 6) || *(&v58 + 1) != *(a1 + 7) || *&v59 != *(a1 + 8))
  {
    goto LABEL_14;
  }

  v12 = *(&v59 + 1);
  v14 = a1[9];
  v13 = a1[10];
  v15 = a1[11];
  if (*(&v59 + 1) == 1)
  {
    sub_100BC973C(a1[9], a1[10], a1[11]);
    sub_100AFA0D0(&v55);
    if (v14 == 1)
    {
      return;
    }

    sub_1001D2894(v14, v13, v15);
    goto LABEL_15;
  }

  if (v14 == 1)
  {
LABEL_14:
    sub_100AFA0D0(&v55);
    goto LABEL_15;
  }

  v48 = *(&v60 + 1);
  v51 = v60;
  sub_100BC973C(v14, v13, v15);
  v49 = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(v12, v51, v48, v14, v13, v15);
  sub_100AFA0D0(&v55);

  if (v49)
  {
    return;
  }

LABEL_15:
  if ((a1[9] == 1) == (*(v1 + 88) == 1))
  {
    goto LABEL_35;
  }

  v16 = *(v1 + 64);
  v53[2] = *(v1 + 48);
  v53[3] = v16;
  v17 = *(v1 + 96);
  v53[4] = *(v1 + 80);
  v53[5] = v17;
  v18 = *(v1 + 32);
  v53[0] = *(v1 + 16);
  v53[1] = v18;
  sub_100AFA074(v53, &v52);
  v19 = sub_100BC7DE8(v53);
  v20 = v19;
  v22 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v23 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v24 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  *v22 = v19;
  *(v22 + 8) = v21 & 1;
  if (v21)
  {
    if ((v24 & 1) == 0)
    {
LABEL_18:
      v25 = v19;
      goto LABEL_22;
    }
  }

  else if (v24)
  {
    goto LABEL_18;
  }

  v26 = v19;
  if ((static NSObject.== infix(_:_:)() & 1) == 0)
  {
LABEL_22:
    [v23 removeFromSuperview];
    v27 = *v22;
    v28 = [v27 superview];
    v29 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
    v30 = [v29 contentView];
    v31 = v30;
    if (v28)
    {
      if (v30)
      {
        sub_100009F78(0, &qword_1011B7C10, UIView_ptr);
        v32 = static NSObject.== infix(_:_:)();

        if (v32)
        {
          goto LABEL_33;
        }

LABEL_30:
        v33 = [v29 contentView];
        if (v33)
        {
          v34 = v33;
          [v33 addSubview:v27];

          v35 = [v29 contentView];
          if (v35)
          {
            v36 = v35;
            [v35 bounds];
            v38 = v37;
            v40 = v39;
            v42 = v41;
            v44 = v43;

            [v27 setFrame:{v38, v40, v42, v44}];
            [v27 setAutoresizingMask:18];
            [v29 setViewForContentSize:v27];
LABEL_33:

            sub_100BC6288();
            goto LABEL_34;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v31 = v28;
    }

    else if (!v30)
    {
      goto LABEL_33;
    }

    goto LABEL_30;
  }

  v20 = v23;
  v23 = v26;
LABEL_34:

LABEL_35:
  sub_100BC5720(v54);
  v45 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000089F8(v2 + v45, v8, &qword_1011B69D0, &qword_100F07870);
  v46 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  if ((*(*(v46 - 8) + 48))(v8, 1, v46) == 1)
  {
    sub_1000095E8(v8, &qword_1011B69D0, &qword_100F07870);
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100A21D2C(v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (EnumCaseMultiPayload == 1)
    {
      sub_100BC6288();
    }
  }
}

uint64_t sub_100BC5720(uint64_t a1)
{
  v2 = v1;
  sub_10010FC20(&qword_1011B6CC0, &qword_100F07C68);
  __chkstk_darwin();
  v5 = &v59 - v4;
  sub_10010FC20(&qword_1011B15D0, &qword_100F003F0);
  __chkstk_darwin();
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v59 - v8;
  v10 = type metadata accessor for UIButton.Configuration();
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[4];
  v68 = v1[3];
  v69 = v14;
  v15 = v1[6];
  v70 = v1[5];
  v71 = v15;
  v16 = v1[2];
  v66 = v1[1];
  v67 = v16;
  v17 = v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind;
  v18 = *(v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  if ((v17[8] & 1) == 0)
  {
    v20 = v66;
    sub_100AFA074(&v66, v65);
    v21 = v18;
    [v21 setFont:v20];
    [v21 setTextColor:*(&v66 + 1)];

    v22 = *a1;
    if (!*a1)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v62 = *a1;
  v64 = v18;
  v63 = v7;
  if (!v62)
  {
    sub_100AFA074(&v66, v65);
    goto LABEL_8;
  }

  v19 = *(a1 + 72);
  if (v19 <= 1)
  {
    sub_100AFA074(&v66, v65);
    v18 = v64;
LABEL_8:
    v23 = v18;
    goto LABEL_9;
  }

  v72 = *(v2 + 88);
  v73 = *(v2 + 13);
  v28 = v72;
  if (v72 == 1)
  {
    sub_100AFA074(&v66, v65);
    v29 = v64;
    v30 = v64;
    v31 = v19;
  }

  else
  {
    v53 = v73;
    v74 = *(&v72 + 1);
    sub_100AFA074(&v66, v65);
    v29 = v64;
    v54 = v64;
    v61 = v19;
    sub_1000089F8(&v72, v65, &qword_1011B6CC8, &qword_100F07C70);
    sub_1000095E8(&v74, &qword_1011B6CD0, &unk_100F07C78);
    v75 = v53;
    sub_1000095E8(&v75, &qword_1011B1178, &qword_100EFFA90);
    if (v28)
    {
      sub_100009F78(0, &qword_1011B1640, UIAction_ptr);
      v55 = v61;
      v60 = v28;
      v56 = v55;
      v57 = static NSObject.== infix(_:_:)();
      v61 = v56;

      if (v57)
      {

        goto LABEL_9;
      }
    }
  }

  [v29 removeAction:v19 forControlEvents:0x2000];

LABEL_9:
  UIButton.configuration.getter();
  v24 = *(v11 + 48);
  if (v24(v9, 1, v10) == 1)
  {
    static UIButton.Configuration.plain()();
    if (v24(v9, 1, v10) != 1)
    {
      sub_1000095E8(v9, &qword_1011B15D0, &qword_100F003F0);
    }
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
  }

  v25 = *(&v66 + 1);
  UIButton.Configuration.baseForegroundColor.setter();
  v26 = *(&v70 + 1);
  v27 = v71;
  if (*(&v70 + 1) != 1 && *(&v71 + 1))
  {
    if (*(&v70 + 1))
    {
      sub_100BC973C(*(&v70 + 1), v71, *(&v71 + 1));

LABEL_21:
      goto LABEL_22;
    }

    if (v71)
    {
      sub_100BC973C(0, v71, *(&v71 + 1));

      goto LABEL_21;
    }

    v58 = *(&v71 + 1);
    UIButton.Configuration.baseForegroundColor.setter();
  }

LABEL_22:
  v32 = swift_allocObject();
  v33 = v69;
  v32[3] = v68;
  v32[4] = v33;
  v34 = v71;
  v32[5] = v70;
  v32[6] = v34;
  v35 = v67;
  v32[1] = v66;
  v32[2] = v35;
  sub_100AFA074(&v66, v65);
  UIConfigurationTextAttributesTransformer.init(_:)();
  v36 = type metadata accessor for UIConfigurationTextAttributesTransformer();
  (*(*(v36 - 8) + 56))(v5, 0, 1, v36);
  UIButton.Configuration.titleTextAttributesTransformer.setter();
  if (v26 == 1)
  {
    goto LABEL_27;
  }

  if (!v26)
  {
    v51 = *(&v27 + 1);
    v52 = v27;
    if (!v27)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v37 = *(&v27 + 1);
  v38 = v26;
  v39 = v27;
  [v64 addAction:v38 forControlEvents:0x2000];
  if (v27)
  {
LABEL_25:
    v40 = v27;
    v41 = v64;
    [v41 setShowsMenuAsPrimaryAction:v26 == 0];
    [v41 setMenu:v40];
    [v41 setShowsMenuFromSource:0];
  }

LABEL_26:

LABEL_27:
  v42 = v63;
  (*(v11 + 16))(v63, v13, v10);
  (*(v11 + 56))(v42, 0, 1, v10);
  v43 = v64;
  UIButton.configuration.setter();

  (*(v11 + 8))(v13, v10);
  v22 = v62;
  if (!v62)
  {
LABEL_29:
    sub_100BC6D28();
    goto LABEL_30;
  }

LABEL_28:
  v44 = *(v2 + 2);
  sub_100009F78(0, &qword_1011B6520, UIFont_ptr);
  v45 = v44;
  v46 = v22;
  v47 = static NSObject.== infix(_:_:)();

  if ((v47 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
  v48 = *(v2 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  v49 = BYTE8(v67);
  [v48 setContentGap:*&v68];
  [v48 setMarqueeEnabled:v49 & 1];
  [v48 effectiveUserInterfaceLayoutDirection];
  UIEdgeInsets.init(directionalEdgeInsets:layoutDirection:)();
  [v48 setFadeEdgeInsets:?];
  [v48 setHidden:v67];
  [v48 invalidateIntrinsicContentSize];
  return sub_100AFA0D0(&v66);
}

uint64_t sub_100BC5EBC@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AttributeContainer();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = *a2;
  sub_100BC9CE4();
  v8 = v7;
  AttributeContainer.subscript.setter();
  UIAccessibilityButtonShapesEnabled();
  sub_100BC9D38();
  return AttributeContainer.subscript.setter();
}

uint64_t sub_100BC5F88(uint64_t a1)
{
  v16 = a1;
  v2 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B69D0, &qword_100F07870);
  __chkstk_darwin();
  v7 = &v16 - v6;
  v8 = sub_10010FC20(&qword_1011B69E8, &qword_100F07880) - 8;
  __chkstk_darwin();
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v12 = *(v8 + 56);
  sub_1000089F8(v1 + v11, v10, &qword_1011B69D0, &qword_100F07870);
  sub_1000089F8(v16, &v10[v12], &qword_1011B69D0, &qword_100F07870);
  v13 = *(v3 + 48);
  if (v13(v10, 1, v2) == 1)
  {
    if (v13(&v10[v12], 1, v2) == 1)
    {
      return sub_1000095E8(v10, &qword_1011B69D0, &qword_100F07870);
    }

    goto LABEL_6;
  }

  sub_1000089F8(v10, v7, &qword_1011B69D0, &qword_100F07870);
  if (v13(&v10[v12], 1, v2) == 1)
  {
    sub_100A21D2C(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
LABEL_6:
    sub_1000095E8(v10, &qword_1011B69E8, &qword_100F07880);
LABEL_7:
    sub_100BC6288();
    return sub_100BC6D28();
  }

  sub_100A21CC4(&v10[v12], v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v15 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_100A21D2C(v5, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100A21D2C(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_1000095E8(v10, &qword_1011B69D0, &qword_100F07870);
  if ((v15 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

id sub_100BC6288()
{
  v1 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v69 = *(v1 - 8);
  __chkstk_darwin();
  v66 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011B1460, &qword_100F00170);
  __chkstk_darwin();
  v62 = &v58 - v3;
  v4 = type metadata accessor for AttributedString();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin();
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v61 = &v58 - v6;
  sub_10010FC20(&qword_1011B15D0, &qword_100F003F0);
  __chkstk_darwin();
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v63 = &v58 - v9;
  __chkstk_darwin();
  v60 = &v58 - v10;
  v11 = type metadata accessor for UIButton.Configuration();
  v64 = *(v11 - 8);
  v65 = v11;
  __chkstk_darwin();
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v58 = &v58 - v14;
  sub_10010FC20(&qword_1011B6CB0, &qword_100F07C60);
  __chkstk_darwin();
  v16 = (&v58 - v15);
  sub_10010FC20(&qword_1011B69D0, &qword_100F07870);
  __chkstk_darwin();
  v71 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v58 - v18;
  v20 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  v70 = v20;
  sub_1000089F8(v0 + v20, v19, &qword_1011B69D0, &qword_100F07870);
  v72 = v0;
  v21 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind);
  v22 = *(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind + 8);
  v23 = v19;
  v24 = v1;
  v25 = v69;
  sub_10003D17C(v23, v16, &qword_1011B69D0, &qword_100F07870);
  v26 = *(v25 + 48);
  if (v26(v16, 1, v1) == 1)
  {
    v27 = v21;
    v28 = v27;
    if (v22)
    {
      UIButton.configuration.getter();
      v30 = v64;
      v29 = v65;
      v31 = *(v64 + 48);
      if (v31(v8, 1, v65) == 1)
      {
        static UIButton.Configuration.plain()();
        if (v31(v8, 1, v29) != 1)
        {
          sub_1000095E8(v8, &qword_1011B15D0, &qword_100F003F0);
        }
      }

      else
      {
        (*(v30 + 32))(v13, v8, v29);
      }

      UIButton.Configuration.title.setter();
      (*(v67 + 56))(v62, 1, 1, v68);
      UIButton.Configuration.attributedTitle.setter();
      v45 = v63;
      (*(v30 + 16))(v63, v13, v29);
      (*(v30 + 56))(v45, 0, 1, v29);
      UIButton.configuration.setter();

      (*(v30 + 8))(v13, v29);
    }

    else
    {
      [v27 setText:0];
      [v28 setAttributedText:0];
    }
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v67;
    v33 = v68;
    v34 = v61;
    (*(v67 + 32))(v61, v16, v68);
    if (v22)
    {
      __chkstk_darwin();
      *(&v58 - 2) = v34;
      v35 = v21;
      UIButton.reconfigure(with:)(sub_100BC9CD4);

      (*(v32 + 8))(v34, v33);
    }

    else
    {
      sub_100009F78(0, &qword_1011B6CB8, NSAttributedString_ptr);
      (*(v32 + 16))(v59, v34, v33);
      v46 = v34;
      v47 = v21;
      v48 = NSAttributedString.init(_:)();
      [v47 setAttributedText:v48];

      (*(v32 + 8))(v46, v33);
    }
  }

  else
  {
    v69 = v1;
    v36 = *v16;
    v37 = v21;
    if (v22)
    {
      v38 = v60;
      UIButton.configuration.getter();
      v40 = v64;
      v39 = v65;
      v41 = *(v64 + 48);
      if (v41(v38, 1, v65) == 1)
      {
        v68 = v36;
        v42 = v58;
        static UIButton.Configuration.plain()();
        v43 = v41(v38, 1, v39);
        v44 = v42;
        if (v43 != 1)
        {
          sub_1000095E8(v60, &qword_1011B15D0, &qword_100F003F0);
        }
      }

      else
      {
        v44 = v58;
        (*(v40 + 32))(v58, v38, v39);
      }

      UIButton.Configuration.title.setter();
      v50 = v63;
      (*(v40 + 16))(v63, v44, v39);
      (*(v40 + 56))(v50, 0, 1, v39);
      UIButton.configuration.setter();

      (*(v40 + 8))(v44, v39);
    }

    else
    {
      v49 = String._bridgeToObjectiveC()();

      [v37 setText:v49];
    }

    v24 = v69;
  }

  v51 = v71;
  v52 = *(v72 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view);
  sub_1000089F8(v72 + v70, v71, &qword_1011B69D0, &qword_100F07870);
  if (v26(v51, 1, v24))
  {
    sub_1000095E8(v51, &qword_1011B69D0, &qword_100F07870);
LABEL_25:
    v56 = 0;
    goto LABEL_26;
  }

  v53 = v66;
  sub_100BC176C(v51, v66, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1000095E8(v51, &qword_1011B69D0, &qword_100F07870);
  sub_100BC740C();
  v54 = String._bridgeToObjectiveC()();

  v55 = [v54 _isNaturallyRTL];

  sub_100A21D2C(v53, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if ((v55 & 1) == 0)
  {
    goto LABEL_25;
  }

  v56 = 1;
LABEL_26:
  [v52 setAnimationDirection:v56];
  return [v52 invalidateIntrinsicContentSize];
}

double sub_100BC6C28(uint64_t a1, uint64_t a2)
{
  sub_10010FC20(&qword_1011B1460, &qword_100F00170);
  __chkstk_darwin();
  v4 = &v8 - v3;
  v5 = type metadata accessor for AttributedString();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v4, a2, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  UIButton.Configuration.attributedTitle.setter();
  return result;
}

uint64_t sub_100BC6D28()
{
  v1 = v0;
  sub_10010FC20(&qword_1011B69D0, &qword_100F07870);
  __chkstk_darwin();
  v3 = &v15 - v2;
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v17 = left;
  v18 = UIEdgeInsetsZero.top;
  v15 = right;
  v16 = bottom;
  v12 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_1000089F8(v1 + v12, v3, &qword_1011B69D0, &qword_100F07870);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    result = sub_1000095E8(v3, &qword_1011B69D0, &qword_100F07870);
  }

  else
  {
    sub_100A21CC4(v3, v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    if (sub_100BC6F90())
    {
      CTFontGetLanguageAwareOutsets();
      result = sub_100A21D2C(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      left = v17;
      top = v18;
      right = v15;
      bottom = v16;
    }

    else
    {
      result = sub_100A21D2C(v7, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    }
  }

  v14 = (v1 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets);
  *v14 = top;
  v14[1] = left;
  v14[2] = bottom;
  v14[3] = right;
  return result;
}

uint64_t sub_100BC6F90()
{
  sub_10010FC20(&qword_1011B6C88, &qword_100F07C40);
  __chkstk_darwin();
  v2 = &v19 - v1;
  v3 = type metadata accessor for AttributedString.CharacterView();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100BC176C(v0, v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v12, v7);
    AttributedString.characters.getter();
    sub_100BC76AC(v2);
    (*(v4 + 8))(v6, v3);
    v13 = String.init(_:)();
    v15 = v14;
    (*(v8 + 8))(v10, v7);
    v16 = v13;
  }

  else
  {
    v16 = *v12;
    v15 = v12[1];
  }

  v17 = String.containsExcessiveHeightCharacters.getter(v16, v15);

  return v17 & 1;
}

uint64_t NowPlaying.TrackTitleStackView.Label.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  sub_1001D2894(v2, v3, v4);
  sub_1000095E8(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &qword_1011B69D0, &qword_100F07870);

  return v0;
}

uint64_t NowPlaying.TrackTitleStackView.Label.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 104);

  sub_1001D2894(v2, v3, v4);
  sub_1000095E8(v0 + OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text, &qword_1011B69D0, &qword_100F07870);

  return swift_deallocClassInstance();
}

__n128 Gliss.Transition<>.Output.transform3D.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 104);
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = v2;
  v3 = *(v1 + 136);
  *(a1 + 96) = *(v1 + 120);
  *(a1 + 112) = v3;
  v4 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v4;
  result = *(v1 + 56);
  v6 = *(v1 + 72);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 Gliss.Transition<>.Output.transform3D.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = v2;
  v3 = *(a1 + 112);
  *(v1 + 120) = *(a1 + 96);
  *(v1 + 136) = v3;
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 56) = result;
  *(v1 + 72) = v6;
  return result;
}

uint64_t sub_100BC740C()
{
  sub_10010FC20(&qword_1011B6C88, &qword_100F07C40);
  __chkstk_darwin();
  v2 = &v15 - v1;
  v3 = type metadata accessor for AttributedString.CharacterView();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AttributedString();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin();
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100BC176C(v0, v12, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v12;
  }

  (*(v8 + 32))(v10, v12, v7);
  AttributedString.characters.getter();
  sub_100BC76AC(v2);
  (*(v4 + 8))(v6, v3);
  v13 = String.init(_:)();
  (*(v8 + 8))(v10, v7);
  return v13;
}

uint64_t sub_100BC76AC@<X0>(uint64_t a1@<X8>)
{
  v22[2] = a1;
  v2 = sub_10010FC20(&qword_1011B6C90, &qword_100F07C48);
  __chkstk_darwin();
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = v22 - v5;
  v7 = type metadata accessor for AttributedString.Index();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_10010FC20(&qword_1011B6C98, &qword_100F07C50);
  __chkstk_darwin();
  v24 = v22 - v11;
  sub_10010FC20(&qword_1011B6CA0, &qword_100F07C58);
  __chkstk_darwin();
  v13 = v22 - v12;
  v14 = type metadata accessor for AttributedString.CharacterView();
  v15 = sub_100BC96F4(&qword_1011B1450, &type metadata accessor for AttributedString.CharacterView, &protocol conformance descriptor for AttributedString.CharacterView);
  v25 = v14;
  v16 = v15;
  dispatch thunk of Collection.startIndex.getter();
  sub_100BC96F4(&qword_1011B1458, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    dispatch thunk of Collection.endIndex.getter();
    sub_100BC96F4(&qword_1011B6CA8, &type metadata accessor for AttributedString.Index, &protocol conformance descriptor for AttributedString.Index);
    result = dispatch thunk of static Comparable.<= infix(_:_:)();
    if (result)
    {
      v22[0] = v1;
      v22[1] = v16;
      v18 = *(v8 + 32);
      v18(v6, v13, v7);
      v18(&v6[*(v2 + 48)], v10, v7);
      sub_1000089F8(v6, v4, &qword_1011B6C90, &qword_100F07C48);
      v19 = *(v2 + 48);
      v20 = v24;
      v18(v24, v4, v7);
      v21 = *(v8 + 8);
      v21(&v4[v19], v7);
      sub_10003D17C(v6, v4, &qword_1011B6C90, &qword_100F07C48);
      v18((v20 + *(v23 + 36)), &v4[*(v2 + 48)], v7);
      v21(v4, v7);
      dispatch thunk of Collection.subscript.getter();
      return sub_1000095E8(v20, &qword_1011B6C98, &qword_100F07C50);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_100BC7AB8(uint64_t a1)
{
  if (a1)
  {
  }

  return result;
}

double sub_100BC7AFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  if (a1)
  {
    if (!a4)
    {
      return 0;
    }

    v11 = a1;
    sub_100009F78(0, &qword_1011B1640, UIAction_ptr);
    v12 = a4;
    v13 = v11;
    LOBYTE(v11) = static NSObject.== infix(_:_:)();

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a4)
  {
    return 0;
  }

  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    sub_100009F78(0, &qword_1011B15A8, UIMenu_ptr);
    v14 = a5;
    v15 = a2;
    v16 = static NSObject.== infix(_:_:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (a5)
  {
    return 0;
  }

  if (a3)
  {
    if (a6)
    {
      sub_100009F78(0, &qword_1011B4940, UIColor_ptr);
      v17 = a6;
      v18 = a3;
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        return 1;
      }
    }
  }

  else if (!a6)
  {
    return 1;
  }

  return 0;
}

uint64_t _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV23__derived_struct_equalsySbAJ_AJtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_100009F78(0, &unk_1011B7C00, NSObject_ptr);
  if (static NSObject.== infix(_:_:)() & 1) == 0 || (static NSObject.== infix(_:_:)() & 1) == 0 || ((*(a1 + 16) ^ *(a2 + 16)))
  {
    return 0;
  }

  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 32), *(a2 + 32)), vceqq_f64(*(a1 + 48), *(a2 + 48))))) & 1) != 0 && ((*(a1 + 24) ^ *(a2 + 24)) & 1) == 0 && *(a1 + 64) == *(a2 + 64))
  {
    v5 = *(a1 + 72);
    v6 = *(a2 + 72);
    if (v5 == 1)
    {
      if (v6 == 1)
      {
        return 1;
      }
    }

    else if (v6 != 1)
    {
      v8 = *(a1 + 80);
      v7 = *(a1 + 88);
      v10 = *(a2 + 80);
      v9 = *(a2 + 88);
      v11 = v9;
      v12 = v6;
      v13 = v10;
      LOBYTE(v9) = _s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC5LabelC10AttributesV6ActionV23__derived_struct_equalsySbAL_ALtFZ_0(v5, v8, v7, v6, v10, v9);

      if (v9)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

id sub_100BC7DE8(uint64_t a1)
{
  type metadata accessor for UIBackgroundConfiguration();
  __chkstk_darwin();
  v2 = type metadata accessor for UIButton.Configuration.TitleAlignment();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UIButton.Configuration();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v21 - v10;
  v22 = *(a1 + 72);
  if (v22 == 1)
  {
    v17 = [objc_allocWithZone(UILabel) init];
    v18 = objc_opt_self();
    v14 = v17;
    v19 = [v18 clearColor];
    [v14 setBackgroundColor:v19];

    [v14 setNumberOfLines:1];
    [v14 setAdjustsFontForContentSizeCategory:1];
    [v14 _setWantsContentAwareTypesettingLanguage:1];
    sub_100AFA0D0(a1);
  }

  else
  {
    static UIButton.Configuration.plain()();
    UIButton.Configuration.contentInsets.setter();
    (*(v3 + 104))(v5, enum case for UIButton.Configuration.TitleAlignment.leading(_:), v2);
    UIButton.Configuration.titleAlignment.setter();
    static UIBackgroundConfiguration.clear()();
    UIButton.Configuration.background.setter();
    v12 = [objc_opt_self() clearColor];
    v13 = UIButton.Configuration.background.modify();
    UIBackgroundConfiguration.backgroundColor.setter();
    v13(v23, 0);
    sub_100009F78(0, &qword_1011B6CF0, UIButton_ptr);
    (*(v7 + 16))(v9, v11, v6);
    v14 = UIButton.init(configuration:primaryAction:)();
    [v14 setContentHorizontalAlignment:4];
    v15 = [v14 titleLabel];
    if (v15)
    {
      v16 = v15;
      [v15 _setWantsContentAwareTypesettingLanguage:1];
    }

    sub_100AFA0D0(a1);
    (*(v7 + 8))(v11, v6);
  }

  return v14;
}

char *sub_100BC81B8(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v9 - 8) + 56))(&v4[v8], 1, 1, v9);
  v10 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_lineOutsets];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = a2[1];
  *(v4 + 1) = *a2;
  *(v4 + 2) = v12;
  v13 = a2[5];
  *(v4 + 5) = a2[4];
  *(v4 + 6) = v13;
  v14 = a2[3];
  *(v4 + 3) = a2[2];
  *(v4 + 4) = v14;
  v15 = objc_allocWithZone(MarqueeView);
  sub_100AFA074(a2, v39);
  v16 = [v15 init];
  *&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] = v16;
  sub_100AFA074(a2, v39);
  v17 = sub_100BC7DE8(a2);
  v18 = &v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_contentViewKind];
  *v18 = v17;
  v18[8] = v19 & 1;
  v20 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_text;
  swift_beginAccess();
  sub_100BC17D4(a1, &v4[v20]);
  swift_endAccess();
  v21 = OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view;
  [*&v4[OBJC_IVAR____TtCCE11MusicCoreUIO9MusicCore10NowPlaying19TrackTitleStackView5Label_view] setAnimationReferenceView:a3];
  memset(v39, 0, sizeof(v39));
  sub_100BC5720(v39);
  sub_100BC6288();
  v22 = *v18;
  v23 = [v22 superview];
  v24 = *&v4[v21];
  v25 = [v24 contentView];
  v26 = v25;
  if (!v23)
  {
    if (!v25)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!v25)
  {
    v26 = v23;
LABEL_8:

    goto LABEL_9;
  }

  sub_100009F78(0, &qword_1011B7C10, UIView_ptr);
  v27 = static NSObject.== infix(_:_:)();

  if (v27)
  {
    goto LABEL_12;
  }

LABEL_9:
  result = [v24 contentView];
  if (result)
  {
    v29 = result;
    [result addSubview:v22];

    result = [v24 contentView];
    if (result)
    {
      v30 = result;
      [result bounds];
      v32 = v31;
      v34 = v33;
      v36 = v35;
      v38 = v37;

      [v22 setFrame:{v32, v34, v36, v38}];
      [v22 setAutoresizingMask:18];
      [v24 setViewForContentSize:v22];
LABEL_12:

      sub_1000095E8(a1, &qword_1011B69D0, &qword_100F07870);
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100BC84CC()
{
  v1 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  v2 = NowPlaying.TrackMetadata.notPlaying.unsafeMutableAddressor();
  sub_100BC176C(v2, v0 + v1, type metadata accessor for NowPlaying.TrackMetadata);
  v3 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_debugIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes);
  v5 = objc_opt_self();
  v6 = [v5 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  leading = NSDirectionalEdgeInsetsZero.leading;
  bottom = NSDirectionalEdgeInsetsZero.bottom;
  trailing = NSDirectionalEdgeInsetsZero.trailing;
  *&v22 = v6;
  *(&v22 + 1) = v8;
  LOBYTE(v23) = 0;
  BYTE8(v23) = 0;
  *&v24 = 0x4040000000000000;
  *(&v24 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v25 = leading;
  *(&v25 + 1) = bottom;
  *&v26 = trailing;
  v27 = 0uLL;
  *(&v26 + 1) = 1;
  v28[0] = v6;
  v28[1] = v8;
  v29 = 0;
  v30 = 0;
  v31 = 0x4040000000000000;
  top = NSDirectionalEdgeInsetsZero.top;
  v33 = leading;
  v34 = bottom;
  v35 = trailing;
  v37 = 0;
  v38 = 0;
  v36 = 1;
  sub_100AFA074(&v22, v45);
  sub_100AFA0D0(v28);
  v12 = v25;
  v4[2] = v24;
  v4[3] = v12;
  v13 = v27;
  v4[4] = v26;
  v4[5] = v13;
  v14 = v23;
  *v4 = v22;
  v4[1] = v14;
  v15 = (v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes);
  v16 = [v5 preferredFontForTextStyle:UIFontTextStyleFootnote];
  v17 = [v7 secondaryLabelColor];
  *&v39 = v16;
  *(&v39 + 1) = v17;
  LOBYTE(v40) = 0;
  BYTE8(v40) = 0;
  *&v41 = 0x4040000000000000;
  *(&v41 + 1) = *&NSDirectionalEdgeInsetsZero.top;
  *&v42 = leading;
  *(&v42 + 1) = bottom;
  *&v43 = trailing;
  v44 = 0uLL;
  *(&v43 + 1) = 1;
  v45[0] = v16;
  v45[1] = v17;
  v46 = 0;
  v47 = 0;
  v48 = 0x4040000000000000;
  v49 = NSDirectionalEdgeInsetsZero.top;
  v50 = leading;
  v51 = bottom;
  v52 = trailing;
  v54 = 0;
  v55 = 0;
  v53 = 1;
  sub_100AFA074(&v39, v21);
  sub_100AFA0D0(v45);
  v18 = v42;
  v15[2] = v41;
  v15[3] = v18;
  v19 = v44;
  v15[4] = v43;
  v15[5] = v19;
  v20 = v40;
  *v15 = v39;
  v15[1] = v20;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___containerView) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView____lazy_storage___subtitleLabel) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_fadingGradientLayer) = 0;
  *(v0 + OBJC_IVAR___NowPlayingTrackTitleStackView_transition) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *sub_100BC8780(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  if (a2)
  {
  }

  v6[5] = a2;

  for (i = 0; i != 2; ++i)
  {
    if (v6[i + 4])
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_10010FC20(&qword_1011B6D00, &unk_100F07C88);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

void *sub_100BC888C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[4] = a1;
  if (a2)
  {
  }

  else
  {
    a3 = 0;
  }

  v7[5] = a3;

  for (i = 0; i != 2; ++i)
  {
    if (v7[i + 4])
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }
  }

  sub_10010FC20(&qword_1011B6D00, &unk_100F07C88);
  swift_arrayDestroy();
  return _swiftEmptyArrayStorage;
}

char *_s9MusicCore10NowPlayingO0aB2UIE19TrackTitleStackViewC17transitionContext2to9directionAF010TransitionK0VSgAC0F8MetadataV_AA5GlissO9DirectionOSgtF_0(uint64_t a1)
{
  v2 = v1;
  v102 = a1;
  v101 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v98 = *(v101 - 8);
  __chkstk_darwin();
  v89 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_10010FC20(&qword_1011B69E8, &qword_100F07880);
  __chkstk_darwin();
  v94 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v91 = &v85 - v5;
  __chkstk_darwin();
  v86 = &v85 - v6;
  sub_10010FC20(&qword_1011B69D0, &qword_100F07870);
  __chkstk_darwin();
  v88 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v87 = &v85 - v8;
  __chkstk_darwin();
  v85 = &v85 - v9;
  __chkstk_darwin();
  v11 = &v85 - v10;
  sub_10010FC20(&qword_1011B69E0, &qword_100F07878);
  __chkstk_darwin();
  v13 = &v85 - v12;
  v14 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v95 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin();
  v19 = &v85 - v18;
  v20 = OBJC_IVAR___NowPlayingTrackTitleStackView_transition;
  v21 = *&v1[OBJC_IVAR___NowPlayingTrackTitleStackView_transition];
  v103 = &v85 - v18;
  if (v21)
  {
    v22 = *(*v21 + 208);

    v22(v23);
    v19 = v103;

    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_100A21CC4(v13, v19, type metadata accessor for NowPlaying.TrackMetadata);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v15 + 56))(v13, 1, 1, v14, v17);
  }

  v24 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  sub_100BC176C(&v2[v24], v19, type metadata accessor for NowPlaying.TrackMetadata);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_1000095E8(v13, &qword_1011B69E0, &qword_100F07878);
  }

LABEL_7:
  v25 = *&v2[v20];
  v26 = v102;
  v100 = v14;
  if (!v25 || (v27 = *(*v25 + 424), v28 = type metadata accessor for NowPlaying.TrackTitleStackView(0), v29 = sub_100BC96F4(&qword_1011B69D8, type metadata accessor for NowPlaying.TrackTitleStackView, &protocol conformance descriptor for NowPlaying.TrackTitleStackView), , v27(&v106, v2, v28, v29), v19 = v103, , !v106))
  {
    v30 = 0;
    v31 = 0;
    goto LABEL_13;
  }

  v31 = *(&v107 + 1);
  v30 = v107;
  sub_100BC7AB8(v107);

  sub_100BC7AFC(v30, v31);
  if (!v30)
  {
LABEL_13:
    v33 = v30;
    v30 = sub_100BC11E8();
    goto LABEL_14;
  }

  v32 = static NowPlaying.TrackMetadata.== infix(_:_:)();

  if (v32)
  {

    goto LABEL_13;
  }

  v33 = v30;
LABEL_14:
  sub_100BC176C(v26 + *(v100 + 24), v11, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  (*(v98 + 7))(v11, 0, 1, v101);
  v34 = &v2[OBJC_IVAR___NowPlayingTrackTitleStackView_titleAttributes];
  swift_beginAccess();
  v35 = *(v34 + 3);
  v108 = *(v34 + 2);
  v109 = v35;
  v36 = *(v34 + 5);
  v110 = *(v34 + 4);
  v111 = v36;
  v37 = *(v34 + 1);
  v106 = *v34;
  v107 = v37;
  type metadata accessor for NowPlaying.TrackTitleStackView.Label(0);
  swift_allocObject();
  v38 = v2;
  sub_100AFA074(&v106, v105);
  v92 = sub_100BC81B8(v11, &v106, v38);

  sub_100AFA0D0(&v106);
  v96 = v33;
  v97 = v31;
  v90 = v11;
  v93 = v30;
  if (!v33)
  {
    goto LABEL_28;
  }

  if (static NowPlaying.TrackMetadata.== infix(_:_:)())
  {

    goto LABEL_28;
  }

  v39 = *(v100 + 28);
  v40 = *(v99 + 48);
  v41 = v86;
  sub_1000089F8(v26 + v39, v86, &qword_1011B69D0, &qword_100F07870);
  sub_1000089F8(&v19[v39], v41 + v40, &qword_1011B69D0, &qword_100F07870);
  v42 = *(v98 + 6);
  v43 = v101;
  if (v42(v41, 1, v101) != 1)
  {
    v46 = v85;
    sub_1000089F8(v41, v85, &qword_1011B69D0, &qword_100F07870);
    if (v42(v41 + v40, 1, v43) != 1)
    {
      v48 = v89;
      sub_100A21CC4(v41 + v40, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      v49 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
      sub_100A21D2C(v48, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      sub_100A21D2C(v46, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
      sub_1000095E8(v41, &qword_1011B69D0, &qword_100F07870);
      v45 = v97;
      if (v49)
      {

        goto LABEL_27;
      }

LABEL_23:

      v98 = v45;
      v47 = v100;
      goto LABEL_37;
    }

    sub_100A21D2C(v46, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v45 = v97;
LABEL_22:
    sub_1000095E8(v41, &qword_1011B69E8, &qword_100F07880);
    goto LABEL_23;
  }

  v44 = v42(v41 + v40, 1, v43);
  v45 = v97;
  if (v44 != 1)
  {
    goto LABEL_22;
  }

  sub_1000095E8(v41, &qword_1011B69D0, &qword_100F07870);
LABEL_27:
  v26 = v102;
  v19 = v103;
LABEL_28:
  v47 = v100;
  v50 = *(v100 + 28);
  v51 = v19;
  v52 = *(v99 + 48);
  v53 = v26 + v50;
  v54 = v91;
  sub_1000089F8(v53, v91, &qword_1011B69D0, &qword_100F07870);
  v55 = &v51[v50];
  v56 = v54;
  sub_1000089F8(v55, v54 + v52, &qword_1011B69D0, &qword_100F07870);
  v42 = *(v98 + 6);
  v57 = v101;
  if (v42(v56, 1, v101) == 1)
  {
    if (v42(v56 + v52, 1, v57) == 1)
    {
      sub_1000095E8(v56, &qword_1011B69D0, &qword_100F07870);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v58 = v87;
  sub_1000089F8(v56, v87, &qword_1011B69D0, &qword_100F07870);
  if (v42(v56 + v52, 1, v57) == 1)
  {
    sub_100A21D2C(v58, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v47 = v100;
LABEL_33:
    sub_1000095E8(v56, &qword_1011B69E8, &qword_100F07880);
LABEL_36:
    v98 = sub_100BC1570();
    goto LABEL_37;
  }

  v59 = v56 + v52;
  v60 = v89;
  sub_100A21CC4(v59, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v61 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_100A21D2C(v60, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100A21D2C(v58, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1000095E8(v56, &qword_1011B69D0, &qword_100F07870);
  v47 = v100;
  if ((v61 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_35:
  if (static NowPlaying.TrackMetadata.== infix(_:_:)())
  {
    goto LABEL_36;
  }

  v98 = 0;
LABEL_37:
  v62 = *(v47 + 28);
  v63 = *(v99 + 48);
  v64 = v94;
  sub_1000089F8(v102 + v62, v94, &qword_1011B69D0, &qword_100F07870);
  sub_1000089F8(&v103[v62], v64 + v63, &qword_1011B69D0, &qword_100F07870);
  v65 = v101;
  if (v42(v64, 1, v101) == 1)
  {
    v66 = v42(v64 + v63, 1, v65);
    v67 = v102;
    if (v66 == 1)
    {
      sub_1000095E8(v64, &qword_1011B69D0, &qword_100F07870);
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v68 = v88;
  sub_1000089F8(v64, v88, &qword_1011B69D0, &qword_100F07870);
  if (v42(v64 + v63, 1, v65) == 1)
  {
    sub_100A21D2C(v68, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
    v67 = v102;
LABEL_42:
    sub_1000095E8(v64, &qword_1011B69E8, &qword_100F07880);
LABEL_43:
    v69 = v90;
    sub_1000089F8(v67 + v62, v90, &qword_1011B69D0, &qword_100F07870);
    v70 = &v38[OBJC_IVAR___NowPlayingTrackTitleStackView_subtitleAttributes];
    swift_beginAccess();
    v71 = *(v70 + 2);
    v72 = *(v70 + 3);
    v73 = *(v70 + 5);
    v105[4] = *(v70 + 4);
    v105[5] = v73;
    v105[3] = v72;
    v74 = *(v70 + 1);
    v105[0] = *v70;
    v105[1] = v74;
    v105[2] = v71;
    swift_allocObject();
    v75 = v38;
    sub_100AFA074(v105, &v104);
    sub_100BC81B8(v69, v105, v75);

    sub_100AFA0D0(v105);
    goto LABEL_45;
  }

  v76 = v64 + v63;
  v77 = v89;
  sub_100A21CC4(v76, v89, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  v78 = v64;
  v79 = static NowPlaying.TrackMetadata.StringKind.__derived_enum_equals(_:_:)();
  sub_100A21D2C(v77, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_100A21D2C(v68, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  sub_1000095E8(v78, &qword_1011B69D0, &qword_100F07870);
  v67 = v102;
  if ((v79 & 1) == 0)
  {
    goto LABEL_43;
  }

LABEL_45:
  v80 = OBJC_IVAR___NowPlayingTrackTitleStackView_metadata;
  swift_beginAccess();
  v81 = &v38[v80];
  v82 = v95;
  sub_100BC176C(v81, v95, type metadata accessor for NowPlaying.TrackMetadata);
  v83 = static NowPlaying.TrackMetadata.== infix(_:_:)();
  sub_100BC7AFC(v96, v97);
  sub_100A21D2C(v82, type metadata accessor for NowPlaying.TrackMetadata);
  sub_100A21D2C(v103, type metadata accessor for NowPlaying.TrackMetadata);
  if (v83)
  {
  }

  return v93;
}

uint64_t sub_100BC96F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_100BC973C(id result, void *a2, void *a3)
{
  if (result != 1)
  {
    v4 = result;
    v5 = a3;
    v6 = v4;

    return a2;
  }

  return result;
}

uint64_t sub_100BC97E0(uint64_t a1)
{
  result = type metadata accessor for NowPlaying.TrackMetadata(319);
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

uint64_t sub_100BC9898(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_100BC98E8(uint64_t a1)
{
  sub_100BC99A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100BC99A4(uint64_t a1)
{
  if (!qword_1011B6AD0)
  {
    type metadata accessor for NowPlaying.TrackMetadata.StringKind(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &qword_1011B6AD0);
    }
  }
}

uint64_t sub_100BC99FC(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

__n128 sub_100BC9A20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100BC9A3C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_100BC9A84(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100BC9AEC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100BC9B40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100BC9BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_100BC9BEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100BC9C20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 152))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100BC9C40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 152) = v3;
  return result;
}

unint64_t sub_100BC9CE4()
{
  result = qword_1011B6CD8;
  if (!qword_1011B6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6CD8);
  }

  return result;
}

unint64_t sub_100BC9D38()
{
  result = qword_1011B6CE0;
  if (!qword_1011B6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6CE0);
  }

  return result;
}

double sub_100BC9D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {

    return sub_100BC7AB8(a3);
  }

  return result;
}

double sub_100BC9DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {

    return sub_100BC7AFC(a3, a4);
  }

  return result;
}

id PassthroughView.hitTest(_:with:)(uint64_t a1, double a2, double a3)
{
  if (UIViewIgnoresTouchEvents())
  {
    return 0;
  }

  v12.receiver = v3;
  v12.super_class = type metadata accessor for PassthroughView();
  v7 = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, a2, a3);
  if (v7)
  {
    sub_100BAE718();
    v8 = v7;
    v9 = v3;
    v10 = static NSObject.== infix(_:_:)();

    if (v10)
    {

      return 0;
    }
  }

  return v7;
}

id PassthroughView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v10, "initWithFrame:", a1, a2, a3, a4);
}

id PassthroughView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PassthroughView();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id PassthroughView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PassthroughView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *SymbolButton.__allocating_init(intent:)(uint64_t a1)
{
  v1 = a1;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v3 = (&v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100BCA304(v1, 2, v3);
  v4 = objc_allocWithZone(type metadata accessor for SymbolButton(0));
  v5 = sub_100BF5FEC(v3, 0, 0);
  v6 = &v5[OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_configurationProvider];
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = sub_100BCA600;
  v6[1] = 0;
  v9 = v5;
  sub_100020438(v7, v8);
  if (v1)
  {
    if (v1 == 1)
    {
      v10 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v10 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v10 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v11, v12, v13, v14);

  return v9;
}

uint64_t sub_100BCA304@<X0>(unsigned int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a2;
  v4 = type metadata accessor for UIViewConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (type metadata accessor for SymbolButton.Configuration(0) - 8);
  __chkstk_darwin();
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100BF5F9C(v29);
  v11 = v29[5];
  *(a3 + 64) = v29[4];
  *(a3 + 80) = v11;
  *(a3 + 96) = v29[6];
  v12 = v30;
  v13 = v29[1];
  *a3 = v29[0];
  *(a3 + 16) = v13;
  v14 = v29[3];
  *(a3 + 32) = v29[2];
  *(a3 + 48) = v14;
  *(a3 + 112) = v12;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 136) = UIFontTextStyleSubheadline;
  *(a3 + 144) = UIFontWeightSemibold;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0x3FF0000000000000;
  *(a3 + 176) = 0;
  *(a3 + 184) = 0;
  *(a3 + 192) = 0;
  *(a3 + 200) = 0;
  *(a3 + 208) = 1;
  *(a3 + 216) = 0;
  *(a3 + 224) = 0;
  *(a3 + 232) = 1;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  v15 = v8[11];
  v16 = type metadata accessor for UIView.Corner();
  (*(*(v16 - 8) + 56))(a3 + v15, 1, 1, v16);
  v17 = a3 + v8[12];
  *(v17 + 48) = 0;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *v17 = 0u;
  v18 = (a3 + v8[13]);
  *v18 = 0;
  v18[1] = 0;
  v18[2] = 1;
  *(a3 + v8[14]) = 0x4010000000000000;
  *(a3 + v8[15]) = vdupq_n_s64(0x4040000000000000uLL);
  v19 = a3 + v8[16];
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 1;
  v20 = (a3 + v8[17]);
  v21 = *&NSDirectionalEdgeInsetsZero.bottom;
  *v20 = *&NSDirectionalEdgeInsetsZero.top;
  v20[1] = v21;
  v22 = a3 + v8[18];
  *v22 = 1;
  *(v22 + 8) = 0;
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(a3 + v8[19]) = 0x3FF0000000000000;
  *(a3 + v8[20]) = 0;
  *(a3 + v8[21]) = 2;
  v23 = UIFontTextStyleSubheadline;
  SymbolButton.Configuration.init()(v10);
  sub_100BCB4F4(v10, v27, v28);
  sub_100BCF560(a3, type metadata accessor for SymbolButton.Configuration);
  sub_100BCF4FC(v10, a3);
  v24 = [objc_opt_self() currentTraitCollection];
  UIViewConfigurationState.init(traitCollection:)();
  sub_100BCA624(v25);
  return (*(v5 + 8))(v7, v4);
}

void sub_100BCA624(double a1)
{
  v2 = v1;
  v3 = UIViewConfigurationState.traitCollection.getter();
  v4 = [v3 userInterfaceIdiom];

  if (v4 != 6)
  {
    if (*(v1 + 232) == 1 || (v5 = *(v1 + 256), v5 == 2))
    {
      if (UIViewConfigurationState.isHighlighted.getter() & 1) != 0 || (UIViewConfigurationState.isSelected.getter())
      {
        if (qword_1011B04E0 != -1)
        {
          swift_once();
        }

        v6 = static UIColor.MusicTint.pressed;
        v7 = *(v2 + 112);
        v8 = static UIColor.MusicTint.pressed;

        *(v2 + 112) = v6;
        *(v2 + 176) = v6;
      }

      else
      {

        *(v1 + 112) = 0;
        *(v1 + 176) = 0;
      }
    }

    else
    {
      v9 = objc_opt_self();
      if (v5)
      {
        v10 = v9;
        v11 = [v9 blackColor];

        *(v1 + 112) = v11;
        v12 = [v10 blackColor];

        *(v1 + 176) = v12;
        [objc_allocWithZone(UIColor) initWithWhite:0.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v14 = v13;
        v16 = v15;
        v18 = v17 & 1;

        *(v1 + 280) = v14;
        *(v1 + 288) = v18;
        *(v1 + 296) = v16;
        LOBYTE(v14) = UIViewConfigurationState.isHighlighted.getter();
        sub_100B11BFC();
        v19 = UIColor.init(decimalRed:decimalGreen:decimalBlue:alpha:)(19, 19, 20, 1.0);
        if (v14)
        {
          v20 = 0x3FD5C28F5C28F5C3;
        }

        else
        {
          v20 = 0x3FD3333333333333;
        }

        sub_100282F24(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
        *(v2 + 200) = v20;
        *(v2 + 208) = v19;
      }

      else
      {
        v21 = v9;
        v22 = [v9 whiteColor];

        *(v1 + 112) = v22;
        v23 = [v21 whiteColor];

        *(v1 + 176) = v23;
        [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.05];
        UIView.Border.init(thickness:color:)();
        v25 = v24;
        v27 = v26;
        v29 = v28 & 1;

        *(v1 + 280) = v25;
        *(v1 + 288) = v29;
        *(v1 + 296) = v27;
        v30 = UIViewConfigurationState.isHighlighted.getter();
        v31 = [v21 whiteColor];
        if (v30)
        {
          v32 = 0x3FD0A3D70A3D70A4;
        }

        else
        {
          v32 = 0x3FCC28F5C28F5C29;
        }

        sub_100282F24(*(v2 + 200), *(v2 + 208), *(v2 + 216), *(v2 + 224));
        *(v2 + 200) = v32;
        *(v2 + 208) = v31;
      }

      *(v2 + 216) = 0;
      *(v2 + 224) = 0;
    }
  }
}

uint64_t SymbolButton.Intent.accessibilityIdentifier.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v1 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v1 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v1 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v2 = *v1;

  return v2;
}

void SymbolButton.update(to:)(unsigned int a1)
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = (&v15 - v5);
  v7 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BCDF64(v1 + v7, v4);
  if (*(v4 + 29) == 1)
  {
    sub_100BCF560(v4, type metadata accessor for SymbolButton.Configuration);
    v8 = 2;
  }

  else
  {
    v9 = v4[256];
    sub_100BCF560(v4, type metadata accessor for SymbolButton.Configuration);
    if (v9 == 2)
    {
      v8 = 2;
    }

    else
    {
      v8 = (v9 & 1) == 0;
    }
  }

  sub_100BCA304(a1, v8, v6);
  SymbolButton.setConfiguration(_:animation:updates:)(v6, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_100BCF560(v6, type metadata accessor for SymbolButton.Configuration);
  if (a1)
  {
    if (a1 == 1)
    {
      v10 = AccessibilityIdentifier.shuffleIntentButton.unsafeMutableAddressor();
    }

    else
    {
      v10 = AccessibilityIdentifier.startSingingIntentButton.unsafeMutableAddressor();
    }
  }

  else
  {
    v10 = AccessibilityIdentifier.playIntentButton.unsafeMutableAddressor();
  }

  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];

  type metadata accessor for SymbolButton(0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v11, v12, v13, v14);
}

uint64_t SymbolButton.materialColor.getter()
{
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BCDF64(v0 + v3, v2);
  if (*(v2 + 29) == 1)
  {
    sub_100BCF560(v2, type metadata accessor for SymbolButton.Configuration);
    return 2;
  }

  else
  {
    v5 = v2[256];
    sub_100BCF560(v2, type metadata accessor for SymbolButton.Configuration);
    if (v5 == 2)
    {
      return 2;
    }

    else
    {
      return (v5 & 1) == 0;
    }
  }
}

void SymbolButton.materialColor.setter(char a1)
{
  sub_10010FC20(&qword_1011B6D30, &unk_100F07CB0);
  __chkstk_darwin();
  v4 = &v19 - v3;
  v5 = type metadata accessor for SymbolButton.Configuration(0);
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin().n128_u64[0];
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v1 traitCollection];
  v11 = [v10 userInterfaceIdiom];

  if (v11 != 6)
  {
    if (a1 == 2)
    {
      v19 = 0;
      v20 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 1;
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 2;
      v25 = 0;
      v26 = 0;
      sub_100BCB3D0(&v21, a1 & 1);
      v15 = v21;
      v19 = v23;
      v20 = v22;
      v12 = v24;
      v13 = v25;
      v14 = v26;
    }

    v16 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
    swift_beginAccess();
    sub_100BCDF64(v1 + v16, v9);
    sub_1002ACCD0(*(v9 + 29), *(v9 + 30), *(v9 + 31), *(v9 + 32), *(v9 + 33), *(v9 + 34));
    v17 = v19;
    v18 = v20;
    *(v9 + 29) = v15;
    *(v9 + 30) = v18;
    *(v9 + 31) = v17;
    *(v9 + 32) = v12;
    *(v9 + 33) = v13;
    *(v9 + 34) = v14;
    SymbolButton.setConfiguration(_:animation:updates:)(v9, 0, 0, 0, 1, _swiftEmptyArrayStorage);
    sub_100BCF560(v9, type metadata accessor for SymbolButton.Configuration);
    (*(v6 + 56))(v4, 1, 1, v5);
    SymbolButton.updateConfigurationIfNeeded(_:animation:)(v4, 0, 0, 0, 1);
    sub_1000095E8(v4, &qword_1011B6D30, &unk_100F07CB0);
  }
}

void (*SymbolButton.materialColor.modify(uint64_t *a1))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(*(type metadata accessor for SymbolButton.Configuration(0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 32) = v6;
  v8 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BCDF64(v1 + v8, v7);
  if (*(v7 + 232) == 1)
  {
    sub_100BCF560(v7, type metadata accessor for SymbolButton.Configuration);
    v9 = 2;
  }

  else
  {
    v10 = *(v7 + 256);
    sub_100BCF560(v7, type metadata accessor for SymbolButton.Configuration);
    if (v10 == 2)
    {
      v9 = 2;
    }

    else
    {
      v9 = (v10 & 1) == 0;
    }
  }

  *(v4 + 40) = v9;
  return sub_100BCB014;
}

void sub_100BCB014(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  SymbolButton.materialColor.setter(*(*a1 + 40));
  free(v2);

  free(v1);
}

uint64_t SymbolButton.Intent.title.getter(char a1)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v6 = &v10[-v5];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v6, v1);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v7 = qword_10121B340;
  static Locale.current.getter();
  v8 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v6, v1);
  return v8;
}

uint64_t SymbolButton.Intent.symbolName.getter(char a1)
{
  if (!a1)
  {
    return 0x6C69662E79616C70;
  }

  if (a1 == 1)
  {
    return 0x656C6666756873;
  }

  return 0x69732E656C707061;
}

unint64_t SymbolButton.Intent.id.getter(char a1)
{
  result = 0xD000000000000015;
  if (a1 == 1)
  {
    return 0xD000000000000018;
  }

  return result;
}

uint64_t SymbolButton.Intent.actionDetailsPlayType.getter(char a1)
{
  if (a1 == 1)
  {
    return 0x41656C6666756873;
  }

  else
  {
    return 7105633;
  }
}

uint64_t SymbolButton.Intent.actionType.getter(char a1)
{
  if ((a1 & 0xFE) != 0)
  {
    return 64;
  }

  else
  {
    return 31;
  }
}

unint64_t sub_100BCB39C@<X0>(unint64_t *a1@<X8>)
{
  result = SymbolButton.Intent.id.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_100BCB3D0(uint64_t a1, char a2)
{
  *(a1 + 24) = (a2 & 1) == 0;
  v3 = [objc_opt_self() effectWithBlurRadius:50.0];

  *a1 = v3;
  v4 = [objc_opt_self() colorEffectSaturate:1.6];

  *(a1 + 8) = v4;
  _StringGuts.grow(_:)(19);

  v5._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v5);

  *(a1 + 32) = 0xD000000000000011;
  *(a1 + 40) = 0x8000000100E670E0;
}

double sub_100BCB4F4(uint64_t a1, char a2, int a3)
{
  v37 = a3;
  sub_10010FC20(&qword_1011B7710, &qword_100EFF6F0);
  __chkstk_darwin();
  v6 = &v36 - v5;
  sub_100BF5F9C(&v47);
  v55 = v47;
  v7 = v48;
  v8 = v51;
  sub_1000095E8(&v55, &qword_1011B7770, &qword_100F083D0);
  v9 = a2;
  v10 = *&aPlayFilshuffle[8 * a2];
  v11 = *&aAppleSil[8 * a2 + 8];
  v54 = v49;
  v12 = UIFontTextStyleSubheadline;
  sub_100BCF560(&v54, _s3__C9TextStyleVMa_0);
  v13 = *(a1 + 80);
  v44[4] = *(a1 + 64);
  v44[5] = v13;
  v44[6] = *(a1 + 96);
  v45 = *(a1 + 112);
  v14 = *(a1 + 16);
  v44[0] = *a1;
  v44[1] = v14;
  v15 = *(a1 + 48);
  v44[2] = *(a1 + 32);
  v44[3] = v15;
  sub_100BCF5C0(v44);
  *a1 = v10;
  *(a1 + 8) = v11;
  *(a1 + 16) = v7;
  *(a1 + 24) = v12;
  *(a1 + 32) = v50;
  *(a1 + 48) = 6;
  *(a1 + 56) = v8;
  *(a1 + 64) = xmmword_100EFDC80;
  *(a1 + 80) = 1;
  *(a1 + 81) = v52;
  *(a1 + 97) = *v53;
  *(a1 + 112) = *&v53[15];
  v16 = SymbolButton.Intent.title.getter(a2);
  v18 = v17;

  v19 = UIFontTextStyleBody;

  v20 = *(a1 + 136);
  v21 = *(a1 + 168);
  v46[2] = *(a1 + 152);
  v46[3] = v21;
  v46[4] = *(a1 + 184);
  v46[0] = *(a1 + 120);
  v46[1] = v20;
  sub_100BCF614(v46);
  *(a1 + 120) = v16;
  *(a1 + 128) = v18;
  *(a1 + 136) = v19;
  *(a1 + 144) = UIFontWeightSemibold;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3FF0000000000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  v22 = [objc_opt_self() currentTraitCollection];
  v23 = [v22 userInterfaceIdiom];

  if (v23 != 6)
  {
    if (v37 == 2)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 1;
    }

    else
    {
      v38 = 0;
      v39 = 0;
      v40 = 0;
      v41 = 2;
      v42 = 0;
      v43 = 0;
      sub_100BCB3D0(&v38, v37 & 1);
      v29 = v38;
      v24 = v39;
      v25 = v40;
      v26 = v41;
      v27 = v42;
      v28 = v43;
    }

    sub_1002ACCD0(*(a1 + 232), *(a1 + 240), *(a1 + 248), *(a1 + 256), *(a1 + 264), *(a1 + 272));
    *(a1 + 232) = v29;
    *(a1 + 240) = v24;
    *(a1 + 248) = v25;
    *(a1 + 256) = v26;
    *(a1 + 264) = v27;
    *(a1 + 272) = v28;
  }

  if (qword_1011B0800 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for UIView.Corner();
  v31 = sub_1000060E4(v30, static UIView.Corner.capsule);
  v32 = *(v30 - 8);
  (*(v32 + 16))(v6, v31, v30);
  (*(v32 + 56))(v6, 0, 1, v30);
  v33 = type metadata accessor for SymbolButton.Configuration(0);
  sub_100B070E4(v6, a1 + v33[9]);
  *(a1 + v33[12]) = qword_100F08428[v9];
  *(a1 + v33[13]) = vdupq_n_s64(0x4048000000000000uLL);
  v34 = (a1 + v33[15]);
  result = 0.0;
  *v34 = xmmword_100EFDC90;
  v34[1] = xmmword_100EFDC90;
  return result;
}

Swift::Int static PlayIntentButtonStack.playShuffle(_:)()
{
  v0 = sub_100B0F310(&off_1010E0B18);

  return v0;
}

Swift::Int static PlayIntentButtonStack.sing(_:)()
{
  v0 = sub_100B0F310(&off_1010E0B40);

  return v0;
}

Swift::Int PlayIntentButtonStack.init(_:handler:)(char a1)
{
  sub_10010FC20(&qword_1011B5DE8, &qword_100F06D40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6B0;
  *(inited + 32) = a1;
  v3 = sub_100B0F310(inited);
  swift_setDeallocating();
  return v3;
}

uint64_t PlayIntentButtonStack.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = static Axis.Set.horizontal.getter();
  v9 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v8)
  {
    v9 = Axis.Set.init(rawValue:)();
  }

  *a4 = v9;
  v10 = sub_10010FC20(&qword_1011B6D38, &qword_100F07CC0);
  return sub_100BCBABC(a1, a2, a3, &a4[*(v10 + 44)]);
}

uint64_t sub_100BCBABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_10010FC20(&qword_1011B6DD0, &qword_100F08388);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v22 - v12;
  __chkstk_darwin();
  v15 = &v22 - v14;
  __chkstk_darwin();
  v17 = &v22 - v16;
  sub_100BCBCF4(0, a1, a2, a3, &v22 - v16);
  sub_100BCBCF4(1, a1, a2, a3, v15);
  v18 = *(v9 + 16);
  v18(v13, v17, v8);
  v18(v11, v15, v8);
  v18(a4, v13, v8);
  v19 = sub_10010FC20(&qword_1011B6DD8, &qword_100F08390);
  v18(&a4[*(v19 + 48)], v11, v8);
  v20 = *(v9 + 8);
  v20(v15, v8);
  v20(v17, v8);
  v20(v11, v8);
  return (v20)(v13, v8);
}

void sub_100BCBCF4(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v52 = a5;
  v51 = sub_10010FC20(&qword_1011B29E0, &qword_100F02808);
  __chkstk_darwin();
  v50 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v48 = &v43[-v10];
  v11 = type metadata accessor for DynamicTypeSize();
  v57 = *(v11 - 8);
  __chkstk_darwin();
  v56 = &v43[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v55 = &v43[-v13];
  v49 = sub_10010FC20(&qword_1011B29E8, &qword_100F02810);
  __chkstk_darwin();
  v47 = &v43[-v14];
  v53 = sub_10010FC20(&qword_1011B6DE0, &qword_100F08398);
  __chkstk_darwin();
  v16 = &v43[-v15];
  v17 = sub_10010FC20(&qword_1011B6DE8, &qword_100F083A0);
  __chkstk_darwin();
  v19 = &v43[-v18];
  v54 = v16;
  *v16 = 0x4030000000000000;
  v20 = *(a2 + 16);
  v58 = v21;
  v59 = &v43[-v18];
  if (v20)
  {
    v44 = a1;
    v45 = a3;
    v46 = a4;
    v22 = sub_100BCD3F0(v20, 0);
    v23 = sub_100BCDE68(&v60, v22 + 32, v20, a2);
    v24 = a2;
    v25 = v60;
    v26 = v24;

    sub_10005C9F8(v25);
    if (v23 != v20)
    {
      goto LABEL_8;
    }

    v17 = v58;
    v19 = v59;
    a2 = v26;
    a3 = v45;
    a4 = v46;
    LOBYTE(a1) = v44;
  }

  else
  {
    v22 = _swiftEmptyArrayStorage;
  }

  v60 = v22;
  sub_100BCD464(&v60);
  v27 = swift_allocObject();
  *(v27 + 16) = a1 & 1;
  *(v27 + 24) = a2;
  *(v27 + 32) = a3;
  *(v27 + 40) = a4;

  sub_10010FC20(&qword_1011B6DF0, &qword_100F083A8);
  sub_100020674(&qword_1011B6DF8, &qword_1011B6DF0, &qword_100F083A8, &protocol conformance descriptor for [A]);
  sub_100BCEE38();
  sub_100BCF298();
  v28 = v54;
  ForEach<>.init(_:content:)();
  v29 = *(a2 + 16) < 2uLL;
  sub_10003D17C(v28, v19, &qword_1011B6DE0, &qword_100F08398);
  v30 = &v19[*(v17 + 36)];
  *v30 = v29;
  v30[1] = 1;
  v31 = v57;
  v32 = *(v57 + 104);
  v33 = v55;
  v32(v55, enum case for DynamicTypeSize.xSmall(_:), v11);
  v34 = v56;
  v32(v56, enum case for DynamicTypeSize.accessibility2(_:), v11);
  sub_100BCF2EC(&qword_1011B1658, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  if (dispatch thunk of static Comparable.<= infix(_:_:)())
  {
    v35 = *(v31 + 32);
    v36 = v48;
    v35(v48, v33, v11);
    v37 = v51;
    v35((v36 + *(v51 + 48)), v34, v11);
    v38 = v50;
    sub_1000089F8(v36, v50, &qword_1011B29E0, &qword_100F02808);
    v39 = *(v37 + 48);
    v40 = v47;
    v35(v47, v38, v11);
    v41 = *(v31 + 8);
    v41(&v38[v39], v11);
    sub_10003D17C(v36, v38, &qword_1011B29E0, &qword_100F02808);
    v35((v40 + *(v49 + 36)), &v38[*(v37 + 48)], v11);
    v41(v38, v11);
    sub_100BCF334();
    sub_100020674(&qword_1011B2B08, &qword_1011B29E8, &qword_100F02810, &protocol conformance descriptor for ClosedRange<A>);
    v42 = v59;
    View.dynamicTypeSize<A>(_:)();
    sub_1000095E8(v40, &qword_1011B29E8, &qword_100F02810);
    sub_1000095E8(v42, &qword_1011B6DE8, &qword_100F083A0);
    return;
  }

  __break(1u);
LABEL_8:
  __break(1u);

  __break(1u);
}

uint64_t PlayIntentButtonWrapper.init(intent:iconOnly:handler:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = swift_getKeyPath();
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a4;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  return result;
}

uint64_t sub_100BCC3DC(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5, double *a6, __n128 a7)
{
  v7 = a7.n128_f64[0];
  v41 = a6;
  v40 = a4;
  v39 = a3;
  v38 = a2;
  v37[1] = a1;
  v9 = type metadata accessor for LayoutSubview();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for LayoutSubviews();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10010FC20(&qword_1011B6DB0, &qword_100F08380) - 8;
  v18 = __chkstk_darwin();
  v20 = v37 - v19;
  v21 = *(v14 + 16);
  v42 = a5;
  v21(v16, a5, v13, v18);
  sub_100BCF2EC(&qword_1011B6DC0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Sequence.makeIterator()();
  v22 = *(v17 + 44);
  sub_100BCF2EC(&qword_1011B6DB8, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.endIndex.getter();
  v23 = 0.0;
  v24 = 0.0;
  if (*&v20[v22] != v44[0])
  {
    v25 = (v10 + 16);
    v26 = (v10 + 8);
    do
    {
      v27 = dispatch thunk of Collection.subscript.read();
      (*v25)(v12);
      v27(v44, 0);
      dispatch thunk of Collection.formIndex(after:)();
      static ProposedViewSize.zero.getter();
      LOBYTE(v44[0]) = v28 & 1;
      LOBYTE(v43) = v29 & 1;
      LayoutSubview.sizeThatFits(_:)();
      v31 = v30;
      v33 = v32;
      (*v26)(v12, v9);
      if (v24 <= v31)
      {
        v24 = v31;
      }

      if (v23 <= v33)
      {
        v23 = v33;
      }

      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v20[v22] != v44[0]);
  }

  sub_1000095E8(v20, &qword_1011B6DB0, &qword_100F08380);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v34 = dispatch thunk of Collection.distance(from:to:)();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  result = dispatch thunk of Collection.distance(from:to:)();
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v36 = v41;
    *v41 = v24;
    v36[1] = v24 * v34 + (result - 1) * v7;
  }

  return result;
}

void (*sub_100BCC854(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return sub_100260668;
}

uint64_t sub_100BCC8DC@<X0>(_BYTE *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = static Axis.Set.horizontal.getter();
  v8 = Axis.Set.init(rawValue:)();
  Axis.Set.init(rawValue:)();
  if (Axis.Set.init(rawValue:)() != v7)
  {
    v8 = Axis.Set.init(rawValue:)();
  }

  *a2 = v8;
  v9 = sub_10010FC20(&qword_1011B6D38, &qword_100F07CC0);
  return sub_100BCBABC(v4, v5, v6, &a2[*(v9 + 44)]);
}

uint64_t EnvironmentValues.playIntentButtonMaterial.getter()
{
  sub_100BCDFC8();
  EnvironmentValues.subscript.getter();
  return v1;
}

void *sub_100BCC9C0@<X0>(_BYTE *a1@<X8>)
{
  sub_100BCDFC8();
  result = EnvironmentValues.subscript.getter();
  *a1 = v3;
  return result;
}

char *PlayIntentButtonWrapper.makeUIView(context:)()
{
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(*v0);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t PlayIntentButtonWrapper.updateUIView(_:context:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SymbolButton.update(to:)(*v2);
  v25 = v2[32];
  v10 = *(v2 + 3);
  v24 = v10;
  if (v25 != 1)
  {

    v11 = static os_log_type_t.fault.getter();
    v12 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v11, &_mh_execute_header, v12, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_1000095E8(&v24, &qword_1011B6D48, &unk_100F07CF0);
    (*(v7 + 8))(v9, v6);
    LOBYTE(v10) = v23[40];
  }

  SymbolButton.materialColor.setter(v10);
  v13 = v2[1];
  v14 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
  swift_beginAccess();
  sub_100BCDF64(a1 + v14, v5);
  *(v5 + 184) = v13;
  SymbolButton.setConfiguration(_:animation:updates:)(v5, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_100BCF560(v5, type metadata accessor for SymbolButton.Configuration);
  sub_100BCDF64(a1 + v14, v5);
  *(v5 + 24) = 1;
  SymbolButton.setConfiguration(_:animation:updates:)(v5, 0, 0, 0, 1, _swiftEmptyArrayStorage);
  sub_100BCF560(v5, type metadata accessor for SymbolButton.Configuration);
  v15 = *(v2 + 1);
  v16 = *(v2 + 2);
  v17 = swift_allocObject();
  v18 = *(v2 + 1);
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = v2[32];
  v19 = (a1 + OBJC_IVAR____TtC11MusicCoreUI12SymbolButton_handler);
  swift_beginAccess();
  v20 = *v19;
  v21 = v19[1];
  *v19 = sub_100BCE01C;
  v19[1] = v17;
  sub_1000089F8(&v24, v23, &qword_1011B6D48, &unk_100F07CF0);
  sub_100030444(v15, v16);
  return sub_100020438(v20, v21);
}

double PlayIntentButtonWrapper.sizeThatFits(_:uiView:context:)(uint64_t a1, char a2, int a3, int a4, id a5)
{
  [a5 intrinsicContentSize];
  if ((a2 & 1) == 0)
  {
    if (result > *&a1)
    {
      v8 = result;
    }

    else
    {
      v8 = *&a1;
    }

    if (*&a1 != INFINITY)
    {
      return v8;
    }
  }

  return result;
}

char *sub_100BCCE88()
{
  v3 = *v0;
  type metadata accessor for SymbolButton(0);
  v1 = SymbolButton.__allocating_init(intent:)(v3);
  PlayIntentButtonWrapper.updateUIView(_:context:)(v1);
  return v1;
}

uint64_t sub_100BCCEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100BCF1D4();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100BCCF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100BCF1D4();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100BCCFAC(uint64_t a1)
{
  sub_100BCF1D4();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double View.playIntentButtonMaterial(_:)(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  View.environment<A>(_:_:)();

  return result;
}

uint64_t sub_100BCD048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100BCF150();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.playIntentButtonMaterial.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_100BCDFC8();
  EnvironmentValues.subscript.getter();
  return sub_100BCD10C;
}

uint64_t static PlayIntentLayoutHelper.Configuration.with(_:)(void (*a1)(unsigned __int16 *))
{
  v2 = 513;
  v3 = 0x4030000000000000;
  a1(&v2);
  return v2;
}

uint64_t PlayIntentLayoutHelper.configuration.setter(uint64_t result, double a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

char *PlayIntentLayoutHelper.init()()
{
  type metadata accessor for SymbolButton(0);
  v0 = SymbolButton.__allocating_init(intent:)(0);
  SymbolButton.__allocating_init(intent:)(1);
  return v0;
}

uint64_t PlayIntentLayoutHelper.layout(in:rect:)(void *a1, double *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v7 = a5;
  sub_10010FC20(&qword_1011B5630, "\b)\n");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBC6D0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;
  v13 = a3;
  v14 = a4;
  _s11MusicCoreUI22PlayIntentLayoutHelperV6layout_2in4rect13configurationySayAA12SymbolButtonCG_So6UIViewCSo6CGRectVSgAC13ConfigurationVtFZ_0(inited, a1, a2, v7, a6);
  swift_setDeallocating();
  return swift_arrayDestroy();
}

uint64_t PlaybackIntentDescriptor.configure(for:)(unsigned __int8 a1)
{
  v2 = a1;
  v3 = PlaybackIntentDescriptor.intent.getter();
  [v3 setShuffleMode:v2 == 1];
  [v3 setRepeatMode:0];

  result = type metadata accessor for PlaybackIntentDescriptor(0);
  *(v1 + *(result + 36)) = v2 == 2;
  return result;
}

id MPCPlaybackIntent.configure(for:)(char a1)
{
  [v1 setShuffleMode:a1 == 1];

  return [v1 setRepeatMode:0];
}

void *sub_100BCD3F0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10010FC20(&qword_1011B5DE8, &qword_100F06D40);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_100BCD464(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100BACB44(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= v14)
          {
            break;
          }

          v13[1] = v14;
          *v13-- = v11;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = v7 + 4;
    v16[1] = v6;
    sub_100BCD59C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_100BCD59C(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_100BCDD50(v9);
    }

    v77 = v9 + 16;
    v78 = *(v9 + 2);
    if (v78 >= 2)
    {
      while (*a3)
      {
        v79 = &v9[16 * v78];
        v80 = *v79;
        v81 = &v77[2 * v78];
        v82 = v81[1];
        sub_100BCDAD8((*a3 + *v79), (*a3 + *v81), (*a3 + v82), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_112;
        }

        if (v78 - 2 >= *v77)
        {
          goto LABEL_113;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *v77 - v78;
        if (*v77 < v78)
        {
          goto LABEL_114;
        }

        v78 = *v77 - 1;
        memmove(v81, v81 + 2, 16 * v83);
        *v77 = v78;
        if (v78 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + v8);
      v12 = *(*a3 + v10);
      v13 = v10 + 2;
      v14 = v11;
      while (v6 != v13)
      {
        v15 = *(*a3 + v13);
        v16 = (v11 < v12) ^ (v15 >= v14);
        ++v13;
        v14 = v15;
        if ((v16 & 1) == 0)
        {
          v8 = v13 - 1;
          if (v11 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = v8 - 1;
        v18 = v10;
        do
        {
          if (v18 != v17)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v19 = *(v21 + v18);
            *(v21 + v18) = *(v21 + v17);
            *(v21 + v17) = v19;
          }
        }

        while (++v18 < v17--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100BCDD64(0, *(v9 + 2) + 1, 1, v9);
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v9 = sub_100BCDD64((v30 > 1), v31 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v9 + 4);
          v37 = *(v9 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_57:
          if (v39)
          {
            goto LABEL_103;
          }

          v52 = &v9[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_106;
          }

          v58 = &v9[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_110;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v62 = &v9[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_71:
        if (v57)
        {
          goto LABEL_105;
        }

        v65 = &v9[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_108;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_78:
        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_100BCDAD8((*a3 + v74), (*a3 + *&v9[16 * v35 + 32]), (*a3 + v75), v34);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v75 < v74)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_100BCDD50(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        sub_100BCDCC4(v35);
        v32 = *(v9 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v9[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_101;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_102;
      }

      v47 = &v9[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_104;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_107;
      }

      if (v51 >= v43)
      {
        v69 = &v9[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_111;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = (*a3 + v8);
  v24 = v10 - v8;
LABEL_30:
  v25 = *(v22 + v8);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= v28)
    {
LABEL_29:
      ++v8;
      ++v23;
      --v24;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v25;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_100BCDAD8(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= a3 - __src)
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (v18 < v19)
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v6;
        if (v11 >= *v4)
        {
          v13 = v4 + 1;
          LOBYTE(v11) = *v4;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_100BCDCC4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100BCDD50(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_100BCDD64(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011B6E38, &unk_100F083C0);
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
    v10 = _swiftEmptyArrayStorage;
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_100BCDE68(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_100BCDF64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100BCDFC8()
{
  result = qword_1011B6D40;
  if (!qword_1011B6D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6D40);
  }

  return result;
}

uint64_t sub_100BCE01C()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1(*(v0 + 16));
  }

  return result;
}

uint64_t sub_100BCE054(uint64_t a1, double *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7)
{
  v39 = type metadata accessor for ViewDimensions();
  v36 = *(v39 - 8);
  __chkstk_darwin();
  v38 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for LayoutSubview();
  v35 = *(v15 - 8);
  __chkstk_darwin();
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for LayoutSubviews();
  v19 = *(v18 - 8);
  __chkstk_darwin();
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_10010FC20(&qword_1011B6DB0, &qword_100F08380) - 8;
  __chkstk_darwin();
  v24 = &v35 - v23;
  v43.origin.x = a3;
  v43.origin.y = a4;
  v43.size.width = a5;
  v43.size.height = a6;
  CGRectGetWidth(v43);
  v40 = a2;
  sub_100BCF2EC(&qword_1011B6DB8, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  v37 = dispatch thunk of Collection.distance(from:to:)();
  (*(v19 + 16))(v21, a1, v18);
  sub_100BCF2EC(&qword_1011B6DC0, &type metadata accessor for LayoutSubviews, &protocol conformance descriptor for LayoutSubviews);
  dispatch thunk of Sequence.makeIterator()();
  v25 = *(v22 + 44);
  dispatch thunk of Collection.endIndex.getter();
  if (*&v24[v25] != v41[0])
  {
    ++v36;
    v37 = (v35 + 2);
    ++v35;
    v26 = a3;
    do
    {
      v27 = dispatch thunk of Collection.subscript.read();
      (*v37)(v17);
      v27(v41, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v44.origin.x = a3;
      v44.origin.y = a4;
      v44.size.width = a5;
      v44.size.height = a6;
      CGRectGetHeight(v44);
      static UnitPoint.topLeading.getter();
      LOBYTE(v41[0]) = 0;
      v42 = 0;
      LayoutSubview.place(at:anchor:proposal:)();
      LOBYTE(v41[0]) = 0;
      v42 = 0;
      v28 = v18;
      v29 = v15;
      v30 = v38;
      LayoutSubview.dimensions(in:)();
      ViewDimensions.width.getter();
      v32 = v31;
      v33 = v30;
      v15 = v29;
      v18 = v28;
      (*v36)(v33, v39);
      (*v35)(v17, v15);
      v26 = v26 + v32 + a7;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v24[v25] != v41[0]);
  }

  return sub_1000095E8(v24, &qword_1011B6DB0, &qword_100F08380);
}

void _s11MusicCoreUI22PlayIntentLayoutHelperV6layout_2in4rect13configurationySayAA12SymbolButtonCG_So6UIViewCSo6CGRectVSgAC13ConfigurationVtFZ_0(unint64_t a1, void *a2, double *a3, int a4, double a5)
{
  v76 = a5;
  LODWORD(v74) = a4;
  v5 = a3;
  v81 = a2;
  v8 = *a3;
  v7 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  type metadata accessor for SymbolButton.Configuration(0);
  __chkstk_darwin();
  v12 = (&v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v82 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    v79 = *&v5;
    v80 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v14 >= *(v15 + 16))
        {
          goto LABEL_15;
        }

        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v5 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if ([v16 isHidden])
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v15 = v80;
      }

      ++v14;
      if (v5 == i)
      {
        v18 = v82;
        *&v5 = v79;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_18:
  v19 = v81;
  [v81 bounds];
  v79 = v21;
  v80 = v20;
  v77 = v23;
  v78 = v22;
  v24 = [v19 traitCollection];
  [v24 displayScale];

  v75 = [v19 effectiveUserInterfaceLayoutDirection];
  [v19 layoutMargins];
  v26 = v25;
  Width = v27;
  v30 = v29;
  LODWORD(v31) = v18 < 0 || (v18 & 0x4000000000000000) != 0;
  if (v31 == 1)
  {
    goto LABEL_90;
  }

  v32 = *(v18 + 16);
  v33 = v32 - 1;
  if (!__OFSUB__(v32, 1))
  {
    while (1)
    {
      v72 = v33;
      if (v5[4])
      {
        v8 = sub_100058728(*&v80, v79, v78, v77, v26, Width);
        v7 = v34;
        v10 = v35;
        v9 = v36;
      }

      if (v31)
      {
        *&v5 = COERCE_DOUBLE(_CocoaArrayWrapper.endIndex.getter());
      }

      else
      {
        v5 = *(v18 + 16);
      }

      v73 = v32;
      if (*&v5 == 0.0)
      {
        break;
      }

      v37 = 0;
      Width = 0.0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v37 >= *(v18 + 16))
          {
            goto LABEL_85;
          }

          v38 = *(v18 + 8 * v37 + 32);
        }

        v31 = v38;
        v39 = (v37 + 1);
        if (__OFADD__(v37, 1))
        {
          break;
        }

        v40 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
        swift_beginAccess();
        sub_100BCDF64(v31 + v40, v12);
        *(v12 + 184) = 0;
        SymbolButton.setConfiguration(_:animation:updates:)(v12, 0, 0, 0, 1, _swiftEmptyArrayStorage);
        sub_100BCF560(v12, type metadata accessor for SymbolButton.Configuration);
        [v31 intrinsicContentSize];
        v26 = v41;
        CGFloat.ceilingValue(scale:)();
        Width = Width + v42;
        CGFloat.ceilingValue(scale:)();
        v44 = v43;

        ++v37;
        if (v39 == v5)
        {
          goto LABEL_38;
        }
      }

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
LABEL_90:
      v73 = v30;
      v70 = _CocoaArrayWrapper.endIndex.getter();
      v30 = v73;
      v32 = v70;
      v33 = v70 - 1;
      if (__OFSUB__(v70, 1))
      {
        goto LABEL_92;
      }
    }

    Width = 0.0;
    v44 = 0.0;
LABEL_38:
    v45 = LOBYTE(v74);
    v46 = BYTE1(v74);
    v47 = (v72 & ~(v72 >> 63)) * v76;
    if (BYTE1(v74))
    {
      v48 = v73;
      if (BYTE1(v74) == 1)
      {
        v49 = 0;
        Width = v47 + v44 * v73;
      }

      else
      {
        v83.origin.x = v8;
        v83.origin.y = v7;
        v83.size.width = v10;
        v83.size.height = v9;
        CGRectGetWidth(v83);
        CGFloat.ceilingValue(scale:)();
        v44 = v50;
        v84.origin.x = v8;
        v84.origin.y = v7;
        v84.size.width = v10;
        v84.size.height = v9;
        Width = CGRectGetWidth(v84);
        v49 = 0;
      }
    }

    else
    {
      Width = v47 + Width;
      v49 = 1;
      v44 = 0.0;
      v48 = v73;
    }

    v85.origin.x = v8;
    v85.origin.y = v7;
    v85.size.width = v10;
    v85.size.height = v9;
    v51 = Width - CGRectGetWidth(v85);
    if (v51 < 0.0)
    {
      v26 = 0.0;
    }

    else
    {
      v26 = v51;
    }

    if ((v49 & 1) == 0 && v26 > 0.0)
    {
      CGFloat.ceilingValue(scale:)();
      v44 = v44 - v52;
      v86.origin.x = v8;
      v86.origin.y = v7;
      v86.size.width = v10;
      v86.size.height = v9;
      Width = CGRectGetWidth(v86);
    }

    if (v46 != 2 && v45)
    {
      if (v45 != 1)
      {
        v91.origin.x = v8;
        v91.origin.y = v7;
        v91.size.width = v10;
        v91.size.height = v9;
        v8 = CGRectGetMaxX(v91) - Width;
        if (*&v5 != 0.0)
        {
          goto LABEL_54;
        }

LABEL_83:

        return;
      }

      v87.origin.x = v8;
      v87.origin.y = v7;
      v87.size.width = v10;
      v87.size.height = v9;
      CGRectGetWidth(v87);
      CGFloat.floorValue(scale:)();
      v8 = v8 + v53;
    }

    if (*&v5 != 0.0)
    {
LABEL_54:
      v31 = 0;
      v54 = v48;
      v55 = 0;
      v56 = v18 & 0xC000000000000001;
      v74 = v26 / v54;
      while (1)
      {
        if (v56)
        {
          v58 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v31 >= *(v18 + 16))
          {
            goto LABEL_87;
          }

          v58 = *(v18 + 8 * v31 + 32);
        }

        v59 = v58;
        v60 = (v31 + 1);
        if (__OFADD__(v31, 1))
        {
          goto LABEL_86;
        }

        v61 = [v58 superview];
        if (!v61 || (v62 = v61, v61, v62 != v81))
        {
          [v81 addSubview:v59];
        }

        v26 = v44;
        if (v49)
        {
          [v59 intrinsicContentSize];
          v64 = v63;
          CGFloat.ceilingValue(scale:)();
          v26 = v64 - v65;
        }

        CGRect.applyingLayoutDirection(_:inBounds:)();
        [v59 setFrame:?];
        v89.origin.x = v8;
        v89.origin.y = v7;
        v89.size.width = v26;
        v89.size.height = v9;
        CGRectGetWidth(v89);
        v90.origin.x = v8;
        v90.origin.y = v7;
        v90.size.width = v26;
        v90.size.height = v9;
        v10 = CGRectGetWidth(v90);
        if (v55)
        {

          if (v60 == v5)
          {
            if (v73 < 2)
            {
              goto LABEL_83;
            }

LABEL_74:
            v66 = 0;
            while (1)
            {
              if (v56)
              {
                v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v66 >= *(v18 + 16))
                {
                  goto LABEL_89;
                }

                v67 = *(v18 + 8 * v66 + 32);
              }

              v31 = v67;
              v68 = (v66 + 1);
              if (__OFADD__(v66, 1))
              {
                goto LABEL_88;
              }

              v69 = OBJC_IVAR____TtC11MusicCoreUI12SymbolButton__configuration;
              swift_beginAccess();
              sub_100BCDF64(v31 + v69, v12);
              *(v12 + 184) = 1;
              SymbolButton.setConfiguration(_:animation:updates:)(v12, 0, 0, 0, 1, _swiftEmptyArrayStorage);

              sub_100BCF560(v12, type metadata accessor for SymbolButton.Configuration);
              ++v66;
              if (v68 == v5)
              {
                goto LABEL_83;
              }
            }
          }

          v55 = 1;
        }

        else
        {
          [v59 intrinsicContentSize];
          Width = v57;
          v88.origin.x = v8;
          v88.origin.y = v7;
          v88.size.width = v26;
          v88.size.height = v9;
          v26 = CGRectGetWidth(v88);

          v55 = v26 < Width;
          if (v60 == v5)
          {
            if (v26 >= Width || v73 <= 1)
            {
              goto LABEL_83;
            }

            goto LABEL_74;
          }
        }

        v8 = v8 + v10 + v76;
        ++v31;
      }
    }

    goto LABEL_83;
  }

LABEL_92:
  __break(1u);
}

unint64_t sub_100BCED6C()
{
  result = qword_1011B6D50;
  if (!qword_1011B6D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6D50);
  }

  return result;
}

unint64_t sub_100BCEDC4()
{
  result = qword_1011B6D58;
  if (!qword_1011B6D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6D58);
  }

  return result;
}

unint64_t sub_100BCEE38()
{
  result = qword_1011B6D60;
  if (!qword_1011B6D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6D60);
  }

  return result;
}

unint64_t sub_100BCEE90()
{
  result = qword_1011B6D68;
  if (!qword_1011B6D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6D68);
  }

  return result;
}

unint64_t sub_100BCEEE8()
{
  result = qword_1011B6D70;
  if (!qword_1011B6D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6D70);
  }

  return result;
}

uint64_t sub_100BCEF6C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100BCEF90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
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

uint64_t sub_100BCEFEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlayIntentLayoutHelper.Configuration(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_100BCF0FC()
{
  result = qword_1011B6D98;
  if (!qword_1011B6D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6D98);
  }

  return result;
}

unint64_t sub_100BCF150()
{
  result = qword_1011B6DA0;
  if (!qword_1011B6DA0)
  {
    sub_1001109D0(&qword_1011B6DA8, &qword_100F08378);
    sub_100BCEDC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6DA0);
  }

  return result;
}

unint64_t sub_100BCF1D4()
{
  result = qword_1011B6DC8;
  if (!qword_1011B6DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6DC8);
  }

  return result;
}

double sub_100BCF228@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v7 = *a1;
  KeyPath = swift_getKeyPath();
  *a2 = v7;
  *(a2 + 1) = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  *(a2 + 24) = KeyPath;
  *(a2 + 32) = 0;

  return result;
}

unint64_t sub_100BCF298()
{
  result = qword_1011B6E00;
  if (!qword_1011B6E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6E00);
  }

  return result;
}

uint64_t sub_100BCF2EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_100BCF334()
{
  result = qword_1011B6E08;
  if (!qword_1011B6E08)
  {
    sub_1001109D0(&qword_1011B6DE8, &qword_100F083A0);
    sub_100BCF3C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6E08);
  }

  return result;
}

unint64_t sub_100BCF3C0()
{
  result = qword_1011B6E10;
  if (!qword_1011B6E10)
  {
    sub_1001109D0(&qword_1011B6DE0, &qword_100F08398);
    sub_100020674(&qword_1011B6E18, &qword_1011B6E20, &qword_100F083B0, &protocol conformance descriptor for _LayoutRoot<A>);
    sub_100BCF478();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6E10);
  }

  return result;
}

unint64_t sub_100BCF478()
{
  result = qword_1011B6E28;
  if (!qword_1011B6E28)
  {
    sub_1001109D0(&qword_1011B6E30, &qword_100F083B8);
    sub_100BCEE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6E28);
  }

  return result;
}

uint64_t sub_100BCF4FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SymbolButton.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100BCF560(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *PlaylistCovers.CarouselItem.pageIndicatorImage.getter()
{
  v1 = *(v0 + 128);
  v2 = v1;
  return v1;
}

__n128 PlaylistCovers.CarouselItem.init(itemType:pageIndicatorImage:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = a1[5];
  v25 = a1[4];
  v26 = v4;
  v5 = a1[7];
  v27 = a1[6];
  v28 = v5;
  v6 = a1[1];
  v22[0] = *a1;
  v22[1] = v6;
  v7 = a1[3];
  v23 = a1[2];
  v24 = v7;
  v13 = v22[0];
  v14 = v6;
  v15 = v23;
  v16 = v7;
  v17 = v25;
  v18 = v4;
  v19 = v27;
  v20 = v5;
  v21 = a2;
  v29 = a2;
  sub_100500E4C(&v13, v12);
  sub_100BCF81C(v22);
  v8 = v20;
  a3[6] = v19;
  a3[7] = v8;
  a3[8].n128_u64[0] = v21;
  v9 = v16;
  a3[2] = v15;
  a3[3] = v9;
  v10 = v18;
  a3[4] = v17;
  a3[5] = v10;
  result = v14;
  *a3 = v13;
  a3[1] = result;
  return result;
}

uint64_t static PlaylistCovers.CarouselItem.CarouselItemType.__derived_enum_equals(_:_:)(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v39 = a1[4];
  v40 = v3;
  v4 = a1[7];
  v41 = a1[6];
  v42 = v4;
  v5 = a1[1];
  v35 = *a1;
  v36 = v5;
  v6 = a1[3];
  v37 = a1[2];
  v38 = v6;
  if (sub_1000D8FA0(&v35) == 1)
  {
    v7 = a2[5];
    v47 = a2[4];
    v48 = v7;
    v8 = a2[7];
    v49 = a2[6];
    v50 = v8;
    v9 = a2[1];
    v43 = *a2;
    v44 = v9;
    v10 = a2[3];
    v45 = a2[2];
    v46 = v10;
    v11 = sub_1000D8FA0(&v43) == 1;
  }

  else
  {
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    v43 = v35;
    v44 = v36;
    v45 = v37;
    v46 = v38;
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v21 = a2[2];
    v22 = v14;
    v19 = v12;
    v20 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v25 = a2[6];
    v26 = v17;
    v23 = v15;
    v24 = v16;
    if (sub_1000D8FA0(&v19) == 1)
    {
      v11 = 0;
    }

    else
    {
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v27 = v19;
      v28 = v20;
      v29 = v21;
      v30 = v22;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

uint64_t sub_100BCF960(__int128 *a1, __int128 *a2)
{
  v3 = a1[5];
  v45 = a1[4];
  v46 = v3;
  v4 = a1[7];
  v47 = a1[6];
  v48 = v4;
  v5 = a1[1];
  v41 = *a1;
  v42 = v5;
  v6 = a1[3];
  v43 = a1[2];
  v44 = v6;
  if (sub_1000D8FA0(&v41) == 1)
  {
    v7 = a2[5];
    v37 = a2[4];
    v38 = v7;
    v8 = a2[7];
    v39 = a2[6];
    v40 = v8;
    v9 = a2[1];
    v33 = *a2;
    v34 = v9;
    v10 = a2[3];
    v35 = a2[2];
    v36 = v10;
    v11 = sub_1000D8FA0(&v33) == 1;
  }

  else
  {
    v29 = v45;
    v30 = v46;
    v31 = v47;
    v32 = v48;
    v25 = v41;
    v26 = v42;
    v27 = v43;
    v28 = v44;
    v12 = a2[7];
    v23 = a2[6];
    v24 = v12;
    v13 = a2[5];
    v21 = a2[4];
    v22 = v13;
    v14 = a2[3];
    v19 = a2[2];
    v20 = v14;
    v15 = a2[1];
    v17 = *a2;
    v18 = v15;
    if (sub_1000D8FA0(&v17) == 1)
    {
      v11 = 0;
    }

    else
    {
      v37 = v21;
      v38 = v22;
      v39 = v23;
      v40 = v24;
      v33 = v17;
      v34 = v18;
      v35 = v19;
      v36 = v20;
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

uint64_t PlaylistCovers.CarouselItem.id.getter()
{
  v1 = v0[5];
  v7[4] = v0[4];
  v7[5] = v1;
  v2 = v0[7];
  v7[6] = v0[6];
  v7[7] = v2;
  v3 = v0[1];
  v7[0] = *v0;
  v7[1] = v3;
  v4 = v0[3];
  v7[2] = v0[2];
  v7[3] = v4;
  if (sub_1000D8FA0(v7) == 1)
  {
    return 0x6369506F746F6850;
  }

  v5 = *(&v7[0] + 1);

  return v5;
}

double PlaylistCovers.CarouselItem.hash(into:)(uint64_t a1)
{
  v2 = v1[5];
  v7[4] = v1[4];
  v7[5] = v2;
  v3 = v1[7];
  v7[6] = v1[6];
  v7[7] = v3;
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  v5 = v1[3];
  v7[2] = v1[2];
  v7[3] = v5;
  if (sub_1000D8FA0(v7) != 1)
  {
  }

  String.hash(into:)();

  return result;
}

uint64_t static PlaylistCovers.CarouselItem.== infix(_:_:)(_OWORD *a1, __int128 *a2)
{
  v3 = a1[5];
  v19[4] = a1[4];
  v19[5] = v3;
  v4 = a1[7];
  v19[6] = a1[6];
  v19[7] = v4;
  v5 = a1[1];
  v19[0] = *a1;
  v19[1] = v5;
  v6 = a1[3];
  v19[2] = a1[2];
  v19[3] = v6;
  if (sub_1000D8FA0(v19) == 1)
  {
    v7 = a2[5];
    v24 = a2[4];
    v25 = v7;
    v8 = a2[7];
    v26 = a2[6];
    v27 = v8;
    v9 = a2[1];
    v20 = *a2;
    v21 = v9;
    v10 = a2[3];
    v22 = a2[2];
    v23 = v10;
    v11 = sub_1000D8FA0(&v20) == 1;
  }

  else
  {
    v12 = *a2;
    v13 = a2[1];
    v14 = a2[3];
    v22 = a2[2];
    v23 = v14;
    v20 = v12;
    v21 = v13;
    v15 = a2[4];
    v16 = a2[5];
    v17 = a2[7];
    v26 = a2[6];
    v27 = v17;
    v24 = v15;
    v25 = v16;
    if (sub_1000D8FA0(&v20) == 1)
    {
      v11 = 0;
    }

    else
    {
      v11 = static PlaylistCovers.Cover.__derived_struct_equals(_:_:)();
    }
  }

  return v11 & 1;
}

double PlaylistCovers.CarouselItem.cover.getter@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[5];
  v23 = v1[4];
  v24 = v3;
  v4 = v1[7];
  v25 = v1[6];
  v26 = v4;
  v5 = v1[1];
  v20[0] = *v1;
  v20[1] = v5;
  v6 = v1[3];
  v21 = v1[2];
  v22 = v6;
  v33 = v25;
  v34 = v4;
  v31 = v23;
  v32 = v3;
  v29 = v21;
  v30 = v6;
  v27 = v20[0];
  v28 = v5;
  if (sub_1000D8FA0(&v27) == 1)
  {
    sub_10001DBDC(&v35);
  }

  else
  {
    v16 = v31;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    UIScreen.Dimensions.size.getter();
    v39 = v16;
    v40 = v17;
    v41 = v18;
    v42 = v19;
    v35 = v12;
    v36 = v13;
    v37 = v14;
    v38 = v15;
  }

  sub_100BCF688(v20, &v12);
  v7 = v40;
  a1[4] = v39;
  a1[5] = v7;
  v8 = v42;
  a1[6] = v41;
  a1[7] = v8;
  v9 = v36;
  *a1 = v35;
  a1[1] = v9;
  result = *&v37;
  v11 = v38;
  a1[2] = v37;
  a1[3] = v11;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.picker.getter@<Q0>(__n128 *a1@<X8>)
{
  sub_10001DBDC(&v9);
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() systemImageNamed:v2];

  v26[4] = v13;
  v26[5] = v14;
  v26[6] = v15;
  v26[7] = v16;
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  v26[3] = v12;
  v17 = v9;
  v18 = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  v22 = v14;
  v23 = v15;
  v24 = v16;
  v25 = v3;
  v27 = v3;
  sub_100500E4C(&v17, v8);
  sub_100BCF81C(v26);
  v4 = v24;
  a1[6] = v23;
  a1[7] = v4;
  a1[8].n128_u64[0] = v25;
  v5 = v20;
  a1[2] = v19;
  a1[3] = v5;
  v6 = v22;
  a1[4] = v21;
  a1[5] = v6;
  result = v18;
  *a1 = v17;
  a1[1] = result;
  return result;
}

__n128 static PlaylistCovers.CarouselItem.tracksTiled(image:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Locale();
  __chkstk_darwin();
  v4 = type metadata accessor for String.LocalizationValue();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v20[-v8];
  v10 = a1;
  String.LocalizationValue.init(stringLiteral:)();
  (*(v5 + 16))(v7, v9, v4);
  if (qword_1011B0430 != -1)
  {
    swift_once();
  }

  v11 = qword_10121B340;
  static Locale.current.getter();
  v12 = String.init(localized:table:bundle:locale:comment:)();
  v14 = v13;
  (*(v5 + 8))(v9, v4);
  v15 = AccessibilityIdentifier.playlistEditorMetadataArtwork4Up.unsafeMutableAddressor();
  PlaylistCovers.Cover.init(image:id:accessibilityLabel:accessibilityIdentifier:)(v10, 0x6954736B63617254, 0xEB0000000064656CLL, v12, v14, *v15, v15[1], v15[2], &v21, v15[3]);
  UIScreen.Dimensions.size.getter();
  v38[4] = v25;
  v38[5] = v26;
  v38[6] = v27;
  v38[7] = v28;
  v38[0] = v21;
  v38[1] = v22;
  v38[2] = v23;
  v38[3] = v24;
  v29 = v21;
  v30 = v22;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v35 = v27;
  v36 = v28;
  v37 = 0;
  v39 = 0;

  sub_100500E4C(&v29, v20);
  sub_100BCF81C(v38);
  v16 = v36;
  *(a2 + 96) = v35;
  *(a2 + 112) = v16;
  *(a2 + 128) = v37;
  v17 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v17;
  v18 = v34;
  *(a2 + 64) = v33;
  *(a2 + 80) = v18;
  result = v30;
  *a2 = v29;
  *(a2 + 16) = result;
  return result;
}

Swift::Int PlaylistCovers.CarouselItem.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = v0[5];
  v6[4] = v0[4];
  v6[5] = v1;
  v2 = v0[7];
  v6[6] = v0[6];
  v6[7] = v2;
  v3 = v0[1];
  v6[0] = *v0;
  v6[1] = v3;
  v4 = v0[3];
  v6[2] = v0[2];
  v6[3] = v4;
  if (sub_1000D8FA0(v6) != 1)
  {
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100BD0224(uint64_t *a1@<X8>)
{
  v3 = v1[5];
  v9[4] = v1[4];
  v9[5] = v3;
  v4 = v1[7];
  v9[6] = v1[6];
  v9[7] = v4;
  v5 = v1[1];
  v9[0] = *v1;
  v9[1] = v5;
  v6 = v1[3];
  v9[2] = v1[2];
  v9[3] = v6;
  if (sub_1000D8FA0(v9) == 1)
  {
    v7 = 0xEB0000000072656BLL;
    v8 = 0x6369506F746F6850;
  }

  else
  {
    v8 = *(&v9[0] + 1);
  }

  *a1 = v8;
  a1[1] = v7;
}

Swift::Int sub_100BD02A8(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = v1[5];
  v7[4] = v1[4];
  v7[5] = v2;
  v3 = v1[7];
  v7[6] = v1[6];
  v7[7] = v3;
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  v5 = v1[3];
  v7[2] = v1[2];
  v7[3] = v5;
  if (sub_1000D8FA0(v7) != 1)
  {
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static PlaylistCovers.carouselItems(from:playlistTitle:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  return _swift_task_switch(sub_100BD037C, 0, 0);
}

uint64_t sub_100BD037C()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_10010FC20(&qword_1011B6E40, &qword_100F08448);
  v7 = swift_task_alloc();
  v0[8] = v7;
  v7[2] = v5;
  v7[3] = v2;
  v7[4] = v1;
  v7[5] = v4;
  v7[6] = v3;
  v8 = sub_10010FC20(&qword_1011B6E48, &qword_100F08460);
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_100BD04B8;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v6, v8, 0, 0, &unk_100F08458, v7, v6);
}

uint64_t sub_100BD04B8()
{

  return _swift_task_switch(sub_100A81A88, 0, 0);
}

uint64_t sub_100BD05D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *(v7 + 1728) = a5;
  *(v7 + 1720) = a4;
  *(v7 + 1712) = a7;
  *(v7 + 1704) = a6;
  *(v7 + 1696) = a3;
  *(v7 + 1688) = a2;
  *(v7 + 1680) = a1;
  sub_10010FC20(&qword_1011B62E0, &qword_100F06260);
  *(v7 + 1736) = swift_task_alloc();
  *(v7 + 1744) = swift_task_alloc();
  v8 = sub_10010FC20(&qword_1011B6E58, &qword_100F086F0);
  *(v7 + 1752) = v8;
  *(v7 + 1760) = *(v8 - 8);
  *(v7 + 1768) = swift_task_alloc();

  return _swift_task_switch(sub_100BD06F8, 0, 0);
}

uint64_t sub_100BD06F8()
{
  v1 = *(v0 + 1696);
  v2 = *(v1 + 16);
  *(v0 + 1776) = v2;
  if (v2)
  {
    v3 = (v0 + 1280);
    v36 = **(v0 + 1688);
    v4 = (v1 + 32);
    v5 = type metadata accessor for TaskPriority();
    v6 = *(v5 - 8);
    v35 = *(v6 + 56);
    v34 = (v6 + 48);
    v33 = (v6 + 8);
    while (1)
    {
      v7 = *(v0 + 1744);
      v8 = *(v0 + 1728);
      v9 = *(v0 + 1720);
      v10 = *(v0 + 1712);
      v11 = *(v0 + 1704);
      v13 = v4[1];
      v12 = v4[2];
      v14 = *v4;
      *(v0 + 1328) = *(v4 + 6);
      *(v0 + 1296) = v13;
      *(v0 + 1312) = v12;
      *v3 = v14;
      v35(v7, 1, 1, v5);
      v15 = swift_allocObject();
      *(v15 + 16) = 0;
      v16 = (v15 + 16);
      *(v15 + 24) = 0;
      v17 = *(v0 + 1296);
      *(v15 + 32) = *v3;
      *(v15 + 48) = v17;
      *(v15 + 64) = *(v0 + 1312);
      *(v15 + 80) = *(v0 + 1328);
      *(v15 + 88) = v11;
      *(v15 + 96) = v10;
      *(v15 + 104) = v9;
      *(v15 + 112) = v8;
      sub_100501434(v0 + 1280, v0 + 1448);
      sub_100501434(v0 + 1280, v0 + 1504);

      v18 = swift_taskGroup_addPending();
      v19 = *(v0 + 1744);
      if (v18)
      {
        break;
      }

      sub_1000095E8(v19, &qword_1011B62E0, &qword_100F06260);

      sub_100501490(v0 + 1280);
LABEL_4:
      v4 = (v4 + 56);
      if (!--v2)
      {
        goto LABEL_14;
      }
    }

    v20 = *(v0 + 1736);
    sub_1000209BC(v19, v20);
    v21 = (*v34)(v20, 1, v5);
    v22 = *(v0 + 1736);
    if (v21 == 1)
    {
      sub_1000095E8(*(v0 + 1736), &qword_1011B62E0, &qword_100F06260);
      if (*v16)
      {
LABEL_8:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = dispatch thunk of Actor.unownedExecutor.getter();
        v25 = v24;
        swift_unknownObjectRelease();
LABEL_11:
        v26 = swift_allocObject();
        *(v26 + 16) = &unk_100F08700;
        *(v26 + 24) = v15;

        sub_10010FC20(&qword_1011B6E40, &qword_100F08448);
        v27 = v25 | v23;
        if (v25 | v23)
        {
          v27 = v0 + 1616;
          *(v0 + 1616) = 0;
          *(v0 + 1624) = 0;
          *(v0 + 1632) = v23;
          *(v0 + 1640) = v25;
        }

        v28 = *(v0 + 1744);
        *(v0 + 1648) = 1;
        *(v0 + 1656) = v27;
        *(v0 + 1664) = v36;
        swift_task_create();

        sub_100501490(v0 + 1280);
        sub_1000095E8(v28, &qword_1011B62E0, &qword_100F06260);
        goto LABEL_4;
      }
    }

    else
    {
      TaskPriority.rawValue.getter();
      (*v33)(v22, v5);
      if (*v16)
      {
        goto LABEL_8;
      }
    }

    v23 = 0;
    v25 = 0;
    goto LABEL_11;
  }

LABEL_14:
  sub_10010FC20(&qword_1011B6E40, &qword_100F08448);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 1784) = _swiftEmptyDictionarySingleton;
  v29 = sub_100BD18E0();
  v30 = swift_task_alloc();
  *(v0 + 1792) = v30;
  *v30 = v0;
  v30[1] = sub_100BD0B14;
  v31 = *(v0 + 1752);

  return dispatch thunk of AsyncIteratorProtocol.next()(v0 + 1088, v31, v29);
}

uint64_t sub_100BD0B14()
{
  v2 = *v1;

  if (v0)
  {
    v3 = v2[221];
    v4 = v2[220];
    v5 = v2[219];

    (*(v4 + 8))(v3, v5);

    v6 = UIScreen.Dimensions.size.getter;
  }

  else
  {
    v6 = sub_100BD0C6C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100BD0C6C()
{
  v1 = (v0 + 1088);
  if (*(v0 + 1096))
  {
    v2 = v0 + 424;
    v3 = (v0 + 960);
    v114 = *(v0 + 1784);
    v4 = *(v0 + 1136);
    *(v0 + 1248) = *(v0 + 1120);
    *(v0 + 1264) = v4;
    v5 = *(v0 + 1104);
    v108 = v0 + 1088;
    v109 = v0 + 1216;
    *(v0 + 1216) = *v1;
    *(v0 + 1232) = v5;
    v6 = *(v0 + 1224);
    v7 = *(v0 + 1232);
    v8 = *(v0 + 1240);
    v9 = *(v0 + 1248);
    v10 = *(v0 + 1256);
    v11 = *(v0 + 1264);
    v113 = *(v0 + 1272);
    *(v0 + 1392) = *(v0 + 1216);
    *(v0 + 1400) = v6;
    *(v0 + 1408) = v7;
    *(v0 + 1416) = v8;
    *(v0 + 1424) = v9;
    *(v0 + 1432) = v10;
    *(v0 + 1440) = v11;
    v12 = v6;
    v13 = v7;
    v111 = v8;
    v14 = v9;
    v15 = v10;
    v16 = v11;
    v17 = v113;
    v112 = v12;
    v107 = v13;
    v110 = v111;
    v18 = v14;
    v19 = v0 + 1392;
    v106 = v18;
    v20 = v15;
    v21 = v16;
    PlaylistCovers.Cover.init(image:representation:)(v17, (v0 + 1392), v0 + 960);
    v22 = *(v0 + 1040);
    *(v0 + 896) = *(v0 + 1024);
    *(v0 + 912) = v22;
    v23 = *(v0 + 1072);
    *(v0 + 928) = *(v0 + 1056);
    *(v0 + 944) = v23;
    v24 = *(v0 + 976);
    *(v0 + 832) = *(v0 + 960);
    *(v0 + 848) = v24;
    v25 = *(v0 + 1008);
    *(v0 + 864) = *(v0 + 992);
    *(v0 + 880) = v25;
    UIScreen.Dimensions.size.getter();
    v26 = *(v0 + 896);
    v27 = *(v0 + 912);
    *(v0 + 352) = v26;
    *(v0 + 368) = v27;
    v28 = *(v0 + 928);
    v29 = *(v0 + 944);
    *(v0 + 384) = v28;
    *(v0 + 400) = v29;
    v30 = *(v0 + 832);
    v31 = *(v0 + 848);
    *(v0 + 288) = v30;
    *(v0 + 304) = v31;
    v32 = *(v0 + 864);
    v33 = *(v0 + 880);
    *(v0 + 320) = v32;
    *(v0 + 336) = v33;
    *(v0 + 424) = v30;
    *(v0 + 440) = v31;
    *(v0 + 456) = v32;
    *(v0 + 472) = v33;
    *(v0 + 488) = v26;
    *(v0 + 504) = v27;
    *(v0 + 520) = v28;
    *(v0 + 536) = v29;
    *(v0 + 552) = 0;
    *(v0 + 416) = 0;
    sub_100500E4C(v0 + 424, v0 + 560);
    sub_100BCF81C(v0 + 288);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 1672) = v114;
    v35 = sub_100BB2B80(v0 + 1392);
    v37 = *(v114 + 16);
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
LABEL_32:
      __break(1u);
    }

    else
    {
      LOBYTE(v12) = v36;
      v3 = (v0 + 1672);
      if (*(*(v0 + 1784) + 24) < v40)
      {
        sub_100BB31C4(v40, isUniquelyReferenced_nonNull_native);
        v35 = sub_100BB2B80(v19);
        if ((v12 & 1) != (v41 & 1))
        {

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_24:
        if (v12)
        {
LABEL_25:
          v70 = *v3;
          v71 = *(*v3 + 56) + 136 * v35;
          *(v0 + 696) = *v71;
          v72 = *(v71 + 64);
          v74 = *(v71 + 16);
          v73 = *(v71 + 32);
          *(v0 + 744) = *(v71 + 48);
          *(v0 + 760) = v72;
          *(v0 + 712) = v74;
          *(v0 + 728) = v73;
          v76 = *(v71 + 96);
          v75 = *(v71 + 112);
          v77 = *(v71 + 80);
          *(v0 + 824) = *(v71 + 128);
          *(v0 + 792) = v76;
          *(v0 + 808) = v75;
          *(v0 + 776) = v77;
          *v71 = *v2;
          v78 = *(v2 + 16);
          v79 = *(v2 + 32);
          v80 = *(v2 + 64);
          *(v71 + 48) = *(v2 + 48);
          *(v71 + 64) = v80;
          *(v71 + 16) = v78;
          *(v71 + 32) = v79;
          v81 = *(v2 + 80);
          v82 = *(v2 + 96);
          v83 = *(v2 + 112);
          *(v71 + 128) = *(v2 + 128);
          *(v71 + 96) = v82;
          *(v71 + 112) = v83;
          *(v71 + 80) = v81;
          sub_100BCF81C(v0 + 696);

          sub_1000095E8(v109, &qword_1011B6E68, &qword_100F08708);
          goto LABEL_36;
        }

LABEL_34:
        v70 = *v3;
        *(*v3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
        v88 = v70[6] + 56 * v35;
        v89 = *v19;
        v90 = *(v19 + 16);
        v91 = *(v19 + 32);
        *(v88 + 48) = *(v19 + 48);
        *(v88 + 16) = v90;
        *(v88 + 32) = v91;
        *v88 = v89;
        v92 = v70[7] + 136 * v35;
        *v92 = *v2;
        v93 = *(v2 + 16);
        v94 = *(v2 + 32);
        v95 = *(v2 + 64);
        *(v92 + 48) = *(v2 + 48);
        *(v92 + 64) = v95;
        *(v92 + 16) = v93;
        *(v92 + 32) = v94;
        v96 = *(v2 + 80);
        v97 = *(v2 + 96);
        v98 = *(v2 + 112);
        *(v92 + 128) = *(v2 + 128);
        *(v92 + 96) = v97;
        *(v92 + 112) = v98;
        *(v92 + 80) = v96;

        v99 = sub_1000095E8(v109, &qword_1011B6E68, &qword_100F08708);
        v102 = v70[2];
        v39 = __OFADD__(v102, 1);
        v103 = v102 + 1;
        if (v39)
        {
          __break(1u);
          return dispatch thunk of AsyncIteratorProtocol.next()(v99, v100, v101);
        }

        v70[2] = v103;
LABEL_36:
        *(v0 + 1784) = v70;
        v104 = sub_100BD18E0();
        v105 = swift_task_alloc();
        *(v0 + 1792) = v105;
        *v105 = v0;
        v105[1] = sub_100BD0B14;
        v100 = *(v0 + 1752);
        v99 = v108;
        v101 = v104;

        return dispatch thunk of AsyncIteratorProtocol.next()(v99, v100, v101);
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_24;
      }
    }

    v86 = v21;
    v87 = v35;
    sub_100BB3FB8();
    v35 = v87;
    v21 = v86;
    if (v12)
    {
      goto LABEL_25;
    }

    goto LABEL_34;
  }

  v43 = *(v0 + 1776);
  (*(*(v0 + 1760) + 8))(*(v0 + 1768), *(v0 + 1752));
  v44 = *(v0 + 1104);
  *(v0 + 1152) = *v1;
  *(v0 + 1168) = v44;
  v45 = *(v0 + 1136);
  *(v0 + 1184) = *(v0 + 1120);
  *(v0 + 1200) = v45;
  v35 = sub_1000095E8(v0 + 1152, &qword_1011B6E68, &qword_100F08708);
  if (!v43)
  {
    v21 = _swiftEmptyArrayStorage;
    goto LABEL_27;
  }

  v3 = 0;
  v19 = v0 + 1336;
  v2 = *(v0 + 1784);
  v17 = (*(v0 + 1696) + 32);
  v21 = _swiftEmptyArrayStorage;
  v20 = 56;
  do
  {
    v46 = *(v0 + 1776);
    v47 = &v17[56 * v3];
    v12 = v3;
    while (1)
    {
      if (v12 >= v46)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v48 = *v47;
      v49 = *(v47 + 1);
      v50 = *(v47 + 2);
      *(v0 + 1384) = *(v47 + 6);
      *(v0 + 1352) = v49;
      *(v0 + 1368) = v50;
      *v19 = v48;
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_31;
      }

      if (*(v2 + 16))
      {
        break;
      }

LABEL_11:
      ++v12;
      v47 += 56;
      if (v3 == v46)
      {
        goto LABEL_27;
      }
    }

    sub_100501434(v0 + 1336, v0 + 1560);
    v51 = sub_100BB2B80(v0 + 1336);
    if ((v52 & 1) == 0)
    {
      v35 = sub_100501490(v0 + 1336);
      v46 = *(v0 + 1776);
      goto LABEL_11;
    }

    v53 = *(v2 + 56) + 136 * v51;
    *(v0 + 16) = *v53;
    v54 = *(v53 + 16);
    v55 = *(v53 + 32);
    v56 = *(v53 + 64);
    *(v0 + 64) = *(v53 + 48);
    *(v0 + 80) = v56;
    *(v0 + 32) = v54;
    *(v0 + 48) = v55;
    v57 = *(v53 + 80);
    v58 = *(v53 + 96);
    v59 = *(v53 + 112);
    *(v0 + 144) = *(v53 + 128);
    *(v0 + 112) = v58;
    *(v0 + 128) = v59;
    *(v0 + 96) = v57;
    sub_100500E4C(v0 + 16, v0 + 152);
    sub_100501490(v0 + 1336);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    if ((v35 & 1) == 0)
    {
      v35 = sub_100BF9DB0(0, v21[2] + 1, 1, v21);
      v21 = v35;
    }

    v61 = v21[2];
    v60 = v21[3];
    if (v61 >= v60 >> 1)
    {
      v35 = sub_100BF9DB0((v60 > 1), v61 + 1, 1, v21);
      v21 = v35;
    }

    v62 = *(v0 + 1776);
    v21[2] = v61 + 1;
    v63 = &v21[17 * v61];
    *(v63 + 2) = *(v0 + 16);
    v64 = *(v0 + 32);
    v65 = *(v0 + 48);
    v66 = *(v0 + 80);
    *(v63 + 5) = *(v0 + 64);
    *(v63 + 6) = v66;
    *(v63 + 3) = v64;
    *(v63 + 4) = v65;
    v67 = *(v0 + 96);
    v68 = *(v0 + 112);
    v69 = *(v0 + 128);
    v63[20] = *(v0 + 144);
    *(v63 + 8) = v68;
    *(v63 + 9) = v69;
    *(v63 + 7) = v67;
  }

  while (v3 != v62);
LABEL_27:
  v84 = *(v0 + 1680);

  *v84 = v21;

  v85 = *(v0 + 8);

  return v85();
}

uint64_t sub_100BD1360(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v10 = *(v2 + 5);
  v9 = *(v2 + 6);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100008F30;

  return sub_100BD05D0(a1, a2, v6, v10, v9, v7, v8);
}

unint64_t sub_100BD143C()
{
  result = qword_1011B6E50;
  if (!qword_1011B6E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6E50);
  }

  return result;
}

uint64_t sub_100BD1490(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100BD14A8(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_100BD14C0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_100BD14F4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
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

uint64_t sub_100BD1550(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100BD15D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 128))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100BD1624(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 96) = 0u;
    *(result + 112) = 0u;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_100BD1688(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_100BD16D8(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a2;
  *(v8 + 96) = a3;
  *(v8 + 72) = a1;
  *(v8 + 80) = a6;
  return _swift_task_switch(sub_100BD1700, 0, 0);
}

uint64_t sub_100BD1700()
{
  v1 = *(v0 + 13);
  v2 = *(v0 + 14);
  v4 = v0[11];
  v3 = v0[12];
  v6 = *(v0 + 9);
  v5 = *(v0 + 10);
  v7 = *v5;
  v8 = *(v5 + 16);
  v9 = *(v5 + 32);
  *(v6 + 48) = *(v5 + 48);
  *(v6 + 16) = v8;
  *(v6 + 32) = v9;
  *v6 = v7;
  v10 = *(v5 + 8);
  v11 = *(v5 + 48);
  sub_100BD19FC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_100501434(v5, (v0 + 2));
  v13 = [ObjCClassFromMetadata preferredFormat];
  static PlaylistCovers.playlistCoverImage(size:backgroundImage:textColor:title:graphicsFormat:)(v10, v11, v1, v2, v13, v4, v3);
  v15 = v14;

  *(v6 + 56) = v15;
  v16 = *(v0 + 1);

  return v16();
}

uint64_t sub_100BD1808(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[11];
  v7 = v1[12];
  v8 = *(v1 + 13);
  v9 = *(v1 + 14);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_10002F3F4;

  return sub_100BD16D8(a1, v6, v7, v4, v5, (v1 + 4), v8, v9);
}

unint64_t sub_100BD18E0()
{
  result = qword_1011B6E60;
  if (!qword_1011B6E60)
  {
    sub_1001109D0(&qword_1011B6E58, &qword_100F086F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6E60);
  }

  return result;
}

uint64_t sub_100BD1944(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10002F3F4;

  return sub_100009648(a1, v4);
}

unint64_t sub_100BD19FC()
{
  result = qword_1011B6E70;
  if (!qword_1011B6E70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B6E70);
  }

  return result;
}

void ProgressiveBlur.makeUIView(context:)(double a1, uint64_t a2, char a3)
{
  v5 = [objc_opt_self() functionWithName:kCAMediaTimingFunctionLinear];
  v6 = type metadata accessor for ProgressiveBlurView();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a1;
  v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a3;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = 0x3FD3333333333333;
  *&v7[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = v5;
  v8 = v5;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  if (CGRectIsEmpty(v24))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a3;
  *(v11 + 56) = 0x3FD3333333333333;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100BD2C44;
  *(v17 + 24) = v11;
  aBlock[4] = sub_1001EBE40;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010E7200;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v21 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a1 scale:1.0];

LABEL_6:
      v22.receiver = v7;
      v22.super_class = v6;
      objc_msgSendSuper2(&v22, "initWithEffect:", v21);

      return;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void ProgressiveBlurView.__allocating_init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v9[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v10 = a2;
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  if (CGRectIsEmpty(v26))
  {
    goto LABEL_5;
  }

  v11 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v11 setScale:1.0];
  [v11 setPreferredRange:2];
  v12 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v11 format:{0.0, 0.0, 1.0, 1.0}];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v13 + 32) = _Q0;
  *(v13 + 48) = a1;
  *(v13 + 56) = a4;
  *(v13 + 64) = v10;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_100BD2F50;
  *(v19 + 24) = v13;
  aBlock[4] = sub_1001EC788;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010E7278;
  v20 = _Block_copy(aBlock);
  v21 = v10;

  v22 = [v12 imageWithActions:v20];

  _Block_release(v20);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if ((v11 & 1) == 0)
  {
    if (v22)
    {
      v23 = [objc_opt_self() _effectWithVariableBlurRadius:v22 imageMask:a3 scale:1.0];

LABEL_6:
      v24.receiver = v9;
      v24.super_class = v4;
      objc_msgSendSuper2(&v24, "initWithEffect:", v23);

      return;
    }

LABEL_5:
    v23 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void ProgressiveBlur.updateUIView(_:context:)(uint64_t a1, double a2, uint64_t a3, char a4)
{
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = a2;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = a4;
  ProgressiveBlurView.updateEffect()();
}

void sub_100BD206C(uint64_t a1)
{
  v2 = *(v1 + 8);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius) = *v1;
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge) = v2;
  ProgressiveBlurView.updateEffect()();
}

uint64_t sub_100BD20B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100BD2EA0();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_100BD2114(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100BD2EA0();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_100BD2178(uint64_t a1)
{
  sub_100BD2EA0();
  UIViewRepresentable.body.getter();
  __break(1u);
}

double sub_100BD21A0(unsigned __int8 a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = a4();
    }

    else
    {
      v5 = a5();
    }
  }

  else if (a1)
  {
    v5 = a3();
  }

  else
  {
    v5 = a2();
  }

  v6 = v5;
  swift_beginAccess();
  return *v6;
}

void ProgressiveBlurView.init(blurRadius:edge:cutoff:interpolation:)(char a1, void *a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius] = a3;
  v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge] = a1;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff] = a4;
  *&v4[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation] = a2;
  v8 = a2;
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = 1.0;
  v24.size.height = 1.0;
  if (CGRectIsEmpty(v24))
  {
    goto LABEL_5;
  }

  v9 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v9 setScale:1.0];
  [v9 setPreferredRange:2];
  v10 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v9 format:{0.0, 0.0, 1.0, 1.0}];
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v11 + 32) = _Q0;
  *(v11 + 48) = a1;
  *(v11 + 56) = a4;
  *(v11 + 64) = v8;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_100BD2F50;
  *(v17 + 24) = v11;
  aBlock[4] = sub_1001EC788;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006BD7C;
  aBlock[3] = &unk_1010E72F0;
  v18 = _Block_copy(aBlock);
  v19 = v8;

  v20 = [v10 imageWithActions:v18];

  _Block_release(v18);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    if (v20)
    {
      v21 = [objc_opt_self() _effectWithVariableBlurRadius:v20 imageMask:a3 scale:1.0];

LABEL_6:
      v22.receiver = v4;
      v22.super_class = type metadata accessor for ProgressiveBlurView();
      objc_msgSendSuper2(&v22, "initWithEffect:", v21);

      return;
    }

LABEL_5:
    v21 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

Swift::Void __swiftcall ProgressiveBlurView.layoutSubviews()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for ProgressiveBlurView();
  objc_msgSendSuper2(&v1, "layoutSubviews");
  ProgressiveBlurView.updateEffect()();
}

Swift::Void __swiftcall ProgressiveBlurView.updateEffect()()
{
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_blurRadius];
  v10 = v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_edge];
  v11 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_cutoff];
  v12 = *&v0[OBJC_IVAR____TtC11MusicCoreUI19ProgressiveBlurView_interpolation];
  v21.origin.x = v2;
  v21.origin.y = v4;
  v21.size.width = v6;
  v21.size.height = v8;
  if (CGRectIsEmpty(v21))
  {
    goto LABEL_5;
  }

  v13 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  [v13 setScale:1.0];
  [v13 setPreferredRange:2];
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithBounds:v13 format:{v2, v4, v6, v8}];
  v15 = swift_allocObject();
  *(v15 + 16) = v2;
  *(v15 + 24) = v4;
  *(v15 + 32) = v6;
  *(v15 + 40) = v8;
  *(v15 + 48) = v10;
  *(v15 + 56) = v11;
  *(v15 + 64) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100BD2F50;
  *(v16 + 24) = v15;
  v20[4] = sub_1001EC788;
  v20[5] = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_10006BD7C;
  v20[3] = &unk_1010E7368;
  v17 = _Block_copy(v20);
  v12 = v12;

  v18 = [v14 imageWithActions:v17];

  _Block_release(v17);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if ((v13 & 1) == 0)
  {
    if (v18)
    {
      v19 = [objc_opt_self() _effectWithVariableBlurRadius:v18 imageMask:v9 scale:1.0];

LABEL_6:
      [v0 setEffect:v19];

      return;
    }

LABEL_5:

    v19 = 0;
    goto LABEL_6;
  }

  __break(1u);
}

void sub_100BD28C8(void *a1, unsigned __int8 a2, void *a3, double a4, double a5, double a6, double a7, double a8)
{
  v16 = [objc_allocWithZone(CAGradientLayer) init];
  [v16 setBounds:{a4, a5, a6, a7}];
  [v16 setStartPoint:{sub_100BD21A0(a2, CGPoint.topCenter.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.bottomCenter.unsafeMutableAddressor)}];
  [v16 setEndPoint:{sub_100BD21A0(a2, CGPoint.bottomCenter.unsafeMutableAddressor, CGPoint.centerRight.unsafeMutableAddressor, CGPoint.centerLeft.unsafeMutableAddressor, CGPoint.topCenter.unsafeMutableAddressor)}];
  sub_10010FC20(&qword_1011B21B0, &unk_100F088D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100EBDC20;
  v18 = objc_opt_self();
  v19 = [v18 whiteColor];
  v20 = [v19 colorWithAlphaComponent:a8];

  v21 = [v20 CGColor];
  _s3__C7CGColorCMa_1(0);
  v23 = v22;
  *(v17 + 56) = v22;
  *(v17 + 32) = v21;
  v24 = [v18 whiteColor];
  v25 = [v24 colorWithAlphaComponent:0.0];

  v26 = [v25 CGColor];
  *(v17 + 88) = v23;
  *(v17 + 64) = v26;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v16 setColors:isa];

  sub_10010FC20(&qword_1011B5630, "\b)\n");
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100EBC6C0;
  *(v28 + 32) = a3;
  sub_100BD2EF4();
  v29 = a3;
  v30 = Array._bridgeToObjectiveC()().super.isa;

  [v16 setInterpolations:v30];

  v31 = [a1 CGContext];
  [v16 renderInContext:v31];
}

id ProgressiveBlurView.__allocating_init(effect:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithEffect:a1];

  return v3;
}

id ProgressiveBlurView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgressiveBlurView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_100BD2D3C()
{
  result = qword_1011B6E98;
  if (!qword_1011B6E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6E98);
  }

  return result;
}

unint64_t sub_100BD2D94()
{
  result = qword_1011B6EA0;
  if (!qword_1011B6EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6EA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ProgressiveBlur(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ProgressiveBlur(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_100BD2EA0()
{
  result = qword_1011B6ED0;
  if (!qword_1011B6ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011B6ED0);
  }

  return result;
}

unint64_t sub_100BD2EF4()
{
  result = qword_1011B4948;
  if (!qword_1011B4948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011B4948);
  }

  return result;
}

id sub_100BD311C(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_opt_self() effectWithStyle:a2];
  *a3 = result;
  return result;
}

char *QRCodeOverlayViewController.init(qrCode:title:subtitle:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView;
  *&v2[v4] = [objc_allocWithZone(UIVisualEffectView) init];
  v5 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  type metadata accessor for QRCodeOverlayViewController.ContainerView();
  *&v2[v5] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v6 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  *&v2[v6] = [objc_allocWithZone(CAShapeLayer) init];
  v7 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  v8 = String._bridgeToObjectiveC()();
  v9 = [objc_opt_self() _systemImageNamed:v8];

  v10 = [objc_allocWithZone(UIImageView) initWithImage:v9];
  *&v2[v7] = v10;
  v11 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  *&v2[v11] = [objc_allocWithZone(UILabel) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabelEffectView;
  if (qword_1011B0758 != -1)
  {
    swift_once();
  }

  v13 = [objc_opt_self() effectForBlurEffect:qword_10121B948];
  v14 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v13];

  *&v2[v12] = v14;
  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  *&v2[v15] = [objc_allocWithZone(UILabel) init];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeBackgroundView] = 0;
  v16 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollView;
  *&v2[v16] = [objc_allocWithZone(UIScrollView) init];
  v17 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_scrollContentView;
  *&v2[v17] = [objc_allocWithZone(UIView) init];
  *&v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_brightnessManager] = 0;
  if (a1[4] == 76)
  {
    QRCode.with(errorCorrectionLevel:)(77, v38);
    v18 = v39;
    if (v39)
    {
      v19 = v40;
      v21 = v38[1];
      v20 = v38[2];
      v22 = v38[0];
    }

    else
    {
      v20 = a1[2];
      v18 = a1[3];
      v22 = *a1;
      v21 = a1[1];
      sub_100BD67E8(a1, v36);
      v19 = 76;
    }

    v25 = &v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    *v25 = v22;
    *(v25 + 1) = v21;
    *(v25 + 2) = v20;
    *(v25 + 3) = v18;
    *(v25 + 4) = v19;
  }

  else
  {
    v23 = &v2[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
    v24 = *(a1 + 1);
    *v23 = *a1;
    *(v23 + 1) = v24;
    *(v23 + 4) = a1[4];
    sub_100BD67E8(a1, v38);
  }

  v26 = type metadata accessor for QRCodeOverlayViewController();
  v37.receiver = v2;
  v37.super_class = v26;
  v27 = objc_msgSendSuper2(&v37, "initWithNibName:bundle:", 0, 0);
  v28 = *(v27 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel);
  v29 = v27;
  v30 = v28;
  v31 = String._bridgeToObjectiveC()();

  [v30 setText:v31];

  v32 = *(v29 + OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel);
  v33 = String._bridgeToObjectiveC()();

  [v32 setText:v33];

  sub_10010FC20(qword_1011B36C0, &unk_100F088E0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_100EBC6B0;
  *(v34 + 32) = type metadata accessor for UITraitPreferredContentSizeCategory();
  *(v34 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  UIViewController.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  sub_100BD68C4(a1);

  return v29;
}

Swift::Void __swiftcall QRCodeOverlayViewController.viewDidLoad()()
{
  v1 = v0;
  v43.receiver = v0;
  v43.super_class = type metadata accessor for QRCodeOverlayViewController();
  objc_msgSendSuper2(&v43, "viewDidLoad");
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 3)
  {
    v4 = [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel] text];
    [v1 setTitle:v4];
  }

  v5 = [v1 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  v7 = objc_opt_self();
  v8 = [v7 clearColor];
  [v6 setBackgroundColor:v8];

  v9 = [v1 navigationItem];
  sub_100009F78(0, &qword_1011B15B8, UIBarButtonItem_ptr);
  sub_100009F78(0, &qword_1011B1640, UIAction_ptr);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v44.value.super.super.isa = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v44.is_nil = 0;
  isa = UIBarButtonItem.init(systemItem:primaryAction:menu:)(UIBarButtonSystemItemDone, v44, v45).super.super.isa;
  [v9 setLeftBarButtonItem:{isa, 0, 0, 0, sub_100BD6918, v10}];

  v12 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v1 action:"dismissAnimated"];
  v13 = [v1 view];
  if (!v13)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v14 = v13;
  v41 = v12;
  [v13 addGestureRecognizer:v12];

  v15 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView;
  v16 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCodeView];
  v42 = &v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode];
  v17 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_qrCode + 24];
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image];
  *&v16[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_image] = v17;
  v19 = v17;
  v20 = v16;

  [*&v20[OBJC_IVAR____TtCC11MusicCoreUI27QRCodeOverlayViewController13ContainerView_imageView] setImage:v19];
  v40 = v15;
  [*&v1[v15] setAlpha:0.0];
  v39 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView;
  [*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_logoView] setContentMode:1];
  v21 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel;
  v22 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_titleLabel];
  sub_100009F78(0, &qword_1011B6520, UIFont_ptr);
  v23 = v22;
  v24 = static UIFont.preferredFont(forTextStyle:weight:)();
  [v23 setFont:v24];

  v25 = *&v1[v21];
  v26 = [v7 whiteColor];
  [v25 setTextColor:v26];

  [*&v1[v21] setTextAlignment:1];
  [*&v1[v21] setNumberOfLines:0];
  [*&v1[v21] setAlpha:0.0];
  [*&v1[v21] setAdjustsFontForContentSizeCategory:1];
  v27 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel;
  v28 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_subtitleLabel];
  v29 = objc_opt_self();
  v30 = v28;
  v31 = [v29 preferredFontForTextStyle:UIFontTextStyleBody];
  [v30 setFont:v31];

  [*&v1[v27] setTextAlignment:1];
  [*&v1[v27] setNumberOfLines:0];
  [*&v1[v27] setAlpha:0.0];
  [*&v1[v27] setAdjustsFontForContentSizeCategory:1];
  v32 = OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer;
  v33 = *&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_destOutLayer];
  v34 = [v7 blackColor];
  v35 = [v34 CGColor];

  [v33 setFillColor:v35];
  [*&v1[v32] setFillRule:kCAFillRuleNonZero];
  [*&v1[v32] setCompositingFilter:kCAFilterDestOut];
  if (*(v42 + 4) != 76)
  {
    v36 = [*&v1[v40] layer];
    [v36 addSublayer:*&v1[v32]];

    [*&v1[v40] addSubview:*&v1[v39]];
  }

  v37 = [v1 view];
  if (v37)
  {
    v38 = v37;
    [v37 addSubview:*&v1[OBJC_IVAR____TtC11MusicCoreUI27QRCodeOverlayViewController_backgroundView]];

    return;
  }

LABEL_11:
  __break(1u);
}